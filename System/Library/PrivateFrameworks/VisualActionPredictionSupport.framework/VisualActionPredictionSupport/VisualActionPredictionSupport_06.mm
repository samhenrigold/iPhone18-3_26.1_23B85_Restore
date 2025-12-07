uint64_t ServiceSession.registerMessageHandler<A>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v21[0] = a2;
  v11 = sub_1D9F2AF8C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9F2AFFC();
  v15 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v6 + *(*v6 + 120));
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = v6;
  v18[5] = a1;
  v18[6] = v21[0];
  v18[7] = a3;
  aBlock[4] = sub_1D9EC62A8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_30;
  v19 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_1D9EC1FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a1;
  v11 = sub_1D9F2B02C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v5 + *(*v5 + 152)) != 1)
  {
    goto LABEL_6;
  }

  v34 = a2;
  v35 = a3;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v15, qword_1EE0F2380);

    v16 = sub_1D9F2AE6C();
    v17 = sub_1D9F2B42C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = a5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v36 = a4;
      v21 = v20;
      v39[0] = v20;
      *v19 = 136315650;
      v22 = sub_1D9F2BBBC();
      v24 = sub_1D9E71CA4(v22, v23, v39);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1D9E71CA4(0xD00000000000001FLL, 0x80000001D9F49630, v39);
      *(v19 + 22) = 2080;
      v25 = (*(v37 + 40))(v36, v37);
      v27 = sub_1D9E71CA4(v25, v26, v39);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_1D9E39000, v16, v17, "%s.%s messageType = %s", v19, 0x20u);
      swift_arrayDestroy();
      v28 = v21;
      a4 = v36;
      MEMORY[0x1DA744270](v28, -1, -1);
      v29 = v19;
      a5 = v37;
      MEMORY[0x1DA744270](v29, -1, -1);
    }

    a2 = v34;
    a3 = v35;
LABEL_6:
    v30 = *(v6 + *(*v6 + 120));
    *v14 = v30;
    (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
    v31 = v30;
    LOBYTE(v30) = sub_1D9F2B04C();
    v32 = *(v12 + 8);
    v12 += 8;
    v32(v14, v11);
    if (v30)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  swift_beginAccess();
  sub_1D9EAE818(v38, a2, a3, a4, a5);
  return swift_endAccess();
}

uint64_t ServiceSession.registerAsyncMessageHandler<A>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  v12[2] = *(v11 + 80);
  v12[3] = a4;
  v12[4] = *(v11 + 88);
  v12[5] = a5;
  v12[6] = a2;
  v12[7] = a3;

  ServiceSession.registerMessageHandler<A>(for:_:)(a1, sub_1D9EC62D8, v12, a4, a5);
}

uint64_t sub_1D9EC2400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a4;
  v28 = a8;
  v26 = a6;
  v29 = a2;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - v17;
  v19 = sub_1D9F2B32C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a1, a7);
  v20 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v26;
  *(v22 + 5) = a7;
  v23 = v27;
  *(v22 + 6) = v28;
  *(v22 + 7) = a9;
  *(v22 + 8) = v23;
  *(v22 + 9) = a5;
  (*(v13 + 32))(&v22[v20], v15, a7);
  v24 = &v22[v21];
  *v24 = v29;
  v24[1] = a3;

  sub_1D9E7F08C(0, 0, v18, &unk_1D9F3D0F8, v22);
}

uint64_t sub_1D9EC2628(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[4] = AssociatedTypeWitness;
  v8[5] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v8[6] = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_1D9EC27B0;

  return v15(v12, a6);
}

uint64_t sub_1D9EC27B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9EC28AC, 0, 0);
}

uint64_t sub_1D9EC28AC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t ServiceSession.unregisterMessageHandler<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9F2AF8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9F2AFFC();
  v11 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + *(*v3 + 120));
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v3;
  v14[5] = a1;
  aBlock[4] = sub_1D9EC6308;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_39;
  v15 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

uint64_t sub_1D9EC2C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9F2B02C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + *(*v3 + 152)) != 1)
  {
    goto LABEL_6;
  }

  v31 = a1;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v12, qword_1EE0F2380);

    v13 = sub_1D9F2AE6C();
    v14 = sub_1D9F2B42C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v33 = a3;
      v34[0] = v17;
      v18 = v17;
      *v16 = 136315650;
      v19 = sub_1D9F2BBBC();
      v21 = sub_1D9E71CA4(v19, v20, v34);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D9E71CA4(0xD00000000000001FLL, 0x80000001D9F49610, v34);
      *(v16 + 22) = 2080;
      v22 = (*(v33 + 40))(v32, v33);
      v24 = sub_1D9E71CA4(v22, v23, v34);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1D9E39000, v13, v14, "%s.%s messageType = %s", v16, 0x20u);
      swift_arrayDestroy();
      v25 = v18;
      a3 = v33;
      MEMORY[0x1DA744270](v25, -1, -1);
      v26 = v16;
      a2 = v32;
      MEMORY[0x1DA744270](v26, -1, -1);
    }

    a1 = v31;
LABEL_6:
    v27 = *(v4 + *(*v4 + 120));
    *v11 = v27;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
    v28 = v27;
    LOBYTE(v27) = sub_1D9F2B04C();
    v29 = *(v9 + 8);
    v9 += 8;
    v29(v11, v8);
    if (v27)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  swift_beginAccess();
  sub_1D9EAE924(a1, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1D9EC2FD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9EC3030(a1);
  }

  return result;
}

void sub_1D9EC3030(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D9F2B02C();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v4 + 88);
  v83 = *(v4 + 80);
  v84 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v70 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v74 = &v70 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v22 = sub_1D9F2AE8C();
  v23 = __swift_project_value_buffer(v22, qword_1EE0F2380);
  v81 = *(v10 + 16);
  v81(v21, a1, AssociatedTypeWitness);

  v73 = v23;
  v24 = sub_1D9F2AE6C();
  v25 = sub_1D9F2B42C();

  v26 = os_log_type_enabled(v24, v25);
  v77 = v10 + 16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v78 = v10;
    v82 = AssociatedTypeWitness;
    v28 = v27;
    v71 = swift_slowAlloc();
    v85 = v71;
    *v28 = 136315650;
    v29 = sub_1D9F2BBBC();
    v31 = sub_1D9E71CA4(v29, v30, &v85);
    v75 = a1;
    v32 = v31;

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1D9E71CA4(0xD000000000000010, 0x80000001D9F48D80, &v85);
    *(v28 + 22) = 2080;
    v33 = v81;
    v81(v19, v21, v82);
    v34 = sub_1D9F2B13C();
    v36 = v35;
    v37 = v21;
    v38 = *(v78 + 8);
    v38(v37, v82);
    v39 = sub_1D9E71CA4(v34, v36, &v85);

    *(v28 + 24) = v39;
    a1 = v75;
    _os_log_impl(&dword_1D9E39000, v24, v25, "%s.%s error = %s", v28, 0x20u);
    v40 = v71;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v40, -1, -1);
    v41 = v28;
    AssociatedTypeWitness = v82;
    v42 = v78;
    MEMORY[0x1DA744270](v41, -1, -1);

    v43 = v33;
    v10 = v42;
  }

  else
  {

    v44 = v21;
    v38 = *(v10 + 8);
    v38(v44, AssociatedTypeWitness);
    v43 = v81;
  }

  v45 = *(v2 + *(*v2 + 120));
  *v7 = v45;
  v47 = v79;
  v46 = v80;
  (v79[13])(v7, *MEMORY[0x1E69E8020], v80);
  v48 = v45;
  LOBYTE(v45) = sub_1D9F2B04C();
  (v47[1])(v7, v46);
  if (v45)
  {
    LOBYTE(v85) = *(v2 + qword_1EE0FF690);
    if ((*(v84 + 72))(a1, &v85))
    {
      v49 = v74;
      v43(v74, a1, AssociatedTypeWitness);

      v50 = sub_1D9F2AE6C();
      v51 = sub_1D9F2B42C();
      v52 = os_log_type_enabled(v50, v51);
      v82 = v38;
      if (v52)
      {
        LODWORD(v80) = v51;
        v75 = a1;
        v78 = v10;
        v53 = v43;
        v54 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v85 = v79;
        *v54 = 136315394;
        v55 = ServiceSession.description.getter();
        v57 = v56;

        v58 = sub_1D9E71CA4(v55, v57, &v85);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2112;
        v59 = v72;
        v53(v72, v49, AssociatedTypeWitness);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        if (sub_1D9F2BA0C())
        {
          v60 = v78;
          v61 = v82;
          v82(v59, AssociatedTypeWitness);
        }

        else
        {
          swift_allocError();
          v60 = v78;
          (*(v78 + 32))(v62, v59, AssociatedTypeWitness);
          v61 = v82;
        }

        v63 = _swift_stdlib_bridgeErrorToNSError();
        v61(v49, AssociatedTypeWitness);
        *(v54 + 14) = v63;
        v64 = v73;
        *v73 = v63;
        _os_log_impl(&dword_1D9E39000, v50, v80, "%s Nonrecoverable error %@ encountered. Cancelling service session...", v54, 0x16u);
        sub_1D9E51FE8(v64, &unk_1ECB73B60, &unk_1D9F32210);
        MEMORY[0x1DA744270](v64, -1, -1);
        v65 = v79;
        __swift_destroy_boxed_opaque_existential_1(v79);
        MEMORY[0x1DA744270](v65, -1, -1);
        MEMORY[0x1DA744270](v54, -1, -1);

        v10 = v60;
        a1 = v75;
        v43 = v81;
      }

      else
      {

        v38(v49, AssociatedTypeWitness);
      }

      v66 = v76;
      v43(v76, a1, AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v67 = sub_1D9F2BA0C();
      if (v67)
      {
        v68 = v67;
        v82(v66, AssociatedTypeWitness);
      }

      else
      {
        v68 = swift_allocError();
        (*(v10 + 32))(v69, v66, AssociatedTypeWitness);
      }

      v85 = v68;
      v86 = 0;
      v87 = 0;
      sub_1D9EBB3A0(&v85);
      sub_1D9E84B4C(v85, v86, v87);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9EC3934(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9EC39B0(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1D9EC39B0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = type metadata accessor for ServiceEnvelope(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9F2B02C();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + *(*v4 + 120));
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  v16 = sub_1D9F2B04C();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v18(v13, v10);
  if (v16)
  {
    v19 = *(*v4 + 136);
    swift_beginAccess();
    v20 = *(v4 + v19);
    v21 = swift_allocObject();
    v21[2] = v15;
    v21[3] = a2;
    v21[4] = a3;
    v22 = v15;

    sub_1D9EAED74(v39, sub_1D9E84EEC, v21, v20);
  }

  else
  {
    __break(1u);
    swift_once();
    v23 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v23, qword_1EE0F2380);

    v24 = v10;
    v25 = sub_1D9F2AE6C();
    v26 = sub_1D9F2B43C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v27 = 136315394;
      v29 = ServiceSession.description.getter();
      v38[1] = v17;
      v31 = v30;

      v32 = sub_1D9E71CA4(v29, v31, v40);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_1D9F2BAAC();
      v35 = sub_1D9E71CA4(v33, v34, v40);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1D9E39000, v25, v26, "%s failed to handle incoming envelope due to error %s.", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v28, -1, -1);
      MEMORY[0x1DA744270](v27, -1, -1);
    }

    else
    {
    }

    sub_1D9F2A93C();
    sub_1D9F2ACFC();
    *&v9[v7[6]] = 6;
    v37 = &v9[v7[7]];
    *v37 = 0;
    *(v37 + 1) = 0;
    *&v9[v7[8]] = xmmword_1D9F334C0;
    *&v9[v7[9]] = 0;
    v39(v9);

    return sub_1D9E72374(v9);
  }
}

uint64_t sub_1D9EC3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = sub_1D9F2AF8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9F2AFFC();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  *(v16 + 48) = a1;
  aBlock[4] = sub_1D9EC6CD8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_65;
  v17 = _Block_copy(aBlock);

  sub_1D9E84B2C(v14, v15, a1);
  sub_1D9F2AFAC();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v13, v10, v17);
  _Block_release(v17);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_1D9EC40DC(void *a1, void *a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, NSObject *a7, void *a8, double a9, uint64_t a10, uint64_t a11)
{
  v173 = a7;
  v168 = a6;
  v181 = a5;
  v182 = a4;
  v174 = a1;
  v170 = *(a10 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v172 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v160 - v17;
  v167 = v18;
  v175 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v164 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v161 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v162 = &v160 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v166 = &v160 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v165 = &v160 - v27;
  v28 = type metadata accessor for ServiceEnvelope(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v169 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C50, &qword_1D9F3D100);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v160 - v31);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v171 = AssociatedTypeWitness;
  v180 = sub_1D9F2BB5C();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = (&v160 - v33);
  v177 = a8;
  v176 = a11;
  v35 = type metadata accessor for ServiceSession.State(0, a8, a11, v34);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v160 - v37;
  v39 = sub_1D9F2B02C();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = (&v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v42 = a2;
  (*(v40 + 104))(v42, *MEMORY[0x1E69E8020], v39);
  v43 = a2;
  LOBYTE(a2) = sub_1D9F2B04C();
  (*(v40 + 8))(v42, v39);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = *(*Strong + 128);
    swift_beginAccess();
    (*(v36 + 16))(v38, v45 + v46, v35);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v48 = swift_getAssociatedTypeWitness();
        (*(*(v48 - 8) + 8))(v38, v48);
        sub_1D9EC6C5C(v174, v32);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v49 = *v32;
          v50 = v175;
          if (qword_1EE0F2378 != -1)
          {
            swift_once();
          }

          v51 = sub_1D9F2AE8C();
          __swift_project_value_buffer(v51, qword_1EE0F2380);
          v52 = v170;
          v53 = v172;
          (*(v170 + 16))(v172, v168, v50);

          v54 = v49;
          v55 = sub_1D9F2AE6C();
          v56 = sub_1D9F2B43C();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = v52;
            v58 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v183 = v177;
            *v58 = 136315906;
            v59 = ServiceSession.description.getter();
            v61 = v60;

            v62 = sub_1D9E71CA4(v59, v61, &v183);

            *(v58 + 4) = v62;
            *(v58 + 12) = 2080;
            ErrorValue = swift_getErrorValue();
            MEMORY[0x1EEE9AC00](ErrorValue);
            (*(v65 + 16))(&v160 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
            v66 = sub_1D9F2B13C();
            v68 = sub_1D9E71CA4(v66, v67, &v183);

            *(v58 + 14) = v68;
            *(v58 + 22) = 2080;
            v69 = v172;
            swift_getDynamicType();
            v70 = sub_1D9F2BBBC();
            v72 = v71;
            (*(v57 + 8))(v69, v50);
            v73 = sub_1D9E71CA4(v70, v72, &v183);

            *(v58 + 24) = v73;
            *(v58 + 32) = 2048;
            *(v58 + 34) = CFAbsoluteTimeGetCurrent() - a9;
            _os_log_impl(&dword_1D9E39000, v55, v56, "%s received error %s for message %s, took %f seconds.", v58, 0x2Au);
            v74 = v177;
            swift_arrayDestroy();
            MEMORY[0x1DA744270](v74, -1, -1);
            MEMORY[0x1DA744270](v58, -1, -1);
          }

          else
          {

            (*(v52 + 8))(v53, v50);
          }

          v125 = v182;
          v126 = v180;
          v127 = v179;
          v128 = v178;
          *v178 = v49;
          swift_storeEnumTagMultiPayload();
          v129 = v49;
          v125(v128);

          return (*(v127 + 8))(v128, v126);
        }

        else
        {
          v109 = v169;
          sub_1D9EC6BF8(v32, v169);
          v110 = v175;
          v111 = v171;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v113 = v166;
          sub_1D9E3FDA4(v111, v111, AssociatedConformanceWitness, v166);
          v130 = v164;
          (*(v164 + 32))(v165, v113, v111);
          v131 = v170;
          if (*(v45 + *(*v45 + 152)))
          {
            if (qword_1EE0F2378 != -1)
            {
              swift_once();
            }

            v132 = sub_1D9F2AE8C();
            __swift_project_value_buffer(v132, qword_1EE0F2380);
            v133 = v162;
            v177 = *(v130 + 16);
            (v177)(v162, v165, v111);
            v134 = v163;
            (*(v131 + 16))(v163, v168, v110);

            v135 = sub_1D9F2AE6C();
            LODWORD(v176) = sub_1D9F2B41C();
            if (os_log_type_enabled(v135, v176))
            {
              v136 = v130;
              v137 = swift_slowAlloc();
              v174 = swift_slowAlloc();
              v183 = v174;
              *v137 = 136315906;
              v173 = v135;
              v138 = ServiceSession.description.getter();
              v140 = v139;

              v141 = sub_1D9E71CA4(v138, v140, &v183);

              *(v137 + 4) = v141;
              *(v137 + 12) = 2080;
              v142 = v161;
              (v177)(v161, v133, v171);
              swift_getDynamicType();
              v143 = *(v136 + 8);
              v143(v142, v171);
              v144 = sub_1D9F2BBBC();
              v146 = v145;
              v143(v133, v171);
              v147 = sub_1D9E71CA4(v144, v146, &v183);

              *(v137 + 14) = v147;
              *(v137 + 22) = 2080;
              v148 = v163;
              v149 = v175;
              swift_getDynamicType();
              v150 = sub_1D9F2BBBC();
              v152 = v151;
              (*(v131 + 8))(v148, v149);
              v153 = sub_1D9E71CA4(v150, v152, &v183);
              v111 = v171;

              *(v137 + 24) = v153;
              *(v137 + 32) = 2048;
              *(v137 + 34) = CFAbsoluteTimeGetCurrent() - a9;
              v154 = v173;
              _os_log_impl(&dword_1D9E39000, v173, v176, "%s received reply %s for message %s, took %f seconds.", v137, 0x2Au);
              v155 = v174;
              swift_arrayDestroy();
              MEMORY[0x1DA744270](v155, -1, -1);
              MEMORY[0x1DA744270](v137, -1, -1);

              v109 = v169;
            }

            else
            {

              (*(v130 + 8))(v133, v111);
              (*(v131 + 8))(v134, v110);
              v109 = v169;
              v136 = v130;
            }

            v156 = v177;
          }

          else
          {
            v156 = *(v130 + 16);
            v136 = v130;
          }

          v157 = v178;
          v158 = v165;
          v156(v178, v165, v111);
          v159 = v180;
          swift_storeEnumTagMultiPayload();
          v182(v157);

          (*(v179 + 8))(v157, v159);
          (*(v136 + 8))(v158, v111);
          return sub_1D9E72374(v109);
        }
      }

      else
      {
        v97 = *v38;
        v98 = *(v38 + 1);
        v99 = v38[16];
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v100 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v100, qword_1EE0F2380);

        v101 = sub_1D9F2AE6C();
        v102 = sub_1D9F2B43C();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v183 = v104;
          *v103 = 136315138;
          v105 = ServiceSession.description.getter();
          v107 = v106;

          v108 = sub_1D9E71CA4(v105, v107, &v183);

          *(v103 + 4) = v108;
          _os_log_impl(&dword_1D9E39000, v101, v102, "%s received reply envelope after cancellation.", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x1DA744270](v104, -1, -1);
          MEMORY[0x1DA744270](v103, -1, -1);
        }

        else
        {
        }

        sub_1D9E3F7D8();
        v121 = swift_allocError();
        *v122 = v97;
        *(v122 + 8) = v98;
        *(v122 + 16) = v99;
        v123 = v178;
        *v178 = v121;
        v124 = v180;
        swift_storeEnumTagMultiPayload();
        sub_1D9E84B2C(v97, v98, v99);
        v182(v123);

        sub_1D9E84B4C(v97, v98, v99);
        return (*(v179 + 8))(v123, v124);
      }
    }

    else
    {
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v88 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v88, qword_1EE0F2380);

      v89 = sub_1D9F2AE6C();
      v90 = sub_1D9F2B43C();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v183 = v92;
        *v91 = 136315138;
        v93 = ServiceSession.description.getter();
        v95 = v94;

        v96 = sub_1D9E71CA4(v93, v95, &v183);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_1D9E39000, v89, v90, "%s received reply envelope before activation.", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1DA744270](v92, -1, -1);
        MEMORY[0x1DA744270](v91, -1, -1);
      }

      else
      {
      }

      v114 = v182;
      v115 = v180;
      v116 = v179;
      v117 = v178;
      sub_1D9E3F7D8();
      v118 = swift_allocError();
      *v119 = 0;
      *(v119 + 8) = 0;
      *(v119 + 16) = 0x80;
      *v117 = v118;
      swift_storeEnumTagMultiPayload();
      v114(v117);

      (*(v116 + 8))(v117, v115);
      swift_getAssociatedTypeWitness();
      v120 = sub_1D9F2B59C();
      return (*(*(v120 - 8) + 8))(v38, v120);
    }
  }

  a3 = v182;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_39;
  }

LABEL_11:
  v75 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v75, qword_1EE0F2380);
  v76 = sub_1D9F2AE6C();
  v77 = sub_1D9F2B43C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v184 = v79;
    *v78 = 136315138;
    swift_getMetatypeMetadata();
    v80 = sub_1D9F2BBBC();
    v82 = sub_1D9E71CA4(v80, v81, &v184);

    *(v78 + 4) = v82;
    _os_log_impl(&dword_1D9E39000, v76, v77, "%s received reply envelope but connection is already deallocated.", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1DA744270](v79, -1, -1);
    MEMORY[0x1DA744270](v78, -1, -1);
  }

  sub_1D9E3F7D8();
  v83 = swift_allocError();
  *v84 = xmmword_1D9F3CFD0;
  *(v84 + 16) = 0x80;
  v85 = v178;
  *v178 = v83;
  v86 = v180;
  swift_storeEnumTagMultiPayload();
  a3(v85);
  return (*(v179 + 8))(v85, v86);
}

uint64_t sub_1D9EC56C4(char *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a3;
  v37 = a1;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C50, &qword_1D9F3D100);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v35 = (v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = v34 - v14;
  v16 = type metadata accessor for ServiceEnvelope(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v19 = sub_1D9F2BB5C();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v34 - v20;
  (*(v22 + 16))(v34 - v20, v37, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34[1] = v11;
    v24 = v38;
    v23 = v39;
    v25 = *(v39 + 32);
    v25(v10, v21, AssociatedTypeWitness);
    v26 = *(v23 + 16);
    v27 = v36;
    v37 = v10;
    v26(v36, v10, AssociatedTypeWitness);
    v28 = sub_1D9F2BA0C();
    if (v28)
    {
      v29 = v28;
      v30 = v39;
      (*(v39 + 8))(v27, AssociatedTypeWitness);
    }

    else
    {
      v29 = swift_allocError();
      v25(v32, v27, AssociatedTypeWitness);
      v30 = v39;
    }

    v33 = v35;
    *v35 = v29;
    swift_storeEnumTagMultiPayload();
    v24(v33);
    sub_1D9E51FE8(v33, &qword_1ECB74C50, &qword_1D9F3D100);
    return (*(v30 + 8))(v37, AssociatedTypeWitness);
  }

  else
  {
    sub_1D9EC6BF8(v21, v18);
    sub_1D9E72310(v18, v15);
    swift_storeEnumTagMultiPayload();
    v38(v15);
    sub_1D9E51FE8(v15, &qword_1ECB74C50, &qword_1D9F3D100);
    return sub_1D9E72374(v18);
  }
}

uint64_t sub_1D9EC5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = sub_1D9F2AF8C();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9F2AFFC();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ServiceEnvelope(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1D9E72310(a1, &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_1D9EC6BF8(&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1D9EC6D78;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_84;
  v18 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v12, v9, v18);
  _Block_release(v18);
  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);
}

uint64_t ServiceSession.description.getter()
{
  sub_1D9F2B68C();
  v1 = sub_1D9F2BBBC();

  MEMORY[0x1DA742F90](0x20656D616E207B20, 0xEA0000000000203DLL);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  MEMORY[0x1DA742F90](v5);

  MEMORY[0x1DA742F90](0x203D206469202CLL, 0xE700000000000000);
  sub_1D9F2AD7C();
  sub_1D9EC6994(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v6 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v6);

  MEMORY[0x1DA742F90](0x3D20656C6F72202CLL, 0xE900000000000020);
  if (*(v0 + qword_1EE0FF690))
  {
    v7 = 0x726576726573;
  }

  else
  {
    v7 = 0x746E65696C63;
  }

  MEMORY[0x1DA742F90](v7, 0xE600000000000000);

  MEMORY[0x1DA742F90](32032, 0xE200000000000000);
  return v1;
}

uint64_t sub_1D9EC6114(uint64_t (*a1)(void))
{
  a1();

  return sub_1D9F2BBBC();
}

uint64_t sub_1D9EC620C()
{
  v1 = (*(*(*(v0 + 24) - 8) + 80) + 56) & ~*(*(*(v0 + 24) - 8) + 80);
  v2 = (*(*(*(v0 + 24) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9EBEA8C(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + 24), *(v0 + 40));
}

uint64_t sub_1D9EC637C(uint64_t a1)
{
  result = sub_1D9F2AD7C();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 80);
    v4 = *(a1 + 88);
    result = swift_getAssociatedTypeWitness();
    if (v7 <= 0x3F)
    {
      result = type metadata accessor for ServiceSession.State(319, v5, v4, v6);
      if (v8 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D9EC6500(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = v2;
  result = sub_1D9F2B59C();
  if (v5 <= 0x3F)
  {
    if (v3 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      result = sub_1D9EC6964();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D9EC65BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = 17;
  if (v7 > 0x11)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v13 < 2)
    {
LABEL_30:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_30;
  }

LABEL_19:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_1D9EC674C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  if (*(v7 + 84))
  {
    v9 = *(v7 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v8 > v9)
  {
    v9 = *(v7 + 64);
  }

  if (v9 <= 0x11)
  {
    v9 = 17;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_44:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v9] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_29;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

ValueMetadata *sub_1D9EC6964()
{
  result = qword_1EE0F2A00;
  if (!qword_1EE0F2A00)
  {
    result = &type metadata for CancellationReason;
    atomic_store(&type metadata for CancellationReason, &qword_1EE0F2A00);
  }

  return result;
}

uint64_t sub_1D9EC6994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EC69DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D9E7ECAC;

  return sub_1D9EC2628(a1, v6, v7, v8, v9, v1 + v5, v11, v12);
}

uint64_t sub_1D9EC6B44(void *a1)
{
  v2 = (*(*(*(v1 + 24) - 8) + 80) + 80) & ~*(*(*(v1 + 24) - 8) + 80);
  v3 = (*(*(*(v1 + 24) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9EC40DC(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v2, *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 16), *(v1 + v3), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1D9EC6BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEnvelope(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EC6C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C50, &qword_1D9F3D100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EC6CD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

uint64_t objectdestroy_55Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t withTimeout<A>(policy:usesTask:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 88) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  *(v6 + 89) = *(a2 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1D9EC6E58, 0, 0);
}

uint64_t sub_1D9EC6E58()
{
  if (*(v0 + 89))
  {
    v11 = (*(v0 + 24) + **(v0 + 24));
    v1 = swift_task_alloc();
    *(v0 + 80) = v1;
    *v1 = v0;
    v1[1] = sub_1D9EC717C;
    v2 = *(v0 + 16);

    return v11(v2);
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 40);
    v6 = *(v0 + 88);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    v8 = *(v0 + 24);
    *(v7 + 16) = v5;
    *(v7 + 24) = v8;
    *(v7 + 40) = v6;
    *(v7 + 48) = v4;
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_1D9EC7040;
    v10 = *(v0 + 16);

    return MEMORY[0x1EEE6DD58](v10);
  }
}

uint64_t sub_1D9EC7040()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9EC7270, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D9EC717C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D9EC7270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9EC72D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, double a7)
{
  *(v7 + 56) = a6;
  *(v7 + 48) = a7;
  *(v7 + 96) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1D9F2B59C();
  *(v7 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  *(v7 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9EC73B0, 0, 0);
}

uint64_t sub_1D9EC73B0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v15 = *(v0 + 96);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_1D9F2B32C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v4;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v9 = sub_1D9F2B3CC();
  sub_1D9EC7AD0(v1, &unk_1D9F3D128, v8, v9);
  sub_1D9EC8B0C(v1);
  v7(v1, 1, 1, v6);
  if (v15)
  {
    v10 = &unk_1D9F3D148;
  }

  else
  {
    v10 = &unk_1D9F3D138;
  }

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v3;
  sub_1D9EC7AD0(v1, v10, v11, v9);
  sub_1D9EC8B0C(v1);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_1D9EC75FC;
  v13 = *(v0 + 64);

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v9);
}

uint64_t sub_1D9EC75FC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D9EC784C;
  }

  else
  {
    v2 = sub_1D9EC7710;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9EC7710()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
    sub_1D9F2B3BC();

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_1D9EC784C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
  sub_1D9F2B3BC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9EC78FC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D9E7ECAC;

  return sub_1D9EC72D4(a1, a2, v7, v8, v9, v6, v10);
}

uint64_t sub_1D9EC79D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D9E7ECAC;

  return v8(a1);
}

uint64_t sub_1D9EC7AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1D9EC92F8(a1, v19 - v9);
  v11 = sub_1D9F2B32C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9EC8B0C(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1D9F2B2CC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D9F2B31C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1D9EC7CA4(double a1)
{
  *(v1 + 32) = a1;
  v2 = sub_1D9F2B73C();
  *(v1 + 40) = v2;
  *(v1 + 48) = *(v2 - 8);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9EC7D64, 0, 0);
}

void sub_1D9EC7D64()
{
  v2 = *(v0 + 32) * 1000000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = 1000000000 * v2;
  v4 = (v2 * 0x3B9ACA00uLL) >> 64;
  sub_1D9F2BA9C();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1D9EC7E90;

  sub_1D9EC8CFC(v3, v4, 0, 0, 0);
}

uint64_t sub_1D9EC7E90()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D9EC8110;
  }

  else
  {
    v5 = sub_1D9EC8000;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D9EC8000()
{
  sub_1D9F2B68C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA742F90](0xD000000000000010, 0x80000001D9F49680);
  sub_1D9F2B3DC();
  MEMORY[0x1DA742F90](46, 0xE100000000000000);
  v1 = v0[2];
  v2 = v0[3];
  sub_1D9EC91B4();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9EC8110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9EC8174(double a1)
{
  *(v1 + 40) = a1;
  *(v1 + 48) = type metadata accessor for WatchdogTimer.Configuration(0);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9EC8208, 0, 0);
}

uint64_t sub_1D9EC8208()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  type metadata accessor for WatchdogTimer(0);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  v5 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = 0;
  *(v4 + v5) = v6;
  v7 = v3 * 1000000000.0;
  if (COERCE__INT64(fabs(v3 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DE18]();
  }

  v8 = *(v2 + 20);
  *&v1[v8] = v7;
  v9 = *MEMORY[0x1E69E7F28];
  v10 = sub_1D9F2AF7C();
  v11 = *(*(v10 - 8) + 104);
  v11(&v1[v8], v9, v10);
  v12 = *(v2 + 24);
  *&v1[v12] = 0;
  v11(&v1[v12], v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
  sub_1D9F2B4CC();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9F2F8F0;
  sub_1D9F2B4BC();
  *(v0 + 32) = v13;
  sub_1D9EC9208(&qword_1EE0F10E8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
  sub_1D9EA1388();
  sub_1D9F2B5FC();
  sub_1D9F2AFDC();
  *v1 = 0xD00000000000005BLL;
  *(v1 + 1) = 0x80000001D9F496A0;
  sub_1D9EA13EC(v1, v4 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_1D9EC8578;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1D9EC8578()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D9EC87A4;
  }

  else
  {
    v2 = sub_1D9EC868C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9EC868C()
{
  sub_1D9F2B68C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA742F90](0xD000000000000010, 0x80000001D9F49680);
  sub_1D9F2B3DC();
  MEMORY[0x1DA742F90](46, 0xE100000000000000);
  v1 = v0[2];
  v2 = v0[3];
  sub_1D9EC91B4();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9EC87A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9EC8830()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9EC8900;
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0x29286E7572, 0xE500000000000000, sub_1D9EC92F0, v2, &type metadata for WatchdogTimer.Termination);
}

uint64_t sub_1D9EC8900()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1D9EC8A2C;
  }

  else
  {
    v2 = sub_1D9EC8A14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9EC8A44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9E851B0;

  return sub_1D9EC79D8(a1, v4, v5, v6);
}

uint64_t sub_1D9EC8B0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9EC8B74()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D9E851B0;

  return sub_1D9EC8174(v2);
}

uint64_t sub_1D9EC8C38()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D9E851B0;

  return sub_1D9EC7CA4(v2);
}

uint64_t sub_1D9EC8CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D9F2B71C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D9EC8DFC, 0, 0);
}

uint64_t sub_1D9EC8DFC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D9F2B73C();
  v5 = sub_1D9EC9208(&qword_1ECB74C60, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D9F2BA7C();
  sub_1D9EC9208(&qword_1ECB74C68, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D9F2B74C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D9EC8F8C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D9EC8F8C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9EC9148, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D9EC9148()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D9EC91B4()
{
  result = qword_1ECB74C58;
  if (!qword_1ECB74C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C58);
  }

  return result;
}

uint64_t sub_1D9EC9208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EC9250(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D9E851B0;

  return sub_1D9EC8810(a1, v1);
}

uint64_t sub_1D9EC92F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ExecutionFailure.isDeveloperError.getter()
{
  v1 = type metadata accessor for ExecutionFailure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EC9454(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() == 3;
  sub_1D9EC94B8(v3);
  return v4;
}

uint64_t type metadata accessor for ExecutionFailure(uint64_t a1)
{
  result = qword_1ECB74E50;
  if (!qword_1ECB74E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9EC9454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionFailure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EC94B8(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionFailure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExecutionFailure.localizedDeveloperErrorMessage.getter()
{
  v1 = type metadata accessor for ExecutionFailure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EC9454(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    return *v3;
  }

  sub_1D9EC94B8(v3);
  return 0;
}

uint64_t sub_1D9EC95C4(char a1)
{
  result = 0x6F4C656369766564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      v3 = 0x797469746E65;
      goto LABEL_12;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      v3 = 0x6E6F69746361;
LABEL_12:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F4E000000000000;
      break;
    case 8:
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0x4574694B6C6F6F74;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x6573616261746164;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x65706F6C65766564;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D9EC97EC(uint64_t a1)
{
  v2 = sub_1D9ECECA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9828(uint64_t a1)
{
  v2 = sub_1D9ECECA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9864(uint64_t a1)
{
  v2 = sub_1D9ECEC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC98A0(uint64_t a1)
{
  v2 = sub_1D9ECEC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC98DC(uint64_t a1)
{
  v2 = sub_1D9ECEBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9918(uint64_t a1)
{
  v2 = sub_1D9ECEBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9954(uint64_t a1)
{
  v2 = sub_1D9ECECF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9990(uint64_t a1)
{
  v2 = sub_1D9ECECF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC99CC(uint64_t a1)
{
  v2 = sub_1D9ECEDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9A08(uint64_t a1)
{
  v2 = sub_1D9ECEDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9A4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9ED03BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EC9A80(uint64_t a1)
{
  v2 = sub_1D9ECE8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9ABC(uint64_t a1)
{
  v2 = sub_1D9ECE8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9EC9AF8()
{
  v1 = 0x797469746E656469;
  v2 = 0x65746F6D65527369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x4972656C646E6168;
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

uint64_t sub_1D9EC9B7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9ED095C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EC9BA4(uint64_t a1)
{
  v2 = sub_1D9ECEA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9BE0(uint64_t a1)
{
  v2 = sub_1D9ECEA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9C1C()
{
  v1 = 0x4972656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x65746F6D65527369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1D9EC9C7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9ED0AD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EC9CA4(uint64_t a1)
{
  v2 = sub_1D9ECEAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9CE0(uint64_t a1)
{
  v2 = sub_1D9ECEAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EC9DBC(uint64_t a1)
{
  v2 = sub_1D9ECEAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9DF8(uint64_t a1)
{
  v2 = sub_1D9ECEAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9E34(uint64_t a1)
{
  v2 = sub_1D9ECE9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9E70(uint64_t a1)
{
  v2 = sub_1D9ECE9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D9F498E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9EC9F5C(uint64_t a1)
{
  v2 = sub_1D9ECE904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9F98(uint64_t a1)
{
  v2 = sub_1D9ECE904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9FD4(uint64_t a1)
{
  v2 = sub_1D9ECEE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA010(uint64_t a1)
{
  v2 = sub_1D9ECEE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA04C(uint64_t a1)
{
  v2 = sub_1D9ECED48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA088(uint64_t a1)
{
  v2 = sub_1D9ECED48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA0C4(uint64_t a1)
{
  v2 = sub_1D9ECE958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA100(uint64_t a1)
{
  v2 = sub_1D9ECE958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA13C(uint64_t a1)
{
  v2 = sub_1D9ECEB50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA178(uint64_t a1)
{
  v2 = sub_1D9ECEB50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA1B4(uint64_t a1)
{
  v2 = sub_1D9ECEE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA1F0(uint64_t a1)
{
  v2 = sub_1D9ECEE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA22C(uint64_t a1)
{
  v2 = sub_1D9ECEA00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA268(uint64_t a1)
{
  v2 = sub_1D9ECEA00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA2A4(uint64_t a1)
{
  v2 = sub_1D9ECED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA2E0(uint64_t a1)
{
  v2 = sub_1D9ECED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA31C(uint64_t a1)
{
  v2 = sub_1D9ECEBA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA358(uint64_t a1)
{
  v2 = sub_1D9ECEBA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionFailure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C70, &qword_1D9F3D170);
  v149 = *(v2 - 8);
  v150 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v148 = &v103 - v3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C78, &qword_1D9F3D178);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v103 - v4;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C80, &qword_1D9F3D180);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v103 - v5;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C88, &qword_1D9F3D188);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C90, &qword_1D9F3D190);
  v152 = *(v7 - 8);
  v153 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v151 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C98, &qword_1D9F3D198);
  v146 = *(v9 - 8);
  v147 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v103 - v10;
  v11 = sub_1D9F2AD7C();
  v12 = *(v11 - 8);
  v156 = v11;
  v157 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v155 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v103 - v15;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CA0, &qword_1D9F3D1A0);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v103 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CA8, &qword_1D9F3D1A8);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v103 - v17;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CB0, &qword_1D9F3D1B0);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v103 - v18;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CB8, &qword_1D9F3D1B8);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v103 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CC0, &qword_1D9F3D1C0);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v103 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CC8, &qword_1D9F3D1C8);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v103 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CD0, &qword_1D9F3D1D0);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v103 - v22;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CD8, &qword_1D9F3D1D8);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v103 - v23;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CE0, &qword_1D9F3D1E0);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v103 - v24;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CE8, &qword_1D9F3D1E8);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v103 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CF0, &qword_1D9F3D1F0);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v27 = &v103 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CF8, &qword_1D9F3D1F8);
  v103 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v103 - v29;
  v31 = type metadata accessor for ExecutionFailure(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D00, &qword_1D9F3D200);
  v159 = *(v34 - 8);
  v160 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v103 - v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ECE8B0();
  v161 = v36;
  sub_1D9F2BB8C();
  sub_1D9EC9454(v158, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v78 = *v33;
      v77 = *(v33 + 1);
      v79 = v33[16];
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      v81 = *(v80 + 48);
      LODWORD(v153) = v33[*(v80 + 64)];
      v82 = v156;
      v83 = v157;
      (*(v157 + 32))(v154, &v33[v81], v156);
      LOBYTE(v163) = 12;
      sub_1D9ECEAA8();
      v84 = v143;
      v85 = v160;
      v86 = v161;
      sub_1D9F2B8FC();
      v155 = v78;
      v163 = v78;
      v164 = v77;
      v158 = v77;
      v57 = v79;
      v165 = v79;
      v166 = 0;
      sub_1D9E5A8BC();
      v87 = v147;
      v88 = v162;
      sub_1D9F2B9AC();
      v162 = v88;
      if (v88)
      {
        (*(v146 + 8))(v84, v87);
        (*(v83 + 8))(v154, v82);
        (*(v159 + 8))(v86, v85);
        v70 = v155;
        return sub_1D9E51DF0(v70, v158, v57);
      }

      v98 = v83;
      sub_1D9E51DF0(v155, v158, v57);
      LOBYTE(v163) = 1;
      sub_1D9ECEF98(&qword_1EE0F3868, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v99 = v154;
      v100 = v162;
      sub_1D9F2B9AC();
      if (v100)
      {
        (*(v146 + 8))(v84, v87);
        (*(v98 + 8))(v99, v82);
        return (*(v159 + 8))(v161, v160);
      }

      else
      {
        LOBYTE(v163) = 2;
        sub_1D9F2B96C();
        v101 = v160;
        v102 = v161;
        (*(v146 + 8))(v84, v87);
        (*(v98 + 8))(v99, v82);
        return (*(v159 + 8))(v102, v101);
      }

    case 2u:
      v55 = *v33;
      v56 = *(v33 + 1);
      v57 = v33[16];
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      v59 = v58[12];
      LODWORD(v149) = v33[v58[16]];
      v60 = &v33[v58[20]];
      v62 = *v60;
      v61 = *(v60 + 1);
      v148 = v62;
      v150 = v61;
      v63 = v156;
      v64 = v157;
      (*(v157 + 32))(v155, &v33[v59], v156);
      LOBYTE(v163) = 13;
      sub_1D9ECEA54();
      v65 = v151;
      v67 = v160;
      v66 = v161;
      sub_1D9F2B8FC();
      v154 = v55;
      v163 = v55;
      v164 = v56;
      v158 = v56;
      v165 = v57;
      v166 = 0;
      sub_1D9E5A8BC();
      v68 = v153;
      v69 = v162;
      sub_1D9F2B9AC();
      v162 = v69;
      if (v69)
      {

        (*(v152 + 8))(v65, v68);
        (*(v64 + 8))(v155, v63);
        (*(v159 + 8))(v66, v67);
        v70 = v154;
        return sub_1D9E51DF0(v70, v158, v57);
      }

      else
      {
        sub_1D9E51DF0(v154, v158, v57);
        LOBYTE(v163) = 1;
        sub_1D9ECEF98(&qword_1EE0F3868, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
        v96 = v155;
        v97 = v162;
        sub_1D9F2B9AC();
        if (v97)
        {

          (*(v152 + 8))(v65, v68);
          (*(v157 + 8))(v96, v63);
          return (*(v159 + 8))(v161, v67);
        }

        else
        {
          LOBYTE(v163) = 2;
          sub_1D9F2B96C();
          LOBYTE(v163) = 3;
          sub_1D9F2B95C();

          (*(v152 + 8))(v65, v68);
          (*(v157 + 8))(v96, v63);
          return (*(v159 + 8))(v161, v67);
        }
      }

    case 3u:
      LOBYTE(v163) = 17;
      sub_1D9ECE904();
      v72 = v148;
      v73 = v160;
      v74 = v161;
      sub_1D9F2B8FC();
      v75 = v150;
      sub_1D9F2B90C();

      (*(v149 + 8))(v72, v75);
      return (*(v159 + 8))(v74, v73);
    case 4u:
      LOBYTE(v163) = 0;
      sub_1D9ECEE98();
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      (*(v103 + 8))(v30, v28);
      goto LABEL_25;
    case 5u:
      LOBYTE(v163) = 1;
      sub_1D9ECEE44();
      v91 = v160;
      v90 = v161;
      sub_1D9F2B8FC();
      (*(v104 + 8))(v27, v105);
      return (*(v159 + 8))(v90, v91);
    case 6u:
      LOBYTE(v163) = 2;
      sub_1D9ECEDF0();
      v93 = v106;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v107 + 8);
      v49 = v93;
      v50 = &v140;
      goto LABEL_24;
    case 7u:
      LOBYTE(v163) = 3;
      sub_1D9ECED9C();
      v76 = v109;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v110 + 8);
      v49 = v76;
      v50 = &v143;
      goto LABEL_24;
    case 8u:
      LOBYTE(v163) = 4;
      sub_1D9ECED48();
      v95 = v112;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v113 + 8);
      v49 = v95;
      v50 = &v146;
      goto LABEL_24;
    case 9u:
      LOBYTE(v163) = 5;
      sub_1D9ECECF4();
      v54 = v115;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v116 + 8);
      v49 = v54;
      v50 = &v149;
      goto LABEL_24;
    case 0xAu:
      LOBYTE(v163) = 6;
      sub_1D9ECECA0();
      v94 = v118;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v119 + 8);
      v49 = v94;
      v50 = &v152;
      goto LABEL_24;
    case 0xBu:
      LOBYTE(v163) = 7;
      sub_1D9ECEC4C();
      v52 = v121;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v122 + 8);
      v49 = v52;
      v50 = &v155;
      goto LABEL_24;
    case 0xCu:
      LOBYTE(v163) = 8;
      sub_1D9ECEBF8();
      v53 = v124;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v125 + 8);
      v49 = v53;
      v50 = &v158;
      goto LABEL_24;
    case 0xDu:
      LOBYTE(v163) = 9;
      sub_1D9ECEBA4();
      v92 = v127;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v128 + 8);
      v49 = v92;
      v50 = &v161;
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v163) = 10;
      sub_1D9ECEB50();
      v51 = v130;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v131 + 8);
      v49 = v51;
      v50 = &v164;
      goto LABEL_24;
    case 0xFu:
      LOBYTE(v163) = 14;
      sub_1D9ECEA00();
      v71 = v136;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v137 + 8);
      v49 = v71;
      v50 = &v167;
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v163) = 15;
      sub_1D9ECE9AC();
      v45 = v139;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      v48 = *(v140 + 8);
      v49 = v45;
      v50 = &v168;
LABEL_24:
      v48(v49, *(v50 - 32));
      goto LABEL_25;
    case 0x11u:
      LOBYTE(v163) = 16;
      sub_1D9ECE958();
      v89 = v142;
      v46 = v160;
      v47 = v161;
      sub_1D9F2B8FC();
      (*(v144 + 8))(v89, v145);
LABEL_25:
      result = (*(v159 + 8))(v47, v46);
      break;
    default:
      v37 = *v33;
      v38 = *(v33 + 1);
      v39 = v33[16];
      LOBYTE(v163) = 11;
      sub_1D9ECEAFC();
      v40 = v133;
      v41 = v160;
      v42 = v161;
      sub_1D9F2B8FC();
      v163 = v37;
      v164 = v38;
      v165 = v39;
      sub_1D9E5A8BC();
      v43 = v135;
      sub_1D9F2B9AC();
      (*(v134 + 8))(v40, v43);
      (*(v159 + 8))(v42, v41);
      result = sub_1D9E51DF0(v37, v38, v39);
      break;
  }

  return result;
}

uint64_t ExecutionFailure.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ExecutionFailure(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EC9454(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = *v13;
      v26 = *(v13 + 1);
      v27 = v13[16];
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      (*(v5 + 32))(v10, &v13[*(v28 + 48)], v4);
      MEMORY[0x1DA7438F0](12);
      v30 = v25;
      v31 = v26;
      v32 = v27;
      CustomActionIdentity.hash(into:)(a1);
      sub_1D9E51DF0(v25, v26, v27);
      sub_1D9ECEF98(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D9F2B0EC();
      sub_1D9F2BB1C();
      return (*(v5 + 8))(v10, v4);
    case 2u:
      v19 = *v13;
      v20 = *(v13 + 1);
      v21 = v13[16];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      v23 = *(v22 + 48);
      v29 = *&v13[*(v22 + 80)];
      (*(v5 + 32))(v8, &v13[v23], v4);
      MEMORY[0x1DA7438F0](13);
      v30 = v19;
      v31 = v20;
      v32 = v21;
      CustomActionIdentity.hash(into:)(a1);
      sub_1D9E51DF0(v19, v20, v21);
      sub_1D9ECEF98(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D9F2B0EC();
      sub_1D9F2BB1C();
      sub_1D9F2B18C();

      return (*(v5 + 8))(v8, v4);
    case 3u:
      v24 = *(v13 + 1);
      MEMORY[0x1DA7438F0](17);
      if (!v24)
      {
        return sub_1D9F2BB1C();
      }

      sub_1D9F2BB1C();
      sub_1D9F2B18C();

    case 4u:
      v18 = 0;
      goto LABEL_22;
    case 5u:
      v18 = 1;
      goto LABEL_22;
    case 6u:
      v18 = 2;
      goto LABEL_22;
    case 7u:
      v18 = 3;
      goto LABEL_22;
    case 8u:
      v18 = 4;
      goto LABEL_22;
    case 9u:
      v18 = 5;
      goto LABEL_22;
    case 0xAu:
      v18 = 6;
      goto LABEL_22;
    case 0xBu:
      v18 = 7;
      goto LABEL_22;
    case 0xCu:
      v18 = 8;
      goto LABEL_22;
    case 0xDu:
      v18 = 9;
      goto LABEL_22;
    case 0xEu:
      v18 = 10;
      goto LABEL_22;
    case 0xFu:
      v18 = 14;
      goto LABEL_22;
    case 0x10u:
      v18 = 15;
      goto LABEL_22;
    case 0x11u:
      v18 = 16;
LABEL_22:
      result = MEMORY[0x1DA7438F0](v18);
      break;
    default:
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = v13[16];
      MEMORY[0x1DA7438F0](11);
      v30 = v14;
      v31 = v15;
      v32 = v16;
      CustomActionIdentity.hash(into:)(a1);
      result = sub_1D9E51DF0(v14, v15, v16);
      break;
  }

  return result;
}

uint64_t ExecutionFailure.hashValue.getter()
{
  sub_1D9F2BAFC();
  ExecutionFailure.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t ExecutionFailure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DB0, &qword_1D9F3D218);
  v159 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v177 = &v123 - v3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DB8, &qword_1D9F3D220);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v175 = &v123 - v4;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DC0, &qword_1D9F3D228);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v174 = &v123 - v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DC8, &qword_1D9F3D230);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v173 = &v123 - v6;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DD0, &qword_1D9F3D238);
  v179 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v182 = &v123 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DD8, &qword_1D9F3D240);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v176 = &v123 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DE0, &qword_1D9F3D248);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v172 = &v123 - v9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DE8, &qword_1D9F3D250);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v171 = &v123 - v10;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DF0, &qword_1D9F3D258);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v170 = &v123 - v11;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DF8, &qword_1D9F3D260);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v169 = &v123 - v12;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E00, &qword_1D9F3D268);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v168 = &v123 - v13;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E08, &qword_1D9F3D270);
  v140 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v167 = &v123 - v14;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E10, &qword_1D9F3D278);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v166 = &v123 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E18, &qword_1D9F3D280);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v165 = &v123 - v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E20, &qword_1D9F3D288);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v164 = &v123 - v17;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E28, &qword_1D9F3D290);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v163 = &v123 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E30, &qword_1D9F3D298);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v162 = &v123 - v19;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E38, &qword_1D9F3D2A0);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v161 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E40, &unk_1D9F3D2A8);
  v184 = *(v21 - 8);
  v185 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v123 - v22;
  v180 = type metadata accessor for ExecutionFailure(0);
  v24 = MEMORY[0x1EEE9AC00](v180);
  v26 = (&v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v123 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v123 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v123 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v123 - v36;
  v38 = a1[3];
  v193 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D9ECE8B0();
  v39 = v186;
  sub_1D9F2BB7C();
  if (v39)
  {
LABEL_8:
    v56 = v193;
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v123 = v35;
  v124 = v26;
  v125 = v32;
  v40 = v181;
  v126 = v29;
  v186 = 0;
  v41 = v182;
  v42 = v183;
  v43 = v180;
  v127 = v37;
  v44 = v185;
  v45 = sub_1D9F2B8DC();
  v46 = (2 * *(v45 + 16)) | 1;
  v189 = v45;
  v190 = v45 + 32;
  v191 = 0;
  v192 = v46;
  v47 = sub_1D9E4170C();
  v48 = v23;
  if (v191 != v192 >> 1)
  {
LABEL_6:
    v52 = v44;
    v53 = sub_1D9F2B6BC();
    swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v55 = v43;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    (*(v184 + 8))(v48, v52);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v47)
  {
    case 0:
      LOBYTE(v187) = 0;
      sub_1D9ECEE98();
      v49 = v161;
      v50 = v186;
      sub_1D9F2B7DC();
      if (v50)
      {
        goto LABEL_43;
      }

      (*(v128 + 8))(v49, v129);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 1:
      LOBYTE(v187) = 1;
      sub_1D9ECEE44();
      v82 = v162;
      v83 = v186;
      sub_1D9F2B7DC();
      if (v83)
      {
        goto LABEL_43;
      }

      (*(v130 + 8))(v82, v131);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 2:
      LOBYTE(v187) = 2;
      sub_1D9ECEDF0();
      v74 = v163;
      v75 = v186;
      sub_1D9F2B7DC();
      if (v75)
      {
        goto LABEL_43;
      }

      (*(v132 + 8))(v74, v133);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 3:
      LOBYTE(v187) = 3;
      sub_1D9ECED9C();
      v78 = v164;
      v79 = v186;
      sub_1D9F2B7DC();
      if (v79)
      {
        goto LABEL_43;
      }

      (*(v134 + 8))(v78, v135);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 4:
      LOBYTE(v187) = 4;
      sub_1D9ECED48();
      v66 = v165;
      v67 = v186;
      sub_1D9F2B7DC();
      if (v67)
      {
        goto LABEL_43;
      }

      (*(v136 + 8))(v66, v137);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 5:
      LOBYTE(v187) = 5;
      sub_1D9ECECF4();
      v86 = v166;
      v87 = v186;
      sub_1D9F2B7DC();
      if (v87)
      {
        goto LABEL_43;
      }

      (*(v138 + 8))(v86, v139);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 6:
      LOBYTE(v187) = 6;
      sub_1D9ECECA0();
      v92 = v167;
      v93 = v186;
      sub_1D9F2B7DC();
      if (v93)
      {
        goto LABEL_43;
      }

      (*(v140 + 8))(v92, v40);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 7:
      LOBYTE(v187) = 7;
      sub_1D9ECEC4C();
      v80 = v168;
      v81 = v186;
      sub_1D9F2B7DC();
      if (v81)
      {
        goto LABEL_43;
      }

      (*(v141 + 8))(v80, v142);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 8:
      LOBYTE(v187) = 8;
      sub_1D9ECEBF8();
      v96 = v169;
      v97 = v186;
      sub_1D9F2B7DC();
      if (v97)
      {
        goto LABEL_43;
      }

      (*(v143 + 8))(v96, v144);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 9:
      LOBYTE(v187) = 9;
      sub_1D9ECEBA4();
      v72 = v170;
      v73 = v186;
      sub_1D9F2B7DC();
      if (v73)
      {
        goto LABEL_43;
      }

      (*(v145 + 8))(v72, v146);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 10:
      LOBYTE(v187) = 10;
      sub_1D9ECEB50();
      v94 = v171;
      v95 = v186;
      sub_1D9F2B7DC();
      if (v95)
      {
        goto LABEL_43;
      }

      (*(v147 + 8))(v94, v148);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 11:
      LOBYTE(v187) = 11;
      sub_1D9ECEAFC();
      v62 = v172;
      v63 = v186;
      sub_1D9F2B7DC();
      if (v63)
      {
        goto LABEL_43;
      }

      sub_1D9E5AB24();
      v64 = v150;
      sub_1D9F2B89C();
      v65 = v184;
      (*(v149 + 8))(v62, v64);
      (*(v65 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v103 = v188;
      v104 = v123;
      *v123 = v187;
      *(v104 + 16) = v103;
      swift_storeEnumTagMultiPayload();
      v105 = v104;
      goto LABEL_48;
    case 12:
      LOBYTE(v187) = 12;
      sub_1D9ECEAA8();
      v68 = v176;
      v69 = v186;
      sub_1D9F2B7DC();
      if (v69)
      {
        goto LABEL_43;
      }

      LOBYTE(v187) = 0;
      sub_1D9E5AB24();
      v70 = v158;
      sub_1D9F2B89C();
      v71 = v184;
      v106 = v68;
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      v107 = *(v186 + 48);
      sub_1D9F2AD7C();
      LOBYTE(v187) = 1;
      sub_1D9ECEF98(&qword_1EE0F3860, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
      v183 = v107;
      v108 = v70;
      sub_1D9F2B89C();
      v113 = v186;
      LOBYTE(v187) = 2;
      v114 = sub_1D9F2B85C();
      v116 = *(v113 + 64);
      v117 = v114;
      (*(v157 + 8))(v106, v108);
      (*(v71 + 8))(v48, v185);
      swift_unknownObjectRelease();
      v118 = v125;
      v125[v116] = v117 & 1;
      swift_storeEnumTagMultiPayload();
      v105 = v118;
      goto LABEL_48;
    case 13:
      LOBYTE(v187) = 13;
      sub_1D9ECEA54();
      v88 = v186;
      sub_1D9F2B7DC();
      if (v88)
      {
        goto LABEL_43;
      }

      LOBYTE(v187) = 0;
      sub_1D9E5AB24();
      v89 = v160;
      v90 = v41;
      sub_1D9F2B89C();
      v91 = v184;
      v186 = v48;
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      sub_1D9F2AD7C();
      LOBYTE(v187) = 1;
      sub_1D9ECEF98(&qword_1EE0F3860, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
      sub_1D9F2B89C();
      LOBYTE(v187) = 2;
      v115 = sub_1D9F2B85C();
      v119 = v126;
      v126[*(v112 + 64)] = v115 & 1;
      LOBYTE(v187) = 3;
      v181 = sub_1D9F2B84C();
      v183 = v120;
      v121 = (v119 + *(v112 + 80));
      (*(v179 + 8))(v90, v89);
      (*(v91 + 8))(v186, v185);
      swift_unknownObjectRelease();
      v122 = v183;
      *v121 = v181;
      v121[1] = v122;
      swift_storeEnumTagMultiPayload();
      v105 = v119;
      goto LABEL_48;
    case 14:
      LOBYTE(v187) = 14;
      sub_1D9ECEA00();
      v60 = v173;
      v61 = v186;
      sub_1D9F2B7DC();
      if (v61)
      {
        goto LABEL_43;
      }

      (*(v151 + 8))(v60, v152);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 15:
      LOBYTE(v187) = 15;
      sub_1D9ECE9AC();
      v76 = v174;
      v77 = v186;
      sub_1D9F2B7DC();
      if (v77)
      {
        goto LABEL_43;
      }

      (*(v153 + 8))(v76, v154);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
      goto LABEL_46;
    case 16:
      LOBYTE(v187) = 16;
      sub_1D9ECE958();
      v58 = v175;
      v59 = v186;
      sub_1D9F2B7DC();
      if (v59)
      {
LABEL_43:
        (*(v184 + 8))(v23, v44);
        goto LABEL_7;
      }

      (*(v155 + 8))(v58, v156);
      (*(v184 + 8))(v23, v44);
      swift_unknownObjectRelease();
      v51 = v127;
LABEL_46:
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    case 17:
      LOBYTE(v187) = 17;
      sub_1D9ECE904();
      v84 = v177;
      v85 = v186;
      sub_1D9F2B7DC();
      if (v85)
      {
        (*(v184 + 8))(v23, v44);
        swift_unknownObjectRelease();
        v56 = v193;
      }

      else
      {
        v98 = v44;
        v99 = sub_1D9F2B7FC();
        v100 = v84;
        v101 = v184;
        v110 = v109;
        (*(v159 + 8))(v100, v42);
        (*(v101 + 8))(v23, v98);
        swift_unknownObjectRelease();
        v111 = v124;
        *v124 = v99;
        v111[1] = v110;
        swift_storeEnumTagMultiPayload();
        v105 = v111;
LABEL_48:
        v51 = v127;
        sub_1D9ECEEEC(v105, v127);
LABEL_47:
        v102 = v193;
        sub_1D9ECEEEC(v51, v178);
        v56 = v102;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1D9ECDE54()
{
  sub_1D9F2BAFC();
  ExecutionFailure.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ECDE98()
{
  sub_1D9F2BAFC();
  ExecutionFailure.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport16ExecutionFailureO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  v107 = v4;
  v108 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v104 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v106 = &v97 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v97 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v97 - v13;
  v14 = type metadata accessor for ExecutionFailure(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v97 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v97 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74FD8, &qword_1D9F3E4C8);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v97 - v28;
  v30 = &v97 + *(v27 + 56) - v28;
  sub_1D9EC9454(a1, &v97 - v28);
  sub_1D9EC9454(a2, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v103 = v29;
      sub_1D9EC9454(v29, v23);
      v63 = *(v23 + 1);
      v106 = *v23;
      v64 = v23[16];
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      v66 = *(v65 + 48);
      v67 = *(v65 + 64);
      v68 = v23[v67];
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v70 = v108;
      if (EnumCaseMultiPayload != 1)
      {
        (*(v108 + 8))(&v23[v66], v107);
        sub_1D9E51DF0(v106, v63, v64);
        goto LABEL_54;
      }

      LODWORD(v100) = v68;
      v71 = *(v30 + 1);
      v104 = *v30;
      LODWORD(v99) = v30[v67];
      LODWORD(v102) = v64;
      v101 = v63;
      v72 = *(v108 + 32);
      v73 = v30[16];
      v74 = v107;
      v72(v105, &v23[v66], v107);
      v72(v12, &v30[v66], v74);
      v75 = v106;
      v76 = v101;
      v112 = v106;
      v113 = v101;
      v77 = v102;
      v114 = v102;
      v78 = v104;
      v109 = v104;
      v110 = v71;
      v111 = v73;
      v79 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(&v112, &v109);
      sub_1D9E51DF0(v78, v71, v73);
      sub_1D9E51DF0(v75, v76, v77);
      if ((v79 & 1) == 0)
      {
        v92 = *(v70 + 8);
        v92(v12, v74);
        v92(v105, v74);
        goto LABEL_61;
      }

      v80 = v105;
      v81 = sub_1D9F2AD3C();
      v82 = *(v70 + 8);
      v82(v12, v74);
      v82(v80, v74);
      v83 = v103;
      if ((v81 & 1) == 0)
      {
        goto LABEL_65;
      }

      v84 = v100 ^ v99;
      sub_1D9EC94B8(v103);
      v85 = v84 ^ 1;
      return v85 & 1;
    case 2u:
      v103 = v29;
      sub_1D9EC9454(v29, v20);
      v35 = *v20;
      v34 = *(v20 + 1);
      v36 = v20[16];
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      v38 = v37[12];
      v39 = v37[16];
      LODWORD(v105) = v20[v39];
      v40 = v37[20];
      v41 = *&v20[v40 + 8];
      v102 = *&v20[v40];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D9E51DF0(v35, v34, v36);

        (*(v108 + 8))(&v20[v38], v107);
LABEL_54:
        v29 = v103;
        goto LABEL_55;
      }

      v42 = *(v30 + 1);
      v99 = *v30;
      v98 = v30[v39];
      v43 = *&v30[v40 + 8];
      v97 = *&v30[v40];
      v100 = v43;
      v101 = v41;
      v44 = *(v108 + 32);
      v45 = v30[16];
      v46 = &v20[v38];
      v47 = v107;
      v44(v106, v46, v107);
      v48 = &v30[v38];
      v49 = v104;
      v44(v104, v48, v47);
      v112 = v35;
      v113 = v34;
      v114 = v36;
      v50 = v99;
      v109 = v99;
      v110 = v42;
      v111 = v45;
      v51 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(&v112, &v109);
      sub_1D9E51DF0(v50, v42, v45);
      sub_1D9E51DF0(v35, v34, v36);
      if ((v51 & 1) == 0)
      {

        v91 = *(v108 + 8);
        v91(v49, v47);
        v91(v106, v47);
LABEL_61:
        sub_1D9EC94B8(v103);
        goto LABEL_56;
      }

      v52 = v100;
      v53 = v106;
      v54 = sub_1D9F2AD3C();
      v55 = v103;
      if ((v54 & 1) == 0)
      {

        v93 = *(v108 + 8);
        v93(v49, v47);
        v93(v53, v47);
        goto LABEL_67;
      }

      v56 = v108;
      if (v105 != v98)
      {

        v57 = *(v56 + 8);
        v57(v49, v47);
        v57(v53, v47);
LABEL_67:
        sub_1D9EC94B8(v55);
        goto LABEL_56;
      }

      if (v102 == v97 && v101 == v52)
      {

        v94 = *(v56 + 8);
        v94(v49, v47);
        v94(v53, v47);
        v86 = v55;
      }

      else
      {
        v95 = sub_1D9F2BA1C();

        v96 = *(v56 + 8);
        v96(v49, v47);
        v96(v53, v47);
        if ((v95 & 1) == 0)
        {
          goto LABEL_67;
        }

        v86 = v55;
      }

LABEL_50:
      sub_1D9EC94B8(v86);
      v85 = 1;
      return v85 & 1;
    case 3u:
      sub_1D9EC9454(v29, v17);
      v59 = *v17;
      v58 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_55:
        sub_1D9ED0BF0(v29);
        goto LABEL_56;
      }

      v60 = *(v30 + 1);
      if (!v58)
      {
        if (!v60)
        {
          goto LABEL_49;
        }

LABEL_63:

        goto LABEL_64;
      }

      if (!v60)
      {
        goto LABEL_63;
      }

      if (v59 == *v30 && v58 == v60)
      {

        goto LABEL_49;
      }

      v62 = sub_1D9F2BA1C();

      if (v62)
      {
LABEL_49:
        v86 = v29;
        goto LABEL_50;
      }

LABEL_64:
      v83 = v29;
LABEL_65:
      sub_1D9EC94B8(v83);
LABEL_56:
      v85 = 0;
      return v85 & 1;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_49;
      }

      goto LABEL_55;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    default:
      sub_1D9EC9454(v29, v25);
      v32 = *v25;
      v31 = *(v25 + 1);
      v33 = v25[16];
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1D9E51DF0(v32, v31, v33);
        goto LABEL_55;
      }

      v88 = *v30;
      v89 = *(v30 + 1);
      v90 = v30[16];
      v112 = v32;
      v113 = v31;
      v114 = v33;
      v109 = v88;
      v110 = v89;
      v111 = v90;
      v85 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(&v112, &v109);
      sub_1D9E51DF0(v88, v89, v90);
      sub_1D9E51DF0(v32, v31, v33);
      sub_1D9EC94B8(v29);
      return v85 & 1;
  }
}

unint64_t sub_1D9ECE8B0()
{
  result = qword_1ECB74D08;
  if (!qword_1ECB74D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D08);
  }

  return result;
}

unint64_t sub_1D9ECE904()
{
  result = qword_1ECB74D10;
  if (!qword_1ECB74D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D10);
  }

  return result;
}

unint64_t sub_1D9ECE958()
{
  result = qword_1ECB74D18;
  if (!qword_1ECB74D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D18);
  }

  return result;
}

unint64_t sub_1D9ECE9AC()
{
  result = qword_1ECB74D20;
  if (!qword_1ECB74D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D20);
  }

  return result;
}

unint64_t sub_1D9ECEA00()
{
  result = qword_1ECB74D28;
  if (!qword_1ECB74D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D28);
  }

  return result;
}

unint64_t sub_1D9ECEA54()
{
  result = qword_1ECB74D38;
  if (!qword_1ECB74D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D38);
  }

  return result;
}

unint64_t sub_1D9ECEAA8()
{
  result = qword_1ECB74D48;
  if (!qword_1ECB74D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D48);
  }

  return result;
}

unint64_t sub_1D9ECEAFC()
{
  result = qword_1ECB74D50;
  if (!qword_1ECB74D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D50);
  }

  return result;
}

unint64_t sub_1D9ECEB50()
{
  result = qword_1ECB74D58;
  if (!qword_1ECB74D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D58);
  }

  return result;
}

unint64_t sub_1D9ECEBA4()
{
  result = qword_1ECB74D60;
  if (!qword_1ECB74D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D60);
  }

  return result;
}

unint64_t sub_1D9ECEBF8()
{
  result = qword_1ECB74D68;
  if (!qword_1ECB74D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D68);
  }

  return result;
}

unint64_t sub_1D9ECEC4C()
{
  result = qword_1ECB74D70;
  if (!qword_1ECB74D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D70);
  }

  return result;
}

unint64_t sub_1D9ECECA0()
{
  result = qword_1ECB74D78;
  if (!qword_1ECB74D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D78);
  }

  return result;
}

unint64_t sub_1D9ECECF4()
{
  result = qword_1ECB74D80;
  if (!qword_1ECB74D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D80);
  }

  return result;
}

unint64_t sub_1D9ECED48()
{
  result = qword_1ECB74D88;
  if (!qword_1ECB74D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D88);
  }

  return result;
}

unint64_t sub_1D9ECED9C()
{
  result = qword_1ECB74D90;
  if (!qword_1ECB74D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D90);
  }

  return result;
}

unint64_t sub_1D9ECEDF0()
{
  result = qword_1ECB74D98;
  if (!qword_1ECB74D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D98);
  }

  return result;
}

unint64_t sub_1D9ECEE44()
{
  result = qword_1ECB74DA0;
  if (!qword_1ECB74DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74DA0);
  }

  return result;
}

unint64_t sub_1D9ECEE98()
{
  result = qword_1ECB74DA8;
  if (!qword_1ECB74DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74DA8);
  }

  return result;
}

uint64_t sub_1D9ECEEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionFailure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9ECEF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D9ECEFE0(uint64_t a1)
{
  sub_1D9ECF07C();
  if (v1 <= 0x3F)
  {
    sub_1D9ECF0AC(319);
    if (v2 <= 0x3F)
    {
      sub_1D9ECF120(319);
      if (v3 <= 0x3F)
      {
        sub_1D9ECF23C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_1D9ECF07C()
{
  result = qword_1ECB74E60;
  if (!qword_1ECB74E60)
  {
    result = &type metadata for CustomActionIdentity;
    atomic_store(&type metadata for CustomActionIdentity, &qword_1ECB74E60);
  }

  return result;
}

void sub_1D9ECF0AC(uint64_t a1)
{
  if (!qword_1ECB74E68)
  {
    sub_1D9F2AD7C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECB74E68);
    }
  }
}

void sub_1D9ECF120(uint64_t a1)
{
  if (!qword_1ECB74E70)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D9F2AD7C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ECB74E70);
    }
  }
}

void sub_1D9ECF23C()
{
  if (!qword_1ECB74E78)
  {
    sub_1D9E95A38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB74E78);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionFailure.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecutionFailure.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9ECF4F8()
{
  result = qword_1ECB74E80;
  if (!qword_1ECB74E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E80);
  }

  return result;
}

unint64_t sub_1D9ECF550()
{
  result = qword_1ECB74E88;
  if (!qword_1ECB74E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E88);
  }

  return result;
}

unint64_t sub_1D9ECF5A8()
{
  result = qword_1ECB74E90;
  if (!qword_1ECB74E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E90);
  }

  return result;
}

unint64_t sub_1D9ECF600()
{
  result = qword_1ECB74E98;
  if (!qword_1ECB74E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E98);
  }

  return result;
}

unint64_t sub_1D9ECF658()
{
  result = qword_1ECB74EA0;
  if (!qword_1ECB74EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EA0);
  }

  return result;
}

unint64_t sub_1D9ECF6B0()
{
  result = qword_1ECB74EA8;
  if (!qword_1ECB74EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EA8);
  }

  return result;
}

unint64_t sub_1D9ECF708()
{
  result = qword_1ECB74EB0;
  if (!qword_1ECB74EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EB0);
  }

  return result;
}

unint64_t sub_1D9ECF760()
{
  result = qword_1ECB74EB8;
  if (!qword_1ECB74EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EB8);
  }

  return result;
}

unint64_t sub_1D9ECF7B8()
{
  result = qword_1ECB74EC0;
  if (!qword_1ECB74EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EC0);
  }

  return result;
}

unint64_t sub_1D9ECF810()
{
  result = qword_1ECB74EC8;
  if (!qword_1ECB74EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EC8);
  }

  return result;
}

unint64_t sub_1D9ECF868()
{
  result = qword_1ECB74ED0;
  if (!qword_1ECB74ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74ED0);
  }

  return result;
}

unint64_t sub_1D9ECF8C0()
{
  result = qword_1ECB74ED8;
  if (!qword_1ECB74ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74ED8);
  }

  return result;
}

unint64_t sub_1D9ECF918()
{
  result = qword_1ECB74EE0;
  if (!qword_1ECB74EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EE0);
  }

  return result;
}

unint64_t sub_1D9ECF970()
{
  result = qword_1ECB74EE8;
  if (!qword_1ECB74EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EE8);
  }

  return result;
}

unint64_t sub_1D9ECF9C8()
{
  result = qword_1ECB74EF0;
  if (!qword_1ECB74EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EF0);
  }

  return result;
}

unint64_t sub_1D9ECFA20()
{
  result = qword_1ECB74EF8;
  if (!qword_1ECB74EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EF8);
  }

  return result;
}

unint64_t sub_1D9ECFA78()
{
  result = qword_1ECB74F00;
  if (!qword_1ECB74F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F00);
  }

  return result;
}

unint64_t sub_1D9ECFAD0()
{
  result = qword_1ECB74F08;
  if (!qword_1ECB74F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F08);
  }

  return result;
}

unint64_t sub_1D9ECFB28()
{
  result = qword_1ECB74F10;
  if (!qword_1ECB74F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F10);
  }

  return result;
}

unint64_t sub_1D9ECFB80()
{
  result = qword_1ECB74F18;
  if (!qword_1ECB74F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F18);
  }

  return result;
}

unint64_t sub_1D9ECFBD8()
{
  result = qword_1ECB74F20;
  if (!qword_1ECB74F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F20);
  }

  return result;
}

unint64_t sub_1D9ECFC30()
{
  result = qword_1ECB74F28;
  if (!qword_1ECB74F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F28);
  }

  return result;
}

unint64_t sub_1D9ECFC88()
{
  result = qword_1ECB74F30;
  if (!qword_1ECB74F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F30);
  }

  return result;
}

unint64_t sub_1D9ECFCE0()
{
  result = qword_1ECB74F38;
  if (!qword_1ECB74F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F38);
  }

  return result;
}

unint64_t sub_1D9ECFD38()
{
  result = qword_1ECB74F40;
  if (!qword_1ECB74F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F40);
  }

  return result;
}

unint64_t sub_1D9ECFD90()
{
  result = qword_1ECB74F48;
  if (!qword_1ECB74F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F48);
  }

  return result;
}

unint64_t sub_1D9ECFDE8()
{
  result = qword_1ECB74F50;
  if (!qword_1ECB74F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F50);
  }

  return result;
}

unint64_t sub_1D9ECFE40()
{
  result = qword_1ECB74F58;
  if (!qword_1ECB74F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F58);
  }

  return result;
}

unint64_t sub_1D9ECFE98()
{
  result = qword_1ECB74F60;
  if (!qword_1ECB74F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F60);
  }

  return result;
}

unint64_t sub_1D9ECFEF0()
{
  result = qword_1ECB74F68;
  if (!qword_1ECB74F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F68);
  }

  return result;
}

unint64_t sub_1D9ECFF48()
{
  result = qword_1ECB74F70;
  if (!qword_1ECB74F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F70);
  }

  return result;
}

unint64_t sub_1D9ECFFA0()
{
  result = qword_1ECB74F78;
  if (!qword_1ECB74F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F78);
  }

  return result;
}

unint64_t sub_1D9ECFFF8()
{
  result = qword_1ECB74F80;
  if (!qword_1ECB74F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F80);
  }

  return result;
}

unint64_t sub_1D9ED0050()
{
  result = qword_1ECB74F88;
  if (!qword_1ECB74F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F88);
  }

  return result;
}

unint64_t sub_1D9ED00A8()
{
  result = qword_1ECB74F90;
  if (!qword_1ECB74F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F90);
  }

  return result;
}

unint64_t sub_1D9ED0100()
{
  result = qword_1ECB74F98;
  if (!qword_1ECB74F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F98);
  }

  return result;
}

unint64_t sub_1D9ED0158()
{
  result = qword_1ECB74FA0;
  if (!qword_1ECB74FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FA0);
  }

  return result;
}

unint64_t sub_1D9ED01B0()
{
  result = qword_1ECB74FA8;
  if (!qword_1ECB74FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FA8);
  }

  return result;
}

unint64_t sub_1D9ED0208()
{
  result = qword_1ECB74FB0;
  if (!qword_1ECB74FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FB0);
  }

  return result;
}

unint64_t sub_1D9ED0260()
{
  result = qword_1ECB74FB8;
  if (!qword_1ECB74FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FB8);
  }

  return result;
}

unint64_t sub_1D9ED02B8()
{
  result = qword_1ECB74FC0;
  if (!qword_1ECB74FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FC0);
  }

  return result;
}

unint64_t sub_1D9ED0310()
{
  result = qword_1ECB74FC8;
  if (!qword_1ECB74FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FC8);
  }

  return result;
}

unint64_t sub_1D9ED0368()
{
  result = qword_1ECB74FD0;
  if (!qword_1ECB74FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FD0);
  }

  return result;
}

uint64_t sub_1D9ED03BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001D9F49760 == a2;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC00000064656B63 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F49780 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F497A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4E797469746E65 && a2 == 0xEE00646E756F4674 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9F497C0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F497E0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F4E6E6F69746361 && a2 == 0xEE00646E756F4674 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9F49800 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4574694B6C6F6F74 && a2 == 0xEC000000726F7272 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F49820 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9F49840 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9F49860 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D9F49880 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9F498A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xED0000726F727245 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F498C0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEE00726F72724572)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1D9ED095C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4972656C646E6168 && a2 == 0xE900000000000044 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D65527369 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F498E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9ED0AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4972656C646E6168 && a2 == 0xE900000000000044 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D65527369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9ED0BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74FD8, &qword_1D9F3E4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9ED0C58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X8>)
{
  v6 = sub_1D9F2AEEC();
  v7 = MEMORY[0x1DA744500](a1);
  if (v7 == v6)
  {
    value = xpc_int64_get_value(a1);
    result = swift_unknownObjectRelease();
    *a3 = value;
  }

  else
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t WatchdogTimer.__allocating_init(identifier:timeout:leeway:strict:qualityOfService:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  v43 = a4;
  v41 = a3;
  v10 = sub_1D9F2AFFC();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D9F2B4CC();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9F2AF7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v38 - v18);
  v20 = type metadata accessor for WatchdogTimer.Configuration(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 16) = 0;
  v42 = v23;
  *(v23 + v24) = v25;
  *(v25 + 40) = 0;
  v50 = 0xD00000000000003CLL;
  v51 = 0x80000001D9F491E0;
  MEMORY[0x1DA742F90](a1, a2);

  v27 = a5 * 1000000000.0;
  if (COERCE__INT64(fabs(a5 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v50;
  v40 = v51;
  *v19 = v27;
  v29 = *MEMORY[0x1E69E7F28];
  v30 = *(v14 + 104);
  result = v30(v19, v29, v13);
  v31 = a6 * 1000000000.0;
  if (COERCE__INT64(fabs(a6 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v31 < 9.22337204e18)
  {
    v39 = v28;
    *v17 = v31;
    v30(v17, v29, v13);
    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D9F2F8F0;
      sub_1D9F2B4BC();
      v50 = v32;
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9ED39D4(&qword_1EE0F10E8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
    sub_1D9E84FE0(&qword_1EE0F1100, &unk_1ECB74FF0, &unk_1D9F39410);
    v33 = v44;
    sub_1D9F2B5FC();
    v34 = v45;
    if (v43 <= 16)
    {
      if (v43 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_22;
      }

      if (v43 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_22;
      }
    }

    else
    {
      switch(v43)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_22;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_22;
        case 33:
          sub_1D9F2AFCC();
LABEL_22:
          v35 = v40;
          *v22 = v39;
          *(v22 + 1) = v35;
          v36 = *(v14 + 32);
          v36(&v22[v20[5]], v19, v13);
          v36(&v22[v20[6]], v17, v13);
          (*(v48 + 32))(&v22[v20[7]], v49, v33);
          (*(v46 + 32))(&v22[v20[8]], v34, v47);
          v37 = v42;
          sub_1D9EA13EC(v22, v42 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
          return v37;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t WatchdogTimer.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D9ED13C8, 0, 0);
}

uint64_t sub_1D9ED13C8()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D9ED1494;
  v2 = v0[2];
  v3 = v0[3];

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0x29286E7572, 0xE500000000000000, sub_1D9EC92F0, v3, &type metadata for WatchdogTimer.Termination);
}

uint64_t sub_1D9ED1494()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9ED15C8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

Swift::Void __swiftcall WatchdogTimer.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 16);
  if ((v2 - 1) < 2)
  {
LABEL_4:

    os_unfair_lock_unlock((v1 + 40));
    return;
  }

  if (!v2)
  {
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = 2;
    goto LABEL_4;
  }

  v3 = *(v1 + 24);
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  os_unfair_lock_unlock((v1 + 40));
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D9F2B4FC();
  swift_unknownObjectRelease();
  v4 = 1;
  v3(&v4);

  swift_unknownObjectRelease();
}

uint64_t sub_1D9ED16DC()
{
  v0 = sub_1D9F2B48C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9F2B53C();
  MEMORY[0x1EEE9AC00](v4);
  v6[0] = sub_1D9E68600(0, &qword_1EE0F10D0, 0x1E69E9638);
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_1D9ED39D4(&qword_1EE0F10D8, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75040, &qword_1D9F3E718);
  sub_1D9E84FE0(&qword_1EE0F10F8, &unk_1ECB75040, &qword_1D9F3E718);
  sub_1D9F2B5FC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1D9F2B54C();
  qword_1EE0F1AD0 = result;
  return result;
}

uint64_t WatchdogTimer.Failure.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t WatchdogTimer.Termination.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t WatchdogTimer.init(identifier:timeout:leeway:strict:qualityOfService:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v43 = a4;
  v42 = a3;
  v12 = sub_1D9F2AFFC();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D9F2B4CC();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v49 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9F2AF7C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v38 - v20);
  v22 = type metadata accessor for WatchdogTimer.Configuration(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = 0;
  *(v7 + v25) = v26;
  *(v26 + 40) = 0;
  v50 = 0xD00000000000003CLL;
  v51 = 0x80000001D9F491E0;
  MEMORY[0x1DA742F90](a1, a2);

  v28 = a5 * 1000000000.0;
  if (COERCE__INT64(fabs(a5 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v51;
  v41 = v50;
  *v21 = v28;
  v29 = *MEMORY[0x1E69E7F28];
  v30 = *(v16 + 104);
  result = v30(v21, v29, v15);
  v31 = a6 * 1000000000.0;
  if (COERCE__INT64(fabs(a6 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v31 < 9.22337204e18)
  {
    v39 = v7;
    *v19 = v31;
    v30(v19, v29, v15);
    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D9F2F8F0;
      sub_1D9F2B4BC();
      v50 = v32;
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9ED39D4(&qword_1EE0F10E8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
    sub_1D9E84FE0(&qword_1EE0F1100, &unk_1ECB74FF0, &unk_1D9F39410);
    v33 = v44;
    sub_1D9F2B5FC();
    v34 = v39;
    v35 = v45;
    if (v43 <= 16)
    {
      if (v43 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_22;
      }

      if (v43 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_22;
      }
    }

    else
    {
      switch(v43)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_22;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_22;
        case 33:
          sub_1D9F2AFCC();
LABEL_22:
          v36 = v40;
          *v24 = v41;
          *(v24 + 1) = v36;
          v37 = *(v16 + 32);
          v37(&v24[v22[5]], v21, v15);
          v37(&v24[v22[6]], v19, v15);
          (*(v48 + 32))(&v24[v22[7]], v49, v33);
          (*(v46 + 32))(&v24[v22[8]], v35, v47);
          sub_1D9EA13EC(v24, v34 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
          return v34;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

void WatchdogTimer.activate(on:_:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);
  os_unfair_lock_lock((v2 + 40));
  sub_1D9ED353C((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 40));
  if (!v1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D9F2B50C();

    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_1D9ED2094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v96 = a5;
  v94 = a6;
  v95 = a4;
  v97 = a2;
  v98 = a3;
  v7 = sub_1D9F2AF7C();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9F2B01C();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v86 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v79 - v12;
  v85 = sub_1D9F2AF8C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9F2B47C();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1D9F2B48C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9F2AFFC();
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  v24 = *a1;
  if (*a1 == 2)
  {
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v35 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v35, qword_1EE0F11F0);
    v36 = v98;

    v37 = sub_1D9F2AE6C();
    v38 = sub_1D9F2B43C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v104 = v40;
      *v39 = 136315138;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1D9F2B68C();

      strcpy(&aBlock, "WatchdogTimer<");
      HIBYTE(aBlock) = -18;
      MEMORY[0x1DA742F90](*&v36[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration], *&v36[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8]);
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v41 = sub_1D9E71CA4(aBlock, *(&aBlock + 1), &v104);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_1D9E39000, v37, v38, "Attempted to activate %s when it has already cancelled. Not activating again.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1DA744270](v40, -1, -1);
      MEMORY[0x1DA744270](v39, -1, -1);
    }

    v34 = 2;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v27, qword_1EE0F11F0);
    v28 = v98;

    v29 = sub_1D9F2AE6C();
    v30 = sub_1D9F2B43C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v104 = v32;
      *v31 = 136315138;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1D9F2B68C();

      strcpy(&aBlock, "WatchdogTimer<");
      HIBYTE(aBlock) = -18;
      MEMORY[0x1DA742F90](*&v28[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration], *&v28[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8]);
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v33 = sub_1D9E71CA4(aBlock, *(&aBlock + 1), &v104);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1D9E39000, v29, v30, "Attempted to activate %s when it has already finished. Not activating again.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1DA744270](v32, -1, -1);
      MEMORY[0x1DA744270](v31, -1, -1);
    }

    v34 = 1;
    goto LABEL_21;
  }

  if (v24)
  {
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v42 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v42, qword_1EE0F11F0);
    v43 = v98;

    v44 = sub_1D9F2AE6C();
    v45 = sub_1D9F2B43C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v104 = v47;
      *v46 = 136315138;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1D9F2B68C();

      strcpy(&aBlock, "WatchdogTimer<");
      HIBYTE(aBlock) = -18;
      MEMORY[0x1DA742F90](*&v43[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration], *&v43[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8]);
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v48 = sub_1D9E71CA4(aBlock, *(&aBlock + 1), &v104);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_1D9E39000, v44, v45, "Attempted to activate %s when it has already started. Not activating again.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1DA744270](v47, -1, -1);
      MEMORY[0x1DA744270](v46, -1, -1);
    }

    v34 = 0;
LABEL_21:
    sub_1D9ED3944();
    swift_allocError();
    *v49 = v34;
    return swift_willThrow();
  }

  v83 = v21;
  if (v97)
  {
    v25 = v97;
    v26 = v97;
  }

  else
  {
    v81 = sub_1D9E68600(0, &qword_1EE0F22D0, 0x1E69E9610);
    v51 = &v98[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration];
    v52 = *&v98[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8];
    v80 = *&v98[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration];
    v82 = v52;
    v53 = type metadata accessor for WatchdogTimer.Configuration(0);
    (*(v83 + 16))(v23, &v51[*(v53 + 32)], v20);
    (*(v17 + 104))(v19, *MEMORY[0x1E69E8098], v16);
    v54 = qword_1EE0F1AC0;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = qword_1EE0F1AD0;
    *&aBlock = MEMORY[0x1E69E7CC0];
    v79 = sub_1D9ED39D4(&unk_1EE0F22D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
    sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
    sub_1D9F2B5FC();
    v25 = sub_1D9F2B4AC();
    v26 = v97;
  }

  sub_1D9E68600(0, &qword_1EE0F10E0, 0x1E69E9630);
  v82 = &v98[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration];
  v97 = type metadata accessor for WatchdogTimer.Configuration(0);
  v57 = v26;
  v58 = v25;
  v59 = sub_1D9F2B4DC();

  v80 = v59;
  ObjectType = swift_getObjectType();
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v58;
  *(v62 + 24) = v61;
  v102 = sub_1D9ED3998;
  v103 = v62;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v100 = sub_1D9EB9EB0;
  v101 = &block_descriptor_4;
  v63 = _Block_copy(&aBlock);
  v98 = v58;

  sub_1D9F2AFAC();
  v81 = ObjectType;
  sub_1D9ED2F00();
  sub_1D9F2B4EC();
  _Block_release(v63);
  (*(v84 + 8))(v14, v85);
  (*(v83 + 8))(v23, v20);

  v64 = v86;
  sub_1D9F2B00C();
  v65 = v97;
  v66 = v82;
  v67 = v87;
  MEMORY[0x1DA742E20](v64, &v82[*(v97 + 20)]);
  v68 = v89;
  v69 = *(v88 + 8);
  v69(v64, v89);
  v71 = v90;
  v70 = v91;
  v72 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x1E69E7F40], v92);
  v73 = &v66[*(v65 + 24)];
  v74 = v80;
  MEMORY[0x1DA743340](v67, v71, v73, v81);

  (*(v70 + 8))(v71, v72);
  v69(v67, v68);
  v76 = v93;
  v75 = v94;
  v78 = v95;
  v77 = v96;
  *v93 = v74;
  v76[1] = v78;
  v76[2] = v77;
  *v75 = v74;
  v75[1] = v78;
  v75[2] = v77;
  swift_retain_n();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D9ED2D10(void *a1, uint64_t a2)
{
  v3 = sub_1D9F2B02C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = a1;
  LOBYTE(a1) = sub_1D9F2B04C();
  result = (*(v4 + 8))(v6, v3);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1D9ED2E50();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D9ED2E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);
  os_unfair_lock_lock((v1 + 40));
  sub_1D9ED39B8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 40));
  if (v3[0])
  {
    v2 = v3[1];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D9F2B4FC();
    swift_unknownObjectRelease();
    LOBYTE(v3[0]) = 0;
    v2(v3);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D9ED2F00()
{
  sub_1D9F2AF8C();
  sub_1D9ED39D4(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  return sub_1D9F2B5FC();
}

__n128 sub_1D9ED2FD8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1 + 1;
  v3 = *a1;
  if ((*a1 - 1) < 2)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  if (!v3)
  {
    v14 = a3;
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v7, qword_1EE0F11F0);

    v8 = sub_1D9F2AE6C();
    v9 = sub_1D9F2B44C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      sub_1D9F2B68C();

      strcpy(v15, "WatchdogTimer<");
      HIBYTE(v15[1]) = -18;
      MEMORY[0x1DA742F90](*(a2 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration), *(a2 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8));
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v12 = sub_1D9E71CA4(v15[0], v15[1], &v16);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1D9E39000, v8, v9, "Attempted to fire %s before activating it. Please file a radar.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1DA744270](v11, -1, -1);
      MEMORY[0x1DA744270](v10, -1, -1);
    }

    *a1 = 1;
    *v4 = 0;
    v4[1] = 0;
    a3 = v14;
    goto LABEL_8;
  }

  *a1 = 1;
  result = *(a1 + 1);
  *v4 = 0;
  a1[2] = 0;
  *a3 = v3;
  *(a3 + 1) = result;
  return result;
}

uint64_t WatchdogTimer.deinit()
{
  sub_1D9ED355C(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);

  return v0;
}

uint64_t WatchdogTimer.__deallocating_deinit()
{
  sub_1D9ED355C(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t WatchdogTimer.description.getter()
{
  sub_1D9F2B68C();

  strcpy(v2, "WatchdogTimer<");
  HIBYTE(v2[1]) = -18;
  MEMORY[0x1DA742F90](*(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration), *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8));
  MEMORY[0x1DA742F90](62, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_1D9ED333C()
{
  v1 = *v0;
  sub_1D9F2B68C();

  strcpy(v3, "WatchdogTimer<");
  HIBYTE(v3[1]) = -18;
  MEMORY[0x1DA742F90](*(v1 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration), *(v1 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8));
  MEMORY[0x1DA742F90](62, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_1D9ED33D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - v4;
  (*(v3 + 16))(v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  WatchdogTimer.activate(on:_:)();
}

uint64_t sub_1D9ED355C(uint64_t a1)
{
  v2 = type metadata accessor for WatchdogTimer.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9ED35BC()
{
  result = qword_1ECB75000;
  if (!qword_1ECB75000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75000);
  }

  return result;
}

unint64_t sub_1D9ED3614()
{
  result = qword_1ECB75008;
  if (!qword_1ECB75008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75008);
  }

  return result;
}

uint64_t sub_1D9ED3690(uint64_t a1)
{
  result = type metadata accessor for WatchdogTimer.Configuration(319);
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

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport13WatchdogTimerC5State33_924C034D9F7B896AF52FE35B85FDB993LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D9ED3790(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9ED37EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D9ED3840(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1D9ED3898(uint64_t a1)
{
  result = sub_1D9F2AF7C();
  if (v2 <= 0x3F)
  {
    result = sub_1D9F2B4CC();
    if (v3 <= 0x3F)
    {
      result = sub_1D9F2AFFC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D9ED3944()
{
  result = qword_1ECB75018;
  if (!qword_1ECB75018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75018);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9ED39D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9ED3A1C(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720);
  return sub_1D9F2B2FC();
}

uint64_t sub_1D9ED3B2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, char *, void *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  a4(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 24))(a2, a3);
  v15 = a1;
  return a5(AssociatedTypeWitness, v14, a1);
}

uint64_t GenericEntity.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericEntity.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static GenericEntity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9ED3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9ED3DD8(uint64_t a1)
{
  v2 = sub_1D9ED3F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED3E14(uint64_t a1)
{
  v2 = sub_1D9ED3F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericEntity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75058, &qword_1D9F3E7B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ED3F8C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9ED3F8C()
{
  result = qword_1ECB75060;
  if (!qword_1ECB75060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75060);
  }

  return result;
}

uint64_t GenericEntity.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t GenericEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75068, &qword_1D9F3E7B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ED3F8C();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v9 = sub_1D9F2B84C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9ED41C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75058, &qword_1D9F3E7B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ED3F8C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9ED4300()
{
  result = qword_1ECB75070;
  if (!qword_1ECB75070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75070);
  }

  return result;
}

unint64_t sub_1D9ED4378()
{
  result = qword_1ECB75078;
  if (!qword_1ECB75078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75078);
  }

  return result;
}

unint64_t sub_1D9ED43D0()
{
  result = qword_1ECB75080;
  if (!qword_1ECB75080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75080);
  }

  return result;
}

unint64_t sub_1D9ED4428()
{
  result = qword_1ECB75088;
  if (!qword_1ECB75088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75088);
  }

  return result;
}

uint64_t MachServiceDescriptor.init(name:qualityOfService:requiredEntitlements:isPrivileged:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t MachServiceDescriptor.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D9ED44D4()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9ED4520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9ED4568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Limit.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v7;
  v33[0] = v8;
  v33[1] = v7;
  v33[2] = v9;
  v33[3] = v10;
  v33[4] = v11;
  v12 = type metadata accessor for Limit(0, v33);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v32 = v29 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = v29 - v18;
  v20 = *(v17 + 48);
  v30 = v13;
  v21 = *(v13 + 16);
  v21(v29 - v18, v31, v12);
  v21(&v19[v20], a2, v12);
  v31 = v5;
  v22 = *(v5 + 48);
  if (v22(v19, 1, a3) == 1)
  {
    v23 = 1;
    if (v22(&v19[v20], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v21(v32, v19, v12);
    if (v22(&v19[v20], 1, a3) != 1)
    {
      v24 = v31;
      v25 = v29[0];
      (*(v31 + 32))(v29[0], &v19[v20], a3);
      v26 = v32;
      v23 = sub_1D9F2B10C();
      v27 = *(v24 + 8);
      v27(v25, a3);
      v27(v26, a3);
LABEL_8:
      v16 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, a3);
  }

  v23 = 0;
  v12 = TupleTypeMetadata2;
LABEL_9:
  (*(v16 + 8))(v19, v12);
  return v23 & 1;
}

uint64_t sub_1D9ED491C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D9F2BA1C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D9ED498C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574696D696C6E75 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9ED4A60(char a1)
{
  if (a1)
  {
    return 0x6574756C6F736261;
  }

  else
  {
    return 0x6574696D696C6E75;
  }
}

uint64_t sub_1D9ED4A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9ED491C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D9ED4AF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9ED4B44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9ED4BE4()
{
  sub_1D9F2BAFC();
  sub_1D9EAD610(v2, *v0);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED4C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9ED498C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9ED4C84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9EAE498();
  *a1 = result;
  return result;
}

uint64_t sub_1D9ED4CBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9ED4D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9ED4D64@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_1D9E403C0();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D9ED4DB8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D9ED4DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9ED4E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Limit.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v50 = a2[2];
  v5 = v50;
  v51 = v4;
  v52 = v6;
  v53 = v7;
  v54 = v8;
  v42 = type metadata accessor for Limit.AbsoluteCodingKeys(255, &v50);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D9F2B9EC();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v33 - v11;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v5;
  v51 = v4;
  v52 = v6;
  v53 = v7;
  v54 = v8;
  v13 = type metadata accessor for Limit.UnlimitedCodingKeys(255, &v50);
  v14 = swift_getWitnessTable();
  v38 = v13;
  v36 = v14;
  v37 = sub_1D9F2B9EC();
  v35 = *(v37 - 8);
  v15 = MEMORY[0x1EEE9AC00](v37);
  v34 = &v33 - v16;
  v17 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v5;
  v51 = v4;
  v52 = v6;
  v53 = v7;
  v45 = v7;
  v54 = v8;
  type metadata accessor for Limit.CodingKeys(255, &v50);
  swift_getWitnessTable();
  v48 = sub_1D9F2B9EC();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v21 = &v33 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v55 = v21;
  sub_1D9F2BB8C();
  (*(v17 + 16))(v19, v49, a2);
  v22 = v47;
  v23 = v5;
  if ((*(v47 + 48))(v19, 1, v5) == 1)
  {
    LOBYTE(v50) = 0;
    v24 = v34;
    v25 = v48;
    v26 = v55;
    sub_1D9F2B8FC();
    (*(v35 + 8))(v24, v37);
    return (*(v46 + 8))(v26, v25);
  }

  else
  {
    v28 = v46;
    v29 = v39;
    (*(v22 + 32))(v39, v19, v23);
    LOBYTE(v50) = 1;
    v30 = v41;
    v31 = v48;
    sub_1D9F2B8FC();
    v32 = v44;
    sub_1D9F2B9AC();
    (*(v43 + 8))(v30, v32);
    (*(v22 + 8))(v29, v23);
    return (*(v28 + 8))(v55, v31);
  }
}

uint64_t Limit.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return MEMORY[0x1DA7438F0](0);
  }

  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x1DA7438F0](1);
  sub_1D9F2B0EC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Limit.hashValue.getter(uint64_t a1)
{
  sub_1D9F2BAFC();
  Limit.hash(into:)(v3, a1);
  return sub_1D9F2BB4C();
}

uint64_t Limit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v77 = a1;
  v67 = a7;
  *&v74 = a2;
  *(&v74 + 1) = a3;
  *&v75 = a4;
  *(&v75 + 1) = a5;
  v76 = a6;
  v12 = type metadata accessor for Limit.AbsoluteCodingKeys(255, &v74);
  WitnessTable = swift_getWitnessTable();
  v65 = v12;
  v57 = sub_1D9F2B8EC();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v66 = &v53 - v13;
  *&v74 = a2;
  *(&v74 + 1) = a3;
  *&v75 = a4;
  *(&v75 + 1) = a5;
  v76 = a6;
  v14 = type metadata accessor for Limit.UnlimitedCodingKeys(255, &v74);
  v62 = swift_getWitnessTable();
  v63 = v14;
  v55 = sub_1D9F2B8EC();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v53 - v15;
  *&v74 = a2;
  *(&v74 + 1) = a3;
  *&v75 = a4;
  *(&v75 + 1) = a5;
  v76 = a6;
  type metadata accessor for Limit.CodingKeys(255, &v74);
  v70 = swift_getWitnessTable();
  v16 = sub_1D9F2B8EC();
  v17 = *(v16 - 8);
  v68 = v16;
  v69 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v60 = a2;
  *&v74 = a2;
  *(&v74 + 1) = a3;
  v58 = a4;
  *&v75 = a4;
  *(&v75 + 1) = a5;
  v76 = a6;
  v20 = type metadata accessor for Limit(0, &v74);
  v59 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - v24;
  v26 = v77;
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v27 = v71;
  sub_1D9F2BB7C();
  if (v27)
  {
    goto LABEL_7;
  }

  v70 = v23;
  v71 = v25;
  v28 = v68;
  v29 = v19;
  *&v72 = sub_1D9F2B8DC();
  sub_1D9F2B2BC();
  swift_getWitnessTable();
  *&v74 = sub_1D9F2B5DC();
  *(&v74 + 1) = v30;
  *&v75 = v31;
  *(&v75 + 1) = v32;
  sub_1D9F2B5CC();
  swift_getWitnessTable();
  sub_1D9F2B3EC();
  v33 = v72;
  if (v72 == 2 || (v53 = v74, v72 = v74, v73 = v75, (sub_1D9F2B3FC() & 1) == 0))
  {
    v41 = sub_1D9F2B6BC();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v43 = v20;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v69 + 8))(v19, v28);
    swift_unknownObjectRelease();
    v26 = v77;
LABEL_7:
    v44 = v26;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  if (v33)
  {
    LOBYTE(v72) = 1;
    v34 = v66;
    v35 = v19;
    sub_1D9F2B7DC();
    v36 = v67;
    v37 = v69;
    v38 = v34;
    v39 = v60;
    v40 = v57;
    sub_1D9F2B89C();
    (*(v56 + 8))(v38, v40);
    (*(v37 + 8))(v35, v28);
    swift_unknownObjectRelease();
    v50 = v70;
    (*(*(v39 - 8) + 56))(v70, 0, 1, v39);
    v51 = *(v59 + 32);
    v52 = v71;
    v51(v71, v50, v20);
    v51(v36, v52, v20);
  }

  else
  {
    LOBYTE(v72) = 0;
    v46 = v61;
    sub_1D9F2B7DC();
    v47 = v67;
    v48 = v69;
    (*(v54 + 8))(v46, v55);
    (*(v48 + 8))(v29, v28);
    swift_unknownObjectRelease();
    v49 = v71;
    (*(*(v60 - 8) + 56))(v71, 1, 1);
    (*(v59 + 32))(v47, v49, v20);
  }

  v44 = v77;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1D9ED5E3C(uint64_t a1, uint64_t a2)
{
  sub_1D9F2BAFC();
  Limit.hash(into:)(v4, a2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED5EB0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1D9ED5F0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1D9ED608C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t PredictedAction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PredictedAction.canonicalIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredictedAction(0) + 20));

  return v1;
}

uint64_t type metadata accessor for PredictedAction(uint64_t a1)
{
  result = qword_1EE0F3628;
  if (!qword_1EE0F3628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9ED6494()
{
  v1 = 0x6F546D6574737973;
  v2 = 0x65536C6175736976;
  if (*v0 != 2)
  {
    v2 = 0x69746E456E65706FLL;
  }

  if (*v0)
  {
    v1 = 0x63416D6F74737563;
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

uint64_t sub_1D9ED6524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EDBBB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9ED654C(uint64_t a1)
{
  v2 = sub_1D9EDA470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED6588(uint64_t a1)
{
  v2 = sub_1D9EDA470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED65C4(uint64_t a1)
{
  v2 = sub_1D9EDA5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED6600(uint64_t a1)
{
  v2 = sub_1D9EDA5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED6650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9ED66D4(uint64_t a1)
{
  v2 = sub_1D9EDA4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED6710(uint64_t a1)
{
  v2 = sub_1D9EDA4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED674C()
{
  if (*v0)
  {
    return 0x5074737269467369;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D9ED6794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9F48000 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5074737269467369 && a2 == 0xEC00000079747261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9F2BA1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D9ED6880(uint64_t a1)
{
  v2 = sub_1D9EDA614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED68BC(uint64_t a1)
{
  v2 = sub_1D9EDA614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED6914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9F48000 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9ED69A8(uint64_t a1)
{
  v2 = sub_1D9EDA56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED69E4(uint64_t a1)
{
  v2 = sub_1D9EDA56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75090, &qword_1D9F3EEB0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75098, &qword_1D9F3EEB8);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750A0, &qword_1D9F3EEC0);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750A8, &qword_1D9F3EEC8);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750B0, &qword_1D9F3EED0);
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = v1[1];
  v44 = *v1;
  v45 = v17;
  v18 = v1[3];
  v43 = v1[2];
  v33 = v18;
  v19 = v1[5];
  v32 = v1[4];
  v31 = v19;
  v20 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA470();
  sub_1D9F2BB8C();
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      LOBYTE(v48) = 2;
      sub_1D9EDA56C();
      v21 = v47;
      sub_1D9F2B8FC();
      v24 = v39;
      sub_1D9F2B95C();
      v25 = *(v38 + 8);
      v26 = v7;
    }

    else
    {
      LOBYTE(v48) = 3;
      sub_1D9EDA4C4();
      v30 = v40;
      v21 = v47;
      sub_1D9F2B8FC();
      v48 = v44;
      v49 = v45;
      v50 = v43;
      v51 = v33;
      v52 = v32;
      v53 = v31;
      sub_1D9EDA518();
      v24 = v42;
      sub_1D9F2B9AC();
      v25 = *(v41 + 8);
      v26 = v30;
    }

    v25(v26, v24);
  }

  else
  {
    if (v20)
    {
      LOBYTE(v48) = 1;
      sub_1D9EDA5C0();
      v27 = v47;
      sub_1D9F2B8FC();
      v48 = v44;
      v49 = v45;
      LOBYTE(v50) = v43;
      sub_1D9E5A8BC();
      v28 = v37;
      sub_1D9F2B9AC();
      (*(v36 + 8))(v10, v28);
      return (*(v46 + 8))(v16, v27);
    }

    LOBYTE(v48) = 0;
    sub_1D9EDA614();
    v21 = v47;
    sub_1D9F2B8FC();
    LOBYTE(v48) = 0;
    v22 = v35;
    v23 = v54;
    sub_1D9F2B95C();
    if (!v23)
    {
      LOBYTE(v48) = 1;
      sub_1D9F2B96C();
      (*(v34 + 8))(v13, v22);
      return (*(v46 + 8))(v16, v21);
    }

    (*(v34 + 8))(v13, v22);
  }

  return (*(v46 + 8))(v16, v21);
}

uint64_t PredictedAction.Source.hash(into:)(uint64_t a1)
{
  if (*(v1 + 48) > 1u)
  {
    if (*(v1 + 48) == 2)
    {
      MEMORY[0x1DA7438F0](2);
    }

    else
    {
      MEMORY[0x1DA7438F0](3);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    return sub_1D9F2B18C();
  }

  else if (*(v1 + 48))
  {
    MEMORY[0x1DA7438F0](1);
    return CustomActionIdentity.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    return sub_1D9F2BB1C();
  }
}

uint64_t PredictedAction.Source.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_1D9F2BAFC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x1DA7438F0](2);
    }

    else
    {
      MEMORY[0x1DA7438F0](3);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    sub_1D9F2B18C();
  }

  else if (v1)
  {
    MEMORY[0x1DA7438F0](1);
    CustomActionIdentity.hash(into:)(v3);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    sub_1D9F2BB1C();
  }

  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.Source.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750D8, &qword_1D9F3EED8);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50[-v3];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750E0, &qword_1D9F3EEE0);
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v50[-v4];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750E8, &qword_1D9F3EEE8);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v50[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750F0, &qword_1D9F3EEF0);
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB750F8, &unk_1D9F3EEF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50[-v12];
  v14 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D9EDA470();
  v15 = v64;
  sub_1D9F2BB7C();
  if (!v15)
  {
    v16 = v9;
    v52 = v7;
    v17 = v60;
    v53 = 0;
    v18 = v61;
    v19 = v62;
    v64 = v11;
    v20 = v63;
    v21 = sub_1D9F2B8DC();
    v22 = (2 * *(v21 + 16)) | 1;
    v71 = v21;
    v72 = v21 + 32;
    v73 = 0;
    v74 = v22;
    v23 = sub_1D9E46188();
    if (v23 == 4 || v73 != v74 >> 1)
    {
      v29 = v13;
      v30 = sub_1D9F2B6BC();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v32 = &type metadata for PredictedAction.Source;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v64 + 8))(v29, v10);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v75);
    }

    v51 = v23;
    if (v23 <= 1u)
    {
      if (v23)
      {
        LOBYTE(v65) = 1;
        sub_1D9EDA5C0();
        v37 = v53;
        sub_1D9F2B7DC();
        v25 = v64;
        if (!v37)
        {
          sub_1D9E5AB24();
          v38 = v57;
          sub_1D9F2B89C();
          (*(v55 + 8))(v6, v38);
          (*(v25 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v49 = v65;
          v42 = v66;
          v48 = v67;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v65) = 0;
        sub_1D9EDA614();
        v24 = v53;
        sub_1D9F2B7DC();
        v25 = v64;
        if (!v24)
        {
          v26 = v13;
          LOBYTE(v65) = 0;
          v27 = v52;
          v28 = sub_1D9F2B84C();
          v42 = v41;
          v62 = v28;
          LOBYTE(v65) = 1;
          v61 = sub_1D9F2B85C();
          (*(v56 + 8))(v16, v27);
          (*(v25 + 8))(v26, v10);
          swift_unknownObjectRelease();
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v48 = v61 & 1;
          v49 = v62;
LABEL_21:
          *v20 = v49;
          *(v20 + 8) = v42;
          *(v20 + 16) = v48;
          *(v20 + 24) = v45;
          *(v20 + 32) = v46;
          *(v20 + 40) = v47;
          *(v20 + 48) = v51;
          return __swift_destroy_boxed_opaque_existential_1(v75);
        }
      }

      (*(v25 + 8))(v13, v10);
      goto LABEL_9;
    }

    if (v23 == 2)
    {
      LOBYTE(v65) = 2;
      sub_1D9EDA56C();
      v34 = v53;
      sub_1D9F2B7DC();
      if (!v34)
      {
        v35 = v54;
        v36 = sub_1D9F2B84C();
        v42 = v43;
        v44 = v36;
        (*(v58 + 8))(v17, v35);
        (*(v64 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v49 = v44;
        v48 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        goto LABEL_21;
      }

      (*(v64 + 8))(v13, v10);
      goto LABEL_9;
    }

    LOBYTE(v65) = 3;
    sub_1D9EDA4C4();
    v39 = v53;
    sub_1D9F2B7DC();
    if (!v39)
    {
      sub_1D9EDA668();
      sub_1D9F2B89C();
      v40 = v64;
      (*(v59 + 8))(v18, v19);
      (*(v40 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v49 = v65;
      v42 = v66;
      v48 = v67;
      v45 = v68;
      v46 = v69;
      v47 = v70;
      goto LABEL_21;
    }

    (*(v64 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_1D9ED7B7C()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1D9F2BAFC();
  PredictedAction.Source.hash(into:)(v4);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED7BDC()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1D9F2BAFC();
  PredictedAction.Source.hash(into:)(v4);
  return sub_1D9F2BB4C();
}

void PredictedAction.source.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedAction(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(v3 + 48);
  *(a1 + 48) = v10;

  sub_1D9E51CA8(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t PredictedAction.localizedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredictedAction(0) + 28));

  return v1;
}

uint64_t PredictedAction.glyphName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredictedAction(0) + 32));

  return v1;
}

uint64_t PredictedAction.glyphName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PredictedAction(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D9ED7DC0()
{
  if (*v0)
  {
    return 1751607656;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_1D9ED7DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9ED7EC8(uint64_t a1)
{
  v2 = sub_1D9EDA6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED7F04(uint64_t a1)
{
  v2 = sub_1D9EDA6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED7F40(uint64_t a1)
{
  v2 = sub_1D9EDA710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED7F7C(uint64_t a1)
{
  v2 = sub_1D9EDA710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ED7FB8(uint64_t a1)
{
  v2 = sub_1D9EDA764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED7FF4(uint64_t a1)
{
  v2 = sub_1D9EDA764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.ConfidenceLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75108, &qword_1D9F3EF08);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75110, &qword_1D9F3EF10);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75118, &qword_1D9F3EF18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA6BC();
  sub_1D9F2BB8C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D9EDA710();
    v14 = v18;
    sub_1D9F2B8FC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D9EDA764();
    sub_1D9F2B8FC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t PredictedAction.ConfidenceLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.ConfidenceLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75120, &qword_1D9F3EF20);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75128, &qword_1D9F3EF28);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75130, &qword_1D9F3EF30);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA6BC();
  v12 = v31;
  sub_1D9F2BB7C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D9F2B8DC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D9E4618C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D9F2B6BC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v22 = &type metadata for PredictedAction.ConfidenceLevel;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D9EDA710();
        sub_1D9F2B7DC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D9EDA764();
        sub_1D9F2B7DC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t PredictedAction.confidenceLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PredictedAction(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

VisualActionPredictionSupport::PredictedAction::ReadinessState __swiftcall PredictedAction.ReadinessState.init(prefersStructuredExtraction:requiresStructuredExtraction:requiresPixelBuffer:)(Swift::Bool prefersStructuredExtraction, Swift::Bool requiresStructuredExtraction, Swift::Bool requiresPixelBuffer)
{
  *v3 = prefersStructuredExtraction;
  v3[1] = requiresStructuredExtraction;
  v3[2] = requiresPixelBuffer;
  result.prefersStructuredExtraction = prefersStructuredExtraction;
  return result;
}

unint64_t sub_1D9ED88EC()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1D9ED8944@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EDBD30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9ED896C(uint64_t a1)
{
  v2 = sub_1D9EDA7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED89A8(uint64_t a1)
{
  v2 = sub_1D9EDA7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.ReadinessState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75138, &qword_1D9F3EF38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 1);
  v9[3] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA7B8();
  sub_1D9F2BB8C();
  v12 = 0;
  sub_1D9F2B96C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_1D9F2B96C();
  v10 = 2;
  sub_1D9F2B96C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PredictedAction.ReadinessState.hash(into:)()
{
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t PredictedAction.ReadinessState.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.ReadinessState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75140, &qword_1D9F3EF40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDA7B8();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_1D9F2B85C();
    v15 = 1;
    v10 = sub_1D9F2B85C();
    v14 = 2;
    v12 = sub_1D9F2B85C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v10 & 1;
    a2[2] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9ED8E6C()
{
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t sub_1D9ED8EB8()
{
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.readinessState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PredictedAction(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

__n128 PredictedAction.init(id:canonicalIdentifier:source:localizedTitle:glyphName:confidenceLevel:readinessState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11)
{
  v16 = *(a4 + 32);
  v17 = *(a4 + 40);
  v18 = *(a4 + 48);
  v31 = a11[1];
  v32 = *a11;
  v29 = *a10;
  v30 = a11[2];
  v19 = type metadata accessor for PredictedAction(0);
  v20 = (a9 + v19[8]);
  v21 = sub_1D9F2AD7C();
  v27 = *(a4 + 16);
  v28 = *a4;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = (a9 + v19[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = a9 + v19[6];
  result = v28;
  *v23 = v28;
  *(v23 + 16) = v27;
  *(v23 + 32) = v16;
  *(v23 + 40) = v17;
  *(v23 + 48) = v18;
  v25 = (a9 + v19[7]);
  *v25 = a5;
  v25[1] = a6;
  *v20 = a7;
  v20[1] = a8;
  *(a9 + v19[9]) = v29;
  v26 = (a9 + v19[10]);
  *v26 = v32;
  v26[1] = v31;
  v26[2] = v30;
  return result;
}

__n128 PredictedAction.init(id:canonicalIdentifier:source:localizedTitle:confidenceLevel:readinessState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(a4 + 32);
  v15 = *(a4 + 40);
  v16 = *(a4 + 48);
  v17 = *a7;
  v29 = a8[1];
  v30 = *a8;
  v28 = a8[2];
  v18 = type metadata accessor for PredictedAction(0);
  v19 = (a9 + v18[8]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = sub_1D9F2AD7C();
  v26 = *(a4 + 16);
  v27 = *a4;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = (a9 + v18[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = a9 + v18[6];
  result = v27;
  *v22 = v27;
  *(v22 + 16) = v26;
  *(v22 + 32) = v14;
  *(v22 + 40) = v15;
  *(v22 + 48) = v16;
  v24 = (a9 + v18[7]);
  *v24 = a5;
  v24[1] = a6;
  *(a9 + v18[9]) = v17;
  v25 = (a9 + v18[10]);
  *v25 = v30;
  v25[1] = v29;
  v25[2] = v28;
  return result;
}

uint64_t sub_1D9ED921C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E656469666E6F63;
  if (v1 != 5)
  {
    v3 = 0x73656E6964616572;
  }

  v4 = 0x657A696C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6D614E6870796C67;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x656372756F73;
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

uint64_t sub_1D9ED9314@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EDBE54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9ED933C(uint64_t a1)
{
  v2 = sub_1D9EDAA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED9378(uint64_t a1)
{
  v2 = sub_1D9EDAA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75148, &qword_1D9F3EF48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EDAA04();
  sub_1D9F2BB8C();
  LOBYTE(v22) = 0;
  sub_1D9F2AD7C();
  sub_1D9EDAE04(&qword_1EE0F3868, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v9 = type metadata accessor for PredictedAction(0);
    LOBYTE(v22) = 1;
    sub_1D9F2B95C();
    v10 = v3 + v9[6];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    v16 = *(v10 + 48);
    v22 = *v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    HIBYTE(v21) = 2;
    sub_1D9E51CA8(v22, v11, v12, v13, v14, v15, v16);
    sub_1D9EDAA58();
    sub_1D9F2B9AC();
    sub_1D9E51D58(v22, v23, v24, v25, v26, v27, v28);
    LOBYTE(v22) = 3;
    sub_1D9F2B95C();
    LOBYTE(v22) = 4;
    sub_1D9F2B95C();
    LOBYTE(v22) = *(v3 + v9[9]);
    HIBYTE(v21) = 5;
    sub_1D9EDAAAC();
    sub_1D9F2B9AC();
    v17 = (v3 + v9[10]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v17) = v17[2];
    LOBYTE(v22) = v18;
    BYTE1(v22) = v19;
    BYTE2(v22) = v17;
    HIBYTE(v21) = 6;
    sub_1D9EDAB00();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PredictedAction.hash(into:)(uint64_t a1)
{
  sub_1D9F2AD7C();
  sub_1D9EDAE04(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D9F2B0EC();
  v3 = type metadata accessor for PredictedAction(0);
  sub_1D9F2B18C();
  v4 = v1 + *(v3 + 24);
  if (*(v4 + 48) > 1u)
  {
    if (*(v4 + 48) == 2)
    {
      MEMORY[0x1DA7438F0](2);
    }

    else
    {
      MEMORY[0x1DA7438F0](3);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    sub_1D9F2B18C();
  }

  else if (*(v4 + 48))
  {
    MEMORY[0x1DA7438F0](1);
    CustomActionIdentity.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    sub_1D9F2BB1C();
  }

  sub_1D9F2B18C();
  sub_1D9F2B18C();
  MEMORY[0x1DA7438F0](*(v1 + *(v3 + 36)));
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t PredictedAction.hashValue.getter()
{
  sub_1D9F2BAFC();
  PredictedAction.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t PredictedAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1D9F2AD7C();
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75150, &qword_1D9F3EF50);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for PredictedAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D9EDAA04();
  v36 = v9;
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v14 = v34;
    LOBYTE(v38) = 0;
    sub_1D9EDAE04(&qword_1EE0F3860, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v15 = v35;
    sub_1D9F2B89C();
    (*(v33 + 32))(v12, v6, v4);
    LOBYTE(v38) = 1;
    v16 = sub_1D9F2B84C();
    v17 = &v12[v10[5]];
    *v17 = v16;
    v17[1] = v18;
    v42 = 2;
    sub_1D9EDAB54();
    sub_1D9F2B89C();
    v19 = v41;
    v20 = &v12[v10[6]];
    v21 = v39;
    *v20 = v38;
    *(v20 + 1) = v21;
    *(v20 + 2) = v40;
    v20[48] = v19;
    LOBYTE(v38) = 3;
    v22 = sub_1D9F2B84C();
    v23 = &v12[v10[7]];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v38) = 4;
    v25 = sub_1D9F2B84C();
    v26 = &v12[v10[8]];
    *v26 = v25;
    v26[1] = v27;
    v42 = 5;
    sub_1D9EDABA8();
    sub_1D9F2B89C();
    v12[v10[9]] = v38;
    v42 = 6;
    sub_1D9EDABFC();
    sub_1D9F2B89C();
    (*(v14 + 8))(v36, v15);
    v28 = BYTE1(v38);
    v29 = BYTE2(v38);
    v30 = &v12[v10[10]];
    *v30 = v38;
    v30[1] = v28;
    v30[2] = v29;
    sub_1D9EDAC50(v12, v32);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_1D9E53398(v12);
  }
}

uint64_t sub_1D9ED9F0C()
{
  sub_1D9F2BAFC();
  PredictedAction.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED9F50()
{
  sub_1D9F2BAFC();
  PredictedAction.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport09PredictedB0V6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v58[0] = *a1;
  v58[1] = v2;
  v58[2] = v4;
  v58[3] = v5;
  v58[4] = v7;
  v58[5] = v6;
  v59 = v8;
  v60 = v10;
  v61 = v9;
  v62 = v12;
  v63 = v11;
  v64 = v13;
  v65 = v14;
  v66 = v15;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_25;
      }

      if (v3 != v10 || v2 != v9)
      {
        v37 = v11;
        v47 = v13;
        v51 = v14;
        v40 = sub_1D9F2BA1C();
        sub_1D9E51CA8(v10, v9, v12, v37, v47, v51, 2u);
        sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 2u);
        sub_1D9EDC0B8(v58);
        return v40 & 1;
      }

      sub_1D9E51CA8(v3, v2, v12, v11, v13, v14, 2u);
      v16 = v3;
      v17 = v2;
      v18 = v4;
      v19 = v5;
      v20 = v7;
      v21 = v6;
      v22 = 2;
    }

    else
    {
      if (v15 != 3)
      {
        goto LABEL_25;
      }

      v46 = v13;
      if ((v3 != v10 || v2 != v9) && (v44 = v11, v25 = v14, v26 = sub_1D9F2BA1C(), v11 = v44, v13 = v46, v14 = v25, (v26 & 1) == 0) || (v4 != v12 || v5 != v11) && (v27 = v11, v50 = v14, v28 = sub_1D9F2BA1C(), v11 = v27, v13 = v46, v14 = v50, (v28 & 1) == 0))
      {
        sub_1D9E51CA8(v10, v9, v12, v11, v13, v14, 3u);
        v29 = v3;
        v30 = v2;
        v31 = v4;
        v32 = v5;
        v33 = v7;
        v34 = v6;
        v35 = 3;
        goto LABEL_26;
      }

      if (v7 != v13 || v6 != v14)
      {
        v39 = v11;
        v53 = v14;
        v42 = sub_1D9F2BA1C();
        sub_1D9E51CA8(v10, v9, v12, v39, v46, v53, 3u);
        sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 3u);
        sub_1D9EDC0B8(v58);
        if (v42)
        {
          v24 = 1;
          return v24 & 1;
        }

        goto LABEL_27;
      }

      sub_1D9E51CA8(v10, v9, v12, v11, v7, v6, 3u);
      v16 = v3;
      v17 = v2;
      v18 = v4;
      v19 = v5;
      v20 = v7;
      v21 = v6;
      v22 = 3;
    }

    sub_1D9E51CA8(v16, v17, v18, v19, v20, v21, v22);
    sub_1D9EDC0B8(v58);
    v24 = 1;
    return v24 & 1;
  }

  if (v8)
  {
    if (v15 == 1)
    {
      v56[0] = v3;
      v56[1] = v2;
      v57 = v4;
      v54[0] = v10;
      v54[1] = v9;
      v55 = v12;
      v43 = v11;
      v45 = v13;
      v23 = v13;
      v49 = v14;
      sub_1D9E51CA8(v10, v9, v12, v11, v13, v14, 1u);
      sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 1u);
      sub_1D9E51CA8(v10, v9, v12, v43, v23, v49, 1u);
      sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 1u);
      v24 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(v56, v54);
      sub_1D9EDC0B8(v58);
      sub_1D9E51D58(v10, v9, v12, v43, v45, v49, 1u);
      sub_1D9E51D58(v3, v2, v4, v5, v7, v6, 1u);
      return v24 & 1;
    }

    goto LABEL_25;
  }

  if (v15)
  {
LABEL_25:
    sub_1D9E51CA8(v10, v9, v12, v11, v13, v14, v15);
    v29 = v3;
    v30 = v2;
    v31 = v4;
    v32 = v5;
    v33 = v7;
    v34 = v6;
    v35 = v8;
LABEL_26:
    sub_1D9E51CA8(v29, v30, v31, v32, v33, v34, v35);
    sub_1D9EDC0B8(v58);
LABEL_27:
    v24 = 0;
    return v24 & 1;
  }

  if (v3 == v10 && v2 == v9)
  {
    sub_1D9E51CA8(v3, v2, v12, v11, v13, v14, 0);
    sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 0);
    sub_1D9EDC0B8(v58);
LABEL_33:
    v24 = v12 ^ v4 ^ 1;
    return v24 & 1;
  }

  v38 = v11;
  v48 = v13;
  v52 = v14;
  v41 = sub_1D9F2BA1C();
  sub_1D9E51CA8(v10, v9, v12, v38, v48, v52, 0);
  sub_1D9E51CA8(v3, v2, v4, v5, v7, v6, 0);
  sub_1D9EDC0B8(v58);
  v24 = 0;
  if (v41)
  {
    goto LABEL_33;
  }

  return v24 & 1;
}

unint64_t sub_1D9EDA470()
{
  result = qword_1EE0F3668;
  if (!qword_1EE0F3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3668);
  }

  return result;
}

unint64_t sub_1D9EDA4C4()
{
  result = qword_1ECB750B8;
  if (!qword_1ECB750B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750B8);
  }

  return result;
}

unint64_t sub_1D9EDA518()
{
  result = qword_1ECB750C0;
  if (!qword_1ECB750C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750C0);
  }

  return result;
}

unint64_t sub_1D9EDA56C()
{
  result = qword_1ECB750C8;
  if (!qword_1ECB750C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750C8);
  }

  return result;
}

unint64_t sub_1D9EDA5C0()
{
  result = qword_1EE0F3680;
  if (!qword_1EE0F3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3680);
  }

  return result;
}

unint64_t sub_1D9EDA614()
{
  result = qword_1ECB750D0;
  if (!qword_1ECB750D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB750D0);
  }

  return result;
}

unint64_t sub_1D9EDA668()
{
  result = qword_1ECB75100;
  if (!qword_1ECB75100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75100);
  }

  return result;
}

unint64_t sub_1D9EDA6BC()
{
  result = qword_1EE0F36D8;
  if (!qword_1EE0F36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36D8);
  }

  return result;
}

unint64_t sub_1D9EDA710()
{
  result = qword_1EE0F36C0;
  if (!qword_1EE0F36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36C0);
  }

  return result;
}

unint64_t sub_1D9EDA764()
{
  result = qword_1EE0F36A8;
  if (!qword_1EE0F36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36A8);
  }

  return result;
}

unint64_t sub_1D9EDA7B8()
{
  result = qword_1EE0F36F0;
  if (!qword_1EE0F36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36F0);
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D9F2AD3C() & 1) != 0 && ((v4 = type metadata accessor for PredictedAction(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1D9F2BA1C()) && (v10 = a1 + v4[6], v11 = *(v10 + 8), v12 = *(v10 + 16), v13 = *(v10 + 24), v14 = *(v10 + 32), v15 = *(v10 + 40), v16 = *(v10 + 48), v43 = *v10, v44 = v11, v45 = v12, v46 = v13, v47 = v14, v48 = v15, v49 = v16, v17 = a2 + v4[6], v18 = *(v17 + 8), v19 = *(v17 + 16), v20 = *(v17 + 24), v21 = *(v17 + 32), v22 = *(v17 + 40), v23 = *(v17 + 48), v36 = *v17, v37 = v18, v38 = v19, v39 = v20, v40 = v21, v41 = v22, v42 = v23, sub_1D9E51CA8(v43, v11, v12, v13, v14, v15, v16), sub_1D9E51CA8(v36, v18, v19, v20, v21, v22, v23), v24 = _s29VisualActionPredictionSupport09PredictedB0V6SourceO2eeoiySbAE_AEtFZ_0(&v43, &v36), sub_1D9E51D58(v36, v37, v38, v39, v40, v41, v42), sub_1D9E51D58(v43, v44, v45, v46, v47, v48, v49), (v24) && ((v25 = v4[7], v26 = *(a1 + v25), v27 = *(a1 + v25 + 8), v28 = (a2 + v25), v26 == *v28) && v27 == v28[1] || (sub_1D9F2BA1C())) && ((v29 = v4[8], v30 = *(a1 + v29), v31 = *(a1 + v29 + 8), v32 = (a2 + v29), v30 == *v32) && v31 == v32[1] || (sub_1D9F2BA1C()) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v35 = v4[10];
    v33 = (*(a1 + v35) ^ *(a2 + v35) | *(a1 + v35 + 1) ^ *(a2 + v35 + 1) | *(a1 + v35 + 2) ^ *(a2 + v35 + 2)) ^ 1;
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

unint64_t sub_1D9EDAA04()
{
  result = qword_1EE0F3708;
  if (!qword_1EE0F3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3708);
  }

  return result;
}

unint64_t sub_1D9EDAA58()
{
  result = qword_1EE0F2278;
  if (!qword_1EE0F2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2278);
  }

  return result;
}

unint64_t sub_1D9EDAAAC()
{
  result = qword_1EE0F2288;
  if (!qword_1EE0F2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2288);
  }

  return result;
}

unint64_t sub_1D9EDAB00()
{
  result = qword_1EE0F2298;
  if (!qword_1EE0F2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2298);
  }

  return result;
}

unint64_t sub_1D9EDAB54()
{
  result = qword_1EE0F2270;
  if (!qword_1EE0F2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2270);
  }

  return result;
}

unint64_t sub_1D9EDABA8()
{
  result = qword_1EE0F2280;
  if (!qword_1EE0F2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2280);
  }

  return result;
}

unint64_t sub_1D9EDABFC()
{
  result = qword_1EE0F2290;
  if (!qword_1EE0F2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2290);
  }

  return result;
}

uint64_t sub_1D9EDAC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9EDACB8()
{
  result = qword_1ECB75158;
  if (!qword_1ECB75158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75158);
  }

  return result;
}

unint64_t sub_1D9EDAD10()
{
  result = qword_1ECB75160;
  if (!qword_1ECB75160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75160);
  }

  return result;
}

unint64_t sub_1D9EDAD68()
{
  result = qword_1ECB75168;
  if (!qword_1ECB75168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75168);
  }

  return result;
}

uint64_t sub_1D9EDAE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EDAEBC(uint64_t a1)
{
  result = sub_1D9F2AD7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D9EDAF84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9EDAFCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PredictedAction.ReadinessState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PredictedAction.ReadinessState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1D9EDB21C()
{
  result = qword_1ECB75178;
  if (!qword_1ECB75178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75178);
  }

  return result;
}

unint64_t sub_1D9EDB274()
{
  result = qword_1ECB75180;
  if (!qword_1ECB75180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75180);
  }

  return result;
}

unint64_t sub_1D9EDB2CC()
{
  result = qword_1ECB75188;
  if (!qword_1ECB75188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75188);
  }

  return result;
}

unint64_t sub_1D9EDB324()
{
  result = qword_1ECB75190;
  if (!qword_1ECB75190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75190);
  }

  return result;
}

unint64_t sub_1D9EDB37C()
{
  result = qword_1ECB75198;
  if (!qword_1ECB75198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75198);
  }

  return result;
}

unint64_t sub_1D9EDB3D4()
{
  result = qword_1ECB751A0;
  if (!qword_1ECB751A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751A0);
  }

  return result;
}

unint64_t sub_1D9EDB42C()
{
  result = qword_1ECB751A8;
  if (!qword_1ECB751A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751A8);
  }

  return result;
}

unint64_t sub_1D9EDB484()
{
  result = qword_1ECB751B0;
  if (!qword_1ECB751B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB751B0);
  }

  return result;
}

unint64_t sub_1D9EDB4DC()
{
  result = qword_1EE0F36F8;
  if (!qword_1EE0F36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F36F8);
  }

  return result;
}

unint64_t sub_1D9EDB534()
{
  result = qword_1EE0F3700;
  if (!qword_1EE0F3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3700);
  }

  return result;
}