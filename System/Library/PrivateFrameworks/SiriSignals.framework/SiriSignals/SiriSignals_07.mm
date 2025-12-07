uint64_t sub_23152133C(uint64_t *a1)
{
  v16[3] = &type metadata for SignalComputationContext;
  v16[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v16[0] = v2;
  v3 = *a1;
  v17 = *a1;
  v4 = *(a1 + 1);
  v2[1] = *a1;
  v2[2] = v4;
  v2[3] = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v16, v15);
  v13 = &type metadata for SubscriptionStatusProvider;
  v14 = &off_28461D0D8;
  *(v5 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v5 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  sub_2314B5008(a1, v11);
  if (qword_280D6C970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6C980;
  *(v6 + 16) = qword_280D6C978;
  *(v6 + 24) = v7;
  *(v6 + 32) = &unk_2846125B0;
  v8 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *(v6 + 40) = v3;
  *(v6 + 48) = *v8;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  sub_23149FD3C(&v12, v6 + 88);

  sub_2315075A0(&v17, v10);

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v5;
}

uint64_t sub_231521500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[3] = a2;
  v19[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v19);
  v12 = a2;
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v19, v16);
  v14 = &type metadata for SubscriptionStatusProvider;
  v15 = &off_28461D0D8;
  *(v5 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v5 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6C970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6C980;
  *(v6 + 16) = qword_280D6C978;
  *(v6 + 24) = v7;
  *(v6 + 32) = &unk_284610470;
  v8 = v17;
  v9 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v10 = *(a3 + 8);

  *(v6 + 40) = v10(v12, a3);
  *(v6 + 48) = v10(v8, v9);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  sub_23149FD3C(&v13, v6 + 88);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v5;
}

uint64_t sub_231521748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_231521788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2315217F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);

  MEMORY[0x23192FF80](a1, a2);
  return v6;
}

uint64_t sub_231521848()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2315218C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_231586174();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23152199C;
  v10[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v10);

  [v7 getMultiUserAudioAppSignalsForSharedUserID:v8 completion:v9];
  _Block_release(v9);
}

uint64_t sub_23152199C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_231585754();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_2314C215C(v4, v8);
}

uint64_t sub_231521A48(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_231521A6C, 0, 0);
}

uint64_t sub_231521A6C()
{
  v1 = *(v0[21] + 16);
  v2 = sub_231586174();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_231521BA8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB00, &qword_23158C4E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231521D6C;
  v0[13] = &block_descriptor_12;
  v0[14] = v3;
  [v1 getSharedUserInfoForSharedUserID:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_231521BA8()
{

  return MEMORY[0x2822009F8](sub_231521C88, 0, 0);
}

id sub_231521C88()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    goto LABEL_6;
  }

  result = [v1 companionDeviceInfo];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result idsIdentifier];

  if (!v4)
  {

LABEL_6:
    v5 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v5 = sub_2315861A4();
  v7 = v6;

LABEL_7:
  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_231521D6C(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;
  return sub_231521DB0(v3, a2);
}

uint64_t sub_231521DD0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper_4_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_231521E44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_231586864();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23152D5B8(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v18;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x231930660](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = type metadata accessor for NotesIntentContainsSignal();
        v16 = v6;
        v17 = &protocol witness table for NotesIntentContainsSignal;
        v15[0] = v5;
        v18 = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_23152D5B8(v7 > 1, v8 + 1, 1);
          v9 = v16;
          v10 = v17;
        }

        else
        {
          v9 = v6;
          v10 = &protocol witness table for NotesIntentContainsSignal;
        }

        ++v3;
        v11 = __swift_mutable_project_boxed_opaque_existential_1(v15, v9);
        MEMORY[0x28223BE20](v11);
        v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v13);
        sub_231540938(v8, v13, &v18, v9, v10);
        __swift_destroy_boxed_opaque_existential_1(v15);
        v4 = v18;
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_23152204C(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    a2(0, v2, 0);
    v3 = v12;
    v5 = a1 + 32;
    do
    {
      sub_2314A2C74(v5, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB30, &qword_23158C660);
      swift_dynamicCast();
      v12 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        a2(v6 > 1, v7 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v7 + 1;
      sub_23149FD3C(&v11, v3 + 40 * v7 + 32);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *sub_231522198(uint64_t a1)
{
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 Intent];
  swift_unknownObjectRelease();
  v3 = sub_23152221C(v2);

  return v3;
}

void *sub_23152221C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_231585794();
  v9 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v7, v5, 10, 0, 0);
  v12 = v11;
  v13 = [a1 publisherWithOptions_];
  v27 = sub_231522578;
  v28 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2315226A0;
  v26 = &block_descriptor_13;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 filterWithIsIncluded_];
  _Block_release(v14);
  v16 = [v15 last];

  v27 = sub_23152386C;
  v28 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2314B901C;
  v26 = &block_descriptor_10_0;
  v17 = _Block_copy(&aBlock);

  v27 = sub_231523874;
  v28 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2314B8374;
  v26 = &block_descriptor_13_0;
  v18 = _Block_copy(&aBlock);

  v19 = [v16 sinkWithCompletion:v17 receiveInput:v18];

  _Block_release(v18);
  _Block_release(v17);

  swift_beginAccess();
  v20 = *(v8 + 16);
  v21 = v20;

  return v20;
}

uint64_t sub_231522578(void *a1)
{
  v1 = [a1 eventBody];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intentClass];

    if (v3)
    {
      v4 = sub_2315861A4();
      v2 = v5;
    }

    else
    {
      v4 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_2314A207C(0, &qword_280D6C658, 0x277CD3B30);
  v6 = [swift_getObjCClassFromMetadata() description];
  v7 = sub_2315861A4();
  v9 = v8;

  if (v2)
  {
    if (v4 == v7 && v2 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_231586C44();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2315226A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_2315226F8(uint64_t a1, uint64_t a2)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v3 = sub_231585FF4();
  __swift_project_value_buffer(v3, qword_280D72248);

  oslog = sub_231585FE4();
  v4 = sub_2315865D4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_beginAccess();
    v7 = *(a2 + 16);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_231496000, oslog, v4, "BiomeStreams: Using intent extracted from Biome: %@", v5, 0xCu);
    sub_2314BEEA4(v6);
    MEMORY[0x231931280](v6, -1, -1);
    MEMORY[0x231931280](v5, -1, -1);
  }

  else
  {
  }
}

void sub_23152286C(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_2315228C4(a1, (a2 + 16));
  objc_autoreleasePoolPop(v4);
}

void sub_2315228C4(void *a1, void **a2)
{
  v4 = [a1 eventBody];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 interaction];
  if (!v6)
  {

    return;
  }

  v7 = v6;
  v8 = sub_231585754();
  v10 = v9;

  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_2314C2104(v8, v10);
  v12 = sub_231523590(v8, v10);
  if (!v2)
  {
    v20 = v12;
    sub_2314A207C(0, &qword_27DD5BB38, 0x277CD3D58);
    sub_2315861A4();
    v21 = sub_231586714();

    if (v21)
    {
      v22 = v21;
      v23 = [v22 intent];

      sub_2314BEE4C(v8, v10);
      if (v23)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (!v24)
        {
        }

        goto LABEL_17;
      }
    }

    else
    {

      sub_2314BEE4C(v8, v10);
    }

    v24 = 0;
LABEL_17:
    swift_beginAccess();
    v25 = *a2;
    *a2 = v24;

    return;
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v13 = sub_231585FF4();
  __swift_project_value_buffer(v13, qword_280D72248);
  v14 = v5;
  v15 = sub_231585FE4();
  v16 = sub_2315865E4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v5;
    v19 = v14;
    _os_log_impl(&dword_231496000, v15, v16, "BiomeStreams: intent unarchive error from event=%@", v17, 0xCu);
    sub_2314BEEA4(v18);
    MEMORY[0x231931280](v18, -1, -1);
    MEMORY[0x231931280](v17, -1, -1);

    sub_2314BEE4C(v8, v10);
  }

  else
  {
    sub_2314BEE4C(v8, v10);
  }
}

uint64_t static NotesIntentContainsSignal.instances()(uint64_t a1)
{
  v1 = sub_231522198(a1);
  if (v1)
  {
    v2 = v1;
    v3 = static NotesIntentContainsSignal.instances(intent:)(v1);
    sub_231521E44(v3);
    v5 = v4;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    sub_23152D5B8(0, 3, 0);
    v5 = v15;
    v7 = type metadata accessor for NotesIntentContainsSignal();
    v8 = 0;
    do
    {
      LOBYTE(v12) = byte_2846108A8[v8 + 32];
      swift_allocObject();
      v9 = sub_2315231F8(&v12, -1);
      v15 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_23152D5B8(v10 > 1, v11 + 1, 1);
        v5 = v15;
      }

      ++v8;
      v13 = v7;
      v14 = &protocol witness table for NotesIntentContainsSignal;
      *&v12 = v9;
      *(v5 + 16) = v11 + 1;
      sub_23149FD3C(&v12, v5 + 40 * v11 + 32);
    }

    while (v8 != 3);
  }

  return v5;
}

uint64_t static NotesIntentContainsSignal.instances(intent:)(void *a1)
{
  v8 = MEMORY[0x277D84F90];
  sub_2315869F4();
  type metadata accessor for NotesIntentContainsSignal();
  v7 = 0;
  v2 = a1;
  sub_231522E50(&v7, v2);
  sub_2315869C4();
  OUTLINED_FUNCTION_1_25();
  sub_231586A04();
  OUTLINED_FUNCTION_1_25();
  sub_231586A14();
  sub_2315869D4();
  v6 = 1;
  v3 = v2;
  sub_231522E50(&v6, v3);
  sub_2315869C4();
  OUTLINED_FUNCTION_1_25();
  sub_231586A04();
  OUTLINED_FUNCTION_1_25();
  sub_231586A14();
  sub_2315869D4();
  v5 = 2;
  sub_231522E50(&v5, v3);
  sub_2315869C4();
  sub_231586A04();
  sub_231586A14();
  sub_2315869D4();
  return v8;
}

void *sub_231522E50(_BYTE *a1, id a2)
{
  v3 = *a1;
  if (*a1)
  {
    if (v3 == 1)
    {
      v4 = [a2 content];
    }

    else
    {
      v4 = [a2 groupName];
    }
  }

  else
  {
    v4 = [a2 title];
  }

  v5 = v4;
  if (v5)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v9 = v3;
  type metadata accessor for NotesIntentContainsSignal();
  swift_allocObject();
  v7 = sub_2315231F8(&v9, v6);

  return v7;
}

uint64_t sub_231522F34()
{
  result = sub_231586964();
  qword_27DD5BB08 = result;
  qword_27DD5BB10 = v1;
  return result;
}

uint64_t *sub_231522F68()
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65(&qword_27DD5AE28);
  }

  return &qword_27DD5BB08;
}

uint64_t static NotesIntentContainsSignal.signalName.getter()
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65(&qword_27DD5AE28);
  }

  swift_beginAccess();
  v0 = qword_27DD5BB08;

  return v0;
}

uint64_t static NotesIntentContainsSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65(&qword_27DD5AE28);
  }

  swift_beginAccess();
  qword_27DD5BB08 = a1;
  qword_27DD5BB10 = a2;
}

uint64_t (*static NotesIntentContainsSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65(&qword_27DD5AE28);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231523110@<D0>(void *a1@<X8>)
{
  sub_231522F68();
  swift_beginAccess();
  v2 = qword_27DD5BB10;
  *a1 = qword_27DD5BB08;
  a1[1] = v2;

  return result;
}

uint64_t sub_231523164(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231522F68();
  swift_beginAccess();
  qword_27DD5BB08 = v2;
  qword_27DD5BB10 = v1;
}

uint64_t NotesIntentContainsSignal.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_2315231F8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (qword_27DD5AE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_27DD5BB08;
  v11 = qword_27DD5BB10;

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v5 = 0xE400000000000000;
  v6 = 2036625250;
  if (v4 != 1)
  {
    v6 = 0x70756F7267;
    v5 = 0xE500000000000000;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x23192FF80](v7, v8);

  v2[2] = v10;
  v2[3] = v11;
  v2[4] = a2;
  return v2;
}

uint64_t NotesIntentContainsSignal.Field.rawValue.getter()
{
  v1 = 2036625250;
  if (*v0 != 1)
  {
    v1 = 0x70756F7267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

Swift::Bool __swiftcall NotesIntentContainsSignal.Field.isSet(in:)(INCreateNoteIntent in)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = [(objc_class *)in.super.super.isa content];
    }

    else
    {
      v2 = [(objc_class *)in.super.super.isa groupName];
    }
  }

  else
  {
    v2 = [(objc_class *)in.super.super.isa title];
  }

  v3 = v2;
  if (v3)
  {

    LOBYTE(v3) = 1;
  }

  return v3;
}

uint64_t sub_2315233B8(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 32);
  v4 = 0;
  return a1(&v3);
}

SiriSignals::NotesIntentContainsSignal::Field_optional __swiftcall NotesIntentContainsSignal.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_231523488@<X0>(uint64_t *a1@<X8>)
{
  result = NotesIntentContainsSignal.Field.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NotesIntentContainsSignal.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_231523590(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_231585744();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_2315856D4();

    swift_willThrow();
  }

  sub_2314BEE4C(a1, a2);
  return v7;
}

unint64_t sub_231523698()
{
  result = qword_27DD5BB18;
  if (!qword_27DD5BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB18);
  }

  return result;
}

unint64_t sub_2315236F0()
{
  result = qword_27DD5BB20;
  if (!qword_27DD5BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5BB28, &qword_23158C590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotesIntentContainsSignal.Field(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2315238A0()
{
  result = sub_231586964();
  qword_27DD5BB40 = result;
  qword_27DD5BB48 = v1;
  return result;
}

uint64_t *sub_2315238D4()
{
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66(&qword_27DD5AE30);
  }

  return &qword_27DD5BB40;
}

uint64_t static NotificationsCountByContactSignal.signalName.getter(uint64_t a1)
{
  if (qword_27DD5AE30 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_66(&qword_27DD5AE30);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_27DD5BB40;

  return v1;
}

uint64_t static NotificationsCountByContactSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66(&qword_27DD5AE30);
  }

  swift_beginAccess();
  qword_27DD5BB40 = a1;
  qword_27DD5BB48 = a2;
}

uint64_t (*static NotificationsCountByContactSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66(&qword_27DD5AE30);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231523A6C@<D0>(void *a1@<X8>)
{
  sub_2315238D4();
  swift_beginAccess();
  v2 = qword_27DD5BB48;
  *a1 = qword_27DD5BB40;
  a1[1] = v2;

  return result;
}

uint64_t sub_231523AC0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315238D4();
  swift_beginAccess();
  qword_27DD5BB40 = v2;
  qword_27DD5BB48 = v1;
}

uint64_t NotificationsCountByContactSignal.id.getter(uint64_t a1)
{
  if (qword_27DD5AE30 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_66(&qword_27DD5AE30);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v2 = qword_27DD5BB40;
  v1 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v2, v1);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return 0;
}

uint64_t static NotificationsCountByContactSignal.getAll(contactIdentifier:)(uint64_t a1, uint64_t a2)
{
  v16 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 8, 0);
  v4 = 0;
  v5 = v16;
  do
  {
    v6 = byte_28460FCD0[v4 + 32];
    v7 = [BiomeLibrary() Notification];
    swift_unknownObjectRelease();
    v8 = [v7 Usage];
    swift_unknownObjectRelease();
    v16 = v5;
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);

    if (v9 >= v10 >> 1)
    {
      sub_23152D5B8(v10 > 1, v9 + 1, 1);
      v5 = v16;
    }

    ++v4;
    v14 = &type metadata for NotificationsCountByContactSignal;
    v15 = &protocol witness table for NotificationsCountByContactSignal;
    v11 = swift_allocObject();
    *&v13 = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v6;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v5 + 16) = v9 + 1;
    sub_23149FD3C(&v13, v5 + 40 * v9 + 32);
  }

  while (v4 != 8);
  return v5;
}

void NotificationsCountByContactSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  v14 = *(v2 + 16);
  v13 = *(v2 + 24);
  v15 = swift_allocObject();
  type metadata accessor for Aggregation();
  *(v15 + 16) = sub_2315860F4();
  sub_231585794();
  v16 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  v17 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v10, v8, 0, 0, 0);
  v28 = v18;
  v27 = [v11 publisherWithOptions_];
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v11;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  *(v19 + 48) = v13;
  *(v19 + 56) = a1;
  *(v19 + 64) = a2;
  v33 = sub_231524894;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2314B901C;
  v32 = &block_descriptor_14;
  v20 = _Block_copy(&aBlock);

  v21 = v11;

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v12;
  *(v22 + 32) = v14;
  *(v22 + 40) = v13;
  *(v22 + 48) = v15;
  v33 = sub_2315248A8;
  v34 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2314B8374;
  v32 = &block_descriptor_12;
  v23 = _Block_copy(&aBlock);

  v24 = v21;

  v25 = v27;
  v26 = [v27 sinkWithCompletion:v20 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v20);
}

uint64_t sub_2315240A0(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  swift_beginAccess();
  v11 = *(a2 + 16);

  v12 = sub_2314D7854(a4, v11);

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v13 = sub_231585FF4();
  __swift_project_value_buffer(v13, qword_280D72248);
  v14 = a3;

  v15 = sub_231585FE4();
  v16 = sub_2315865D4();

  if (os_log_type_enabled(v15, v16))
  {
    v24 = a7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315394;
    v25 = 0;
    v26 = 0xE000000000000000;
    v27 = v18;
    if (qword_27DD5AE30 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_27DD5BB40;
    v19 = qword_27DD5BB48;

    MEMORY[0x23192FF80](v20, v19);

    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v21 = sub_2314A22E8();

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_2315860E4();
    v22 = sub_2314A22E8();

    *(v17 + 14) = v22;
    _os_log_impl(&dword_231496000, v15, v16, "%s value: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v18, -1, -1);
    MEMORY[0x231931280](v17, -1, -1);

    a7 = v24;
  }

  else
  {
  }

  v25 = v12;
  LOBYTE(v26) = 1;
  a7(&v25);
  return sub_2314A5EEC(v25, v26);
}

void sub_2315243A8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = MEMORY[0x231930B10]();
  v9 = [a1 eventBody];
  swift_beginAccess();
  sub_231524464(v9, (a6 + 16));
  swift_endAccess();

  objc_autoreleasePoolPop(v8);
}

void sub_231524464(void *a1, uint64_t *a2)
{
  v5 = sub_231585884();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  if (!a1)
  {
    return;
  }

  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v39 = a1;
  v14 = sub_2314D752C(v39);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = [v39 absoluteTimestamp];
    if (v18)
    {
      v19 = v18;
      v37 = v16;
      v38 = a2;
      sub_231585834();

      (*(v6 + 32))(v11, v9, v5);
      v20 = [v39 contactIDs];
      v21 = sub_231586384();

      v40 = v13;
      v41 = v12;
      MEMORY[0x28223BE20](v22);
      *(&v37 - 2) = &v40;
      v23 = sub_2314E62A8(sub_2314BB954, (&v37 - 4), v21);

      if (v23 || (v24 = [v39 contactIDs], v25 = sub_231586384(), v24, v40 = v13, v41 = v12, , v26 = MEMORY[0x23192FF80](0x6F7372655042413ALL, 0xE90000000000006ELL), MEMORY[0x28223BE20](v26), *(&v37 - 2) = &v40, v27 = sub_2314E62A8(sub_2314BB974, (&v37 - 4), v25), , , v27))
      {
        v29 = v37;
        v28 = v38;
        v30 = *v38;
        if (*(*v38 + 16) && (v31 = sub_23149C888(v37, v17), (v32 & 1) != 0))
        {
          v33 = *(*(v30 + 56) + 8 * v31);
        }

        else
        {
          sub_2314B676C();
          v35 = sub_2315860F4();
          type metadata accessor for Aggregation();
          swift_allocObject();
          v33 = sub_2314B53E8(v35);
        }

        sub_2314B56E8();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *v28;
        sub_2315760F4(v33, v29, v17, isUniquelyReferenced_nonNull_native);

        *v28 = v40;
        (*(v6 + 8))(v11, v5);
      }

      else
      {
        (*(v6 + 8))(v11, v5);
      }

      return;
    }
  }

  v34 = v39;
}

uint64_t sub_2315248BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2315248FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static NowPlayingCountSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231525958(v3, sub_23149A718, 0);
}

uint64_t sub_2315249B4()
{
  result = sub_231586964();
  qword_280D6F630 = result;
  *algn_280D6F638 = v1;
  return result;
}

uint64_t static NowPlayingCountSignal.signalName.getter()
{
  if (qword_280D6F628 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_280D6F628);
  }

  v0 = qword_280D6F630;

  return v0;
}

uint64_t NowPlayingCountSignal.id.getter()
{
  v1 = sub_2314B5298(*(v0 + 16));
  if (v1 == 6712937 && v2 == 0xE300000000000000)
  {
  }

  else
  {
    v4 = OUTLINED_FUNCTION_3_23(v1, v2);

    if ((v4 & 1) == 0)
    {
      v6 = 0;
      if (qword_280D6F628 != -1)
      {
        OUTLINED_FUNCTION_0_67(&qword_280D6F628);
      }

      MEMORY[0x23192FF80](qword_280D6F630, *algn_280D6F638);
      sub_231586A54();
      return v6;
    }
  }

  if (qword_280D6F628 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_280D6F628);
  }

  v6 = qword_280D6F630;

  MEMORY[0x23192FF80](0x6C61746F742ELL, 0xE600000000000000);
  return v6;
}

void *NowPlayingCountSignal.idSynonyms.getter()
{
  v1 = sub_2314B5298(*(v0 + 16));
  if (v1 == 6712937 && v2 == 0xE300000000000000)
  {

    return &unk_284612648;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_3_23(v1, v2);

    if (v4)
    {
      return &unk_284612648;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }
}

uint64_t NowPlayingCountSignal.cacheKey.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_2_23();
  if (!v1)
  {
    return NowPlayingCountSignal.id.getter();
  }

  v4 = NowPlayingCountSignal.id.getter();
  MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
  MEMORY[0x23192FF80](v2, v1);

  return v4;
}

uint64_t sub_231524C88()
{
  v1 = *(v0 + 16);
  switch(v1)
  {
    case 7:
      goto LABEL_8;
    default:
      v2 = sub_231586C44();

      if (v2)
      {
        return 1;
      }

      if (sub_2314B5298(v1) == 27954 && v3 == 0xE200000000000000)
      {
LABEL_8:

        return 1;
      }

      else
      {
        v5 = sub_231586C44();

        return v5 & 1;
      }
  }
}

uint64_t static NowPlayingCountSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231525764(v3, v1, v2);
}

void sub_231524DF8(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v11 = v10;
  a4[3] = &type metadata for NowPlayingCountSignal;
  a4[4] = &protocol witness table for NowPlayingCountSignal;
  v12 = swift_allocObject();
  *a4 = v12;
  *(v12 + 32) = v6;
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v13 = *(a3 + 16);
  *(v12 + 40) = a3;
  *(v12 + 48) = v13;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 1;
}

uint64_t static NowPlayingCountSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612678);
  *a1 = result;
  return result;
}

double NowPlayingCountSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t NowPlayingCountSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  memcpy(__dst, v1, 0x41uLL);
  v3 = LOBYTE(__dst[2]);
  v4 = sub_2314B5298(__dst[2]);
  if (v4 == 6712937 && v5 == 0xE300000000000000)
  {

    goto LABEL_9;
  }

  v7 = OUTLINED_FUNCTION_3_23(v4, v5);

  if (v7)
  {
LABEL_9:
    v14 = sub_2314D13BC(__dst[0], __dst[1]);
    goto LABEL_10;
  }

  v8 = __dst[0];
  v9 = __dst[1];
  v10 = sub_2314B5298(v3);
  v12 = sub_2314D0694(v10, v11, v8, v9);

  sub_23156696C(v3, v12);
  v14 = v13;

  if (!v14)
  {
    v22[0] = -1;
    LOBYTE(v22[1]) = 0;
    return a1(v22);
  }

LABEL_10:
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v16 = sub_231585FF4();
  __swift_project_value_buffer(v16, qword_280D72248);
  sub_231525A94(__dst, v22);

  v17 = sub_231585FE4();
  v18 = sub_2315865D4();
  sub_231525ACC(__dst);

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    swift_slowAlloc();
    *v19 = 136315394;
    memcpy(v22, __dst, 0x41uLL);
    NowPlayingCountSignal.id.getter();
    v20 = sub_2314A22E8();

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    sub_2315860E4();
    v21 = sub_2314A22E8();

    *(v19 + 14) = v21;
    _os_log_impl(&dword_231496000, v17, v18, "NowPlayingCountSignal: Computed %s=%s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v22[0] = v14;
  LOBYTE(v22[1]) = 1;
  a1(v22);
  return sub_2314A5EEC(v22[0], v22[1]);
}

void NowPlayingCountSignal.adaptCached(value:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 48);
  v8 = *(v2 + 32);
  v9 = v5;
  v10 = *(v2 + 64);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23152525C(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  memcpy(__dst, v3, 0x41uLL);
  memcpy(v34, v3, 0x41uLL);
  if ((sub_231524C88() & 1) == 0)
  {
    goto LABEL_20;
  }

  v34[0] = v5;
  LOBYTE(v34[1]) = v6;
  swift_unknownObjectRetain();
  sub_2315074D0(v5, v6);
  sub_2314D6BA0(v34, v35);
  v7 = v35[0];
  if (!v35[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_231496000, v20, v21, "NowPlayingCountSignal: Invalid input", v22, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_20;
  }

  v9 = v35[1];
  v8 = v35[2];
  v10 = v35[4];

  v11 = sub_23149CA24(v9, v8, v10);
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = __dst[16];
  if (sub_2314B5298(__dst[16]) == 27954 && v16 == 0xE200000000000000)
  {

    goto LABEL_18;
  }

  v18 = sub_231586C44();

  if (v18)
  {
LABEL_18:
    if (v14 <= 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v9 = 0;
    v23 = -1;
    goto LABEL_21;
  }

LABEL_22:
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v10;
  sub_23157562C(v14 + 1, v9, v8, isUniquelyReferenced_nonNull_native);
  v9 = v34[0];
  if (qword_280D70420 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v25 = sub_231585FF4();
  __swift_project_value_buffer(v25, qword_280D72248);

  sub_231525A94(__dst, v34);
  v26 = v7;
  v27 = sub_231585FE4();
  v28 = sub_2315865D4();
  sub_231525ACC(__dst);

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v29 = 136315650;
    sub_2314B5298(v15);
    v33 = v26;
    v30 = sub_2314A22E8();

    *(v29 + 4) = v30;
    *(v29 + 12) = 2080;

    sub_2315860E4();

    v31 = sub_2314A22E8();

    *(v29 + 14) = v31;
    *(v29 + 22) = 2080;

    sub_2315860E4();

    v32 = sub_2314A22E8();

    *(v29 + 24) = v32;
    _os_log_impl(&dword_231496000, v27, v28, "NowPlayingCountSignal: [%s] updated %s to %s", v29, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v23 = 1;
LABEL_21:
  *a3 = v9;
  *(a3 + 8) = v23;
}

uint64_t sub_231525700(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231525764(v3, v1, v2);
}

uint64_t sub_231525764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = sub_231525BA8(v7, sub_23149A718, 0, a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t sub_231525868(uint64_t a1, uint64_t a2)
{
  v5[3] = &type metadata for NoParameters;
  v5[4] = &protocol witness table for NoParameters;
  __swift_project_boxed_opaque_existential_1(v5, &type metadata for NoParameters);
  off_28461B340[0]();
  type metadata accessor for BiomeQueriesNowPlaying(0);
  swift_allocObject();

  v4[2] = v5;
  v4[3] = OUTLINED_FUNCTION_5_19();
  v2 = sub_23150466C(sub_231525CFC, v4, &unk_2846102F8);

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2;
}

uint64_t sub_231525958(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v11[3] = &type metadata for SignalComputationContext;
  v11[4] = &protocol witness table for SignalComputationContext;
  v4 = swift_allocObject();
  v11[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  __swift_project_boxed_opaque_existential_1(v11, &type metadata for SignalComputationContext);
  v6 = off_28461B138[0];
  sub_2314B5008(a1, v10);
  v6();
  type metadata accessor for BiomeQueriesNowPlaying(0);
  swift_allocObject();

  v9[2] = v11;
  v9[3] = OUTLINED_FUNCTION_5_19();
  v7 = sub_23150466C(sub_231525CFC, v9, &unk_2846102F8);

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_231525B04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_231525B44(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_231525BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = v18;
  v11 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v12 = (*(v11 + 8))(v10, v11);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v13 = swift_allocObject();

  v16[2] = v17;
  v16[3] = sub_231528564(v12, a2, a3, v13);
  v14 = sub_23150466C(sub_231525CDC, v16, &unk_2846102F8);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_231525D28()
{
  result = sub_231586964();
  qword_280D6F398 = result;
  unk_280D6F3A0 = v1;
  return result;
}

uint64_t static NowPlayingScoresSignal.signalName.getter()
{
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6F398;

  return v0;
}

uint64_t NowPlayingScoresSignal.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static NowPlayingScoresSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  OUTLINED_FUNCTION_4_21();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = type metadata accessor for NowPlayingScoresSignal();
  OUTLINED_FUNCTION_4_21();
  v2 = swift_allocObject();
  v3 = sub_231527558(sub_23149A718, 0, v2);
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NowPlayingScoresSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static NowPlayingScoresSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_2315273B0(v4, v1, v2, v3);
}

double sub_231525EF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 32) = &type metadata for NowPlayingCountSignal;
  *(v0 + 40) = &protocol witness table for NowPlayingCountSignal;
  return result;
}

uint64_t static NowPlayingScoresSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  OUTLINED_FUNCTION_4_21();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = type metadata accessor for NowPlayingScoresSignal();
  OUTLINED_FUNCTION_4_21();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_231527640(v8, sub_23149A718, 0, v4);
  *(v2 + 56) = v3;
  *(v2 + 64) = &protocol witness table for NowPlayingScoresSignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static NowPlayingScoresSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846126A0);
  *a1 = result;
  return result;
}

uint64_t sub_231526034(void (*a1)(uint64_t *))
{
  v2 = sub_2315260A4();
  v6 = sub_2314E40FC(v2);
  v7 = 3;
  a1(&v6);
  v3 = v6;
  v4 = v7;

  return sub_2314A5EEC(v3, v4);
}

uint64_t sub_2315260A4()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = qword_280D70420;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v3 = sub_231585FF4();
    __swift_project_value_buffer(v3, qword_280D72248);

    v4 = sub_231585FE4();
    v5 = sub_2315865D4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v6 = 136315138;
      type metadata accessor for Aggregation();
      sub_2315860E4();
      v7 = sub_2314A22E8();

      *(v6 + 4) = v7;
      _os_log_impl(&dword_231496000, v4, v5, "NowPlayingScoresSignal: cached  %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    return v1;
  }

  else
  {
    v9 = v0[5];
    v10 = v0[6];

    v8 = sub_2314D0C64(v9, v10);

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v11 = sub_231585FF4();
    __swift_project_value_buffer(v11, qword_280D72248);

    v12 = sub_231585FE4();
    v13 = sub_2315865D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v14 = 136315138;
      type metadata accessor for Aggregation();
      sub_2315860E4();
      v15 = sub_2314A22E8();

      *(v14 + 4) = v15;
      _os_log_impl(&dword_231496000, v12, v13, "NowPlayingScoresSignal: queried %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  return v8;
}

void sub_231526368(uint64_t a1, uint64_t a2)
{
  v2 = &unk_280D70000;
  if (!*(a2 + 16))
  {
    if (qword_280D70420 != -1)
    {
      goto LABEL_104;
    }

    goto LABEL_93;
  }

  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B308, &qword_231589338);
  v155 = sub_2315860F4();
  v4 = 0;
  v158 = 0;
  *&v5 = 136315394;
  v154 = v5;
  v152 = v3;
  while (2)
  {
    v6 = byte_28460FCD0[v4++ + 32];
    switch(v6)
    {
      case 7:

        goto LABEL_57;
      default:
        v7 = sub_231586C44();

        if (v7)
        {
          goto LABEL_57;
        }

        v161 = 0;
        v162 = 0xE000000000000000;
        if (qword_280D6F628 != -1)
        {
          swift_once();
        }

        MEMORY[0x23192FF80](qword_280D6F630, *algn_280D6F638);
        LOBYTE(v160) = v6;
        sub_231586A54();
        if (!*(v3 + 16) || (v8 = OUTLINED_FUNCTION_7_20(), v10 = sub_23149C888(v8, v9), (v11 & 1) == 0))
        {
          if (v2[132] != -1)
          {
            OUTLINED_FUNCTION_3();
            swift_once();
          }

          v61 = sub_231585FF4();
          __swift_project_value_buffer(v61, qword_280D72248);

          v62 = sub_231585FE4();
          v63 = sub_2315865D4();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *v64 = v154;
            OUTLINED_FUNCTION_7_20();
            v65 = sub_2314A22E8();

            *(v64 + 4) = v65;
            *(v64 + 12) = 2080;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB68, &unk_23158C810);
            sub_231586104();
            v66 = v4;
            v67 = sub_2314A22E8();

            *(v64 + 14) = v67;
            v4 = v66;
            _os_log_impl(&dword_231496000, v62, v63, "NowPlayingScoresSignal: No entry for %s in %s", v64, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
LABEL_50:
            OUTLINED_FUNCTION_10();
LABEL_56:

            goto LABEL_57;
          }

LABEL_55:

          goto LABEL_56;
        }

        v12 = *(v3 + 56) + 16 * v10;
        v13 = *(v12 + 8);
        if (v13 == 255)
        {
          v2 = &unk_280D70000;
          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_3();
            swift_once();
          }

          v68 = sub_231585FF4();
          __swift_project_value_buffer(v68, qword_280D72248);

          v3 = v152;

          v62 = sub_231585FE4();
          v69 = sub_2315865D4();

          if (os_log_type_enabled(v62, v69))
          {
            v70 = v4;
            v71 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *v71 = v154;
            OUTLINED_FUNCTION_7_20();
            v72 = sub_2314A22E8();

            *(v71 + 4) = v72;
            *(v71 + 12) = 2080;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB68, &unk_23158C810);
            sub_231586104();
            v73 = sub_2314A22E8();

            *(v71 + 14) = v73;
            _os_log_impl(&dword_231496000, v62, v69, "NowPlayingScoresSignal: Nil value for %s %s", v71, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
            v4 = v70;
            goto LABEL_50;
          }

          goto LABEL_55;
        }

        v14 = *v12;
        if (v13 == 1)
        {
          v150 = v6;
          v151 = v4;
          sub_2314A5168(v14, 1u);

          v15 = 0;
          v16 = 1 << *(v14 + 32);
          if (v16 < 64)
          {
            v17 = ~(-1 << v16);
          }

          else
          {
            v17 = -1;
          }

          v18 = v17 & *(v14 + 64);
          v19 = (v16 + 63) >> 6;
          while (1)
          {
            v20 = v15;
            if (!v18)
            {
              while (1)
              {
                v15 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                if (v15 >= v19)
                {

                  v4 = v151;
                  v3 = v152;
                  v2 = &unk_280D70000;
                  goto LABEL_57;
                }

                v18 = *(v14 + 64 + 8 * v15);
                ++v20;
                if (v18)
                {
                  goto LABEL_20;
                }
              }

              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

LABEL_20:
            OUTLINED_FUNCTION_6_17();
            v23 = v22 | (v15 << 6);
            v24 = (*(v14 + 48) + 16 * v23);
            v26 = *v24;
            v25 = v24[1];
            v153 = *(*(v14 + 56) + 8 * v23);
            v27 = *(v156 + 56);
            if (!*(v27 + 16))
            {
              break;
            }

            v157 = &v148;
            v161 = v26;
            v162 = v25;
            MEMORY[0x28223BE20](v21);
            v147[2] = &v161;

            v28 = v26;
            v29 = v25;
            v30 = v158;
            v31 = sub_2314E62A8(sub_2314BB954, v147, v27);
            v158 = v30;

            if (v31)
            {
              v25 = v29;
              v26 = v28;
LABEL_25:
              v32 = v155;
              v33 = *(v155 + 16);
              v149 = v25;
              if (v33 && (v34 = sub_23149C888(v26, v25), (v35 & 1) != 0))
              {
                v36 = *(*(v32 + 56) + 8 * v34);
              }

              else
              {
                sub_2314B676C();
                v36 = sub_2315860F4();
              }

              LODWORD(v157) = swift_isUniquelyReferenced_nonNull_native();
              v161 = v36;
              v37 = sub_231574C34(v150);
              if (__OFADD__(*(v36 + 16), (v38 & 1) == 0))
              {
                __break(1u);
LABEL_106:
                __break(1u);
LABEL_107:
                __break(1u);
LABEL_108:
                __break(1u);
LABEL_109:
                sub_231586C84();
                __break(1u);
                return;
              }

              v39 = v37;
              v40 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B310, &unk_231589340);
              if (sub_231586A64())
              {
                v41 = sub_231574C34(v150);
                v43 = v149;
                if ((v40 & 1) != (v42 & 1))
                {
                  goto LABEL_109;
                }

                v39 = v41;
                v44 = v155;
              }

              else
              {
                v44 = v155;
                v43 = v149;
              }

              v157 = v161;
              if (v40)
              {
                *(v161[7] + 8 * v39) = v153;
              }

              else
              {
                OUTLINED_FUNCTION_1_26();
                *(v46 + v39) = v150;
                *(*(v45 + 56) + 8 * v39) = v153;
                v47 = *(v45 + 16);
                v48 = __OFADD__(v47, 1);
                v49 = v47 + 1;
                if (v48)
                {
                  goto LABEL_107;
                }

                *(v45 + 16) = v49;
              }

              LODWORD(v153) = swift_isUniquelyReferenced_nonNull_native();
              v161 = v44;
              v50 = sub_23149C888(v26, v43);
              v51 = *(v44 + 16);
              LODWORD(v155) = v52;
              if (__OFADD__(v51, (v52 & 1) == 0))
              {
                goto LABEL_106;
              }

              v53 = v50;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B318, &qword_23158C820);
              if (sub_231586A64())
              {
                v54 = sub_23149C888(v26, v43);
                if ((v155 & 1) != (v55 & 1))
                {
                  goto LABEL_109;
                }

                v53 = v54;
                if (v155)
                {
                  goto LABEL_45;
                }

LABEL_42:
                OUTLINED_FUNCTION_1_26();
                v58 = (v57 + 16 * v53);
                *v58 = v26;
                v58[1] = v43;
                *(*(v56 + 56) + 8 * v53) = v157;
                v59 = *(v56 + 16);
                v48 = __OFADD__(v59, 1);
                v60 = v59 + 1;
                if (v48)
                {
                  goto LABEL_108;
                }

                v155 = v56;
                *(v56 + 16) = v60;
              }

              else
              {
                if ((v155 & 1) == 0)
                {
                  goto LABEL_42;
                }

LABEL_45:

                v155 = v161;
                *(v161[7] + 8 * v53) = v157;
              }
            }

            else
            {
            }
          }

          goto LABEL_25;
        }

        v74 = OUTLINED_FUNCTION_5_20();
        sub_2314A5168(v74, v75);
        if (qword_280D70420 != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v76 = sub_231585FF4();
        __swift_project_value_buffer(v76, qword_280D72248);
        v77 = OUTLINED_FUNCTION_5_20();
        sub_2315074D0(v77, v78);

        v79 = sub_231585FE4();
        v80 = sub_2315865D4();

        v81 = OUTLINED_FUNCTION_5_20();
        sub_2314D70F4(v81, v82);
        if (os_log_type_enabled(v79, v80))
        {
          v83 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          *v83 = v154;
          OUTLINED_FUNCTION_7_20();
          v84 = sub_2314A22E8();

          *(v83 + 4) = v84;
          *(v83 + 12) = 2080;
          v161 = v14;
          LOBYTE(v162) = v13;
          SignalValue.description.getter();
          sub_2314A5EEC(v161, v162);
          v85 = sub_2314A22E8();

          *(v83 + 14) = v85;
          _os_log_impl(&dword_231496000, v79, v80, "NowPlayingScoresSignal: invalid SignalValue for %s: %s", v83, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
        }

        else
        {

          v86 = OUTLINED_FUNCTION_5_20();
          sub_2314D70F4(v86, v87);
        }

        v3 = v152;
        v2 = &unk_280D70000;
LABEL_57:
        if (v4 != 8)
        {
          continue;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B320, &unk_231589350);
        v88 = v155;
        v89 = sub_231586AC4();
        v90 = 0;
        v91 = v88 + 64;
        OUTLINED_FUNCTION_3_0();
        v96 = v95 & v93;
        v97 = (v94 + 63) >> 6;
        v157 = (v92 + 64);
        if ((v95 & v93) == 0)
        {
LABEL_68:
          v99 = v90;
          while (1)
          {
            v90 = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              goto LABEL_99;
            }

            if (v90 >= v97)
            {

              v118 = sub_23149FF38(v110, v111, v112, v113, v114, v115, v116, v117, v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160);

              v120 = sub_23152A84C(v119, v118);

              v121 = 0;
              v157 = v120;
              OUTLINED_FUNCTION_3_0();
              v125 = v124 & v123;
              v127 = (v126 + 63) >> 6;
              v153 = v127;
              *&v154 = v122;
              if ((v124 & v123) != 0)
              {
                goto LABEL_81;
              }

LABEL_77:
              while (1)
              {
                v128 = v121 + 1;
                if (__OFADD__(v121, 1))
                {
                  goto LABEL_100;
                }

                if (v128 >= v127)
                {

                  *(v156 + 64) = v89;

                  return;
                }

                v125 = *(v122 + 8 * v128);
                ++v121;
                if (v125)
                {
                  v121 = v128;
LABEL_81:
                  while (1)
                  {
                    v129 = (v157[6] + ((v121 << 10) | (16 * __clz(__rbit64(v125)))));
                    v131 = *v129;
                    v130 = v129[1];
                    sub_2314B676C();

                    v132 = sub_2315860F4();
                    type metadata accessor for Aggregation();
                    swift_allocObject();
                    v133 = sub_2314B53E8(v132);
                    swift_isUniquelyReferenced_nonNull_native();
                    v161 = v89;
                    v134 = sub_23149C888(v131, v130);
                    if (__OFADD__(v89[2], (v135 & 1) == 0))
                    {
                      goto LABEL_102;
                    }

                    v136 = v134;
                    v137 = v135;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB60, &qword_23158C808);
                    if (sub_231586A64())
                    {
                      v138 = sub_23149C888(v131, v130);
                      if ((v137 & 1) != (v139 & 1))
                      {
                        goto LABEL_109;
                      }

                      v136 = v138;
                    }

                    v89 = v161;
                    if (v137)
                    {
                      *(v161[7] + 8 * v136) = v133;
                    }

                    else
                    {
                      v161[(v136 >> 6) + 8] |= 1 << v136;
                      v140 = (v89[6] + 16 * v136);
                      *v140 = v131;
                      v140[1] = v130;
                      *(v89[7] + 8 * v136) = v133;
                      v141 = v89[2];
                      v48 = __OFADD__(v141, 1);
                      v142 = v141 + 1;
                      if (v48)
                      {
                        goto LABEL_103;
                      }

                      v89[2] = v142;
                    }

                    v125 &= v125 - 1;
                    v127 = v153;
                    v122 = v154;
                    if (!v125)
                    {
                      goto LABEL_77;
                    }
                  }
                }
              }
            }

            v100 = *(v91 + 8 * v90);
            ++v99;
            if (v100)
            {
              v98 = __clz(__rbit64(v100));
              v96 = (v100 - 1) & v100;
              goto LABEL_73;
            }
          }
        }

        while (1)
        {
          OUTLINED_FUNCTION_6_17();
LABEL_73:
          v101 = v98 | (v90 << 6);
          v102 = (*(v88 + 48) + 16 * v101);
          v104 = *v102;
          v103 = v102[1];
          type metadata accessor for Aggregation();
          swift_allocObject();

          v106 = sub_2314B53E8(v105);
          *(v157 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v101;
          v107 = (v89[6] + 16 * v101);
          *v107 = v104;
          v107[1] = v103;
          *(v89[7] + 8 * v101) = v106;
          v108 = v89[2];
          v48 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v48)
          {
            break;
          }

          v89[2] = v109;
          v88 = v155;
          if (!v96)
          {
            goto LABEL_68;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        OUTLINED_FUNCTION_3();
        swift_once();
LABEL_93:
        v143 = sub_231585FF4();
        __swift_project_value_buffer(v143, qword_280D72248);
        v158 = sub_231585FE4();
        v144 = sub_2315865D4();
        if (os_log_type_enabled(v158, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_231496000, v158, v144, "NowPlayingScoresSignal: Received no upstream cached values", v145, 2u);
          OUTLINED_FUNCTION_10();
        }

        v146 = v158;

        return;
    }
  }
}

void *NowPlayingScoresSignal.deinit()
{

  return v0;
}

uint64_t NowPlayingScoresSignal.__deallocating_deinit()
{
  NowPlayingScoresSignal.deinit();
  OUTLINED_FUNCTION_4_21();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315272FC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_2315273B0(v4, v1, v2, v3);
}

uint64_t sub_2315273B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(v6 + 16);
  v12(&v18 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_231588340;
  v14 = type metadata accessor for NowPlayingScoresSignal();
  v15 = swift_allocObject();
  (v12)(v9, v11, a3);
  v16 = sub_2315277D8(v9, sub_23149A718, 0, v15, a3, a4);
  *(v13 + 56) = v14;
  *(v13 + 64) = &protocol witness table for NowPlayingScoresSignal;
  *(v13 + 32) = v16;
  (*(v6 + 8))(v11, a3);
  return v13;
}

void *sub_231527558(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v6 = unk_280D6F3A0;
  a3[2] = qword_280D6F398;
  a3[3] = v6;
  a3[8] = 0;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  a3[5] = 0;
  a3[6] = 0;
  v7 = swift_allocObject();

  v8 = MEMORY[0x277D84F90];
  a3[4] = sub_231528564(MEMORY[0x277D84F90], a1, a2, v7);
  a3[5] = 0;
  a3[6] = 0;

  a3[7] = v8;
  return a3;
}

void *sub_231527640(_OWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[3] = &type metadata for SignalComputationContext;
  v18[4] = &protocol witness table for SignalComputationContext;
  v8 = swift_allocObject();
  v18[0] = v8;
  v9 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = a1[2];
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v10 = unk_280D6F3A0;
  a4[2] = qword_280D6F398;
  a4[3] = v10;
  a4[8] = 0;
  a4[5] = 0;
  a4[6] = 0;
  v11 = __swift_project_boxed_opaque_existential_1(v18, &type metadata for SignalComputationContext);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v12 = swift_allocObject();

  v14 = sub_231528564(v13, a2, a3, v12);
  v16 = *(v8 + 40);
  v15 = *(v8 + 48);
  a4[4] = v14;
  a4[5] = v16;
  a4[6] = v15;

  a4[7] = *v11;

  __swift_destroy_boxed_opaque_existential_1(v18);
  return a4;
}

void *sub_2315277D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a5 - 8) + 32))();
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v10 = unk_280D6F3A0;
  a4[2] = qword_280D6F398;
  a4[3] = v10;
  a4[8] = 0;
  a4[5] = 0;
  a4[6] = 0;
  v11 = v21;
  v18 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = *(a6 + 8);

  v13 = v12(a5, a6);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v14 = swift_allocObject();

  a4[4] = sub_231528564(v13, a2, a3, v14);
  a4[5] = (*(a6 + 16))(a5, a6);
  a4[6] = v15;

  v16 = v12(v11, v18);

  a4[7] = v16;
  __swift_destroy_boxed_opaque_existential_1(v20);
  return a4;
}

uint64_t sub_2315279A4()
{
  result = sub_231586964();
  qword_280D6F920 = result;
  qword_280D6F928 = v1;
  return result;
}

uint64_t *sub_2315279D8()
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68(&qword_280D6F918);
  }

  return &qword_280D6F920;
}

uint64_t static NowPlayingSignal.signalName.getter()
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68(&qword_280D6F918);
  }

  swift_beginAccess();
  v0 = qword_280D6F920;

  return v0;
}

uint64_t static NowPlayingSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68(&qword_280D6F918);
  }

  swift_beginAccess();
  qword_280D6F920 = a1;
  qword_280D6F928 = a2;
}

uint64_t (*static NowPlayingSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68(&qword_280D6F918);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231527B80@<D0>(void *a1@<X8>)
{
  sub_2315279D8();
  swift_beginAccess();
  v2 = qword_280D6F928;
  *a1 = qword_280D6F920;
  a1[1] = v2;

  return result;
}

uint64_t sub_231527BD4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315279D8();
  swift_beginAccess();
  qword_280D6F920 = v2;
  qword_280D6F928 = v1;
}

uint64_t NowPlayingSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

double NowPlayingSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static NowPlayingSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68(&qword_280D6F918);
  }

  swift_beginAccess();
  v2 = qword_280D6F928;
  *(v1 + 16) = qword_280D6F920;
  *(v1 + 24) = v2;
  *(v1 + 32) = &unk_2846107E8;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v3 = swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  *(v1 + 40) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v3);
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  return v0;
}

uint64_t static NowPlayingSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231528804(v3, v1, v2);
}

uint64_t static NowPlayingSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231528628(v3);
}

uint64_t static NowPlayingSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846126F8);
  *a1 = result;
  return result;
}

uint64_t NowPlayingSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = sub_2314CE1D0(a1);
  if (v2)
  {
    v4 = v2;
    v5 = 1;
    a1(&v4);
    return sub_2314A5EEC(v4, v5);
  }

  else
  {
    v4 = -1;
    v5 = 0;
    return a1(&v4);
  }
}

void NowPlayingSignal.adaptCached(value:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 48);
  v8 = *(v2 + 32);
  v9 = v5;
  v10 = *(v2 + 64);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_231527F74(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v48 = *a2;
  v49 = v5;
  swift_unknownObjectRetain();
  sub_2315074D0(v48, v5);
  sub_2314D6BA0(&v48, v50);
  if (v50[0])
  {
    v43 = v50[0];
    v42 = v50[1];
    v44 = v50[2];
    v45 = a3;
    v6 = v50[4];
    v7 = sub_2315860F4();
    v8 = v6 + 64;
    v9 = 1 << *(v6 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v6 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v46 = v6 + 64;
    v47 = v6;
    if (v11)
    {
      while (1)
      {
        v14 = v13;
LABEL_9:
        v15 = (*(v6 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
        v17 = *v15;
        v16 = v15[1];

        swift_isUniquelyReferenced_nonNull_native();
        v48 = v7;
        v18 = sub_23149C888(v17, v16);
        if (__OFADD__(v7[2], (v19 & 1) == 0))
        {
          break;
        }

        v20 = v18;
        v3 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v21 = sub_23149C888(v17, v16);
          if ((v3 & 1) != (v22 & 1))
          {
            sub_231586C84();
            __break(1u);
            return;
          }

          v20 = v21;
        }

        v11 &= v11 - 1;
        v7 = v48;
        if (v3)
        {
          *(v48[7] + 8 * v20) = 0;
        }

        else
        {
          v48[(v20 >> 6) + 8] |= 1 << v20;
          v23 = (v7[6] + 16 * v20);
          *v23 = v17;
          v23[1] = v16;
          *(v7[7] + 8 * v20) = 0;
          v24 = v7[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_31;
          }

          v7[2] = v26;
        }

        v13 = v14;
        v8 = v46;
        v6 = v47;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    else
    {
      while (1)
      {
LABEL_6:
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v14 >= v12)
        {
          break;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      v14 = v43;
      v27 = [v43 playbackState] == 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v7;
      sub_23157562C(v27, v42, v44, isUniquelyReferenced_nonNull_native);
      v3 = v48;
      if (qword_280D70420 != -1)
      {
        goto LABEL_32;
      }
    }

    v29 = sub_231585FF4();
    __swift_project_value_buffer(v29, qword_280D72248);

    v30 = v14;

    v31 = sub_231585FE4();
    v32 = sub_2315865D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315394;

      sub_2315860E4();

      v35 = sub_2314A22E8();

      *(v33 + 4) = v35;
      *(v33 + 12) = 2080;

      sub_2315860E4();

      v36 = sub_2314A22E8();

      *(v33 + 14) = v36;
      _os_log_impl(&dword_231496000, v31, v32, "NowPlayingSignal: updated %s to %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v34, -1, -1);
      MEMORY[0x231931280](v33, -1, -1);
    }

    a3 = v45;
    v37 = 1;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v38 = sub_231585FF4();
    __swift_project_value_buffer(v38, qword_280D72248);
    v39 = sub_231585FE4();
    v40 = sub_2315865E4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_231496000, v39, v40, "NowPlayingSignal: Invalid input", v41, 2u);
      MEMORY[0x231931280](v41, -1, -1);
    }

    v3 = 0;
    v37 = -1;
  }

  *a3 = v3;
  *(a3 + 8) = v37;
}

uint64_t sub_2315284EC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231528804(v3, v1, v2);
}

void *sub_231528564(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = &type metadata for BiomeSQLQueryResultProvider;
  v13 = &protocol witness table for BiomeSQLQueryResultProvider;
  v8 = OBJC_IVAR____TtC11SiriSignals22BiomeQueriesNowPlaying_cacheCountAggregation;
  v9 = type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation(0);
  __swift_storeEnumTagSinglePayload(a4 + v8, 1, 1, v9);
  if (qword_280D6F260 != -1)
  {
    swift_once();
  }

  a4[2] = a1;
  sub_2314D62B4(&v11, (a4 + 3));
  a4[8] = a2;
  a4[9] = a3;
  return a4;
}

uint64_t sub_231528628(_OWORD *a1)
{
  v13[3] = &type metadata for SignalComputationContext;
  v13[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v13[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v13, v12);
  *(v4 + 56) = &type metadata for NowPlayingSignal;
  *(v4 + 64) = &protocol witness table for NowPlayingSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  sub_2314B5008(a1, &v11);
  if (qword_280D6F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_280D6F928;
  *(v5 + 16) = qword_280D6F920;
  *(v5 + 24) = v6;
  *(v5 + 32) = &unk_2846126C8;
  v7 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v8 = swift_allocObject();

  *(v5 + 40) = sub_231528564(v9, sub_23149A718, 0, v8);
  *(v5 + 48) = *v7;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v4;
}

uint64_t sub_231528804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = a2;
  v17[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v17, v14);
  *(v5 + 56) = &type metadata for NowPlayingSignal;
  *(v5 + 64) = &protocol witness table for NowPlayingSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6F928;
  *(v6 + 16) = qword_280D6F920;
  *(v6 + 24) = v7;
  *(v6 + 32) = &unk_284610170;
  v8 = v15;
  v13 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = *(a3 + 8);

  v10 = v9(a2, a3);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v11 = swift_allocObject();
  *(v6 + 40) = sub_231528564(v10, sub_23149A718, 0, v11);
  *(v6 + 48) = v9(v8, v13);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v5;
}

uint64_t sub_231528A1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_231528A5C(uint64_t result, int a2, int a3)
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

uint64_t sub_231528AD4()
{
  result = sub_231586964();
  qword_280D6F618 = result;
  qword_280D6F620 = v1;
  return result;
}

uint64_t *sub_231528B08()
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_280D6F610);
  }

  return &qword_280D6F618;
}

uint64_t static NowPlayingStateSignal.signalName.getter()
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_280D6F610);
  }

  swift_beginAccess();
  v0 = qword_280D6F618;

  return v0;
}

uint64_t static NowPlayingStateSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_280D6F610);
  }

  swift_beginAccess();
  qword_280D6F618 = a1;
  qword_280D6F620 = a2;
}

uint64_t (*static NowPlayingStateSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_280D6F610);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231528CB0@<D0>(void *a1@<X8>)
{
  sub_231528B08();
  swift_beginAccess();
  v2 = qword_280D6F620;
  *a1 = qword_280D6F618;
  a1[1] = v2;

  return result;
}

uint64_t sub_231528D04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231528B08();
  swift_beginAccess();
  qword_280D6F618 = v2;
  qword_280D6F620 = v1;
}

uint64_t NowPlayingStateSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

double NowPlayingStateSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static NowPlayingStateSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingStateSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_280D6F610);
  }

  swift_beginAccess();
  v1 = qword_280D6F620;
  *(v0 + 32) = qword_280D6F618;
  *(v0 + 40) = v1;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v2 = swift_allocObject();

  OUTLINED_FUNCTION_1_27();
  *(v0 + 48) = sub_231528564(v3, v4, v5, v2);
  return v0;
}

uint64_t static NowPlayingStateSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152913C(v3, v1, v2);
}

uint64_t static NowPlayingStateSignal.instances(context:)(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_231588340;
  *(v1 + 56) = &type metadata for NowPlayingStateSignal;
  *(v1 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_280D6F610);
  }

  swift_beginAccess();
  v2 = qword_280D6F620;
  *(v1 + 32) = qword_280D6F618;
  *(v1 + 40) = v2;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v3 = swift_allocObject();

  OUTLINED_FUNCTION_1_27();
  *(v1 + 48) = sub_231528564(v4, v5, v6, v3);
  return v1;
}

uint64_t static NowPlayingStateSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612720);
  *a1 = result;
  return result;
}

uint64_t NowPlayingStateSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = sub_2314CE450(a1);
  if (v2)
  {
    v4 = v2;
    v5 = 1;
    a1(&v4);
    return sub_2314A5EEC(v4, v5);
  }

  else
  {
    v4 = -1;
    v5 = 0;
    return a1(&v4);
  }
}

uint64_t sub_2315290DC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152913C(v3, v1, v2);
}

uint64_t sub_23152913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231588340;
  *(v8 + 56) = &type metadata for NowPlayingStateSignal;
  *(v8 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_280D6F620;
  *(v8 + 32) = qword_280D6F618;
  *(v8 + 40) = v9;
  v10 = *(a3 + 8);

  v11 = v10(a2, a3);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v12 = swift_allocObject();
  *(v8 + 48) = sub_231528564(v11, sub_23149A718, 0, v12);
  (*(v5 + 8))(v7, a2);
  return v8;
}

void sub_231529330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x277D84F90];
    sub_23152D598(0, v1, 0);
    v5 = sub_23152B4D4();
    v6 = 0;
    v7 = v2 + 64;
    v25 = v2 + 72;
    v26 = v1;
    v27 = v2 + 64;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_24;
        }

        v28 = v4;
        v29 = v6;
        v30 = v3;

        v9 = sub_231586334();
        v11 = v10;
        v12 = v2;
        v14 = *(v31 + 16);
        v13 = *(v31 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_23152D598(v13 > 1, v14 + 1, 1);
        }

        *(v31 + 16) = v14 + 1;
        v15 = v31 + 16 * v14;
        *(v15 + 32) = v9;
        *(v15 + 40) = v11;
        v16 = 1 << *(v12 + 32);
        if (v5 >= v16)
        {
          goto LABEL_25;
        }

        v7 = v27;
        v17 = *(v27 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        v2 = v12;
        if (*(v12 + 36) != v30)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v19 = v26;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v19 = v26;
          v22 = (v25 + 8 * v8);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_2314ABA68(v5, v30, v28 & 1);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_18;
            }
          }

          sub_2314ABA68(v5, v30, v28 & 1);
        }

LABEL_18:
        v6 = v29 + 1;
        if (v29 + 1 == v19)
        {
          return;
        }

        v4 = 0;
        v3 = *(v2 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_231529598(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_23152A248(a1);
    return a2;
  }

  else
  {

    return sub_23152A374(a1, a2);
  }
}

uint64_t sub_2315295EC()
{
  sub_23152A204();
  result = sub_231586724();
  qword_27DD600F0 = result;
  return result;
}

uint64_t sub_231529624()
{
  sub_23152A204();
  result = sub_231586724();
  qword_27DD600F8 = result;
  return result;
}

uint64_t sub_23152989C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23158C930;
  v3 = *(v0 + 16);
  *(v2 + 32) = sub_231586564();
  v170 = v0;
  v4 = *(v0 + 24);
  *(v2 + 40) = sub_231586564();
  v5 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v6 = OUTLINED_FUNCTION_15_6();
  v7 = sub_23152A118(v6, 65552);
  if (v7)
  {
    v169 = v7;
    v14 = 0;
    v155 = v3 + 32;
    v158 = *(v3 + 16);
    v152 = v4 + 40;
    *&v8 = 136315138;
    v167 = v8;
    *&v8 = 136315394;
    v164 = v8;
    v168 = v4;
    v166 = v1;
    v149 = v3;
LABEL_8:
    if (v14 == v158)
    {
      return v169;
    }

    if (v14 < *(v3 + 16))
    {
      v15 = (v155 + 16 * v14);
      v16 = v15[1];
      v171 = *v15;
      v165 = v14 + 1;
      v172 = *(v4 + 16);

      v17 = 0;
      for (i = v152; ; i += 2)
      {
        if (v172 == v17)
        {

          v14 = v165;
          v3 = v149;
          goto LABEL_8;
        }

        if (v17 >= *(v4 + 16))
        {
          break;
        }

        v19 = *(i - 1);
        v20 = *i;
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_23158C930;

        v22 = v14;
        *(v21 + 32) = sub_231586564();
        *(v21 + 40) = sub_231586564();
        v23 = *(v170 + 32);
        if (v23[2] && (v24 = sub_23149C888(v171, v16), (v25 & 1) != 0))
        {
          v26 = v23[7] + 16 * v24;
          v27 = *v26;
          switch(*(v26 + 8))
          {
            case 1:
              v67 = *(v27 + 16);

              if (v67)
              {
                v68 = sub_23149C888(v19, v20);
                if (v69)
                {
                  v23 = v68;

                  sub_231586564();
                  OUTLINED_FUNCTION_16_6();
                  v70 = sub_23152A204();
                  OUTLINED_FUNCTION_12_8(v70);
                  v71 = OUTLINED_FUNCTION_19_6();
                  v78 = OUTLINED_FUNCTION_8_16(v71, sel_setObject_forKeyedSubscript_, v72, v73, v74, v75, v76, v77, v146, v149, v152, v155, v158, v161, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169);
                  [v78 v79];
                  v65 = v27;
                  v66 = 1;
                  goto LABEL_32;
                }
              }

              if (qword_27DD5AE40 != -1)
              {
                OUTLINED_FUNCTION_2_24();
                swift_once();
              }

              v113 = sub_23152A204();
              v114 = OUTLINED_FUNCTION_12_8(v113);

              v122 = OUTLINED_FUNCTION_8_16(v115, sel_setObject_forKeyedSubscript_, v116, v117, v118, v119, v120, v121, v146, v149, v152, v155, v158, v161, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169);
              [v122 v123];

              if (qword_280D70420 != -1)
              {
                OUTLINED_FUNCTION_3();
                swift_once();
              }

              v124 = sub_231585FF4();
              __swift_project_value_buffer(v124, qword_280D72248);

              v125 = sub_231585FE4();
              v126 = sub_2315865E4();

              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                v128 = swift_slowAlloc();
                OUTLINED_FUNCTION_9_13(v128, v129, v130, v131, v132, v133, v134, v135, v146, v149, v152, v155, v158, v161, v164);

                *(v127 + 14) = OUTLINED_FUNCTION_11_11();
                _os_log_impl(&dword_231496000, v125, v126, "OrderedFeatureMap: Couldn't find a signal value for candidate %s in %s; setting to missing candidate error", v127, 0x16u);
                OUTLINED_FUNCTION_18_7(v136, v137, v138, v139, v140, v141, v142, v143, v148, v151, v154, v157, v160, v163);
                OUTLINED_FUNCTION_10();
                OUTLINED_FUNCTION_10();

                v111 = v27;
                v112 = 1;
                goto LABEL_46;
              }

              v144 = v27;
              v145 = 1;
              goto LABEL_49;
            case 2:

              sub_2315864B4();
              goto LABEL_25;
            case 3:
              v52 = *(v27 + 16);

              if (v52 && (v53 = sub_23149C888(v19, v20), (v54 & 1) != 0))
              {
                v23 = v53;

                sub_2315864B4();
                OUTLINED_FUNCTION_16_6();
                v55 = sub_23152A204();
                OUTLINED_FUNCTION_12_8(v55);
                v56 = OUTLINED_FUNCTION_19_6();
                v63 = OUTLINED_FUNCTION_8_16(v56, sel_setObject_forKeyedSubscript_, v57, v58, v59, v60, v61, v62, v146, v149, v152, v155, v158, v161, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169);
                [v63 v64];
                v65 = v27;
                v66 = 3;
LABEL_32:
                sub_2314A5EEC(v65, v66);
LABEL_33:
              }

              else
              {
                if (qword_27DD5AE40 != -1)
                {
                  OUTLINED_FUNCTION_2_24();
                  swift_once();
                }

                v80 = sub_23152A204();
                v81 = OUTLINED_FUNCTION_12_8(v80);

                v89 = OUTLINED_FUNCTION_8_16(v82, sel_setObject_forKeyedSubscript_, v83, v84, v85, v86, v87, v88, v146, v149, v152, v155, v158, v161, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169);
                [v89 v90];

                if (qword_280D70420 != -1)
                {
                  OUTLINED_FUNCTION_3();
                  swift_once();
                }

                v91 = sub_231585FF4();
                __swift_project_value_buffer(v91, qword_280D72248);

                v92 = sub_231585FE4();
                v93 = sub_2315865E4();

                if (os_log_type_enabled(v92, v93))
                {
                  v94 = swift_slowAlloc();
                  v95 = swift_slowAlloc();
                  OUTLINED_FUNCTION_9_13(v95, v96, v97, v98, v99, v100, v101, v102, v146, v149, v152, v155, v158, v161, v164);

                  *(v94 + 14) = OUTLINED_FUNCTION_11_11();
                  _os_log_impl(&dword_231496000, v92, v93, "OrderedFeatureMap: Couldn't find a signal value for candidate %s in %s; setting to missing candidate error", v94, 0x16u);
                  OUTLINED_FUNCTION_18_7(v103, v104, v105, v106, v107, v108, v109, v110, v147, v150, v153, v156, v159, v162);
                  OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_10();

                  v111 = v27;
                  v112 = 3;
LABEL_46:
                  sub_2314A5EEC(v111, v112);
                }

                else
                {

                  v144 = v27;
                  v145 = 3;
LABEL_49:
                  sub_2314A5EEC(v144, v145);
                }

                v4 = v168;
              }

              break;
            default:

              sub_231586564();
LABEL_25:
              OUTLINED_FUNCTION_16_6();
              v42 = sub_23152A204();
              OUTLINED_FUNCTION_12_8(v42);
              v43 = OUTLINED_FUNCTION_19_6();
              v50 = OUTLINED_FUNCTION_8_16(v43, sel_setObject_forKeyedSubscript_, v44, v45, v46, v47, v48, v49, v146, v149, v152, v155, v158, v161, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169);
              [v50 v51];
              goto LABEL_33;
          }
        }

        else
        {

          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_3();
            swift_once();
          }

          v28 = sub_231585FF4();
          __swift_project_value_buffer(v28, qword_280D72248);

          v29 = sub_231585FE4();
          v30 = sub_2315865E4();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            *v31 = v167;
            *(v31 + 4) = sub_2314A22E8();
            _os_log_impl(&dword_231496000, v29, v30, "OrderedFeatureMap: Couldn't find a signal value for %s; setting to missing feature error", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v173);
            OUTLINED_FUNCTION_10();
            v4 = v168;
            OUTLINED_FUNCTION_10();
          }

          if (qword_27DD5AE38 != -1)
          {
            swift_once();
          }

          v32 = sub_23152A204();
          OUTLINED_FUNCTION_12_8(v32);
          v33 = OUTLINED_FUNCTION_19_6();
          v40 = OUTLINED_FUNCTION_8_16(v33, sel_setObject_forKeyedSubscript_, v34, v35, v36, v37, v38, v39, v146, v149, v152, v155, v158, v161, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169);
          [v40 v41];
        }

        ++v17;
        v14 = v22;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_56;
  }

  if (qword_280D70420 != -1)
  {
LABEL_56:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v9 = sub_231585FF4();
  __swift_project_value_buffer(v9, qword_280D72248);
  v10 = sub_231585FE4();
  v11 = sub_2315865E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_231496000, v10, v11, "OrderedFeatureMap: Failed to create MLMultiArray", v12, 2u);
    OUTLINED_FUNCTION_10();
  }

  return 0;
}

id sub_23152A118(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_23152A204();
  v4 = sub_231586374();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_2315856D4();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_23152A204()
{
  result = qword_280D6FE68;
  if (!qword_280D6FE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6FE68);
  }

  return result;
}

void sub_23152A248(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_23152ACF4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_23152A374(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v57 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_231586D14();

        sub_231586274();
        v20 = sub_231586D44();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_231586C44() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v25 = *(v5 + 32);
            v45 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v45;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v46 = &v44;
              MEMORY[0x28223BE20](v24);
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v49 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v50;
              while (1)
              {
                v47 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_231586D14();

                sub_231586274();
                v34 = sub_231586D44();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v29 = v50;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_231586C44();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v49[v7];
                v49[v7] = v39 & ~v8;
                v3 = v51;
                v12 = v52;
                v29 = v50;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  sub_23152B004(v49, v45, v47, v5);
                  v5 = v40;
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_2314B0CE8(v42, v45, (v5 + 56), v45, v5, v7, v53);

            MEMORY[0x231931280](v42, -1, -1);
            v12 = v53[0];
            v48 = v54;
            v5 = v43;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_2314A4B70(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_23152A84C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v60 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v53 = v12;
    v54 = v7;
    v55 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      OUTLINED_FUNCTION_16();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      sub_231586D14();

      sub_231586274();
      v23 = sub_231586D44();
      v24 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v23 & v24;
        v4 = (v23 & v24) >> 6;
        v8 = 1 << (v23 & v24);
        if ((v8 & *(v13 + 8 * v4)) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v25 = (*(v5 + 48) + 16 * v7);
        v26 = *v25 == v22 && v25[1] == v21;
        if (v26 || (sub_231586C44() & 1) != 0)
        {
          break;
        }

        v23 = v7 + 1;
      }

      v57 = v51;
      v58 = v16;
      v59 = v11;
      v3 = v54;
      v12 = v55;
      v56[0] = v55;
      v56[1] = v54;

      v28 = *(v5 + 32);
      v48 = ((1 << v28) + 63) >> 6;
      v2 = 8 * v48;
      if ((v28 & 0x3Fu) > 0xD)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v49 = &v47;
        MEMORY[0x28223BE20](v27);
        v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v7, (v5 + 56), v2);
        v29 = *(v7 + 8 * v4) & ~v8;
        v30 = *(v5 + 16);
        v52 = v7;
        *(v7 + 8 * v4) = v29;
        v31 = v30 - 1;
        v32 = v53;
        while (1)
        {
          v50 = v31;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_16();
          v35 = (*(v12 + 48) + ((v16 << 10) | (16 * v34)));
          v2 = *v35;
          v36 = v35[1];
          sub_231586D14();

          sub_231586274();
          sub_231586D44();
          OUTLINED_FUNCTION_17_7();
          v39 = ~v38;
          do
          {
            v4 = v37 & v39;
            v7 = (v37 & v39) >> 6;
            v8 = 1 << (v37 & v39);
            if ((v8 & *(v13 + 8 * v7)) == 0)
            {

              v3 = v54;
              v12 = v55;
              v32 = v53;
              goto LABEL_23;
            }

            v40 = (*(v5 + 48) + 16 * v4);
            if (*v40 == v2 && v40[1] == v36)
            {
              break;
            }

            v42 = sub_231586C44();
            v37 = v4 + 1;
          }

          while ((v42 & 1) == 0);

          v43 = v52[v7];
          v52[v7] = v43 & ~v8;
          v3 = v54;
          v12 = v55;
          v32 = v53;
          if ((v43 & v8) == 0)
          {
            goto LABEL_23;
          }

          v31 = v50 - 1;
          if (__OFSUB__(v50, 1))
          {
            __break(1u);
          }

          if (v50 == 1)
          {

            v5 = MEMORY[0x277D84FA0];
            goto LABEL_42;
          }
        }

        while (1)
        {
          v33 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v33 >= v32)
          {
            sub_23152B004(v52, v48, v50, v5);
            v5 = v44;
            goto LABEL_42;
          }

          v11 = *(v3 + 8 * v33);
          ++v16;
          if (v11)
          {
            v16 = v33;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v46 = swift_slowAlloc();
      sub_2314B0CE8(v46, v48, (v5 + 56), v48, v5, v7, v56);
      OUTLINED_FUNCTION_15_6();

      OUTLINED_FUNCTION_10();
      v12 = v56[0];
      v51 = v57;
      v5 = v7;
LABEL_42:
      v14 = v12;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_47;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

    sub_2314A4B70(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_23152ACF4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_231586D14();
  sub_231586274();
  v6 = sub_231586D44();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_231586C44() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_231542F1C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_23152B318(v8);
  *v2 = v15;
  return v13;
}

void sub_23152AE1C(unint64_t *result, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v7 = a3[2];
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 7;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_231586D14();

    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_17_7();
    v18 = ~v17;
    do
    {
      v19 = v16 & v18;
      v20 = (v16 & v18) >> 6;
      v21 = 1 << (v16 & v18);
      if ((v21 & v9[v20]) == 0)
      {

        goto LABEL_3;
      }

      v22 = (a3[6] + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_231586C44();
      v16 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = result[v20];
    result[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_23152B004(result, a2, v27, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_23152B004(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
      v7 = sub_231586924();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v29 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v17 = *v16;
        v18 = v16[1];
        sub_231586D14();

        sub_231586274();
        sub_231586D44();
        OUTLINED_FUNCTION_1_28();
        if (((v21 << v20) & ~*(v11 + 8 * v19)) == 0)
        {
          OUTLINED_FUNCTION_2_18();
          while (++v23 != v25 || (v24 & 1) == 0)
          {
            v26 = v23 == v25;
            if (v23 == v25)
            {
              v23 = 0;
            }

            v24 |= v26;
            if (*(v11 + 8 * v23) != -1)
            {
              OUTLINED_FUNCTION_11();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_3_15();
LABEL_25:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v8 + 48) + 16 * v22);
        *v27 = v17;
        v27[1] = v18;
        OUTLINED_FUNCTION_3_24();
        if (v28)
        {
          goto LABEL_29;
        }

        v4 = v29;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_9_0();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_23152B1D8(uint64_t a1, uint64_t a2)
{

  v4 = sub_231586864();
  v5 = swift_unknownObjectRetain();
  v6 = sub_231542614(v5, v4);
  v13 = v6;
  sub_231586D14();

  sub_2314AAAAC(&v12);
  v7 = sub_231586D44();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    _s4NodeCMa();
    if (sub_2314AB36C(*(*(v6 + 48) + 8 * v9), a2))
    {

      v10 = *(*(v6 + 48) + 8 * v9);
      sub_2314AB684(v9);
      if (sub_2314AB36C(a2, v10))
      {
        *v2 = v13;
        return v10;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_23152B318(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2315867E4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_231586D14();

        sub_231586274();
        v10 = sub_231586D44();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_23152B510()
{
  result = qword_27DD5BB80;
  if (!qword_27DD5BB80)
  {
    _s4NodeCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB80);
  }

  return result;
}

uint64_t sub_23152B568(uint64_t a1, uint64_t a2)
{
  v3 = sub_231586024();
  OUTLINED_FUNCTION_4_1();
  v28 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v27 = sub_231586064();
  OUTLINED_FUNCTION_4_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_231586034();
  OUTLINED_FUNCTION_4_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  (*(v17 + 104))(v21, *MEMORY[0x277D851D0], v15);
  v22 = sub_2315866B4();
  (*(v17 + 8))(v21, v15);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  aBlock[4] = sub_23152B9F4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_15;
  v24 = _Block_copy(aBlock);

  sub_231586054();
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  sub_2315867C4();
  MEMORY[0x231930370](0, v14, v8, v24);
  _Block_release(v24);

  (*(v28 + 8))(v8, v3);
  (*(v10 + 8))(v14, v27);
}

void sub_23152B888(void (*a1)(void), uint64_t a2)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v3 = sub_231585FF4();
  __swift_project_value_buffer(v3, qword_280D72248);

  oslog = sub_231585FE4();
  v4 = sub_2315865D4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v5 = 136315138;
    a1();
    v6 = sub_2314A22E8();

    *(v5 + 4) = v6;
    _os_log_impl(&dword_231496000, oslog, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x231931280](v8, -1, -1);
    MEMORY[0x231931280](v5, -1, -1);
  }
}

uint64_t sub_23152B9FC(__int16 a1, uint64_t a2, char a3)
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000029, 0x8000000231592270);
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x23192FF80](v5, v6);

  MEMORY[0x23192FF80](0x65726F6E6769202CLL, 0xEE003D6568636143);
  if ((a1 & 0x100) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x23192FF80](v7, v8);

  MEMORY[0x23192FF80](0xD000000000000017, 0x80000002315922A0);
  if (a3)
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v10 = sub_2315864C4();
    v9 = v11;
  }

  MEMORY[0x23192FF80](v10, v9);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_23152BB78()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_23152B9FC(v1 | *v0, *(v0 + 1), v0[16]);
}

uint64_t sub_23152BBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B218, &unk_23158A010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23152BC1C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_23152BC68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t PredictionError.description.getter()
{
  v1 = 0xD000000000000018;
  v2 = v0[1];
  if (!v2)
  {
    return 0xD000000000000044;
  }

  if (v2 != 1)
  {
    v3 = *v0;
    sub_231586954();
    MEMORY[0x23192FF80](0xD00000000000002BLL, 0x80000002315923A0);
    MEMORY[0x23192FF80](v3, v2);
    MEMORY[0x23192FF80](0xD000000000000082, 0x80000002315923D0);
    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_11SiriSignals15PredictionErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23152BDCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23152BE20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_23152BE7C(void *result, int a2)
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

uint64_t PrewarmDeviceTypeRestriction.description.getter()
{
  v1 = 0x656E6F685069;
  if (*v0 < 0)
  {
    v4 = 0x286564756C637865;
    v2 = 0xE600000000000000;
    switch(*v0 & 0x7F)
    {
      case 1:
LABEL_4:
        v2 = 0xE400000000000000;
        v1 = 1684099177;
        break;
      case 2:
LABEL_6:
        v2 = 0xE700000000000000;
        v1 = OUTLINED_FUNCTION_0_70();
        break;
      case 3:
LABEL_7:
        v1 = OUTLINED_FUNCTION_2_25();
        break;
      case 4:
LABEL_5:
        v2 = 0xE300000000000000;
        v1 = 6513005;
        break;
      case 5:
LABEL_8:
        v1 = OUTLINED_FUNCTION_5_21();
        break;
      case 6:
LABEL_9:
        v2 = 0xE700000000000000;
        v1 = OUTLINED_FUNCTION_1_29();
        break;
      default:
        break;
    }
  }

  else
  {
    v4 = 0x286564756C636E69;
    v2 = 0xE600000000000000;
    switch(*v0)
    {
      case 1:
        goto LABEL_4;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_5;
      case 5:
        goto LABEL_8;
      case 6:
        goto LABEL_9;
      default:
        break;
    }
  }

  MEMORY[0x23192FF80](v1, v2);

  MEMORY[0x23192FF80](41, 0xE100000000000000);
  return v4;
}

uint64_t PrewarmDeviceTypeRestriction.DeviceType.rawValue.getter()
{
  result = 0x656E6F685069;
  switch(*v0)
  {
    case 1:
      result = 1684099177;
      break;
    case 2:
      result = OUTLINED_FUNCTION_0_70();
      break;
    case 3:
      result = 0x5654656C707061;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x6863746177;
      break;
    case 6:
      result = OUTLINED_FUNCTION_1_29();
      break;
    default:
      return result;
  }

  return result;
}

SiriSignals::PrewarmDeviceTypeRestriction::DeviceType_optional __swiftcall PrewarmDeviceTypeRestriction.DeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23152C0F4()
{
  result = qword_27DD5BB88;
  if (!qword_27DD5BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB88);
  }

  return result;
}

uint64_t sub_23152C16C@<X0>(uint64_t *a1@<X8>)
{
  result = PrewarmDeviceTypeRestriction.DeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23152C198()
{
  result = qword_27DD5BB90;
  if (!qword_27DD5BB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5BB98, &qword_23158CBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrewarmDeviceTypeRestriction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1F)
  {
    if (a2 + 225 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 225) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 226;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v5 >= 0x1E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for PrewarmDeviceTypeRestriction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1E)
  {
    v6 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
          *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrewarmDeviceTypeRestriction.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

BOOL sub_23152C49C(uint64_t a1)
{
  v3 = *v1;
  if (v3 == 7 || (sub_23151280C(*v1, 6) & 1) == 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      while (1)
      {
        v6 = *v5++;
        v7 = v6;
        v8 = v6 < 0;
        if (v6 < 0)
        {
          if ((v7 & 0x7F) == 7)
          {
            if (v3 == 7)
            {
              return 0;
            }
          }

          else
          {
            v11 = 0xE600000000000000;
            v12 = 0x656E6F685069;
            switch(v7 & 0x7F)
            {
              case 1:
                v11 = 0xE400000000000000;
                v12 = 1684099177;
                break;
              case 2:
                v11 = 0xE700000000000000;
                v12 = OUTLINED_FUNCTION_0_70();
                break;
              case 3:
                v11 = 0xE700000000000000;
                v12 = 0x5654656C707061;
                break;
              case 4:
                v11 = 0xE300000000000000;
                v12 = 6513005;
                break;
              case 5:
                v11 = 0xE500000000000000;
                v12 = 0x6863746177;
                break;
              case 6:
                v11 = 0xE700000000000000;
                v12 = OUTLINED_FUNCTION_1_29();
                break;
              default:
                break;
            }

            v17 = 0xE600000000000000;
            v18 = 0x656E6F685069;
            switch(v3)
            {
              case 0:
                break;
              case 1:
                v17 = 0xE400000000000000;
                v18 = 1684099177;
                break;
              case 2:
                OUTLINED_FUNCTION_4_22();
                break;
              case 3:
                v17 = 0xE700000000000000;
                v18 = 0x5654656C707061;
                break;
              case 4:
                v17 = 0xE300000000000000;
                v18 = 6513005;
                break;
              case 5:
                v17 = 0xE500000000000000;
                v18 = 0x6863746177;
                break;
              case 6:
                OUTLINED_FUNCTION_3_25();
                break;
              default:
                goto LABEL_51;
            }

            if (v12 == v18 && v11 == v17)
            {
LABEL_56:
              v8 = (v7 & 0x80u) == 0;

              return v8;
            }

            v20 = sub_231586C44();

            if (v20)
            {
              return 0;
            }
          }
        }

        else if (v7 == 7)
        {
          if (v3 == 7)
          {
            return 1;
          }
        }

        else
        {
          v9 = 0xE600000000000000;
          v10 = 0x656E6F685069;
          switch(v7)
          {
            case 1:
              v9 = 0xE400000000000000;
              v10 = 1684099177;
              break;
            case 2:
              v9 = 0xE700000000000000;
              v10 = OUTLINED_FUNCTION_0_70();
              break;
            case 3:
              v9 = 0xE700000000000000;
              v10 = 0x5654656C707061;
              break;
            case 4:
              v9 = 0xE300000000000000;
              v10 = 6513005;
              break;
            case 5:
              v9 = 0xE500000000000000;
              v10 = 0x6863746177;
              break;
            case 6:
              v9 = 0xE700000000000000;
              v10 = OUTLINED_FUNCTION_1_29();
              break;
            default:
              break;
          }

          v13 = 0xE600000000000000;
          v14 = 0x656E6F685069;
          switch(v3)
          {
            case 0:
              break;
            case 1:
              v13 = 0xE400000000000000;
              v14 = 1684099177;
              break;
            case 2:
              OUTLINED_FUNCTION_4_22();
              break;
            case 3:
              v13 = 0xE700000000000000;
              v14 = 0x5654656C707061;
              break;
            case 4:
              v13 = 0xE300000000000000;
              v14 = 6513005;
              break;
            case 5:
              v13 = 0xE500000000000000;
              v14 = 0x6863746177;
              break;
            case 6:
              OUTLINED_FUNCTION_3_25();
              break;
            default:
              goto LABEL_51;
          }

          if (v10 == v14 && v9 == v13)
          {
            goto LABEL_56;
          }

          v16 = sub_231586C44();

          if (v16)
          {
            return 1;
          }
        }

LABEL_51:
        if (!--v4)
        {
          return v8;
        }
      }
    }
  }

  return 1;
}

SiriSignals::IntervalFrequency __swiftcall IntervalFrequency.init(interval:count:)(Swift::Double interval, Swift::Int count)
{
  *v2 = interval;
  *(v2 + 8) = count;
  result.interval = interval;
  result.count = count;
  return result;
}

void sub_23152C7FC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_3_26(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23153A090(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_26();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_23152C8C0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_23153A0E8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_23152C978(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23153A100(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_26();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 16 * v6 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

double static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(void *a1, double a2)
{
  v4 = a1[2];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v40 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_1_30();
    sub_23152D698(v6, v7, v8);
    v5 = v40;
    v9 = a1 + 4;
    v10 = *(v40 + 16);
    v11 = v4;
    do
    {
      v12 = *v9;
      v41 = v5;
      v13 = *(v5 + 24);
      if (v10 >= v13 >> 1)
      {
        v14 = OUTLINED_FUNCTION_0_71(v13);
        sub_23152D698(v14, v10 + 1, 1);
        v5 = v41;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v12;
      v9 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }

  sub_23152C8C0(v5);
  v15 = MEMORY[0x277D84F90];
  if (v4)
  {
    v42 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_1_30();
    sub_23152D698(v16, v17, v18);
    v15 = v42;
    v19 = a1 + 4;
    v20 = *(v42 + 16);
    v21 = v4;
    do
    {
      v22 = *v19;
      v23 = *(v42 + 24);
      if (v20 >= v23 >> 1)
      {
        v24 = OUTLINED_FUNCTION_0_71(v23);
        sub_23152D698(v24, v20 + 1, 1);
      }

      *(v42 + 16) = v20 + 1;
      *(v42 + 8 * v20 + 32) = v22;
      v19 += 2;
      ++v20;
      --v21;
    }

    while (v21);
  }

  v25 = sub_23152CE94(&unk_284610928, v15);

  v26 = MEMORY[0x277D84F90];
  if (v4)
  {
    v43 = MEMORY[0x277D84F90];
    v27 = OUTLINED_FUNCTION_1_30();
    sub_23152D5F8(v27, v28, v29);
    v26 = v43;
    v30 = *(v43 + 16);
    v31 = a1 + 5;
    do
    {
      v33 = *v31;
      v31 += 2;
      v32 = v33;
      v34 = *(v43 + 24);
      if (v30 >= v34 >> 1)
      {
        v35 = OUTLINED_FUNCTION_0_71(v34);
        sub_23152D5F8(v35, v30 + 1, 1);
      }

      *(v43 + 16) = v30 + 1;
      *(v43 + 8 * v30++ + 32) = v32;
      --v4;
    }

    while (v4);
  }

  sub_23152D080(v25, v26, a2);
  v37 = v36;

  v38 = sub_23152D298(v37);

  return v38;
}

uint64_t static PriorDistributionUtils.normalize(scores:)(uint64_t a1)
{
  v1 = sub_23152D31C(a1);
  v2 = sub_23152D298(v1);
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v20 = MEMORY[0x277D84F90];
    sub_23152D698(0, v3, 0);
    v6 = v20;
    v7 = *(v20 + 16);
    v8 = 32;
    do
    {
      v9 = *(v1 + v8);
      v10 = *(v20 + 24);
      if (v7 >= v10 >> 1)
      {
        v11 = OUTLINED_FUNCTION_0_71(v10);
        sub_23152D698(v11, v7 + 1, 1);
      }

      *(v20 + 16) = v7 + 1;
      *(v20 + 8 * v7 + 32) = v9 - v5;
      v8 += 8;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    sub_23152D698(0, v12, 0);
    v13 = v4;
    v14 = *(v4 + 16);
    v15 = 32;
    do
    {
      v16 = exp(*(v6 + v15));
      v17 = *(v13 + 24);
      if (v14 >= v17 >> 1)
      {
        v18 = OUTLINED_FUNCTION_0_71(v17);
        sub_23152D698(v18, v14 + 1, 1);
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + 8 * v14 + 32) = v16;
      v15 += 8;
      ++v14;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_23152CE94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v26 = MEMORY[0x277D84F90];
  sub_23152D698(0, v6, 0);
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v27 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v22 = v12;
      sub_23152D698(v15 > 1, v16 + 1, 1);
      v12 = v22;
      result = v27;
    }

    --v11;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = (v13 + v14) * 0.5;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v23 + 32 + 8 * v6);
        v18 = *(v24 + 32 + 8 * v6);
        v28 = result;
        v20 = *(result + 16);
        v19 = *(result + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v12;
          sub_23152D698(v19 > 1, v20 + 1, 1);
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v20 + 1;
        *(result + 8 * v20 + 32) = (v17 + v18) * 0.5;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23152D080(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_23152D698(0, v8, 0);
  v22 = v7;
  v23 = v6;
  v20 = a1;
  v21 = a2;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v8;
  while (v6)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v12 = *v9;
    v13 = log(*v10);
    v15 = *(v24 + 16);
    v14 = *(v24 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_23152D698(v14 > 1, v15 + 1, 1);
    }

    --v7;
    *(v24 + 16) = v15 + 1;
    *(v24 + 8 * v15 + 32) = v13 + (0.0 - v12) / a3 * ((0.0 - v12) / a3) * -0.5;
    --v6;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_11:
      while (v23 != v8)
      {
        if (v8 >= v23)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        if (v22 == v8)
        {
          return;
        }

        if (v8 >= v22)
        {
          goto LABEL_24;
        }

        v16 = *(v20 + 32 + 8 * v8);
        v17 = log(*(v21 + 32 + 8 * v8));
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_23152D698(v18 > 1, v19 + 1, 1);
        }

        *(v24 + 16) = v19 + 1;
        *(v24 + 8 * v19 + 32) = v17 + (0.0 - v16) / a3 * ((0.0 - v16) / a3) * -0.5;
        ++v8;
      }

      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

double sub_23152D298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return -INFINITY;
  }

  v2 = (a1 + 32);
  v3 = -INFINITY;
  do
  {
    if (*v2 >= v3)
    {
      v4 = *v2;
    }

    else
    {
      v4 = v3;
    }

    if (*v2 < v3)
    {
      v3 = *v2;
    }

    if (v3 != -INFINITY)
    {
      v5 = exp(v3 - v4);
      v4 = v4 + log1p(v5);
    }

    ++v2;
    v3 = v4;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t sub_23152D31C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_23152D698(0, v1, 0);
    v4 = v28;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B650, &qword_23158AB20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231588FE0;
      *(inited + 32) = v6;
      *(inited + 40) = 0;

      if (v6 > 0.0)
      {
        break;
      }

      v8 = 0.0;
      if (v6 != -INFINITY)
      {
        goto LABEL_6;
      }

LABEL_7:
      v11 = *(v28 + 16);
      v10 = *(v28 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_23152D698(v10 > 1, v11 + 1, 1);
      }

      *(v28 + 16) = v12;
      *(v28 + 8 * v11 + 32) = v8;
      ++v5;
      if (!--v1)
      {
        goto LABEL_13;
      }
    }

    v8 = v6;
    v6 = 0.0;
LABEL_6:
    v9 = exp(v6 - v8);
    v8 = v8 + log1p(v9);
    goto LABEL_7;
  }

  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = 0;
    v14 = -INFINITY;
    do
    {
      v15 = v4 + 8 * v13;
      v16 = *(v15 + 32);
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(v15 + 32);
      }

      if (v16 >= v14)
      {
        v14 = *(v15 + 32);
      }

      if (v17 != -INFINITY)
      {
        v18 = exp(v17 - v14);
        v14 = v14 + log1p(v18);
      }

      ++v13;
    }

    while (v12 != v13);
    sub_23152D698(0, v12, 0);
    v19 = v2;
    v20 = exp(v14) + 1.0;
    v21 = *(v2 + 16);
    v22 = 32;
    do
    {
      v23 = exp(*(v4 + v22) - v14);
      v24 = sqrt(v23 * (1.0 - v23) / v20);
      v25 = log(v23 - v24);
      v26 = *(v2 + 24);
      if (v21 >= v26 >> 1)
      {
        sub_23152D698(v26 > 1, v21 + 1, 1);
      }

      *(v2 + 16) = v21 + 1;
      *(v2 + 8 * v21 + 32) = v25;
      v22 += 8;
      ++v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  return v19;
}

_BYTE *storeEnumTagSinglePayload for PriorDistributionUtils(_BYTE *result, int a2, int a3)
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

uint64_t static SelectedActionDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BBA0 = a1;
  *(&xmmword_27DD5BBA0 + 1) = a2;
  byte_27DD5BBB0 = a3;
  return result;
}

double sub_23152D990@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BBB0;
  result = *&xmmword_27DD5BBA0;
  *a1 = xmmword_27DD5BBA0;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_23152D9E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BBA0 = v1;
  *(&xmmword_27DD5BBA0 + 1) = v2;
  byte_27DD5BBB0 = v3;
  return result;
}

uint64_t sub_23152DA3C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_1(a1);
  result = sub_231586964();
  qword_280D6EB08 = result;
  qword_280D6EB10 = v2;
  return result;
}

uint64_t *sub_23152DA84()
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
  }

  return &qword_280D6EB08;
}

uint64_t static SelectedActionDisambiguationFrequencySignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6EB00 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6EB08;

  return v1;
}

uint64_t static SelectedActionDisambiguationFrequencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
  }

  swift_beginAccess();
  qword_280D6EB08 = a1;
  qword_280D6EB10 = a2;
}

uint64_t (*static SelectedActionDisambiguationFrequencySignal.signalName.modify())(uint64_t a1)
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

double sub_23152DC0C@<D0>(void *a1@<X8>)
{
  sub_23152DA84();
  swift_beginAccess();
  v2 = qword_280D6EB10;
  *a1 = qword_280D6EB08;
  a1[1] = v2;

  return result;
}

uint64_t sub_23152DC60(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23152DA84();
  swift_beginAccess();
  qword_280D6EB08 = v2;
  qword_280D6EB10 = v1;
}

uint64_t SelectedActionDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
  }

  swift_beginAccess();
  v0 = qword_280D6EB08;
  v1 = qword_280D6EB10;

  MEMORY[0x23192FF80](v0, v1);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  sub_231586A54();
  return 0;
}

uint64_t type metadata accessor for SelectedActionDisambiguationFrequencySignal(uint64_t a1)
{
  result = qword_280D6EAF0;
  if (!qword_280D6EAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectedActionDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152E2C8(v3, v1, v2);
}

uint64_t sub_23152DE38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for SelectedActionDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_284612838;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_23152DEF8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152E2C8(v3, v1, v2);
}

uint64_t _s11SiriSignals43SelectedActionDisambiguationFrequencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v12[3] = &type metadata for NoParameters;
  v12[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v4 = qword_280D72208;
  sub_2315144B0(v12, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6();
    v7 = v6(v5);
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152E560, v8, byte_28460FCD0);
    v9 = OUTLINED_FUNCTION_3_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_23152E0E8(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v17[3] = &type metadata for SignalComputationContext;
  v17[4] = &protocol witness table for SignalComputationContext;
  v6 = swift_allocObject();
  v17[0] = v6;
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  sub_2314B5008(a1, v16);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v8 = qword_280D72208;
  sub_2315144B0(v17, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152E540, v12, byte_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v8;
}

uint64_t sub_23152E2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = a2;
  v18[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = (*(v10 + 32))(v12, v8, v9);
    MEMORY[0x28223BE20](v15);
    *(&v17 - 2) = v12;
    v14 = sub_23150466C(sub_23152E560, (&v17 - 4), byte_28460FCD0);
    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BBB8 = a1;
  *(&xmmword_27DD5BBB8 + 1) = a2;
  byte_27DD5BBC8 = a3;
  return result;
}

double sub_23152E654@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BBC8;
  result = *&xmmword_27DD5BBB8;
  *a1 = xmmword_27DD5BBB8;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_23152E6A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BBB8 = v1;
  *(&xmmword_27DD5BBB8 + 1) = v2;
  byte_27DD5BBC8 = v3;
  return result;
}

uint64_t sub_23152E700(uint64_t a1)
{
  OUTLINED_FUNCTION_8_1(a1);
  result = sub_231586964();
  qword_280D6EBC0 = result;
  qword_280D6EBC8 = v2;
  return result;
}

uint64_t *sub_23152E748()
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
  }

  return &qword_280D6EBC0;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6EBB8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6EBC0;

  return v1;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
  }

  swift_beginAccess();
  qword_280D6EBC0 = a1;
  qword_280D6EBC8 = a2;
}

uint64_t (*static SelectedAppDisambiguationFrequencySignal.signalName.modify())(uint64_t a1)
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

double sub_23152E8D0@<D0>(void *a1@<X8>)
{
  sub_23152E748();
  swift_beginAccess();
  v2 = qword_280D6EBC8;
  *a1 = qword_280D6EBC0;
  a1[1] = v2;

  return result;
}

uint64_t sub_23152E924(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23152E748();
  swift_beginAccess();
  qword_280D6EBC0 = v2;
  qword_280D6EBC8 = v1;
}

uint64_t SelectedAppDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
  }

  swift_beginAccess();
  v0 = qword_280D6EBC0;
  v1 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v0, v1);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  sub_231586A54();
  return 0;
}

uint64_t type metadata accessor for SelectedAppDisambiguationFrequencySignal(uint64_t a1)
{
  result = qword_280D6EBA0;
  if (!qword_280D6EBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152EF8C(v3, v1, v2);
}

uint64_t sub_23152EAFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for SelectedAppDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_284612860;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_23152EBBC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152EF8C(v3, v1, v2);
}

uint64_t _s11SiriSignals40SelectedAppDisambiguationFrequencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v12[3] = &type metadata for NoParameters;
  v12[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v4 = qword_280D72208;
  sub_2315144B0(v12, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6();
    v7 = v6(v5);
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152F224, v8, byte_28460FCD0);
    v9 = OUTLINED_FUNCTION_3_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_23152EDAC(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v17[3] = &type metadata for SignalComputationContext;
  v17[4] = &protocol witness table for SignalComputationContext;
  v6 = swift_allocObject();
  v17[0] = v6;
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  sub_2314B5008(a1, v16);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v8 = qword_280D72208;
  sub_2315144B0(v17, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152F204, v12, byte_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v8;
}

uint64_t sub_23152EF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = a2;
  v18[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = (*(v10 + 32))(v12, v8, v9);
    MEMORY[0x28223BE20](v15);
    *(&v17 - 2) = v12;
    v14 = sub_23150466C(sub_23152F224, (&v17 - 4), byte_28460FCD0);
    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_23152F23C@<X0>(void *a1@<X8>)
{
  v2 = sub_231586674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_231586654();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v8 = sub_231586064();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_5();
  sub_2314AA3E8();
  sub_231586054();
  sub_23151FBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_23151FC30();
  sub_2315867C4();
  v9 = *MEMORY[0x277D85260];
  v10 = *(v3 + 104);
  v10(v6, v9, v2);
  OUTLINED_FUNCTION_1_31();
  v11 = sub_2315866A4();
  sub_231586644();
  sub_231586054();
  v10(v6, v9, v2);
  OUTLINED_FUNCTION_1_31();
  result = sub_2315866A4();
  *a1 = 0x6C6169726573;
  a1[1] = 0xE600000000000000;
  a1[2] = v11;
  a1[3] = 0x6C656C6C61726170;
  a1[4] = 0xE800000000000000;
  a1[5] = result;
  return result;
}

uint64_t INFERENCESchemaINFERENCECommonAppIndependentSignals.description.getter()
{
  OUTLINED_FUNCTION_6_18();
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawLanguage];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawLocale];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawStateOrProvince];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawCountry];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawRequestDeviceCategory];
  v1 = OUTLINED_FUNCTION_2_27();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 clientDayOfWeek];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawClientHourOfDay];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000018);
  [v0 isClientDaylight];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 appResolutionType];
  sub_231586704();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 sirikitResponseCode];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000018);
  [v0 appSelectionUses];
  v2 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 modelVersion];
  v3 = sub_231586C24();
  MEMORY[0x23192FF80](v3);

  MEMORY[0x23192FF80](2099257354, 0xE400000000000000);
  return v5;
}

uint64_t INFERENCESchemaINFERENCECommonAppDependentSignals.description.getter()
{
  v1 = v0;
  v2 = 1162760014;
  OUTLINED_FUNCTION_6_18();
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  sub_231530494(v0);
  v3 = 0xE400000000000000;
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 isFirstPartyBundle];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 isForegroundApp];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 isResolvedApp];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 appScoreFromModel];
  sub_2315864F4();
  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000023);
  [v0 compoundActiveBundleScore];
  sub_2315864E4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 totalTimeSpentByUserInAppPerDay];
  sub_231586C24();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000023);
  [v0 timeSpentByUserInAppToday];
  sub_231586C24();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 timeSinceAppLastLaunchedInSec];
  sub_231586C24();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v4 = [v0 appDependentFrequencyAndRecencySignals];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];

    v7 = sub_2315861A4();
    v3 = v8;
  }

  else
  {
    v7 = 1162760014;
  }

  MEMORY[0x23192FF80](v7, v3);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v9 = [v1 appDependentEntityFrequencyAndRecencySignals];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v2 = sub_2315861A4();
    v13 = v12;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x23192FF80](v2, v13);

  MEMORY[0x23192FF80](0x7D202020200ALL, 0xE600000000000000);
  return v15;
}

id sub_23152FC78(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_231586174();

  return v5;
}

uint64_t INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals.description.getter()
{
  OUTLINED_FUNCTION_6_18();
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 appUsageCount2Min];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001ELL);
  [v0 appUsageCount10Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001CLL);
  [v0 appUsageCount1Hr];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001DLL);
  [v0 appUsageCount6Hrs];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001DLL);
  [v0 appUsageCount1Day];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001ELL);
  [v0 appUsageCount7Days];
  v1 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001FLL);
  [v0 appUsageCount14Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001FLL);
  [v0 appUsageCount28Days];
  v2 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001CLL);
  [v0 appUsageCountInf];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000021);
  [v0 recencyOrderOfAppUsed];
  v3 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v3);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000021);
  [v0 timeSinceAppUsedInSec];
  sub_231586C24();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000025);
  [v0 appUsageCountFromSiri2Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000026);
  [v0 appUsageCountFromSiri10Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000024);
  [v0 appUsageCountFromSiri1Hr];
  v4 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v4);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000025);
  [v0 appUsageCountFromSiri6Hrs];
  v5 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v5);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000025);
  [v0 appUsageCountFromSiri1Day];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000026);
  [v0 appUsageCountFromSiri7Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000027);
  [v0 appUsageCountFromSiri14Days];
  v6 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v6);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000027);
  [v0 appUsageCountFromSiri28Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000024);
  [v0 appUsageCountFromSiriInf];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 recencyOrderOfAppUsageFromSiri];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000029);
  [v0 timeSinceAppUsedFromSiriInSec];
  sub_231586C24();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 taskAbandonCountInUsingApp2Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp10Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000029);
  [v0 taskAbandonCountInUsingApp1Hr];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 taskAbandonCountInUsingApp6Hrs];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 taskAbandonCountInUsingApp1Day];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp7Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp14Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp28Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000029);
  [v0 taskAbandonCountInUsingAppInf];
  v7 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v7);

  MEMORY[0x23192FF80](0x7D2020202020200ALL, 0xE800000000000000);
  return v9;
}

uint64_t sub_231530494(void *a1)
{
  v1 = [a1 appBundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2315861A4();

  return v3;
}

void *SELFMessageBuilding.populateCommonIndependent(from:)(uint64_t *a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D58218]) init];
  if (v1)
  {
    v2 = v1;
    if (qword_280D6F7B0 != -1)
    {
      swift_once();
    }

    v3 = [v2 rawLanguage];
    v5 = OUTLINED_FUNCTION_0_75(v4);
    if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v5;
    }

    [v2 setRawLanguage_];
    if (qword_280D6F8D8 != -1)
    {
      swift_once();
    }

    v8 = [v2 rawLocale];
    v10 = OUTLINED_FUNCTION_0_75(v9);
    if (v11)
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    [v2 setRawLocale_];
    if (qword_280D6F8F8 != -1)
    {
      swift_once();
    }

    v13 = [v2 rawRequestDeviceCategory];
    v15 = OUTLINED_FUNCTION_1_33(v14);
    if (v16)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    [v2 setRawRequestDeviceCategory_];
    OUTLINED_FUNCTION_3_27();
    OUTLINED_FUNCTION_2_28();
    sub_231586A54();
    v18 = [v2 rawClientHourOfDay];
    v20 = OUTLINED_FUNCTION_1_33(v19);
    v22 = v21;

    v23 = 0x7FFFFFFF;
    if (v20 < 0x7FFFFFFF)
    {
      v23 = v20;
    }

    if (v20 >= 0xFFFFFFFF80000000)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0x80000000;
    }

    if (v22)
    {
      v25 = v18;
    }

    else
    {
      v25 = v24;
    }

    [v2 setRawClientHourOfDay_];
    OUTLINED_FUNCTION_3_27();
    OUTLINED_FUNCTION_2_28();
    sub_231586A54();
    v26 = [v2 clientDayOfWeek];
    v28 = sub_2315414E8(v27, v41, v42, 0, 0);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      if (v28 < 0xFFFFFFFF80000000)
      {
        v26 = 0x80000000;
      }

      else if (v28 >= 0x7FFFFFFF)
      {
        v26 = 0x7FFFFFFFLL;
      }

      else
      {
        v26 = v28;
      }
    }

    [v2 setClientDayOfWeek_];
    if (qword_27DD5AD58 != -1)
    {
      swift_once();
    }

    v31 = [v2 isClientDaylight];
    v33 = OUTLINED_FUNCTION_0_75(v32) != 0;
    if (v34)
    {
      v35 = v31;
    }

    else
    {
      v35 = v33;
    }

    [v2 setIsClientDaylight_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v36 = sub_231585FF4();
    __swift_project_value_buffer(v36, qword_280D72248);
    v37 = sub_231585FE4();
    v38 = sub_2315865E4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_231496000, v37, v38, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppIndependentSignals", v39, 2u);
      MEMORY[0x231931280](v39, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t SELFMessageBuilding.populateCommonDependents(from:domainUseCase:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v7[2] = a3;
  v7[3] = a4;
  v7[6] = v4;
  v8 = v5;
  return sub_2314DD244(sub_231531CAC, v7, v4);
}

void *sub_231530998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v11[1] = a3;
  v8 = *a1;
  v9 = a1[1];
  v11[0] = a2;
  v12 = a4;
  result = sub_231530A00(v11, &v12, v8, v9, a5, a6);
  *a7 = result;
  return result;
}

void *sub_231530A00(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = [objc_allocWithZone(MEMORY[0x277D58210]) init];
  if (v11)
  {
    v12 = v11;
    v13 = sub_231586174();
    [v12 setAppBundleId_];

    if (qword_280D6D5F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = qword_280D6D600;
    v15 = qword_280D6D608;

    v16 = [v12 totalTimeSpentByUserInAppPerDay];
    v65 = v8;
    v66 = v9;
    v18 = sub_2315414E8(v17, v14, v15, a3, a4);
    v20 = v19;

    v21 = -1;
    if (v18 < 0xFFFFFFFF)
    {
      v21 = v18;
    }

    if (v18 < 0)
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v16;
    }

    else
    {
      v22 = v21;
    }

    [v12 setTotalTimeSpentByUserInAppPerDay_];
    if (qword_27DD5AE50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = qword_27DD5C198;
    v24 = qword_27DD5C1A0;

    v25 = [v12 timeSpentByUserInAppToday];
    v63 = v8;
    v64 = v9;
    v27 = sub_2315414E8(v26, v23, v24, a3, a4);
    v29 = v28;

    v30 = -1;
    if (v27 < 0xFFFFFFFF)
    {
      v30 = v27;
    }

    if (v27 < 0)
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v25;
    }

    else
    {
      v31 = v30;
    }

    [v12 setTimeSpentByUserInAppToday_];
    if (qword_280D6F020 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = qword_280D6F028;
    v33 = qword_280D6F030;

    v34 = [v12 timeSinceAppLastLaunchedInSec];
    v61 = v8;
    v62 = v9;
    v36 = sub_2315414E8(v35, v32, v33, a3, a4);
    v38 = v37;

    v39 = 0x7FFFFFFF;
    if (v36 < 0x7FFFFFFF)
    {
      v39 = v36;
    }

    if (v36 >= 0xFFFFFFFF80000000)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0x80000000;
    }

    if (v38)
    {
      v41 = v34;
    }

    else
    {
      v41 = v40;
    }

    [v12 setTimeSinceAppLastLaunchedInSec_];
    if (qword_280D6CE18 != -1)
    {
      swift_once();
    }

    v42 = qword_280D6CE20;
    v43 = *algn_280D6CE28;
    v44 = [v12 isForegroundApp];
    v61 = v8;
    v62 = v9;
    v46 = sub_2315414E8(v45, v42, v43, a3, a4) != 0;
    if (v47)
    {
      v48 = v44;
    }

    else
    {
      v48 = v46;
    }

    [v12 setIsForegroundApp_];
    v49 = [v12 isFirstPartyBundle];
    v61 = v8;
    v62 = v9;
    v51 = sub_2315414E8(v50, 0xD000000000000016, 0x80000002315917D0, a3, a4) != 0;
    if (v52)
    {
      v53 = v49;
    }

    else
    {
      v53 = v51;
    }

    [v12 setIsFirstPartyBundle_];
    if (v10 != 17)
    {
      v61 = v8;
      v62 = v9;
      v54 = sub_231530EF8(&v61, a3, a4);
      if (v54)
      {
        v55 = v54;
        [v12 setAppDependentFrequencyAndRecencySignals_];
      }
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v56 = sub_231585FF4();
    __swift_project_value_buffer(v56, qword_280D72248);
    v57 = sub_231585FE4();
    v58 = sub_2315865E4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_231496000, v57, v58, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentSignals", v59, 2u);
      MEMORY[0x231931280](v59, -1, -1);
    }

    return 0;
  }

  return v12;
}

void *sub_231530EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D58208]) init];
  if (v5)
  {
    v6 = v5;
    if (qword_280D6D6B0 != -1)
    {
      swift_once();
    }

    v7 = qword_280D6D6B8;
    v8 = unk_280D6D6C0;
    v192 = DomainUseCase.rawValue.getter();
    v196 = v9;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v7, v8);
    v10 = [v6 timeSinceAppUsedInSec];
    v12 = sub_2315414E8(v11, v192, v196, a2, a3);
    LOBYTE(v7) = v13;

    if (v7)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    [v6 setTimeSinceAppUsedInSec_];
    if (qword_280D6CEE8 != -1)
    {
      swift_once();
    }

    v15 = qword_280D6CEF0;
    v16 = unk_280D6CEF8;
    v193 = DomainUseCase.rawValue.getter();
    v197 = v17;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v15, v16);
    v18 = [v6 recencyOrderOfAppUsed];
    v20 = sub_2315414E8(v19, v193, v197, a2, a3);
    v22 = v21;

    v23 = 0x7FFFFFFF;
    if (v20 < 0x7FFFFFFF)
    {
      v23 = v20;
    }

    if (v20 >= 0xFFFFFFFF80000000)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0x80000000;
    }

    if (v22)
    {
      v25 = v18;
    }

    else
    {
      v25 = v24;
    }

    [v6 setRecencyOrderOfAppUsed_];
    v26 = v6;
    if (qword_280D6D2E0 != -1)
    {
      swift_once();
    }

    v27 = qword_280D6D2E8;
    v28 = unk_280D6D2F0;
    v194 = DomainUseCase.rawValue.getter();
    v198 = v29;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v27, v28);
    v30 = sub_231531C44(v194, v198, 0);
    v32 = v31;
    v33 = [v6 appUsageCount2Min];
    v35 = sub_2315414E8(v34, v30, v32, a2, a3);
    v37 = v36;

    v38 = 0x7FFFFFFF;
    if (v35 < 0x7FFFFFFF)
    {
      v38 = v35;
    }

    if (v35 >= 0xFFFFFFFF80000000)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x80000000;
    }

    if (v37)
    {
      v40 = v33;
    }

    else
    {
      v40 = v39;
    }

    [v26 setAppUsageCount2Min_];
    v41 = sub_231531C44(v194, v198, 1);
    v43 = v42;
    v190 = [v26 appUsageCount10Min];
    v45 = sub_2315414E8(v44, v41, v43, a2, a3);
    v47 = v46;

    v48 = 0x7FFFFFFF;
    if (v45 < 0x7FFFFFFF)
    {
      v48 = v45;
    }

    if (v45 >= 0xFFFFFFFF80000000)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }

    if (v47)
    {
      v50 = v190;
    }

    else
    {
      v50 = v49;
    }

    [v26 setAppUsageCount10Min_];
    v51 = sub_231531C44(v194, v198, 2);
    v53 = v52;
    v54 = [v26 appUsageCount1Hr];
    v56 = sub_2315414E8(v55, v51, v53, a2, a3);
    v58 = v57;

    v59 = 0x7FFFFFFF;
    if (v56 < 0x7FFFFFFF)
    {
      v59 = v56;
    }

    if (v56 >= 0xFFFFFFFF80000000)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0x80000000;
    }

    if (v58)
    {
      v61 = v54;
    }

    else
    {
      v61 = v60;
    }

    [v26 setAppUsageCount1Hr_];
    v62 = sub_231531C44(v194, v198, 3);
    v64 = v63;
    v65 = [v26 appUsageCount6Hrs];
    v67 = sub_2315414E8(v66, v62, v64, a2, a3);
    v69 = v68;

    v70 = 0x7FFFFFFF;
    if (v67 < 0x7FFFFFFF)
    {
      v70 = v67;
    }

    if (v67 >= 0xFFFFFFFF80000000)
    {
      v71 = v70;
    }

    else
    {
      v71 = 0x80000000;
    }

    if (v69)
    {
      v72 = v65;
    }

    else
    {
      v72 = v71;
    }

    [v26 setAppUsageCount6Hrs_];
    v73 = sub_231531C44(v194, v198, 4);
    v75 = v74;
    v191 = [v26 appUsageCount1Day];
    v77 = sub_2315414E8(v76, v73, v75, a2, a3);
    v79 = v78;

    v80 = 0x7FFFFFFF;
    if (v77 < 0x7FFFFFFF)
    {
      v80 = v77;
    }

    if (v77 >= 0xFFFFFFFF80000000)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0x80000000;
    }

    if (v79)
    {
      v82 = v191;
    }

    else
    {
      v82 = v81;
    }

    [v26 setAppUsageCount1Day_];
    v83 = sub_231531C44(v194, v198, 5);
    v85 = v84;
    v86 = [v26 appUsageCount7Days];
    v88 = sub_2315414E8(v87, v83, v85, a2, a3);
    v90 = v89;

    v91 = 0x7FFFFFFF;
    if (v88 < 0x7FFFFFFF)
    {
      v91 = v88;
    }

    if (v88 >= 0xFFFFFFFF80000000)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0x80000000;
    }

    if (v90)
    {
      v93 = v86;
    }

    else
    {
      v93 = v92;
    }

    [v26 setAppUsageCount7Days_];
    v94 = sub_231531C44(v194, v198, 6);
    v96 = v95;
    v97 = [v26 appUsageCount28Days];
    v99 = sub_2315414E8(v98, v94, v96, a2, a3);
    v101 = v100;

    v102 = 0x7FFFFFFF;
    if (v99 < 0x7FFFFFFF)
    {
      v102 = v99;
    }

    if (v99 >= 0xFFFFFFFF80000000)
    {
      v103 = v102;
    }

    else
    {
      v103 = 0x80000000;
    }

    if (v101)
    {
      v104 = v97;
    }

    else
    {
      v104 = v103;
    }

    [v26 setAppUsageCount28Days_];
    v105 = sub_231531C44(v194, v198, 7);
    v107 = v106;

    v108 = [v26 appUsageCountInf];
    v110 = sub_2315414E8(v109, v105, v107, a2, a3);
    v112 = v111;

    v113 = 0x7FFFFFFF;
    if (v110 < 0x7FFFFFFF)
    {
      v113 = v110;
    }

    if (v110 >= 0xFFFFFFFF80000000)
    {
      v114 = v113;
    }

    else
    {
      v114 = 0x80000000;
    }

    if (v112)
    {
      v115 = v108;
    }

    else
    {
      v115 = v114;
    }

    [v26 setAppUsageCountInf_];
    v116 = v26;
    if (qword_280D6CB18 != -1)
    {
      swift_once();
    }

    v117 = qword_280D6CB20;
    v118 = *algn_280D6CB28;
    v195 = DomainUseCase.rawValue.getter();
    v199 = v119;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v117, v118);
    v120 = sub_231531C44(v195, v199, 0);
    v122 = v121;
    v123 = [v26 taskAbandonCountInUsingApp2Min];
    v125 = sub_2315414E8(v124, v120, v122, a2, a3);
    v127 = v126;

    v128 = 0x7FFFFFFF;
    if (v125 < 0x7FFFFFFF)
    {
      v128 = v125;
    }

    if (v125 >= 0xFFFFFFFF80000000)
    {
      v129 = v128;
    }

    else
    {
      v129 = 0x80000000;
    }

    if (v127)
    {
      v130 = v123;
    }

    else
    {
      v130 = v129;
    }

    [v26 setTaskAbandonCountInUsingApp2Min_];
    v131 = sub_231531C44(v195, v199, 1);
    v133 = v132;
    v134 = [v26 taskAbandonCountInUsingApp10Min];
    v136 = sub_2315414E8(v135, v131, v133, a2, a3);
    v138 = v137;

    v139 = 0x7FFFFFFF;
    if (v136 < 0x7FFFFFFF)
    {
      v139 = v136;
    }

    if (v136 >= 0xFFFFFFFF80000000)
    {
      v140 = v139;
    }

    else
    {
      v140 = 0x80000000;
    }

    if (v138)
    {
      v141 = v134;
    }

    else
    {
      v141 = v140;
    }

    [v26 setTaskAbandonCountInUsingApp10Min_];
    v142 = sub_231531C44(v195, v199, 2);
    v144 = v143;
    v145 = [v26 taskAbandonCountInUsingApp1Hr];
    v147 = sub_2315414E8(v146, v142, v144, a2, a3);
    LOBYTE(v142) = v148;

    if ((v142 & 1) == 0)
    {
      if (v147 < 0xFFFFFFFF80000000)
      {
        v145 = 0x80000000;
      }

      else if (v147 >= 0x7FFFFFFF)
      {
        v145 = 0x7FFFFFFFLL;
      }

      else
      {
        v145 = v147;
      }
    }

    [v26 setTaskAbandonCountInUsingApp1Hr_];
    v149 = sub_231531C44(v195, v199, 3);
    v151 = v150;
    v152 = [v26 taskAbandonCountInUsingApp6Hrs];
    v154 = sub_2315414E8(v153, v149, v151, a2, a3);
    LOBYTE(v149) = v155;

    if ((v149 & 1) == 0)
    {
      if (v154 < 0xFFFFFFFF80000000)
      {
        v152 = 0x80000000;
      }

      else if (v154 >= 0x7FFFFFFF)
      {
        v152 = 0x7FFFFFFFLL;
      }

      else
      {
        v152 = v154;
      }
    }

    [v26 setTaskAbandonCountInUsingApp6Hrs_];
    v156 = sub_231531C44(v195, v199, 4);
    v158 = v157;
    v159 = [v26 taskAbandonCountInUsingApp1Day];
    v161 = sub_2315414E8(v160, v156, v158, a2, a3);
    LOBYTE(v156) = v162;

    if ((v156 & 1) == 0)
    {
      if (v161 < 0xFFFFFFFF80000000)
      {
        v159 = 0x80000000;
      }

      else if (v161 >= 0x7FFFFFFF)
      {
        v159 = 0x7FFFFFFFLL;
      }

      else
      {
        v159 = v161;
      }
    }

    [v26 setTaskAbandonCountInUsingApp1Day_];
    v163 = sub_231531C44(v195, v199, 5);
    v165 = v164;
    v166 = [v26 taskAbandonCountInUsingApp7Days];
    v168 = sub_2315414E8(v167, v163, v165, a2, a3);
    LOBYTE(v163) = v169;

    if ((v163 & 1) == 0)
    {
      if (v168 < 0xFFFFFFFF80000000)
      {
        v166 = 0x80000000;
      }

      else if (v168 >= 0x7FFFFFFF)
      {
        v166 = 0x7FFFFFFFLL;
      }

      else
      {
        v166 = v168;
      }
    }

    [v26 setTaskAbandonCountInUsingApp7Days_];
    v170 = sub_231531C44(v195, v199, 6);
    v172 = v171;
    v173 = [v26 taskAbandonCountInUsingApp28Days];
    v175 = sub_2315414E8(v174, v170, v172, a2, a3);
    LOBYTE(v170) = v176;

    if ((v170 & 1) == 0)
    {
      if (v175 < 0xFFFFFFFF80000000)
      {
        v173 = 0x80000000;
      }

      else if (v175 >= 0x7FFFFFFF)
      {
        v173 = 0x7FFFFFFFLL;
      }

      else
      {
        v173 = v175;
      }
    }

    [v26 setTaskAbandonCountInUsingApp28Days_];
    v177 = sub_231531C44(v195, v199, 7);
    v179 = v178;

    v180 = [v26 taskAbandonCountInUsingAppInf];
    v182 = sub_2315414E8(v181, v177, v179, a2, a3);
    v184 = v183;

    if ((v184 & 1) == 0)
    {
      if (v182 < 0xFFFFFFFF80000000)
      {
        v180 = 0x80000000;
      }

      else if (v182 >= 0x7FFFFFFF)
      {
        v180 = 0x7FFFFFFFLL;
      }

      else
      {
        v180 = v182;
      }
    }

    [v26 setTaskAbandonCountInUsingAppInf_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v185 = sub_231585FF4();
    __swift_project_value_buffer(v185, qword_280D72248);
    v186 = sub_231585FE4();
    v187 = sub_2315865E4();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      *v188 = 0;
      _os_log_impl(&dword_231496000, v186, v187, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals", v188, 2u);
      MEMORY[0x231931280](v188, -1, -1);
    }

    return 0;
  }

  return v116;
}

uint64_t sub_231531C44(uint64_t a1, uint64_t a2, char a3)
{
  MEMORY[0x23192FF80](a1, a2);
  OUTLINED_FUNCTION_2_28();
  sub_231586A54();
  return 0;
}

void sub_231531CFC()
{
  v0 = sub_231586024();
  OUTLINED_FUNCTION_4_1();
  v48 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v46 = v4 - v3;
  v47 = sub_231586064();
  OUTLINED_FUNCTION_4_1();
  v45 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v44 = v8 - v7;
  v9 = sub_231586014();
  OUTLINED_FUNCTION_4_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  sub_231586094();
  OUTLINED_FUNCTION_4_1();
  v42 = v17;
  v43 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = sub_231586034();
  OUTLINED_FUNCTION_4_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  if (qword_280D6CB30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(qword_280D72140 + 16))
  {
    sub_2314AA3E8();
    (*(v25 + 104))(v29, *MEMORY[0x277D851A8], v23);
    v41 = sub_2315866B4();
    (*(v25 + 8))(v29, v23);
    sub_231586074();
    *v15 = 1;
    (*(v11 + 104))(v15, *MEMORY[0x277D85188], v9);
    MEMORY[0x23192FD80](v20, v15);
    (*(v11 + 8))(v15, v9);
    v30 = v43;
    v31 = *(v42 + 8);
    v31(v20, v43);
    v32 = v31;
    aBlock[4] = sub_231532610;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23149B484;
    aBlock[3] = &block_descriptor_16;
    v33 = _Block_copy(aBlock);
    v34 = v44;
    sub_231586054();
    v49 = MEMORY[0x277D84F90];
    sub_2314BCC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314BCC5C();
    v35 = v46;
    sub_2315867C4();
    v36 = v41;
    MEMORY[0x231930340](v22, v34, v35, v33);
    _Block_release(v33);

    (*(v48 + 8))(v35, v0);
    (*(v45 + 8))(v34, v47);
    v32(v22, v30);
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v37 = sub_231585FF4();
    __swift_project_value_buffer(v37, qword_280D72248);
    v38 = sub_231585FE4();
    v39 = sub_2315865D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_231496000, v38, v39, "GlobalCacheManager: no caches to invalidate", v40, 2u);
      MEMORY[0x231931280](v40, -1, -1);
    }
  }
}

uint64_t sub_231532284()
{
  if (qword_280D6CB30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = qword_280D72140;
  v1 = *(qword_280D72140 + 16);
  if (v1)
  {
    v2 = qword_280D72140 + 32;

    do
    {
      sub_2314A2C74(v2, v17);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      if (sub_2314D391C())
      {
        if (qword_280D70420 != -1)
        {
          swift_once();
        }

        v3 = sub_231585FF4();
        __swift_project_value_buffer(v3, qword_280D72248);
        sub_2314A2C74(v17, v15);
        v4 = sub_231585FE4();
        v5 = sub_2315865D4();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v6 = 136315138;
          __swift_project_boxed_opaque_existential_1(v15, v16);

          __swift_destroy_boxed_opaque_existential_1(v15);
          v7 = sub_2314A22E8();

          *(v6 + 4) = v7;
          _os_log_impl(&dword_231496000, v4, v5, "GlobalCacheManager: %s is empty; not invalidating", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x231931280](v13, -1, -1);
          MEMORY[0x231931280](v6, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v15);
        }
      }

      else
      {
        if (qword_280D70420 != -1)
        {
          swift_once();
        }

        v8 = sub_231585FF4();
        __swift_project_value_buffer(v8, qword_280D72248);
        sub_2314A2C74(v17, v15);
        v9 = sub_231585FE4();
        v10 = sub_2315865D4();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v11 = 136315138;
          __swift_project_boxed_opaque_existential_1(v15, v16);

          __swift_destroy_boxed_opaque_existential_1(v15);
          v12 = sub_2314A22E8();

          *(v11 + 4) = v12;
          _os_log_impl(&dword_231496000, v9, v10, "GlobalCacheManager: invalidating %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v14);
          MEMORY[0x231931280](v14, -1, -1);
          MEMORY[0x231931280](v11, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v15);
        }

        __swift_project_boxed_opaque_existential_1(v17, v18);
        sub_2314D3B5C();
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t Signal.Source.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

uint64_t sub_2315326AC(uint64_t a1)
{
  sub_231586D14();
  Signal.Source.hash(into:)();
  return sub_231586D44();
}

uint64_t Signal.Metadata.turnId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Signal.Metadata.resultCandidateId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Signal.Metadata.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_231585884();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t Signal.Metadata.init(turnId:resultCandidateId:source:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v10;
  v11 = *(type metadata accessor for Signal.Metadata(0, a7, a3, a4) + 36);
  sub_231585884();
  OUTLINED_FUNCTION_8();
  v13 = *(v12 + 32);

  return v13(a8 + v11, a6);
}

uint64_t Signal.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 28);
  type metadata accessor for Signal.Metadata(0, *(a1 + 16), a2, a3);
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 16);

  return v9(a4, v4 + v6, v7);
}

uint64_t Signal.init(value:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = *(type metadata accessor for Signal(0, a3, v7, v8) + 28);
  type metadata accessor for Signal.Metadata(0, a3, v10, v11);
  OUTLINED_FUNCTION_8();
  v13 = *(v12 + 32);

  return v13(a4 + v9, a2);
}

uint64_t sub_2315329F8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  v4 = v1;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for Signal.Metadata(319, v1, v2, v3);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_231532A90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_231585884();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v14 = v8;
  v15 = v13 | 7;
  v16 = (v13 | 7) + *(v6 + 64);
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = ((v13 + 33) & ~v13) + *(*(v8 - 8) + 64) + (v16 & ~v15);
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 >= v11)
  {
    v27 = a1;
    v10 = v7;
    v14 = v5;
  }

  else
  {
    v25 = (a1 + v16) & ~v15;
    if (v10 <= 0x7FFFFFFE)
    {
      v26 = *(v25 + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if ((v26 + 1) >= 2)
      {
        return v26;
      }

      else
      {
        return 0;
      }
    }

    v27 = ((v13 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13);
  }

  return __swift_getEnumTagSinglePayload(v27, v10, v14);
}

void sub_231532D0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_231585884();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 | 7) + *(v8 + 64);
  v17 = v16 & ~(v15 | 7);
  v18 = ((v15 + 33) & ~v15) + *(*(v10 - 8) + 64);
  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  if (a3 <= v14)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v14 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_63:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 >= v13)
        {
          v31 = a1;
          v32 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (&a1[v16] & ~(v15 | 7));
          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v28 = ~(-1 << (8 * v18));
            }

            else
            {
              v28 = -1;
            }

            if (v18)
            {
              v29 = v28 & (~v13 + a2);
              if (v18 <= 3)
              {
                v30 = v18;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v18);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  *(v27 + 2) = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          if (v12 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v27 = 0;
              *(v27 + 1) = 0;
              *v27 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v27 + 1) = a2;
            }

            return;
          }

          v31 = ((v15 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v15);
          v32 = a2;
        }

        __swift_storeEnumTagSinglePayload(v31, v32, v12, v10);
        break;
    }
  }

  else
  {
    v22 = ~v14 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }
  }
}