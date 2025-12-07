uint64_t __VCApplicationPresentInLayout_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUIApplicationElement])
  {
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *sub_23103FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_231157818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_2311580A8();
    sub_231158E28();

    memset(v10, 0, sizeof(v10));
    sub_2311577F8();
    sub_23103FD78();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_23103FD78()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t OUTLINED_FUNCTION_12_0()
{
}

void OUTLINED_FUNCTION_12_1()
{
  v2 = *(v0 + 792);
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  *(v0 + 152) = sub_23106BC9C;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_69(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2)
{

  sub_2310CC690();
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_13_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_231061350(v4, a2, a3, a4, &protocol conformance descriptor for EventDebouncer<A>);
}

uint64_t OUTLINED_FUNCTION_13_5(float *a1, float a2)
{
  *a1 = a2;
  *(v3 + 4) = sub_23106EEB4(v2);
}

unint64_t OUTLINED_FUNCTION_13_8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a4 + 48) + 8 * result) = a2;
  *(*(a4 + 56) + 8 * result) = a3;
  return result;
}

uint64_t sub_231040270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v60 = sub_231158CF8();
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_231158D48();
  v6 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_231157818();
  v62 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v8;
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v9 = *(a1 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
  v10 = sub_231158E28();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    v13 = [v11 keyEnumerator];
  }

  else
  {
    v13 = 0;
  }

  v52 = v62 + 16;
  v51 = OBJC_IVAR___SwiftVCDaemonXPCEventHandler_queue;
  v50 = v62 + 32;
  v49 = &v67;
  v48 = (v65 + 8);
  v47 = (v6 + 8);
  *&v12 = 136315138;
  v46 = v12;
  v43 = v11;
  v44 = v13;
  if (v13)
  {
    while (1)
    {
      if ([v13 nextObject])
      {
        sub_231159468();
        swift_unknownObjectRelease();
      }

      else
      {
        v70 = 0u;
        v71 = 0u;
      }

      aBlock = v70;
      v67 = v71;
      if (!*(&v71 + 1))
      {
        break;
      }

      sub_231040B88(&aBlock, &v72);
      __swift_project_boxed_opaque_existential_0(&v72, v73);
      v14 = sub_2311597F8();
      if (v11 && (v15 = [v11 objectForKey_]) != 0)
      {
        v16 = v15;
        v17 = [v15 allObjects];

        v18 = sub_231158F48();
        v13 = v44;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      v19 = *(v18 + 16);
      if (v19)
      {
        v45 = v18;
        v20 = v18 + 32;
        v63 = v14;
        do
        {
          sub_231040B98(v20, &aBlock);
          if (swift_dynamicCast())
          {
            v64 = *(&v70 + 1);
            v65 = v70;
            if (qword_280CCB540 != -1)
            {
              swift_once();
            }

            v21 = sub_231158258();
            __swift_project_value_buffer(v21, qword_280CCB548);
            swift_unknownObjectRetain();
            v22 = sub_231158238();
            v23 = sub_2311592C8();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              *&aBlock = v25;
              *v24 = v46;
              *&v70 = v14;
              swift_unknownObjectRetain();
              v26 = sub_231158E68();
              v28 = sub_2310488F8(v26, v27, &aBlock);

              *(v24 + 4) = v28;
              v14 = v63;
              _os_log_impl(&dword_23103C000, v22, v23, "Sending XPC event message to %s", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v25);
              MEMORY[0x2319267C0](v25, -1, -1);
              MEMORY[0x2319267C0](v24, -1, -1);
            }

            v29 = v62;
            v30 = v53;
            v31 = v55;
            (*(v62 + 16))(v53, v61, v55);
            v32 = (*(v29 + 80) + 40) & ~*(v29 + 80);
            v33 = swift_allocObject();
            v34 = v64;
            v35 = v65;
            *(v33 + 2) = v14;
            *(v33 + 3) = v35;
            *(v33 + 4) = v34;
            (*(v29 + 32))(&v33[v32], v30, v31);
            v68 = sub_231040F74;
            v69 = v33;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v67 = sub_231040F30;
            *(&v67 + 1) = &block_descriptor_0;
            v36 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();
            v37 = v56;
            sub_231158D08();
            *&v70 = MEMORY[0x277D84F90];
            sub_231040C14(&qword_280CCB090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
            sub_231040C5C(qword_280CCAFD0, &unk_27DD3C750, &qword_231161B50);
            v38 = v58;
            v39 = v60;
            sub_231159498();
            MEMORY[0x231924E10](0, v37, v38, v36);
            _Block_release(v36);
            v40 = v38;
            v14 = v63;
            (*v48)(v40, v39);
            (*v47)(v37, v57);
          }

          v20 += 32;
          --v19;
        }

        while (v19);
        swift_unknownObjectRelease();

        v13 = v44;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_0(&v72);
      v11 = v43;
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:

    aBlock = 0u;
    v67 = 0u;
  }

  return sub_231040EC8(&aBlock);
}

uint64_t sub_231040A84()
{
  v1 = sub_231157818();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_231040B88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_231040B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231040C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231040C5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231040CB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_51_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_231040EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE30, &qword_231166210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231040F30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_231040F74()
{
  sub_231157818();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_231040FDC(v1, v2);
}

id sub_231040FDC(void *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v3 = sub_231158E28();
  v4 = NSSelectorFromString(v3);

  v5 = sub_2311577D8();
  [a1 performSelector:v4 withObject:v5];

  return a1;
}

uint64_t sub_231041074(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_2310410B8()
{
  v0 = sub_231157F18();
  v21 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v20 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_231157E88();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_231157F28();
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231158258();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  v11 = sub_231158238();
  v12 = sub_2311592F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = v0;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_23103C000, v11, v12, "Scheduler: received daemon wakeup request, shortcuts app must have launched", v13, 2u);
    v0 = v16;
    MEMORY[0x2319267C0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  (*(v2 + 104))(v4, *MEMORY[0x277D79C08], v18);
  (*(v21 + 104))(v20, *MEMORY[0x277D79C48], v0);
  sub_231157E98();
  sub_231041410(v6);
  return (*(v17 + 8))(v6, v19);
}

uint64_t sub_231041410(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_231157F28();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = sub_231158258();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  v43 = *(v8 + 16);
  v44 = v7;
  v43(v12, a1, v7);
  v16 = sub_231158238();
  v17 = sub_2311592B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = v6;
    v21 = v20;
    v46 = v20;
    *v19 = 136315138;
    v22 = sub_231157E68();
    v39 = a1;
    v24 = v23;
    v25 = v12;
    v26 = v44;
    (*(v8 + 8))(v25, v44);
    v27 = sub_2310488F8(v22, v24, &v46);
    a1 = v39;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_23103C000, v16, v17, "Scheduler: submitting request %s into the debouncer", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v28 = v21;
    v6 = v40;
    MEMORY[0x2319267C0](v28, -1, -1);
    v29 = v19;
    v2 = v38;
    MEMORY[0x2319267C0](v29, -1, -1);
  }

  else
  {

    v30 = v12;
    v26 = v44;
    (*(v8 + 8))(v30, v44);
  }

  (*(v41 + 8))(v15, v42);
  sub_2311589E8();
  sub_2311589D8();
  sub_2311589A8();

  v31 = *(v2 + 32);
  sub_231157E68();
  v32 = sub_231158E28();

  v33 = v45;
  v43(v45, a1, v26);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v34);
  type metadata accessor for ToolKitIndexingScheduler.DebouncedReason(0);
  v35 = swift_allocObject();
  sub_231080244(v33, v6);
  [v31 pokeWithReason:v32 userInfo:v35];
}

id VCWorkflowReferencesForAccessSpecifier(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 allowUnrestrictedAccess])
  {
    v7 = [v5 sortedVisibleWorkflowsByName];
  }

  else
  {
    v8 = [v6 associatedAppBundleIdentifier];
    v7 = [v5 sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier:v8];
  }

  v9 = [v7 descriptors];
  v10 = [v7 fetchError];

  if (v10)
  {
    if (a3)
    {
      [v7 fetchError];
      *a3 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

void VCVoiceShortcutsFromWorkflows(void *a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __VCVoiceShortcutsFromWorkflows_block_invoke;
    v9[3] = &unk_2788FF390;
    v10 = v7;
    v11 = a3;
    [a1 if_mapAsynchronously:v9 completionHandler:a4];
  }

  else
  {
    (*(a4 + 16))(a4, 0, 0);
  }
}

void __VCVoiceShortcutsFromWorkflows_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  LODWORD(a1) = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __VCVoiceShortcutsFromWorkflows_block_invoke_2;
  v9[3] = &unk_2788FF368;
  v10 = v6;
  v8 = v6;
  VCVoiceShortcutFromWorkflow(a2, v7, a1, 0, v9);
}

void VCVoiceShortcutFromWorkflow(void *a1, void *a2, int a3, char a4, void *a5)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"name", @"workflowSubtitle", @"associatedAppBundleIdentifier", @"creationDate", @"modificationDate", 0}];
    }

    v51 = 0;
    v14 = [v10 recordWithDescriptor:v9 properties:v13 error:&v51];
    v15 = v51;
    if (v14)
    {
      v40 = v10;
      v16 = [v9 identifier];
      v17 = [v14 name];
      if ([v17 wf_isEmpty])
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = *MEMORY[0x277D7A388];
        v52 = *MEMORY[0x277CCA470];
        v53[0] = @"Shortcut has no name";
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v21 = v20 = v16;
        v22 = [v18 errorWithDomain:v19 code:1009 userInfo:v21];

        v23 = v20;
        (v12)[2](v12, 0, v22);
      }

      else
      {
        v39 = v15;
        v24 = [v14 workflowSubtitle];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __VCVoiceShortcutFromWorkflow_block_invoke;
        aBlock[3] = &unk_2788FF318;
        v38 = v16;
        v45 = v16;
        v37 = v17;
        v46 = v17;
        v36 = v24;
        v47 = v36;
        v25 = v14;
        v48 = v25;
        v26 = v9;
        v49 = v26;
        v27 = v12;
        v50 = v27;
        v28 = _Block_copy(aBlock);
        v29 = v28;
        if (a3)
        {
          v35 = v13;
          v30 = [v26 associatedAppBundleIdentifier];
          v31 = [v30 length];

          if (!v31 || (a4 & 1) != 0)
          {
            v33 = [objc_alloc(MEMORY[0x277CD3FE8]) initWithWorkflowReference:v26 includeIcon:v31 == 0];
            [v33 _setLaunchId:*MEMORY[0x277D7A300]];
            if (v31)
            {
              [v33 setIconForAssociatedApplicationInWorkflow:v26];
            }

            v34 = [objc_alloc(MEMORY[0x277CD4158]) initWithIntent:v33];
            (v29)[2](v29, v34);
          }

          else
          {
            v32 = [objc_alloc(MEMORY[0x277D7CA60]) initWithRecord:v25 reference:v26 storageProvider:0 error:0];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __VCVoiceShortcutFromWorkflow_block_invoke_2;
            v41[3] = &unk_2788FF340;
            v42 = v27;
            v43 = v29;
            [v32 generateShortcutRepresentation:v41];
          }

          v13 = v35;
        }

        else
        {
          (*(v28 + 2))(v28, 0);
        }

        v15 = v39;

        v17 = v37;
        v23 = v38;
        v22 = v36;
      }

      v10 = v40;
    }

    else
    {
      (v12)[2](v12, 0, v15);
    }
  }

  else
  {
    (*(v11 + 2))(v11, 0, 0);
  }
}

void __VCVoiceShortcutFromWorkflow_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D79D90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v5;
  v7 = *(a1 + 48);
  v18 = [*(a1 + 56) associatedAppBundleIdentifier];
  v8 = [v18 length];
  if (v8)
  {
    v9 = [*(a1 + 56) associatedAppBundleIdentifier];
  }

  else
  {
    v9 = *MEMORY[0x277D7A338];
  }

  v10 = [*(a1 + 56) creationDate];
  v11 = [*(a1 + 56) modificationDate];
  v12 = [*(a1 + 64) lastRunDate];
  v13 = [*(a1 + 64) runEventsCount];
  v19 = 0;
  v14 = [v17 initWithIdentifier:v16 phrase:v6 shortcutName:v6 shortcutDescription:v7 associatedAppBundleIdentifier:v9 dateCreated:v10 dateLastModified:v11 lastRunDate:v12 runEventsCount:v13 shortcut:v4 keyImageData:0 error:&v19];

  v15 = v19;
  if (v8)
  {
  }

  (*(*(a1 + 72) + 16))();
}

uint64_t sub_231042244@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231047E28(a2, a3);
  *a1 = result;
  return result;
}

void sub_231042280(uint64_t a2@<X8>)
{
  sub_2310422B4();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_231042338()
{
  MEMORY[0x231926880](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042374()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

char *sub_231042408(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

uint64_t sub_231042430()
{
  MEMORY[0x231926880](v0 + 16);
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2310425FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231042684(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_2310426A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2310426B4()
{

  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310426E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231042728()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231042808()
{
  sub_231157F18();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = OUTLINED_FUNCTION_33();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, ((v2 + 24) & ~v2) + v4, v2 | 7);
}

uint64_t sub_2310428B8()
{
  sub_231158C48();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 80) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_33();
  v6(v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_23104299C()
{
  sub_231158AE8();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v4 = (((*(v3 + 64) + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = OUTLINED_FUNCTION_33();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_231042AC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042AF8()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231042C10()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231042C8C()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231042CC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042D10@<X0>(uint64_t *a1@<X8>)
{
  result = BGSystemTaskRequest.relatedApps.getter();
  *a1 = result;
  return result;
}

__n128 sub_231042D5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231042D74()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231042DAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042DE4()
{

  v0 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231042E28()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231042E5C()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231042F1C()
{

  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231042F84()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231042FD8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231043010()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231043068()
{
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23104309C()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310430D0()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231043104()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231043220()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_231043270()
{
  swift_unknownObjectRelease();
  sub_23107E904(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2310432E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231043320()
{

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231043354()
{

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231043390()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310433C4()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310433F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2310434C8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_231043530()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231043564()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231043598()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310435CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2310436BC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2310436FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231043734()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23104376C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_20_5();

  (*(v4 + 8))(v0 + ((v5 + 32) & ~v5), v2);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_23104384C()
{
  v2 = sub_231158668();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_20_5();
  (*(v4 + 8))(v0 + ((v5 + 24) & ~v5), v2);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_231043940()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_231043A18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231043A2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231043A64()
{

  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231043A94()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231043B2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231043B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2311590F8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_2311590E8();
    v7 = sub_231159448();
    v8 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_231043C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2311590F8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    sub_2311590E8();
    v9 = sub_231159448();
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_231043D84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231043DBC()
{
  sub_231158368();
  OUTLINED_FUNCTION_0_13();
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_10_9();
  v5(v4);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v3 | 7);
}

uint64_t sub_231043E40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
  OUTLINED_FUNCTION_0_13();
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_10_9();
  v5(v4);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v3 | 7);
}

uint64_t sub_231043ED8()
{
  v1 = sub_231158308();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231043F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231158418();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_231044044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231158418();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_231044118()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_23104414C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310441EC()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231044220()
{

  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231044288()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310442C4()
{

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231044350()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2310443A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2310443DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231044414()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231044448()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_23104449C()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231044560()
{
  MEMORY[0x231926880](v0 + 16);
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231044594()
{

  sub_231092F7C(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 72) >= 5uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_231044620()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231044654()
{
  type metadata accessor for ShortcutTransformer(0);
  OUTLINED_FUNCTION_174();
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v6 = *(v5 + 64);

  sub_231158418();
  OUTLINED_FUNCTION_0_13();
  (*(v7 + 8))(v1 + v4);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_231044758()
{
  type metadata accessor for ShortcutTransformer(0);
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;
  sub_231158418();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 8))(v9);

  return MEMORY[0x2821FE8E8](v1, v8 + 8, v6 | 7);
}

uint64_t sub_2310448E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_11_10();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0();
  (*(v6 + 8))(v0 + v3);

  v7 = *(v1 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!OUTLINED_FUNCTION_35_4(v8))
  {
    OUTLINED_FUNCTION_11();
    (*(v9 + 8))(v0 + v3 + v7, v1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v10 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_231044A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_11_10();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0();
  (*(v4 + 8))(v0 + v3);

  v5 = *(v1 + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!OUTLINED_FUNCTION_35_4(v6))
  {
    OUTLINED_FUNCTION_11();
    (*(v7 + 8))(v0 + v3 + v5, v1);
  }

  v8 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_231044B7C()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1_14();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_231044C54()
{
  OUTLINED_FUNCTION_77();
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_11_10();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  (*(v4 + 8))(v0 + v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0();
  (*(v12 + 8))(v0 + v9);

  v13 = *(v1 + 48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!__swift_getEnumTagSinglePayload(v0 + v9 + v13, 1, v14))
  {
    OUTLINED_FUNCTION_11();
    (*(v15 + 8))(v0 + v9 + v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
  OUTLINED_FUNCTION_78();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_231044E18()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_14();
  v3 = v2;
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  v5 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_231044EC4()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_13();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231045018()
{
  MEMORY[0x231926880](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231045050()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

__n128 sub_23104513C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231045148()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_231045204()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231045240()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045298()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310452D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23104536C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2310453A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2310453EC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0();
  (*(v5 + 8))(v0 + v3);

  v6 = v1[12];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + v8));

  return MEMORY[0x2821FE8E8](v0, v8 + 40, v2 | 7);
}

uint64_t sub_2310455A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2310455E0()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045614()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_23104565C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23104569C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_231045734(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231045740()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_23104580C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231045844()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23104587C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2310458E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2310CE690();
  *a1 = result;
  return result;
}

uint64_t sub_23104594C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23104598C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231045A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_231045B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_231045C04()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231045C3C()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231045D08()
{

  v0 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045D38()
{
  sub_231157F18();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231045DB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231045E00()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045E80()
{

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045EB4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231045F34()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045F68()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045F9C()
{

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231045FD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23104600C()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231046040()
{

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231046084()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310460B8()
{

  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_23104613C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_231046164(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231046250(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2310462B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2310461A8();
  *a1 = result;
  return result;
}

void (*sub_231046308(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFToastManager_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_23104638C;
}

void sub_23104638C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_231046484()
{
  v1 = *(v0 + OBJC_IVAR___WFToastManager_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_231048E94(v2, &v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

id sub_231046510@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___WFToastManager__toastedSession);
  *a1 = v2;
  return v2;
}

char *ToastManager.init(with:)(uint64_t a1)
{
  v2 = [v1 init];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_23104662C()
{
  v1 = *(v0 + OBJC_IVAR___WFToastManager__toastedSession);
  v2 = OBJC_IVAR___WFToastManager_transaction;
  result = *(v0 + OBJC_IVAR___WFToastManager_transaction);
  if (v1)
  {
    if (result)
    {
      return result;
    }

    v1 = os_transaction_create();
  }

  *(v0 + v2) = v1;

  return swift_unknownObjectRelease();
}

void sub_23104669C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___WFToastManager__toastedSession);
  *(v1 + OBJC_IVAR___WFToastManager__toastedSession) = a1;
  v3 = a1;

  sub_23104662C();
}

uint64_t sub_2310466F4()
{
  v1 = *(v0 + OBJC_IVAR___WFToastManager_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_231048F04(v2, &v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

void sub_231046788(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v68 = a4;
  v9 = sub_231158258();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = OBJC_IVAR___WFToastManager_timer;
  [*(a1 + OBJC_IVAR___WFToastManager_timer) cancel];
  v18 = *(a1 + v17);
  *(a1 + v17) = 0;

  sub_23104669C(0);
  v19 = objc_allocWithZone(sub_231157AF8());

  v20 = sub_231157AD8();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v21;

  sub_231157AB8();

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v67 = a2;
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v23;

  sub_231157AC8();

  v25 = v20;
  sub_23104669C(v20);
  v26 = v69;
  sub_231157AE8();
  v69 = v26;
  if (v26)
  {
    v27 = v64;
    sub_2311581C8();

    v28 = sub_231158238();
    v29 = sub_2311592D8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v25;
      v32 = swift_slowAlloc();
      v70[0] = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_2310488F8(v67, a3, v70);
      _os_log_impl(&dword_23103C000, v28, v29, "Failed to toast session with identifier %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      v25 = v31;
      MEMORY[0x2319267C0](v33, -1, -1);
      MEMORY[0x2319267C0](v30, -1, -1);
    }

    (*(v65 + 8))(v27, v66);
    sub_23104669C(0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v42 = Strong;
      v43 = sub_231158E28();
      [v42 toastManager:a1 didFailToToastSessionWithIdentifier:v43 error:0];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v44 = 0;
    v69 = 0;
  }

  else
  {
    if (a5 == -1.0)
    {
      v34 = v14;
      sub_2311581C8();

      v35 = sub_231158238();
      v36 = sub_2311592F8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = v25;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v70[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_2310488F8(v67, a3, v70);
        _os_log_impl(&dword_23103C000, v35, v36, "Toasted session with identifier %s for infinite duration...", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x2319267C0](v39, -1, -1);
        v40 = v38;
        v25 = v37;
        MEMORY[0x2319267C0](v40, -1, -1);
      }

      (*(v65 + 8))(v34, v66);
    }

    else
    {
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = a5;
      v47 = v67;
      *(v46 + 32) = v67;
      *(v46 + 40) = a3;
      objc_allocWithZone(MEMORY[0x277D79F48]);

      v48 = sub_231047B68(0, sub_231049708, v46, a5);
      v49 = *(a1 + v17);
      *(a1 + v17) = v48;
      v50 = v48;

      [v50 start];
      v51 = v16;
      sub_2311581C8();

      v52 = sub_231158238();
      v53 = sub_2311592F8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = v50;
        v55 = v25;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v64 = v51;
        v58 = v57;
        v70[0] = v57;
        *v56 = 136315394;
        *(v56 + 4) = sub_2310488F8(v47, a3, v70);
        *(v56 + 12) = 2048;
        *(v56 + 14) = a5;
        _os_log_impl(&dword_23103C000, v52, v53, "Toasted session with identifier %s for duration %f secs...", v56, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x2319267C0](v58, -1, -1);
        v59 = v56;
        v25 = v55;
        MEMORY[0x2319267C0](v59, -1, -1);

        (*(v65 + 8))(v64, v66);
      }

      else
      {

        (*(v65 + 8))(v16, v66);
      }
    }

    swift_beginAccess();
    v60 = swift_unknownObjectWeakLoadStrong();
    if (v60)
    {
      v61 = v60;
      v62 = sub_231158E28();
      [v61 toastManager:a1 didToastSessionWithIdentifier:v62 duration:a5];

      swift_unknownObjectRelease();
    }

    v44 = 1;
  }

  *v68 = v44;
}

void sub_231046F64(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = sub_231158258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();

  v15 = sub_231158238();
  v16 = sub_2311592F8();

  v17 = os_log_type_enabled(v15, v16);
  v33[2] = a5;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33[1] = a4;
    v19 = a3;
    v20 = v18;
    v21 = swift_slowAlloc();
    v22 = a5;
    v23 = v21;
    v34[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_2310488F8(v22, a6, v34);
    _os_log_impl(&dword_23103C000, v15, v16, "Toasted session with identifier %s going away...", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x2319267C0](v23, -1, -1);
    v24 = v20;
    a3 = v19;
    MEMORY[0x2319267C0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = *(Strong + OBJC_IVAR___WFToastManager_lock);
    v28 = MEMORY[0x28223BE20](Strong);
    v33[-2] = v28;
    MEMORY[0x28223BE20](v28);
    v33[-2] = sub_231049A54;
    v33[-1] = v29;

    os_unfair_lock_lock(v27 + 4);
    sub_231049AA0();
    os_unfair_lock_unlock(v27 + 4);

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = sub_231158E28();
      [v31 toastManager:v26 didDismissToastedSessionWithIdentifier:v32];

      v30 = swift_unknownObjectRelease();
    }

    a3(v30);
  }
}

void sub_23104726C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_231158258();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  sub_2311581C8();

  v11 = sub_231158238();
  v12 = sub_2311592D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2310488F8(a2, a3, v27);
    _os_log_impl(&dword_23103C000, v11, v12, "Our toast was invalidated for session with identifier %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319267C0](v15, -1, -1);
    v16 = v14;
    a1 = v26;
    MEMORY[0x2319267C0](v16, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR___WFToastManager_lock);
    v20 = MEMORY[0x28223BE20](Strong);
    *(&v26 - 2) = v20;
    MEMORY[0x28223BE20](v20);
    *(&v26 - 2) = sub_231049A54;
    *(&v26 - 1) = v21;

    os_unfair_lock_lock(v19 + 4);
    sub_231049AA0();
    os_unfair_lock_unlock(v19 + 4);

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = sub_231158E28();
      if (a1)
      {
        v25 = sub_231157928();
      }

      else
      {
        v25 = 0;
      }

      [v23 toastManager:v18 didFailToToastSessionWithIdentifier:v24 error:v25];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void *sub_23104757C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_231159588();
    MEMORY[0x231924980](0xD00000000000001ALL, 0x80000002311676B0);
    sub_231159158();
    MEMORY[0x231924980](0xD000000000000019, 0x80000002311676D0);
    MEMORY[0x231924980](a2, a3);
    sub_231047700(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_231047700(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231158258();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();

  v10 = sub_231158238();
  v11 = sub_2311592F8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2310488F8(a1, a2, v19);
    _os_log_impl(&dword_23103C000, v10, v11, "Dismissing the toast with reason: %s, if it exists", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319267C0](v13, -1, -1);
    MEMORY[0x2319267C0](v12, -1, -1);
  }

  v14 = (*(v7 + 8))(v9, v6);
  v15 = *(v3 + OBJC_IVAR___WFToastManager_lock);
  v16 = MEMORY[0x28223BE20](v14);
  v19[-2] = v3;
  MEMORY[0x28223BE20](v16);
  v19[-2] = sub_231048F20;
  v19[-1] = v17;

  os_unfair_lock_lock(v15 + 4);
  sub_231040038();
  os_unfair_lock_unlock(v15 + 4);
}

id ToastManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ToastManager.init()()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___WFToastManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B970, &qword_231161060);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR___WFToastManager__toastedSession] = 0;
  *&v0[OBJC_IVAR___WFToastManager_transaction] = 0;
  *&v0[OBJC_IVAR___WFToastManager_timer] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ToastManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ToastManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToastManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_231047B68(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_231040F30;
  v10[3] = &block_descriptor;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithInterval:a1 queue:v7 handler:a4];

  _Block_release(v7);

  return v8;
}

uint64_t sub_231047C30(uint64_t a1, uint64_t a2)
{
  v2 = sub_231158E58();
  v3 = MEMORY[0x2319249B0](v2);

  return v3;
}

uint64_t sub_231047C68(uint64_t a1, uint64_t a2)
{
  sub_231158E58();
  sub_231158EA8();
}

uint64_t sub_231047CBC(uint64_t a1, uint64_t a2)
{
  sub_231158E58();
  sub_231159918();
  sub_231158EA8();
  v2 = sub_231159948();

  return v2;
}

uint64_t sub_231047D30(uint64_t a1, id *a2)
{
  result = sub_231158E38();
  *a2 = 0;
  return result;
}

uint64_t sub_231047DA8(uint64_t a1, id *a2)
{
  v3 = sub_231158E48();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_231047E28(uint64_t a1, uint64_t a2)
{
  sub_231158E58();
  v2 = sub_231158E28();

  return v2;
}

uint64_t sub_231047E6C(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB078, type metadata accessor for CCItemError, &unk_231161914);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_231047ED8(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB078, type metadata accessor for CCItemError, &unk_231161914);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_231047F44(uint64_t a1)
{
  v2 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError, &unk_231161958);

  return MEMORY[0x28211CA68](a1, v2);
}

void sub_231047FB0()
{
  OUTLINED_FUNCTION_0();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_231047FF0()
{
  OUTLINED_FUNCTION_0();
  result = sub_23104D8B4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_231048018@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_231158E28();

  *a2 = v3;
  return result;
}

uint64_t sub_231048074(uint64_t a1)
{
  v2 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError, &unk_231161958);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2310480E0(uint64_t a1)
{
  v2 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError, &unk_231161958);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23104814C(void *a1, uint64_t a2)
{
  v4 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError, &unk_231161958);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2310481DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError, &unk_231161958);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_231048278(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311614A8);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2310482E4(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311614A8);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_231048350(void *a1, uint64_t a2)
{
  v4 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311614A8);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2310483E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311614A8);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23104845C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231159918();
  sub_231158DD8();
  return sub_231159948();
}

uint64_t sub_2310484C0(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCAF88, type metadata accessor for VCXPCEventName, &unk_231161628);
  v3 = sub_231049274(&qword_27DD3B9F0, type metadata accessor for VCXPCEventName, &unk_23116120C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23104857C(uint64_t a1)
{
  v2 = sub_231049274(&qword_27DD3B9D8, type metadata accessor for VCXPCEventStream, &unk_231161380);
  v3 = sub_231049274(&unk_27DD3B9E0, type metadata accessor for VCXPCEventStream, &unk_231161320);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_231048638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError, &unk_231161958);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2310486BC(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB020, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311615E8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_231048728(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB020, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311615E8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_231048794(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311614A8);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_231048800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError, &unk_2311614A8);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

void *sub_231048884(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2310488BC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&var1, a1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

unint64_t sub_2310488F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2310489BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_231040B98(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2310489BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_231048ABC(a5, a6);
    *a1 = v9;
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
    result = sub_2311595D8();
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

uint64_t sub_231048ABC(uint64_t a1, unint64_t a2)
{
  v3 = sub_231048B08(a1, a2);
  sub_231048C20(&unk_2845D73D8);
  return v3;
}

uint64_t sub_231048B08(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_231158ED8())
  {
    result = sub_231048D04(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231159578();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2311595D8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231048C20(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_231048D74(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_231048D04(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BA58, &unk_231161670);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_231048D74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BA58, &unk_231161670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

void *sub_231048E68@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_231048884(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_231048ED4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2310488BC(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
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

uint64_t sub_231049188(uint64_t a1, int a2)
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

uint64_t sub_2310491A8(uint64_t result, int a2, int a3)
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

uint64_t sub_231049274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2310495A0()
{
  result = qword_280CCB088;
  if (!qword_280CCB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB088);
  }

  return result;
}

uint64_t objectdestroy_43Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_231049920(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_231049AC4()
{
  v0 = sub_231158258();
  __swift_allocate_value_buffer(v0, qword_280CCB548);
  __swift_project_value_buffer(v0, qword_280CCB548);
  return sub_231158248();
}

id DaemonXPCEventHandler.init(streams:queue:)(uint64_t a1, void *a2)
{
  v3 = OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B970, &qword_231161060);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + v3) = v4;
  v74 = OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streamForEvent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BBE8, &qword_231161AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161A90;
  *(inited + 32) = @"ApplicationRegistered";
  *(inited + 40) = @"com.apple.distnoted.matching";
  *(inited + 48) = @"ApplicationUnregistered";
  *(inited + 56) = @"com.apple.distnoted.matching";
  *(inited + 64) = @"ApplicationStateChanged";
  *(inited + 72) = @"com.apple.distnoted.matching";
  *(inited + 80) = @"LNAppShortcutsChangedNotification";
  *(inited + 88) = @"com.apple.distnoted.matching";
  *(inited + 96) = @"com.apple.language.changed";
  *(inited + 104) = @"com.apple.notifyd.matching";
  *(inited + 112) = @"kAFPreferencesDidChangeDarwinNotification";
  *(inited + 120) = @"com.apple.notifyd.matching";
  *(inited + 128) = @"com.apple.nanoregistry.paireddevicedidchangeversion";
  *(inited + 136) = @"com.apple.notifyd.matching";
  *(inited + 144) = @"com.apple.mobile.keybagd.first_unlock";
  *(inited + 152) = @"com.apple.notifyd.matching";
  *(inited + 160) = @"com.apple.system.timezone";
  *(inited + 168) = @"com.apple.notifyd.matching";
  *(inited + 176) = @"com.apple.system.clock_set";
  *(inited + 184) = @"com.apple.notifyd.matching";
  *(inited + 192) = @"com.apple.mediaaccessibility.displayFilterSettingsChanged";
  *(inited + 200) = @"com.apple.notifyd.matching";
  *(inited + 208) = @"com.apple.accessibility.reduce.motion.status";
  *(inited + 216) = @"com.apple.notifyd.matching";
  *(inited + 224) = @"com.apple.accessibility.enhance.background.contrast.status";
  *(inited + 232) = @"com.apple.notifyd.matching";
  *(inited + 240) = @"UIAccessibilityInvertColorsChanged";
  *(inited + 248) = @"com.apple.notifyd.matching";
  *(inited + 256) = @"com.apple.accessibility.voiceovertouch.status";
  *(inited + 264) = @"com.apple.notifyd.matching";
  *(inited + 272) = @"com.apple.accessibility.zoomtouch.status";
  *(inited + 280) = @"com.apple.notifyd.matching";
  *(inited + 288) = @"com.apple.accessibility.commandandcontrol.status";
  *(inited + 296) = @"com.apple.notifyd.matching";
  *(inited + 304) = @"com.apple.accessibility.pointer.increased.contrast";
  *(inited + 312) = @"com.apple.notifyd.matching";
  *(inited + 320) = @"com.apple.accessibility.classic.wob.status";
  *(inited + 328) = @"com.apple.notifyd.matching";
  *(inited + 336) = @"com.apple.accessibility.reduce.white.point";
  *(inited + 344) = @"com.apple.notifyd.matching";
  *(inited + 352) = @"com.apple.commcenter.DataSettingsChangedNotification";
  *(inited + 360) = @"com.apple.notifyd.matching";
  *(inited + 368) = @"com.apple.callhistory.notification.calls-changed";
  *(inited + 376) = @"com.apple.notifyd.matching";
  *(inited + 384) = @"CNFavoritesChangedExternallyNotification";
  *(inited + 392) = @"com.apple.notifyd.matching";
  *(inited + 400) = @"com.apple.appprotection.change.hidden";
  *(inited + 408) = @"com.apple.notifyd.matching";
  *(inited + 416) = @"com.apple.spotlightui.prefschanged";
  *(inited + 424) = @"com.apple.notifyd.matching";
  *(inited + 432) = @"LNMetadataChangedNotification";
  *(inited + 440) = @"com.apple.distnoted.matching";
  *(inited + 448) = @"TKToolkitDatabaseChangedNotification";
  *(inited + 456) = @"com.apple.distnoted.matching";
  *(inited + 464) = @"Hidden App Bundle IDs Subscription";
  *(inited + 472) = @"com.apple.appprotection.preferences.change.event";
  *(inited + 480) = @"com.apple.shortcuts.daemon-wakeup-request";
  *(inited + 488) = @"com.apple.notifyd.matching";
  *(inited + 496) = @"com.apple.gms.availability.notification";
  *(inited + 504) = @"com.apple.notifyd.matching";
  type metadata accessor for VCXPCEventName(0);
  type metadata accessor for VCXPCEventStream(0);
  sub_231040C14(&qword_280CCAF88, type metadata accessor for VCXPCEventName, &unk_231161628);
  v6 = @"com.apple.distnoted.matching";
  v7 = @"com.apple.notifyd.matching";
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v11 = v9;
  v12 = v10;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = @"ApplicationRegistered";
  v17 = @"ApplicationUnregistered";
  v18 = @"ApplicationStateChanged";
  v19 = @"LNAppShortcutsChangedNotification";
  v20 = @"com.apple.language.changed";
  v21 = @"kAFPreferencesDidChangeDarwinNotification";
  v22 = @"com.apple.nanoregistry.paireddevicedidchangeversion";
  v23 = @"com.apple.mobile.keybagd.first_unlock";
  v24 = @"com.apple.system.timezone";
  v25 = @"com.apple.system.clock_set";
  v26 = @"com.apple.mediaaccessibility.displayFilterSettingsChanged";
  v27 = @"com.apple.accessibility.reduce.motion.status";
  v28 = @"com.apple.accessibility.enhance.background.contrast.status";
  v29 = @"UIAccessibilityInvertColorsChanged";
  v30 = @"com.apple.accessibility.voiceovertouch.status";
  v31 = @"com.apple.accessibility.zoomtouch.status";
  v32 = @"com.apple.accessibility.commandandcontrol.status";
  v33 = @"com.apple.accessibility.pointer.increased.contrast";
  v34 = @"com.apple.accessibility.classic.wob.status";
  v35 = @"com.apple.accessibility.reduce.white.point";
  v36 = @"com.apple.commcenter.DataSettingsChangedNotification";
  v37 = @"com.apple.callhistory.notification.calls-changed";
  v38 = @"CNFavoritesChangedExternallyNotification";
  v39 = @"com.apple.appprotection.change.hidden";
  v40 = @"com.apple.spotlightui.prefschanged";
  v41 = @"LNMetadataChangedNotification";
  v42 = v78;
  v43 = @"TKToolkitDatabaseChangedNotification";
  v44 = @"Hidden App Bundle IDs Subscription";
  v45 = @"com.apple.appprotection.preferences.change.event";
  v46 = @"com.apple.shortcuts.daemon-wakeup-request";
  v47 = @"com.apple.gms.availability.notification";
  *&v78[v74] = sub_231158DB8();
  if (qword_280CCB540 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280CCB540);
  }

  v48 = sub_231158258();
  __swift_project_value_buffer(v48, qword_280CCB548);
  v49 = a1;

  v50 = sub_231158238();
  v51 = sub_2311592B8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    v80 = v53;
    *v52 = 136315138;
    v55 = *(a1 + 16);
    v56 = MEMORY[0x277D84F90];
    if (v55)
    {
      v75 = v53;
      v79 = MEMORY[0x277D84F90];
      sub_23104CA0C(0, v55, 0);
      v56 = v79;
      v57 = a1 + 32;
      do
      {
        v58 = sub_231158E58();
        v60 = v59;
        v62 = *(v79 + 16);
        v61 = *(v79 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_23104CA0C((v61 > 1), v62 + 1, 1);
        }

        *(v79 + 16) = v62 + 1;
        v63 = v79 + 16 * v62;
        *(v63 + 32) = v58;
        *(v63 + 40) = v60;
        v57 += 8;
        --v55;
      }

      while (v55);
      v49 = a1;
      v42 = v78;
      v54 = v75;
    }

    v64 = MEMORY[0x231924A30](v56, MEMORY[0x277D837D0]);
    v66 = v65;

    v67 = sub_2310488F8(v64, v66, &v80);

    *(v52 + 4) = v67;
    _os_log_impl(&dword_23103C000, v50, v51, "Creating XPC event handler with streams: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  *&v42[OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streams] = v49;
  *&v42[OBJC_IVAR___SwiftVCDaemonXPCEventHandler_queue] = a2;
  v68 = objc_opt_self();
  v69 = a2;
  v70 = [v68 strongToStrongObjectsMapTable];
  *&v42[OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers] = v70;
  v71 = type metadata accessor for DaemonXPCEventHandler();
  v81.receiver = v42;
  v81.super_class = v71;
  v72 = objc_msgSendSuper2(&v81, sel_init);

  return v72;
}

id DaemonXPCEventHandler.__allocating_init(streams:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_10_0();
  return DaemonXPCEventHandler.init(streams:)(v2);
}

id DaemonXPCEventHandler.init(streams:)(uint64_t a1)
{
  v1 = sub_231159318();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v2 = sub_231159328();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = sub_231158D48();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_5_0();
  type metadata accessor for VCXPCEventStream(0);
  v10 = sub_231158F38();

  sub_23104CA2C();
  sub_231158D38();
  (*(v4 + 104))(v8, *MEMORY[0x277D85268], v2);
  sub_231040C14(&unk_280CCAF10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_231040C5C(&qword_280CCAFC0, &qword_27DD3BC00, &unk_231161AB0);
  sub_231159498();
  v11 = sub_231159358();
  v12 = [v14 initWithStreams:v10 queue:v11];

  return v12;
}

void sub_23104A65C()
{
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_231040060(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104A6FC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, const char *a6)
{
  v10 = *(a1 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
  v11 = sub_231158E28();
  v12 = [v10 objectForKey_];

  v13 = v12;
  if (!v12)
  {
    v12 = [objc_opt_self() weakToStrongObjectsMapTable];
    v14 = sub_231158E28();
    [v10 &selRef_stateClass];

    if (qword_280CCB540 != -1)
    {
      swift_once();
    }

    v15 = sub_231158258();
    __swift_project_value_buffer(v15, qword_280CCB548);

    v16 = a4;
    v17 = sub_231158238();
    v18 = sub_2311592B8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2310488F8(a2, a3, &v32);
      *(v19 + 12) = 2080;
      type metadata accessor for VCXPCEventStream(0);
      v21 = v16;
      v22 = sub_231158E68();
      v24 = v18;
      v25 = sub_2310488F8(v22, v23, &v32);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_23103C000, v17, v24, "Registering for event: %s on stream: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319267C0](v20, -1, -1);
      MEMORY[0x2319267C0](v19, -1, -1);
    }

    sub_23104B4EC();
    v13 = 0;
  }

  v26 = v13;
  v27 = [v12 objectForKey_];

  v28 = v27;
  if (!v27)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
    [v12 setObject:v28 forKey:a5];
  }

  v29 = v27;
  v30 = NSStringFromSelector(a6);
  if (!v30)
  {
    sub_231158E58();
    v30 = sub_231158E28();
  }

  [v28 addObject_];
}

void sub_23104AB08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23104ACC0(a3, *(v3 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streamForEvent));
  if (v5)
  {
    v6 = v5;
    sub_231158E58();
    sub_23104A65C();
  }

  else
  {
    if (qword_280CCB540 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280CCB540);
    }

    v7 = sub_231158258();
    __swift_project_value_buffer(v7, qword_280CCB548);
    v8 = a3;
    oslog = sub_231158238();
    v9 = sub_2311592D8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_231158E58();
      v14 = sub_2310488F8(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23103C000, oslog, v9, "Unable to add observer for %s. No stream found.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }
  }
}

void *sub_23104ACC0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_231092BD8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_23104AD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23105FECC(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_23104AD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23105FECC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_23104ADA0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_231092C6C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_231040B98(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23104AE04(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_231092CB0(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

double sub_23104AE54@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_23105FECC(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_231040B98(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_23104AFB4()
{
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104B034(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a2 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
    v5 = a1;
    v6 = [v4 objectForKey_];
    if (v6)
    {
      v7 = v6;
      [v6 removeObjectForKey_];
    }

LABEL_4:
  }

  else
  {
    v5 = [*(a2 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers) objectEnumerator];
    if (v5)
    {
      while (1)
      {
        if ([v5 nextObject])
        {
          sub_231159468();
          swift_unknownObjectRelease();
        }

        else
        {
          *v8 = 0u;
          v9 = 0u;
        }

        v10 = *v8;
        v11 = v9;
        if (!*(&v9 + 1))
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC70, &unk_231161B70);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_4;
        }

        [v8[0] removeObjectForKey_];

        if (!v5)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v10 = 0u;
      v11 = 0u;
    }

    sub_231040EC8(&v10);
  }
}

void sub_23104B248()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(a3 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
    v6 = sub_231158E28();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      [v7 removeObjectForKey_];
LABEL_4:
    }
  }

  else
  {
    v7 = [*(a3 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers) objectEnumerator];
    if (v7)
    {
      while (1)
      {
        if ([v7 nextObject])
        {
          sub_231159468();
          swift_unknownObjectRelease();
        }

        else
        {
          *v8 = 0u;
          v9 = 0u;
        }

        v10 = *v8;
        v11 = v9;
        if (!*(&v9 + 1))
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC70, &unk_231161B70);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_4;
        }

        [v8[0] removeObjectForKey_];

        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v10 = 0u;
      v11 = 0u;
    }

    sub_231040EC8(&v10);
  }
}

uint64_t sub_23104B4EC()
{
  OUTLINED_FUNCTION_12();
  v2 = sub_231158E58();
  OUTLINED_FUNCTION_11_1(v2, v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v6 && v0 == v5;
  if (v6)
  {

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_1(v4);
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_28:
    sub_231157E28();
    OUTLINED_FUNCTION_9_0();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_7(v29);
    OUTLINED_FUNCTION_8();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_3(v30);
    sub_231040C14(&unk_280CCB148, MEMORY[0x277D79B98], MEMORY[0x277D79B90]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  v7 = sub_231158E58();
  OUTLINED_FUNCTION_11_1(v7, v8);
  OUTLINED_FUNCTION_14_0();
  if (v6 && v0 == v10)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_2_1(v9);
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_33:
    sub_231158138();
    OUTLINED_FUNCTION_9_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_7(v31);
    OUTLINED_FUNCTION_8();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_3(v32);
    sub_231040C14(&qword_280CCB0C0, MEMORY[0x277D79D30], MEMORY[0x277D79D28]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  v12 = sub_231158E58();
  OUTLINED_FUNCTION_11_1(v12, v13);
  OUTLINED_FUNCTION_14_0();
  if (v6 && v0 == v15)
  {

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_2_1(v14);
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_35:
    sub_2311580D8();
    OUTLINED_FUNCTION_9_0();
    v33 = swift_allocObject();
    OUTLINED_FUNCTION_7(v33);
    OUTLINED_FUNCTION_8();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_3(v34);
    sub_231040C14(&unk_280CCB0F0, MEMORY[0x277D79D00], MEMORY[0x277D79CF8]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  v17 = sub_231158E58();
  OUTLINED_FUNCTION_11_1(v17, v18);
  OUTLINED_FUNCTION_14_0();
  if (v6 && v0 == v20)
  {

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_2_1(v19);
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_37:
    sub_231158188();
    OUTLINED_FUNCTION_9_0();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_7(v35);
    OUTLINED_FUNCTION_8();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_3(v36);
    sub_231040C14(&unk_280CCB0A0, MEMORY[0x277D79D58], MEMORY[0x277D79D50]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  v22 = sub_231158E58();
  v24 = v23;
  if (v22 == sub_231158E58() && v24 == v25)
  {
  }

  else
  {
    v27 = sub_231159818();

    if ((v27 & 1) == 0)
    {
      return result;
    }
  }

  sub_231158098();
  OUTLINED_FUNCTION_9_0();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_7(v37);
  OUTLINED_FUNCTION_8();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_3(v38);
  sub_231040C14(&unk_280CCB128, MEMORY[0x277D79CD8], MEMORY[0x277D79CD0]);
  OUTLINED_FUNCTION_10_0();

LABEL_29:
  sub_231157CC8();
}

void *sub_23104B980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_231157818();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_231158E28();
    memset(v9, 0, sizeof(v9));
    sub_2311577F8();
    sub_23103FD78();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void *sub_23104BAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_231157818();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_231158E28();
    memset(v10, 0, sizeof(v10));
    v9 = sub_231158158();
    if (v9)
    {
      sub_23104BC20(v9);
    }

    sub_2311577F8();
    sub_23103FD78();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_23104BC20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC60, &qword_231161B58);
    v2 = sub_2311596F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_231040B98(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_231040B88(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_231040B88(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_231040B88(v31, v32);
    result = sub_231159508();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_231040B88(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_23104BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = sub_231157818();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    a5();
    sub_23103FD78();

    return (*(v8 + 8))(v12, v6);
  }

  return result;
}

void sub_23104BFF8()
{
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104C06C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streams);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4;
      v6 = sub_231158E58();
      v8 = v7;
      if (v6 == sub_231158E58() && v8 == v9)
      {
        v47 = v5;
      }

      else
      {
        v11 = sub_231159818();
        v12 = v5;

        if ((v11 & 1) == 0)
        {
          v13 = sub_231158E58();
          v15 = v14;
          if (v13 == sub_231158E58() && v15 == v16)
          {
          }

          else
          {
            v18 = sub_231159818();

            if ((v18 & 1) == 0)
            {
              v19 = sub_231158E58();
              v21 = v20;
              if (v19 == sub_231158E58() && v21 == v22)
              {
              }

              else
              {
                v24 = sub_231159818();

                if ((v24 & 1) == 0)
                {
                  v25 = sub_231158E58();
                  v27 = v26;
                  if (v25 == sub_231158E58() && v27 == v28)
                  {
                  }

                  else
                  {
                    v30 = sub_231159818();

                    if ((v30 & 1) == 0)
                    {
                      v31 = sub_231158E58();
                      v33 = v32;
                      if (v31 == sub_231158E58() && v33 == v34)
                      {
                      }

                      else
                      {
                        v36 = sub_231159818();

                        if ((v36 & 1) == 0)
                        {
                          if (qword_280CCB540 != -1)
                          {
                            swift_once();
                          }

                          v37 = sub_231158258();
                          __swift_project_value_buffer(v37, qword_280CCB548);
                          v38 = v12;
                          v39 = sub_231158238();
                          v40 = sub_2311592F8();

                          log = v39;
                          if (os_log_type_enabled(v39, v40))
                          {
                            v41 = swift_slowAlloc();
                            v42 = swift_slowAlloc();
                            v53 = v42;
                            *v41 = 136315138;
                            type metadata accessor for VCXPCEventStream(0);
                            v51 = v38;
                            v43 = sub_231158E68();
                            v45 = sub_2310488F8(v43, v44, &v53);

                            *(v41 + 4) = v45;
                            _os_log_impl(&dword_23103C000, log, v40, "Unknown stream type: %s", v41, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v42);
                            MEMORY[0x2319267C0](v42, -1, -1);
                            MEMORY[0x2319267C0](v41, -1, -1);

                            v46 = v51;
                          }

                          else
                          {

                            v46 = v39;
                          }

                          goto LABEL_37;
                        }
                      }

                      sub_231158098();
                      v48 = MEMORY[0x277D79CD8];
                      v49 = MEMORY[0x277D79CD0];
                      v50 = &unk_280CCB128;
                      goto LABEL_36;
                    }
                  }

                  sub_231158188();
                  v48 = MEMORY[0x277D79D58];
                  v49 = MEMORY[0x277D79D50];
                  v50 = &unk_280CCB0A0;
LABEL_36:
                  sub_231040C14(v50, v48, v49);
                  sub_231157CB8();

                  goto LABEL_37;
                }
              }

              sub_231157E28();
              v48 = MEMORY[0x277D79B98];
              v49 = MEMORY[0x277D79B90];
              v50 = &unk_280CCB148;
              goto LABEL_36;
            }
          }

          sub_2311580D8();
          v48 = MEMORY[0x277D79D00];
          v49 = MEMORY[0x277D79CF8];
          v50 = &unk_280CCB0F0;
          goto LABEL_36;
        }
      }

      sub_231158138();
      sub_231040C14(&qword_280CCB0C0, MEMORY[0x277D79D30], MEMORY[0x277D79D28]);
      sub_231157CB8();

LABEL_37:
      ++v4;
      --v3;
    }

    while (v3);
  }
}

id DaemonXPCEventHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonXPCEventHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonXPCEventHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23104C774(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

unint64_t sub_23104C794(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
      v5 = OUTLINED_FUNCTION_1_0();

      return MEMORY[0x2821FE820](v5);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
    v4 = OUTLINED_FUNCTION_1_0();

    return MEMORY[0x2821FE828](v4);
  }

  return result;
}

char *sub_23104C84C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_23104C874(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_23104C898(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

uint64_t sub_23104C920(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_1_0();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_1_0();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

char *sub_23104CA0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104CE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23104CA2C()
{
  result = qword_280CCAF08;
  if (!qword_280CCAF08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAF08);
  }

  return result;
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

char *sub_23104CC4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104CF1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23104CC6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D370(a1, a2, a3, *v3, &qword_27DD3BC58, &unk_231161B40, MEMORY[0x277D79B60], MEMORY[0x277D79B60]);
  *v3 = result;
  return result;
}

void *sub_23104CCC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D01C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CCE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D14C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CD04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23104CD24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D370(a1, a2, a3, *v3, &qword_27DD3BC38, &qword_231161B18, MEMORY[0x277D79C70], MEMORY[0x277D79C70]);
  *v3 = result;
  return result;
}

void *sub_23104CD7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D370(a1, a2, a3, *v3, &qword_27DD3BC20, &qword_231161B00, MEMORY[0x277D7C018], MEMORY[0x277D7C018]);
  *v3 = result;
  return result;
}

void *sub_23104CDD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CDF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23104D670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CE14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104CF1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC50, &qword_231161B38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_23104D01C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC08, &qword_231161AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC10, &qword_231161AF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104D14C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC40, &unk_231161B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104D264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC68, &qword_231161B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_23104D370(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_23104C920(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_23104D538(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC28, &qword_231161B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC30, &qword_231161B10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104D670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC18, &qword_231161AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t objectdestroy_11Tm()
{

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
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

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return sub_231159818();
}

void *OUTLINED_FUNCTION_3(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2)
{

  return sub_231158E58();
}

uint64_t OUTLINED_FUNCTION_15()
{
}

void OUTLINED_FUNCTION_16()
{

  JUMPOUT(0x2319267C0);
}

uint64_t sub_23104D9D8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_231158C58();
  v2[13] = v3;
  OUTLINED_FUNCTION_5(v3);
  v2[14] = v4;
  v2[15] = OUTLINED_FUNCTION_21_0();
  v5 = sub_231158488();
  v2[16] = v5;
  OUTLINED_FUNCTION_5(v5);
  v2[17] = v6;
  v2[18] = OUTLINED_FUNCTION_21_0();
  v7 = sub_231157A38();
  v2[19] = v7;
  OUTLINED_FUNCTION_5(v7);
  v2[20] = v8;
  v2[21] = OUTLINED_FUNCTION_21_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  v2[22] = v9;
  OUTLINED_FUNCTION_5(v9);
  v2[23] = v10;
  v2[24] = OUTLINED_FUNCTION_21_0();
  v11 = sub_231158538();
  v2[25] = v11;
  OUTLINED_FUNCTION_5(v11);
  v2[26] = v12;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  OUTLINED_FUNCTION_19(v13);
  v2[29] = OUTLINED_FUNCTION_21_0();
  v14 = sub_231158418();
  v2[30] = v14;
  OUTLINED_FUNCTION_5(v14);
  v2[31] = v15;
  v2[32] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23104DC50, 0, 0);
}

uint64_t sub_23104DC50()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v37 = *(v0 + 168);
  v38 = *(v0 + 200);
  v39 = *(v0 + 160);
  v40 = *(v0 + 152);
  v7 = *(v0 + 88);
  sub_231158508();
  swift_getKeyPath();
  v8 = swift_allocObject();
  v9 = *(v7 + 16);
  v36 = *(v7 + 8);
  *(v8 + 16) = v36;
  *(v8 + 24) = v9;
  *v4 = v8;
  (*(v5 + 104))(v4, *MEMORY[0x277D721C8], v6);
  sub_231051AE0();
  sub_231051E04(&qword_27DD3BCE8, &unk_27DD3C310, &unk_231163B00, MEMORY[0x277D721D8]);

  OUTLINED_FUNCTION_16_0();
  sub_2311588F8();

  (*(v5 + 8))(v4, v6);
  v10 = *(v3 + 8);
  v10(v2, v38);
  sub_231157A28();
  sub_2311586D8();
  (*(v39 + 8))(v37, v40);
  v10(v1, v38);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 104);
    sub_231051B38(v12, &qword_27DD3BCE0, &qword_231161D10);
    sub_231158B68();
    sub_231158B58();
    sub_231159588();
    MEMORY[0x231924980](0xD00000000000005ALL, 0x8000000231167D90);
    MEMORY[0x231924980](v36, v9);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    (*(v14 + 104))(v13, *MEMORY[0x277D73298], v15);
    sub_231158B48();

    v16 = OUTLINED_FUNCTION_17();
    v17(v16);
    goto LABEL_6;
  }

  v18 = *(v0 + 256);
  v19 = *(v0 + 88);
  (*(*(v0 + 248) + 32))(v18, v12, v11);
  v20 = sub_23104E578(v19, v18);
  *(v0 + 264) = v20;
  if (!v20)
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);
    v24 = *(v0 + 88);
    sub_231158B68();
    sub_231158B58();
    sub_231159588();
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    MEMORY[0x231924980](0xD000000000000057, 0x8000000231167DF0);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    *(v0 + 64) = *(v24 + 6);
    *(v0 + 32) = v26;
    *(v0 + 48) = v27;
    *(v0 + 16) = v25;
    sub_231159688();
    v28 = *(v0 + 80);
    *v21 = *(v0 + 72);
    v21[1] = v28;
    (*(v22 + 104))(v21, *MEMORY[0x277D73298], v23);
    sub_231158B48();

    (*(v22 + 8))(v21, v23);
    v29 = OUTLINED_FUNCTION_17();
    v30(v29);
LABEL_6:

    OUTLINED_FUNCTION_28();

    __asm { BRAA            X2, X16 }
  }

  sub_23104F9D0();
  v33 = swift_task_alloc();
  *(v0 + 272) = v33;
  *v33 = v0;
  v33[1] = sub_23104E234;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_28();

  return MEMORY[0x2821DA7E0]();
}

uint64_t sub_23104E234(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_23104E49C;
  }

  else
  {
    v4[36] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_23104E3BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23104E3BC()
{
  v1 = v0[36];

  v2 = OUTLINED_FUNCTION_17();
  v3(v2);
  OUTLINED_FUNCTION_10_1(v0[32]);

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_23104E49C()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_10_1(v0[32]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23104E578(unsigned __int8 *a1, uint64_t a2)
{
  v165 = a2;
  v154 = sub_231158418();
  OUTLINED_FUNCTION_4();
  v153 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23(&v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB8, &unk_231161CE0);
  v7 = OUTLINED_FUNCTION_19(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23(&v148 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC0, &qword_231162760);
  v10 = OUTLINED_FUNCTION_19(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v148 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC8, &qword_231161CF0);
  v14 = OUTLINED_FUNCTION_19(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23(&v148 - v16);
  v161 = sub_231158A08();
  OUTLINED_FUNCTION_4();
  v160 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v148 - v23;
  v25 = sub_231158A68();
  OUTLINED_FUNCTION_4();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23(&v148 - v31);
  v166 = sub_231158B38();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_1();
  v37 = v35 - v36;
  v39 = MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_0();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v148 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  inited = &v148 - v45;
  MEMORY[0x28223BE20](v44);
  v152 = a1;
  v49 = *a1;
  v164 = v25;
  v159 = v27;
  v151 = v12;
  switch(v49)
  {
    case 1:
    case 2:
      v95 = v152;
      if (*(v152 + 4))
      {
        v96 = *(v152 + 2);
        v167 = *(v152 + 1);
        v168 = v96;

        OUTLINED_FUNCTION_20();

        v97 = OUTLINED_FUNCTION_16_0();
        MEMORY[0x231924980](v97);
      }

      else
      {
      }

      v106 = v155;
      v107 = v154;
      v108 = v153;
      v109 = v165;
      if (*(v95 + 6))
      {
        v110 = *(v95 + 5);
        v111 = *(v95 + 6);
      }

      else
      {
        v110 = sub_2311583F8();
        v111 = v112;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
      v113 = sub_231158DB8();
      (*(v108 + 16))(v106, v109, v107);
      type metadata accessor for CustomTool(0);
      v66 = swift_allocObject();
      v89 = OUTLINED_FUNCTION_17();
      v91 = v110;
      v92 = v111;
      v93 = v113;
      v94 = v106;
      goto LABEL_42;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
      v156 = v48;
      v157 = v21;
      v24 = 0x6F6974617265706FLL;
      OUTLINED_FUNCTION_24_0();
      v43 = sub_231158378();
      v50 = 0;
      v51 = *(v43 + 2);
      v52 = v33 + 16;
      v53 = v33 + 8;
      inited = v166;
      while (2)
      {
        if (v51 == v50)
        {
          goto LABEL_11;
        }

        if (v50 >= *(v43 + 2))
        {
          __break(1u);
          goto LABEL_58;
        }

        (*(v33 + 16))(v37, &v43[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v50], inited);
        if (sub_231158B18() == 0x6F6974617265706FLL && v54 == 0xE90000000000006ELL)
        {
        }

        else
        {
          v56 = sub_231159818();

          if ((v56 & 1) == 0)
          {
            inited = v166;
            (*v53)(v37, v166);
            ++v50;
            continue;
          }

          inited = v166;
        }

        break;
      }

      v57 = *(v33 + 32);
      v57(v156, v37, inited);
      v58 = v163;
      v59 = OUTLINED_FUNCTION_4_0();
      v60 = (v57)(v59);
      v61 = v157;
      MEMORY[0x2319245F0](v60);
      sub_2311589F8();
      OUTLINED_FUNCTION_25();
      v62(v61, v161);
      v63 = OUTLINED_FUNCTION_14_1();
      sub_2310CF274(v63, v64);

      v65 = v164;
      if (__swift_getEnumTagSinglePayload(v43, 1, v164) == 1)
      {
        (*v53)(v58, inited);
        goto LABEL_16;
      }

      (*(v159 + 32))(v162, v43, v65);
      v67 = v152;
      v68 = *(v152 + 4);
      if (v68)
      {
        v69 = *(v152 + 2);
        v70 = *(v152 + 3);
        v167 = *(v152 + 1);
        v168 = v69;

        OUTLINED_FUNCTION_20();

        MEMORY[0x231924980](v70, v68);

        v161 = v167;
        v160 = v168;
      }

      else
      {
        v71 = *(v152 + 2);
        v161 = *(v152 + 1);
        v160 = v71;
      }

      v72 = v149;
      v73 = *(v67 + 6);
      v74 = v162;
      if (v73)
      {
        v158 = *(v67 + 5);
        v157 = v73;
      }

      else
      {
        OUTLINED_FUNCTION_24_0();
        v158 = sub_2311583F8();
        v157 = v75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
      inited = swift_initStackObject();
      *(inited + 1) = xmmword_231161B80;
      *(inited + 4) = 0x6F6974617265706FLL;
      *(inited + 5) = 0xE90000000000006ELL;
      sub_231158948();
      v24 = swift_allocBox();
      v52 = v159;
      (*(v159 + 16))(v72, v74, v65);

      sub_231158E98();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_59;
    default:
      v148 = &v148 - v47;
      v98 = 0xEB00000000657079;
      v52 = 0x547972616D6D7573;
      OUTLINED_FUNCTION_24_0();
      v99 = sub_231158378();
      v53 = 0;
      v163 = *(v99 + 16);
      v162 = v33 + 16;
      v158 = v33 + 8;
      break;
  }

  while (1)
  {
    if (v163 == v53)
    {
LABEL_11:

      return 0;
    }

    if (v53 >= *(v99 + 16))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
LABEL_25:
      v76 = qword_27DD3C0A8;
      v77 = sub_231158E28();
      v78 = sub_231158E28();

      v79 = [v76 localizedStringForKey:v77 value:v78 table:0];

      sub_231158E58();
      v80 = sub_231158B88();
      __swift_storeEnumTagSinglePayload(v150, 1, 1, v80);
      v81 = v151;
      sub_231158B98();
      v82 = sub_231158BF8();
      __swift_storeEnumTagSinglePayload(v81, 0, 1, v82);
      sub_231158938();
      v83 = sub_231158978();
      v84 = MEMORY[0x277D72A68];
      *(inited + 9) = v83;
      *(inited + 10) = v84;
      *__swift_allocate_boxed_opaque_existential_1(inited + 6) = v24;
      (*(*(v83 - 8) + 104))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
      v85 = sub_231158DB8();
      (*(v52 + 8))(v162, v164);
      (*v53)(v163, v166);
      OUTLINED_FUNCTION_27();
      v87 = *(v86 - 256);
      OUTLINED_FUNCTION_26_0();
      v88();
      type metadata accessor for CustomTool(0);
      v66 = swift_allocObject();
      v89 = v161;
      v90 = v160;
      v91 = v158;
      v92 = v157;
      v93 = v85;
      v94 = v87;
      goto LABEL_42;
    }

    (*(v33 + 16))(v43, v99 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v53, v166);
    if (sub_231158B18() == v52 && v100 == v98)
    {
      break;
    }

    v102 = v52;
    v103 = v98;
    v104 = sub_231159818();

    if (v104)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_15_0();
    v105(v43, v166);
    ++v53;
    v98 = v103;
    v52 = v102;
  }

  v102 = v52;
  v103 = v98;

LABEL_46:

  v115 = *(v33 + 32);
  v116 = v166;
  v115(inited, v43, v166);
  v117 = (v115)(v148, inited, v116);
  MEMORY[0x2319245F0](v117);
  sub_2311589F8();
  OUTLINED_FUNCTION_25();
  v118(v24, v161);
  v119 = OUTLINED_FUNCTION_14_1();
  sub_2310CF274(v119, v120);

  v121 = v164;
  if (__swift_getEnumTagSinglePayload(v43, 1, v164) == 1)
  {
    OUTLINED_FUNCTION_15_0();
    v122 = OUTLINED_FUNCTION_4_0();
    v123(v122);
LABEL_16:
    sub_231051B38(v43, &qword_27DD3BCC8, &qword_231161CF0);
    return 0;
  }

  v124 = v156;
  (*(v159 + 32))(v156, v43, v121);
  v125 = v152;
  v126 = *(v152 + 2);
  if (*(v152 + 4))
  {
    v167 = *(v152 + 1);
    v168 = v126;

    OUTLINED_FUNCTION_20();

    v127 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x231924980](v127);

    v162 = v167;
    v161 = v168;
  }

  else
  {
    v162 = *(v152 + 1);
    v161 = v126;
  }

  v128 = v149;
  OUTLINED_FUNCTION_24_0();
  v129 = *(v125 + 6);
  if (v129)
  {
    v163 = *(v125 + 5);
    v160 = v129;
  }

  else
  {
    v163 = sub_2311583F8();
    v160 = v130;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
  v131 = swift_initStackObject();
  *(v131 + 16) = xmmword_231161B80;
  *(v131 + 32) = v102;
  *(v131 + 40) = v103;
  sub_231158948();
  v132 = swift_allocBox();
  v133 = v159;
  v134 = v164;
  (*(v159 + 16))(v128, v124, v164);

  sub_231158E98();
  if (qword_27DD3B940 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
  }

  v135 = qword_27DD3C0A8;
  v136 = sub_231158E28();
  v137 = sub_231158E28();

  v138 = [v135 localizedStringForKey:v136 value:v137 table:0];

  sub_231158E58();
  v139 = sub_231158B88();
  __swift_storeEnumTagSinglePayload(v150, 1, 1, v139);
  OUTLINED_FUNCTION_14_1();
  sub_231158B98();
  v140 = sub_231158BF8();
  __swift_storeEnumTagSinglePayload(v137, 0, 1, v140);
  sub_231158938();
  v141 = sub_231158978();
  v142 = MEMORY[0x277D72A68];
  *(v131 + 72) = v141;
  *(v131 + 80) = v142;
  *__swift_allocate_boxed_opaque_existential_1((v131 + 48)) = v132;
  (*(*(v141 - 8) + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
  v143 = sub_231158DB8();
  (*(v133 + 8))(v156, v134);
  OUTLINED_FUNCTION_15_0();
  v144(v148, v166);
  OUTLINED_FUNCTION_27();
  v146 = *(v145 - 256);
  OUTLINED_FUNCTION_26_0();
  v147();
  type metadata accessor for CustomTool(0);
  v66 = swift_allocObject();
  v89 = v162;
  v90 = v161;
  v91 = v163;
  v92 = v160;
  v93 = v143;
  v94 = v146;
LABEL_42:
  sub_23104F95C(v89, v90, v91, v92, v93, v94);
  return v66;
}

uint64_t sub_23104F688()
{
  if (*(v0 + 32))
  {
    v4 = *(v0 + 8);

    MEMORY[0x231924980](45, 0xE100000000000000);

    v1 = OUTLINED_FUNCTION_16_0();
    MEMORY[0x231924980](v1);

    return v4;
  }

  else
  {
    v2 = *(v0 + 8);
  }

  return v2;
}

uint64_t sub_23104F71C()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23104F744()
{
  sub_23104F71C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23104F79C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = *(a2 + 48);
  *(v2 + 72) = a1;
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_23104F84C;

  return sub_23104D9D8(v2 + 16);
}

uint64_t sub_23104F84C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 72) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

char *sub_23104F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 4) = a1;
  *(v6 + 5) = a2;
  *(v6 + 2) = a3;
  *(v6 + 3) = a4;
  *(v6 + 6) = a5;
  v8 = OBJC_IVAR____TtC14VoiceShortcuts10CustomTool_sourceToolDefinition;
  sub_231158418();
  OUTLINED_FUNCTION_13_0();
  (*(v9 + 32))(&v6[v8], a6);
  return v6;
}

uint64_t sub_23104F9D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB0, &qword_231164120);
  v2 = OUTLINED_FUNCTION_19(v1);
  MEMORY[0x28223BE20](v2);
  v4 = v10 - v3;
  sub_231158418();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC14VoiceShortcuts10CustomTool_sourceToolDefinition);
  v8 = sub_2311585A8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);

  return sub_231158448();
}

char *sub_23104FB1C()
{

  v1 = OBJC_IVAR____TtC14VoiceShortcuts10CustomTool_sourceToolDefinition;
  sub_231158418();
  OUTLINED_FUNCTION_13_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_23104FB8C()
{
  sub_23104FB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CustomTool(uint64_t a1)
{
  result = qword_27DD3BC78;
  if (!qword_27DD3BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23104FC38(uint64_t a1)
{
  result = sub_231158418();
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

unint64_t sub_23104FCE8()
{
  result = qword_27DD3BC88;
  if (!qword_27DD3BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BC88);
  }

  return result;
}

void sub_23104FD3C(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v41 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v42 = OUTLINED_FUNCTION_12_0();
      v43 = OUTLINED_FUNCTION_2_2(v42, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v44 - 42;
      break;
    case 2:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v29 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v30 = OUTLINED_FUNCTION_12_0();
      v31 = OUTLINED_FUNCTION_2_2(v30, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v32 - 43;
      break;
    case 3:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v37 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v38 = OUTLINED_FUNCTION_12_0();
      v39 = OUTLINED_FUNCTION_2_2(v38, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v40 | 8;
      break;
    case 4:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v17 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v18 = OUTLINED_FUNCTION_12_0();
      v19 = OUTLINED_FUNCTION_2_2(v18, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v20 + 7;
      break;
    case 5:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    case 6:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      v12 = 0xD000000000000045;
      OUTLINED_FUNCTION_4_0();
      v61 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v62 = OUTLINED_FUNCTION_12_0();
      v63 = OUTLINED_FUNCTION_2_2(v62, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      v24 = "com.apple.UniversalAccess.UASettingsShortcuts.UAToggleHoverTextIntent";
      goto LABEL_55;
    case 7:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_67;
    case 8:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v71 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v72 = OUTLINED_FUNCTION_12_0();
      v73 = OUTLINED_FUNCTION_2_2(v72, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v74 + 3;
      break;
    case 9:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_66;
    case 10:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      v12 = 0xD000000000000045;
      OUTLINED_FUNCTION_4_0();
      v68 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v69 = OUTLINED_FUNCTION_12_0();
      v70 = OUTLINED_FUNCTION_2_2(v69, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      v24 = "com.apple.UniversalAccess.UASettingsShortcuts.UAToggleMonoAudioIntent";
      goto LABEL_55;
    case 11:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_66;
    case 12:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      v12 = 0xD000000000000045;
      OUTLINED_FUNCTION_4_0();
      v21 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v22 = OUTLINED_FUNCTION_12_0();
      v23 = OUTLINED_FUNCTION_2_2(v22, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      v24 = "com.apple.UniversalAccess.UASettingsShortcuts.UAToggleMouseKeysIntent";
LABEL_55:
      v11 = (v24 - 32);
      break;
    case 13:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
LABEL_68:
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

LABEL_45:
      OUTLINED_FUNCTION_4_0();
      v57 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v58 = OUTLINED_FUNCTION_12_0();
      v59 = OUTLINED_FUNCTION_2_2(v58, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v60 - 1;
      break;
    case 14:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
LABEL_66:
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

LABEL_19:
      OUTLINED_FUNCTION_4_0();
      v25 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v26 = OUTLINED_FUNCTION_12_0();
      v27 = OUTLINED_FUNCTION_2_2(v26, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v28 + 1;
      break;
    case 15:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v33 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v34 = OUTLINED_FUNCTION_12_0();
      v35 = OUTLINED_FUNCTION_2_2(v34, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v36 + 4;
      break;
    case 16:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v13 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v14 = OUTLINED_FUNCTION_12_0();
      v15 = OUTLINED_FUNCTION_2_2(v14, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v16 + 9;
      break;
    case 17:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
LABEL_67:
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

LABEL_35:
      OUTLINED_FUNCTION_4_0();
      v45 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v46 = OUTLINED_FUNCTION_12_0();
      v47 = OUTLINED_FUNCTION_2_2(v46, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v48 | 2;
      break;
    case 18:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v64 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v65 = OUTLINED_FUNCTION_12_0();
      v66 = OUTLINED_FUNCTION_2_2(v65, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v67 + 12;
      break;
    case 19:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v79 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v80 = OUTLINED_FUNCTION_12_0();
      v81 = OUTLINED_FUNCTION_2_2(v80, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v82 + 14;
      break;
    case 20:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v49 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v50 = OUTLINED_FUNCTION_12_0();
      v51 = OUTLINED_FUNCTION_2_2(v50, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v52 - 33;
      break;
    case 21:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v53 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v54 = OUTLINED_FUNCTION_12_0();
      v55 = OUTLINED_FUNCTION_2_2(v54, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v56 - 41;
      break;
    case 22:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v75 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v76 = OUTLINED_FUNCTION_12_0();
      v77 = OUTLINED_FUNCTION_2_2(v76, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v78 - 39;
      break;
    default:
      v4 = 0x8000000231167D50;
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_27DD3B940);
      }

      OUTLINED_FUNCTION_4_0();
      v7 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v8 = OUTLINED_FUNCTION_12_0();
      v9 = OUTLINED_FUNCTION_2_2(v8, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();
      v10 = 0xD000000000000011;
      v11 = "framework/ContentKit";
      v12 = 0xD00000000000004ALL;
      break;
  }

  *a2 = a1;
  *(a2 + 8) = v12;
  *(a2 + 16) = v11 | 0x8000000000000000;
  *(a2 + 24) = v10;
  *(a2 + 32) = v4;
  *(a2 + 40) = v2;
  *(a2 + 48) = v3;
}

unint64_t sub_231050C00(char a1)
{
  result = 0xD00000000000004ALL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000004DLL;
      break;
    case 4:
      result = 0xD00000000000004CLL;
      break;
    case 5:
    case 13:
      result = 0xD000000000000044;
      break;
    case 6:
    case 10:
    case 12:
      result = 0xD000000000000045;
      break;
    case 7:
    case 17:
      result = 0xD000000000000047;
      break;
    case 8:
      result = 0xD000000000000048;
      break;
    case 9:
    case 11:
    case 14:
      result = 0xD000000000000046;
      break;
    case 15:
      result = 0xD000000000000049;
      break;
    case 16:
      result = 0xD00000000000004ELL;
      break;
    case 18:
      result = 0xD000000000000051;
      break;
    case 19:
      result = 0xD000000000000053;
      break;
    case 20:
      result = 0xD000000000000024;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 22:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_231050DD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_231159848();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_231050E5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_231158E58();
  v4 = v3;
  if (v2 == sub_231158E58() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    v7 = sub_231159818();
  }

  return v7 & 1;
}

uint64_t sub_231050EFC()
{
  OUTLINED_FUNCTION_22();
  v3 = 0x6953657361726870;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000002311672E0;
    }

    else
    {
      v6 = 0x8000000231167300;
    }
  }

  else
  {
    v5 = 0x6953657361726870;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v2 == 1)
    {
      v0 = 0x80000002311672E0;
    }

    else
    {
      v0 = 0x8000000231167300;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231159818();
  }

  return v8 & 1;
}

uint64_t sub_231050FE4(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F69737365536F6ELL;
  v4 = a1;
  v5 = 0x6F69737365536F6ELL;
  v6 = 0xE90000000000006ELL;
  switch(v4)
  {
    case 1:
      v6 = 0x8000000231167420;
      v5 = 0xD00000000000001ALL;
      break;
    case 2:
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x666C65536F6ELL;
      break;
    default:
      v5 = 0xD000000000000010;
      v6 = 0x8000000231167400;
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_18();
      v3 = v8 | v7;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x666C65536F6ELL;
      break;
    default:
      v3 = 0xD000000000000010;
      v2 = 0x8000000231167400;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231159818();
  }

  return v10 & 1;
}

uint64_t sub_231051130(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    v10 = sub_231159818();
  }

  return v10 & 1;
}

uint64_t sub_231051228(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_22();
  }

  sub_231158EA8();
}

uint64_t sub_2310512BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_18();
      break;
    default:
      break;
  }

  sub_231158EA8();
}

uint64_t sub_231051374(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_231158EA8();
}

unint64_t sub_2310513D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231050DD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_231051404@<X0>(unint64_t *a1@<X8>)
{
  result = sub_231050C00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231051440()
{
  *&v9 = 0;
  *(&v9 + 1) = 0xE000000000000000;
  sub_231159588();
  v7 = v9;
  MEMORY[0x231924980](0xD000000000000018, 0x8000000231167AB0);
  v1 = sub_231050C00(*v0);
  MEMORY[0x231924980](v1);

  MEMORY[0x231924980](0x54656372756F7320, 0xEF203A64496C6F6FLL);
  MEMORY[0x231924980](*(v0 + 8), *(v0 + 16));
  MEMORY[0x231924980](0x6966696C61757120, 0xEB00000000207265);
  v9 = *(v0 + 24);
  v8 = *(v0 + 24);
  sub_2310519C0(&v9, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCA8, &unk_231161CD0);
  v2 = sub_231158E68();
  MEMORY[0x231924980](v2);

  MEMORY[0x231924980](0x206D6F7473756320, 0xEE00203A656D616ELL);
  v8 = *(v0 + 40);
  v6 = *(v0 + 40);
  sub_2310519C0(&v8, &v5);
  v3 = sub_231158E68();
  MEMORY[0x231924980](v3);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return v7;
}

BOOL sub_2310515EC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_231050C00(*a1);
  v7 = v6;
  if (v5 == sub_231050C00(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_231159818();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v11 && (sub_231159818() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = *(a1 + 24) == *(a2 + 24) && v12 == v13;
    if (!v14 && (sub_231159818() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(a1 + 40) == *(a2 + 40) && v15 == v16;
    return v17 || (sub_231159818() & 1) != 0;
  }

  return !v16;
}

uint64_t sub_231051728(uint64_t a1)
{
  sub_231050C00(*v1);
  sub_231158EA8();

  sub_231158EA8();
  if (*(v1 + 32))
  {
    sub_231159938();
    sub_231158EA8();
  }

  else
  {
    sub_231159938();
  }

  if (!*(v1 + 48))
  {
    return sub_231159938();
  }

  sub_231159938();

  return sub_231158EA8();
}

uint64_t sub_231051800()
{
  sub_231159918();
  sub_231051728(v1);
  return sub_231159948();
}

unint64_t sub_231051844(uint64_t a1)
{
  *(a1 + 8) = sub_231051874();
  result = sub_2310518C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_231051874()
{
  result = qword_27DD3BC90;
  if (!qword_27DD3BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BC90);
  }

  return result;
}

unint64_t sub_2310518C8()
{
  result = qword_27DD3BC98;
  if (!qword_27DD3BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BC98);
  }

  return result;
}

unint64_t sub_231051920()
{
  result = qword_27DD3BCA0;
  if (!qword_27DD3BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BCA0);
  }

  return result;
}

uint64_t sub_231051980(uint64_t a1)
{
  sub_231159918();
  sub_231051728(v2);
  return sub_231159948();
}

uint64_t sub_2310519C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCA8, &unk_231161CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_231051AE0()
{
  result = qword_27DD3C320;
  if (!qword_27DD3C320)
  {
    sub_231158538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C320);
  }

  return result;
}

uint64_t sub_231051B38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_0();
  (*(v4 + 8))(a1);
  return a1;
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

uint64_t sub_231051BAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_231051BEC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CustomToolPlan.ToolType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomToolPlan.ToolType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231051E04(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231051E50()
{
  result = qword_27DD3BD00;
  if (!qword_27DD3BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BD00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{
}

void OUTLINED_FUNCTION_11_2()
{
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_task_alloc();
}

uint64_t sub_2310520A4(unsigned __int8 a1)
{
  sub_231159918();
  MEMORY[0x2319253F0](a1);
  return sub_231159948();
}

uint64_t sub_231052108(uint64_t a1)
{
  v2 = *v1;
  sub_231159918();
  MEMORY[0x2319253F0](v2);
  return sub_231159948();
}

id sub_231052158()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_2310521B8(v0);
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
    v4 = v2;
    sub_2310549FC(v3);
  }

  sub_231054AB8(v1);
  return v2;
}

id sub_2310521B8(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v11[0] = 0;
  v2 = [v1 databaseWithError_];
  v3 = v11[0];
  if (v2)
  {
    v4 = v2;
    v5 = objc_allocWithZone(MEMORY[0x277D7C988]);
    v6 = v3;
    v7 = [v5 initWithDatabase_];
  }

  else
  {
    v8 = v11[0];
    v9 = sub_231157938();

    swift_willThrow();
    return 0;
  }

  return v7;
}

uint64_t sub_2310522A0()
{
  OUTLINED_FUNCTION_4_1();
  v1[95] = v0;
  v1[94] = v2;
  v1[93] = v3;
  v1[92] = v4;
  v5 = sub_231157E38();
  v1[96] = v5;
  v1[97] = *(v5 - 8);
  v1[98] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231052390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v84 = *MEMORY[0x277D85DE8];
  v13 = [objc_allocWithZone(MEMORY[0x277D7C290]) init];
  v12[99] = v13;
  [v13 setShouldPrompt_];
  [v13 setEnabled_];
  v14 = sub_2310C6F34();
  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v17 = v14;
    v18 = v15;
    v16 = sub_231157998();
    sub_231054A4C(v17, v18);
  }

  v19 = v12[98];
  v20 = v12[97];
  v21 = v12[96];
  v22 = v12[94];
  [v13 setTriggerData_];

  [v13 setShouldRecur_];
  (*(v20 + 16))(v19, v22, v21);
  v23 = (*(v20 + 88))(v19, v21);
  if (v23 == *MEMORY[0x277D79BA0])
  {
    v24 = v12[98];
    (*(v12[97] + 96))(v24, v12[96]);
    v25 = *v24;
    v12[100] = *v24;
    v27 = *(v24 + 8);
    v26 = *(v24 + 16);
    v28 = [v25 identifier];
    v29 = sub_231158E58();
    v31 = v30;

    v32 = objc_allocWithZone(MEMORY[0x277D23848]);
    v33 = sub_231054904(v29, v31, v27, v26);
    v12[101] = v33;
    v34 = [objc_allocWithZone(MEMORY[0x277D23C38]) initWithOptions_];
    v12[102] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_231161E80;
    *(v35 + 32) = v33;
    sub_231054A0C(0, &qword_27DD3BD28, 0x277D23848);
    v36 = v33;
    v37 = sub_231158F38();

    v12[90] = 0;
    v38 = [v34 actionsWithFullyQualifiedIdentifiers:v37 error:v12 + 90];

    v39 = v12[90];
    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD30, &qword_231161EE8);
      v40 = sub_231158D98();
      v41 = v39;

      v42 = [v36 bundleIdentifier];
      v43 = sub_231158E58();
      v45 = v44;

      v46 = sub_23104AD08(v43, v45, v40);

      if (v46)
      {
        v47 = [v36 actionIdentifier];
        v48 = sub_231158E58();
        v50 = v49;

        v51 = sub_23104AD58(v48, v50, v46);
        v12[103] = v51;

        if (v51)
        {
          sub_231054A0C(0, &qword_27DD3BD38, 0x277D7A000);
          v52 = sub_231053C8C(v36, v25, v51);
          v12[104] = v52;
          v53 = [objc_opt_self() defaultDatabase];
          v12[105] = v53;
          v12[18] = v12;
          v12[23] = v12 + 91;
          v12[19] = sub_231052BC0;
          v54 = swift_continuation_init();
          v12[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD40, &qword_231161EF0);
          v12[50] = MEMORY[0x277D85DD0];
          v12[51] = 1107296256;
          v12[52] = sub_231053CF4;
          v12[53] = &block_descriptor_14;
          v12[54] = v54;
          [v52 createWorkflowWithEnvironment:0 database:v53 completionHandler:v12 + 50];
LABEL_14:
          OUTLINED_FUNCTION_3_0();

          return MEMORY[0x282200938](v64);
        }
      }

      v67 = sub_2310549A8();
      OUTLINED_FUNCTION_13_1(&type metadata for TriggerService.TriggerServiceError, v67);
      *v68 = 2;
      swift_willThrow();

LABEL_21:
LABEL_25:

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3_0();

      return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, v84, a11, a12);
    }

    v69 = v39;
    sub_231157938();

    swift_willThrow();
    goto LABEL_24;
  }

  if (v23 == *MEMORY[0x277D79BA8])
  {
    v55 = v12[95];
    (*(v12[97] + 96))(v12[98], v12[96]);
    v56 = *(v55 + 16);
    v12[88] = 0;
    v57 = [v56 databaseWithError_];
    v12[111] = v57;
    v58 = v12[88];
    if (v57)
    {
      v25 = v57;
      v59 = v58;
      v60 = sub_231158E28();

      v36 = [v25 referenceForWorkflowID_];
      v12[112] = v36;

      if (!v36)
      {
        v79 = sub_2310549A8();
        OUTLINED_FUNCTION_13_1(&type metadata for TriggerService.TriggerServiceError, v79);
        *v80 = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      v61 = sub_231052158();
      v12[113] = v61;
      if (v61)
      {
        v62 = v61;
        v12[2] = v12;
        v12[7] = v12 + 89;
        v12[3] = sub_2310532C0;
        v63 = swift_continuation_init();
        v12[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD20, &qword_231161ED8);
        v12[34] = MEMORY[0x277D85DD0];
        v12[35] = 1107296256;
        v12[36] = sub_231053CF4;
        v12[37] = &block_descriptor_7;
        v12[38] = v63;
        [v62 saveNewConfiguredTrigger:v13 notifyDaemon:1 completion:v12 + 34];
        goto LABEL_14;
      }

      v81 = sub_2310549A8();
      OUTLINED_FUNCTION_13_1(&type metadata for TriggerService.TriggerServiceError, v81);
      *v82 = 0;
      swift_willThrow();

      goto LABEL_21;
    }

    v70 = v58;

    sub_231157938();

    swift_willThrow();
LABEL_24:
    v25 = v13;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_3_0();

  return sub_231159808();
}

uint64_t sub_231052BC0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 848) = *(v3 + 176);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231052CEC()
{
  v1 = v0[105];
  v2 = v0[99];
  v3 = v0[91];
  v0[107] = v3;

  v4 = [v3 record];
  [v4 setHiddenFromLibraryAndSync_];

  [v2 setEditableShortcut_];
  v5 = sub_231052158();
  v0[108] = v5;
  if (!v5)
  {
    v12 = v0[104];
    v13 = v0[103];
    v14 = v0[102];
    v15 = v0[101];
    v16 = v0[100];
    v17 = v0[99];
    v18 = sub_2310549A8();
    OUTLINED_FUNCTION_13_1(&type metadata for TriggerService.TriggerServiceError, v18);
    *v19 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v6 = v5;
  v7 = v0[99];
  v8 = [v3 record];
  v0[109] = v8;
  v0[26] = v0;
  v0[31] = v0 + 86;
  v0[27] = sub_231052F78;
  v9 = swift_continuation_init();
  v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD48, &qword_231161EF8);
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_231053D20;
  v0[61] = &block_descriptor_17;
  v0[62] = v9;
  [v6 saveNewConfiguredTrigger:v7 workflow:v8 notifyDaemon:1 completion:v0 + 58];
  OUTLINED_FUNCTION_10();

  return MEMORY[0x282200938](v10);
}

uint64_t sub_231052F78()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 880) = *(v3 + 240);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310530A4()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 688);
  v3 = *(v0 + 696);

  v4 = v2;
  v5 = [v4 trigger];
  sub_2310C7484((v0 + 608));
  v6 = *(v0 + 856);
  v14 = *(v0 + 832);
  v15 = *(v0 + 824);
  v7 = *(v0 + 816);
  v16 = *(v0 + 800);
  v17 = *(v0 + 808);
  v8 = *(v0 + 792);

  v9 = [v4 identifier];
  sub_231158E58();

  v10 = sub_2310548A0(v0 + 608, v0 + 648);
  OUTLINED_FUNCTION_7_1(v10, v11, v0 + 648);

  __swift_destroy_boxed_opaque_existential_0((v0 + 608));

  OUTLINED_FUNCTION_1();

  return v12();
}

uint64_t sub_2310532C0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 912) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310533EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v42 = *MEMORY[0x277D85DE8];
  v19 = *(v13 + 904);
  v20 = *(v13 + 760);
  v21 = *(v13 + 712);
  *(v13 + 920) = v21;

  v22 = v20[3];
  *(v13 + 928) = v22;
  if (v22)
  {
    v23 = v22;
    v24 = [v21 identifier];
    if (!v24)
    {
      sub_231158E58();
      v24 = sub_231158E28();
    }

    *(v13 + 936) = v24;
    v25 = *(v13 + 896);
    *(v13 + 80) = v13;
    *(v13 + 120) = v13 + 952;
    *(v13 + 88) = sub_2310536A8;
    v26 = swift_continuation_init();
    *(v13 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD10, &qword_231161ED0);
    *(v13 + 336) = MEMORY[0x277D85DD0];
    *(v13 + 344) = 1107296256;
    *(v13 + 352) = sub_231053E78;
    *(v13 + 360) = &block_descriptor_10;
    *(v13 + 368) = v26;
    [v23 associateWorkflowToTriggerID:v24 deletingExistingReference:0 notifyDaemon:0 workflowReference:v25 completion:v13 + 336];
    OUTLINED_FUNCTION_3_0();

    return MEMORY[0x282200938](v27);
  }

  else
  {
    v29 = [*(v13 + 920) trigger];
    OUTLINED_FUNCTION_11_3();
    if (v12)
    {
      OUTLINED_FUNCTION_12_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      v30 = [v20 identifier];
      sub_231158E58();

      v31 = sub_2310548A0(v13 + 528, v13 + 568);
      OUTLINED_FUNCTION_7_1(v31, v32, v13 + 568);

      __swift_destroy_boxed_opaque_existential_0((v13 + 528));
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_3_0();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, a11, a12);
  }
}

uint64_t sub_2310536A8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 944) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310537D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v34 = *MEMORY[0x277D85DE8];
  v20 = *(v14 + 936);
  sub_2310549FC(*(v14 + 928));

  v21 = [*(v14 + 920) trigger];
  OUTLINED_FUNCTION_11_3();
  if (v13)
  {
    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    v22 = [v20 identifier];
    sub_231158E58();

    v23 = sub_2310548A0(v14 + 528, v14 + 568);
    OUTLINED_FUNCTION_7_1(v23, v24, v14 + 568);

    __swift_destroy_boxed_opaque_existential_0((v14 + 528));
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, a11, a12);
}

uint64_t sub_231053928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v29 = *MEMORY[0x277D85DE8];
  v13 = v12[105];
  v14 = v12[104];
  v15 = v12[103];
  v16 = v12[102];
  v17 = v12[101];
  v18 = v12[100];
  v19 = v12[99];
  swift_willThrow();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, a11, a12);
}

void sub_2310539F4(uint64_t a1)
{
  v12 = v1[109];
  v2 = v1[108];
  v3 = v1[107];
  v4 = v1[104];
  v5 = v1[103];
  v6 = v1[102];
  v7 = v1[101];
  v8 = v1[100];
  v9 = v1[99];
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231053AEC(uint64_t a1)
{
  v2 = v1[113];
  v3 = v1[112];
  v4 = v1[111];
  v5 = v1[99];
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_231053BB0()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[99];
  swift_willThrow();

  sub_2310549FC(v2);

  OUTLINED_FUNCTION_1();

  return v7();
}

id sub_231053C8C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:a1 action:a2 metadata:a3];

  return v6;
}

uint64_t *sub_231053D20(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_231060450();
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = a2;
  v11 = a3;

  return sub_231058230(v8, v10, v11);
}

uint64_t *sub_231053DC8(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_231053E78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_231060450();
  }

  else
  {
    v8 = *v5;

    return sub_231058250(v8, v4);
  }
}

uint64_t sub_231053EFC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  OUTLINED_FUNCTION_9();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231053F2C()
{
  v1 = sub_231052158();
  v0[21] = v1;
  if (v1)
  {
    v2 = sub_231158E28();
    v0[22] = v2;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_2310540A8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD10, &qword_231161ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_231053E78;
    v0[13] = &block_descriptor_1;
    v0[14] = v3;
    [v1 deleteTriggerWithIdentifier:v2 notifyDaemon:1 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_1();

    return v4();
  }
}

uint64_t sub_2310540A8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310541A8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_231054208(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_23105427C()
{
  v3 = v1;
  v35[5] = *MEMORY[0x277D85DE8];
  v29 = sub_231157DA8();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v35[0] = 0;
  v6 = [v5 databaseWithError_];
  if (!v6)
  {
    v23 = v35[0];
    sub_231157938();

    swift_willThrow();
    return v2;
  }

  v7 = v6;
  v8 = v35[0];
  v9 = [v7 allConfiguredTriggers];
  v10 = [v9 descriptors];

  sub_231054A0C(0, &qword_27DD3BD08, 0x277D7C288);
  v11 = sub_231158F48();

  v12 = sub_23106FF58(v11);
  if (!v12)
  {

    return MEMORY[0x277D84F90];
  }

  v13 = v12;
  v33 = MEMORY[0x277D84F90];
  sub_23104CC6C(0, v12 & ~(v12 >> 63), 0);
  if (v13 < 0)
  {
LABEL_21:
    __break(1u);
  }

  v25 = v7;
  v14 = 0;
  v2 = v33;
  v26 = v11 & 0xFFFFFFFFFFFFFF8;
  v27 = v31 + 32;
  v28 = v11 & 0xC000000000000001;
  do
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v28)
    {
      v16 = MEMORY[0x231925080](v14, v11);
    }

    else
    {
      if (v14 >= *(v26 + 16))
      {
        goto LABEL_20;
      }

      v16 = *(v11 + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = [v16 trigger];
    sub_2310C7484(v35);
    if (v3)
    {

      return v2;
    }

    v32 = 0;

    v19 = [v17 identifier];
    sub_231158E58();

    sub_2310548A0(v35, v34);
    v20 = v30;
    sub_231157D98();

    __swift_destroy_boxed_opaque_existential_0(v35);
    v33 = v2;
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_23104CC6C((v21 > 1), v22 + 1, 1);
      v20 = v30;
      v2 = v33;
    }

    *(v2 + 16) = v22 + 1;
    (*(v31 + 32))(v2 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22, v20, v29);
    ++v14;
    v3 = v32;
  }

  while (v15 != v13);

  return v2;
}

void sub_23105463C(uint64_t a2@<X8>)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v17[0] = 0;
  v6 = [v5 databaseWithError_];
  if (v6)
  {
    v7 = v6;
    v8 = v17[0];
    v9 = sub_231158E28();
    v10 = [v7 configuredTriggerForTriggerID_];

    if (v10)
    {
      v11 = [v10 trigger];
      sub_2310C7484(v17);

      if (v3)
      {
      }

      else
      {
        v14 = [v10 identifier];
        sub_231158E58();

        sub_2310548A0(v17, v16);
        sub_231157D98();

        __swift_destroy_boxed_opaque_existential_0(v17);
        v15 = sub_231157DA8();
        __swift_storeEnumTagSinglePayload(a2, 0, 1, v15);
      }
    }

    else
    {
      v13 = sub_231157DA8();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
    }
  }

  else
  {
    v12 = v17[0];
    sub_231157938();

    swift_willThrow();
  }
}

uint64_t sub_231054848()
{
  sub_231054820();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2310548A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_231054904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_231158E28();

  v6 = sub_231158E28();

  v7 = [v4 initWithActionIdentifier:v5 bundleIdentifier:v6];

  return v7;
}

unint64_t sub_2310549A8()
{
  result = qword_27DD3BD18;
  if (!qword_27DD3BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BD18);
  }

  return result;
}

void sub_2310549FC(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_231054A0C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_231054A4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231054A60(a1, a2);
  }

  return a1;
}

uint64_t sub_231054A60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_231054AB8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TriggerService.TriggerServiceError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TriggerService.TriggerServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231054C30()
{
  result = qword_27DD3BD50;
  if (!qword_27DD3BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BD50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231157D98();
}

void OUTLINED_FUNCTION_8_1()
{
}

void *OUTLINED_FUNCTION_11_3()
{

  return sub_2310C7484((v0 + 528));
}

id sub_231054D64()
{
  result = [objc_allocWithZone(type metadata accessor for SpotlightDomainsCleaner()) init];
  qword_27DD42C80 = result;
  return result;
}

id sub_231054D94()
{
  if (qword_27DD3B938 != -1)
  {
    swift_once();
  }

  v1 = qword_27DD42C80;

  return v1;
}

id sub_231054E18()
{
  v1 = v0;
  *&v0[OBJC_IVAR___WFSpotlightDomainsCleaner_observers] = MEMORY[0x277D84F90];
  v2 = sub_231158CB8();
  v4 = v3;
  v5 = sub_231158C98();
  v6 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  *&v1[OBJC_IVAR___WFSpotlightDomainsCleaner_index] = sub_2310C0D80(v2, v4, v5);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SpotlightDomainsCleaner();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_231054EEC(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR___WFSpotlightDomainsCleaner_observers;
  swift_beginAccess();
  sub_231086000();
  v4 = *(*(v1 + v3) + 16);
  sub_2310860D4(v4);
  v5 = *(v1 + v3);
  *(v5 + 16) = v4 + 1;
  sub_2310555F8(v7, v5 + 8 * v4 + 32);
  *(v2 + v3) = v5;
  return swift_endAccess();
}

uint64_t sub_231054FB0(uint64_t a1)
{
  v3 = OBJC_IVAR___WFSpotlightDomainsCleaner_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  result = sub_231055184((v1 + v3), a1);
  v5 = *(*(v1 + v3) + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2310553B0(result, v5);
    return swift_endAccess();
  }

  return result;
}

void sub_231055050(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id SpotlightDomainsCleaner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightDomainsCleaner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231055184(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_231055318(v6, a2);
  if (v2)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
LABEL_5:
    swift_unknownObjectRelease();
    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 8 * result + 40; ; i += 8)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        goto LABEL_5;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      sub_23105549C(v6 + i, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        swift_unknownObjectRelease();
        result = sub_23105550C(v17);
        if (v13 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_23105550C(v17);
      }

      if (v9 != v3)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v14 = *(v6 + 16);
        if (v3 >= v14)
        {
          goto LABEL_27;
        }

        result = sub_23105549C(v6 + 32 + 8 * v3, v17);
        if (v9 >= v14)
        {
          goto LABEL_28;
        }

        sub_23105549C(v6 + i, &v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_231055574(v6);
          v6 = v15;
        }

        result = sub_231055588(&v16, v6 + 8 * v3 + 32);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        result = sub_231055588(v17, v6 + i);
        *a1 = v6;
      }

      ++v3;
LABEL_24:
      ++v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231055318(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = a1 + 32; ; i += 8)
  {
    if (v4 == v3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    ++v3;
  }

  v8 = v3;
LABEL_8:
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_2310553B0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2310B2C5C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 8 * v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_23104C794(v9 + 8 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23105549C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23105550C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231055588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310555F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231055678@<X0>(uint64_t a1@<X8>)
{
  result = sub_231055668();
  *a1 = 0;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_2310556B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    result = sub_231159868();
    __break(1u);
  }

  else
  {
    v6 = &v5[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_entityTypeIdentifier];
    *v6 = 0xD000000000000019;
    *(v6 + 1) = 0x80000002311682E0;
    v7 = &v5[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_typeDisplayName];
    *v7 = 0x7265646C6F46;
    *(v7 + 1) = 0xE600000000000000;
    v8 = sub_231158E28();

    v9 = sub_231158E28();
    v10 = sub_231158E28();

    v15.receiver = v5;
    v15.super_class = type metadata accessor for WFAppEntityContextualAction();
    v14 = 0;
    v13 = 0;
    v11 = objc_msgSendSuper2(&v15, sel_initWithIdentifier_wfActionIdentifier_type_correspondingSystemActionType_associatedAppBundleIdentifier_resultFileOperation_alternate_filteringBehavior_parameters_displayString_title_subtitle_icon_accessoryIcon_actionShowsUserInterface_isReversible_, v8, 0, 1, 0, 0, 1, v13, 0, 0, v9, v10, 0, 0, 0, v14);

    return v11;
  }

  return result;
}

id sub_23105591C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v3 = [v0 identifier];
  v4 = sub_231158E58();
  v6 = v5;

  v7 = *&v1[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_entityTypeIdentifier];
  v8 = *&v1[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_entityTypeIdentifier + 8];
  v9 = objc_allocWithZone(MEMORY[0x277CC34B0]);

  v10 = v2;
  v16 = sub_231055DD0(v4, v6, v7, v8, v10);
  v11 = [v1 identifier];
  sub_231158E58();

  v12 = [v1 title];
  sub_231158E58();

  sub_231158DB8();
  sub_2311593E8();

  sub_231055E7C(v10, &selRef_contentType);
  if (v13)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_3(&selRef_setContentType_, "e:isReversible:)");
  }

  sub_231055E7C(v10, &selRef_userActivityType);
  if (v14)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_3(&selRef_setUserActivityType_, "e:isReversible:)");
  }

  return v16;
}

uint64_t sub_231055B54(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  result = sub_231159868();
  __break(1u);
  return result;
}

id sub_231055CE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFAppEntityContextualAction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_231055D8C()
{
  result = qword_27DD3BD78;
  if (!qword_27DD3BD78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD3BD78);
  }

  return result;
}

id sub_231055DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_231158E28();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_231158E28();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

uint64_t sub_231055E7C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231158E58();

  return v4;
}

void sub_231055EDC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_231158E28();

  [a3 *a4];
}

unint64_t sub_231055F5C()
{
  result = qword_27DD3BD80[0];
  if (!qword_27DD3BD80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD3BD80);
  }

  return result;
}

void OUTLINED_FUNCTION_0_3(SEL *a1@<X3>, uint64_t a2@<X8>)
{

  sub_231055EDC(0xD00000000000001BLL, a2 | 0x8000000000000000, v2, a1);
}

uint64_t EventNode.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventFilter(0, a3, a4, a4);

  swift_unknownObjectRetain();
  return sub_23105604C(a1, a2, v4);
}

uint64_t sub_23105604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_4();
  v6 = swift_allocObject();
  sub_2310562BC(a1, a2, a3);
  return v6;
}

uint64_t sub_23105609C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  result = sub_2310561C4();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 40) = v7;
    v8 = sub_231056638;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_231056128(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    v8 = sub_23105662C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_231042684(v4, v5);
  return sub_231056214(v8, v7);
}

uint64_t sub_2310561C4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_231042684(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_231056214(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_231046164(v5, v6);
}

uint64_t *sub_2310562BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v3[4] = 0;
  v3[5] = 0;
  v7 = *(v6 + 88);
  v3[2] = a3;
  v3[3] = v7;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v3;
  v9 = *(v7 + 32);
  v10 = *(v6 + 80);
  swift_unknownObjectRetain();

  v9(sub_231056644, v8, v10, v7);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2310563BC(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
    result = sub_2310561C4();
    if (result)
    {
      v5 = result;
      v6 = v4;
      (result)(a1);

      return sub_231046164(v5, v6);
    }
  }

  return result;
}

void *EventFilter.deinit()
{
  swift_unknownObjectRelease();
  sub_231046164(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t EventFilter.__deallocating_deinit()
{
  EventFilter.deinit();
  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t (*sub_2310564B8(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_231056268(v2);
  return sub_231056514;
}

void sub_231056514(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *sub_231056690@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2310566BC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_2310566BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE08, &qword_2311622C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057C44();
  sub_231159958();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v4;
  }

  sub_231057C98();
  sub_231159788();
  sub_231054A0C(0, &qword_27DD3BE18, 0x277CCAAC8);
  sub_231054A0C(0, &qword_27DD3BE20, 0x277D7A1D0);
  result = sub_231159308();
  v4 = result;
  if (result)
  {
    v6 = OUTLINED_FUNCTION_2_3();
    v7(v6);
    sub_231054A60(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2310568C8(void *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE28, &qword_2311622D0);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-1] - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057C44();
  sub_231159968();
  v10 = objc_opt_self();
  v19[0] = 0;
  v11 = [v10 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v19];
  v12 = v19[0];
  if (v11)
  {
    v13 = sub_2311579A8();
    v15 = v14;

    v19[0] = v13;
    v19[1] = v15;
    sub_231057CEC();
    sub_2311597A8();
    (*(v6 + 8))(v9, v4);
    return sub_231054A60(v13, v15);
  }

  else
  {
    v17 = v12;
    sub_231157938();

    swift_willThrow();
    return (*(v6 + 8))(v9, v4);
  }
}

BOOL sub_231056AC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_231159758();

  return v2 != 0;
}

BOOL sub_231056B18@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231056AC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_231056B88@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231056AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231056BCC(uint64_t a1)
{
  v2 = sub_231057C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231056C08(uint64_t a1)
{
  v2 = sub_231057C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CSSearchableItemAttributeSet.set(workflowDescriptorForDisplayRepresentation:)(void *a1)
{
  v2 = sub_2311577A8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = &type metadata for WFWorkflowDescriptorCodableProxy;
  v10[4] = sub_231056D84();
  v10[5] = sub_231056DD8();
  v10[0] = a1;
  v8 = a1;
  sub_231157798();
  sub_2311593D8();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_231056D84()
{
  result = qword_280CCB5A8;
  if (!qword_280CCB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5A8);
  }

  return result;
}

unint64_t sub_231056DD8()
{
  result = qword_280CCB5B0;
  if (!qword_280CCB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5B0);
  }

  return result;
}

void sub_231056E2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CSSearchableItemAttributeSet.set(workflowDescriptorForDisplayRepresentation:)(v4);
}

uint64_t CSSearchableItemAttributeSet.associateWithAppEntity(descriptor:)(void *a1)
{
  v2 = [a1 identifier];
  sub_231158E58();

  v3 = [a1 name];
  sub_231158E58();

  sub_231158DB8();
  sub_2311593E8();
}

void sub_231056FD0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CSSearchableItemAttributeSet.associateWithAppEntity(descriptor:)(v4);
}

double sub_231057038@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_23105707C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_23105707C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE30, &qword_2311622D8);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057D40();
  sub_231159958();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_231159778();
  v24 = v12;
  v26 = 1;
  v22 = sub_231159778();
  v23 = v13;
  v25 = 2;
  v14 = sub_231159778();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_2310572B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE38, &qword_2311622E0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231057D40();
  sub_231159968();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  OUTLINED_FUNCTION_5_2(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    OUTLINED_FUNCTION_5_2(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    OUTLINED_FUNCTION_5_2(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_231057410(uint64_t a1, uint64_t a2)
{
  v2 = sub_231159758();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23105745C(char a1)
{
  if (!a1)
  {
    return 0x6953657361726870;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD00000000000001DLL;
}

unint64_t sub_2310574EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231057410(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23105751C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23105745C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_231057550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231057410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231057584(uint64_t a1)
{
  v2 = sub_231057D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2310575C0(uint64_t a1)
{
  v2 = sub_231057D40();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_231057630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4 = sub_231158E28();

  return v4;
}

Swift::Void __swiftcall CSSearchableItemAttributeSet.setAppShortcutDisplayRepresentation(for:bundleIdentifier:associatedAppBundleIdentifier:)(Swift::String a1, Swift::String bundleIdentifier, Swift::String associatedAppBundleIdentifier)
{
  object = associatedAppBundleIdentifier._object;
  countAndFlagsBits = associatedAppBundleIdentifier._countAndFlagsBits;
  v5 = bundleIdentifier._object;
  v6 = bundleIdentifier._countAndFlagsBits;
  v7 = a1._object;
  v8 = a1._countAndFlagsBits;
  v9 = sub_2311577A8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[5] = &type metadata for WFAppShortcutCodableProxy;
  v16[6] = sub_2310577F4();
  v16[7] = sub_231057848();
  v15 = swift_allocObject();
  v16[2] = v15;
  v15[2] = v8;
  v15[3] = v7;
  v15[4] = v6;
  v15[5] = v5;
  v15[6] = countAndFlagsBits;
  v15[7] = object;

  sub_231157798();
  sub_2311593D8();
  (*(v11 + 8))(v14, v9);
}