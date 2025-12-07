uint64_t sub_26BB54CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26BB54D10()
{
  v1 = sub_26BB7CC28();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v47 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = sub_26BB7CBB8();
  MEMORY[0x28223BE20](v13 - 8);
  sub_26BB7CBF8();
  sub_26BB7CBA8();
  v14 = sub_26BB7CB98();
  if (v0)
  {
    v55 = v0;
    v15 = v0;
    sub_26BB55504();
    if (swift_dynamicCast())
    {

      v16 = v10;
      (*(v2 + 32))(v10, v12, v1);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v17 = sub_26BB7CB88();
      __swift_project_value_buffer(v17, qword_28158F140);
      v18 = *(v2 + 16);
      v18(v7, v10, v1);
      v19 = v53;
      v18(v53, v16, v1);
      v20 = sub_26BB7CB68();
      v21 = sub_26BB7CF68();
      v51 = v20;
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v50 = v18;
        v23 = v22;
        v48 = swift_slowAlloc();
        v54 = v48;
        *v23 = 67109378;
        v24 = sub_26BB7CC18() & 1;
        v49 = v16;
        v25 = *(v2 + 8);
        v52 = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v25(v7, v1);
        *(v23 + 4) = v24;
        *(v23 + 8) = 2080;
        v26 = sub_26BB7CC08();
        v28 = v27;
        v25(v19, v1);
        v29 = sub_26BB38238(v26, v28, &v54);

        *(v23 + 10) = v29;
        v30 = v25;
        v16 = v49;
        v31 = v21;
        v32 = v51;
        _os_log_impl(&dword_26BB21000, v51, v31, "Failed to initialize session (recoverable: %{BOOL}d): %s", v23, 0x12u);
        v33 = v48;
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x26D68EA90](v33, -1, -1);
        v34 = v23;
        v18 = v50;
        MEMORY[0x26D68EA90](v34, -1, -1);
      }

      else
      {
        v30 = *(v2 + 8);
        v52 = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v30(v7, v1);

        v30(v19, v1);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
      swift_allocError();
      v18(v46, v16, v1);
      swift_willThrow();
      v30(v16, v1);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v38 = sub_26BB7CB88();
      __swift_project_value_buffer(v38, qword_28158F140);
      v39 = v0;
      v40 = sub_26BB7CB68();
      v41 = sub_26BB7CF68();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v0;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_26BB21000, v40, v41, "Failed to initialize session: %@", v42, 0xCu);
        sub_26BB55B44(v43, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v43, -1, -1);
        MEMORY[0x26D68EA90](v42, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    v35 = v14;
    type metadata accessor for XPCSessionWrapper();
    v36 = swift_allocObject();
    sub_26BB56F30(0);
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    *(v37 + 16) = v35;
    *(v36 + 16) = v37;
  }
}

uint64_t sub_26BB5534C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB553B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7BE78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26BB3BF24;

  return sub_26BB51C48(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_26BB55504()
{
  result = qword_28158BB40;
  if (!qword_28158BB40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28158BB40);
  }

  return result;
}

void sub_26BB55568(uint64_t a1, uint64_t a2)
{
  v5 = sub_26BB7CC28();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = *(a1 + 16);
  v52 = a2;
  os_unfair_lock_lock(v18 + 6);
  sub_26BB55BA0(&v18[4]);
  v19 = v18 + 6;
  if (v2)
  {
    os_unfair_lock_unlock(v19);
    v54 = v2;
    v20 = v2;
    sub_26BB55504();
    if (swift_dynamicCast())
    {

      (*(v6 + 32))(v15, v17, v5);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v21 = sub_26BB7CB88();
      __swift_project_value_buffer(v21, qword_28158F140);
      v22 = *(v6 + 16);
      v22(v12, v15, v5);
      v22(v9, v15, v5);
      v23 = sub_26BB7CB68();
      v24 = sub_26BB7CF68();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v50 = v22;
        v26 = v25;
        v49 = swift_slowAlloc();
        v53 = v49;
        *v26 = 67109378;
        v48 = v24;
        v27 = sub_26BB7CC18() & 1;
        v47 = v23;
        v28 = *(v6 + 8);
        v51 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v28(v12, v5);
        *(v26 + 4) = v27;
        *(v26 + 8) = 2080;
        v29 = sub_26BB7CC08();
        v31 = v30;
        v28(v9, v5);
        v32 = sub_26BB38238(v29, v31, &v53);

        *(v26 + 10) = v32;
        v33 = v28;
        v34 = v47;
        _os_log_impl(&dword_26BB21000, v47, v48, "Failed to send XPC message XPC error (recoverable: %{BOOL}d): %s", v26, 0x12u);
        v35 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x26D68EA90](v35, -1, -1);
        v36 = v26;
        v22 = v50;
        MEMORY[0x26D68EA90](v36, -1, -1);
      }

      else
      {
        v33 = *(v6 + 8);
        v51 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v33(v12, v5);

        v33(v9, v5);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
      swift_allocError();
      v22(v45, v15, v5);
      swift_willThrow();
      v33(v15, v5);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v37 = sub_26BB7CB88();
      __swift_project_value_buffer(v37, qword_28158F140);
      v38 = v2;
      v39 = sub_26BB7CB68();
      v40 = sub_26BB7CF68();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v2;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_26BB21000, v39, v40, "Failed to send XPC message: %@", v41, 0xCu);
        sub_26BB55B44(v42, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v42, -1, -1);
        MEMORY[0x26D68EA90](v41, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v19);
  }
}

uint64_t sub_26BB55AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB55B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB55BBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB55BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CFE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26BB55C10()
{
  result = qword_28158BB60;
  if (!qword_28158BB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28158BB60);
  }

  return result;
}

uint64_t sub_26BB55C68(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26BB7BE78() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
  v10 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_26BB52FA8(a1, v1 + v4, (v1 + v7), v10);
}

unint64_t sub_26BB55DD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26BB7D1F8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_26BB55E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v65 = a5;
  v9 = sub_26BB7CC28();
  v63 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v59 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v18 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54250(0);
  v22 = *(v21 + 48);
  v23 = sub_26BB7BE78();
  (*(*(v23 - 8) + 16))(v20, a2, v23);
  sub_26BB54CA8(a3, &v20[v22], type metadata accessor for StocksKitServiceRequest);
  swift_storeEnumTagMultiPayload();
  v24 = *(a1 + 16);
  v67 = a3;
  v68 = v20;
  v69 = a4;
  v70 = v65;
  os_unfair_lock_lock((v24 + 24));
  v25 = v66;
  sub_26BB574C0((v24 + 16));
  v26 = (v24 + 24);
  if (v25)
  {
    os_unfair_lock_unlock(v26);
    sub_26BB55AE4(v20, type metadata accessor for CancellableStocksKitServiceRequest);
    v72 = v25;
    v27 = v25;
    sub_26BB55504();
    if (swift_dynamicCast())
    {
      v28 = v9;

      v30 = v63;
      v29 = v64;
      (*(v63 + 32))(v64, v17, v28);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v31 = sub_26BB7CB88();
      __swift_project_value_buffer(v31, qword_28158F140);
      v32 = *(v30 + 16);
      v33 = v61;
      v32(v61, v29, v28);
      v34 = v62;
      v66 = v32;
      v32(v62, v29, v28);
      v35 = sub_26BB7CB68();
      v36 = sub_26BB7CF68();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v71 = v65;
        *v37 = 67109378;
        v60 = v35;
        v38 = sub_26BB7CC18();
        v39 = v33;
        v40 = v28;
        v41 = v38 & 1;
        v42 = *(v30 + 8);
        LODWORD(v63) = v36;
        v42(v39, v40);
        *(v37 + 4) = v41;
        *(v37 + 8) = 2080;
        v43 = sub_26BB7CC08();
        v45 = v44;
        v42(v34, v40);
        v46 = sub_26BB38238(v43, v45, &v71);

        *(v37 + 10) = v46;
        v28 = v40;
        v47 = v60;
        _os_log_impl(&dword_26BB21000, v60, v63, "Failed to send XPC message XPC error (recoverable: %{BOOL}d): %s", v37, 0x12u);
        v48 = v65;
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x26D68EA90](v48, -1, -1);
        v49 = v37;
        v29 = v64;
        MEMORY[0x26D68EA90](v49, -1, -1);
      }

      else
      {
        v42 = *(v30 + 8);
        v42(v33, v28);

        v42(v34, v28);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
      swift_allocError();
      v66(v58, v29, v28);
      swift_willThrow();
      v42(v29, v28);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v50 = sub_26BB7CB88();
      __swift_project_value_buffer(v50, qword_28158F140);
      v51 = v25;
      v52 = sub_26BB7CB68();
      v53 = sub_26BB7CF68();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v25;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_26BB21000, v52, v53, "Failed to send XPC message: %@", v54, 0xCu);
        sub_26BB55B44(v55, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v55, -1, -1);
        MEMORY[0x26D68EA90](v54, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v26);
    sub_26BB55AE4(v20, type metadata accessor for CancellableStocksKitServiceRequest);
  }
}

void sub_26BB564C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v65 = a5;
  v9 = sub_26BB7CC28();
  v63 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v59 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v18 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54250(0);
  v22 = *(v21 + 48);
  v23 = sub_26BB7BE78();
  (*(*(v23 - 8) + 16))(v20, a2, v23);
  sub_26BB54CA8(a3, &v20[v22], type metadata accessor for StocksKitServiceRequest);
  swift_storeEnumTagMultiPayload();
  v24 = *(a1 + 16);
  v67 = a3;
  v68 = v20;
  v69 = a4;
  v70 = v65;
  os_unfair_lock_lock((v24 + 24));
  v25 = v66;
  sub_26BB56B6C((v24 + 16));
  v26 = (v24 + 24);
  if (v25)
  {
    os_unfair_lock_unlock(v26);
    sub_26BB55AE4(v20, type metadata accessor for CancellableStocksKitServiceRequest);
    v72 = v25;
    v27 = v25;
    sub_26BB55504();
    if (swift_dynamicCast())
    {
      v28 = v9;

      v30 = v63;
      v29 = v64;
      (*(v63 + 32))(v64, v17, v28);
      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v31 = sub_26BB7CB88();
      __swift_project_value_buffer(v31, qword_28158F140);
      v32 = *(v30 + 16);
      v33 = v61;
      v32(v61, v29, v28);
      v34 = v62;
      v66 = v32;
      v32(v62, v29, v28);
      v35 = sub_26BB7CB68();
      v36 = sub_26BB7CF68();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v71 = v65;
        *v37 = 67109378;
        v60 = v35;
        v38 = sub_26BB7CC18();
        v39 = v33;
        v40 = v28;
        v41 = v38 & 1;
        v42 = *(v30 + 8);
        LODWORD(v63) = v36;
        v42(v39, v40);
        *(v37 + 4) = v41;
        *(v37 + 8) = 2080;
        v43 = sub_26BB7CC08();
        v45 = v44;
        v42(v34, v40);
        v46 = sub_26BB38238(v43, v45, &v71);

        *(v37 + 10) = v46;
        v28 = v40;
        v47 = v60;
        _os_log_impl(&dword_26BB21000, v60, v63, "Failed to send XPC message XPC error (recoverable: %{BOOL}d): %s", v37, 0x12u);
        v48 = v65;
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x26D68EA90](v48, -1, -1);
        v49 = v37;
        v29 = v64;
        MEMORY[0x26D68EA90](v49, -1, -1);
      }

      else
      {
        v42 = *(v30 + 8);
        v42(v33, v28);

        v42(v34, v28);
      }

      sub_26BB54B44(&qword_28158B998, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
      swift_allocError();
      v66(v58, v29, v28);
      swift_willThrow();
      v42(v29, v28);
    }

    else
    {

      if (qword_28158C2F8 != -1)
      {
        swift_once();
      }

      v50 = sub_26BB7CB88();
      __swift_project_value_buffer(v50, qword_28158F140);
      v51 = v25;
      v52 = sub_26BB7CB68();
      v53 = sub_26BB7CF68();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v25;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_26BB21000, v52, v53, "Failed to send XPC message: %@", v54, 0xCu);
        sub_26BB55B44(v55, &qword_28158BB58, sub_26BB55C10);
        MEMORY[0x26D68EA90](v55, -1, -1);
        MEMORY[0x26D68EA90](v54, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v26);
    sub_26BB55AE4(v20, type metadata accessor for CancellableStocksKitServiceRequest);
  }
}

uint64_t sub_26BB56BD8(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_26BB4F6FC(a1, v5, v1 + v4, v7, v8);
}

void sub_26BB56C7C(uint64_t a1)
{
  if (!qword_28158BFD8[0])
  {
    v2 = type metadata accessor for CurrencyConversionsResult(255);
    v5 = sub_26BB56CE8(v2, v3, v4);
    v6 = type metadata accessor for StocksKitServiceResult(a1, v2, &type metadata for StocksKitServiceError, v5);
    if (!v7)
    {
      atomic_store(v6, qword_28158BFD8);
    }
  }
}

unint64_t sub_26BB56CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C1E0;
  if (!qword_28158C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C1E0);
  }

  return result;
}

unint64_t sub_26BB56D3C()
{
  result = qword_28158B8E0;
  if (!qword_28158B8E0)
  {
    sub_26BB56C7C(255);
    v3 = sub_26BB54B44(&qword_28158BCD8, type metadata accessor for CurrencyConversionsResult, &protocol conformance descriptor for CurrencyConversionsResult);
    sub_26BB56DEC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B8E0);
  }

  return result;
}

unint64_t sub_26BB56DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C1E8;
  if (!qword_28158C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C1E8);
  }

  return result;
}

uint64_t sub_26BB56E40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26BB57E88(0, a3, a4, MEMORY[0x277D84C48]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BB56EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB57E88(0, a2, a3, MEMORY[0x277D84C48]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB56F30(uint64_t a1)
{
  if (!qword_28158B220)
  {
    sub_26BB7CBF8();
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_26BB7D0F8();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B220);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_26BB7BE78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26BB7C3D8();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
  }

  else
  {
    sub_26BB53CA4(0);
    v13 = *(v12 + 48);
    v14 = sub_26BB7D178();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_26BB571A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7BE78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26BB3BA30;

  return sub_26BB5198C(a1, v10, v11, v1 + v6, v1 + v9);
}

void sub_26BB57304(uint64_t a1)
{
  if (!qword_28043A208)
  {
    sub_26BB55504();
    v1 = sub_26BB7CE78();
    if (!v2)
    {
      atomic_store(v1, &qword_28043A208);
    }
  }
}

uint64_t sub_26BB5736C(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26BB7BE78() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_26BB57304(0);
  v10 = *(a1 + 80);
  v11 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v10;
  v16 = *(a1 + 96);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v13 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v13;
  return sub_26BB5250C(v15, v1 + v4, v1 + v7, v1 + v11);
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26BB7C3D8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    sub_26BB53CA4(0);
    v8 = *(v7 + 48);
    v9 = sub_26BB7D178();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_26BB576C8(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v8;
  v13 = *(a1 + 96);
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v10 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v10;
  return sub_26BB578BC(v12, v1 + v4, v6, v7);
}

void sub_26BB57784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28043A210)
  {
    v4 = sub_26BB56CE8(0, a2, a3);
    v5 = type metadata accessor for StocksKitServiceResult(a1, &type metadata for DataSource.DownloadedLogo, &type metadata for StocksKitServiceError, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_28043A210);
    }
  }
}

unint64_t sub_26BB577E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A218;
  if (!qword_28043A218)
  {
    sub_26BB57784(255, a2, a3);
    v9 = sub_26BB57868(v4, v5, v6);
    sub_26BB56DEC(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A218);
  }

  return result;
}

unint64_t sub_26BB57868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A220;
  if (!qword_28043A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A220);
  }

  return result;
}

uint64_t sub_26BB578BC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v8 = *a1;
  v9 = type metadata accessor for StocksKitServiceRequest(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  if (*(a1 + 97))
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v18 = sub_26BB7CB88();
    __swift_project_value_buffer(v18, qword_28158F140);
    v19 = v8;
    v20 = sub_26BB7CB68();
    v21 = sub_26BB7CF78();
    sub_26BB56EC0(a1, &qword_28043A228, sub_26BB57784);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v8;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_26BB21000, v20, v21, "Failure sending request, error: %@", v22, 0xCu);
      sub_26BB55B44(v23, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v23, -1, -1);
      MEMORY[0x26D68EA90](v22, -1, -1);
    }

    LOBYTE(v41[0]) = 1;
    LOBYTE(v44) = 0;
    v50 = 1;
    a3(&v44);
    *&v43[64] = v48;
    *&v43[80] = v49;
    v43[96] = v50;
    *v43 = v44;
    *&v43[16] = v45;
    *&v43[32] = v46;
    *&v43[48] = v47;
    v26 = v43;
  }

  else
  {
    *v43 = v8;
    *&v43[8] = *(a1 + 8);
    *&v43[24] = *(a1 + 24);
    *&v43[40] = *(a1 + 40);
    *&v43[82] = *(a1 + 82);
    *&v43[72] = *(a1 + 72);
    *&v43[56] = *(a1 + 56);
    v44 = *v43;
    v45 = *&v43[16];
    v50 = v43[96];
    v48 = *&v43[64];
    v49 = *&v43[80];
    v46 = *&v43[32];
    v47 = *&v43[48];
    sub_26BB54CA8(v43, v41, sub_26BB57784);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v27 = sub_26BB7CB88();
    __swift_project_value_buffer(v27, qword_28158F140);
    sub_26BB54CA8(a2, v17, type metadata accessor for StocksKitServiceRequest);
    v28 = sub_26BB7CB68();
    v29 = sub_26BB7CF78();
    if (os_log_type_enabled(v28, v29))
    {
      v39 = a4;
      v40 = a3;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v41[0] = v31;
      *v30 = 136315138;
      sub_26BB54CA8(v17, v15, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v15, v12, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26BB55AE4(v15, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v12, type metadata accessor for DataSource.Logo);
        v32 = 0xE400000000000000;
        v33 = 1869049708;
      }

      else
      {
        sub_26BB53CA4(0);
        v38 = *(v34 + 48);
        v32 = 0x800000026BB83500;
        sub_26BB55AE4(v15, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55B44(&v12[v38], &qword_28158BB50, MEMORY[0x277D858F8]);
        v33 = 0xD000000000000013;
      }

      v35 = sub_26BB38238(v33, v32, v41);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_26BB21000, v28, v29, "Done sending request: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x26D68EA90](v31, -1, -1);
      MEMORY[0x26D68EA90](v30, -1, -1);

      a3 = v40;
    }

    else
    {

      sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
    }

    a3(&v44);
    v41[4] = v48;
    v41[5] = v49;
    v42 = v50;
    v41[0] = v44;
    v41[1] = v45;
    v41[2] = v46;
    v41[3] = v47;
    v26 = v41;
  }

  return sub_26BB55AE4(v26, sub_26BB57784);
}

void sub_26BB57E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_26BB55504();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_26BB57F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A238;
  if (!qword_28043A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A238);
  }

  return result;
}

unint64_t sub_26BB57F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BFB8;
  if (!qword_28158BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFB8);
  }

  return result;
}

unint64_t sub_26BB57FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BFD0;
  if (!qword_28158BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFD0);
  }

  return result;
}

unint64_t sub_26BB58000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A240;
  if (!qword_28043A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A240);
  }

  return result;
}

unint64_t sub_26BB58054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B7B0;
  if (!qword_28158B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B7B0);
  }

  return result;
}

unint64_t sub_26BB580A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A250;
  if (!qword_28043A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A250);
  }

  return result;
}

uint64_t sub_26BB580FC(uint64_t a1, uint64_t a2)
{
  sub_26BB55BBC(0, &qword_28158BB50, MEMORY[0x277D858F8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BB5817C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B7B8;
  if (!qword_28158B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B7B8);
  }

  return result;
}

void sub_26BB581D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_26BB582A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26BB58338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB5840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A258;
  if (!qword_28043A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A258);
  }

  return result;
}

unint64_t sub_26BB58464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A260;
  if (!qword_28043A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A260);
  }

  return result;
}

unint64_t sub_26BB584BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A268;
  if (!qword_28043A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A268);
  }

  return result;
}

unint64_t sub_26BB58568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A270;
  if (!qword_28043A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A270);
  }

  return result;
}

unint64_t sub_26BB585C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A278;
  if (!qword_28043A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A278);
  }

  return result;
}

unint64_t sub_26BB58618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A280;
  if (!qword_28043A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A280);
  }

  return result;
}

unint64_t sub_26BB58670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BFC0;
  if (!qword_28158BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFC0);
  }

  return result;
}

unint64_t sub_26BB586C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BFC8;
  if (!qword_28158BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFC8);
  }

  return result;
}

unint64_t sub_26BB58720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BFA8;
  if (!qword_28158BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFA8);
  }

  return result;
}

unint64_t sub_26BB58778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BFB0;
  if (!qword_28158BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BFB0);
  }

  return result;
}

unint64_t sub_26BB587D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A288;
  if (!qword_28043A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A288);
  }

  return result;
}

unint64_t sub_26BB58828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A290;
  if (!qword_28043A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A290);
  }

  return result;
}

unint64_t sub_26BB58928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2D8;
  if (!qword_28158C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2D8);
  }

  return result;
}

unint64_t sub_26BB58980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2E0;
  if (!qword_28158C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2E0);
  }

  return result;
}

unint64_t sub_26BB589D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2C0;
  if (!qword_28158C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2C0);
  }

  return result;
}

unint64_t sub_26BB58A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2C8;
  if (!qword_28158C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2C8);
  }

  return result;
}

unint64_t sub_26BB58A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2A8;
  if (!qword_28158C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2A8);
  }

  return result;
}

unint64_t sub_26BB58AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2B0;
  if (!qword_28158C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2B0);
  }

  return result;
}

StocksKit::ExchangeStatus_optional __swiftcall ExchangeStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExchangeStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465736F6C63;
  v4 = 0x656B72614D657270;
  if (v1 != 3)
  {
    v4 = 0x756F487265746661;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852141679;
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

unint64_t sub_26BB58C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A298;
  if (!qword_28043A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A298);
  }

  return result;
}

uint64_t sub_26BB58CBC()
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

uint64_t sub_26BB58D9C(uint64_t a1)
{
  sub_26BB7CD88();
}

uint64_t sub_26BB58E68(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

void sub_26BB58F50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6465736F6C63;
  v7 = 0xE900000000000074;
  v8 = 0x656B72614D657270;
  if (v2 != 3)
  {
    v8 = 0x756F487265746661;
    v7 = 0xEA00000000007372;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1852141679;
    v3 = 0xE400000000000000;
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

uint64_t getEnumTagSinglePayload for ExchangeStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExchangeStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB591F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A2A0;
  if (!qword_28043A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A2A0);
  }

  return result;
}

uint64_t sub_26BB5924C(NSObject *a1)
{
  v2 = v1;
  if (qword_28158C2F8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v4 = sub_26BB7CB88();
    __swift_project_value_buffer(v4, qword_28158F140);
    v5 = a1;
    a1 = sub_26BB7CB68();
    v6 = sub_26BB7CF78();

    if (os_log_type_enabled(a1, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315138;
      v9 = [v5 configuration];
      v10 = [v9 identifier];

      if (v10)
      {
        v11 = sub_26BB7CD48();
        v13 = v12;
      }

      else
      {
        v13 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
      }

      v14 = sub_26BB38238(v11, v13, &v29);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_26BB21000, a1, v6, "Background URL session did finish for identifier: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D68EA90](v8, -1, -1);
      MEMORY[0x26D68EA90](v7, -1, -1);
    }

    v15 = OBJC_IVAR____TtC9StocksKit30StockServiceURLSessionDelegate_sessionDidFinishObservers;
    v16 = *(v2 + OBJC_IVAR____TtC9StocksKit30StockServiceURLSessionDelegate_sessionDidFinishObservers);
    v29 = MEMORY[0x277D84F90];
    v17 = v16 >> 62 ? sub_26BB7D1A8() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v17)
    {
      break;
    }

    v28 = v2;
    v18 = 0;
    v2 = (v16 & 0xC000000000000001);
    while (v2)
    {
      MEMORY[0x26D68DFB0](v18, v16);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = v28;
        v20 = v29;
        goto LABEL_23;
      }

LABEL_16:
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_26BB7D118();
        sub_26BB7D138();
        sub_26BB7D148();
        a1 = &v29;
        sub_26BB7D128();
      }

      else
      {
      }

      ++v18;
      if (v19 == v17)
      {
        goto LABEL_21;
      }
    }

    if (v18 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v20 = MEMORY[0x277D84F90];
LABEL_23:

  *(v2 + v15) = v20;

  v21 = *(v2 + v15);
  if (v21 >> 62)
  {
    v22 = sub_26BB7D1A8();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v22)
  {
    goto LABEL_35;
  }

  v23 = 0;
  while (2)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D68DFB0](v23, v21);
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      goto LABEL_30;
    }

    if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    v24 = *(v21 + 8 * v23 + 32);

    v25 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
LABEL_30:
      v2 = *(v24 + 16);
      a1 = *(v24 + 24);

      v2(v26);

      ++v23;
      if (v25 == v22)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_35:
}

id sub_26BB596D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BB5973C()
{

  sub_26BB597C0(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_26BB598B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BB59938(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_26BB7D1A8();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D68DFB0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v7 = sub_26BB7D1A8();
        goto LABEL_3;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      goto LABEL_59;
    }
  }

  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v12 != sub_26BB7D1A8())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v13 = sub_26BB7D1A8();
      if (v13 >= v8)
      {
LABEL_23:
        sub_26BB5A7D8(v8, v13);
        type metadata accessor for ObserverProxy();
        v14 = swift_allocObject();
        *(v14 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v14 + 24) = a3;
        v15 = swift_unknownObjectWeakAssign();
        MEMORY[0x26D68DCF0](v15);
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_26BB7CE28();
        }

LABEL_68:
        sub_26BB7CE18();
        return sub_26BB7CE28();
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v12 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v16 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D68DFB0](v5 - 4, v4);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }
    }

    v17 = swift_unknownObjectWeakLoadStrong();

    if (!v17)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v16 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v18 = MEMORY[0x26D68DFB0](v8, v4);
      v19 = MEMORY[0x26D68DFB0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v20)
      {
        goto LABEL_70;
      }

      if (v16 >= v20)
      {
        goto LABEL_71;
      }

      v18 = *(v4 + 8 * v8 + 32);
      v19 = *(v4 + 8 * v5);

LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_26BB5A238(v4);
        v21 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v21) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

      if ((v4 & 0x8000000000000000) != 0 || v21)
      {
        v4 = sub_26BB5A238(v4);
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v16 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      *(v6 + 8 * v5) = v18;

      *a1 = v4;
LABEL_48:
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v22 = sub_26BB7D1A8();
      }

      else
      {
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v22)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_26BB59DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_26BB7BE78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7BE68();
  v12 = sub_26BB7BE58();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  sub_26BB5A458(v12, v14, a3, a4, a5);
}

void sub_26BB59EBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2 + OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v5);
  sub_26BB59938((v5 + 8), a1, a2);

  os_unfair_lock_unlock(v5);
}

void sub_26BB59F30(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v4);
  swift_unknownObjectRetain();
  v5 = sub_26BB5A8B0((v4 + 8), a1);
  swift_unknownObjectRelease();
  v6 = *(v4 + 8);
  if (v6 >> 62)
  {
    v7 = sub_26BB7D1A8();
    if (v7 >= v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 < v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_26BB5A7D8(v5, v7);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_26BB5A000()
{
  sub_26BB597C0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26BB5A068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  return sub_26BB5A168(v12, a2, a3, v6, v10, v11, a6);
}

uint64_t sub_26BB5A0C8(uint64_t a1, char a2)
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

  sub_26BB7D1A8();
LABEL_9:
  result = sub_26BB7D0B8();
  *v2 = result;
  return result;
}

uint64_t sub_26BB5A168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    a7(v17, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_26BB5A238(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26BB7D1A8();
  }

  return sub_26BB7D0B8();
}

uint64_t sub_26BB5A29C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26BB7BE78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280439D40 != -1)
  {
    swift_once();
  }

  v6 = qword_280440450;
  v7 = sub_26BB7CD38();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    v9 = sub_26BB7CD48();

    return v9;
  }

  else
  {
    sub_26BB7BE68();
    v11 = sub_26BB7BE58();
    (*(v3 + 8))(v5, v2);
    v12 = sub_26BB7CD38();
    v13 = sub_26BB7CD38();
    [v6 setObject:v12 forKey:v13];

    return v11;
  }
}

void sub_26BB5A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v5;
  ObjectType = swift_getObjectType();
  v26 = a1;
  if (sub_26BB5A29C(a3, a4) == a1 && v11 == a2)
  {
LABEL_3:

    return;
  }

  v12 = sub_26BB7D378();

  if (v12)
  {
    return;
  }

  if (qword_280439D40 != -1)
  {
    swift_once();
  }

  v13 = qword_280440450;
  v14 = sub_26BB7CD38();
  v15 = sub_26BB7CD38();
  [v13 setObject:v14 forKey:v15];

  v16 = &v8[OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers];
  os_unfair_lock_lock(&v8[OBJC_IVAR____TtC9StocksKit21IdentificationService_lockedObservers]);
  v17 = *(v16 + 1);

  os_unfair_lock_unlock(v16);
  if (v17 >> 62)
  {
    v18 = sub_26BB7D1A8();
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26D68DFB0](i, v17);
      }

      else
      {
        v23 = *(v17 + 8 * i + 32);
      }

      v28[3] = ObjectType;
      v28[4] = sub_26BB5AB98();
      v28[0] = v8;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v23 + 24);
        v21 = swift_getObjectType();
        v22 = v8;
        a5(v28, v26, a2, v21, v20);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v8;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }
  }
}

uint64_t sub_26BB5A6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ObserverProxy();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26BB7D1A8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26BB7D1A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BB5A7D8(uint64_t a1, uint64_t a2)
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

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26BB7D1A8();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_26BB7D1A8();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_26BB5A0C8(result, 1);

  return sub_26BB5A6D8(v5, v3, 0);
}

unint64_t sub_26BB5A8B0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_26BB7D1A8();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D68DFB0](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v11 == sub_26BB7D1A8())
            {
              return v7;
            }
          }

          else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D68DFB0](v11, v3);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
          {
            if (v7 != v11)
            {
              if (v5)
              {
                v13 = MEMORY[0x26D68DFB0](v7, v3);
                v14 = MEMORY[0x26D68DFB0](v11, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v15)
                {
                  goto LABEL_60;
                }

                if (v11 >= v15)
                {
                  goto LABEL_61;
                }

                v13 = *(v3 + 32 + 8 * v7);
                v14 = *(v3 + 32 + 8 * v11);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_26BB5A238(v3);
                v16 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

              if ((v3 & 0x8000000000000000) != 0 || v16)
              {
                v3 = sub_26BB5A238(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_26BB7D1A8();
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v11 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              *(v5 + 8 * v11 + 32) = v13;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v11++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_26BB7D1A8();
  }

  return v4[2];
}

unint64_t sub_26BB5AB98()
{
  result = qword_280439E20;
  if (!qword_280439E20)
  {
    type metadata accessor for IdentificationService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439E20);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26BB5AC50(uint64_t a1)
{
  sub_26BB5987C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BB5ACC8()
{
  v8 = sub_26BB7CFA8();
  v0 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26BB7CF88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26BB7CCB8();
  MEMORY[0x28223BE20](v4 - 8);
  v7[1] = sub_26BB3B454(0, &qword_28158BB68, 0x277D85C78);
  sub_26BB7CC98();
  v9 = MEMORY[0x277D84F90];
  sub_26BB603AC(&unk_28158BB70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v5 = MEMORY[0x277D85230];
  sub_26BB5FBA4(0, &unk_28158BB98, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_26BB603F4(&qword_28158BB90, &unk_28158BB98, v5);
  sub_26BB7D028();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v8);
  result = sub_26BB7CFD8();
  qword_28158B7D0 = result;
  return result;
}

uint64_t PeerHandler.init(session:stockService:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_26BB5F348(MEMORY[0x277D84F90]);
  sub_26BB5F538(0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  a3[6] = v7;
  *a3 = a1;

  return sub_26BB28A3C(a2, (a3 + 1));
}

uint64_t PeerHandler.handleIncomingRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26BB7CC78();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  sub_26BB603AC(&qword_28158B980, type metadata accessor for CancellableStocksKitServiceRequest, &unk_26BB804C0);
  sub_26BB7CC68();
  v16 = v26;
  v25[2] = a2;
  sub_26BB60344(v13, v15, type metadata accessor for CancellableStocksKitServiceRequest);
  if (qword_28158B7C8 != -1)
  {
    swift_once();
  }

  v25[1] = qword_28158B7D0;
  sub_26BB6057C(v15, v10, type metadata accessor for CancellableStocksKitServiceRequest);
  sub_26BB5F770(v16, v29);
  v26 = v15;
  v17 = v28;
  (*(v28 + 16))(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v17 + 80) + v19 + 56) & ~*(v17 + 80);
  v21 = swift_allocObject();
  sub_26BB60344(v10, v21 + v18, type metadata accessor for CancellableStocksKitServiceRequest);
  v22 = v21 + v19;
  v23 = v29[1];
  *v22 = v29[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v29[2];
  *(v22 + 48) = v30;
  (*(v17 + 32))(v21 + v20, v6, v4);
  sub_26BB7CC48();

  return sub_26BB5FF08(v26, type metadata accessor for CancellableStocksKitServiceRequest);
}

uint64_t sub_26BB5B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_26BB7BE78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v27[-v14];
  v16 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26BB6057C(a1, v18, type metadata accessor for CancellableStocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = (*(v10 + 32))(v13, v18, v9);
    v20 = *(a2 + 48);
    MEMORY[0x28223BE20](v19);
    *&v27[-16] = v13;
    os_unfair_lock_lock((v20 + 24));
    sub_26BB5FC58((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));
    v15 = v13;
  }

  else
  {
    sub_26BB54250(0);
    v21 = a3;
    v23 = *(v22 + 48);
    (*(v10 + 32))(v15, v18, v9);
    v24 = sub_26BB60344(&v18[v23], v8, type metadata accessor for StocksKitServiceRequest);
    v25 = *(a2 + 48);
    MEMORY[0x28223BE20](v24);
    *&v27[-32] = v15;
    *&v27[-24] = v21;
    *&v27[-16] = v8;
    *&v27[-8] = a2;
    os_unfair_lock_lock((v25 + 24));
    sub_26BB5FC74((v25 + 16));
    os_unfair_lock_unlock((v25 + 24));
    sub_26BB5FF08(v8, type metadata accessor for StocksKitServiceRequest);
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_26BB5B650(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v36 = a5;
  v33 = a3;
  v34 = a4;
  v41 = a2;
  v38 = sub_26BB7BE78();
  v5 = *(v38 - 8);
  v35 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v7;
  v8 = type metadata accessor for StocksKitServiceRequest(0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26BB7CC78();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB5FBA4(0, &qword_28158B258, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_26BB7CEC8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(v13, v33, v10);
  sub_26BB6057C(v34, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StocksKitServiceRequest);
  (*(v5 + 16))(v7, v41, v38);
  sub_26BB5F770(v36, v39);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + *(v32 + 80) + v18) & ~*(v32 + 80);
  v20 = (v9 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = (v35 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v11 + 32))(v22 + v18, v13, v29);
  sub_26BB60344(v30, v22 + v19, type metadata accessor for StocksKitServiceRequest);
  (*(v5 + 32))(v22 + v20, v31, v38);
  v23 = v22 + v21;
  v24 = v39[1];
  *v23 = v39[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v39[2];
  *(v23 + 48) = v40;
  v25 = sub_26BB5CC08(0, 0, v16, &unk_26BB81228, v22);
  v26 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[0] = *v26;
  result = sub_26BB66618(v25, v41, isUniquelyReferenced_nonNull_native);
  *v26 = *&v39[0];
  return result;
}

uint64_t sub_26BB5BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_26BB7BE78();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = type metadata accessor for StocksKitServiceRequest(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5BB7C, 0, 0);
}

uint64_t sub_26BB5BB7C()
{
  v52 = v0;
  v1 = sub_26BB7CC38();
  v49 = v3;
  v50 = v2;
  v48 = v4;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 136);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = sub_26BB7CB88();
  __swift_project_value_buffer(v11, qword_28158F140);
  sub_26BB6057C(v10, v5, type metadata accessor for StocksKitServiceRequest);
  (*(v7 + 16))(v6, v9, v8);
  v12 = sub_26BB7CB68();
  v13 = sub_26BB7CF78();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 136);
  if (v14)
  {
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v18 = 136315650;
    sub_26BB6057C(v15, v16, type metadata accessor for StocksKitServiceRequest);
    sub_26BB6057C(v16, v17, type metadata accessor for StocksKitServiceRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 120);
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BB5FF08(*(v0 + 128), type metadata accessor for StocksKitServiceRequest);
      sub_26BB5FF08(v20, type metadata accessor for StocksKitServiceRequest);
      sub_26BB5FF08(v22, type metadata accessor for DataSource.Logo);
      v23 = 0xE400000000000000;
      v24 = 1869049708;
    }

    else
    {
      sub_26BB53CA4(0);
      v46 = v1;
      v32 = *(v31 + 48);
      v23 = 0x800000026BB83500;
      sub_26BB5FF08(v21, type metadata accessor for StocksKitServiceRequest);
      sub_26BB5FF08(v20, type metadata accessor for StocksKitServiceRequest);
      v33 = v22 + v32;
      v1 = v46;
      sub_26BB5FF68(v33, &qword_28158BB50, MEMORY[0x277D858F8]);
      v24 = 0xD000000000000013;
    }

    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 88);
    v37 = sub_26BB38238(v24, v23, &v51);

    *(v18 + 4) = v37;
    *(v18 + 12) = 2080;
    sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v38 = sub_26BB7D348();
    v40 = v39;
    (*(v35 + 8))(v34, v36);
    v41 = sub_26BB38238(v38, v40, &v51);

    *(v18 + 14) = v41;
    *(v18 + 22) = 1024;
    v29 = v49;
    v28 = v50;
    *(v0 + 152) = v1;
    *(v0 + 160) = v50;
    v30 = v48;
    *(v0 + 168) = v49;
    *(v0 + 176) = v48;
    *(v18 + 24) = audit_token_to_pid((v0 + 152));
    _os_log_impl(&dword_26BB21000, v12, v13, "XPC handling request %s with id: %s for pid: %d", v18, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v47, -1, -1);
    MEMORY[0x26D68EA90](v18, -1, -1);
  }

  else
  {
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);

    (*(v26 + 8))(v25, v27);
    sub_26BB5FF08(v15, type metadata accessor for StocksKitServiceRequest);
    v29 = v49;
    v28 = v50;
    v30 = v48;
  }

  v42 = swift_task_alloc();
  *(v0 + 144) = v42;
  *v42 = v0;
  v42[1] = sub_26BB5BFFC;
  v43 = *(v0 + 72);
  v44 = *(v0 + 64);

  return sub_26BB5C270(v0 + 16, v44, v43, v1, v28, v29, v30, v0 + 184);
}

uint64_t sub_26BB5BFFC()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 185) = *(v2 + 184);
    v3 = sub_26BB5C114;
  }

  else
  {
    v3 = sub_26BB5C1B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BB5C114()
{
  sub_26BB5D5B0(*(v0 + 185) | 0x100, *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB5C1B4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  sub_26BB5D470(v4, v1, v3, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BB5C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v8;
  v9[11] = a8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = sub_26BB7BE78();
  v9[12] = v10;
  v9[13] = *(v10 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v11 = sub_26BB7CE88();
  v9[16] = v11;
  v9[17] = *(v11 - 8);
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5C3A8, 0, 0);
}

uint64_t sub_26BB5C3A8()
{
  if (qword_28158B800 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v3;
  *(v0 + 208) = 0;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  sub_26BB3D480(0, &qword_28158B280, MEMORY[0x277D83548]);
  *v5 = v0;
  v5[1] = sub_26BB5C51C;
  v6 = *(v0 + 24);

  return MEMORY[0x282200908](v6, v0 + 176, &unk_26BB81240, v4, 0, 0, 0xD00000000000001BLL, 0x800000026BB836C0);
}

uint64_t sub_26BB5C51C()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB5C698, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB5C698()
{
  v61 = v0;
  v1 = *(v0 + 168);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_26BB3D480(0, &qword_28158BB40, MEMORY[0x277D84948]);
  if (swift_dynamicCast())
  {

    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 40);
    v7 = sub_26BB7CB88();
    __swift_project_value_buffer(v7, qword_28158F140);
    (*(v5 + 16))(v3, v6, v4);
    v8 = sub_26BB7CB68();
    v9 = sub_26BB7CF68();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v14 = 136315138;
      sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_26BB7D348();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_26BB38238(v15, v17, &v60);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_26BB21000, v8, v9, "Request cancelled in XPC for id: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x26D68EA90](v58, -1, -1);
      MEMORY[0x26D68EA90](v14, -1, -1);
    }

    else
    {

      v19 = (*(v12 + 8))(v11, v13);
    }

    v45 = *(v0 + 136);
    v44 = *(v0 + 144);
    v46 = *(v0 + 128);
    v47 = 2;
    *(v0 + 210) = 2;
    sub_26BB56CE8(v19, v20, v21);
    swift_willThrowTypedImpl();
    (*(v45 + 8))(v44, v46);
    v48 = *(v0 + 16);
  }

  else
  {

    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 168);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 96);
    v26 = *(v0 + 40);
    v27 = sub_26BB7CB88();
    __swift_project_value_buffer(v27, qword_28158F140);
    (*(v24 + 16))(v23, v26, v25);
    v28 = v22;
    v29 = sub_26BB7CB68();
    v30 = sub_26BB7CF68();

    if (os_log_type_enabled(v29, v30))
    {
      v57 = *(v0 + 168);
      v32 = *(v0 + 104);
      v31 = *(v0 + 112);
      v33 = *(v0 + 96);
      v34 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v34 = 136315394;
      sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_26BB7D348();
      v37 = v36;
      (*(v32 + 8))(v31, v33);
      v38 = sub_26BB38238(v35, v37, &v60);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2114;
      v39 = v57;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v40;
      *v56 = v40;
      _os_log_impl(&dword_26BB21000, v29, v30, "Request failed in XPC for id: %s, error: %{public}@", v34, 0x16u);
      sub_26BB5FF08(v56, sub_26BB3B3EC);
      MEMORY[0x26D68EA90](v56, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x26D68EA90](v59, -1, -1);
      MEMORY[0x26D68EA90](v34, -1, -1);
    }

    else
    {
      v50 = *(v0 + 104);
      v49 = *(v0 + 112);
      v51 = *(v0 + 96);

      v41 = (*(v50 + 8))(v49, v51);
    }

    v52 = *(v0 + 168);
    v47 = 1;
    *(v0 + 209) = 1;
    sub_26BB56CE8(v41, v42, v43);
    swift_willThrowTypedImpl();
    v48 = v52;
  }

  v53 = *(v0 + 88);

  *v53 = v47;
  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_26BB5CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26BB5FBA4(0, &qword_28158B258, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26BB5FE74(a3, v22 - v9);
  v11 = sub_26BB7CEC8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26BB5FF68(v10, &qword_28158B258, MEMORY[0x277D85720]);
  }

  else
  {
    sub_26BB7CEB8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26BB7CE48();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26BB7CD78() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26BB5FF68(a3, &qword_28158B258, MEMORY[0x277D85720]);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26BB5FF68(a3, &qword_28158B258, MEMORY[0x277D85720]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_26BB5CEEC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26BB7BE78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v8 = sub_26BB7CB88();
  __swift_project_value_buffer(v8, qword_28158F140);
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = a1;
    v12 = v11;
    v21 = swift_slowAlloc();
    v24 = v21;
    *v12 = 136315138;
    sub_26BB603AC(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_26BB7D348();
    v23 = a2;
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_26BB38238(v13, v15, &v24);
    a2 = v23;

    *(v12 + 4) = v16;
    _os_log_impl(&dword_26BB21000, v9, v10, "XPC handling cancel request with id: %s", v12, 0xCu);
    v17 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D68EA90](v17, -1, -1);
    v18 = v12;
    a1 = v22;
    MEMORY[0x26D68EA90](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (*(*a1 + 16))
  {
    sub_26BB63908(a2);
    if (v19)
    {
      sub_26BB3D480(0, &qword_28158BB40, MEMORY[0x277D84948]);

      sub_26BB7CED8();
    }
  }
}

void PeerHandler.handleCancellation(error:)(uint64_t a1)
{
  v2 = sub_26BB7CC28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v6 = sub_26BB7CB88();
  __swift_project_value_buffer(v6, qword_28158F140);
  v7 = *(v3 + 16);
  v7(v5, a1, v2);
  v8 = sub_26BB7CB68();
  v9 = sub_26BB7CF78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    sub_26BB603AC(&qword_28158B998, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v7(v12, v5, v2);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_26BB21000, v8, v9, "XPC received cancellation because error: %@", v10, 0xCu);
    sub_26BB5FF08(v11, sub_26BB3B3EC);
    MEMORY[0x26D68EA90](v11, -1, -1);
    MEMORY[0x26D68EA90](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26BB5D470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26BB56CE8(a1, a2, a3);
  v9 = type metadata accessor for StocksKitServiceResult(0, a3, &type metadata for StocksKitServiceError, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  (*(*(a3 - 8) + 16))(&v14 - v11, a1, a3);
  swift_storeEnumTagMultiPayload();
  sub_26BB5D99C(v12, a2, a3, a4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26BB5D5B0(__int16 a1, uint64_t a2)
{
  v4 = sub_26BB7CC88();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BB7CCB8();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26BB7CC78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  if (qword_28158B7C8 != -1)
  {
    swift_once();
  }

  v19 = qword_28158B7D0;
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v25 = HIBYTE(a1) & 1;
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = (v14 + v13 + v12);
  *v15 = a1;
  v15[1] = v25;
  aBlock[4] = sub_26BB600E4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BB3805C;
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);
  sub_26BB7CC98();
  v23 = MEMORY[0x277D84F90];
  sub_26BB603AC(&qword_28158B990, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v17 = MEMORY[0x277D85198];
  sub_26BB5FBA4(0, &qword_28158B270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_26BB603F4(&qword_28158B268, &qword_28158B270, v17);
  sub_26BB7D028();
  MEMORY[0x26D68DED0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_26BB5D99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v33 = a1;
  v6 = sub_26BB7CC88();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BB7CCB8();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26BB56CE8(v9, v12, v13);
  v34 = a3;
  v15 = type metadata accessor for StocksKitServiceResult(0, a3, &type metadata for StocksKitServiceError, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = sub_26BB7CC78();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158B7C8 != -1)
  {
    swift_once();
  }

  v32 = qword_28158B7D0;
  (*(v20 + 16))(&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v19);
  (*(v16 + 16))(v18, v33, v15);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = (v21 + v23 + *(v16 + 80)) & ~*(v16 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 16) = v34;
  *(v25 + 24) = v26;
  (*(v20 + 32))(v25 + v23, v22, v19);
  (*(v16 + 32))(v25 + v24, v18, v15);
  aBlock[4] = sub_26BB5FFD8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BB3805C;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);
  sub_26BB7CC98();
  v41 = MEMORY[0x277D84F90];
  sub_26BB603AC(&qword_28158B990, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v28 = MEMORY[0x277D85198];
  sub_26BB5FBA4(0, &qword_28158B270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_26BB603F4(&qword_28158B268, &qword_28158B270, v28);
  v29 = v38;
  v30 = v40;
  sub_26BB7D028();
  MEMORY[0x26D68DED0](0, v11, v29, v27);
  _Block_release(v27);
  (*(v39 + 8))(v29, v30);
  (*(v36 + 8))(v11, v37);
}

uint64_t sub_26BB5DE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26BB56CE8(a1, a2, a3);
  v6 = type metadata accessor for StocksKitServiceResult(0, a3, &type metadata for StocksKitServiceError, v5);
  sub_26BB5F71C(v6, v7, v8);
  swift_getWitnessTable();
  return sub_26BB7CC58();
}

uint64_t sub_26BB5DEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v3[12] = v4;
  v3[13] = *(v4 + 64);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5DFC4, 0, 0);
}

uint64_t sub_26BB5DFC4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_26BB5F770(*(v0 + 80), v0 + 16);
  sub_26BB6057C(v2, v1, type metadata accessor for StocksKitServiceRequest);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 120) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  sub_26BB60344(v1, v5 + v4, type metadata accessor for StocksKitServiceRequest);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  v8 = sub_26BB3D480(0, &qword_28158B280, MEMORY[0x277D83548]);
  *v7 = v0;
  v7[1] = sub_26BB5E12C;
  v9 = *(v0 + 72);

  return MEMORY[0x2821D20A8](v9, &unk_26BB81250, v5, v8);
}

uint64_t sub_26BB5E12C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB5E274, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB5E274()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB5E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BB3BA30;

  return sub_26BB5E390(a1, a3);
}

uint64_t sub_26BB5E390(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  type metadata accessor for DataSource.Logo(0);
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for CurrencyConversionsResult(0);
  v3[23] = swift_task_alloc();
  sub_26BB5FBA4(0, &qword_28158BB50, MEMORY[0x277D858F8], MEMORY[0x277D83D88]);
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for StocksKitServiceRequest(0);
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB5E4E0, 0, 0);
}

uint64_t sub_26BB5E4E0()
{
  sub_26BB6057C(*(v0 + 152), *(v0 + 208), type metadata accessor for StocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 208);
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    sub_26BB53D2C(0);
    v5 = *(v1 + *(v4 + 48));
    sub_26BB60344(v1, v2, type metadata accessor for DataSource.Logo);
    v6 = v3[4];
    v7 = v3[5];
    __swift_project_boxed_opaque_existential_1(v3 + 1, v6);
    *(v0 + 136) = v5;
    v26 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    *(v0 + 232) = v8;
    *v8 = v0;
    v8[1] = sub_26BB5EA24;
    v9 = *(v0 + 168);
    v10 = v0 + 16;
    v11 = v0 + 136;
    v12 = v6;
    v13 = v7;
    v14 = v26;
  }

  else
  {
    v15 = *(v0 + 208);
    v16 = *(v0 + 192);
    v17 = *(v0 + 160);
    v18 = *v15;
    v19 = v15[1];
    v20 = *(v15 + 16);
    sub_26BB53CA4(0);
    sub_26BB580FC(v15 + *(v21 + 48), v16);
    v22 = v17[4];
    v23 = v17[5];
    __swift_project_boxed_opaque_existential_1(v17 + 1, v22);
    *(v0 + 112) = v18;
    *(v0 + 120) = v19;
    *(v0 + 128) = v20;
    v27 = (*(v23 + 16) + **(v23 + 16));
    v24 = swift_task_alloc();
    *(v0 + 216) = v24;
    *v24 = v0;
    v24[1] = sub_26BB5E7F0;
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v9 = v0 + 112;
    v12 = v22;
    v13 = v23;
    v14 = v27;
  }

  return v14(v10, v9, v11, v12, v13);
}

uint64_t sub_26BB5E7F0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_26BB5EC2C;
  }

  else
  {
    v2 = sub_26BB5E904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB5E904()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[18];
  v3[3] = v0[22];
  v3[4] = sub_26BB603AC(&qword_28158BCE0, type metadata accessor for CurrencyConversionsResult, &protocol conformance descriptor for CurrencyConversionsResult);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_26BB60344(v1, boxed_opaque_existential_1, type metadata accessor for CurrencyConversionsResult);
  sub_26BB5FF68(v2, &qword_28158BB50, MEMORY[0x277D858F8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BB5EA24()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_26BB5ECDC;
  }

  else
  {
    v2 = sub_26BB5EB38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB5EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 168);
  v5 = *(v3 + 144);
  v5[3] = &type metadata for DataSource.DownloadedLogo;
  v5[4] = sub_26BB602F0(a1, a2, a3);
  v6 = swift_allocObject();
  *v5 = v6;
  v7 = *(v3 + 32);
  v6[1] = *(v3 + 16);
  v6[2] = v7;
  v8 = *(v3 + 64);
  v6[3] = *(v3 + 48);
  v6[4] = v8;
  v9 = *(v3 + 96);
  v6[5] = *(v3 + 80);
  v6[6] = v9;
  sub_26BB5FF08(v4, type metadata accessor for DataSource.Logo);

  v10 = *(v3 + 8);

  return v10();
}

uint64_t sub_26BB5EC2C()
{
  sub_26BB5FF68(*(v0 + 192), &qword_28158BB50, MEMORY[0x277D858F8]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB5ECDC()
{
  sub_26BB5FF08(*(v0 + 168), type metadata accessor for DataSource.Logo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB5EDA0()
{
  sub_26BB5FBA4(0, &qword_28158B0C0, sub_26BB5FC08, MEMORY[0x277D85A78]);
  swift_allocObject();
  result = sub_26BB7D5C8();
  qword_28158F130 = result;
  return result;
}

uint64_t sub_26BB5EE2C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_26BB5F638(0, a2, a3);
  sub_26BB5F69C(v3, v4, v5);
  return sub_26BB7CC58();
}

unint64_t sub_26BB5EE84(uint64_t a1)
{
  sub_26BB5F944(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_26BB5F9D0(0);
    v8 = sub_26BB7D1D8();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_26BB6057C(v10, v6, sub_26BB5F944);
      result = sub_26BB637DC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Currency(0);
      result = sub_26BB60344(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Currency);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26BB5F054(uint64_t a1)
{
  sub_26BB5FA98(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_26BB5FB00(0, &qword_28158B1E8, MEMORY[0x277D84460]);
    v8 = sub_26BB7D1D8();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_26BB6057C(v10, v6, sub_26BB5FA98);
      result = sub_26BB637DC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Currency(0);
      result = sub_26BB60344(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Currency);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26BB5F240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_26BB605E4();
    v3 = sub_26BB7D1D8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26BB63890(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26BB5F348(uint64_t a1)
{
  sub_26BB60458(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_26BB604C8(0, &qword_28158B1F8, MEMORY[0x277D84460]);
    v8 = sub_26BB7D1D8();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_26BB6057C(v10, v6, sub_26BB60458);
      result = sub_26BB63908(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26BB7BE78();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_26BB5F538(uint64_t a1)
{
  if (!qword_28158B218)
  {
    sub_26BB604C8(255, &qword_28158B2A8, MEMORY[0x277D834F8]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_26BB7D0F8();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B218);
    }
  }
}

void sub_26BB5F5BC(uint64_t a1)
{
  if (!qword_28158B250)
  {
    sub_26BB3D480(255, &qword_28158BB40, MEMORY[0x277D84948]);
    v1 = sub_26BB7CEE8();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B250);
    }
  }
}

void sub_26BB5F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28158B8D0)
  {
    v4 = sub_26BB56CE8(0, a2, a3);
    v5 = type metadata accessor for StocksKitServiceResult(a1, MEMORY[0x277D84A98], &type metadata for StocksKitServiceError, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_28158B8D0);
    }
  }
}

unint64_t sub_26BB5F69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B8D8;
  if (!qword_28158B8D8)
  {
    sub_26BB5F638(255, a2, a3);
    sub_26BB5F71C(v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B8D8);
  }

  return result;
}

unint64_t sub_26BB5F71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C1F8[0];
  if (!qword_28158C1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28158C1F8);
  }

  return result;
}

uint64_t sub_26BB5F7A8()
{
  v1 = *(type metadata accessor for CancellableStocksKitServiceRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_26BB7CC78() - 8);
  v5 = v0 + ((v3 + *(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_26BB5B35C(v0 + v2, v0 + v3, v5);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26BB5F8A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26BB5F8E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BB5F944(uint64_t a1)
{
  if (!qword_28158B2B8)
  {
    type metadata accessor for Currency(255);
    sub_26BB5FB00(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158B2B8);
    }
  }
}

void sub_26BB5F9D0(uint64_t a1)
{
  if (!qword_28158B1F0)
  {
    type metadata accessor for Currency(255);
    sub_26BB5FB00(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    sub_26BB603AC(qword_28158BC38, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    v1 = sub_26BB7D1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B1F0);
    }
  }
}

void sub_26BB5FA98(uint64_t a1)
{
  if (!qword_28158B2B0)
  {
    type metadata accessor for Currency(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158B2B0);
    }
  }
}

void sub_26BB5FB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Currency(255);
    v7 = sub_26BB603AC(qword_28158BC38, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    v8 = a3(a1, v6, MEMORY[0x277D839F8], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26BB5FBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26BB5FC08()
{
  if (!qword_28158B7F8)
  {
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B7F8);
    }
  }
}

uint64_t sub_26BB5FC94(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26BB7CC78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_26BB7BE78() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_26BB3BA30;

  return sub_26BB5BA70(a1, v14, v15, v1 + v6, v1 + v9, v1 + v12, v1 + v13);
}

uint64_t sub_26BB5FE74(uint64_t a1, uint64_t a2)
{
  sub_26BB5FBA4(0, &qword_28158B258, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB5FF08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB5FF68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB5FBA4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BB5FFD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_26BB7CC78();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v9 = sub_26BB56CE8(v3 - 8, v7, v8);
  v10 = *(type metadata accessor for StocksKitServiceResult(0, v1, &type metadata for StocksKitServiceError, v9) - 8);
  v11 = v0 + ((v6 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_26BB5DE64(v0 + v5, v11, v1, v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BB600E4()
{
  v2 = *(sub_26BB7CC78() - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = (v3 + *(v2 + 64));

  return sub_26BB5EE2C(v3, v4, v1);
}

uint64_t sub_26BB60164(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BB3BF24;

  return sub_26BB5DEFC(a1, v5, v4);
}

uint64_t sub_26BB60210(uint64_t a1)
{
  v4 = *(type metadata accessor for StocksKitServiceRequest(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BB3BF24;

  return sub_26BB5E2E0(a1, v1 + 16, v1 + v5);
}

unint64_t sub_26BB602F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A338;
  if (!qword_28043A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A338);
  }

  return result;
}

uint64_t sub_26BB60344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB603AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BB603F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26BB5FBA4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26BB60458(uint64_t a1)
{
  if (!qword_28158BAF8)
  {
    sub_26BB7BE78();
    sub_26BB5F5BC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158BAF8);
    }
  }
}

void sub_26BB604C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB7BE78();
    sub_26BB5F5BC(255);
    v8 = v7;
    v9 = sub_26BB603AC(&qword_28158BB10, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_26BB6057C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26BB605E4()
{
  if (!qword_28043A340)
  {
    v0 = sub_26BB7D1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A340);
    }
  }
}

void *sub_26BB60648@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_26BB7BEF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB60D78(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB60DDC(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = sub_26BB7BFA8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7BF18();
  sub_26BB7BF08();
  (*(v19 + 8))(v21, v18);
  sub_26BB7BEE8();
  (*(v3 + 56))(v15, 0, 1, v2);
  v22 = *(v6 + 56);
  sub_26BB60E34(v17, v8);
  sub_26BB60E34(v15, &v8[v22]);
  v23 = *(v3 + 48);
  if (v23(v8, 1, v2) == 1)
  {
    sub_26BB60E98(v15, sub_26BB60DDC);
    sub_26BB60E98(v17, sub_26BB60DDC);
    if (v23(&v8[v22], 1, v2) == 1)
    {
      sub_26BB60E98(v8, sub_26BB60DDC);
LABEL_11:
      v26 = sub_26BB7C4D8();
      swift_allocObject();
      result = sub_26BB7C4C8();
      v27 = MEMORY[0x277D69758];
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_26BB60E34(v8, v12);
  if (v23(&v8[v22], 1, v2) == 1)
  {
    sub_26BB60E98(v15, sub_26BB60DDC);
    sub_26BB60E98(v17, sub_26BB60DDC);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_26BB60E98(v8, sub_26BB60D78);
    goto LABEL_7;
  }

  v28 = v33;
  (*(v3 + 32))(v33, &v8[v22], v2);
  sub_26BB60EF8();
  v29 = sub_26BB7CD28();
  v30 = *(v3 + 8);
  v30(v28, v2);
  sub_26BB60E98(v15, sub_26BB60DDC);
  sub_26BB60E98(v17, sub_26BB60DDC);
  v30(v12, v2);
  sub_26BB60E98(v8, sub_26BB60DDC);
  if (v29)
  {
    goto LABEL_11;
  }

LABEL_7:
  v24 = v34;
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_26BB3D480(0, &qword_28043A350, MEMORY[0x277D696F8]);
  result = sub_26BB7C8C8();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_26BB3D480(0, &qword_28043A358, MEMORY[0x277D696A0]);
    result = sub_26BB7C8C8();
    if (v36)
    {
      v26 = sub_26BB7C3A8();
      swift_allocObject();
      result = sub_26BB7C398();
      v27 = MEMORY[0x277D695F0];
LABEL_12:
      v31 = v35;
      v35[3] = v26;
      v31[4] = v27;
      *v31 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BB60BC0()
{
  v0 = sub_26BB7CA18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7C918();
  sub_26BB3D480(0, &qword_28158BA88, MEMORY[0x277D696F0]);
  sub_26BB7C988();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_26BB7C858();

  (*(v1 + 8))(v3, v0);
  sub_26BB7C918();
  sub_26BB7C228();
  sub_26BB7C988();
}

void sub_26BB60D78(uint64_t a1)
{
  if (!qword_28043A348)
  {
    sub_26BB60DDC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A348);
    }
  }
}

void sub_26BB60DDC(uint64_t a1)
{
  if (!qword_280439F88)
  {
    sub_26BB7BEF8();
    v1 = sub_26BB7CFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_280439F88);
    }
  }
}

uint64_t sub_26BB60E34(uint64_t a1, uint64_t a2)
{
  sub_26BB60DDC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB60E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB60EF8()
{
  result = qword_28043A360;
  if (!qword_28043A360)
  {
    sub_26BB7BEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A360);
  }

  return result;
}

uint64_t sub_26BB60F50()
{
  v0 = sub_26BB7CB88();
  __swift_allocate_value_buffer(v0, qword_28158F140);
  __swift_project_value_buffer(v0, qword_28158F140);
  return sub_26BB7CB78();
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

uint64_t Currency.codingKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s9StocksKit8CurrencyV10identifierSSvg_0();
  v4 = v3;
  a1[3] = &type metadata for Currency.StringCodingKey;
  a1[4] = sub_26BB610B4(v2, v3, v5);
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

unint64_t sub_26BB610B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B2D0;
  if (!qword_28158B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2D0);
  }

  return result;
}

uint64_t Currency.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Currency(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7D598();
  _s9StocksKit8CurrencyVyACSScfC_0();
  (*(*(a2 - 8) + 8))(a1, a2);
  sub_26BB61284(v10, a4);
  return (*(v8 + 56))(a4, 0, 1, v7);
}

uint64_t type metadata accessor for Currency(uint64_t a1)
{
  result = qword_28158BC20;
  if (!qword_28158BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB61284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Currency(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB612E8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26BB61318@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_26BB61338(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_26BB61348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB610B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB61384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB610B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB613DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB61464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB61688(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB614A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB61688(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Currency.encode(to:)(void *a1)
{
  sub_26BB67510(0, &qword_28043A368, sub_26BB61688, &type metadata for Currency.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB61688(v7, v8, v9);
  sub_26BB7D488();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28043A378, MEMORY[0x277CC9720], MEMORY[0x277CC9728]);
  sub_26BB7D328();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26BB61688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A370;
  if (!qword_28043A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A370);
  }

  return result;
}

uint64_t Currency.hash(into:)(uint64_t a1)
{
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);

  return sub_26BB7CCF8();
}

uint64_t Currency.hashValue.getter()
{
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t Currency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_26BB7BF48();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67510(0, &qword_28043A380, sub_26BB61688, &type metadata for Currency.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Currency(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB61688(v12, v13, v14);
  v15 = v23;
  sub_26BB7D478();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    sub_26BB680AC(&qword_28043A388, MEMORY[0x277CC9720], MEMORY[0x277CC9738]);
    sub_26BB7D288();
    (*(v16 + 8))(v8, v6);
    (*(v17 + 32))(v11, v22, v3);
    sub_26BB61284(v11, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB61AB0()
{
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB61B38(uint64_t a1)
{
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);

  return sub_26BB7CCF8();
}

uint64_t sub_26BB61BBC(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB61C58(void *a1)
{
  sub_26BB67510(0, &qword_28043A368, sub_26BB61688, &type metadata for Currency.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB61688(v7, v8, v9);
  sub_26BB7D488();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28043A378, MEMORY[0x277CC9720], MEMORY[0x277CC9728]);
  sub_26BB7D328();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BB61E04@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s9StocksKit8CurrencyV10identifierSSvg_0();
  v4 = v3;
  a1[3] = &type metadata for Currency.StringCodingKey;
  a1[4] = sub_26BB610B4(v2, v3, v5);
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t CurrencyConversions.conversionRate(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Currency(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v34 = *v2;
  v11 = sub_26BB621E4(a1, a2);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v12 = sub_26BB7CB88();
  __swift_project_value_buffer(v12, qword_28158F140);
  sub_26BB67C60(a1, v10, type metadata accessor for Currency);
  sub_26BB67C60(a2, v8, type metadata accessor for Currency);

  v13 = sub_26BB7CB68();
  v14 = sub_26BB7CF78();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136446722;
    v17 = _s9StocksKit8CurrencyV10identifierSSvg_0();
    v19 = v18;
    sub_26BB67CC8(v10, type metadata accessor for Currency);
    v20 = sub_26BB38238(v17, v19, &v34);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v21 = _s9StocksKit8CurrencyV10identifierSSvg_0();
    v23 = v22;
    sub_26BB67CC8(v8, type metadata accessor for Currency);
    v24 = sub_26BB38238(v21, v23, &v34);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2082;
    v25 = sub_26BB67178(v11);
    v27 = sub_26BB38238(v25, v26, &v34);

    *(v15 + 24) = v27;
    _os_log_impl(&dword_26BB21000, v13, v14, "Converting %{public}s -> %{public}s: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v16, -1, -1);
    MEMORY[0x26D68EA90](v15, -1, -1);

    if (v11)
    {
      goto LABEL_5;
    }

    return 0;
  }

  sub_26BB67CC8(v8, type metadata accessor for Currency);
  sub_26BB67CC8(v10, type metadata accessor for Currency);
  if (!v11)
  {
    return 0;
  }

LABEL_5:
  v28 = *(v11 + 16);
  if (v28)
  {
    v29 = (v11 + 40);
    v30 = 1.0;
    do
    {
      v31 = *(v29 - 1);
      if (*v29)
      {
        v30 = v30 / v31;
      }

      else
      {
        v30 = v30 * v31;
      }

      v29 += 2;
      --v28;
    }

    while (v28);

    return *&v30;
  }

  else
  {

    return 0x3FF0000000000000;
  }
}

uint64_t sub_26BB621E4(uint64_t a1, uint64_t a2)
{
  sub_26BB680F4(0, &qword_28043A3D8, sub_26BB67F08, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  sub_26BB5FA98(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Currency(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (!*(*v2 + 16))
  {
    goto LABEL_23;
  }

  v16 = sub_26BB637DC(a2);
  if (v17)
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    v19 = *(v18 + 16);

    if (v19)
    {

      v20 = sub_26BB637DC(a1);
      v22 = v21;

      if (v22)
      {
        v23 = *(*(v18 + 56) + 8 * v20);

        sub_26BB681B0(0, &qword_28043A3E8, &type metadata for CurrencyConversions.ConversionStep, MEMORY[0x277D84560]);
        result = swift_allocObject();
        *(result + 16) = xmmword_26BB7FDA0;
        *(result + 32) = v23;
        *(result + 40) = 0;
        return result;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(v15 + 16) && (v25 = sub_26BB637DC(a1), (v26 & 1) != 0))
  {
    v27 = *(*(v15 + 56) + 8 * v25);
    v28 = *(v27 + 16);

    if (v28)
    {

      v29 = sub_26BB637DC(a2);
      v31 = v30;

      if (v31)
      {

        v32 = *(*(v27 + 56) + 8 * v29);

        sub_26BB681B0(0, &qword_28043A3E8, &type metadata for CurrencyConversions.ConversionStep, MEMORY[0x277D84560]);
        result = swift_allocObject();
        *(result + 16) = xmmword_26BB7FDA0;
        *(result + 32) = v32;
        *(result + 40) = 1;
        return result;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  sub_26BB6265C(v33, v7);

  sub_26BB67F08(0);
  v35 = v34;
  if ((*(*(v34 - 8) + 48))(v7, 1, v34) == 1)
  {
    sub_26BB67F74(v7);
  }

  else
  {
    v36 = *&v7[*(v35 + 48)];
    v37 = *(v9 + 48);
    sub_26BB61284(v7, v11);
    *&v11[v37] = v36;
    v38 = *&v11[*(v9 + 48)];
    sub_26BB61284(v11, v14);
    if (v27)
    {
      if (*(v27 + 16))
      {

        v39 = sub_26BB637DC(v14);
        v41 = v40;

        if (v41)
        {

          v42 = *(*(v27 + 56) + 8 * v39);

          sub_26BB681B0(0, &qword_28043A3E8, &type metadata for CurrencyConversions.ConversionStep, MEMORY[0x277D84560]);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_26BB7EC90;
          *(v43 + 32) = v38;
          *(v43 + 40) = 0;
          *(v43 + 48) = v42;
          *(v43 + 56) = 1;
          sub_26BB67CC8(v14, type metadata accessor for Currency);
          return v43;
        }
      }
    }

    sub_26BB67CC8(v14, type metadata accessor for Currency);
  }

  if (v27)
  {
LABEL_23:
  }

  return 0;
}

uint64_t sub_26BB6265C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26BB67F08(0);
  v5 = v4;
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BB7D038();
  if (v8 == 1 << *(a1 + 32))
  {
    v9 = *(v14 + 56);

    return v9(a2, 1, 1, v5);
  }

  else
  {
    sub_26BB670BC(v7, v8, *(a1 + 36), 0, a1);
    v12 = v11;
    sub_26BB61284(v7, a2);
    *(a2 + *(v5 + 48)) = v12;
    return (*(v14 + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_26BB627D8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 8239;
  }

  else
  {
    v2 = 8234;
  }

  MEMORY[0x26D68DCA0](v2, 0xE200000000000000);
  sub_26BB7CF08();
  return 0;
}

uint64_t sub_26BB62884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69737265766E6F63 && a2 == 0xEF6F547942736E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB62914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB67324(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB62950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB67324(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CurrencyConversions.encode(to:)(void *a1)
{
  sub_26BB67510(0, &qword_28158B0F0, sub_26BB67324, &type metadata for CurrencyConversions.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB67324(v9, v10, v11);

  sub_26BB7D488();
  v13[3] = v8;
  sub_26BB67D28(0, qword_28158BBC0, MEMORY[0x277D834F8]);
  sub_26BB67378();
  sub_26BB7D328();

  return (*(v5 + 8))(v7, v4);
}

uint64_t CurrencyConversions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_26BB67510(0, &qword_28158B170, sub_26BB67324, &type metadata for CurrencyConversions.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB67324(v9, v10, v11);
  sub_26BB7D478();
  if (!v2)
  {
    v12 = v15;
    sub_26BB67D28(0, qword_28158BBC0, MEMORY[0x277D834F8]);
    sub_26BB67578();
    sub_26BB7D288();
    (*(v6 + 8))(v8, v5);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB62D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_26BB5FA98(0);
  v99 = v4;
  v98 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v97 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Currency(0);
  v102 = *(v96 - 8);
  v6 = MEMORY[0x28223BE20](v96);
  v101 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v104 = &v95 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v95 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v117 = &v95 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v112 = &v95 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v95 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v116 = (&v95 - v20);
  MEMORY[0x28223BE20](v19);
  v103 = &v95 - v21;
  v111 = sub_26BB7C328();
  v22 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26BB5EE84(MEMORY[0x277D84F90]);
  v119 = MEMORY[0x277D84FA0];
  v109 = *(a1 + 16);
  if (v109)
  {
    v100 = a2;
    v25 = 0;
    v26 = 0;
    v108 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v106 = v22 + 8;
    v107 = v22 + 16;
    v105 = a1;
    v27 = v110;
    while (1)
    {
      if (v26 >= *(a1 + 16))
      {
        goto LABEL_43;
      }

      v30 = *(v22 + 72);
      v114 = v26;
      v115 = v25;
      v31 = v108 + v30 * v26;
      v32 = v111;
      (*(v22 + 16))(v27, v31, v111);
      sub_26BB7C308();
      v33 = v22;
      v34 = v24;
      v35 = v116;
      _s9StocksKit8CurrencyVyACSScfC_0();
      v36 = v112;
      sub_26BB67C60(v35, v112, type metadata accessor for Currency);
      v37 = v113;
      sub_26BB64518(v113, v36);
      sub_26BB67CC8(v37, type metadata accessor for Currency);
      sub_26BB7C2F8();
      v38 = v117;
      _s9StocksKit8CurrencyVyACSScfC_0();
      v39 = v35;
      v24 = v34;
      v22 = v33;
      v40 = v12;
      sub_26BB67C60(v39, v12, type metadata accessor for Currency);
      sub_26BB7C318();
      v42 = v41;
      (*(v33 + 8))(v27, v32);
      sub_26BB67BAC(v115, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v24;
      v45 = sub_26BB637DC(v38);
      v46 = v24[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_44;
      }

      v49 = v44;
      if (v24[3] < v48)
      {
        break;
      }

      v52 = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26BB669DC();
        v24 = v118;
        if (v49)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_3:
      v26 = v52 + 1;
      v28 = v24[7];
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v28 + 8 * v45);
      *(v28 + 8 * v45) = 0x8000000000000000;
      v12 = v40;
      sub_26BB664A4(v40, v29, v42);
      sub_26BB67CC8(v40, type metadata accessor for Currency);
      *(v28 + 8 * v45) = v118;

      sub_26BB67CC8(v117, type metadata accessor for Currency);
      sub_26BB67CC8(v116, type metadata accessor for Currency);
      v25 = sub_26BB637AC;
      a1 = v105;
      if (v109 == v26)
      {

        v116 = sub_26BB637AC;
        v55 = v119;
        a2 = v100;
        goto LABEL_17;
      }
    }

    sub_26BB6596C(v48, isUniquelyReferenced_nonNull_native);
    v24 = v118;
    v50 = sub_26BB637DC(v117);
    v52 = v114;
    if ((v49 & 1) != (v51 & 1))
    {
      goto LABEL_49;
    }

    v45 = v50;
    if (v49)
    {
      goto LABEL_3;
    }

LABEL_12:
    v53 = sub_26BB5F054(MEMORY[0x277D84F90]);
    v54 = v113;
    sub_26BB67C60(v117, v113, type metadata accessor for Currency);
    sub_26BB667E4(v45, v54, v53, v24);
    goto LABEL_3;
  }

  v116 = 0;
  v55 = MEMORY[0x277D84FA0];
LABEL_17:
  v56 = 0;
  v57 = v55 + 56;
  v58 = 1 << *(v55 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v55 + 56);
  v61 = (v58 + 63) >> 6;
  v62 = v102;
  v117 = v55;
  while (v60)
  {
    v63 = v56;
LABEL_25:
    v64 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v65 = *(v62 + 72);
    v66 = v103;
    sub_26BB67C60(*(v55 + 48) + v65 * (v64 | (v63 << 6)), v103, type metadata accessor for Currency);
    v67 = v104;
    sub_26BB61284(v66, v104);
    if (v24[2] && (sub_26BB637DC(v67), (v68 & 1) != 0))
    {
      sub_26BB67CC8(v67, type metadata accessor for Currency);
      v56 = v63;
      v55 = v117;
    }

    else
    {
      v100 = a2;
      sub_26BB67C60(v67, v101, type metadata accessor for Currency);
      sub_26BB680F4(0, &qword_28043A3C0, sub_26BB5FA98, MEMORY[0x277D84560]);
      v69 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v114 = swift_allocObject();
      v70 = v114 + v69;
      v71 = *(v99 + 48);
      sub_26BB67C60(v67, v70, type metadata accessor for Currency);
      *(v70 + v71) = 0x3FF0000000000000;
      sub_26BB67BBC(0, &qword_28158B1E8, MEMORY[0x277D84460]);
      v72 = sub_26BB7D1D8();
      v115 = *(v99 + 48);

      v73 = v97;
      sub_26BB67C60(v70, v97, sub_26BB5FA98);
      v74 = sub_26BB637DC(v73);
      if (v75)
      {
        goto LABEL_45;
      }

      v76 = v74;
      v72[(v74 >> 6) + 8] |= 1 << v74;
      sub_26BB61284(v73, v72[6] + v74 * v65);
      *(v72[7] + 8 * v76) = *(v73 + v115);
      v77 = v72[2];
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_46;
      }

      v72[2] = v79;

      swift_setDeallocating();
      sub_26BB67CC8(v70, sub_26BB5FA98);
      swift_deallocClassInstance();
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v24;
      v81 = sub_26BB637DC(v101);
      v83 = v24[2];
      v84 = (v82 & 1) == 0;
      v78 = __OFADD__(v83, v84);
      v85 = v83 + v84;
      if (v78)
      {
        goto LABEL_47;
      }

      v86 = v82;
      if (v24[3] >= v85)
      {
        if ((v80 & 1) == 0)
        {
          v93 = v81;
          sub_26BB669DC();
          v81 = v93;
        }
      }

      else
      {
        sub_26BB6596C(v85, v80);
        v81 = sub_26BB637DC(v101);
        if ((v86 & 1) != (v87 & 1))
        {
          goto LABEL_49;
        }
      }

      v62 = v102;
      v24 = v118;
      if (v86)
      {
        *(v118[7] + 8 * v81) = v72;

        sub_26BB67CC8(v101, type metadata accessor for Currency);
        sub_26BB67CC8(v104, type metadata accessor for Currency);
      }

      else
      {
        v118[(v81 >> 6) + 8] |= 1 << v81;
        v88 = v24[6] + v81 * v65;
        v89 = v81;
        v90 = v101;
        sub_26BB67C60(v101, v88, type metadata accessor for Currency);
        *(v24[7] + 8 * v89) = v72;
        sub_26BB67CC8(v90, type metadata accessor for Currency);
        sub_26BB67CC8(v104, type metadata accessor for Currency);
        v91 = v24[2];
        v78 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v78)
        {
          goto LABEL_48;
        }

        v24[2] = v92;
      }

      a2 = v100;
      v55 = v117;
      v56 = v63;
    }
  }

  while (1)
  {
    v63 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v63 >= v61)
    {

      result = sub_26BB67BAC(v116, 0);
      *a2 = v24;
      return result;
    }

    v60 = *(v57 + 8 * v63);
    ++v56;
    if (v60)
    {
      goto LABEL_25;
    }
  }

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
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_26BB7D3A8();
  __break(1u);
  return result;
}

unint64_t sub_26BB637AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26BB5F054(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t sub_26BB637DC(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
  sub_26BB7CCF8();
  v2 = sub_26BB7D458();

  return sub_26BB639A0(a1, v2);
}

unint64_t sub_26BB63890(uint64_t a1, uint64_t a2)
{
  sub_26BB7D418();
  sub_26BB7CD88();
  v4 = sub_26BB7D458();

  return sub_26BB63AFC(a1, a2, v4);
}

unint64_t sub_26BB63908(uint64_t a1)
{
  sub_26BB7BE78();
  sub_26BB680AC(&qword_28158BB10, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_26BB7CCE8();

  return sub_26BB63BB4(a1, v2);
}

unint64_t sub_26BB639A0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Currency(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_26BB67C60(*(v2 + 48) + v12 * v10, v8, type metadata accessor for Currency);
      v13 = MEMORY[0x26D68CE40](v8, a1);
      sub_26BB67CC8(v8, type metadata accessor for Currency);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_26BB63AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26BB7D378())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26BB63BB4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26BB7BE78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26BB680AC(&qword_28043A3F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_26BB7CD28();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_26BB63D74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BB63E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BB63D94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BB63F70(a1, a2, a3, *v3, &qword_28043A400, &type metadata for FundMetadata.Sector);
  *v3 = result;
  return result;
}

char *sub_26BB63DC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BB63F70(a1, a2, a3, *v3, &qword_28043A408, &type metadata for FundMetadata.Holding);
  *v3 = result;
  return result;
}

void *sub_26BB63DF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BB640A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BB63E14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BB642A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BB63E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB681B0(0, &qword_28043A418, &type metadata for Stock, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BB63F70(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
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
    sub_26BB681B0(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_26BB640A8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_26BB680F4(0, &qword_28043A3F8, type metadata accessor for StockChart.Entry, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for StockChart.Entry(0) - 8);
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
  v15 = *(type metadata accessor for StockChart.Entry(0) - 8);
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

char *sub_26BB642A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_26BB681B0(0, &qword_280439E90, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

uint64_t sub_26BB643C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26BB7D418();
  sub_26BB7CD88();
  v8 = sub_26BB7D458();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26BB7D378() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26BB64D10(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26BB64518(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for Currency(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v22 = &v22 - v9;
  v23 = v2;
  v10 = *v2;
  sub_26BB7D418();
  sub_26BB7BF48();
  sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
  sub_26BB7CCF8();
  v11 = sub_26BB7D458();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_26BB67C60(*(v10 + 48) + v15 * v13, v8, type metadata accessor for Currency);
      v16 = MEMORY[0x26D68CE40](v8, a2);
      sub_26BB67CC8(v8, type metadata accessor for Currency);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_26BB67CC8(a2, type metadata accessor for Currency);
    sub_26BB67C60(*(v10 + 48) + v15 * v13, v24, type metadata accessor for Currency);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v22;
    sub_26BB67C60(a2, v22, type metadata accessor for Currency);
    v25 = *v17;
    sub_26BB64E90(v19, v13, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v17 = v25;
    sub_26BB61284(a2, v20);
    return 1;
  }
}

uint64_t sub_26BB6479C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_26BB68158();
  result = sub_26BB7D058();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26BB7D418();
      sub_26BB7CD88();
      result = sub_26BB7D458();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BB649F0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Currency(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_26BB67DF8(0);
  result = sub_26BB7D058();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_26BB61284(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_26BB61284(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_26BB64D10(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26BB6479C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26BB65104();
      goto LABEL_16;
    }

    sub_26BB6543C(v8 + 1);
  }

  v10 = *v4;
  sub_26BB7D418();
  sub_26BB7CD88();
  result = sub_26BB7D458();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26BB7D378();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26BB7D398();
  __break(1u);
  return result;
}

uint64_t sub_26BB64E90(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Currency(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v28 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
LABEL_13:
    v14 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v27 = v9;
    sub_26BB649F0(v12 + 1);
    goto LABEL_8;
  }

  if (v13 <= v12)
  {
    v27 = v9;
    sub_26BB65668(v12 + 1);
LABEL_8:
    v15 = *v3;
    sub_26BB7D418();
    sub_26BB7BF48();
    sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
    sub_26BB7CCF8();
    v16 = sub_26BB7D458();
    v17 = -1 << *(v15 + 32);
    a2 = v16 & ~v17;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v14 = v8;
      v19 = *(v8 + 72);
      while (1)
      {
        sub_26BB67C60(*(v15 + 48) + v19 * a2, v11, type metadata accessor for Currency);
        v20 = MEMORY[0x26D68CE40](v11, a1);
        sub_26BB67CC8(v11, type metadata accessor for Currency);
        if (v20)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v18;
        if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v14 = v8;
  sub_26BB65254();
LABEL_14:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_26BB61284(a1, *(v21 + 48) + *(v14 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_26BB7D398();
  __break(1u);
  return result;
}

void *sub_26BB65104()
{
  v1 = v0;
  sub_26BB68158();
  v2 = *v0;
  v3 = sub_26BB7D048();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_26BB65254()
{
  v1 = v0;
  v2 = type metadata accessor for Currency(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67DF8(0);
  v6 = *v0;
  v7 = sub_26BB7D048();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_26BB67C60(*(v6 + 48) + v21, v5, type metadata accessor for Currency);
        result = sub_26BB61284(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_26BB6543C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_26BB68158();
  result = sub_26BB7D058();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_26BB7D418();

      sub_26BB7CD88();
      result = sub_26BB7D458();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26BB65668(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Currency(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_26BB67DF8(0);
  result = sub_26BB7D058();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v31 + 72);
      sub_26BB67C60(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for Currency);
      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_26BB61284(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_26BB6596C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Currency(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_26BB67D28(0, &qword_28158B1F0, MEMORY[0x277D84460]);
  v36 = v4;
  result = sub_26BB7D1C8();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48) + *(v35 + 72) * v22;
      v38 = *(v35 + 72);
      if (v36)
      {
        sub_26BB61284(v23, v7);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_26BB67C60(v23, v7, type metadata accessor for Currency);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_26BB61284(v7, *(v10 + 48) + v38 * v18);
      *(*(v10 + 56) + 8 * v18) = v37;
      ++*(v10 + 16);
      v8 = v34;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v31 = 1 << *(v8 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero(v12, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_26BB65D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Currency(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_26BB67BBC(0, &qword_28158B1E8, MEMORY[0x277D84460]);
  v38 = v4;
  result = sub_26BB7D1C8();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v39 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      v25 = v23 + v24 * v22;
      if (v38)
      {
        sub_26BB61284(v25, v7);
      }

      else
      {
        sub_26BB67C60(v25, v7, type metadata accessor for Currency);
      }

      v26 = *(*(v39 + 56) + 8 * v22);
      sub_26BB7D418();
      sub_26BB7BF48();
      sub_26BB680AC(&qword_28158C310, MEMORY[0x277CC9720], MEMORY[0x277CC9730]);
      sub_26BB7CCF8();
      result = sub_26BB7D458();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_26BB61284(v7, *(v10 + 48) + v24 * v18);
      *(*(v10 + 56) + 8 * v18) = v26;
      ++*(v10 + 16);
      v8 = v39;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_26BB660D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26BB7BE78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_26BB68000(0);
  v39 = v4;
  result = sub_26BB7D1C8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_26BB680AC(&qword_28158BB10, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26BB7CCE8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26BB664A4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for Currency(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_26BB637DC(a1);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = v12;
    v18 = v11[3];
    if (v18 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v19 = *v4;
      if (v17)
      {
LABEL_8:
        *(v19[7] + 8 * v13) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v18 >= result && (a2 & 1) == 0)
    {
      result = sub_26BB66C18();
      goto LABEL_7;
    }

    sub_26BB65D28(result, a2 & 1);
    result = sub_26BB637DC(a1);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = result;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_26BB67C60(a1, v10, type metadata accessor for Currency);
      return sub_26BB66884(v13, v10, v19, a3);
    }
  }

  result = sub_26BB7D3A8();
  __break(1u);
  return result;
}

uint64_t sub_26BB66618(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26BB7BE78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26BB63908(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_26BB66E50();
      goto LABEL_7;
    }

    sub_26BB660D8(v17, a3 & 1);
    v22 = sub_26BB63908(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26BB66924(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_26BB7D3A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_26BB667E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Currency(0);
  result = sub_26BB61284(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26BB66884(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for Currency(0);
  result = sub_26BB61284(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_26BB66924(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26BB7BE78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_26BB669DC()
{
  v1 = v0;
  v2 = type metadata accessor for Currency(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67D28(0, &qword_28158B1F0, MEMORY[0x277D84460]);
  v5 = *v0;
  v6 = sub_26BB7D1B8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_26BB67C60(*(v5 + 48) + v21, v4, type metadata accessor for Currency);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_26BB61284(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_26BB66C18()
{
  v1 = v0;
  v2 = type metadata accessor for Currency(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB67BBC(0, &qword_28158B1E8, MEMORY[0x277D84460]);
  v6 = *v0;
  v7 = sub_26BB7D1B8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_26BB67C60(*(v6 + 48) + v22, v5, type metadata accessor for Currency);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = sub_26BB61284(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_26BB66E50()
{
  v1 = v0;
  v31 = sub_26BB7BE78();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB68000(0);
  v3 = *v0;
  v4 = sub_26BB7D1B8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_26BB670BC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 48);
    v8 = type metadata accessor for Currency(0);
    return sub_26BB67C60(v7 + *(*(v8 - 8) + 72) * a2, v6, type metadata accessor for Currency);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26BB67178(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_26BB63E14(0, v2, 0);
    v3 = (a1 + 40);
    do
    {
      if (*v3)
      {
        v4 = 8239;
      }

      else
      {
        v4 = 8234;
      }

      MEMORY[0x26D68DCA0](v4, 0xE200000000000000);
      sub_26BB7CF08();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26BB63E14((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v7 = v10 + 16 * v6;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_26BB681B0(0, &qword_28043A3C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_26BB67E8C();
  v8 = sub_26BB7CD08();

  return v8;
}

unint64_t sub_26BB67324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD10;
  if (!qword_28158BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD10);
  }

  return result;
}

unint64_t sub_26BB67378()
{
  result = qword_28158B2A0;
  if (!qword_28158B2A0)
  {
    sub_26BB67D28(255, qword_28158BBC0, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C8, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    sub_26BB67444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2A0);
  }

  return result;
}

unint64_t sub_26BB67444()
{
  result = qword_28158B290;
  if (!qword_28158B290)
  {
    sub_26BB67BBC(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C8, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B290);
  }

  return result;
}

void sub_26BB67510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_26BB67578()
{
  result = qword_28158B298;
  if (!qword_28158B298)
  {
    sub_26BB67D28(255, qword_28158BBC0, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C0, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    sub_26BB67644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B298);
  }

  return result;
}

unint64_t sub_26BB67644()
{
  result = qword_28158B288;
  if (!qword_28158B288)
  {
    sub_26BB67BBC(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    sub_26BB680AC(&qword_28158B2C0, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B288);
  }

  return result;
}

uint64_t sub_26BB67780(uint64_t a1)
{
  result = sub_26BB7BF48();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26BB67850(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_26BB67898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26BB678F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A3A0;
  if (!qword_28043A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3A0);
  }

  return result;
}

unint64_t sub_26BB67948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A3A8;
  if (!qword_28043A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3A8);
  }

  return result;
}

unint64_t sub_26BB679A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD00;
  if (!qword_28158BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD00);
  }

  return result;
}

unint64_t sub_26BB679F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BD08;
  if (!qword_28158BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BD08);
  }

  return result;
}

unint64_t sub_26BB67A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A3B0;
  if (!qword_28043A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3B0);
  }

  return result;
}

unint64_t sub_26BB67AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A3B8;
  if (!qword_28043A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3B8);
  }

  return result;
}

unint64_t sub_26BB67B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B2E0;
  if (!qword_28158B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2E0);
  }

  return result;
}

unint64_t sub_26BB67B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158B2D8;
  if (!qword_28158B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B2D8);
  }

  return result;
}

uint64_t sub_26BB67BAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_26BB67BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Currency(255);
    v7 = sub_26BB680AC(qword_28158BC38, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    v8 = a3(a1, v6, MEMORY[0x277D839F8], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26BB67C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB67CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26BB67D28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Currency(255);
    sub_26BB67BBC(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    v8 = v7;
    v9 = sub_26BB680AC(qword_28158BC38, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_26BB67DF8(uint64_t a1)
{
  if (!qword_28158B238)
  {
    type metadata accessor for Currency(255);
    sub_26BB680AC(qword_28158BC38, type metadata accessor for Currency, &protocol conformance descriptor for Currency);
    v1 = sub_26BB7D078();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B238);
    }
  }
}

unint64_t sub_26BB67E8C()
{
  result = qword_28043A3D0;
  if (!qword_28043A3D0)
  {
    sub_26BB681B0(255, &qword_28043A3C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3D0);
  }

  return result;
}

void sub_26BB67F08(uint64_t a1)
{
  if (!qword_28043A3E0)
  {
    type metadata accessor for Currency(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A3E0);
    }
  }
}

uint64_t sub_26BB67F74(uint64_t a1)
{
  sub_26BB680F4(0, &qword_28043A3D8, sub_26BB67F08, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BB68000(uint64_t a1)
{
  if (!qword_28158B1F8)
  {
    sub_26BB7BE78();
    sub_26BB5F5BC(255);
    sub_26BB680AC(&qword_28158BB10, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_26BB7D1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_28158B1F8);
    }
  }
}

uint64_t sub_26BB680AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26BB680F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26BB68158()
{
  if (!qword_28043A410)
  {
    v0 = sub_26BB7D078();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A410);
    }
  }
}

void sub_26BB681B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for CurrencyConversions.ConversionStep(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for CurrencyConversions.ConversionStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_26BB682B0(uint64_t a1, unsigned __int8 a2)
{
  sub_26BB7CD88();
}

uint64_t sub_26BB683E0(uint64_t a1, unsigned __int8 a2)
{
  sub_26BB7CD88();
}

uint64_t Stock.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Stock.symbol.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Stock.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Stock.exchange.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Stock.symbolDisplayName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Stock.shortName.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Stock.compactName.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_26BB686D8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D614E74726F6873;
  if (v1 != 6)
  {
    v3 = 0x4E746361706D6F63;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 0x65676E6168637865;
  }

  if (*v0)
  {
    v2 = 0x6C6F626D7973;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26BB687C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB69B98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB687F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB69640(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB68834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB69640(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Stock.encode(to:)(void *a1)
{
  sub_26BB696E8(0, &qword_28043A420, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = *(v1 + 16);
  v32 = *(v1 + 24);
  v33 = v7;
  v8 = *(v1 + 32);
  v30 = *(v1 + 40);
  v31 = v8;
  v9 = *(v1 + 48);
  v28 = *(v1 + 56);
  v29 = v9;
  v26 = *(v1 + 64);
  v10 = *(v1 + 80);
  v25[2] = *(v1 + 72);
  v25[3] = v10;
  v11 = *(v1 + 96);
  v25[0] = *(v1 + 88);
  v25[1] = v11;
  v12 = *(v1 + 112);
  v27 = *(v1 + 104);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_26BB69640(v17, v18, v19);
  sub_26BB7D488();
  v43 = 0;
  v20 = v34;
  sub_26BB7D308();
  if (v20)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v34 = v12;
  v42 = 1;
  sub_26BB7D308();
  v41 = 2;
  v33 = v6;
  sub_26BB7D308();
  v40 = 3;
  v21 = sub_26BB7D308();
  v39 = v26;
  v38 = 4;
  sub_26BB69694(v21, v23, v24);
  sub_26BB7D328();
  v37 = 5;
  sub_26BB7D308();
  v36 = 6;
  sub_26BB7D308();
  v35 = 7;
  sub_26BB7D308();
  return (*(v4 + 8))(v33, v16);
}

uint64_t Stock.hash(into:)(uint64_t a1)
{
  sub_26BB7CD88();
  sub_26BB7CD88();
  sub_26BB7CD88();
  sub_26BB7CD88();
  sub_26BB7CD88();

  sub_26BB7CD88();
  sub_26BB7CD88();

  return sub_26BB7CD88();
}

uint64_t Stock.hashValue.getter()
{
  sub_26BB7D418();
  Stock.hash(into:)(v1);
  return sub_26BB7D458();
}

uint64_t Stock.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26BB696E8(0, &qword_28043A438, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB69640(v10, v11, v12);
  sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v56[0]) = 0;
  v13 = sub_26BB7D268();
  v67 = v14;
  LOBYTE(v56[0]) = 1;
  v15 = sub_26BB7D268();
  v47 = v16;
  v45 = v15;
  LOBYTE(v56[0]) = 2;
  v44 = sub_26BB7D268();
  v46 = v17;
  LOBYTE(v56[0]) = 3;
  *&v43 = sub_26BB7D268();
  *(&v43 + 1) = v18;
  LOBYTE(v48) = 4;
  sub_26BB6974C(v43, v18, v19);
  sub_26BB7D288();
  v20 = LOBYTE(v56[0]);
  LOBYTE(v56[0]) = 5;
  v39 = sub_26BB7D268();
  v40 = v20;
  v42 = v21;
  LOBYTE(v56[0]) = 6;
  v22 = sub_26BB7D268();
  v41 = v23;
  v65 = 7;
  v24 = sub_26BB7D268();
  v38 = v25;
  v26 = v24;
  (*(v7 + 8))(v9, v6);
  *&v48 = v13;
  v27 = v67;
  *(&v48 + 1) = v67;
  *&v49 = v45;
  v28 = v47;
  *(&v49 + 1) = v47;
  *&v50 = v44;
  *(&v50 + 1) = v46;
  v51 = v43;
  v29 = v22;
  v37 = v22;
  v30 = *(&v43 + 1);
  LOBYTE(v52) = v40;
  *(&v52 + 1) = *v66;
  DWORD1(v52) = *&v66[3];
  *(&v52 + 1) = v39;
  *&v53 = v42;
  *(&v53 + 1) = v29;
  *&v54 = v41;
  *(&v54 + 1) = v26;
  v31 = v38;
  v55 = v38;
  v32 = v54;
  *(a2 + 112) = v38;
  v33 = v49;
  *a2 = v48;
  *(a2 + 16) = v33;
  v34 = v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v34;
  v35 = v52;
  *(a2 + 80) = v53;
  *(a2 + 96) = v32;
  *(a2 + 64) = v35;
  sub_26BB697A0(&v48, v56);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v56[0] = v13;
  v56[1] = v27;
  v56[2] = v45;
  v56[3] = v28;
  v56[4] = v44;
  v56[5] = v46;
  v56[6] = v43;
  v56[7] = v30;
  v57 = v40;
  *v58 = *v66;
  *&v58[3] = *&v66[3];
  v59 = v39;
  v60 = v42;
  v61 = v37;
  v62 = v41;
  v63 = v26;
  v64 = v31;
  return sub_26BB697D8(v56);
}

uint64_t sub_26BB69380@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26BB6938C()
{
  sub_26BB7D418();
  Stock.hash(into:)(v1);
  return sub_26BB7D458();
}

uint64_t sub_26BB693D0(uint64_t a1)
{
  sub_26BB7D418();
  Stock.hash(into:)(v2);
  return sub_26BB7D458();
}

uint64_t _s9StocksKit5StockV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v27 = a1[7];
  v28 = a1[6];
  v26 = *(a1 + 64);
  v23 = a1[10];
  v24 = a1[9];
  v19 = a1[12];
  v20 = a1[11];
  v15 = a1[14];
  v16 = a1[13];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v25 = *(a2 + 64);
  v21 = *(a2 + 80);
  v22 = *(a2 + 72);
  v17 = *(a2 + 96);
  v18 = *(a2 + 88);
  v13 = *(a2 + 112);
  v14 = *(a2 + 104);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_26BB7D378() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_26BB7D378() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_26BB7D378() & 1) == 0 || (v28 != v11 || v27 != v10) && (sub_26BB7D378() & 1) == 0 || (sub_26BB77CCC(v26, v25) & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_26BB7D378() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_26BB7D378() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_26BB7D378();
}

unint64_t sub_26BB69640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A428;
  if (!qword_28043A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A428);
  }

  return result;
}

unint64_t sub_26BB69694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A430;
  if (!qword_28043A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A430);
  }

  return result;
}

void sub_26BB696E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB69640(0, a2, a3);
    v7 = a3(a1, &type metadata for Stock.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26BB6974C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A440;
  if (!qword_28043A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A440);
  }

  return result;
}

unint64_t sub_26BB6980C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A448;
  if (!qword_28043A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A448);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BB6988C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26BB698D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StockType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StockType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB69A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A450;
  if (!qword_28043A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A450);
  }

  return result;
}

unint64_t sub_26BB69AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A458;
  if (!qword_28043A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A458);
  }

  return result;
}

unint64_t sub_26BB69B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A460;
  if (!qword_28043A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A460);
  }

  return result;
}

uint64_t sub_26BB69B98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB83730 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065 || (sub_26BB7D378() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E746361706D6F63 && a2 == 0xEB00000000656D61)
  {

    return 7;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_26BB69E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26BB7C048();
  v5 = *(v4 - 8);
  v150 = v4;
  v151 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v149 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v148 = &v100 - v8;
  v147 = sub_26BB7C078();
  v9 = *(v147 - 1);
  v10 = MEMORY[0x28223BE20](v147);
  v146 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v145 = &v100 - v12;
  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v100 - v14;
  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v100 - v20;
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v100 - v26;
  v130 = sub_26BB7C0E8();
  v127 = v28;
  v126 = sub_26BB7C0A8();
  v125 = v29;
  v122 = sub_26BB7C0D8();
  v121 = v30;
  v118 = sub_26BB7C108();
  v117 = v31;
  v116 = sub_26BB7C138();
  v113 = v32;
  v112 = sub_26BB7C128();
  v111 = v33;
  v110 = sub_26BB7C1D8();
  v109 = v34;
  v108 = sub_26BB7C118();
  v107 = v35;
  v106 = sub_26BB7C1B8();
  v105 = v36;
  v104 = sub_26BB7C1C8();
  v103 = v37;
  v102 = sub_26BB7C188();
  v101 = v38;
  v135 = v27;
  sub_26BB7C1A8();
  v136 = v25;
  sub_26BB7C168();
  v115 = sub_26BB7C0C8();
  v114 = v39;
  v137 = v21;
  sub_26BB7C088();
  v138 = v19;
  sub_26BB7C198();
  v139 = v15;
  sub_26BB7C158();
  v134 = sub_26BB7C148();
  v133 = v40;
  v132 = sub_26BB7C0F8();
  v131 = v41;
  v129 = sub_26BB7C1E8();
  v128 = v42;
  v124 = sub_26BB7C1F8();
  v123 = v43;
  v120 = sub_26BB7C098();
  v119 = v44;
  v45 = sub_26BB7C178();
  v46 = *(v45 + 16);
  v47 = MEMORY[0x277D84F90];
  v140 = a1;
  v141 = a2;
  if (v46)
  {
    v152 = MEMORY[0x277D84F90];
    sub_26BB63DC4(0, v46, 0);
    v48 = v152;
    v143 = *(v9 + 16);
    v49 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v100 = v45;
    v50 = v45 + v49;
    v142 = *(v9 + 72);
    v144 = v9 + 16;
    v51 = (v9 + 8);
    v52 = v145;
    do
    {
      v53 = v147;
      v54 = v143;
      v143(v52, v50, v147);
      v55 = v146;
      v54(v146, v52, v53);
      v56 = sub_26BB7C038();
      v58 = v57;
      sub_26BB7C028();
      v60 = v59;
      v61 = *v51;
      (*v51)(v55, v53);
      v61(v52, v53);
      v152 = v48;
      v63 = *(v48 + 2);
      v62 = *(v48 + 3);
      v64 = v48;
      if (v63 >= v62 >> 1)
      {
        sub_26BB63DC4((v62 > 1), v63 + 1, 1);
        v64 = v152;
      }

      *(v64 + 2) = v63 + 1;
      v65 = &v64[24 * v63];
      *(v65 + 4) = v56;
      *(v65 + 5) = v58;
      *(v65 + 6) = v60;
      v50 += v142;
      --v46;
      v48 = v64;
    }

    while (v46);

    a1 = v140;
    a2 = v141;
    v47 = MEMORY[0x277D84F90];
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v66 = sub_26BB7C0B8();
  v67 = *(v66 + 16);
  if (v67)
  {
    v145 = v48;
    v152 = v47;
    sub_26BB63D94(0, v67, 0);
    v68 = v152;
    v69 = *(v151 + 16);
    v70 = *(v151 + 80);
    v144 = v66;
    v71 = v66 + ((v70 + 32) & ~v70);
    v146 = *(v151 + 72);
    v147 = v69;
    v151 += 16;
    v72 = (v151 - 8);
    v73 = v148;
    do
    {
      v74 = v150;
      v75 = v147;
      (v147)(v73, v71, v150);
      v76 = v149;
      v75(v149, v73, v74);
      v77 = sub_26BB7C038();
      v79 = v78;
      sub_26BB7C028();
      v81 = v80;
      v82 = *v72;
      (*v72)(v76, v74);
      v82(v73, v74);
      v152 = v68;
      v84 = *(v68 + 16);
      v83 = *(v68 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_26BB63D94((v83 > 1), v84 + 1, 1);
        v68 = v152;
      }

      *(v68 + 16) = v84 + 1;
      v85 = (v68 + 24 * v84);
      v85[4] = v77;
      v85[5] = v79;
      v85[6] = v81;
      v71 += v146;
      --v67;
    }

    while (v67);
    v86 = sub_26BB7C208();
    (*(*(v86 - 8) + 8))(v140, v86);

    a2 = v141;
    v48 = v145;
  }

  else
  {

    v87 = sub_26BB7C208();
    (*(*(v87 - 8) + 8))(a1, v87);
    v68 = MEMORY[0x277D84F90];
  }

  *a2 = v130;
  *(a2 + 8) = v127 & 1;
  *(a2 + 16) = v126;
  *(a2 + 24) = v125 & 1;
  *(a2 + 32) = v122;
  *(a2 + 40) = v121 & 1;
  *(a2 + 48) = v118;
  *(a2 + 56) = v117 & 1;
  *(a2 + 64) = v116;
  *(a2 + 72) = v113 & 1;
  *(a2 + 80) = v112;
  *(a2 + 88) = v111 & 1;
  *(a2 + 96) = v110;
  *(a2 + 104) = v109 & 1;
  *(a2 + 112) = v108;
  *(a2 + 120) = v107 & 1;
  *(a2 + 128) = v106;
  *(a2 + 136) = v105 & 1;
  *(a2 + 144) = v104;
  *(a2 + 152) = v103 & 1;
  *(a2 + 160) = v102;
  *(a2 + 168) = v101 & 1;
  v88 = type metadata accessor for QuoteDetail(0);
  v89 = MEMORY[0x277CC9578];
  sub_26BB6DABC(v135, a2 + v88[15], &qword_28043A128, MEMORY[0x277CC9578]);
  sub_26BB6DABC(v136, a2 + v88[16], &qword_28043A128, v89);
  v90 = (a2 + v88[17]);
  v91 = v114;
  *v90 = v115;
  v90[1] = v91;
  v92 = MEMORY[0x277CC9260];
  sub_26BB6DABC(v137, a2 + v88[18], &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB6DABC(v138, a2 + v88[19], &qword_28158C328, v92);
  result = sub_26BB6DABC(v139, a2 + v88[20], &qword_28043A468, MEMORY[0x277CC9A70]);
  v94 = (a2 + v88[21]);
  v95 = v133;
  *v94 = v134;
  v94[1] = v95;
  v96 = v131;
  v94[2] = v132;
  v94[3] = v96;
  v97 = v128;
  v94[4] = v129;
  v94[5] = v97;
  v98 = v123;
  v94[6] = v124;
  v94[7] = v98;
  v99 = v119;
  v94[8] = v120;
  v94[9] = v99;
  v94[10] = v48;
  v94[11] = v68;
  return result;
}