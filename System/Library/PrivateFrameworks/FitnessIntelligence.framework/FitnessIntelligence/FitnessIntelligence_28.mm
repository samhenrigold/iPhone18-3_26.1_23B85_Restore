uint64_t sub_1B4C26A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD090, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C26AD0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C26B3C(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C26BFC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC730);
  __swift_project_value_buffer(v0, qword_1EB8AC730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B4D35480;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "WORKOUT_PROPERTIES";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RINGS_PROPERTIES";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ACTIVITY_SUMMARY_CONTEXT";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WORKOUT_WEEK_CONTEXT";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WEEKLY_SUMMARY_CONTEXT";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AWARDS_CONTEXT";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "TRAINING_LOAD_CONTEXT";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "VITALS_CONTEXT";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ACTIVITY_SHARING_CONTEXT";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "LOCATION_CONTEXT";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C2701C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC748);
  __swift_project_value_buffer(v0, qword_1EB8AC748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifiers";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryDescriptor";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CDC();
    }

    else if (result == 2)
    {
      sub_1B4C2798C(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1B4D17E1C(), !v4))
  {
    result = sub_1B4C27C90(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
    if (!v4)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C273AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  v4 = *(a1 + 24);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v6 = *(*(Descriptor - 8) + 56);

  return v6(&a2[v4], 1, 1, Descriptor);
}

uint64_t sub_1B4C27484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD088, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C27524(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C27590(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C2762C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC760);
  __swift_project_value_buffer(v0, qword_1EB8AC760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifiers";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryDescriptor";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "component";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metrics";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4C27A44(v11, a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        sub_1B4C27AF8(v11, a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1B4D17CDC();
    }

    else if (result == 2)
    {
      sub_1B4C2798C(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    }
  }

  return result;
}

uint64_t sub_1B4C2798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C27A44(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextComponent);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C27AF8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4C3E0DC(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1B4D17E1C(), !v4))
  {
    result = sub_1B4C27C90(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    if (!v4)
    {
      sub_1B4C27EB0(v3, a1, a2, a3);
      sub_1B4C280CC(v3, a1, a2, a3);
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C27C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v11 = *(Descriptor - 8);
  v12 = MEMORY[0x1EEE9AC00](Descriptor);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  sub_1B4974FBC(a1 + *(v15 + 24), v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if ((*(v11 + 48))(v9, 1, Descriptor) == 1)
  {
    return sub_1B4975024(v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  }

  sub_1B4C2FF48(v9, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
}

uint64_t sub_1B4C27EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
}

uint64_t sub_1B4C280CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v9 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  if ((*(v9 + 48))(v7, 1, Metrics) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4C3E0DC(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
}

uint64_t sub_1B4C28334@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  v4 = a1[6];
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  (*(*(Descriptor - 8) + 56))(&a2[v4], 1, 1, Descriptor);
  v6 = a1[7];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v10 = *(*(Metrics - 8) + 56);

  return v10(&a2[v8], 1, 1, Metrics);
}

uint64_t sub_1B4C2849C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD080, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C2853C(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C285A8(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(*v4 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0), sub_1B4C3E0DC(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult), result = sub_1B4D17E5C(), !v5))
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContext(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C28880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD078, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C28920(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C2898C(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C28A3C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC790);
  __swift_project_value_buffer(v0, qword_1EB8AC790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4D3CDC0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "activitySharingContext";
  *(v9 + 8) = 22;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "activitySummaryContext";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ringsProperties";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "weeklySummaryContext";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "trainingLoadContext";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "vitalsContext";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "awardsContext";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "workoutProperties";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "workoutWeekContext";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "locationContext";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C28E8C(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v1 + v10, 1, 1, Context);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  return v1;
}

uint64_t sub_1B4C29188(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v88 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v80 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v75 = &v73 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v73 - v22;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v24 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  v25 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  v27 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  v29 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  v73 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  v31 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  v74 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v1 + v32, 1, 1, Context);
  v34 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  v76 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  v35 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  v77 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  v37 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  v78 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  v39 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  v79 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  v41 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v41 - 8) + 56))(v1 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v81 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v43 - 8) + 56))(v1 + v42, 1, 1, v43);
  swift_beginAccess();
  v44 = *(a1 + 16);
  v45 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v44;
  *(v1 + 24) = v45;
  v46 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v46, v23, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  swift_beginAccess();
  sub_1B49A205C(v23, v1 + v24, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  v48 = v75;
  sub_1B4974FBC(a1 + v47, v75, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  swift_beginAccess();
  sub_1B49A205C(v48, v1 + v26, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  v50 = v80;
  sub_1B4974FBC(a1 + v49, v80, &qword_1EB8A6678, &qword_1B4D3CE20);
  swift_beginAccess();
  sub_1B49A205C(v50, v1 + v28, &qword_1EB8A6678, &qword_1B4D3CE20);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  v52 = v82;
  sub_1B4974FBC(a1 + v51, v82, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v53 = v73;
  swift_beginAccess();
  sub_1B49A205C(v52, v1 + v53, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  v55 = v83;
  sub_1B4974FBC(a1 + v54, v83, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v56 = v74;
  swift_beginAccess();
  sub_1B49A205C(v55, v1 + v56, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  v58 = v84;
  sub_1B4974FBC(a1 + v57, v84, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v59 = v76;
  swift_beginAccess();
  sub_1B49A205C(v58, v1 + v59, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  v61 = v85;
  sub_1B4974FBC(a1 + v60, v85, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v62 = v77;
  swift_beginAccess();
  sub_1B49A205C(v61, v1 + v62, &qword_1EB8ACB00, &unk_1B4D3CE40);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  v64 = v86;
  sub_1B4974FBC(a1 + v63, v86, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v65 = v78;
  swift_beginAccess();
  sub_1B49A205C(v64, v1 + v65, &qword_1EB8A6660, &unk_1B4D2FDB0);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  v67 = v87;
  sub_1B4974FBC(a1 + v66, v87, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v68 = v79;
  swift_beginAccess();
  sub_1B49A205C(v67, v1 + v68, &qword_1EB8ACB18, &qword_1B4D3CE50);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  v70 = v88;
  sub_1B4974FBC(a1 + v69, v88, &qword_1EB8ACB28, &unk_1B4D3CE58);

  v71 = v81;
  swift_beginAccess();
  sub_1B49A205C(v70, v1 + v71, &qword_1EB8ACB28, &unk_1B4D3CE58);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B4C29CD0()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties, &qword_1EB8A6678, &qword_1B4D3CE20);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext, &qword_1EB8ACB00, &unk_1B4D3CE40);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties, &qword_1EB8A6660, &unk_1B4D2FDB0);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext, &qword_1EB8ACB18, &qword_1B4D3CE50);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext, &qword_1EB8ACB28, &unk_1B4D3CE58);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4C29ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1B4C29F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1B4C2A1C0(a2, a1, a3, a4, sub_1B4C41D48, &type metadata for Apple_Fitness_Intelligence_FitnessContextComponent.ComponentType);
          }

          else if (result == 2)
          {
            sub_1B4C2A264(a2, a1, a3, a4);
          }
        }

        else if (result == 3)
        {
          sub_1B4C2A340(a2, a1, a3, a4);
        }

        else if (result == 4)
        {
          sub_1B4C2A41C(a2, a1, a3, a4);
        }

        else
        {
          sub_1B4C2A4F8(a2, a1, a3, a4);
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            sub_1B4C2A868(a2, a1, a3, a4);
            break;
          case 10:
            sub_1B4C2A944(a2, a1, a3, a4);
            break;
          case 11:
            sub_1B4C2AA20(a2, a1, a3, a4);
            break;
        }
      }

      else if (result == 6)
      {
        sub_1B4C2A5D4(a2, a1, a3, a4);
      }

      else if (result == 7)
      {
        sub_1B4C2A6B0(a2, a1, a3, a4);
      }

      else
      {
        sub_1B4C2A78C(a2, a1, a3, a4);
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C2A1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = swift_beginAccess();
  a5(v7);
  sub_1B4D17C6C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4C3E0DC(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4C3E0DC(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2AB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C2ABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (sub_1B4C41D48(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4C2AD4C(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1B4C2AF74(a1, a2, a3, a4);
      sub_1B4C2B19C(a1, a2, a3, a4);
      sub_1B4C2B3C4(a1, a2, a3, a4);
      sub_1B4C2B5EC(a1, a2, a3, a4);
      sub_1B4C2B814(a1, a2, a3, a4);
      sub_1B4C2BA3C(a1, a2, a3, a4);
      sub_1B4C2BC64(a1, a2, a3, a4);
      sub_1B4C2BE8C(a1, a2, a3, a4);
      return sub_1B4C2C0B4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B4C2AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
}

uint64_t sub_1B4C2AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
}

uint64_t sub_1B4C2B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A6678, &qword_1B4D3CE20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4C3E0DC(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
}

uint64_t sub_1B4C2B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
}

uint64_t sub_1B4C2B5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v9 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  if ((*(v9 + 48))(v7, 1, Context) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
}

uint64_t sub_1B4C2B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
}

uint64_t sub_1B4C2BA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACB00, &unk_1B4D3CE40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACB00, &unk_1B4D3CE40);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
}

uint64_t sub_1B4C2BC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4C3E0DC(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
}

uint64_t sub_1B4C2BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACB18, &qword_1B4D3CE50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACB18, &qword_1B4D3CE50);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
}

uint64_t sub_1B4C2C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8ACB28, &unk_1B4D3CE58);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACB28, &unk_1B4D3CE58);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
}

BOOL sub_1B4C2C320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v222 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v219 = &v217 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0D8, &qword_1B4D3F938);
  MEMORY[0x1EEE9AC00](v220);
  v7 = &v217 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v221 = &v217 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v224 = &v217 - v11;
  v231 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v227 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v223 = (&v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0E0, &unk_1B4D3F940);
  MEMORY[0x1EEE9AC00](v226);
  v232 = &v217 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v228 = (&v217 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v230 = &v217 - v17;
  v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v235 = *(v18 - 8);
  v236 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v225 = (&v217 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF18, &qword_1B4D32540);
  MEMORY[0x1EEE9AC00](v234);
  v237 = &v217 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v229 = (&v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v239 = &v217 - v24;
  v244 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v242 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v233 = &v217 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0E8, &qword_1B4D3F950);
  MEMORY[0x1EEE9AC00](v241);
  v243 = &v217 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v238 = &v217 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v246 = &v217 - v30;
  v31 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v249 = *(v31 - 8);
  v250 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v240 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0F0, &qword_1B4D3F958);
  MEMORY[0x1EEE9AC00](v248);
  v251 = &v217 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v245 = &v217 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v253 = &v217 - v37;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v256 = *(Context - 8);
  v257 = Context;
  MEMORY[0x1EEE9AC00](Context);
  v247 = &v217 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0F8, &qword_1B4D3F960);
  MEMORY[0x1EEE9AC00](v255);
  v258 = &v217 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v252 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v260 = &v217 - v44;
  v265 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v263 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v254 = &v217 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD100, &unk_1B4D3F968);
  MEMORY[0x1EEE9AC00](v262);
  v264 = &v217 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v259 = (&v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v272 = &v217 - v50;
  v271 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v269 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v261 = (&v217 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF08, &unk_1B4D32530);
  MEMORY[0x1EEE9AC00](v268);
  v270 = &v217 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v266 = (&v217 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55);
  v279 = &v217 - v56;
  v57 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v276 = *(v57 - 8);
  v277 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v267 = &v217 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD108, &qword_1B4D3F978);
  MEMORY[0x1EEE9AC00](v275);
  v278 = &v217 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v273 = &v217 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v280 = &v217 - v63;
  v283 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v64 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v274 = (&v217 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD110, &unk_1B4D3F980);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v217 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v281 = (&v217 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v217 - v72;
  swift_beginAccess();
  v74 = *(a1 + 16);
  swift_beginAccess();
  v75 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v75 > 4)
    {
      if (v75 <= 6)
      {
        if (v75 == 5)
        {
          if (v74 != 5)
          {
            return 0;
          }
        }

        else if (v74 != 6)
        {
          return 0;
        }
      }

      else if (v75 == 7)
      {
        if (v74 != 7)
        {
          return 0;
        }
      }

      else if (v75 == 8)
      {
        if (v74 != 8)
        {
          return 0;
        }
      }

      else if (v74 != 9)
      {
        return 0;
      }
    }

    else if (v75 <= 1)
    {
      if (v75)
      {
        if (v74 != 1)
        {
          return 0;
        }
      }

      else if (v74)
      {
        return 0;
      }
    }

    else if (v75 == 2)
    {
      if (v74 != 2)
      {
        return 0;
      }
    }

    else if (v75 == 3)
    {
      if (v74 != 3)
      {
        return 0;
      }
    }

    else if (v74 != 4)
    {
      return 0;
    }
  }

  else if (v74 != v75)
  {
    return 0;
  }

  v217 = v4;
  v218 = v7;
  v282 = a2;
  v76 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  v77 = a1;
  sub_1B4974FBC(a1 + v76, v73, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v78 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  v79 = v282;
  swift_beginAccess();
  v80 = *(v66 + 48);
  sub_1B4974FBC(v73, v68, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  sub_1B4974FBC(v79 + v78, &v68[v80], &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v81 = *(v64 + 48);
  v82 = v283;
  if (v81(v68, 1, v283) == 1)
  {

    sub_1B4975024(v73, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    v83 = v81(&v68[v80], 1, v82);
    v84 = v77;
    if (v83 == 1)
    {
      sub_1B4975024(v68, &qword_1EB8ACAA8, &qword_1B4D3CE10);
      goto LABEL_12;
    }

LABEL_22:
    v96 = &qword_1EB8AD110;
    v97 = &unk_1B4D3F980;
    v98 = v68;
LABEL_72:
    sub_1B4975024(v98, v96, v97);
    goto LABEL_73;
  }

  v94 = v77;
  v95 = v281;
  sub_1B4974FBC(v68, v281, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  if (v81(&v68[v80], 1, v82) == 1)
  {

    sub_1B4975024(v73, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    sub_1B4C3DEFC(v95, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    goto LABEL_22;
  }

  v99 = &v68[v80];
  v100 = v274;
  sub_1B4C2FF48(v99, v274, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  v101 = *v95;
  v102 = *v100;

  if ((sub_1B4A142B4(v101, v102) & 1) == 0)
  {
    sub_1B4975024(v73, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    sub_1B4C3DEFC(v100, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    sub_1B4C3DEFC(v95, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    sub_1B4975024(v68, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    goto LABEL_73;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v103 = sub_1B4D1816C();
  sub_1B4975024(v73, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  sub_1B4C3DEFC(v100, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4C3DEFC(v95, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4975024(v68, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v84 = v94;
  v79 = v282;
  if ((v103 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_12:
  v85 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  v86 = v280;
  sub_1B4974FBC(v84 + v85, v280, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v87 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  v88 = *(v275 + 48);
  v89 = v278;
  sub_1B4974FBC(v86, v278, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  sub_1B4974FBC(v79 + v87, v89 + v88, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v90 = v277;
  v91 = *(v276 + 48);
  if (v91(v89, 1, v277) == 1)
  {
    sub_1B4975024(v86, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    v92 = v91(v89 + v88, 1, v90);
    v93 = v279;
    if (v92 == 1)
    {
      sub_1B4975024(v89, &qword_1EB8ACAB8, &qword_1B4D3CE18);
      goto LABEL_49;
    }

    goto LABEL_34;
  }

  v104 = v273;
  sub_1B4974FBC(v89, v273, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v105 = v91(v89 + v88, 1, v90);
  v93 = v279;
  if (v105 == 1)
  {
    sub_1B4975024(v280, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    sub_1B4C3DEFC(v104, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
LABEL_34:
    v96 = &qword_1EB8AD108;
    v97 = &qword_1B4D3F978;
    v98 = v89;
    goto LABEL_72;
  }

  v106 = v89 + v88;
  v107 = v267;
  sub_1B4C2FF48(v106, v267, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  v108 = _s19FitnessIntelligence06Apple_a1_B23_ActivitySummaryContextV2eeoiySbAC_ACtFZ_0(v104, v107);
  sub_1B4C3DEFC(v107, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4975024(v280, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  sub_1B4C3DEFC(v104, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4975024(v89, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  if ((v108 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_49:
  v109 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v84 + v109, v93, &qword_1EB8A6678, &qword_1B4D3CE20);
  v110 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  v111 = *(v268 + 48);
  v112 = v270;
  sub_1B4974FBC(v93, v270, &qword_1EB8A6678, &qword_1B4D3CE20);
  v113 = v79 + v110;
  v114 = v112;
  sub_1B4974FBC(v113, v112 + v111, &qword_1EB8A6678, &qword_1B4D3CE20);
  v115 = *(v269 + 48);
  v116 = v112;
  v117 = v271;
  if (v115(v116, 1, v271) == 1)
  {
    sub_1B4975024(v93, &qword_1EB8A6678, &qword_1B4D3CE20);
    v118 = v115(v114 + v111, 1, v117);
    v119 = v272;
    if (v118 == 1)
    {
      sub_1B4975024(v114, &qword_1EB8A6678, &qword_1B4D3CE20);
      goto LABEL_52;
    }

LABEL_60:
    v96 = &qword_1EB8AAF08;
    v97 = &unk_1B4D32530;
LABEL_71:
    v98 = v114;
    goto LABEL_72;
  }

  v138 = v266;
  sub_1B4974FBC(v114, v266, &qword_1EB8A6678, &qword_1B4D3CE20);
  v139 = v115(v114 + v111, 1, v117);
  v119 = v272;
  if (v139 == 1)
  {
    sub_1B4975024(v93, &qword_1EB8A6678, &qword_1B4D3CE20);
    sub_1B4C3DEFC(v138, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    goto LABEL_60;
  }

  v140 = v114 + v111;
  v141 = v261;
  sub_1B4C2FF48(v140, v261, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  if (*v138 != *v141 || v138[1] != v141[1] || (sub_1B4A1A2C8(v138[2], v141[2]) & 1) == 0)
  {
    v143 = &qword_1EB8A6678;
    v144 = &qword_1B4D3CE20;
    sub_1B4975024(v93, &qword_1EB8A6678, &qword_1B4D3CE20);
    v145 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties;
    v146 = v141;
    v147 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties;
LABEL_67:
    sub_1B4C3DEFC(v146, v145);
    sub_1B4C3DEFC(v138, v147);
    v98 = v114;
    v96 = v143;
    v97 = v144;
    goto LABEL_72;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v142 = sub_1B4D1816C();
  sub_1B4975024(v93, &qword_1EB8A6678, &qword_1B4D3CE20);
  sub_1B4C3DEFC(v141, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4C3DEFC(v138, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4975024(v114, &qword_1EB8A6678, &qword_1B4D3CE20);
  if ((v142 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_52:
  v120 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v84 + v120, v119, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v121 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  v122 = *(v262 + 48);
  v123 = v119;
  v124 = v119;
  v125 = v264;
  sub_1B4974FBC(v123, v264, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v126 = v79 + v121;
  v114 = v125;
  sub_1B4974FBC(v126, v125 + v122, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v127 = *(v263 + 48);
  v128 = v125;
  v129 = v265;
  if (v127(v128, 1, v265) == 1)
  {
    sub_1B4975024(v124, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    v130 = v127(v114 + v122, 1, v129);
    v131 = v260;
    if (v130 == 1)
    {
      sub_1B4975024(v114, &qword_1EB8ACAD0, &qword_1B4D3CE28);
      goto LABEL_55;
    }

    goto LABEL_70;
  }

  v138 = v259;
  sub_1B4974FBC(v114, v259, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  if (v127(v114 + v122, 1, v129) == 1)
  {
    sub_1B4975024(v272, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    sub_1B4C3DEFC(v138, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
LABEL_70:
    v96 = &qword_1EB8AD100;
    v97 = &unk_1B4D3F968;
    goto LABEL_71;
  }

  v149 = v254;
  sub_1B4C2FF48(v114 + v122, v254, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  if ((sub_1B4A14918(*v138, *v149) & 1) == 0 || (sub_1B4A14918(v138[1], *(v149 + 8)) & 1) == 0)
  {
    v143 = &qword_1EB8ACAD0;
    v144 = &qword_1B4D3CE28;
    sub_1B4975024(v272, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    v145 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext;
LABEL_80:
    v147 = v145;
    v146 = v149;
    goto LABEL_67;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v150 = sub_1B4D1816C();
  sub_1B4975024(v272, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  sub_1B4C3DEFC(v149, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4C3DEFC(v138, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4975024(v114, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v131 = v260;
  if ((v150 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_55:
  v132 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v84 + v132, v131, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v133 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  v134 = *(v255 + 48);
  v135 = v258;
  sub_1B4974FBC(v131, v258, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  sub_1B4974FBC(v79 + v133, v135 + v134, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v136 = v257;
  v137 = *(v256 + 48);
  if (v137(v135, 1, v257) == 1)
  {
    sub_1B4975024(v131, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    if (v137(v135 + v134, 1, v136) == 1)
    {
      sub_1B4975024(v135, &qword_1EB8ACAE0, &qword_1B4D3CE30);
      goto LABEL_85;
    }

LABEL_83:
    v96 = &qword_1EB8AD0F8;
    v97 = &qword_1B4D3F960;
LABEL_91:
    v98 = v135;
    goto LABEL_72;
  }

  v151 = v252;
  sub_1B4974FBC(v135, v252, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  if (v137(v135 + v134, 1, v136) == 1)
  {
    sub_1B4975024(v260, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    sub_1B4C3DEFC(v151, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    goto LABEL_83;
  }

  v152 = v135 + v134;
  v153 = v247;
  sub_1B4C2FF48(v152, v247, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  ContextV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B20_TrainingLoadContextV2eeoiySbAC_ACtFZ_0(v151, v153);
  sub_1B4C3DEFC(v153, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4975024(v260, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  sub_1B4C3DEFC(v151, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4975024(v135, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  if ((ContextV2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_85:
  v155 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  v156 = v253;
  sub_1B4974FBC(v84 + v155, v253, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v157 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  v158 = *(v248 + 48);
  v159 = v251;
  sub_1B4974FBC(v156, v251, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v135 = v159;
  sub_1B4974FBC(v79 + v157, v159 + v158, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v160 = v250;
  v161 = *(v249 + 48);
  if (v161(v159, 1, v250) == 1)
  {
    sub_1B4975024(v156, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    if (v161(v159 + v158, 1, v160) == 1)
    {
      sub_1B4975024(v159, &qword_1EB8ACAF0, &qword_1B4D3CE38);
      goto LABEL_93;
    }

    goto LABEL_90;
  }

  v162 = v245;
  sub_1B4974FBC(v159, v245, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  if (v161(v159 + v158, 1, v160) == 1)
  {
    sub_1B4975024(v253, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    sub_1B4C3DEFC(v162, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
LABEL_90:
    v96 = &qword_1EB8AD0F0;
    v97 = &qword_1B4D3F958;
    goto LABEL_91;
  }

  v163 = v159 + v158;
  v164 = v240;
  sub_1B4C2FF48(v163, v240, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  v166 = _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV2eeoiySbAC_ACtFZ_0(v162, v164, v165);
  sub_1B4C3DEFC(v164, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4975024(v253, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  sub_1B4C3DEFC(v162, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4975024(v159, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  if ((v166 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_93:
  v167 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  v168 = v246;
  sub_1B4974FBC(v84 + v167, v246, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v169 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  v170 = *(v241 + 48);
  v171 = v243;
  sub_1B4974FBC(v168, v243, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v172 = v79 + v169;
  v114 = v171;
  sub_1B4974FBC(v172, v171 + v170, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v173 = *(v242 + 48);
  v174 = v171;
  v175 = v244;
  if (v173(v174, 1, v244) == 1)
  {
    sub_1B4975024(v168, &qword_1EB8ACB00, &unk_1B4D3CE40);
    if (v173(v114 + v170, 1, v175) == 1)
    {
      sub_1B4975024(v114, &qword_1EB8ACB00, &unk_1B4D3CE40);
      goto LABEL_96;
    }

    goto LABEL_107;
  }

  v200 = v238;
  sub_1B4974FBC(v114, v238, &qword_1EB8ACB00, &unk_1B4D3CE40);
  if (v173(v114 + v170, 1, v175) == 1)
  {
    sub_1B4975024(v246, &qword_1EB8ACB00, &unk_1B4D3CE40);
    sub_1B4C3DEFC(v200, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
LABEL_107:
    v96 = &qword_1EB8AD0E8;
    v97 = &qword_1B4D3F950;
    goto LABEL_71;
  }

  v149 = v233;
  sub_1B4C2FF48(v114 + v170, v233, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  if ((sub_1B4A1A7B8(*v200, *v149) & 1) == 0 || *(v200 + 8) != *(v149 + 8) || *(v200 + 16) != *(v149 + 16))
  {
    v143 = &qword_1EB8ACB00;
    v138 = v200;
    v144 = &unk_1B4D3CE40;
    sub_1B4975024(v246, &qword_1EB8ACB00, &unk_1B4D3CE40);
    v145 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext;
    goto LABEL_80;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v201 = sub_1B4D1816C();
  sub_1B4975024(v246, &qword_1EB8ACB00, &unk_1B4D3CE40);
  sub_1B4C3DEFC(v149, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4C3DEFC(v200, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4975024(v114, &qword_1EB8ACB00, &unk_1B4D3CE40);
  if ((v201 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_96:
  v176 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  v177 = v239;
  sub_1B4974FBC(v84 + v176, v239, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v178 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  v179 = *(v234 + 48);
  v180 = v177;
  v181 = v237;
  sub_1B4974FBC(v180, v237, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v135 = v181;
  sub_1B4974FBC(v79 + v178, v181 + v179, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v182 = v236;
  v183 = *(v235 + 48);
  if (v183(v181, 1, v236) == 1)
  {
    sub_1B4975024(v239, &qword_1EB8A6660, &unk_1B4D2FDB0);
    if (v183(v181 + v179, 1, v182) == 1)
    {
      sub_1B4975024(v181, &qword_1EB8A6660, &unk_1B4D2FDB0);
      goto LABEL_99;
    }

    goto LABEL_116;
  }

  v202 = v229;
  sub_1B4974FBC(v181, v229, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if (v183(v181 + v179, 1, v182) == 1)
  {
    sub_1B4975024(v239, &qword_1EB8A6660, &unk_1B4D2FDB0);
    sub_1B4C3DEFC(v202, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
LABEL_116:
    v96 = &qword_1EB8AAF18;
    v97 = &qword_1B4D32540;
    goto LABEL_91;
  }

  v203 = v225;
  sub_1B4C2FF48(v135 + v179, v225, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  if (*v202 != *v203 || v202[1] != v203[1] || (sub_1B4A185B4(v202[2], v203[2]) & 1) == 0)
  {
    sub_1B4975024(v239, &qword_1EB8A6660, &unk_1B4D2FDB0);
    sub_1B4C3DEFC(v203, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4C3DEFC(v202, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4975024(v237, &qword_1EB8A6660, &unk_1B4D2FDB0);
    goto LABEL_73;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v204 = sub_1B4D1816C();
  sub_1B4975024(v239, &qword_1EB8A6660, &unk_1B4D2FDB0);
  sub_1B4C3DEFC(v203, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4C3DEFC(v202, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4975024(v237, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v79 = v282;
  if ((v204 & 1) == 0)
  {
LABEL_73:

    return 0;
  }

LABEL_99:
  v184 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  v185 = v84;
  v186 = v230;
  sub_1B4974FBC(v84 + v184, v230, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v187 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  v188 = *(v226 + 48);
  v189 = v186;
  v190 = v232;
  sub_1B4974FBC(v189, v232, &qword_1EB8ACB18, &qword_1B4D3CE50);
  sub_1B4974FBC(v79 + v187, v190 + v188, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v191 = *(v227 + 48);
  if (v191(v190, 1, v231) == 1)
  {
    sub_1B4975024(v230, &qword_1EB8ACB18, &qword_1B4D3CE50);
    if (v191(v232 + v188, 1, v231) == 1)
    {
      sub_1B4975024(v232, &qword_1EB8ACB18, &qword_1B4D3CE50);
      goto LABEL_102;
    }

    goto LABEL_125;
  }

  v205 = v232;
  sub_1B4974FBC(v232, v228, &qword_1EB8ACB18, &qword_1B4D3CE50);
  if (v191(v205 + v188, 1, v231) == 1)
  {
    sub_1B4975024(v230, &qword_1EB8ACB18, &qword_1B4D3CE50);
    sub_1B4C3DEFC(v228, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
LABEL_125:
    v96 = &qword_1EB8AD0E0;
    v97 = &unk_1B4D3F940;
    v98 = v232;
    goto LABEL_72;
  }

  v206 = v223;
  sub_1B4C2FF48(v232 + v188, v223, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  if ((sub_1B4A15BE0(*v228, *v206) & 1) == 0)
  {
    sub_1B4975024(v230, &qword_1EB8ACB18, &qword_1B4D3CE50);
    sub_1B4C3DEFC(v223, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    sub_1B4C3DEFC(v228, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    v98 = v232;
    v96 = &qword_1EB8ACB18;
    v97 = &qword_1B4D3CE50;
    goto LABEL_72;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v207 = v228;
  v208 = v223;
  v209 = sub_1B4D1816C();
  sub_1B4975024(v230, &qword_1EB8ACB18, &qword_1B4D3CE50);
  sub_1B4C3DEFC(v208, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4C3DEFC(v207, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4975024(v232, &qword_1EB8ACB18, &qword_1B4D3CE50);
  if ((v209 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_102:
  v192 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  v193 = v224;
  sub_1B4974FBC(v185 + v192, v224, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v194 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v195 = v282;
  swift_beginAccess();
  v196 = *(v220 + 48);
  v197 = v193;
  v198 = v218;
  sub_1B4974FBC(v197, v218, &qword_1EB8ACB28, &unk_1B4D3CE58);
  sub_1B4974FBC(v195 + v194, v198 + v196, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v199 = *(v222 + 48);
  if (v199(v198, 1, v217) != 1)
  {
    v210 = v218;
    sub_1B4974FBC(v218, v221, &qword_1EB8ACB28, &unk_1B4D3CE58);
    if (v199(v210 + v196, 1, v217) == 1)
    {

      sub_1B4975024(v224, &qword_1EB8ACB28, &unk_1B4D3CE58);
      sub_1B4C3DEFC(v221, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
      goto LABEL_131;
    }

    v211 = v218;
    v212 = &v218[v196];
    v213 = v219;
    sub_1B4C2FF48(v212, v219, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    v214 = v221;
    v216 = _s19FitnessIntelligence06Apple_a1_B16_LocationContextV2eeoiySbAC_ACtFZ_0(v221, v213, v215);

    sub_1B4C3DEFC(v213, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    sub_1B4975024(v224, &qword_1EB8ACB28, &unk_1B4D3CE58);
    sub_1B4C3DEFC(v214, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    sub_1B4975024(v211, &qword_1EB8ACB28, &unk_1B4D3CE58);
    return (v216 & 1) != 0;
  }

  sub_1B4975024(v224, &qword_1EB8ACB28, &unk_1B4D3CE58);
  if (v199(&v218[v196], 1, v217) != 1)
  {
LABEL_131:
    sub_1B4975024(v218, &qword_1EB8AD0D8, &qword_1B4D3F938);
    return 0;
  }

  sub_1B4975024(v218, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return 1;
}

uint64_t sub_1B4C2ED84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD070, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C2EE24(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C2EE90(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextComponent);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C2EF50()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC7B0);
  __swift_project_value_buffer(v0, qword_1EB8AC7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B4D35480;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "ACTIVITY_SHARING";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ACTIVITY_SUMMARY";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RINGS_PROPERTIES";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WEEKLY_SUMMARY";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TRAINING_LOAD";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "VITALS";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "AWARDS";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "WORKOUT_PROPERTIES";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "WORKOUT_WEEK_CONTEXT";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "LOCATION_CONTEXT";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C2F368()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC7C8);
  __swift_project_value_buffer(v0, qword_1EB8AC7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indoor";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "location";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutActivityType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_1B4D17C5C();
        break;
      case 1:
LABEL_8:
        sub_1B4D17CAC();
        break;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutActivityType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17DFC(), !v4))
  {
    if (*(v3 + 4) != 1 || (result = sub_1B4D17DCC(), !v4))
    {
      if (!*(v3 + 8) || (result = sub_1B4D17DFC(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C2F754@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C2F7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD068, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutActivityType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C2F86C(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutActivityType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C2F8D8(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutActivityType);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C2F974()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC7E0);
  __swift_project_value_buffer(v0, qword_1EB8AC7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B4D2FD70;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "cacheIndex";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "pausedInterval";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "moveGoal";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "moveProgress";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "moveMinutesGoal";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "moveMinutesProgress";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "exerciseGoal";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "exerciseProgress";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "standGoal";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "standProgress";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "stepCount";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "flightCount";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "distance";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "activityMoveMode";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isWheelchairUser";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isPaused";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C2FEF4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B4C2FF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C30070()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  *v14 = 0;
  *(v14 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser) = 2;
  *(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused) = 0;
  return v0;
}

uint64_t sub_1B4C301F4()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval, &qword_1EB8AB768, &unk_1B4D3CDE0);

  return swift_deallocClassInstance();
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v12 = sub_1B4C3D764(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_1B4C3031C(v10, a1, a2, a3);
}

uint64_t sub_1B4C3031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1B4AC9620(a2, a1, a3, a4);
          break;
        case 2:
          sub_1B4C305C4(a2, a1, a3, a4);
          break;
        case 3:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
          goto LABEL_5;
        case 4:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
          goto LABEL_5;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
          goto LABEL_5;
        case 6:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
          goto LABEL_5;
        case 7:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
          goto LABEL_5;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
          goto LABEL_5;
        case 9:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
          goto LABEL_5;
        case 10:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
          goto LABEL_5;
        case 11:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
          goto LABEL_5;
        case 12:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
          goto LABEL_5;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
LABEL_5:
          sub_1B4C306A0(v11, v12, v13, v14, v15);
          break;
        case 14:
          sub_1B4C30728(a2, a1, a3, a4);
          break;
        case 15:
          v16 = MEMORY[0x1E69AAC38];
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
          goto LABEL_16;
        case 16:
          v16 = MEMORY[0x1E69AAC40];
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
LABEL_16:
          sub_1B4C307B4(v17, v18, v19, v20, v21, v16);
          break;
        default:
          break;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C305C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  sub_1B4C3E0DC(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C306A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1B4D17CEC();
  return swift_endAccess();
}

uint64_t sub_1B4C30728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B4D17C9C();
  return swift_endAccess();
}

uint64_t sub_1B4C307B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B4C3088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4C30B30(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal, 3);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress, 4);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal, 5);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress, 6);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal, 7);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress, 8);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal, 9);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress, 10);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount, 11);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount, 12);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance, 13);
      sub_1B4C30DE8(a1, a2, a3, a4);
      sub_1B4C30E74(a1, a2, a3, a4);
      v10 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
      result = swift_beginAccess();
      if (*(a1 + v10) == 1)
      {
        return sub_1B4D17DCC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C30B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8AB768, &unk_1B4D3CDE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8AB768, &unk_1B4D3CDE0);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4C3E0DC(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
}

uint64_t sub_1B4C30D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4C30DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  if ((*(v4 + 4) & 1) == 0)
  {
    return sub_1B4D17DFC();
  }

  return result;
}

uint64_t sub_1B4C30E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4C30F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0B0, &unk_1B4D3F900);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v89 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  swift_beginAccess();
  v15 = *(a1 + 16);
  swift_beginAccess();
  if (v15 != *(a2 + 16))
  {
    goto LABEL_18;
  }

  v90 = v6;
  v91 = a2;
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  v17 = a1;
  sub_1B4974FBC(a1 + v16, v14, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v18 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  v19 = v91;
  swift_beginAccess();
  v20 = *(v7 + 48);
  sub_1B4974FBC(v14, v9, &qword_1EB8AB768, &unk_1B4D3CDE0);
  sub_1B4974FBC(v19 + v18, &v9[v20], &qword_1EB8AB768, &unk_1B4D3CDE0);
  v21 = *(v93 + 48);
  if (v21(v9, 1, v4) == 1)
  {

    sub_1B4975024(v14, &qword_1EB8AB768, &unk_1B4D3CDE0);
    v22 = v21(&v9[v20], 1, v4);
    v23 = a1;
    if (v22 == 1)
    {
      sub_1B4975024(v9, &qword_1EB8AB768, &unk_1B4D3CDE0);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v28 = v92;
  sub_1B4974FBC(v9, v92, &qword_1EB8AB768, &unk_1B4D3CDE0);
  if (v21(&v9[v20], 1, v4) == 1)
  {

    sub_1B4975024(v14, &qword_1EB8AB768, &unk_1B4D3CDE0);
    sub_1B4C3DEFC(v28, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
LABEL_10:
    v29 = &qword_1EB8AD0B0;
    v30 = &unk_1B4D3F900;
    v31 = v9;
LABEL_16:
    sub_1B4975024(v31, v29, v30);
    goto LABEL_17;
  }

  v32 = &v9[v20];
  v33 = v90;
  sub_1B4C2FF48(v32, v90, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  if (*v28 != *v33 || v28[1] != v33[1])
  {

    sub_1B4C3DEFC(v33, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    sub_1B4975024(v14, &qword_1EB8AB768, &unk_1B4D3CDE0);
    sub_1B4C3DEFC(v28, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    v31 = v9;
    v29 = &qword_1EB8AB768;
    v30 = &unk_1B4D3CDE0;
    goto LABEL_16;
  }

  sub_1B4D17BCC();
  v93 = sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = v17;

  v34 = sub_1B4D1816C();
  sub_1B4C3DEFC(v33, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4975024(v14, &qword_1EB8AB768, &unk_1B4D3CDE0);
  sub_1B4C3DEFC(v28, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  v19 = v91;
  sub_1B4975024(v9, &qword_1EB8AB768, &unk_1B4D3CDE0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v24 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  swift_beginAccess();
  if (v26)
  {
    if ((*(v27 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v27 + 8) & 1) != 0 || v25 != *v27)
  {
    goto LABEL_17;
  }

  v37 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  swift_beginAccess();
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  swift_beginAccess();
  if (v39)
  {
    if ((*(v40 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v40 + 8) & 1) != 0 || v38 != *v40)
  {
    goto LABEL_17;
  }

  v41 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  swift_beginAccess();
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  swift_beginAccess();
  if (v43)
  {
    if ((*(v44 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v44 + 8) & 1) != 0 || v42 != *v44)
  {
    goto LABEL_17;
  }

  v45 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  swift_beginAccess();
  v46 = *v45;
  v47 = *(v45 + 8);
  v48 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  swift_beginAccess();
  if (v47)
  {
    if ((*(v48 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v48 + 8) & 1) != 0 || v46 != *v48)
  {
    goto LABEL_17;
  }

  v49 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 8);
  v52 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  swift_beginAccess();
  if (v51)
  {
    if ((*(v52 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v52 + 8) & 1) != 0 || v50 != *v52)
  {
    goto LABEL_17;
  }

  v53 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  swift_beginAccess();
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  swift_beginAccess();
  if (v55)
  {
    if ((*(v56 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v56 + 8) & 1) != 0 || v54 != *v56)
  {
    goto LABEL_17;
  }

  v57 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  swift_beginAccess();
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  swift_beginAccess();
  if (v59)
  {
    if ((*(v60 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v60 + 8) & 1) != 0 || v58 != *v60)
  {
    goto LABEL_17;
  }

  v61 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  swift_beginAccess();
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  swift_beginAccess();
  if ((v63 & 1) == 0)
  {
    if ((*(v64 + 8) & 1) != 0 || v62 != *v64)
    {
      goto LABEL_17;
    }

LABEL_57:
    v65 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
    swift_beginAccess();
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = v19 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
    swift_beginAccess();
    if (v67)
    {
      if ((*(v68 + 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v68 + 8) & 1) != 0 || v66 != *v68)
    {
      goto LABEL_17;
    }

    v69 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
    swift_beginAccess();
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = v91 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
    swift_beginAccess();
    if (v71)
    {
      if ((*(v72 + 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v72 + 8) & 1) != 0 || v70 != *v72)
    {
      goto LABEL_17;
    }

    v73 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
    swift_beginAccess();
    v74 = *v73;
    v75 = *(v73 + 8);
    v76 = v91 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
    swift_beginAccess();
    if (v75)
    {
      if ((*(v76 + 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v76 + 8) & 1) != 0 || v74 != *v76)
    {
      goto LABEL_17;
    }

    v77 = v23 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
    swift_beginAccess();
    v78 = *v77;
    v79 = *(v77 + 4);
    v80 = v91 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
    swift_beginAccess();
    if (v79)
    {
      if ((*(v80 + 4) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v80 + 4) & 1) != 0 || v78 != *v80)
    {
      goto LABEL_17;
    }

    v81 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
    swift_beginAccess();
    v82 = *(v23 + v81);
    v83 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
    v84 = v91;
    swift_beginAccess();
    v85 = *(v84 + v83);
    if (v82 == 2)
    {
      if (v85 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v85 == 2 || ((v82 ^ v85) & 1) != 0)
    {
      goto LABEL_17;
    }

    v86 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
    swift_beginAccess();
    LOBYTE(v86) = *(v23 + v86);

    v87 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
    v88 = v91;
    swift_beginAccess();
    LOBYTE(v87) = *(v88 + v87);

    v35 = v86 ^ v87 ^ 1;
    return v35 & 1;
  }

  if (*(v64 + 8))
  {
    goto LABEL_57;
  }

LABEL_17:

LABEL_18:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1B4C31A7C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  sub_1B4D17BBC();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_1B4C31B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD060, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C31BE4(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C31C50(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(*v4 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0), sub_1B4C3E0DC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend), result = sub_1B4D17E5C(), !v5))
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C31F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD058, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C32008(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C32074(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C32154()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC828);
  __swift_project_value_buffer(v0, qword_1EB8AC828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D35480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fullName";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "timeZoneIdentifier";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "workouts";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "relationshipStartDate";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "hasCompletedCompetition";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isCompetitionActive";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 9;
  *v23 = "activitySummaries";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "activeCompetitionUUID";
  *(v25 + 1) = 21;
  v25[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            sub_1B4D17CFC();
            goto LABEL_5;
          }

LABEL_24:
          sub_1B4D17C5C();
          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            goto LABEL_24;
          case 9:
            v6 = v3;
            type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
            sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
LABEL_27:
            v3 = v6;
            sub_1B4D17D3C();
            break;
          case 10:
            goto LABEL_4;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3 || result == 4)
          {
LABEL_4:
            type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
            sub_1B4D17D0C();
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
          sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
          goto LABEL_27;
        }

        if (result == 1)
        {
          sub_1B4D17D1C();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = *(v4 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v5))
  {
    result = sub_1B4C32A1C(v4, a1, a2, a3);
    if (!v5)
    {
      sub_1B4C371F8(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, 3);
      sub_1B4C3727C(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, 4);
      if (*(*(v4 + 16) + 16))
      {
        type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
        sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
        sub_1B4D17E5C();
      }

      if (*(v4 + 24))
      {
        sub_1B4D17E2C();
      }

      if (*(v4 + 32) == 1)
      {
        sub_1B4D17DCC();
      }

      if (*(v4 + 33) == 1)
      {
        sub_1B4D17DCC();
      }

      if (*(*(v4 + 40) + 16))
      {
        type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
        sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
        sub_1B4D17E5C();
      }

      sub_1B4C32A94(v4, a1, a2, a3);
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C32A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C32A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  if (*(a1 + *(result + 56) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C32B58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v4;
  result = sub_1B4D17BBC();
  v6 = a1[12];
  v7 = (a2 + a1[11]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[14];
  v10 = (a2 + a1[13]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1B4C32C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD050, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C32CC4(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C32D30(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C32DD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000031;
  *a5 = 0x80000001B4D632A0;
  return result;
}

uint64_t sub_1B4C32E68()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC850);
  __swift_project_value_buffer(v0, qword_1EB8AC850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "endDate";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1B4D17CFC();
    }

    else if (result == 1)
    {
      sub_1B4C33144(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4C33144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutActivityType);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4C332BC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1B4D17E2C();
    }

    if (v3[1])
    {
      sub_1B4D17E2C();
    }

    type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C332BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A7CB8, &unk_1B4D20170);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7CB8, &unk_1B4D20170);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutActivityType);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
}

uint64_t sub_1B4C33524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1B4C33600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD048, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C336A0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3370C(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C33810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C338F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
}

uint64_t sub_1B4C33BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD040, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C33C5C(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C33CC8(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C33DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C33EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4974FBC(a1 + *(Context + 20), v7, &qword_1EB8AA510, &unk_1B4D3CDD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8AA510, &unk_1B4D3CDD0);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
}

uint64_t sub_1B4C3412C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1B4D17BBC();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1B4C34200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD038, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C342A0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3430C(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C3438C()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000010, 0x80000001B4D63AF0);
  qword_1EB8AC898 = 0xD00000000000002ELL;
  qword_1EB8AC8A0 = 0x80000001B4D63320;
  return result;
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CAC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17DFC(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C346C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD030, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C34768(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C347D4(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C34850(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C34978(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4C349FC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C34ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C34B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
}

uint64_t sub_1B4C34E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD028, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C34EA8(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C34F14(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C34F94()
{
  result = MEMORY[0x1B8C7C620](0x44736C617469562ELL, 0xEA00000000007961);
  qword_1EB8AC8D8 = 0xD000000000000028;
  qword_1EB8AC8E0 = 0x80000001B4D63350;
  return result;
}

uint64_t sub_1B4C3502C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC8E8);
  __swift_project_value_buffer(v0, qword_1EB8AC8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "heartRate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bloodOxygen";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "respiratoryRate";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "wristTemperature";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "timeAsleep";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.VitalsDay.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          sub_1B4D17CAC();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.VitalsDay.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*v4 || (result = sub_1B4D17DFC(), !v5))
  {
    if (!v4[1] || (result = sub_1B4D17DFC(), !v5))
    {
      if (!v4[2] || (result = sub_1B4D17DFC(), !v5))
      {
        if (!v4[3] || (result = sub_1B4D17DFC(), !v5))
        {
          if (!v4[4] || (result = sub_1B4D17DFC(), !v5))
          {
            type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
            return sub_1B4D17BAC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4C354F0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C35570(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD020, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C35610(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3567C(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C35718()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC900);
  __swift_project_value_buffer(v0, qword_1EB8AC900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "earnedAchievements";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dateIntervalStart";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "dateIntervalEnd";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1B4D17CFC();
      }

      else if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
        sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0), sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award), result = sub_1B4D17E5C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E2C(), !v4))
    {
      if (!v3[2] || (result = sub_1B4D17E2C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C35BD4@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C35C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD018, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C35CF0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C35D5C(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C35DDC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC918);
  __swift_project_value_buffer(v0, qword_1EB8AC918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WORKOUT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OTHER";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C36044()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC940);
  __swift_project_value_buffer(v0, qword_1EB8AC940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "year";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "month";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "day";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.DateComponents.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1B4D17CAC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.DateComponents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*v4 || (result = sub_1B4D17DFC(), !v5))
  {
    if (!v4[1] || (result = sub_1B4D17DFC(), !v5))
    {
      if (!v4[2] || (result = sub_1B4D17DFC(), !v5))
      {
        type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C36418@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C36498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD010, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C36538(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C365A4(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C36644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000028;
  *a5 = 0x80000001B4D63380;
  return result;
}

uint64_t sub_1B4C366D8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC968);
  __swift_project_value_buffer(v0, qword_1EB8AC968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1AA90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "templateUniqueName";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "earnedDateComponents";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "section";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "earnedInstanceCount";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "valueDouble";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "valueUnitString";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "goalDouble";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "goalUnitString";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "externalIdentifier";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1B4C3E124();
            sub_1B4D17C6C();
          }

          else if (result == 4)
          {
            sub_1B4D17D2C();
          }
        }

        else if (result == 1)
        {
          sub_1B4D17D1C();
        }

        else if (result == 2)
        {
          sub_1B4C36C58(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            goto LABEL_4;
          }

LABEL_24:
          type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
          sub_1B4D17CEC();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_24;
        }

        if (result == 9 || result == 10)
        {
LABEL_4:
          type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
          sub_1B4D17D0C();
        }
      }

LABEL_5:
      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C36C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = *(v4 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v5))
  {
    result = sub_1B4C36EEC(v4, a1, a2, a3);
    if (!v5)
    {
      if (*(v4 + 16))
      {
        sub_1B4C3E124();
        sub_1B4D17DDC();
      }

      if (*(v4 + 28))
      {
        sub_1B4D17E4C();
      }

      sub_1B4C37108(v4, a1, a2, a3);
      sub_1B4C37CA4(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, 7);
      sub_1B4C37180(v4, a1, a2, a3);
      sub_1B4C371F8(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, 9);
      sub_1B4C3727C(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, 10);
      type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C36EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
}

uint64_t sub_1B4C37108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4C37180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4C371F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C3727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C3734C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 28) = 0;
  sub_1B4D17BBC();
  v4 = a1[8];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[10];
  v8 = a2 + a1[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[12];
  v11 = a2 + a1[11];
  *(v11 + 8) = 1;
  *v11 = 0;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + a1[13]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_1B4C37474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD008, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C37514(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C37580(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C3761C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC980);
  __swift_project_value_buffer(v0, qword_1EB8AC980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B4D223F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "startDate";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "endDate";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "activityType";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "locationType";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "catalogWorkoutIdentifier";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "fitnessPlusCatalogWorkout";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1)
      {
        goto LABEL_16;
      }

      if (result == 2 || result == 3)
      {
        sub_1B4D17CFC();
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
        sub_1B4D17D0C();
      }

      else if (result == 7)
      {
        sub_1B4C37A7C(a1, v5, a2, a3);
      }
    }

    else if (result == 4)
    {
      sub_1B4D17CCC();
    }

    else
    {
LABEL_16:
      sub_1B4D17D1C();
    }
  }
}

uint64_t sub_1B4C37A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  sub_1B4C3E0DC(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = v4[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v5))
  {
    if (!v4[2] || (result = sub_1B4D17E2C(), !v5))
    {
      if (!v4[3] || (result = sub_1B4D17E2C(), !v5))
      {
        if (!v4[4] || (result = sub_1B4D17E0C(), !v5))
        {
          v12 = v4[6];
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = v4[5] & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = sub_1B4D17E3C(), !v5))
          {
            result = sub_1B4C37CA4(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, 6);
            if (!v5)
            {
              sub_1B4C37D28(v4, a1, a2, a3);
              type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4C37CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C37D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(a1 + *(v12 + 44), v7, &qword_1EB8A6A28, &qword_1B4D20160);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6A28, &qword_1B4D20160);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4C3E0DC(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
}

uint64_t sub_1B4C37F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0xE000000000000000;
  sub_1B4D17BBC();
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t sub_1B4C38078(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD000, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C38118(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C38184(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C382B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1B4C3E0DC(a5, a6, a7);
      sub_1B4D17D3C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutWeekContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0), sub_1B4C3E0DC(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C384A4(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C385F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFF8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C38690(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C386FC(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C38790(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C38858()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC9B0);
  __swift_project_value_buffer(v0, qword_1EB8AC9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentWeekSummaries";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "previousWeekSummaries";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
        sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(*v4 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0), sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary), result = sub_1B4D17E5C(), !v5))
  {
    if (!*(v4[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0), sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary), result = sub_1B4D17E5C(), !v5))
    {
      type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_WeeklySummaryContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A14918(*a1, *a2) & 1) == 0 || (sub_1B4A14918(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C38DD4@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C38E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFF0, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C38EEC(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C38F58(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C38FD4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A14918(*a1, *a2) & 1) == 0 || (sub_1B4A14918(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C390A8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC9C8);
  __swift_project_value_buffer(v0, qword_1EB8AC9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "latitude";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "longitude";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "altitude";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1B4D17CFC();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E2C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E2C(), !v4))
    {
      if (!v3[2] || (result = sub_1B4D17E2C(), !v4))
      {
        if (!v3[3] || (result = sub_1B4D17E2C(), !v4))
        {
          type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
          return sub_1B4D17BAC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4C3954C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFE8, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C395EC(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C39658(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C396F4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC9E0);
  __swift_project_value_buffer(v0, qword_1EB8AC9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locality";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_LocationContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
        sub_1B4D17D0C();
      }
    }

    else if (result == 1)
    {
      sub_1B4C39A54(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1B4C39A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_LocationContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4C39BA8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4C39DC4(v3, a1, a2, a3);
    sub_1B4C39E3C(v3, a1, a2, a3);
    sub_1B4C39EB4(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C39BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8ABC28, &qword_1B4D38428);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  sub_1B4C2FF48(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

uint64_t sub_1B4C39DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C39E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C39EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C39F78(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4C3E0DC(a2, a3, a4);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C3A000@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1B4C3A0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFE0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C3A180(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3A1EC(uint64_t a1, uint64_t a2)
{
  sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A28ContextCoalescedQueryRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2, double a3)
{
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v6 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD120, &qword_1B4D3F998);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - v13;
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  v16 = a1;
  v17 = a2;
  v31[0] = Request;
  v31[1] = v16;
  v18 = *(Request + 24);
  v19 = *(v12 + 48);
  sub_1B4974FBC(v16 + v18, v14, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  sub_1B4974FBC(v17 + v18, &v14[v19], &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v20 = *(v6 + 48);
  if (v20(v14, 1, Descriptor) == 1)
  {
    if (v20(&v14[v19], 1, Descriptor) == 1)
    {
      sub_1B4975024(v14, &qword_1EB8AA6B8, &qword_1B4D2FC68);
LABEL_14:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v23 = sub_1B4D1816C();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v14, v11, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if (v20(&v14[v19], 1, Descriptor) == 1)
  {
    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
LABEL_7:
    v21 = &qword_1EB8AD120;
    v22 = &qword_1B4D3F998;
LABEL_8:
    sub_1B4975024(v14, v21, v22);
    goto LABEL_9;
  }

  sub_1B4C2FF48(&v14[v19], v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v25 = *(Descriptor + 20);
  v26 = *&v11[v25];
  v27 = *&v8[v25];
  if (v26 != v27)
  {

    v29 = sub_1B4C25BC8(v26, v27, v28);

    if (!v29)
    {
      sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      v21 = &qword_1EB8AA6B8;
      v22 = &qword_1B4D2FC68;
      goto LABEL_8;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v30 = sub_1B4D1816C();
  sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4975024(v14, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if (v30)
  {
    goto LABEL_14;
  }

LABEL_9:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A18ContextQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v75 = *(Metrics - 8);
  v76 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v68 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v68 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = &v68 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD118, &qword_1B4D3F990);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v68 - v15;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v17 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD120, &qword_1B4D3F998);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    goto LABEL_35;
  }

  v68 = v8;
  v70 = v10;
  v69 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  v26 = *(v69 + 24);
  v27 = a1;
  v28 = *(v23 + 48);
  v71 = v27;
  sub_1B4974FBC(v27 + v26, v25, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v29 = a2 + v26;
  v30 = a2;
  sub_1B4974FBC(v29, &v25[v28], &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v31 = *(v17 + 48);
  if (v31(v25, 1, Descriptor) == 1)
  {
    if (v31(&v25[v28], 1, Descriptor) == 1)
    {
      sub_1B4975024(v25, &qword_1EB8AA6B8, &qword_1B4D2FC68);
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v25, v22, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if (v31(&v25[v28], 1, Descriptor) == 1)
  {
    sub_1B4C3DEFC(v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
LABEL_7:
    v32 = &qword_1EB8AD120;
    v33 = &qword_1B4D3F998;
LABEL_8:
    v34 = v25;
LABEL_34:
    sub_1B4975024(v34, v32, v33);
    goto LABEL_35;
  }

  sub_1B4C2FF48(&v25[v28], v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v35 = *(Descriptor + 20);
  v36 = *&v22[v35];
  v37 = *&v19[v35];
  if (v36 != v37)
  {

    v39 = sub_1B4C25BC8(v36, v37, v38);

    if (!v39)
    {
      sub_1B4C3DEFC(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      sub_1B4C3DEFC(v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      v32 = &qword_1EB8AA6B8;
      v33 = &qword_1B4D2FC68;
      goto LABEL_8;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v40 = sub_1B4D1816C();
  sub_1B4C3DEFC(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4C3DEFC(v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4975024(v25, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if ((v40 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  v41 = v69;
  v42 = *(v69 + 28);
  v43 = *(v78 + 48);
  v44 = v71;
  v45 = v81;
  sub_1B4974FBC(v71 + v42, v81, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  sub_1B4974FBC(v30 + v42, v45 + v43, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v46 = v80;
  v47 = *(v79 + 48);
  if (v47(v45, 1, v80) == 1)
  {
    v48 = v47(v45 + v43, 1, v46);
    v49 = v70;
    if (v48 == 1)
    {
      sub_1B4975024(v45, &qword_1EB8ACAA0, &unk_1B4D3CE00);
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v50 = v77;
  sub_1B4974FBC(v45, v77, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v51 = v47(v45 + v43, 1, v46);
  v49 = v70;
  if (v51 == 1)
  {
    sub_1B4C3DEFC(v50, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
LABEL_17:
    v32 = &qword_1EB8AD118;
    v33 = &qword_1B4D3F990;
LABEL_18:
    v34 = v45;
    goto LABEL_34;
  }

  v52 = v73;
  sub_1B4C2FF48(v45 + v43, v73, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  v53 = *(v46 + 20);
  v54 = *(v50 + v53);
  v55 = *(v52 + v53);
  if (v54 != v55)
  {

    v56 = sub_1B4C2C320(v54, v55);

    if (!v56)
    {
      sub_1B4C3DEFC(v52, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
      sub_1B4C3DEFC(v50, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
      v32 = &qword_1EB8ACAA0;
      v33 = &unk_1B4D3CE00;
      goto LABEL_18;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v57 = sub_1B4D1816C();
  sub_1B4C3DEFC(v52, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4C3DEFC(v50, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4975024(v45, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  if ((v57 & 1) == 0)
  {
LABEL_35:
    v62 = 0;
    return v62 & 1;
  }

LABEL_22:
  v58 = *(v41 + 32);
  v59 = *(v74 + 48);
  sub_1B4974FBC(v44 + v58, v49, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4974FBC(v30 + v58, v49 + v59, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v60 = v76;
  v61 = *(v75 + 48);
  if (v61(v49, 1, v76) != 1)
  {
    v63 = v68;
    sub_1B4974FBC(v49, v68, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v61(v49 + v59, 1, v60) != 1)
    {
      v64 = v49 + v59;
      v65 = v72;
      sub_1B4C2FF48(v64, v72, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v63 == *v65 && *(v63 + 8) == *(v65 + 8) && *(v63 + 16) == *(v65 + 16))
      {
        sub_1B4D17BCC();
        sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v67 = sub_1B4D1816C();
        sub_1B4C3DEFC(v65, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v67)
        {
          sub_1B4C3DEFC(v68, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_24;
        }
      }

      else
      {
        sub_1B4C3DEFC(v65, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4C3DEFC(v68, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v32 = &qword_1EB8A6670;
      v33 = &unk_1B4D2FDA0;
      v34 = v49;
      goto LABEL_34;
    }

    sub_1B4C3DEFC(v63, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_28;
  }

  if (v61(v49 + v59, 1, v60) != 1)
  {
LABEL_28:
    v32 = &qword_1EB8AAEF0;
    v33 = &qword_1B4D32518;
    v34 = v49;
    goto LABEL_34;
  }

LABEL_24:
  sub_1B4975024(v49, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v62 = sub_1B4D1816C();
  return v62 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_ActivitySummaryContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27[0] = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0D0, &qword_1B4D3F928);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - v12;
  v14 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  v15 = *(v11 + 56);
  v27[1] = a1;
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4974FBC(a2 + v14, &v13[v15], &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A9C38, &qword_1B4D2B6E0);
LABEL_12:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = sub_1B4D1816C();
      return v19 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v13, v9, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
LABEL_6:
    v17 = &qword_1EB8AD0D0;
    v18 = &qword_1B4D3F928;
LABEL_7:
    sub_1B4975024(v13, v17, v18);
    goto LABEL_8;
  }

  v20 = v27[0];
  sub_1B4C2FF48(&v13[v15], v27[0], type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v21 = *(v4 + 20);
  v22 = *&v9[v21];
  v23 = *(v20 + v21);
  if (v22 != v23)
  {

    v24 = sub_1B4C30F48(v22, v23);

    if ((v24 & 1) == 0)
    {
      sub_1B4C3DEFC(v20, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v17 = &qword_1EB8A9C38;
      v18 = &qword_1B4D2B6E0;
      goto LABEL_7;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v25 = sub_1B4D1816C();
  sub_1B4C3DEFC(v20, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4975024(v13, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_ActivitySharingContextV7WorkoutV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC0, &qword_1B4D3F930);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v14 = *(v24 + 28);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4974FBC(a2 + v14, &v13[v15], &qword_1EB8A7CB8, &unk_1B4D20170);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B4974FBC(v13, v9, &qword_1EB8A7CB8, &unk_1B4D20170);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v25;
      sub_1B4C2FF48(&v13[v15], v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      if (*v9 == *v20 && v9[4] == *(v20 + 4) && *(v9 + 2) == *(v20 + 8))
      {
        sub_1B4D17BCC();
        sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = sub_1B4D1816C();
        sub_1B4C3DEFC(v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
        if (v21)
        {
          sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B4C3DEFC(v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      }

      sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      v18 = &qword_1EB8A7CB8;
      v19 = &unk_1B4D20170;
LABEL_16:
      sub_1B4975024(v13, v18, v19);
LABEL_17:
      v17 = 0;
      return v17 & 1;
    }

    sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
LABEL_8:
    v18 = &qword_1EB8A7CC0;
    v19 = &qword_1B4D3F930;
    goto LABEL_16;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B4975024(v13, &qword_1EB8A7CB8, &unk_1B4D20170);
  if (*v26 != *a2 || v26[1] != a2[1])
  {
    goto LABEL_17;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1B4D1816C();
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_ActivitySharingContextV6FriendV2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v6 = v5[11];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v5[12];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v5[13];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (sub_1B4A14308(*(a1 + 2), *(a2 + 16)) & 1) != 0 && a1[3] == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33) && (sub_1B4A14918(*(a1 + 5), *(a2 + 40)))
  {
    v24 = v5[14];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (v28 && (*v25 == *v27 && v26 == v28 || (sub_1B4D18DCC() & 1) != 0))
      {
        goto LABEL_43;
      }
    }

    else if (!v28)
    {
LABEL_43:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1B4D1816C() & 1;
    }
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_WorkoutActivityTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_TrainingLoadContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23[0] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0C8, &qword_1B4D3F920);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  v14 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  v15 = *(v11 + 56);
  v23[1] = a1;
  sub_1B4974FBC(a1 + v14, v13, &qword_1EB8AA510, &unk_1B4D3CDD0);
  sub_1B4974FBC(a2 + v14, &v13[v15], &qword_1EB8AA510, &unk_1B4D3CDD0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B4974FBC(v13, v9, &qword_1EB8AA510, &unk_1B4D3CDD0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v23[0];
      sub_1B4C2FF48(&v13[v15], v23[0], type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      if (*v9 == *v21)
      {
        sub_1B4D17BCC();
        sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v22 = sub_1B4D1816C();
        sub_1B4C3DEFC(v21, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        sub_1B4975024(v13, &qword_1EB8AA510, &unk_1B4D3CDD0);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_9:
        v17 = 0;
        return v17 & 1;
      }

      sub_1B4C3DEFC(v21, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      v18 = &qword_1EB8AA510;
      v19 = &unk_1B4D3CDD0;
LABEL_8:
      sub_1B4975024(v13, v18, v19);
      goto LABEL_9;
    }

    sub_1B4C3DEFC(v9, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
LABEL_7:
    v18 = &qword_1EB8AD0C8;
    v19 = &qword_1B4D3F920;
    goto LABEL_8;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1B4975024(v13, &qword_1EB8AA510, &unk_1B4D3CDD0);
LABEL_4:
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = sub_1B4D1816C();
  return v17 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_LocationCoordinateV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_LocationContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v41 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0A8, &qword_1B4D3F8F8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v44 = a1;
  v15 = *(v43 + 20);
  v16 = *(v12 + 56);
  sub_1B4974FBC(a1 + v15, v14, &qword_1EB8ABC28, &qword_1B4D38428);
  v17 = a2 + v15;
  v18 = a2;
  sub_1B4974FBC(v17, &v14[v16], &qword_1EB8ABC28, &qword_1B4D38428);
  v19 = *(v6 + 48);
  if (v19(v14, 1, v5) != 1)
  {
    sub_1B4974FBC(v14, v10, &qword_1EB8ABC28, &qword_1B4D38428);
    if (v19(&v14[v16], 1, v5) != 1)
    {
      v22 = v42;
      sub_1B4C2FF48(&v14[v16], v42, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      v23 = _s19FitnessIntelligence06Apple_a1_B19_LocationCoordinateV2eeoiySbAC_ACtFZ_0(v10, v22);
      sub_1B4C3DEFC(v22, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      sub_1B4975024(v14, &qword_1EB8ABC28, &qword_1B4D38428);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
LABEL_6:
    sub_1B4975024(v14, &qword_1EB8AD0A8, &qword_1B4D3F8F8);
    goto LABEL_7;
  }

  if (v19(&v14[v16], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v14, &qword_1EB8ABC28, &qword_1B4D38428);
LABEL_10:
  v25 = v43;
  v24 = v44;
  v26 = *(v43 + 24);
  v27 = (v44 + v26);
  v28 = *(v44 + v26 + 8);
  v29 = (v18 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v30)
  {
    goto LABEL_7;
  }

  v31 = *(v25 + 28);
  v32 = (v24 + v31);
  v33 = *(v24 + v31 + 8);
  v34 = (v18 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v35)
  {
    goto LABEL_7;
  }

  v36 = *(v25 + 32);
  v37 = (v24 + v36);
  v38 = *(v24 + v36 + 8);
  v39 = (v18 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (v40 && (*v37 == *v39 && v38 == v40 || (sub_1B4D18DCC() & 1) != 0))
    {
      goto LABEL_31;
    }
  }

  else if (!v40)
  {
LABEL_31:
    sub_1B4D17BCC();
    sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v20 = sub_1B4D1816C();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B4C3C66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_WorkoutRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB0, &qword_1B4D20168);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  if (*a1 != *a2 && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v15 = *(v14 + 40);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19 || (*v16 != *v18 || v17 != v19) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v19)
  {
    goto LABEL_22;
  }

  v28[1] = v14;
  v20 = *(v14 + 44);
  v21 = *(v11 + 48);
  sub_1B4974FBC(a1 + v20, v13, &qword_1EB8A6A28, &qword_1B4D20160);
  v22 = a2 + v20;
  v23 = v21;
  sub_1B4974FBC(v22, &v13[v21], &qword_1EB8A6A28, &qword_1B4D20160);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v23], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6A28, &qword_1B4D20160);
LABEL_25:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v25 = sub_1B4D1816C();
      return v25 & 1;
    }

    goto LABEL_21;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A6A28, &qword_1B4D20160);
  if (v24(&v13[v23], 1, v4) == 1)
  {
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
LABEL_21:
    sub_1B4975024(v13, &qword_1EB8A7CB0, &qword_1B4D20168);
    goto LABEL_22;
  }

  sub_1B4C2FF48(&v13[v23], v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  v27 = _s19FitnessIntelligence06Apple_a1_b1_A18PlusCatalogWorkoutV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_1B4C3DEFC(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4975024(v13, &qword_1EB8A6A28, &qword_1B4D20160);
  if (v27)
  {
    goto LABEL_25;
  }

LABEL_22:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v23[0] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0C0, &qword_1B4D3F918);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  v16 = *(v12 + 56);
  v23[1] = a1;
  sub_1B4974FBC(a1 + v15, v14, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  sub_1B4974FBC(a2 + v15, &v14[v16], &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      sub_1B4975024(v14, &qword_1EB8AA6C8, &unk_1B4D2FC70);
LABEL_9:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1B4D1816C();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v14, v10, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
LABEL_6:
    sub_1B4975024(v14, &qword_1EB8AD0C0, &qword_1B4D3F918);
    goto LABEL_7;
  }

  v19 = v23[0];
  sub_1B4C2FF48(&v14[v16], v23[0], type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  v21 = _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV0D3DayV2eeoiySbAE_AEtFZ_0(v10, v19, v20);
  sub_1B4C3DEFC(v19, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4C3DEFC(v10, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4975024(v14, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV0D3DayV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2, double a3)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_AwardsContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4A1A7B8(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_AwardsContextV5AwardV2eeoiySbAE_AEtFZ_0(void *a1, void *a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v55 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0B8, &qword_1B4D3F910);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  if (*a1 != *a2 && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v16 = *(v15 + 32);
  v17 = a1;
  v18 = *(v12 + 48);
  v55 = v15;
  v56 = v17;
  sub_1B4974FBC(v17 + v16, v14, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v19 = a2 + v16;
  v20 = a2;
  sub_1B4974FBC(v19, &v14[v18], &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v21 = *(v6 + 48);
  if (v21(v14, 1, v5) == 1)
  {
    if (v21(&v14[v18], 1, v5) == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  sub_1B4974FBC(v14, v11, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  if (v21(&v14[v18], 1, v5) == 1)
  {
    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
LABEL_13:
    v25 = &qword_1EB8AD0B8;
    v26 = &qword_1B4D3F910;
LABEL_21:
    sub_1B4975024(v14, v25, v26);
    goto LABEL_22;
  }

  sub_1B4C2FF48(&v14[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  if (*v11 != *v8 || v11[1] != v8[1] || v11[2] != v8[2])
  {
    sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    goto LABEL_20;
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v27 = sub_1B4D1816C();
  sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  if ((v27 & 1) == 0)
  {
LABEL_20:
    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    v25 = &qword_1EB8ABFE8;
    v26 = &unk_1B4D3CDF0;
    goto LABEL_21;
  }

  sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v20 = a2;
LABEL_5:
  sub_1B4975024(v14, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v22 = v56;
  v23 = v56[2];
  v24 = v20[2];
  if (*(v56 + 24))
  {
    v23 = v23 != 0;
  }

  if (*(v20 + 24) == 1)
  {
    if (v24)
    {
      if (v23 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v23)
    {
      goto LABEL_22;
    }
  }

  else if (v23 != v24)
  {
    goto LABEL_22;
  }

  if (*(v56 + 7) == *(v20 + 7))
  {
    v30 = v55[9];
    v31 = (v56 + v30);
    v32 = *(v56 + v30 + 8);
    v33 = (v20 + v30);
    v34 = *(v20 + v30 + 8);
    if (v32)
    {
      if (!v34)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (*v31 != *v33)
      {
        LOBYTE(v34) = 1;
      }

      if (v34)
      {
        goto LABEL_22;
      }
    }

    v35 = v55[10];
    v36 = (v56 + v35);
    v37 = *(v56 + v35 + 8);
    v38 = (v20 + v35);
    v39 = v38[1];
    if (v37)
    {
      if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v39)
    {
      goto LABEL_22;
    }

    v40 = v55[11];
    v41 = (v22 + v40);
    v42 = *(v22 + v40 + 8);
    v43 = (v20 + v40);
    v44 = *(v20 + v40 + 8);
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (*v41 != *v43)
      {
        LOBYTE(v44) = 1;
      }

      if (v44)
      {
        goto LABEL_22;
      }
    }

    v45 = v55[12];
    v46 = (v22 + v45);
    v47 = *(v22 + v45 + 8);
    v48 = (v20 + v45);
    v49 = v48[1];
    if (v47)
    {
      if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v49)
    {
      goto LABEL_22;
    }

    v50 = v55[13];
    v51 = (v22 + v50);
    v52 = *(v22 + v50 + 8);
    v53 = (v20 + v50);
    v54 = v53[1];
    if (v52)
    {
      if (v54 && (*v51 == *v53 && v52 == v54 || (sub_1B4D18DCC() & 1) != 0))
      {
        goto LABEL_61;
      }
    }

    else if (!v54)
    {
LABEL_61:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = sub_1B4D1816C();
      return v28 & 1;
    }
  }

LABEL_22:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_AwardsContextV14DateComponentsV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2, double a3)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C3D764(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v60 - v4;
  *(v1 + 16) = 0;
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  v61 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  v62 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  v63 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  v64 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  v65 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  v66 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  v67 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  v68 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  v69 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  *(v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser) = 2;
  v70 = v20;
  v71 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  *(v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused) = 0;
  swift_beginAccess();
  v21 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v21;
  v22 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v22, v5, &qword_1EB8AB768, &unk_1B4D3CDE0);
  swift_beginAccess();
  sub_1B49A205C(v5, v1 + v6, &qword_1EB8AB768, &unk_1B4D3CDE0);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal);
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  swift_beginAccess();
  *v8 = v24;
  *(v8 + 8) = v23;
  v25 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress);
  swift_beginAccess();
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  swift_beginAccess();
  *v9 = v26;
  *(v9 + 8) = v25;
  v27 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v10 = v28;
  *(v10 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  v31 = v61;
  swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = v29;
  v32 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v34 = v62;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  v35 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  v37 = v63;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  v38 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v64;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v65;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = v66;
  swift_beginAccess();
  *v46 = v45;
  *(v46 + 8) = v44;
  v47 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount);
  swift_beginAccess();
  v48 = *v47;
  LOBYTE(v47) = *(v47 + 8);
  v49 = v67;
  swift_beginAccess();
  *v49 = v48;
  *(v49 + 8) = v47;
  v50 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  v52 = v68;
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 8) = v50;
  v53 = a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  LODWORD(v51) = *v53;
  LOBYTE(v53) = *(v53 + 4);
  v54 = v69;
  swift_beginAccess();
  *v54 = v51;
  *(v54 + 4) = v53;
  v55 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  LOBYTE(v55) = *(a1 + v55);
  v56 = v70;
  swift_beginAccess();
  *(v1 + v56) = v55;
  v57 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v57);
  v58 = v71;
  swift_beginAccess();
  *(v1 + v58) = a1;
  return v1;
}

uint64_t sub_1B4C3DE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C3DEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C3E0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4C3E124()
{
  result = qword_1EB8ACBC0;
  if (!qword_1EB8ACBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACBC0);
  }

  return result;
}

unint64_t sub_1B4C3E17C()
{
  result = qword_1EB8ACBF8;
  if (!qword_1EB8ACBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACBF8);
  }

  return result;
}

unint64_t sub_1B4C3E1D4()
{
  result = qword_1EB8ACC00;
  if (!qword_1EB8ACC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC00);
  }

  return result;
}

unint64_t sub_1B4C3E25C()
{
  result = qword_1EB8ACC18;
  if (!qword_1EB8ACC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC18);
  }

  return result;
}

unint64_t sub_1B4C3E2B4()
{
  result = qword_1EB8ACC20;
  if (!qword_1EB8ACC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC20);
  }

  return result;
}

unint64_t sub_1B4C3E30C()
{
  result = qword_1EB8ACC28;
  if (!qword_1EB8ACC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC28);
  }

  return result;
}

unint64_t sub_1B4C3E394()
{
  result = qword_1EB8ACC40;
  if (!qword_1EB8ACC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC40);
  }

  return result;
}

unint64_t sub_1B4C3E3EC()
{
  result = qword_1EB8ACC48;
  if (!qword_1EB8ACC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC48);
  }

  return result;
}

unint64_t sub_1B4C3E444()
{
  result = qword_1EB8ACC50;
  if (!qword_1EB8ACC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC50);
  }

  return result;
}

unint64_t sub_1B4C3E4CC()
{
  result = qword_1EB8ACC68;
  if (!qword_1EB8ACC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC68);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(a2(0) + 20));
  result = swift_beginAccess();
  v6 = *(v4 + 24);
  *a3 = *(v4 + 16);
  *(a3 + 8) = v6;
  return result;
}

void sub_1B4C3FFDC(uint64_t a1)
{
  sub_1B4C410D0(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8ACDA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C400F4(uint64_t a1)
{
  sub_1B4C410D0(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8ACDA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4C40274(319, &qword_1EB8ACDB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B4C40274(319, &qword_1EB8AACF0, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4C40274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4D17BCC();
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

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4D17BCC();
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

uint64_t sub_1B4C40558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B4D17BCC();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4C40654(uint64_t a1)
{
  sub_1B4C40274(319, &qword_1EB8ACE30, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACE38, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B4D17BCC();
      if (v3 <= 0x3F)
      {
        sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4C407DC(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACE50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C40958(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_255Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B4D17BCC();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_256Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1B4D17BCC();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1B4C40C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4D17BCC();
  if (v7 <= 0x3F)
  {
    sub_1B4C40274(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C40D10(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4C40DC0(uint64_t a1)
{
  sub_1B4C40274(319, &qword_1EB8ACED0, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C40EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17BCC();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4C40F74(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACEF8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4C410D0(319, &qword_1EDC378D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4C410D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4C41148(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8ACF10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C412AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4C40274(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4C41374(uint64_t a1)
{
  sub_1B4C40274(319, &qword_1EB8ACE38, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C41450(uint64_t a1)
{
  result = sub_1B4D17BCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4C414F8(uint64_t a1)
{
  sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACF60, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C415F8(uint64_t a1)
{
  sub_1B4C40274(319, &qword_1EB8AACE0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8AAD08, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8ACF60, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B4C417A4(uint64_t a1)
{
  sub_1B4C40274(319, &qword_1EB8ACF88, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACF90, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8AAD10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B4C40274(319, &qword_1EB8ACF98, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B4C40274(319, &qword_1EB8ACFA0, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B4C40274(319, &qword_1EB8ACFA8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B4C40274(319, &qword_1EB8ACFB0, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1B4C40274(319, &qword_1EB8AACE8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1B4C40274(319, &qword_1EB8ACFB8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B4C40274(319, &qword_1EB8ACFC0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
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

void sub_1B4C41C40(uint64_t a1)
{
  sub_1B4C40274(319, &qword_1EB8ACFD8, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B4C41D48()
{
  result = qword_1EB8AD098;
  if (!qword_1EB8AD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD098);
  }

  return result;
}

unint64_t sub_1B4C41D9C()
{
  result = qword_1EB8AD0A0;
  if (!qword_1EB8AD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD0A0);
  }

  return result;
}

uint64_t StreamingAudioRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

FitnessIntelligence::RingsPropertyKind_optional __swiftcall RingsPropertyKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18DFC();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t RingsPropertyKind.rawValue.getter()
{
  result = 0x6572745365766F6DLL;
  switch(*v0)
  {
    case 1:
      result = 0x6573696372657865;
      break;
    case 2:
      result = 0x727453646E617473;
      break;
    case 3:
    case 7:
      result = 0xD000000000000013;
      break;
    case 4:
    case 0xA:
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 0xD:
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x6174537370657473;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xB:
    case 0x14:
    case 0x17:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
    case 0x18:
      result = 0xD000000000000014;
      break;
    case 0x11:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0x616F47646E617473;
      break;
    case 0x13:
      result = 0xD000000000000011;
      break;
    case 0x19:
      result = 0x756F436C61746F74;
      break;
    default:
      return result;
  }

  return result;
}

FitnessIntelligence::RingGoal_optional __swiftcall RingGoal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RingGoal.rawValue.getter()
{
  v1 = 0x736569726F6C6163;
  v2 = 0x6573696372657865;
  if (*v0 != 2)
  {
    v2 = 0x616F47646E617473;
  }

  if (*v0)
  {
    v1 = 0x756E694D65766F6DLL;
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

uint64_t sub_1B4C4242C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C42504(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C425C8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C426A8(uint64_t *a1@<X8>)
{
  v2 = 0x736569726F6C6163;
  v3 = 0x6573696372657865;
  v4 = 0xE90000000000006CLL;
  if (*v1 == 2)
  {
    v4 = 0xEC0000006C616F47;
  }

  else
  {
    v3 = 0x616F47646E617473;
  }

  v5 = 0xEF6C616F47736574;
  if (*v1)
  {
    v2 = 0x756E694D65766F6DLL;
  }

  else
  {
    v5 = 0xEC0000006C616F47;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

FitnessIntelligence::Ring_optional __swiftcall Ring.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Ring.rawValue.getter()
{
  v1 = 1702260589;
  v2 = 0x646E617473;
  if (*v0 != 2)
  {
    v2 = 0x65657268546C6C61;
  }

  if (*v0)
  {
    v1 = 0x6573696372657865;
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

uint64_t sub_1B4C4283C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C42900(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C429B0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C42A7C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1702260589;
  v4 = 0xE500000000000000;
  v5 = 0x646E617473;
  if (*v1 != 2)
  {
    v5 = 0x65657268546C6C61;
    v4 = 0xED000073676E6952;
  }

  if (*v1)
  {
    v3 = 0x6573696372657865;
    v2 = 0xE800000000000000;
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

FitnessIntelligence::RingsMetric_optional __swiftcall RingsMetric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RingsMetric.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E695265766F6DLL;
  v3 = 0x73746867696C66;
  if (v1 != 5)
  {
    v3 = 0x65636E6174736964;
  }

  v4 = 0x6E6952646E617473;
  if (v1 != 3)
  {
    v4 = 0x7370657473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x756E694D65766F6DLL;
  if (v1 != 1)
  {
    v5 = 0x6573696372657865;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4C42C7C(uint64_t a1)
{
  sub_1B4D1820C();
}

void sub_1B4C42DB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x676E695265766F6DLL;
  v5 = 0xE700000000000000;
  v6 = 0x73746867696C66;
  if (v2 != 5)
  {
    v6 = 0x65636E6174736964;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6952646E617473;
  if (v2 != 3)
  {
    v8 = 0x7370657473;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00676E69526574;
  v10 = 0x756E694D65766F6DLL;
  if (v2 != 1)
  {
    v10 = 0x6573696372657865;
    v9 = 0xEC000000676E6952;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1B4C42EC8()
{
  result = qword_1EB8AD128;
  if (!qword_1EB8AD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD128);
  }

  return result;
}

unint64_t sub_1B4C42F50()
{
  result = qword_1EB8AD140;
  if (!qword_1EB8AD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD140);
  }

  return result;
}

unint64_t sub_1B4C42FD8()
{
  result = qword_1EB8AD158;
  if (!qword_1EB8AD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD158);
  }

  return result;
}

uint64_t sub_1B4C4305C()
{
  v0 = RingsPropertyKind.rawValue.getter();
  v2 = v1;
  if (v0 == RingsPropertyKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4C430FC()
{
  sub_1B4D18E8C();
  RingsPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43164(uint64_t a1)
{
  RingsPropertyKind.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4C431C8(uint64_t a1)
{
  sub_1B4D18E8C();
  RingsPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4C43238@<X0>(unint64_t *a1@<X8>)
{
  result = RingsPropertyKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4C43260(void *a1)
{
  a1[1] = sub_1B4C43298();
  a1[2] = sub_1B4C432EC();
  result = sub_1B4C43340();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4C43298()
{
  result = qword_1EB8AD170;
  if (!qword_1EB8AD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD170);
  }

  return result;
}

unint64_t sub_1B4C432EC()
{
  result = qword_1EB8AD178;
  if (!qword_1EB8AD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD178);
  }

  return result;
}

unint64_t sub_1B4C43340()
{
  result = qword_1EB8AD180;
  if (!qword_1EB8AD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RingsPropertyKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RingsPropertyKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void static StreakPropertyGenerator.from(_:for:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1B49A8448(a1, &v35);
  if (!*(&v36 + 1))
  {
    sub_1B49A84B8(&v35);
LABEL_7:
    sub_1B496F544(&v35);
    v10 = v42;
    *(a3 + 96) = v41;
    *(a3 + 112) = v10;
    *(a3 + 128) = v43;
    v11 = v38;
    *(a3 + 32) = v37;
    *(a3 + 48) = v11;
    v12 = v40;
    *(a3 + 64) = v39;
    *(a3 + 80) = v12;
    v13 = v36;
    *a3 = v35;
    *(a3 + 16) = v13;
    return;
  }

  sub_1B49A24C4(&v35, v44);
  if (v4 >= 4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    goto LABEL_7;
  }

  v5 = v45;
  v6 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v6 + 16))(&v35, v5, v6);
  if (v36)
  {
LABEL_4:
    __swift_project_boxed_opaque_existential_1(v44, v45);
    LOBYTE(v35) = v4;
    LOBYTE(v7) = RingsRepresentable.hasClosedRing(for:)(&v35);
    v8 = v7;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = v45;
  v15 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v15 + 16))(&v35, v14, v15);
  v16 = *(&v35 + 1);
  v9 = v36;
  v18 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(*(v17 + 8) + 8))(&v35, v18);
  if (v9 == 1)
  {
    v8 = 0;
  }

  else
  {
    if (v16 == v35)
    {
      goto LABEL_4;
    }

    v8 = 0;
    v9 = 1;
  }

LABEL_12:
  v20 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(*(v19 + 8) + 8))(&v35, v20);
  v21 = v35;
  v22 = v45;
  v23 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v23 + 16))(&v35, v22, v23);
  if (v36)
  {
    v24 = MEMORY[0x1E69E7CC0];
    if (((v8 | v9) & 1) == 0)
    {
LABEL_14:
      v25 = v21;
      goto LABEL_19;
    }
  }

  else
  {
    v33 = v35;
    v24 = sub_1B4A1E31C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1B4A1E31C((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v27 + 1;
    *&v24[16 * v27 + 32] = v33;
    if (((v8 | v9) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v34 = v21;
  CacheIndex.add(days:)(1, &v35);
  v25 = v35;
LABEL_19:
  v28 = v8 & 1;
  CacheIndex.add(days:)(v9 + v28, &v34);
  if (v34 < v21)
  {
    __break(1u);
  }

  else
  {
    *&v35 = v21;
    *(&v35 + 1) = v28;
    *&v36 = v9;
    *(&v36 + 1) = v21;
    *&v37 = v34;
    *(&v37 + 1) = v25;
    *&v38 = v28;
    *(&v38 + 1) = v9;
    *&v39 = v21;
    *(&v39 + 1) = v34;
    *&v40 = v25;
    *(&v40 + 1) = v28;
    *&v41 = v9;
    *(&v41 + 1) = v21;
    *&v42 = v34;
    *(&v42 + 1) = v25;
    v43 = v24;
    nullsub_1();
    v29 = v42;
    *(a3 + 96) = v41;
    *(a3 + 112) = v29;
    *(a3 + 128) = v43;
    v30 = v38;
    *(a3 + 32) = v37;
    *(a3 + 48) = v30;
    v31 = v40;
    *(a3 + 64) = v39;
    *(a3 + 80) = v31;
    v32 = v36;
    *a3 = v35;
    *(a3 + 16) = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }
}

unint64_t sub_1B4C438EC(uint64_t a1)
{
  result = sub_1B4BA88E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C43918()
{
  result = qword_1EDC39560;
  if (!qword_1EDC39560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39560);
  }

  return result;
}

uint64_t Adapter.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4C43A28()
{
  result = qword_1EB8AD188;
  if (!qword_1EB8AD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD188);
  }

  return result;
}

uint64_t sub_1B4C43A7C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43AF8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43B50@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4C43BB4()
{
  result = qword_1EB8AD190;
  if (!qword_1EB8AD190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD198, &qword_1B4D3FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD190);
  }

  return result;
}

FitnessIntelligence::SnapshotProcessingReason_optional __swiftcall SnapshotProcessingReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SnapshotProcessingReason.rawValue.getter()
{
  if (*v0)
  {
    return 0x736154796C696164;
  }

  else
  {
    return 0x7463617265746E69;
  }
}

uint64_t sub_1B4C43CE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736154796C696164;
  }

  else
  {
    v3 = 0x7463617265746E69;
  }

  if (v2)
  {
    v4 = 0xEB00000000657669;
  }

  else
  {
    v4 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v5 = 0x736154796C696164;
  }

  else
  {
    v5 = 0x7463617265746E69;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006BLL;
  }

  else
  {
    v6 = 0xEB00000000657669;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B4D18DCC();
  }

  return v8 & 1;
}

unint64_t sub_1B4C43DA0()
{
  result = qword_1EB8AD1A0;
  if (!qword_1EB8AD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1A0);
  }

  return result;
}

uint64_t sub_1B4C43DF4()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43E84(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4C43F00(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43F8C@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B4C43FEC(uint64_t *a1@<X8>)
{
  v2 = 0x7463617265746E69;
  if (*v1)
  {
    v2 = 0x736154796C696164;
  }

  v3 = 0xEB00000000657669;
  if (*v1)
  {
    v3 = 0xE90000000000006BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B4C440A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D17B8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C440E4()
{
  v0 = sub_1B4D17B8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4D17B9C();
  sub_1B4C440A0(&qword_1EDC37998, MEMORY[0x1E69AA998]);
  v4 = sub_1B4D17D6C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1B4C4424C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B26420(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

unint64_t sub_1B4C442A4()
{
  result = qword_1EB8AD1E0;
  if (!qword_1EB8AD1E0)
  {
    type metadata accessor for AverageWorkoutPaceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1E0);
  }

  return result;
}

unint64_t sub_1B4C44300()
{
  result = qword_1EB8AD1E8;
  if (!qword_1EB8AD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1E8);
  }

  return result;
}

uint64_t sub_1B4C44354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  __swift_allocate_value_buffer(v0, qword_1EB8AD1B0);
  __swift_project_value_buffer(v0, qword_1EB8AD1B0);
  v1 = [objc_opt_self() kilometersPerHour];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  return sub_1B4D1741C();
}

uint64_t sub_1B4C44400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  __swift_allocate_value_buffer(v0, qword_1EB8AD1C8);
  __swift_project_value_buffer(v0, qword_1EB8AD1C8);
  v1 = [objc_opt_self() meters];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  return sub_1B4D1741C();
}

uint64_t sub_1B4C444B4()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C44528(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4457C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C445F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return (sub_1B4C447F0)(a1, a2, a3, a4);
}

unint64_t sub_1B4C446C0(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C446F0();
  result = sub_1B4C44744();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C446F0()
{
  result = qword_1EB8AD1F0;
  if (!qword_1EB8AD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1F0);
  }

  return result;
}

unint64_t sub_1B4C44744()
{
  result = qword_1EB8AD1F8;
  if (!qword_1EB8AD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1F8);
  }

  return result;
}

unint64_t sub_1B4C4479C()
{
  result = qword_1EB8AD200;
  if (!qword_1EB8AD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD200);
  }

  return result;
}

uint64_t sub_1B4C447F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v3[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  v3[30] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  v3[37] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C44B3C, 0, 0);
}

uint64_t sub_1B4C44B3C()
{
  v163 = v0;
  v1 = *(v0 + 112);
  v2 = type metadata accessor for WorkoutState(0);
  if (*(v1 + *(v2 + 48)) < 600.0)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = *(v0 + 96);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 88) = &type metadata for AverageWorkoutPaceFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD208, &qword_1B4D40260);
  v161 = sub_1B4D181CC();
  v162 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ELL, 0x80000001B4D4B380);
  (*(v6 + 8))(v161, v162, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v5, v6);

  v8 = *(v0 + 80);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v0 + 296);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_1B4CE458C((v0 + 16), v8, v9);
  v10 = *(v0 + 296);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {

    v12 = &qword_1EB8A7978;
    v13 = &unk_1B4D1F2F0;
    v14 = v10;
LABEL_5:
    sub_1B4975024(v14, v12, v13);
LABEL_6:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4D17F6C();
    __swift_project_value_buffer(v15, qword_1EDC36F00);
    v16 = sub_1B4D17F5C();
    v17 = sub_1B4D1873C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v161 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v161);
      _os_log_impl(&dword_1B4953000, v16, v17, "Context or snapshots don't exist for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
      MEMORY[0x1B8C7DDA0](v18, -1, -1);
    }

    goto LABEL_11;
  }

  v158 = v3;
  v23 = *(v0 + 328);
  v22 = *(v0 + 336);
  v24 = *(v0 + 312);
  v25 = *(v0 + 304);
  v26 = *(v0 + 240);
  (*(v24 + 16))(v23, v10, v25);
  sub_1B4975024(v10, &qword_1EB8A6840, &unk_1B4D20FA0);
  (*(v24 + 32))(v22, v23, v25);
  sub_1B4CE5168((v0 + 16), v8, v26);
  v27 = *(v0 + 240);

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    v29 = *(v0 + 240);
    (*(*(v0 + 312) + 8))(*(v0 + 336), *(v0 + 304));
    v12 = &qword_1EB8A7530;
    v13 = &unk_1B4D40250;
    v14 = v29;
    goto LABEL_5;
  }

  v30 = *(v0 + 280);
  v31 = *(v0 + 288);
  v32 = *(v0 + 248);
  v33 = *(v0 + 256);
  v34 = *(v0 + 240);
  v35 = *(v0 + 192);
  v36 = *(v0 + 200);
  v37 = *(v0 + 184);
  v38 = *(v0 + 112);
  (*(v33 + 16))(v30, v34, v32);
  sub_1B4975024(v34, &qword_1EB8A6858, &qword_1B4D1AB70);
  (*(v33 + 32))(v31, v30, v32);
  sub_1B4C46378(v38 + *(v158 + 68), v37);
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    v39 = *(v0 + 336);
    v40 = *(v0 + 304);
    v41 = *(v0 + 312);
    v42 = *(v0 + 184);
    (*(*(v0 + 256) + 8))(*(v0 + 288), *(v0 + 248));
    (*(v41 + 8))(v39, v40);
    v12 = &qword_1EB8A6CB0;
    v13 = &unk_1B4D1BBF0;
    v14 = v42;
    goto LABEL_5;
  }

  (*(*(v0 + 200) + 32))(*(v0 + 232), *(v0 + 184), *(v0 + 192));
  if (qword_1EDC36E80 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 224);
  v44 = *(v0 + 192);
  v45 = *(v0 + 200);
  v155 = qword_1EDC36E88;
  sub_1B4D1745C();
  sub_1B4D1742C();
  v46 = *(v45 + 8);
  v46(v43, v44);
  v47 = [objc_opt_self() metersPerSecond];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  sub_1B4D1741C();
  if (qword_1EB8A65B8 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 176);
  v49 = *(v0 + 120);
  v50 = *(v0 + 128);
  __swift_project_value_buffer(v49, qword_1EB8AD1B0);
  sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
  v51 = sub_1B4D1810C();
  v52 = *(v50 + 8);
  v52(v48, v49);
  if ((v51 & 1) == 0)
  {
    v74 = *(v0 + 336);
    v75 = *(v0 + 304);
    v76 = *(v0 + 312);
    v77 = *(v0 + 288);
    v78 = *(v0 + 248);
    v79 = *(v0 + 256);
    v46(*(v0 + 232), *(v0 + 192));
    (*(v79 + 8))(v77, v78);
    (*(v76 + 8))(v74, v75);
    goto LABEL_6;
  }

  v157 = v46;
  if (qword_1EB8A65C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 304), qword_1EB8AD1C8);
  sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v53 = sub_1B4D1810C();
  v54 = *(v0 + 336);
  if ((v53 & 1) == 0)
  {
    v80 = *(v0 + 304);
    v81 = *(v0 + 312);
    v82 = *(v0 + 288);
    v83 = *(v0 + 248);
    v84 = *(v0 + 256);
    v157(*(v0 + 232), *(v0 + 192));
    (*(v84 + 8))(v82, v83);
    (*(v81 + 8))(v54, v80);
    goto LABEL_6;
  }

  v154 = v52;
  v56 = *(v0 + 312);
  v55 = *(v0 + 320);
  v57 = *(v0 + 304);
  v58 = *(v0 + 272);
  v59 = *(v0 + 248);
  v60 = *(v0 + 256);
  v141 = *(v0 + 192);
  v143 = *(v0 + 224);
  v146 = *(v0 + 168);
  v149 = *(v0 + 120);
  v139 = objc_opt_self();
  v61 = [v139 seconds];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v153 = *(v60 + 8);
  v153(v58, v59);
  v62 = [objc_opt_self() meters];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v151 = *(v56 + 8);
  v151(v55, v57);
  type metadata accessor for UnitPace();
  v63 = v155;
  sub_1B4D1741C();
  sub_1B4D1745C();
  sub_1B4D1742C();
  v157(v143, v141);
  v64 = [objc_opt_self() metersPerSecond];
  sub_1B4D1741C();
  v65 = sub_1B4D1810C();
  v154(v146, v149);
  if ((v65 & 1) == 0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v85 = sub_1B4D17F6C();
    __swift_project_value_buffer(v85, qword_1EDC36F00);
    v69 = sub_1B4D17F5C();
    v70 = sub_1B4D1873C();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_41;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v161 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v161);
    v73 = "Last 4 weeks average pace is not significant %s";
    goto LABEL_40;
  }

  sub_1B4D1742C();
  if (v66 == 0.0 || (sub_1B4D1742C(), v67 == 0.0))
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v68 = sub_1B4D17F6C();
    __swift_project_value_buffer(v68, qword_1EDC36F00);
    v69 = sub_1B4D17F5C();
    v70 = sub_1B4D1873C();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_41;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v161 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v161);
    v73 = "average paces don't exist for %s";
LABEL_40:
    _os_log_impl(&dword_1B4953000, v69, v70, v73, v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x1B8C7DDA0](v72, -1, -1);
    MEMORY[0x1B8C7DDA0](v71, -1, -1);
LABEL_41:

    v86 = *(v0 + 336);
    v87 = *(v0 + 304);
    v88 = *(v0 + 288);
    v89 = *(v0 + 248);
    v90 = *(v0 + 232);
    v91 = *(v0 + 192);
    v157(*(v0 + 216), v91);
    v157(v90, v91);
    v153(v88, v89);
    v151(v86, v87);
LABEL_11:
    v160 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v92 = *(v0 + 224);
  v93 = *(v0 + 192);
  v144 = *(v0 + 152);
  v94 = *(v0 + 136);
  v140 = *(v0 + 144);
  v147 = *(v0 + 120);
  sub_1B4D1744C();
  sub_1B4D1745C();
  v157(v92, v93);
  sub_1B4D1745C();
  sub_1B4D1742C();
  v157(v92, v93);
  v95 = [objc_opt_self() metersPerSecond];
  sub_1B4D1741C();
  sub_1B4D1745C();
  sub_1B4D1742C();
  v157(v92, v93);
  v96 = [objc_opt_self() metersPerSecond];
  sub_1B4D1741C();
  sub_1B4D1744C();
  v154(v94, v147);
  v154(v140, v147);
  v97 = [objc_opt_self() metersPerSecond];
  sub_1B4D1745C();

  v154(v144, v147);
  sub_1B4D1742C();
  if (v98 <= 0.0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v105 = sub_1B4D17F6C();
    __swift_project_value_buffer(v105, qword_1EDC36F00);
    v100 = sub_1B4D17F5C();
    v101 = sub_1B4D1873C();
    if (!os_log_type_enabled(v100, v101))
    {
      goto LABEL_56;
    }

    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v161 = v103;
    *v102 = 136315138;
    *(v102 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v161);
    v104 = "average pace is not faster %s";
    goto LABEL_55;
  }

  v159 = *(*(v0 + 112) + *(v158 + 24));
  if ([v159 effectiveTypeIdentifier] == 13)
  {
    if (qword_1EB8A6000 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 120), qword_1EB8F3AD0);
    if ((sub_1B4D1810C() & 1) == 0)
    {
LABEL_47:
      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v99 = sub_1B4D17F6C();
      __swift_project_value_buffer(v99, qword_1EDC36F00);
      v100 = sub_1B4D17F5C();
      v101 = sub_1B4D1873C();
      if (!os_log_type_enabled(v100, v101))
      {
        goto LABEL_56;
      }

      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v161 = v103;
      *v102 = 136315138;
      *(v102 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v161);
      v104 = "Average pace not significantly faster %s";
LABEL_55:
      _os_log_impl(&dword_1B4953000, v100, v101, v104, v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x1B8C7DDA0](v103, -1, -1);
      MEMORY[0x1B8C7DDA0](v102, -1, -1);
LABEL_56:

      v106 = *(v0 + 336);
      v107 = *(v0 + 304);
      v108 = *(v0 + 288);
      v109 = *(v0 + 248);
      v110 = *(v0 + 232);
      v112 = *(v0 + 208);
      v111 = *(v0 + 216);
      v113 = *(v0 + 192);
      v154(*(v0 + 160), *(v0 + 120));
      v157(v112, v113);
      v157(v111, v113);
      v157(v110, v113);
      v153(v108, v109);
      v151(v106, v107);
      goto LABEL_11;
    }
  }

  else
  {
    v114 = [*(v0 + 104) userDistanceHKUnitForActivityType_];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v115 = [objc_opt_self() mileUnit];
    v116 = sub_1B4D187AC();

    if (v116)
    {
      if (qword_1EB8A6478 != -1)
      {
        swift_once();
      }

      v117 = &qword_1EB8AC490;
    }

    else
    {
      if (qword_1EB8A6480 != -1)
      {
        swift_once();
      }

      v117 = &qword_1EB8AC498;
    }

    v118 = *(v0 + 272);
    v119 = *(v0 + 248);
    v120 = *(v0 + 224);
    v121 = *(v0 + 192);
    v122 = *v117;

    sub_1B4D1745C();
    sub_1B4D1742C();
    v157(v120, v121);
    v123 = [v139 minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v124 = [v139 seconds];
    sub_1B4D1745C();

    v153(v118, v119);
    if (qword_1EB8A5FF0 != -1)
    {
      swift_once();
    }

    v125 = *(v0 + 264);
    v126 = *(v0 + 248);
    __swift_project_value_buffer(v126, qword_1EB8F3AA0);
    sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
    v127 = sub_1B4D1810C();
    v153(v125, v126);
    if ((v127 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v156 = *(v0 + 336);
  v152 = *(v0 + 304);
  v148 = *(v0 + 248);
  v150 = *(v0 + 288);
  v128 = *(v0 + 208);
  v142 = *(v0 + 216);
  v145 = *(v0 + 232);
  v130 = *(v0 + 192);
  v129 = *(v0 + 200);
  v131 = *(v0 + 160);
  v133 = *(v0 + 120);
  v132 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD218, &qword_1B4D40268);
  v134 = (type metadata accessor for AverageWorkoutPaceFact(0) - 8);
  v135 = (*(*v134 + 80) + 32) & ~*(*v134 + 80);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1B4D1A800;
  v160 = v136;
  v137 = (v136 + v135);
  (*(v129 + 16))(v136 + v135 + v134[7], v128, v130);
  (*(v132 + 16))(&v137[v134[8]], v131, v133);
  *v137 = v159;
  v138 = v159;
  v154(v131, v133);
  v157(v128, v130);
  v157(v142, v130);
  v157(v145, v130);
  v153(v150, v148);
  v151(v156, v152);
LABEL_12:

  v20 = *(v0 + 8);

  return v20(v160);
}

uint64_t sub_1B4C46378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4C463E8(uint64_t a1)
{
  v2 = sub_1B4CAC70C(a1);
  v3 = *(v2 + 2);
  v4 = 32;
  while (v3)
  {
    v5 = *&v2[v4];
    v4 += 8;
    --v3;
    if (v5 == 8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD220, &qword_1B4D40270);
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD228, &unk_1B4D40278) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B4D1A800;
      v9 = v8 + v7;
      v10 = type metadata accessor for WorkoutState(0);
      v11 = *(v10 + 36);
      v12 = sub_1B4D1777C();
      (*(*(v12 - 8) + 16))(v9, a1 + v11, v12);
      type metadata accessor for DateRangeDescriptor(0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1B4D1A800;
      *(v13 + 32) = [*(a1 + *(v10 + 24)) effectiveTypeIdentifier];
      v14 = type metadata accessor for WorkoutPropertiesQuery(0);
      v15 = (v9 + v14[5]);
      v16 = MEMORY[0x1E69E7CC0];
      *v15 = MEMORY[0x1E69E7CC0];
      v15[1] = v16;
      v15[2] = v16;
      v15[3] = v13;
      v15[4] = v16;
      v15[5] = v16;
      *(v9 + v14[6]) = v16;
      *(v9 + v14[7]) = &unk_1F2CB9790;
      type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v17 = sub_1B4C97044(v8);
      swift_setDeallocating();
      sub_1B4975024(v9, &qword_1EB8AD228, &unk_1B4D40278);
      swift_deallocClassInstance();
      return v17;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1B4D17F6C();
  __swift_project_value_buffer(v19, qword_1EDC36F00);
  v20 = sub_1B4D17F5C();
  v21 = sub_1B4D1873C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v25);
    _os_log_impl(&dword_1B4953000, v20, v21, "%s does not support this workout state", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B8C7DDA0](v23, -1, -1);
    MEMORY[0x1B8C7DDA0](v22, -1, -1);
  }

  v24 = MEMORY[0x1E69E7CC0];

  return sub_1B4C97044(v24);
}

__n128 WorkoutRecord.init(identifier:startDate:endDate:activityType:locationType:catalogWorkoutIdentifier:fitnessPlusCatalogWorkout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a5;
  v25 = *a8;
  v24 = a8[1].n128_u64[0];
  v23 = a8[1].n128_u8[8];
  v15 = sub_1B4D177CC();
  (*(*(v15 - 8) + 32))(a9, a1, v15);
  v16 = type metadata accessor for WorkoutRecord(0);
  v17 = v16[5];
  v18 = sub_1B4D1777C();
  v19 = *(*(v18 - 8) + 32);
  v19(a9 + v17, a2, v18);
  v19(a9 + v16[6], a3, v18);
  *(a9 + v16[7]) = a4;
  *(a9 + v16[8]) = v14;
  v20 = (a9 + v16[9]);
  *v20 = a6;
  v20[1] = a7;
  v21 = (a9 + v16[10]);
  result = v25;
  *v21 = v25;
  v21[1].n128_u64[0] = v24;
  v21[1].n128_u8[8] = v23;
  return result;
}

uint64_t type metadata accessor for WorkoutRecord(uint64_t a1)
{
  result = qword_1EB8AD230;
  if (!qword_1EB8AD230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WorkoutRecord.fi_activityType.getter()
{
  v1 = type metadata accessor for WorkoutRecord(0);
  v2 = *(v0 + *(v1 + 28));
  if (*(v0 + *(v1 + 32)) <= 1u && *(v0 + *(v1 + 32)))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1B4D18DCC();
  }

  v4 = objc_allocWithZone(MEMORY[0x1E699C9F0]);

  return [v4 initWithActivityTypeIdentifier:v2 isIndoor:v3 & 1];
}

uint64_t WorkoutRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutRecord.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutRecord(0) + 20);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutRecord.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutRecord(0) + 24);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutRecord.locationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutRecord(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WorkoutRecord.catalogWorkoutIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutRecord(0) + 36));

  return v1;
}

double WorkoutRecord.fitnessPlusCatalogWorkout.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutRecord(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);

  return sub_1B4A69FE8(v4, v5, v6);
}

double WorkoutRecord.duration.getter()
{
  type metadata accessor for WorkoutRecord(0);
  sub_1B4D176DC();
  v1 = v0;
  sub_1B4D176DC();
  return v1 - v2;
}

BOOL _s19FitnessIntelligence13WorkoutRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutRecord(0);
  if ((sub_1B4D1774C() & 1) == 0 || (sub_1B4D1774C() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]) || (sub_1B4976C84(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9 || (*v6 != *v8 || v7 != v9) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v4[10];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = (a2 + v10);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  if (!v12)
  {
    sub_1B4A69FE8(v11, 0, v13);
    if (!v16)
    {
      sub_1B4A69FE8(v15, 0, v17);
      sub_1B4A6A02C(v11, 0, v13);
      return 1;
    }

    sub_1B4A69FE8(v15, v16, v17);
    goto LABEL_26;
  }

  if (!v16)
  {
    sub_1B4A69FE8(v11, v12, v13);
    sub_1B4A69FE8(v15, 0, v17);
    sub_1B4A69FE8(v11, v12, v13);

LABEL_26:
    sub_1B4A6A02C(v11, v12, v13);
    v21 = v15;
    v22 = v16;
    v23 = v17;
    goto LABEL_27;
  }

  if ((v11 != v15 || v12 != v16) && (sub_1B4D18DCC() & 1) == 0 || (sub_1B4A0C158(v13, v17) & 1) == 0)
  {
    sub_1B4A69FE8(v11, v12, v13);
    sub_1B4A69FE8(v15, v16, v17);
    sub_1B4A69FE8(v11, v12, v13);
    sub_1B4A6A02C(v15, v16, v17);

    v21 = v11;
    v22 = v12;
    v23 = v13;
LABEL_27:
    sub_1B4A6A02C(v21, v22, v23);
    return 0;
  }

  v25 = FitnessPlusModalityKind.rawValue.getter();
  v19 = v18;
  if (v25 == FitnessPlusModalityKind.rawValue.getter() && v19 == v20)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_1B4D18DCC();
  }

  sub_1B4A69FE8(v11, v12, v13);
  sub_1B4A69FE8(v15, v16, v17);
  sub_1B4A69FE8(v11, v12, v13);

  sub_1B4A6A02C(v15, v16, v17);

  sub_1B4A6A02C(v11, v12, v13);
  return (v26 & 1) != 0;
}

void sub_1B4C470D0(uint64_t a1)
{
  sub_1B4D177CC();
  if (v1 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKWorkoutActivityType(319);
      if (v3 <= 0x3F)
      {
        sub_1B49F03FC(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_1B49F03FC(319, &qword_1EB8AD240, &type metadata for FitnessPlusCatalogWorkout);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t LocationCoordinate.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D176CC();
  v4 = *(a1 + 8);
  v5 = type metadata accessor for LocationCoordinate(0);
  *(a2 + *(v5 + 20)) = v4;
  *(a2 + *(v5 + 24)) = *(a1 + 16);
  sub_1B499221C();
  v6 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  return sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

uint64_t LocationCoordinate.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
  return sub_1B4D17DAC();
}

int *LocationContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C47D98(a1 + v13[5], v5);
  v14 = *(v7 + 48);
  if (v14(v5, 1, v6) == 1)
  {
    *v9 = 0u;
    *(v9 + 1) = 0u;
    sub_1B4D17BBC();
    if (v14(v5, 1, v6) != 1)
    {
      sub_1B4C47E08(v5);
    }
  }

  else
  {
    sub_1B4C47ED0(v5, v9, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  sub_1B4D176CC();
  v15 = *(v9 + 2);
  *&v12[*(v10 + 20)] = *(v9 + 1);
  *&v12[*(v10 + 24)] = v15;
  sub_1B499221C();
  v16 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  sub_1B4C47E70(v9, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v17 = (a1 + v13[6]);
  v19 = *v17;
  v18 = v17[1];
  if (v18)
  {
    v38 = *v17;
    v39 = v18;

    v19 = sub_1B4D1828C();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = (a1 + v13[8]);
  v24 = *v22;
  v23 = v22[1];
  if (v23)
  {
    v38 = *v22;
    v39 = v23;

    v24 = sub_1B4D1828C();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = (a1 + v13[7]);
  v29 = *v27;
  v28 = v27[1];
  if (v28)
  {
    v38 = *v27;
    v39 = v28;

    v29 = sub_1B4D1828C();
    v31 = v30;
    sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  else
  {
    sub_1B4C47E70(a1, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    v31 = 0;
  }

  v32 = v37;
  sub_1B4C47ED0(v12, v37, type metadata accessor for LocationCoordinate);
  result = type metadata accessor for LocationContext(0);
  v34 = (v32 + result[5]);
  *v34 = v19;
  v34[1] = v21;
  v35 = (v32 + result[6]);
  *v35 = v24;
  v35[1] = v26;
  v36 = (v32 + result[7]);
  *v36 = v29;
  v36[1] = v31;
  return result;
}

uint64_t LocationContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C48354(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C477C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a2;
  sub_1B4C48354(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17DAC();
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v9 = v8[5];
  sub_1B4C47E08(a1 + v9);
  sub_1B4C47ED0(v7, a1 + v9, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  (*(v5 + 56))(a1 + v9, 0, 1, v4);
  result = type metadata accessor for LocationContext(0);
  v11 = result;
  v12 = (a2 + *(result + 20));
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v15 = (a1 + v8[6]);

    *v15 = v14;
    v15[1] = v13;
  }

  v16 = (a2 + *(v11 + 24));
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = (a1 + v8[8]);

    *v19 = v18;
    v19[1] = v17;
  }

  v20 = (a2 + *(v11 + 28));
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
    v23 = (a1 + v8[7]);

    *v23 = v22;
    v23[1] = v21;
  }

  return result;
}