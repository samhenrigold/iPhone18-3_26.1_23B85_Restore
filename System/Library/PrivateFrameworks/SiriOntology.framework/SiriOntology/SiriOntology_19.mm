uint64_t sub_1C070B840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserStarted.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C070BA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Siri_Nl_Core_Protocol_UserStarted.task.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070BF14(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1C070BFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserContinued.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserContinued.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserContinued.step.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserContinued.step.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070C8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAccepted.offerID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserAccepted.offerID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070CD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAccepted.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserAccepted.reference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070D21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserRejected.offerID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserRejected.offerID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070D67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserRejected.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserRejected.reference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070DB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserDisambiguated.disambiguationID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserDisambiguated.disambiguationID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070DFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserDisambiguated.optionQuery.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserDisambiguated.optionQuery.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070E4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserCancelled.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserCancelled.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070E90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserCancelled.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserCancelled.reference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070EDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToRepeat.systemDialogActID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserWantedToRepeat.systemDialogActID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070F254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToRepeat.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserWantedToRepeat.reference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C070F73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAcknowledged.systemDialogActID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserAcknowledged.systemDialogActID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C070FB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserAcknowledged.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserAcknowledged.reference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C0710084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToProceed.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserWantedToProceed.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C07104E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToProceed.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserWantedToProceed.reference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C07109CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToPause.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserWantedToPause.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0710E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToPause.reference.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserWantedToPause.reference.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C0711314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserResponded.systemDialogActID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserResponded.systemDialogActID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0711794@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0711830(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void (*Siri_Nl_Core_Protocol_DelegatedUserDialogAct.rewrittenUtterance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 32);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

BOOL sub_1C0711B90(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1C05149F8(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1C05145B4(v11, a1, a2);
  return v14;
}

uint64_t sub_1C0711CC8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1C0711DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 36);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_DelegatedUserDialogAct.asrUuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_DelegatedUserDialogAct.asrUuid.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0712268@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0712304(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C07123E4@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 20), v7, &qword_1EBE17400, &unk_1C0970CA0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v11;
  *(a2 + 2) = v11;
  *(a2 + 3) = v11;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v9 + 36);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C0712598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UserStatedTask.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UserStatedTask.task.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

void Siri_Nl_Core_Protocol_SystemDialogActGroup.systemDialogAct.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C05149F8(v1 + *(v6 + 24), v5, &qword_1EBE16DB0, &qword_1C0970478);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v9 = *(v7 + 20);
    if (qword_1EBE15780 != -1)
    {
      swift_once();
    }

    *(a1 + v9) = qword_1EBE1E5F8;
    v10 = v8(v5, 1, v7);

    if (v10 != 1)
    {
      sub_1C05145B4(v5, &qword_1EBE16DB0, &qword_1C0970478);
    }
  }

  else
  {
    sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }
}

void sub_1C0712C28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C05149F8(a1 + *(v7 + 24), v6, &qword_1EBE16DB0, &qword_1C0970478);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBE15780 != -1)
    {
      swift_once();
    }

    *(a2 + v10) = qword_1EBE1E5F8;
    v11 = v9(v6, 1, v8);

    if (v11 != 1)
    {
      sub_1C05145B4(v6, &qword_1EBE16DB0, &qword_1C0970478);
    }
  }

  else
  {
    sub_1C070BA2C(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }
}

uint64_t sub_1C0712DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE16DB0, &qword_1C0970478);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogActGroup.systemDialogAct.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DB0, &qword_1C0970478);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

double sub_1C0712FF8@<D0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;

  return result;
}

void (*Siri_Nl_Core_Protocol_SystemDialogActGroup.systemDialogAct.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DB0, &qword_1C0970478);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v17 = *(v9 + 20);
    if (qword_1EBE15780 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EBE1E5F8;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DB0, &qword_1C0970478);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }

  return sub_1C07132D8;
}

void sub_1C07132D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    sub_1C05145B4(v9 + v3, &qword_1EBE16DB0, &qword_1C0970478);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE16DB0, &qword_1C0970478);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.id.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17420, &qword_1C0993380);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0713818;
}

BOOL Siri_Nl_Core_Protocol_SystemDialogAct.hasID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE17420, &qword_1C0993380);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1C05145B4(v3, &qword_1EBE17420, &qword_1C0993380);
  return v7;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.systemDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  return sub_1C05149F8(v3 + v4, a1, &qword_1EBE1E800, &qword_1C09933D0);
}

uint64_t sub_1C0713A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  return sub_1C05149F8(v3 + v4, a2, &qword_1EBE1E800, &qword_1C09933D0);
}

uint64_t sub_1C0713AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1C05149F8(a1, &v12 - v5, &qword_1EBE1E800, &qword_1C09933D0);
  v7 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    swift_allocObject();
    v9 = sub_1C0739898(v9);
    *(a2 + v7) = v9;
  }

  v10 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v10, &qword_1EBE1E800, &qword_1C09933D0);
  return swift_endAccess();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.systemDialogAct.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C0739898(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C051F9D4(a1, v6 + v7, &qword_1EBE1E800, &qword_1C09933D0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.systemDialogAct.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 96) = v9;
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v10 + v11, v8, &qword_1EBE1E800, &qword_1C09933D0);
  return sub_1C0713DB8;
}

void sub_1C0713DB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C05149F8(*(v2 + 88), *(v2 + 80), &qword_1EBE1E800, &qword_1C09933D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 96);
      v8 = *(v2 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      swift_allocObject();
      v6 = sub_1C0739898(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 80);
    v9 = *(v2 + 88);
    v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v10, v6 + v11, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
    sub_1C05145B4(v9, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    v12 = *(v2 + 72);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v3);
    if ((v13 & 1) == 0)
    {
      v15 = *(v2 + 96);
      v16 = *(v2 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      swift_allocObject();
      v14 = sub_1C0739898(v14);
      *(v16 + v15) = v14;
    }

    v10 = *(v2 + 80);
    v9 = *(v2 + 88);
    v17 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v9, v14 + v17, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
  }

  free(v9);
  free(v10);

  free(v2);
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.prompted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1E800, &qword_1C09933D0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    }

    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.prompted.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
      return sub_1C07144C4;
    }

    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v18 = *(v9 + 20);
  v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
  v20 = *(v9 + 24);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v21 - 8) + 56))(v12 + v20, 1, 1, v21);
  return sub_1C07144C4;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.offered.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1E800, &qword_1C09933D0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    }

    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C07146E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1C0751E60(a1, &v14 - v11, a6);
  return a7(v12);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.offered.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 20);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    return sub_1C0714A78;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
  return sub_1C0714A78;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.gaveOptions.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1E800, &qword_1C09933D0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    }

    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Siri_Nl_Core_Protocol_SystemGaveOptions.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.gaveOptions.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *(*(type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v12;
  v13 = *(v1 + v12);
  v14 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v13 + v14, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v15;
  v16 = *(v15 - 8);
  *(v5 + 120) = v16;
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    return sub_1C0714F34;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  return sub_1C0714F34;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.informed.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1E800, &qword_1C09933D0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    }

    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.informed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
    return sub_1C0715468;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
  return sub_1C0715468;
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.reportedSuccess.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1E800, &qword_1C09933D0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    }

    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.reportedSuccess.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 20);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    v20 = *(v9 + 24);
    v21 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
    (*(*(v21 - 8) + 56))(v12 + v20, 1, 1, v21);
    return sub_1C0715A18;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    goto LABEL_15;
  }

  sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
  return sub_1C0715A18;
}

double Siri_Nl_Core_Protocol_SystemDialogAct.reportedFailure.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE1E800, &qword_1C09933D0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
      return result;
    }

    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  if (qword_1EBE157B8 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EBE1E690;

  return result;
}

uint64_t sub_1C0715C50(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C0739898(v12);
    *(v5 + v10) = v12;
  }

  sub_1C070BA2C(a1, v9, a2);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v14 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C051F9D4(v9, v12 + v14, &qword_1EBE1E800, &qword_1C09933D0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.reportedFailure.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    *(v5 + 96) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 96) = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v13;
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(v14 + v15, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  *(v5 + 112) = v16;
  v17 = *(v16 - 8);
  *(v5 + 120) = v17;
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
      return sub_1C07160B8;
    }

    sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v18 = *(v9 + 20);
  if (qword_1EBE157B8 != -1)
  {
    swift_once();
  }

  *(v12 + v18) = qword_1EBE1E690;

  return sub_1C07160B8;
}

void sub_1C07160FC(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = *(*a1 + 128);
  if (a2)
  {
    v9 = *(v7 + 72);
    sub_1C0751E60(*(v7 + 104), *(v7 + 96), a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v7 + 128);
      v13 = *(v7 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      swift_allocObject();
      v11 = sub_1C0739898(v11);
      *(v13 + v12) = v11;
    }

    v15 = *(v7 + 112);
    v14 = *(v7 + 120);
    v17 = *(v7 + 96);
    v16 = *(v7 + 104);
    v19 = *(v7 + 80);
    v18 = *(v7 + 88);
    sub_1C070BA2C(v17, v19, a3);
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(v19, 0, 1, v15);
    v20 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v19, v11 + v20, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
    sub_1C0751DA0(v16, a6);
  }

  else
  {
    v21 = *(v7 + 72);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v21 + v8);
    if ((v22 & 1) == 0)
    {
      v24 = *(v7 + 128);
      v25 = *(v7 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      swift_allocObject();
      v23 = sub_1C0739898(v23);
      *(v25 + v24) = v23;
    }

    v26 = *(v7 + 112);
    v27 = *(v7 + 120);
    v17 = *(v7 + 96);
    v16 = *(v7 + 104);
    v19 = *(v7 + 80);
    v18 = *(v7 + 88);
    sub_1C070BA2C(v16, v19, a3);
    swift_storeEnumTagMultiPayload();
    (*(v27 + 56))(v19, 0, 1, v26);
    v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
    swift_beginAccess();
    sub_1C051F9D4(v19, v23 + v28, &qword_1EBE1E800, &qword_1C09933D0);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v18);
  free(v19);

  free(v7);
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.renderedText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE16D68, &unk_1C09933C0);
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  sub_1C095D31C();
  result = (v10)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C07164D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE16D68, &unk_1C09933C0);
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  sub_1C095D31C();
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071665C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1C095D32C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    swift_allocObject();
    v13 = sub_1C0739898(v13);
    *(a2 + v11) = v13;
  }

  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v14, &qword_1EBE16D68, &unk_1C09933C0);
  return swift_endAccess();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogAct.renderedText.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    swift_allocObject();
    v9 = sub_1C0739898(v9);
    *(v2 + v7) = v9;
  }

  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  (*(v11 + 32))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v12, &qword_1EBE16D68, &unk_1C09933C0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemDialogAct.renderedText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = sub_1C095D32C();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0716C34;
}

void sub_1C0716C34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    (*(*(v2 + 104) + 16))(*(v2 + 112), *(v2 + 120), *(v2 + 96));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      swift_allocObject();
      v6 = sub_1C0739898(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
    swift_beginAccess();
    sub_1C051F9D4(v14, v6 + v15, &qword_1EBE16D68, &unk_1C09933C0);
    swift_endAccess();
    (*(v12 + 8))(v9, v11);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
      swift_allocObject();
      v18 = sub_1C0739898(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    (*(v22 + 32))(v14, v9, v21);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
    swift_beginAccess();
    sub_1C051F9D4(v14, v18 + v23, &qword_1EBE16D68, &unk_1C09933C0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Siri_Nl_Core_Protocol_SystemDialogAct.hasRenderedText.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE16D68, &unk_1C09933C0);
  v6 = sub_1C095D32C();
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1C05145B4(v3, &qword_1EBE16D68, &unk_1C09933C0);
  return v7;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_SystemDialogAct.clearRenderedText()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C0739898(v7);
    *(v1 + v5) = v7;
  }

  v8 = sub_1C095D32C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C051F9D4(v4, v7 + v9, &qword_1EBE16D68, &unk_1C09933C0);
  swift_endAccess();
}

uint64_t static Siri_Nl_Core_Protocol_SystemGaveOptions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C055C1E0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C07172B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemPrompted.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_SystemPrompted.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C071774C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemPrompted.target.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_SystemPrompted.target.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t Siri_Nl_Core_Protocol_SystemOffered.offeredAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  sub_1C05149F8(v1 + *(v6 + 20), v5, &qword_1EBE1E810, &qword_1C09933D8);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(v7 + 24);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE1E810, &qword_1C09933D8);
  }

  return result;
}

uint64_t sub_1C0717E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  sub_1C05149F8(a1 + *(v7 + 20), v6, &qword_1EBE1E810, &qword_1C09933D8);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E810, &qword_1C09933D8);
  }

  return result;
}

uint64_t sub_1C0717FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE1E810, &qword_1C09933D8);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemOffered.offeredAct.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E810, &qword_1C09933D8);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_SystemOffered.offeredAct.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E810, &qword_1C09933D8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E810, &qword_1C09933D8);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  return sub_1C0718470;
}

void sub_1C0718470(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E810, &qword_1C09933D8);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E810, &qword_1C09933D8);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C0718720@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 24), v7, &qword_1EBE17420, &qword_1C0993380);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C0718890@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 24), v8, &qword_1EBE17420, &qword_1C0993380);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C0718A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemInformed.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_SystemInformed.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C0718F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemReportedSuccess.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_SystemReportedSuccess.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t sub_1C07193D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_SystemReportedSuccess.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_SystemReportedSuccess.task.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C07198DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = *(v3 + *(a1(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  sub_1C05149F8(v10 + v11, v9, &qword_1EBE17420, &qword_1C0993380);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return sub_1C070BA2C(v9, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C0719A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t), uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v21 = *(a5(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a2 + v21);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a6(0);
    swift_allocObject();
    v23 = a7(v23);
    *(a2 + v21) = v23;
  }

  sub_1C070BA2C(v20, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  (*(v18 + 56))(v16, 0, 1, v17);
  v24 = *a8;
  swift_beginAccess();
  sub_1C051F9D4(v16, v23 + v24, &qword_1EBE17420, &qword_1C0993380);
  return swift_endAccess();
}

uint64_t sub_1C0719CCC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v5 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    swift_allocObject();
    v17 = a4(v17);
    *(v10 + v15) = v17;
  }

  sub_1C070BA2C(a1, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  v19 = *a5;
  swift_beginAccess();
  sub_1C051F9D4(v14, v17 + v19, &qword_1EBE17420, &qword_1C0993380);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemReportedFailure.taskID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17420, &qword_1C0993380);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C071A0BC;
}

void sub_1C071A0F0(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_1C0751E60(*(v8 + 120), *(v8 + 112), type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      a3(0);
      swift_allocObject();
      v12 = a4(v12);
      *(v14 + v13) = v12;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v17 = *(v8 + 96);
    v18 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    sub_1C070BA2C(v16, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a5;
    swift_beginAccess();
    sub_1C051F9D4(v20, v12 + v21, &qword_1EBE17420, &qword_1C0993380);
    swift_endAccess();
    sub_1C0751DA0(v15, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  else
  {
    v22 = *(v8 + 72);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v22 + v9);
    if ((v23 & 1) == 0)
    {
      v25 = *(v8 + 128);
      v26 = *(v8 + 72);
      a3(0);
      swift_allocObject();
      v24 = a4(v24);
      *(v26 + v25) = v24;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v27 = *(v8 + 96);
    v28 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v28 + 56))(v20, 0, 1, v27);
    v29 = *a5;
    swift_beginAccess();
    sub_1C051F9D4(v20, v24 + v29, &qword_1EBE17420, &qword_1C0993380);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v8);
}

BOOL Siri_Nl_Core_Protocol_SystemReportedFailure.hasTaskID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE17420, &qword_1C0993380);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1C05145B4(v3, &qword_1EBE17420, &qword_1C0993380);
  return v7;
}

uint64_t sub_1C071A4C4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v15 = a3(v15);
    *(v9 + v13) = v15;
  }

  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_1C051F9D4(v12, v15 + v17, &qword_1EBE17420, &qword_1C0993380);
  return swift_endAccess();
}

uint64_t sub_1C071A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    swift_allocObject();
    v17 = sub_1C07415E8(v17);
    *(a2 + v15) = v17;
  }

  sub_1C070BA2C(v14, v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  (*(v12 + 56))(v10, 0, 1, v11);
  v18 = *a5;
  swift_beginAccess();
  sub_1C051F9D4(v10, v17 + v18, &qword_1EBE17400, &unk_1C0970CA0);
  return swift_endAccess();
}

uint64_t sub_1C071A838(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C07415E8(v11);
    *(v4 + v9) = v11;
  }

  sub_1C070BA2C(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  v13 = *a2;
  swift_beginAccess();
  sub_1C051F9D4(v8, v11 + v13, &qword_1EBE17400, &unk_1C0970CA0);
  return swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_SystemReportedFailure.reason.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v20 = *(v9 + 36);
    v21 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C071AC4C;
}

void sub_1C071AC58(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_1C0751E60(*(v4 + 120), *(v4 + 112), type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
      swift_allocObject();
      v8 = sub_1C07415E8(v8);
      *(v10 + v9) = v8;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v13 = *(v4 + 96);
    v14 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v14 + 56))(v16, 0, 1, v13);
    v17 = *a3;
    swift_beginAccess();
    sub_1C051F9D4(v16, v8 + v17, &qword_1EBE17400, &unk_1C0970CA0);
    swift_endAccess();
    sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  else
  {
    v18 = *(v4 + 72);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v4 + 128);
      v22 = *(v4 + 72);
      type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
      swift_allocObject();
      v20 = sub_1C07415E8(v20);
      *(v22 + v21) = v20;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v23 = *(v4 + 96);
    v24 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    sub_1C070BA2C(v11, v16, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v24 + 56))(v16, 0, 1, v23);
    v25 = *a3;
    swift_beginAccess();
    sub_1C051F9D4(v16, v20 + v25, &qword_1EBE17400, &unk_1C0970CA0);
    swift_endAccess();
  }

  free(v11);
  free(v12);
  free(v15);
  free(v16);

  free(v4);
}

BOOL Siri_Nl_Core_Protocol_SystemReportedFailure.hasReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE17400, &unk_1C0970CA0);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1C05145B4(v3, &qword_1EBE17400, &unk_1C0970CA0);
  return v7;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_SystemReportedFailure.clearReason()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C07415E8(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C051F9D4(v4, v7 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
}

uint64_t sub_1C071B11C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = *(v2 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE17400, &unk_1C0970CA0);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v12 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v12;
  *(a2 + 2) = v12;
  *(a2 + 3) = v12;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v10 + 36);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

void (*Siri_Nl_Core_Protocol_SystemReportedFailure.task.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v20 = *(v9 + 36);
    v21 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C071B59C;
}

BOOL Siri_Nl_Core_Protocol_SystemReportedFailure.hasTask.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE17400, &unk_1C0970CA0);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1C05145B4(v3, &qword_1EBE17400, &unk_1C0970CA0);
  return v7;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_SystemReportedFailure.clearTask()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C07415E8(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C051F9D4(v4, v7 + v9, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
}

void (*Siri_Nl_Core_Protocol_RRGroupIdentifier.groupID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

void sub_1C071BA68(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 12);
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    (*(v11 + 16))((*a1)[4], v9, v10);
    sub_1C05145B4(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v8, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    sub_1C05145B4(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v9, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
  }

  free(v9);
  free(v8);
  free(v12);

  free(v6);
}

uint64_t Siri_Nl_Core_Protocol_RRGroupIdentifier.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 24);
  v4 = sub_1C095D32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  sub_1C05149F8(v1 + *(v6 + 20), v5, &qword_1EBE16D68, &unk_1C09933C0);
  v7 = sub_1C095D32C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1C095D31C();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  sub_1C05149F8(a1 + *(v7 + 20), v6, &qword_1EBE16D68, &unk_1C09933C0);
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_1C095D31C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071C048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE16D68, &unk_1C09933C0);
  v4 = sub_1C095D32C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_RRAnnotation.key.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C071C460;
}

uint64_t sub_1C071C504@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 24), v7, &qword_1EBE16D68, &unk_1C09933C0);
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D31C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071C670@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 24), v8, &qword_1EBE16D68, &unk_1C09933C0);
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v8, v10);
  }

  sub_1C095D31C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *(a5(0) + 24);
  sub_1C05145B4(a2 + v12, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v9 + 32))(a2 + v12, v11, v8);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t sub_1C071C934(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  sub_1C05145B4(v2 + v4, &qword_1EBE16D68, &unk_1C09933C0);
  v5 = sub_1C095D32C();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Siri_Nl_Core_Protocol_RRAnnotation.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  v4 = *(v3 + 20);
  v5 = sub_1C095D32C();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(v3 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C071CD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.entity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_EntityCandidate.entity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

void (*Siri_Nl_Core_Protocol_EntityCandidate.score.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D2EC();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E830, &qword_1C09933E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D2DC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E830, &qword_1C09933E0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F90;
}

uint64_t sub_1C071D4D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 32), v7, &qword_1EBE16D68, &unk_1C09933C0);
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D31C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071D644@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 32), v8, &qword_1EBE16D68, &unk_1C09933C0);
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v8, v10);
  }

  sub_1C095D31C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *(a5(0) + 32);
  sub_1C05145B4(a2 + v12, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v9 + 32))(a2 + v12, v11, v8);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t sub_1C071D908(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  sub_1C05145B4(v2 + v4, &qword_1EBE16D68, &unk_1C09933C0);
  v5 = sub_1C095D32C();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Siri_Nl_Core_Protocol_EntityCandidate.entityID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 32);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.appBundleID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(v1 + *(v6 + 36), v5, &qword_1EBE16D68, &unk_1C09933C0);
  v7 = sub_1C095D32C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1C095D31C();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071DDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(a1 + *(v7 + 36), v6, &qword_1EBE16D68, &unk_1C09933C0);
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_1C095D31C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C071DF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 36);
  sub_1C05145B4(a2 + v8, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.appBundleID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE16D68, &unk_1C09933C0);
  v4 = sub_1C095D32C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_EntityCandidate.appBundleID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.groupID.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(v1 + *(v6 + 40), v5, &qword_1EBE1E838, &qword_1C09933E8);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  *a1 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = *(v7 + 24);
  v10 = sub_1C095D32C();
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE1E838, &qword_1C09933E8);
  }

  return result;
}

uint64_t sub_1C071E564@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C05149F8(a1 + *(v7 + 40), v6, &qword_1EBE1E838, &qword_1C09933E8);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  *a2 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(v8 + 24);
  v11 = sub_1C095D32C();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E838, &qword_1C09933E8);
  }

  return result;
}

uint64_t sub_1C071E708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 40);
  sub_1C05145B4(a2 + v8, &qword_1EBE1E838, &qword_1C09933E8);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.groupID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 40);
  sub_1C05145B4(v1 + v3, &qword_1EBE1E838, &qword_1C09933E8);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_EntityCandidate.groupID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 40);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E838, &qword_1C09933E8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v17 = *(v9 + 24);
    v18 = sub_1C095D32C();
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E838, &qword_1C09933E8);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  return sub_1C071EB4C;
}

void sub_1C071EB4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    sub_1C05145B4(v9 + v3, &qword_1EBE1E838, &qword_1C09933E8);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE1E838, &qword_1C09933E8);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1C071ECF0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1C05149F8(v4 + *(v12 + 40), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1C05145B4(v11, a1, a2);
  return v14;
}

uint64_t sub_1C071EE28(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = v2[6];
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = sub_1C095D2EC();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = sub_1C095D32C();
  v9 = *(*(v8 - 8) + 56);
  v9(&a1[v7], 1, 1, v8);
  v9(&a1[v2[9]], 1, 1, v8);
  v10 = v2[10];
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(&a1[v10], 1, 1, v11);
}

uint64_t sub_1C071F118@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 20), v7, &qword_1EBE17420, &qword_1C0993380);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C071F288@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 20), v8, &qword_1EBE17420, &qword_1C0993380);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C071F3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 20);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_Task.taskID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_Task.taskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C071F808;
}

void sub_1C071F808(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C071FA00@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v11;
  *(a2 + 2) = v11;
  *(a2 + 3) = v11;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v9 + 36);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C071FBB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v12 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 1) = v12;
  *(a3 + 2) = v12;
  *(a3 + 3) = v12;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v13 = *(v10 + 36);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  (*(*(v14 - 8) + 56))(&a3[v13], 1, 1, v14);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C071FD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_Task.task.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_Task.task.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C0757EF8;
}

uint64_t sub_1C072024C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 28), v7, &qword_1EBE1E830, &qword_1C09933E0);
  v9 = sub_1C095D2EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D2DC();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C07203B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 28), v8, &qword_1EBE1E830, &qword_1C09933E0);
  v10 = sub_1C095D2EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v8, v10);
  }

  sub_1C095D2DC();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C0720528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D2EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *(a5(0) + 28);
  sub_1C05145B4(a2 + v12, &qword_1EBE1E830, &qword_1C09933E0);
  (*(v9 + 32))(a2 + v12, v11, v8);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t sub_1C072067C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  sub_1C05145B4(v2 + v4, &qword_1EBE1E830, &qword_1C09933E0);
  v5 = sub_1C095D2EC();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Siri_Nl_Core_Protocol_Task.score.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D2EC();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E830, &qword_1C09933E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D2DC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E830, &qword_1C09933E0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0720964;
}

BOOL sub_1C0720990(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  sub_1C05149F8(v1 + *(v6 + 28), v5, &qword_1EBE1E830, &qword_1C09933E0);
  v7 = sub_1C095D2EC();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C05145B4(v5, &qword_1EBE1E830, &qword_1C09933E0);
  return v8;
}

uint64_t sub_1C0720AAC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 28);
  sub_1C05145B4(v1 + v2, &qword_1EBE1E830, &qword_1C09933E0);
  v3 = sub_1C095D2EC();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t Siri_Nl_Core_Protocol_Task.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  v4 = v3[5];
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = v3[7];
  v9 = sub_1C095D2EC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

void (*Siri_Nl_Core_Protocol_RewrittenUtterance.rewrittenUtterance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_RewrittenUtterance.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 24);
  v4 = sub_1C095D32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C0721078@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 36), v7, &qword_1EBE17420, &qword_1C0993380);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C070BA2C(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C07211E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 36), v8, &qword_1EBE17420, &qword_1C0993380);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1C070BA2C(v8, a3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C072135C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0) + 36);
  sub_1C05145B4(a2 + v8, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_AsrHypothesis.id.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  return sub_1C0757EF4;
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.rewrittenUtterances.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1C07218BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0721958(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = 0;
  *(a1 + 3) = v2;
  *(a1 + 4) = v2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v3 + 36);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.ipaPhoneSequence.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.ipaPhoneSequence.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0) + 60);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0) + 60);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Siri_Nl_Core_Protocol_Span.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_Span.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_Span.input.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_Span.input.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_Span.usoGraph.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  sub_1C05149F8(v1 + *(v6 + 44), v5, &qword_1EBE17400, &unk_1C0970CA0);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C070BA2C(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v9;
  *(a1 + 2) = v9;
  *(a1 + 3) = v9;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(v7 + 36);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C07221B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  sub_1C05149F8(a1 + *(v7 + 44), v6, &qword_1EBE17400, &unk_1C0970CA0);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C070BA2C(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v10;
  *(a2 + 2) = v10;
  *(a2 + 3) = v10;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v8 + 36);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17400, &unk_1C0970CA0);
  }

  return result;
}

uint64_t sub_1C0722368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0751E60(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  sub_1C05145B4(a2 + v8, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_Span.usoGraph.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  sub_1C05145B4(v1 + v3, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C070BA2C(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_Span.usoGraph.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    *(v14 + 2) = v17;
    *(v14 + 3) = v17;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C070BA2C(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return sub_1C07227B8;
}

void sub_1C07227B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C0751E60((*a1)[5], v4, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C05145B4(v9 + v3, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C070BA2C(v4, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0751DA0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C070BA2C(v5, v9 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Siri_Nl_Core_Protocol_Span.hasUsoGraph.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  sub_1C05149F8(v0 + *(v4 + 44), v3, &qword_1EBE17400, &unk_1C0970CA0);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17400, &unk_1C0970CA0);
  return v6;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_Span.clearUsoGraph()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  sub_1C05145B4(v0 + v1, &qword_1EBE17400, &unk_1C0970CA0);
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_Span.matcherNames.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1C0722B3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0722BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t Siri_Nl_Core_Protocol_Span.MatcherName.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C0722CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C0752320(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

uint64_t Siri_Nl_Core_Protocol_Span.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 44);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C0722E78()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E368);
  __swift_project_value_buffer(v0, qword_1EBE1E368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ALGORITHM_TYPE_UNSET";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALGORITHM_TYPE_RULE";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ALGORITHM_TYPE_MODEL";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07230D0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E380);
  __swift_project_value_buffer(v0, qword_1EBE1E380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C09787B0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "PARSER_IDENTIFIER_UNSET";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69D26E0];
  v6 = sub_1C095D6BC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "PARSER_IDENTIFIER_OVERRIDES";
  *(v8 + 8) = 27;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PARSER_IDENTIFIER_SNLC";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PARSER_IDENTIFIER_NLV4";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PARSER_IDENTIFIER_CATI";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PARSER_IDENTIFIER_SHORTCUTS_EXACT";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v7();
  return sub_1C095D6CC();
}

uint64_t sub_1C07233F0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E398);
  __swift_project_value_buffer(v0, qword_1EBE1E398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0973530;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "system_dialog_act_group";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E8];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "salient_entities";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "active_tasks";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "executed_tasks";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "asr_outputs";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "turn_context";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "locale";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "tap_to_edit";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "start_timestamp";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C072379C()
{
  type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs) = v3;
  v4 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  result = (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v7 = (v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp) = 0;
  qword_1EBE1E3B0 = v0;
  return result;
}

uint64_t sub_1C07238CC()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup, &qword_1EBE1E770, &qword_1C0993388);

  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext, &qword_1EBE1E7A0, &qword_1C0993390);

  return swift_deallocClassInstance();
}

uint64_t Siri_Nl_Core_Protocol_TurnInput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Siri_Nl_Core_Protocol_TurnInput._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C07518CC(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_1C0723A68(v10, a1, a2, a3);
}

uint64_t sub_1C0723A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C0723DC8(a2, a1, a3, a4);
        }

        else
        {
          sub_1C0723EA4(a2, a1, a3, a4);
        }
      }

      else if (result == 1)
      {
        sub_1C0723C10(a2, a1, a3, a4);
      }

      else if (result == 2)
      {
        sub_1C0723CEC(a2, a1, a3, a4);
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1C0723F80(a2, a1, a3, a4);
      }

      else
      {
        sub_1C072405C(a2, a1, a3, a4);
      }
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_1C0724138(a2, a1, a3, a4);
          break;
        case 8:
          sub_1C07241C4(a2, a1, a3, a4);
          break;
        case 9:
          sub_1C0724250(a2, a1, a3, a4);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C0723C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0723CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, &protocol conformance descriptor for Siri_Nl_Core_Protocol_EntityCandidate);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0723DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0723EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0723F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrHypothesis);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C072405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnContext);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0724138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C07241C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C0724250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D53C();
  return swift_endAccess();
}

uint64_t sub_1C072431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - v6;
  v38 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  v39 = a1;
  sub_1C05149F8(a1 + v15, v10, &qword_1EBE1E770, &qword_1C0993388);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE1E770, &qword_1C0993388);
    v16 = v40;
  }

  else
  {
    sub_1C070BA2C(v10, v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    v17 = v40;
    sub_1C095D6AC();
    v16 = v17;
    result = sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    if (v17)
    {
      return result;
    }
  }

  v19 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  v20 = v39;
  swift_beginAccess();
  if (!*(*(v20 + v19) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0), sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, &protocol conformance descriptor for Siri_Nl_Core_Protocol_EntityCandidate), , sub_1C095D69C(), result = , !v16))
  {
    v21 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
    swift_beginAccess();
    if (!*(*(v20 + v21) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task), , sub_1C095D69C(), result = , !v16))
    {
      v22 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
      swift_beginAccess();
      if (!*(*(v20 + v22) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task), , sub_1C095D69C(), result = , !v16))
      {
        v23 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
        swift_beginAccess();
        if (!*(*(v20 + v23) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0), sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrHypothesis), , sub_1C095D69C(), result = , !v16))
        {
          v24 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
          swift_beginAccess();
          v25 = v37;
          sub_1C05149F8(v20 + v24, v37, &qword_1EBE1E7A0, &qword_1C0993390);
          if ((*(v36 + 48))(v25, 1, v38) == 1)
          {
            sub_1C05145B4(v25, &qword_1EBE1E7A0, &qword_1C0993390);
          }

          else
          {
            v26 = v25;
            v27 = v35;
            sub_1C070BA2C(v26, v35, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
            sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnContext);
            sub_1C095D6AC();
            result = sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
            if (v16)
            {
              return result;
            }
          }

          v28 = (v20 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
          swift_beginAccess();
          v29 = *v28;
          v30 = v28[1];
          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v29 & 0xFFFFFFFFFFFFLL;
          }

          if (!v31 || (, sub_1C095D66C(), result = , !v16))
          {
            v32 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
            swift_beginAccess();
            if (*(v20 + v32) != 1 || (result = sub_1C095D5FC(), !v16))
            {
              v33 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
              swift_beginAccess();
              result = *(v20 + v33);
              if (result)
              {
                return sub_1C095D68C();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1C0724B48(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F298, &qword_1C0997920);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v72 - v9;
  v81 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v10 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A0, &unk_1C0997928);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = (&v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72 - v19;
  v21 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(a1 + v21, v20, &qword_1EBE1E770, &qword_1C0993388);
  v22 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  v23 = v82;
  swift_beginAccess();
  v24 = *(v13 + 56);
  sub_1C05149F8(v20, v15, &qword_1EBE1E770, &qword_1C0993388);
  v25 = v81;
  sub_1C05149F8(v23 + v22, &v15[v24], &qword_1EBE1E770, &qword_1C0993388);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v25) == 1)
  {

    sub_1C05145B4(v20, &qword_1EBE1E770, &qword_1C0993388);
    if (v26(&v15[v24], 1, v25) == 1)
    {
      sub_1C05145B4(v15, &qword_1EBE1E770, &qword_1C0993388);
      goto LABEL_8;
    }

LABEL_6:
    sub_1C05145B4(v15, &qword_1EBE1F2A0, &unk_1C0997928);
    goto LABEL_23;
  }

  v27 = v80;
  sub_1C05149F8(v15, v80, &qword_1EBE1E770, &qword_1C0993388);
  if (v26(&v15[v24], 1, v25) == 1)
  {

    sub_1C05145B4(v20, &qword_1EBE1E770, &qword_1C0993388);
    sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    goto LABEL_6;
  }

  v28 = v79;
  sub_1C070BA2C(&v15[v24], v79, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  v29 = _s12SiriOntology0A38_Nl_Core_Protocol_SystemDialogActGroupV2eeoiySbAC_ACtFZ_0(v27, v28);
  sub_1C0751DA0(v28, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  sub_1C05145B4(v20, &qword_1EBE1E770, &qword_1C0993388);
  sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  sub_1C05145B4(v15, &qword_1EBE1E770, &qword_1C0993388);
  if ((v29 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v30 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  swift_beginAccess();
  v33 = *(v23 + v32);

  v34 = sub_1C055F548(v31, v33);

  if ((v34 & 1) == 0)
  {
    goto LABEL_23;
  }

  v35 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  swift_beginAccess();
  v38 = *(v23 + v37);

  v39 = sub_1C055F4F4(v36, v38);

  if ((v39 & 1) == 0)
  {
    goto LABEL_23;
  }

  v40 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  swift_beginAccess();
  v43 = *(v23 + v42);

  v44 = sub_1C055F4F4(v41, v43);

  if ((v44 & 1) == 0)
  {
    goto LABEL_23;
  }

  v45 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  swift_beginAccess();
  v48 = *(v23 + v47);

  v49 = sub_1C05641DC(v46, v48);

  if ((v49 & 1) == 0)
  {
    goto LABEL_23;
  }

  v50 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  v51 = v75;
  sub_1C05149F8(a1 + v50, v75, &qword_1EBE1E7A0, &qword_1C0993390);
  v52 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  v53 = *(v74 + 48);
  v54 = v78;
  sub_1C05149F8(v51, v78, &qword_1EBE1E7A0, &qword_1C0993390);
  sub_1C05149F8(v23 + v52, v54 + v53, &qword_1EBE1E7A0, &qword_1C0993390);
  v55 = v77;
  v56 = *(v76 + 48);
  if (v56(v54, 1, v77) != 1)
  {
    v57 = v73;
    sub_1C05149F8(v54, v73, &qword_1EBE1E7A0, &qword_1C0993390);
    if (v56(v54 + v53, 1, v55) != 1)
    {
      v58 = v54 + v53;
      v59 = v72;
      sub_1C070BA2C(v58, v72, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
      v60 = _s12SiriOntology0A29_Nl_Core_Protocol_TurnContextV2eeoiySbAC_ACtFZ_0(v57, v59);
      sub_1C0751DA0(v59, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
      sub_1C05145B4(v51, &qword_1EBE1E7A0, &qword_1C0993390);
      sub_1C0751DA0(v57, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
      sub_1C05145B4(v54, &qword_1EBE1E7A0, &qword_1C0993390);
      if ((v60 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    sub_1C05145B4(v51, &qword_1EBE1E7A0, &qword_1C0993390);
    sub_1C0751DA0(v57, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext);
LABEL_17:
    sub_1C05145B4(v54, &qword_1EBE1F298, &qword_1C0997920);
    goto LABEL_23;
  }

  sub_1C05145B4(v51, &qword_1EBE1E7A0, &qword_1C0993390);
  if (v56(v54 + v53, 1, v55) != 1)
  {
    goto LABEL_17;
  }

  sub_1C05145B4(v54, &qword_1EBE1E7A0, &qword_1C0993390);
LABEL_19:
  v61 = (a1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v62 = *v61;
  v63 = v61[1];
  v64 = (v23 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  if (v62 == *v64 && v63 == v64[1] || (sub_1C095DF3C() & 1) != 0)
  {
    v65 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
    swift_beginAccess();
    LODWORD(v65) = *(a1 + v65);
    v66 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
    swift_beginAccess();
    if (v65 == *(v23 + v66))
    {
      v68 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
      swift_beginAccess();
      v69 = *(a1 + v68);

      v70 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
      swift_beginAccess();
      v71 = *(v23 + v70);

      return v69 == v71;
    }
  }

LABEL_23:

  return 0;
}

uint64_t sub_1C0725640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F290, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnInput);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07256E0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EAF0, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnInput);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C072574C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EAF0, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnInput);

  return sub_1C095D5AC();
}

uint64_t sub_1C0725828()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E3B8);
  __swift_project_value_buffer(v0, qword_1EBE1E3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nl_context";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "legacy_nl_context";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0725A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_NLContext);
  return sub_1C095D55C();
}

uint64_t sub_1C0725B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_LegacyNLContext);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_TurnContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D0, &qword_1C09933A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7C8, &qword_1C0993398);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE1E7C8, &qword_1C0993398);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE1E7C8, &qword_1C0993398);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_NLContext);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE1E7D0, &qword_1C09933A0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E7D0, &qword_1C09933A0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_LegacyNLContext);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C07260A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F288, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnContext);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0726140(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnContext);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07261AC(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EB08, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_TurnContext);

  return sub_1C095D5AC();
}

uint64_t sub_1C0726248()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E3D0);
  __swift_project_value_buffer(v0, qword_1EBE1E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "system_dialog_act_group";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "active_tasks";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "executed_tasks";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "salient_entities";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "system_dialog_acts";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_NLContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C072671C(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
LABEL_4:
          v11 = v4;
          type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
          sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task);
LABEL_5:
          v4 = v11;
          sub_1C095D54C();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
            v11 = v4;
            type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
            sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, &protocol conformance descriptor for Siri_Nl_Core_Protocol_EntityCandidate);
            goto LABEL_5;
          case 5:
            v11 = v4;
            type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
            sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogAct);
            goto LABEL_5;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C072671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_NLContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v16 = v3;
  sub_1C05149F8(v3 + *(v15 + 36), v7, &qword_1EBE1E770, &qword_1C0993388);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E770, &qword_1C0993388);
  }

  else
  {
    sub_1C070BA2C(v7, v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    if (v4)
    {
      return result;
    }
  }

  v13 = v16;
  if (!*(*v16 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task), result = sub_1C095D69C(), !v4))
  {
    if (!*(v13[1] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_Task(0), sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task), result = sub_1C095D69C(), !v4))
    {
      if (!*(v13[2] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0), sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, &protocol conformance descriptor for Siri_Nl_Core_Protocol_EntityCandidate), result = sub_1C095D69C(), !v4))
      {
        if (!*(v13[3] + 16))
        {
          return sub_1C095D36C();
        }

        type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
        sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogAct);
        result = sub_1C095D69C();
        if (!v4)
        {
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0726C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C0726D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F280, type metadata accessor for Siri_Nl_Core_Protocol_NLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_NLContext);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0726DD4(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_NLContext);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0726E40(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E850, type metadata accessor for Siri_Nl_Core_Protocol_NLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_NLContext);

  return sub_1C095D5AC();
}

uint64_t sub_1C0726EDC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E3E8);
  __swift_project_value_buffer(v0, qword_1EBE1E3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C09787B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dictation_prompt";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strict_prompt";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previous_domain_name";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "listen_after_speaking";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rendered_texts";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "legacy_context_source";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_4;
          case 5:
            sub_1C095D32C();
            sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
            sub_1C095D54C();
            break;
          case 7:
            sub_1C07521D0(7, v5, v6);
            sub_1C095D45C();
            break;
        }
      }

      else
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_1C095D44C();
          goto LABEL_5;
        }

        if (result == 3)
        {
          sub_1C095D50C();
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_LegacyNLContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C095D5FC(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = sub_1C095D5FC(), !v4))
    {
      result = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_1C095D66C(), !v4))
      {
        if (*(v3 + 24) != 1 || (result = sub_1C095D5FC(), !v4))
        {
          if (*(*(v3 + 32) + 16))
          {
            sub_1C095D32C();
            sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
            result = sub_1C095D69C();
            if (v4)
            {
              return result;
            }

            if (!*(v3 + 40))
            {
              goto LABEL_17;
            }
          }

          else if (!*(v3 + 40))
          {
LABEL_17:
            type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
            return sub_1C095D36C();
          }

          sub_1C07521D0(result, v6, a3);
          result = sub_1C095D60C();
          if (v4)
          {
            return result;
          }

          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0727584@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C0727638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F278, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_LegacyNLContext);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07276D8(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_LegacyNLContext);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0727744(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E848, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext, &protocol conformance descriptor for Siri_Nl_Core_Protocol_LegacyNLContext);

  return sub_1C095D5AC();
}

uint64_t sub_1C07277C4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E400);
  __swift_project_value_buffer(v0, qword_1EBE1E400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LEGACYCONTEXTSOURCE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LEGACYCONTEXTSOURCE_MODALITY";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LEGACYCONTEXTSOURCE_POMMES";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LEGACYCONTEXTSOURCE_PROTO_PROMPT_CONTEXT";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0727A6C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E418);
  __swift_project_value_buffer(v0, qword_1EBE1E418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "repetition_type";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_RepetitionResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D52C();
      }

      else if (result == 2)
      {
        sub_1C0752224(2, v5, v6);
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_RepetitionResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  if (!result || (result = sub_1C095D67C(), !v4))
  {
    if (!*(v3 + 1) || (sub_1C0752224(result, a2, a3), result = sub_1C095D60C(), !v4))
    {
      type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C0727E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F270, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RepetitionResult);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0727F20(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RepetitionResult);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0727F8C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RepetitionResult);

  return sub_1C095D5AC();
}

uint64_t sub_1C072800C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E430);
  __swift_project_value_buffer(v0, qword_1EBE1E430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REPETITION_TYPE_NOT_AVAILABLE";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REPETITION_TYPE_NO";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REPETITION_TYPE_PARTIAL";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REPETITION_TYPE_FULL";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07282B4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E448);
  __swift_project_value_buffer(v0, qword_1EBE1E448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "algorithm";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parser_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_Parser.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v7 = v3;
        sub_1C07522CC(2, v5, v6);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1C095D41C();
    }

    v7 = v3;
    sub_1C0752278(1, v5, v6);
LABEL_5:
    v3 = v7;
    sub_1C095D45C();
    goto LABEL_6;
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_Parser.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C0752278(result, a2, a3), result = sub_1C095D60C(), !v4))
  {
    if (!v3[2] || (sub_1C07522CC(result, a2, a3), result = sub_1C095D60C(), !v4))
    {
      type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C07286BC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C072873C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F268, type metadata accessor for Siri_Nl_Core_Protocol_Parser, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Parser);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07287DC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Parser);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0728848(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Parser);

  return sub_1C095D5AC();
}

uint64_t sub_1C07288E4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E460);
  __swift_project_value_buffer(v0, qword_1EBE1E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C09787B0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user_dialog_acts";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "probability";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parser_id";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "repetition_result";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parser";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UserParse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1C095D50C();
            break;
          case 5:
            sub_1C0728E18(a1, v5, a2, a3);
            break;
          case 6:
            sub_1C0728ECC(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1C0728D64(a1, v5, a2, a3);
            break;
          case 2:
            type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
            sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);
            sub_1C095D54C();
            break;
          case 3:
            sub_1C095D4EC();
            break;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0728D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0728E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RepetitionResult);
  return sub_1C095D55C();
}

uint64_t sub_1C0728ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Parser);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserParse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v42 = a3;
  v40 = a1;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v30 - v7;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v30 - v11;
  v39 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v35 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  sub_1C05149F8(v5 + v37[8], v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v4)
    {
      return result;
    }
  }

  v21 = v39;
  if (*(*v5 + 16))
  {
    type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
    sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);
    result = sub_1C095D69C();
    v22 = v38;
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v22 = v38;
  }

  v23 = v36;
  if (*(v5 + 8) == 0.0 || (result = sub_1C095D65C(), !v4))
  {
    v24 = *(v5 + 24);
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = *(v5 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v25 || (result = sub_1C095D66C(), !v4))
    {
      sub_1C05149F8(v5 + v37[9], v22, &qword_1EBE1E7D8, &qword_1C09933A8);
      if ((*(v35 + 48))(v22, 1, v21) == 1)
      {
        sub_1C05145B4(v22, &qword_1EBE1E7D8, &qword_1C09933A8);
      }

      else
      {
        v26 = v22;
        v27 = v32;
        sub_1C070BA2C(v26, v32, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
        sub_1C0752188(&qword_1EBE1E8D8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RepetitionResult);
        sub_1C095D6AC();
        result = sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
        if (v4)
        {
          return result;
        }
      }

      sub_1C05149F8(v5 + v37[10], v23, &qword_1EBE1E7E0, &qword_1C09933B0);
      if ((*(v33 + 48))(v23, 1, v34) == 1)
      {
        sub_1C05145B4(v23, &qword_1EBE1E7E0, &qword_1C09933B0);
      }

      else
      {
        v28 = v23;
        v29 = v31;
        sub_1C070BA2C(v28, v31, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
        sub_1C0752188(&qword_1EBE1E8D0, type metadata accessor for Siri_Nl_Core_Protocol_Parser, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Parser);
        sub_1C095D6AC();
        result = sub_1C0751DA0(v29, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
        if (v4)
        {
          return result;
        }
      }

      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C07296C4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = a1[8];
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[9];
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[10];
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t sub_1C0729834(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F260, type metadata accessor for Siri_Nl_Core_Protocol_UserParse, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserParse);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07298D4(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EB60, type metadata accessor for Siri_Nl_Core_Protocol_UserParse, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserParse);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0729940(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EB60, type metadata accessor for Siri_Nl_Core_Protocol_UserParse, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserParse);

  return sub_1C095D5AC();
}

uint64_t sub_1C07299DC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E478);
  __swift_project_value_buffer(v0, qword_1EBE1E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C0993340;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "started";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "continued";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "accepted";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rejected";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "disambiguated";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "cancelled";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "wanted_to_repeat";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "acknowledged";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "wanted_to_proceed";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "wanted_to_pause";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "responded";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "delegated";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "user_stated_task";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 101;
  *v32 = "alignment";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C072A0F0(v5, a1, a2, a3);
        break;
      case 2:
        sub_1C072A6A0(v5, a1, a2, a3);
        break;
      case 3:
        sub_1C072AC5C(v5, a1, a2, a3);
        break;
      case 4:
        sub_1C072B218(v5, a1, a2, a3);
        break;
      case 5:
        sub_1C072B7D4(v5, a1, a2, a3);
        break;
      case 6:
        sub_1C072BD90(v5, a1, a2, a3);
        break;
      case 7:
        sub_1C072C34C(v5, a1, a2, a3);
        break;
      case 8:
        sub_1C072C908(v5, a1, a2, a3);
        break;
      case 9:
        sub_1C072CEC4(v5, a1, a2, a3);
        break;
      case 10:
        sub_1C072D480(v5, a1, a2, a3);
        break;
      case 11:
        sub_1C072DA3C(v5, a1, a2, a3);
        break;
      case 12:
        sub_1C072DFF8(v5, a1, a2, a3);
        break;
      case 13:
        sub_1C072E5B4(v5, a1, a2, a3);
        break;
      case 101:
        sub_1C072EB70(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C072A0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F308, &qword_1C0997998);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }

    else
    {
      sub_1C05145B4(v24, &qword_1EBE1F308, &qword_1C0997998);
      v31 = v39;
      sub_1C070BA2C(v17, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStarted);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F308, &qword_1C0997998);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F308, &qword_1C0997998);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F308, &qword_1C0997998);
    return sub_1C05145B4(v32, &qword_1EBE1F308, &qword_1C0997998);
  }

  else
  {
    v35 = v40;
    sub_1C070BA2C(v32, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F308, &qword_1C0997998);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F310, &qword_1C09979A0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v24, &qword_1EBE1F310, &qword_1C09979A0);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserContinued);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F310, &qword_1C09979A0);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F310, &qword_1C09979A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F310, &qword_1C09979A0);
    return sub_1C05145B4(v32, &qword_1EBE1F310, &qword_1C09979A0);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F310, &qword_1C09979A0);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072AC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F318, &qword_1C09979A8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C05145B4(v24, &qword_1EBE1F318, &qword_1C09979A8);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAccepted);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F318, &qword_1C09979A8);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F318, &qword_1C09979A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F318, &qword_1C09979A8);
    return sub_1C05145B4(v32, &qword_1EBE1F318, &qword_1C09979A8);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F318, &qword_1C09979A8);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}