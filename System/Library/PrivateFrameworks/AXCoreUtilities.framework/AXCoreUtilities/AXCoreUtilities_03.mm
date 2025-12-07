uint64_t AXAsyncTimer.init(_:repeats:_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16 - v11;
  v13 = sub_19166BB58();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a4;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a1;
  *(v4 + 16) = sub_1915D42EC(0, 0, v12, &unk_191672B38, v14);
  return v4;
}

uint64_t sub_1915F8538(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a1;
  v8 = sub_19166C1B8();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  v9 = sub_19166C1A8();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915F8668, 0, 0);
}

uint64_t sub_1915F8668()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_19166C178();
  sub_19166C818();
  sub_19166C188();
  v4 = *(v3 + 8);
  *(v0 + 120) = v4;
  *(v0 + 128) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_19166C708();
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  v6 = sub_1915F910C();
  *v5 = v0;
  v5[1] = sub_1915F879C;
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  return MEMORY[0x1EEE6DA68](v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_1915F879C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_1915F8CD4;
  }

  else
  {
    v3 = sub_1915F88E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1915F88E0(uint64_t a1)
{
  if (sub_19166BC48())
  {
    (*(v1 + 120))(*(v1 + 112), *(v1 + 88));

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v5 = (*(v1 + 48) + **(v1 + 48));
    v4 = swift_task_alloc();
    *(v1 + 152) = v4;
    *v4 = v1;
    v4[1] = sub_1915F8A40;

    return v5();
  }
}

uint64_t sub_1915F8A40()
{

  return MEMORY[0x1EEE6DFA0](sub_1915F8B3C, 0, 0);
}

uint64_t sub_1915F8B3C(uint64_t a1)
{
  if (*(v1 + 33) == 1 && (sub_19166BC48() & 1) == 0)
  {
    v4 = *(v1 + 120);
    v5 = *(v1 + 104);
    v6 = *(v1 + 112);
    v7 = *(v1 + 88);
    v8 = *(v1 + 96);
    sub_19166C818();
    sub_19166C198();
    v4(v6, v7);
    (*(v8 + 32))(v6, v5, v7);
    *(v1 + 24) = 0;
    *(v1 + 16) = 0;
    *(v1 + 32) = 1;
    sub_19166C708();
    v9 = swift_task_alloc();
    *(v1 + 136) = v9;
    v10 = sub_1915F910C();
    *v9 = v1;
    v9[1] = sub_1915F879C;
    v11 = *(v1 + 112);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);

    return MEMORY[0x1EEE6DA68](v11, v1 + 16, v12, v13, v10);
  }

  else
  {
    (*(v1 + 120))(*(v1 + 112), *(v1 + 88));

    v2 = *(v1 + 8);

    return v2();
  }
}

uint64_t sub_1915F8CD4()
{
  (*(v0 + 120))(*(v0 + 112), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1915F8D64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D8338;

  return sub_1915F8538(v6, a1, v4, v5, v7, v8, v9);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1915F8E7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D4F90;

  return sub_1915F8538(v6, a1, v4, v5, v7, v8, v9);
}

Swift::Void __swiftcall AXAsyncTimer.cancel()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  sub_19166BC28();
}

uint64_t AXAsyncTimer.deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  sub_19166BC28();

  return v0;
}

uint64_t AXAsyncTimer.__deallocating_deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  sub_19166BC28();

  return swift_deallocClassInstance();
}

unint64_t sub_1915F910C()
{
  result = qword_1EADAF6B0;
  if (!qword_1EADAF6B0)
  {
    sub_19166C1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF6B0);
  }

  return result;
}

const char *sub_1915F9164()
{
  result = "com.apple.Accessibility";
  if ("com.apple.Accessibility")
  {
    result = sub_19166B878();
    qword_1EADAE520 = result;
    unk_1EADAE528 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1915F919C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF6B8);
  v1 = __swift_project_value_buffer(v0, qword_1EADAF6B8);
  result = AXLogTemp(v1);
  if (result)
  {
    return sub_19166B558();
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1915F92A8()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF6E8);
  __swift_project_value_buffer(v0, qword_1EADAF6E8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F941C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF718);
  __swift_project_value_buffer(v0, qword_1EADAF718);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F976C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF808);
  __swift_project_value_buffer(v0, qword_1EADAF808);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F984C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF820);
  __swift_project_value_buffer(v0, qword_1EADAF820);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9AF0()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF8C8);
  __swift_project_value_buffer(v0, qword_1EADAF8C8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9BD0()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF8E0);
  __swift_project_value_buffer(v0, qword_1EADAF8E0);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9CB0()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF8F8);
  __swift_project_value_buffer(v0, qword_1EADAF8F8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9E7C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF958);
  __swift_project_value_buffer(v0, qword_1EADAF958);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA038()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF9B8);
  __swift_project_value_buffer(v0, qword_1EADAF9B8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA118()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF9D0);
  __swift_project_value_buffer(v0, qword_1EADAF9D0);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA420(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_19166B548();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA4FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_19166B548();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t getEnumTagSinglePayload for AXLog(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AXLog(_WORD *result, int a2, int a3)
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

void __swiftcall AXCoreSettings.init()(AXCoreSettings *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for AXCoreSettings()
{
  result = qword_1EADAFAA8;
  if (!qword_1EADAFAA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAFAA8);
  }

  return result;
}

uint64_t Locale.init(withAXRemapping:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_19166B208();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  Locale.Components.init(withAXRemapping:)(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_19166B218();
}

uint64_t Locale.Components.init(withAXRemapping:)@<X0>(uint64_t a3@<X8>)
{
  while (1)
  {
    v3 = a3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
    v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
    v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v6, v8);
    v10 = &v31 - v9;
    v11 = sub_19166B328();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11, v13);
    v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1EADAE930 != -1)
    {
      swift_once();
    }

    v16 = qword_1EADB6D78;
    v17 = sub_19166B7B8();
    if (!*(v16 + 16))
    {
      break;
    }

    v31 = sub_1915DB0E4(v17, v18);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }

    a3 = v3;
  }

LABEL_9:
  sub_19166B1F8();
  sub_19166B1E8();
  sub_19166B308();
  (*(v12 + 8))(v15, v11);
  v21 = sub_19166B278();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21))
  {
    return sub_19159E780(v10, &qword_1EADAF5E0, &unk_191672A20);
  }

  sub_19166B238();
  sub_19159E780(v10, &qword_1EADAF5E0, &unk_191672A20);
  v24 = sub_19166B7B8();
  v26 = v25;

  if (qword_1EADAE938 != -1)
  {
    swift_once();
  }

  if (!*(qword_1EADB6D80 + 16))
  {
  }

  sub_1915DB0E4(v24, v26);
  v28 = v27;

  if (v28)
  {

    v29 = v32;
    sub_19166B288();
    (*(v22 + 56))(v29, 0, 1, v21);
    v30 = sub_19166B1D8();
    sub_19166B318();
    return v30(v33, 0);
  }

  return result;
}

Swift::String __swiftcall Locale.canonicIdentifier(includeScript:)(Swift::Bool includeScript)
{
  v81 = includeScript;
  v2 = sub_19166B388();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D0, &qword_1916729E8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = &v78 - v8;
  v9 = sub_19166B248();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v78 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D8, &qword_1916729F0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v82 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF608, &qword_191672A18);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v78 - v17;
  v19 = sub_19166B368();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v78 - v30;
  v86 = v1;
  sub_19166B378();
  sub_19166B338();
  v32 = *(v20 + 8);
  v32(v27, v19);
  v33 = sub_19166B278();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v31, 1, v33) == 1)
  {
    sub_19159E780(v31, &qword_1EADAF5E0, &unk_191672A20);
    v35 = sub_19166BD88();
    v36 = AXLogCommon();
    if (v36)
    {
      v38 = v36;
      v40 = v79;
      v39 = v80;
      (*(v79 + 16))(v5, v86, v80);
      if (os_log_type_enabled(v38, v35))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v88 = v42;
        *v41 = 136315138;
        v43 = sub_19166B228();
        v45 = v44;
        (*(v40 + 8))(v5, v39);
        v46 = sub_1915FB514(v43, v45, &v88);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_19159B000, v38, v35, "Malformed Locale with identifier %s is missing language", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x193AFEC10](v42, -1, -1);
        MEMORY[0x193AFEC10](v41, -1, -1);
      }

      else
      {

        (*(v40 + 8))(v5, v39);
      }

      v36 = sub_19166B228();
    }

    else
    {
      __break(1u);
    }

    goto LABEL_24;
  }

  v47 = sub_19166B238();
  v49 = v48;
  (*(v34 + 8))(v31, v33);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_191672210;
  *(v50 + 32) = v47;
  *(v50 + 40) = v49;
  v88 = v50;
  if (v81)
  {
    sub_19166B378();
    sub_19166B358();
    v32(v24, v19);
    v51 = sub_19166B2D8();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v18, 1, v51) != 1)
    {
      v54 = sub_19166B238();
      v56 = v55;
      (*(v52 + 8))(v18, v51);
      v58 = *(v50 + 16);
      v57 = *(v50 + 24);
      v53 = v82;
      if (v58 >= v57 >> 1)
      {
        v50 = sub_1915F47A8((v57 > 1), v58 + 1, 1, v50);
      }

      *(v50 + 16) = v58 + 1;
      v59 = v50 + 16 * v58;
      *(v59 + 32) = v54;
      *(v59 + 40) = v56;
      v88 = v50;
      goto LABEL_14;
    }

    sub_19159E780(v18, &qword_1EADAF608, &qword_191672A18);
  }

  v53 = v82;
LABEL_14:
  sub_19166B2F8();
  v60 = sub_19166B2B8();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v53, 1, v60) == 1)
  {
    sub_19159E780(v53, &qword_1EADAF5D8, &qword_1916729F0);
  }

  else
  {
    v62 = sub_19166B238();
    v64 = v63;
    (*(v61 + 8))(v53, v60);
    v66 = *(v50 + 16);
    v65 = *(v50 + 24);
    if (v66 >= v65 >> 1)
    {
      v50 = sub_1915F47A8((v65 > 1), v66 + 1, 1, v50);
    }

    *(v50 + 16) = v66 + 1;
    v67 = v50 + 16 * v66;
    *(v67 + 32) = v62;
    *(v67 + 40) = v64;
    v88 = v50;
  }

  v68 = v83;
  sub_19166B258();
  v70 = v84;
  v69 = v85;
  if ((*(v84 + 48))(v68, 1, v85) == 1)
  {
    sub_19159E780(v68, &qword_1EADAF5D0, &qword_1916729E8);
  }

  else
  {
    v71 = v78;
    (*(v70 + 32))(v78, v68, v69);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1916729D0;
    *(inited + 32) = 117;
    *(inited + 40) = 0xE100000000000000;
    *(inited + 48) = 25715;
    *(inited + 56) = 0xE200000000000000;
    *(inited + 64) = sub_19166B238();
    *(inited + 72) = v73;
    sub_1915E3DD8(inited);
    (*(v70 + 8))(v71, v69);
  }

  v87 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
  sub_1915FBA48();
  v74 = sub_19166B6D8();
  v76 = v75;

  v37 = v76;
  v36 = v74;
LABEL_24:
  result._object = v37;
  result._countAndFlagsBits = v36;
  return result;
}

unint64_t sub_1915FB514(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1915FB5E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1915DFD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1915FB5E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1915FB6EC(a5, a6);
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
    result = sub_19166C108();
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

void *sub_1915FB6EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1915FB738(a1, a2);
  sub_1915FB868(&unk_1F0575908);
  return v3;
}

void *sub_1915FB738(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19163D158(v5, 0);
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

  result = sub_19166C108();
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
        v10 = sub_19166B898();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19163D158(v10, 0);
        result = sub_19166C098();
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

uint64_t sub_1915FB868(uint64_t result)
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

  result = sub_1915FB954(result, v11, 1, v3);
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

char *sub_1915FB954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADAFAB8, &qword_191674CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1915FBA48()
{
  result = qword_1EADAE920;
  if (!qword_1EADAE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFAB0, &qword_191672B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE920);
  }

  return result;
}

uint64_t sub_1915FBAAC()
{
  v0 = sub_1915FCF54();
  sub_1915A4734(v0, v1);
  return v0;
}

uint64_t sub_1915FBAE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_19159F5CC(v5, v6);
}

uint64_t *AXAsyncStreamSplitter.__allocating_init(initialValueBlock:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1915FCF88(a1, a2);
  sub_19159F5CC(a1, a2);
  return v4;
}

uint64_t *AXAsyncStreamSplitter.init(initialValueBlock:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1915FCF88(a1, a2);
  sub_19159F5CC(a1, a2);
  return v4;
}

uint64_t sub_1915FBC28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30[1] = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v31 = v30 - v6;
  v7 = *(v3 + 80);
  v8 = sub_19166BB98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v30 - v11;
  v13 = sub_19166BBC8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v30 - v20;
  sub_1915D455C(v12);
  sub_19166BB68();
  (*(v9 + 8))(v12, v8);
  v22 = *(v14 + 16);
  v22(v18, v21, v13);
  swift_beginAccess();
  sub_19166BA68();
  sub_19166BA48();
  swift_endAccess();
  swift_beginAccess();
  v23 = v2[2];
  if (v23)
  {
    v24 = v2[3];
    v25 = sub_19166BB58();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v22(v18, v21, v13);
    v26 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    *(v27 + 4) = v7;
    *(v27 + 5) = v23;
    *(v27 + 6) = v24;
    (*(v14 + 32))(&v27[v26], v18, v13);
    sub_1915A4734(v23, v24);

    v28 = v31;
    sub_1915FC380(0, 0, v31, &unk_191672B90, v27);

    sub_19159F5CC(v23, v24);
    sub_1915D7830(v28);
  }

  return (*(v14 + 8))(v21, v13);
}

uint64_t sub_1915FBFBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = sub_19166BB78();
  v7[4] = v10;
  v7[5] = *(v10 - 8);
  v7[6] = swift_task_alloc();
  v7[7] = *(a7 - 8);
  v7[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[9] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v7[10] = v12;
  *v12 = v7;
  v12[1] = sub_1915FC180;

  return v14(v11);
}

uint64_t sub_1915FC180()
{

  return MEMORY[0x1EEE6DFA0](sub_1915FC27C, 0, 0);
}

uint64_t sub_1915FC27C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  (*(v3 + 16))(v0[8], v1, v6);
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v5 + 8))(v2, v4);
  (*(v3 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1915FC380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1915D77C0(a3, v26 - v11);
  v13 = sub_19166BB58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1915D7830(v12);
  }

  else
  {
    sub_19166BB48();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_19166BA78();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_19166B7D8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1915FC620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1915D77C0(a3, v26 - v11);
  v13 = sub_19166BB58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1915D7830(v12);
  }

  else
  {
    sub_19166BB48();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_19166BA78();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_19166B7D8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1915FC8B8(uint64_t a1)
{
  swift_beginAccess();
  sub_19166BBC8();
  sub_19166BA68();

  swift_getWitnessTable();
  sub_19166B978();
}

uint64_t sub_1915FC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19166BB78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v14 - v11;
  (*(v5 + 16))(v7, a2, a3);
  sub_19166BBC8();
  sub_19166BBA8();
  return (*(v9 + 8))(v12, v8);
}

uint64_t *AXAsyncStreamSplitter.deinit()
{
  swift_beginAccess();
  sub_19166BBC8();
  sub_19166BA68();

  swift_getWitnessTable();
  sub_19166B978();

  swift_beginAccess();
  sub_19166BA58();
  swift_endAccess();
  sub_19159F5CC(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t AXAsyncStreamSplitter.__deallocating_deinit()
{
  AXAsyncStreamSplitter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1915FCC6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1915FD464;

  return v6(a1);
}

uint64_t sub_1915FCD64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1915FCE5C;

  return v6(a1);
}

uint64_t sub_1915FCE5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_1915FCF88(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[2] = 0;
  sub_19166BBC8();
  v2[4] = sub_19166BA28();
  swift_beginAccess();
  v5 = v2[2];
  v6 = v2[3];
  v2[2] = a1;
  v2[3] = a2;
  sub_1915A4734(a1, a2);
  sub_19159F5CC(v5, v6);
  return v2;
}

uint64_t sub_1915FD03C(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_19166BBC8() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1915D4F90;

  return sub_1915FBFBC(a1, v7, v8, v9, v10, v1 + v6, v4);
}

uint64_t sub_1915FD2F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D8338;

  return sub_1915FCD64(a1, v4);
}

uint64_t sub_1915FD3AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D4F90;

  return sub_1915FCD64(a1, v4);
}

uint64_t AXSettingsAttributes.traits.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1915DB370(&type metadata for AXTraitsKey), (v5 & 1) != 0))
  {
    sub_1915DFD18(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  result = swift_dynamicCast();
  v7 = v8;
  if (!result)
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t *AXSettingsAttributes.init<each A>(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v32 = MEMORY[0x1E69E7CC8];
  if (a2)
  {
    v4 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v24 = a4;
    v25 = result;
    v26 = a2;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = *v4;
      v29 = v4 + 1;
      v30 = v7;
      v9 = *v5++;
      v8 = v9;
      sub_19166C1C8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v31 = &v23;
      v11 = *(TupleTypeMetadata2 - 8);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v13);
      v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *(v11 + 16);
      v16 = v15(v14, v8, TupleTypeMetadata2);
      v27 = &v23;
      v28 = *(TupleTypeMetadata2 + 48);
      MEMORY[0x1EEE9AC00](v16, v17);
      v15(v14, v8, TupleTypeMetadata2);

      swift_setAtWritableKeyPath();

      (*(*(v30 - 8) + 8))(&v14[v28]);
      v4 = v29;
      --v6;
    }

    while (v6);
    *v24 = v32;
    v18 = v26;
    v19 = v25 - 8;
    do
    {
      v20 = v18 - 1;
      v21 = *(v19 + 8 * v18);
      sub_19166C1C8();
      v22 = swift_getTupleTypeMetadata2();
      result = (*(*(v22 - 8) + 8))(v21, v22);
      v18 = v20;
    }

    while (v20);
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t AXSettingsAttributes.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_19166BF58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v22 - v13;
  v15 = *v4;
  if (*(v15 + 16) && (v16 = sub_1915DB370(a1), (v17 & 1) != 0))
  {
    sub_1915DFD18(*(v15 + 56) + 32 * v16, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  v18 = swift_dynamicCast();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 56);
  if (v18)
  {
    v20(v14, 0, 1, AssociatedTypeWitness);
    return (*(v19 + 32))(a4, v14, AssociatedTypeWitness);
  }

  else
  {
    v20(v14, 1, 1, AssociatedTypeWitness);
    (*(a3 + 24))(a2, a3);
    result = (*(v19 + 48))(v14, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t AXSettingsAttributes.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1915FE1CC(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*AXSettingsAttributes.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  AXSettingsAttributes.subscript.getter(a2, a3, a4, v15);
  return sub_1915FDBB0;
}

void sub_1915FDBB0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_1915FE1CC(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1915FE1CC((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

_OWORD *AXSettingsAttributes.traits.setter(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = &type metadata for AXSettingsTrait;
  v3[0] = v1;
  return sub_1915E0E80(v3, &type metadata for AXTraitsKey);
}

void (*AXSettingsAttributes.traits.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  if (*(v5 + 16) && (v6 = sub_1915DB370(&type metadata for AXTraitsKey), (v7 & 1) != 0))
  {
    sub_1915DFD18(*(v5 + 56) + 32 * v6, v4);
  }

  else
  {
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  v8 = swift_dynamicCast();
  v9 = *(v4 + 32);
  if (!v8)
  {
    v9 = 0;
  }

  *(v4 + 48) = v9;
  return sub_1915FDDF0;
}

void sub_1915FDDF0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3[3] = &type metadata for AXSettingsTrait;
  v3[0] = v2;
  sub_1915E0E80(v3, &type metadata for AXTraitsKey);

  free(v1);
}

double sub_1915FDE58@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AXPreferenceKeyPair.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AXPreferenceKeyPair.domain.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

AXCoreUtilities::AXPreferenceKeyPair __swiftcall AXPreferenceKeyPair.init(key:domain:)(Swift::String key, Swift::String domain)
{
  *v2 = key;
  v2[1] = domain;
  result.domain = domain;
  result.key = key;
  return result;
}

_OWORD *sub_1915FDED0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
  v5 = swift_allocObject();
  v7[0] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  sub_1915FE26C(v1, v2, v3, v4);
  return sub_1915E0E80(v7, &type metadata for AXWatchPreferenceKey);
}

_OWORD *AXSettingsAttributes.watchKey.setter(_OWORD *a1)
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
  v2 = swift_allocObject();
  v5[0] = v2;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  return sub_1915E0E80(v5, &type metadata for AXWatchPreferenceKey);
}

void (*AXSettingsAttributes.watchKey.modify(int8x16_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2].i64[0] = v1;
  sub_1915DFC58(*v1, v3);
  return sub_1915FE058;
}

void sub_1915FE058(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  if (a2)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
    v7 = swift_allocObject();
    v9[0] = v7;
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v6;
    v7[5] = v5;
    sub_1915FE26C(v4, v3, v6, v5);
    sub_1915E0E80(v9, &type metadata for AXWatchPreferenceKey);
    sub_1915FE2B0(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
    v8 = swift_allocObject();
    v9[0] = v8;
    v8[2] = v4;
    v8[3] = v3;
    v8[4] = v6;
    v8[5] = v5;
    sub_1915E0E80(v9, &type metadata for AXWatchPreferenceKey);
  }

  free(v2);
}

uint64_t AXSettingProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v4, a2, a3);
  swift_getAtKeyPath();
}

_OWORD *sub_1915FE1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_1915E0E80(v9, a2);
}

void sub_1915FE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1915FE2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1915FE2F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1915FE33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1915FE39C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1915FE3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1915FE458()
{
  result = qword_1EADAFB40;
  if (!qword_1EADAFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB40);
  }

  return result;
}

unint64_t sub_1915FE4AC(uint64_t a1)
{
  result = sub_1915FE4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1915FE4D4()
{
  result = qword_1EADAFB48;
  if (!qword_1EADAFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB48);
  }

  return result;
}

unint64_t sub_1915FE52C()
{
  result = qword_1EADAFB50;
  if (!qword_1EADAFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB50);
  }

  return result;
}

unint64_t sub_1915FE580(uint64_t a1)
{
  result = sub_1915FE5A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1915FE5A8()
{
  result = qword_1EADAFB58;
  if (!qword_1EADAFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB58);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1915FE668()
{
  type metadata accessor for AXShuntedExecutor();
  v0 = swift_allocObject();
  result = AXShuntedExecutor.init()();
  qword_1EADB6D70 = v0;
  return result;
}

uint64_t AXShuntedExecutor.__allocating_init()()
{
  v0 = swift_allocObject();
  AXShuntedExecutor.init()();
  return v0;
}

uint64_t AXShuntedExecutor.init()()
{
  v12 = sub_19166BDB8();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19166BEE8();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_19166B5B8();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v11 = sub_1915FE938();
  sub_19166B5A8();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1915FFAA4(&qword_1EADAE650, 255, MEMORY[0x1E69E8130], MEMORY[0x1E69E8138]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFB60, &qword_191672E20);
  sub_1915DAAF0(&unk_1EADAE690, &unk_1EADAFB60, &qword_191672E20);
  sub_19166BFE8();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8098], v12);
  v8 = sub_19166BEF8();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

unint64_t sub_1915FE938()
{
  result = qword_1EADAE648;
  if (!qword_1EADAE648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAE648);
  }

  return result;
}

uint64_t AXShuntedExecutor.enqueue(_:)(uint64_t a1)
{
  v2 = sub_19166B588();
  v16 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_19166B5B8();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19166BB08();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v1;
  aBlock[4] = sub_1915FEC50;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);

  sub_19166B598();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1915FFAA4(&qword_1EADAE6B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915DAAF0(&qword_1EADAE6A0, &qword_1EADAF3D8, &qword_191676060);
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v9, v5, v12);
  _Block_release(v12);
  (*(v16 + 8))(v5, v2);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_1915FEC50(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_1915FFAA4(&qword_1EADAE750, a2, type metadata accessor for AXShuntedExecutor, &_s15AXCoreUtilities17AXShuntedExecutorCSchAAMc);

  return MEMORY[0x1EEE6DF20](v3, v4, v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AXShuntedExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1915FEDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1915FFAA4(qword_1EADAE758, a2, type metadata accessor for AXShuntedExecutor, &protocol conformance descriptor for AXShuntedExecutor);

  return a4(a1, v6, v7);
}

uint64_t _s15AXCoreUtilities18axUnsafeForcedSync18executorPreference_xSch_pSg_xyYaYbctlF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a4;
  v58 = a2;
  v10 = sub_19166BF58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v47 - v13;
  v15 = sub_19166B5F8();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v55 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v47 - v24;
  v26 = 0;
  sub_19166C288();
  if (v60 == 1)
  {
    v59 = a1;
    sub_19166BD78();
    v27 = AXLogCommon();
    if (!v27)
    {
      __break(1u);
      goto LABEL_15;
    }

    v28 = v27;
    sub_19166B528();

    a1 = v59;
  }

  v49 = v14;
  v29 = dispatch_semaphore_create(0);
  v59 = swift_allocBox();
  v30 = *(a5 - 1);
  v31 = *(v30 + 56);
  v47 = v32;
  v31(v32, 1, 1, a5);
  v51 = v10;
  v52 = a6;
  v50 = v11;
  v48 = v30;
  if (a1)
  {
    v34 = a1;
  }

  else
  {
    if (qword_1EADAE5B8 != -1)
    {
      swift_once();
    }

    v34 = qword_1EADB6D70;
    v58 = sub_1915FFAA4(&qword_1EADAE750, v33, type metadata accessor for AXShuntedExecutor, &_s15AXCoreUtilities17AXShuntedExecutorCSchAAMc);
  }

  swift_unknownObjectRetain();
  sub_19166BB38();
  v35 = sub_19166BB58();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v25, 0, 1, v35);
  v37 = swift_allocObject();
  v53 = a5;
  v38 = v59;
  v37[2] = a5;
  v37[3] = v38;
  v37[4] = a3;
  v37[5] = v54;
  v37[6] = v29;
  sub_1915D77C0(v25, v22);
  v39 = (*(v36 + 48))(v22, 1, v35);

  v40 = v29;
  if (v39 == 1)
  {
    sub_1915D7830(v22);
  }

  else
  {
    sub_19166BB48();
    (*(v36 + 8))(v22, v35);
  }

  v41 = v48;
  a5 = v49;
  v42 = swift_allocObject();
  *(v42 + 16) = &unk_191672E30;
  *(v42 + 24) = v37;
  v61 = 6;
  v62 = 0;
  v63 = v34;
  v64 = v58;

  swift_unknownObjectRetain();
  swift_task_create();
  sub_1915D7830(v25);

  swift_unknownObjectRelease();

  v43 = v55;
  sub_19166B5C8();
  sub_19166BE88();
  (*(v56 + 8))(v43, v57);
  v44 = v47;
  swift_beginAccess();
  v26 = v50;
  v22 = v51;
  (*(v50 + 16))(a5, v44, v51);
  v45 = v53;
  if ((*(v41 + 48))(a5, 1, v53) != 1)
  {

    (*(v41 + 32))(v52, a5, v45);
  }

LABEL_15:
  (*(v26 + 8))(a5, v22);
  result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000015, 0x800000019167CBD0, "AXCoreUtilities/AXAsyncBridging.swift", 37, 2, 55, 0);
  __break(1u);
  return result;
}

uint64_t sub_1915FF508@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_19166BCB8();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_1915FF584(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v8 = sub_19166BF58();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[9] = v9;
  v6[10] = swift_projectBox();
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v6[11] = v10;
  *v10 = v6;
  v10[1] = sub_1915FF6FC;

  return v12(v9);
}

uint64_t sub_1915FF6FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1915FF7F8, 0, 0);
}

uint64_t sub_1915FF7F8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  (*(*(v0[6] - 8) + 56))(v1, 0, 1);
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v3);
  sub_19166BEA8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1915FF8DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D4F90;

  return sub_1915FF584(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_1915FF9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D4F90;

  return sub_1915FCD64(a1, v4);
}

uint64_t sub_1915FFAA4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *AXCVoiceSelection.rate.getter()
{
  v1 = OBJC_IVAR___AXCVoiceSelection_rate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AXCVoiceSelection.rate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXCVoiceSelection_rate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *AXCVoiceSelection.pitch.getter()
{
  v1 = OBJC_IVAR___AXCVoiceSelection_pitch;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AXCVoiceSelection.pitch.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXCVoiceSelection_pitch;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *AXCVoiceSelection.volume.getter()
{
  v1 = OBJC_IVAR___AXCVoiceSelection_volume;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1915FFD38(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void AXCVoiceSelection.volume.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXCVoiceSelection_volume;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1915FFF4C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 voiceSettings];
  if (v3)
  {
    v4 = v3;
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v5 = sub_19166B678();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1915FFFDC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v3 = sub_19166B668();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setVoiceSettings_];
}

uint64_t sub_1916001D8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void sub_19160022C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 effects];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for AXAudioEffectConfiguration(0);
    v5 = sub_19166BA08();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_19160029C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    v3 = sub_19166B9F8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEffects_];
}

uint64_t sub_19160032C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_191600398(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_1916003F4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19166B748();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_191600458(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_19166B718();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id AXCVoiceSelection.init(voiceId:rate:pitch:volume:voiceSettings:effects:boundLanguage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v14 = sub_19166B718();

    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (a6)
    {
LABEL_3:
      sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
      v15 = sub_19166B668();

      v16 = a9;
      if (a7)
      {
        goto LABEL_4;
      }

LABEL_8:
      v17 = 0;
      if (v16)
      {
        goto LABEL_5;
      }

LABEL_9:
      v18 = 0;
      goto LABEL_10;
    }
  }

  v15 = 0;
  v16 = a9;
  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_4:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v17 = sub_19166B9F8();

  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = sub_19166B718();

LABEL_10:
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVoiceId:v14 rate:a3 pitch:a4 volume:a5 voiceSettings:v15 effects:v17 boundLanguage:v18];

  return v19;
}

{
  v12 = sub_19159F740(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v12;
}

id AXCVoiceSelection.init(voiceId:rate:pitch:volume:voiceSettings:effects:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v12 = sub_19166B718();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v13 = sub_19166B668();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v14 = sub_19166B9F8();

LABEL_8:
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVoiceId:v12 rate:a3 pitch:a4 volume:a5 voiceSettings:v13 effects:v14];

  return v15;
}

{
  v8 = v7;
  if (a2)
  {
    v14 = sub_19166B718();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v15 = sub_19166B668();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v16 = sub_19166B9F8();

LABEL_8:
  v17 = [v8 initWithVoiceId:v14 rate:a3 pitch:a4 volume:a5 voiceSettings:v15 effects:v16 boundLanguage:0];

  return v17;
}

id AXCVoiceSelection.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Void __swiftcall AXCVoiceSelection.encode(with:)(NSCoder with)
{
  v3 = [v1 voiceId];
  v4 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 rate];
  v6 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 pitch];
  v8 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = [v1 volume];
  v10 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = [v1 voiceSettings];
  if (v11)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    sub_19166B678();

    v11 = sub_19166B668();
  }

  v12 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = [v1 effects];
  v14 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id AXCVoiceSelection.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = sub_1915DAA60(0, &unk_1EADAFBB0, 0x1E696AEC0);
  v18[0] = 0;
  v18[1] = 0;
  v3 = sub_19166BF18();
  sub_19166B738();

  v4 = sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v5 = sub_19166BF18();
  v6 = sub_19166BF18();
  v7 = sub_19166BF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  *(v8 + 32) = sub_1915DAA60(0, &unk_1EADAFBC0, 0x1E695DF20);
  *(v8 + 40) = v2;
  *(v8 + 48) = v4;
  sub_19166BF28();

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFBE0, &qword_191672F00);
    if (swift_dynamicCast())
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_19159E780(v18, &unk_1EADB0270, &unk_191672C20);
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_191672220;
  *(v10 + 32) = sub_1915DAA60(0, &qword_1EADAFBD0, 0x1E695DEC8);
  *(v10 + 40) = type metadata accessor for AXAudioEffectConfiguration(0);
  sub_19166BF28();

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBD8, &qword_191672EF8);
    if (swift_dynamicCast())
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_19159E780(v18, &unk_1EADB0270, &unk_191672C20);
    v11 = 0;
  }

  if (v9)
  {
    v12 = sub_19166B668();

    if (!v11)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v13 = sub_19166B9F8();

LABEL_16:
  v14 = [v16 initWithVoiceId:0 rate:v5 pitch:v6 volume:v7 voiceSettings:v12 effects:v13 boundLanguage:0];

  return v14;
}

id VoiceSelection._bridgeToObjectiveC()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v34 - v3;
  v5 = *(v0 + 8);
  v34[1] = *v0;
  if (*(v0 + 20))
  {
    v36 = 0;
    if ((*(v0 + 28) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *(v0 + 16);
    v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v19) = v17;
    v36 = [v18 initWithFloat_];
    if ((*(v0 + 28) & 1) == 0)
    {
LABEL_3:
      v6 = *(v0 + 24);
      v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v8) = v6;
      v35 = [v7 initWithFloat_];
      if ((*(v0 + 36) & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v35 = 0;
  if ((*(v0 + 36) & 1) == 0)
  {
LABEL_4:
    v9 = *(v0 + 32);
    v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v11) = v9;
    v12 = [v10 initWithFloat_];
    v13 = *(v0 + 48);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    v14 = 0;
    v15 = *(v0 + 40);
    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v12 = 0;
  v13 = *(v0 + 48);
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_5:
  v38 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFBE0, &qword_191672F00);
  swift_dynamicCast();
  v14 = v37;
  v15 = *(v0 + 40);
  if (v15)
  {
LABEL_6:
    v38 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBD8, &qword_191672EF8);
    swift_dynamicCast();
    v16 = v37;
    goto LABEL_12;
  }

LABEL_11:
  v16 = 0;
LABEL_12:
  v20 = type metadata accessor for VoiceSelection(0);
  sub_1915E0A90(v0 + *(v20 + 40), v4, &qword_1EADAF5E0, &unk_191672A20);
  v21 = sub_19166B278();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v4, 1, v21) == 1)
  {
    sub_19159E780(v4, &qword_1EADAF5E0, &unk_191672A20);
    v23 = 0;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_19166B238();
    v23 = v28;
    (*(v22 + 8))(v4, v21);
    if (v5)
    {
LABEL_14:
      v24 = sub_19166B718();
      if (v14)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  v24 = 0;
  if (v14)
  {
LABEL_15:
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v25 = sub_19166B668();

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_21:
    v26 = 0;
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v25 = 0;
  if (!v16)
  {
    goto LABEL_21;
  }

LABEL_16:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v26 = sub_19166B9F8();

  if (!v23)
  {
    goto LABEL_22;
  }

LABEL_17:
  v27 = sub_19166B718();

LABEL_23:
  v29 = objc_allocWithZone(AXCVoiceSelection);
  v31 = v35;
  v30 = v36;
  v32 = [v29 initWithVoiceId:v24 rate:v36 pitch:v35 volume:v12 voiceSettings:v25 effects:v26 boundLanguage:v27];

  return v32;
}

uint64_t static VoiceSelection._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000019167CCF0, "AXCoreUtilities/VoiceSelection+ObjC.swift", 41, 2, 70, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_191601650(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC18, &qword_191672F70);
    v2 = sub_19166C248();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v9 = 0;
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    v11 = v10;
    MEMORY[0x193AFCB80]();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t static VoiceSelection._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFC00, &qword_191672F18);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  if (!a1)
  {
    v16 = 82;
LABEL_8:
    result = sub_19166C218("Fatal error", 11, 2, 0xD00000000000002FLL, 0x800000019167CD20, "AXCoreUtilities/VoiceSelection+ObjC.swift", 41, 2, v16, 0);
    goto LABEL_9;
  }

  v12 = type metadata accessor for VoiceSelection(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = a1;
  if (_s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(v14, v11))
  {
    sub_1915E0A90(v11, v8, &unk_1EADAFC00, &qword_191672F18);
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      sub_19159E780(v11, &unk_1EADAFC00, &qword_191672F18);

      return sub_191602064(v8, a2);
    }

    sub_19159E780(v8, &unk_1EADAFC00, &qword_191672F18);
    v16 = 85;
    goto LABEL_8;
  }

  result = sub_19166C218("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000019167CCF0, "AXCoreUtilities/VoiceSelection+ObjC.swift", 41, 2, 70, 0);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_191601AC8(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000019167CCF0, "AXCoreUtilities/VoiceSelection+ObjC.swift", 41, 2, 70, 0);
    __break(1u);
  }

  return result;
}

uint64_t _s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFC00, &qword_191672F18);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v46 - v14;
  v16 = [a1 boundLanguage];
  v47 = a2;
  if (v16)
  {

    result = [a1 boundLanguage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    sub_19159E780(a2, &unk_1EADAFC00, &qword_191672F18);
    sub_19166B748();

    sub_19166B288();
    v19 = sub_19166B278();
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  }

  else
  {
    sub_19159E780(a2, &unk_1EADAFC00, &qword_191672F18);
    v20 = sub_19166B278();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  }

  v21 = [a1 voiceId];
  if (v21)
  {
    v22 = v21;
    v46 = sub_19166B748();
    v24 = v23;
  }

  else
  {
    v46 = 0;
    v24 = 0;
  }

  v25 = [a1 rate];
  v26 = v25;
  v27 = 0;
  v28 = 0;
  if (v25)
  {
    [v25 floatValue];
    v28 = v29;
  }

  v30 = [a1 pitch];
  v31 = v30;
  if (v30)
  {
    [v30 floatValue];
    v27 = v32;
  }

  v33 = [a1 volume];
  v34 = v33;
  if (v33)
  {
    [v33 floatValue];
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = [a1 effects];
  if (v37)
  {
    v38 = v37;
    type metadata accessor for AXAudioEffectConfiguration(0);
    v39 = sub_19166BA08();

    v49 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBD8, &qword_191672EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    if (swift_dynamicCast())
    {
      v40 = v48;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = [a1 voiceSettings];
  if (v41)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v42 = sub_19166B678();

    v41 = sub_191601650(v42);
  }

  sub_1916021A0(v15, v12, &qword_1EADAF5E0, &unk_191672A20);
  v43 = type metadata accessor for VoiceSelection(0);
  v44 = *(v43 + 40);
  v45 = sub_19166B278();
  (*(*(v45 - 8) + 56))(&v7[v44], 1, 1, v45);
  *v7 = v46;
  *(v7 + 1) = v24;
  *(v7 + 4) = v28;
  v7[20] = v26 == 0;
  *(v7 + 6) = v27;
  v7[28] = v31 == 0;
  *(v7 + 8) = v36;
  v7[36] = v34 == 0;
  *(v7 + 5) = v40;
  *(v7 + 6) = v41;
  sub_191602130(v12, &v7[v44]);
  (*(*(v43 - 8) + 56))(v7, 0, 1, v43);
  sub_1916021A0(v7, v47, &unk_1EADAFC00, &qword_191672F18);
  return 1;
}

uint64_t sub_191602064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_191602130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1916021A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t VoiceSelection.init(voiceId:rate:pitch:volume:effects:voiceSettings:boundLanguage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = *(type metadata accessor for VoiceSelection(0) + 40);
  v19 = sub_19166B278();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;

  return sub_191602130(a8, a9 + v18);
}

uint64_t type metadata accessor for VoiceSelection(uint64_t a1)
{
  result = qword_1EADAE5D0;
  if (!qword_1EADAE5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoiceSelection.voiceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VoiceSelection.voiceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = v2[1];
  *v2 = a1;
  v2[1] = a2;
  if (result)
  {
    if (!a2)
    {

      goto LABEL_12;
    }

    if (v5 != a1 || result != a2)
    {
      v7 = sub_19166C5E8();

      if (v7)
      {
        return result;
      }

LABEL_12:

      v2[6] = 0;
      return result;
    }
  }

  else if (a2)
  {
    goto LABEL_12;
  }

  return result;
}

void (*VoiceSelection.voiceId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_1916024A8;
}

void sub_1916024A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  *v4 = v6;
  v4[1] = v5;
  if (a2)
  {
    if (v3)
    {
      if (v5)
      {
        if (v2[3] == v6 && v2[4] == v5)
        {
          goto LABEL_24;
        }

        v8 = sub_19166C5E8();

        if (v8)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    else
    {
      if (!v5)
      {
LABEL_24:

        goto LABEL_27;
      }
    }

    v11 = v2[2];

    *(v11 + 48) = 0;
    goto LABEL_24;
  }

  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

LABEL_26:
    v12 = v2[2];

    *(v12 + 48) = 0;
    goto LABEL_27;
  }

  if (!v5)
  {

    goto LABEL_26;
  }

  if (v2[3] == v6 && v2[4] == v5)
  {
    goto LABEL_24;
  }

  v10 = sub_19166C5E8();

  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:

  free(v2);
}

uint64_t VoiceSelection.rate.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t VoiceSelection.pitch.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t VoiceSelection.volume.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t VoiceSelection.effects.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t VoiceSelection.voiceSettings.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t VoiceSelection.boundLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceSelection(0) + 40);

  return sub_1916027B8(v3, a1);
}

uint64_t sub_1916027B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VoiceSelection.boundLanguage.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VoiceSelection(0) + 40);

  return sub_191602130(a1, v3);
}

uint64_t static VoiceSelection.migrations.getter()
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static VoiceSelection.migrations.setter(uint64_t a1)
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAE5F8 = a1;
}

uint64_t (*static VoiceSelection.migrations.modify(uint64_t a1))(void)
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_191602A64@<X0>(void *a1@<X8>)
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EADAE5F8;
}

uint64_t sub_191602AE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EADAE5F0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAE5F8 = v1;
}

uint64_t _s15AXCoreUtilities12AXCTLSupportO15OnOffFlagChoiceO9hashValueSivg_0()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

uint64_t sub_191602BCC(uint64_t a1)
{
  v2 = *v1;
  sub_19166C778();
  MEMORY[0x193AFD630](v2);
  return sub_19166C7B8();
}

uint64_t sub_191602C10()
{
  v1 = *v0;
  v2 = 0x64496563696F76;
  v3 = 0x7465536563696F76;
  if (v1 != 5)
  {
    v3 = 0x6E614C646E756F62;
  }

  v4 = 0x656D756C6F76;
  if (v1 != 3)
  {
    v4 = 0x73746365666665;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1702125938;
  if (v1 != 1)
  {
    v5 = 0x6863746970;
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

uint64_t sub_191602CF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191604D94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191602D34(uint64_t a1)
{
  v2 = sub_1916046E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191602D70(uint64_t a1)
{
  v2 = sub_1916046E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceSelection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC20, &qword_191672F78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1916046E0();
  sub_19166C808();
  LOBYTE(v14) = 0;
  sub_19166C348();
  if (!v2)
  {
    v10 = *(v3 + 20);
    LOBYTE(v14) = 1;
    v15 = v10;
    sub_19166C358();
    v11 = *(v3 + 28);
    LOBYTE(v14) = 2;
    v15 = v11;
    sub_19166C358();
    v12 = *(v3 + 36);
    LOBYTE(v14) = 3;
    v15 = v12;
    sub_19166C358();
    v14 = *(v3 + 40);
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    sub_191604734(&qword_1EADAFC28, &qword_1EADAFC30, &protocol conformance descriptor for AudioEffectConfiguration, MEMORY[0x1E69E6300]);
    sub_19166C368();
    v14 = *(v3 + 48);
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
    sub_1916047D0(&qword_1EADAFC38, MEMORY[0x1E69E6160], MEMORY[0x1E69E6458], MEMORY[0x1E69E5E38]);
    sub_19166C368();
    type metadata accessor for VoiceSelection(0);
    LOBYTE(v14) = 6;
    sub_19166B278();
    sub_1916050AC(&qword_1EADAFC40, MEMORY[0x1E6969610], MEMORY[0x1E6969618]);
    sub_19166C368();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VoiceSelection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19166B278();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  if (*(v2 + 8))
  {
    sub_19166C798();
    sub_19166B828();
  }

  else
  {
    sub_19166C798();
  }

  if (*(v2 + 20) == 1)
  {
    sub_19166C798();
  }

  else
  {
    sub_19166C798();
    sub_19166C7A8();
  }

  if (*(v2 + 28) == 1)
  {
    sub_19166C798();
  }

  else
  {
    sub_19166C798();
    sub_19166C7A8();
  }

  if (*(v2 + 36) == 1)
  {
    sub_19166C798();
    v13 = *(v2 + 40);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_15:
    sub_19166C798();
    v14 = *(v2 + 48);
    if (v14)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  sub_19166C798();
  sub_19166C7A8();
  v13 = *(v2 + 40);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_19166C798();
  sub_191603F7C(a1, v13);
  v14 = *(v2 + 48);
  if (v14)
  {
LABEL_13:
    sub_19166C798();
    sub_191603C10(a1, v14);
    goto LABEL_17;
  }

LABEL_16:
  sub_19166C798();
LABEL_17:
  v15 = type metadata accessor for VoiceSelection(0);
  sub_1916027B8(v2 + *(v15 + 40), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_19166C798();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_19166C798();
  sub_1916050AC(&qword_1EADAFC48, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
  sub_19166B6C8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t VoiceSelection.hashValue.getter()
{
  sub_19166C778();
  VoiceSelection.hash(into:)(v1);
  return sub_19166C7B8();
}

uint64_t VoiceSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v31 = &v28 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC50, &qword_191672F80);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for VoiceSelection(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 4) = 0;
  v13[20] = 1;
  *(v13 + 6) = 0;
  v13[28] = 1;
  *(v13 + 8) = 0;
  v13[36] = 1;
  *(v13 + 5) = 0;
  *(v13 + 6) = 0;
  v14 = *(v11 + 48);
  v15 = sub_19166B278();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1916046E0();
  v17 = v8;
  v18 = v33;
  sub_19166C7F8();
  if (!v18)
  {
    v33 = v15;
    v28 = v14;
    v20 = v30;
    v19 = v31;
    LOBYTE(v36) = 0;
    v21 = v17;
    *v13 = sub_19166C2B8();
    *(v13 + 1) = v22;
    LOBYTE(v36) = 1;
    v23 = sub_19166C2C8();
    *(v13 + 4) = v23;
    v13[20] = BYTE4(v23) & 1;
    LOBYTE(v36) = 2;
    v24 = sub_19166C2C8();
    *(v13 + 6) = v24;
    v13[28] = BYTE4(v24) & 1;
    LOBYTE(v36) = 3;
    v26 = sub_19166C2C8();
    *(v13 + 8) = v26;
    v13[36] = BYTE4(v26) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    v35 = 4;
    sub_191604734(&qword_1EADAE4E8, &qword_1EADAE568, &protocol conformance descriptor for AudioEffectConfiguration, MEMORY[0x1E69E6330]);
    sub_19166C2D8();
    *(v13 + 5) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
    v35 = 5;
    sub_1916047D0(&qword_1EADAE508, MEMORY[0x1E69E6190], MEMORY[0x1E69E6478], MEMORY[0x1E69E5E58]);
    sub_19166C2D8();
    *(v13 + 6) = v36;
    LOBYTE(v36) = 6;
    sub_1916050AC(&qword_1EADAE620, MEMORY[0x1E6969610], MEMORY[0x1E6969630]);
    v27 = v32;
    sub_19166C2D8();
    (*(v20 + 8))(v21, v27);
    sub_191602130(v19, &v13[v28]);
    sub_191604FE4(v13, v29, type metadata accessor for VoiceSelection);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_19160504C(v13, type metadata accessor for VoiceSelection);
}

uint64_t sub_191603998()
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_191603A14()
{
  sub_19166C778();
  VoiceSelection.hash(into:)(v1);
  return sub_19166C7B8();
}

uint64_t sub_191603A58(uint64_t a1)
{
  sub_19166C778();
  VoiceSelection.hash(into:)(v2);
  return sub_19166C7B8();
}

uint64_t sub_191603AC4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x193AFD630](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_19166B828();

        sub_19166C7A8();
        result = sub_19166C7B8();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191603C10(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x193AFD630](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_19166B828();

        sub_19166C7A8();
        result = sub_19166C7B8();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191603D70(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
    v19 = v10;
LABEL_12:
    v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));
    v14 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v14;
    v22 = *(a1 + 64);
    v15 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v15;

    sub_19166B828();

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v16 == 2)
      {
        sub_1915E1F90((v13 & 0x3FFFFFFFFFFFFFFFLL) + 16, v20);
        MEMORY[0x193AFD630](2);
        sub_19166C048();
        sub_1915E0AF8(v20);
      }

      else
      {
        MEMORY[0x193AFD630](3);
      }
    }

    else
    {
      if (v16)
      {
        v18 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x193AFD630](1);

        sub_191603D70(v21, v18);
      }

      else
      {
        v17 = *(v13 + 16);
        MEMORY[0x193AFD630](0);

        sub_191604140(v21, v17);
      }
    }

    v7 &= v7 - 1;
    result = sub_19166C7B8();
    v10 = result ^ v19;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x193AFD630](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v19 = v10;
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191603F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x193AFD630](v9);
  if (v9)
  {
    v11 = *(v4 + 24);
    v14 = *(v4 + 28);
    v15 = v11;
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_191604FE4(v12, v8, type metadata accessor for AudioEffectConfiguration);
      sub_19166B1C8();
      sub_1916050AC(&qword_1EADAE9E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_19166B6C8();
      sub_19166B828();
      sub_191603C10(a1, *&v8[v15]);
      sub_191603AC4(a1, *&v8[v14]);
      sub_19166C798();
      result = sub_19160504C(v8, type metadata accessor for AudioEffectConfiguration);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_191604140(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193AFD630](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        if (v9 == 2)
        {
          sub_1915E1F90((v7 & 0x3FFFFFFFFFFFFFFFLL) + 16, v12);
          MEMORY[0x193AFD630](2);

          sub_19166C048();
          sub_1915E0AF8(v12);
        }

        else
        {
          result = MEMORY[0x193AFD630](3);
        }
      }

      else
      {
        if (v9)
        {
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          MEMORY[0x193AFD630](1);

          sub_191603D70(a1, v11);
        }

        else
        {
          v10 = *(v7 + 16);
          MEMORY[0x193AFD630](0);

          sub_191604140(a1, v10);
        }
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL _s15AXCoreUtilities14VoiceSelectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_19166B278();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC68, &unk_1916731A0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v39 - v16;
  v18 = *(a1 + 8);
  v19 = *(a2 + 8);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    if (*a1 != *a2 || v18 != v19)
    {
      v20 = v15;
      v21 = sub_19166C5E8();
      v15 = v20;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v22 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a2 + 40);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = v15;

    v28 = sub_1915EE618(v25, v26);

    v15 = v27;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v29 = *(a1 + 48);
  v30 = *(a2 + 48);
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    v31 = v15;

    v32 = sub_1915ED59C(v29, v30);

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v31 = v15;
    if (v30)
    {
      return 0;
    }
  }

  v33 = *(type metadata accessor for VoiceSelection(0) + 40);
  v34 = *(v31 + 48);
  sub_1916027B8(a1 + v33, v17);
  sub_1916027B8(a2 + v33, &v17[v34]);
  v35 = *(v5 + 48);
  if (v35(v17, 1, v4) != 1)
  {
    sub_1916027B8(v17, v12);
    if (v35(&v17[v34], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_41;
    }

    (*(v5 + 32))(v8, &v17[v34], v4);
    sub_1916050AC(&qword_1EADAFC70, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
    v37 = sub_19166B6E8();
    v38 = *(v5 + 8);
    v38(v8, v4);
    v38(v12, v4);
    sub_19159E780(v17, &qword_1EADAF5E0, &unk_191672A20);
    return (v37 & 1) != 0;
  }

  if (v35(&v17[v34], 1, v4) != 1)
  {
LABEL_41:
    sub_19159E780(v17, &qword_1EADAFC68, &unk_1916731A0);
    return 0;
  }

  sub_19159E780(v17, &qword_1EADAF5E0, &unk_191672A20);
  return 1;
}

unint64_t sub_1916046E0()
{
  result = qword_1EADAE610;
  if (!qword_1EADAE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE610);
  }

  return result;
}

uint64_t sub_191604734(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFBF0, &qword_191672F08);
    sub_1916050AC(a2, type metadata accessor for AudioEffectConfiguration, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1916047D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFBF8, &qword_191672F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191604840(uint64_t a1)
{
  *(a1 + 8) = sub_1916050AC(&qword_1EADAE5E0, type metadata accessor for VoiceSelection, &protocol conformance descriptor for VoiceSelection);
  result = sub_1916050AC(&qword_1EADAE5E8, type metadata accessor for VoiceSelection, &protocol conformance descriptor for VoiceSelection);
  *(a1 + 16) = result;
  return result;
}

void sub_191604920(uint64_t a1)
{
  sub_191604A44(319, &qword_1EADAE4F0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_191604A44(319, &qword_1EADAE4D0, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      sub_191604A90(319, &qword_1EADAE4E0, &qword_1EADAFBF0, &qword_191672F08);
      if (v3 <= 0x3F)
      {
        sub_191604A90(319, &qword_1EADAE500, &qword_1EADAFBF8, &qword_191672F10);
        if (v4 <= 0x3F)
        {
          sub_191604AE4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_191604A44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_19166BF58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_191604A90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_19166BF58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_191604AE4(uint64_t a1)
{
  if (!qword_1EADAE618)
  {
    sub_19166B278();
    v1 = sub_19166BF58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADAE618);
    }
  }
}

uint64_t getEnumTagSinglePayload for VoiceSelection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceSelection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_191604C90()
{
  result = qword_1EADAFC60;
  if (!qword_1EADAFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFC60);
  }

  return result;
}

unint64_t sub_191604CE8()
{
  result = qword_1EADAE600;
  if (!qword_1EADAE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE600);
  }

  return result;
}

unint64_t sub_191604D40()
{
  result = qword_1EADAE608;
  if (!qword_1EADAE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE608);
  }

  return result;
}

uint64_t sub_191604D94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496563696F76 && a2 == 0xE700000000000000;
  if (v4 || (sub_19166C5E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125938 && a2 == 0xE400000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746970 && a2 == 0xE500000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7465536563696F76 && a2 == 0xED000073676E6974 || (sub_19166C5E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E614C646E756F62 && a2 == 0xED00006567617567)
  {

    return 6;
  }

  else
  {
    v6 = sub_19166C5E8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_191604FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19160504C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1916050AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1916050F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v28 = a3;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC90, &qword_191673200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC98, &qword_191673208);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v27 - v18;
  a2(&v30, v17);
  v20 = v29;
  sub_19166BBA8();
  (*(v15 + 8))(v19, v14);
  sub_19166BB38();
  v21 = sub_19166BB58();
  (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  (*(v5 + 16))(v9, v20, v4);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v5 + 32))(v23 + v22, v9, v4);
  v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v28;
  *v24 = a2;
  v24[1] = v25;

  sub_1915D42EC(0, 0, v13, &unk_191673218, v23);
  return sub_19166BB88();
}

uint64_t sub_1916053E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC98, &qword_191673208);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1916054B4, 0, 0);
}

uint64_t sub_1916054B4(uint64_t a1)
{
  if (sub_19166BC48())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    type metadata accessor for ObservationSentinel(0);
    v4 = swift_allocObject();
    *(v1 + 64) = v4;
    *(v4 + 16) = 0;
    v10 = *(v1 + 24);
    sub_19166B438();
    v5 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
    *(v1 + 72) = v5;
    v6 = swift_task_alloc();
    *(v1 + 80) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v10;
    *(v6 + 40) = v5;
    v7 = swift_task_alloc();
    *(v1 + 88) = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    v8 = swift_task_alloc();
    *(v1 + 96) = v8;
    *v8 = v1;
    v8[1] = sub_191605674;
    v9 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE18](v1 + 113, &unk_191673230, v6, sub_1915D5FE4, v7, 0, 0, v9);
  }
}

uint64_t sub_191605674()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1916059BC;
  }

  else
  {

    v2 = sub_191605798;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191605798()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  *(v0 + 112) = *(v0 + 113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC90, &qword_191673200);
  sub_19166BBA8();
  (*(v2 + 8))(v1, v3);
  if (sub_19166BC48())
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    type metadata accessor for ObservationSentinel(0);
    v6 = swift_allocObject();
    *(v0 + 64) = v6;
    *(v6 + 16) = 0;
    v12 = *(v0 + 24);
    sub_19166B438();
    v7 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
    *(v0 + 72) = v7;
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v12;
    *(v8 + 40) = v7;
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v6;
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_191605674;
    v11 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE18](v0 + 113, &unk_191673230, v8, sub_1915D5FE4, v9, 0, 0, v11);
  }
}

uint64_t sub_1916059BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_191605A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21[-v14];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  (*(v11 + 16))(&v21[-v14], a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a2;
  (*(v11 + 32))(v17 + v16, v15, v10);
  v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  v19 = a5;

  sub_19166B408();
}

uint64_t sub_191605C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21[-v14];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  (*(v11 + 16))(&v21[-v14], a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a2;
  (*(v11 + 32))(v17 + v16, v15, v10);
  v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  v19 = a5;

  sub_19166B408();
}

uint64_t sub_191605DC0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
  sub_19166B428();

  return a2(v3);
}

uint64_t sub_191605E80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v32 = a5;
  v33 = a10;
  v31[1] = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = v31 - v22;
  v24 = sub_19166BB58();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v15 + 16))(v19, a4, v14);
  v25 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = a2;
  *(v27 + 5) = a3;
  (*(v15 + 32))(&v27[v25], v19, v14);
  v28 = &v27[v26];
  *v28 = v32;
  v28[1] = a6;
  v29 = a2;

  sub_1915D593C(0, 0, v23, v33, v27);
}

uint64_t sub_191606094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1916060BC, 0, 0);
}

uint64_t sub_1916060BC()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  [*(v0 + 24) lock];
  sub_1916062C4(v3, v2, v1);
  [*(v0 + 24) unlock];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1916061AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1916061D4, 0, 0);
}

uint64_t sub_1916061D4()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  [*(v0 + 24) lock];
  sub_191606454(v3, v2, v1);
  [*(v0 + 24) unlock];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1916062C4(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  if ((*(result + 17) & 1) == 0)
  {
    *(result + 17) = 1;
    v4 = result;
    swift_getKeyPath();
    sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
    sub_19166B428();

    if (*(v4 + 16))
    {
      sub_19166BAB8();
      sub_1916082C4(&qword_1EADAF3C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      swift_allocError();
      sub_19166B658();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278);
      return sub_19166BA88();
    }

    else
    {
      a3(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278);
      return sub_19166BA98();
    }
  }

  return result;
}

uint64_t sub_191606454(uint64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  if ((*(result + 17) & 1) == 0)
  {
    *(result + 17) = 1;
    v4 = result;
    swift_getKeyPath();
    v7 = v4;
    sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
    sub_19166B428();

    if (*(v4 + 16))
    {
      sub_19166BAB8();
      sub_1916082C4(&qword_1EADAF3C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v6 = swift_allocError();
      sub_19166B658();
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238);
      return sub_19166BA88();
    }

    else
    {
      a3(&v7, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238);
      return sub_19166BA98();
    }
  }

  return result;
}

void *sub_191606640(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))();
  v4 = 0;
  v6 = v3 + 56;
  v5 = *(v3 + 56);
  v63 = v3;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  if ((v8 & v5) != 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_47;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v4;
    if (v9)
    {
      while (1)
      {
        v14 = *(*(v63 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v11;
        v16 = sub_19159EC10(v14);
        v18 = v11[2];
        v19 = (v17 & 1) == 0;
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          goto LABEL_50;
        }

        v22 = v17;
        if (v11[3] >= v21)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = v16;
            sub_1916484DC();
            v16 = v27;
          }
        }

        else
        {
          sub_1916463AC(v21, isUniquelyReferenced_nonNull_native);
          v16 = sub_19159EC10(v14);
          if ((v22 & 1) != (v23 & 1))
          {
            goto LABEL_52;
          }
        }

        v9 &= v9 - 1;
        v11 = v65;
        if (v22)
        {
          v12 = (v65[7] + 16 * v16);
          *v12 = v2;
          v12[1] = a2;
          swift_unknownObjectRelease();
          v4 = v13;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v65[(v16 >> 6) + 8] |= 1 << v16;
          *(v65[6] + 8 * v16) = v14;
          v24 = (v65[7] + 16 * v16);
          *v24 = v2;
          v24[1] = a2;
          v25 = v65[2];
          v20 = __OFADD__(v25, 1);
          v26 = v25 + 1;
          if (v20)
          {
            goto LABEL_51;
          }

          v65[2] = v26;
          v4 = v13;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v13 = v4;
      }
    }
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF638, &qword_191672AA0);
  v29 = sub_19164AB68(v28, 1, a1, v28, *(a2 + 8));
  v58 = *(v29 + 16);
  if (!v58)
  {
LABEL_44:

    return v11;
  }

  v30 = 0;
  v56 = v29;
  v57 = v29 + 32;
LABEL_23:
  if (v30 >= *(v29 + 16))
  {
    goto LABEL_49;
  }

  v60 = v30 + 1;
  v31 = *(v57 + 16 * v30 + 8);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v33 = sub_191606640(ObjectType, v31);
  v34 = 0;
  v36 = v33 + 64;
  v35 = *(v33 + 64);
  v62 = v33;
  v37 = 1 << *(v33 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v35;
  v40 = (v37 + 63) >> 6;
  if ((v38 & v35) != 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  while (1)
  {
    v41 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v41 >= v40)
    {

      swift_unknownObjectRelease();
      v30 = v60;
      v29 = v56;
      if (v60 == v58)
      {
        goto LABEL_44;
      }

      goto LABEL_23;
    }

    v39 = *(v36 + 8 * v41);
    ++v34;
    if (v39)
    {
      while (1)
      {
        v42 = __clz(__rbit64(v39)) | (v41 << 6);
        v43 = *(*(v62 + 48) + 8 * v42);
        v64 = *(*(v62 + 56) + 16 * v42);
        swift_unknownObjectRetain_n();
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v11;
        v45 = sub_19159EC10(v43);
        v47 = v11[2];
        v48 = (v46 & 1) == 0;
        v20 = __OFADD__(v47, v48);
        v49 = v47 + v48;
        if (v20)
        {
          goto LABEL_46;
        }

        v50 = v46;
        if (v11[3] >= v49)
        {
          if ((v44 & 1) == 0)
          {
            v54 = v45;
            sub_1916484DC();
            v45 = v54;
          }
        }

        else
        {
          sub_1916463AC(v49, v44);
          v45 = sub_19159EC10(v43);
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_52;
          }
        }

        v39 &= v39 - 1;
        v11 = v66;
        if (v50)
        {
          break;
        }

        v66[(v45 >> 6) + 8] |= 1 << v45;
        *(v66[6] + 8 * v45) = v43;
        *(v66[7] + 16 * v45) = v64;
        swift_unknownObjectRelease();
        v52 = v66[2];
        v20 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v20)
        {
          goto LABEL_48;
        }

        v66[2] = v53;
        v34 = v41;
        if (!v39)
        {
          goto LABEL_31;
        }

LABEL_30:
        v41 = v34;
      }

      *(v66[7] + 16 * v45) = v64;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v34 = v41;
      if (v39)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_46:
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
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

uint64_t sub_191606AD8()
{
  v0 = sub_19166BDB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19166B5B8();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_19166BDA8();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  sub_19166BD98();
  sub_19166B598();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  return sub_19166BDE8();
}

uint64_t sub_191606C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a2;
  v30 = a6;
  v28 = a5;
  v10 = sub_19166B588();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_19166B5B8();
  v15 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_191606AD8();
  sub_19159E224(a4, v34);
  v20 = swift_allocObject();
  v21 = v29;
  v22 = v30;
  *(v20 + 16) = v28;
  *(v20 + 24) = v22;
  *(v20 + 32) = v6;
  *(v20 + 40) = a1;
  *(v20 + 48) = v21;
  *(v20 + 56) = a3;
  v23 = v34[1];
  *(v20 + 64) = v34[0];
  *(v20 + 80) = v23;
  aBlock[4] = sub_191607968;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_3;
  v24 = _Block_copy(aBlock);
  v25 = v6;

  sub_19166B598();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1916082C4(&qword_1EADAE6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915EB79C();
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v18, v14, v24);
  _Block_release(v24);

  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v31);
}

uint64_t sub_191606F70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v54 = a6;
  v55 = a7;
  v57 = a3;
  v58 = a5;
  v56 = a4;
  v53 = a2;
  v8 = sub_19166B1C8();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v49 - v13;
  v51 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC78, &qword_1916731D8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v49 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC80, &qword_1916731E0);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v52, v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  v27 = swift_allocObject();
  v28 = v55;
  v27[2] = v54;
  v27[3] = v28;
  v29 = v53;
  v27[4] = a1;
  v27[5] = v29;
  v59 = sub_191607994;
  v60 = v27;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8650], v15);
  v30 = a1;
  sub_19166BC18();

  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  v32 = sub_19166BB58();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  v33 = *(v20 + 16);
  v34 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v26;
  v35 = v52;
  v33(v34, v26, v52);
  sub_19166BB28();

  v36 = v56;

  v37 = sub_19166BB18();
  v38 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v39 = (v21 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E69E85E0];
  *(v40 + 16) = v37;
  *(v40 + 24) = v41;
  (*(v20 + 32))(v40 + v38, v34, v35);
  *(v40 + v39) = v31;
  v42 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v57;
  v42[1] = v36;
  v43 = sub_1915D593C(0, 0, v51, &unk_1916731F0, v40);
  sub_19159E224(v58, v62);
  if (v63)
  {
    v44 = v55;
    sub_1915DAA60(0, &qword_1EADAE640, 0x1E69E58C0);
    if (swift_dynamicCast())
    {
      v45 = v61;
      v46 = v50;
      sub_19166B1B8();
      v47 = swift_allocObject();
      *(v47 + 16) = sub_191607B4C;
      *(v47 + 24) = v43;

      sub_19165DF40(sub_191607B70, v47, v46);

      (*(v20 + 8))(v44, v35);
    }

    else
    {
      (*(v20 + 8))(v44, v35);
    }
  }

  else
  {
    (*(v20 + 8))(v55, v35);

    sub_1915DCBFC(v62);
  }
}

uint64_t sub_1916074B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC88, &qword_1916731F8);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = sub_19166BB28();
  v7[16] = sub_19166BB18();
  v10 = sub_19166BA78();
  v7[17] = v10;
  v7[18] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1916075BC, v10, v9);
}

uint64_t sub_1916075BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC80, &qword_1916731E0);
  sub_19166BBD8();
  swift_beginAccess();
  swift_beginAccess();
  v1 = sub_19166BB18();
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1916076CC;
  v3 = v0[12];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 21, v1, v4, v3);
}

uint64_t sub_1916076CC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_191607810, v3, v2);
}

uint64_t sub_191607810(uint64_t a1)
{
  if (*(v1 + 168) == 2)
  {
    (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 72);
    if (*(v4 + 16))
    {
      *(v4 + 16) = 0;
    }

    else
    {
      (*(v1 + 80))(a1);
    }

    v5 = sub_19166BB18();
    *(v1 + 152) = v5;
    v6 = swift_task_alloc();
    *(v1 + 160) = v6;
    *v6 = v1;
    v6[1] = sub_1916076CC;
    v7 = *(v1 + 96);
    v8 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v1 + 168, v5, v8, v7);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_191607994@<X0>(_BYTE *a1@<X8>)
{
  v5 = *(v1 + 32);
  [v5 performSelector_];
  v3 = v5;
  *a1 = 1;

  return v5;
}

uint64_t sub_1916079FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC80, &qword_1916731E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D8338;

  return sub_1916074B4(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_191607B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191607BC0, 0, 0);
}

uint64_t sub_191607BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_191607CB4;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 80, 0, 0, 0xD000000000000012, 0x800000019167C550, sub_191608128, v1, v4);
}

uint64_t sub_191607CB4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1915D4B98, 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    *v3 = *(v2 + 80);
    v4 = *(v2 + 8);

    return v4();
  }
}

void *sub_191607E00@<X0>(void *(*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
  sub_19166B428();

  result = a2(&v7, v5);
  *a3 = v7;
  return result;
}

uint64_t sub_191607EC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC90, &qword_191673200) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1915D8338;

  return sub_1916053E4(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_191608008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);

  return sub_19166BC28();
}

uint64_t sub_19160805C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D4F90;

  return sub_191607B98(a1, v4, v5, v7, v6);
}

uint64_t sub_191608170(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D4F90;

  return sub_1916061AC(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_1916082C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_25Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

uint64_t sub_191608428(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_191605E80(a1, *(v5 + 16), *(v5 + 24), v5 + v12, *v13, v13[1], a2, a3, a4, a5);
}

uint64_t objectdestroy_28Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

uint64_t sub_1916085E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D8338;

  return sub_191606094(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_191608DA4()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

uint64_t sub_191608DEC(uint64_t a1)
{
  v2 = *v1;
  sub_19166C778();
  MEMORY[0x193AFD630](v2);
  return sub_19166C7B8();
}

uint64_t sub_191609270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1916092C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1915DFD18(a1, &v19);
  v7 = sub_19166C6D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  sub_191609790(v7, a2, a3, v11, sub_1915FDCC0, 0, &v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_unknownObjectRelease();
  if (*(&v20 + 1) == 1)
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    result = *&v19;
    v18 = v20;
    *a4 = v19;
    a4[1] = v18;
  }

  return result;
}

double safeValue<A>(_:_:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a5@<X8>)
{
  v8 = sub_19166C5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v9 = type metadata accessor for FieldAccessor(0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1916729D0;
  v13 = v12 + v11;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_1ED5A8A90);
  sub_19162D3A0(v14, v13);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_1ED5A8AA8);
  sub_19162D3A0(v15, v13 + v10);
  v16 = v13 + 2 * v10;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_1ED5A8AC0);
  sub_19162D3A0(v17, v16);
  sub_191609790(v8, a2, a3, v12, sub_1915FDCC0, 0, &v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_unknownObjectRelease();
  if (*(&v21 + 1) == 1)
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {
    result = *&v20;
    v19 = v21;
    *a5 = v20;
    a5[1] = v19;
  }

  return result;
}

id sub_191609790@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_19166C208();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v84 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v20 = sub_191622EE0(DynamicType);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
    v22 = sub_19162CE48(a7, v20, &v88, v20, a4, a1, a2, a3, a5, a6, v21, v20);
    v23 = v22;
    v25 = v24;
    v26 = (v22 >> 8) & 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v15;
    v78 = v14;
    v82 = a7;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v29 = swift_allocObject();
    v29[2] = 0;
    v80 = v29 + 2;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 1;
    v30 = swift_allocObject();
    v79 = &v76;
    *(v30 + 16) = 1;
    v31 = v84;
    *(v30 + 24) = v84;
    *(v30 + 32) = a2;
    *(v30 + 40) = a3;
    *(v30 + 48) = v31;
    v81 = v29;
    *(v30 + 56) = v29;
    v85 = 0;
    *&v88 = 0;
    v33 = MEMORY[0x1EEE9AC00](v30, v32);
    *(&v76 - 10) = a4;
    *(&v76 - 9) = a2;
    v83 = a2;
    *(&v76 - 8) = a3;
    *(&v76 - 7) = &v85 + 1;
    *(&v76 - 6) = &v88;
    *(&v76 - 5) = a5;
    v72 = a6;
    v73 = sub_19163027C;
    v74 = v33;
    v75 = &v85;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v34 = v77;
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      sub_19166C118();
      (*(v34 + 8))(v18, v36);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v74 = &v86;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v41 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v41 = 4;
        }

        else
        {
          v41 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v41);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      AGTypeApplyFields2();
    }

    v42 = v80;
    v23 = HIBYTE(v85);
    v26 = v85;
    v25 = v88;
    swift_beginAccess();
    sub_191630294(v42, v82);

    a2 = v83;
    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v26)
  {
    return result;
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  v46 = AXShouldLogValidationErrors(v43, v44);
  if (v46)
  {
    v48 = sub_19166B718();
    v49 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v49);
  }

  v50 = AXShouldLogValidationErrors(v46, v47);
  if ((v50 & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((v23 & 1) == 0)
  {
    v64 = a2;
    v65 = a3;
    result = AXLogValidations(v50);
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1916729D0;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1915F225C();
      *(v66 + 32) = v64;
      *(v66 + 40) = v65;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v43;
      *(v66 + 80) = v45;
      v69 = objc_opt_self();

      v70 = [v69 callStackSymbols];
      v71 = sub_19166BA08();

      *(v66 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v66 + 112) = v71;
      goto LABEL_28;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v25)
  {
    v51 = v26;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    goto LABEL_29;
  }

  v52 = a2;
  result = AXLogValidations(v50);
  if (!result)
  {
    goto LABEL_34;
  }

  v53 = result;
  sub_19166BD68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_191673660;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 56) = MEMORY[0x1E69E6158];
  v56 = sub_1915F225C();
  *(v54 + 32) = v52;
  *(v54 + 40) = a3;
  *(v54 + 96) = v55;
  *(v54 + 104) = v56;
  *(v54 + 64) = v56;
  *(v54 + 72) = v43;
  *(v54 + 80) = v45;
  v57 = v84;
  *&v86 = v84;

  v58 = sub_19166B7A8();
  *(v54 + 136) = v55;
  *(v54 + 144) = v56;
  *(v54 + 112) = v58;
  *(v54 + 120) = v59;
  *&v86 = v57;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
  swift_dynamicCast();
  v60 = sub_19166C878();
  *(v54 + 216) = v55;
  *(v54 + 224) = v56;
  *(v54 + 192) = v60;
  *(v54 + 200) = v61;
  v62 = [objc_opt_self() callStackSymbols];
  v63 = sub_19166BA08();

  *(v54 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
  *(v54 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
  *(v54 + 232) = v63;
LABEL_28:
  sub_19166B518();

LABEL_29:
  if (AXShouldCrashOnValidationErrors())
  {
    abort();
  }
}

id sub_19160A010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v82);
  v80 = a2;
  if (v83)
  {
    sub_1915E4370(&v82, &v84);
    __swift_project_boxed_opaque_existential_1(&v84, v85);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v86, v18, &v84, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6370], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v84);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v75 = v13;
    sub_19159E780(&v82, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = a1;
    v26 = swift_allocObject();
    *(v26 + 16) = 2;
    v77 = v26 + 16;
    v27 = swift_allocObject();
    v76 = &v73;
    *(v27 + 16) = 1;
    *(v27 + 24) = v25;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = v25;
    v78 = v26;
    *(v27 + 56) = v26;
    v86 = 0;
    v81 = 0;
    *&v84 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v73 - 10) = a4;
    *(&v73 - 9) = v30;
    *(&v73 - 8) = a3;
    *(&v73 - 7) = &v86;
    *(&v73 - 6) = &v84;
    *(&v73 - 5) = a5;
    v69 = a6;
    v70 = sub_19163021C;
    v71 = v29;
    v72 = &v81;
    Kind = AGTypeGetKind();
    v79 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v74 = &v73 - 12;
      v32 = v75;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v82 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v34 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v34, v35);
      v71 = sub_19163059C;
      v72 = v74;
      sub_19166C118();
      (*(v32 + 8))(v16, v12);
      a1 = v25;
    }

    else
    {
      *&v82 = ObjectType;
      swift_unknownObjectRetain();

      a1 = v25;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v36);
        v71 = &v82;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v38 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v38 = 4;
        }

        else
        {
          v38 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v38);
      v71 = sub_19163059C;
      v72 = &v73 - 12;
      AGTypeApplyFields2();
    }

    v39 = v78;

    v20 = v86;
    v23 = v81;
    v22 = v84;
    swift_beginAccess();
    v86 = *(v39 + 16);

    a3 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return v86;
  }

LABEL_16:
  v40 = sub_19166C878();
  v42 = v41;
  v43 = AXShouldLogValidationErrors(v40, v41);
  if (v43)
  {
    v45 = sub_19166B718();
    v46 = a3;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a3 = v46;
  }

  v48 = AXShouldLogValidationErrors(v43, v44);
  if ((v48 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v49 = v23;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a3;
    result = AXLogValidations(v48);
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = v80;
      *(v53 + 40) = v50;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v40;
      *(v53 + 80) = v42;
      *&v82 = a1;

      v56 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v56;
      *(v53 + 120) = v57;
      *&v82 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v58;
      *(v53 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v53 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v86;
    }
  }

  else
  {
    v62 = a3;
    result = AXLogValidations(v48);
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1916729D0;
      v64 = MEMORY[0x1E69E6158];
      *(v63 + 56) = MEMORY[0x1E69E6158];
      v65 = sub_1915F225C();
      *(v63 + 32) = v80;
      *(v63 + 40) = v62;
      *(v63 + 96) = v64;
      *(v63 + 104) = v65;
      *(v63 + 64) = v65;
      *(v63 + 72) = v40;
      *(v63 + 80) = v42;
      v66 = objc_opt_self();

      v67 = [v66 callStackSymbols];
      v68 = sub_19166BA08();

      *(v63 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v63 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v63 + 112) = v68;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160A89C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v84, v18, &v86, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6530], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 24) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916301FC;
    v72 = v28;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v82;
    v23 = v83;
    v22 = v86;
    swift_beginAccess();
    v38 = *(v37 + 24);
    *&v84 = *(v37 + 16);
    BYTE8(v84) = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return v84;
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160B130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v84, v18, &v86, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6810], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 24) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916301DC;
    v72 = v28;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v82;
    v23 = v83;
    v22 = v86;
    swift_beginAccess();
    v38 = *(v37 + 24);
    *&v84 = *(v37 + 16);
    BYTE8(v84) = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return v84;
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160B9C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v85);
  v83 = a1;
  if (v86)
  {
    sub_1915E4370(&v85, &v87);
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v89, v18, &v87, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7230], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v76 = v13;
    v77 = v12;
    sub_19159E780(&v85, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 256;
    v79 = v25 + 16;
    v26 = swift_allocObject();
    v78 = &v76;
    *(v26 + 16) = 1;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v80 = v25;
    *(v26 + 56) = v25;
    v89 = 0;
    v84 = 0;
    *&v87 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v76 - 10) = a4;
    *(&v76 - 9) = a2;
    v81 = a2;
    *(&v76 - 8) = a3;
    *(&v76 - 7) = &v89;
    *(&v76 - 6) = &v87;
    *(&v76 - 5) = a5;
    v72 = a6;
    v73 = sub_1916301BC;
    v74 = v28;
    v75 = &v84;
    Kind = AGTypeGetKind();
    v82 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v76;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v85 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v32 = v77;
      v33 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v33, v34);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      sub_19166C118();
      (*(v30 + 8))(v16, v32);
    }

    else
    {
      *&v85 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v35);
        v74 = &v85;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v37 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v37 = 4;
        }

        else
        {
          v37 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v37);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      AGTypeApplyFields2();
    }

    v38 = v80;

    v20 = v89;
    v23 = v84;
    v22 = v87;
    swift_beginAccess();
    v39 = *(v38 + 17);
    v89 = *(v38 + 16);
    v90 = v39;

    a2 = v81;
    a3 = v82;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return (v89 | (v90 << 8));
  }

LABEL_16:
  v40 = sub_19166C878();
  v42 = v41;
  v43 = AXShouldLogValidationErrors(v40, v41);
  if (v43)
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = a3;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v48);

    a3 = v47;
    a2 = v46;
  }

  v49 = AXShouldLogValidationErrors(v43, v44);
  if ((v49 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v50 = v23;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_29;
    }

    v51 = a3;
    result = AXLogValidations(v49);
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_191673660;
      v55 = MEMORY[0x1E69E6158];
      *(v54 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1915F225C();
      *(v54 + 32) = a2;
      *(v54 + 40) = v51;
      *(v54 + 96) = v55;
      *(v54 + 104) = v56;
      *(v54 + 64) = v56;
      *(v54 + 72) = v40;
      *(v54 + 80) = v42;
      v57 = v83;
      *&v85 = v83;

      v58 = sub_19166B7A8();
      *(v54 + 136) = v55;
      *(v54 + 144) = v56;
      *(v54 + 112) = v58;
      *(v54 + 120) = v59;
      *&v85 = v57;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v60 = sub_19166C878();
      *(v54 + 216) = v55;
      *(v54 + 224) = v56;
      *(v54 + 192) = v60;
      *(v54 + 200) = v61;
      v62 = [objc_opt_self() callStackSymbols];
      v63 = sub_19166BA08();

      *(v54 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v54 + 232) = v63;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v89 | (v90 << 8));
    }
  }

  else
  {
    v64 = a2;
    v65 = a3;
    result = AXLogValidations(v49);
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1916729D0;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1915F225C();
      *(v66 + 32) = v64;
      *(v66 + 40) = v65;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v40;
      *(v66 + 80) = v42;
      v69 = objc_opt_self();

      v70 = [v69 callStackSymbols];
      v71 = sub_19166BA08();

      *(v66 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v66 + 112) = v71;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160C25C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v85);
  v83 = a1;
  if (v86)
  {
    sub_1915E4370(&v85, &v87);
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v89, v18, &v87, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7508], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v76 = v13;
    v77 = v12;
    sub_19159E780(&v85, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 256;
    v79 = v25 + 16;
    v26 = swift_allocObject();
    v78 = &v76;
    *(v26 + 16) = 1;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v80 = v25;
    *(v26 + 56) = v25;
    v89 = 0;
    v84 = 0;
    *&v87 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v76 - 10) = a4;
    *(&v76 - 9) = a2;
    v81 = a2;
    *(&v76 - 8) = a3;
    *(&v76 - 7) = &v89;
    *(&v76 - 6) = &v87;
    *(&v76 - 5) = a5;
    v72 = a6;
    v73 = sub_19163019C;
    v74 = v28;
    v75 = &v84;
    Kind = AGTypeGetKind();
    v82 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v76;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v85 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v32 = v77;
      v33 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v33, v34);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      sub_19166C118();
      (*(v30 + 8))(v16, v32);
    }

    else
    {
      *&v85 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v35);
        v74 = &v85;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v37 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v37 = 4;
        }

        else
        {
          v37 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v37);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      AGTypeApplyFields2();
    }

    v38 = v80;

    v20 = v89;
    v23 = v84;
    v22 = v87;
    swift_beginAccess();
    v39 = *(v38 + 17);
    v89 = *(v38 + 16);
    v90 = v39;

    a2 = v81;
    a3 = v82;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return (v89 | (v90 << 8));
  }

LABEL_16:
  v40 = sub_19166C878();
  v42 = v41;
  v43 = AXShouldLogValidationErrors(v40, v41);
  if (v43)
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = a3;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v48);

    a3 = v47;
    a2 = v46;
  }

  v49 = AXShouldLogValidationErrors(v43, v44);
  if ((v49 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v50 = v23;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_29;
    }

    v51 = a3;
    result = AXLogValidations(v49);
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_191673660;
      v55 = MEMORY[0x1E69E6158];
      *(v54 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1915F225C();
      *(v54 + 32) = a2;
      *(v54 + 40) = v51;
      *(v54 + 96) = v55;
      *(v54 + 104) = v56;
      *(v54 + 64) = v56;
      *(v54 + 72) = v40;
      *(v54 + 80) = v42;
      v57 = v83;
      *&v85 = v83;

      v58 = sub_19166B7A8();
      *(v54 + 136) = v55;
      *(v54 + 144) = v56;
      *(v54 + 112) = v58;
      *(v54 + 120) = v59;
      *&v85 = v57;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v60 = sub_19166C878();
      *(v54 + 216) = v55;
      *(v54 + 224) = v56;
      *(v54 + 192) = v60;
      *(v54 + 200) = v61;
      v62 = [objc_opt_self() callStackSymbols];
      v63 = sub_19166BA08();

      *(v54 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v54 + 232) = v63;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v89 | (v90 << 8));
    }
  }

  else
  {
    v64 = a2;
    v65 = a3;
    result = AXLogValidations(v49);
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1916729D0;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1915F225C();
      *(v66 + 32) = v64;
      *(v66 + 40) = v65;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v40;
      *(v66 + 80) = v42;
      v69 = objc_opt_self();

      v70 = [v69 callStackSymbols];
      v71 = sub_19166BA08();

      *(v66 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v66 + 112) = v71;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160CAF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v87, v18, &v85, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7290], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 18) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163017C;
    v72 = v28;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v87;
    v23 = v82;
    v22 = v85;
    swift_beginAccess();
    v38 = *(v37 + 18);
    v87 = *(v37 + 16);
    v88 = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return (v87 | (v88 << 16));
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v87 | (v88 << 16));
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160D38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v87, v18, &v85, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E75F8], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 18) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163015C;
    v72 = v28;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v87;
    v23 = v82;
    v22 = v85;
    swift_beginAccess();
    v38 = *(v37 + 18);
    v87 = *(v37 + 16);
    v88 = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return (v87 | (v88 << 16));
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v87 | (v88 << 16));
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160DC24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v87, v18, &v85, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E72F0], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 20) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163013C;
    v72 = v28;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v87;
    v23 = v82;
    v22 = v85;
    swift_beginAccess();
    v38 = *(v37 + 20);
    v87 = *(v37 + 16);
    v88 = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
LABEL_31:
    LOBYTE(v83) = v88;
    return (v87 | (v88 << 32));
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160E4C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v87, v18, &v85, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7668], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 20) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163011C;
    v72 = v28;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v87;
    v23 = v82;
    v22 = v85;
    swift_beginAccess();
    v38 = *(v37 + 20);
    v87 = *(v37 + 16);
    v88 = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
LABEL_31:
    LOBYTE(v83) = v88;
    return (v87 | (v88 << 32));
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160ED64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v84, v18, &v86, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7360], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 24) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916300FC;
    v72 = v28;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v82;
    v23 = v83;
    v22 = v86;
    swift_beginAccess();
    v38 = *(v37 + 24);
    *&v84 = *(v37 + 16);
    BYTE8(v84) = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return v84;
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160F5F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v84, v18, &v86, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E76D8], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 24) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916300DC;
    v72 = v28;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v82;
    v23 = v83;
    v22 = v86;
    swift_beginAccess();
    v38 = *(v37 + 24);
    *&v84 = *(v37 + 16);
    BYTE8(v84) = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
    return v84;
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160FE8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v18 = sub_191622EE0(DynamicType);
    v19 = sub_19162CE48(&v87, v18, &v85, v18, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6448], v18);
    v20 = v19;
    v22 = v21;
    v23 = (v19 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v77 = v25 + 16;
    v81 = a3;
    *(v25 + 20) = 1;
    v26 = swift_allocObject();
    v76 = &v74;
    *(v26 + 16) = 1;
    a3 = v81;
    *(v26 + 24) = a1;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a1;
    v78 = v25;
    *(v26 + 56) = v25;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v28 = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916300BC;
    v72 = v28;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v29 = v74;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698, MEMORY[0x1E69E6328]);
      v31 = v75;
      v32 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v32, v33);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v29 + 8))(v16, v31);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v34);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v36 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v36 = 4;
        }

        else
        {
          v36 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v37 = v78;

    v20 = v87;
    v23 = v82;
    v22 = v85;
    swift_beginAccess();
    v38 = *(v37 + 20);
    v87 = *(v37 + 16);
    v88 = v38;

    a2 = v79;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v23)
  {
LABEL_31:
    LOBYTE(v83) = v88;
    return (v87 | (v88 << 32));
  }

LABEL_16:
  v39 = sub_19166C878();
  v41 = v40;
  v42 = AXShouldLogValidationErrors(v39, v40);
  if (v42)
  {
    v44 = sub_19166B718();
    v45 = a2;
    v46 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v44, v46);

    a2 = v45;
  }

  v47 = AXShouldLogValidationErrors(v42, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v20)
  {
    if (v22)
    {
      v48 = v23;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v39;
      *(v52 + 80) = v41;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations(v47);
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v39;
      *(v64 + 80) = v41;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70, MEMORY[0x1E6969E28]);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}