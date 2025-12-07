uint64_t sub_1820B9114()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1820CAADC;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820B9238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = _s15ConnectionEventOMa(255, *(*a2 + 80), a5, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v6 = sub_182AD3698();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_182AD3728();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820B93C0, 0, 0);
}

uint64_t sub_1820B93C0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v8 = *(v0 + 24);
  (*(*(v0 + 64) + 104))(*(v0 + 72), *MEMORY[0x1E69E8790], *(v0 + 56));
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_182AD3738();

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v8;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1820B9538;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820B9538()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1820B96DC;
  }

  else
  {

    v2 = sub_1820B9654;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820B9654()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1820B96DC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1820B9778(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 80);
  v44 = a3;
  _s15ConnectionEventOMa(255, v6, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD36C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a2;

  v16 = a1;
  v46 = a1;
  sub_182AD3688();
  v17 = a2[2];
  v18 = *(v9 + 16);
  v45 = v9 + 16;
  v43 = v18;
  v41 = v14;
  v18(v14, v16, v8);
  v42 = *(v9 + 80);
  v19 = (v42 + 32) & ~v42;
  v39 = v11;
  v20 = swift_allocObject();
  v40 = v6;
  v21 = v44;
  *(v20 + 16) = v6;
  *(v20 + 24) = v21;
  v22 = *(v9 + 32);
  v23 = v14;
  v24 = v8;
  v22(v20 + v19, v23, v8);
  NWListener.stateUpdateHandler.setter(sub_1820C9480, v20);
  v25 = v37;
  v26 = v24;
  v38 = v24;
  v43(v37, v46, v24);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = v21;
  v28 = v19;
  v22(v27 + v19, v25, v26);
  v29 = *(v17 + 16);
  v47 = sub_1820C9574;
  v48 = v27;
  os_unfair_lock_lock(v29 + 52);
  sub_1820AC69C(&v29[4]);
  os_unfair_lock_unlock(v29 + 52);
  v30 = *(v17 + 24);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1820C9574;
  *(v31 + 24) = v27;
  aBlock[4] = sub_1820CA9C0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181FEE4AC;
  aBlock[3] = &block_descriptor_345;
  v32 = _Block_copy(aBlock);

  nw_listener_set_advertised_endpoint_changed_handler(v30, v32);
  _Block_release(v32);

  v33 = v41;
  v34 = v38;
  v43(v41, v46, v38);
  v35 = swift_allocObject();
  v36 = v44;
  *(v35 + 16) = v40;
  *(v35 + 24) = v36;
  v22(v35 + v28, v33, v34);
  NWListener.newConnectionHandler.setter(sub_1820C9668, v35);
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWListener.start(queue:)(qword_1EA8433A8);
}

uint64_t sub_1820B9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  v6 = _s15ConnectionEventOMa(0, a3, a4, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  type metadata accessor for Connection7(0, a3, a4, v13);
  v19 = 0;
  memset(v18, 0, sizeof(v18));

  v15 = sub_1820A9F24(v14, v18);

  *v8 = v15;
  swift_storeEnumTagMultiPayload();
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1820B9D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v8 = *(*a6 + 80);
  v7[16] = v8;
  v9 = _s15ConnectionEventOMa(0, v8, a7, a4);
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v7[19] = *(v10 + 64);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  sub_182AD39B8();
  v7[23] = swift_task_alloc();
  v7[24] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v11 = sub_182AD3708();
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820B9F84, 0, 0);
}

uint64_t sub_1820B9F84()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1820BA058;
  v2 = v0[25];
  v3 = v0[23];

  return MEMORY[0x1EEE6DB90](v3, 0, 0, v2, v0 + 9);
}

uint64_t sub_1820BA058()
{

  if (v0)
  {
    v1 = sub_1820CA9FC;
  }

  else
  {
    v1 = sub_1820BA168;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1820BA168()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_182AD4248();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v26 = v8;
    v30 = *(v0 + 112);
    v31 = *(v0 + 168);
    v29 = *(v0 + 104);
    v28 = *(v0 + 96);
    v9 = sub_182AD3548();
    v10 = *(v9 - 8);
    v27 = *(v0 + 120);
    (*(v10 + 56))(v6, 1, 1, v9);
    v11 = *(v2 + 32);
    v11(v8, v1, v3);
    v12 = (*(v2 + 80) + 48) & ~*(v2 + 80);
    v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    v14[1].i64[0] = 0;
    v14[1].i64[1] = 0;
    v14[2] = vextq_s8(v27, v27, 8uLL);
    v11(&v14->i8[v12], v26, v3);
    v15 = (v14->i64 + v13);
    *v15 = v28;
    v15[1] = v29;
    *(v14->i64 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
    sub_181AB5D28(v6, v31, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v6) = (*(v10 + 48))(v31, 1, v9);

    v16 = *(v0 + 168);
    if (v6 == 1)
    {
      sub_181F49A88(*(v0 + 168), &unk_1EA839850, &qword_182AF4770);
    }

    else
    {
      sub_182AD3538();
      (*(v10 + 8))(v16, v9);
    }

    if (v14[1].i64[0])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_182AD34A8();
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = **(v0 + 80);

    if (v19 | v17)
    {
      v21 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v17;
      *(v0 + 40) = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v21;
    *(v0 + 64) = v20;
    swift_task_create();

    sub_181F49A88(v22, &unk_1EA839850, &qword_182AF4770);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_1820BA058;
    v24 = *(v0 + 200);
    v25 = *(v0 + 184);

    return MEMORY[0x1EEE6DB90](v25, 0, 0, v24, v0 + 72);
  }
}

uint64_t sub_1820BA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[10] = a3;
  v7[15] = *a6;
  v9 = *a6;
  v7[16] = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  v7[17] = swift_task_alloc();
  v10 = *(v9 + 80);
  v7[18] = v10;
  v12 = _s15ConnectionEventOMa(0, v10, a7, v11);
  v7[19] = v12;
  v7[20] = *(v12 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820BA70C, 0, 0);
}

uint64_t sub_1820BA70C()
{
  (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 80), *(v0 + 152));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = *(v0 + 168);
      v3 = *(v0 + 144);
      v5 = *(v0 + 112);
      v4 = *(v0 + 120);
      v6 = *(v2 + 4);
      v7 = *v2;
      v8 = *(*(v0 + 104) + 24);
      v9 = swift_task_alloc();
      *(v9 + 16) = v3;
      *(v9 + 24) = v5;
      type metadata accessor for Listener9.LockedState(0, v3, *(v5 + 8), v10);
      *(v0 + 64) = v4;
      *(v0 + 72) = &type metadata for NWListener.State;
      swift_getExtendedFunctionTypeMetadata();
      sub_182AD39B8();
      sub_181F50DA0(sub_1820C9424, v9, v8);

      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      *(v0 + 200) = v12;
      *(v0 + 208) = v11;
      if (v12)
      {
        v13 = v7 | (v6 << 32);
        v14 = *(v0 + 112);
        v15 = *(v11 + 16);
        *(v0 + 216) = v15;
        v16 = *(v11 + 24);
        v17 = swift_allocObject();
        *(v0 + 224) = v17;
        v17[2] = v15;
        v17[3] = v16;
        v17[4] = v14;
        v17[5] = v12;
        v17[6] = v11;
        *(v0 + 268) = BYTE4(v13);
        *(v0 + 264) = v13;
        swift_unknownObjectRetain_n();
        sub_181AA39C0(v12, v11);
        if (v15)
        {
          swift_getObjectType();
          v18 = sub_182AD34A8();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v42 = sub_1820BAD40;
LABEL_20:

        return MEMORY[0x1EEE6DFA0](v42, v18, v20);
      }
    }

    else
    {
      v26 = *(v0 + 144);
      v28 = *(v0 + 120);
      v27 = *(v0 + 128);
      v29 = *(v0 + 104);
      v30 = *(v0 + 112);
      sub_1820C7DE0(*(v0 + 168), *(v0 + 136), type metadata accessor for NWListener.ServiceRegistrationChange);
      v31 = *(v29 + 24);
      v32 = swift_task_alloc();
      *(v32 + 16) = v26;
      *(v32 + 24) = v30;
      type metadata accessor for Listener9.LockedState(0, v26, *(v30 + 8), v33);
      *(v0 + 32) = v28;
      *(v0 + 40) = v27;
      swift_getExtendedFunctionTypeMetadata();
      sub_182AD39B8();
      sub_181F50DA0(sub_1820C9408, v32, v31);

      v34 = *(v0 + 16);
      v35 = *(v0 + 24);
      *(v0 + 232) = v34;
      *(v0 + 240) = v35;
      if (v34)
      {
        v36 = *(v0 + 112);
        v37 = *(v35 + 16);
        *(v0 + 248) = v37;
        v38 = *(v35 + 24);
        v39 = swift_allocObject();
        *(v0 + 256) = v39;
        v39[2] = v37;
        v39[3] = v38;
        v39[4] = v36;
        v39[5] = v34;
        v39[6] = v35;
        swift_unknownObjectRetain_n();
        sub_181AA39C0(v34, v35);
        if (v37)
        {
          swift_getObjectType();
          v18 = sub_182AD34A8();
          v20 = v40;
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v42 = sub_1820BAE54;
        goto LABEL_20;
      }

      sub_1820C7D20(*(v0 + 136));
    }

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 88);
    v23 = *v21;
    *(v0 + 176) = *v21;
    v43 = (v22 + *v22);
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v24[1] = sub_1820BABB4;

    return v43(v23);
  }
}

uint64_t sub_1820BABB4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1820BAF74;
  }

  else
  {
    v2 = sub_1820BACC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820BACC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820BAD40()
{
  v5 = v0;
  v1 = v0[26];
  v2 = v0[25];
  v4 = v0[13];
  v2(&v4, v0 + 33);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820BADDC, 0, 0);
}

uint64_t sub_1820BADDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820BAE54()
{
  v6 = v0;
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[17];
  v5 = v0[13];
  v2(&v5, v3);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820BAEF0, 0, 0);
}

uint64_t sub_1820BAEF0()
{
  v1 = *(v0 + 136);

  sub_1820C7D20(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1820BAF74()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1820BAFEC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

void sub_1820BB098(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

uint64_t _s7Network9Listener9CA2A17MultiplexProtocolRzrlE3runyyyAA0A10ConnectionCyxGYaYbKYAcYaKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820BB168, 0, 0);
}

uint64_t sub_1820BB168()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1820B9114;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AF3E48, v3, sub_1820CAA08, v5, 0, 0, v7);
}

uint64_t sub_1820BB278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = _s26MultiplexedConnectionEventOMa(255, *(*a2 + 80), a5, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v6 = sub_182AD3698();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_182AD3728();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820BB400, 0, 0);
}

uint64_t sub_1820BB400()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v8 = *(v0 + 24);
  (*(*(v0 + 64) + 104))(*(v0 + 72), *MEMORY[0x1E69E8790], *(v0 + 56));
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_182AD3738();

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v8;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1820BB578;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820BB578()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1820CAA2C;
  }

  else
  {

    v2 = sub_1820CAAE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1820BB694(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = *(*a2 + 80);
  _s26MultiplexedConnectionEventOMa(255, v45, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = sub_182AD36C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a2;

  sub_182AD3688();
  v37 = a2[2];
  v44 = *(v8 + 16);
  v47 = v8 + 16;
  v40 = a1;
  v44(v14, a1, v7);
  v16 = *(v8 + 80);
  v41 = v9;
  v39 = v16;
  v17 = swift_allocObject();
  v18 = v45;
  *(v17 + 16) = v45;
  *(v17 + 24) = a3;
  v42 = a3;
  v46 = *(v8 + 32);
  v46(v17 + ((v16 + 32) & ~v16), v14, v7);
  v19 = v17;
  v20 = v37;
  NWListener.stateUpdateHandler.setter(sub_1820C914C, v19);
  v21 = v38;
  v44(v38, a1, v7);
  v22 = (v16 + 32) & ~v16;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = a3;
  v46(v23 + v22, v21, v7);
  v24 = *(v20 + 16);
  v25 = v20;
  v50 = sub_1820C9178;
  v51 = v23;
  os_unfair_lock_lock(v24 + 52);
  sub_1820AC69C(&v24[4]);
  v38 = 0;
  os_unfair_lock_unlock(v24 + 52);
  v26 = *(v20 + 24);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1820C9178;
  *(v27 + 24) = v23;
  v56 = sub_1820CA9C0;
  v57 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_181FEE4AC;
  v55 = &block_descriptor_294;
  v28 = _Block_copy(&aBlock);

  nw_listener_set_advertised_endpoint_changed_handler(v26, v28);
  _Block_release(v28);

  v29 = v43;
  v44(v43, v40, v7);
  v30 = swift_allocObject();
  v31 = v42;
  *(v30 + 16) = v45;
  *(v30 + 24) = v31;
  v46(v30 + v22, v29, v7);
  v32 = *(v25 + 16);
  v48 = sub_1820C91A4;
  v49 = v30;
  os_unfair_lock_lock(v32 + 52);
  sub_1820AC6CC(&v32[4]);
  os_unfair_lock_unlock(v32 + 52);
  v33 = *(v25 + 24);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1820C91A4;
  *(v34 + 24) = v30;
  v56 = sub_1820CAAE8;
  v57 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_181D8BD0C;
  v55 = &block_descriptor_305;
  v35 = _Block_copy(&aBlock);

  nw_listener_set_new_connection_group_handler(v33, v35);
  _Block_release(v35);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWListener.start(queue:)(qword_1EA8433A8);
}

uint64_t sub_1820BBC20(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v6 = a5(0, a3, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *(a1 + 4);
  v14 = *a1;
  *v8 = v14;
  v15 = v14 & 0xFFFFFF00FFFFFFFFLL | (v13 << 32);
  v8[4] = v13;
  swift_storeEnumTagMultiPayload();
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v10 + 8))(v12, v9);
  if (v13 >> 6 == 1)
  {
    sub_181F4B3B8();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 4) = BYTE4(v15) & 0x3F;
    v20 = v17;
    return sub_182AD36B8();
  }

  if (v13 >> 6 == 2 && v15 == 0x8000000002)
  {
    v20 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_1820BBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v6 = a5(0, a3, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  sub_1820C7D7C(a1, v8);
  swift_storeEnumTagMultiPayload();
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1820BBFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  v6 = _s26MultiplexedConnectionEventOMa(0, a3, a4, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v17 - v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  type metadata accessor for NetworkConnection(0, a3, *(a4 + 8), v13);

  v15 = sub_1821DEAB8(v14);

  *v8 = v15;
  swift_storeEnumTagMultiPayload();
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1820BC180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v8 = *(*a6 + 80);
  v7[16] = v8;
  v9 = _s26MultiplexedConnectionEventOMa(0, v8, a7, a4);
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v7[19] = *(v10 + 64);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  sub_182AD39B8();
  v7[23] = swift_task_alloc();
  v7[24] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v11 = sub_182AD3708();
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820BC368, 0, 0);
}

uint64_t sub_1820BC368()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1820BC43C;
  v2 = v0[25];
  v3 = v0[23];

  return MEMORY[0x1EEE6DB90](v3, 0, 0, v2, v0 + 9);
}

uint64_t sub_1820BC43C()
{

  if (v0)
  {
    v1 = sub_1820CA9FC;
  }

  else
  {
    v1 = sub_1820BC54C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1820BC54C()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_182AD4248();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v26 = v8;
    v30 = *(v0 + 112);
    v31 = *(v0 + 168);
    v29 = *(v0 + 104);
    v28 = *(v0 + 96);
    v9 = sub_182AD3548();
    v10 = *(v9 - 8);
    v27 = *(v0 + 120);
    (*(v10 + 56))(v6, 1, 1, v9);
    v11 = *(v2 + 32);
    v11(v8, v1, v3);
    v12 = (*(v2 + 80) + 48) & ~*(v2 + 80);
    v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    v14[1].i64[0] = 0;
    v14[1].i64[1] = 0;
    v14[2] = vextq_s8(v27, v27, 8uLL);
    v11(&v14->i8[v12], v26, v3);
    v15 = (v14->i64 + v13);
    *v15 = v28;
    v15[1] = v29;
    *(v14->i64 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
    sub_181AB5D28(v6, v31, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v6) = (*(v10 + 48))(v31, 1, v9);

    v16 = *(v0 + 168);
    if (v6 == 1)
    {
      sub_181F49A88(*(v0 + 168), &unk_1EA839850, &qword_182AF4770);
    }

    else
    {
      sub_182AD3538();
      (*(v10 + 8))(v16, v9);
    }

    if (v14[1].i64[0])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_182AD34A8();
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = **(v0 + 80);

    if (v19 | v17)
    {
      v21 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v17;
      *(v0 + 40) = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v21;
    *(v0 + 64) = v20;
    swift_task_create();

    sub_181F49A88(v22, &unk_1EA839850, &qword_182AF4770);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_1820BC43C;
    v24 = *(v0 + 200);
    v25 = *(v0 + 184);

    return MEMORY[0x1EEE6DB90](v25, 0, 0, v24, v0 + 72);
  }
}

uint64_t sub_1820BC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[10] = a3;
  v7[15] = *a6;
  v9 = *a6;
  v7[16] = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  v7[17] = swift_task_alloc();
  v10 = *(v9 + 80);
  v7[18] = v10;
  v12 = _s26MultiplexedConnectionEventOMa(0, v10, a7, v11);
  v7[19] = v12;
  v7[20] = *(v12 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820BCAF0, 0, 0);
}

uint64_t sub_1820BCAF0()
{
  (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 80), *(v0 + 152));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = *(v0 + 168);
      v3 = *(v0 + 144);
      v5 = *(v0 + 112);
      v4 = *(v0 + 120);
      v6 = *(v2 + 4);
      v7 = *v2;
      v8 = *(*(v0 + 104) + 24);
      v9 = swift_task_alloc();
      *(v9 + 16) = v3;
      *(v9 + 24) = v5;
      type metadata accessor for Listener9.LockedState(0, v3, *(v5 + 8), v10);
      *(v0 + 64) = v4;
      *(v0 + 72) = &type metadata for NWListener.State;
      swift_getExtendedFunctionTypeMetadata();
      sub_182AD39B8();
      sub_181F50DA0(sub_1820C9130, v9, v8);

      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      *(v0 + 200) = v12;
      *(v0 + 208) = v11;
      if (v12)
      {
        v13 = v7 | (v6 << 32);
        v14 = *(v0 + 112);
        v15 = *(v11 + 16);
        *(v0 + 216) = v15;
        v16 = *(v11 + 24);
        v17 = swift_allocObject();
        *(v0 + 224) = v17;
        v17[2] = v15;
        v17[3] = v16;
        v17[4] = v14;
        v17[5] = v12;
        v17[6] = v11;
        *(v0 + 268) = BYTE4(v13);
        *(v0 + 264) = v13;
        swift_unknownObjectRetain_n();
        sub_181AA39C0(v12, v11);
        if (v15)
        {
          swift_getObjectType();
          v18 = sub_182AD34A8();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v42 = sub_1820BD0AC;
LABEL_20:

        return MEMORY[0x1EEE6DFA0](v42, v18, v20);
      }
    }

    else
    {
      v26 = *(v0 + 144);
      v28 = *(v0 + 120);
      v27 = *(v0 + 128);
      v29 = *(v0 + 104);
      v30 = *(v0 + 112);
      sub_1820C7DE0(*(v0 + 168), *(v0 + 136), type metadata accessor for NWListener.ServiceRegistrationChange);
      v31 = *(v29 + 24);
      v32 = swift_task_alloc();
      *(v32 + 16) = v26;
      *(v32 + 24) = v30;
      type metadata accessor for Listener9.LockedState(0, v26, *(v30 + 8), v33);
      *(v0 + 32) = v28;
      *(v0 + 40) = v27;
      swift_getExtendedFunctionTypeMetadata();
      sub_182AD39B8();
      sub_181F50DA0(sub_1820C9114, v32, v31);

      v34 = *(v0 + 16);
      v35 = *(v0 + 24);
      *(v0 + 232) = v34;
      *(v0 + 240) = v35;
      if (v34)
      {
        v36 = *(v0 + 112);
        v37 = *(v35 + 16);
        *(v0 + 248) = v37;
        v38 = *(v35 + 24);
        v39 = swift_allocObject();
        *(v0 + 256) = v39;
        v39[2] = v37;
        v39[3] = v38;
        v39[4] = v36;
        v39[5] = v34;
        v39[6] = v35;
        swift_unknownObjectRetain_n();
        sub_181AA39C0(v34, v35);
        if (v37)
        {
          swift_getObjectType();
          v18 = sub_182AD34A8();
          v20 = v40;
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        v42 = sub_1820BD148;
        goto LABEL_20;
      }

      sub_1820C7D20(*(v0 + 136));
    }

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 88);
    v23 = *v21;
    *(v0 + 176) = *v21;
    v43 = (v22 + *v22);
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v24[1] = sub_1820BCF98;

    return v43(v23);
  }
}

uint64_t sub_1820BCF98()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1820CA9D4;
  }

  else
  {
    v2 = sub_1820CA9F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820BD0AC()
{
  v5 = v0;
  v1 = v0[26];
  v2 = v0[25];
  v4 = v0[13];
  v2(&v4, v0 + 33);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820CA9F8, 0, 0);
}

uint64_t sub_1820BD148()
{
  v6 = v0;
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[17];
  v5 = v0[13];
  v2(&v5, v3);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820CA9D8, 0, 0);
}

void sub_1820BD1E4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

void sub_1820BD290(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

double static NWListener.Service.bonjour(name:type:domain:metadata:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a7;
  v16 = a7[1];

  sub_181AB612C(0, 0);
  if (v15)
  {

    swift_unknownObjectRetain();
    sub_181AB612C(0, 0);
  }

  else
  {
    v16 = 0;
  }

  *a8 = 0;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = v15;
  *(a8 + 64) = v16;
  result = 0.0;
  *(a8 + 72) = xmmword_182AE8230;
  *(a8 + 88) = xmmword_182AE8230;
  *(a8 + 104) = 0;
  *(a8 + 105) = 3;
  return result;
}

double static NWListener.Service.applicationService(name:metadata:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];

  sub_181AB612C(0, 0);
  if (v7)
  {

    swift_unknownObjectRetain();
    sub_181AB612C(0, 0);
  }

  else
  {
    v8 = 0;
  }

  *a4 = 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = v7;
  *(a4 + 64) = v8;
  result = 0.0;
  *(a4 + 72) = xmmword_182AE8230;
  *(a4 + 88) = xmmword_182AE8230;
  *(a4 + 104) = 0;
  *(a4 + 105) = 3;
  return result;
}

BOOL static NetworkListener.State.== infix(_:_:)(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2 | (*(a2 + 4) << 32);
  v5 = v2 >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      if (((v4 >> 38) & 3) == 1)
      {
        v6 = HIDWORD(v4) & 0x3F;
        v7 = HIDWORD(v3) & 0x3F;
        if ((BYTE4(v3) & 0x3Fu) <= 1)
        {
          if (!v7)
          {
LABEL_6:
            if (v6)
            {
              return 0;
            }

            v8 = sub_182AD2768();
            return v8 == sub_182AD2768();
          }

          return v6 == 1 && v3 == *a2;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0x8000000000;
      if (v3 == 0x8000000000 || (v10 = 0x8000000001, v3 == 0x8000000001))
      {
        if ((v4 & 0xFFFFFFFFFFLL) == v10)
        {
          return 1;
        }
      }

      else if ((v4 & 0xFFFFFFFFFFLL) == 0x8000000002)
      {
        return 1;
      }
    }
  }

  else if (((v4 >> 38) & 3) == 0)
  {
    v7 = HIDWORD(v3);
    LODWORD(v6) = BYTE4(v4);
    if (SHIDWORD(v3) <= 1)
    {
      if (!HIDWORD(v3))
      {
        goto LABEL_6;
      }

      return v6 == 1 && v3 == *a2;
    }

LABEL_21:
    if (v7 == 2)
    {
      if (v6 != 2 || v3 != *a2)
      {
        return 0;
      }
    }

    else if (v6 != 3 || v3 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1820BD5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for NWListener.ServiceRegistrationChange(0);
  swift_getEnumCaseMultiPayload();
  sub_1820C7DE0(a1, a4, type metadata accessor for NWEndpoint);
  type metadata accessor for NetworkListener.ServiceRegistrationChange(0, a2, a3, v8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NetworkListener.debugDescription.getter()
{
  v1 = [*(*(v0 + 16) + 24) description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t NetworkListener.__allocating_init(on:using:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3, double a4)
{
  v17 = *a1;
  v5 = *(v4 + 88);
  v11 = *(v4 + 80);
  v12 = v5;
  v13 = a2;
  v14 = a3;
  NWParametersBuilder.init(_:)(&v16, a4, sub_1820C67F0, &v10, 0, v11, v18);
  v15 = v16;
  v6 = swift_allocObject();
  NetworkListener.init(on:using:)(&v17, &v15, v7, v8);
  return v6;
}

uint64_t NetworkListener.__allocating_init(on:using:)(unsigned __int16 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NetworkListener.init(on:using:)(a1, a2, v5, v6);
  return v4;
}

uint64_t *NetworkListener.init(on:using:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *v4;
  v8 = *a1;
  v9 = *(*v4 + 80);
  v10 = *(v7 + 88);
  v24 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v22 = 0u;
  v23 = 0u;
  locked = type metadata accessor for NetworkListener.LockedState(0, v9, v10, a4);
  v12 = sub_1820C6398(&v22, locked);
  sub_181A554F4(0, 0);
  sub_181A554F4(0, 0);
  sub_181F49A88(&v25, &qword_1EA83A238, &qword_182AF3E50);
  v6[3] = v12;
  *&v22 = 0;
  *(&v22 + 1) = v9;
  *&v23 = &v26;
  *(&v23 + 1) = v10;
  v24 = &v26;
  type metadata accessor for NWParametersBuilder(0, &v22);
  NWParametersBuilder.parametersNestedStack(applicationService:)(0);
  v14 = v13;

  v15 = *(v14 + 16);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v15 + 24));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v8);
  nw_parameters_set_local_endpoint(v16, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v18 = *(v14 + 16);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v18 + 24));
  nw_parameters_set_attach_protocol_listener(v19);
  swift_unknownObjectRelease();
  LOWORD(v22) = 0;
  type metadata accessor for NWListener();
  swift_allocObject();
  v20 = NWListener.init(using:on:)(v14, &v22);
  if (v5)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v6[2] = v20;
  }

  return v6;
}

uint64_t sub_1820BDA44(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_1820BDA9C(a1, a2, v5, v6);
  return v4;
}

void sub_1820BDA9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = *v4;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(*v4 + 80);
  v12 = *(v8 + 88);
  v40 = MEMORY[0x1E69E7CC0];
  v28 = 0u;
  v29 = 0u;
  *&v30 = MEMORY[0x1E69E7CC0];
  locked = type metadata accessor for NetworkListener.LockedState(0, v11, v12, a4);
  v14 = sub_1820C6398(&v28, locked);
  sub_181A554F4(0, 0);
  sub_181A554F4(0, 0);
  sub_181F49A88(&v40, &qword_1EA83A238, &qword_182AF3E50);
  v6[3] = v14;
  sub_181AB5D28(a1, &v36, &qword_1EA83A240, &qword_182AF3E58);
  if (v38)
  {
    sub_181F3CF20(&v36, &v28);
    *&v34 = v9;
    *(&v34 + 1) = v10;
    *&v36 = 0;
    *(&v36 + 1) = v11;
    v37 = &v47;
    v38 = v12;
    v39 = &v47;
    v15 = type metadata accessor for NWParametersBuilder(0, &v36);
    v16 = NWParametersBuilder.parametersNestedStack(for:)(&v28, v15);

    v17 = *(&v29 + 1);
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    v19 = *(v18 + 24);

    v19(v20, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    sub_181F49A88(&v36, &qword_1EA83A240, &qword_182AF3E58);
    *&v36 = v9;
    *(&v36 + 1) = v10;
    *&v28 = 0;
    *(&v28 + 1) = v11;
    *&v29 = &v47;
    *(&v29 + 1) = v12;
    *&v30 = &v47;
    type metadata accessor for NWParametersBuilder(0, &v28);
    NWParametersBuilder.parametersNestedStack(applicationService:)(0);
    v16 = v21;
  }

  LOWORD(v28) = 0;
  type metadata accessor for NWListener();
  swift_allocObject();
  v22 = NWListener.init(using:on:)(v16, &v28);
  if (v5)
  {

    sub_181F49A88(a1, &qword_1EA83A240, &qword_182AF3E58);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v22;
    v6[2] = v22;
    sub_181AB5D28(a1, &v34, &qword_1EA83A240, &qword_182AF3E58);
    if (v35)
    {
      sub_181F3CF20(&v34, &v36);
      v24 = v38;
      v25 = v39;
      __swift_project_boxed_opaque_existential_1(&v36, v38);
      v26 = (*(v25 + 1))(&v28, v24, v25);
      v45 = v32;
      v46[0] = v33[0];
      *(v46 + 11) = *(v33 + 11);
      v43 = v30;
      v44 = v31;
      v41 = v28;
      v42 = v29;
      v27 = v23[2];
      MEMORY[0x1EEE9AC00](v26);
      os_unfair_lock_lock((v27 + 208));
      sub_181FF1D1C((v27 + 16));
      os_unfair_lock_unlock((v27 + 208));

      sub_181FF0DB0(&v28);
      sub_181F49A88(a1, &qword_1EA83A240, &qword_182AF3E58);
      __swift_destroy_boxed_opaque_existential_1(&v36);
    }

    else
    {
      sub_181F49A88(a1, &qword_1EA83A240, &qword_182AF3E58);

      sub_181F49A88(&v34, &qword_1EA83A240, &qword_182AF3E58);
    }
  }
}

uint64_t NetworkListener.__allocating_init(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_181AB5D28(a1, v20, &qword_1EA83A240, &qword_182AF3E58);
  v7 = *(v3 + 88);
  v14 = *(v3 + 80);
  v15 = v7;
  v16 = a2;
  v17 = a3;
  NWParametersBuilder.init(_:)(&v19, v8, sub_1820CA9BC, &v13, 0, v14, v21);
  v18 = v19;
  v9 = swift_allocObject();
  sub_1820BDA9C(v20, &v18, v10, v11);
  sub_181F49A88(a1, &qword_1EA83A240, &qword_182AF3E58);
  return v9;
}

uint64_t NetworkListener.__allocating_init(for:using:)(uint64_t a1, _OWORD *a2)
{
  sub_181AB5D28(a1, v9, &qword_1EA83A240, &qword_182AF3E58);
  *v8 = *a2;
  v4 = swift_allocObject();
  sub_1820BDA9C(v9, v8, v5, v6);
  sub_181F49A88(a1, &qword_1EA83A240, &qword_182AF3E58);
  return v4;
}

uint64_t NetworkListener.__allocating_init(port:provider:builder:)(unsigned __int16 *a1, void *a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  NetworkListener.init(port:provider:builder:)(a1, a2, a3, v7);
  return v6;
}

void NetworkListener.init(port:provider:builder:)(unsigned __int16 *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v8 = *v4;
  v9 = *a1;
  v11 = *a3;
  v10 = a3[1];
  v12 = *(*v4 + 80);
  v13 = *(v8 + 88);
  v40 = MEMORY[0x1E69E7CC0];
  v32 = 0u;
  v33 = 0u;
  *&v34 = MEMORY[0x1E69E7CC0];
  locked = type metadata accessor for NetworkListener.LockedState(0, v12, v13, a4);
  v15 = sub_1820C6398(&v32, locked);
  sub_181A554F4(0, 0);
  sub_181A554F4(0, 0);
  sub_181F49A88(&v40, &qword_1EA83A238, &qword_182AF3E50);
  v6[3] = v15;
  v38 = v11;
  v39 = v10;
  *&v32 = 0;
  *(&v32 + 1) = v12;
  *&v33 = v47;
  *(&v33 + 1) = v13;
  *&v34 = v47;
  v16 = type metadata accessor for NWParametersBuilder(0, &v32);
  v17 = NWParametersBuilder.parametersNestedStack(for:)(a2, v16);

  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 24))(v17, v18, v19);
  v20 = *(v17 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v20 + 24));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v9);
  nw_parameters_set_local_endpoint(v21, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = *(v17 + 16);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v23 + 24));
  nw_parameters_set_attach_protocol_listener(v24);
  swift_unknownObjectRelease();
  v48 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v26 = NWListener.init(using:on:)(v25, &v48);
  if (v5)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v6[2] = v26;
    v27 = a2[3];
    v28 = a2[4];
    v29 = v26;
    __swift_project_boxed_opaque_existential_1(a2, v27);
    v30 = (*(v28 + 8))(&v32, v27, v28);
    v45 = v36;
    v46[0] = v37[0];
    *(v46 + 11) = *(v37 + 11);
    v43 = v34;
    v44 = v35;
    v41 = v32;
    v42 = v33;
    v31 = v29[2];
    MEMORY[0x1EEE9AC00](v30);
    os_unfair_lock_lock((v31 + 208));
    sub_181FF1D1C((v31 + 16));
    os_unfair_lock_unlock((v31 + 208));

    sub_181FF0DB0(&v32);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t NetworkListener.__allocating_init(on:for:using:)(unsigned __int16 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *a1;
  sub_181F75240(a2, v20);
  v8 = *(v4 + 88);
  v14 = *(v4 + 80);
  v15 = v8;
  v16 = a3;
  v17 = a4;
  NWParametersBuilder.init(_:)(&v19, v9, sub_1820CA9BC, &v13, 0, v14, v21);
  v18 = v19;
  v10 = swift_allocObject();
  NetworkListener.init(port:provider:builder:)(&v22, v20, &v18, v11);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v10;
}

uint64_t NetworkListener.__allocating_init(on:for:using:)(unsigned __int16 *a1, void *a2, __int128 *a3)
{
  v10 = *a1;
  sub_181F75240(a2, v9);
  v8 = *a3;
  v5 = swift_allocObject();
  NetworkListener.init(port:provider:builder:)(&v10, v9, &v8, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

double sub_1820BE5B4(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = v4[3];
  v10 = *(*v4 + 80);
  v11 = *(v6 + 88);
  v12 = a1;
  v13 = a2;
  a3(0, v10);
  sub_181F50DA0(a4, &v9, v7);

  return result;
}

void sub_1820BE664(unint64_t new_connection_limit)
{
  if ((new_connection_limit & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(new_connection_limit))
  {
LABEL_7:
    __break(1u);
    return;
  }

  nw_listener_set_new_connection_limit(*(*(v1 + 16) + 24), new_connection_limit);
}

void sub_1820BE6D8(unint64_t new_connection_limit)
{
  if ((new_connection_limit & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(new_connection_limit))
  {
    nw_listener_set_new_connection_limit(*(*(v1 + 16) + 24), new_connection_limit);
    return;
  }

  __break(1u);
}

uint64_t (*NetworkListener.newConnectionLimit.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = nw_listener_get_new_connection_limit(*(*(v1 + 16) + 24));
  return sub_1820BE750;
}

uint64_t NetworkListener.service.setter(_OWORD *a1)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 91);
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock((v5 + 208));
  sub_181FF1D1C((v5 + 16));
  os_unfair_lock_unlock((v5 + 208));
  return sub_181F49A88(v7, &qword_1EA83A230, &qword_182AF3E00);
}

uint64_t (*NetworkListener.service.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C8uLL);
  }

  *a1 = v3;
  *(v3 + 448) = v1;
  NetworkListener.service.getter(v3);
  return sub_1820BE884;
}

uint64_t NetworkListener.port.getter@<X0>(uint64_t a1@<X8>)
{
  result = nw_listener_get_port(*(*(v1 + 16) + 24));
  *a1 = result;
  *(a1 + 2) = 0;
  return result;
}

void sub_1820BE8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[3];
  v8 = *(*v4 + 80);
  v9 = *(v5 + 88);
  v10 = a1;
  v11 = a2;
  type metadata accessor for NetworkListener.LockedState(0, v8, v9, a4);
  sub_181F50DA0(sub_1820C7E7C, &v7, v6);
}

uint64_t sub_1820BE978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 32);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_181F5974C(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_181F5974C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1820C7E9C;
  v11[5] = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1820BEA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[3];
  v13 = *(*v4 + 80);
  v14 = *(v5 + 88);
  type metadata accessor for NetworkListener.LockedState(0, v13, v14, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A238, &qword_182AF3E50);
  sub_181F50DA0(sub_1820C7EC4, &v12, v6);
  v7 = *(v15 + 16);
  if (v7)
  {
    v8 = v15 + 40;
    do
    {
      v9 = *(v8 - 8);

      v9(v10);

      v8 += 16;
      --v7;
    }

    while (v7);
  }
}

uint64_t NetworkListener.deinit()
{
  nw_listener_cancel(*(*(v0 + 16) + 24));

  return v0;
}

uint64_t NetworkListener.__deallocating_deinit()
{
  NetworkListener.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s7Network0A8ListenerCA2A05OneToC8ProtocolRzrlE3runyyyAA0A10ConnectionCyxGYaYbKYAcYaKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820BEC08, 0, 0);
}

uint64_t sub_1820BEC08()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1820BED18;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AF3E70, v3, sub_1820C694C, v5, 0, 0, v7);
}

uint64_t sub_1820BED18()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1820BEE3C;
  }

  else
  {

    v2 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820BEE3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820BEEA8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  v7 = *(*a3 + 80);
  v8 = *(a6 + 8);
  v6[6] = type metadata accessor for NetworkConnection(255, v7, v8, a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3698();
  v6[7] = v9;
  v6[8] = *(v9 - 8);
  v6[9] = swift_task_alloc();
  v10 = sub_182AD3728();
  v6[10] = v10;
  v6[11] = *(v10 - 8);
  v6[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A250, &qword_182AF4750);
  v6[13] = v11;
  v6[14] = *(v11 - 8);
  v6[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758);
  v6[16] = v12;
  v6[17] = *(v12 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for NetworkListener.State(255, v7, v8, v13);
  v14 = sub_182AD3698();
  v6[20] = v14;
  v6[21] = *(v14 - 8);
  v6[22] = swift_task_alloc();
  v15 = sub_182AD3728();
  v6[23] = v15;
  v6[24] = *(v15 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820BF1F8, 0, 0);
}

uint64_t sub_1820BF1F8()
{
  v1 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v2 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *MEMORY[0x1E69E8790];
  (*(*(v0 + 168) + 104))(*(v0 + 176), v5, *(v0 + 160));
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  sub_182AD3738();

  type metadata accessor for NWListener.ServiceRegistrationChange(0);
  (*(v1 + 104))(v17, v5, v18);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  sub_182AD3738();

  (*(v2 + 104))(v19, v5, v20);
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  sub_182AD3738();

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 144);
  v11 = *(v0 + 96);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  v21 = *(v0 + 24);
  NWListener.start(queue:)(qword_1EA8433A8);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v9;
  *(v14 + 32) = v13;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v21;
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_1820BF4C4;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820BF4C4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1820BF6EC;
  }

  else
  {

    v2 = sub_1820BF5E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820BF5E0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1820BF6EC()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1820BF808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278, &qword_182AF47D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v32 = a2;

  v31 = a1;
  sub_182AD3688();
  v13 = *(a2 + 16);
  v30 = *(v7 + 16);
  v27 = v6;
  v30(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v28 = *(v7 + 32);
  v28(v15 + v14, v11, v6);
  v16 = *(v13 + 16);
  v34 = sub_1820C8B8C;
  v35 = v15;
  os_unfair_lock_lock(v16 + 52);
  sub_1820AC69C(&v16[4]);
  os_unfair_lock_unlock(v16 + 52);
  v17 = *(v13 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1820C8B8C;
  *(v18 + 24) = v15;
  aBlock[4] = sub_1820CA9C0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181FEE4AC;
  aBlock[3] = &block_descriptor_244;
  v19 = _Block_copy(aBlock);

  nw_listener_set_advertised_endpoint_changed_handler(v17, v19);
  _Block_release(v19);

  v20 = v33;
  v21 = v27;
  v30(v33, v31, v27);
  v22 = swift_allocObject();
  v28(v22 + v14, v20, v21);
  sub_1820BE8D0(sub_1820C8C94, v22, v23, v24);
}

uint64_t sub_1820BFB34(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  v26 = *(*a2 + 80);
  type metadata accessor for NetworkConnection(255, v26, *(a3 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD36C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v22 = a3;
  v25 = a2;

  v24 = a1;
  sub_182AD3688();
  v23 = *(v9 + 16);
  v23(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v26;
  *(v14 + 24) = a3;
  v15 = *(v9 + 32);
  v15(v14 + v13, v11, v8);
  NWListener.newConnectionHandler.setter(sub_1820C8930, v14);
  v23(v11, v24, v8);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v26;
  *(v16 + 24) = v17;
  v15(v16 + v13, v11, v8);
  sub_1820BE8D0(sub_1820C8AE0, v16, v18, v19);
}

uint64_t sub_1820BFDA4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NetworkConnection(255, a4, *(a5 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3678();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  swift_checkMetadataState();

  v11[1] = sub_1821878FC(v9);
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1820BFF04(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[8] = a9;
  v9[9] = v21;
  v9[6] = a7;
  v9[7] = a8;
  v9[4] = a5;
  v9[5] = a6;
  v9[2] = a3;
  v9[3] = a4;
  v10 = *(*a5 + 80);
  v9[10] = v10;
  v11 = *(v21 + 8);
  type metadata accessor for NetworkConnection(255, v10, v11, a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v12 = sub_182AD3728();
  v9[11] = v12;
  v13 = *(v12 - 8);
  v9[12] = v13;
  v9[13] = *(v13 + 64);
  v9[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758);
  v9[15] = v14;
  v15 = *(v14 - 8);
  v9[16] = v15;
  v9[17] = *(v15 + 64);
  v9[18] = swift_task_alloc();
  type metadata accessor for NetworkListener.State(255, v10, v11, v16);
  v17 = sub_182AD3728();
  v9[19] = v17;
  v18 = *(v17 - 8);
  v9[20] = v18;
  v9[21] = *(v18 + 64);
  v9[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v9[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C0174, 0, 0);
}

uint64_t sub_1820C0174()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v17 = v0[21];
  v4 = v0[19];
  v29 = v0[18];
  v5 = v0[16];
  v19 = v0[15];
  v20 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v22 = v0[12];
  v6 = v0[10];
  v23 = v0[11];
  v32 = v0[9];
  v26 = v0[7];
  v27 = v0[8];
  v21 = v0[6];
  v28 = v0[4];
  v7 = v0[3];
  v18 = v0[5];
  v31 = sub_182AD3548();
  v30 = *(*(v31 - 8) + 56);
  v30(v1, 1, 1, v31);
  (*(v3 + 16))(v2, v7, v4);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v6;
  *(v9 + 5) = v32;
  (*(v3 + 32))(&v9[v8], v2, v4);
  *&v9[(v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4800, v9);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);
  v30(v1, 1, 1, v31);
  (*(v5 + 16))(v29, v18, v19);
  v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v6;
  *(v11 + 5) = v32;
  (*(v5 + 32))(&v11[v10], v29, v19);
  *&v11[(v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4810, v11);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);
  v30(v1, 1, 1, v31);
  (*(v22 + 16))(v24, v21, v23);
  v12 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v6;
  *(v13 + 5) = v32;
  (*(v22 + 32))(&v13[v12], v24, v23);
  v14 = &v13[(v25 + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v14 = v26;
  *(v14 + 1) = v27;

  sub_182271CA4(v1, &unk_182AF4820, v13);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1820C055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v6 = *(*a4 + 80);
  v5[11] = v6;
  v7 = *(a5 + 8);
  v5[12] = v7;
  v5[13] = type metadata accessor for NetworkListener.State(255, v6, v7, a4);
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD3708();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C06A0, 0, 0);
}

uint64_t sub_1820C06A0()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C0770;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

uint64_t sub_1820C0770()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F571FC;
  }

  else
  {
    v2 = sub_1820C0884;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C0884()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 196);
  if (v2 >> 2 < 0x3FuLL)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    v24 = *(*(v0 + 64) + 24);
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    type metadata accessor for NetworkListener.LockedState(0, v8, v6, v11);
    *(v0 + 32) = v7;
    *(v0 + 40) = v5;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C8914, v10, v24);

    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    *(v0 + 160) = v12;
    *(v0 + 168) = v13;
    if (v12)
    {
      v14 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
      v15 = *(v0 + 72);
      v16 = *(v13 + 16);
      *(v0 + 176) = v16;
      v17 = *(v13 + 24);
      v18 = swift_allocObject();
      *(v0 + 184) = v18;
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = v15;
      v18[5] = v12;
      v18[6] = v13;
      *(v0 + 204) = BYTE4(v14);
      *(v0 + 200) = v14;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v12, v13);
      if (v16)
      {
        swift_getObjectType();
        v19 = sub_182AD34A8();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C0B60, v19, v21);
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 144) = v22;
      *v22 = v0;
      v22[1] = sub_1820C0770;
      v23 = *(v0 + 120);

      return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v23, v0 + 48);
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1820C0B60()
{
  v5 = v0;
  v1 = v0[21];
  v2 = v0[20];
  v4 = v0[8];
  v2(&v4, v0 + 25);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820C0BFC, 0, 0);
}

uint64_t sub_1820C0BFC()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C0770;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

void sub_1820C0CB0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_181F5E000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

uint64_t sub_1820C0D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v6 = *(*a4 + 80);
  v5[11] = v6;
  v7 = *(a5 + 8);
  v5[12] = v7;
  v8 = type metadata accessor for NetworkListener.ServiceRegistrationChange(0, v6, v7, a4);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A268, &qword_182AF47C8);
  v5[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A270, &qword_182AF47D0);
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C0F70, 0, 0);
}

uint64_t sub_1820C0F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1820C103C;
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 6);
}

uint64_t sub_1820C103C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1820C162C;
  }

  else
  {
    v2 = sub_1820C1150;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C1150()
{
  v1 = v0[20];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    sub_1820C7DE0(v1, v0[19], type metadata accessor for NWListener.ServiceRegistrationChange);
    v10 = *(v8 + 24);
    v11 = swift_task_alloc();
    *(v11 + 16) = v6;
    *(v11 + 24) = v9;
    type metadata accessor for NetworkListener.LockedState(0, v6, v4, v12);
    v0[4] = v7;
    v0[5] = v5;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C88F8, v11, v10);

    v14 = v0[2];
    v13 = v0[3];
    v0[26] = v14;
    v0[27] = v13;
    if (v14)
    {
      v16 = v0[18];
      v15 = v0[19];
      v17 = v0[11];
      v29 = v0[15];
      v30 = v0[12];
      v18 = v0[9];
      v19 = *(v13 + 16);
      v0[28] = v19;
      v20 = *(v13 + 24);
      v21 = swift_allocObject();
      v0[29] = v21;
      v21[2] = v19;
      v21[3] = v20;
      v21[4] = v18;
      v21[5] = v14;
      v21[6] = v13;
      sub_1820C7D7C(v15, v16);
      sub_1820BD5EC(v16, v17, v30, v29);
      v22 = v21[2];
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v14, v13);
      if (v22)
      {
        swift_getObjectType();
        v23 = sub_182AD34A8();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C14A4, v23, v25);
    }

    else
    {
      sub_1820C7D20(v0[19]);
      v26 = swift_task_alloc();
      v0[24] = v26;
      *v26 = v0;
      v26[1] = sub_1820C103C;
      v27 = v0[20];
      v28 = v0[21];

      return MEMORY[0x1EEE6DB90](v27, 0, 0, v28, v0 + 6);
    }
  }
}

uint64_t sub_1820C14A4()
{
  v8 = v0;
  v1 = v0[27];
  v2 = v0[26];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v7 = v0[8];
  v2(&v7, v3);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1820C1570, 0, 0);
}

uint64_t sub_1820C1570()
{
  v1 = v0[19];

  sub_1820C7D20(v1);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1820C103C;
  v3 = v0[20];
  v4 = v0[21];

  return MEMORY[0x1EEE6DB90](v3, 0, 0, v4, v0 + 6);
}

uint64_t sub_1820C162C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

void sub_1820C16E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_181F5E000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

uint64_t sub_1820C1790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1820C17B8, 0, 0);
}

uint64_t sub_1820C17B8()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1820C189C;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820C189C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_18209F864;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C19B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a5;
  v7[15] = a7;
  v7[12] = a3;
  v7[13] = a4;
  v7[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for NetworkConnection(255, a6, *(a7 + 8), v10);
  v7[19] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v11 = sub_182AD3708();
  v7[20] = v11;
  v7[21] = *(v11 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C1B14, 0, 0);
}

uint64_t sub_1820C1B14()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1820C1BE4;
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_1820C1BE4()
{

  if (v0)
  {
    v1 = sub_1820C20A0;
  }

  else
  {
    v1 = sub_1820C1CF4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1820C1CF4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v21 = *(v0 + 120);
    v5 = *(v0 + 104);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v2, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = v21;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = v1;
    sub_181AB5D28(v2, v3, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v2) = (*(v7 + 48))(v3, 1, v6);

    v9 = *(v0 + 128);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 128), &unk_1EA839850, &qword_182AF4770);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 136);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850, &qword_182AF4770);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_1820C1BE4;
    v20 = *(v0 + 160);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1820C20A0()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1820C213C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1820C2234;

  return v9(a5);
}

uint64_t sub_1820C2234()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820C2368, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1820C2368()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s7Network0A8ListenerCA2A17MultiplexProtocolRzrlE3runyyyAA0A10ConnectionCyxGYaYbKYAcYaKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820C23F0, 0, 0);
}

uint64_t sub_1820C23F0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1820B9114;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AF3E88, v3, sub_1820CAA08, v5, 0, 0, v7);
}

uint64_t sub_1820C2500(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  v7 = *(*a3 + 80);
  v8 = *(a6 + 8);
  v6[6] = type metadata accessor for NetworkConnection(255, v7, v8, a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3698();
  v6[7] = v9;
  v6[8] = *(v9 - 8);
  v6[9] = swift_task_alloc();
  v10 = sub_182AD3728();
  v6[10] = v10;
  v6[11] = *(v10 - 8);
  v6[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A250, &qword_182AF4750);
  v6[13] = v11;
  v6[14] = *(v11 - 8);
  v6[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758);
  v6[16] = v12;
  v6[17] = *(v12 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for NetworkListener.State(255, v7, v8, v13);
  v14 = sub_182AD3698();
  v6[20] = v14;
  v6[21] = *(v14 - 8);
  v6[22] = swift_task_alloc();
  v15 = sub_182AD3728();
  v6[23] = v15;
  v6[24] = *(v15 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C2850, 0, 0);
}

uint64_t sub_1820C2850()
{
  v1 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v2 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *MEMORY[0x1E69E8790];
  (*(*(v0 + 168) + 104))(*(v0 + 176), v5, *(v0 + 160));
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  sub_182AD3738();

  type metadata accessor for NWListener.ServiceRegistrationChange(0);
  (*(v1 + 104))(v17, v5, v18);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  sub_182AD3738();

  (*(v2 + 104))(v19, v5, v20);
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  sub_182AD3738();

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 144);
  v11 = *(v0 + 96);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  v21 = *(v0 + 24);
  NWListener.start(queue:)(qword_1EA8433A8);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v9;
  *(v14 + 32) = v13;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v21;
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_1820C2B1C;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820C2B1C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1820CA9DC;
  }

  else
  {

    v2 = sub_1820CA9E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1820C2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v10 = *(*a2 + 80);
  type metadata accessor for NetworkListener.State(255, v10, *(a3 + 8), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v11 = sub_182AD36C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a2;

  sub_182AD3688();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = a3;
  (*(v12 + 32))(v18 + v17, v15, v11);
  *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  NWListener.stateUpdateHandler.setter(v20, v18);
}

uint64_t sub_1820C2E14(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *a3;
  v20 = a3;
  type metadata accessor for NetworkListener.State(255, *(v5 + 80), *(a4 + 8), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v6 = sub_182AD3678();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *a1 | (*(a1 + 4) << 32);
  v11 = *(a1 + 4) >> 6;
  v12 = *a1 | (*(a1 + 4) << 32) & 0x3FFFFFFFFFLL | 0x4000000000;
  if (v11 != 1)
  {
    v12 = *a1 | (*(a1 + 4) << 32);
  }

  LODWORD(v21) = v12;
  BYTE4(v21) = BYTE4(v12);
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v7 + 8))(v9, v6);
  if (v11 == 1)
  {
    sub_181F4B3B8();
    v14 = swift_allocError();
    *v15 = v10;
    *(v15 + 4) = BYTE4(v10) & 0x3F;
    v21 = v14;
    goto LABEL_8;
  }

  if (v11 == 2 && v10 == 0x8000000002)
  {
    v21 = 0;
LABEL_8:
    v16 = sub_182AD36B8();
    return sub_1820BEA5C(v16, v17, v18, v19);
  }

  return result;
}

uint64_t sub_1820C2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278, &qword_182AF47D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v32 = a2;

  v31 = a1;
  sub_182AD3688();
  v13 = *(a2 + 16);
  v30 = *(v7 + 16);
  v27 = v6;
  v30(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v28 = *(v7 + 32);
  v28(v15 + v14, v11, v6);
  v16 = *(v13 + 16);
  v34 = sub_1820CAAA4;
  v35 = v15;
  os_unfair_lock_lock(v16 + 52);
  sub_181E61CA4(&v16[4]);
  os_unfair_lock_unlock(v16 + 52);
  v17 = *(v13 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1820CAAA4;
  *(v18 + 24) = v15;
  aBlock[4] = sub_181FF0DA8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181FEE4AC;
  aBlock[3] = &block_descriptor_171;
  v19 = _Block_copy(aBlock);

  nw_listener_set_advertised_endpoint_changed_handler(v17, v19);
  _Block_release(v19);

  v20 = v33;
  v21 = v27;
  v30(v33, v31, v27);
  v22 = swift_allocObject();
  v28(v22 + v14, v20, v21);
  sub_1820BE8D0(sub_1820CA9F0, v22, v23, v24);
}

uint64_t sub_1820C3328(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A280, &qword_182AF47E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1820C7D7C(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278, &qword_182AF47D8);
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1820C346C(uint64_t a1, void *a2, uint64_t a3, double a4, uint64_t a5)
{
  v40 = *(*a2 + 80);
  type metadata accessor for NetworkConnection(255, v40, *(a3 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD36C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  v34 = a3;
  v38 = a2;

  v37 = a1;
  sub_182AD3688();
  v15 = a2[2];
  v36 = *(v9 + 16);
  v32 = v8;
  v36(v13, a1, v8);
  v33 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = v33;
  v17 = swift_allocObject();
  *(v17 + 16) = v40;
  *(v17 + 24) = a3;
  v18 = *(v9 + 32);
  v18(v17 + v16, v13, v8);
  v19 = *(v15 + 16);
  v41 = sub_1820C7E64;
  v42 = v17;
  os_unfair_lock_lock(v19 + 52);
  sub_181EC7B18(&v19[4]);
  os_unfair_lock_unlock(v19 + 52);
  v20 = *(v15 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1820C7E64;
  *(v21 + 24) = v17;
  aBlock[4] = sub_181FF0D14;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181D8BD0C;
  aBlock[3] = &block_descriptor_19;
  v22 = _Block_copy(aBlock);

  nw_listener_set_new_connection_group_handler(v20, v22);
  _Block_release(v22);

  v23 = v39;
  v24 = v32;
  v36(v39, v37, v32);
  v25 = v33;
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v40;
  *(v26 + 24) = v27;
  v18(v26 + v25, v23, v24);
  sub_1820BE8D0(sub_1820CA9EC, v26, v28, v29);
}

uint64_t sub_1820C37F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NetworkConnection(255, a4, *(a5 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3678();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  swift_checkMetadataState();

  v10 = sub_1821DEAB8(v9);

  v12[1] = v10;
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1820C3968(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NetworkConnection(255, a3, *(a4 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  sub_182AD36C8();
  return sub_182AD36B8();
}

uint64_t sub_1820C39DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[8] = a9;
  v9[9] = v21;
  v9[6] = a7;
  v9[7] = a8;
  v9[4] = a5;
  v9[5] = a6;
  v9[2] = a3;
  v9[3] = a4;
  v10 = *(*a5 + 80);
  v9[10] = v10;
  v11 = *(v21 + 8);
  type metadata accessor for NetworkConnection(255, v10, v11, a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v12 = sub_182AD3728();
  v9[11] = v12;
  v13 = *(v12 - 8);
  v9[12] = v13;
  v9[13] = *(v13 + 64);
  v9[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758);
  v9[15] = v14;
  v15 = *(v14 - 8);
  v9[16] = v15;
  v9[17] = *(v15 + 64);
  v9[18] = swift_task_alloc();
  type metadata accessor for NetworkListener.State(255, v10, v11, v16);
  v17 = sub_182AD3728();
  v9[19] = v17;
  v18 = *(v17 - 8);
  v9[20] = v18;
  v9[21] = *(v18 + 64);
  v9[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v9[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C3C4C, 0, 0);
}

uint64_t sub_1820C3C4C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v17 = v0[21];
  v4 = v0[19];
  v29 = v0[18];
  v5 = v0[16];
  v19 = v0[15];
  v20 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v22 = v0[12];
  v6 = v0[10];
  v23 = v0[11];
  v32 = v0[9];
  v26 = v0[7];
  v27 = v0[8];
  v21 = v0[6];
  v28 = v0[4];
  v7 = v0[3];
  v18 = v0[5];
  v31 = sub_182AD3548();
  v30 = *(*(v31 - 8) + 56);
  v30(v1, 1, 1, v31);
  (*(v3 + 16))(v2, v7, v4);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v6;
  *(v9 + 5) = v32;
  (*(v3 + 32))(&v9[v8], v2, v4);
  *&v9[(v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4780, v9);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);
  v30(v1, 1, 1, v31);
  (*(v5 + 16))(v29, v18, v19);
  v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v6;
  *(v11 + 5) = v32;
  (*(v5 + 32))(&v11[v10], v29, v19);
  *&v11[(v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4790, v11);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);
  v30(v1, 1, 1, v31);
  (*(v22 + 16))(v24, v21, v23);
  v12 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v6;
  *(v13 + 5) = v32;
  (*(v22 + 32))(&v13[v12], v24, v23);
  v14 = &v13[(v25 + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v14 = v26;
  *(v14 + 1) = v27;

  sub_182271CA4(v1, &unk_182AF47A0, v13);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1820C4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v6 = *(*a4 + 80);
  v5[11] = v6;
  v7 = *(a5 + 8);
  v5[12] = v7;
  v5[13] = type metadata accessor for NetworkListener.State(255, v6, v7, a4);
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD3708();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C4178, 0, 0);
}

uint64_t sub_1820C4178()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C4248;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

uint64_t sub_1820C4248()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1820CAA04;
  }

  else
  {
    v2 = sub_1820C435C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C435C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 196);
  if (v2 >> 2 < 0x3FuLL)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    v24 = *(*(v0 + 64) + 24);
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    type metadata accessor for NetworkListener.LockedState(0, v8, v6, v11);
    *(v0 + 32) = v7;
    *(v0 + 40) = v5;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C7E48, v10, v24);

    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    *(v0 + 160) = v12;
    *(v0 + 168) = v13;
    if (v12)
    {
      v14 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
      v15 = *(v0 + 72);
      v16 = *(v13 + 16);
      *(v0 + 176) = v16;
      v17 = *(v13 + 24);
      v18 = swift_allocObject();
      *(v0 + 184) = v18;
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = v15;
      v18[5] = v12;
      v18[6] = v13;
      *(v0 + 204) = BYTE4(v14);
      *(v0 + 200) = v14;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v12, v13);
      if (v16)
      {
        swift_getObjectType();
        v19 = sub_182AD34A8();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C4638, v19, v21);
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 144) = v22;
      *v22 = v0;
      v22[1] = sub_1820C4248;
      v23 = *(v0 + 120);

      return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v23, v0 + 48);
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1820C4638()
{
  v5 = v0;
  v1 = v0[21];
  v2 = v0[20];
  v4 = v0[8];
  v2(&v4, v0 + 25);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820C46D4, 0, 0);
}

uint64_t sub_1820C46D4()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C4248;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

void sub_1820C4788(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

uint64_t sub_1820C4834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v6 = *(*a4 + 80);
  v5[11] = v6;
  v7 = *(a5 + 8);
  v5[12] = v7;
  v8 = type metadata accessor for NetworkListener.ServiceRegistrationChange(0, v6, v7, a4);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A268, &qword_182AF47C8);
  v5[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A270, &qword_182AF47D0);
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C4A48, 0, 0);
}

uint64_t sub_1820C4A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1820C4B14;
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 6);
}

uint64_t sub_1820C4B14()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1820CAA00;
  }

  else
  {
    v2 = sub_1820C4C28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C4C28()
{
  v1 = v0[20];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    sub_1820C7DE0(v1, v0[19], type metadata accessor for NWListener.ServiceRegistrationChange);
    v10 = *(v8 + 24);
    v11 = swift_task_alloc();
    *(v11 + 16) = v6;
    *(v11 + 24) = v9;
    type metadata accessor for NetworkListener.LockedState(0, v6, v4, v12);
    v0[4] = v7;
    v0[5] = v5;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C7D04, v11, v10);

    v14 = v0[2];
    v13 = v0[3];
    v0[26] = v14;
    v0[27] = v13;
    if (v14)
    {
      v16 = v0[18];
      v15 = v0[19];
      v17 = v0[11];
      v29 = v0[15];
      v30 = v0[12];
      v18 = v0[9];
      v19 = *(v13 + 16);
      v0[28] = v19;
      v20 = *(v13 + 24);
      v21 = swift_allocObject();
      v0[29] = v21;
      v21[2] = v19;
      v21[3] = v20;
      v21[4] = v18;
      v21[5] = v14;
      v21[6] = v13;
      sub_1820C7D7C(v15, v16);
      sub_1820BD5EC(v16, v17, v30, v29);
      v22 = v21[2];
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v14, v13);
      if (v22)
      {
        swift_getObjectType();
        v23 = sub_182AD34A8();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C4F7C, v23, v25);
    }

    else
    {
      sub_1820C7D20(v0[19]);
      v26 = swift_task_alloc();
      v0[24] = v26;
      *v26 = v0;
      v26[1] = sub_1820C4B14;
      v27 = v0[20];
      v28 = v0[21];

      return MEMORY[0x1EEE6DB90](v27, 0, 0, v28, v0 + 6);
    }
  }
}

uint64_t sub_1820C4F7C()
{
  v8 = v0;
  v1 = v0[27];
  v2 = v0[26];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v7 = v0[8];
  v2(&v7, v3);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1820C5048, 0, 0);
}

uint64_t sub_1820C5048()
{
  v1 = v0[19];

  sub_1820C7D20(v1);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1820C4B14;
  v3 = v0[20];
  v4 = v0[21];

  return MEMORY[0x1EEE6DB90](v3, 0, 0, v4, v0 + 6);
}

void sub_1820C5104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

uint64_t sub_1820C51B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1820C51D8, 0, 0);
}

uint64_t sub_1820C51D8()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1820A6A10;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820C52BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a5;
  v7[15] = a7;
  v7[12] = a3;
  v7[13] = a4;
  v7[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for NetworkConnection(255, a6, *(a7 + 8), v10);
  v7[19] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v11 = sub_182AD3708();
  v7[20] = v11;
  v7[21] = *(v11 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C5418, 0, 0);
}

uint64_t sub_1820C5418()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1820C54E8;
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_1820C54E8()
{

  if (v0)
  {
    v1 = sub_1820CAAE4;
  }

  else
  {
    v1 = sub_1820C55F8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1820C55F8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v21 = *(v0 + 120);
    v5 = *(v0 + 104);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v2, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = v21;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = v1;
    sub_181AB5D28(v2, v3, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v2) = (*(v7 + 48))(v3, 1, v6);

    v9 = *(v0 + 128);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 128), &unk_1EA839850, &qword_182AF4770);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 136);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850, &qword_182AF4770);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_1820C54E8;
    v20 = *(v0 + 160);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1820C59A4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1820C5A9C;

  return v9(a5);
}

uint64_t sub_1820C5A9C()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820CAAF0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

__n128 BonjourListenerProvider.init(name:type:domain:txtRecord:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X6>, __n128 *a8@<X8>)
{
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u64[0] = a3;
  a8[1].n128_u64[1] = a4;
  a8[2].n128_u64[0] = a5;
  a8[2].n128_u64[1] = a6;
  result = *a7;
  a8[3] = *a7;
  return result;
}

double BonjourListenerProvider.service.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = v1[7];

  sub_181E6550C(v9, v10);
  sub_181AB612C(0, 0);
  if (v9)
  {
    sub_181AB612C(0, 0);
  }

  else
  {
    v10 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  result = 0.0;
  *(a1 + 72) = xmmword_182AE8230;
  *(a1 + 88) = xmmword_182AE8230;
  *(a1 + 104) = 0;
  *(a1 + 105) = 3;
  return result;
}

__n128 ApplicationServiceListenerProvider.init(name:metadata:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

double ApplicationServiceListenerProvider.service.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  sub_181E6550C(v6, v5);
  sub_181AB612C(0, 0);
  if (v6)
  {
    sub_181AB612C(0, 0);
  }

  else
  {
    v5 = 0;
  }

  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v6;
  *(a1 + 64) = v5;
  result = 0.0;
  *(a1 + 72) = xmmword_182AE8230;
  *(a1 + 88) = xmmword_182AE8230;
  *(a1 + 104) = 0;
  *(a1 + 105) = 3;
  return result;
}

double static ListenerProvider<>.bonjour(name:type:domain:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  a7[6] = 0;
  a7[7] = 0;

  return result;
}

double static ListenerProvider<>.bonjour(name:type:domain:txtRecord:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v10 = *a7;
  v9 = a7[1];
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = v10;
  a8[7] = v9;
  sub_181E6550C(v10, v9);

  return result;
}

double static ListenerProvider<>.applicationService(name:metadata:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v5 = a3[1];
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v6;
  a4[3] = v5;
  sub_181E6550C(v6, v5);

  return result;
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t sub_1820C62AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 != 255)
  {
    return sub_1820C62C8(a1, a2, a3, a4, a5, a6, a7, a8, a9 & 1);
  }

  return a1;
}

uint64_t sub_1820C62C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {

    v11 = a3;
    v12 = a4;
  }

  else
  {

    v11 = a7;
    v12 = a8;
  }

  return sub_181AB612C(v11, v12);
}

uint64_t sub_1820C6398(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_182AD3CD8();
  return sub_182AD3CC8();
}

uint64_t sub_1820C64B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1820B5A08(a1, v4, v5, v6);
}

uint64_t sub_1820C6588(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v8 = *a1;
  v9 = a1[1];
  a2(v7, v6);
  result = a3(v8, v9);
  *a1 = v7;
  a1[1] = v6;
  return result;
}

uint64_t sub_1820C65FC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  a2(v7, v6);
  result = a3(v8, v9);
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1820C6670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1820B9238(a1, v5, v7, v6, v4);
}

uint64_t sub_1820C6730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1820BB278(a1, v5, v7, v6, v4);
}

uint64_t sub_1820C6834(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  result = sub_181A554F4(v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1820C688C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F54964;

  return sub_1820BEEA8(v9, a1, v5, v7, v6, v4);
}

uint64_t sub_1820C695C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1820C2500(v9, a1, v5, v7, v6, v4);
}

uint64_t keypath_set_36Tm(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v7 = a1[5];
  v12[4] = a1[4];
  v13[0] = v7;
  *(v13 + 11) = *(a1 + 91);
  v8 = a1[1];
  v12[0] = *a1;
  v12[1] = v8;
  v9 = a1[3];
  v12[2] = a1[2];
  v12[3] = v9;
  sub_181AB5D28(v12, &v11, &qword_1EA83A230, &qword_182AF3E00);
  return a5(a1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1820C6ACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1820C6B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

void sub_1820C6C08(uint64_t a1)
{
  if (!qword_1EA83A248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A1D8, &qword_182AF3DE0);
    v1 = sub_182AD39B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA83A248);
    }
  }
}

void sub_1820C6D6C(uint64_t a1)
{
  v9 = MEMORY[0x1E69E5D20] + 64;
  sub_1820C6C08(319);
  if (v3 <= 0x3F)
  {
    v10 = *(v2 - 8) + 64;
    v11 = &unk_182AF4118;
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    v8 = *(a1 + 104);
    type metadata accessor for Connection1(255, &v6);
    sub_182AD35A8();
    v4 = sub_182AD39B8();
    if (v5 <= 0x3F)
    {
      v12 = *(v4 - 8) + 64;
      v13 = MEMORY[0x1E69E5CE8] + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of Listener5.__allocating_init(for:using:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

uint64_t dispatch thunk of Listener6.__allocating_init(for:using:where:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

uint64_t sub_1820C7388(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1820C743C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1820C7484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1820C74F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1820C7530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1820C7578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1820C75C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1820C75FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1820C769C(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_181F5EB68;

  return sub_1820C39DC(v13, a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1820C778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  type metadata accessor for NetworkListener.State(255, v4[4], *(v6 + 8), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD3728() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v4[2];
  v10 = v4[3];
  v11 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_181F5EB68;

  return sub_1820C4034(v9, v10, v4 + v8, v11, v6);
}

uint64_t sub_1820C78DC()
{
  v2 = v0[5];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_1820C4834(v5, v6, v0 + v4, v7, v2);
}

uint64_t sub_1820C7A04(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5[4];
  v7 = v5[5];
  type metadata accessor for NetworkConnection(255, v8, *(v7 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = *(sub_182AD3728() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v5[2];
  v12 = v5[3];
  v13 = (v5 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_181F5EB68;

  return sub_1820C51B0(v11, v12, v5 + v10, v14, v15, v8, v7);
}

uint64_t sub_1820C7B6C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820C52BC(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1820C7C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_181F5EB68;

  return sub_1820C59A4(v2, v3, v4, v6, v5);
}

uint64_t sub_1820C7D20(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1820C7D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1820C7DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1820C7EC4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *a2 = v2;
  return result;
}

uint64_t sub_1820C7F40(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_181F5EB68;

  return sub_1820BFF04(v13, a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_108Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NetworkListener.State(255, *(v4 + 32), *(*(v4 + 40) + 8), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3728();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1820C8140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  type metadata accessor for NetworkListener.State(255, v4[4], *(v6 + 8), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD3728() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v4[2];
  v10 = v4[3];
  v11 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_181F5EB68;

  return sub_1820C055C(v9, v10, v4 + v8, v11, v6);
}

uint64_t objectdestroy_112Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1820C8374()
{
  v2 = v0[5];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258, &qword_182AF4758) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_1820C0D5C(v5, v6, v0 + v4, v7, v2);
}

uint64_t objectdestroy_116Tm(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NetworkConnection(255, *(v5 + 32), *(*(v5 + 40) + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v6 = sub_182AD3728();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v7 + 8))(v5 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1820C85B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5[4];
  v7 = v5[5];
  type metadata accessor for NetworkConnection(255, v8, *(v7 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = *(sub_182AD3728() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v5[2];
  v12 = v5[3];
  v13 = (v5 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_181F5EB68;

  return sub_1820C1790(v11, v12, v5 + v10, v14, v15, v8, v7);
}

uint64_t sub_1820C8718(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820C19B8(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t objectdestroy_125Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1820C8838()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_181F5EB68;

  return sub_1820C213C(v2, v3, v4, v6, v5);
}

uint64_t sub_1820C8948(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), double a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  type metadata accessor for NetworkConnection(255, v7, *(v8 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = *(sub_182AD36C8() - 8);
  v10 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a2(a1, v10, v7, v8);
}

uint64_t objectdestroy_149Tm(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NetworkConnection(255, *(v5 + 16), *(*(v5 + 24) + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v6 = sub_182AD36C8();
  (*(*(v6 - 8) + 8))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);

  return swift_deallocObject();
}

uint64_t sub_1820C8AE4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  type metadata accessor for NetworkConnection(255, v6, *(v7 + 8), a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = *(sub_182AD36C8() - 8);
  return sub_1820C3968(v10, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, v9);
}

uint64_t objectdestroy_164Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278, &qword_182AF47D8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1820C8C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278, &qword_182AF47D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278, &qword_182AF47D8);
  return sub_182AD36B8();
}

uint64_t objectdestroy_179Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NetworkListener.State(255, *(v4 + 16), *(*(v4 + 24) + 8), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD36C8();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_1820C8E08(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 24);
  type metadata accessor for NetworkListener.State(255, *(v4 + 16), *(v6 + 8), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD36C8() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  return sub_1820C2E14(a1, v4 + v8, *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v6);
}

uint64_t sub_1820C8EFC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820BC180(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1820C8FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  v7 = *(_s26MultiplexedConnectionEventOMa(0, v4[4], v6, a4) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v4[2];
  v12 = v4[3];
  v13 = (v4 + v9);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v4 + v10);
  v17 = swift_task_alloc();
  *(v5 + 16) = v17;
  *v17 = v5;
  v17[1] = sub_181F5EB68;

  return sub_1820BC9A0(v11, v12, v4 + v8, v14, v15, v16, v6);
}

uint64_t sub_1820C91F0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820B9D9C(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1820C92C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  v7 = *(_s15ConnectionEventOMa(0, v4[4], v6, a4) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v4[2];
  v12 = v4[3];
  v13 = (v4 + v9);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v4 + v10);
  v17 = swift_task_alloc();
  *(v5 + 16) = v17;
  *v17 = v5;
  v17[1] = sub_181F5EB68;

  return sub_1820BA5BC(v11, v12, v4 + v8, v14, v15, v16, v6);
}

uint64_t objectdestroy_132Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1820C94AC(unsigned int *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  a2(255, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = *(sub_182AD36C8() - 8);
  return sub_1820BBC20(a1, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a3);
}

uint64_t sub_1820C95A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  a2(255, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = *(sub_182AD36C8() - 8);
  return sub_1820BBE28(a1, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a3);
}

uint64_t sub_1820C9694(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  a2(255, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD36C8() - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t sub_1820C9794(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_1820B640C(a1, a2, v6, v7, v9, v8);
}

uint64_t objectdestroy_261Tm(uint64_t (*a1)(void, void, void))
{
  v2 = *(a1(0, *(v1 + 32), *(v1 + 40)) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  type metadata accessor for NWListener.ServiceRegistrationChange(0);
  swift_getEnumCaseMultiPayload();
  type metadata accessor for NWEndpoint(0);
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {

LABEL_3:
      }
    }

    else
    {
      sub_181E605C8(*(v1 + v3), *(v1 + v3 + 8), *(v1 + v3 + 16), *(v1 + v3 + 24));
    }
  }

  else
  {
    switch(v6)
    {
      case 2:

        break;
      case 3:
        v7 = sub_182AD2058();
        (*(*(v7 - 8) + 8))(v1 + v3, v7);
        break;
      case 4:
        swift_unknownObjectRelease();
        break;
    }
  }

LABEL_4:

  return swift_deallocObject();
}

uint64_t sub_1820C9A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Listener8.Event(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v4[2];
  v11 = v4[3];
  v12 = (v4 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v4 + v9);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_181F5EB68;

  return sub_1820B6CF8(v10, v11, v4 + v7, v13, v14, v15);
}

uint64_t objectdestroy_359Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_282Tm(uint64_t (*a1)(uint64_t, void, void))
{
  a1(255, *(v1 + 16), *(v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v2 = sub_182AD36C8();
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1820C9D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Listener8.Event(255, *(v4 + 16), *(v4 + 24), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD36C8() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1820B6160(a1, v4 + v8, v9, v6);
}

uint64_t sub_1820C9E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

unsigned int *sub_1820C9FB8(unsigned int *a1, uint64_t (*a2)(uint64_t, uint64_t *), void (*a3)(uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a4)(void (*)(uint64_t, uint64_t *, __n128), uint64_t))
{
  v11 = *(v4 + 16);
  v8 = *(v4 + 40);
  v12 = *(v4 + 24);
  v13 = v8;
  a2(255, &v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = *(sub_182AD36C8() - 8);
  return sub_1820B477C(a1, *(v4 + 56), *(v4 + 64), v4 + ((*(v9 + 80) + 72) & ~*(v9 + 80)), a3, a4);
}

uint64_t sub_1820CA0D8(uint64_t a1, uint64_t (*a2)(uint64_t, void *), uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(uint64_t))
{
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v15[0] = v4[2];
  v8 = v15[0];
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  a2(255, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v13 = *(sub_182AD36C8() - 8);
  return sub_1820B4968(a1, v4 + ((*(v13 + 80) + 56) & ~*(v13 + 80)), v8, v9, v10, v11, v12, a3, a4);
}

uint64_t objectdestroy_393Tm(uint64_t (*a1)(uint64_t, uint64_t *))
{
  v7 = *(v1 + 16);
  v2 = *(v1 + 40);
  v8 = *(v1 + 24);
  v9 = v2;
  a1(255, &v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v3 = sub_182AD36C8();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);

  (*(v4 + 8))(v1 + v5, v3);
  return swift_deallocObject();
}

uint64_t objectdestroy_396Tm(uint64_t (*a1)(uint64_t, uint64_t *))
{
  v5 = *(v1 + 16);
  v2 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7 = v2;
  a1(255, &v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v3 = sub_182AD36C8();
  (*(*(v3 - 8) + 8))(v1 + ((*(*(v3 - 8) + 80) + 56) & ~*(*(v3 - 8) + 80)), v3);
  return swift_deallocObject();
}

uint64_t sub_1820CA468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1E8, &qword_182AF3DE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1820CA504(uint64_t a1)
{
  v6 = *(v1 + 16);
  v3 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = v3;
  type metadata accessor for Connection1(255, &v6);
  v4 = *(sub_182AD35A8() - 8);
  return sub_1820B0C54(*(v1 + 56), v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80)), a1);
}

uint64_t objectdestroy_420Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_426Tm()
{
  v6 = *(v0 + 16);
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = v1;
  type metadata accessor for Connection1(255, &v6);
  v2 = sub_182AD35A8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  return swift_deallocObject();
}

uint64_t sub_1820CA87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for NWListener.ServiceRegistrationChange(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820CA900(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for NetworkConnection(319, *(a1 + 16), *(*(a1 + 24) + 8), a5);
  if (v6 <= 0x3F)
  {
    result = type metadata accessor for NWListener.ServiceRegistrationChange(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Interface.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

__n128 _s7Network9InterfaceV5indexACSi_tAA0A5ErrorOYKcfC@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  result.n128_u64[0] = sub_181E378A4(a1, &v12, v13).n128_u64[0];
  if (v3)
  {
    *a2 = v12;
  }

  else
  {
    type metadata accessor for Interface.BackingClass();
    v7 = swift_allocObject();
    v8 = v14[0];
    *(v7 + 144) = v13[8];
    *(v7 + 160) = v8;
    *(v7 + 170) = *(v14 + 10);
    v9 = v13[5];
    *(v7 + 80) = v13[4];
    *(v7 + 96) = v9;
    v10 = v13[7];
    *(v7 + 112) = v13[6];
    *(v7 + 128) = v10;
    v11 = v13[1];
    *(v7 + 16) = v13[0];
    *(v7 + 32) = v11;
    result = v13[3];
    *(v7 + 48) = v13[2];
    *(v7 + 64) = result;
    *a3 = v7;
  }

  return result;
}

__n128 _s7Network9InterfaceV4nameACSS_tAA0A5ErrorOYKcfC@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_181C8DF10(a1, a2, &v13, v14);
  if (v4)
  {
    *a3 = v13;
  }

  else
  {
    type metadata accessor for Interface.BackingClass();
    v8 = swift_allocObject();
    v9 = v15[0];
    *(v8 + 144) = v14[8];
    *(v8 + 160) = v9;
    *(v8 + 170) = *(v15 + 10);
    v10 = v14[5];
    *(v8 + 80) = v14[4];
    *(v8 + 96) = v10;
    v11 = v14[7];
    *(v8 + 112) = v14[6];
    *(v8 + 128) = v11;
    v12 = v14[1];
    *(v8 + 16) = v14[0];
    *(v8 + 32) = v12;
    result = v14[3];
    *(v8 + 48) = v14[2];
    *(v8 + 64) = result;
    *a4 = v8;
  }

  return result;
}

uint64_t Interface.description.getter()
{
  v1 = *(*v0 + 40);

  return v1;
}

__n128 _s7Network9InterfaceV5index4nameACSi_SStAA0A5ErrorOYKcfC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, uint64_t *a5@<X8>)
{
  result.n128_f64[0] = sub_181C8E1E0(a1, a2, a3, &v14, v15);
  if (v5)
  {
    *a4 = v14;
  }

  else
  {
    type metadata accessor for Interface.BackingClass();
    v9 = swift_allocObject();
    v10 = v16[0];
    *(v9 + 144) = v15[8];
    *(v9 + 160) = v10;
    *(v9 + 170) = *(v16 + 10);
    v11 = v15[5];
    *(v9 + 80) = v15[4];
    *(v9 + 96) = v11;
    v12 = v15[7];
    *(v9 + 112) = v15[6];
    *(v9 + 128) = v12;
    v13 = v15[1];
    *(v9 + 16) = v15[0];
    *(v9 + 32) = v13;
    result = v15[3];
    *(v9 + 48) = v15[2];
    *(v9 + 64) = result;
    *a5 = v9;
  }

  return result;
}

Network::InterfaceType_optional __swiftcall InterfaceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010400uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1820CAE48()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5518[v1]);
  return sub_182AD4558();
}

uint64_t sub_1820CAED0(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  return sub_182AD4558();
}

Network::InterfaceSubtype_optional __swiftcall InterfaceSubtype.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x403050201050500uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1820CAFB0()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5540[v1]);
  return sub_182AD4558();
}

uint64_t sub_1820CB038(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5540[v2]);
  return sub_182AD4558();
}

uint64_t sub_1820CB0E0()
{
  v1 = *v0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 169);
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

uint64_t sub_1820CB17C(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 169);
  MEMORY[0x1865DB070](*v1);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  return MEMORY[0x1865DB070](qword_182AF5540[v3]);
}

uint64_t sub_1820CB1F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 168);
  v4 = *(v1 + 169);
  sub_182AD44E8();
  MEMORY[0x1865DB070](v2);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v3]);
  MEMORY[0x1865DB070](qword_182AF5540[v4]);
  return sub_182AD4558();
}

BOOL sub_1820CB290(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 96);
  v49[4] = *(*a1 + 80);
  v49[5] = v7;
  v8 = v2[7];
  v9 = v2[8];
  v10 = v2[10];
  v11 = *(v2 + 170);
  v49[8] = v2[9];
  v50[0] = v10;
  *(v50 + 10) = v11;
  v12 = *a2;
  v49[6] = v8;
  v49[7] = v9;
  v49[2] = v5;
  v49[3] = v6;
  v49[0] = v3;
  v49[1] = v4;
  v13 = v2[10];
  v47 = v2[9];
  v48[0] = v13;
  *(v48 + 10) = *(v2 + 170);
  v14 = v2[6];
  v43 = v2[5];
  v44 = v14;
  v15 = v2[8];
  v45 = v2[7];
  v46 = v15;
  v16 = v2[2];
  v39 = v2[1];
  v40 = v16;
  v17 = v2[4];
  v41 = v2[3];
  v42 = v17;
  v18 = v12[9];
  v51[7] = v12[8];
  v51[8] = v18;
  v52[0] = v12[10];
  *(v52 + 10) = *(v12 + 170);
  v19 = v12[5];
  v51[3] = v12[4];
  v51[4] = v19;
  v20 = v12[7];
  v51[5] = v12[6];
  v51[6] = v20;
  v21 = v12[2];
  v51[0] = v12[1];
  v51[1] = v21;
  v51[2] = v12[3];
  v22 = v12[10];
  v37 = v12[9];
  v38[0] = v22;
  *(v38 + 10) = *(v12 + 170);
  v23 = v12[6];
  v33 = v12[5];
  v34 = v23;
  v24 = v12[8];
  v35 = v12[7];
  v36 = v24;
  v25 = v12[2];
  v29 = v12[1];
  v30 = v25;
  v26 = v12[4];
  v31 = v12[3];
  v32 = v26;
  sub_1820CD0E4(v49, v55);
  sub_1820CD0E4(v51, v55);
  v27 = sub_1820CC5DC(&v39, &v29);
  v53[8] = v37;
  v54[0] = v38[0];
  *(v54 + 10) = *(v38 + 10);
  v53[4] = v33;
  v53[5] = v34;
  v53[6] = v35;
  v53[7] = v36;
  v53[0] = v29;
  v53[1] = v30;
  v53[2] = v31;
  v53[3] = v32;
  sub_181C8F3A4(v53);
  v55[8] = v47;
  v56[0] = v48[0];
  *(v56 + 10) = *(v48 + 10);
  v55[4] = v43;
  v55[5] = v44;
  v55[6] = v45;
  v55[7] = v46;
  v55[0] = v39;
  v55[1] = v40;
  v55[2] = v41;
  v55[3] = v42;
  sub_181C8F3A4(v55);
  return v27;
}

uint64_t Interface.hash(into:)(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 185);
  MEMORY[0x1865DB070](*(*v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  return MEMORY[0x1865DB070](qword_182AF5540[v3]);
}

uint64_t sub_1820CB4CC()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1820CB5A0(uint64_t a1, __n128 a2)
{
  sub_182AD30E8();
}

uint64_t sub_1820CB660(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

unint64_t sub_1820CB730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1820CD098(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1820CB760(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xE700000000000000;
  v8 = 0x65707974627573;
  if (v2 != 3)
  {
    v8 = 0x69746172656E6567;
    v7 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7865646E69;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1820CB7F0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1701869940;
  v4 = 0x65707974627573;
  if (v1 != 3)
  {
    v4 = 0x69746172656E6567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1820CB87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1820CD098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1820CB8A4(uint64_t a1)
{
  v2 = sub_1820CC810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1820CB8E0(uint64_t a1)
{
  v2 = sub_1820CC810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Interface.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2A0, &qword_182AF4940);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC810();
  sub_182AD4638();
  v17 = 0;

  sub_182AD40E8();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v16 = 1;
    sub_182AD4108();
    v15 = *(v8 + 184);
    v14 = 2;
    sub_1820CC864();
    sub_182AD4118();
    v13 = *(v8 + 185);
    v12 = 3;
    sub_1820CC8B8();
    sub_182AD4118();
    v11 = 4;
    sub_182AD4108();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t Interface.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2B8, &qword_182AF4948);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC810();
  sub_182AD45E8();
  if (!v2)
  {
    v29 = 0;
    v9 = sub_182AD3FC8();
    v11 = v10;
    v12 = v9;
    v28 = 1;
    v20 = sub_182AD3FE8();
    v26 = 2;
    sub_1820CC90C();
    sub_182AD3FF8();
    v19 = v27;
    v24 = 3;
    sub_1820CC960();
    sub_182AD3FF8();
    v18 = v25;
    v23 = 4;
    v14 = sub_182AD3FE8();
    (*(v6 + 8))(v8, v5);
    v22 = 1;
    v21 = 1;
    type metadata accessor for Interface.BackingClass();
    v15 = swift_allocObject();
    *(v15 + 16) = v20;
    *(v15 + 24) = 0;
    *(v15 + 32) = v14;
    *(v15 + 40) = v12;
    *(v15 + 48) = v11;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = xmmword_182AE69F0;
    *(v15 + 104) = 1;
    *(v15 + 112) = 0u;
    *(v15 + 128) = 0u;
    *(v15 + 144) = 0u;
    *(v15 + 160) = 256;
    *(v15 + 170) = 0;
    *(v15 + 162) = 0;
    *(v15 + 175) = 0;
    *(v15 + 183) = 1;
    v16 = v18;
    *(v15 + 184) = v19;
    *(v15 + 185) = v16;
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1820CBE98@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_182AD3F48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1820CBEF0(uint64_t a1)
{
  v2 = sub_181EBD8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1820CBF2C(uint64_t a1)
{
  v2 = sub_181EBD8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterfaceType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2C0, &qword_182AF4950);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181EBD8F0();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1820CC0B4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_182AD3F48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1820CC104@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_182AD3F48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1820CC15C(uint64_t a1)
{
  v2 = sub_1820CC9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1820CC198(uint64_t a1)
{
  v2 = sub_1820CC9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterfaceSubtype.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2D0, &qword_182AF4960);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC9B4();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

uint64_t InterfaceSubtype.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2E0, &qword_182AF4968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC9B4();
  sub_182AD45E8();
  if (!v2)
  {
    v9 = sub_182AD3FE8();
    (*(v6 + 8))(v8, v5);
    v10 = 0x403000201000000uLL >> (8 * v9);
    if (v9 >= 8)
    {
      LOBYTE(v10) = 0;
    }

    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1820CC49C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2D0, &qword_182AF4960);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC9B4();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

BOOL sub_1820CC5DC(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 15);
  v58[4] = *(a1 + 13);
  v58[5] = v8;
  v9 = *(a1 + 19);
  v58[6] = *(a1 + 17);
  v58[7] = v9;
  v10 = *(a1 + 7);
  v58[0] = *(a1 + 5);
  v58[1] = v10;
  v11 = *(a1 + 11);
  v58[2] = *(a1 + 9);
  v58[3] = v11;
  v12 = *(a1 + 168);
  v13 = *(a1 + 169);
  v15 = *a2;
  v14 = a2[1];
  v17 = a2[2];
  v16 = a2[3];
  v18 = a2[4];
  v19 = *(a2 + 19);
  v59[6] = *(a2 + 17);
  v59[7] = v19;
  v20 = *(a2 + 15);
  v59[4] = *(a2 + 13);
  v59[5] = v20;
  v21 = *(a2 + 11);
  v59[2] = *(a2 + 9);
  v59[3] = v21;
  v22 = *(a2 + 7);
  v59[0] = *(a2 + 5);
  v59[1] = v22;
  if (__PAIR128__(v3, v4) == __PAIR128__(v14, v15) && v6 == v17)
  {
    v23 = *(a2 + 168);
    v24 = *(a2 + 169);
    if (__PAIR128__(v7, v5) == __PAIR128__(v18, v16) || (v25 = a1, v26 = a2, v27 = sub_182AD4268(), a2 = v26, v28 = v27, a1 = v25, v2 = 0, (v28 & 1) != 0))
    {
      v29 = *(a1 + 15);
      v52 = *(a1 + 13);
      v53 = v29;
      v30 = *(a1 + 19);
      v54 = *(a1 + 17);
      v55 = v30;
      v31 = *(a1 + 7);
      v48 = *(a1 + 5);
      v49 = v31;
      v32 = *(a1 + 11);
      v50 = *(a1 + 9);
      v51 = v32;
      v33 = *(a2 + 15);
      v44 = *(a2 + 13);
      v45 = v33;
      v34 = *(a2 + 19);
      v46 = *(a2 + 17);
      v47 = v34;
      v35 = *(a2 + 7);
      v40 = *(a2 + 5);
      v41 = v35;
      v36 = *(a2 + 11);
      v42 = *(a2 + 9);
      v43 = v36;
      sub_181B9D0C4(v58, v39);
      sub_181B9D0C4(v59, v39);
      v37 = sub_181B9D150(&v48, &v40);
      v56[4] = v44;
      v56[5] = v45;
      v56[6] = v46;
      v56[7] = v47;
      v56[0] = v40;
      v56[1] = v41;
      v56[2] = v42;
      v56[3] = v43;
      sub_181B9D120(v56);
      v57[4] = v52;
      v57[5] = v53;
      v57[6] = v54;
      v57[7] = v55;
      v57[0] = v48;
      v57[1] = v49;
      v57[2] = v50;
      v57[3] = v51;
      sub_181B9D120(v57);
      return v37 && qword_182AF5518[v12] == qword_182AF5518[v23] && qword_182AF5540[v13] == qword_182AF5540[v24];
    }
  }

  return v2;
}

unint64_t sub_1820CC810()
{
  result = qword_1EA83A2A8;
  if (!qword_1EA83A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2A8);
  }

  return result;
}

unint64_t sub_1820CC864()
{
  result = qword_1EA8369C0;
  if (!qword_1EA8369C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8369C0);
  }

  return result;
}

unint64_t sub_1820CC8B8()
{
  result = qword_1EA83A2B0;
  if (!qword_1EA83A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2B0);
  }

  return result;
}

unint64_t sub_1820CC90C()
{
  result = qword_1EA836CA0;
  if (!qword_1EA836CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836CA0);
  }

  return result;
}

unint64_t sub_1820CC960()
{
  result = qword_1EA836C70;
  if (!qword_1EA836C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C70);
  }

  return result;
}

unint64_t sub_1820CC9B4()
{
  result = qword_1EA83A2D8;
  if (!qword_1EA83A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2D8);
  }

  return result;
}

unint64_t sub_1820CCA0C()
{
  result = qword_1EA83A2E8;
  if (!qword_1EA83A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2E8);
  }

  return result;
}

unint64_t sub_1820CCA94()
{
  result = qword_1EA83A300;
  if (!qword_1EA83A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A300);
  }

  return result;
}

unint64_t sub_1820CCB1C()
{
  result = qword_1EA83A318;
  if (!qword_1EA83A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A318);
  }

  return result;
}

__n128 __swift_memcpy170_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1820CCBDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 170))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1820CCC24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1820CCCD4()
{
  result = qword_1EA83A320;
  if (!qword_1EA83A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A320);
  }

  return result;
}

unint64_t sub_1820CCD2C()
{
  result = qword_1EA83A328;
  if (!qword_1EA83A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A328);
  }

  return result;
}

unint64_t sub_1820CCD84()
{
  result = qword_1EA83A330;
  if (!qword_1EA83A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A330);
  }

  return result;
}

unint64_t sub_1820CCDDC()
{
  result = qword_1EA83A338;
  if (!qword_1EA83A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A338);
  }

  return result;
}

unint64_t sub_1820CCE34()
{
  result = qword_1EA83A340;
  if (!qword_1EA83A340)
  {
    type metadata accessor for Interface.BackingClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A340);
  }

  return result;
}

unint64_t sub_1820CCE8C()
{
  result = qword_1EA83A348;
  if (!qword_1EA83A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A348);
  }

  return result;
}

unint64_t sub_1820CCEE4()
{
  result = qword_1EA83A350;
  if (!qword_1EA83A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A350);
  }

  return result;
}

unint64_t sub_1820CCF3C()
{
  result = qword_1EA836BB0;
  if (!qword_1EA836BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836BB0);
  }

  return result;
}

unint64_t sub_1820CCF94()
{
  result = qword_1EA836BB8;
  if (!qword_1EA836BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836BB8);
  }

  return result;
}

unint64_t sub_1820CCFEC()
{
  result = qword_1EA83A358;
  if (!qword_1EA83A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A358);
  }

  return result;
}

unint64_t sub_1820CD044()
{
  result = qword_1EA83A360;
  if (!qword_1EA83A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A360);
  }

  return result;
}

unint64_t sub_1820CD098(uint64_t a1, uint64_t a2)
{
  v2 = sub_182AD3F48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1820CD11C()
{
  result = qword_1EA83A368;
  if (!qword_1EA83A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A368);
  }

  return result;
}

uint64_t sub_1820CD170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA30, &qword_182AF8600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1820CD1D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 128))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1820CD240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1820CD2E4()
{
  result = qword_1EA83A370;
  if (!qword_1EA83A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A370);
  }

  return result;
}

unint64_t sub_1820CD33C()
{
  result = qword_1EA83A378;
  if (!qword_1EA83A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A378);
  }

  return result;
}

unint64_t sub_1820CD394()
{
  result = qword_1EA83A380;
  if (!qword_1EA83A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A380);
  }

  return result;
}

unint64_t sub_1820CD3EC()
{
  result = qword_1EA83A388;
  if (!qword_1EA83A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A388);
  }

  return result;
}

unint64_t sub_1820CD460(unint64_t a1, uint64_t a2, size_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      __src[0] = a1;
      __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = a3;
      v6 = swift_slowAlloc();
      v7 = v6;
      v8 = __src;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v5 = a3;
      v6 = swift_slowAlloc();
      v7 = v6;
      v8 = (v4 + 32);
LABEL_6:
      memcpy(v6, v8, v5);
      return v7;
    }
  }

  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B780, &qword_182AF5590);
  sub_182AD3B78();
  if (!v3)
  {
    return __src[2];
  }

  return v7;
}

uint64_t sub_1820CD570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_beginAccess();
  v2 = *(v1 + 64);

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (!v3)
  {

    return 0;
  }

  v4 = qword_1ED4100E8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = word_1ED411CB0;
  v6 = qword_1ED411CB8;
  v7 = qword_1ED411CC0;
  v8 = byte_1ED411CC8;
  sub_181F49A24(qword_1ED411CB8, qword_1ED411CC0, byte_1ED411CC8);

  v9 = sub_181ADC1F8();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 57) = 0;
  *(v12 + 64) = 0;
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 41) = v9;
  *(v12 + 49) = v11;
  swift_beginAccess();
  result = v12;
  *(v12 + 64) = v3;
  return result;
}

uint64_t _nw_quic_create_connection_options()
{
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED411BF0 + 1);
  v1 = unk_1ED411C00;
  v2 = byte_1ED411C08;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions(0);
  swift_allocObject();
  sub_181F49A24(v0, v1, v2);
  sub_181AACB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  swift_allocObject();
  return sub_181AA94EC();
}

void _nw_quic_connection_set_server_raw_public_keys(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_181E0C630(a1, a2);
}

void _nw_quic_connection_set_client_identity_reference(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  sub_1820CD8AC(a1, a2, a3);
}

uint64_t sub_1820CD8AC(uint64_t a1, id a2, void *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v7 = *(*result + 128);
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {
      v10 = v9[14];
      if (!v10)
      {
      }

      v87 = v9[15];
      v11 = v9[17];
      v9[17] = 0;
      swift_unknownObjectRetain();

      v12 = v9[18];
      v9[18] = 0;

      v13 = MEMORY[0x1E69E7CC0];
      v95 = MEMORY[0x1E69E7CC0];
      v14 = MEMORY[0x1E697AFF8];
      v15 = MEMORY[0x1E697B3C8];
      v88 = v9;
      if (a3)
      {
        v16 = v9[18];
        v9[18] = a3;
        v17 = a3;

        v94 = v17;
        Count = CFArrayGetCount(v17);
        if (Count < 0)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v85 = a2;
        v86 = v10;
        if (Count)
        {
          v19 = 0;
          v20 = *MEMORY[0x1E697B328];
          v92 = *v14;
          v93 = v20;
          v91 = *MEMORY[0x1E697B000];
          v21 = *v15;
          v89 = MEMORY[0x1E69E7CC0];
          v90 = v21;
          while (1)
          {
            v22 = Count;
            ValueAtIndex = CFArrayGetValueAtIndex(v94, v19);
            if (!ValueAtIndex)
            {
              __break(1u);
            }

            v24 = ValueAtIndex;
            v98 = v93;
            v99 = 1;
            v100 = MEMORY[0x1E69E6370];
            v101[0] = v92;
            type metadata accessor for CFString(0);
            v101[1] = v91;
            v101[4] = v25;
            v102[0] = v90;
            type metadata accessor for CFData(0);
            v102[4] = v26;
            v102[1] = v24;
            v27 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3C0, &qword_182AF5578);
            v28 = sub_182AD3EE8();
            v29 = v93;
            v30 = v92;
            v31 = v91;
            v32 = v90;
            a2 = v27;
            sub_181AB5D28(&v98, &v96, &unk_1EA83A3B0, &unk_182B013E0);
            v33 = v96;
            v34 = sub_18224F430(v96);
            v3 = &v96;
            if (v35)
            {
              goto LABEL_44;
            }

            v36 = v28 + 8;
            *(v28 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v34;
            *(v28[6] + 8 * v34) = v33;
            sub_181E7BFC4(v97, (v28[7] + 32 * v34));
            v37 = v28[2];
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_45;
            }

            v28[2] = v39;
            sub_181AB5D28(v101, &v96, &unk_1EA83A3B0, &unk_182B013E0);
            v40 = v96;
            v41 = sub_18224F430(v96);
            if (v42)
            {
              goto LABEL_44;
            }

            *(v36 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
            *(v28[6] + 8 * v41) = v40;
            sub_181E7BFC4(v97, (v28[7] + 32 * v41));
            v43 = v28[2];
            v38 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v38)
            {
              goto LABEL_45;
            }

            v28[2] = v44;
            sub_181AB5D28(v102, &v96, &unk_1EA83A3B0, &unk_182B013E0);
            v45 = v96;
            v46 = sub_18224F430(v96);
            if (v47)
            {
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            *(v36 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
            *(v28[6] + 8 * v46) = v45;
            sub_181E7BFC4(v97, (v28[7] + 32 * v46));
            v48 = v28[2];
            v38 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v38)
            {
              goto LABEL_45;
            }

            v28[2] = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3B0, &unk_182B013E0);
            swift_arrayDestroy();
            sub_1820D22C0();
            v50 = sub_182AD2E48();

            v96 = 0;
            v51 = SecItemCopyMatching(v50, &v96);
            if (v51)
            {
              if (v51 == -25300)
              {

                if (qword_1EA837248 != -1)
                {
                  swift_once();
                }

                v53 = sub_182AD2698();
                __swift_project_value_buffer(v53, qword_1EA843418);
                v54 = sub_182AD2678();
                v55 = sub_182AD38A8();
                v56 = os_log_type_enabled(v54, v55);
                v57 = v89;
                v15 = MEMORY[0x1E697B3C8];
                if (v56)
                {
                  v58 = swift_slowAlloc();
                  *v58 = 67109120;
                  *(v58 + 4) = -25300;
                  _os_log_impl(&dword_181A37000, v54, v55, "Failed to retrieve certificate (%d", v58, 8u);
                  MEMORY[0x1865DF520](v58, -1, -1);
                }

                swift_unknownObjectRelease();
                v9 = v88;
                v13 = v57;
                a2 = v85;
                goto LABEL_31;
              }
            }

            else if (v96)
            {
              v52 = swift_unknownObjectRetain_n();
              MEMORY[0x1865D9F10](v52);
              if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_182AD3408();
              }

              sub_182AD3448();
              swift_unknownObjectRelease();

              v89 = v95;
              goto LABEL_10;
            }

LABEL_10:
            ++v19;
            swift_unknownObjectRelease();
            Count = v22;
            if (v22 == v19)
            {
              goto LABEL_25;
            }
          }
        }

        v89 = MEMORY[0x1E69E7CC0];
LABEL_25:

        a2 = v85;
        v9 = v88;
        v13 = v89;
        v15 = MEMORY[0x1E697B3C8];
LABEL_31:
        v14 = MEMORY[0x1E697AFF8];
      }

      if (!a2)
      {

        return swift_unknownObjectRelease();
      }

      v89 = v13;
      v59 = v9[17];
      v9[17] = a2;
      v60 = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A8, &qword_182AF5570);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_182AE8B90;
      v62 = *MEMORY[0x1E697B328];
      *(inited + 32) = *MEMORY[0x1E697B328];
      *(inited + 40) = 1;
      v63 = *v14;
      *(inited + 64) = MEMORY[0x1E69E6370];
      *(inited + 72) = v63;
      v64 = *MEMORY[0x1E697B010];
      type metadata accessor for CFString(0);
      *(inited + 80) = v64;
      v65 = *v15;
      *(inited + 104) = v66;
      *(inited + 112) = v65;
      type metadata accessor for CFData(0);
      *(inited + 144) = v67;
      *(inited + 120) = v60;
      v94 = v60;
      v68 = v62;
      v69 = v63;
      v70 = v64;
      v71 = v65;
      sub_18225B244(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3B0, &unk_182B013E0);
      swift_arrayDestroy();
      sub_1820D22C0();
      a2 = sub_182AD2E48();

      v96 = 0;
      v72 = SecItemCopyMatching(a2, &v96);
      if (!v72)
      {
LABEL_38:
        if (!v96)
        {
LABEL_51:

          swift_unknownObjectRelease();

          goto LABEL_52;
        }

        type metadata accessor for SecIdentity(0);
        swift_unknownObjectRetain();
        v77 = swift_dynamicCastUnknownClassUnconditional();
        if (v89 >> 62)
        {
          if (sub_182AD3EB8())
          {
LABEL_41:
            v78 = sub_182AD33B8();
            v79 = sec_identity_create_with_certificates(v77, v78);

            if (v79)
            {
LABEL_42:
              ObjectType = swift_getObjectType();
              v93 = &v84;
              MEMORY[0x1EEE9AC00](ObjectType);
              v83[2] = v79;
              v81 = v87;
              v92 = a2;
              v82 = *(v87 + 344);
              swift_unknownObjectRetain();
              v82(sub_1820D24C0, v83, MEMORY[0x1E69E7CA8] + 8, ObjectType, v81);

              swift_unknownObjectRelease_n();

              swift_unknownObjectRelease();

LABEL_52:
              v96 = 0;

              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            goto LABEL_50;
          }
        }

        else if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v79 = sec_identity_create(v77);
        if (v79)
        {
          goto LABEL_42;
        }

LABEL_50:

        goto LABEL_51;
      }

      LODWORD(v3) = v72;
      if (qword_1EA837248 == -1)
      {
LABEL_35:
        v73 = sub_182AD2698();
        __swift_project_value_buffer(v73, qword_1EA843418);
        v74 = sub_182AD2678();
        v75 = sub_182AD38A8();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 67109120;
          *(v76 + 4) = v3;
          _os_log_impl(&dword_181A37000, v74, v75, "Failed to retrieve identity %d", v76, 8u);
          MEMORY[0x1865DF520](v76, -1, -1);
        }

        goto LABEL_38;
      }

LABEL_47:
      swift_once();
      goto LABEL_35;
    }
  }

  return result;
}

void sub_1820CE278(uint64_t a1, uint64_t a2, SecIdentityRef identityRef)
{
  certificateRef[1] = *MEMORY[0x1E69E9840];
  certificateRef[0] = 0;
  if (SecIdentityCopyCertificate(identityRef, certificateRef) || !certificateRef[0])
  {
    goto LABEL_7;
  }

  v4 = certificateRef[0];
  v5 = SecCertificateCopyKey(v4);
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = SecKeyCopySubjectPublicKeyInfo();
  if (v7)
  {
    v8 = v7;
    v9 = sub_182AD2158();
    v11 = v10;

    ObjectType = swift_getObjectType();
    v13 = MEMORY[0x1EEE9AC00](ObjectType);
    (*(a2 + 344))(sub_1820D24B0, v13);

    sub_181C1F2E4(v9, v11);
LABEL_7:
    v14 = certificateRef[0];
    certificateRef[0] = 0;

    return;
  }

  __break(1u);
}

void sub_1820CE3D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3E0, &qword_182AE6020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_182AE9730;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  swift_unknownObjectRetain();
  sub_181F49B58(a2, a3);
  v6 = sub_182AD33B8();

  sec_protocol_options_set_client_raw_public_key_certificates();
  swift_unknownObjectRelease();
}

uint64_t _nw_quic_connection_get_selected_key_index()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v0 = sub_181AA8420();
  if (!v0)
  {
    return 255;
  }

  v1 = *(*v0 + 128);
  v2 = v0;
  swift_beginAccess();
  v3 = *(v2 + v1);

  if (!v3)
  {
    return 255;
  }

  v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex);

  return v4;
}

uint64_t _nw_quic_connection_set_local_identity(uint64_t a1, void *a2)
{
  swift_unknownObjectRetain();
  sub_1820CE59C(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_1820CE59C(uint64_t a1, void *a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
    swift_unknownObjectRetain();
    v3 = sub_181AA8420();
    if (v3)
    {
      v4 = *(*v3 + 128);
      v5 = v3;
      swift_beginAccess();
      v6 = *(v5 + v4);

      if (v6)
      {
        if (v6[14])
        {
          v7 = v6[15];
          ObjectType = swift_getObjectType();
          MEMORY[0x1EEE9AC00](ObjectType);
          v16[2] = a2;
          v9 = *(v7 + 344);
          swift_unknownObjectRetain();
          v9(sub_1820D2318, v16, MEMORY[0x1E69E7CA8] + 8, ObjectType, v7);
          v10 = nw_utilities_public_key_info_for_sec_identity(a2);
          v11 = sub_182AD2158();
          v13 = v12;

          v14 = sub_182AD2138();
          swift_unknownObjectRelease();
          sub_181C1F2E4(v11, v13);
          swift_unknownObjectRelease();
          v15 = v6[19];
          v6[19] = v14;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    swift_unknownObjectRelease();
  }
}

id _nw_quic_connection_copy_local_public_key()
{
  v0 = sub_1820CE7C4();

  return v0;
}

void *sub_1820CE7C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v0 = sub_181AA8420();
  if (!v0)
  {
    return 0;
  }

  v1 = *(*v0 + 128);
  v2 = v0;
  swift_beginAccess();
  v3 = *(v2 + v1);

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 152);
  v5 = v4;

  return v4;
}

uint64_t _nw_quic_connection_set_trusted_peer_keys(uint64_t a1, uint64_t a2, void *a3)
{
  sub_182AD33C8();
  v4 = a3;
  sub_1820CE8E4();
}

void sub_1820CE8E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v0 = sub_181AA8420();
  if (v0)
  {
    v1 = *(*v0 + 128);
    v2 = v0;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      if (v3[19])
      {
        swift_allocObject();
        swift_weakInit();
        if (v3[14])
        {
          v4 = v3[15];
          v5 = v3[19];
          v3[19] = 0;
          swift_unknownObjectRetain();

          ObjectType = swift_getObjectType();
          v7 = MEMORY[0x1EEE9AC00](ObjectType);
          (*(v4 + 344))(sub_1820D2320, v7);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v8 = sub_182AD2698();
  __swift_project_value_buffer(v8, qword_1EA843418);
  v9 = sub_182AD2678();
  v10 = sub_182AD38B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_181A37000, v9, v10, "Not setting verify block, local_public_key is NULL", v11, 2u);
    MEMORY[0x1865DF520](v11, -1, -1);
  }
}

uint64_t sub_1820CEB44(NSObject *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v11[4] = sub_1820D24A8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18218793C;
  v11[3] = &block_descriptor_21_0;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  sec_protocol_options_set_verify_block(a1, v9, a4);
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_1820CEC48(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = -1;
  v8 = sub_182AD33B8();
  v9 = nw_utilities_trust_ref_matches_public_key(a2, v8, &v12);

  result = a3(v9);
  v11 = v12;
  if (v12 != 255)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex) = v11;
    }
  }

  return result;
}

uint64_t sub_1820CED50(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x2000) == 0)
        {
          v8 = v7 | 0x2000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x2000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFDFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820CEE28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      if (*(v3 + 112))
      {
        v4 = *(v3 + 120);
        ObjectType = swift_getObjectType();
        v6 = *(v4 + 344);
        swift_unknownObjectRetain();
        v6(j__sec_protocol_options_clear_tls_application_protocols, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v4);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1820CEF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v7 = *(*result + 128);
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {
      swift_beginAccess();
      v10 = *(v9 + 48);
      if (*(v10 + 112))
      {
        v11 = *(v10 + 120);
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 344);
        swift_unknownObjectRetain();
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3C8, &qword_182AF5580);
        v13(v21, sub_1820CF244, 0, v14, ObjectType, v11);
        v15 = v21[0];
        if (v21[0])
        {
          Class = object_getClass(v21[0]);
          if (Class == sub_182AD26C8())
          {
            v17 = swift_allocObject();
            *(v17 + 16) = a2;
            *(v17 + 24) = a3;
            v18 = swift_allocObject();
            v18[2] = sub_1820D23B8;
            v18[3] = v17;
            v21[4] = sub_181F7CCCC;
            v21[5] = v18;
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 1107296256;
            v21[2] = sub_181F79D48;
            v21[3] = &block_descriptor_20;
            v19 = _Block_copy(v21);

            xpc_array_apply(v15, v19);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            _Block_release(v19);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              __break(1u);
            }
          }

          else
          {

            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        else
        {

          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1820CF244@<X0>(uint64_t *a2@<X8>)
{
  result = sec_protocol_options_copy_transport_specific_application_protocol();
  *a2 = result;
  return result;
}

uint64_t sub_1820CF270(int a1, id a2, uint64_t (*a3)(void))
{
  Class = object_getClass(a2);
  if (Class == sub_182AD26D8() && xpc_string_get_string_ptr(a2))
  {
    return a3() & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t _nw_quic_connection_set_initial_max_data(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      *(v6 + 16) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_streams_unidirectional(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      *(v6 + 56) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_stream_data_bidirectional_local(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      *(v6 + 24) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      *(v6 + 32) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_stream_data_unidirectional(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      *(v6 + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1820CF638(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = a2 == 1;
      if (a2 == 2)
      {
        v7 = 2;
      }

      *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_streamPathAffinity) = v7;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_source_connection_id(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  if (a2)
  {
    sub_182AD2818();
    v6 = sub_182AD2868();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  }

  else
  {
    v7 = sub_182AD2868();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v8 = sub_181AA8420();
  if (v8)
  {
    v9 = *(*v8 + 128);
    v10 = v8;
    swift_beginAccess();
    v11 = *(v10 + v9);

    if (v11)
    {
      v12 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
      swift_beginAccess();
      sub_1820D23C0(v5, v11 + v12);
      swift_endAccess();
    }
  }

  return sub_181F49A88(v5, &unk_1EA8394B0, &unk_182AF9540);
}

uint64_t _nw_quic_connection_set_ack_delay_sizeTm(uint64_t a1, char a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v6 = *(*result + 128);
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + v6);

    if (v8)
    {
      *(v8 + *a3) = a2;
    }
  }

  return result;
}

uint64_t sub_1820CF9B8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 1) == 0)
        {
          v8 = v7 | 1;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if (v7)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820CFA90(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 2) == 0)
        {
          v8 = v7 | 2;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 2) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFFDLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820CFB68(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 4) == 0)
        {
          v8 = v7 | 4;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 4) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_pmtud_update_interval(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateInterval) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_execute_pmtud_update_block(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      sub_18227FBA4(v2);
    }
  }

  return result;
}

void _nw_quic_connection_set_pmtud_update_blockTm(int a1, void *aBlock, void *a3)
{
  v5 = _Block_copy(aBlock);
  v6 = a3;
  sub_1820CFE10(a1, v5, v6);

  _Block_release(v5);
}

void sub_1820CFE10(int a1, void *aBlock, void *a3)
{
  v4 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v5 = sub_181AA8420();
  if (v5)
  {
    v6 = *(*v5 + 128);
    v7 = v5;
    swift_beginAccess();
    v8 = *(v7 + v6);

    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock);
      *(v8 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock) = v4;
      _Block_release(v9);
      v10 = *(v8 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue);
      *(v8 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue) = a3;

      v11 = a3;

      return;
    }
  }

  _Block_release(v4);
}

unint64_t _nw_quic_connection_get_setup_placeholderTm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 23) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D0014(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x800000) == 0)
        {
          v8 = v7 | 0x800000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x800000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFF7FFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

unint64_t _nw_quic_connection_get_migration_for_non_transport()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 15) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D01A0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x8000) == 0)
        {
          v8 = v7 | 0x8000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x8000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFF7FFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

unint64_t _nw_quic_connection_get_retry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 3) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D032C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 8) == 0)
        {
          v8 = v7 | 8;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 8) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFF7;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0404(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x10) == 0)
        {
          v8 = v7 | 0x10;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x10) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFEFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D04DC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x20) == 0)
        {
          v8 = v7 | 0x20;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x20) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFDFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D05B4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x40) == 0)
        {
          v8 = v7 | 0x40;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x40) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFBFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D068C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x80) == 0)
        {
          v8 = v7 | 0x80;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x80) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFF7FLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0764(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x100) == 0)
        {
          v8 = v7 | 0x100;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x100) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFEFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D083C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x200) == 0)
        {
          v8 = v7 | 0x200;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x200) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFDFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0914(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      if (a2 == 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      if (!a2)
      {
        v7 = 0;
      }

      *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S) = v7;
    }
  }

  return result;
}

uint64_t sub_1820D09E4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x10000) == 0)
        {
          v8 = v7 | 0x10000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x10000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFEFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0ABC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x20000) == 0)
        {
          v8 = v7 | 0x20000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x20000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFDFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0B94(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x40000) == 0)
        {
          v8 = v7 | 0x40000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x40000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFBFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

unint64_t _nw_quic_connection_get_spin_bit_value()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 18) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D0D20(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x100000) == 0)
        {
          v8 = v7 | 0x100000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x100000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFEFFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0DF8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x200000) == 0)
        {
          v8 = v7 | 0x200000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x200000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFDFFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0ECC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v7 & 0x400000) == 0)
        {
          v8 = v7 | 0x400000;
LABEL_8:
          *(v6 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v8;
        }
      }

      else if ((v7 & 0x400000) != 0)
      {
        v8 = v7 & 0xFFFFFFFFFFBFFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0FBC(uint64_t a1, int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v6 = *(*result + 128);
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + v6);

    if (v8)
    {
      if (a2 == 3)
      {
        v9 = 2;
      }

      else
      {
        v9 = a2 == 2;
      }

      sub_18227FF0C(v9, a3);
    }
  }

  return result;
}

uint64_t sub_1820D1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v14 = *(*result + 128);
    v15 = result;
    swift_beginAccess();
    v16 = *(v15 + v14);

    if (v16)
    {
      v16[8] = a2;
      v16[9] = a3;
      v16[10] = a4;
      v16[11] = a5;
      v16[12] = a6;
      v16[13] = a7;
      v17 = *(v16 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if ((v17 & 0x80000) == 0)
      {
        *(v16 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v17 | 0x80000;
      }
    }
  }

  return result;
}

uint64_t sub_1820D1180(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 72);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1248(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 80);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1328(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 96);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D13F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 104);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D14B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 112);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1580(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 144);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1644(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 136);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D170C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v6 = *(v5 + 224);
      if (v6)
      {
        (*(v6 + 16))(v6, a2 & 1);
      }

      os_unfair_lock_unlock((*(v5 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D17D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      os_unfair_lock_lock((*(v5 + 256) + 16));
      v6 = *(v5 + 168);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }

      os_unfair_lock_unlock((*(v5 + 256) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + 64);

    if (v7)
    {
      os_unfair_lock_lock((*(v7 + 248) + 16));
      if (a2)
      {
        v8 = *(v7 + 200);
        if (v8)
        {
          (*(v8 + 16))(v8, a2, a3);
        }
      }

      os_unfair_lock_unlock((*(v7 + 248) + 16));
    }
  }

  return result;
}

uint64_t _nw_quic_iterate_tls_application_protocolsTm(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  a5(a1, a4, v9);
}

uint64_t sub_1820D1A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + 64);

    if (v7)
    {
      os_unfair_lock_lock((*(v7 + 248) + 16));
      v8 = *(v7 + 216);
      if (v8)
      {
        aBlock[4] = a2;
        aBlock[5] = a3;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1820D2260;
        aBlock[3] = &block_descriptor_15_0;
        v9 = _Block_copy(aBlock);
        v10 = *(v8 + 16);

        v10(v8, v9);
        _Block_release(v9);
      }

      os_unfair_lock_unlock((*(v7 + 248) + 16));
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_application_error_internal(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      *(v5 + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1820D1C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 64);

    if (v2)
    {
      os_unfair_lock_lock((*(v2 + 248) + 16));
      v3 = *(v2 + 128);
      if (v3)
      {
        v4 = (*(v3 + 16))();
      }

      else
      {
        v4 = 0;
      }

      os_unfair_lock_unlock((*(v2 + 248) + 16));

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1CD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 64);

    if (v2)
    {
      os_unfair_lock_lock((*(v2 + 248) + 16));
      v3 = *(v2 + 120);
      if (v3)
      {
        v4 = (*(v3 + 16))();
      }

      else
      {
        v4 = 0;
      }

      os_unfair_lock_unlock((*(v2 + 248) + 16));

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 64);

    if (v2)
    {
      os_unfair_lock_lock((*(v2 + 248) + 16));
      v3 = *(v2 + 160);
      if (v3)
      {
        v4 = (*(v3 + 16))();
      }

      else
      {
        v4 = 0;
      }

      os_unfair_lock_unlock((*(v2 + 248) + 16));

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1E68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 64);

    if (v2)
    {
      os_unfair_lock_lock((*(v2 + 248) + 16));
      v3 = *(v2 + 152);
      if (v3)
      {
        v4 = (*(v3 + 16))();
      }

      else
      {
        v4 = 0;
      }

      os_unfair_lock_unlock((*(v2 + 248) + 16));

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1F4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 64);

    if (v2)
    {
      os_unfair_lock_lock((*(v2 + 248) + 16));
      v3 = *(v2 + 192);
      if (v3)
      {
        v4 = (*(v3 + 16))();
      }

      else
      {
        v4 = 0;
      }

      os_unfair_lock_unlock((*(v2 + 248) + 16));

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_is_early_data_accepted()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  v0 = sub_181A93260();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  swift_beginAccess();
  v2 = *(v1 + 64);

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 232);

  return v3;
}

uint64_t _nw_quic_connection_set_application_error_reason(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      *(v4 + 24) = sub_182AD3158();
      *(v4 + 32) = v5;
    }
  }

  return result;
}

uint64_t sub_1820D2158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  result = sub_181A93260();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_beginAccess();
  v2 = *(v1 + 64);

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {

    return 0;
  }

  v4 = *(v2 + 24);
  if ((v3 & 0x1000000000000000) != 0)
  {
    result = sub_182AD3168();
    v5 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_9:

      v6 = sub_1820CD460(v4, v3, v5);

      return v6;
    }
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(v3) & 0xF;
    }

    else
    {
      result = v4 & 0xFFFFFFFFFFFFLL;
    }

    v5 = result + 1;
    if (!__OFADD__(result, 1))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1820D2260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

unint64_t sub_1820D22C0()
{
  result = qword_1EA838418;
  if (!qword_1EA838418)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838418);
  }

  return result;
}

unint64_t sub_1820D232C()
{
  result = qword_1ED40FD40;
  if (!qword_1ED40FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A3A0, &qword_182AE4BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40FD40);
  }

  return result;
}

uint64_t sub_1820D23C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_1820D2448@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = swift_slowAlloc();
  result = memcpy(v6, a1, v5);
  *a2 = v6;
  return result;
}

void static HTTPField.Name.cookie.getter(void *a1@<X8>)
{
  *a1 = 0x65696B6F6F43;
  a1[1] = 0xE600000000000000;
  a1[2] = 0x65696B6F6F63;
  a1[3] = 0xE600000000000000;
}

uint64_t static HTTPField.Name.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_182AD4268();
  }
}

unint64_t sub_1820D252C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    return 0;
  }

  v9 = a1;
  v10 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v17 = a4 & 0xFFFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v13 = v9 & 0xC;
    result = v9;
    if (v13 == v11)
    {
      result = sub_18208A330(v9, a3, a4);
    }

    if (result >> 14 < v4 || result >> 14 >= v5)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_182AD31C8();
      v15 = result;
      if (v13 != v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v18[0] = a3;
        v18[1] = v17;
        v15 = *(v18 + v14);
        if (v13 != v11)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v16;
        if ((a3 & 0x1000000000000000) == 0)
        {
          result = sub_182AD3CF8();
        }

        v15 = *(result + v14);
        if (v13 != v11)
        {
LABEL_23:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_24;
        }
      }
    }

    result = sub_18208A330(v9, a3, a4);
    v9 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_24:
    if (v12 <= v9 >> 16)
    {
      goto LABEL_37;
    }

    v9 = sub_182AD3178();
LABEL_9:
    if ((v15 - 33 > 0x3F || ((1 << (v15 - 33)) & 0xE00000000000367DLL) == 0) && v15 != 124 && v15 != 126 && (v15 - 58) <= 0xF5u && (v15 - 91) <= 0xE5u && (v15 - 123) < 0xE6u)
    {
      return 0;
    }

    if (v5 == v9 >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t HTTPField.Name.rawName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HTTPField.Name.canonicalName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double HTTPField.Name.init(_:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 && (sub_181CA3274(a1, a2) & 1) != 0)
  {
    v7 = sub_182AD3028();
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v7;
    a3[3] = v9;
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t HTTPField.Name.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820D2870()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820D28C4(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820D290C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_182AD4268();
  }
}

double HTTPField.Name.playgroundDescription.getter@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;

  return result;
}

double sub_1820D2958@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;

  return result;
}

uint64_t HTTPField.Name.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4618();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_182AD42B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t HTTPField.Name.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45C8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v5 = sub_182AD4288();
    v7 = v5;
    v8 = v6;
    if ((sub_181CBD984(v5, v6) & 0x1FF) == 0x3A)
    {
      if (sub_182AD3028() == v7 && v9 == v8)
      {
      }

      else
      {
        v11 = sub_182AD4268();

        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v16 = sub_181DDDBAC(1uLL, v7, v8);
      v18 = v17;
      v20 = v19;
      v22 = v21;

      LOBYTE(v16) = sub_1820D252C(v16, v18, v20, v22);

      if ((v16 & 1) == 0)
      {
LABEL_20:
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BDD400);
LABEL_21:
        MEMORY[0x1865D9CA0](v7, v8);

        MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD79F0);
        sub_182AD3C98();
        swift_allocError();
        sub_182AD3C58();

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v24);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v13 = v7;
      v15 = v8;
    }

    else
    {
      v12 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v12 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (sub_181CA3274(v7, v8) & 1) == 0)
      {
        sub_182AD3BA8();

        goto LABEL_21;
      }

      v13 = sub_182AD3028();
      v15 = v14;
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v13;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}