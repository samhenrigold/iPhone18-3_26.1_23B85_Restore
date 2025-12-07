uint64_t sub_1BAC2F274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC38B24();
  AuditToken.hash(into:)();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F2DC(unsigned __int8 a1)
{
  sub_1BAC38B24();
  sub_1BAC38B54();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F360(uint64_t a1)
{
  sub_1BAC38B24();
  sub_1BAC38654();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAC38B24();
  AuditToken.hash(into:)();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F410(uint64_t a1, unsigned __int8 a2)
{
  sub_1BAC38B24();
  sub_1BAC38B54();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F454()
{
  v4 = *MEMORY[0x1E69E9840];
  *task_info_out = 0u;
  v3 = 0u;
  result = sub_1BAC2FB40(task_info_out);
  if (result)
  {
    sub_1BAC388D4();
    MEMORY[0x1BFAFE990](0xD00000000000003CLL, 0x80000001BAC3B350);
    v1 = sub_1BAC38A24();
    MEMORY[0x1BFAFE990](v1);

    result = sub_1BAC389B4();
    __break(1u);
  }

  else
  {
    xmmword_1EBC25470 = *task_info_out;
    *&qword_1EBC25480 = v3;
  }

  return result;
}

uint64_t static AuditToken.currentProcess.getter()
{
  if (qword_1EBC25468 != -1)
  {
    swift_once();
  }

  return xmmword_1EBC25470;
}

void sub_1BAC2F670(ProactiveDaemonSupport::AuditToken **a1@<X0>, uint64_t a2@<X8>)
{
  AuditToken.init(rawValue:)(*a1, &(*a1)->rawValue);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
}

__n128 sub_1BAC2F6AC@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t static AuditToken.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v16[0] = a5;
  v16[1] = a6;
  v16[2] = a7;
  v16[3] = a8;
  v8 = sub_1BAC20D84(v17, &v18);
  v10 = v9;
  v11 = sub_1BAC20D84(v16, v17);
  v13 = v12;
  v14 = MEMORY[0x1BFAFE660](v8, v10, v11, v12);
  sub_1BAC20F70(v11, v13);
  sub_1BAC20F70(v8, v10);
  return v14 & 1;
}

BOOL sub_1BAC2F830(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BAC389F4();

  return v2 != 0;
}

BOOL sub_1BAC2F8C8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BAC2F830(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_1BAC2F914@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAC2F830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAC2F958(uint64_t a1)
{
  v2 = sub_1BAC20C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAC2F994(uint64_t a1)
{
  v2 = sub_1BAC20C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BAC2F9D4()
{
  result = qword_1EBC258A0;
  if (!qword_1EBC258A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC258A0);
  }

  return result;
}

unint64_t sub_1BAC2FA3C()
{
  result = qword_1EBC258A8;
  if (!qword_1EBC258A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC258A8);
  }

  return result;
}

unint64_t sub_1BAC2FA94()
{
  result = qword_1EBC25490;
  if (!qword_1EBC25490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25490);
  }

  return result;
}

unint64_t sub_1BAC2FAEC()
{
  result = qword_1EBC25498;
  if (!qword_1EBC25498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25498);
  }

  return result;
}

uint64_t MachIdentityToken.__allocating_init(consumingToken:)(int a1)
{
  sub_1BAC18FFC();
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MachIdentityToken.__allocating_init(copyingToken:)(mach_port_name_t a1)
{
  sub_1BAC18FFC();
  v2 = swift_allocObject();
  MachIdentityToken.init(copyingToken:)(a1);
  return v2;
}

uint64_t MachIdentityToken.init(copyingToken:)(mach_port_name_t name)
{
  if (name)
  {
    if (!mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1))
    {
      *(v1 + 16) = name;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1BAC1957C();
  sub_1BAC388D4();

  sub_1BAC1853C();
  sub_1BAC38A24();
  sub_1BAC190D4();

  sub_1BAC18D4C();
  result = sub_1BAC1AEF0("Fatal error", v4, v5, v6, v7, "ProactiveDaemonSupport/MachIdentityToken.swift", v8, v9, 50, v10);
  __break(1u);
  return result;
}

uint64_t MachIdentityToken.init(consumingToken:)(uint64_t result)
{
  if (result)
  {
    *(v1 + 16) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *MachIdentityToken.__allocating_init(xpcObject:)(uint64_t a1)
{
  sub_1BAC18FFC();
  swift_allocObject();
  return MachIdentityToken.init(xpcObject:)(a1);
}

uint64_t *MachIdentityToken.init(xpcObject:)(uint64_t a1)
{
  v2 = xpc_mach_send_copy_right();
  swift_unknownObjectRelease();
  if (v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t MachIdentityToken.xpcObject()()
{
  result = xpc_mach_send_create();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s22ProactiveDaemonSupport17MachIdentityTokenC05auditF0AA05AuditF0VyAA0deF5ErrorVYKF(kern_return_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  task_port = 0;
  v3 = task_identity_token_get_task_port(*(v1 + 16), 3u, &task_port);
  if (v3)
  {
    *a1 = v3;
    task_info_out[0] = v3;
    sub_1BAC2FECC();
    swift_willThrowTypedImpl();
  }

  else
  {
    *task_info_out = 0u;
    v7 = 0u;
    v4 = sub_1BAC2FF20(task_info_out, task_port);
    if (v4)
    {
      *a1 = v4;
      sub_1BAC2FECC();
      swift_willThrowTypedImpl();
    }

    else
    {
      v1 = *task_info_out;
    }

    mach_port_deallocate(*MEMORY[0x1E69E9A60], task_port);
  }

  return v1;
}

unint64_t sub_1BAC2FECC()
{
  result = qword_1EBC258B0;
  if (!qword_1EBC258B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC258B0);
  }

  return result;
}

Swift::UInt32 __swiftcall MachIdentityToken.copyToken()()
{
  v1 = *(v0 + 16);
  if (!mach_port_mod_refs(*MEMORY[0x1E69E9A60], v1, 0, 1))
  {
    return v1;
  }

  sub_1BAC1957C();
  sub_1BAC388D4();

  sub_1BAC1853C();
  sub_1BAC38A24();
  sub_1BAC190D4();

  sub_1BAC18D4C();
  result = sub_1BAC1AEF0("Fatal error", v3, v4, v5, v6, "ProactiveDaemonSupport/MachIdentityToken.swift", v7, v8, 116, v9);
  __break(1u);
  return result;
}

uint64_t sub_1BAC30080()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 128);
  v6 = *(v0 + 48);
  sub_1BAC1926C(v2, 1, 1, *(v0 + 64));
  swift_getErrorValue();
  Error.pds_launderToSimpleNSError(discardUserInfo:)(v7, v5);
  v9 = v8;
  v6(v2, v8);

  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BAC30188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BAC2B560(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1BAC31148(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1BAC1C8B0(a1, &unk_1EBC257D0, &qword_1BAC3A350);
    sub_1BAC30F2C(a2, a3, v9);

    return sub_1BAC1C8B0(v9, &unk_1EBC257D0, &qword_1BAC3A350);
  }

  return result;
}

void sub_1BAC3025C(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BAC26FB4(&unk_1EBC258C0, &qword_1BAC3A778);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v68 - v6;
  v8 = sub_1BAC383E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  v18 = MEMORY[0x1BFAFF7E0](v3);
  if (sub_1BAC38424() == v18)
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v29 = sub_1BAC31CEC();
LABEL_19:
    *(a2 + 24) = v29;
    *a2 = v28;
    return;
  }

  if (sub_1BAC38454() == v18)
  {
    value = xpc_int64_get_value(v3);
    v31 = MEMORY[0x1E69E7360];
LABEL_22:
    *(a2 + 24) = v31;
    *a2 = value;
    return;
  }

  if (sub_1BAC38484() == v18)
  {
    value = xpc_uint64_get_value(v3);
    v31 = MEMORY[0x1E69E76D8];
    goto LABEL_22;
  }

  if (sub_1BAC383F4() == v18)
  {
    v32 = xpc_BOOL_get_value(v3);
    *(a2 + 24) = MEMORY[0x1E69E6370];
    *a2 = v32;
    return;
  }

  if (sub_1BAC38464() == v18)
  {
    v33 = xpc_double_get_value(v3);
    *(a2 + 24) = MEMORY[0x1E69E63B0];
    *a2 = v33;
    return;
  }

  if (sub_1BAC38474() == v18)
  {
    if (!xpc_string_get_string_ptr(v3))
    {
      if (qword_1ED76B760 != -1)
      {
        sub_1BAC18558(&qword_1ED76B760);
      }

      v40 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
      v41 = sub_1BAC30DE8(v40, qword_1ED76B768);
      sub_1BAC1AF10(v41);
      if (!sub_1BAC18D58(v41))
      {
        (*(v9 + 16))(v17, v41, v8);
        swift_unknownObjectRetain();
        v42 = sub_1BAC383D4();
        v43 = sub_1BAC38754();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70[0] = v69;
          *v44 = 136315138;
          v45 = [v3 description];
          v46 = sub_1BAC38624();
          v48 = v47;

          v49 = sub_1BAC1914C(v46, v48, v70);

          *(v44 + 4) = v49;
          _os_log_impl(&dword_1BAC16000, v42, v43, "Failed to get string pointer of XPC object: %s", v44, 0xCu);
          sub_1BAC190EC();
          sub_1BAC1900C();
        }

        (*(v9 + 8))(v17, v8);
      }

      goto LABEL_37;
    }

    v34 = sub_1BAC38674();
    v36 = MEMORY[0x1E69E6158];
    goto LABEL_27;
  }

  if (sub_1BAC38434() != v18)
  {
    if (sub_1BAC38414() == v18)
    {
      xpc_date_get_value_absolute();
      *(a2 + 24) = sub_1BAC38394();
      sub_1BAC1DAD4(a2);
      sub_1BAC38364();
      return;
    }

    if (sub_1BAC38404() != v18)
    {
      if (sub_1BAC38444() == v18)
      {
        v54 = sub_1BAC31354(v3);
        if (v54)
        {
          v28 = v54;
          v55 = &unk_1EBC258D8;
          v56 = &unk_1BAC3A780;
LABEL_45:
          v29 = sub_1BAC26FB4(v55, v56);
          goto LABEL_19;
        }
      }

      else
      {
        if (sub_1BAC384A4() != v18)
        {
          if (qword_1ED76B760 != -1)
          {
            sub_1BAC18558(&qword_1ED76B760);
          }

          v19 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
          v20 = sub_1BAC30DE8(v19, qword_1ED76B768);
          sub_1BAC1AF10(v20);
          if (!sub_1BAC18D58(v20))
          {
            (*(v9 + 16))(v12, v20, v8);
            v21 = sub_1BAC383D4();
            v22 = sub_1BAC38754();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v24 = swift_slowAlloc();
              v70[0] = v24;
              *v23 = 136315138;
              v25 = MEMORY[0x1BFAFEC40](v18);
              v27 = sub_1BAC1914C(v25, v26, v70);

              *(v23 + 4) = v27;
              _os_log_impl(&dword_1BAC16000, v21, v22, "Unsupported XPC object type %s", v23, 0xCu);
              sub_1BAC1905C(v24);
              sub_1BAC1900C();
              MEMORY[0x1BFAFF600](v23, -1, -1);
            }

            (*(v9 + 8))(v12, v8);
          }

          goto LABEL_37;
        }

        v57 = sub_1BAC31934(v3);
        if (v57)
        {
          v28 = v57;
          v55 = &qword_1EBC258D0;
          v56 = &qword_1BAC39EB0;
          goto LABEL_45;
        }
      }

LABEL_37:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v3);
    if (!bytes_ptr)
    {
      if (qword_1ED76B760 != -1)
      {
        sub_1BAC18558(&qword_1ED76B760);
      }

      v58 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
      v59 = sub_1BAC30DE8(v58, qword_1ED76B768);
      sub_1BAC1AF10(v59);
      if (!sub_1BAC18D58(v59))
      {
        (*(v9 + 16))(v15, v59, v8);
        swift_unknownObjectRetain();
        v60 = sub_1BAC383D4();
        v61 = sub_1BAC38754();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70[0] = v69;
          *v62 = 136315138;
          v63 = [v3 description];
          v64 = sub_1BAC38624();
          v66 = v65;

          v67 = sub_1BAC1914C(v64, v66, v70);

          *(v62 + 4) = v67;
          _os_log_impl(&dword_1BAC16000, v60, v61, "Failed to get data pointer of XPC object: %s", v62, 0xCu);
          sub_1BAC190EC();
          sub_1BAC1900C();
        }

        (*(v9 + 8))(v15, v8);
      }

      goto LABEL_37;
    }

    v52 = bytes_ptr;
    length = xpc_data_get_length(v3);
    v34 = MEMORY[0x1BFAFE680](v52, length);
    v36 = MEMORY[0x1E6969080];
LABEL_27:
    *(a2 + 24) = v36;
    *a2 = v34;
    *(a2 + 8) = v35;
    return;
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v38 = [v37 UUIDString];
  sub_1BAC38624();

  sub_1BAC383A4();

  v39 = sub_1BAC383B4();
  if (sub_1BAC18D58(v7) == 1)
  {

    sub_1BAC1C8B0(v7, &unk_1EBC258C0, &qword_1BAC3A778);
    goto LABEL_37;
  }

  *(a2 + 24) = v39;
  v50 = sub_1BAC1DAD4(a2);
  (*(*(v39 - 8) + 32))(v50, v7, v39);
}

BOOL sub_1BAC30AA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BAC383E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BAC38674();
  v8 = v7;
  ObjectType = swift_getObjectType();
  sub_1BAC3025C(ObjectType, &v19);
  v10 = v20;
  if (v20)
  {
    sub_1BAC2B560(&v19, v21);
    sub_1BAC19210(v21, &v19);
    sub_1BAC30188(&v19, v6, v8);
    sub_1BAC1905C(v21);
  }

  else
  {
    sub_1BAC1C8B0(&v19, &unk_1EBC257D0, &qword_1BAC3A350);
    if (qword_1ED76B760 != -1)
    {
      swift_once();
    }

    v11 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
    v12 = sub_1BAC30DE8(v11, qword_1ED76B768);
    swift_beginAccess();
    if (sub_1BAC1DA1C(v12, 1, v2))
    {
    }

    else
    {
      (*(v3 + 16))(v5, v12, v2);

      v13 = sub_1BAC383D4();
      v14 = sub_1BAC38754();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v19 = v16;
        *v15 = 136315138;
        v17 = sub_1BAC1914C(v6, v8, &v19);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_1BAC16000, v13, v14, "Failed to get value in XPC dictionary for key: %s", v15, 0xCu);
        sub_1BAC1905C(v16);
        MEMORY[0x1BFAFF600](v16, -1, -1);
        MEMORY[0x1BFAFF600](v15, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  return v10 != 0;
}

uint64_t sub_1BAC30D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_1BAC30DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_1BAC30E20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAC26FB4(&qword_1EBC258F0, &unk_1BAC3A788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1BAC30F2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1BAC2DC1C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1BAC26FB4(&qword_1EBC25858, &qword_1BAC3A3A8);
    sub_1BAC38974();

    sub_1BAC2B560((*(v9 + 56) + 32 * v7), a3);
    sub_1BAC38994();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1BAC31014(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BAC1BFAC(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  sub_1BAC26FB4(&qword_1EBC25958, &qword_1BAC3A798);
  if ((sub_1BAC38974() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1BAC1BFAC(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1BAC38AA4();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {
    sub_1BAC1C028(a2, v16);
    return sub_1BAC31290(v10, v16, a1, v14);
  }
}

_OWORD *sub_1BAC31148(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BAC2DC1C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1BAC26FB4(&qword_1EBC25858, &qword_1BAC3A3A8);
  if ((sub_1BAC38974() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1BAC2DC1C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BAC38AA4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    sub_1BAC1905C(v17);

    return sub_1BAC2B560(a1, v17);
  }

  else
  {
    sub_1BAC312E8(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1BAC31290(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
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

_OWORD *sub_1BAC312E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BAC2B560(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

size_t sub_1BAC31354(void *a1)
{
  v2 = sub_1BAC383E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - v7;
  v9 = MEMORY[0x1BFAFF7E0](a1);
  if (v9 != sub_1BAC38444())
  {
    if (qword_1ED76B760 != -1)
    {
      swift_once();
    }

    v10 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
    v11 = sub_1BAC30DE8(v10, qword_1ED76B768);
    swift_beginAccess();
    v12 = 0;
    if (!sub_1BAC1DA1C(v11, 1, v2))
    {
      (*(v3 + 16))(v6, v11, v2);
      swift_unknownObjectRetain();
      v13 = sub_1BAC383D4();
      v14 = sub_1BAC38754();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v53 = v16;
        *v15 = 136315138;
        v17 = [a1 description];
        v18 = sub_1BAC38624();
        v20 = v19;

        v21 = sub_1BAC1914C(v18, v20, &v53);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_1BAC16000, v13, v14, "XPC object %s is not of type array", v15, 0xCu);
        sub_1BAC1905C(v16);
        MEMORY[0x1BFAFF600](v16, -1, -1);
        MEMORY[0x1BFAFF600](v15, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }

    return v12;
  }

  result = xpc_array_get_count(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v24 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v25 = 0;
    v51 = (v3 + 16);
    v52 = v8;
    v12 = MEMORY[0x1E69E7CC0];
    v26 = &qword_1BAC3A350;
    v50 = (v3 + 8);
    v27 = &unk_1EBC257D0;
    v28 = 0x1ED76B000uLL;
    *&v23 = 134217984;
    v48 = v23;
    v49 = a1;
    do
    {
      v29 = xpc_array_get_value(a1, v25);
      ObjectType = swift_getObjectType();
      sub_1BAC3025C(ObjectType, &v53);
      swift_unknownObjectRelease();
      if (v54)
      {
        sub_1BAC2B560(&v53, &v55);
        sub_1BAC19210(&v55, &v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1BAC30E20(0, *(v12 + 2) + 1, 1, v12);
        }

        v32 = *(v12 + 2);
        v31 = *(v12 + 3);
        if (v32 >= v31 >> 1)
        {
          v12 = sub_1BAC30E20((v31 > 1), v32 + 1, 1, v12);
        }

        sub_1BAC1905C(&v55);
        *(v12 + 2) = v32 + 1;
        v33 = &v12[32 * v32];
        v34 = &v53;
      }

      else
      {
        sub_1BAC1C8B0(&v53, v27, v26);
        if (*(v28 + 1888) != -1)
        {
          swift_once();
        }

        v35 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
        v36 = sub_1BAC30DE8(v35, qword_1ED76B768);
        swift_beginAccess();
        if (!sub_1BAC1DA1C(v36, 1, v2))
        {
          v37 = v28;
          v38 = v2;
          v39 = v26;
          v40 = v27;
          v41 = v38;
          (*v51)(v52, v36);
          v42 = sub_1BAC383D4();
          v43 = sub_1BAC38754();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = v48;
            *(v44 + 4) = v25;
            _os_log_impl(&dword_1BAC16000, v42, v43, "Failed to get value in XPC array at index: %ld", v44, 0xCu);
            MEMORY[0x1BFAFF600](v44, -1, -1);
          }

          (*v50)(v52, v41);
          v27 = v40;
          v26 = v39;
          v2 = v41;
          v28 = v37;
          a1 = v49;
        }

        v45 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v56 = sub_1BAC31CEC();
        *&v55 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1BAC30E20(0, *(v12 + 2) + 1, 1, v12);
        }

        v47 = *(v12 + 2);
        v46 = *(v12 + 3);
        if (v47 >= v46 >> 1)
        {
          v12 = sub_1BAC30E20((v46 > 1), v47 + 1, 1, v12);
        }

        *(v12 + 2) = v47 + 1;
        v33 = &v12[32 * v47];
        v34 = &v55;
      }

      sub_1BAC2B560(v34, v33 + 2);
      ++v25;
    }

    while (v24 != v25);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAC31934(void *a1)
{
  v2 = sub_1BAC383E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1BFAFF7E0](a1);
  if (v6 != sub_1BAC384A4())
  {
    if (qword_1ED76B760 != -1)
    {
      swift_once();
    }

    v7 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
    v8 = sub_1BAC30DE8(v7, qword_1ED76B768);
    swift_beginAccess();
    v9 = 0;
    if (!sub_1BAC1DA1C(v8, 1, v2))
    {
      (*(v3 + 16))(v5, v8, v2);
      swift_unknownObjectRetain();
      v10 = sub_1BAC383D4();
      v11 = sub_1BAC38754();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v26 = v13;
        *v12 = 136315138;
        v14 = [a1 description];
        v15 = sub_1BAC38624();
        v17 = v16;

        v18 = sub_1BAC1914C(v15, v17, &v26);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_1BAC16000, v10, v11, "XPC object %s is not of type dictionary", v12, 0xCu);
        sub_1BAC1905C(v13);
        MEMORY[0x1BFAFF600](v13, -1, -1);
        MEMORY[0x1BFAFF600](v12, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }

    return v9;
  }

  v26 = MEMORY[0x1E69E7CC8];
  v19 = swift_allocObject();
  *(v19 + 16) = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BAC31D30;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1BAC31D38;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC30D90;
  aBlock[3] = &unk_1F38C95F8;
  v21 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v26;

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAC31CEC()
{
  result = qword_1EBC258E0;
  if (!qword_1EBC258E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC258E0);
  }

  return result;
}

uint64_t XPCServiceClientConnection.__allocating_init(delegate:)()
{
  sub_1BAC1FB88();
  sub_1BAC19028();
  v0 = swift_allocObject();
  XPCServiceClientConnection.init(delegate:)();
  return v0;
}

uint64_t XPCServiceClientConnection.__allocating_init(remoteService:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BAC19028();
  v5 = swift_allocObject();
  XPCServiceClientConnection.init(remoteService:delegate:)(a1, a2);
  return v5;
}

uint64_t XPCServiceClientConnection.init(remoteService:delegate:)(uint64_t a1, uint64_t a2)
{
  sub_1BAC17658();
  sub_1BAC353D0();
  sub_1BAC353D0();
  v5 = *(v4 + 88);
  v11 = 0;
  v8 = type metadata accessor for XPCServiceClientConnection.State(0, v6, v5, v7);
  v9 = sub_1BAC17788(&v11, v8);
  sub_1BAC1E838(v9);
  swift_unknownObjectRelease();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_1BAC31E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v12[2] = a2;
    v12[3] = a3;
    v9 = type metadata accessor for XPCServiceClientConnection.State(0, a2, a3, v8);

    sub_1BAC17FE4(sub_1BAC21C18, v12, v7, v9, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      (*(v10 + 56))(ObjectType, v10);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAC31FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v12[2] = a2;
    v12[3] = a3;
    v9 = type metadata accessor for XPCServiceClientConnection.State(0, a2, a3, v8);

    sub_1BAC17FE4(sub_1BAC352CC, v12, v7, v9, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      (*(v10 + 48))(ObjectType, v10);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAC32104(id *a1, uint64_t a2, uint64_t a3)
{
  v24 = sub_1BAC383E4();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(a3 + 48))(a2, a3);
  v10 = sub_1BAC383D4();
  v11 = sub_1BAC38774();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v3;
    v15 = v14;
    v25 = v14;
    *v13 = 136446210;
    v16 = (*(a3 + 24))(a2, a3);
    v18 = sub_1BAC1914C(v16, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BAC16000, v10, v11, "%{public}s: Connection to XPC Server invalidated.", v13, 0xCu);
    sub_1BAC1905C(v15);
    MEMORY[0x1BFAFF600](v15, -1, -1);
    v19 = v13;
    a1 = v22;
    MEMORY[0x1BFAFF600](v19, -1, -1);
  }

  result = (*(v7 + 8))(v9, v24);
  *a1 = 0;
  return result;
}

void sub_1BAC3232C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1BAC32394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BAC383E4();
  sub_1BAC184D0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1BAC3537C();
  v14 = v13 - v12;
  v15 = sub_1BAC353B8();
  v16(v15, a5);
  v17 = a1;
  v18 = sub_1BAC383D4();
  v19 = sub_1BAC38754();

  if (os_log_type_enabled(v18, v19))
  {
    v33 = v10;
    v20 = swift_slowAlloc();
    v34 = a2;
    v21 = swift_slowAlloc();
    v32 = v8;
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v20 = 136446466;
    v23 = sub_1BAC353B8();
    v25 = v24(v23, a5);
    v27 = sub_1BAC1914C(v25, v26, v35);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2114;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v29;
    *v21 = v29;
    _os_log_impl(&dword_1BAC16000, v18, v19, "%{public}s: error during call: %{public}@.", v20, 0x16u);
    sub_1BAC3502C(v21);
    a2 = v34;
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    sub_1BAC1905C(v22);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();

    (*(v33 + 8))(v14, v32);
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  swift_beginAccess();
  v30 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

unint64_t sub_1BAC32604()
{
  result = qword_1EBC25968;
  if (!qword_1EBC25968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25968);
  }

  return result;
}

uint64_t sub_1BAC32658()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v3 = v2;
  v4 = *v1;
  sub_1BAC184E4();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {
    v6 = sub_1BAC327C0;
  }

  else
  {

    v6 = sub_1BAC32764;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BAC32764()
{
  sub_1BAC1AEE4();

  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC327C0()
{
  sub_1BAC1AEE4();

  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC32824(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BAC383E4();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 48))(a3, a5);
  v13 = a1;
  v14 = sub_1BAC383D4();
  v15 = sub_1BAC38754();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = a2;
    v21 = v20;
    v34 = v20;
    *v17 = 136446466;
    v22 = (*(a5 + 24))(a3, a5);
    v24 = sub_1BAC1914C(v22, v23, &v34);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2114;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v26;
    *v19 = v26;
    _os_log_impl(&dword_1BAC16000, v14, v15, "%{public}s: error during call: %{public}@.", v17, 0x16u);
    sub_1BAC3502C(v19);
    MEMORY[0x1BFAFF600](v19, -1, -1);
    sub_1BAC1905C(v21);
    MEMORY[0x1BFAFF600](v21, -1, -1);
    MEMORY[0x1BFAFF600](v17, -1, -1);

    (*(v33 + 8))(v12, v30);
  }

  else
  {

    (*(v33 + 8))(v12, v10);
  }

  v34 = a1;
  v27 = a1;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  return sub_1BAC386D4();
}

void sub_1BAC32AE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[2] = a3;
  v9 = sub_1BAC38864();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v35 - v12;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v35 - v18;
  if (a2)
  {
    v20 = a2;
    v21 = sub_1BAC382E4();
    v22 = NSError.pds_unlaunderSimpleNSError()();

    if (v22)
    {
      v36 = v22;
      v23 = v22;
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386D4();

      return;
    }

    v36 = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a1, v9);
    if (sub_1BAC1DA1C(v13, 1, a5) != 1)
    {
      (*(v14 + 32))(v19, v13, a5);
      (*(v14 + 16))(v17, v19, a5);
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386E4();
      (*(v14 + 8))(v19, a5);
      return;
    }

    (*(v10 + 8))(v13, v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(a4 + 40);
      ObjectType = swift_getObjectType();
      LOBYTE(v36) = 2;
      v26 = *(v24 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v35[1] = v35;
      v28 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v30 = v35 - v29;
      swift_unknownObjectRetain();
      v26(&v36, ObjectType, v24);
      swift_getAssociatedConformanceWitness();
      v31 = sub_1BAC38A34();
      if (v31)
      {
        v32 = v31;
        (*(v28 + 8))(v30, AssociatedTypeWitness);
      }

      else
      {
        v32 = swift_allocError();
        (*(v28 + 32))(v34, v30, AssociatedTypeWitness);
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_1BAC32604();
      v32 = swift_allocError();
      *v33 = 2;
    }

    v36 = v32;
  }

  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  sub_1BAC386D4();
}

uint64_t sub_1BAC32FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BAC20A00;

  return XPCServiceClientConnection.call<A>(_:)(a1, a2, a3, a4);
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(existingConnection:localObject:delegate:)()
{
  sub_1BAC19028();
  swift_allocObject();
  v1 = sub_1BAC1AD48();
  BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(v1, v2, v3, v4);
  return v0;
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BAC19028();
  v6 = swift_allocObject();
  BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(a1, a2, a3);
  return v6;
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(remoteService:localObject:delegate:)()
{
  sub_1BAC19028();
  swift_allocObject();
  v1 = sub_1BAC1AD48();
  BidirectionalXPCServiceClientConnection.init(remoteService:localObject:delegate:)(v1, v2, v3, v4);
  return v0;
}

void *BidirectionalXPCServiceClientConnection.init(remoteService:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *v4;
  sub_1BAC17658();
  v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
  v10 = *(v7 + 88);
  v11 = *(v7 + 104);
  (*(v11 + 24))(v10, v11);
  v12 = sub_1BAC38614();

  v13 = [v9 _initWithRemoteService_name_options_];

  v5[3] = v13;
  LOBYTE(v26[0]) = 0;
  v24 = *(v8 + 96);
  v23 = *(v8 + 80);
  swift_unknownObjectRetain();
  sub_1BAC17D34(v26, v27);
  *&v15 = v23;
  *&v14 = v24;
  *(&v15 + 1) = v10;
  *(&v14 + 1) = v11;
  v26[0] = v15;
  v26[1] = v14;
  v16 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v26);
  v5[2] = sub_1BAC17788(v27, v16);
  v5[5] = a4;
  swift_unknownObjectWeakAssign();

  v17 = sub_1BAC17D90();
  v18 = v28;
  sub_1BAC17FE4(v17, v19, v20, v16, v21);
  if (v18)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

ProactiveDaemonSupport::ConnectionState __swiftcall BidirectionalXPCServiceClientConnection.getCurrentConnectionState()()
{
  v1 = *(v0 + 16);
  sub_1BAC184B4();
  v11[2] = *(v2 + 80);
  sub_1BAC184B4();
  v11[3] = *(v3 + 88);
  sub_1BAC184B4();
  v11[4] = *(v4 + 96);
  sub_1BAC184B4();
  v12 = *(v5 + 104);
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v12;
  v9 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v13);
  sub_1BAC17FE4(sub_1BAC344D8, v11, v1, v9, &type metadata for ConnectionState);
  return result;
}

uint64_t sub_1BAC334B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;

    v16[0] = a2;
    v16[1] = a3;
    v16[2] = a4;
    v16[3] = a5;
    v12 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v16);
    sub_1BAC17FE4(sub_1BAC35118, v15, v11, v12, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v10 + 40);
      ObjectType = swift_getObjectType();
      (*(v13 + 56))(ObjectType, v13);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAC33604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;

    v16[0] = a2;
    v16[1] = a3;
    v16[2] = a4;
    v16[3] = a5;
    v12 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v16);
    sub_1BAC17FE4(sub_1BAC350DC, v15, v11, v12, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v10 + 40);
      ObjectType = swift_getObjectType();
      (*(v13 + 48))(ObjectType, v13);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1BAC33750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BAC194C0();
  a19 = v20;
  a20 = v21;
  v45 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v46 = sub_1BAC383E4();
  sub_1BAC184D0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1BAC3537C();
  v36 = v35 - v34;
  (*(v26 + 48))(v28, v26);
  v37 = sub_1BAC383D4();
  v38 = v24();
  if (os_log_type_enabled(v37, v38))
  {
    v44 = v30;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    a10 = v40;
    *v39 = 136446210;
    v41 = (*(v26 + 24))(v28, v26);
    v43 = sub_1BAC1914C(v41, v42, &a10);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1BAC16000, v37, v38, v45, v39, 0xCu);
    sub_1BAC1905C(v40);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    v30 = v44;
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
  }

  (*(v32 + 8))(v36, v46);
  *v30 = 3;
  sub_1BAC35364();
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1BAC194C0();
  v13 = v12;
  v37 = v15;
  v38 = v14;
  v17 = v16;
  sub_1BAC20CE4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v10 + 16);
  v39[2] = v24;
  v40 = v10;
  v26 = *(v25 + 96);
  v41 = *(v25 + 80);
  v42 = v26;
  v27 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, &v41);
  v28 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC19480, v39, v23, v27, v28);
  if (!v11)
  {
    v36 = v17;
    sub_1BAC1AE98();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    sub_1BAC1D5B8();
    v30 = swift_allocObject();
    v30[2] = v13;
    v30[3] = v10;
    v30[4] = v29;
    v43 = sub_1BAC344E4;
    v44 = v30;
    *&v41 = MEMORY[0x1E69E9820];
    *(&v41 + 1) = 1107296256;
    *&v42 = sub_1BAC3232C;
    *(&v42 + 1) = &unk_1F38C9738;
    v31 = _Block_copy(&v41);

    [a10 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v31);
    v32 = swift_unknownObjectRetain();
    v38(v32);
    sub_1BAC19504(v29 + 16, &v41);
    v33 = *(v29 + 16);
    if (v33)
    {
      swift_willThrow();
      v34 = v33;

      swift_unknownObjectRelease();
      (*(v19 + 8))(v22, v13);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v19 + 32))(v36, v22, v13);
    }
  }

  sub_1BAC35364();
}

id sub_1BAC33BF4(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v46 = a4;
  v47 = a5;
  v45 = *a2;
  sub_1BAC383E4();
  sub_1BAC184D0();
  v43 = v9;
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1BAC3537C();
  v12 = v11 - v10;
  v13 = v45[11];
  v14 = v45[13];
  v15 = sub_1BAC353B8();
  v16(v15, v14);
  v17 = a1;
  v18 = sub_1BAC383D4();
  v19 = sub_1BAC38754();

  if (os_log_type_enabled(v18, v19))
  {
    v42 = a3;
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v20 = 136446466;
    v21 = sub_1BAC353B8();
    v23 = v22(v21, v14);
    v25 = a1;
    v26 = sub_1BAC1914C(v23, v24, v48);

    *(v20 + 4) = v26;
    a1 = v25;
    *(v20 + 12) = 2114;
    v27 = v25;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v28;
    v29 = v40;
    *v40 = v28;
    _os_log_impl(&dword_1BAC16000, v18, v19, "%{public}s: error during call: %{public}@.", v20, 0x16u);
    sub_1BAC3502C(v29);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    sub_1BAC1905C(v41);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    a3 = v42;
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
  }

  v30 = (*(v43 + 8))(v12, v44);
  v31 = a2[2];
  MEMORY[0x1EEE9AC00](v30);
  v32 = v45;
  v33 = v46;
  v34 = v45[10];
  *(&v39 - 6) = v34;
  *(&v39 - 5) = v13;
  v35 = v32[12];
  *(&v39 - 4) = v33;
  *(&v39 - 3) = v35;
  *(&v39 - 2) = v14;
  v48[0] = v34;
  v48[1] = v13;
  v48[2] = v35;
  v48[3] = v14;
  v36 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v48);
  sub_1BAC17FE4(v47, (&v39 - 8), v31, v36, MEMORY[0x1E69E7CA8] + 8);
  swift_beginAccess();
  v37 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

uint64_t sub_1BAC33F18()
{
  sub_1BAC1AEE4();

  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC33F7C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = *a2;
  v7 = sub_1BAC383E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v43[11];
  v42 = a2;
  v12 = v43[13];
  (*(v12 + 48))(v11, v12);
  v13 = a1;
  v14 = sub_1BAC383D4();
  v15 = sub_1BAC38754();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v7;
    v17 = v16;
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44[0] = v40;
    *v17 = 136446466;
    v18 = *(v12 + 24);
    v37 = v15;
    v19 = v18(v11, v12);
    v21 = sub_1BAC1914C(v19, v20, v44);
    v39 = v8;
    v22 = a1;
    v23 = v21;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2114;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v25;
    v26 = v38;
    *v38 = v25;
    _os_log_impl(&dword_1BAC16000, v14, v37, "%{public}s: error during call: %{public}@.", v17, 0x16u);
    sub_1BAC3502C(v26);
    MEMORY[0x1BFAFF600](v26, -1, -1);
    v27 = v40;
    sub_1BAC1905C(v40);
    MEMORY[0x1BFAFF600](v27, -1, -1);
    MEMORY[0x1BFAFF600](v17, -1, -1);

    v28 = (*(v39 + 8))(v10, v41);
  }

  else
  {

    v28 = (*(v8 + 8))(v10, v7);
    v22 = a1;
  }

  v29 = v42[2];
  MEMORY[0x1EEE9AC00](v28);
  v30 = v43;
  v31 = v43[10];
  *&v36[-48] = v31;
  *&v36[-40] = v11;
  v32 = v30[12];
  *&v36[-32] = a4;
  *&v36[-24] = v32;
  *&v36[-16] = v12;
  v44[0] = v31;
  v44[1] = v11;
  v44[2] = v32;
  v44[3] = v12;
  v33 = type metadata accessor for BidirectionalXPCServiceClientConnection.State(0, v44);
  sub_1BAC17FE4(sub_1BAC35320, &v36[-64], v29, v33, MEMORY[0x1E69E7CA8] + 8);
  v44[0] = v22;
  v34 = v22;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  return sub_1BAC386D4();
}

uint64_t sub_1BAC34388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BAC2B648;

  return BidirectionalXPCServiceClientConnection.call<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1BAC34490()
{
  v1 = *v0;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v1);
  return sub_1BAC38B64();
}

unint64_t sub_1BAC34568()
{
  result = qword_1EBC25970;
  if (!qword_1EBC25970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25970);
  }

  return result;
}

unint64_t sub_1BAC345C0()
{
  result = qword_1EBC25978;
  if (!qword_1EBC25978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25978);
  }

  return result;
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BAC1D258(a1, a2, a3, a4, a5, a6);
  sub_1BAC17870();
  swift_task_alloc();
  sub_1BAC353C4();
  *(v6 + 16) = v7;
  *v7 = v8;
  v9 = sub_1BAC1ACB4(v7);

  return v10(v9);
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BAC1D258(a1, a2, a3, a4, a5, a6);
  sub_1BAC17870();
  swift_task_alloc();
  sub_1BAC353C4();
  *(v6 + 16) = v7;
  *v7 = v8;
  v9 = sub_1BAC1ACB4(v7);

  return v10(v9);
}

uint64_t getEnumTagSinglePayload for ConnectionState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ConnectionState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAC34E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAC34E64(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[16])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAC34EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1BAC34EE0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAC34F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BAC34F84(void *a1)
{
  v3 = *(v1 + 32);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v4 = *(sub_1BAC386F4() - 8);
  v5 = *(v1 + 56);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_1BAC33F7C(a1, v5, v6, v3);
}

uint64_t sub_1BAC3502C(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&unk_1EBC259F0, &unk_1BAC3AC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC35160(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v6 = *(sub_1BAC386F4() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1BAC32824(a1, v7, v3, v4, v5);
}

void sub_1BAC35218()
{
  sub_1BAC1FB88();
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  sub_1BAC17870();
  v0 = sub_1BAC35340();

  sub_1BAC32AE0(v0, v1, v2, v3, v4);
}

uint64_t sub_1BAC3538C(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_1BAC353DC()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1BAC353F4()
{

  return swift_unknownObjectRelease_n();
}

uint64_t static XPCServiceBidirectionalServer.start()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_1BAC1ADC0();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v6 = v5;
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  static XPCServiceBidirectionalServer.start(context:)(v9, a1, a2);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

void static XPCServiceBidirectionalServer.start(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  sub_1BAC383E4();
  sub_1BAC184D0();
  v35 = v8;
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v37 = v12;
  v38 = v11;
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = swift_checkMetadataState();
  if ((*(AssociatedConformanceWitness + 64))(v16, AssociatedConformanceWitness))
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696B0D8]) init];
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC19430();
    sub_1BAC1AC6C();
    swift_getAssociatedConformanceWitness();
    sub_1BAC366E8();
    swift_getAssociatedConformanceWitness();
    sub_1BAC178BC();
    (*(v17 + 24))(v16);
    v18 = sub_1BAC38614();

    v19 = [v33 _initWithRemoteName_];
  }

  else
  {
    v33 = sub_1BAC35A0C();
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC19430();
    sub_1BAC1AC6C();
    swift_getAssociatedConformanceWitness();
    sub_1BAC366E8();
    swift_getAssociatedConformanceWitness();
    sub_1BAC178BC();
    v21 = (*(v20 + 24))(v16);
    v19 = sub_1BAC35A50(v21, v22);
  }

  (*(a3 + 56))(v19, a2, a3);
  v23 = (*(a3 + 48))(a2, a3);
  if (v23)
  {
    v25 = v23;
    type metadata accessor for BidirectionalDelegate(0, a2, a3, v24);
    (*(v37 + 16))(v15, v39, v38);
    v26 = sub_1BAC35AC4(v15);
    (*(a3 + 80))(v26, a2, a3);
    [v25 setDelegate_];
    swift_unknownObjectRelease();
    [v25 activate];
  }

  else
  {
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC19430();
    sub_1BAC1AC6C();
    swift_getAssociatedConformanceWitness();
    v27 = swift_getAssociatedConformanceWitness();
    v28 = v34;
    (*(v27 + 48))(v4, v27);
    v29 = sub_1BAC383D4();
    v30 = sub_1BAC38764();
    if (sub_1BAC18C54(v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BAC16000, v29, v30, "Failed to create Internal XPC service", v31, 2u);
      sub_1BAC1ADA8();
    }

    (*(v35 + 8))(v28, v36);
  }
}

unint64_t sub_1BAC35A0C()
{
  result = qword_1ED76BA50;
  if (!qword_1ED76BA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED76BA50);
  }

  return result;
}

id sub_1BAC35A50(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BAC38614();

  v4 = [v2 initWithMachServiceName_];

  return v4;
}

uint64_t XPCServiceBidirectionalServerInstanceParameters.clientApplicationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

id sub_1BAC35B58(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))(&v1[v4], a1, AssociatedTypeWitness);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, AssociatedTypeWitness);
  return v7;
}

uint64_t sub_1BAC35CD0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = sub_1BAC1ACDC();
  sub_1BAC17674();
  v3 = sub_1BAC1DAB0();
  if (v4(v3))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 48))(v2, v1) & 1;
  }
}

uint64_t sub_1BAC35D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v24 - v5;
  v6 = sub_1BAC383E4();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_projectBox();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  (*(v11 + 48))(v9, v11);
  v12 = sub_1BAC383D4();
  v13 = sub_1BAC38754();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v4;
    v16 = v15;
    v29[0] = v15;
    *v14 = 136446210;
    v17 = (*(v11 + 24))(v9, v11);
    v19 = sub_1BAC1914C(v17, v18, v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BAC16000, v12, v13, "%{public}s BidirectionalDelegate: connection interrupted.", v14, 0xCu);
    sub_1BAC1905C(v16);
    v20 = v16;
    v4 = v24;
    MEMORY[0x1BFAFF600](v20, -1, -1);
    MEMORY[0x1BFAFF600](v14, -1, -1);
  }

  (*(v26 + 8))(v8, v27);
  v21 = v25;
  swift_beginAccess();
  v22 = v28;
  (*(v4 + 16))(v28, v21, AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 96))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v4 + 8))(v22, AssociatedTypeWitness);
}

id sub_1BAC36168()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAC361A0(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1BAC178BC();
  sub_1BAC1DAC8();
  v4 = *(v3 + 8);

  return v4(&a1[v2]);
}

uint64_t sub_1BAC362CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_1BAC363A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BAC363C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BAC36404(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for XPCServiceBidirectionalServerNullContext(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BAC365D4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC366F4()
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558(&qword_1ED76B760);
  }

  v0 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);

  return sub_1BAC30DE8(v0, qword_1ED76B768);
}

uint64_t static XPCServiceFrameworkGlobals.globalConnectionPolicy.getter()
{
  swift_beginAccess();
  v0 = sub_1BAC195AC();
  sub_1BAC24358(v0, v1);
  return sub_1BAC195AC();
}

uint64_t static XPCServiceFrameworkGlobals.globalConnectionPolicy.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = off_1ED76B748;
  v5 = qword_1ED76B750;
  off_1ED76B748 = a1;
  qword_1ED76B750 = a2;
  return sub_1BAC1ADCC(v4, v5);
}

uint64_t (*static XPCServiceFrameworkGlobals.globalConnectionPolicy.modify())(uint64_t a1)
{
  sub_1BAC195AC();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1BAC36854@<X0>(uint64_t (**a1)()@<X8>)
{
  swift_beginAccess();
  v2 = off_1ED76B748;
  v3 = qword_1ED76B750;
  if (off_1ED76B748)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1BAC36DE0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1BAC24358(v2, v3);
}

uint64_t sub_1BAC368EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BAC36DD8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_beginAccess();
  v5 = off_1ED76B748;
  v6 = qword_1ED76B750;
  off_1ED76B748 = v4;
  qword_1ED76B750 = v3;
  sub_1BAC24358(v1, v2);
  return sub_1BAC1ADCC(v5, v6);
}

uint64_t sub_1BAC369A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unsigned __int8 *__return_ptr, uint64_t *, void *))
{
  v6[1] = a3;
  v7 = a1;
  v6[0] = a2;
  a4(&v5, &v7, v6);
  return v5;
}

uint64_t sub_1BAC369F0()
{
  v0 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  sub_1BAC36E20(v0, qword_1ED76B768);
  v1 = sub_1BAC30DE8(v0, qword_1ED76B768);
  v2 = sub_1BAC383E4();

  return sub_1BAC1926C(v1, 1, 1, v2);
}

uint64_t static XPCServiceFrameworkGlobals.xpcObjectLogging.getter()
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558(&qword_1ED76B760);
  }

  v0 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  sub_1BAC30DE8(v0, qword_1ED76B768);
  swift_beginAccess();
  v1 = sub_1BAC195AC();
  return sub_1BAC2BAA8(v1, v2);
}

uint64_t static XPCServiceFrameworkGlobals.xpcObjectLogging.setter(uint64_t a1)
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558(&qword_1ED76B760);
  }

  v2 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  v3 = sub_1BAC30DE8(v2, qword_1ED76B768);
  swift_beginAccess();
  sub_1BAC36B88(a1, v3);
  swift_endAccess();
  return sub_1BAC2BB18(a1);
}

uint64_t sub_1BAC36B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static XPCServiceFrameworkGlobals.xpcObjectLogging.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558(&qword_1ED76B760);
  }

  v1 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  sub_1BAC30DE8(v1, qword_1ED76B768);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BAC36C8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BAC366F4();
  swift_beginAccess();
  return sub_1BAC2BAA8(v2, a1);
}

uint64_t sub_1BAC36CD8(uint64_t a1)
{
  v2 = sub_1BAC366F4();
  swift_beginAccess();
  sub_1BAC36B88(a1, v2);
  return swift_endAccess();
}

_BYTE *storeEnumTagSinglePayload for XPCServiceFrameworkGlobals(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BAC36DE0@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2, a2[1]);
  *a3 = result & 1;
  return result;
}

uint64_t *sub_1BAC36E20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t XPCServiceServerInstanceParameters.clientApplicationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static XPCServiceServer.start()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_1BAC1ADC0();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  static XPCServiceServer.start(context:)(v9, a1, a2);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

void static XPCServiceServer.start(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  sub_1BAC383E4();
  sub_1BAC184D0();
  v38 = v8;
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = swift_checkMetadataState();
  if ((*(AssociatedConformanceWitness + 48))(v17, AssociatedConformanceWitness))
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696B0D8]) init];
    sub_1BAC1ADC0();
    v19 = swift_getAssociatedTypeWitness();
    sub_1BAC18D90(v19);
    sub_1BAC178BC();
    (*(v20 + 24))(v17);
    v21 = sub_1BAC38614();

    v22 = [v18 _initWithRemoteName_];
  }

  else
  {
    sub_1BAC35A0C();
    sub_1BAC1ADC0();
    v23 = swift_getAssociatedTypeWitness();
    sub_1BAC18D90(v23);
    sub_1BAC178BC();
    v25 = (*(v24 + 24))(v17);
    v22 = sub_1BAC35A50(v25, v26);
  }

  (*(a3 + 48))(v22, a2, a3);
  v27 = (*(a3 + 40))(a2, a3);
  if (v27)
  {
    v29 = v27;
    type metadata accessor for Delegate(0, a2, a3, v28);
    (*(v13 + 16))(v16, v40, AssociatedTypeWitness);
    v30 = sub_1BAC3746C(v16);
    (*(a3 + 72))(v30, a2, a3);
    [v29 setDelegate_];
    swift_unknownObjectRelease();
    [v29 activate];
  }

  else
  {
    sub_1BAC1ADC0();
    v31 = swift_getAssociatedTypeWitness();
    v32 = sub_1BAC18D90(v31);
    v33 = v37;
    (*(v32 + 48))(v4, v32);
    v34 = sub_1BAC383D4();
    v35 = sub_1BAC38764();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BAC16000, v34, v35, "Failed to create Internal XPC service", v36, 2u);
      sub_1BAC1ADA8();
    }

    (*(v38 + 8))(v33, v39);
  }
}

id sub_1BAC374A0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))(&v1[v4], a1, AssociatedTypeWitness);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, AssociatedTypeWitness);
  return v7;
}

uint64_t sub_1BAC37618()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = sub_1BAC1ACDC();
  sub_1BAC1AED8();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1BAC1AC7C();
  if (v4(v3))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 32))(v2, v1) & 1;
  }
}

uint64_t sub_1BAC376E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BAC383E4();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = sub_1BAC383D4();
  v10 = sub_1BAC38754();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22[0] = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22[1] = a1;
    v14 = v13;
    v24 = v13;
    *v12 = 136446210;
    v15 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v17 = sub_1BAC1914C(v15, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BAC16000, v9, v10, "%{public}s Delegate: connection interrupted.", v12, 0xCu);
    sub_1BAC1905C(v14);
    MEMORY[0x1BFAFF600](v14, -1, -1);
    MEMORY[0x1BFAFF600](v12, -1, -1);

    (*(v23 + 8))(v6, v22[0]);
  }

  else
  {

    (*(v23 + 8))(v6, v4);
  }

  swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = *(v18 + 56);
  v20 = swift_checkMetadataState();
  return v19(v20, v18);
}

uint64_t sub_1BAC379A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BAC383E4();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = sub_1BAC383D4();
  v10 = sub_1BAC38774();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22[0] = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22[1] = a1;
    v14 = v13;
    v24 = v13;
    *v12 = 136446210;
    v15 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v17 = sub_1BAC1914C(v15, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BAC16000, v9, v10, "%{public}s Delegate: connection invalidated.", v12, 0xCu);
    sub_1BAC1905C(v14);
    MEMORY[0x1BFAFF600](v14, -1, -1);
    MEMORY[0x1BFAFF600](v12, -1, -1);

    (*(v23 + 8))(v6, v22[0]);
  }

  else
  {

    (*(v23 + 8))(v6, v4);
  }

  swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = *(v18 + 64);
  v20 = swift_checkMetadataState();
  return v19(v20, v18);
}

uint64_t sub_1BAC37CA8(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1BAC178BC();
  sub_1BAC1DAC8();
  v4 = *(v3 + 8);

  return v4(&a1[v2]);
}

_BYTE *storeEnumTagSinglePayload for XPCServiceServerNullContext(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BAC37F94(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC38094(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&unk_1EBC257D0, &qword_1BAC3A350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC38144()
{
  swift_getAssociatedTypeWitness();
  sub_1BAC178BC();
  sub_1BAC1DAC8();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BAC381F0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}