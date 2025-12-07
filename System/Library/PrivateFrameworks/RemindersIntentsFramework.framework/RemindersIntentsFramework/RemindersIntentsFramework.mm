__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_261D57C58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261D57C78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_261D57CB4()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF3F38);
  v1 = __swift_project_value_buffer(v0, qword_27FEF3F38);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_261D57D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261D57DA0(uint64_t a1, id *a2)
{
  result = sub_261D86514();
  *a2 = 0;
  return result;
}

uint64_t sub_261D57E18(uint64_t a1, id *a2)
{
  v3 = sub_261D86524();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_261D57E98@<X0>(uint64_t *a1@<X8>)
{
  sub_261D86534();
  v2 = sub_261D86504();

  *a1 = v2;
  return result;
}

uint64_t sub_261D57EDC(void *a1, uint64_t *a2)
{
  v2 = sub_261D86534();
  v4 = v3;
  if (v2 == sub_261D86534() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_261D86B84();
  }

  return v7 & 1;
}

uint64_t sub_261D57F64@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_261D86504();

  *a2 = v3;
  return result;
}

uint64_t sub_261D57FAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261D86534();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261D57FD8(uint64_t a1)
{
  v2 = sub_261D59910(&qword_27FEF4030, &unk_261D879D0);
  v3 = sub_261D59910(&qword_27FEF4038, &unk_261D87978);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_261D58070()
{
  v0 = sub_261D86534();
  v1 = MEMORY[0x26671E070](v0);

  return v1;
}

uint64_t sub_261D580AC(uint64_t a1)
{
  sub_261D86534();
  sub_261D86574();
}

uint64_t sub_261D58100(uint64_t a1)
{
  sub_261D86534();
  sub_261D86BC4();
  sub_261D86574();
  v1 = sub_261D86BD4();

  return v1;
}

void sub_261D58174(void *a1, uint64_t a2, void (**a3)(uint64_t, id))
{
  if (qword_27FEF3F30 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF3F38);
  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v66 = v12;
    *v10 = 136315138;
    v3 = [v7 contactEventTrigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF8, &qword_261D878E0);
    v13 = sub_261D868D4();
    v15 = v14;

    v16 = sub_261D8464C(v13, v15, &v66);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_261D56000, v8, v9, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = v12;
    a3 = v11;
    MEMORY[0x26671EBF0](v17, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);
  }

  v18 = [v7 contactEventTrigger];
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = v18;
  v20 = [v18 triggerContact];
  if (!v20)
  {

LABEL_12:
    v27 = sub_261D86494();
    v28 = sub_261D866C4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261D56000, v27, v28, "Got nil contactEventTrigger. {result: .notRequired}", v29, 2u);
      MEMORY[0x26671EBF0](v29, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v19 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v19);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = sub_261D5C578(v7);
  if (!v22)
  {
    v30 = sub_261D86494();
    v31 = sub_261D866A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261D56000, v30, v31, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v32, 2u);
      MEMORY[0x26671EBF0](v32, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v33 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v33);

    v19 = v33;
    goto LABEL_15;
  }

  v23 = v22;
  if (([v22 supportsPersonTrigger] & 1) == 0)
  {
    v34 = sub_261D86494();
    v35 = sub_261D866C4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_261D56000, v34, v35, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v36, 2u);
      MEMORY[0x26671EBF0](v36, -1, -1);
    }

    v37 = [objc_opt_self() unsupportedForReason_];
    a3[2](a3, v37);

    v19 = v37;
    goto LABEL_15;
  }

  v24 = [v21 contactIdentifier];
  if (v24)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_261D877A0;
    *(v25 + 32) = v21;
    v26 = v21;
  }

  else
  {
    v38 = [v21 alternatives];
    if (v38)
    {
      v39 = v38;
      sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v25 = sub_261D865D4();
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }
  }

  if (v25 >> 62)
  {
    v40 = sub_261D86954();
    if (v40)
    {
      goto LABEL_27;
    }

LABEL_35:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v40 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_35;
  }

LABEL_27:
  v64 = a3;
  v66 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if (v40 < 0)
  {
    __break(1u);
LABEL_59:
    v63 = MEMORY[0x26671E4C0](0, v25);
LABEL_55:
    v53 = v63;

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v54 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger_];
    goto LABEL_56;
  }

  v41 = 0;
  do
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x26671E4C0](v41, v25);
    }

    else
    {
      v42 = *(v25 + 8 * v41 + 32);
    }

    v43 = v42;
    ++v41;
    [objc_allocWithZone(MEMORY[0x277CD3B08]) initWithTriggerContact_];

    sub_261D86A14();
    v3 = v66[2];
    sub_261D86A44();
    sub_261D86A54();
    sub_261D86A24();
  }

  while (v40 != v41);

  v25 = v66;
  a3 = v64;
LABEL_36:
  if (v25 >> 62)
  {
    v44 = sub_261D86954();
    if (v44 >= 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v44 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= 2)
    {
LABEL_38:

      v45 = sub_261D86494();
      v46 = sub_261D866C4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = v65;
        *v47 = 136315138;
        v48 = sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
        v49 = MEMORY[0x26671E0C0](v25, v48);
        v51 = sub_261D8464C(v49, v50, &v66);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_261D56000, v45, v46, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x26671EBF0](v65, -1, -1);
        MEMORY[0x26671EBF0](v47, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
      v53 = sub_261D865C4();

      v54 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate_];
LABEL_56:
      v62 = v54;

LABEL_57:
      a3[2](a3, v62);

LABEL_15:
      return;
    }
  }

  if (v44 != 1)
  {

    v59 = sub_261D86494();
    v60 = sub_261D866C4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_261D56000, v59, v60, "Got 0 triggersToChoose {result: .unsupported}", v61, 2u);
      MEMORY[0x26671EBF0](v61, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v62 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_57;
  }

  v55 = sub_261D86494();
  v56 = sub_261D866C4();

  if (!os_log_type_enabled(v55, v56))
  {

    v57 = v25 & 0xC000000000000001;
    goto LABEL_52;
  }

  v3 = v23;
  v23 = v21;
  v21 = a3;
  v40 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v40 = 138412290;
  v57 = v25 & 0xC000000000000001;
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v25 + 32); ; i = MEMORY[0x26671E4C0](0, v25))
    {
      *(v40 + 4) = i;
      *a3 = i;
      _os_log_impl(&dword_261D56000, v55, v56, "Got 1 triggersToChoose {result: .success(%@)}", v40, 0xCu);
      sub_261D5968C(a3);
      MEMORY[0x26671EBF0](a3, -1, -1);
      MEMORY[0x26671EBF0](v40, -1, -1);

      a3 = v21;
      v21 = v23;
      v23 = v3;
LABEL_52:
      if (v57)
      {
        break;
      }

      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v63 = *(v25 + 32);
        goto LABEL_55;
      }

      __break(1u);
LABEL_61:
      ;
    }

    goto LABEL_59;
  }

  __break(1u);
}

void sub_261D58BA4(void *a1, uint64_t a2, void (**a3)(uint64_t, id))
{
  if (qword_27FEF3F30 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF3F38);
  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v69 = v12;
    *v10 = 136315138;
    v3 = [v7 contactEventTrigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF8, &qword_261D878E0);
    v13 = sub_261D868D4();
    v15 = v14;

    v16 = sub_261D8464C(v13, v15, &v69);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_261D56000, v8, v9, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = v12;
    a3 = v11;
    MEMORY[0x26671EBF0](v17, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);
  }

  v18 = [v7 contactEventTrigger];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v18 triggerContact];
  if (!v20)
  {

LABEL_17:
    v34 = sub_261D86494();
    v35 = sub_261D866C4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_261D56000, v34, v35, "Got nil contactEventTrigger. {result: .notRequired}", v36, 2u);
      MEMORY[0x26671EBF0](v36, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v19 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v19);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v7 targetTask];
  if (!v22 || (v23 = v22, v24 = sub_261D867F4(), v23, !v24) || (v25 = [v24 account], v26 = objc_msgSend(v25, sel_capabilities), v25, v24, !v26))
  {
    v30 = sub_261D86494();
    v31 = sub_261D866A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261D56000, v30, v31, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v32, 2u);
      MEMORY[0x26671EBF0](v32, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v33 = [swift_getObjCClassFromMetadata() notRequired];
    a3[2](a3, v33);

    v19 = v33;
    goto LABEL_20;
  }

  if (![v26 supportsPersonTrigger])
  {
    v37 = sub_261D86494();
    v38 = sub_261D866C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_261D56000, v37, v38, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v39, 2u);
      MEMORY[0x26671EBF0](v39, -1, -1);
    }

    v40 = [objc_opt_self() unsupportedForReason_];
    a3[2](a3, v40);

    v19 = v40;
    goto LABEL_20;
  }

  v27 = [v21 contactIdentifier];
  if (v27)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_261D877A0;
    *(v28 + 32) = v21;
    v29 = v21;
  }

  else
  {
    v41 = [v21 alternatives];
    if (v41)
    {
      v42 = v41;
      sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v28 = sub_261D865D4();
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }
  }

  if (v28 >> 62)
  {
    v43 = sub_261D86954();
    if (v43)
    {
      goto LABEL_29;
    }

LABEL_37:

    v28 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v43 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
    goto LABEL_37;
  }

LABEL_29:
  v67 = a3;
  v69 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if (v43 < 0)
  {
    __break(1u);
LABEL_61:
    v66 = MEMORY[0x26671E4C0](0, v28);
LABEL_57:
    v56 = v66;

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v57 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger_];
    goto LABEL_58;
  }

  v44 = 0;
  do
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x26671E4C0](v44, v28);
    }

    else
    {
      v45 = *(v28 + 8 * v44 + 32);
    }

    v46 = v45;
    ++v44;
    [objc_allocWithZone(MEMORY[0x277CD3B08]) initWithTriggerContact_];

    sub_261D86A14();
    v3 = v69[2];
    sub_261D86A44();
    sub_261D86A54();
    sub_261D86A24();
  }

  while (v43 != v44);

  v28 = v69;
  a3 = v67;
LABEL_38:
  if (v28 >> 62)
  {
    v47 = sub_261D86954();
    if (v47 >= 2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v47 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47 >= 2)
    {
LABEL_40:

      v48 = sub_261D86494();
      v49 = sub_261D866C4();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v68;
        *v50 = 136315138;
        v51 = sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
        v52 = MEMORY[0x26671E0C0](v28, v51);
        v54 = sub_261D8464C(v52, v53, &v69);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_261D56000, v48, v49, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x26671EBF0](v68, -1, -1);
        MEMORY[0x26671EBF0](v50, -1, -1);
      }

      sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
      v56 = sub_261D865C4();

      v57 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate_];
LABEL_58:
      v65 = v57;

LABEL_59:
      a3[2](a3, v65);

LABEL_20:
      return;
    }
  }

  if (v47 != 1)
  {

    v62 = sub_261D86494();
    v63 = sub_261D866C4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_261D56000, v62, v63, "Got 0 triggersToChoose {result: .unsupported}", v64, 2u);
      MEMORY[0x26671EBF0](v64, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v65 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_59;
  }

  v58 = sub_261D86494();
  v59 = sub_261D866C4();

  if (!os_log_type_enabled(v58, v59))
  {

    v60 = v28 & 0xC000000000000001;
    goto LABEL_54;
  }

  v3 = v26;
  v26 = v21;
  v21 = a3;
  v43 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v43 = 138412290;
  v60 = v28 & 0xC000000000000001;
  if ((v28 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v28 + 32); ; i = MEMORY[0x26671E4C0](0, v28))
    {
      *(v43 + 4) = i;
      *a3 = i;
      _os_log_impl(&dword_261D56000, v58, v59, "Got 1 triggersToChoose {result: .success(%@)}", v43, 0xCu);
      sub_261D5968C(a3);
      MEMORY[0x26671EBF0](a3, -1, -1);
      MEMORY[0x26671EBF0](v43, -1, -1);

      a3 = v21;
      v21 = v26;
      v26 = v3;
LABEL_54:
      if (v60)
      {
        break;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v66 = *(v28 + 32);
        goto LABEL_57;
      }

      __break(1u);
LABEL_63:
      ;
    }

    goto LABEL_61;
  }

  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_261D5968C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_261D597EC(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_261D5985C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_261D59910(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMSmartListType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261D5998C()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF40A0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF40A0);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D59A54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_261D86214();
  v6 = sub_261D861F4();
  v54 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42B0, qword_261D87C80);
  sub_261D85D64();
  sub_261D648A8();
  sub_261D64648(&unk_27FEF42C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v7 = sub_261D865A4();

  v8 = v7 >> 62;
  if (v7 >> 62)
  {
    v9 = sub_261D86954();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  if (v6 >> 62)
  {
    goto LABEL_55;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_56:

    if (qword_27FEF3F50 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_62;
  }

  while (1)
  {
LABEL_5:
    if (v8)
    {
      v10 = sub_261D86954();
      if (!v9)
      {
        break;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26671E4C0](0, v7);
LABEL_13:
      v12 = v11;

      sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v13 = v12;
      v14 = sub_261D86654();
      if (qword_27FEF3F50 != -1)
      {
        swift_once();
      }

      v15 = sub_261D864A4();
      __swift_project_value_buffer(v15, qword_27FEF40A0);
      v16 = v13;
      v17 = v14;
      v18 = sub_261D86494();
      v19 = sub_261D866C4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        v22 = [v16 objectID];
        *(v20 + 4) = v22;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v22;
        v21[1] = v17;
        v23 = v17;
        _os_log_impl(&dword_261D56000, v18, v19, "Got one REMList(%@) matches the name {result: .success(%@)}", v20, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
        swift_arrayDestroy();
        MEMORY[0x26671EBF0](v21, -1, -1);
        MEMORY[0x26671EBF0](v20, -1, -1);
      }

LABEL_28:

      sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
      v34 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];

LABEL_51:
      goto LABEL_52;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v7 + 32);
      goto LABEL_13;
    }

    __break(1u);
LABEL_55:
    if (!sub_261D86954())
    {
      goto LABEL_56;
    }
  }

  if (v6 >> 62)
  {
    if (sub_261D86954() != 1)
    {
      goto LABEL_34;
    }

    if (sub_261D86954())
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
LABEL_34:

    v35 = MEMORY[0x277D84F90];
    if (v10)
    {
      v54 = MEMORY[0x277D84F90];
      sub_261D86A34();
      if (v10 < 0)
      {
        __break(1u);
        return;
      }

      sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v36 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26671E4C0](v36, v7);
        }

        else
        {
          v37 = *(v7 + 8 * v36 + 32);
        }

        ++v36;
        sub_261D86654();
        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      while (v10 != v36);
      v35 = v54;
    }

    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v38 = sub_261D864A4();
    __swift_project_value_buffer(v38, qword_27FEF40A0);

    v39 = sub_261D86494();
    v40 = sub_261D866C4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 134218242;
      if (v8)
      {
        v43 = sub_261D86954();
      }

      else
      {
        v43 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v41 + 4) = v43;

      *(v41 + 12) = 2080;
      v44 = sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v45 = MEMORY[0x26671E0C0](v35, v44);
      v47 = sub_261D8464C(v45, v46, &v54);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_261D56000, v39, v40, "Got %ld REMList matches the name {result: .disambiguation(%s)}", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x26671EBF0](v42, -1, -1);
      MEMORY[0x26671EBF0](v41, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v16 = sub_261D865C4();

    v34 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate_];
    goto LABEL_51;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_34;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

LABEL_21:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26671E4C0](0, v6);
    goto LABEL_24;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v6 + 32);
LABEL_24:
    v25 = v24;

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v26 = v25;
    v27 = sub_261D86634();
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v28 = sub_261D864A4();
    __swift_project_value_buffer(v28, qword_27FEF40A0);
    v16 = v26;
    v17 = v27;
    v18 = sub_261D86494();
    v29 = sub_261D866C4();

    if (os_log_type_enabled(v18, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      v32 = [v16 objectID];
      *(v30 + 4) = v32;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v17;
      *v31 = v32;
      v31[1] = v17;
      v33 = v17;
      _os_log_impl(&dword_261D56000, v18, v29, "Found REMSmartList matching the name {objectID: %@, result: .success(%@)}", v30, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v31, -1, -1);
      MEMORY[0x26671EBF0](v30, -1, -1);
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_57:
  v50 = sub_261D864A4();
  __swift_project_value_buffer(v50, qword_27FEF40A0);
  v51 = sub_261D86494();
  v52 = sub_261D866C4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_261D56000, v51, v52, "No REMList or REMSmartList matches the name, prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v53, 2u);
    MEMORY[0x26671EBF0](v53, -1, -1);
  }

  v34 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:a2 forReason:1];
LABEL_52:
  v49 = v34;
  a3();
}

void sub_261D5A428(id *a1)
{
  v1 = [*a1 remObjectID];
  v2 = [v1 uuid];

  sub_261D85D54();
}

void sub_261D5A4A0(unint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, void (*a6)(void))
{
  v11 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_31:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v62 = sub_261D864A4();
    __swift_project_value_buffer(v62, qword_27FEF40A0);

    v63 = sub_261D86494();
    v64 = sub_261D866C4();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v78 = v83;
      *v65 = 136315650;
      v66 = sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v67 = MEMORY[0x26671E0C0](a2, v66);
      v69 = sub_261D8464C(v67, v68, &v83);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = MEMORY[0x277D837D0];
      v71 = MEMORY[0x26671E0C0](a3, MEMORY[0x277D837D0]);
      v73 = sub_261D8464C(v71, v72, &v83);

      *(v65 + 14) = v73;
      *(v65 + 22) = 2080;
      v74 = MEMORY[0x26671E0C0](a4, v70);
      v76 = sub_261D8464C(v74, v75, &v83);

      *(v65 + 24) = v76;
      _os_log_impl(&dword_261D56000, v63, v64, "No list shared with the specified .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguateDueToNoDefaultList}", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v78, -1, -1);
      MEMORY[0x26671EBF0](v65, -1, -1);
    }

    v33 = sub_261D5AE54();
    goto LABEL_36;
  }

  if (!sub_261D86954())
  {
    goto LABEL_31;
  }

  v12 = sub_261D86954();
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  v81 = a4;
  if (!v12)
  {
LABEL_20:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v39 = sub_261D864A4();
    __swift_project_value_buffer(v39, qword_27FEF40A0);

    v40 = sub_261D86494();
    v41 = sub_261D866C4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v83 = v43;
      *v42 = 134219010;
      v80 = a6;
      if (v11)
      {
        v44 = sub_261D86954();
      }

      else
      {
        v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v42 + 4) = v44;

      *(v42 + 12) = 2080;
      v45 = sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v46 = MEMORY[0x26671E0C0](a2, v45);
      v48 = sub_261D8464C(v46, v47, &v83);

      *(v42 + 14) = v48;
      *(v42 + 22) = 2080;
      v49 = MEMORY[0x277D837D0];
      v50 = MEMORY[0x26671E0C0](a3, MEMORY[0x277D837D0]);
      v52 = sub_261D8464C(v50, v51, &v83);

      *(v42 + 24) = v52;
      *(v42 + 32) = 2080;
      v53 = MEMORY[0x26671E0C0](v81, v49);
      v55 = sub_261D8464C(v53, v54, &v83);

      *(v42 + 34) = v55;
      *(v42 + 42) = 2080;
      v56 = sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v57 = MEMORY[0x26671E0C0](v13, v56);
      v59 = sub_261D8464C(v57, v58, &v83);

      *(v42 + 44) = v59;
      _os_log_impl(&dword_261D56000, v40, v41, "Got %ld REMList matching .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguation(%s)}", v42, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v43, -1, -1);
      MEMORY[0x26671EBF0](v42, -1, -1);

      a6 = v80;
    }

    else
    {
    }

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v61 = sub_261D865C4();

    v33 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate_];

    goto LABEL_36;
  }

  if (v12 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26671E4C0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v14 = *(a1 + 32);
    }

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v12 = sub_261D86654();
    if (qword_27FEF3F50 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

  v83 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if ((v12 & 0x8000000000000000) == 0)
  {
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v34 = 0;
      do
      {
        v35 = v34 + 1;
        MEMORY[0x26671E4C0]();
        sub_261D86654();
        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        v34 = v35;
      }

      while (v12 != v35);
    }

    else
    {
      v36 = (a1 + 32);
      do
      {
        v37 = *v36++;
        v38 = v37;
        sub_261D86654();
        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        --v12;
      }

      while (v12);
    }

    v13 = v83;
    goto LABEL_20;
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_9:
  v15 = sub_261D864A4();
  __swift_project_value_buffer(v15, qword_27FEF40A0);

  v16 = v12;
  v17 = sub_261D86494();
  v18 = sub_261D866C4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v83 = v77;
    *v19 = 136315906;
    v21 = sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
    v22 = MEMORY[0x26671E0C0](a2, v21);
    v79 = a6;
    v24 = sub_261D8464C(v22, v23, &v83);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = MEMORY[0x277D837D0];
    v26 = MEMORY[0x26671E0C0](a3, MEMORY[0x277D837D0]);
    v28 = sub_261D8464C(v26, v27, &v83);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    v29 = MEMORY[0x26671E0C0](a4, v25);
    v31 = sub_261D8464C(v29, v30, &v83);
    a6 = v79;

    *(v19 + 24) = v31;
    *(v19 + 32) = 2112;
    *(v19 + 34) = v16;
    *v20 = v16;
    v32 = v16;
    _os_log_impl(&dword_261D56000, v17, v18, "Found exactly 1 list matching .targetTaskListMembers, using that. {targetTaskListMembers: %s, emails: %s, phones: %s, result: .success(%@)}", v19, 0x2Au);
    sub_261D646F8(v20, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v77, -1, -1);
    MEMORY[0x26671EBF0](v19, -1, -1);
  }

  sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
  v33 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];

LABEL_36:
  v82 = v33;
  a6();
}

id sub_261D5AE54()
{
  v62[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v62 - v6 + 32;
  v8 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
  v62[0] = 0;
  v9 = [v8 fetchEligibleDefaultListsWithError_];
  v10 = v62[0];
  if (!v9)
  {
    v17 = v62[0];
    v18 = sub_261D85C64();

    swift_willThrow();
    goto LABEL_42;
  }

  v11 = v9;
  v61 = v8;
  sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
  v12 = sub_261D865D4();
  v13 = v10;

  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_13:

    v12 = MEMORY[0x277D84F90];
LABEL_14:
    if (v12 >> 62)
    {
      if (sub_261D86954())
      {
        v19 = sub_261D86954();
LABEL_16:
        if (v19 != 1)
        {
          if (qword_27FEF3F50 != -1)
          {
            swift_once();
          }

          v26 = sub_261D864A4();
          __swift_project_value_buffer(v26, qword_27FEF40A0);

          v27 = sub_261D86494();
          v28 = sub_261D866C4();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 134217984;
            if (v12 >> 62)
            {
              v30 = sub_261D86954();
            }

            else
            {
              v30 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v29 + 4) = v30;

            _os_log_impl(&dword_261D56000, v27, v28, "Disambiguating with some lists {count: %ld}", v29, 0xCu);
            MEMORY[0x26671EBF0](v29, -1, -1);
          }

          else
          {
          }

          sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
          v32 = sub_261D865C4();

          v33 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate_];

          return v33;
        }

        if (qword_27FEF3F50 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    sub_261D86024();
    v34 = sub_261D86564();

    v35 = sub_261D85C44();
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    v37(v7, 1, 1, v35);
    v37(v3, 1, 1, v35);
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v38 = sub_261D865C4();
    v39 = *(v36 + 48);
    v40 = 0;
    if (v39(v7, 1, v35) != 1)
    {
      v40 = sub_261D85BD4();
      (*(v36 + 8))(v7, v35);
    }

    if (v39(v3, 1, v35) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_261D85BD4();
      (*(v36 + 8))(v3, v35);
    }

    v12 = [objc_allocWithZone(MEMORY[0x277CD4228]) initWithTitle:v34 tasks:v38 groupName:0 createdDateComponents:v40 modifiedDateComponents:v41 identifier:0];

    v62[0] = 0;
    v42 = [v61 fetchDefaultAccountWithError_];
    v3 = v42;
    if (!v62[0])
    {
      if (!v42)
      {
        if (qword_27FEF3F50 != -1)
        {
          swift_once();
        }

        v57 = sub_261D864A4();
        __swift_project_value_buffer(v57, qword_27FEF40A0);
        v58 = sub_261D86494();
        v59 = sub_261D866A4();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_261D56000, v58, v59, "No lists found in fetchEligibleDefaultLists and no default account available. Responding with .success so that we can fail the user in handle() with .failureRequiringAppLaunch. {result: .success}", v60, 2u);
          MEMORY[0x26671EBF0](v60, -1, -1);
        }

        sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
        v33 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];

        return v33;
      }

      if (qword_27FEF3F50 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_63;
    }

    v18 = v62[0];

    swift_willThrow();
LABEL_42:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v43 = sub_261D864A4();
    __swift_project_value_buffer(v43, qword_27FEF40A0);
    v44 = v18;
    v45 = sub_261D86494();
    v46 = sub_261D866A4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = sub_261D86BA4();
      v51 = sub_261D8464C(v49, v50, v62);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_261D56000, v45, v46, "Error trying to retrieve eligible default lists {error: %s}", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x26671EBF0](v48, -1, -1);
      MEMORY[0x26671EBF0](v47, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    v25 = [swift_getObjCClassFromMetadata() unsupported];

    return v25;
  }

  v14 = sub_261D86954();
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_4:
  v62[0] = MEMORY[0x277D84F90];
  sub_261D86A34();
  if ((v14 & 0x8000000000000000) == 0)
  {
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26671E4C0](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      ++v15;
      sub_261D86654();
      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
    }

    while (v14 != v15);

    v12 = v62[0];
    goto LABEL_14;
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_18:
  v20 = sub_261D864A4();
  __swift_project_value_buffer(v20, qword_27FEF40A0);
  v21 = sub_261D86494();
  v22 = sub_261D866C4();
  if (os_log_type_enabled(v21, v22))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_261D56000, v21, v22, "Got exactly 1 list from fetchEligibleDefaultLists, using that. {result: .confirmationRequired}", v3, 2u);
    MEMORY[0x26671EBF0](v3, -1, -1);
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x26671E4C0](0, v12);
    goto LABEL_23;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v12 + 32);
LABEL_23:
    v24 = v23;

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    v25 = [swift_getObjCClassFromMetadata() confirmationRequiredWithTaskListToConfirm_];

    return v25;
  }

  __break(1u);
LABEL_63:
  swift_once();
LABEL_50:
  v53 = sub_261D864A4();
  __swift_project_value_buffer(v53, qword_27FEF40A0);
  v54 = sub_261D86494();
  v55 = sub_261D866C4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_261D56000, v54, v55, "No lists found in fetchEligibleDefaultLists(), prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v56, 2u);
    MEMORY[0x26671EBF0](v56, -1, -1);
  }

  v33 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:v12 forReason:1];
  return v33;
}

void sub_261D5B910(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF40A0);
  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v24 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = [v7 taskTitles];
    if (v12)
    {
      v13 = v12;
      sub_261D597EC(0, &unk_27FEF4190, 0x277CD4188);
      sub_261D865D4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4188, &unk_261D87C00);
    v15 = sub_261D868D4();
    v17 = v16;

    v18 = sub_261D8464C(v15, v17, &v25);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_261D56000, v8, v9, "SiriKit asked for resolving task titles {taskTitles: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26671EBF0](v11, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);

    a2 = v24;
  }

  else
  {
  }

  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4170, &qword_261D87BE8);
  swift_allocObject();
  sub_261D86464();
  v19 = sub_261D863F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C0, &qword_261D87BF0);
  sub_261D86434();

  *(swift_allocObject() + 16) = v7;
  v20 = v7;
  v21 = sub_261D863F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4180, &qword_261D87BF8);
  sub_261D86434();

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  v23 = sub_261D863F4();
  sub_261D86434();
}

uint64_t sub_261D5BCBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41A8, &unk_261D87C10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (*a1)
  {
    sub_261D86704();
    v10 = sub_261D866F4();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v10 = sub_261D866F4();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  sub_261D64690(v9, v6, &qword_27FEF41A8, &unk_261D87C10);
  sub_261D866F4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_261D646F8(v9, &qword_27FEF41A8, &unk_261D87C10);
    result = sub_261D646F8(v6, &qword_27FEF41A8, &unk_261D87C10);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v13 = sub_261D866E4();
    v15 = v14;
    sub_261D646F8(v9, &qword_27FEF41A8, &unk_261D87C10);
    *a2 = v13;
    a2[1] = v15;
    return (*(v11 + 8))(v6, v10);
  }

  return result;
}

id sub_261D5BEF0@<X0>(id a1@<X1>, uint64_t *a2@<X0>, char *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = [a1 taskTitles];
  v7 = MEMORY[0x277D84F90];
  v44 = a3;
  if (!v6)
  {
    a3 = MEMORY[0x277D84F90];
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v8 = v6;
  sub_261D597EC(0, &unk_27FEF4190, 0x277CD4188);
  v9 = sub_261D865D4();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_21:

    a3 = MEMORY[0x277D84F90];
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v10 = sub_261D86954();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_4:
  sub_261D803FC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v42 = v5;
  v43 = v4;
  v11 = 0;
  a3 = v7;
  v12 = v9;
  v45 = v9 & 0xC000000000000001;
  v13 = v9;
  v14 = v10;
  do
  {
    if (v45)
    {
      v15 = MEMORY[0x26671E4C0](v11, v12);
    }

    else
    {
      v15 = *(v12 + 8 * v11 + 32);
    }

    v16 = v15;
    v17 = [v15 spokenPhrase];
    v18 = sub_261D86534();
    v20 = v19;

    v22 = *(a3 + 2);
    v21 = *(a3 + 3);
    if (v22 >= v21 >> 1)
    {
      sub_261D803FC((v21 > 1), v22 + 1, 1);
    }

    ++v11;
    *(a3 + 2) = v22 + 1;
    v23 = &a3[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    v12 = v13;
  }

  while (v14 != v11);

  v7 = MEMORY[0x277D84F90];
  v5 = v42;
  v4 = v43;
  if (v42)
  {
LABEL_15:
    if (*(a3 + 2))
    {
LABEL_23:
      if (qword_27FEF3F50 != -1)
      {
        swift_once();
      }

      v27 = sub_261D864A4();
      __swift_project_value_buffer(v27, qword_27FEF40A0);
      v28 = sub_261D86494();
      v29 = sub_261D866C4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_261D56000, v28, v29, "Resolved taskTitles {result: .success}", v30, 2u);
        MEMORY[0x26671EBF0](v30, -1, -1);
      }

      v31 = *(a3 + 2);
      if (v31)
      {
        v46 = v7;
        sub_261D86A34();
        v32 = objc_opt_self();
        v33 = a3 + 40;
        do
        {

          v34 = sub_261D86564();
          v35 = [v32 successWithResolvedString_];

          sub_261D86A14();
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
          v33 += 16;
          --v31;
        }

        while (v31);

        v37 = v46;
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      goto LABEL_37;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_17:
      v25 = *(a3 + 2);
      v24 = *(a3 + 3);
      if (v25 >= v24 >> 1)
      {
        a3 = sub_261D842B4((v24 > 1), v25 + 1, 1, a3);
      }

      *(a3 + 2) = v25 + 1;
      v26 = &a3[16 * v25];
      *(v26 + 4) = v4;
      *(v26 + 5) = v5;
      goto LABEL_23;
    }

LABEL_39:
    a3 = sub_261D842B4(0, 1, 1, a3);
    goto LABEL_17;
  }

LABEL_22:
  if (*(a3 + 2))
  {
    goto LABEL_23;
  }

  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v38 = sub_261D864A4();
  __swift_project_value_buffer(v38, qword_27FEF40A0);
  v39 = sub_261D86494();
  v40 = sub_261D866C4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_261D56000, v39, v40, "userTitles has 0 elements {result: .needsValue}", v41, 2u);
    MEMORY[0x26671EBF0](v41, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_261D877A0;
  sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
  result = [swift_getObjCClassFromMetadata() needsValue];
  *(v37 + 32) = result;
LABEL_37:
  *v44 = v37;
  return result;
}

void sub_261D5C4CC(uint64_t a1, uint64_t a2)
{
  sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
  v3 = sub_261D865C4();
  (*(a2 + 16))(a2, v3);
}

id sub_261D5C578(void *a1)
{
  v2 = v1;
  v3 = [a1 targetTaskList];
  if (!v3 || (v4 = v3, v5 = sub_261D86624(), v4, !v5))
  {
    v6 = sub_261D5F63C(*(v2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store));
    if (!v6)
    {
      return 0;
    }

LABEL_6:
    v7 = [v6 capabilities];

    return v7;
  }

  v6 = [v5 account];

  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

void sub_261D5C640(void *a1, void (*a2)(void))
{
  if (*a1)
  {
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v3 = sub_261D864A4();
    __swift_project_value_buffer(v3, qword_27FEF40A0);
    v4 = sub_261D86494();
    v5 = sub_261D866C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261D56000, v4, v5, "Got userActivity {result: .success(.currentActivity)", v6, 2u);
      MEMORY[0x26671EBF0](v6, -1, -1);
    }

    v7 = [objc_opt_self() successWithResolvedTaskReference_];
  }

  else
  {
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v8 = sub_261D864A4();
    __swift_project_value_buffer(v8, qword_27FEF40A0);
    v9 = sub_261D86494();
    v10 = sub_261D866C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261D56000, v9, v10, "Got nil userActivity {result: .notRequired}", v11, 2u);
      MEMORY[0x26671EBF0](v11, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
    v7 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v12 = v7;
  a2();
}

void sub_261D5C844(void *a1, void (*a2)(void))
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF40A0);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_261D86BA4();
    v12 = sub_261D8464C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_261D56000, v6, v7, "Got error userActivity. {result: .notRequired, error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
  v13 = [swift_getObjCClassFromMetadata() notRequired];
  a2();
}

void sub_261D5CA30(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_261D5CAD8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_261D5CB6C(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v2;
    v5 = v2;
  }
}

uint64_t sub_261D5CBD0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = sub_261D866F4();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  result = swift_projectBox();
  if (v14)
  {
    v16 = result;
    v28 = v4;
    v17 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v18 = v14;
    v19 = [v17 initWithUserActivity_];
    v20 = 1;
    swift_beginAccess();
    v21 = *(a2 + 16);
    *(a2 + 16) = v19;

    v22 = [v18 webpageURL];
    if (v22)
    {
      v23 = v22;
      sub_261D85C84();

      v20 = 0;
    }

    v24 = sub_261D85C94();
    (*(*(v24 - 8) + 56))(v13, v20, 1, v24);
    swift_beginAccess();
    sub_261D64758(v13, v16);
    sub_261D86704();
    v25 = sub_261D866D4();
    v27 = v26;

    (*(v8 + 8))(v10, v29);
    swift_beginAccess();
    *(a4 + 16) = v25;
    *(a4 + 24) = v27;
  }

  return result;
}

void sub_261D5CE48(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void (*a16)(id))
{
  v81[1] = *MEMORY[0x277D85DE8];
  v63 = swift_projectBox();
  v18 = swift_projectBox();
  v19 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
  v20 = objc_allocWithZone(MEMORY[0x277D447D8]);
  a3;
  v21 = [v20 initWithStore_];
  sub_261D85E64();
  v22 = v21;
  sub_261D85F34();
  v69 = v81[0];
  v70 = 0;
  v71 = a5;
  v72 = a6;
  v73 = v63;
  v74 = a8;
  v75 = a9 + 16;
  v76 = a10 + 16;
  v77 = v18;
  v78 = a12 + 16;
  v79 = a13 + 16;
  v80 = a14;
  v23 = sub_261D80E10(sub_261D64600, v68, a4);
  v81[0] = 0;
  v24 = [v22 saveSynchronouslyWithError_];
  v25 = v81[0];
  if (v24)
  {
    sub_261D85EB4();
    v26 = v25;
    sub_261D85EA4();
    sub_261D85E94();

    if (v23 >> 62)
    {
      v27 = sub_261D86954();
      v62 = v22;
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v62 = v22;
      if (v27)
      {
LABEL_4:
        v81[0] = MEMORY[0x277D84F90];
        sub_261D86A34();
        if (v27 < 0)
        {
          __break(1u);
        }

        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        v28 = 0;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26671E4C0](v28, v23);
          }

          else
          {
            v29 = *(v23 + 8 * v28 + 32);
          }

          ++v28;
          sub_261D86804();
          sub_261D86A14();
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
        }

        while (v27 != v28);

        v42 = v81[0];
        goto LABEL_18;
      }
    }

    v42 = MEMORY[0x277D84F90];
LABEL_18:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v43 = sub_261D864A4();
    __swift_project_value_buffer(v43, qword_27FEF40A0);

    v44 = sub_261D86494();
    v45 = sub_261D866C4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v81[0] = v47;
      *v46 = 136315138;
      v48 = sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
      v49 = MEMORY[0x26671E0C0](v42, v48);
      v51 = sub_261D8464C(v49, v50, v81);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_261D56000, v44, v45, "insertedTasks: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x26671EBF0](v47, -1, -1);
      MEMORY[0x26671EBF0](v46, -1, -1);
    }

    v52 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:3 userActivity:0];
    [v52 setModifiedTaskList_];
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v53 = sub_261D865C4();

    [v52 setAddedTasks_];

    v81[0] = a14;
    v54 = sub_261D86854();
    sub_261D597EC(0, &qword_27FEF41F0, 0x277CD3A18);
    v55 = sub_261D860F4();

    [v52 setWarnings_];
    v56 = v52;
    v57 = sub_261D86494();
    v58 = sub_261D866C4();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v56;
      v61 = v56;
      _os_log_impl(&dword_261D56000, v57, v58, "successfully handled intent {result: %@}", v59, 0xCu);
      sub_261D646F8(v60, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v60, -1, -1);
      MEMORY[0x26671EBF0](v59, -1, -1);
    }

    a16(v56);

    return;
  }

  v30 = v81[0];

  v31 = sub_261D85C64();

  swift_willThrow();
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v32 = sub_261D864A4();
  __swift_project_value_buffer(v32, qword_27FEF40A0);
  v33 = v31;
  v34 = sub_261D86494();
  v35 = sub_261D866A4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v81[0] = v37;
    *v36 = 136446210;
    swift_getErrorValue();
    v38 = sub_261D86BB4();
    v40 = sub_261D8464C(v38, v39, v81);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_261D56000, v34, v35, "Error saving saveRequest {error: %{public}s}", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x26671EBF0](v37, -1, -1);
    MEMORY[0x26671EBF0](v36, -1, -1);
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
  (a16)();
}

void sub_261D5D5F0(void **a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void (*a5)(void, void)@<X5>, void (*a6)(char *, uint64_t)@<X6>, void **a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t *a11, id *a12, id a13)
{
  v206 = a7;
  v196 = a6;
  v203 = a5;
  v211 = a8;
  v201 = sub_261D85D24();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v199 = v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
  MEMORY[0x28223BE20](v18 - 8);
  v198 = v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v207 = (v190 - v21);
  v210 = sub_261D85C94();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v216 = (v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v208 = v190 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  MEMORY[0x28223BE20](v25 - 8);
  v195 = v190 - v26;
  v205 = sub_261D86074();
  v202 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v191 = v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v192 = v190 - v29;
  MEMORY[0x28223BE20](v30);
  v197 = v190 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  MEMORY[0x28223BE20](v32 - 8);
  v194 = v190 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v190 - v35;
  v37 = sub_261D85C44();
  v38 = *(v37 - 8);
  v214 = v37;
  v215 = v38;
  MEMORY[0x28223BE20](v37);
  v193 = v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v212 = (v190 - v41);
  v42 = *a1;
  v43 = sub_261D85E54();
  sub_261D86014();
  sub_261D64648(&unk_27FEF4240, MEMORY[0x277D45CF0], MEMORY[0x277D45CE8]);
  v44 = v43;
  v45 = a2;
  v213 = v44;
  sub_261D86034();
  v46 = v218[3];
  v47 = [v42 spokenPhrase];
  if (!v47)
  {
    sub_261D86534();
    v47 = sub_261D86504();
  }

  v48 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  sub_261D85FD4();
  v218[8] = v46;
  if (a3)
  {
    v49 = qword_27FEF3F50;
    v50 = a3;
    if (v49 != -1)
    {
      swift_once();
    }

    v51 = sub_261D864A4();
    __swift_project_value_buffer(v51, qword_27FEF40A0);
    v52 = v50;
    v53 = sub_261D86494();
    v54 = sub_261D866C4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v52;
      *v56 = a3;
      v57 = v52;
      _os_log_impl(&dword_261D56000, v53, v54, "setting locationTrigger {locationTrigger: %@}", v55, 0xCu);
      sub_261D646F8(v56, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v56, -1, -1);
      MEMORY[0x26671EBF0](v55, -1, -1);
    }

    v58 = v52;
    MEMORY[0x26671DA60](a3);
  }

  v59 = 0x27FEF3000uLL;
  if (a4)
  {
    v60 = qword_27FEF3F50;
    v61 = a4;
    if (v60 != -1)
    {
      swift_once();
    }

    v62 = sub_261D864A4();
    __swift_project_value_buffer(v62, qword_27FEF40A0);
    v63 = v61;
    v64 = sub_261D86494();
    v65 = sub_261D866C4();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = a4;
      v68 = v63;
      _os_log_impl(&dword_261D56000, v64, v65, "setting vehicleTrigger {vehicleTrigger: %@}", v66, 0xCu);
      sub_261D646F8(v67, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v67, -1, -1);
      MEMORY[0x26671EBF0](v66, -1, -1);
    }

    v69 = v63;
    MEMORY[0x26671DA50](a4);
  }

  v204 = a9;
  v70 = v203;
  swift_beginAccess();
  sub_261D64690(v70, v36, &qword_27FEF41B0, &unk_261D87DA0);
  v71 = v214;
  v72 = v215;
  if ((v215[6])(v36, 1, v214) == 1)
  {
    sub_261D646F8(v36, &qword_27FEF41B0, &unk_261D87DA0);
    v73 = v216;
  }

  else
  {
    v74 = v212;
    (v72[4])(v212, v36, v71);
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v75 = sub_261D864A4();
    v76 = __swift_project_value_buffer(v75, qword_27FEF40A0);
    v77 = v72[2];
    v78 = v193;
    v77(v193, v74, v71);
    v190[1] = v76;
    v79 = sub_261D86494();
    v80 = sub_261D866C4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v78;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v218[0] = v83;
      *v82 = 136315138;
      sub_261D64648(&qword_27FEF4250, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v84 = sub_261D86B54();
      v86 = v85;
      v87 = v81;
      v71 = v214;
      v203 = v215[1];
      v203(v87, v214);
      v88 = sub_261D8464C(v84, v86, v218);

      *(v82 + 4) = v88;
      _os_log_impl(&dword_261D56000, v79, v80, "setting dueDateComponents {dueDateComponents: %s}", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      v89 = v83;
      v72 = v215;
      MEMORY[0x26671EBF0](v89, -1, -1);
      MEMORY[0x26671EBF0](v82, -1, -1);
    }

    else
    {

      v203 = v72[1];
      v203(v78, v71);
    }

    v73 = v216;
    v90 = v205;
    v91 = v194;
    v92 = v212;
    v77(v194, v212, v71);
    (v72[7])(v91, 0, 1, v71);
    sub_261D85FA4();
    sub_261D646F8(v91, &qword_27FEF41B0, &unk_261D87DA0);
    v93 = v195;
    sub_261D64690(v196, v195, &qword_27FEF41D8, &qword_261D87C20);
    v94 = v202;
    if ((*(v202 + 48))(v93, 1, v90) == 1)
    {
      v203(v92, v71);
      sub_261D646F8(v93, &qword_27FEF41D8, &qword_261D87C20);
    }

    else
    {
      v95 = v197;
      (*(v94 + 32))(v197, v93, v90);
      v96 = v192;
      v214 = *(v94 + 16);
      v214(v192, v95, v90);
      v97 = sub_261D86494();
      v98 = sub_261D866C4();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v218[0] = v100;
        *v99 = 136315138;
        v214(v191, v96, v205);
        v101 = sub_261D86544();
        v103 = v102;
        v196 = *(v202 + 8);
        v196(v96, v205);
        v104 = sub_261D8464C(v101, v103, v218);

        *(v99 + 4) = v104;
        v73 = v216;
        _os_log_impl(&dword_261D56000, v97, v98, "setting recurrenceRule {recurrenceRule: %s}", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        v105 = v100;
        v94 = v202;
        MEMORY[0x26671EBF0](v105, -1, -1);
        v106 = v99;
        v90 = v205;
        MEMORY[0x26671EBF0](v106, -1, -1);
      }

      else
      {

        v196 = *(v94 + 8);
        v196(v96, v90);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4400, &qword_261D87C50);
      v107 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_261D87AE0;
      v109 = v197;
      v214(v108 + v107, v197, v90);
      sub_261D85F94();

      v196(v109, v90);
      v203(v212, v71);
    }

    v59 = 0x27FEF3000uLL;
  }

  v110 = v206;
  swift_beginAccess();
  v111 = *v110;
  if (v111)
  {
    v112 = qword_27FEF3F50;
    v113 = v111;
    if (v112 != -1)
    {
      swift_once();
    }

    v114 = sub_261D864A4();
    __swift_project_value_buffer(v114, qword_27FEF40A0);
    v115 = v113;
    v116 = sub_261D86494();
    v117 = sub_261D866C4();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v118 = 138412290;
      *(v118 + 4) = v115;
      *v119 = v111;
      v120 = v115;
      _os_log_impl(&dword_261D56000, v116, v117, "setting contactRepresentation {contactRepresentation: %@}", v118, 0xCu);
      sub_261D646F8(v119, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v119, -1, -1);
      v121 = v118;
      v73 = v216;
      MEMORY[0x26671EBF0](v121, -1, -1);
    }

    v122 = v115;
    sub_261D85F64();
  }

  v123 = a11;
  v124 = v204;
  swift_beginAccess();
  v125 = *v124;
  if (*v124)
  {
    v126 = qword_27FEF3F50;
    v127 = v125;
    if (v126 != -1)
    {
      swift_once();
    }

    v128 = sub_261D864A4();
    __swift_project_value_buffer(v128, qword_27FEF40A0);
    v129 = v127;
    v130 = sub_261D86494();
    v131 = sub_261D866C4();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v132 = 138412290;
      *(v132 + 4) = v129;
      *v133 = v125;
      v134 = v129;
      _os_log_impl(&dword_261D56000, v130, v131, "setting userActivity {remUserActivity: %@}", v132, 0xCu);
      sub_261D646F8(v133, &qword_27FEF4200, &unk_261D878D0);
      v135 = v133;
      v59 = 0x27FEF3000uLL;
      MEMORY[0x26671EBF0](v135, -1, -1);
      MEMORY[0x26671EBF0](v132, -1, -1);
    }

    v136 = v129;
    sub_261D85F54();

    v73 = v216;
  }

  v216 = a12;
  swift_beginAccess();
  v137 = v207;
  sub_261D64690(a10, v207, &qword_27FEF4208, &qword_261D87C38);
  v138 = v209;
  v139 = v210;
  if ((*(v209 + 48))(v137, 1, v210) == 1)
  {
    sub_261D646F8(v137, &qword_27FEF4208, &qword_261D87C38);
  }

  else
  {
    v215 = a11;
    v140 = v208;
    (*(v138 + 32))(v208, v137, v139);
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v141 = sub_261D864A4();
    __swift_project_value_buffer(v141, qword_27FEF40A0);
    v214 = *(v138 + 16);
    v214(v73, v140, v139);
    v142 = sub_261D86494();
    v143 = sub_261D866C4();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v207 = v144;
      v212 = swift_slowAlloc();
      v217 = v212;
      *v144 = 136315138;
      v145 = sub_261D85C74();
      v147 = v146;
      v148 = v73;
      v149 = *(v138 + 8);
      v149(v148, v139);
      v150 = sub_261D8464C(v145, v147, &v217);
      v59 = 0x27FEF3000;

      v151 = v207;
      *(v207 + 1) = v150;
      v152 = v143;
      v153 = v151;
      _os_log_impl(&dword_261D56000, v142, v152, "setting URL attachment {userActivityURL: %s}", v151, 0xCu);
      v154 = v212;
      __swift_destroy_boxed_opaque_existential_0(v212);
      MEMORY[0x26671EBF0](v154, -1, -1);
      MEMORY[0x26671EBF0](v153, -1, -1);
    }

    else
    {

      v155 = v73;
      v149 = *(v138 + 8);
      v149(v155, v139);
    }

    v156 = v198;
    v157 = v208;
    v214(v198, v208, v139);
    (*(v138 + 56))(v156, 0, 1, v139);
    sub_261D85FB4();
    sub_261D646F8(v156, &qword_27FEF4208, &qword_261D87C38);
    v149(v157, v139);
    v123 = v215;
  }

  swift_beginAccess();
  if (v123[1])
  {
    v158 = *(v59 + 3920);

    if (v158 != -1)
    {
      swift_once();
    }

    v159 = sub_261D864A4();
    __swift_project_value_buffer(v159, qword_27FEF40A0);
    v160 = sub_261D86494();
    v161 = sub_261D866C4();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_261D56000, v160, v161, "setting notes", v162, 2u);
      MEMORY[0x26671EBF0](v162, -1, -1);
    }

    v163 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v164 = sub_261D86504();

    v165 = [v163 initWithString_];

    sub_261D85FC4();
  }

  v166 = v216;
  swift_beginAccess();
  v167 = v213;
  if (*v166)
  {
    v168 = *(v59 + 3920);
    v169 = *v166;
    if (v168 != -1)
    {
      swift_once();
    }

    v170 = sub_261D864A4();
    __swift_project_value_buffer(v170, qword_27FEF40A0);
    v171 = sub_261D86494();
    v172 = sub_261D866C4();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      *v173 = 0;
      _os_log_impl(&dword_261D56000, v171, v172, "setting custom smart list filters", v173, 2u);
      v174 = v173;
      v167 = v213;
      MEMORY[0x26671EBF0](v174, -1, -1);
    }

    v175 = v199;
    sub_261D85D14();
    sub_261D85FE4();

    (*(v200 + 8))(v175, v201);
  }

  v176 = [v167 accountCapabilities];
  v177 = [v176 supportsFlagged];

  if (!v177)
  {
    goto LABEL_66;
  }

  v178 = [a13 priority];
  if (!v178)
  {
    goto LABEL_66;
  }

  if (v178 == 1 || v178 == 2)
  {
    sub_261D86004();
LABEL_66:
    if (*(v59 + 3920) != -1)
    {
      swift_once();
    }

    v179 = sub_261D864A4();
    __swift_project_value_buffer(v179, qword_27FEF40A0);
    v180 = v167;
    v181 = sub_261D86494();
    v182 = sub_261D866C4();

    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *v183 = 138543362;
      v185 = [v180 objectID];
      *(v183 + 4) = v185;
      *v184 = v185;
      _os_log_impl(&dword_261D56000, v181, v182, "Inserting reminder: {objectID: %{public}@}", v183, 0xCu);
      sub_261D646F8(v184, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v184, -1, -1);
      MEMORY[0x26671EBF0](v183, -1, -1);
    }

    *v211 = v180;
    return;
  }

  if (*(v59 + 3920) != -1)
  {
    swift_once();
  }

  v186 = sub_261D864A4();
  __swift_project_value_buffer(v186, qword_27FEF40A0);
  v187 = MEMORY[0x277D84F90];
  v188 = sub_261D70458(MEMORY[0x277D84F90]);
  v189 = sub_261D70458(v187);
  sub_261D6751C("unknown priority", 16, 2, v188, v189);
  __break(1u);
}

void sub_261D5EE80(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_261D5EF14(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 taskReference];
  if (!v13)
  {

    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v16 = sub_261D864A4();
    __swift_project_value_buffer(v16, qword_27FEF40A0);
    v17 = sub_261D86494();
    v18 = sub_261D86694();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = ".taskReference is .unknown. {resolve: nil}";
    goto LABEL_14;
  }

  if (v13 != 1)
  {

    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v21 = sub_261D864A4();
    __swift_project_value_buffer(v21, qword_27FEF40A0);
    v17 = sub_261D86494();
    v18 = sub_261D866A4();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = ".taskReference is an unhandled enum. {resolve: nil}";
LABEL_14:
    _os_log_impl(&dword_261D56000, v17, v18, v20, v19, 2u);
    MEMORY[0x26671EBF0](v19, -1, -1);
LABEL_15:

    v22 = 0;
    return a1(&v22);
  }

  __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_userActivityProvider), *(a6 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_userActivityProvider + 24));
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_261D5F5B8;
  v14[5] = v12;

  sub_261D86124();
}

void sub_261D5F1BC(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    (a5)(a1, 0, a3, a4);
  }
}

uint64_t sub_261D5F234(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2 && (v3 = v2, v4 = [v2 triggerContact], v3, v4))
  {
    v5 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_contactRepresentationResolver), *(v1 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_contactRepresentationResolver + 24));
    MEMORY[0x28223BE20](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
    swift_allocObject();
    v6 = v4;
    v7 = sub_261D86464();

    return v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
    swift_allocObject();
    return sub_261D86454();
  }
}

id sub_261D5F3A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRAddTasksIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_261D5F4F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D5F54C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D5F5B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_261D5F5F0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_261D5F63C(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  result = [a1 fetchDefaultAccountWithError_];
  if (v13[0])
  {
    v2 = result;
    v3 = v13[0];

    swift_willThrow();
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v4 = sub_261D864A4();
    __swift_project_value_buffer(v4, qword_27FEF40A0);
    v5 = v3;
    v6 = sub_261D86494();
    v7 = sub_261D866A4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_261D86BA4();
      v12 = sub_261D8464C(v10, v11, v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_261D56000, v6, v7, "Unable to determine default account {error: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x26671EBF0](v9, -1, -1);
      MEMORY[0x26671EBF0](v8, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_261D5F820(char *a1, char *a2, char *a3)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F50 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v7 = sub_261D864A4();
    __swift_project_value_buffer(v7, qword_27FEF40A0);
    v8 = a1;
    v9 = sub_261D86494();
    v10 = sub_261D866C4();

    v83 = v6;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = a3;
      v13 = swift_slowAlloc();
      v87[0] = v13;
      *v11 = 136315138;
      v86 = [v8 targetTaskList];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42A8, &qword_261D87C78);
      v14 = sub_261D868D4();
      v16 = v15;

      v17 = sub_261D8464C(v14, v16, v87);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_261D56000, v9, v10, "SiriKit asked for resolving tasklist {targetTaskList: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v18 = v13;
      a3 = v12;
      MEMORY[0x26671EBF0](v18, -1, -1);
      MEMORY[0x26671EBF0](v11, -1, -1);
    }

    v19 = [v8 targetTaskList];
    if (v19)
    {
      v20 = v19;
      v21 = &a2[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource];
      v22 = *&a2[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 24];
      v23 = *&a2[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 32];
      __swift_project_boxed_opaque_existential_1(v21, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_261D877A0;
      *(v24 + 32) = v20;
      v25 = swift_allocObject();
      v25[2] = v20;
      v25[3] = sub_261D6497C;
      v25[4] = v83;
      v26 = *(v23 + 40);
      v27 = v20;

      v26(v24, sub_261D6489C, v25, v22, v23);

LABEL_6:

      return;
    }

    v28 = [v8 targetTaskListMembers];
    if (!v28)
    {
      goto LABEL_67;
    }

    a1 = v28;
    sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
    v6 = sub_261D865D4();

    if (!(v6 >> 62))
    {
      v29 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        break;
      }

      goto LABEL_10;
    }

    v29 = sub_261D86954();
    if (!v29)
    {
      break;
    }

LABEL_10:
    v82 = a2;
    v30 = 0;
    a2 = (v6 & 0xC000000000000001);
    v85 = v6 & 0xFFFFFFFFFFFFFF8;
    v31 = MEMORY[0x277D84F90];
    do
    {
      if (a2)
      {
        v32 = MEMORY[0x26671E4C0](v30, v6);
      }

      else
      {
        if (v30 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v32 = *(v6 + 8 * v30 + 32);
      }

      a1 = v32;
      a3 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v33 = sub_261D86864();

      a1 = *(v33 + 16);
      v34 = *(v31 + 2);
      v35 = &a1[v34];
      if (__OFADD__(v34, a1))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v35 <= *(v31 + 3) >> 1)
      {
        if (*(v33 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v34 <= v35)
        {
          v37 = &a1[v34];
        }

        else
        {
          v37 = v34;
        }

        v31 = sub_261D842B4(isUniquelyReferenced_nonNull_native, v37, 1, v31);
        if (*(v33 + 16))
        {
LABEL_26:
          if ((*(v31 + 3) >> 1) - *(v31 + 2) < a1)
          {
            goto LABEL_60;
          }

          swift_arrayInitWithCopy();

          if (a1)
          {
            v38 = *(v31 + 2);
            v39 = __OFADD__(v38, a1);
            v40 = &a1[v38];
            if (v39)
            {
              goto LABEL_62;
            }

            *(v31 + 2) = v40;
          }

          goto LABEL_12;
        }
      }

      if (a1)
      {
        goto LABEL_55;
      }

LABEL_12:
      ++v30;
    }

    while (a3 != v29);
    v41 = 0;
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a2)
      {
        v43 = MEMORY[0x26671E4C0](v41, v6);
      }

      else
      {
        if (v41 >= *(v85 + 16))
        {
          goto LABEL_57;
        }

        v43 = *(v6 + 8 * v41 + 32);
      }

      a1 = v43;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v84 = (v41 + 1);
      v44 = v31;
      v45 = a2;
      a2 = v29;
      v46 = v6;
      a3 = sub_261D86874();

      a1 = *(a3 + 2);
      v47 = *(v42 + 2);
      v6 = &a1[v47];
      if (__OFADD__(v47, a1))
      {
        goto LABEL_58;
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      if (!v48 || v6 > *(v42 + 3) >> 1)
      {
        if (v47 <= v6)
        {
          v49 = &a1[v47];
        }

        else
        {
          v49 = v47;
        }

        v42 = sub_261D842B4(v48, v49, 1, v42);
      }

      v6 = v46;
      v29 = a2;
      if (*(a3 + 2))
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < a1)
        {
          goto LABEL_61;
        }

        a2 = v45;
        swift_arrayInitWithCopy();

        v31 = v44;
        if (a1)
        {
          v50 = *(v42 + 2);
          v39 = __OFADD__(v50, a1);
          v51 = &a1[v50];
          if (v39)
          {
            goto LABEL_63;
          }

          *(v42 + 2) = v51;
        }
      }

      else
      {

        a2 = v45;
        v31 = v44;
        if (a1)
        {
          goto LABEL_59;
        }
      }

      ++v41;
      if (v84 == v29)
      {
        v52 = *&v82[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 24];
        v53 = *&v82[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 32];
        __swift_project_boxed_opaque_existential_1(&v82[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource], v52);

        v55 = sub_261D6BFA0(v54);

        v57 = v42;
        v58 = v6;
        v59 = sub_261D6BFA0(v56);

        v60 = swift_allocObject();
        v60[2] = v58;
        v60[3] = v31;
        v60[4] = v57;
        v60[5] = v82;
        v60[6] = sub_261D6497C;
        v60[7] = v83;
        v61 = *(v53 + 56);

        v62 = v82;
        v61(v55, v59, sub_261D6484C, v60, v52, v53);

        goto LABEL_6;
      }
    }

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
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

LABEL_67:
  v63 = *&a2[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store];
  v87[0] = 0;
  v64 = [v63 fetchDefaultListWithError_];
  v65 = v64;
  if (v87[0])
  {
    v66 = v87[0];

    swift_willThrow();
LABEL_69:
    v67 = sub_261D86494();
    v68 = sub_261D866C4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_261D56000, v67, v68, "No .targetTaskList and unable to get defaultList. {result: .disambiguateDueToNoDefaultList}", v69, 2u);
      MEMORY[0x26671EBF0](v69, -1, -1);
    }

    v70 = sub_261D5AE54();
    (*(a3 + 2))(a3, v70);

    return;
  }

  if (!v64)
  {
    goto LABEL_69;
  }

  sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
  v71 = v65;
  v72 = sub_261D86654();
  v73 = v71;
  v74 = v72;
  v75 = sub_261D86494();
  v76 = sub_261D866C4();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412546;
    v79 = [v73 objectID];
    *(v77 + 4) = v79;
    *(v77 + 12) = 2112;
    *(v77 + 14) = v74;
    *v78 = v79;
    v78[1] = v74;
    v80 = v74;
    _os_log_impl(&dword_261D56000, v75, v76, "Using defaultList {objectID: %@, result: .success(%@)}", v77, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v78, -1, -1);
    MEMORY[0x26671EBF0](v77, -1, -1);
  }

  a2[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_didNotSpecifyTargetList] = 1;
  sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
  v81 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];
  (*(a3 + 2))(a3, v81);
}

void sub_261D601E8(void *a1, uint64_t a2)
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF40A0);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v102 = v9;
    *v8 = 136315138;
    v100 = [v5 spatialEventTrigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42A0, &qword_261D87C70);
    v10 = sub_261D868D4();
    v12 = v11;

    v13 = sub_261D8464C(v10, v12, &v102);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261D56000, v6, v7, "SiriKit asked for resolving spatial event trigger {spatialEventTrigger: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v14 = [v5 spatialEventTrigger];
  if (!v14)
  {
    v25 = sub_261D86494();
    v26 = sub_261D866C4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_261D56000, v25, v26, ".spatialEventTrigger is nil {result: .notRequired}", v27, 2u);
      MEMORY[0x26671EBF0](v27, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2, v24);
    goto LABEL_68;
  }

  v15 = v14;
  if (![v14 event])
  {
    v28 = sub_261D86494();
    v29 = sub_261D866A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_261D56000, v28, v29, "spatialEventTrigger.event must not be .unknown {result: .unsupported}", v30, 2u);
      MEMORY[0x26671EBF0](v30, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
    v24 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v24);

    goto LABEL_68;
  }

  v16 = [v15 mobileSpace];
  v17 = v15;
  v18 = sub_261D86494();
  v19 = sub_261D866C4();

  v20 = os_log_type_enabled(v18, v19);
  if (v16 == 1)
  {
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v15;
      v23 = v17;
      _os_log_impl(&dword_261D56000, v18, v19, "Resolved vehicle trigger {result: .success, spatialEventTrigger: %@}", v21, 0xCu);
      sub_261D646F8(v22, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v22, -1, -1);
      MEMORY[0x26671EBF0](v21, -1, -1);
    }

    v24 = [objc_opt_self() successWithResolvedSpatialEventTrigger_];
    (*(a2 + 16))(a2, v24);
LABEL_67:

    goto LABEL_68;
  }

  v99 = a2;
  if (v20)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v102 = v32;
    *v31 = 136315138;
    v33 = [v17 suggestedValues];
    if (v33)
    {
      v34 = v33;
      sub_261D597EC(0, &qword_27FEF4288, 0x277CBFC40);
      sub_261D865D4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4298, &qword_261D87C68);
    v35 = sub_261D868D4();
    v37 = v36;

    v38 = sub_261D8464C(v35, v37, &v102);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_261D56000, v18, v19, "suggestedValues: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26671EBF0](v32, -1, -1);
    MEMORY[0x26671EBF0](v31, -1, -1);

    a2 = v99;
  }

  else
  {
  }

  v39 = [v17 suggestedValues];
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v41 = v39;
    sub_261D597EC(0, &qword_27FEF4288, 0x277CBFC40);
    v42 = sub_261D865D4();
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = v42 >> 62;
  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_50:

    v67 = sub_261D86494();
    v68 = sub_261D866C4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_261D56000, v67, v68, "fallback to spatialEventTrigger.placemark instead because placemark count is 0 {count: 0}", v69, 2u);
      MEMORY[0x26671EBF0](v69, -1, -1);
    }

    v70 = [v17 placemark];
    if (!v70)
    {
      v86 = sub_261D86494();
      v87 = sub_261D866A4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_261D56000, v86, v87, "spatialEventTrigger.placemark == nil. Siri is messed up. Ignoring. {result: .notRequired}", v88, 2u);
        MEMORY[0x26671EBF0](v88, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
      v65 = [swift_getObjCClassFromMetadata() notRequired];
      v66 = *(a2 + 16);
      goto LABEL_62;
    }

    v45 = [v17 placemark];
LABEL_54:
    v71 = [v45 region];
    if (v71)
    {
      v72 = v71;
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v74 = v73;
        v75 = a2;
        v17 = v17;
        v76 = v72;
        v77 = sub_261D86494();
        v78 = sub_261D866C4();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *v79 = 138412546;
          *(v79 + 4) = v74;
          *(v79 + 12) = 2112;
          *(v79 + 14) = v17;
          *v80 = v74;
          v80[1] = v15;
          v81 = v17;
          v82 = v76;
          _os_log_impl(&dword_261D56000, v77, v78, "Resolved circularRegion {circularRegion: %@, result: .success(%@)}", v79, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
          swift_arrayDestroy();
          MEMORY[0x26671EBF0](v80, -1, -1);
          MEMORY[0x26671EBF0](v79, -1, -1);
        }

        v24 = v45;
        v83 = [v17 event];
        v84 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v24 event:v83];

        v85 = [objc_opt_self() successWithResolvedSpatialEventTrigger_];
        (*(v75 + 16))(v75, v85);

        goto LABEL_67;
      }
    }

    v24 = v45;
    v89 = sub_261D86494();
    v90 = sub_261D866A4();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v102 = v92;
      *v91 = 136315138;
      v101 = [v24 region];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4290, &qword_261D87C60);
      v93 = sub_261D868D4();
      v94 = a2;
      v96 = v95;

      v97 = sub_261D8464C(v93, v96, &v102);
      a2 = v94;

      *(v91 + 4) = v97;
      _os_log_impl(&dword_261D56000, v89, v90, "Got a placemark with a CLRegion that is not a CLCircularRegion {region: %s, result: unsupported}", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x26671EBF0](v92, -1, -1);
      MEMORY[0x26671EBF0](v91, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
    v98 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v98);

    goto LABEL_67;
  }

  if (!sub_261D86954())
  {
    goto LABEL_50;
  }

LABEL_27:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x26671E4C0](0, v42);
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v44 = *(v42 + 32);
  }

  v45 = v44;
  if (!v43)
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  if (sub_261D86954() == 1)
  {
LABEL_43:

    v60 = sub_261D86494();
    v61 = sub_261D866C4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_261D56000, v60, v61, "Using the only suggestedValue because placemarks.count is 1 {count: 1}", v62, 2u);
      MEMORY[0x26671EBF0](v62, -1, -1);
    }

    a2 = v99;
    goto LABEL_54;
  }

LABEL_32:

  v46 = sub_261D86494();
  v47 = sub_261D866C4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v102 = v49;
    *v48 = 136315138;
    v50 = sub_261D597EC(0, &qword_27FEF4288, 0x277CBFC40);
    v51 = MEMORY[0x26671E0C0](v42, v50);
    v53 = sub_261D8464C(v51, v52, &v102);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_261D56000, v46, v47, "Disambiguate suggestedValues {result: .disambiguation, placemarks: %s}", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v54 = v49;
    v40 = MEMORY[0x277D84F90];
    MEMORY[0x26671EBF0](v54, -1, -1);
    MEMORY[0x26671EBF0](v48, -1, -1);
  }

  if (!v43)
  {
    v55 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_36;
    }

LABEL_48:

    v63 = objc_opt_self();
    sub_261D597EC(0, &qword_27FEF4280, 0x277CD4178);
    v64 = sub_261D865C4();

    v65 = [v63 disambiguationWithSpatialEventTriggersToDisambiguate_];

    v66 = *(v99 + 16);
LABEL_62:
    v66();

    v24 = v17;
LABEL_68:

    return;
  }

  v55 = sub_261D86954();
  if (!v55)
  {
    goto LABEL_48;
  }

LABEL_36:
  v102 = v40;
  sub_261D86A34();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x26671E4C0](v56, v42);
      }

      else
      {
        v57 = *(v42 + 8 * v56 + 32);
      }

      v58 = v57;
      ++v56;
      v59 = [v17 event];
      [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v58 event:v59];

      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
    }

    while (v55 != v56);
    goto LABEL_48;
  }

LABEL_71:
  __break(1u);
}

void sub_261D6102C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF40A0);
  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v30 = v5;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    [v7 taskReference];
    type metadata accessor for INTaskReference(0);
    v12 = sub_261D86544();
    v14 = sub_261D8464C(v12, v13, &v31);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_261D56000, v8, v9, "SiriKit asked for resolving task reference {taskReference: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26671EBF0](v11, -1, -1);
    v15 = v10;
    v5 = v30;
    MEMORY[0x26671EBF0](v15, -1, -1);
  }

  if ([v7 taskReference] != 1)
  {
    v23 = sub_261D86494();
    v24 = sub_261D866C4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_261D56000, v23, v24, "userActivity not requested {result: .notRequired}", v25, 2u);
      MEMORY[0x26671EBF0](v25, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
    v26 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_15;
  }

  v16 = sub_261D5C578(v7);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 supportsReminderActions];

    if ((v18 & 1) == 0)
    {
      v27 = sub_261D86494();
      v28 = sub_261D866A4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261D56000, v27, v28, "Target list account doesn't support userActivity. {result: .unsupported()}", v29, 2u);
        MEMORY[0x26671EBF0](v29, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
      v26 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_15:
      v22 = v26;
      (a3)[2](a3, v22);
      goto LABEL_16;
    }
  }

  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4170, &qword_261D87BE8);
  swift_allocObject();
  sub_261D86464();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_261D6497C;
  *(v19 + 24) = v5;

  v20 = sub_261D863F4();
  sub_261D86434();

  v21 = swift_allocObject();
  *(v21 + 16) = sub_261D6497C;
  *(v21 + 24) = v5;

  v22 = sub_261D863F4();
  sub_261D86444();

LABEL_16:
}

void sub_261D614FC(void *a1, uint64_t a2)
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF40A0);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = [v5 targetTaskListMembers];
    if (v10)
    {
      v11 = v10;
      sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v12 = sub_261D865D4();
    }

    else
    {
      v12 = 0;
    }

    v29 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4268, &qword_261D87C58);
    v13 = sub_261D86544();
    v15 = sub_261D8464C(v13, v14, &v30);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_261D56000, v6, v7, "SiriKit asked for resolving target task list members {targetTaskListMembers: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v16 = [v5 targetTaskListMembers];
  if (!v16)
  {
    sub_261D597EC(0, &qword_27FEF4258, 0x277CD3EA0);
    v25 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_261D877A0;
    *(v26 + 32) = v25;
    v27 = v25;
    v28 = sub_261D865C4();
    (*(a2 + 16))(a2, v28);

LABEL_21:

    return;
  }

  v17 = v16;
  sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
  v18 = sub_261D865D4();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_20:

    sub_261D597EC(0, &qword_27FEF4258, 0x277CD3EA0);
    v28 = sub_261D865C4();
    (*(a2 + 16))(a2, v28);
    goto LABEL_21;
  }

  v19 = sub_261D86954();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_11:
  v30 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = objc_opt_self();
    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26671E4C0](v21, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v20 successWithResolvedPerson_];

      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
    }

    while (v19 != v21);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_261D61910(void *a1, void *a2, void (**a3)(void, void))
{
  v302 = a2;
  v307 = *MEMORY[0x277D85DE8];
  v284 = sub_261D85E04();
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v282 = &v268 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_261D85C44();
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v288 = &v268 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_261D85D24();
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v285 = &v268 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_261D86144();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v291 = &v268 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  v294 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v296 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = v10;
  MEMORY[0x28223BE20](v11);
  v298 = &v268 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E0, &qword_261D87C28);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v268 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v268 - v17;
  v301 = sub_261D85D64();
  v300 = *(v301 - 1);
  MEMORY[0x28223BE20](v301);
  v299 = (&v268 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v297 = &v268 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v23 = sub_261D864A4();
  __swift_project_value_buffer(v23, qword_27FEF40A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E8, &qword_261D87C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_261D597EC(0, &qword_27FEF41F0, 0x277CD3A18);
  *(inited + 48) = a1;
  v25 = a1;
  v26 = sub_261D70458(inited);
  swift_setDeallocating();
  sub_261D646F8(inited + 32, &qword_27FEF41F8, &qword_261D87DB0);
  sub_261D67278("Add task via Siri {intent: %@}", 30, 2, v26);

  v27 = v25;
  v28 = sub_261D86494();
  v29 = sub_261D866C4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = a3;
    v32 = v22;
    v33 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v33 = v27;
    v34 = v27;
    _os_log_impl(&dword_261D56000, v28, v29, "SiriKit asked for handling intent {intent: %@}", v30, 0xCu);
    sub_261D646F8(v33, &qword_27FEF4200, &unk_261D878D0);
    v35 = v33;
    v22 = v32;
    a3 = v31;
    MEMORY[0x26671EBF0](v35, -1, -1);
    MEMORY[0x26671EBF0](v30, -1, -1);
  }

  v36 = [v27 taskTitles];
  if (!v36)
  {
    v75 = sub_261D86494();
    v76 = sub_261D866A4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_261D56000, v75, v76, "intent.taskTitles is nil - should have resolved it in previous calls. {result: .failure}", v77, 2u);
      v78 = v77;
LABEL_24:
      MEMORY[0x26671EBF0](v78, -1, -1);
    }

LABEL_25:

    v86 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
    (a3)[2](a3, v86);

    return;
  }

  v37 = v36;
  sub_261D597EC(0, &unk_27FEF4190, 0x277CD4188);
  v38 = sub_261D865D4();

  v39 = [v27 targetTaskList];
  if (!v39)
  {

    v79 = v27;
    v75 = sub_261D86494();
    v80 = sub_261D866A4();

    if (os_log_type_enabled(v75, v80))
    {
      v81 = swift_slowAlloc();
      v82 = a3;
      v83 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v79;
      *v83 = v79;
      v84 = v79;
      _os_log_impl(&dword_261D56000, v75, v80, "Unexpected nil .targetTaskList from intent. {intent: %@, result: .failure}", v81, 0xCu);
      sub_261D646F8(v83, &qword_27FEF4200, &unk_261D878D0);
      v85 = v83;
      a3 = v82;
      MEMORY[0x26671EBF0](v85, -1, -1);
      v78 = v81;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v40 = v39;
  v279 = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v281 = v40;
  v42 = sub_261D86644();
  v280 = v41;
  if (!v43)
  {
    goto LABEL_13;
  }

  if (v42)
  {
    sub_261D85D34();
    v44 = v300;
    v45 = v301;
    if ((v300)[6](v18, 1, v301) == 1)
    {
      sub_261D646F8(v18, &qword_27FEF41E0, &qword_261D87C28);
      goto LABEL_11;
    }

    (v44)[4](v297, v18, v45);
    v125 = objc_opt_self();
    v126 = sub_261D85D44();
    v127 = [v125 objectIDWithUUID_];

    v128 = *(v302 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
    v306 = 0;
    v275 = v128;
    v129 = [v128 fetchCustomSmartListWithObjectID:v127 error:&v306];
    if (!v129)
    {
      v277 = a3;
      v196 = v306;

      v153 = sub_261D85C64();

      swift_willThrow();
      goto LABEL_59;
    }

    v130 = v129;
    v276 = v127;
    v131 = v306;
    v132 = [v130 customContext];
    if (v132)
    {
      v133 = v132;
      v274 = v130;
      v134 = sub_261D867B4();

      if (v134)
      {
        v272 = v134;
        v277 = a3;
        v135 = v276;
        v136 = sub_261D86494();
        v273 = v136;
        v137 = sub_261D866C4();

        v138 = os_log_type_enabled(v136, v137);
        v139 = v280;
        if (v138)
        {
          v140 = swift_slowAlloc();
          v278 = v22;
          v141 = v140;
          v142 = swift_slowAlloc();
          *v141 = 138543362;
          *(v141 + 4) = v135;
          *v142 = v135;
          v143 = v135;
          v144 = v142;
          v145 = v143;
          _os_log_impl(&dword_261D56000, v273, v137, "Successfully fetched custom smart list {smartListID: %{public}@}", v141, 0xCu);
          sub_261D646F8(v144, &qword_27FEF4200, &unk_261D878D0);
          v146 = v144;
          v135 = v143;
          MEMORY[0x26671EBF0](v146, -1, -1);
          v147 = v141;
          v22 = v278;
          MEMORY[0x26671EBF0](v147, -1, -1);
        }

        v148 = *(v139 + 16);
        v149 = v272;
        *(v139 + 16) = v272;
        v150 = v149;

        v306 = 0;
        v151 = [v275 fetchDefaultListWithError_];
        if (v306)
        {
          v152 = v306;

          swift_willThrow();
          v306 = v152;
          v153 = v152;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4228, &qword_261D87C48);
          sub_261D597EC(0, &qword_27FEF4230, 0x277CCA9B8);
          if (swift_dynamicCast())
          {
            v302 = v150;

            v154 = v304;
            v155 = v135;
            v156 = v154;
            v157 = sub_261D86494();
            v158 = sub_261D866A4();

            if (os_log_type_enabled(v157, v158))
            {
              v159 = swift_slowAlloc();
              v160 = swift_slowAlloc();
              v299 = swift_slowAlloc();
              v305 = v299;
              *v159 = 138543618;
              *(v159 + 4) = v155;
              *v160 = v155;
              *(v159 + 12) = 2082;
              v303 = v156;
              sub_261D64598();
              v161 = v155;
              v162 = sub_261D86BB4();
              v164 = sub_261D8464C(v162, v163, &v305);

              *(v159 + 14) = v164;
              _os_log_impl(&dword_261D56000, v157, v158, "Smart List found and unable to fetch default list. {result: .failure, smartListID: %{public}@, error: %{public}s}", v159, 0x16u);
              sub_261D646F8(v160, &qword_27FEF4200, &unk_261D878D0);
              MEMORY[0x26671EBF0](v160, -1, -1);
              v165 = v299;
              __swift_destroy_boxed_opaque_existential_0(v299);
              MEMORY[0x26671EBF0](v165, -1, -1);
              MEMORY[0x26671EBF0](v159, -1, -1);
            }

            v166 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
            (v277)[2](v277, v166);

LABEL_62:
            (v300[1])(v297, v301);
            goto LABEL_63;
          }

          v127 = v276;
LABEL_59:
          v306 = v153;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4228, &qword_261D87C48);
          sub_261D597EC(0, &qword_27FEF4230, 0x277CCA9B8);
          swift_dynamicCast();
          v197 = v304;
          v198 = v127;
          v199 = v197;
          v200 = sub_261D86494();
          v201 = sub_261D866A4();

          if (os_log_type_enabled(v200, v201))
          {
            v202 = swift_slowAlloc();
            v203 = swift_slowAlloc();
            v302 = swift_slowAlloc();
            v303 = v199;
            v305 = v302;
            *v202 = 138543618;
            *(v202 + 4) = v198;
            *v203 = v198;
            *(v202 + 12) = 2082;
            sub_261D64598();
            v204 = v198;
            v205 = sub_261D86BB4();
            v207 = sub_261D8464C(v205, v206, &v305);

            *(v202 + 14) = v207;
            _os_log_impl(&dword_261D56000, v200, v201, "Error fetching smart list. {listID: %{public}@, error: %{public}s}", v202, 0x16u);
            sub_261D646F8(v203, &qword_27FEF4200, &unk_261D878D0);
            MEMORY[0x26671EBF0](v203, -1, -1);
            v208 = v302;
            __swift_destroy_boxed_opaque_existential_0(v302);
            MEMORY[0x26671EBF0](v208, -1, -1);
            MEMORY[0x26671EBF0](v202, -1, -1);
          }

          v209 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
          (v277)[2](v277, v209);

          goto LABEL_62;
        }

        (v300[1])(v297, v301);

        a3 = v277;
        if (v151)
        {
          v253 = v151;

          v64 = v253;
          v183 = v64;
          v48 = v302;
LABEL_52:
          v184 = [v64 isGroup];

          if (v184)
          {

            v185 = v64;
            v186 = sub_261D86494();
            v187 = sub_261D866A4();

            if (os_log_type_enabled(v186, v187))
            {
              v188 = v183;
              v189 = swift_slowAlloc();
              v190 = a3;
              v191 = swift_slowAlloc();
              *v189 = 138543362;
              v192 = [v185 objectID];
              *(v189 + 4) = v192;
              *v191 = v192;
              _os_log_impl(&dword_261D56000, v186, v187, "Fetched list is a Group, can't add reminder to groups. {result: .failure, listID: %{public}@}", v189, 0xCu);
              sub_261D646F8(v191, &qword_27FEF4200, &unk_261D878D0);
              v193 = v191;
              a3 = v190;
              MEMORY[0x26671EBF0](v193, -1, -1);
              v194 = v189;
              v183 = v188;
              MEMORY[0x26671EBF0](v194, -1, -1);
            }

            v195 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
            (a3)[2](a3, v195);

            return;
          }

          v297 = v64;
          if ([v27 spatialEventTrigger])
          {
            sub_261D597EC(0, &qword_27FEF4220, 0x277D44580);
            v300 = sub_261D867A4();
          }

          else
          {
            v300 = 0;
          }

          if ([v27 spatialEventTrigger])
          {
            sub_261D597EC(0, &unk_27FEF4410, 0x277D44590);
            v272 = sub_261D86794();
          }

          else
          {
            v272 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
          v301 = swift_allocBox();
          v211 = v210;
          v212 = [v27 temporalEventTrigger];
          v269 = v211;
          if (v212)
          {
            v213 = v212;
            sub_261D86774();
          }

          else
          {
            (*(v289 + 56))(v211, 1, 1, v290);
          }

          v214 = [v27 temporalEventTrigger];
          v278 = v22;
          v273 = v183;
          if (v214)
          {
            sub_261D64534(v48 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider, &v306);
            sub_261D86064();
          }

          else
          {
            v215 = sub_261D86074();
            (*(*(v215 - 8) + 56))(v298, 1, 1, v215);
          }

          v216 = swift_allocObject();
          v216[2] = 0;
          v217 = sub_261D5F234(v27);
          v218 = swift_allocObject();
          *(v218 + 16) = 0;
          MEMORY[0x28223BE20](v218);
          *(&v268 - 2) = v27;
          *(&v268 - 1) = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4170, &qword_261D87BE8);
          swift_allocObject();
          v274 = sub_261D86464();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
          v219 = swift_allocBox();
          v221 = v220;
          v222 = sub_261D85C94();
          (*(*(v222 - 8) + 56))(v221, 1, 1, v222);
          v223 = swift_allocObject();
          *(v223 + 16) = 0;
          *(v223 + 24) = 0;
          v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4210, &qword_261D87C40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
          v224 = swift_allocObject();
          *(v224 + 16) = xmmword_261D87AF0;

          v225 = sub_261D863F4();
          v271 = v217;
          v226 = sub_261D86434();
          v299 = v216;

          *(v224 + 32) = v226;
          v227 = swift_allocObject();
          v227[2] = v218;
          v227[3] = v219;
          v227[4] = v223;
          v277 = v218;

          v276 = v219;

          v275 = v223;

          v228 = sub_261D863F4();
          v229 = sub_261D86434();

          *(v224 + 40) = v229;
          v270 = sub_261D86404();

          v230 = v292;
          v231 = v291;
          v232 = v293;
          (*(v292 + 104))(v291, *MEMORY[0x277D44DB8], v293);
          LOBYTE(v223) = sub_261D86134();
          (*(v230 + 8))(v231, v232);
          if ((v223 & 1) != 0 && *(v302 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_didNotSpecifyTargetList) == 1)
          {
            v233 = [v27 temporalEventTrigger];
            if (v233 || (v233 = [v27 spatialEventTrigger]) != 0 || (v233 = objc_msgSend(v27, sel_contactEventTrigger)) != 0)
            {
            }

            else
            {
              __swift_project_boxed_opaque_existential_1((v302 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider), *(v302 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider + 24));
              v254 = v285;
              sub_261D85E74();
              v255 = objc_opt_self();
              v256 = sub_261D85CD4();
              v257 = v282;
              sub_261D85DE4();
              v258 = sub_261D85DF4();
              (*(v283 + 8))(v257, v284);
              v259 = [v255 rem:v256 dateComponentsWithDate:v258 timeZone:0 isAllDay:?];

              v260 = v288;
              sub_261D85BE4();

              v261 = sub_261D85BF4();
              if (v262)
              {
                _Block_release(a3);
                __break(1u);
                return;
              }

              v263 = v261;
              v264 = objc_opt_self();
              [v264 nextThirdsHour_];
              sub_261D85C04();
              sub_261D85C14();
              sub_261D85C24();
              (*(v286 + 8))(v254, v287);
              v265 = v269;
              sub_261D646F8(v269, &qword_27FEF41B0, &unk_261D87DA0);
              v266 = v289;
              v267 = v290;
              (*(v289 + 32))(v265, v260, v290);
              (*(v266 + 56))(v265, 0, 1, v267);
            }
          }

          sub_261D64690(v298, v296, &qword_27FEF41D8, &qword_261D87C20);
          v294 = (*(v294 + 80) + 64) & ~*(v294 + 80);
          v293 = (v295 + v294 + 7) & 0xFFFFFFFFFFFFFFF8;
          v234 = (v293 + 15) & 0xFFFFFFFFFFFFFFF8;
          v235 = (v234 + 15) & 0xFFFFFFFFFFFFFFF8;
          v236 = (v235 + 15) & 0xFFFFFFFFFFFFFFF8;
          v295 = (v236 + 15) & 0xFFFFFFFFFFFFFFF8;
          v237 = (v295 + 15) & 0xFFFFFFFFFFFFFFF8;
          v238 = (v237 + 15) & 0xFFFFFFFFFFFFFFF8;
          v239 = swift_allocObject();
          v240 = v297;
          v239[2] = v302;
          v239[3] = v240;
          v241 = v300;
          v239[4] = v279;
          v239[5] = v241;
          v242 = v272;
          v243 = v301;
          v239[6] = v272;
          v239[7] = v243;
          sub_261D64390(v296, v239 + v294);
          *(v239 + v293) = v299;
          *(v239 + v234) = v277;
          *(v239 + v235) = v276;
          *(v239 + v236) = v275;
          v244 = (v239 + ((v238 + 15) & 0xFFFFFFFFFFFFFFF8));
          *(v239 + v295) = v280;
          *(v239 + v237) = v27;
          v245 = v281;
          *(v239 + v238) = v281;
          v246 = v278;
          *v244 = sub_261D640E0;
          v244[1] = v246;
          v296 = v242;

          v247 = v245;

          v248 = v27;
          v249 = v297;

          v250 = v302;
          v251 = v300;
          v252 = sub_261D863F4();
          sub_261D86434();

          sub_261D646F8(v298, &qword_27FEF41D8, &qword_261D87C20);

LABEL_81:

          return;
        }
      }

      else
      {
        (v300[1])(v297, v301);
      }
    }

    else
    {
      (v300[1])(v297, v301);
    }
  }

LABEL_11:
  sub_261D85D34();

  v46 = v300;
  v47 = v301;
  if ((v300)[6](v15, 1, v301) != 1)
  {
    (v46)[4](v299, v15, v47);
    v99 = objc_opt_self();
    v100 = sub_261D85D44();
    v101 = [v99 objectIDWithUUID_];

    v48 = v302;
    v102 = *(v302 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
    v306 = 0;
    v103 = [v102 fetchListWithObjectID:v101 error:&v306];
    v104 = v306;
    if (v103)
    {
      v105 = v103;
      v106 = v104;
      v107 = sub_261D86494();
      v108 = sub_261D866C4();

      v109 = os_log_type_enabled(v107, v108);
      v297 = v105;
      if (v109)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v110 = 138543362;
        v112 = [v105 objectID];
        *(v110 + 4) = v112;
        *v111 = v112;
        _os_log_impl(&dword_261D56000, v107, v108, "Successfully fetched list {listID: %{public}@}", v110, 0xCu);
        sub_261D646F8(v111, &qword_27FEF4200, &unk_261D878D0);
        v113 = v111;
        v48 = v302;
        MEMORY[0x26671EBF0](v113, -1, -1);
        v114 = v110;
        v46 = v300;
        MEMORY[0x26671EBF0](v114, -1, -1);
        v115 = v101;
      }

      else
      {
        v115 = v107;
        v107 = v101;
      }

      (v46[1])(v299, v301);
      v183 = 0;
      v64 = v297;
      goto LABEL_52;
    }

    v277 = a3;
    v167 = v306;

    v168 = sub_261D85C64();

    swift_willThrow();
    v306 = v168;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4228, &qword_261D87C48);
    sub_261D597EC(0, &qword_27FEF4230, 0x277CCA9B8);
    swift_dynamicCast();
    v169 = v304;
    v170 = v101;
    v171 = v169;
    v172 = sub_261D86494();
    v173 = sub_261D866A4();

    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v278 = v22;
      v177 = v176;
      v305 = v176;
      *v174 = 138543618;
      *(v174 + 4) = v170;
      *v175 = v170;
      *(v174 + 12) = 2082;
      v303 = v171;
      sub_261D64598();
      v302 = v171;
      v178 = v170;
      v179 = sub_261D86BB4();
      v181 = sub_261D8464C(v179, v180, &v305);

      *(v174 + 14) = v181;
      v171 = v302;
      _os_log_impl(&dword_261D56000, v172, v173, "Unable to fetch list. {result: .failure, listID: %{public}@, error: %{public}s}", v174, 0x16u);
      sub_261D646F8(v175, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v175, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v177);
      MEMORY[0x26671EBF0](v177, -1, -1);
      MEMORY[0x26671EBF0](v174, -1, -1);
    }

    v182 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
    (v277)[2](v277, v182);

    (v300[1])(v299, v301);
LABEL_63:

    goto LABEL_81;
  }

  sub_261D646F8(v15, &qword_27FEF41E0, &qword_261D87C28);
LABEL_13:
  v278 = v22;
  v48 = v302;
  v49 = *(v302 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
  v50 = sub_261D5F63C(v49);
  if (v50)
  {
    v51 = v50;
    v52 = [v281 title];
    v53 = [v52 spokenPhrase];

    if (!v53)
    {
      sub_261D86534();
      v53 = sub_261D86504();
    }

    v54 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    v301 = [v54 updateAccount_];
    v55 = [v54 addListWithName:v53 toAccountChangeItem:?];

    v306 = 0;
    v56 = [v54 saveSynchronouslyWithError_];
    v57 = v306;
    if (!v56 || (v58 = v306, v59 = [v55 objectID], v306 = 0, v60 = objc_msgSend(v49, sel_fetchListWithObjectID_error_, v59, &v306), v59, v57 = v306, !v60))
    {
      v87 = a3;
      v88 = v57;

      v89 = sub_261D85C64();

      swift_willThrow();
      v90 = v51;
      v91 = v55;
      v92 = sub_261D86494();
      v93 = sub_261D866A4();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138543618;
        v96 = [v91 objectID];
        *(v94 + 4) = v96;
        *(v94 + 12) = 2112;
        *(v94 + 14) = v90;
        *v95 = v96;
        v95[1] = v51;
        v97 = v90;
        _os_log_impl(&dword_261D56000, v92, v93, "Error creating new list. {listID: %{public}@, account: %@, result: .failure}", v94, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
        swift_arrayDestroy();
        MEMORY[0x26671EBF0](v95, -1, -1);
        MEMORY[0x26671EBF0](v94, -1, -1);
      }

      v98 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
      (v87)[2](v87, v98);

      goto LABEL_81;
    }

    v299 = v55;
    v61 = v60;
    v62 = v57;
    v63 = v51;
    v64 = v61;
    v65 = sub_261D86494();
    v66 = sub_261D866C4();

    v300 = v65;
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v297 = v64;
      v69 = v68;
      *v67 = 138543618;
      v70 = [v297 objectID];
      *(v67 + 4) = v70;
      *(v67 + 12) = 2112;
      *(v67 + 14) = v63;
      *v69 = v70;
      v69[1] = v51;
      v71 = v63;
      v72 = v300;
      _os_log_impl(&dword_261D56000, v300, v66, "Successfully created new list {listID: %{public}@, account: %@}", v67, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
      swift_arrayDestroy();
      v73 = v69;
      v64 = v297;
      MEMORY[0x26671EBF0](v73, -1, -1);
      v74 = v67;
      v48 = v302;
      MEMORY[0x26671EBF0](v74, -1, -1);
    }

    else
    {
    }

    v183 = 0;
    v22 = v278;
    goto LABEL_52;
  }

  v116 = v27;
  v117 = sub_261D86494();
  v118 = sub_261D866A4();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = a3;
    v121 = swift_slowAlloc();
    *v119 = 138412290;
    *(v119 + 4) = v116;
    *v121 = v116;
    v122 = v116;
    _os_log_impl(&dword_261D56000, v117, v118, "Unable to create list because there is no default account. {intent: %@, result: .failureRequiringAppLaunch}", v119, 0xCu);
    sub_261D646F8(v121, &qword_27FEF4200, &unk_261D878D0);
    v123 = v121;
    a3 = v120;
    MEMORY[0x26671EBF0](v123, -1, -1);
    MEMORY[0x26671EBF0](v119, -1, -1);
  }

  v124 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:5 userActivity:0];
  (a3)[2](a3, v124);
}

uint64_t sub_261D640A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D640F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D64148()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D641B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_261D86074();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((((((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_261D64390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_261D64400(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_261D5CE48(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_261D64534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_261D64598()
{
  result = qword_27FEF4238;
  if (!qword_27FEF4238)
  {
    sub_261D597EC(255, &qword_27FEF4230, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4238);
  }

  return result;
}

uint64_t sub_261D64648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261D64690(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_261D646F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_261D64758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261D647F4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261D6485C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_261D648A8()
{
  result = qword_27FEF42B8;
  if (!qword_27FEF42B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF42B0, qword_261D87C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF42B8);
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

uint64_t sub_261D64980()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4330);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4330);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D64A48(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_261D86954();
    if (v4 > 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v33 = sub_261D864A4();
    __swift_project_value_buffer(v33, qword_27FEF4330);
    v34 = sub_261D86494();
    v35 = sub_261D866C4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_261D56000, v34, v35, "No reminder matches with the term {result: .unsupported}", v36, 2u);
      MEMORY[0x26671EBF0](v36, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF4428, 0x277CD4238);
    v32 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_35;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 <= 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v4 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26671E4C0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(a1 + 32);
    }

    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v6 = sub_261D86824();
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v7 = sub_261D864A4();
    __swift_project_value_buffer(v7, qword_27FEF4330);

    v8 = sub_261D86494();
    v9 = sub_261D866C4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26671E4C0](0, a1);
      }

      else
      {
        v12 = *(a1 + 32);
      }

      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_261D56000, v8, v9, "One reminder matches with the term {result: .success(%@)}", v10, 0xCu);
      sub_261D646F8(v11, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v11, -1, -1);
      MEMORY[0x26671EBF0](v10, -1, -1);
    }

    v31 = [objc_opt_self() successWithResolvedTask_];
  }

  else
  {
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v13 = sub_261D864A4();
    __swift_project_value_buffer(v13, qword_27FEF4330);
    v14 = sub_261D86494();
    v15 = sub_261D866C4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261D56000, v14, v15, "Multiple reminders match with the term {result: .disambiguation}", v16, 2u);
      MEMORY[0x26671EBF0](v16, -1, -1);
    }

    v17 = sub_261D86494();
    v18 = sub_261D866C4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136315138;
      v21 = sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
      v22 = MEMORY[0x26671E0C0](a1, v21);
      v24 = sub_261D8464C(v22, v23, &v38);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_261D56000, v17, v18, "Matching reminders: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26671EBF0](v20, -1, -1);
      MEMORY[0x26671EBF0](v19, -1, -1);
    }

    v38 = MEMORY[0x277D84F90];
    sub_261D86A34();
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        MEMORY[0x26671E4C0]();
        sub_261D86824();
        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        v25 = v26;
      }

      while (v4 != v26);
    }

    else
    {
      v27 = (a1 + 32);
      do
      {
        v28 = *v27++;
        v29 = v28;
        sub_261D86824();
        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        --v4;
      }

      while (v4);
    }

    v30 = objc_opt_self();
    v6 = sub_261D865C4();

    v31 = [v30 disambiguationWithTasksToDisambiguate_];
  }

  v32 = v31;

LABEL_35:
  v37 = v32;
  a2();
}

void sub_261D65150(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_261D651E4(void **a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v53[1] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  if (*a1)
  {
    v11 = qword_27FEF3F58;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_261D864A4();
    __swift_project_value_buffer(v13, qword_27FEF4330);
    v14 = v12;
    v15 = sub_261D86494();
    v16 = sub_261D866C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = a7;
      v19 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v19 = v10;
      v20 = v14;
      _os_log_impl(&dword_261D56000, v15, v16, "Populating contactRepresentation {contactRepresentation: %@}", v17, 0xCu);
      sub_261D646F8(v19, &qword_27FEF4200, &unk_261D878D0);
      v21 = v19;
      a7 = v18;
      MEMORY[0x26671EBF0](v21, -1, -1);
      MEMORY[0x26671EBF0](v17, -1, -1);
    }

    v22 = v14;
    sub_261D85F64();
  }

  v53[0] = 0;
  v23 = [a3 saveSynchronouslyWithError_];
  v24 = v53[0];
  if (v23 && (sub_261D85EB4(), v25 = v24, sub_261D85EA4(), sub_261D85E94(), , v26 = *(a4 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store), v53[0] = 0, v27 = [v26 fetchReminderWithObjectID:a5 error:v53], v24 = v53[0], v27))
  {
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x277CD4110]);
    v30 = v24;
    v31 = [v29 initWithCode:3 userActivity:0];
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v32 = v28;
    v33 = sub_261D86824();
    [v31 setModifiedTask_];

    v53[0] = a6;
    v34 = sub_261D85F44();
    v35 = [v34 accountCapabilities];

    sub_261D597EC(0, &unk_27FEF43E0, 0x277CD4108);
    v36 = sub_261D860F4();

    [v31 setWarnings_];
    (a7)(v31);
  }

  else
  {
    v37 = v24;
    v38 = sub_261D85C64();

    swift_willThrow();
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v39 = sub_261D864A4();
    __swift_project_value_buffer(v39, qword_27FEF4330);
    v40 = v38;
    v41 = sub_261D86494();
    v42 = sub_261D866A4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = a7;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53[0] = v45;
      *v44 = 136315138;
      swift_getErrorValue();
      v46 = sub_261D86BA4();
      v48 = sub_261D8464C(v46, v47, v53);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_261D56000, v41, v42, "Error saving saveRequest {error: %s}", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x26671EBF0](v45, -1, -1);
      v49 = v44;
      a7 = v43;
      MEMORY[0x26671EBF0](v49, -1, -1);
    }

    v50 = [objc_allocWithZone(MEMORY[0x277CD4110]) initWithCode:4 userActivity:0];
    a7();
  }
}

void sub_261D6571C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_261D657E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_261D658CC(void *a1, void *a2, void (**a3)(void, void))
{
  v44 = sub_261D86194();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_allocObject();
  *(v43 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F58 != -1)
  {
    swift_once();
  }

  v7 = sub_261D864A4();
  __swift_project_value_buffer(v7, qword_27FEF4330);
  v8 = a1;
  v9 = sub_261D86494();
  v10 = sub_261D866C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v39 = a2;
    v40 = a3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 136315138;
    v14 = [v8 targetTask];
    v45 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF43F0, &unk_261D87DB8);
    v15 = sub_261D868D4();
    v17 = v16;

    v18 = sub_261D8464C(v15, v17, &v46);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_261D56000, v9, v10, "SiriKit asked for resolving target task {targetTask: %s}", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26671EBF0](v13, -1, -1);
    v19 = v12;
    a2 = v39;
    a3 = v40;
    MEMORY[0x26671EBF0](v19, -1, -1);
  }

  v20 = [v8 targetTask];
  if (v20)
  {
    v21 = v20;
    v22 = [v8 status] == 1;
    v23 = v41;
    v24 = v42;
    *v41 = v22;
    v25 = v44;
    (*(v24 + 104))(v23, *MEMORY[0x277D44EF0], v44);
    v26 = (a2 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_dataSource);
    v27 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_dataSource + 24);
    v40 = v26[4];
    v39 = __swift_project_boxed_opaque_existential_1(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D877A0;
    *(inited + 32) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4438, &qword_261D88170);
    v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_261D87AE0;
    (*(v24 + 16))(v30 + v29, v23, v25);
    v31 = swift_allocObject();
    v32 = v43;
    *(v31 + 16) = sub_261D640E0;
    *(v31 + 24) = v32;
    v33 = v21;

    sub_261D6D02C(inited, v30, sub_261D6726C, v31, v27, v40);

    swift_setDeallocating();
    swift_arrayDestroy();
    (*(v24 + 8))(v23, v44);
  }

  else
  {
    v34 = sub_261D86494();
    v35 = sub_261D866A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_261D56000, v34, v35, "INSetTaskAttributeIntent contains nil targetTask, returning INTask.disambiguateWithIncompleteReminders", v36, 2u);
      MEMORY[0x26671EBF0](v36, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    sub_261D597EC(0, &unk_27FEF4428, 0x277CD4238);
    v37 = sub_261D867D4();
    (a3)[2](a3, v37);
  }
}

uint64_t sub_261D65DEC(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 priority])
  {
    return 0;
  }

  v2 = [a1 spatialEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 status])
  {
    return 0;
  }

  v2 = [a1 taskTitle];
  if (v2 || (v2 = [a1 temporalEventTrigger]) != 0)
  {
LABEL_2:

    return 0;
  }

  return 1;
}

void sub_261D65EB4(void *a1, uint64_t a2)
{
  if (qword_27FEF3F58 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4330);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v30 = [v5 taskTitle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4420, &qword_261D87DC8);
    v10 = sub_261D868D4();
    v12 = v11;

    v13 = sub_261D8464C(v10, v12, &v31);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261D56000, v6, v7, "SiriKit asked for resolving task title {taskTitle: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v14 = [v5 taskTitle];
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    v17 = sub_261D86494();
    v18 = sub_261D866C4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v15;
      v21 = v16;
      _os_log_impl(&dword_261D56000, v17, v18, "Resolving TaskTitle, got new task title, returning success {taskTitle: %@}", v19, 0xCu);
      sub_261D646F8(v20, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v20, -1, -1);
      MEMORY[0x26671EBF0](v19, -1, -1);
    }

    v22 = [objc_opt_self() successWithResolvedString_];
    (*(a2 + 16))(a2, v22);
  }

  else
  {
    v23 = sub_261D65DEC(v5);
    v24 = sub_261D86494();
    v25 = sub_261D866C4();
    v26 = os_log_type_enabled(v24, v25);
    if (v23)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261D56000, v24, v25, "Resolving TaskTitle, nothing to do, returning .needsValue()", v27, 2u);
        MEMORY[0x26671EBF0](v27, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
      v28 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v26)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261D56000, v24, v25, "Resolving TaskTitle, no title, other stuff to do, returning .notRequired()", v29, 2u);
        MEMORY[0x26671EBF0](v29, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
      v28 = [swift_getObjCClassFromMetadata() notRequired];
    }

    v22 = v28;
    (*(a2 + 16))(a2, v22);
  }
}

void sub_261D662D8(void *a1, char *a2, void (**a3)(void, void))
{
  v111 = sub_261D86074();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v106 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v101 - v10;
  v11 = sub_261D85C44();
  v113 = *(v11 - 8);
  v114 = v11;
  MEMORY[0x28223BE20](v11);
  v112 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  MEMORY[0x28223BE20](v13 - 8);
  v107 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v101 - v16;
  MEMORY[0x28223BE20](v18);
  v115 = &v101 - v19;
  v116 = swift_allocObject();
  *(v116 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F58 != -1)
  {
    swift_once();
  }

  v20 = sub_261D864A4();
  __swift_project_value_buffer(v20, qword_27FEF4330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E8, &qword_261D87C30);
  inited = swift_initStackObject();
  v105 = xmmword_261D87AE0;
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_261D597EC(0, &unk_27FEF43E0, 0x277CD4108);
  *(inited + 48) = a1;
  v22 = a1;
  v23 = sub_261D70458(inited);
  swift_setDeallocating();
  sub_261D646F8(inited + 32, &qword_27FEF41F8, &qword_261D87DB0);
  sub_261D67278("Set task attribute via Siri {intent: %@}", 40, 2, v23);

  v24 = v22;
  v25 = sub_261D86494();
  v26 = sub_261D866C4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_261D56000, v25, v26, "SiriKit asked for handling set task attribute intent {intent: %@}", v27, 0xCu);
    sub_261D646F8(v28, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v28, -1, -1);
    MEMORY[0x26671EBF0](v27, -1, -1);
  }

  v30 = [v24 targetTask];
  if (v30)
  {
    v31 = v30;
    v32 = *&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store];
    v33 = sub_261D867F4();

    if (v33)
    {
      v104 = [v33 objectID];
      v34 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
      sub_261D86014();
      v118 = v33;
      v35 = v34;
      v103 = v33;
      v102 = v35;
      sub_261D85F34();
      v36 = v117[0];
      v37 = [v24 taskTitle];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 spokenPhrase];
        if (!v39)
        {
          sub_261D86534();
          v39 = sub_261D86504();
        }

        v40 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

        sub_261D85FD4();
      }

      v41 = [v24 status];
      v42 = v113;
      if (v41)
      {
        if (v41 != 1 && v41 != 2)
        {
          v95 = MEMORY[0x277D84F90];
          v96 = sub_261D70458(MEMORY[0x277D84F90]);
          v97 = sub_261D70458(v95);

          _Block_release(a3);
          v98 = "unknown status";
          v99 = 14;
          goto LABEL_49;
        }

        sub_261D85FF4();
      }

      v54 = sub_261D85F44();
      v55 = [v54 accountCapabilities];

      LODWORD(v54) = [v55 supportsFlagged];
      if (!v54)
      {
        goto LABEL_24;
      }

      v56 = [v24 priority];
      if (!v56)
      {
        goto LABEL_24;
      }

      if (v56 == 1 || v56 == 2)
      {
        sub_261D86004();
LABEL_24:
        v57 = [v24 spatialEventTrigger];
        v58 = v114;
        if (v57)
        {
          v59 = v57;
          sub_261D597EC(0, &qword_27FEF4220, 0x277D44580);
          v60 = v59;
          v61 = sub_261D867A4();
          if (v61)
          {
            v62 = v61;
            MEMORY[0x26671DA60]();
          }

          sub_261D597EC(0, &unk_27FEF4410, 0x277D44590);
          v63 = v60;
          v64 = sub_261D86794();
          if (v64)
          {
            v65 = v64;
            MEMORY[0x26671DA50]();

            v63 = v65;
          }
        }

        v66 = [v24 temporalEventTrigger];
        v67 = v115;
        if (v66)
        {
          v68 = v66;
          sub_261D86774();
        }

        else
        {
          (*(v42 + 56))(v115, 1, 1, v58);
        }

        sub_261D64690(v67, v17, &qword_27FEF41B0, &unk_261D87DA0);
        if ((*(v42 + 48))(v17, 1, v58) == 1)
        {
          sub_261D646F8(v17, &qword_27FEF41B0, &unk_261D87DA0);
        }

        else
        {
          v69 = v112;
          (*(v42 + 32))(v112, v17, v58);
          v70 = v107;
          (*(v42 + 16))(v107, v69, v58);
          (*(v42 + 56))(v70, 0, 1, v58);
          sub_261D85FA4();
          sub_261D646F8(v70, &qword_27FEF41B0, &unk_261D87DA0);
          v71 = [v24 temporalEventTrigger];
          v101 = a2;
          if (v71)
          {
            sub_261D64534(&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_timeProvider], v117);
            v72 = v109;
            sub_261D86064();
            v73 = v111;
            v74 = v110;
          }

          else
          {
            v74 = v110;
            v72 = v109;
            v73 = v111;
            (*(v110 + 56))(v109, 1, 1, v111);
          }

          v75 = v108;
          sub_261D64690(v72, v108, &qword_27FEF41D8, &qword_261D87C20);
          if ((*(v74 + 48))(v75, 1, v73) == 1)
          {
            sub_261D646F8(v72, &qword_27FEF41D8, &qword_261D87C20);
            (*(v42 + 8))(v112, v58);
            sub_261D646F8(v75, &qword_27FEF41D8, &qword_261D87C20);
          }

          else
          {
            v76 = v42;
            v77 = v106;
            (*(v74 + 32))(v106, v75, v73);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4400, &qword_261D87C50);
            v78 = (*(v74 + 80) + 32) & ~*(v74 + 80);
            v79 = swift_allocObject();
            *(v79 + 16) = v105;
            (*(v74 + 16))(v79 + v78, v77, v73);
            sub_261D85F94();

            (*(v74 + 8))(v77, v73);
            sub_261D646F8(v72, &qword_27FEF41D8, &qword_261D87C20);
            (*(v76 + 8))(v112, v58);
          }

          a2 = v101;
        }

        v80 = [v24 contactEventTrigger];
        if (v80 && (v81 = v80, v82 = [v80 triggerContact], v81, v82))
        {
          __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver], *&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver + 24]);
          v83 = a2;
          v84 = off_28744B0E8;
          v85 = v82;
          v86 = v84(v85);

          v114 = v86;
        }

        else
        {
          v117[0] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
          swift_allocObject();
          sub_261D86454();
          v114 = 0;
          v85 = 0;
          v83 = a2;
        }

        v87 = swift_allocObject();
        v88 = v102;
        v87[2] = v36;
        v87[3] = v88;
        v89 = v104;
        v87[4] = v83;
        v87[5] = v89;
        v87[6] = v24;
        v87[7] = sub_261D6497C;
        v87[8] = v116;
        v90 = v24;
        v91 = v88;

        v92 = v83;
        v93 = v89;

        v94 = sub_261D863F4();
        sub_261D86434();

        sub_261D646F8(v115, &qword_27FEF41B0, &unk_261D87DA0);

        return;
      }

      v100 = MEMORY[0x277D84F90];
      v96 = sub_261D70458(MEMORY[0x277D84F90]);
      v97 = sub_261D70458(v100);

      _Block_release(a3);
      v98 = "unknown priority";
      v99 = 16;
LABEL_49:
      sub_261D6751C(v98, v99, 2, v96, v97);
      __break(1u);
      return;
    }
  }

  v43 = v24;
  v44 = sub_261D86494();
  v45 = sub_261D866A4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v117[0] = v47;
    *v46 = 136315138;
    v48 = [v43 targetTask];
    v118 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF43F0, &unk_261D87DB8);
    v49 = sub_261D868D4();
    v51 = v50;

    v52 = sub_261D8464C(v49, v51, v117);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_261D56000, v44, v45, "Should have resolved targetTask into a reminder. {targetTask: %s}", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x26671EBF0](v47, -1, -1);
    MEMORY[0x26671EBF0](v46, -1, -1);
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CD4110]) initWithCode:4 userActivity:0];
  (a3)[2](a3, v53);
}

uint64_t sub_261D67174()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D671AC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261D67234()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_261D67278(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  sub_261D86154();
  sub_261D86484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF44B0, &qword_261D87DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_261D869D4();
  v5 = sub_261D86504();

  *(inited + 48) = v5;
  v6 = sub_261D70588(inited);
  swift_setDeallocating();
  sub_261D677BC(inited + 32);
  MEMORY[0x26671DF50](0xD00000000000001CLL, 0x8000000261D8D420, v6, 0, 1);

  if (qword_27FEF3F60 != -1)
  {
    swift_once();
  }

  v7 = sub_261D864A4();
  __swift_project_value_buffer(v7, qword_27FEF4CF0);

  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    v12 = sub_261D869D4();
    v14 = sub_261D8464C(v12, v13, &v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_261D864D4();
    v17 = sub_261D8464C(v15, v16, &v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_261D56000, v8, v9, "%{public}s; UserInfo=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v11, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);
  }
}

void sub_261D6751C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;

  v7 = sub_261D86494();
  v8 = sub_261D866B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446722;
    v11 = sub_261D869D4();
    v13 = sub_261D8464C(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_261D864D4();
    v16 = v5;
    v17 = sub_261D8464C(v14, v15, &v21);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2082;
    v18 = sub_261D864D4();
    v20 = sub_261D8464C(v18, v19, &v21);
    v5 = v16;

    *(v9 + 24) = v20;
    _os_log_impl(&dword_261D56000, v7, v8, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v10, -1, -1);
    MEMORY[0x26671EBF0](v9, -1, -1);
  }

  if (v5)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_261D67748(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_261D864A4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_261D864B4();
}

uint64_t sub_261D677BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF44B8, &qword_261D87DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261D67824()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF44C0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF44C0);
  if (qword_27FEF3F68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D678EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v14 = a5(v13);
  v15 = swift_allocObject();
  v15[2] = sub_261D5F5B8;
  v15[3] = v12;
  v15[4] = a7;
  v15[5] = a5;
  v15[6] = a6;
  v18[4] = sub_261D67D8C;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_261D67D9C;
  v18[3] = &block_descriptor;
  v16 = _Block_copy(v18);
  v17 = a7;

  [v14 requestAccessForEntityType:0 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_261D67A34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_261D67A6C(char a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    v8 = a2;
    if (qword_27FEF3F80 != -1)
    {
      swift_once();
    }

    v9 = sub_261D864A4();
    __swift_project_value_buffer(v9, qword_27FEF44C0);
    v10 = a2;
    v11 = sub_261D86494();
    v12 = sub_261D866A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_261D86BA4();
      v17 = sub_261D8464C(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_261D56000, v11, v12, "Error requesting permission for CNContactStore {error: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26671EBF0](v14, -1, -1);
      MEMORY[0x26671EBF0](v13, -1, -1);
    }

    a3(0);
  }

  else if (a1)
  {
    v18 = a6();
    v23 = sub_261D86884();

    a3(v23);
  }

  else
  {
    if (qword_27FEF3F80 != -1)
    {
      swift_once();
    }

    v19 = sub_261D864A4();
    __swift_project_value_buffer(v19, qword_27FEF44C0);
    v20 = sub_261D86494();
    v21 = sub_261D866A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261D56000, v20, v21, "Permission not granted for accessing CNContactStore {granted: false}", v22, 2u);
      MEMORY[0x26671EBF0](v22, -1, -1);
    }

    a3(0);
  }
}

uint64_t sub_261D67D44()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_261D67D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D67E2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
  swift_allocObject();
  return sub_261D86464();
}

void *_s25RemindersIntentsFramework32TTRContactRepresentationResolverVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for TTRContactRepresentationResolver(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *assignWithTake for TTRContactRepresentationResolver(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261D67FDC()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF44D8);
  v1 = __swift_project_value_buffer(v0, qword_27FEF44D8);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D680A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_261D68158;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);

  [v3 getDeliveredNotificationsWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_261D68158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_261D597EC(0, &qword_27FEF4500, 0x277CE1F78);
  v3 = sub_261D865D4();

  v2(v3);
}

uint64_t sub_261D681DC(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v67 = a4;
  v68 = a3;
  v66 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF44F8, &qword_261D87F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - v6;
  v8 = sub_261D86274();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4690, &qword_261D87F08);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  v89 = sub_261D863C4();
  v78 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v77 = &v59 - v21;
  if (a1 >> 62)
  {
LABEL_34:
    v22 = sub_261D86954();
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_3:
      v79 = v11;
      v80 = v14;
      v11 = 0;
      v86 = a1 & 0xFFFFFFFFFFFFFF8;
      v87 = a1 & 0xC000000000000001;
      v83 = (v9 + 48);
      v75 = (v9 + 16);
      v76 = (v9 + 32);
      v74 = (v9 + 88);
      v73 = *MEMORY[0x277D450B8];
      v71 = *MEMORY[0x277D450B0];
      v69 = *MEMORY[0x277D450C0];
      v65 = *MEMORY[0x277D45090];
      v64 = *MEMORY[0x277D45098];
      v63 = *MEMORY[0x277D450D0];
      v72 = (v9 + 8);
      v82 = (v78 + 56);
      v70 = (v9 + 96);
      v23 = (v78 + 32);
      v81 = (v78 + 48);
      v62 = *MEMORY[0x277D450A0];
      v61 = *MEMORY[0x277D450A8];
      v60 = *MEMORY[0x277D450C8];
      v90 = MEMORY[0x277D84F90];
      v84 = v22;
      v85 = a1;
      while (1)
      {
        if (v87)
        {
          v24 = MEMORY[0x26671E4C0](v11, a1, v20);
        }

        else
        {
          if (v11 >= *(v86 + 16))
          {
            goto LABEL_33;
          }

          v24 = *(a1 + 8 * v11 + 32);
        }

        a1 = v24;
        v25 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v26 = [v24 request];
        v27 = [v26 content];

        v28 = v27;
        sub_261D86264();
        if ((*v83)(v7, 1, v8) == 1)
        {
          break;
        }

        v14 = v80;
        (*v76)(v80, v7, v8);
        v29 = v79;
        (*v75)(v79, v14, v8);
        v30 = (*v74)(v29, v8);
        if (v30 != v73)
        {
          if (v30 == v71 || v30 == v69 || v30 == v65 || v30 == v64 || v30 == v63)
          {
            v14 = v72;
            v32 = *v72;
            (*v72)(v80, v8);

            v32(v79, v8);
          }

          else
          {
            if (v30 != v62 && v30 != v61 && v30 != v60)
            {
              result = sub_261D86B74();
              __break(1u);
              return result;
            }

            (*v72)(v80, v8);
          }

          goto LABEL_20;
        }

        (*v72)(v14, v8);

        (*v70)(v29, v8);
        v9 = v89;
        (*v23)(v17, v29, v89);
        v31 = 0;
LABEL_21:
        (*v82)(v17, v31, 1, v9);

        if ((*v81)(v17, 1, v9) == 1)
        {
          sub_261D646F8(v17, &unk_27FEF4690, &qword_261D87F08);
        }

        else
        {
          v33 = *v23;
          v14 = v77;
          (*v23)(v77, v17, v9);
          v33(v88, v14, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_261D843C0(0, *(v90 + 2) + 1, 1, v90);
          }

          v35 = *(v90 + 2);
          v34 = *(v90 + 3);
          v9 = v35 + 1;
          if (v35 >= v34 >> 1)
          {
            v90 = sub_261D843C0((v34 > 1), v35 + 1, 1, v90);
          }

          v36 = v89;
          v37 = v90;
          *(v90 + 2) = v9;
          v33(&v37[((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v35], v88, v36);
        }

        ++v11;
        a1 = v85;
        if (v25 == v84)
        {
          goto LABEL_36;
        }
      }

      sub_261D646F8(v7, &qword_27FEF44F8, &qword_261D87F00);
LABEL_20:
      v31 = 1;
      v9 = v89;
      goto LABEL_21;
    }
  }

  v90 = MEMORY[0x277D84F90];
LABEL_36:
  v38 = v90;
  v39 = sub_261D868C4();
  v40 = v39;
  v41 = v39 >> 62;
  if (v39 >> 62)
  {
    v42 = sub_261D86954();
  }

  else
  {
    v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 != v38[2])
  {
    if (qword_27FEF3F88 != -1)
    {
      swift_once();
    }

    v43 = sub_261D864A4();
    __swift_project_value_buffer(v43, qword_27FEF44D8);

    v44 = sub_261D86494();
    v45 = sub_261D866A4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134218240;
      if (v41)
      {
        v47 = sub_261D86954();
      }

      else
      {
        v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v46 + 4) = v47;

      *(v46 + 12) = 2048;
      *(v46 + 14) = v38[2];

      _os_log_impl(&dword_261D56000, v44, v45, "Unable to fetch some reminders. reminders count doesn't match with reminderIDs count. {notificationIdentifiers.count: %ld, reminders.count: %ld}", v46, 0x16u);
      MEMORY[0x26671EBF0](v46, -1, -1);
    }

    else
    {
    }
  }

  if (qword_27FEF3F88 != -1)
  {
    swift_once();
  }

  v48 = sub_261D864A4();
  __swift_project_value_buffer(v48, qword_27FEF44D8);

  v49 = sub_261D86494();
  v50 = sub_261D866C4();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v91[0] = v52;
    *v51 = 134218242;
    if (v41)
    {
      v53 = sub_261D86954();
    }

    else
    {
      v53 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v51 + 4) = v53;

    *(v51 + 12) = 2080;
    v54 = MEMORY[0x26671E0C0](v38, v89);
    v56 = v55;

    v57 = sub_261D8464C(v54, v56, v91);

    *(v51 + 14) = v57;
    _os_log_impl(&dword_261D56000, v49, v50, "Retrieved %ld reminders from notification center {notificationIdentifiers: %s}", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x26671EBF0](v52, -1, -1);
    MEMORY[0x26671EBF0](v51, -1, -1);
  }

  else
  {
  }

  v68(v40);
}

uint64_t sub_261D68DCC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v35 = v4;
  *(v4 + 16) = MEMORY[0x277D84F90];
  v6 = (v4 + 16);
  result = swift_allocObject();
  v8 = result;
  *(result + 16) = v5;
  if (a1 >> 62)
  {
    result = sub_261D86954();
    v9 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = a1 & 0xC000000000000001;
  v12 = MEMORY[0x277D84F90];
  v36 = v8;
  v37 = a1 & 0xC000000000000001;
  do
  {
    if (v11)
    {
      v14 = MEMORY[0x26671E4C0](v10, a1);
    }

    else
    {
      v14 = *(a1 + 8 * v10 + 32);
    }

    v15 = v14;
    v16 = sub_261D867E4();
    if (v16)
    {
      v13 = v16;
      MEMORY[0x26671E090]();
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261D865F4();
        v11 = v37;
      }

      sub_261D86604();
    }

    else
    {
      v17 = a1;
      v18 = [v15 title];
      v19 = [v18 spokenPhrase];

      v20 = sub_261D86534();
      v22 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 16) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_261D842B4(0, *(v12 + 2) + 1, 1, v12);
        *(v8 + 16) = v12;
      }

      v25 = *(v12 + 2);
      v24 = *(v12 + 3);
      if (v25 >= v24 >> 1)
      {
        v12 = sub_261D842B4((v24 > 1), v25 + 1, 1, v12);
      }

      *(v12 + 2) = v25 + 1;
      v26 = &v12[16 * v25];
      *(v26 + 4) = v20;
      *(v26 + 5) = v22;
      v8 = v36;
      *(v36 + 16) = v12;
      a1 = v17;
      v11 = v37;
    }

    ++v10;
  }

  while (v9 != v10);
LABEL_19:
  v27 = swift_allocObject();
  v27[2] = v35;
  v27[3] = v8;
  v27[4] = a2;
  v27[5] = a3;
  v28 = v34[6];
  v29 = v34[7];
  __swift_project_boxed_opaque_existential_1(v34 + 3, v28);
  v30 = swift_allocObject();
  v30[2] = v34;
  v30[3] = sub_261D6954C;
  v30[4] = v27;
  v31 = *(v29 + 8);

  v31(sub_261D69598, v30, v28, v29);
}

uint64_t sub_261D6912C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  v8 = sub_261D695A4(v7, (a2 + 16), (a3 + 16));

  if (qword_27FEF3F88 != -1)
  {
    swift_once();
  }

  v9 = sub_261D864A4();
  __swift_project_value_buffer(v9, qword_27FEF44D8);

  v10 = sub_261D86494();
  v11 = sub_261D866C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 134218242;
    if (v8 >> 62)
    {
      v14 = sub_261D86954();
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v14;

    *(v12 + 12) = 2080;
    v15 = sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
    v16 = MEMORY[0x26671E0C0](v8, v15);
    v18 = sub_261D8464C(v16, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_261D56000, v10, v11, "Got %ld matchingReminders matching searchTerms {matchingReminders: %s}", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26671EBF0](v13, -1, -1);
    MEMORY[0x26671EBF0](v12, -1, -1);
  }

  else
  {
  }

  a4(v8);
}

uint64_t sub_261D69340()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_261D693A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D693DC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x26671E4C0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_261D86954();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_261D69504()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261D69558()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D695A4(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v26 = a3;
  v6 = a1;
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D86954())
  {
    swift_beginAccess();
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v8 = 0;
    v29 = v6 & 0xFFFFFFFFFFFFFF8;
    v30 = v6 & 0xC000000000000001;
    v28 = v6 + 32;
    v24 = v6;
    v25 = a2;
    v23 = i;
    while (1)
    {
      if (v30)
      {
        v9 = MEMORY[0x26671E4C0](v8, v6);
      }

      else
      {
        if (v8 >= *(v29 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v28 + 8 * v8);
      }

      v32 = v9;
      v10 = __OFADD__(v8, 1);
      v11 = v8 + 1;
      if (v10)
      {
        break;
      }

      v31 = v11;
      v12 = *a2;

      v13 = [v32 objectID];
      v33 = v13;
      MEMORY[0x28223BE20](v13);
      v22[2] = &v33;
      v14 = sub_261D693DC(sub_261D698AC, v22, v12);

      if (v14)
      {
LABEL_5:
        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      else
      {
        v15 = *v26;
        v16 = *(*v26 + 16);
        if (v16)
        {
          v27 = v4;

          v6 = 0;
          v17 = v15 + 40;
          v4 = v32;
          while (v6 < *(v15 + 16))
          {

            v18 = [v4 titleAsString];
            if (v18)
            {
              v19 = v18;
              sub_261D86534();
              a2 = v20;

              v4 = v32;
              LOBYTE(v19) = sub_261D86554();

              if (v19)
              {

                v4 = v27;
                v6 = v24;
                a2 = v25;
                i = v23;
                goto LABEL_5;
              }
            }

            else
            {
            }

            ++v6;
            v17 += 16;
            if (v16 == v6)
            {

              v4 = v27;
              v6 = v24;
              a2 = v25;
              i = v23;
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_6:
      v8 = v31;
      if (v31 == i)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D69930()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4508);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4508);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D699F8(uint64_t a1)
{
  v2 = v1;
  if (qword_27FEF3F90 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4508);
  v5 = sub_261D86494();
  v6 = sub_261D866C4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_261D56000, v5, v6, "[TTRIntentsHandlerStoreDataSource] Using the backup intents handler data source", v7, 2u);
    MEMORY[0x26671EBF0](v7, -1, -1);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_261D69AE8(uint64_t a1, void (*a2)(uint64_t))
{
  sub_261D86254();
  v3 = [objc_opt_self() defaultFetchOptions];
  v4 = sub_261D86244();

  a2(v4);
}

void *sub_261D69D2C(unint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    if (!sub_261D86954())
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 16);
  v4 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
  v5 = sub_261D865C4();
  v22[0] = 0;
  v6 = [v3 fetchRemindersWithObjectIDs:v5 error:v22];

  v7 = v22[0];
  if (v6)
  {
    sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
    sub_261D6C624();
    v8 = sub_261D864C4();
    v9 = v7;

    v10 = sub_261D84C08(v8);

    return v10;
  }

  v12 = v22[0];
  v13 = sub_261D85C64();

  swift_willThrow();
  if (qword_27FEF3F90 != -1)
  {
    swift_once();
  }

  v14 = sub_261D864A4();
  __swift_project_value_buffer(v14, qword_27FEF4508);

  v15 = sub_261D86494();
  v16 = sub_261D866A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22[0] = v18;
    *v17 = 136315138;
    v19 = MEMORY[0x26671E0C0](a1, v4);
    v21 = sub_261D8464C(v19, v20, v22);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_261D56000, v15, v16, "Error fetching reminders by objetIDs {objectIDs: %s}", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26671EBF0](v18, -1, -1);
    MEMORY[0x26671EBF0](v17, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_261D69FD4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = sub_261D86224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  if (*(a1 + 16) <= 1uLL)
  {
    sub_261D86254();
    sub_261D861E4();
    a2(v10);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    sub_261D810E0(a1, sub_261D6C6D4, v11);
  }
}

uint64_t sub_261D6A318(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_261D86224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_261D86204();
  a3(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_261D6A41C(unint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v84 = a3;
  v83 = a2;
  v103[1] = *MEMORY[0x277D85DE8];
  v82 = sub_261D86224();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_261D86194();
  v95 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v89 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v98 = &v79 - v12;
  v102 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v13 = sub_261D86954();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_3:
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = a1 & 0xC000000000000001;
        v16 = *MEMORY[0x277D45270];
        v90 = *MEMORY[0x277D44F10];
        v91 = v16;
        v96 = (v95 + 32);
        v97 = (v95 + 104);
        v88 = 0x8000000261D8D570;
        v87 = *MEMORY[0x277D45060];
        v6 = MEMORY[0x277D84F90];
        v86 = *MEMORY[0x277D44F40];
        v99 = MEMORY[0x277D84F90];
        v92 = a1 & 0xC000000000000001;
        v93 = v13;
        v94 = a1;
        while (1)
        {
          if (v15)
          {
            v17 = MEMORY[0x26671E4C0](v14, a1, v11);
          }

          else
          {
            v17 = *(a1 + 8 * v14 + 32);
          }

          v18 = v17;
          v19 = sub_261D86674();
          if (v19)
          {
            v20 = v19;
            MEMORY[0x26671E090]();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_261D865F4();
            }

            sub_261D86604();

            v99 = v102;
            goto LABEL_7;
          }

          v21 = [v18 title];
          v22 = [v21 spokenPhrase];

          v23 = sub_261D86534();
          v25 = v24;

          v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
          v27 = v98;
          *v98 = v23;
          *(v27 + 1) = v25;
          v28 = sub_261D862B4();
          (*(*(v28 - 8) + 104))(&v27[v26], v91, v28);
          v29 = *v97;
          (*v97)(v27, v90, v100);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_261D8428C(0, v6[2] + 1, 1, v6);
          }

          v31 = v6[2];
          v30 = v6[3];
          if (v31 >= v30 >> 1)
          {
            v6 = sub_261D8428C((v30 > 1), v31 + 1, 1, v6);
          }

          v6[2] = v31 + 1;
          v32 = (*(v95 + 80) + 32) & ~*(v95 + 80);
          v33 = v6;
          v34 = v6 + v32;
          v35 = *(v95 + 72);
          v36 = &v34[v35 * v31];
          v37 = *(v95 + 32);
          v37(v36, v98, v100);
          v38 = [v18 title];
          v39 = [v38 vocabularyIdentifier];

          if (v39)
          {
            v40 = sub_261D86534();
            v42 = v41;

            if (v40 == 0xD000000000000011 && v88 == v42)
            {

LABEL_24:
              v44 = sub_261D861D4();
              v45 = v89;
              (*(*(v44 - 8) + 104))(v89, v87, v44);
              v29(v45, v86, v100);
              v47 = v33[2];
              v46 = v33[3];
              if (v47 >= v46 >> 1)
              {
                v33 = sub_261D8428C((v46 > 1), v47 + 1, 1, v33);
              }

              a1 = v94;

              v33[2] = v47 + 1;
              v48 = v33 + v32 + v47 * v35;
              v6 = v33;
              v37(v48, v89, v100);
              goto LABEL_6;
            }

            v43 = sub_261D86B84();

            if (v43)
            {
              goto LABEL_24;
            }
          }

          v6 = v33;
          a1 = v94;
LABEL_6:
          v15 = v92;
          v13 = v93;
LABEL_7:
          if (v13 == ++v14)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
      goto LABEL_61;
    }
  }

  v6 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
LABEL_29:
  v5 = v99;
  if (!(v99 >> 62))
  {
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_58:
    v56 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    if (v6[2])
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_57:
  if (!sub_261D86954())
  {
    goto LABEL_58;
  }

LABEL_31:
  v3 = *(v85 + 16);
  v49 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);

  v50 = sub_261D865C4();

  v103[0] = 0;
  v51 = [v3 fetchListsWithObjectIDs:v50 error:v103];

  v52 = v103[0];
  v98 = v49;
  if (!v51)
  {
    v62 = v103[0];
    v63 = sub_261D85C64();

    swift_willThrow();
    v4 = MEMORY[0x277D84F90];
LABEL_48:
    if (qword_27FEF3F90 != -1)
    {
      swift_once();
    }

    v65 = sub_261D864A4();
    __swift_project_value_buffer(v65, qword_27FEF4508);
    v66 = sub_261D86494();
    v67 = sub_261D866A4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v103[0] = v69;
      *v68 = 136315138;

      v70 = v4;
      v71 = MEMORY[0x26671E0C0](v99, v98);
      v73 = v72;

      v74 = sub_261D8464C(v71, v73, v103);

      *(v68 + 4) = v74;
      v4 = v70;
      _os_log_impl(&dword_261D56000, v66, v67, "Error fetching lists by objetIDs {objectIDs: %s}", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x26671EBF0](v69, -1, -1);
      MEMORY[0x26671EBF0](v68, -1, -1);
    }

    v56 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
  sub_261D6C624();
  v53 = sub_261D864C4();
  v54 = v52;

  v4 = sub_261D84BF4(v53);

  if (!(v5 >> 62))
  {
    v55 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

LABEL_61:
  v55 = sub_261D86954();
LABEL_34:
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v96 = v4;
    v97 = v6;
    v103[0] = MEMORY[0x277D84F90];

    sub_261D86A34();
    if (v55 < 0)
    {
      __break(1u);
    }

    v57 = 0;
    v6 = (v5 & 0xC000000000000001);
    v100 = v5 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v6)
      {
        v59 = MEMORY[0x26671E4C0](v57, v5);
      }

      else
      {
        if (v57 >= *(v100 + 16))
        {
          goto LABEL_56;
        }

        v59 = *(v5 + 8 * v57 + 32);
      }

      v60 = v59;
      v101[0] = 0;
      if (![v3 fetchCustomSmartListWithObjectID:v59 error:v101])
      {
        v64 = v101[0];

        v63 = sub_261D85C64();

        swift_willThrow();

        v4 = v96;
        v6 = v97;
        goto LABEL_48;
      }

      v61 = v101[0];

      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      ++v57;
      v5 = v99;
    }

    while (v58 != v55);

    v56 = v103[0];
    v4 = v96;
    v6 = v97;
    if (v97[2])
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_53:
  if (v6[2])
  {
LABEL_54:
    v75 = swift_allocObject();
    v76 = v84;
    v75[2] = v83;
    v75[3] = v76;
    v75[4] = v4;
    v75[5] = v6;
    v75[6] = v56;

    sub_261D810E0(v6, sub_261D6C614, v75);
  }

LABEL_59:

  v78 = v80;
  sub_261D86204();
  v83(v78);
  (*(v81 + 8))(v78, v82);
}

uint64_t sub_261D6AED8(unint64_t a1, unint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_261D86224();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;

  sub_261D6DB80(v15);
  sub_261D7A248(a6, v19);

  v19 = a2;

  sub_261D6DB68(v16);
  sub_261D86204();
  a3(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_261D6B03C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v13[4] = sub_261D6C5A0;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_261D6B964;
  v13[3] = &block_descriptor_1;
  v10 = _Block_copy(v13);

  [v8 enumerateAllListsWithBlock_];
  _Block_release(v10);
  swift_beginAccess();

  a3(v11);
}

void sub_261D6B1B8(char *a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v8 = a1;
  if (![a1 isShared])
  {
    return;
  }

  v9 = [v8 sharedOwnerAddress];
  if (v9)
  {
    v10 = v9;
    v11 = sub_261D86534();
    v13 = v12;

    if (sub_261D6B684(v11, v13, a3))
    {
    }

    else
    {
      v14 = sub_261D6B684(v11, v13, a4);

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if ([v8 isShared])
    {
      swift_beginAccess();
      v15 = v8;
      MEMORY[0x26671E090]();
      if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261D865F4();
      }

      sub_261D86604();
      swift_endAccess();
    }
  }

LABEL_10:
  v16 = [v8 shareeContext];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = [v16 sharees];

  sub_261D597EC(0, &qword_27FEF4530, 0x277D447E8);
  v19 = sub_261D865D4();

  if (v19 >> 62)
  {
LABEL_34:
    v20 = sub_261D86954();
    v43 = a4;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = a4;
    if (v20)
    {
LABEL_13:
      a4 = 0;
      v44 = MEMORY[0x277D84F90];
      v41 = v8;
      v42 = a5;
      while (2)
      {
        v8 = a4;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x26671E4C0](v8, v19);
          }

          else
          {
            if (v8 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v21 = *(v19 + 8 * v8 + 32);
          }

          a5 = v21;
          a4 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v22 = [v21 status];
          if (v22 > 5)
          {
            if (qword_27FEF3F90 != -1)
            {
              swift_once();
            }

            v34 = sub_261D864A4();
            __swift_project_value_buffer(v34, qword_27FEF4508);
            v35 = MEMORY[0x277D84F90];
            v36 = sub_261D70458(MEMORY[0x277D84F90]);
            v37 = sub_261D70458(v35);
            sub_261D6751C("unknown status", 14, 2, v36, v37);
            __break(1u);
            return;
          }

          if (((1 << v22) & 0x1D) == 0)
          {
            v23 = [a5 address];
            if (v23)
            {
              break;
            }
          }

          ++v8;
          if (a4 == v20)
          {
            v8 = v41;
            a5 = v42;
            goto LABEL_36;
          }
        }

        v39 = v23;
        v24 = [v23 rem_removingMailto];

        v25 = sub_261D86534();
        v38 = v26;
        v40 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_261D842B4(0, *(v44 + 2) + 1, 1, v44);
        }

        v29 = *(v44 + 2);
        v28 = *(v44 + 3);
        if (v29 >= v28 >> 1)
        {
          v44 = sub_261D842B4((v28 > 1), v29 + 1, 1, v44);
        }

        *(v44 + 2) = v29 + 1;
        v30 = &v44[16 * v29];
        *(v30 + 4) = v40;
        *(v30 + 5) = v38;
        v8 = v41;
        a5 = v42;
        if (a4 != v20)
        {
          continue;
        }

        goto LABEL_36;
      }
    }
  }

  v44 = MEMORY[0x277D84F90];
LABEL_36:

  v31 = sub_261D6BFA0(v44);

  if (sub_261D6B77C(v31, a3))
  {
    v32 = sub_261D6B77C(v31, v43);

    if (v32)
    {
      return;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v33 = v8;
  MEMORY[0x26671E090]();
  if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_261D865F4();
  }

  sub_261D86604();
  swift_endAccess();
}

uint64_t sub_261D6B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_261D86BC4();
  sub_261D86574();
  v6 = sub_261D86BD4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_261D86B84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_261D6B77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_261D86BC4();

      sub_261D86574();
      v19 = sub_261D86BD4();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_261D86B84() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_261D6B964(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_261D6B9D8()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v14[0] = 0;
  result = [v1 fetchDefaultListWithError_];
  if (v14[0])
  {
    v3 = result;
    v4 = v14[0];

    swift_willThrow();
    if (qword_27FEF3F90 != -1)
    {
      swift_once();
    }

    v5 = sub_261D864A4();
    __swift_project_value_buffer(v5, qword_27FEF4508);
    v6 = v4;
    v7 = sub_261D86494();
    v8 = sub_261D866A4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_261D86BA4();
      v13 = sub_261D8464C(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_261D56000, v7, v8, "Error fetching default list %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26671EBF0](v10, -1, -1);
      MEMORY[0x26671EBF0](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_261D6BBC0(uint64_t a1)
{
  v14[0] = a1;
  v1 = sub_261D862E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261D86394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v14 - v10;
  sub_261D863A4();
  sub_261D862D4();
  sub_261D862C4();
  (*(v2 + 8))(v4, v1);
  sub_261D86384();
  (*(v6 + 8))(v8, v5);
  v12 = sub_261D86374();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  (v14[0])(v11);
  return sub_261D6C4B8(v11);
}

uint64_t sub_261D6BE44()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_261D6BFA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26671E0F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_261D7AB70(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_261D6C038(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = sub_261D86224();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  if (*(a1 + 16) < 2uLL)
  {
    sub_261D86254();

    sub_261D861E4();
    a3(v11);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_261D6C6C4;
    *(v13 + 24) = v12;

    sub_261D810E0(a1, sub_261D6C6CC, v13);
  }
}

uint64_t sub_261D6C3D0(void (*a1)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4520, &qword_261D87F68);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_261D87F10;
  v3 = *MEMORY[0x277D44BC0];
  v4 = *MEMORY[0x277D44BA8];
  *(v2 + 32) = *MEMORY[0x277D44BC0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277D44B80];
  v6 = *MEMORY[0x277D44BA0];
  *(v2 + 48) = *MEMORY[0x277D44B80];
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277D44B88];
  *(v2 + 64) = *MEMORY[0x277D44B88];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  a1(v2);
}

uint64_t sub_261D6C4B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261D6C520()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D6C558()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D6C5C4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_261D6C624()
{
  result = qword_27FEF4760;
  if (!qword_27FEF4760)
  {
    sub_261D597EC(255, &qword_27FEF44F0, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4760);
  }

  return result;
}

uint64_t sub_261D6C68C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D6C6E0(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v27 = a1 + 32;
  v3 = &qword_27FEF4598;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_261D86954();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_261D86954();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_261D86954();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_261D869F4();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_261D6E618(&qword_27FEF45A0, v3, &unk_261D87FE0);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_261D87FE0);
        v18 = v3;
        v19 = sub_261D84D94(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_261D86954();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_261D6C9C4(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  sub_261D86224();
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = &qword_27FEF42B0;
  while (1)
  {
    v5 = sub_261D86214();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = sub_261D86954();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_261D86954();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_261D86954();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_261D869F4();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_261D6E618(&qword_27FEF4558, v3, qword_261D87C80);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, qword_261D87C80);
        v19 = v3;
        v20 = sub_261D84D94(v31, i, v6);
        v22 = *v21;
        (v20)(v31, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v32);
      v25 = v23 + v32;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v16 = v12;
  result = sub_261D86954();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_261D6CCF8(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  sub_261D86224();
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = &qword_27FEF4548;
  while (1)
  {
    v5 = sub_261D861F4();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = sub_261D86954();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_261D86954();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_261D86954();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_261D869F4();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_261D6E618(&qword_27FEF4550, v3, &unk_261D87FA0);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_261D87FA0);
        v19 = v3;
        v20 = sub_261D84D94(v31, i, v6);
        v22 = *v21;
        (v20)(v31, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_261D597EC(0, &qword_27FEF4540, 0x277D447F8);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v32);
      v25 = v23 + v32;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v16 = v12;
  result = sub_261D86954();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_261D6D02C(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v41 = a5;
  v51 = sub_261D86194();
  v10 = *(v51 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v51);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v14 = sub_261D86954();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = a3;
  v45 = a4;
  v40 = a2;
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    v15 = 0;
    v52 = a1 & 0xC000000000000001;
    v49 = *MEMORY[0x277D45270];
    v48 = *MEMORY[0x277D44F10];
    v46 = v10 + 32;
    v47 = (v10 + 104);
    v16 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
    do
    {
      if (v52)
      {
        v18 = MEMORY[0x26671E4C0](v15, a1, v11);
      }

      else
      {
        v18 = *(a1 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = sub_261D867E4();
      if (v20)
      {
        v17 = v20;
        MEMORY[0x26671E090]();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261D865F4();
        }

        sub_261D86604();

        v50 = v54;
      }

      else
      {
        v21 = [v19 title];
        v22 = [v21 spokenPhrase];

        v23 = sub_261D86534();
        v25 = v24;

        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
        *v13 = v23;
        v13[1] = v25;
        v27 = sub_261D862B4();
        (*(*(v27 - 8) + 104))(v13 + v26, v49, v27);
        (*v47)(v13, v48, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_261D8428C(0, v16[2] + 1, 1, v16);
        }

        v29 = v16[2];
        v28 = v16[3];
        if (v29 >= v28 >> 1)
        {
          v16 = sub_261D8428C((v28 > 1), v29 + 1, 1, v16);
        }

        v16[2] = v29 + 1;
        (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v13, v51);
      }

      ++v15;
    }

    while (v14 != v15);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
  }

  v31 = v42;
  v30 = v43;
  v32 = v41;
  v33 = (*(v42 + 8))(v50, v41, v42, v11);
  if (v16[2])
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4580, &qword_261D87FD0);
    MEMORY[0x28223BE20](v34);
    *(&v39 - 4) = v32;
    *(&v39 - 3) = v31;
    v35 = v40;
    *(&v39 - 2) = v30;
    *(&v39 - 1) = v35;
    v36 = sub_261D80F84(sub_261D6E594, (&v39 - 6), v16);

    v53 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4588, &qword_261D87FD8);
    sub_261D6E618(&qword_27FEF4590, &qword_27FEF4588, &qword_261D87FD8);
    sub_261D86414();

    v37 = swift_allocObject();
    v37[2] = v44;
    v37[3] = v45;
    v37[4] = v33;

    v38 = sub_261D863F4();
    sub_261D86434();
  }

  else
  {

    v44(v33);
  }
}

uint64_t sub_261D6D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4438, &qword_261D88170);
  v9 = sub_261D86194();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261D87AE0;
  (*(v10 + 16))(v12 + v11, a1, v9);

  sub_261D6DB98(v12);
  v13 = sub_261D6D698(a2, a3, a4);

  *a5 = v13;
  return result;
}

uint64_t sub_261D6D698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4580, &qword_261D87FD0);
  swift_allocObject();
  return sub_261D86464();
}

uint64_t sub_261D6D704(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_261D6C6E0(*a1);

  sub_261D6DCDC(v6, sub_261D6E1B4);
  a2(a4);
}

uint64_t sub_261D6D7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_261D5F5B8;
  *(v14 + 24) = v13;
  v15 = *(a8 + 24);

  v15(a6, sub_261D6E678, v14, a7, a8);
}

uint64_t sub_261D6D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(a7 + 80);

  v12(sub_261D6E538, v11, a6, a7);
}

uint64_t sub_261D6D9B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_allocObject();
  return sub_261D86464();
}

uint64_t sub_261D6DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261D5F5B8;
  *(v12 + 24) = v11;
  v13 = *(a7 + 88);

  v13(sub_261D6E56C, v12, a6, a7);
}

uint64_t sub_261D6DAF0(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = sub_261D6C9C4(*a1);
  v5 = sub_261D6CCF8(v3);
  a2(v4, v5);
}

uint64_t sub_261D6DB98(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_261D8428C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_261D86194();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261D6DCDC(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_261D86954();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_261D86954();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_261D6DDD4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261D6DDD4(uint64_t a1, char a2)
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

  sub_261D86954();
LABEL_9:
  result = sub_261D869F4();
  *v2 = result;
  return result;
}

uint64_t sub_261D6DE74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF4550, &qword_27FEF4548, &unk_261D87FA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4548, &unk_261D87FA0);
            v9 = sub_261D84D94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261D597EC(0, &qword_27FEF4540, 0x277D447F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261D6E014(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF4558, &qword_27FEF42B0, qword_261D87C80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42B0, qword_261D87C80);
            v9 = sub_261D84D94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261D6E1B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF45A0, &qword_27FEF4598, &unk_261D87FE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4598, &unk_261D87FE0);
            v9 = sub_261D84D94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261D6E354(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF4578, &qword_27FEF4570, &unk_261D87FC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4570, &unk_261D87FC0);
            v9 = sub_261D84D94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261D6E500()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D6E5B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D6E618(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_261D6E6B0()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF45A8);
  v1 = __swift_project_value_buffer(v0, qword_27FEF45A8);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}