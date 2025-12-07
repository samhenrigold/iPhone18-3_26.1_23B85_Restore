unint64_t sub_242718A7C()
{
  result = qword_27ECBB2A8[0];
  if (!qword_27ECBB2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECBB2A8);
  }

  return result;
}

uint64_t sub_242718AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncRequestQueue.RequestState(255, *(a1 + 80), *(a1 + 88), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
  result = sub_242732784();
  if (v5 <= 0x3F)
  {
    result = sub_242732754();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_242718C00()
{
  v1 = *v0;

  v2 = *(*v0 + 112);
  type metadata accessor for AsyncRequestQueue.RequestState(255, *(v1 + 80), *(v1 + 88), v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
  v4 = sub_242732784();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(*v0 + 120);
  v6 = sub_242732754();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_242718D48()
{
  sub_242718C00();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_242718DAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24271910C();
    if (v3 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
      result = sub_2427326E4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_242718E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);

    return v5(a1);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v7 = *(a1 + *(a3 + 36));
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
    v11 = sub_2427326E4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_242718FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(result, a2, a2, v5);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
    v10 = sub_2427326E4();
    v11 = *(*(v10 - 8) + 56);
    v12 = v8 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  return result;
}

unint64_t sub_24271910C()
{
  result = qword_27ECBB3B0[0];
  if (!qword_27ECBB3B0[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27ECBB3B0);
  }

  return result;
}

uint64_t sub_2427191E4()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB438);
  v1 = __swift_project_value_buffer(v0, qword_27ECBB438);
  if (qword_27ECBA9A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECBF910);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2427192AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24271933C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_242719384(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2427193DC@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v37 = *a1;
  sub_2426F0FFC(a3, v44);
  sub_2426F0FFC(v5, v42);
  v8 = [a2 identity];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 impi];

    v11 = sub_2427324B4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a2 fileTransferCapabilities];
  if (v14 && (v15 = v14, v16 = [v14 userName], v15, v16))
  {
    v17 = sub_2427324B4();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a2 fileTransferCapabilities];
  if (v20 && (v21 = v20, v22 = [v20 password], v21, v22))
  {
    v23 = sub_2427324B4();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [a2 bsfPort];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 integerValue];
  }

  else
  {
    v28 = 0;
  }

  v29 = [a2 bsfUsesSecureTransport];
  v45[0] = v37;
  v46 = v11;
  v47 = v13;
  v48 = v17;
  v49 = v19;
  v50 = v23;
  v51 = v25;
  v52 = v28;
  v53 = v27 == 0;
  v54 = v29;
  sub_2426F0FE4(v44, &v55);
  sub_2426F0FE4(v42, &v56);
  sub_242719C08(v45, v44);
  sub_242719C08(v44, v42);
  v41[3] = &type metadata for URLSessionAuthenticator.DefaultFactory;
  v41[4] = &off_285502950;
  v30 = type metadata accessor for URLSessionAuthenticator();
  v31 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v41, &type metadata for URLSessionAuthenticator.DefaultFactory);
  v39 = &type metadata for URLSessionAuthenticator.DefaultFactory;
  v40 = &off_285502950;
  swift_defaultActor_initialize();
  *(v31 + 344) = 0;
  *(v31 + 312) = 0u;
  *(v31 + 328) = 0u;
  v32 = v42[7];
  *(v31 + 208) = v42[6];
  *(v31 + 224) = v32;
  *(v31 + 240) = v42[8];
  *(v31 + 256) = v43;
  v33 = v42[3];
  *(v31 + 144) = v42[2];
  *(v31 + 160) = v33;
  v34 = v42[5];
  *(v31 + 176) = v42[4];
  *(v31 + 192) = v34;
  v35 = v42[1];
  *(v31 + 112) = v42[0];
  *(v31 + 128) = v35;
  sub_2426F0FE4(&v38, v31 + 264);
  *(v31 + 304) = MEMORY[0x277D84F98];
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  sub_242719C64(v44);
  a4[3] = v30;
  a4[4] = &off_285502780;
  *a4 = v31;
  return sub_242719C64(v45);
}

uint64_t sub_2427196D8(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a6 - 8);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v29[-v20 - 8];
  (*(v15 + 32))(&v29[-v20 - 8], v22, v23);
  v31[3] = a7;
  v31[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a4, a7);
  v25 = *a1;
  sub_2426F0FFC(v31, v30);
  sub_2426F0C8C(v30, v29);
  (*(v15 + 16))(v18, v21, a6);
  v26 = sub_2427198A8(v25, a2, v18, v29, a6, a8);
  sub_2426F0CE8(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  (*(v15 + 8))(v21, a6);
  return v26;
}

uint64_t sub_2427198A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v13, v14, v15);
  v34[3] = &type metadata for ManagedURLSessionAuthenticator.DefaultFactory;
  v34[4] = &off_285502100;
  v16 = swift_allocObject();
  v34[0] = v16;
  v17 = *(a4 + 16);
  *(v16 + 16) = *a4;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a4 + 32);
  type metadata accessor for ManagedURLSessionAuthenticator();
  v18 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v34, &type metadata for ManagedURLSessionAuthenticator.DefaultFactory);
  swift_cvw_initWithCopy();
  v32 = &type metadata for ManagedURLSessionAuthenticator.DefaultFactory;
  v33 = &off_285502100;
  v19 = swift_allocObject();
  v31[0] = v19;
  v20 = v26[1];
  *(v19 + 16) = v26[0];
  *(v19 + 32) = v20;
  *(v19 + 48) = v27;
  swift_defaultActor_initialize();
  v21 = v10 & 1;
  *(v18 + 112) = v10 & 1;
  sub_2426F0FFC(v31, v18 + 120);
  *(v18 + 160) = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v22 = (*(a6 + 32))(a5, a6);
  sub_24271AEA8(a2);
  v23 = sub_242732484();

  [v22 set:v23 sourceApplicationBundleIdentifier:?];

  v24 = [objc_opt_self() sessionWithConfiguration_];
  v30[3] = sub_242719BBC();
  v30[4] = &off_2855013B8;

  v30[0] = v24;
  sub_2426F0FFC(v30, v18 + 168);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v28 = v21;
  sub_2427193DC(&v28, a2, v30, v29);
  (*(v11 + 8))(v13, a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  sub_2426F0FE4(v29, v18 + 208);
  *(v18 + 248) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v18;
}

uint64_t sub_242719B84()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_242719BBC()
{
  result = qword_27ECBAAF8;
  if (!qword_27ECBAAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBAAF8);
  }

  return result;
}

id sub_242719CB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB2A0, &unk_242738E60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - v11;
  v13 = *(v9 + 16);
  v13(&v19 - v11, a1, v8);
  v14 = objc_allocWithZone(type metadata accessor for AsyncTaskDelegate(0));
  v13(&v14[OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation], v12, v8);
  v15 = &v14[OBJC_IVAR____TtC15CTLazuliSupport16AuthTaskDelegate_challengeHandler];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = type metadata accessor for AuthTaskDelegate();
  v19.receiver = v14;
  v19.super_class = v16;

  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v9 + 8))(v12, v8);
  [a2 setDelegate_];

  return [a2 resume];
}

void sub_242719E74(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    v3 = qword_27ECBA9A8;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_242732244();
    __swift_project_value_buffer(v4, qword_27ECBF928);
    v5 = sub_242732224();
    v6 = sub_2427327B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2426EB000, v5, v6, "Starting network monitor", v7, 2u);
      MEMORY[0x245D17E30](v7, -1, -1);
    }

    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_24271AD94;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24271A484;
    aBlock[3] = &block_descriptor_2;
    v9 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    nw_path_evaluator_set_update_handler();
    _Block_release(v9);
    nw_path_evaluator_start();
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_27ECBA9A8 != -1)
    {
      swift_once();
    }

    v10 = sub_242732244();
    __swift_project_value_buffer(v10, qword_27ECBF928);
    oslog = sub_242732224();
    v11 = sub_2427327D4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2426EB000, oslog, v11, "Unable to start path evaluator since initialization failed", v12, 2u);
      MEMORY[0x245D17E30](v12, -1, -1);
    }
  }
}

uint64_t sub_24271A118()
{
  if (*(v0 + 24))
  {
    nw_path_evaluator_cancel();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_24271A190(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24271A1EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24271A24C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = swift_unknownObjectRetain();
      sub_24271A2C0(v2);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24271A2C0(uint64_t a1)
{
  v2 = v1;
  if (qword_27ECBA9A8 != -1)
  {
    swift_once();
  }

  v3 = sub_242732244();
  __swift_project_value_buffer(v3, qword_27ECBF928);
  swift_unknownObjectRetain();
  v4 = sub_242732224();
  v5 = sub_2427327C4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4D8, &qword_242739210);
    v8 = sub_242732504();
    v10 = sub_2426FBA6C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2426EB000, v4, v5, "Received path update: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x245D17E30](v7, -1, -1);
    MEMORY[0x245D17E30](v6, -1, -1);
  }

  v11 = *(v2 + 32);
  MEMORY[0x28223BE20](v12, v13);
  os_unfair_lock_lock((v11 + 32));
  sub_24271ADB4((v11 + 16));
  os_unfair_lock_unlock((v11 + 32));
}

uint64_t sub_24271A484(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_24271A4E4(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = MEMORY[0x245D17840](*a1);
    v5 = MEMORY[0x245D17840](a2);
    if (v4 == v5)
    {
      goto LABEL_11;
    }

    v6 = v5;
  }

  else
  {
    if ((MEMORY[0x245D17840](a2) & 1) == 0)
    {
      goto LABEL_11;
    }

    v4 = 0;
    v6 = 1;
  }

  if (qword_27ECBA9A8 != -1)
  {
    swift_once();
  }

  v7 = sub_242732244();
  __swift_project_value_buffer(v7, qword_27ECBF928);
  v8 = sub_242732224();
  v9 = sub_2427327B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v4;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6;
    _os_log_impl(&dword_2426EB000, v8, v9, "Ultra constrained updated from %{BOOL}d -> %{BOOL}d", v10, 0xEu);
    MEMORY[0x245D17E30](v10, -1, -1);
  }

LABEL_11:
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = a2;
  v11 = [objc_allocWithZone(MEMORY[0x277CC3650]) initAgentDataFromInternetPath_];
  v12 = a1[1];
  if (v12)
  {
    v13 = [a1[1] dataPlanTier];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v11 dataPlanTier];
  if (v14 != v13)
  {
    v15 = v14;
    if (qword_27ECBA9A8 != -1)
    {
      swift_once();
    }

    v16 = sub_242732244();
    __swift_project_value_buffer(v16, qword_27ECBF928);
    v17 = sub_242732224();
    v18 = sub_2427327B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109376;
      *(v19 + 4) = v13;
      *(v19 + 8) = 1024;
      *(v19 + 10) = v15;
      _os_log_impl(&dword_2426EB000, v17, v18, "Data plan tier updated from %u -> %u", v19, 0xEu);
      MEMORY[0x245D17E30](v19, -1, -1);
    }
  }

  a1[1] = v11;
}

void *sub_24271A780(uint64_t a1)
{
  v28 = a1;
  v1 = sub_242732804();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2427327F4();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_242732274();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_24271AC54();
  sub_242732254();
  v29 = MEMORY[0x277D84F90];
  sub_24271ACA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBB4C0, &qword_242739200);
  sub_24271ACF8();
  sub_2427328A4();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v1);
  v10 = v27[1];
  v11 = sub_242732814();
  v12 = v28;
  v10[2] = v11;
  if (v12)
  {
    v13 = nw_path_evaluator_copy_path();
    if (v13)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CC3650]) initAgentDataFromInternetPath_];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v10[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4D0, &qword_242739208);
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v10[4] = v15;
  if (v13)
  {
    v16 = v14;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = MEMORY[0x245D17840](v13);
    if (v14)
    {
LABEL_8:
      v18 = [v14 dataPlanTier];
      goto LABEL_11;
    }
  }

  else
  {
    v19 = v14;
    swift_unknownObjectRetain();
    v17 = 0;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  v18 = 0;
LABEL_11:
  if (qword_27ECBA9A8 != -1)
  {
    swift_once();
  }

  v20 = sub_242732244();
  __swift_project_value_buffer(v20, qword_27ECBF928);
  v21 = sub_242732224();
  v22 = sub_2427327B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109376;
    *(v23 + 4) = v17;
    *(v23 + 8) = 1024;
    *(v23 + 10) = v18;
    _os_log_impl(&dword_2426EB000, v21, v22, "Created network monitor: ultra constrained: %{BOOL}d, tier: %u", v23, 0xEu);
    MEMORY[0x245D17E30](v23, -1, -1);
  }

  sub_242719E74(v24, v25);
  swift_unknownObjectRelease();
  return v10;
}

void *sub_24271AB44()
{
  default_evaluator = nw_path_create_default_evaluator();
  if (!default_evaluator)
  {
    if (qword_27ECBA9A8 != -1)
    {
      swift_once();
    }

    v1 = sub_242732244();
    __swift_project_value_buffer(v1, qword_27ECBF928);
    v2 = sub_242732224();
    v3 = sub_2427327D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2426EB000, v2, v3, "Failed to initialize path evaluator, will use default values", v4, 2u);
      MEMORY[0x245D17E30](v4, -1, -1);
    }
  }

  type metadata accessor for NetworkMonitor();
  swift_allocObject();
  v5 = sub_24271A780(default_evaluator);
  swift_unknownObjectRelease();
  return v5;
}

unint64_t sub_24271AC54()
{
  result = qword_27ECBB4B0;
  if (!qword_27ECBB4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBB4B0);
  }

  return result;
}

unint64_t sub_24271ACA0()
{
  result = qword_27ECBB110;
  if (!qword_27ECBB110)
  {
    sub_2427327F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB110);
  }

  return result;
}

unint64_t sub_24271ACF8()
{
  result = qword_27ECBB118;
  if (!qword_27ECBB118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECBB4C0, &qword_242739200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB118);
  }

  return result;
}

uint64_t sub_24271AD5C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24271AE30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_242732244();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_242732234();
}

uint64_t sub_24271AEA8(void *a1)
{
  v2 = [a1 networkAttributionBundleID];
  v3 = sub_2427324B4();
  v5 = v4;

  v10[0] = v3;
  v10[1] = v5;
  v9[2] = v10;
  LOBYTE(v3) = sub_2426F674C(sub_2426FC1F8, v9, &unk_2855007B8);
  swift_arrayDestroy();

  if ((v3 & 1) == 0)
  {
    return 0xD000000000000021;
  }

  v6 = [a1 networkAttributionBundleID];
  v7 = sub_2427324B4();

  return v7;
}

uint64_t get_enum_tag_for_layout_string_15CTLazuliSupport12FileTransferO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24271AFC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24271B020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_24271B070(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24271B0A0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v71 = a1;
  v78 = *MEMORY[0x277D85DE8];
  v5 = sub_242732424();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_242732394();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_242732414();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_242732384();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v15);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_242732434();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_242732444();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >= 2u)
  {
    v29 = v71;
    if (a3 == 2)
    {
      sub_24271EBF8(&qword_27ECBB5E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_242732374();
      sub_2426FC2A4(v29, a2);
      sub_24271C198(v29, a2, v14);
      sub_2426FBA18(v29, a2);
      v30 = v62;
      sub_242732364();
      (*(v61 + 8))(v14, v11);
      v31 = v65;
      v75 = v65;
      v76 = sub_24271EBF8(&qword_27ECBB5E8, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
      v33 = v64;
      (*(v64 + 16))(boxed_opaque_existential_1, v30, v31);
      __swift_project_boxed_opaque_existential_1(&v74, v75);
      sub_242731DF4();
      (*(v33 + 8))(v30, v31);
      goto LABEL_6;
    }

    sub_24271EBF8(&qword_27ECBB5D0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    v35 = v63;
    v36 = v67;
    sub_242732374();
    sub_2426FC2A4(v29, a2);
    sub_24271C3BC(v29, a2, v35);
    sub_2426FBA18(v29, a2);
    v37 = v68;
    sub_242732364();
    (*(v66 + 8))(v35, v36);
    v38 = v70;
    v75 = v70;
    v76 = sub_24271EBF8(&qword_27ECBB5D8, MEMORY[0x277CC52E8], MEMORY[0x277CC52D8]);
    v39 = __swift_allocate_boxed_opaque_existential_1(&v74);
    v40 = v69;
    (*(v69 + 16))(v39, v37, v38);
    __swift_project_boxed_opaque_existential_1(&v74, v75);
    sub_242731DF4();
    (*(v40 + 8))(v37, v38);
    v41 = v77;
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    sub_24271BDE0(32, v41, *(&v41 + 1), &v77);
    v75 = MEMORY[0x277CC9318];
    v76 = MEMORY[0x277CC9300];
    v74 = v77;
    v42 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x277CC9318]);
    v43 = *v42;
    v44 = v42[1];
    v45 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      if (v45 != 2)
      {
        memset(v72, 0, 14);
        v47 = v72;
        v46 = v72;
        goto LABEL_29;
      }

      v48 = *(v43 + 16);
      v49 = *(v43 + 24);
      v50 = sub_242731DA4();
      if (v50)
      {
        v51 = sub_242731DD4();
        v43 = v48 - v51;
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_32;
        }

        v50 += v43;
      }

      v52 = __OFSUB__(v49, v48);
      v53 = v49 - v48;
      if (!v52)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v45)
    {
      v72[0] = *v42;
      LOWORD(v72[1]) = v44;
      BYTE2(v72[1]) = BYTE2(v44);
      BYTE3(v72[1]) = BYTE3(v44);
      BYTE4(v72[1]) = BYTE4(v44);
      BYTE5(v72[1]) = BYTE5(v44);
      v46 = v72 + BYTE6(v44);
      v47 = v72;
LABEL_29:
      sub_242711620(v47, v46, &v73);
      v34 = v73;
      goto LABEL_30;
    }

    v54 = v43;
    v55 = v43 >> 32;
    v53 = v55 - v54;
    if (v55 >= v54)
    {
      v50 = sub_242731DA4();
      if (!v50)
      {
LABEL_21:
        v57 = sub_242731DC4();
        if (v57 >= v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = v57;
        }

        v59 = (v58 + v50);
        if (v50)
        {
          v46 = v59;
        }

        else
        {
          v46 = 0;
        }

        v47 = v50;
        goto LABEL_29;
      }

      v56 = sub_242731DD4();
      if (!__OFSUB__(v54, v56))
      {
        v50 += v54 - v56;
        goto LABEL_21;
      }

LABEL_33:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_24271EBF8(&qword_27ECBB5F0, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  sub_242732374();
  v27 = v71;
  sub_2426FC2A4(v71, a2);
  sub_24271BF74(v27, a2, v21);
  sub_2426FBA18(v27, a2);
  sub_242732364();
  (*(v18 + 8))(v21, v17);
  v75 = v22;
  v76 = sub_24271EBF8(&qword_27ECBB5F8, MEMORY[0x277CC55B0], MEMORY[0x277CC55A0]);
  v28 = __swift_allocate_boxed_opaque_existential_1(&v74);
  (*(v23 + 16))(v28, v26, v22);
  __swift_project_boxed_opaque_existential_1(&v74, v75);
  sub_242731DF4();
  (*(v23 + 8))(v26, v22);
LABEL_6:
  v34 = v77;
LABEL_30:
  __swift_destroy_boxed_opaque_existential_1Tm(&v74);
  return v34;
}

uint64_t sub_24271BA3C()
{
  sub_242732BA4();
  sub_242732554();

  return sub_242732BD4();
}

uint64_t sub_24271BB04(uint64_t a1)
{
  sub_242732554();
}

uint64_t sub_24271BBB8(uint64_t a1)
{
  sub_242732BA4();
  sub_242732554();

  return sub_242732BD4();
}

unint64_t sub_24271BC7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24271C7D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24271BCAC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 3490893;
  v4 = 0xE700000000000000;
  v5 = 0x3635322D414853;
  if (*v1 != 2)
  {
    v5 = 0x2D3231352D414853;
    v4 = 0xEB00000000363532;
  }

  if (*v1)
  {
    v3 = 0x444D2D3176414B41;
    v2 = 0xE900000000000035;
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

uint64_t sub_24271BDE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_24271C724(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_24271C6C0(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = sub_242731F94();
    v15 = v14;
    result = sub_2426FBA18(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

unint64_t sub_24271BF28(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_242732644();
  }

  __break(1u);
  return result;
}

uint64_t sub_24271BF74(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_242732434();
      sub_24271EBF8(&qword_27ECBB5F0, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
      return sub_242732354();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24271C5E0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5588], &qword_27ECBB5F0, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_24271C5E0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5588], &qword_27ECBB5F0, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  }

  sub_242732434();
  sub_24271EBF8(&qword_27ECBB5F0, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  return sub_242732354();
}

uint64_t sub_24271C198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_242732414();
      sub_24271EBF8(&qword_27ECBB5E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_242732354();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24271C5E0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27ECBB5E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_24271C5E0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27ECBB5E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  sub_242732414();
  sub_24271EBF8(&qword_27ECBB5E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_242732354();
}

uint64_t sub_24271C3BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_242732424();
      sub_24271EBF8(&qword_27ECBB5D0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      return sub_242732354();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24271C5E0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27ECBB5D0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_24271C5E0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27ECBB5D0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  sub_242732424();
  sub_24271EBF8(&qword_27ECBB5D0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  return sub_242732354();
}

uint64_t sub_24271C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_242731DA4();
  if (!result || (result = sub_242731DD4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_242731DC4();
      a5(0);
      sub_24271EBF8(a6, a7, a8);
      return sub_242732354();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24271C6C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24271C724(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_24271C7D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2427329D4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_24271C824(void *a1@<X0>, uint64_t a2@<X8>)
{
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4E0, &qword_2427392D0);
  v212 = *(v214 - 8);
  v5 = MEMORY[0x28223BE20](v214, v4);
  v213 = v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v215 = v210 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4E8, &qword_2427392D8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v210 - v11;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4F0, &qword_2427392E0);
  v217 = *(v218 - 8);
  v14 = MEMORY[0x28223BE20](v218, v13);
  v216 = v210 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v224 = v210 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4F8, &qword_2427392E8);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v225 = v210 - v20;
  v246 = sub_242731D74();
  v219 = *(v246 - 8);
  MEMORY[0x28223BE20](v246, v21);
  v245 = v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB500, &qword_2427392F0);
  v226 = *(v222 - 8);
  v24 = MEMORY[0x28223BE20](v222, v23);
  v220 = v210 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v221 = v210 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB508, &qword_2427392F8);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v223 = v210 - v30;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB510, &qword_242739300);
  v229 = *(v230 - 8);
  v32 = MEMORY[0x28223BE20](v230, v31);
  v227 = v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v228 = v210 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB518, &qword_242739308);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v231 = v210 - v38;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB520, &qword_242739310);
  v234 = *(v235 - 8);
  v40 = MEMORY[0x28223BE20](v235, v39);
  v232 = v210 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v233 = v210 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB528, &qword_242739318);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v241 = v210 - v46;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC60, &qword_2427370A0);
  v238 = *(v239 - 8);
  v48 = MEMORY[0x28223BE20](v239, v47);
  v237 = v210 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v50);
  v243 = v210 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC68, &qword_2427370A8);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v240 = v210 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB530, &qword_242739320);
  v56 = *(v55 - 8);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v60 = v210 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v61);
  v63 = v210 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB538, &qword_242739328);
  MEMORY[0x28223BE20](v64 - 8, v65);
  v67 = v210 - v66;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB540, &qword_242739330);
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248, v68);
  v244 = v210 - v69;
  v70 = sub_242732484();
  v71 = [a1 valueForHTTPHeaderField_];

  if (!v71)
  {

    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
LABEL_4:
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
LABEL_12:
    *a2 = v75;
    *(a2 + 8) = v76;
    *(a2 + 16) = v77;
    *(a2 + 24) = v78;
    *(a2 + 32) = v71;
    *(a2 + 40) = v79;
    *(a2 + 48) = v80;
    *(a2 + 56) = v81;
    *(a2 + 64) = v82;
    return;
  }

  v211 = v12;
  v242 = a1;
  v236 = a2;
  v72 = sub_2427324B4();
  v74 = v73;

  sub_242732064();
  sub_2427010B0(&qword_27ECBB548, &qword_27ECBB530, &qword_242739320);
  sub_242732054();
  sub_242732644();
  sub_242732094();

  v83 = *(v56 + 8);
  v83(v60, v55);
  v83(v63, v55);
  v84 = v247;
  v85 = v248;
  v86 = (*(v247 + 48))(v67, 1, v248);
  if (v86 == 1)
  {

    v87 = &qword_27ECBB538;
    v88 = &qword_242739328;
LABEL_10:
    sub_2426FED88(v67, v87, v88);
LABEL_11:
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v71 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    a2 = v236;
    goto LABEL_12;
  }

  (*(v84 + 32))(v244, v67, v85);
  swift_getKeyPath();
  sub_2427320A4();

  v89 = sub_24271BF28(v256, v72, v74);
  v91 = v90;
  v93 = v92;
  v95 = v94;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBACA0, &qword_2427370D8);
  sub_242732064();
  if (v91 >> 14 >= v89 >> 14)
  {
    v210[3] = v89;
    v210[2] = v91;
    v210[1] = v93;
    sub_242732874();
    sub_2427010B0(&qword_27ECBACA8, &qword_27ECBAC60, &qword_2427370A0);
    v96 = v237;
    v97 = v239;
    sub_242732054();
    v67 = v240;
    v98 = v97;
    sub_242732074();
    v99 = v95;

    v100 = *(v238 + 8);
    v100(v96, v98);
    v100(v243, v98);
    v101 = v242;
    v102 = v241;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC70, &qword_2427370B0);
    v104 = *(v103 - 8);
    if ((*(v104 + 48))(v67, 1, v103) == 1)
    {
      (*(v247 + 8))(v244, v248);

      v87 = &qword_27ECBAC68;
      v88 = &qword_2427370A8;
      goto LABEL_10;
    }

    swift_getKeyPath();
    sub_2427320A4();

    v105 = v256;
    v106 = v257;
    v107 = v102;
    v108 = v258;
    v109 = v259;
    (*(v104 + 8))(v67, v103);
    v240 = MEMORY[0x245D17030](v105, v106, v108, v109);
    v241 = v110;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB550, &qword_242739388);
    v111 = v233;
    sub_242732064();
    v243 = v99;
    sub_242732874();
    sub_2427010B0(&qword_27ECBB558, &qword_27ECBB520, &qword_242739310);
    v112 = v232;
    v113 = v235;
    sub_242732054();
    sub_242732074();

    v114 = *(v234 + 8);
    v114(v112, v113);
    v114(v111, v113);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB560, &qword_242739390);
    v116 = *(v115 - 8);
    if ((*(v116 + 48))(v107, 1, v115) == 1)
    {
      (*(v247 + 8))(v244, v248);

      sub_2426FED88(v107, &qword_27ECBB528, &qword_242739318);
LABEL_17:

      goto LABEL_11;
    }

    swift_getKeyPath();
    sub_2427320A4();

    v117 = v256;
    v118 = v257;
    v119 = v258;
    v120 = v259;
    (*(v116 + 8))(v107, v115);
    v238 = MEMORY[0x245D17030](v117, v118, v119, v120);
    v239 = v121;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB568, &qword_2427393B8);
    v122 = v228;
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB570, &qword_27ECBB510, &qword_242739300);
    v123 = v227;
    v124 = v230;
    sub_242732054();
    v125 = v231;
    sub_242732074();

    v126 = *(v229 + 8);
    v126(v123, v124);
    v126(v122, v124);
    v127 = v125;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB578, &qword_2427393C0);
    v129 = *(v128 - 8);
    if ((*(v129 + 48))(v127, 1, v128) == 1)
    {
      (*(v247 + 8))(v244, v248);

      sub_2426FED88(v127, &qword_27ECBB518, &qword_242739308);

      goto LABEL_17;
    }

    swift_getKeyPath();
    sub_2427320A4();

    v130 = v256;
    v131 = v257;
    v132 = v258;
    v133 = (*(v129 + 8))(v127, v128);
    v256 = 44;
    v257 = 0xE100000000000000;
    MEMORY[0x28223BE20](v133, v134);
    v210[-2] = &v256;
    v135 = sub_2426FB1C8(0x7FFFFFFFFFFFFFFFLL, 1, sub_2426FC1F8, &v210[-4], v130, v131, v132, v210);
    v237 = 0;
    v136 = *(v135 + 2);
    if (v136)
    {
      v250[0] = MEMORY[0x277D84F90];
      sub_2426FBFA0(0, v136, 0);
      v79 = v250[0];
      v137 = (v219 + 8);
      v235 = v135;
      v138 = (v135 + 56);
      do
      {
        v139 = *(v138 - 3);
        v140 = *(v138 - 2);
        v141 = *(v138 - 1);
        v142 = *v138;

        v256 = MEMORY[0x245D17030](v139, v140, v141, v142);
        v257 = v143;
        v144 = v245;
        sub_242731D64();
        sub_24271EB74();
        v145 = sub_242732884();
        v147 = v146;

        (*v137)(v144, v246);

        v250[0] = v79;
        v149 = *(v79 + 16);
        v148 = *(v79 + 24);
        if (v149 >= v148 >> 1)
        {
          sub_2426FBFA0((v148 > 1), v149 + 1, 1);
          v79 = v250[0];
        }

        *(v79 + 16) = v149 + 1;
        v150 = v79 + 16 * v149;
        *(v150 + 32) = v145;
        *(v150 + 40) = v147;
        v138 += 4;
        --v136;
      }

      while (v136);
    }

    else
    {

      v79 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB588, &qword_2427393E8);
    v151 = v221;
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB590, &qword_27ECBB500, &qword_2427392F0);
    v152 = v220;
    v153 = v222;
    sub_242732054();
    v154 = v223;
    v155 = v152;
    v156 = v237;
    sub_242732074();
    v157 = v247;
    if (v156)
    {

      v158 = *(v226 + 8);
      v158(v155, v153);
      v158(v151, v153);
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB598, &qword_2427393F0);
      (*(*(v159 - 8) + 56))(v154, 1, 1, v159);
      v246 = 0;
    }

    else
    {
      v246 = 0;

      v160 = *(v226 + 8);
      v160(v155, v153);
      v160(v151, v153);
    }

    a2 = v236;
    v161 = v248;
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB598, &qword_2427393F0);
    v163 = *(v162 - 8);
    v164 = (*(v163 + 48))(v154, 1, v162);
    v165 = v164;
    if (v164 == 1)
    {
      (*(v157 + 8))(v244, v161);

      sub_2426FED88(v154, &qword_27ECBB508, &qword_2427392F8);
LABEL_38:

      if (v165 != 1)
      {
      }

      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v71 = 0;
      goto LABEL_4;
    }

    LODWORD(v245) = v164;
    swift_getKeyPath();
    sub_2427320A4();

    v166 = v256;
    v167 = v257;
    v168 = v154;
    v169 = v258;
    v170 = v259;
    (*(v163 + 8))(v168, v162);
    v80 = MEMORY[0x245D17030](v166, v167, v169, v170);
    v81 = v171;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5A0, &qword_242739418);
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB5A8, &qword_27ECBB4F0, &qword_2427392E0);
    v172 = v216;
    v173 = v218;
    sub_242732054();
    v174 = v246;
    sub_242732074();
    if (v174)
    {

      v175 = *(v217 + 8);
      v175(v172, v173);
      v175(v224, v173);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5B0, &qword_242739420);
      v177 = v225;
      (*(*(v176 - 8) + 56))(v225, 1, 1, v176);
    }

    else
    {

      v178 = *(v217 + 8);
      v178(v172, v173);
      v178(v224, v173);
      v177 = v225;
    }

    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5B0, &qword_242739420);
    v180 = *(v179 - 8);
    if ((*(v180 + 48))(v177, 1, v179) == 1)
    {
      (*(v247 + 8))(v244, v248);

      sub_2426FED88(v177, &qword_27ECBB4F8, &qword_2427392E8);
      a2 = v236;
LABEL_37:
      v165 = v245;
      goto LABEL_38;
    }

    v246 = 0;
    swift_getKeyPath();
    sub_2427320A4();

    v181 = v256;
    v182 = v257;
    v183 = v258;
    v184 = v259;
    (*(v180 + 8))(v177, v179);
    v185 = MEMORY[0x245D17030](v181, v182, v183, v184);
    v187 = v186;

    v188 = sub_24271C7D8(v185, v187);
    if (v188 == 4)
    {
      (*(v247 + 8))(v244, v248);

      a2 = v236;
      goto LABEL_37;
    }

    LODWORD(v237) = v188;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5B8, &qword_242739448);
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB5C0, &qword_27ECBB4E0, &qword_2427392D0);
    v189 = v213;
    v190 = v214;
    sub_242732054();
    v191 = v246;
    sub_242732074();
    if (v191)
    {

      v192 = *(v212 + 8);
      v192(v189, v190);
      v192(v215, v190);
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5C8, &qword_242739450);
      v194 = v211;
      (*(*(v193 - 8) + 56))(v211, 1, 1, v193);
    }

    else
    {

      v195 = *(v212 + 8);
      v195(v189, v190);
      v195(v215, v190);
      v194 = v211;
    }

    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5C8, &qword_242739450);
    v197 = *(v196 - 8);
    if ((*(v197 + 48))(v194, 1, v196) == 1)
    {
      (*(v247 + 8))(v244, v248);

      sub_2426FED88(v194, &qword_27ECBB4E8, &qword_2427392D8);
      v82 = 2;
    }

    else
    {
      swift_getKeyPath();
      sub_2427320A4();

      v198 = v256;
      v199 = v257;
      v200 = v258;
      v201 = v259;
      (*(v197 + 8))(v194, v196);
      v202 = MEMORY[0x245D17030](v198, v199, v200, v201);
      v204 = v203;

      if (v202 == 1702195828 && v204 == 0xE400000000000000 || (sub_242732AE4() & 1) != 0)
      {
        (*(v247 + 8))(v244, v248);

        v82 = 1;
      }

      else
      {
        v207 = v242;
        v208 = v247;
        if (v202 != 0x65736C6166 || v204 != 0xE500000000000000)
        {
          v209 = sub_242732AE4();

          (*(v208 + 8))(v244, v248);
          v82 = 0;
          a2 = v236;
          v205 = v241;
          v75 = v240;
          v78 = v239;
          v77 = v238;
          if ((v209 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_51:
          v250[0] = v75;
          v250[1] = v205;
          v250[2] = v77;
          v250[3] = v78;
          LOBYTE(v251) = v237;
          *(&v251 + 1) = *v266;
          HIDWORD(v251) = *&v266[3];
          v252 = v79;
          v253 = v80;
          v254 = v81;
          v255 = v82;
          v71 = v251;
          v256 = v75;
          v257 = v205;
          v258 = v77;
          v259 = v78;
          v260 = v237;
          *&v261[3] = *&v266[3];
          *v261 = *v266;
          v262 = v79;
          v263 = v80;
          v264 = v81;
          v265 = v82;
          v206 = v205;
          sub_2427126B4(v250, v249);
          sub_24271EBC8(&v256);
          v76 = v206;
          goto LABEL_12;
        }

        (*(v208 + 8))(v244, v248);
        v82 = 0;
      }
    }

    a2 = v236;
    v205 = v241;
    v75 = v240;
    v78 = v239;
    v77 = v238;
    goto LABEL_51;
  }

  __break(1u);
}

unint64_t sub_24271EB74()
{
  result = qword_27ECBB580;
  if (!qword_27ECBB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB580);
  }

  return result;
}

uint64_t sub_24271EBF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24271EC64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_24271ECAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPDigestAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPDigestAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24271EE64()
{
  result = qword_27ECBB600;
  if (!qword_27ECBB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB600);
  }

  return result;
}

unint64_t sub_24271EEB8()
{
  result = qword_27ECBB608;
  if (!qword_27ECBB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB608);
  }

  return result;
}

uint64_t sub_24271EF0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (result)
    {
      v20 = MEMORY[0x277D84F90];
      sub_2426FBFA0(0, result, 0);
      v5 = v20;
      v6 = MEMORY[0x277D84B78];
      v7 = MEMORY[0x277D84BC0];
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD08, &qword_242738770);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_242737530;
        *(v8 + 56) = v6;
        *(v8 + 64) = v7;
        v22 = 0;
        MEMORY[0x245D17E40](&v22, 8);
        *(v8 + 32) = v22;
        v9 = sub_2427324D4();
        v21 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          v18 = v9;
          v14 = v10;
          sub_2426FBFA0((v11 > 1), v12 + 1, 1);
          v10 = v14;
          v9 = v18;
          v5 = v21;
        }

        *(v5 + 16) = v12 + 1;
        v13 = v5 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v10;
        --v4;
      }

      while (v4);
      v3 = a2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
    sub_242712710(&qword_27ECBAD18, &qword_27ECBAD10, &qword_242737550, MEMORY[0x277D83958]);
    v15 = sub_242732474();
    v17 = v16;

    MEMORY[0x245D17090](v15, v17);

    return v3;
  }

  return result;
}

uint64_t sub_24271F118(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (!result)
    {
LABEL_13:
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB610, &qword_2427395D8);
      sub_242712710(&qword_27ECBB618, &qword_27ECBB610, &qword_2427395D8, MEMORY[0x277D83970]);
      return sub_242732624();
    }

    v13 = MEMORY[0x277D84F90];
    result = sub_2426FBFC0(0, result, 0);
    v3 = 0;
    v2 = v13;
    while (("/stale=(?<stale>true|false)/" & 0x2F00000000000000) != 0x2000000000000000)
    {
      result = sub_242732564();
      if (result < 0)
      {
        goto LABEL_15;
      }

      v4 = result;
      if (!result)
      {
        goto LABEL_16;
      }

      v12 = 0;
      MEMORY[0x245D17E40](&v12, 8);
      if (v4 > v12 * v4)
      {
        v5 = -v4 % v4;
        while (v5 > v12 * v4)
        {
          v12 = 0;
          MEMORY[0x245D17E40](&v12, 8);
        }
      }

      sub_242732584();
      result = sub_242732614();
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        sub_2426FBFC0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
        v2 = v13;
      }

      ++v3;
      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      if (v3 == v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FileUploadResult.transactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242732024();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileUploadResult.fileTransferInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileUploadResult(0) + 20);
  v4 = sub_2427320F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FileUploadResult(uint64_t a1)
{
  result = qword_27ECBB658;
  if (!qword_27ECBB658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FileUploadResult.responseData.getter()
{
  v1 = v0 + *(type metadata accessor for FileUploadResult(0) + 24);
  v2 = *v1;
  sub_2426FC2A4(*v1, *(v1 + 8));
  return v2;
}

unint64_t sub_24271F490()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x65736E6F70736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_24271F504@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242720248(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24271F52C(uint64_t a1)
{
  v2 = sub_24271F7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24271F568(uint64_t a1)
{
  v2 = sub_24271F7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileUploadResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB620, &qword_2427395E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24271F7FC();
  sub_242732BF4();
  LOBYTE(v15) = 0;
  sub_242732024();
  sub_24271FD0C(&qword_27ECBB630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_242732AB4();
  if (!v2)
  {
    v10 = type metadata accessor for FileUploadResult(0);
    LOBYTE(v15) = 1;
    sub_2427320F4();
    sub_24271FD0C(&qword_27ECBB638, MEMORY[0x277CF6EE8], MEMORY[0x277CF6EF0]);
    sub_242732AB4();
    v11 = (v3 + *(v10 + 24));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 2;
    sub_2426FC2A4(v15, v12);
    sub_242705F04();
    sub_242732AB4();
    sub_2426FBA18(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24271F7FC()
{
  result = qword_27ECBB628;
  if (!qword_27ECBB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB628);
  }

  return result;
}

uint64_t FileUploadResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_2427320F4();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_242732024();
  v26 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v8);
  v30 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB640, &qword_2427395E8);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for FileUploadResult(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24271F7FC();
  sub_242732BE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v13;
  v24 = a1;
  v17 = v16;
  v19 = v27;
  v18 = v28;
  v20 = v29;
  LOBYTE(v33) = 0;
  sub_24271FD0C(&qword_27ECBB648, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_242732A44();
  (*(v26 + 32))(v17, v30, v32);
  LOBYTE(v33) = 1;
  sub_24271FD0C(&qword_27ECBB650, MEMORY[0x277CF6EE8], MEMORY[0x277CF6EF8]);
  sub_242732A44();
  (*(v18 + 32))(v17 + *(v23 + 20), v7, v20);
  v34 = 2;
  sub_242706640();
  sub_242732A44();
  v21 = v24;
  (*(v19 + 8))(v12, v31);
  *(v17 + *(v23 + 24)) = v33;
  sub_24271FD54(v17, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return sub_24271FDB8(v17);
}

uint64_t sub_24271FD0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24271FD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileUploadResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24271FDB8(uint64_t a1)
{
  v2 = type metadata accessor for FileUploadResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24271FE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242732024();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2427320F4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24271FF8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_242732024();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2427320F4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2427200A4(uint64_t a1)
{
  result = sub_242732024();
  if (v2 <= 0x3F)
  {
    result = sub_2427320F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_242720144()
{
  result = qword_27ECBB668;
  if (!qword_27ECBB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB668);
  }

  return result;
}

unint64_t sub_24272019C()
{
  result = qword_27ECBB670;
  if (!qword_27ECBB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB670);
  }

  return result;
}

unint64_t sub_2427201F4()
{
  result = qword_27ECBB678;
  if (!qword_27ECBB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB678);
  }

  return result;
}

uint64_t sub_242720248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_242732AE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242734150 == a2 || (sub_242732AE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_242732AE4();

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

uint64_t sub_242720374()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB680);
  __swift_project_value_buffer(v0, qword_27ECBB680);
  return sub_242732234();
}

uint64_t sub_2427203F4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v111 = a4;
  v122 = a3;
  v107 = a1;
  v108 = a2;
  v105 = sub_242732154();
  v109 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v4);
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2427323F4();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v117 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2427323D4();
  v112 = *(v9 - 8);
  v113 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v110 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v114 = &v98 - v14;
  v116 = sub_242731F34();
  v118 = *(v116 - 8);
  v16 = MEMORY[0x28223BE20](v116, v15);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v98 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v98 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v98 - v28;
  v30 = sub_242731E24();
  v115 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB038, &qword_242738C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242737530;
  v35 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v36 = v35;
  sub_24272106C(inited);
  swift_setDeallocating();
  sub_2427090EC(inited + 32);
  v37 = v119;
  sub_242731E84();

  if (!v37)
  {
    v102 = v26;
    v104 = 0;
    v103 = v22;
    v39 = v116;
    v119 = v30;
    v40 = sub_242731E14();
    if (v41)
    {
      v42 = v39;
      v43 = v122;
      if (qword_27ECBA9B0 != -1)
      {
        swift_once();
      }

      v44 = sub_242732244();
      __swift_project_value_buffer(v44, qword_27ECBB680);
      v45 = v118;
      v46 = v18;
      (v118[2])(v18, v43, v42);
      v47 = sub_242732224();
      v48 = sub_2427327D4();
      if (!os_log_type_enabled(v47, v48))
      {

        (v45[1])(v18, v42);
        goto LABEL_17;
      }

      v49 = v33;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v120 = v51;
      *v50 = 136315138;
      sub_2427157A8();
      v52 = sub_242732AD4();
      v53 = v46;
      v55 = v54;
      (v45[1])(v53, v42);
      v56 = sub_2426FBA6C(v52, v55, &v120);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_2426EB000, v47, v48, "Failed to get original file size for: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x245D17E30](v51, -1, -1);
      v57 = v50;
      v33 = v49;
LABEL_12:
      MEMORY[0x245D17E30](v57, -1, -1);

LABEL_17:
      v83 = v119;
      v84 = v115;
      sub_2427219D4();
      swift_allocError();
      swift_willThrow();
      return (*(v84 + 8))(v33, v83);
    }

    if (v40 >= 0x100000000)
    {
      v58 = v40;
      v59 = v39;
      v60 = v122;
      if (qword_27ECBA9B0 != -1)
      {
        swift_once();
      }

      v61 = sub_242732244();
      __swift_project_value_buffer(v61, qword_27ECBB680);
      v62 = v118;
      v63 = v29;
      (v118[2])(v29, v60, v59);
      v47 = sub_242732224();
      v64 = sub_2427327D4();
      if (!os_log_type_enabled(v47, v64))
      {

        (v62[1])(v63, v59);
        goto LABEL_17;
      }

      v65 = swift_slowAlloc();
      v101 = v33;
      v66 = v65;
      v67 = swift_slowAlloc();
      v120 = v67;
      *v66 = 136315650;
      sub_2427157A8();
      v68 = sub_242732AD4();
      v69 = v63;
      v71 = v70;
      (v62[1])(v69, v59);
      v72 = sub_2426FBA6C(v68, v71, &v120);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2048;
      *(v66 + 14) = v58;
      *(v66 + 22) = 1024;
      *(v66 + 24) = -1;
      _os_log_impl(&dword_2426EB000, v47, v64, "Size of %s exceeds maximum value for UInt32: %ld vs %u", v66, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x245D17E30](v67, -1, -1);
      v57 = v66;
      v33 = v101;
      goto LABEL_12;
    }

    v98 = v40;
    v101 = v33;
    sub_2427323E4();
    v73 = v114;
    sub_2427323C4();
    v74 = sub_242732304();
    v117 = &v98;
    v100 = v74;
    v99 = *(v74 - 8);
    MEMORY[0x28223BE20](v74, v75);
    v77 = &v98 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v112;
    (*(v112 + 16))(v110, v73, v113);
    v79 = v118[2];
    v79(v102, v122, v39);
    v79(v103, v111, v39);
    v80 = sub_242731E94();
    sub_242709A44(v80, v81);
    v82 = v104;
    sub_2427322C4();
    if (v82)
    {
      (*(v78 + 8))(v114, v113);
      return (*(v115 + 8))(v101, v119);
    }

    else
    {
      v85 = v100;
      v86 = sub_2427322F4();
      v87 = *(v86 - 8);
      MEMORY[0x28223BE20](v86, v88);
      v90 = &v98 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2427322B4();
      v116 = v87;
      v111 = v86;
      v118 = &v98;
      v122 = v77;
      v91 = v114;
      sub_2427323A4();
      v104 = 0;
      v92 = v120;
      v93 = v121;
      sub_2426FC2A4(v120, v121);
      sub_2427322D4();
      v110 = v94;
      result = sub_2427322E4();
      if (v98 < 0)
      {
        __break(1u);
      }

      else
      {
        v95 = v106;
        sub_242732124();
        v96 = v109;
        v97 = v105;
        (*(v109 + 16))(v107, v95, v105);
        sub_2427321E4();
        sub_2426FBA18(v92, v93);
        (*(v96 + 8))(v95, v97);
        (*(v116 + 8))(v90, v111);
        (*(v99 + 8))(v122, v85);
        (*(v112 + 8))(v91, v113);
        return (*(v115 + 8))(v101, v119);
      }
    }
  }

  return result;
}

uint64_t sub_242720FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_2427119F0(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_242711B48(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_242711BC4(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_24272106C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6A0, &qword_242739790);
    v3 = sub_2427328D4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_2427324B4();
      sub_242732BA4();
      v27 = v7;
      sub_242732554();
      v8 = sub_242732BD4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_2427324B4();
        v18 = v17;
        if (v16 == sub_2427324B4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_242732AE4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_242721260(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v91 = *MEMORY[0x277D85DE8];
  v4 = sub_242731F34();
  v82 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v66 - v10;
  v12 = sub_2427323D4();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v81 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v66 - v17;
  v19 = sub_242732154();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for FileDownloadRequest(0);
  sub_242712EA4(a1 + *(v84 + 24), v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_242713854(v18);
    if (qword_27ECBA9B0 != -1)
    {
      swift_once();
    }

    v24 = sub_242732244();
    __swift_project_value_buffer(v24, qword_27ECBB680);
    v25 = sub_242732224();
    v26 = sub_2427327D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2426EB000, v25, v26, "Failed to decrypt file because crypto material is nil", v27, 2u);
      MEMORY[0x245D17E30](v27, -1, -1);
    }

    return;
  }

  (*(v20 + 32))(v23, v18, v19);
  LODWORD(v72) = sub_242732104();
  v77 = a1;
  if (v72)
  {
    v73 = sub_242732104();
  }

  else
  {
    v73 = 0;
  }

  v28 = sub_2427322A4();
  v75 = &v66;
  v68 = v28;
  v67 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v74 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v23;
  v31 = sub_242732114();
  v89 = MEMORY[0x277CC9318];
  v90 = MEMORY[0x277CC9300];
  v87 = v31;
  v88 = v32;
  v33 = __swift_project_boxed_opaque_existential_1(&v87, MEMORY[0x277CC9318]);
  v34 = *v33;
  v35 = v33[1];
  v36 = v35 >> 62;
  v78 = v20;
  v79 = v19;
  v76 = v4;
  if ((v35 >> 62) > 1)
  {
    if (v36 != 2)
    {
      memset(v85, 0, 14);
      v38 = v85;
      v37 = v85;
      goto LABEL_32;
    }

    v39 = *(v34 + 16);
    v40 = *(v34 + 24);
    v41 = sub_242731DA4();
    if (v41)
    {
      v42 = sub_242731DD4();
      v34 = v39 - v42;
      if (__OFSUB__(v39, v42))
      {
        goto LABEL_41;
      }

      v41 += v34;
    }

    v43 = __OFSUB__(v40, v39);
    v44 = v40 - v39;
    if (!v43)
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_20:
    v45 = v34;
    v46 = v34 >> 32;
    v44 = v46 - v45;
    if (v46 >= v45)
    {
      v41 = sub_242731DA4();
      if (!v41)
      {
LABEL_24:
        v48 = sub_242731DC4();
        if (v48 >= v44)
        {
          v49 = v44;
        }

        else
        {
          v49 = v48;
        }

        v50 = (v49 + v41);
        if (v41)
        {
          v37 = v50;
        }

        else
        {
          v37 = 0;
        }

        v38 = v41;
        goto LABEL_32;
      }

      v47 = sub_242731DD4();
      if (!__OFSUB__(v45, v47))
      {
        v41 += v45 - v47;
        goto LABEL_24;
      }

LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v36)
  {
    goto LABEL_20;
  }

  v85[0] = v34;
  LOWORD(v85[1]) = v35;
  BYTE2(v85[1]) = BYTE2(v35);
  BYTE3(v85[1]) = BYTE3(v35);
  BYTE4(v85[1]) = BYTE4(v35);
  BYTE5(v85[1]) = BYTE5(v35);
  v37 = v85 + BYTE6(v35);
  v38 = v85;
LABEL_32:
  sub_242711620(v38, v37, v86);
  v69 = v2;
  v51 = v84;
  LODWORD(v84) = v72 == 0;
  v52 = v86[0];
  v53 = v86[1];
  __swift_destroy_boxed_opaque_existential_1Tm(&v87);
  v87 = v52;
  v88 = v53;
  sub_2427323B4();
  v54 = sub_242732134();
  if (v55 >> 60 == 15)
  {
    v56 = 0;
  }

  else
  {
    v56 = v54;
  }

  v72 = v56;
  v57 = 0xC000000000000000;
  if (v55 >> 60 != 15)
  {
    v57 = v55;
  }

  v71 = v57;
  v70 = sub_242732144();
  v58 = *(v82 + 16);
  v59 = v76;
  v58(v11, v83, v76);
  v58(v8, v77 + *(v51 + 20), v59);
  v60 = sub_242731E94();
  sub_242709A44(v60, v61);
  LOBYTE(v87) = v84;
  v62 = v74;
  v63 = v69;
  sub_242732294();
  if (v63)
  {
    (*(v78 + 8))(v80, v79);
  }

  else
  {
    sub_242732284();
    v65 = v78;
    v64 = v79;
    (*(v67 + 8))(v62, v68);
    (*(v65 + 8))(v80, v64);
  }
}

unint64_t sub_2427219D4()
{
  result = qword_27ECBB698;
  if (!qword_27ECBB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB698);
  }

  return result;
}

unint64_t sub_242721A4C()
{
  result = qword_27ECBB6A8;
  if (!qword_27ECBB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6A8);
  }

  return result;
}

uint64_t sub_242721AF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2427323D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6B0, &unk_2427398D0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22[-1] - v16;
  v22[0] = a1;
  v22[1] = a2;
  v25 = a3;
  v26 = a4;
  sub_2426FC2A4(a3, a4);
  sub_2427323B4();
  sub_242732414();
  sub_242721D6C();
  sub_242721DC4();
  sub_242732404();
  (*(v9 + 8))(v12, v8);
  v23 = v13;
  v24 = sub_242721E18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v14 + 16))(boxed_opaque_existential_1, v17, v13);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_242731DF4();
  (*(v14 + 8))(v17, v13);
  v19 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v19;
}

unint64_t sub_242721D6C()
{
  result = qword_27ECBB5E0;
  if (!qword_27ECBB5E0)
  {
    sub_242732414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB5E0);
  }

  return result;
}

unint64_t sub_242721DC4()
{
  result = qword_27ECBB6B8;
  if (!qword_27ECBB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6B8);
  }

  return result;
}

unint64_t sub_242721E18()
{
  result = qword_27ECBB6C0;
  if (!qword_27ECBB6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBB6B0, &unk_2427398D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6C0);
  }

  return result;
}

uint64_t FileUploadRequest.init(fileURL:fileContentType:thumbnailURL:thumbnailContentType:secure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = type metadata accessor for FileUploadRequest(0);
  v8 = v7[5];
  v9 = sub_2427321D4();
  v10 = *(*(v9 - 8) + 56);
  v10(a6 + v8, 1, 1, v9);
  v11 = v7[6];
  v12 = sub_242731F34();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a6 + v11, 1, 1, v12);
  v14 = v7[7];
  v10(a6 + v14, 1, 1, v9);
  (*(v13 + 32))(a6, a1, v12);
  sub_2426FDD98(a2, a6 + v8, &qword_27ECBAB28, &qword_242736CE0);
  sub_2426FDD98(a3, a6 + v11, &qword_27ECBAB20, &unk_242737540);
  result = sub_2426FDD98(a4, a6 + v14, &qword_27ECBAB28, &qword_242736CE0);
  *(a6 + v7[8]) = a5;
  return result;
}

uint64_t type metadata accessor for FileUploadRequest(uint64_t a1)
{
  result = qword_27ECBB6E0;
  if (!qword_27ECBB6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FileUploadRequest.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileUploadRequest.fileURL.setter(uint64_t a1)
{
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FileUploadRequest.secure.setter(char a1)
{
  result = type metadata accessor for FileUploadRequest(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_24272247C()
{
  v1 = *v0;
  v2 = 0x4C5255656C6966;
  v3 = 0x69616E626D756874;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x657275636573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E6F43656C6966;
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

uint64_t sub_24272252C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2427236EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242722560(uint64_t a1)
{
  v2 = sub_242722860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24272259C(uint64_t a1)
{
  v2 = sub_242722860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileUploadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6C8, &qword_2427398E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242722860();
  sub_242732BF4();
  v20 = 0;
  sub_242731F34();
  sub_242722F24(&qword_27ECBAF30, MEMORY[0x277CC9268]);
  sub_242732AB4();
  if (!v2)
  {
    v15[3] = type metadata accessor for FileUploadRequest(0);
    v19 = 1;
    v10 = sub_2427321D4();
    v11 = sub_242706F74(&qword_27ECBAF88, MEMORY[0x28223BA50]);
    v12 = v3;
    v13 = v11;
    v15[2] = v12;
    sub_242732A84();
    v15[0] = v13;
    v15[1] = v10;
    v18 = 2;
    sub_242732A84();
    v17 = 3;
    sub_242732A84();
    v16 = 4;
    sub_242732AA4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_242722860()
{
  result = qword_27ECBB6D0;
  if (!qword_27ECBB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6D0);
  }

  return result;
}

uint64_t FileUploadRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = v41 - v5;
  v50 = sub_242731F34();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v7);
  v47 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6D8, &qword_2427398E8);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v9);
  v11 = v41 - v10;
  v12 = type metadata accessor for FileUploadRequest(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v18 = sub_2427321D4();
  v19 = *(*(v18 - 8) + 56);
  v54 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = *(v12 + 24);
  v46 = v6;
  v21 = v6;
  v22 = v50;
  v23 = *(v21 + 56);
  v53 = v20;
  v23(&v16[v20], 1, 1, v50);
  v52 = *(v12 + 28);
  v19(&v16[v52], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242722860();
  v48 = v11;
  v24 = v51;
  sub_242732BE4();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v28 = v52;
    sub_2426FED88(&v16[v54], &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(&v16[v53], &qword_27ECBAB20, &unk_242737540);
    return sub_2426FED88(&v16[v28], &qword_27ECBAB28, &qword_242736CE0);
  }

  else
  {
    v42 = v12;
    v25 = v45;
    v26 = v46;
    v51 = a1;
    v59 = 0;
    v27 = sub_242722F24(&qword_27ECBAF60, MEMORY[0x277CC9280]);
    sub_242732A44();
    v41[2] = v27;
    (*(v26 + 32))(v16, v47, v22);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    v47 = v41;
    v30 = *(*(v29 - 8) + 64);
    MEMORY[0x28223BE20](v29 - 8, v31);
    v33 = v41 - v32;
    v58 = 1;
    v34 = sub_242706F74(&qword_27ECBAFA0, MEMORY[0x28223BA58]);
    sub_242732A14();
    v41[1] = v34;
    sub_2426FDD98(v33, &v16[v54], &qword_27ECBAB28, &qword_242736CE0);
    v57 = 2;
    v35 = v44;
    sub_242732A14();
    v36 = sub_2426FDD98(v35, &v16[v53], &qword_27ECBAB20, &unk_242737540);
    MEMORY[0x28223BE20](v36, v37);
    v56 = 3;
    sub_242732A14();
    sub_2426FDD98(v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), &v16[v52], &qword_27ECBAB28, &qword_242736CE0);
    v55 = 4;
    v38 = sub_242732A34();
    (*(v25 + 8))(v48, v49);
    v39 = v43;
    v16[*(v42 + 32)] = v38 & 1;
    sub_242722F68(v16, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    return sub_242722FCC(v16);
  }
}

uint64_t sub_242722F24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_242731F34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242722F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileUploadRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242722FCC(uint64_t a1)
{
  v2 = type metadata accessor for FileUploadRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24272306C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_242731F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[8]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2427231FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_242731F34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_242723364(uint64_t a1)
{
  sub_242731F34();
  if (v1 <= 0x3F)
  {
    sub_242723440(319, &qword_27ECBAFC0, MEMORY[0x28223BA38]);
    if (v2 <= 0x3F)
    {
      sub_242723440(319, &qword_27ECBAB90, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242723440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242732834();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FileUploadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FileUploadRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2427235E8()
{
  result = qword_27ECBB6F0;
  if (!qword_27ECBB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6F0);
  }

  return result;
}

unint64_t sub_242723640()
{
  result = qword_27ECBB6F8;
  if (!qword_27ECBB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6F8);
  }

  return result;
}

unint64_t sub_242723698()
{
  result = qword_27ECBB700;
  if (!qword_27ECBB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB700);
  }

  return result;
}

uint64_t sub_2427236EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_242732AE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F43656C6966 && a2 == 0xEF65707954746E65 || (sub_242732AE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_242732AE4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242734170 == a2 || (sub_242732AE4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657275636573 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_242732AE4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2427238AC()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB708);
  __swift_project_value_buffer(v0, qword_27ECBB708);
  return sub_242732234();
}

uint64_t sub_242723920(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status] != 2)
  {
    return -1;
  }

  v3 = v2;
  v6 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream;
  v7 = *&v2[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream];
  v70 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream;
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = &v2[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_streamIterator];
  swift_beginAccess();
  v9 = *v8;
  if (*v8 >> 62)
  {
    v10 = sub_242732984();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8[1];
  if (v11 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x245D17410](v8[1], v9);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        swift_once();
LABEL_31:
        v43 = sub_242732244();
        __swift_project_value_buffer(v43, qword_27ECBB708);
        v44 = v9;
        v45 = sub_242732224();
        v46 = sub_2427327C4();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v71[0] = v48;
          *v47 = 136315138;
          sub_242724804();
          v49 = v44;
          v50 = sub_242732514();
          v52 = sub_2426FBA6C(v50, v51, v71);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_2426EB000, v45, v46, "Advancing to next stream %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          v53 = v48;
          v6 = v70;
          MEMORY[0x245D17E30](v53, -1, -1);
          MEMORY[0x245D17E30](v47, -1, -1);
        }

        v54 = *&v3[v6];
        *&v3[v6] = v44;

        v7 = *&v3[v6];
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_34;
      }

      v42 = *(v9 + 8 * v11 + 32);
    }

    v9 = v42;
    if (!__OFADD__(v11, 1))
    {
      v8[1] = v11 + 1;
      swift_endAccess();
      if (qword_27ECBA9B8 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_47;
    }

    goto LABEL_45;
  }

  swift_endAccess();
  v7 = *&v3[v6];
  if (v7)
  {
LABEL_7:
    v12 = v7;
    if (![v12 streamStatus])
    {
      if (qword_27ECBA9B8 != -1)
      {
        swift_once();
      }

      v13 = sub_242732244();
      __swift_project_value_buffer(v13, qword_27ECBB708);
      v14 = v12;
      v15 = sub_242732224();
      v16 = sub_2427327C4();

      if (os_log_type_enabled(v15, v16))
      {
        buf = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v71[0] = v69;
        *buf = 136315138;
        sub_242724804();
        v17 = v14;
        v18 = sub_242732514();
        v20 = v3;
        v21 = a1;
        v22 = a2;
        v23 = sub_2426FBA6C(v18, v19, v71);

        *(buf + 4) = v23;
        a2 = v22;
        a1 = v21;
        v3 = v20;
        _os_log_impl(&dword_2426EB000, v15, v16, "Opening stream: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x245D17E30](v69, -1, -1);
        MEMORY[0x245D17E30](buf, -1, -1);
      }

      [v14 open];
    }

    if (qword_27ECBA9B8 != -1)
    {
      swift_once();
    }

    v24 = sub_242732244();
    __swift_project_value_buffer(v24, qword_27ECBB708);
    v25 = v12;
    v26 = sub_242732224();
    v27 = sub_2427327C4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v71[0] = v29;
      *v28 = 136315138;
      sub_242724804();
      v30 = v25;
      v31 = sub_242732514();
      v33 = sub_2426FBA6C(v31, v32, v71);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2426EB000, v26, v27, "Reading from stream %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x245D17E30](v29, -1, -1);
      MEMORY[0x245D17E30](v28, -1, -1);
    }

    v34 = [v25 read:a1 maxLength:a2];
    v35 = v34;
    if (v34 < 1)
    {
      if (v34)
      {
        v40 = [v25 streamError];

        v41 = *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_underlyingStreamError];
        *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_underlyingStreamError] = v40;
      }

      else
      {
        v59 = sub_242732224();
        v60 = sub_2427327C4();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v71[0] = v62;
          *v61 = 136315138;
          sub_242724804();
          v63 = v25;
          v64 = sub_242732514();
          v66 = sub_2426FBA6C(v64, v65, v71);

          *(v61 + 4) = v66;
          _os_log_impl(&dword_2426EB000, v59, v60, "Closing stream: %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          MEMORY[0x245D17E30](v62, -1, -1);
          MEMORY[0x245D17E30](v61, -1, -1);
        }

        [v25 close];
        v67 = *&v3[v70];
        *&v3[v70] = 0;

        v35 = [v3 read:a1 maxLength:a2];
      }
    }

    else
    {

      v36 = sub_242732224();
      v37 = sub_2427327C4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v35;
        _os_log_impl(&dword_2426EB000, v36, v37, "Read %ld bytes", v38, 0xCu);
        MEMORY[0x245D17E30](v38, -1, -1);
      }
    }

    return v35;
  }

LABEL_34:
  if (qword_27ECBA9B8 != -1)
  {
    swift_once();
  }

  v55 = sub_242732244();
  __swift_project_value_buffer(v55, qword_27ECBB708);
  v56 = sub_242732224();
  v57 = sub_2427327B4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_2426EB000, v56, v57, "No more streams to read from", v58, 2u);
    MEMORY[0x245D17E30](v58, -1, -1);
  }

  return 0;
}

void sub_2427241C0()
{
  v1 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status;
  if (*(v0 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status) != 2)
  {
    v2 = v0;
    if (qword_27ECBA9B8 != -1)
    {
      swift_once();
    }

    v3 = sub_242732244();
    __swift_project_value_buffer(v3, qword_27ECBB708);
    v4 = sub_242732224();
    v5 = sub_2427327C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2426EB000, v4, v5, "Opening stream", v6, 2u);
      MEMORY[0x245D17E30](v6, -1, -1);
    }

    v7 = (v2 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_streamIterator);
    swift_beginAccess();
    v8 = *v7;
    if (*v7 >> 62)
    {
      v9 = sub_242732984();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v7[1];
    if (v10 == v9)
    {
      v11 = 0;
LABEL_16:
      swift_endAccess();
      v13 = *(v2 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream);
      *(v2 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream) = v11;

      *(v2 + v1) = 2;
      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D17410](v7[1], v8);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_22:
        __break(1u);
        return;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v11 = v12;
    if (!__OFADD__(v10, 1))
    {
      v7[1] = v10 + 1;
      goto LABEL_16;
    }

    goto LABEL_21;
  }
}

void sub_2427243DC()
{
  v1 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status;
  if (*(v0 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status) != 6)
  {
    v2 = v0;
    if (qword_27ECBA9B8 != -1)
    {
      swift_once();
    }

    v3 = sub_242732244();
    __swift_project_value_buffer(v3, qword_27ECBB708);
    v4 = sub_242732224();
    v5 = sub_2427327C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2426EB000, v4, v5, "Closing stream", v6, 2u);
      MEMORY[0x245D17E30](v6, -1, -1);
    }

    *(v2 + v1) = 6;
  }
}

id sub_2427246D8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AggregateInputStream();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24272479C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB748, &qword_242739AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242724804()
{
  result = qword_27ECBB750;
  if (!qword_27ECBB750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBB750);
  }

  return result;
}

uint64_t sub_242724850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB808, &qword_242739D88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v39 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB838, &qword_242739DC0);
  v11 = *(v41 - 8);
  v13 = MEMORY[0x28223BE20](v41, v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB820, &qword_242739DA0);
  v20 = v19 - 8;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v39 - v26;
  v28 = sub_242731D54();
  (*(*(v28 - 8) + 16))(v27, a2, v28);
  v29 = *(v20 + 48);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
  v31 = *(*(v30 - 8) + 16);
  v39[1] = v30;
  v31(&v27[v29], v40);
  v32 = &v27[*(v20 + 44)];
  v33 = v43;
  *v32 = v42;
  v32[1] = v33;
  (*(v7 + 16))(v10, v44 + *(*v44 + 120), v6);
  sub_2426FC2F8(v27, v24, &qword_27ECBB820, &qword_242739DA0);

  sub_242732744();
  v34 = v10;
  v35 = v41;
  (*(v7 + 8))(v34, v6);
  (*(v11 + 16))(v15, v18, v35);
  v36 = (*(v11 + 88))(v15, v35);
  v37 = *(v11 + 8);
  if (v36 != *MEMORY[0x277D85888])
  {
    v37(v15, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB848, &qword_242739DD0);
    sub_242712710(&qword_27ECBB850, &qword_27ECBB848, &qword_242739DD0, &unk_242738FF0);
    v45 = swift_allocError();
    sub_2427326C4();
  }

  v37(v18, v35);
  return sub_2426FED88(v27, &qword_27ECBB820, &qword_242739DA0);
}

uint64_t sub_242724C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7A0, &qword_242739CF0);
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v7);
  v9 = &v37 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7A8, &qword_242739CF8);
  v10 = *(v37 - 8);
  v12 = MEMORY[0x28223BE20](v37, v11);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B0, &qword_242739D00);
  v18 = v17 - 8;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v37 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v38;
  *(v26 + 24) = a3;
  v27 = *(v18 + 48);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
  v29 = *(*(v28 - 8) + 16);
  v38 = v28;
  v29(&v25[v27], v40);
  *v25 = &unk_242739D10;
  *(v25 + 1) = v26;
  v30 = a4 + *(*a4 + 120);
  v31 = v37;
  v32 = v41;
  (*(v6 + 16))(v9, v30, v41);
  sub_2426FC2F8(v25, v22, &qword_27ECBB7B0, &qword_242739D00);

  sub_242732744();
  v33 = v39;
  (*(v6 + 8))(v9, v32);
  (*(v10 + 16))(v33, v16, v31);
  v34 = (*(v10 + 88))(v33, v31);
  v35 = *(v10 + 8);
  if (v34 != *MEMORY[0x277D85888])
  {
    v35(v33, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7C0, &qword_242739D20);
    sub_242712710(&qword_27ECBB7C8, &qword_27ECBB7C0, &qword_242739D20, &unk_242738FF0);
    v42 = swift_allocError();
    sub_2427326C4();
  }

  v35(v16, v31);
  return sub_2426FED88(v25, &qword_27ECBB7B0, &qword_242739D00);
}

uint64_t sub_242725080(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  result = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v22 - v16;
  if (!*(v4 + 14))
  {
    v18 = *(v6 + 112);
    v19 = sub_242732714();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    (*(v8 + 16))(v12, &v4[v18], v7);
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    (*(v8 + 32))(v21 + v20, v12, v7);
    *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    *(v4 + 14) = sub_242726730(0, 0, v17, a4, v21);
  }

  return result;
}

uint64_t sub_242725294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB820, &qword_242739DA0);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB858, &qword_242739DE8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB860, &qword_242739DF0);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242725400, 0, 0);
}

uint64_t sub_242725400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB810, &qword_242739D90);
  sub_242732764();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_2427254CC;
  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 8);
}

uint64_t sub_2427254CC()
{

  if (v0)
  {
    v1 = sub_2427258E4;
  }

  else
  {
    v1 = sub_2427255DC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2427255DC()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_2426FEBB0(v1, v0[14], &qword_27ECBB820, &qword_242739DA0);
    if (sub_242732724())
    {
      v4 = v0[14];
      sub_2427326F4();
      sub_242731544(&qword_27ECBB7E8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v5 = swift_allocError();
      sub_242732454();
      v0[10] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
      sub_2427326C4();
      sub_2426FED88(v4, &qword_27ECBB820, &qword_242739DA0);
      v6 = swift_task_alloc();
      v0[19] = v6;
      *v6 = v0;
      v6[1] = sub_2427254CC;
      v7 = v0[15];
      v8 = v0[16];

      return MEMORY[0x2822005A8](v7, 0, 0, v8, v0 + 8);
    }

    else
    {
      v9 = (v0[14] + *(v0[12] + 36));
      v12 = (*v9 + **v9);
      v10 = swift_task_alloc();
      v0[20] = v10;
      *v10 = v0;
      v10[1] = sub_242725980;
      v11 = v0[14];

      return v12(v0 + 2, v11);
    }
  }
}

uint64_t sub_2427258E4()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_242725980()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_242725BB8;
  }

  else
  {
    v2 = sub_242725A94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242725A94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v0[5] = v1;
  v0[6] = v2;
  v0[7] = v3;
  sub_2426FC2A4(v1, v2);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
  sub_2427326D4();
  v5 = v0[4];
  sub_2426FBA18(v0[2], v0[3]);

  sub_2426FED88(v0[14], &qword_27ECBB820, &qword_242739DA0);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_2427254CC;
  v7 = v0[15];
  v8 = v0[16];

  return MEMORY[0x2822005A8](v7, 0, 0, v8, v0 + 8);
}

uint64_t sub_242725BB8()
{
  v0[9] = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
  sub_2427326C4();
  sub_2426FED88(v0[14], &qword_27ECBB820, &qword_242739DA0);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_2427254CC;
  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 8);
}

uint64_t sub_242725CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for GBAResult(0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B0, &qword_242739D00);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D8, &qword_242739D48);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7E0, &qword_242739D50);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242725E60, 0, 0);
}

uint64_t sub_242725E60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D0, &qword_242739D28);
  sub_242732764();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_242725F2C;
  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 2);
}

uint64_t sub_242725F2C()
{

  if (v0)
  {
    v1 = sub_242726350;
  }

  else
  {
    v1 = sub_24272603C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24272603C()
{
  v1 = v0[11];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_2426FEBB0(v1, v0[10], &qword_27ECBB7B0, &qword_242739D00);
    if (sub_242732724())
    {
      v4 = v0[10];
      sub_2427326F4();
      sub_242731544(&qword_27ECBB7E8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v5 = swift_allocError();
      sub_242732454();
      v0[4] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
      sub_2427326C4();
      sub_2426FED88(v4, &qword_27ECBB7B0, &qword_242739D00);
      v6 = swift_task_alloc();
      v0[15] = v6;
      *v6 = v0;
      v6[1] = sub_242725F2C;
      v7 = v0[11];
      v8 = v0[12];

      return MEMORY[0x2822005A8](v7, 0, 0, v8, v0 + 2);
    }

    else
    {
      v12 = (*v0[10] + **v0[10]);
      v9 = swift_task_alloc();
      v0[16] = v9;
      *v9 = v0;
      v9[1] = sub_242726408;
      v10 = v0[10];
      v11 = v0[7];

      return v12(v11, v10);
    }
  }
}

uint64_t sub_242726350()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_242726408()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24272662C;
  }

  else
  {
    v2 = sub_24272651C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24272651C()
{
  v1 = v0[7];
  sub_242711D24(v1, v0[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
  sub_2427326D4();
  sub_242711D88(v1);
  sub_2426FED88(v0[10], &qword_27ECBB7B0, &qword_242739D00);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_242725F2C;
  v3 = v0[11];
  v4 = v0[12];

  return MEMORY[0x2822005A8](v3, 0, 0, v4, v0 + 2);
}

uint64_t sub_24272662C()
{
  v0[3] = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
  sub_2427326C4();
  sub_2426FED88(v0[10], &qword_27ECBB7B0, &qword_242739D00);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_242725F2C;
  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 2);
}

uint64_t sub_242726730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_2426FC2F8(a3, v23 - v10, &qword_27ECBAE78, &qword_242739D30);
  v12 = sub_242732714();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2426FED88(v11, &qword_27ECBAE78, &qword_242739D30);
  }

  else
  {
    sub_242732704();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2427326B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_242732524() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2426FED88(a3, &qword_27ECBAE78, &qword_242739D30);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2426FED88(a3, &qword_27ECBAE78, &qword_242739D30);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2427269DC()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB758);
  v1 = __swift_project_value_buffer(v0, qword_27ECBB758);
  if (qword_27ECBA9A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECBF910);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_242726AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v4[6] = swift_task_alloc();
  v5 = sub_242731D54();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242726BA0, v3, 0);
}

uint64_t sub_242726BA0()
{
  v1 = v0[6];
  sub_242716F70(v0[9]);
  sub_242731D34();
  v2 = sub_242731F34();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_2426FED88(v0[6], &qword_27ECBAB20, &unk_242737540);
LABEL_7:
    sub_242718A7C();
    swift_allocError();
    *v16 = xmmword_242739AC0;
    swift_willThrow();
    (*(v0[8] + 8))(v0[9], v0[7]);

    v17 = v0[1];

    return v17();
  }

  v6 = sub_242731ED4();
  v8 = v7;
  v0[10] = v7;
  (*(v3 + 8))(v5, v2);
  if (!v8)
  {
    goto LABEL_7;
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  v12 = swift_allocObject();
  v0[11] = v12;
  v12[2] = v9;
  v12[3] = v6;
  v12[4] = v8;
  v12[5] = v11;
  v12[6] = v10;

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_242726E30;
  v14 = v0[9];

  return sub_242728098(v14, v6, v8, &unk_242739E28, v12);
}

uint64_t sub_242726E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v8[13] = v3;

  v9 = v8[5];

  if (v3)
  {
    v10 = sub_242727048;
  }

  else
  {
    v8[14] = a3;
    v8[15] = a2;
    v8[16] = a1;
    v10 = sub_242726FB8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_242726FB8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  return v1(v2, v3, v4);
}

uint64_t sub_242727048()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2427270D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_242731C90;

  return sub_242728BA8(a1, a3, a4, a5, a6);
}

uint64_t sub_2427271A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_242731F34();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v3[9] = swift_task_alloc();
  v6 = sub_242731D54();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242727304, v2, 0);
}

uint64_t sub_242727304()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  sub_242716F70(v0[12]);
  sub_242731D34();
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[9];
  if (v4 == 1)
  {
    sub_2426FED88(v0[9], &qword_27ECBAB20, &unk_242737540);
LABEL_7:
    sub_242718A7C();
    swift_allocError();
    *v20 = xmmword_242739AC0;
    swift_willThrow();
    (*(v0[11] + 8))(v0[12], v0[10]);

    v21 = v0[1];

    return v21();
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = sub_242731ED4();
  v10 = v9;
  v0[13] = v9;
  (*(v7 + 8))(v5, v6);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];
  (*(v13 + 16))(v11, v0[3], v12);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  v0[14] = v16;
  *(v16 + 16) = v14;
  (*(v13 + 32))(v16 + v15, v11, v12);

  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_2427275AC;
  v18 = v0[12];

  return sub_242728098(v18, v8, v10, &unk_242739E18, v16);
}

uint64_t sub_2427275AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v8[16] = v3;

  v9 = v8[4];

  if (v3)
  {
    v10 = sub_2427277DC;
  }

  else
  {
    v8[17] = a3;
    sub_2426FBA18(a1, a2);
    v10 = sub_24272773C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24272773C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];
  v2 = v0[17];

  return v1(v2);
}

uint64_t sub_2427277DC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_242727878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_242727924;

  return sub_24272BE48(a1, a3);
}

uint64_t sub_242727924(uint64_t a1)
{
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v4 = 0;
    v5 = 0xC000000000000000;
    v6 = a1;
  }

  return v7(v4, v5, v6);
}

uint64_t sub_242727A2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v2[4] = swift_task_alloc();
  v3 = sub_242731D54();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242727B24, v1, 0);
}

uint64_t sub_242727B24()
{
  v1 = v0[4];
  sub_242716F70(v0[7]);
  sub_242731D34();
  v2 = sub_242731F34();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[4];
  if (v4 == 1)
  {
    sub_2426FED88(v0[4], &qword_27ECBAB20, &unk_242737540);
LABEL_7:
    sub_242718A7C();
    swift_allocError();
    *v13 = xmmword_242739AC0;
    swift_willThrow();
    (*(v0[6] + 8))(v0[7], v0[5]);

    v14 = v0[1];

    return v14();
  }

  v6 = sub_242731ED4();
  v8 = v7;
  v0[8] = v7;
  (*(v3 + 8))(v5, v2);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_242727D68;
  v10 = v0[7];
  v11 = v0[3];

  return sub_242728098(v10, v6, v8, &unk_242739E08, v11);
}

uint64_t sub_242727D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v8[10] = v3;

  v9 = v8[3];

  if (v3)
  {
    v10 = sub_242727F70;
  }

  else
  {
    v8[11] = a3;
    v8[12] = a2;
    v8[13] = a1;
    v10 = sub_242727EE0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_242727EE0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  return v1(v2, v3, v4);
}

uint64_t sub_242727F70()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_242728000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2426ECBC0;

  return sub_24272D4E4(a1);
}

uint64_t sub_242728098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB800, &qword_242739D80);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB808, &qword_242739D88);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB810, &qword_242739D90);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272823C, v5, 0);
}

uint64_t sub_24272823C()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 304);
  if (*(v2 + 16))
  {
    v4 = v0[12];
    v3 = v0[13];

    v5 = sub_242704184(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);
      swift_retain_n();

      goto LABEL_6;
    }
  }

  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[22];
  v19 = v0[23];
  v20 = v0[21];
  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[17];
  v21 = v0[20];
  v22 = v0[13];
  v23 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB818, &qword_242739D98);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB820, &qword_242739DA0);
  (*(v11 + 104))(v12, *MEMORY[0x277D858A0], v13);
  sub_242732734();
  (*(v11 + 8))(v12, v13);
  (*(v8 + 32))(&v7[*(*v7 + 112)], v9, v19);
  (*(v20 + 32))(&v7[*(*v7 + 120)], v10, v21);
  swift_beginAccess();
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v1 + 304);
  *(v1 + 304) = 0x8000000000000000;
  sub_242730648(v7, v23, v22, isUniquelyReferenced_nonNull_native);

  *(v1 + 304) = v24;
  swift_endAccess();
LABEL_6:
  v0[26] = v7;
  v0[27] = v7;
  v16 = v0[14];
  v15 = v0[15];
  v17 = swift_allocObject();
  v0[28] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;

  return MEMORY[0x2822009F8](sub_2427284E8, v7, 0);
}

uint64_t sub_2427284E8()
{
  v1 = *(v0 + 88);
  v8 = *(v0 + 216);
  sub_242725080(&qword_27ECBB810, &qword_242739D90, &unk_2855028C8, &unk_242739DE0);
  v2 = sub_242712710(&qword_27ECBB828, &qword_27ECBB818, &qword_242739D98, &unk_242738F48);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  v3[1].i64[0] = v1;
  v3[1].i64[1] = &unk_242739DB0;
  v3[2] = vextq_s8(v8, v8, 8uLL);
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB830, &qword_242739DB8);
  *v4 = v0;
  v4[1] = sub_242728684;
  v6 = *(v0 + 208);

  return MEMORY[0x2822008A0](v0 + 64, v6, v2, 0xD000000000000017, 0x80000002427343F0, sub_24273170C, v3, v5);
}

uint64_t sub_242728684()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = sub_242728874;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_2427287C8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2427287C8()
{

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];

  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t sub_242728874()
{
  v1 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_2427288FC, v1, 0);
}

uint64_t sub_2427288FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24272898C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_242728A84;

  return v7(a2);
}

uint64_t sub_242728A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_242728BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  v7 = sub_242732034();
  v6[45] = v7;
  v6[46] = *(v7 - 8);
  v6[47] = swift_task_alloc();
  v8 = sub_242731D54();
  v6[48] = v8;
  v6[49] = *(v8 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242728CFC, v5, 0);
}

uint64_t sub_242728CFC()
{
  v50 = v0;
  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[39];
  v7 = sub_242732244();
  v0[55] = __swift_project_value_buffer(v7, qword_27ECBB758);
  v8 = *(v5 + 16);
  v8(v2, v6, v4);
  v8(v1, v6, v4);
  v8(v3, v6, v4);
  v9 = sub_242732224();
  v10 = sub_2427327B4();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[53];
  v12 = v0[54];
  v14 = v0[52];
  v16 = v0[48];
  v15 = v0[49];
  if (v11)
  {
    v46 = v10;
    log = v9;
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v17 = 136315650;
    v18 = sub_242731CB4();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 5522759;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = *(v15 + 8);
    v22(v12, v16);
    v23 = sub_2426FBA6C(v20, v21, &v49);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v24 = sub_242732AD4();
    v26 = v25;
    v22(v13, v16);
    v27 = sub_2426FBA6C(v24, v26, &v49);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    v28 = sub_242731D04();
    if (!v28)
    {
      v28 = sub_242730F50(MEMORY[0x277D84F90]);
    }

    v29 = v0[52];
    v30 = v0[48];
    v0[38] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB770, &qword_242739CB0);
    v31 = sub_242732514();
    v33 = v32;
    v22(v29, v30);
    v34 = sub_2426FBA6C(v31, v33, &v49);

    *(v17 + 24) = v34;
    _os_log_impl(&dword_2426EB000, log, v46, "Sending upload: %s %s: %s ", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v45, -1, -1);
    MEMORY[0x245D17E30](v17, -1, -1);
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
    v22(v13, v16);
    v22(v12, v16);
  }

  v0[56] = v22;
  v35 = v0[44];
  v36 = type metadata accessor for ManualAuthTaskDelegate();
  v0[57] = v36;
  v37 = [objc_allocWithZone(v36) init];
  v0[58] = v37;
  v38 = v35[26];
  v39 = v35[27];
  __swift_project_boxed_opaque_existential_1(v35 + 23, v38);
  v40 = *(v39 + 8);
  v41 = v37;
  v47 = (v40 + *v40);
  v42 = swift_task_alloc();
  v0[59] = v42;
  *v42 = v0;
  v42[1] = sub_2427291A0;
  v43 = v0[39];

  return v47(v43, v37, v38, v39);
}

uint64_t sub_2427291A0(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 480) = v3;

  if (v3)
  {
    v9 = *(v8 + 352);
    v10 = sub_24272A360;
  }

  else
  {
    v11 = *(v8 + 464);
    v12 = *(v8 + 352);
    sub_2426FBA18(a1, a2);

    v10 = sub_2427292F4;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2427292F4()
{
  v1 = *(v0 + 464);
  v2 = sub_242732224();
  v3 = sub_2427327C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 464);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v4 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_2426EB000, v2, v3, "%@", v5, 0xCu);
    sub_2426FED88(v6, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v6, -1, -1);
    MEMORY[0x245D17E30](v5, -1, -1);
  }

  v9 = *(v0 + 464);

  v10 = *(v9 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task);
  *(v0 + 488) = v10;
  if (v10)
  {
    v11 = v10;
    v12 = sub_242732224();
    v13 = sub_2427327B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2426EB000, v12, v13, "Processing initial upload response", v14, 2u);
      MEMORY[0x245D17E30](v14, -1, -1);
    }

    v15 = *(v0 + 464);

    v16 = *(v15 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
    *(v0 + 496) = v16;
    v17 = v16;
    v18 = swift_task_alloc();
    *(v0 + 504) = v18;
    *v18 = v0;
    v18[1] = sub_242729658;

    return sub_24272ADE8(v0 + 16, v11, v16);
  }

  else
  {
    v20 = sub_242732224();
    v21 = sub_2427327D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2426EB000, v20, v21, "Initial upload request completed, but task was never set", v22, 2u);
      MEMORY[0x245D17E30](v22, -1, -1);
    }

    v23 = *(v0 + 464);

    sub_242718A7C();
    swift_allocError();
    *v24 = xmmword_242739AD0;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_242729658()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = sub_24272A770;
  }

  else
  {
    v5 = *(v2 + 352);

    v4 = sub_242729780;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_242729780(uint64_t a1)
{
  v38 = v1;
  v2 = sub_242732224();
  v3 = sub_2427327B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2426EB000, v2, v3, "Proceeding with upload after processing initial response", v4, 2u);
    MEMORY[0x245D17E30](v4, -1, -1);
  }

  v5 = *(v1 + 512);
  v6 = *(v1 + 336);
  v7 = *(v1 + 312);

  v6(v7);
  if (v5)
  {
    v8 = v5;
    v9 = v5;
    v10 = sub_242732224();
    v11 = sub_2427327D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v8;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_2426EB000, v10, v11, "Unable to construct final request: %@", v12, 0xCu);
      sub_2426FED88(v13, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v13, -1, -1);
      MEMORY[0x245D17E30](v12, -1, -1);
    }

    v16 = *(v1 + 488);
    v17 = *(v1 + 464);

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

    v18 = *(v1 + 8);

    return v18();
  }

  else
  {
    (*(*(v1 + 392) + 32))(*(v1 + 408), *(v1 + 400), *(v1 + 384));
    v20 = *(v1 + 40);
    v21 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v20);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    sub_242731D44();

    v25 = sub_242732224();
    v26 = sub_2427327C4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      v29 = sub_2426FBA6C(v22, v24, &v37);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_2426EB000, v25, v26, "Auth Response: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x245D17E30](v28, -1, -1);
      MEMORY[0x245D17E30](v27, -1, -1);
    }

    else
    {
    }

    v30 = *(v1 + 352);
    v31 = [objc_allocWithZone(*(v1 + 456)) init];
    *(v1 + 520) = v31;
    v32 = v30[26];
    v33 = v30[27];
    __swift_project_boxed_opaque_existential_1(v30 + 23, v32);
    v36 = (*(v33 + 8) + **(v33 + 8));
    v34 = swift_task_alloc();
    *(v1 + 528) = v34;
    *v34 = v1;
    v34[1] = sub_242729C54;
    v35 = *(v1 + 408);

    return v36(v35, v31, v32, v33);
  }
}

uint64_t sub_242729C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[27] = v4;
  v6[28] = a1;
  v6[29] = a2;
  v6[30] = a3;
  v6[31] = v3;
  v6[67] = a3;
  v6[68] = v3;

  v7 = v5[44];
  if (v3)
  {
    v8 = sub_24272A82C;
  }

  else
  {
    v8 = sub_242729D90;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_242729D90()
{
  v33 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v8 = *(v0 + 488);
    v9 = *(v0 + 464);
    v10 = *(v0 + 448);
    v11 = *(v0 + 408);
    v12 = *(v0 + 384);

    v10(v11, v12);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = *(v0 + 536);
  if ([v2 statusCode] == 200)
  {
    v4 = *(v0 + 536);
    v5 = *(v0 + 520);
    v6 = *(v0 + 488);
    v7 = *(v0 + 464);
    (*(v0 + 448))(*(v0 + 408), *(v0 + 384));

LABEL_12:
    v29 = *(v0 + 224);
    v28 = *(v0 + 232);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v30 = *(v0 + 8);
    v31 = *(v0 + 536);

    return v30(v29, v28, v31);
  }

  v13 = sub_242732224();
  v14 = sub_2427327D4();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2426FBA6C(v16, v15, &v32);
    _os_log_impl(&dword_2426EB000, v13, v14, "Failed to authenticate while perfoming upload, clearing out credentials for host %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x245D17E30](v18, -1, -1);
    MEMORY[0x245D17E30](v17, -1, -1);
  }

  v19 = *(v0 + 352);
  swift_beginAccess();
  sub_2426FC2F8(v19 + 312, v0 + 136, &qword_27ECBB780, &qword_242739CC0);
  if (!*(v0 + 160))
  {
    sub_2426FED88(v0 + 136, &qword_27ECBB780, &qword_242739CC0);
    v22 = *(v0 + 536);
    v23 = *(v0 + 520);
    v24 = *(v0 + 464);
    v25 = *(v0 + 448);
    v26 = *(v0 + 408);
    v27 = *(v0 + 384);

    v25(v26, v27);
    goto LABEL_12;
  }

  sub_2426F0FFC(v0 + 136, v0 + 176);
  sub_2426FED88(v0 + 136, &qword_27ECBB780, &qword_242739CC0);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  v20 = swift_task_alloc();
  *(v0 + 552) = v20;
  *v20 = v0;
  v20[1] = sub_24272A138;

  return sub_24270B434();
}

uint64_t sub_24272A138()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x2822009F8](sub_24272A248, v1, 0);
}

uint64_t sub_24272A248()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 408);
  v6 = *(v0 + 384);

  v4(v5, v6);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v9 = *(v0 + 8);
  v10 = *(v0 + 536);

  return v9(v8, v7, v10);
}

uint64_t sub_24272A360()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);

  v5 = v1;
  sub_242732044();
  sub_242731544(&qword_27ECBB7F8, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AC0]);
  v6 = sub_242731E34();

  (*(v3 + 8))(v2, v4);
  if (v6)
  {

    v7 = *(v0 + 464);
    v8 = sub_242732224();
    v9 = sub_2427327C4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 464);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = *(v10 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
      *(v11 + 4) = v13;
      *v12 = v13;
      v14 = v13;
      _os_log_impl(&dword_2426EB000, v8, v9, "%@", v11, 0xCu);
      sub_2426FED88(v12, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v12, -1, -1);
      MEMORY[0x245D17E30](v11, -1, -1);
    }

    v15 = *(v0 + 464);

    v16 = *(v15 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task);
    *(v0 + 488) = v16;
    if (v16)
    {
      v17 = v16;
      v18 = sub_242732224();
      v19 = sub_2427327B4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2426EB000, v18, v19, "Processing initial upload response", v20, 2u);
        MEMORY[0x245D17E30](v20, -1, -1);
      }

      v21 = *(v0 + 464);

      v22 = *(v21 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
      *(v0 + 496) = v22;
      v23 = v22;
      v24 = swift_task_alloc();
      *(v0 + 504) = v24;
      *v24 = v0;
      v24[1] = sub_242729658;

      return sub_24272ADE8(v0 + 16, v17, v22);
    }

    v26 = sub_242732224();
    v27 = sub_2427327D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2426EB000, v26, v27, "Initial upload request completed, but task was never set", v28, 2u);
      MEMORY[0x245D17E30](v28, -1, -1);
    }

    v29 = *(v0 + 464);

    sub_242718A7C();
    swift_allocError();
    *v30 = xmmword_242739AD0;
    swift_willThrow();
  }

  else
  {
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_24272A770()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24272A82C(uint64_t a1)
{
  v27 = v1;
  v2 = v1[65];
  if (*&v2[OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse])
  {

    v3 = sub_242732224();
    v4 = sub_2427327D4();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v1[40];
      v5 = v1[41];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2426FBA6C(v6, v5, &v26);
      _os_log_impl(&dword_2426EB000, v3, v4, "Server responded with authentication challenge, clearing out stale credentials for host %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x245D17E30](v8, -1, -1);
      MEMORY[0x245D17E30](v7, -1, -1);
    }

    v9 = v1[44];
    swift_beginAccess();
    sub_2426FC2F8(v9 + 312, (v1 + 7), &qword_27ECBB780, &qword_242739CC0);
    if (v1[10])
    {
      sub_2426F0FFC((v1 + 7), (v1 + 12));
      sub_2426FED88((v1 + 7), &qword_27ECBB780, &qword_242739CC0);
      __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
      v10 = swift_task_alloc();
      v1[70] = v10;
      *v10 = v1;
      v10[1] = sub_24272AB98;

      return sub_24270B434();
    }

    sub_2426FED88((v1 + 7), &qword_27ECBB780, &qword_242739CC0);
    v17 = v1[68];
    v18 = v1[65];
    v19 = v1[61];
    v20 = v1[58];
    v25 = v1[56];
    v21 = v1[51];
    v22 = v1[48];
    sub_242718A7C();
    swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    swift_willThrow();

    v25(v21, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  }

  else
  {
    v12 = v1[61];
    v13 = v1[58];
    v14 = v1[56];
    v15 = v1[51];
    v16 = v1[48];
    swift_willThrow();

    v14(v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  }

  v24 = v1[1];

  return v24();
}

uint64_t sub_24272AB98()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x2822009F8](sub_24272ACA8, v1, 0);
}

uint64_t sub_24272ACA8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[61];
  v4 = v0[58];
  v10 = v0[56];
  v5 = v0[51];
  v6 = v0[48];
  sub_242718A7C();
  swift_allocError();
  *v7 = 0;
  v7[1] = 0;
  swift_willThrow();

  v10(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24272ADE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[71] = v3;
  v4[70] = a3;
  v4[69] = a2;
  v4[68] = a1;
  v5 = sub_242731D54();
  v4[72] = v5;
  v4[73] = *(v5 - 8);
  v4[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272AEB4, v3, 0);
}

uint64_t sub_24272AEB4()
{
  v1 = [*(v0 + 552) originalRequest];
  if (!v1)
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 552);
    v19 = sub_242732244();
    __swift_project_value_buffer(v19, qword_27ECBB758);
    v20 = v18;
    v21 = sub_242732224();
    v22 = sub_2427327D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 552);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v23;
      *v25 = v23;
      v26 = v23;
      _os_log_impl(&dword_2426EB000, v21, v22, "Unable to retrieve original request when attempting to authenticate: %@", v24, 0xCu);
      sub_2426FED88(v25, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v25, -1, -1);
      MEMORY[0x245D17E30](v24, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v27 = xmmword_242739AD0;
    swift_willThrow();
    goto LABEL_20;
  }

  v2 = *(v0 + 560);
  v3 = v1;
  sub_242731D14();

  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = *(v0 + 560);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  *(v0 + 600) = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = v4;
  if ([v6 statusCode] != 401)
  {

LABEL_15:
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 552);
    v29 = sub_242732244();
    __swift_project_value_buffer(v29, qword_27ECBB758);
    v30 = v28;
    v31 = sub_242732224();
    v32 = sub_2427327D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 552);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = [v33 response];
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&dword_2426EB000, v31, v32, "Unexpected response when attempting to authenticate: %@", v34, 0xCu);
      sub_2426FED88(v35, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v35, -1, -1);
      MEMORY[0x245D17E30](v34, -1, -1);
    }

    v37 = *(v0 + 592);
    v38 = *(v0 + 584);
    v39 = *(v0 + 576);

    sub_242718A7C();
    swift_allocError();
    *v40 = 0;
    v40[1] = 0;
    swift_willThrow();
    (*(v38 + 8))(v37, v39);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = sub_242700704(v6);
  *(v0 + 608) = v9;
  *(v0 + 616) = v10;
  *(v0 + 81) = v11;
  if (v11 != -1)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v15 = swift_task_alloc();
    *(v0 + 624) = v15;
    *v15 = v0;
    v15[1] = sub_24272B438;
    v16 = *(v0 + 552);

    return sub_24272F9A4(v16, v12, v13, v14);
  }

  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v42 = sub_242732244();
  __swift_project_value_buffer(v42, qword_27ECBB758);
  v43 = sub_242732224();
  v44 = sub_2427327D4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2426EB000, v43, v44, "Unable to retrieve auth scheme from HTTP response", v45, 2u);
    MEMORY[0x245D17E30](v45, -1, -1);
  }

  v46 = *(v0 + 592);
  v47 = *(v0 + 584);
  v48 = *(v0 + 576);

  sub_242718A7C();
  swift_allocError();
  *v49 = 0;
  v49[1] = 0;
  swift_willThrow();

  (*(v47 + 8))(v46, v48);
LABEL_20:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_24272B438(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 632) = a1;
  *(v3 + 640) = v1;

  if (v1)
  {
    v4 = *(v3 + 568);
    sub_242705380(*(v3 + 608), *(v3 + 616), *(v3 + 81));
    v5 = sub_24272BDB0;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 568);
    v5 = sub_24272B56C;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_24272B56C()
{
  v95 = v0;
  v1 = [*(v0 + 632) user];
  if (!v1)
  {
    sub_242705380(*(v0 + 608), *(v0 + 616), *(v0 + 81));
LABEL_11:
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 632);
    v33 = sub_242732244();
    __swift_project_value_buffer(v33, qword_27ECBB758);
    v34 = v32;
    v35 = sub_242732224();
    v36 = sub_2427327D4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 632);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v37;
      *v39 = v37;
      v40 = v37;
      _os_log_impl(&dword_2426EB000, v35, v36, "URL credential missing username/password: %@", v38, 0xCu);
      sub_2426FED88(v39, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v39, -1, -1);
      MEMORY[0x245D17E30](v38, -1, -1);
    }

    v41 = *(v0 + 632);
    v42 = *(v0 + 592);
    v43 = *(v0 + 584);
    v44 = *(v0 + 576);
    v45 = *(v0 + 560);

    sub_242718A7C();
    swift_allocError();
    *v46 = xmmword_242739AE0;
    goto LABEL_16;
  }

  v2 = *(v0 + 632);
  v3 = v1;
  v4 = sub_2427324B4();
  v6 = v5;

  v7 = [v2 password];
  v8 = *(v0 + 81);
  if (!v7)
  {
    sub_242705380(*(v0 + 608), *(v0 + 616), *(v0 + 81));

    goto LABEL_11;
  }

  v9 = v7;
  v10 = sub_2427324B4();
  v12 = v11;

  v13 = *(v0 + 616);
  v14 = *(v0 + 608);
  v88 = v10;
  if (v8 < 2)
  {
    v15 = *(v0 + 600);
    v16 = *(v0 + 560);
    sub_242705380(v14, v13, *(v0 + 81));
    v17 = v16;
    sub_24271C824(v15, v0 + 16);
    v91 = *(v0 + 48);
    v92 = *(v0 + 64);
    v93 = *(v0 + 80);
    v89 = *(v0 + 16);
    v90 = *(v0 + 32);
    if (*(v0 + 24))
    {
      v83 = *(v0 + 24);
      v18 = *(v0 + 16);
      v19 = *(v0 + 48);
      *(v0 + 448) = *(v0 + 32);
      *(v0 + 464) = v19;
      *(v0 + 480) = *(v0 + 64);
      *(v0 + 496) = *(v0 + 80);
      if (qword_27ECBA9C0 != -1)
      {
        swift_once();
      }

      v86 = v4;
      v20 = sub_242732244();
      __swift_project_value_buffer(v20, qword_27ECBB758);
      v21 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      v22 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v22;
      *(v0 + 152) = *(v0 + 80);
      *(v0 + 88) = v21;
      sub_2427126B4(v0 + 88, v0 + 160);
      v23 = sub_242732224();
      v24 = sub_2427327C4();
      sub_2426FED88(v0 + 16, &qword_27ECBB128, &qword_2427387B0);
      v81 = v18;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v94 = v26;
        *v25 = 136315138;
        *(v0 + 304) = v18;
        v27 = v83;
        *(v0 + 312) = v83;
        v28 = *(v0 + 464);
        *(v0 + 320) = *(v0 + 448);
        *(v0 + 336) = v28;
        *(v0 + 352) = *(v0 + 480);
        *(v0 + 368) = *(v0 + 496);
        *(v0 + 264) = v91;
        *(v0 + 280) = v92;
        *(v0 + 296) = v93;
        *(v0 + 232) = v89;
        *(v0 + 248) = v90;
        sub_2427126B4(v0 + 232, v0 + 376);
        v29 = sub_242732514();
        v31 = sub_2426FBA6C(v29, v30, &v94);

        *(v25 + 4) = v31;
        _os_log_impl(&dword_2426EB000, v23, v24, "Auth Info: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x245D17E30](v26, -1, -1);
        MEMORY[0x245D17E30](v25, -1, -1);
      }

      else
      {

        v27 = v83;
      }

      v85 = *(v0 + 632);
      v63 = *(v0 + 592);
      v64 = *(v0 + 584);
      v65 = *(v0 + 576);
      v80 = *(v0 + 560);
      v66 = *(v0 + 544);
      v67 = sub_242709A44(v88, v12);
      v69 = v68;
      *(v0 + 528) = v65;
      *(v0 + 536) = &off_285502158;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 504));
      (*(v64 + 16))(boxed_opaque_existential_1, v63, v65);
      v66[3] = &type metadata for HTTPDigestAuthenticateResponse;
      v66[4] = &off_2855011A8;
      v71 = swift_allocObject();
      *v66 = v71;
      *(v71 + 16) = v81;
      *(v71 + 24) = v27;
      v72 = *(v0 + 464);
      *(v71 + 32) = *(v0 + 448);
      *(v71 + 48) = v72;
      *(v71 + 64) = *(v0 + 480);
      *(v71 + 80) = *(v0 + 496);
      *(v71 + 88) = v86;
      *(v71 + 96) = v6;
      *(v71 + 104) = v67;
      *(v71 + 112) = v69;
      sub_2426F0FFC(v0 + 504, v71 + 120);
      *(v71 + 160) = 1;
      sub_2426FC2A4(v67, v69);
      v73 = sub_24271EF0C(8, 0, 0xE000000000000000);
      v75 = v74;
      sub_2426FBA18(v67, v69);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));

      *(v71 + 168) = v73;
      *(v71 + 176) = v75;
      (*(v64 + 8))(v63, v65);
      goto LABEL_25;
    }

    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v58 = sub_242732244();
    __swift_project_value_buffer(v58, qword_27ECBB758);
    v59 = sub_242732224();
    v60 = sub_2427327D4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2426EB000, v59, v60, "Unable to parse authenticate header", v61, 2u);
      MEMORY[0x245D17E30](v61, -1, -1);
    }

    v41 = *(v0 + 632);
    v42 = *(v0 + 592);
    v43 = *(v0 + 584);
    v44 = *(v0 + 576);
    v45 = *(v0 + 560);

    sub_242718A7C();
    swift_allocError();
    *v62 = 0;
    v62[1] = 0;
LABEL_16:
    swift_willThrow();

    (*(v43 + 8))(v42, v44);

    v47 = *(v0 + 8);
    goto LABEL_26;
  }

  v84 = *(v0 + 592);
  v48 = *(v0 + 584);
  v79 = *(v0 + 632);
  v82 = *(v0 + 576);
  v78 = *(v0 + 560);
  v49 = *(v0 + 544);

  MEMORY[0x245D17090](58, 0xE100000000000000);
  v77 = v6;
  v87 = v4;

  MEMORY[0x245D17090](v10, v12);

  v50 = sub_242709A44(v4, v6);
  v52 = v51;
  v53 = sub_242731FB4();
  v54 = v12;
  v56 = v55;
  sub_2426FBA18(v50, v52);
  v49[3] = &type metadata for HTTPBasicAuthenticateResponse;
  v49[4] = &off_285502620;
  v57 = swift_allocObject();
  *v49 = v57;
  sub_242705380(v14, v13, 2u);

  v57[2] = v53;
  v57[3] = v56;
  v57[4] = v87;
  v57[5] = v77;
  v57[6] = v88;
  v57[7] = v54;
  (*(v48 + 8))(v84, v82);
LABEL_25:

  v47 = *(v0 + 8);
LABEL_26:

  return v47();
}

uint64_t sub_24272BDB0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24272BE48(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v3[8] = swift_task_alloc();
  v4 = sub_242731F34();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_242731D54();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272C004, v2, 0);
}

uint64_t sub_24272C004()
{
  v119 = v0;
  v118[1] = *MEMORY[0x277D85DE8];
  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v112 = v0[17];
  logb = v0[16];
  v3 = v0[14];
  v109 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v8 = sub_242732244();
  __swift_project_value_buffer(v8, qword_27ECBB758);
  v9 = *(v2 + 16);
  v9(v1, v7, v3);
  v10 = *(v4 + 16);
  v10(v109, v6, v5);
  v9(v112, v7, v3);
  v9(logb, v7, v3);
  v11 = sub_242732224();
  v12 = sub_2427327B4();
  log = v11;
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[14];
  v110 = v0[17];
  v113 = v0[13];
  v19 = v0[9];
  v18 = v0[10];
  if (v13)
  {
    v105 = v12;
    v106 = v10;
    v20 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v118[0] = v104;
    *v20 = 136315906;
    v21 = sub_242731CB4();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 5522759;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = *(v15 + 8);
    v25(v14, v17);
    v26 = sub_2426FBA6C(v23, v24, v118);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    sub_242731544(&qword_27ECBAB60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = sub_242732AD4();
    v28 = v19;
    v29 = v27;
    v31 = v30;
    v32 = *(v18 + 8);
    v32(v113, v28);
    v33 = sub_2426FBA6C(v29, v31, v118);

    *(v20 + 14) = v33;
    *(v20 + 22) = 2080;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v34 = sub_242732AD4();
    v36 = v35;
    v37 = v25;
    v25(v110, v17);
    v38 = sub_2426FBA6C(v34, v36, v118);

    *(v20 + 24) = v38;
    *(v20 + 32) = 2080;
    v39 = sub_242731D04();
    if (!v39)
    {
      v39 = sub_242730F50(MEMORY[0x277D84F90]);
    }

    v40 = v0[16];
    v41 = v0[14];
    v0[4] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB770, &qword_242739CB0);
    v42 = sub_242732514();
    v44 = v43;
    v37(v40, v41);
    v45 = sub_2426FBA6C(v42, v44, v118);

    *(v20 + 34) = v45;
    _os_log_impl(&dword_2426EB000, log, v105, "Downloading file: %s [dest: %s] %s: %s ", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v104, -1, -1);
    MEMORY[0x245D17E30](v20, -1, -1);

    v10 = v106;
  }

  else
  {

    v46 = *(v15 + 8);
    v46(v16, v17);
    v46(v110, v17);
    v32 = *(v18 + 8);
    v32(v113, v19);
    v46(v14, v17);
  }

  v47 = v0[9];
  v48 = v0[10];
  v49 = v0[8];
  sub_242731D34();
  if ((*(v48 + 48))(v49, 1, v47) == 1)
  {
    sub_2426FED88(v0[8], &qword_27ECBAB20, &unk_242737540);
LABEL_19:
    sub_242718A7C();
    swift_allocError();
    *v74 = xmmword_242739AC0;
    swift_willThrow();

    v75 = v0[1];

    return v75();
  }

  v50 = v0[9];
  v51 = v0[8];
  v52 = sub_242731ED4();
  v54 = v53;
  v32(v51, v50);
  if (!v54)
  {
    goto LABEL_19;
  }

  v114 = v54;
  loga = v52;
  v55 = v0[12];
  v56 = v0[9];
  v58 = v0[6];
  v57 = v0[7];
  v59 = v0[5];
  v60 = v57[26];
  v61 = v57[27];
  __swift_project_boxed_opaque_existential_1(v57 + 23, v60);
  v111 = (*(v61 + 24))(v59, v60, v61);
  v0[19] = v111;
  v10(v55, v58, v56);
  v62 = sub_242732224();
  v63 = sub_2427327C4();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v0[12];
  v66 = v0[9];
  v107 = v32;
  if (v64)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v118[0] = v68;
    *v67 = 136315138;
    sub_242731544(&qword_27ECBAB60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v69 = sub_242732AD4();
    v70 = v32;
    v72 = v71;
    v70(v65, v66);
    v73 = sub_2426FBA6C(v69, v72, v118);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_2426EB000, v62, v63, "Attempting to remove pre-existing destination file: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x245D17E30](v68, -1, -1);
    MEMORY[0x245D17E30](v67, -1, -1);
  }

  else
  {

    v32(v65, v66);
  }

  v77 = [objc_opt_self() defaultManager];
  v78 = sub_242731EA4();
  v0[2] = 0;
  v79 = [v77 removeItemAtURL:v78 error:v0 + 2];

  v80 = v0[2];
  if (v79)
  {
    v81 = v80;
  }

  else
  {
    v82 = v0[11];
    v83 = v0[9];
    v84 = v0[6];
    v85 = v80;
    v86 = sub_242731E64();

    swift_willThrow();
    v10(v82, v84, v83);
    v87 = v86;
    v77 = sub_242732224();
    v88 = sub_2427327C4();

    v89 = os_log_type_enabled(v77, v88);
    v90 = v0[11];
    v91 = v0[9];
    if (!v89)
    {

      v107(v90, v91);
      goto LABEL_29;
    }

    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v118[0] = v108;
    *v92 = 136315394;
    sub_242731544(&qword_27ECBAB60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v94 = sub_242732AD4();
    v96 = v95;
    v107(v90, v91);
    v97 = sub_2426FBA6C(v94, v96, v118);

    *(v92 + 4) = v97;
    *(v92 + 12) = 2112;
    v98 = v86;
    v99 = _swift_stdlib_bridgeErrorToNSError();
    *(v92 + 14) = v99;
    *v93 = v99;
    _os_log_impl(&dword_2426EB000, v77, v88, "Failed to remove pre-exisiting destination file %s: %@", v92, 0x16u);
    sub_2426FED88(v93, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v93, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    MEMORY[0x245D17E30](v108, -1, -1);
    MEMORY[0x245D17E30](v92, -1, -1);
  }

LABEL_29:
  v100 = v0[7];
  v101 = v111;
  sub_242731EF4();
  v102 = sub_242732484();

  [v101 set:v102 pathToDownloadTaskFile:?];

  v103 = swift_allocObject();
  v0[20] = v103;
  v103[2] = v100;
  v103[3] = loga;
  v103[4] = v114;

  return MEMORY[0x2822009F8](sub_24272CAD0, 0, 0);
}

uint64_t sub_24272CAD0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = swift_task_alloc();
  v0[21] = v3;
  v3[2] = v2;
  v3[3] = &unk_242739D68;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  v5 = sub_242718568();
  *v4 = v0;
  v4[1] = sub_24272CC0C;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD00000000000001BLL, 0x80000002427343D0, sub_242731538, v3, v5);
}

uint64_t sub_24272CC0C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24272CEF0;
  }

  else
  {

    v2 = sub_24272CD5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24272CD5C()
{
  v1 = v0[7];

  v0[24] = v0[3];

  return MEMORY[0x2822009F8](sub_24272CDFC, v1, 0);
}

uint64_t sub_24272CDFC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_24272CEF0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_24272CF98, v1, 0);
}

uint64_t sub_24272CF98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24272D088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 192) = a4;
  *(v8 + 128) = a2;
  *(v8 + 136) = a3;
  *(v8 + 120) = a1;
  return MEMORY[0x2822009F8](sub_24272D0B8, a6, 0);
}

uint64_t sub_24272D0B8()
{
  v18 = v0;
  if ([*(v0 + 144) previousFailureCount])
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v1 = sub_242732244();
    __swift_project_value_buffer(v1, qword_27ECBB758);

    v2 = sub_242732224();
    v3 = sub_2427327D4();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 160);
      v4 = *(v0 + 168);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2426FBA6C(v5, v4, &v17);
      _os_log_impl(&dword_2426EB000, v2, v3, "Authentication has failed previously, clearing out credentials for host %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x245D17E30](v7, -1, -1);
      MEMORY[0x245D17E30](v6, -1, -1);
    }

    v8 = *(v0 + 152);
    swift_beginAccess();
    sub_2426FC2F8(v8 + 312, v0 + 16, &qword_27ECBB780, &qword_242739CC0);
    if (*(v0 + 40))
    {
      sub_2426F0FFC(v0 + 16, v0 + 56);
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v9 = swift_task_alloc();
      *(v0 + 184) = v9;
      *v9 = v0;
      v9[1] = sub_24272D3D4;

      return sub_24270B434();
    }

    else
    {
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      v16 = *(v0 + 8);

      return v16(0);
    }
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 176) = v11;
    *v11 = v0;
    v11[1] = sub_242731C8C;
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = *(v0 + 120);
    v15 = *(v0 + 192);

    return sub_24272F9A4(v14, v12, v13, v15);
  }
}

uint64_t sub_24272D3D4()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_242731C7C, v1, 0);
}

uint64_t sub_24272D4E4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v2[12] = swift_task_alloc();
  v3 = sub_242731D54();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272D600, v1, 0);
}

uint64_t sub_24272D600()
{
  v61 = v0;
  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = sub_242732244();
  *(v0 + 152) = __swift_project_value_buffer(v7, qword_27ECBB758);
  v8 = *(v5 + 16);
  *(v0 + 160) = v8;
  *(v0 + 168) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v4);
  v8(v1, v6, v4);
  v8(v3, v6, v4);
  v9 = sub_242732224();
  v10 = sub_2427327B4();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  if (v11)
  {
    v57 = v10;
    log = v9;
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60[0] = v56;
    *v17 = 136315650;
    v18 = sub_242731CB4();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 5522759;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = *(v15 + 8);
    v22(v12, v16);
    v23 = sub_2426FBA6C(v20, v21, v60);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v24 = sub_242732AD4();
    v26 = v25;
    v22(v13, v16);
    v27 = sub_2426FBA6C(v24, v26, v60);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    v28 = sub_242731D04();
    if (!v28)
    {
      v28 = sub_242730F50(MEMORY[0x277D84F90]);
    }

    v29 = *(v0 + 128);
    v30 = *(v0 + 104);
    *(v0 + 72) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB770, &qword_242739CB0);
    v31 = sub_242732514();
    v33 = v32;
    v22(v29, v30);
    v34 = sub_2426FBA6C(v31, v33, v60);

    *(v17 + 24) = v34;
    _os_log_impl(&dword_2426EB000, log, v57, "Sending request: %s %s: %s ", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v56, -1, -1);
    MEMORY[0x245D17E30](v17, -1, -1);
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
    v22(v13, v16);
    v22(v12, v16);
  }

  *(v0 + 176) = v22;
  v35 = *(v0 + 96);
  sub_242731D34();
  v36 = sub_242731F34();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v35, 1, v36);
  v39 = *(v0 + 96);
  if (v38 == 1)
  {
    sub_2426FED88(*(v0 + 96), &qword_27ECBAB20, &unk_242737540);
LABEL_20:
    sub_242718A7C();
    swift_allocError();
    *v54 = xmmword_242739AC0;
    swift_willThrow();

    v55 = *(v0 + 8);

    return v55();
  }

  v40 = sub_242731ED4();
  v42 = v41;
  (*(v37 + 8))(v39, v36);
  if (!v42)
  {
    goto LABEL_20;
  }

  v43 = *(v0 + 88);
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = v40;
  v44[4] = v42;
  v45 = type metadata accessor for AuthTaskDelegate();
  v46 = objc_allocWithZone(v45);
  v47 = &v46[OBJC_IVAR____TtC15CTLazuliSupport16AuthTaskDelegate_challengeHandler];
  *v47 = &unk_242739CA0;
  *(v47 + 1) = v44;
  *(v0 + 56) = v46;
  *(v0 + 64) = v45;

  v48 = objc_msgSendSuper2((v0 + 56), sel_init);
  *(v0 + 184) = v48;
  v49 = v43[26];
  v50 = v43[27];
  __swift_project_boxed_opaque_existential_1(v43 + 23, v49);
  loga = (*(v50 + 8) + **(v50 + 8));
  v51 = swift_task_alloc();
  *(v0 + 192) = v51;
  *v51 = v0;
  v51[1] = sub_24272DC68;
  v52 = *(v0 + 80);

  return (loga)(v52, v48, v49, v50);
}

uint64_t sub_24272DC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = v3;
  v6[25] = a3;
  v6[26] = v3;

  v7 = v5[11];
  if (v3)
  {
    v8 = sub_24272DF30;
  }

  else
  {
    v8 = sub_24272DDA0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24272DDA0()
{
  v1 = *(v0 + 200);
  v2 = sub_242732224();
  v3 = sub_2427327C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_2426EB000, v2, v3, "%@", v5, 0xCu);
    sub_2426FED88(v6, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v6, -1, -1);
    MEMORY[0x245D17E30](v5, -1, -1);
  }

  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  v10 = *(v0 + 8);
  v11 = *(v0 + 200);

  return v10(v8, v9, v11);
}

uint64_t sub_24272DF30()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);

  v2(v3, v5, v4);
  v6 = v1;
  v7 = sub_242732224();
  v8 = sub_2427327D4();

  if (os_log_type_enabled(v7, v8))
  {
    v25 = *(v0 + 176);
    v26 = *(v0 + 208);
    v9 = *(v0 + 120);
    v10 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136315394;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v14 = sub_242732AD4();
    v16 = v15;
    v25(v9, v10);
    v17 = sub_2426FBA6C(v14, v16, &v27);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = v26;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v12 = v19;
    _os_log_impl(&dword_2426EB000, v7, v8, "Request [%s] failed with error: %@", v11, 0x16u);
    sub_2426FED88(v12, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x245D17E30](v13, -1, -1);
    MEMORY[0x245D17E30](v11, -1, -1);
  }

  else
  {
    v20 = *(v0 + 176);
    v21 = *(v0 + 120);
    v22 = *(v0 + 104);

    v20(v21, v22);
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24272E1EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 192) = a4;
  *(v8 + 128) = a2;
  *(v8 + 136) = a3;
  *(v8 + 120) = a1;
  return MEMORY[0x2822009F8](sub_24272E21C, a6, 0);
}

uint64_t sub_24272E21C()
{
  v18 = v0;
  if ([*(v0 + 144) previousFailureCount])
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v1 = sub_242732244();
    __swift_project_value_buffer(v1, qword_27ECBB758);

    v2 = sub_242732224();
    v3 = sub_2427327D4();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 160);
      v4 = *(v0 + 168);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2426FBA6C(v5, v4, &v17);
      _os_log_impl(&dword_2426EB000, v2, v3, "Authentication has failed previously, clearing out credentials for host %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x245D17E30](v7, -1, -1);
      MEMORY[0x245D17E30](v6, -1, -1);
    }

    v8 = *(v0 + 152);
    swift_beginAccess();
    sub_2426FC2F8(v8 + 312, v0 + 16, &qword_27ECBB780, &qword_242739CC0);
    if (*(v0 + 40))
    {
      sub_2426F0FFC(v0 + 16, v0 + 56);
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v9 = swift_task_alloc();
      *(v0 + 184) = v9;
      *v9 = v0;
      v9[1] = sub_24272E668;

      return sub_24270B434();
    }

    else
    {
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      v16 = *(v0 + 8);

      return v16(0);
    }
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 176) = v11;
    *v11 = v0;
    v11[1] = sub_24272E538;
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = *(v0 + 120);
    v15 = *(v0 + 192);

    return sub_24272F9A4(v14, v12, v13, v15);
  }
}

uint64_t sub_24272E538(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t sub_24272E668()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_24272E778, v1, 0);
}

uint64_t sub_24272E778()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24272E7E0()
{
  sub_242719C64(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));

  sub_2426FED88(v0 + 312, &qword_27ECBB780, &qword_242739CC0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24272E8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24272E8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24272E964@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  if (v2)
  {
    v4 = *(v1 + 120);
    swift_beginAccess();
    sub_2426FC2F8(v1 + 312, &v21, &qword_27ECBB780, &qword_242739CC0);
    if (v22)
    {
      return sub_2426F0FE4(&v21, a1);
    }

    else
    {

      sub_2426FED88(&v21, &qword_27ECBB780, &qword_242739CC0);
      v11 = *(v1 + 112);
      sub_2426F0FFC(v1 + 184, &v21 + 8);
      sub_2426F0FFC(v1 + 224, v23);
      v12 = *(v1 + 168);
      v13 = *(v1 + 176);
      v14 = *(v1 + 177);
      LOBYTE(v21) = v11;
      v23[5] = v4;
      v23[6] = v2;
      v23[7] = v12;
      v24 = v13;
      v25 = v14;
      sub_24273134C(&v21, v20);
      sub_24273134C(v20, v19);
      v18[3] = &type metadata for HTTPGBAAuthenticator.DefaultFactory;
      v18[4] = &off_285501A78;
      v15 = type metadata accessor for HTTPGBAAuthenticator(0);
      v16 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for HTTPGBAAuthenticator.DefaultFactory);
      v17 = sub_242730934(v19, v16);
      sub_242712874(v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      a1[3] = v15;
      a1[4] = &off_285501988;
      *a1 = v17;
      sub_242712874(&v21);
      sub_2426F0FFC(a1, v20);
      swift_beginAccess();
      sub_2427313A8(v20, v1 + 312);
      return swift_endAccess();
    }
  }

  else
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v6 = sub_242732244();
    __swift_project_value_buffer(v6, qword_27ECBB758);
    v7 = sub_242732224();
    v8 = sub_2427327D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2426EB000, v7, v8, "Missing IMPI, unable to perform bootstrap authentication", v9, 2u);
      MEMORY[0x245D17E30](v9, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v10 = xmmword_242739AF0;
    return swift_willThrow();
  }
}

uint64_t sub_24272EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v5[12] = swift_task_alloc();
  v6 = sub_242731D54();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272ED0C, v4, 0);
}

uint64_t sub_24272ED0C()
{
  v45 = v0;
  v1 = [*(v0 + 64) originalRequest];
  if (!v1)
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v17 = sub_242732244();
    __swift_project_value_buffer(v17, qword_27ECBB758);
    v18 = sub_242732224();
    v19 = sub_2427327D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2426EB000, v18, v19, "Unable to get original request", v20, 2u);
      MEMORY[0x245D17E30](v20, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v21 = xmmword_242739AD0;
    swift_willThrow();
    goto LABEL_32;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = v1;
  sub_242731D14();

  sub_242713F3C(v2, v3);
  if (!v7)
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v22 = sub_242732244();
    __swift_project_value_buffer(v22, qword_27ECBB758);
    v23 = sub_242732224();
    v24 = sub_2427327D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2426EB000, v23, v24, "Invalid realm parameter", v25, 2u);
      MEMORY[0x245D17E30](v25, -1, -1);
    }

    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);

    sub_242718A7C();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
    goto LABEL_31;
  }

  v8 = v5;
  v9 = v6;
  v10 = *(v0 + 96);
  sub_242731D34();
  v11 = sub_242731F34();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = *(v0 + 96);
  if (v13 == 1)
  {
    sub_2426FED88(*(v0 + 96), &qword_27ECBAB20, &unk_242737540);
    v15 = 0;
    v16 = 0;
LABEL_20:
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v31 = sub_242732244();
    __swift_project_value_buffer(v31, qword_27ECBB758);

    v32 = sub_242732224();
    v33 = sub_2427327D4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315394;
      if (v16)
      {
        v36 = v15;
      }

      else
      {
        v36 = 0;
      }

      if (!v16)
      {
        v16 = 0xE000000000000000;
      }

      v37 = sub_2426FBA6C(v36, v16, v44);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;

      v38 = sub_2426FBA6C(v8, v9, v44);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_2426EB000, v32, v33, "Request FQDN (%s) does not match realm FQDN (%s)", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D17E30](v35, -1, -1);
      MEMORY[0x245D17E30](v34, -1, -1);
    }

    else
    {
    }

    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);
    sub_242718A7C();
    swift_allocError();
    *v39 = xmmword_242739B00;
LABEL_31:
    swift_willThrow();
    (*(v27 + 8))(v26, v28);
LABEL_32:

    v40 = *(v0 + 8);

    return v40();
  }

  v15 = sub_242731ED4();
  v16 = v30;
  (*(v12 + 8))(v14, v11);
  if (!v16 || (v15 != v8 || v16 != v9) && (sub_242732AE4() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_24272E964((v0 + 16));
  v42 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v43 = *v42;
  *(v0 + 128) = *v42;

  return MEMORY[0x2822009F8](sub_24272F344, v43, 0);
}

uint64_t sub_24272F344()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_requestQueue);
  *(v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_24272F3C0, v1, 0);
}

uint64_t sub_24272F3C0()
{
  v2 = v0[16];
  v1 = v0[17];
  sub_242725080(&qword_27ECBB7D0, &qword_242739D28, &unk_285502800, &unk_242739D40);
  v3 = sub_242712710(&qword_27ECBB790, &qword_27ECBB798, &qword_242739CE8, &unk_242738F48);
  v4 = swift_task_alloc();
  v0[18] = v4;
  v4[2] = &unk_242739CE0;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[19] = v5;
  v6 = type metadata accessor for GBAResult(0);
  *v5 = v0;
  v5[1] = sub_24272F530;
  v7 = v0[7];

  return MEMORY[0x2822008A0](v7, v1, v3, 0x293A5F2868737570, 0xE800000000000000, sub_242731100, v4, v6);
}

uint64_t sub_24272F530()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_24272F6F4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_24272F664;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24272F664()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24272F6F4()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_24272F76C, v1, 0);
}

uint64_t sub_24272F76C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

id sub_24272F7FC()
{
  if (*(v0 + 144) && *(v0 + 160))
  {
    v1 = objc_allocWithZone(MEMORY[0x277CCACF0]);
    v2 = sub_242732484();
    v3 = sub_242732484();
    v4 = [v1 initWithUser:v2 password:v3 persistence:0];

    return v4;
  }

  else
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v6 = sub_242732244();
    __swift_project_value_buffer(v6, qword_27ECBB758);
    v7 = sub_242732224();
    v8 = sub_2427327D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2426EB000, v7, v8, "Missing username or password for HTTP authentication", v9, 2u);
      MEMORY[0x245D17E30](v9, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v10 = 0xD000000000000011;
    v10[1] = 0x80000002427343B0;
    return swift_willThrow();
  }
}

uint64_t sub_24272F9A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for GBAResult(0);
  *(v5 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB788, &qword_242739CD0);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272FAB8, v4, 0);
}

uint64_t sub_24272FAB8()
{
  v1 = [*(v0 + 16) originalRequest];
  if (v1)
  {
    v2 = v1;
    sub_242731D14();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = sub_242731D54();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v5, v3, 1, v6);
  sub_2426FEBB0(v5, v4, &qword_27ECBB788, &qword_242739CD0);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_2426FED88(*(v0 + 72), &qword_27ECBB788, &qword_242739CD0);
LABEL_13:
    sub_242718A7C();
    swift_allocError();
    *v23 = xmmword_242739AC0;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }

  v8 = *(v0 + 56);
  sub_242731D34();
  v9 = sub_242731F34();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  if (v11 == 1)
  {
    sub_2426FED88(*(v0 + 56), &qword_27ECBAB20, &unk_242737540);
    (*(v7 + 8))(v12, v6);
    goto LABEL_13;
  }

  v14 = sub_242731ED4();
  v16 = v15;
  *(v0 + 80) = v14;
  *(v0 + 88) = v15;
  (*(v10 + 8))(v13, v9);
  (*(v7 + 8))(v12, v6);
  if (!v16)
  {
    goto LABEL_13;
  }

  if (*(v0 + 112) == 1)
  {
    v17 = *(v0 + 32);
    v18 = swift_task_alloc();
    *(v0 + 96) = v18;
    *v18 = v0;
    v18[1] = sub_24272FEAC;
    v19 = *(v0 + 48);
    v20 = *(v0 + 16);
    v21 = *(v0 + 24);

    return sub_24272EC0C(v19, v20, v21, v17);
  }

  else
  {

    v25 = sub_24272F7FC();

    v26 = *(v0 + 8);

    return v26(v25);
  }
}

uint64_t sub_24272FEAC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);

    v4 = sub_242730138;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = sub_24272FFD4;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24272FFD4()
{
  v1 = *(v0 + 48);
  v2 = sub_24270A298(*(v0 + 80), *(v0 + 88), [*(v0 + 16) _TLSNegotiatedCipherSuite]);
  v4 = v3;

  sub_242731FB4();
  sub_2426FBA18(v2, v4);
  v5 = objc_allocWithZone(MEMORY[0x277CCACF0]);
  v6 = sub_242732484();
  v7 = sub_242732484();

  v8 = [v5 initWithUser:v6 password:v7 persistence:0];

  sub_242711D88(v1);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_242730138()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2427301C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2427302A4;

  return sub_24272E1EC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_2427302A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2427303A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB868, &qword_242739DF8);
  v34 = v4;
  result = sub_2427329A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_242732BA4();
      sub_242732554();
      result = sub_242732BD4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_242730648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242704184(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2427303A0(v16, a4 & 1);
      v11 = sub_242704184(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_242732B14();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2427307C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_2427307C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB868, &qword_242739DF8);
  v2 = *v0;
  v3 = sub_242732994();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_242730934(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7F0, &qword_242739D58);
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7A0, &qword_242739CF0);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v26 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D0, &qword_242739D28);
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v12);
  v14 = &v26 - v13;
  v15 = sub_242732024();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = &type metadata for HTTPGBAAuthenticator.DefaultFactory;
  v31[4] = &off_285501A78;
  swift_defaultActor_initialize();
  v20 = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_cachedResult;
  v21 = type metadata accessor for GBAResult(0);
  (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
  sub_242732014();
  (*(v16 + 32))(a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_id, v19, v15);
  v22 = v26;
  sub_24273134C(v26, a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration);
  sub_2426F0FFC(v31, a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_factory);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB798, &qword_242739CE8);
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B0, &qword_242739D00);
  v24 = v28;
  (*(v3 + 104))(v6, *MEMORY[0x277D858A0], v28);
  sub_242732734();
  sub_242712874(v22);
  (*(v3 + 8))(v6, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  (*(v11 + 32))(&v23[*(*v23 + 112)], v14, v27);
  (*(v29 + 32))(&v23[*(*v23 + 120)], v10, v30);
  *(a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_requestQueue) = v23;
  return a2;
}

uint64_t sub_242730D54(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2426F07F0;

  return v7(a1);
}

unint64_t sub_242730E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBB870, &qword_242739E30);
    v3 = sub_2427329B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_242704184(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_242730F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB778, &qword_242739CB8);
    v3 = sub_2427329B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_242704184(v5, v6);
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

uint64_t sub_242731064(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2426F1158;

  return sub_24270B730(a1);
}

uint64_t sub_24273110C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242731144(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2426F1158;

  return sub_242730D54(a1, a2, v6);
}

uint64_t sub_242731220(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D0, &qword_242739D28) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2426F1158;

  return sub_242725CBC(a1, v6, v7, v1 + v5);
}

uint64_t sub_2427313A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB780, &qword_242739CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242731458(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_242731C88;

  return sub_24272D088(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_242731544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24273158C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2427315D4()
{

  sub_2426FBA18(v0[13], v0[14]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_242731644(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2426F07F0;

  return sub_24272898C(a1, a2, v6);
}

uint64_t objectdestroy_32Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2427317F8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB810, &qword_242739D90) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2426F1158;

  return sub_242725294(a1, v6, v7, v1 + v5);
}

uint64_t sub_242731924(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2426FDC84;

  return sub_242728000(a1);
}

uint64_t sub_2427319BC()
{
  v1 = sub_242731F34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242731A80(uint64_t a1)
{
  v4 = *(sub_242731F34() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2426FF528;

  return sub_242727878(a1, v6, v1 + v5);
}

uint64_t sub_242731B60()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242731BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2426FF528;

  return sub_2427270D8(a1, v4, v5, v6, v7, v8);
}