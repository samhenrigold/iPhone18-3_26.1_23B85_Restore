uint64_t Metadata.init(dict:)(uint64_t a1)
{
  result = sub_5BB14();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v3;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (v8 << 10) | (16 * v9);
      v11 = (*(a1 + 48) + v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(a1 + 56) + v10);
      v15 = *v14;
      v16 = v14[1];

      v18._countAndFlagsBits = v15;
      v18._object = v16;
      v19._countAndFlagsBits = v12;
      v19._object = v13;
      sub_5BB24(v18, v19);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1478()
{
  v0 = sub_5C074();
  __swift_allocate_value_buffer(v0, qword_789F8);
  __swift_project_value_buffer(v0, qword_789F8);
  sub_65E8();

  return sub_5C064();
}

uint64_t sub_1508()
{
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v0 = sub_5C074();

  return __swift_project_value_buffer(v0, qword_789F8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OTLPGRPCClientLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v2 = sub_5C074();
  v3 = __swift_project_value_buffer(v2, qword_789F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void OTLPGRPCClientInternalError.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 4;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 5;
LABEL_5:
    sub_5C464(v2);
  }

  sub_5C464(v1);
}

Swift::Int OTLPGRPCClientInternalError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_5C454();
  if (!v2)
  {
    v3 = 4;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 5;
LABEL_5:
    sub_5C464(v3);
  }

  sub_5C464(v1);
  return sub_5C474();
}

void sub_1724()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 4;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 5;
LABEL_5:
    sub_5C464(v2);
  }

  sub_5C464(v1);
}

Swift::Int sub_1774(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_5C454();
  if (!v3)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 5;
LABEL_5:
    sub_5C464(v4);
  }

  sub_5C464(v2);
  return sub_5C474();
}

Swift::Int sub_1814(unsigned __int8 a1)
{
  sub_5C454();
  sub_5C464(a1);
  return sub_5C474();
}

Swift::Int sub_1878(uint64_t a1)
{
  sub_5C454();
  sub_17EC(v3, *v1);
  return sub_5C474();
}

uint64_t sub_18B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v4 = type metadata accessor for OTLPGRPCClient.State(0, a1, a2, a4);
  return sub_55D8(&v6, v4);
}

char *OTLPGRPCClient.__allocating_init(transport:configuration:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_566C(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v4;
}

char *OTLPGRPCClient.init(transport:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_566C(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v3;
}

uint64_t OTLPGRPCClient.export(request:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B30;

  return OTLPGRPCClient.processExport(request:)(a1);
}

uint64_t sub_1B30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t OTLPGRPCClient.processExport(request:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = sub_5C334();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_5BC44();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_5BC74();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = sub_5BA34();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = *(v3 + 88);
  v2[23] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[24] = AssociatedTypeWitness;
  v2[25] = *(AssociatedTypeWitness - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1ED0, 0, 0);
}

uint64_t sub_1ED0()
{
  v22 = v0;
  v1 = *(v0 + 48);
  v2 = *(*v1 + 120);
  *(v0 + 224) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for OTLPExporterConfiguration(0);
  *(v0 + 232) = v4;
  v5 = v3 + *(v4 + 20);
  *(v0 + 240) = *v5;
  *(v0 + 248) = *(v5 + 8);
  LOBYTE(v5) = *(v5 + 16);
  *(v0 + 368) = v5;
  if (v5)
  {
    v6 = sub_53CC8();
  }

  else
  {
    static TSDeadLine.now()(&v21);
    v6 = &v20;
    static TSDeadLine.+ infix(_:_:)(&v21, &v20);
  }

  v7 = *(v0 + 176);
  v8 = *(v0 + 48);
  *(v0 + 256) = *v6;
  v9 = *(v4 + 24);
  *(v0 + 264) = *(v7 + 64);
  *(v0 + 272) = (v7 + 64) & 0xFFFFFFFFFFFFLL | 0xCBB9000000000000;
  *(v0 + 280) = *(v3 + v9);
  *(v0 + 288) = *(*v8 + 112);
  *(v0 + 296) = 0;
  v10 = *(v0 + 368);
  sub_5BA24();
  if ((v10 & 1) == 0)
  {
    sub_5BA14();
  }

  v19 = (*(v0 + 264) + **(v0 + 264));
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_20C4;
  v12 = *(v0 + 280);
  v13 = *(v0 + 208);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v16 = *(v0 + 168);
  v17 = *(v0 + 40);

  return v19(v13, v17, v12, v16, v14, v15);
}

uint64_t sub_20C4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_2488;
  }

  else
  {
    v2 = sub_21D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_21D8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v4 + 32))(v2, v1, v3);
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v5 = sub_5C074();
  __swift_project_value_buffer(v5, qword_789F8);
  v6 = sub_5C054();
  v7 = sub_5C2C4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[37] + 1;
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_0, v6, v7, "Publish success. attempt=%{public}ld", v9, 0xCu);
  }

  v10 = v0[39];
  v11 = v0[27];
  v13 = v0[22];
  v12 = v0[23];

  (*(v13 + 56))(v11, v12, v13);
  if (v10)
  {
    (*(v0[25] + 8))(v0[27], v0[24]);
  }

  else
  {
    (*(v0[25] + 8))();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2488()
{
  v75 = v0;
  v1 = v0[39];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v0[4] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78000, &qword_5EBF0);
  if (!swift_dynamicCast())
  {

    if (qword_789F0 != -1)
    {
      swift_once();
    }

    v35 = sub_5C074();
    __swift_project_value_buffer(v35, qword_789F8);
    swift_errorRetain();
    v36 = sub_5C054();
    v37 = sub_5C2B4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&dword_0, v36, v37, "Publish failed. error=%{public}@", v38, 0xCu);
      sub_60C4(v39, &qword_78008, &qword_5EBF8);
    }

    swift_willThrow();
    goto LABEL_16;
  }

  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];

  (*(v5 + 32))(v2, v3, v4);
  sub_5BC54();
  v72 = RPCError.Code.isOTLPRetryable.getter();
  v69 = *(v7 + 8);
  v69(v6, v8);
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v9 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  v14 = sub_5C074();
  v15 = __swift_project_value_buffer(v14, qword_789F8);
  v16 = *(v12 + 16);
  v0[40] = v15;
  v0[41] = v16;
  v0[42] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v9, v10, v13);
  v70 = v16;
  v16(v11, v10, v13);
  v17 = sub_5C054();
  v18 = sub_5C2B4();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[16];
  v71 = v0[15];
  v21 = v0[13];
  v22 = v0[14];
  if (v19)
  {
    v23 = v0[12];
    v66 = v0[13];
    v24 = v0[10];
    v25 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v25 = 136446722;
    log = v17;
    sub_5BC54();
    sub_635C(&qword_78020, &type metadata accessor for RPCError.Code, &protocol conformance descriptor for RPCError.Code);
    v26 = sub_5C394();
    v67 = v18;
    v28 = v27;
    v69(v23, v24);
    v29 = *(v22 + 8);
    v29(v20, v66);
    v30 = sub_4F84(v26, v28, v74);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = sub_5BC64();
    v33 = v32;
    v29(v71, v66);
    v34 = sub_4F84(v31, v33, v74);

    *(v25 + 14) = v34;
    *(v25 + 22) = 1026;
    *(v25 + 24) = v72 & 1;
    _os_log_impl(&dword_0, log, v67, "gRPC error. grpc_error_code=%{public}s grpc_status_message=%s error_retryable=%{BOOL,public}d", v25, 0x1Cu);
    swift_arrayDestroy();

    v0[43] = v29;
    if ((v72 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v29 = *(v22 + 8);
    v29(v71, v21);
    v29(v20, v21);
    v0[43] = v29;
    if ((v72 & 1) == 0)
    {
LABEL_14:
      v42 = v0[17];
      v43 = v0[13];
      sub_635C(&qword_78010, &type metadata accessor for RPCError, &protocol conformance descriptor for RPCError);
      swift_allocError();
      v70(v44, v42, v43);
LABEL_15:
      swift_willThrow();
      v29(v42, v43);

LABEL_16:

      v45 = v0[1];

      return v45();
    }
  }

  v41 = v0[37];
  if (v41 == 999)
  {
    goto LABEL_14;
  }

  v47 = v0[32];
  v48 = (v0[6] + v0[28] + *(v0[29] + 32));
  v49 = *v48;
  v50 = v48[1];
  exp2((v41 + 1));
  v51 = sub_5C4B4();
  v53 = v52;
  if (sub_5C4A4())
  {
    v50 = v53;
  }

  else
  {
    v51 = v49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78018, &qword_5EC00);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_5EBD0;
  v0[2] = 0x3A66666F6B636162;
  v0[3] = 0xE900000000000020;
  v77._countAndFlagsBits = sub_5C494();
  sub_5C134(v77);

  v55 = v0[2];
  v56 = v0[3];
  *(v54 + 56) = &type metadata for String;
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  sub_5C444();

  static TSDeadLine.now()(&v73);
  static TSDeadLine.+ infix(_:_:)(&v73, v74);
  v73 = v47;
  if (!static TSDeadLine.> infix(_:_:)(&v73, v74))
  {
    v42 = v0[17];
    v43 = v0[13];
    sub_635C(&qword_78010, &type metadata accessor for RPCError, &protocol conformance descriptor for RPCError);
    swift_allocError();
    v70(v65, v42, v43);
    goto LABEL_15;
  }

  v57 = sub_5C054();
  v58 = sub_5C2C4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74[0] = v60;
    *v59 = 136315138;
    v61 = sub_5C494();
    v63 = sub_4F84(v61, v62, v74);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_0, v57, v58, "Waiting before reattempting request backoff=%s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  sub_5C3F4();
  v64 = swift_task_alloc();
  v0[44] = v64;
  *v64 = v0;
  v64[1] = sub_2E00;

  return sub_4ACC(v51, v50, 0, 0, 1);
}

uint64_t sub_2E00()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_30C0;
  }

  else
  {
    v3 = sub_2F68;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2F68()
{
  (*(v0 + 344))(*(v0 + 136), *(v0 + 104));

  ++*(v0 + 296);
  v1 = *(v0 + 368);
  sub_5BA24();
  if ((v1 & 1) == 0)
  {
    sub_5BA14();
  }

  v10 = (*(v0 + 264) + **(v0 + 264));
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_20C4;
  v3 = *(v0 + 280);
  v4 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 40);

  return v10(v4, v8, v3, v7, v5, v6);
}

uint64_t sub_30C0()
{
  swift_errorRetain();
  v1 = sub_5C054();
  v2 = sub_5C2B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Error thrown whilst waiting to publish. error=%{public}@", v3, 0xCu);
    sub_60C4(v4, &qword_78008, &qword_5EBF8);
  }

  v6 = v0[43];
  v7 = v0[41];
  v8 = v0[17];
  v9 = v0[13];

  sub_635C(&qword_78010, &type metadata accessor for RPCError, &protocol conformance descriptor for RPCError);
  swift_allocError();
  v7(v10, v8, v9);
  swift_willThrow();

  v6(v8, v9);

  v11 = v0[1];

  return v11();
}

uint64_t OTLPGRPCClient.run()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_335C, 0, 0);
}

uint64_t sub_335C()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = *(v1 + 88);
  v4 = *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v5));
  sub_59EC((v2 + v4));
  os_unfair_lock_unlock((v2 + v5));

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_3504;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_3504()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_3628, 0, 0);
  }
}

uint64_t sub_3628()
{
  sub_368C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_368C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_6024((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_374C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78038, &qword_5EDE8);
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_37E8, 0, 0);
}

uint64_t sub_37E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_5C1E4();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_3EC0(v1, &unk_5EDF8, v5);
  sub_60C4(v1, &qword_78038, &qword_5EDE8);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_3EC0(v1, &unk_5EE08, v6);
  sub_60C4(v1, &qword_78038, &qword_5EDE8);
  v4(v1, 1, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_3EC0(v1, &unk_5EE18, v7);
  sub_60C4(v1, &qword_78038, &qword_5EDE8);
  v8 = swift_task_alloc();
  v0[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78040, &unk_5EE20);
  *v8 = v0;
  v8[1] = sub_3A60;

  return ThrowingTaskGroup.next(isolation:)(v0 + 7, 0, 0, v9);
}

uint64_t sub_3A60()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_3C18;
  }

  else
  {
    v2 = sub_3B74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78000, &qword_5EBF0);
  sub_5C2A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3C18()
{
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v1 = sub_5C074();
  __swift_project_value_buffer(v1, qword_789F8);
  swift_errorRetain();
  v2 = sub_5C054();
  v3 = sub_5C2B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Child task threw error. error=%{public}@", v4, 0xCu);
    sub_60C4(v5, &qword_78008, &qword_5EBF8);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78000, &qword_5EBF0);
  sub_5C2A4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3E28()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_65D8;

  return GRPCClient.runConnections()();
}

uint64_t sub_3EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78038, &qword_5EDE8);
  off_708C8();
  v8 = v17 - v7;
  sub_628C(a1, v17 - v7);
  v9 = sub_5C1E4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78038, &qword_5EDE8);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = sub_5C1B4();
      v13 = v12;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_5C1D4();
    (*(v10 + 8))(v8, v9);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v13 = 0;
LABEL_6:
  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_40C0()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_416C;

  return EventBuffer.run()();
}

uint64_t sub_416C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for EventBuffer.AsyncIterator(0, AssociatedTypeWitness, v6, v7);
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_4368, 0, 0);
}

uint64_t sub_4368()
{
  EventBuffer.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_4458;
  v3 = *(v0 + 32);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v0 + 16, 0, 0, v3, WitnessTable);
}

uint64_t sub_4458()
{

  if (!v0)
  {

    return _swift_task_switch(sub_4568, 0, 0);
  }

  return result;
}

uint64_t sub_4568()
{
  v1 = v0[2];
  v0[8] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_4660;

    return OTLPGRPCClient.processExport(request:)(v1);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_4660()
{
  *(*v1 + 80) = v0;

  if (v0)
  {

    v2 = sub_4850;
  }

  else
  {
    v2 = sub_477C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_477C()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_4458;
  v3 = *(v0 + 32);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v0 + 16, 0, 0, v3, WitnessTable);
}

uint64_t sub_4850()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OTLPGRPCClient.gracefulShutdown()()
{
  v2 = *(v0 + 16);
  v3 = *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_5B00((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));
  if (!v1)
  {
    sub_5B9D4();
  }
}

char *OTLPGRPCClient.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  sub_5B74(v0 + *(*v0 + 120));

  return v0;
}

uint64_t OTLPGRPCClient.__deallocating_deinit()
{
  OTLPGRPCClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_4ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_5C324();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_4BCC, 0, 0);
}

uint64_t sub_4BCC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_5C334();
  v5 = sub_635C(&qword_78050, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_5C3D4();
  sub_635C(&qword_78058, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_5C344();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_4D5C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_4D5C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_4F18, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_4F18()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_4F84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5050(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_62FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_5050(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_515C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_5C314();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_515C(uint64_t a1, unint64_t a2)
{
  v3 = sub_51A8(a1, a2);
  sub_52D8(&off_70C88);
  return v3;
}

void *sub_51A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_53C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_5C314();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_5C144();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_53C4(v10, 0);
        result = sub_5C2E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_52D8(uint64_t result)
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

  result = sub_5438(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_53C4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78048, &unk_638E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_5438(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78048, &unk_638E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL _s16TelemetrySupport27OTLPGRPCClientInternalErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return v4 == 2 && v3 == 2;
    }

    else
    {
      return v4 == 2 && v3 == 3;
    }
  }

  else
  {
    if (!v2)
    {
      return v4 == 2 && !v3;
    }

    return v4 == 2 && v3 == 1;
  }
}

uint64_t sub_55D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_5C304();
  return sub_5C2F4();
}

char *sub_566C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = v2;
  v26 = a1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  off_708C8();
  v7 = &v25 - v6;
  v9 = *(v8 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  off_708C8();
  v13 = &v25 - v12;
  v28 = 0;
  v15 = type metadata accessor for OTLPGRPCClient.State(0, v4, v9, v14);
  *(v2 + 2) = sub_55D8(&v28, v15);
  swift_getAssociatedConformanceWitness();
  sub_5BA04();
  (*(v11 + 16))(v13, v26, AssociatedTypeWitness);
  *(v2 + 3) = sub_5B9F4();
  v16 = *(v9 + 40);

  v16(v17, v4, v9);
  (*(v5 + 32))(&v3[*(*v3 + 112)], v7, v4);
  v18 = v27;
  sub_63A4(v27, &v3[*(*v3 + 120)]);
  v19 = swift_getAssociatedTypeWitness();
  type metadata accessor for EventBuffer(0, v19, v20, v21);
  v22 = type metadata accessor for OTLPExporterConfiguration(0);
  v23 = sub_541B4(*(v18 + *(v22 + 36)), *(v18 + *(v22 + 40)), *(v18 + *(v22 + 40) + 8));
  sub_5B74(v18);
  *&v2[*(*v2 + 128)] = v23;
  return v2;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

_BYTE *sub_59EC(_BYTE *result)
{
  if (*result)
  {
    if (*result == 1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    sub_5FD0();
    swift_allocError();
    *v2 = v1;
    *(v2 + 8) = 2;
    return swift_willThrow();
  }

  else
  {
    *result = 2;
  }

  return result;
}

uint64_t sub_5A68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B30;

  return sub_374C(v5, a2, v2);
}

_BYTE *sub_5B00(_BYTE *result)
{
  if (*result == 2)
  {
    *result = 1;
  }

  else
  {
    sub_5FD0();
    swift_allocError();
    *v1 = 1;
    *(v1 + 8) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_5B74(uint64_t a1)
{
  v2 = type metadata accessor for OTLPExporterConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_5BD4()
{
  result = qword_78028;
  if (!qword_78028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78028);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OTLPGRPCClientInternalError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OTLPGRPCClientInternalError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_5CCC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_5CE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_5D14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OTLPExporterConfiguration(319);
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

uint64_t sub_5E64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_5EF4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5FD0()
{
  result = qword_78030;
  if (!qword_78030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78030);
  }

  return result;
}

uint64_t sub_6030()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_65E4;

  return sub_3E08(v3, v4, v5, v2);
}

uint64_t sub_60C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6124()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_65E4;

  return sub_40A0(v3, v4, v5, v2);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_61F8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_65E4;

  return sub_4260(v3, v4, v5, v2);
}

uint64_t sub_628C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78038, &qword_5EDE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_62FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_635C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_63A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OTLPExporterConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_78060)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_78060);
    }
  }
}

uint64_t sub_6458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_6590(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_65B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_6624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OTLPExporterConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MetricExporterConfiguration.serviceName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricExporterConfiguration(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MetricExporterConfiguration(uint64_t a1)
{
  result = qword_78D90;
  if (!qword_78D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetricExporterConfiguration.serviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricExporterConfiguration(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MetricExporterConfiguration.init(OTLPConfiguration:serviceName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_6810(a1, a4);
  result = type metadata accessor for MetricExporterConfiguration(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_6810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OTLPExporterConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OTLPExporterConfiguration(0);
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

uint64_t sub_695C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OTLPExporterConfiguration(0);
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

uint64_t sub_6A18(uint64_t a1)
{
  result = type metadata accessor for OTLPExporterConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RPCError.Code.isOTLPRetryable.getter()
{
  v1 = v0;
  v2 = sub_5BC44();
  v3 = *(v2 - 8);
  v4 = off_708D0(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_708D0(v4);
  v8 = &v27 - v7;
  (*(v3 + 16))(&v27 - v7, v1, v2);
  sub_5BC34();
  sub_6F28();
  v9 = sub_5C114();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9 & 1) != 0 || (sub_5BBB4(), v11 = sub_5C114(), v10(v6, v2), (v11) || (sub_5BBF4(), v12 = sub_5C114(), v10(v6, v2), (v12) || (sub_5BB44(), v13 = sub_5C114(), v10(v6, v2), (v13) || (sub_5BB54(), v14 = sub_5C114(), v10(v6, v2), (v14) || (sub_5BC14(), v15 = sub_5C114(), v10(v6, v2), (v15))
  {
    v16 = 1;
  }

  else
  {
    sub_5BC04();
    v18 = sub_5C114();
    v10(v6, v2);
    if ((v18 & 1) == 0)
    {
      sub_5BB94();
      v19 = sub_5C114();
      v10(v6, v2);
      if ((v19 & 1) == 0)
      {
        sub_5BC24();
        v20 = sub_5C114();
        v10(v6, v2);
        if ((v20 & 1) == 0)
        {
          sub_5BB64();
          v21 = sub_5C114();
          v10(v6, v2);
          if ((v21 & 1) == 0)
          {
            sub_5BBC4();
            v22 = sub_5C114();
            v10(v6, v2);
            if ((v22 & 1) == 0)
            {
              sub_5BBA4();
              v23 = sub_5C114();
              v10(v6, v2);
              if ((v23 & 1) == 0)
              {
                sub_5BBE4();
                v24 = sub_5C114();
                v10(v6, v2);
                if ((v24 & 1) == 0)
                {
                  sub_5BB84();
                  v25 = sub_5C114();
                  v10(v6, v2);
                  if ((v25 & 1) == 0)
                  {
                    sub_5BB74();
                    v26 = sub_5C114();
                    v10(v6, v2);
                    if ((v26 & 1) == 0)
                    {
                      sub_5BBD4();
                      sub_5C114();
                      v10(v6, v2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v16 = 0;
  }

  v10(v8, v2);
  return v16;
}

unint64_t sub_6F28()
{
  result = qword_78068;
  if (!qword_78068)
  {
    sub_5BC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78068);
  }

  return result;
}

uint64_t sub_6F80(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x746C7561666544;
    }

    if (a1 == 1)
    {
      return 1868983881;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6775626544;
      case 16:
        return 0x726F727245;
      case 17:
        return 0x746C756146;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_7040(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_707C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_70AC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_7104()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_7134(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_718C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_71BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_7214()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_7244(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_729C()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_72CC(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_7330(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t sub_7360()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_7390(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_73E8()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_7418(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_7480(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_74CC()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_74FC(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t sub_7554()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t sub_7584(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t sub_75DC()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t sub_760C(uint64_t a1, uint64_t a2)
{

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

uint64_t LogEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogEvent(0) + 68);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LogEvent(uint64_t a1)
{
  result = qword_78DA0;
  if (!qword_78DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LogEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEvent(0) + 68);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_77F0()
{
  type metadata accessor for LogEvent(0);
}

uint64_t sub_7824(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEvent(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_78AC()
{
  type metadata accessor for LogEvent(0);
}

uint64_t sub_78E0(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEvent(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t LogEvent.init(pid:serial:process:threadId:subsystem:category:logType:message:sender:arguments:timestamp:resourceAttributes:source:sourceType:index:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = type metadata accessor for LogEvent(0);
  *(a9 + v28[19]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  *(a9 + 112) = a14;
  *(a9 + 128) = a15;
  *(a9 + 144) = a16;
  v29 = v28[17];
  v30 = sub_5B9B4();
  v31 = *(v30 - 8);
  (*(v31 + 16))(a9 + v29, a17, v30);
  if (a18)
  {
    v32 = sub_7B2C(a18);
  }

  else
  {
    v32 = 0;
  }

  v33 = v28[18];
  result = (*(v31 + 8))(a17, v30);
  *(a9 + v33) = v32;
  *(a9 + 152) = a19;
  *(a9 + 160) = a20;
  *(a9 + 168) = a21;
  *(a9 + 176) = a22;
  *(a9 + 184) = a23;
  *(a9 + 192) = a24;
  return result;
}

unint64_t sub_7B2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780F8, &qword_5EF88);
    v2 = sub_5C374();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_9B3C(&v22, v24);
        sub_9B3C(v24, v25);
        sub_9B3C(v25, &v23);
        result = sub_9094(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_9B3C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_9B3C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t LogEvent.toOTLPData()()
{
  v1 = sub_5BD24();
  v2 = *(v1 - 8);
  off_70908(v1);
  v162 = v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0);
  off_70908(v4);
  v6 = v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  off_70908(v7 - 8);
  v160 = (v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  v161 = *(v9 - 8);
  v10 = off_70908(v9 - 8);
  v170 = v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70908(v10);
  v13 = v157 - v12;
  v14 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v15 = *(v14 - 8);
  v16 = off_70908(v14 - 8);
  v173 = v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70908(v16);
  v169 = v157 - v18;
  v19 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  off_70908(v19 - 8);
  v165 = (v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v166 = *(v21 - 8);
  v22 = off_70908(v21 - 8);
  v172 = v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70908(v22);
  v25 = (v157 - v24);
  Opentelemetry_Proto_Logs_V1_LogRecord.init()(v157 - v24);
  v175 = type metadata accessor for LogEvent(0);
  v176 = v0;
  v26 = (v0 + v175[17]);
  sub_5B994();
  v28 = v27 * 1000000000.0;
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_131;
  }

  if (v28 <= -1.0)
  {
    goto LABEL_132;
  }

  if (v28 >= 1.84467441e19)
  {
    goto LABEL_133;
  }

  v164 = v15;
  *v25 = v28;
  v29 = v176;
  v30 = *(v176 + 104);
  v174 = v25;
  if (v30)
  {
    goto LABEL_18;
  }

  v31 = *(v176 + 96);
  if (v31 <= 1)
  {
    if (!v31)
    {
      v32 = 0xE700000000000000;
      v33 = 0x746C7561666544;
      goto LABEL_17;
    }

    if (v31 == 1)
    {
      v32 = 0xE400000000000000;
      v33 = 1868983881;
      goto LABEL_17;
    }

LABEL_16:
    v32 = 0xE700000000000000;
    v33 = 0x6E776F6E6B6E55;
    goto LABEL_17;
  }

  if (v31 == 2)
  {
    v32 = 0xE500000000000000;
    v33 = 0x6775626544;
    goto LABEL_17;
  }

  if (v31 == 16)
  {
    v32 = 0xE500000000000000;
    v33 = 0x726F727245;
    goto LABEL_17;
  }

  if (v31 != 17)
  {
    goto LABEL_16;
  }

  v32 = 0xE500000000000000;
  v33 = 0x746C756146;
LABEL_17:
  v25 = v174;

  v25[4] = v33;
  v25[5] = v32;
  v29 = v176;
LABEL_18:
  v157[1] = v4;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5EEC0;
  strcpy((inited + 32), "log.file.path");
  *(inited + 46) = -4864;
  if (*(v29 + 160))
  {
    v35 = *(v29 + 152);
    v36 = &type metadata for String;
    v37 = *(v29 + 160);
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v36 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v35;
  *(inited + 56) = v37;
  *(inited + 72) = v36;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000000065720;
  v38 = *(v29 + 192);
  v158 = v2;
  v159 = v1;
  if (v38)
  {
    v39 = *(v29 + 184);
    v40 = &type metadata for String;
    v41 = v38;
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v40 = 0;
    *(inited + 112) = 0;
  }

  v1 = v29;
  *(inited + 96) = v39;
  *(inited + 104) = v41;
  *(inited + 120) = v40;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000000065740;
  v42 = *(v29 + 176);
  v167 = v13;
  v168 = v6;
  if (v42)
  {
    v43 = *(v29 + 168);
    v44 = &type metadata for String;
    v45 = v42;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v44 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v43;
  *(inited + 152) = v45;
  *(inited + 168) = v44;
  strcpy((inited + 176), "process.name");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  if (*(v29 + 40))
  {
    v46 = *(v29 + 32);
    v47 = &type metadata for String;
    v48 = *(v29 + 40);
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v47 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v46;
  *(inited + 200) = v48;
  *(inited + 216) = v47;
  *(inited + 224) = 0x2E737365636F7270;
  *(inited + 232) = 0xEB00000000646970;
  if (*(v29 + 8))
  {
    v49 = 0;
    v50 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  else
  {
    v49 = *v29;
    v50 = &type metadata for Int;
  }

  *(inited + 240) = v49;
  *(inited + 264) = v50;
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x8000000000065760;
  if (*(v29 + 136))
  {
    v51 = *(v29 + 128);
    v52 = &type metadata for String;
    v53 = *(v29 + 136);
  }

  else
  {
    v51 = 0;
    v53 = 0;
    v52 = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v51;
  *(inited + 296) = v53;
  *(inited + 312) = v52;
  *(inited + 320) = 0x692E646165726874;
  *(inited + 328) = 0xE900000000000064;
  v54 = *(v29 + 56);
  if (v54)
  {
    v55 = *(v1 + 48);
    v56 = &type metadata for String;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    *(inited + 352) = 0;
  }

  *(inited + 336) = v55;
  *(inited + 344) = v54;
  *(inited + 360) = v56;
  v57 = inited;

  v26 = sub_981C(v57);
  swift_setDeallocating();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  swift_arrayDestroy();
  v58 = *(v1 + v175[19]);
  if (!v58)
  {
LABEL_68:
    v88 = Array<A>.init(from:)(v26);

    v25[6] = v88;
    v89 = swift_allocObject();
    v90 = v89;
    *(v89 + 16) = xmmword_5EED0;
    *(v89 + 32) = 0x6574737973627573;
    *(v89 + 40) = 0xE90000000000006DLL;
    if (*(v1 + 72))
    {
      v91 = *(v1 + 64);
      v92 = &type metadata for String;
      v93 = *(v1 + 72);
    }

    else
    {
      v91 = 0;
      v93 = 0;
      v92 = 0;
      *(v89 + 64) = 0;
    }

    *(v89 + 48) = v91;
    *(v89 + 56) = v93;
    *(v89 + 72) = v92;
    *(v89 + 80) = 0x79726F6765746163;
    *(v89 + 88) = 0xE800000000000000;
    if (*(v1 + 88))
    {
      v94 = *(v1 + 80);
      v95 = &type metadata for String;
      v96 = *(v1 + 88);
    }

    else
    {
      v94 = 0;
      v96 = 0;
      v95 = 0;
      *(v89 + 112) = 0;
    }

    *(v89 + 96) = v94;
    *(v89 + 104) = v96;
    *(v89 + 120) = v95;
    *(v89 + 128) = 0x6567617373656DLL;
    *(v89 + 136) = 0xE700000000000000;
    if (*(v1 + 120))
    {
      v97 = *(v1 + 112);
      v98 = &type metadata for String;
      v99 = *(v1 + 120);
    }

    else
    {
      v97 = 0;
      v99 = 0;
      v98 = 0;
      *(v89 + 160) = 0;
    }

    *(v89 + 144) = v97;
    *(v89 + 152) = v99;
    *(v89 + 168) = v98;
    *(v89 + 176) = 0x746E656D75677261;
    *(v89 + 184) = 0xE900000000000073;
    v100 = *(v1 + 144);
    if (v100)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78098, &qword_5EF00);
    }

    else
    {
      v101 = 0;
      v90[25] = 0;
      v90[26] = 0;
    }

    v90[24] = v100;
    v90[27] = v101;

    v102 = sub_981C(v90);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v185 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78080, &unk_5EEF0);
    *&v184 = v102;
    v103 = v165;
    Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(&v184, v165);
    Opentelemetry_Proto_Logs_V1_LogRecord.body.setter(v103);
    v13 = v169;
    Opentelemetry_Proto_Logs_V1_ScopeLogs.init()(v169);
    sub_99B4(v25, v172, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v26 = *v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_81;
    }

    goto LABEL_134;
  }

  v13 = (v58 + 64);
  v59 = 1 << *(v58 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v1 = v60 & *(v58 + 64);
  v61 = (v59 + 63) >> 6;
  v177 = v58;

  v62 = 0;
  v178 = v13;
  while (v1)
  {
    v64 = v62;
LABEL_54:
    v67 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v68 = v67 | (v64 << 6);
    v69 = (*(v177 + 48) + 16 * v68);
    v71 = *v69;
    v70 = v69[1];
    sub_62FC(*(v177 + 56) + 32 * v68, &v179);
    *&v181 = v71;
    *(&v181 + 1) = v70;
    sub_9B3C(&v179, &v182);

    v66 = v64;
LABEL_55:
    v184 = v181;
    v185 = v182;
    v186 = v183;
    v72 = *(&v181 + 1);
    if (!*(&v181 + 1))
    {

      v25 = v174;
      v1 = v176;
      goto LABEL_68;
    }

    v13 = v184;
    sub_9B3C(&v185, &v181);
    v179 = v181;
    v180 = v182;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = v26;
    v74 = sub_9094(v13, v72);
    v76 = v26[2];
    v77 = (v75 & 1) == 0;
    v78 = __OFADD__(v76, v77);
    v79 = v76 + v77;
    if (v78)
    {
      goto LABEL_127;
    }

    v80 = v75;
    if (v26[3] < v79)
    {
      sub_93A0(v79, isUniquelyReferenced_nonNull_native);
      v74 = sub_9094(v13, v72);
      if ((v80 & 1) != (v81 & 1))
      {
LABEL_135:
        result = sub_5C3C4();
        __break(1u);
        return result;
      }

LABEL_61:
      if (v80)
      {
        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    v87 = v74;
    sub_9668();
    v74 = v87;
    if (v80)
    {
LABEL_43:
      v63 = v74;

      v26 = v187;
      sub_9B4C(&v179, v187[7] + 32 * v63);
      goto LABEL_44;
    }

LABEL_62:
    v26 = v187;
    v187[(v74 >> 6) + 8] |= 1 << v74;
    v82 = (v26[6] + 16 * v74);
    *v82 = v13;
    v82[1] = v72;
    v83 = (v26[7] + 32 * v74);
    v84 = v180;
    *v83 = v179;
    v83[1] = v84;
    v85 = v26[2];
    v78 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v78)
    {
      goto LABEL_129;
    }

    v26[2] = v86;
LABEL_44:
    v62 = v66;
    v13 = v178;
  }

  if (v61 <= v62 + 1)
  {
    v65 = v62 + 1;
  }

  else
  {
    v65 = v61;
  }

  v66 = v65 - 1;
  while (1)
  {
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v64 >= v61)
    {
      v1 = 0;
      v182 = 0u;
      v183 = 0u;
      v181 = 0u;
      goto LABEL_55;
    }

    v1 = *&v13[8 * v64];
    ++v62;
    if (v1)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  while (2)
  {
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
    v26 = sub_91C4(0, v26[2] + 1, 1, v26, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
LABEL_81:
    v105 = v167;
    v104 = v168;
    v106 = v164;
    v108 = v26[2];
    v107 = v26[3];
    if (v108 >= v107 >> 1)
    {
      v26 = sub_91C4((v107 > 1), v108 + 1, 1, v26, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    }

    v26[2] = v108 + 1;
    sub_9A1C(v172, v26 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v108, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    *v13 = v26;
    Opentelemetry_Proto_Logs_V1_ResourceLogs.init()(v105);
    sub_99B4(v13, v173, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    v109 = *v105;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_91C4(0, v109[2] + 1, 1, v109, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v111 = v109[2];
    v110 = v109[3];
    if (v111 >= v110 >> 1)
    {
      v109 = sub_91C4((v110 > 1), v111 + 1, 1, v109, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v109[2] = v111 + 1;
    sub_9A1C(v173, v109 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v111, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    *v105 = v109;
    v112 = swift_initStackObject();
    v113 = v112;
    *(v112 + 16) = xmmword_5EBD0;
    *(v112 + 32) = 0x692E656369766564;
    v114 = v112 + 32;
    *(v112 + 40) = 0xE900000000000064;
    v115 = *(v1 + 24);
    if (v115)
    {
      v116 = *(v1 + 16);
      v117 = &type metadata for String;
    }

    else
    {
      v116 = 0;
      v117 = 0;
      *(v112 + 64) = 0;
    }

    *(v112 + 48) = v116;
    *(v112 + 56) = v115;
    *(v112 + 72) = v117;

    v26 = sub_981C(v113);
    swift_setDeallocating();
    sub_994C(v114);
    v118 = *(v1 + v175[18]);
    if (v118)
    {
      v119 = (v118 + 64);
      v120 = 1 << *(v118 + 32);
      v121 = -1;
      if (v120 < 64)
      {
        v121 = ~(-1 << v120);
      }

      v122 = v121 & *(v118 + 64);
      v1 = (v120 + 63) >> 6;
      v177 = v118;

      v123 = 0;
      if (!v122)
      {
LABEL_97:
        if (v1 <= (v123 + 1))
        {
          v126 = (v123 + 1);
        }

        else
        {
          v126 = v1;
        }

        v127 = (v126 - 1);
        while (1)
        {
          v125 = (v123 + 1);
          if (__OFADD__(v123, 1))
          {
            goto LABEL_126;
          }

          if (v125 >= v1)
          {
            v122 = 0;
            v182 = 0u;
            v183 = 0u;
            v181 = 0u;
            goto LABEL_105;
          }

          v122 = *&v119[8 * v125];
          ++v123;
          if (v122)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_96:
      v125 = v123;
LABEL_104:
      v128 = __clz(__rbit64(v122));
      v122 &= v122 - 1;
      v129 = v128 | (v125 << 6);
      v130 = (*(v177 + 48) + 16 * v129);
      v132 = *v130;
      v131 = v130[1];
      sub_62FC(*(v177 + 56) + 32 * v129, &v179);
      *&v181 = v132;
      *(&v181 + 1) = v131;
      sub_9B3C(&v179, &v182);

      v127 = v125;
LABEL_105:
      v184 = v181;
      v185 = v182;
      v186 = v183;
      v133 = *(&v181 + 1);
      if (!*(&v181 + 1))
      {

        v149 = v162;
        v105 = v167;
        v104 = v168;
        v13 = v169;
        goto LABEL_120;
      }

      v13 = v119;
      v178 = v127;
      v134 = v184;
      sub_9B3C(&v185, &v181);
      v179 = v181;
      v180 = v182;
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v26;
      v136 = sub_9094(v134, v133);
      v138 = v26[2];
      v139 = (v137 & 1) == 0;
      v78 = __OFADD__(v138, v139);
      v140 = v138 + v139;
      if (v78)
      {
        continue;
      }

      v141 = v137;
      if (v26[3] < v140)
      {
        sub_93A0(v140, v135);
        v136 = sub_9094(v134, v133);
        if ((v141 & 1) != (v142 & 1))
        {
          goto LABEL_135;
        }

        goto LABEL_111;
      }

      if (v135)
      {
LABEL_111:
        v119 = v13;
        if (v141)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v148 = v136;
        sub_9668();
        v136 = v148;
        v119 = v13;
        if (v141)
        {
LABEL_95:
          v124 = v136;

          v26 = v187;
          sub_9B4C(&v179, v187[7] + 32 * v124);
          v123 = v178;
          if (!v122)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }
      }

      v26 = v187;
      v187[(v136 >> 6) + 8] |= 1 << v136;
      v143 = (v26[6] + 16 * v136);
      *v143 = v134;
      v143[1] = v133;
      v144 = (v26[7] + 32 * v136);
      v145 = v180;
      *v144 = v179;
      v144[1] = v145;
      v146 = v26[2];
      v78 = __OFADD__(v146, 1);
      v147 = v146 + 1;
      if (v78)
      {
        goto LABEL_130;
      }

      v26[2] = v147;
      v123 = v178;
      if (!v122)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    break;
  }

  v149 = v162;
LABEL_120:
  v150 = Array<A>.init(from:)(v26);
  v151 = v160;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.getter(v160);

  *v151 = v150;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.setter(v151);
  Opentelemetry_Proto_Logs_V1_LogsData.init()(v104);
  sub_99B4(v105, v170, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  v152 = *v104;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v152 = sub_91C4(0, v152[2] + 1, 1, v152, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v154 = v152[2];
  v153 = v152[3];
  if (v154 >= v153 >> 1)
  {
    v152 = sub_91C4((v153 > 1), v154 + 1, 1, v152, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v152[2] = v154 + 1;
  sub_9A1C(v170, v152 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v154, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  *v104 = v152;
  sub_5BD14();
  sub_9A84();
  v155 = sub_5BED4();
  (*(v158 + 8))(v149, v159);
  sub_9ADC(v104, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData);
  sub_9ADC(v105, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  sub_9ADC(v13, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
  sub_9ADC(v174, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  return v155;
}

unint64_t sub_9094(uint64_t a1, uint64_t a2)
{
  sub_5C454();
  sub_5C124();
  v4 = sub_5C474();

  return sub_910C(a1, a2, v4);
}

unint64_t sub_910C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_5C3A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_91C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
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

uint64_t sub_93A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
  v36 = v4;
  result = sub_5C364();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_A024(v26, &v37, &qword_78090, &unk_5F950);
      }

      sub_5C454();
      sub_5C124();
      result = sub_5C474();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_9668()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
  v2 = *v0;
  v3 = sub_5C354();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_A024(*(v2 + 56) + 32 * v17, v27, &qword_78090, &unk_5F950);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_981C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
    v3 = sub_5C374();
    v4 = a1 + 32;

    while (1)
    {
      sub_A024(v4, &v15, &qword_78078, &qword_5EEE8);
      v5 = v15;
      v6 = v16;
      result = sub_9094(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_994C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_99B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_9A84()
{
  result = qword_78088;
  if (!qword_78088)
  {
    type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78088);
  }

  return result;
}

uint64_t sub_9ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_9B3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_9B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = sub_5B9B4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_9C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_9D40(uint64_t a1)
{
  sub_9F38(319, &qword_780A0, &type metadata for Int, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_9F38(319, &qword_780A8, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_9EB8(319);
      if (v3 <= 0x3F)
      {
        sub_9FD0(319, &qword_780B8, &qword_78098, &qword_5EF00);
        if (v4 <= 0x3F)
        {
          sub_5B9B4();
          if (v5 <= 0x3F)
          {
            sub_9FD0(319, &qword_780C0, &qword_780C8, &unk_5EF40);
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

void sub_9EB8(uint64_t a1)
{
  if (!qword_780B0)
  {
    type metadata accessor for OSLogEventLogType(255);
    v1 = sub_5C2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_780B0);
    }
  }
}

void sub_9F38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_9FD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_5C2D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_A024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_A0FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.stringValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v1 - 8);
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_A2BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = (&v11 - v5);
  sub_A024(a1, &v11 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v9 = *v6;
      v10 = v6[1];
      goto LABEL_6;
    }

    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_6:
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_A400(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v4;
  a2[1] = v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.stringValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      v12 = v8[1];
      goto LABEL_12;
    }

    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_12:
  *v5 = v11;
  v5[1] = v12;
  return sub_A648;
}

void sub_A648(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {

    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  else
  {
    sub_60C4((*a1)[2], &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v1 - 8);
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_A888@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = &v10 - v5;
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_A9CC(char *a1, _BYTE *a2)
{
  v3 = *a1;
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.setter(char a1)
{
  sub_60C4(v1, &qword_78100, &unk_5EFD0);
  *v1 = a1;
  v3 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t (*Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.modify(void *a1))()
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = v4 + 4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  sub_A024(v2, v8, &qword_78100, &unk_5EFD0);
  v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_60C4(v9, &qword_78100, &unk_5EFD0);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_BF1C(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v9;
LABEL_13:
  *v6 = v12;
  return sub_ACA4;
}

void sub_ACA4(_BYTE ***a1)
{
  v1 = *a1;
  v2 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 32);
  sub_60C4(v5, &qword_78100, &unk_5EFD0);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 7))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.intValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v1 - 8);
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_AE78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = (&v10 - v5);
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_AFBC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.intValue.setter(uint64_t a1)
{
  sub_60C4(v1, &qword_78100, &unk_5EFD0);
  *v1 = a1;
  v3 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.intValue.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_B288;
}

void sub_B288(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  sub_60C4(v5, &qword_78100, &unk_5EFD0);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

double Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v1 - 8);
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0.0;
}

uint64_t sub_B45C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = (&v10 - v5);
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_B5A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.setter(double a1)
{
  sub_60C4(v1, &qword_78100, &unk_5EFD0);
  *v1 = a1;
  v3 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_B87C;
}

void sub_B87C(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  sub_60C4(v5, &qword_78100, &unk_5EFD0);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.arrayValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = &v9 - v5;
  sub_A024(v2, &v9 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_C518(v6, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  return sub_5BCD4();
}

uint64_t sub_BAA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = &v9 - v5;
  sub_A024(a1, &v9 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_C518(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a2 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.arrayValue.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_A024(v1, v7, &qword_78100, &unk_5EFD0);
  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    sub_5BCD4();
    return sub_BED8;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_15;
  }

  sub_C518(v7, v10, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
  return sub_BED8;
}

uint64_t sub_BF1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.kvlistValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = &v9 - v5;
  sub_A024(v2, &v9 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_C518(v6, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  return sub_5BCD4();
}

uint64_t sub_C0F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = &v9 - v5;
  sub_A024(a1, &v9 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_C518(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a2 = _swiftEmptyArrayStorage;
  type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  return sub_5BCD4();
}

uint64_t sub_C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  off_709D0(v12 - 8);
  v14 = &v17 - v13;
  sub_C944(a1, &v17 - v13, a6);
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  sub_C518(v14, a2, a7);
  v15 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_C3E0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_60C4(v3, &qword_78100, &unk_5EFD0);
  sub_C518(a1, v3, a2);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t sub_C4B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a1(0);
  return sub_5BCD4();
}

uint64_t sub_C518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.kvlistValue.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_A024(v1, v7, &qword_78100, &unk_5EFD0);
  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    sub_5BCD4();
    return sub_C7A8;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_15;
  }

  sub_C518(v7, v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
  return sub_C7A8;
}

void sub_C7EC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_C944((*a1)[3], v10, a5);
    sub_60C4(v13, &qword_78100, &unk_5EFD0);
    sub_C518(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_BF1C(v11, a6);
  }

  else
  {
    sub_60C4(**a1, &qword_78100, &unk_5EFD0);
    sub_C518(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t sub_C944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.bytesValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v1 - 8);
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_CAE0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v4 - 8);
  v6 = (&v10 - v5);
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = xmmword_5EFA0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 6)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_CC28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_D038(*a1, v4);
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  a2[1] = v4;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_CCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_60C4(v3, &qword_78100, &unk_5EFD0);
  *v3 = a1;
  v3[1] = a2;
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.bytesValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
LABEL_12:
    v11 = xmmword_5EFA0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_CF24;
}

void sub_CF24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    sub_D038(**a1, v3);
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    sub_D08C(*v2, v2[1]);
  }

  else
  {
    sub_60C4((*a1)[2], &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t sub_D038(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_D08C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_D1D8(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_5BCE4();
  sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Common_V1_ArrayValue.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_D380@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_D41C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_709D0(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(v1 + *(v6 + 24), v5, &qword_78110, &qword_61E70);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_C518(v5, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  sub_5BCD4();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_D7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_709D0(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(a1 + *(v7 + 24), v6, &qword_78110, &qword_61E70);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_C518(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_D944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  off_709D0(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C944(a1, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v8 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  sub_60C4(a2 + v8, &qword_78110, &qword_61E70);
  sub_C518(v7, a2 + v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  sub_60C4(v1 + v3, &qword_78110, &qword_61E70);
  sub_C518(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Common_V1_KeyValue.value.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_78110, &qword_61E70);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v16 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78110, &qword_61E70);
    }
  }

  else
  {
    sub_C518(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  return sub_DD80;
}

void sub_DD80(uint64_t **a1, char a2)
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
    sub_C944((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_60C4(v9 + v3, &qword_78110, &qword_61E70);
    sub_C518(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_BF1C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78110, &qword_61E70);
    sub_C518(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Common_V1_KeyValue.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_709D0(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(v0 + *(v4 + 24), v3, &qword_78110, &qword_61E70);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_60C4(v3, &qword_78110, &qword_61E70);
  return v6;
}

Swift::Void __swiftcall Opentelemetry_Proto_Common_V1_KeyValue.clearValue()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  sub_60C4(v0 + v1, &qword_78110, &qword_61E70);
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_5BCD4();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_E188@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.attributes.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0) + 32);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0) + 32);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  *(a1 + 40) = 0;
  type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  return sub_5BCD4();
}

uint64_t sub_E4E8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_78DB8);
  __swift_project_value_buffer(v0, qword_78DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_5EEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "string_value";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = sub_5C024();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "BOOL_value";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int_value";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "double_value";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "array_value";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "kvlist_value";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "bytes_value";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_5BD64();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_E988(a1, v5, a2, a3);
          break;
        case 2:
          sub_EB7C(a1, v5, a2, a3);
          break;
        case 3:
          sub_ED50(a1, v5, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_F6C4(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        sub_FC80(a1, v5, a2, a3);
      }
    }

    else if (result == 4)
    {
      sub_EF2C(a1, v5, a2, a3);
    }

    else
    {
      sub_F108(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_E988(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v6 - 8);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 0;
  result = sub_5BE44();
  if (v4)
  {
  }

  if (v17)
  {
    v18 = v17;
    v15 = v16;
    sub_A024(a2, v8, &qword_78100, &unk_5EFD0);
    v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    if (v12 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(a2, &qword_78100, &unk_5EFD0);
    v13 = v18;
    *a2 = v15;
    a2[1] = v13;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_EB7C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v6 - 8);
  v8 = &v15 - v7;
  v17 = 2;
  result = sub_5BD84();
  if (!v4)
  {
    v10 = v17;
    if (v17 != 2)
    {
      v16 = 0;
      sub_A024(a2, v8, &qword_78100, &unk_5EFD0);
      v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
      v12 = *(v11 - 8);
      v13 = (*(v12 + 48))(v8, 1, v11);
      sub_60C4(v8, &qword_78100, &unk_5EFD0);
      if (v13 != 1)
      {
        v14 = v16;
        result = sub_5BD74();
        if (v14)
        {
          return result;
        }

        v16 = 0;
      }

      sub_60C4(a2, &qword_78100, &unk_5EFD0);
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t sub_ED50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v6 - 8);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 1;
  result = sub_5BDD4();
  if (!v4 && (v17 & 1) == 0)
  {
    v18 = 0;
    v15 = v16;
    sub_A024(a2, v8, &qword_78100, &unk_5EFD0);
    v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    if (v12 != 1)
    {
      v13 = v18;
      result = sub_5BD74();
      if (v13)
      {
        return result;
      }

      v18 = 0;
    }

    sub_60C4(a2, &qword_78100, &unk_5EFD0);
    *a2 = v15;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_EF2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v6 - 8);
  v8 = &v15 - v7;
  v17 = 0;
  v18 = 1;
  result = sub_5BE14();
  if (!v4 && (v18 & 1) == 0)
  {
    v16 = 0;
    v10 = v17;
    sub_A024(a2, v8, &qword_78100, &unk_5EFD0);
    v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    if (v13 != 1)
    {
      v14 = v16;
      result = sub_5BD74();
      if (v14)
      {
        return result;
      }

      v16 = 0;
    }

    sub_60C4(a2, &qword_78100, &unk_5EFD0);
    *a2 = v10;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  v6 = *(v5 - 8);
  v7 = off_709D0(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v14 = *(v13 - 8);
  v15 = off_709D0(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78220, &qword_5F8B8);
  v21 = off_709D0(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_A024(a1, v12, &qword_78100, &unk_5EFD0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_60C4(v12, &qword_78100, &unk_5EFD0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_C518(v12, v19, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    sub_C518(v19, v17, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_60C4(v24, &qword_78220, &qword_5F8B8);
      v31 = v40;
      sub_C518(v17, v40, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
      sub_C518(v31, v24, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_BF1C(v17, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_ArrayValue);
  v33 = v43;
  sub_5BEB4();
  if (v33)
  {
    return sub_60C4(v24, &qword_78220, &qword_5F8B8);
  }

  sub_A024(v24, v32, &qword_78220, &qword_5F8B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_60C4(v24, &qword_78220, &qword_5F8B8);
    return sub_60C4(v32, &qword_78220, &qword_5F8B8);
  }

  else
  {
    v35 = v39;
    sub_C518(v32, v39, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    if (v28 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v24, &qword_78220, &qword_5F8B8);
    v36 = v38;
    sub_60C4(v38, &qword_78100, &unk_5EFD0);
    sub_C518(v35, v36, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_F6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  v6 = *(v5 - 8);
  v7 = off_709D0(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v14 = *(v13 - 8);
  v15 = off_709D0(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78228, &qword_5F8C0);
  v21 = off_709D0(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_A024(a1, v12, &qword_78100, &unk_5EFD0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_60C4(v12, &qword_78100, &unk_5EFD0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_C518(v12, v19, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    sub_C518(v19, v17, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_60C4(v24, &qword_78228, &qword_5F8C0);
      v31 = v40;
      sub_C518(v17, v40, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
      sub_C518(v31, v24, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_BF1C(v17, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValueList);
  v33 = v43;
  sub_5BEB4();
  if (v33)
  {
    return sub_60C4(v24, &qword_78228, &qword_5F8C0);
  }

  sub_A024(v24, v32, &qword_78228, &qword_5F8C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_60C4(v24, &qword_78228, &qword_5F8C0);
    return sub_60C4(v32, &qword_78228, &qword_5F8C0);
  }

  else
  {
    v35 = v39;
    sub_C518(v32, v39, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    if (v28 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v24, &qword_78228, &qword_5F8C0);
    v36 = v38;
    sub_60C4(v38, &qword_78100, &unk_5EFD0);
    sub_C518(v35, v36, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_FC80(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v6 - 8);
  v8 = &v15 - v7;
  v17 = xmmword_5EFB0;
  sub_5BDB4();
  v9 = v17;
  if (v4 || *(&v17 + 1) >> 60 == 15)
  {
    return sub_16578(v17, *(&v17 + 1));
  }

  sub_A024(a2, v8, &qword_78100, &unk_5EFD0);
  v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v16 = *(v10 - 8);
  v11 = *(v16 + 48);
  v18 = v10;
  v12 = v11(v8, 1);
  sub_D038(v9, *(&v9 + 1));
  sub_60C4(v8, &qword_78100, &unk_5EFD0);
  if (v12 != 1)
  {
    sub_5BD74();
  }

  sub_16578(v9, *(&v9 + 1));
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v9;
  v14 = v18;
  swift_storeEnumTagMultiPayload();
  return (*(v16 + 56))(a2, 0, 1, v14);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v8 - 8);
  v10 = &v14 - v9;
  sub_A024(v3, &v14 - v9, &qword_78100, &unk_5EFD0);
  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          result = sub_10294(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_103F8(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }
        }
      }

      else
      {
        sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        result = sub_10120(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        result = sub_10B30(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      sub_108F8(v3, a1, a2, a3);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        result = sub_1055C(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      sub_106C0(v3, a1, a2, a3);
    }

    result = sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    if (v4)
    {
      return result;
    }
  }

LABEL_21:
  type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  return sub_5BCC4();
}

uint64_t sub_10120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v5 - 8);
  v7 = &v10 - v6;
  sub_A024(a1, &v10 - v6, &qword_78100, &unk_5EFD0);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_5BFB4();
  }

  result = sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v5 - 8);
  v7 = &v10 - v6;
  sub_A024(a1, &v10 - v6, &qword_78100, &unk_5EFD0);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_5BF44();
  }

  result = sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_103F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v5 - 8);
  v7 = &v10 - v6;
  sub_A024(a1, &v10 - v6, &qword_78100, &unk_5EFD0);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    return sub_5BF84();
  }

  result = sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v5 - 8);
  v7 = &v10 - v6;
  sub_A024(a1, &v10 - v6, &qword_78100, &unk_5EFD0);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    return sub_5BF94();
  }

  result = sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_106C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  off_709D0(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A024(a1, v7, &qword_78100, &unk_5EFD0);
  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_C518(v7, v10, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_ArrayValue);
    sub_5C004();
    return sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
  }

  result = sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_108F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  off_709D0(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A024(a1, v7, &qword_78100, &unk_5EFD0);
  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_C518(v7, v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValueList);
    sub_5C004();
    return sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
  }

  result = sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v5 - 8);
  v7 = (&v12 - v6);
  sub_A024(a1, &v12 - v6, &qword_78100, &unk_5EFD0);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v10 = *v7;
    v9 = v7[1];
    sub_5BF74();
    return sub_D08C(v10, v9);
  }

  result = sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10CFC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_5BCD4();
}

uint64_t sub_10DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781F8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10E90(uint64_t a1)
{
  v2 = sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10F00(uint64_t a1, uint64_t a2)
{
  sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);

  return sub_5BF14();
}

uint64_t Opentelemetry_Proto_Common_V1_ArrayValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0), sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_11200(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781F0, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_ArrayValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_112A0(uint64_t a1)
{
  v2 = sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_ArrayValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1130C(uint64_t a1, uint64_t a2)
{
  sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_ArrayValue);

  return sub_5BF14();
}

uint64_t sub_113D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_5C044();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_5EBD0;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "values";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = enum case for _NameMap.NameDescription.same(_:);
  v9 = sub_5C024();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_5C034();
}

uint64_t sub_115E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_5BD64();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_153A8(a5, a6, a7);
      sub_5BE84();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValueList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0), sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue), result = sub_5BFD4(), !v4))
  {
    type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_11834(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781E8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValueList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_118D4(uint64_t a1)
{
  v2 = sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValueList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_11940(uint64_t a1, uint64_t a2)
{
  sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValueList);

  return sub_5BF14();
}

uint64_t sub_119D4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_5BCE4();
  sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_11AA8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_78E18);
  __swift_project_value_buffer(v0, qword_78E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_5BE54();
      }

      else if (result == 2)
      {
        type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
        type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
        sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);
        sub_5BEB4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_5BFB4(), !v4))
  {
    result = sub_11E6C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t sub_11E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_709D0(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v9 = *(v8 - 8);
  off_709D0(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(a1 + *(v12 + 24), v7, &qword_78110, &qword_61E70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_60C4(v7, &qword_78110, &qword_61E70);
  }

  sub_C518(v7, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_5C004();
  return sub_BF1C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
}

uint64_t sub_120D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_5BCD4();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_12178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_121EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_12290(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781E0, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_12330(uint64_t a1)
{
  v2 = sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1239C(uint64_t a1, uint64_t a2)
{
  sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);

  return sub_5BF14();
}

uint64_t sub_12444()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_78E38);
  __swift_project_value_buffer(v0, qword_78E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EED0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attributes";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dropped_attributes_count";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_126B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_5C044();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_12730@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_5C044();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BD64();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
          sub_5BE84();
        }

        else if (result == 4)
        {
          sub_5BE64();
        }
      }

      else if (result == 1 || result == 2)
      {
        sub_5BE54();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_5BFB4(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_5BFB4(), !v4))
    {
      if (*(*(v3 + 32) + 16))
      {
        type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
        sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_KeyValue);
        result = sub_5BFD4();
        if (v4)
        {
          return result;
        }

        if (!*(v3 + 40))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v3 + 40))
      {
LABEL_15:
        type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
        return sub_5BCC4();
      }

      result = sub_5BFC4();
      if (v4)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

Swift::Int sub_12ABC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_5C454();
  a1(0);
  sub_153A8(a2, a3, a4);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_12B44@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  return sub_5BCD4();
}

uint64_t sub_12B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_12C10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_12CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781D8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_12D78@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_5C044();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_12E14(uint64_t a1)
{
  v2 = sub_153A8(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_12E80(uint64_t a1, uint64_t a2)
{
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_12ED8(uint64_t a1, uint64_t a2)
{
  sub_153A8(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope, &protocol conformance descriptor for Opentelemetry_Proto_Common_V1_InstrumentationScope);

  return sub_5BF14();
}

Swift::Int sub_12F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_12FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  off_709D0(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v8 - 8);
  v10 = &v52 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78218, &qword_5F8B0);
  off_709D0(v60);
  v12 = &v52 - v11;
  v64 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v68 = *(v64 - 8);
  off_709D0(v64);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_709D0(v14 - 8);
  v16 = &v52 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  off_709D0(v67);
  v65 = &v52 - v17;
  v69 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v18 = off_709D0(v69);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_709D0(v18);
  v23 = (&v52 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_31:
    v51 = 0;
    return v51 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v51 = 1;
    return v51 & 1;
  }

  v25 = *(a1 + 16);
  v53 = v7;
  v54 = v10;
  v58 = v4;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v61 = (v68 + 48);
  v62 = &v52 - v22;
  v56 = v12;
  v57 = (v5 + 48);
  v59 = *(v21 + 72);
  v29 = v64;
  v30 = v65;
  v31 = v25;
  v55 = v16;
  v63 = v20;
  while (1)
  {
    result = sub_C944(v27, v23, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    if (!v31)
    {
      break;
    }

    v68 = v31;
    sub_C944(v28, v20, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    v33 = *v23 == *v20 && v23[1] == v20[1];
    if (!v33 && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_30;
    }

    v34 = *(v69 + 24);
    v35 = *(v67 + 48);
    sub_A024(v23 + v34, v30, &qword_78110, &qword_61E70);
    sub_A024(v20 + v34, v30 + v35, &qword_78110, &qword_61E70);
    v36 = *v61;
    if ((*v61)(v30, 1, v29) == 1)
    {
      v37 = v36(v30 + v35, 1, v29);
      v20 = v63;
      if (v37 != 1)
      {
        goto LABEL_26;
      }

      sub_60C4(v30, &qword_78110, &qword_61E70);
      v23 = v62;
    }

    else
    {
      sub_A024(v30, v16, &qword_78110, &qword_61E70);
      if (v36(v30 + v35, 1, v29) == 1)
      {
        sub_BF1C(v16, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v20 = v63;
LABEL_26:
        sub_60C4(v30, &qword_78210, &qword_5F8A8);
        v23 = v62;
        goto LABEL_30;
      }

      v38 = v66;
      sub_C518(v30 + v35, v66, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
      v39 = *(v60 + 48);
      v40 = v56;
      sub_A024(v16, v56, &qword_78100, &unk_5EFD0);
      sub_A024(v38, v40 + v39, &qword_78100, &unk_5EFD0);
      v41 = v58;
      v42 = *v57;
      if ((*v57)(v40, 1, v58) == 1)
      {
        if (v42(v40 + v39, 1, v41) != 1)
        {
          goto LABEL_28;
        }

        sub_60C4(v40, &qword_78100, &unk_5EFD0);
      }

      else
      {
        v43 = v54;
        sub_A024(v40, v54, &qword_78100, &unk_5EFD0);
        if (v42(v40 + v39, 1, v41) == 1)
        {
          sub_BF1C(v43, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
LABEL_28:
          sub_60C4(v40, &qword_78218, &qword_5F8B0);
LABEL_29:
          sub_BF1C(v66, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_BF1C(v55, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_60C4(v65, &qword_78110, &qword_61E70);
          v23 = v62;
          v20 = v63;
LABEL_30:
          sub_BF1C(v20, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          sub_BF1C(v23, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          goto LABEL_31;
        }

        v44 = v53;
        sub_C518(v40 + v39, v53, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        v45 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v43, v44);
        sub_BF1C(v44, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        sub_BF1C(v43, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        sub_60C4(v40, &qword_78100, &unk_5EFD0);
        if ((v45 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v46 = v64;
      sub_5BCE4();
      sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v47 = v55;
      v48 = v66;
      v49 = sub_5C114();
      v50 = v48;
      v29 = v46;
      sub_BF1C(v50, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
      v16 = v47;
      sub_BF1C(v47, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
      v30 = v65;
      sub_60C4(v65, &qword_78110, &qword_61E70);
      v23 = v62;
      v20 = v63;
      if ((v49 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_5BCE4();
    sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v51 = sub_5C114();
    sub_BF1C(v20, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    sub_BF1C(v23, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    if (v51)
    {
      v31 = v68 - 1;
      v28 += v59;
      v27 += v59;
      if (v68 != 1)
      {
        continue;
      }
    }

    return v51 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1386C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  off_709D0(v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78218, &qword_5F8B0);
  off_709D0(v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v12 = off_709D0(v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_78100;
  v37 = v14;
  while (1)
  {
    result = sub_C944(v20, v17, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_C944(v21, v14, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    v25 = *(v44 + 48);
    sub_A024(v17, v11, v23, &unk_5EFD0);
    sub_A024(v14, &v11[v25], v23, &unk_5EFD0);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_BF1C(v14, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v35 = v17;
        v34 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue;
        goto LABEL_17;
      }

      v23 = v27;
      sub_60C4(v11, v27, &unk_5EFD0);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_A024(v11, v39, v27, &unk_5EFD0);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_BF1C(v37, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        sub_BF1C(v38, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v34 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value;
        v35 = v30;
LABEL_17:
        sub_BF1C(v35, v34);
        sub_60C4(v11, &qword_78218, &qword_5F8B0);
        goto LABEL_19;
      }

      v31 = v40;
      sub_C518(&v11[v25], v40, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      v32 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v30, v31);
      sub_BF1C(v31, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      sub_BF1C(v30, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      sub_60C4(v11, v27, &unk_5EFD0);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_BF1C(v37, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        sub_BF1C(v17, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        goto LABEL_19;
      }
    }

    sub_5BCE4();
    sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v33 = sub_5C114();
    sub_BF1C(v14, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_BF1C(v17, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_13DF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_5B944();
    if (v10)
    {
      v11 = sub_5B964();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_5B954();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_5B944();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_5B964();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_5B954();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_14020(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_141B0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_D08C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_13DF0(v13, a3, a4, &v12);
  v10 = v4;
  sub_D08C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_141B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_5B944();
  v11 = result;
  if (result)
  {
    result = sub_5B964();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_5B954();
  sub_13DF0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_14268(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_D038(a3, a4);
          return sub_14020(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s16TelemetrySupport50Opentelemetry_Proto_Common_V1_InstrumentationScopeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_5C3A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_5C3A4() & 1) == 0 || (sub_12FAC(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  sub_5BCE4();
  sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_KeyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  off_709D0(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  off_709D0(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  off_709D0(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_A024(a1 + v14, v13, &qword_78110, &qword_61E70);
  sub_A024(a2 + v14, &v13[v15], &qword_78110, &qword_61E70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_60C4(v13, &qword_78110, &qword_61E70);
LABEL_11:
      sub_5BCE4();
      sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_5C114();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_A024(v13, v10, &qword_78110, &qword_61E70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_8:
    sub_60C4(v13, &qword_78210, &qword_5F8A8);
    goto LABEL_9;
  }

  v18 = v21;
  sub_C518(&v13[v15], v21, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v19 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV2eeoiySbAC_ACtFZ_0(v10, v18);
  sub_BF1C(v18, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_60C4(v13, &qword_78110, &qword_61E70);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  off_709D0(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  off_709D0(v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78218, &qword_5F8B0);
  v12 = off_709D0(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_A024(a1, &v20 - v13, &qword_78100, &unk_5EFD0);
  sub_A024(a2, &v14[v15], &qword_78100, &unk_5EFD0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_60C4(v14, &qword_78100, &unk_5EFD0);
LABEL_9:
      type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
      sub_5BCE4();
      sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_5C114();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_A024(v14, v10, &qword_78100, &unk_5EFD0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
LABEL_6:
    sub_60C4(v14, &qword_78218, &qword_5F8B0);
    goto LABEL_7;
  }

  sub_C518(&v14[v15], v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  v18 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  sub_BF1C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  sub_60C4(v14, &qword_78100, &unk_5EFD0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v53 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  off_709D0(v53);
  v55 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  off_709D0(v52);
  v54 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v6 = off_709D0(v5);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = off_709D0(v6);
  v57 = (&v51 - v10);
  v11 = off_709D0(v9);
  v56 = (&v51 - v12);
  v13 = off_709D0(v11);
  v15 = (&v51 - v14);
  v16 = off_709D0(v13);
  v18 = (&v51 - v17);
  v19 = off_709D0(v16);
  v21 = &v51 - v20;
  off_709D0(v19);
  v23 = (&v51 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78230, &qword_5F8C8);
  v25 = off_709D0(v24 - 8);
  v27 = &v51 - v26;
  v28 = (&v51 + *(v25 + 56) - v26);
  sub_C944(a1, &v51 - v26, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  sub_C944(v58, v28, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_C944(v27, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        v41 = *v8;
        v42 = v8[1];
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v44 = *v28;
          v43 = v28[1];
          v32 = sub_14268(v41, v42, v44, v43);
          sub_D08C(v44, v43);
          sub_D08C(v41, v42);
LABEL_29:
          sub_BF1C(v27, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
          return v32 & 1;
        }

        sub_D08C(v41, v42);
        goto LABEL_34;
      }

      v33 = v57;
      sub_C944(v27, v57, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v34 = v28;
        v35 = v55;
        sub_C518(v34, v55, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
        if (sub_12FAC(*v33, *v35))
        {
          sub_5BCE4();
          sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          if (sub_5C114())
          {
            v36 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
LABEL_26:
            v40 = v36;
            sub_BF1C(v35, v36);
            sub_BF1C(v33, v40);
LABEL_48:
            sub_BF1C(v27, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
            v32 = 1;
            return v32 & 1;
          }
        }

        v49 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
        goto LABEL_45;
      }

      v45 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_C944(v27, v15, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v30 = *v15 == *v28;
          goto LABEL_19;
        }

        goto LABEL_34;
      }

      v33 = v56;
      sub_C944(v27, v56, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v39 = v28;
        v35 = v54;
        sub_C518(v39, v54, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
        if (sub_1386C(*v33, *v35))
        {
          sub_5BCE4();
          sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          if (sub_5C114())
          {
            v36 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
            goto LABEL_26;
          }
        }

        v49 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
LABEL_45:
        v50 = v49;
        sub_BF1C(v35, v49);
        sub_BF1C(v33, v50);
        goto LABEL_46;
      }

      v45 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
    }

    sub_BF1C(v33, v45);
LABEL_34:
    sub_60C4(v27, &qword_78230, &qword_5F8C8);
LABEL_35:
    v32 = 0;
    return v32 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_C944(v27, v23, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    v38 = *v23;
    v37 = v23[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v38 == *v28 && v37 == v28[1])
      {

        goto LABEL_48;
      }

      v48 = sub_5C3A4();

      if (v48)
      {
        goto LABEL_48;
      }

LABEL_46:
      sub_BF1C(v27, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_C944(v27, v18, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = *v18 == *v28;
LABEL_19:
      v32 = v30;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  sub_C944(v27, v21, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_34;
  }

  v31 = *v21 ^ *v28;
  sub_BF1C(v27, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  v32 = v31 ^ 1;
  return v32 & 1;
}

uint64_t sub_15370(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_153A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_159A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5BCE4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_15AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5BCE4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_15C40(uint64_t a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_15D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_16Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_17Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_15F58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_15D48(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_5BCE4();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_15FFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_16140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_5BCE4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_16270(uint64_t a1)
{
  sub_5BCE4();
  if (v1 <= 0x3F)
  {
    sub_15D48(319, &qword_781D0, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_16348(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_16408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_164AC(uint64_t a1)
{
  sub_15D48(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_5BCE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_16578(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_D08C(result, a2);
  }

  return result;
}

uint64_t Counter.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Counter.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Counter.dimensions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Counter.unit.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Counter.unit.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Counter.startTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Counter(0) + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Counter(uint64_t a1)
{
  result = qword_79E30;
  if (!qword_79E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Counter.startTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Counter(0) + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Counter.lastUpdateTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Counter(0) + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Counter.lastUpdateTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Counter(0) + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Counter.init(name:dimensions:unit:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  type metadata accessor for Counter(0);
  sub_5B9A4();
  return sub_5B9A4();
}

Swift::Void __swiftcall Counter.increment()()
{
  v1 = sub_5B9B4();
  v2 = *(v1 - 8);
  off_70A08(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 40) = *(v0 + 40) + 1.0;
  sub_5B9A4();
  v5 = type metadata accessor for Counter(0);
  (*(v2 + 40))(v0 + *(v5 + 36), v4, v1);
}

Swift::Void __swiftcall Counter.increment(by:)(Swift::Double by)
{
  v3 = sub_5B9B4();
  v4 = *(v3 - 8);
  off_70A08(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (by >= 0.0)
  {
    *(v1 + 40) = *(v1 + 40) + by;
    sub_5B9A4();
    v7 = type metadata accessor for Counter(0);
    (*(v4 + 40))(v1 + *(v7 + 36), v6, v3);
  }
}

uint64_t Counter.toOTLPData(serviceName:globalDimensions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v76 = a2;
  v75 = a1;
  v6 = sub_5BD24();
  v86 = *(v6 - 8);
  v87 = v6;
  off_70A08(v6);
  v85 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0);
  off_70A08(v83);
  v84 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  v82 = *(v9 - 8);
  v10 = off_70A08(v9 - 8);
  v88 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A08(v10);
  v91 = &v68 - v12;
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v81 = *(v13 - 8);
  off_70A08(v13 - 8);
  v90 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v79 = *(v77 - 8);
  off_70A08(v77);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  off_70A08(v17 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
  v70 = *(v20 - 8);
  off_70A08(v20 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v24 = off_70A08(v23 - 8);
  v78 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A08(v24);
  v27 = &v68 - v26;
  v28 = v4[1];
  v72 = *v4;
  v71 = v28;
  v29 = v4[2];
  v74 = v4[3];
  v30 = v4[4];
  v69 = v4[5];
  v73 = v30;
  v31 = type metadata accessor for Counter(0);
  v32 = *(v31 + 32);
  v33 = *(v31 + 36);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = a3;
  v35 = v92;
  sub_1814C(v29, sub_18104, 0, isUniquelyReferenced_nonNull_native, &v93);
  v80 = v35;

  v36 = v93;
  v89 = v27;
  Opentelemetry_Proto_Resource_V1_Resource.init()(v27);
  v37 = (v4 + v32);
  sub_5B994();
  v39 = v38 * 1000000000.0;
  if (COERCE__INT64(fabs(v38 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v39 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v39 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v37 = (v4 + v33);
  sub_5B994();
  v41 = v40 * 1000000000.0;
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v41 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v41 < 1.84467441e19)
  {
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
    inited = swift_initStackObject();
    v92 = xmmword_5EBD0;
    *(inited + 16) = xmmword_5EBD0;
    strcpy((inited + 32), "service.name");
    *(inited + 72) = &type metadata for String;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v75;
    *(inited + 56) = v76;

    v44 = sub_981C(inited);
    swift_setDeallocating();
    sub_60C4(inited + 32, &qword_78078, &qword_5EEE8);
    v45 = Array<A>.init(from:)(v44);
    v46 = v89;

    *v46 = v45;
    Opentelemetry_Proto_Metrics_V1_NumberDataPoint.init()(v22);
    *(v22 + 1) = v39;
    *(v22 + 2) = v42;
    *(v22 + 3) = v69;
    v22[32] = 0;
    v47 = sub_17740(v36);

    v48 = Array<A>.init(from:)(v47);

    *v22 = v48;
    Opentelemetry_Proto_Metrics_V1_Sum.init()(v19);
    *(v19 + 1) = 2;
    *(v19 + 8) = 257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78238, &unk_5F8D0);
    v49 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v92;
    sub_183EC(v22, v50 + v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

    *v19 = v50;
    Opentelemetry_Proto_Metrics_V1_Metric.init()(v16);
    v51 = v71;

    *v16 = v72;
    *(v16 + 1) = v51;
    v52 = v73;

    *(v16 + 4) = v74;
    *(v16 + 5) = v52;
    v53 = *(v77 + 28);
    sub_60C4(&v16[v53], &qword_78240, &qword_5FB10);
    sub_183EC(v19, &v16[v53], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    v54 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(&v16[v53], 0, 1, v54);
    v55 = v90;
    Opentelemetry_Proto_Metrics_V1_ScopeMetrics.init()(v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78248, &qword_5F8E0);
    v56 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v92;
    sub_183EC(v16, v57 + v56, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);

    *v55 = v57;
    v58 = v91;
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.init()(v91);
    v59 = v78;
    sub_183EC(v46, v78, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78250, &qword_5F8E8);
    v60 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v92;
    sub_183EC(v55, v61 + v60, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

    *v58 = v61;
    v33 = v84;
    Opentelemetry_Proto_Metrics_V1_MetricsData.init()(v84);
    sub_183EC(v58, v88, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v37 = *v33;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v37 = sub_17AF4(0, v37[2] + 1, 1, v37);
LABEL_8:
  v62 = v87;
  v63 = v85;
  v65 = v37[2];
  v64 = v37[3];
  if (v65 >= v64 >> 1)
  {
    v37 = sub_17AF4((v64 > 1), v65 + 1, 1, v37);
  }

  v37[2] = v65 + 1;
  sub_18454(v88, v37 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v65);
  *v33 = v37;
  sub_5BD14();
  sub_184B8();
  v66 = sub_5BED4();
  (*(v86 + 8))(v63, v62);
  sub_18510(v33, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);
  sub_18510(v91, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
  sub_18510(v90, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
  sub_18510(v16, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
  sub_18510(v19, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
  sub_18510(v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
  sub_18510(v89, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return v66;
}

unint64_t sub_17740(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
    v2 = sub_5C374();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
        swift_dynamicCast();
        v26 = v24;
        v27 = v25;
        v23 = v24;
        v24 = v25;
        result = sub_9094(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          result = sub_9B4C(&v23, v2[7] + 32 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          v18 = (v2[7] + 32 * result);
          v19 = v24;
          *v18 = v23;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1798C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_179C4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_179F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_5B9B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_17A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_5B9B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_17AF4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78268, &unk_5F940);
  v10 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_17CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78270, &unk_5F9D0);
  v37 = v4;
  result = sub_5C364();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_5C454();
      sub_5C124();
      result = sub_5C474();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_17F8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78270, &unk_5F9D0);
  v2 = *v0;
  v3 = sub_5C354();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_18104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1814C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_9094(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_17F8C();
      }
    }

    else
    {
      sub_17CCC(v31, v46 & 1);
      v33 = sub_9094(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_18858(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_5C3C4();
  __break(1u);
  return result;
}

uint64_t sub_183EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_184B8()
{
  result = qword_78258;
  if (!qword_78258)
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78258);
  }

  return result;
}

uint64_t sub_18510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18584(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5B9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_186E8(uint64_t a1)
{
  sub_1878C();
  if (v1 <= 0x3F)
  {
    sub_5B9B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1878C()
{
  if (!qword_78260)
  {
    v0 = sub_5C0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_78260);
    }
  }
}

uint64_t sub_187E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Gauge.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Gauge.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Gauge.dimensions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Gauge.unit.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Gauge.unit.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gauge.startTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Gauge(0) + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Gauge(uint64_t a1)
{
  result = qword_79E40;
  if (!qword_79E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Gauge.startTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Gauge(0) + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Gauge.lastUpdateTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Gauge(0) + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Gauge.lastUpdateTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Gauge(0) + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Gauge.value.setter(double a1)
{
  result = type metadata accessor for Gauge(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Gauge.init(name:dimensions:unit:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  *(a6 + *(type metadata accessor for Gauge(0) + 36)) = a7;
  sub_5B9A4();
  return sub_5B9A4();
}

Swift::Void __swiftcall Gauge.set(_:)(Swift::Double a1)
{
  v3 = sub_5B9B4();
  v4 = *(v3 - 8);
  off_70A10(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Gauge(0);
  *(v1 + *(v7 + 36)) = a1;
  sub_5B9A4();
  (*(v4 + 40))(v1 + *(v7 + 32), v6, v3);
}

uint64_t Gauge.toOTLPData(serviceName:globalDimensions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v76 = a2;
  v75 = a1;
  v6 = sub_5BD24();
  v86 = *(v6 - 8);
  v87 = v6;
  off_70A10(v6);
  v85 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0);
  off_70A10(v83);
  v84 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  v82 = *(v9 - 8);
  v10 = off_70A10(v9 - 8);
  v88 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A10(v10);
  v13 = &v68 - v12;
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v81 = *(v14 - 8);
  off_70A10(v14 - 8);
  v91 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v79 = *(v77 - 8);
  off_70A10(v77);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  off_70A10(v18 - 8);
  v90 = (&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
  v70 = *(v20 - 8);
  off_70A10(v20 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource(0);
  v24 = off_70A10(v23 - 8);
  v78 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A10(v24);
  v27 = (&v68 - v26);
  v28 = v4[1];
  v72 = *v4;
  v71 = v28;
  v29 = v4[2];
  v30 = type metadata accessor for Gauge(0);
  v31 = v30[8];
  v69 = *(v4 + v30[9]);
  v32 = v4[4];
  v74 = v4[3];
  v73 = v32;
  v33 = v30[7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = a3;
  v35 = v92;
  sub_1814C(v29, sub_18104, 0, isUniquelyReferenced_nonNull_native, &v93);
  v80 = v35;

  v36 = v93;
  v89 = v27;
  Opentelemetry_Proto_Resource_V1_Resource.init()(v27);
  v37 = (v4 + v33);
  sub_5B994();
  v39 = v38 * 1000000000.0;
  if (COERCE__INT64(fabs(v38 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v39 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v39 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v37 = (v4 + v31);
  sub_5B994();
  v41 = v40 * 1000000000.0;
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v41 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v41 < 1.84467441e19)
  {
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
    inited = swift_initStackObject();
    v92 = xmmword_5EBD0;
    *(inited + 16) = xmmword_5EBD0;
    strcpy((inited + 32), "service.name");
    *(inited + 72) = &type metadata for String;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v75;
    *(inited + 56) = v76;

    v44 = sub_981C(inited);
    swift_setDeallocating();
    sub_60C4(inited + 32, &qword_78078, &qword_5EEE8);
    v45 = Array<A>.init(from:)(v44);
    v46 = v89;

    *v46 = v45;
    Opentelemetry_Proto_Metrics_V1_NumberDataPoint.init()(v22);
    *(v22 + 1) = v39;
    *(v22 + 2) = v42;
    *(v22 + 3) = v69;
    v22[32] = 0;
    v47 = sub_17740(v36);

    v48 = Array<A>.init(from:)(v47);

    *v22 = v48;
    v49 = v90;
    Opentelemetry_Proto_Metrics_V1_Gauge.init()(v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78238, &unk_5F8D0);
    v50 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v92;
    sub_199E4(v22, v51 + v50, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

    *v49 = v51;
    Opentelemetry_Proto_Metrics_V1_Metric.init()(v17);
    v52 = v71;

    *v17 = v72;
    *(v17 + 1) = v52;
    v53 = v73;

    *(v17 + 4) = v74;
    *(v17 + 5) = v53;
    v54 = *(v77 + 28);
    sub_60C4(&v17[v54], &qword_78240, &qword_5FB10);
    sub_199E4(v49, &v17[v54], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    v55 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v55 - 8) + 56))(&v17[v54], 0, 1, v55);
    v56 = v91;
    Opentelemetry_Proto_Metrics_V1_ScopeMetrics.init()(v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78248, &qword_5F8E0);
    v57 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v92;
    sub_199E4(v17, v58 + v57, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);

    *v56 = v58;
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.init()(v13);
    v59 = v78;
    sub_199E4(v46, v78, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78250, &qword_5F8E8);
    v60 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v92;
    sub_199E4(v56, v61 + v60, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

    *v13 = v61;
    v27 = v84;
    Opentelemetry_Proto_Metrics_V1_MetricsData.init()(v84);
    sub_199E4(v13, v88, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v37 = *v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v37 = sub_17AF4(0, v37[2] + 1, 1, v37);
LABEL_8:
  v62 = v87;
  v63 = v85;
  v65 = v37[2];
  v64 = v37[3];
  if (v65 >= v64 >> 1)
  {
    v37 = sub_17AF4((v64 > 1), v65 + 1, 1, v37);
  }

  v37[2] = v65 + 1;
  sub_18454(v88, v37 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v65);
  *v27 = v37;
  sub_5BD14();
  sub_184B8();
  v66 = sub_5BED4();
  (*(v86 + 8))(v63, v62);
  sub_19A4C(v27, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);
  sub_19A4C(v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
  sub_19A4C(v91, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
  sub_19A4C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
  sub_19A4C(v90, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
  sub_19A4C(v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
  sub_19A4C(v89, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return v66;
}

uint64_t sub_19958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_5B9B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_199E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19AC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5B9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19B80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}