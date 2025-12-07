uint64_t sub_226B4DA00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B44534(a1);
}

uint64_t sub_226B4DA94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226B451A4(a1, a2);
}

double sub_226B4DB38@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226B4DB8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v1 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D71840;
  v4 = (v3 + v2);
  v5 = *v0;
  v6 = v0[1];
  *v4 = v5;
  v4[1] = v6;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  v7 = sub_226B1ED68(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_226B4DCBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226B4DCDC, 0, 0);
}

uint64_t sub_226B4DCDC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_226B4DDBC;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v2, "bankConnect/pendingConsentProcessingTask", 40, 2, &unk_226D737B0, v1, v3);
}

uint64_t sub_226B4DDBC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_226B0BBD0;
  }

  else
  {

    v2 = sub_226B0BBB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B4DF6C(uint64_t a1)
{
  result = sub_226B4E6C8(&qword_27D7A6E60, type metadata accessor for BankConnectPendingConsentProcessingTask, &unk_226D73680);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectPendingConsentProcessingTask(uint64_t a1)
{
  result = qword_27D7A6EA0;
  if (!qword_27D7A6EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B4E010(uint64_t a1)
{
  result = sub_226B4E6C8(&qword_27D7A6E70, type metadata accessor for BankConnectPendingConsentProcessingTask, &unk_226D736CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B4E088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B4E10C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D682FC() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BankConnectPendingConsentProcessingTask(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226AD827C;

  return sub_226B49D88(a1, v1 + 16, v1 + v6, v1 + v9);
}

unint64_t sub_226B4E26C()
{
  result = qword_27D7A6E80;
  if (!qword_27D7A6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E80);
  }

  return result;
}

uint64_t sub_226B4E318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B4E3B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B4BD88(a1, v5, v4);
}

uint64_t sub_226B4E47C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B43B6C(a1, v5, v4);
}

uint64_t sub_226B4E528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226B4E5B8(uint64_t a1)
{
  sub_226B20350(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_226B4E644(uint64_t a1)
{
  *(a1 + 8) = sub_226B4E6C8(&qword_27D7A6EB0, type metadata accessor for BankConnectPendingConsentProcessingTask, &unk_226D736F8);
  result = sub_226B4E6C8(&qword_27D7A6EB8, type metadata accessor for BankConnectPendingConsentProcessingTask, &unk_226D737E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226B4E6C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B4E744(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC0, &unk_226D73820);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - v5;
  v6 = sub_226D6D4AC();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v53);
  v9 = (&v46 - v8);
  v10 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s7ChangesVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = (&v46 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED0, &unk_226D73830);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v46 - v19;
  v21 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = (&v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = (&v46 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = (&v46 - v28);
  sub_226AC40E8(v2, v58, &unk_27D7A7660, &unk_226D7B420);
  if (v59)
  {
    v48 = v2;
    v49 = a1;
    sub_226B4FB24(a1, v29, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v30 = *v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
    sub_226B4FBF4(v29 + *(v31 + 48), _s7ChangesVMa);
    sub_226C45EE0(v30);

    sub_226B4FC54(v58);
    v2 = v48;
    a1 = v49;
  }

  else
  {
    sub_226AC47B0(v58, &unk_27D7A7660, &unk_226D7B420);
  }

  v32 = type metadata accessor for ManagedExtractedOrderTracker(0);
  sub_226AC40E8(v2 + *(v32 + 20), v20, &qword_27D7A6ED0, &unk_226D73830);
  v33 = _s21NotificationSchedulerVMa(0);
  if ((*(*(v33 - 8) + 48))(v20, 1, v33) == 1)
  {
    return sub_226AC47B0(v20, &qword_27D7A6ED0, &unk_226D73830);
  }

  v52 = v12;
  v47 = v4;
  sub_226B4FB24(a1, v26, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
  sub_226B4FB8C(v26 + *(v35 + 48), v15, _s7ChangesVMa);
  v36 = v57;
  sub_226B4FB8C(v15, v57, _s7ChangesVMa);
  sub_226B4FB24(a1, v23, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  v37 = *v23;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
  sub_226B4FBF4(v23 + *(v38 + 48), _s7ChangesVMa);
  if (qword_281061980 != -1)
  {
    swift_once();
  }

  v39 = v53;
  v40 = __swift_project_value_buffer(v53, qword_281064538);
  sub_226AE532C(v40, v9);
  sub_226B4FB24(v40 + *(v39 + 48), v9 + *(v39 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
  v41 = v52;
  sub_226B4FB8C(v9 + *(v39 + 48), v52, type metadata accessor for OrderNotificationCenter.Continuation);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  v42 = v54;
  sub_226D6D46C();
  v43 = sub_226B837F4(v36, v37, v42);
  (*(v55 + 8))(v42, v56);
  if (v43 >> 62)
  {
    if (!sub_226D6EDFC())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    v44 = os_transaction_create();
    v58[0] = v43;
    v58[1] = 0;
    v58[2] = 0;
    v59 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6ED8, &qword_226D73848);
    v45 = v50;
    sub_226D6E7CC();
    (*(v51 + 8))(v45, v47);
  }

LABEL_11:

  sub_226B4FBF4(v41, type metadata accessor for OrderNotificationCenter.Continuation);
  sub_226B4FBF4(v36, _s7ChangesVMa);
  return sub_226B4FBF4(v20, _s21NotificationSchedulerVMa);
}

void sub_226B4EFDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v97 = a3;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = &v77 - v11;
  v105 = sub_226D67A8C();
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_226D6B73C();
  v13 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v102 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v22);
  v89 = &v77 - v23;
  v24 = sub_226D698EC();
  v25 = sub_226AE447C(v24);

  v110 = v25;
  v109[1] = sub_226D6987C();
  v80 = a1;
  v26 = [a1 merchantEmailDateSent];
  if (v26)
  {
    v27 = v26;
    sub_226D6D45C();

    v28 = *(v8 + 56);
    v29 = v21;
    v30 = 0;
  }

  else
  {
    v28 = *(v8 + 56);
    v29 = v21;
    v30 = 1;
  }

  v84 = v28;
  v28(v29, v30, 1, v7);
  sub_226AFD80C(v21, v89, &qword_27D7A8BE0, &unk_226D718F0);
  v95 = *(a2 + 16);
  if (!v95)
  {
    v90 = 0;
    v91 = 0;
LABEL_40:
    sub_226B38644(v110);

    sub_226D698FC();
    sub_226D6988C();
    v71 = v90;
    v72 = v91;
    if (v91)
    {
      v73 = v91;
      v74 = v71;
      sub_226D698DC();

      v72 = v91;
    }

    sub_226AC47B0(v89, &qword_27D7A8BE0, &unk_226D718F0);
    v75 = v72;
    v76 = v71;
    goto LABEL_44;
  }

  v31 = sub_226D67B3C();
  v32 = 0;
  v91 = 0;
  v90 = 0;
  v33 = *(v31 - 8);
  v103 = (v107 + 8);
  v79 = (v8 + 32);
  v82 = v8 + 56;
  v78 = (v8 + 48);
  v81 = (v8 + 8);
  v92 = (v13 + 8);
  v94 = a2 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v93 = *(v33 + 72);
  v83 = v7;
LABEL_8:
  sub_226D6B72C();
  v34 = sub_226D6B71C();
  if (v4)
  {
    (*v92)(v102, v96);
    sub_226AC47B0(v89, &qword_27D7A8BE0, &unk_226D718F0);

    v75 = v91;
    v76 = v90;
LABEL_44:
    sub_226B5074C(v75, v76);
    return;
  }

  v36 = v35;
  v101 = 0;
  v37 = v34;
  sub_226C25988(v109, v37);

  sub_226B04214(v38);
  v99 = v36;
  if ((v36 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_226D6EDBC();
    sub_226D6C02C();
    sub_226B509FC(&qword_27D7A6820, MEMORY[0x277CC81E0], MEMORY[0x277D85378]);
    sub_226D6E8DC();
    v36 = v109[2];
    v39 = v109[3];
    v40 = v109[4];
    v41 = v109[5];
    v42 = v109[6];
  }

  else
  {
    v43 = -1 << *(v36 + 32);
    v39 = (v36 + 56);
    v44 = ~v43;
    v45 = -v43;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v42 = (v46 & *(v36 + 56));

    v40 = v44;
    v41 = 0;
  }

  v100 = v32 + 1;
  v98 = v40;
  v47 = (v40 + 64) >> 6;
  v48 = v37;
  v107 = v37;
  if (v36 < 0)
  {
LABEL_22:
    v54 = sub_226D6EE2C();
    if (!v54)
    {
      goto LABEL_6;
    }

    v108 = v54;
    sub_226D6C02C();
    swift_dynamicCast();
    v53 = v109[0];
    v51 = v41;
    v52 = v42;
    if (!v109[0])
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v49 = v41;
    v50 = v42;
    v51 = v41;
    if (!v42)
    {
      break;
    }

LABEL_20:
    v52 = (v50 - 1) & v50;
    v53 = *(*(v36 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
    if (!v53)
    {
LABEL_6:
      sub_226AD3C20(v36);

      (*v92)(v102, v96);
      v32 = v100;
      v4 = v101;
LABEL_7:
      if (v32 == v95)
      {
        goto LABEL_40;
      }

      goto LABEL_8;
    }

LABEL_24:
    v106 = v42;
    v55 = v53;
    v56 = v104;
    sub_226D6C01C();
    v57 = sub_226D67A7C();
    (*v103)(v56, v105);

    if (v57)
    {
      v87 = v55;
      sub_226AD3C20(v36);
      if (v91)
      {
        v58 = [v90 dateSent];
        v59 = v86;
        sub_226D6D45C();

        v60 = *v79;
        v61 = v88;
        v62 = v83;
        (*v79)(v88, v59, v83);
        v84(v61, 0, 1, v62);
        v63 = v85;
        v60(v85, v61, v62);
        v32 = v100;
        v4 = v101;
      }

      else
      {
        v62 = v83;
        v84(v88, 1, 1, v83);
        v64 = v77;
        sub_226AC40E8(v89, v77, &qword_27D7A8BE0, &unk_226D718F0);
        v65 = *v78;
        v66 = (*v78)(v64, 1, v62);
        v4 = v101;
        v59 = v86;
        v63 = v85;
        if (v66 == 1)
        {
          sub_226D6D3AC();
          v67 = v65(v64, 1, v62);
          v32 = v100;
          if (v67 != 1)
          {
            sub_226AC47B0(v64, &qword_27D7A8BE0, &unk_226D718F0);
          }
        }

        else
        {
          (*v79)(v85, v64, v62);
          v32 = v100;
        }

        if (v65(v88, 1, v62) != 1)
        {
          sub_226AC47B0(v88, &qword_27D7A8BE0, &unk_226D718F0);
        }
      }

      v68 = v107;
      v69 = [v107 dateSent];
      sub_226D6D45C();

      LOBYTE(v69) = sub_226D6D40C();
      v70 = *v81;
      (*v81)(v59, v62);
      v70(v63, v62);
      (*v92)(v102, v96);

      if (v69)
      {
        sub_226B5074C(v91, v90);
        v90 = v68;
        v91 = v87;
      }

      else
      {
      }

      goto LABEL_7;
    }

    v41 = v51;
    v42 = v52;
    v48 = v107;
    if (v36 < 0)
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v51 = (v49 + 1);
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v51 >= v47)
    {
      goto LABEL_6;
    }

    v50 = v39[v51];
    ++v49;
    if (v50)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_226B4FB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B4FB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B4FBF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B4FCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F20, &qword_226D738B8);
  MEMORY[0x28223BE20](v9 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v54 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v54 + 16))
  {
    v52 = (&v48 - v11);
    v53 = v12;
    v51 = v6;
    v14 = 0;
    v49 = a1;
    v15 = *(a1 + 64);
    v48 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v55 = v59 + 16;
    v56 = (v59 + 32);
    v50 = (v59 + 8);
    while (1)
    {
      v20 = v53;
      if (!v18)
      {
        break;
      }

      v57 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
      v26 = (*(v49 + 48) + 16 * v21);
      v27 = *v26;
      v28 = v26[1];
      v30 = v58;
      v29 = v59;
      (*(v59 + 16))(v58, *(v49 + 56) + *(v59 + 72) * v21, v4, v13);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
      v32 = *(v31 + 48);
      *v20 = v27;
      *(v20 + 1) = v28;
      (*(v29 + 32))(&v20[v32], v30, v4);
      (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
      v33 = v52;
      sub_226AFD80C(v20, v52, &qword_27D7A6F20, &qword_226D738B8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        return;
      }

      v35 = *(v34 + 48);
      v37 = *v33;
      v36 = v33[1];
      v38 = v54;
      v39 = v51;
      (*v56)(v51, v33 + v35, v4);
      v40 = sub_226C2FD40(v37, v36);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        (*v50)(v39, v4);
        return;
      }

      v44 = v58;
      v43 = v59;
      (*(v59 + 16))(v58, *(v38 + 56) + *(v59 + 72) * v40, v4);
      sub_226B50A44();
      v45 = sub_226D6E35C();
      v46 = *(v43 + 8);
      v46(v44, v4);
      v46(v39, v4);
      v18 = v57;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
        (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
        v57 = 0;
        v14 = v23;
        goto LABEL_17;
      }

      v25 = *(v48 + 8 * v24);
      ++v14;
      if (v25)
      {
        v57 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v14 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_226B50194(uint64_t a1, uint64_t a2)
{
  v40 = _s7ChangesVMa(0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v39 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F10, &qword_226D738A8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v39 - v20;
  v23 = (&v39 + *(v22 + 56) - v20);
  sub_226B4FB24(a1, &v39 - v20, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  sub_226B4FB24(a2, v23, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226B4FB24(v21, v15, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v24 = *v15;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v26 = v15 + v25;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *v23;
      v12 = v42;
      sub_226B4FB8C(v26, v42, _s7ChangesVMa);
      v28 = v23 + v25;
      v29 = v41;
      sub_226B4FB8C(v28, v41, _s7ChangesVMa);
      sub_226B509B0();
      v30 = sub_226D6EC3C();

      if (v30 & 1) != 0 && (sub_226D6CB3C())
      {
        sub_226D677FC();
        sub_226B509FC(&qword_27D7A6F18, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
        if (sub_226D6CB3C())
        {
          sub_226B4FCA8(*&v12[*(v40 + 24)], *(v29 + *(v40 + 24)));
          if (v31)
          {
            v32 = v29;
LABEL_15:
            sub_226B4FBF4(v32, _s7ChangesVMa);
            sub_226B4FBF4(v12, _s7ChangesVMa);
            sub_226B4FBF4(v21, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
            return 1;
          }
        }
      }

      v38 = v29;
LABEL_18:
      sub_226B4FBF4(v38, _s7ChangesVMa);
      sub_226B4FBF4(v12, _s7ChangesVMa);
      sub_226B4FBF4(v21, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      return 0;
    }
  }

  else
  {
    sub_226B4FB24(v21, v18, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v24 = *v18;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v26 = v18 + v33;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = *v23;
      sub_226B4FB8C(v26, v12, _s7ChangesVMa);
      sub_226B4FB8C(v23 + v33, v9, _s7ChangesVMa);
      sub_226B509B0();
      v35 = sub_226D6EC3C();

      if (v35 & 1) != 0 && (sub_226D6CB3C())
      {
        sub_226D677FC();
        sub_226B509FC(&qword_27D7A6F18, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
        if (sub_226D6CB3C())
        {
          sub_226B4FCA8(*&v12[*(v40 + 24)], *&v9[*(v40 + 24)]);
          if (v36)
          {
            v32 = v9;
            goto LABEL_15;
          }
        }
      }

      v38 = v9;
      goto LABEL_18;
    }
  }

  sub_226B4FBF4(v26, _s7ChangesVMa);

  sub_226AC47B0(v21, &qword_27D7A6F10, &qword_226D738A8);
  return 0;
}

void sub_226B5074C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_226B507B4(uint64_t a1)
{
  sub_226B50838();
  if (v1 <= 0x3F)
  {
    sub_226B50888(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226B50838()
{
  if (!qword_27D7A6730)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A6730);
    }
  }
}

void sub_226B50888(uint64_t a1)
{
  if (!qword_27D7A6EF0)
  {
    _s21NotificationSchedulerVMa(255);
    v1 = sub_226D6EC9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A6EF0);
    }
  }
}

void sub_226B508E0(uint64_t a1)
{
  sub_226B50940(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_226B50940(uint64_t a1)
{
  if (!qword_27D7A6F08)
  {
    sub_226D6990C();
    _s7ChangesVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A6F08);
    }
  }
}

unint64_t sub_226B509B0()
{
  result = qword_27D7A6580;
  if (!qword_27D7A6580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6580);
  }

  return result;
}

uint64_t sub_226B509FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226B50A44()
{
  result = qword_27D7A6F30;
  if (!qword_27D7A6F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6A30, &qword_226D738B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F30);
  }

  return result;
}

unint64_t sub_226B50ABC()
{
  result = qword_27D7A6F38;
  if (!qword_27D7A6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F38);
  }

  return result;
}

unint64_t sub_226B50B10@<X0>(void *a2@<X8>)
{
  v4 = type metadata accessor for OfflineLabAccountInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  sub_226D69F0C();
  result = sub_226D6EBBC();
  if (v2)
  {
    return result;
  }

  v34[1] = 0;
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_17:

    *a2 = MEMORY[0x277D84F90];
    return result;
  }

  v33 = result;
  v12 = sub_226D6EDFC();
  result = v33;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  v36 = v5;
  v13 = result;
  v37 = MEMORY[0x277D84F90];
  result = sub_226AE21A0(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v34[0] = a2;
    v14 = v37;
    v15 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = v15;
        MEMORY[0x22AA8AFD0](v16);
        sub_226D69D5C();
        v18 = sub_226D69DCC();
        v20 = v19;
        sub_226D6D39C();
        swift_unknownObjectRelease();
        v21 = &v10[*(v4 + 20)];
        *v21 = v18;
        v21[1] = v20;
        v37 = v14;
        v23 = *(v14 + 16);
        v22 = *(v14 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226AE21A0((v22 > 1), v23 + 1, 1);
          v14 = v37;
        }

        ++v16;
        *(v14 + 16) = v23 + 1;
        sub_226B51660(v10, v14 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23);
        v15 = v17;
      }

      while (v12 != v16);
    }

    else
    {
      v35 = v13;
      v24 = 32;
      v25 = v36;
      do
      {
        v26 = *(v35 + v24);
        sub_226D69D5C();
        v27 = sub_226D69DCC();
        v29 = v28;
        sub_226D6D39C();

        v30 = &v7[*(v4 + 20)];
        *v30 = v27;
        v30[1] = v29;
        v37 = v14;
        v32 = *(v14 + 16);
        v31 = *(v14 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_226AE21A0((v31 > 1), v32 + 1, 1);
          v14 = v37;
        }

        *(v14 + 16) = v32 + 1;
        sub_226B51660(v7, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v32);
        v24 += 8;
        --v12;
      }

      while (v12);
    }

    *v34[0] = v14;
  }

  return result;
}

void sub_226B50E34()
{
  sub_226D69F0C();
  v0 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F40, &qword_226D739F0);
  sub_226D6EB8C();
}

uint64_t sub_226B50ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 232) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = sub_226D6D09C();
  *(v5 + 144) = v6;
  *(v5 + 152) = *(v6 - 8);
  *(v5 + 160) = swift_task_alloc();
  v7 = sub_226D6D1AC();
  *(v5 + 168) = v7;
  *(v5 + 176) = *(v7 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v8 = sub_226D692FC();
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B51070, 0, 0);
}

uint64_t sub_226B51070()
{
  v46 = v0;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F668);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9CC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v45);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    _os_log_impl(&dword_226AB4000, v2, v3, "Performing lab dry-run with filename: %s. Not updating requests table. Force == %{BOOL}d.", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  sub_226BE2CD0(v9);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  (*(v13 + 104))(v11, *MEMORY[0x277CC7870], v12);
  v14 = sub_226D692EC();
  v15 = *(v13 + 8);
  v15(v11, v12);
  v15(v10, v12);
  if (v14)
  {
    v16 = *(v0 + 184);
    v42 = *(v0 + 176);
    v44 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    v19 = *(v0 + 144);
    v43 = *(v0 + 232);
    v20 = *(v0 + 112);
    v41 = *(v0 + 120);
    v21 = [objc_opt_self() defaultManager];
    v22 = [v21 temporaryDirectory];

    sub_226D6D14C();
    *(v0 + 96) = v20;
    *(v0 + 104) = v41;
    (*(v17 + 104))(v18, *MEMORY[0x277CC91D8], v19);
    sub_226AEEF6C();
    sub_226D6D19C();
    (*(v17 + 8))(v18, v19);
    v23 = *(v42 + 8);
    v23(v16, v44);
    v24 = *(v0 + 128);
    if (v43 == 1)
    {
      *(v0 + 40) = &_s25DryRunAllAccountsProviderVN;
      *(v0 + 48) = &off_283A6B558;
      *(v0 + 16) = v24;
    }

    else
    {
      *(v0 + 40) = &type metadata for OfflineLabAccountProvider;
      *(v0 + 48) = &off_283A726C0;
      v28 = swift_allocObject();
      *(v0 + 16) = v28;
      v28[5] = type metadata accessor for OfflineLabDefaultLogicProvider(0);
      v28[6] = &off_283A6E4A0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28 + 2);
      sub_226C0639C(boxed_opaque_existential_1);
      v30 = sub_226D6B5EC();
      v31 = MEMORY[0x277CC7F68];
      v28[11] = v30;
      v28[12] = v31;
      __swift_allocate_boxed_opaque_existential_1(v28 + 8);
      sub_226D6B58C();
      v28[7] = v24;
      v28[13] = v24;
      v32 = v24;
      v24 = *(v0 + 128);
    }

    v33 = *(v0 + 192);
    sub_226AE532C(v0 + 16, v0 + 56);
    sub_226C614FC(v24, v0 + 56);
    sub_226C5EA88(v33);

    v34 = sub_226D6E05C();
    v35 = sub_226D6E9CC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_226AB4000, v34, v35, "Finished. Exiting without sending http request due to dry-run", v36, 2u);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }

    v37 = *(v0 + 192);
    v38 = *(v0 + 168);

    v23(v37, v38);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9CC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226AB4000, v25, v26, "Permission is not granted", v27, 2u);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
    }
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_226B51660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabAccountInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_226D6C3CC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v9 = sub_226D6B82C();
  v6[12] = v9;
  v10 = *(v9 - 8);
  v6[13] = v10;
  v6[14] = *(v10 + 64);
  v6[15] = swift_task_alloc();
  v11 = sub_226D6B8CC();
  v6[16] = v11;
  v12 = *(v11 - 8);
  v6[17] = v12;
  v6[18] = *(v12 + 64);
  v6[19] = swift_task_alloc();
  v13 = sub_226D6B8AC();
  v6[20] = v13;
  v6[21] = *(v13 - 8);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B518B8, 0, 0);
}

uint64_t sub_226B518B8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1((v0[7] + 16), *(v0[7] + 40));
  sub_226D6B8BC();
  v4 = sub_226D6B88C();
  v6 = v5;
  v0[23] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[24] = v7;
  v8 = sub_226B41FC0();
  *v7 = v0;
  v7[1] = sub_226B519CC;

  return MEMORY[0x28211A3F8](v4, v6, &type metadata for BankConnectEnvironmentImplementation, v8);
}

uint64_t sub_226B519CC(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_226B51AEC, 0, 0);
}

uint64_t sub_226B51AEC()
{
  v1 = v0[17];
  v22 = v0[16];
  v23 = v0[19];
  v2 = v0[15];
  v20 = v0[18];
  v21 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v24 = v4;
  v5 = v0[11];
  v25 = v2;
  v7 = v0[8];
  v6 = v0[9];
  v26 = v7;
  v27 = v5;
  v8 = v0[6];
  v9 = v0[4];
  v29 = v0[7];
  v30 = v0[5];
  (*(v1 + 16))();
  (*(v3 + 16))(v2, v9, v4);
  (*(v6 + 16))(v5, v8, v7);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 8) & ~*(v3 + 80);
  v13 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v6 + 80) + v13 + 8) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v0[26] = v15;
  (*(v1 + 32))(v15 + v10, v23, v22);
  *(v15 + v11) = v29;
  (*(v3 + 32))(v15 + v12, v25, v24);
  *(v15 + v13) = v30;
  (*(v6 + 32))(v15 + v14, v27, v26);
  v28 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v16 = swift_task_alloc();
  v0[27] = v16;
  v17 = sub_226D682FC();
  *v16 = v0;
  v16[1] = sub_226B51D50;
  v18 = v0[2];

  return v28(v18, &unk_226D73A08, v15, v17);
}

uint64_t sub_226B51D50()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_226B51F08;
  }

  else
  {

    v2 = sub_226B51E6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B51E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B51F08()
{

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_27D7A7D10);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to complete connection authorization: %@.", v7, 0xCu);
    sub_226B17298(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = *(v0 + 224);

  v12 = sub_226D6C63C();
  sub_226B53DE0(&qword_27D7A6F48, MEMORY[0x277CC82E8], MEMORY[0x277CC82F0]);
  swift_allocError();
  *v13 = v11;
  (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277CC82C8], v12);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_226B52174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_226D6764C();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_226D6C3CC();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  type metadata accessor for BankConnectConsentArbitratingConfiguration(0);
  v6[24] = swift_task_alloc();
  v9 = sub_226D671FC();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  v6[28] = v10;
  v6[29] = *(v10 - 8);
  v6[30] = swift_task_alloc();
  v11 = sub_226D6B8CC();
  v6[31] = v11;
  v6[32] = *(v11 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B523E4, 0, 0);
}

uint64_t sub_226B523E4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  v9 = *(v0 + 120);
  (*(*(v0 + 256) + 16))(v1, *(v0 + 104), *(v0 + 248));
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226D6BA9C();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = sub_226D6C2AC();
  *(v0 + 272) = v3;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v9;
  v5 = swift_task_alloc();
  *(v0 + 288) = v5;
  *v5 = v0;
  v5[1] = sub_226B52544;
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);

  return MEMORY[0x282119B28](v6, &unk_226D73A18, v4, v7);
}

uint64_t sub_226B52544()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_226B529B4;
  }

  else
  {

    v2 = sub_226B52660;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B52660()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v17 = v0[25];
  v18 = v0[21];
  v21 = v0[20];
  v5 = v0[19];
  v19 = v0[24];
  v20 = v0[18];
  v6 = v0[17];
  v7 = v0[14];

  v8 = __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
  sub_226AE532C((v8 + 63), (v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_226D6B84C();
  v22 = sub_226D671AC();
  v10 = v9;
  v0[38] = v9;
  (*(v2 + 8))(v1, v17);
  (*(v4 + 16))(v3, v6, v18);
  sub_226B53108(v3, v19);
  (*(v5 + 104))(v21, *MEMORY[0x277CC6D38], v20);
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_226B52804;
  v12 = v0[30];
  v13 = v0[24];
  v14 = v0[20];
  v15 = v0[12];

  return sub_226BA3514(v15, v12, v22, v10, v13, v14, 0);
}

uint64_t sub_226B52804()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 320) = v0;

  (*(v4 + 8))(v3, v5);
  sub_226B53D68(v2);
  if (v0)
  {
    v6 = sub_226B52C3C;
  }

  else
  {
    v6 = sub_226B52A90;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226B529B4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B52A90()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_226B52B28;

  return sub_226B53364();
}

uint64_t sub_226B52B28()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_226B52E0C;
  }

  else
  {
    v2 = sub_226B52D24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B52C3C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B52D24()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B52E0C()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[12];
  v8 = sub_226D682FC();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226B52F38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D6B8CC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_226D6B82C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_226D6C3CC() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + v7);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226AE5A84;

  return sub_226B52174(a1, v1 + v6, v13, v1 + v9, v14, v1 + v12);
}

uint64_t sub_226B53108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6C3CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CC8268] || v9 == *MEMORY[0x277CC8258])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    v10 = sub_226D6D52C();
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    v11 = 0;
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
    return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
  }

  if (v9 == *MEMORY[0x277CC8260])
  {
    (*(v5 + 8))(a1, v4);
    v11 = 1;
    goto LABEL_6;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226B53384()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  sub_226D6BAAC();
  v1 = sub_226D676AC();

  *(swift_task_alloc() + 16) = v1;
  sub_226D6EB7C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226B53640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_226D6B82C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_226D6B8AC();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v8 = sub_226D6C80C();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B537CC, 0, 0);
}

uint64_t sub_226B537CC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v12 = v0[9];
  v13 = v0[7];
  v11 = v0[5];
  sub_226D6B8BC();
  sub_226D6B88C();
  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_226D6B8BC();
  sub_226D6B89C();
  v6(v2, v3);
  (*(v5 + 16))(v12, v11, v13);
  sub_226D6B85C();

  sub_226D6C7FC();
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_226B53968;
  v8 = v0[16];
  v9 = v0[2];

  return MEMORY[0x282119AE0](v9, v8);
}

uint64_t sub_226B53968()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(v5 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B53B34, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226B53B34()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_226B53BC0(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  sub_226D6AF0C();
  result = sub_226D6AEFC();
  if (!v1)
  {
    v5[0] = 0;
    if ([a1 save_])
    {
      return v5[0];
    }

    else
    {
      v4 = v5[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226B53CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226B53640(a1, v4, v5, v7, v6);
}

uint64_t sub_226B53D68(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectConsentArbitratingConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B53DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226B53E4C()
{
  v2 = v1;
  v3 = v0;
  v170 = sub_226D6B5EC();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v167 = v161 - v6;
  v166 = sub_226D6707C();
  v183 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v187 = (v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v188 = (v161 - v9);
  v173 = sub_226D66DBC();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6DFCC();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = (v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v161 - v16;
  v18 = sub_226D676AC();
  v19 = sub_226D6EB2C();
  v20 = sub_226D6EB3C();
  v180 = v18;
  v179 = sub_226D6EB4C();
  if (!v19 || !v20)
  {
    if (qword_28105F620 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_9;
  }

  v21 = qword_28105F620;
  v162 = v19;
  v163 = v20;
  if (v21 != -1)
  {
    goto LABEL_110;
  }

LABEL_4:
  v175 = v3;
  v22 = sub_226D6E07C();
  __swift_project_value_buffer(v22, qword_28105F628);
  v23 = sub_226D6E05C();
  v24 = sub_226D6E9AC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_226AB4000, v23, v24, "Fetching history transactions...", v25, 2u);
    MEMORY[0x22AA8BEE0](v25, -1, -1);
  }

  MEMORY[0x28223BE20](v26);
  v27 = v180;
  v161[-2] = v175;
  v161[-1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  sub_226D6EB8C();
  if (v2)
  {

    v28 = v162;
    v29 = v163;

    return;
  }

  v36 = v194;
  if (v194 >> 62)
  {
    v155 = v194;
    v37 = sub_226D6EDFC();
    v36 = v155;
    if (!v37)
    {
LABEL_112:

      v156 = v162;

      v157 = v163;
      v158 = sub_226D6E05C();
      v159 = sub_226D6E9AC();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_226AB4000, v158, v159, "No transactions, ignoring sync", v160, 2u);
        MEMORY[0x22AA8BEE0](v160, -1, -1);
      }

      return;
    }
  }

  else
  {
    v37 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_112;
    }
  }

  v176 = v36;
  v38 = sub_226D6E05C();
  v39 = sub_226D6E9AC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_226AB4000, v38, v39, "Generating history changeset...", v40, 2u);
    MEMORY[0x22AA8BEE0](v40, -1, -1);
  }

  v177 = v37;

  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v174 = 0;
  v41 = sub_226D6DFFC();
  __swift_project_value_buffer(v41, qword_281064510);
  sub_226D6DFBC();
  v42 = sub_226D6DFDC();
  v19 = sub_226D6EABC();
  if (sub_226D6EC8C())
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v42, v19, v44, "StoreMapping", "", v43, 2u);
    MEMORY[0x22AA8BEE0](v43, -1, -1);
  }

  (v12[2])(v14, v17, v11);
  sub_226D6E03C();
  swift_allocObject();
  v161[0] = sub_226D6E02C();
  (v12[1])(v17, v11);
  v45 = MEMORY[0x277D84F98];
  v198 = MEMORY[0x277D84F98];
  v2 = 0;
  v20 = 0;
  v197 = sub_226B236A4(MEMORY[0x277D84F90]);
  v178 = v176 & 0xC000000000000001;
  v165 = v176 & 0xFFFFFFFFFFFFFF8;
  v164 = v176 + 32;
  v14 = v187;
  v12 = v188;
  while (1)
  {
    if (v178)
    {
      v47 = MEMORY[0x22AA8AFD0](v20, v176);
      v48 = __OFADD__(v20++, 1);
      if (v48)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v20 >= *(v165 + 16))
      {
        goto LABEL_106;
      }

      v47 = *(v164 + 8 * v20);
      v48 = __OFADD__(v20++, 1);
      if (v48)
      {
        goto LABEL_104;
      }
    }

    v182 = v20;
    v49 = v47;
    v11 = [v47 storeID];
    v19 = sub_226D6E39C();
    v20 = v50;

    v184 = v49;
    v51 = [v49 token];
    if (v51)
    {
      v3 = v51;
      v52 = v198;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v194 = v52;
      v54 = sub_226C2FDD4(v19, v20);
      v56 = v52[2];
      v57 = (v55 & 1) == 0;
      v48 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v48)
      {
        goto LABEL_105;
      }

      v17 = v55;
      if (v52[3] >= v58)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = v54;
          sub_226C38D7C();
          v54 = v11;
          v14 = v187;
          if (v17)
          {
            goto LABEL_40;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_226C32F00(v58, isUniquelyReferenced_nonNull_native);
        v54 = sub_226C2FDD4(v19, v20);
        if ((v17 & 1) != (v59 & 1))
        {
LABEL_115:
          sub_226D6F25C();
          __break(1u);
          return;
        }
      }

      v14 = v187;
      if (v17)
      {
LABEL_40:
        v63 = v54;

        v45 = v194;
        v64 = *(v194 + 56);
        v65 = *(v64 + 8 * v63);
        *(v64 + 8 * v63) = v3;

LABEL_44:
        v198 = v45;
        v46 = v183;
        goto LABEL_45;
      }

LABEL_42:
      v45 = v194;
      *(v194 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v66 = (v45[6] + 16 * v54);
      *v66 = v19;
      v66[1] = v20;
      *(v45[7] + 8 * v54) = v3;
      v67 = v45[2];
      v48 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v48)
      {
        __break(1u);
        goto LABEL_109;
      }

      v45[2] = v68;
      goto LABEL_44;
    }

    v19 = sub_226C2FDD4(v19, v20);
    v61 = v60;

    v46 = v183;
    if (v61)
    {
      v45 = v198;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v194 = v45;
      if (!v62)
      {
        sub_226C38D7C();
        v45 = v194;
      }

      sub_226D4AE14(v19, v45);
      v198 = v45;
    }

LABEL_45:
    v69 = [v184 changes];
    if (!v69)
    {
      goto LABEL_22;
    }

    v20 = v69;
    sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
    v70 = sub_226D6E5EC();

    v71 = v70 >> 62 ? sub_226D6EDFC() : *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v181 = v45;
    if (v71)
    {
      break;
    }

LABEL_21:

    v46 = v183;
    v45 = v181;
LABEL_22:
    v20 = v182;

    if (v20 == v177)
    {
      v181 = v45;

      v91 = type metadata accessor for OrderMappingModel();
      v92 = swift_allocObject();
      v93 = sub_226BBB6F8(0, 1, 1, MEMORY[0x277D84F90]);
      v95 = v93[2];
      v94 = v93[3];
      if (v95 >= v94 >> 1)
      {
        v93 = sub_226BBB6F8((v94 > 1), v95 + 1, 1, v93);
      }

      v195 = v91;
      v196 = sub_226B590FC(&qword_2810623D0, type metadata accessor for OrderMappingModel, &unk_226D770CC);
      *&v194 = v92;
      v93[2] = v95 + 1;
      sub_226AC484C(&v194, &v93[5 * v95 + 4]);
      v96 = *MEMORY[0x277CC6500];
      v97 = v172;
      v98 = v171;
      v99 = v173;
      v187 = *(v172 + 104);
      v188 = (v172 + 104);
      (v187)(v171, v96, v173);
      v100 = sub_226D66D6C();
      v102 = *(v97 + 8);
      v101 = v97 + 8;
      v186 = v102;
      v102(v98, v99);
      if (v100)
      {
        v103 = v101;
        v104 = type metadata accessor for BankCredentialMappingModel();
        v105 = swift_allocObject();
        v107 = v93[2];
        v106 = v93[3];
        if (v107 >= v106 >> 1)
        {
          v93 = sub_226BBB6F8((v106 > 1), v107 + 1, 1, v93);
        }

        v195 = v104;
        v196 = sub_226B590FC(&qword_27D7A6F70, type metadata accessor for BankCredentialMappingModel, &unk_226D7E144);
        *&v194 = v105;
        v93[2] = v107 + 1;
        sub_226AC484C(&v194, &v93[5 * v107 + 4]);
        v99 = v173;
        v101 = v103;
        v98 = v171;
        v46 = v183;
      }

      (v187)(v98, *MEMORY[0x277CC64E8], v99);
      v108 = sub_226D66D6C();
      v186(v98, v99);
      if (v108)
      {
        v185 = v93;
        v172 = v101;
        sub_226D6703C();
        v109 = *(v46 + 104);
        v110 = v14;
        v111 = v12;
        v112 = v14;
        v113 = v166;
        v109(v110, *MEMORY[0x277CC6A80], v166);
        v114 = sub_226D6705C();
        v115 = *(v46 + 8);
        v115(v112, v113);
        v115(v111, v113);
        if (v114 & 1) != 0 || (sub_226D6703C(), v109(v112, *MEMORY[0x277CC6A78], v113), v116 = sub_226D6705C(), v115(v112, v113), v115(v111, v113), (v116))
        {
          matched = type metadata accessor for AccountMatchMappingModel();
          v118 = swift_allocObject();
          v93 = v185;
          v120 = v185[2];
          v119 = v185[3];
          v121 = v120 + 1;
          if (v120 >= v119 >> 1)
          {
            v93 = sub_226BBB6F8((v119 > 1), v120 + 1, 1, v185);
          }

          v195 = matched;
          v196 = sub_226B590FC(&qword_27D7A6F60, type metadata accessor for AccountMatchMappingModel, &unk_226D77044);
          *&v194 = v118;
          v93[2] = v121;
          sub_226AC484C(&v194, &v93[5 * v120 + 4]);
          v122 = type metadata accessor for ConsentMappingModel();
          v123 = swift_allocObject();
          v124 = v93[3];
          if ((v120 + 2) > (v124 >> 1))
          {
            v93 = sub_226BBB6F8((v124 > 1), v120 + 2, 1, v93);
          }

          v195 = v122;
          v196 = sub_226B590FC(&qword_27D7A6F68, type metadata accessor for ConsentMappingModel, &unk_226D731AC);
          *&v194 = v123;
          v93[2] = v120 + 2;
          sub_226AC484C(&v194, &v93[5 * v121 + 4]);
          v99 = v173;
          v98 = v171;
        }

        else
        {
LABEL_85:
          v99 = v173;
          v98 = v171;
          v93 = v185;
        }
      }

      (v187)(v98, *MEMORY[0x277CC64F0], v99);
      v125 = sub_226D66D6C();
      v186(v98, v99);
      if (v125)
      {
        v126 = v167;
        sub_226D6B58C();
        v127 = v168;
        sub_226D6B5AC();
        v128 = MEMORY[0x277CC7F68];
        v129 = v170;
        v195 = v170;
        v196 = MEMORY[0x277CC7F68];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v194);
        v131 = v169;
        (*(v169 + 16))(boxed_opaque_existential_1, v126, v129);
        v190 = v129;
        v191 = v128;
        v132 = __swift_allocate_boxed_opaque_existential_1(&v189);
        (*(v131 + 32))(v132, v127, v129);
        (*(v131 + 8))(v126, v129);
        v133 = type metadata accessor for ExtractedOrderUserEventMappingModel();
        v134 = swift_allocObject();
        *(v134 + 16) = v192;
        *(v134 + 32) = v193;
        *(v134 + 40) = &type metadata for TrackedOrderBiomeStream;
        *(v134 + 48) = &off_283A6EDD8;
        sub_226AC484C(&v194, v134 + 56);
        sub_226AC484C(&v189, v134 + 96);
        v136 = v93[2];
        v135 = v93[3];
        v3 = v179;
        if (v136 >= v135 >> 1)
        {
          v93 = sub_226BBB6F8((v135 > 1), v136 + 1, 1, v93);
        }

        v195 = v133;
        v196 = sub_226B590FC(&qword_27D7A6F58, type metadata accessor for ExtractedOrderUserEventMappingModel, &unk_226D75ACC);
        *&v194 = v134;
        v93[2] = v136 + 1;
        sub_226AC484C(&v194, &v93[5 * v136 + 4]);
      }

      else
      {
        v3 = v179;
      }

      if (v3)
      {
        v137 = type metadata accessor for DropboxApplePayOrderMappingModel();
        swift_allocObject();

        v139 = sub_226CA4350(v138, 0);
        v141 = v93[2];
        v140 = v93[3];
        if (v141 >= v140 >> 1)
        {
          v93 = sub_226BBB6F8((v140 > 1), v141 + 1, 1, v93);
        }

        v195 = v137;
        v196 = sub_226B590FC(qword_2810606A0, type metadata accessor for DropboxApplePayOrderMappingModel, &unk_226D7A9DC);
        *&v194 = v139;
        v93[2] = v141 + 1;
        sub_226AC484C(&v194, &v93[5 * v141 + 4]);
      }

      v142 = v93[2];
      v143 = v93;
      if (!v142)
      {
LABEL_100:

        MEMORY[0x28223BE20](v148);
        v161[-6] = &v198;
        v149 = v162;
        v150 = v180;
        v161[-5] = v162;
        v161[-4] = v150;
        v151 = v163;
        v152 = v179;
        v161[-3] = v163;
        v161[-2] = v152;
        sub_226D6EB8C();

        sub_226B55594(v161[0]);

        sub_226AC7B44(v2, 0);
        return;
      }

      v17 = 0;
      v11 = v143;
      v144 = (v143 + 4);
      v14 = &v194;
      v12 = &v197;
      while (v17 < v11[2])
      {
        v145 = sub_226AE532C(v144, &v194);
        v3 = v161;
        MEMORY[0x28223BE20](v145);
        v146 = v175;
        v161[-4] = &v194;
        v161[-3] = v146;
        v161[-2] = &v197;
        v147 = v174;
        sub_226D66E6C();
        v174 = v147;
        if (v147)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v194);

          sub_226B55594(v161[0]);

          v153 = v162;
          v154 = v163;

          sub_226AC7B44(v2, 0);
          return;
        }

        ++v17;
        __swift_destroy_boxed_opaque_existential_0Tm(&v194);
        v144 += 40;
        if (v142 == v17)
        {
          goto LABEL_100;
        }
      }

LABEL_109:
      __break(1u);
LABEL_110:
      swift_once();
      goto LABEL_4;
    }
  }

  v161[1] = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v19 = 0;
  v185 = (v70 & 0xFFFFFFFFFFFFFF8);
  v186 = (v70 & 0xC000000000000001);
  while (1)
  {
    if (v186)
    {
      v72 = MEMORY[0x22AA8AFD0](v19, v70);
    }

    else
    {
      if (v19 >= v185[2])
      {
        goto LABEL_103;
      }

      v72 = *(v70 + 8 * v19 + 32);
    }

    v73 = v72;
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v74 = [v72 changedObjectID];
    sub_226AC7B44(v2, 0);
    v75 = v197;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *&v194 = v75;
    v77 = sub_226C3015C(v74);
    v79 = v75[2];
    v80 = (v78 & 1) == 0;
    v48 = __OFADD__(v79, v80);
    v81 = v79 + v80;
    if (v48)
    {
      goto LABEL_84;
    }

    v82 = v78;
    if (v75[3] >= v81)
    {
      if ((v76 & 1) == 0)
      {
        v90 = v77;
        sub_226C38C18();
        v77 = v90;
        v75 = v194;
      }
    }

    else
    {
      sub_226C32C90(v81, v76);
      v75 = v194;
      v77 = sub_226C3015C(v74);
      if ((v82 & 1) != (v83 & 1))
      {
        sub_226D6F25C();
        __break(1u);
        goto LABEL_115;
      }
    }

    v12 = v188;
    v197 = v75;
    if ((v82 & 1) == 0)
    {
      break;
    }

LABEL_64:
    v88 = (v75[7] + 8 * v77);
    v89 = v73;
    MEMORY[0x22AA8A610]();
    if (*((*v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
      v12 = v188;
    }

    sub_226D6E65C();

    ++v19;
    v2 = sub_226B55820;
    v14 = v187;
    if (v20 == v71)
    {
      goto LABEL_21;
    }
  }

  v75[(v77 >> 6) + 8] |= 1 << v77;
  *(v75[6] + 8 * v77) = v74;
  *(v75[7] + 8 * v77) = MEMORY[0x277D84F90];
  v84 = v75[2];
  v48 = __OFADD__(v84, 1);
  v85 = v84 + 1;
  if (!v48)
  {
    v75[2] = v85;
    v86 = v77;
    v87 = v74;
    v77 = v86;
    v12 = v188;
    goto LABEL_64;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  swift_once();
LABEL_9:
  v30 = sub_226D6E07C();
  __swift_project_value_buffer(v30, qword_28105F628);
  v31 = sub_226D6E05C();
  v32 = sub_226D6E9CC();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v179;
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_226AB4000, v31, v32, "Cloud or local store not found. Cannot apply changes.", v35, 2u);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }
}

uint64_t sub_226B55594(uint64_t a1)
{
  v1 = sub_226D6E00C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6DFCC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6DFFC();
  __swift_project_value_buffer(v9, qword_281064510);
  v10 = sub_226D6DFDC();
  sub_226D6E01C();
  v11 = sub_226D6EAAC();
  if (sub_226D6EC8C())
  {

    sub_226D6E04C();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v10, v11, v14, "StoreMapping", v12, v13, 2u);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_226B55830(void *a1, uint64_t a2, uint64_t *a3)
{
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F628);
  sub_226AE532C(a1, v18);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v12 = sub_226AC4530(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v5, v6, "Performing operations for mapping model: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);

  sub_226B55A30(v16, v15, v13, v14);
}

void sub_226B55A30(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = v50 - v10;
  swift_getAssociatedTypeWitness();
  sub_226D6E6AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_226D6EC9C();
  v60 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  v68 = a3;
  v69 = a4;
  v70 = v66;
  v71 = a2;
  v63 = a2;
  swift_getAssociatedConformanceWitness();
  sub_226D6E2EC();
  v18 = v67;
  sub_226B57538(sub_226B5A4F4);
  if (!v18)
  {
    v67 = 0;
    v61 = v17;
    v62 = v12;
    v58 = v14;
    v53 = a3;
    v54 = a4;
    v19 = 0;
    v21 = v72 + 64;
    v20 = *(v72 + 64);
    v51 = v72;
    v22 = 1 << *(v72 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20;
    v25 = (v22 + 63) >> 6;
    v59 = TupleTypeMetadata2;
    v57 = TupleTypeMetadata2 - 8;
    v50[1] = v55 + 16;
    v65 = (v55 + 32);
    v60 += 4;
    v52 = (v55 + 8);
    v26 = v56;
    v27 = v64;
    if ((v23 & v20) != 0)
    {
      while (1)
      {
        v28 = v19;
LABEL_13:
        v31 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v32 = v31 | (v28 << 6);
        v33 = v51;
        v34 = v55;
        (*(v55 + 16))(v27, *(v51 + 48) + *(v55 + 72) * v32, AssociatedTypeWitness);
        v35 = *(*(v33 + 56) + 8 * v32);
        v36 = *(v59 + 48);
        v37 = *(v34 + 32);
        v38 = v58;
        v39 = v59;
        v37();
        *&v38[v36] = v35;
        v40 = *(v39 - 8);
        (*(v40 + 56))(v38, 0, 1, v39);

        v66 = v28;
        v26 = v56;
LABEL_14:
        v41 = v61;
        (*v60)(v61, v38, v62);
        if ((*(v40 + 48))(v41, 1, v39) == 1)
        {

          return;
        }

        v42 = v41;
        v43 = *&v41[*(v39 + 48)];
        v44 = (*v65)(v26, v42, AssociatedTypeWitness);
        MEMORY[0x28223BE20](v44);
        v45 = v54;
        v50[-6] = v53;
        v50[-5] = v45;
        v50[-4] = v63;
        v50[-3] = v26;
        v50[-2] = v43;
        v46 = v26;
        v47 = sub_226D676AC();
        MEMORY[0x28223BE20](v47);
        v50[-4] = v48;
        v50[-3] = sub_226B5A514;
        v50[-2] = &v50[-8];
        v49 = v67;
        sub_226D6EB7C();
        v67 = v49;
        if (v49)
        {
          break;
        }

        (*v52)(v46, AssociatedTypeWitness);
        v19 = v66;
        v26 = v46;
        v27 = v64;
        if (!v24)
        {
          goto LABEL_6;
        }
      }

      (*v52)(v46, AssociatedTypeWitness);
    }

    else
    {
LABEL_6:
      if (v25 <= v19 + 1)
      {
        v29 = v19 + 1;
      }

      else
      {
        v29 = v25;
      }

      v30 = v29 - 1;
      while (1)
      {
        v28 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v28 >= v25)
        {
          v66 = v30;
          v38 = v58;
          v39 = v59;
          v40 = *(v59 - 8);
          (*(v40 + 56))(v58, 1, 1, v59);
          v24 = 0;
          goto LABEL_14;
        }

        v24 = *(v21 + 8 * v28);
        ++v19;
        if (v24)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_226B56090(uint64_t *a1, void *a2, void *a3, void *a4, void *a5)
{
  v65 = a5;
  v69[1] = *MEMORY[0x277D85DE8];
  v10 = sub_226D6B70C();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = [a2 identifier];
  if (!v19)
  {
    __break(1u);
  }

  v20 = v19;
  v68 = a3;
  v21 = sub_226D6E39C();
  v23 = v22;

  v24 = *a1;
  if (*(*a1 + 16))
  {
    v25 = sub_226C2FDD4(v21, v23);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v25);
      v30 = v66;
      v29 = v67;
      (*(v66 + 104))(v18, *MEMORY[0x277CC7FE8], v67);
      v31 = v28;
      sub_226B5EC38(v31, v18, v68);
      if (v5)
      {
        (*(v30 + 8))(v18, v29);
LABEL_13:

        return;
      }

      (*(v30 + 8))(v18, v29);
    }
  }

  else
  {
  }

  v32 = [a4 identifier];
  if (!v32)
  {
    __break(1u);
    goto LABEL_32;
  }

  v33 = v32;
  v34 = sub_226D6E39C();
  v36 = v35;

  v37 = *a1;
  if (*(*a1 + 16))
  {
    v38 = sub_226C2FDD4(v34, v36);
    v40 = v39;

    if (v40)
    {
      v41 = *(*(v37 + 56) + 8 * v38);
      v43 = v66;
      v42 = v67;
      (*(v66 + 104))(v14, *MEMORY[0x277CC7FF0], v67);
      v31 = v41;
      sub_226B5EC38(v31, v14, v68);
      if (v5)
      {
        (*(v43 + 8))(v14, v42);
        goto LABEL_13;
      }

      (*(v43 + 8))(v14, v42);

      v44 = v65;
      if (!v65)
      {
        goto LABEL_25;
      }

LABEL_16:
      v45 = v44;
      v46 = [v45 identifier];
      if (v46)
      {
        v47 = v46;
        v48 = sub_226D6E39C();
        v50 = v49;

        v51 = *a1;
        if (*(*a1 + 16))
        {
          v52 = sub_226C2FDD4(v48, v50);
          v54 = v53;

          if (v54)
          {
            v55 = *(*(v51 + 56) + 8 * v52);
            v57 = v66;
            v56 = v67;
            v58 = v64;
            (*(v66 + 104))(v64, *MEMORY[0x277CC7FF8], v67);
            v59 = v55;
            v60 = v68;
            sub_226B5EC38(v59, v58, v68);
            if (v5)
            {
              (*(v57 + 8))(v58, v56);

              return;
            }

            (*(v57 + 8))(v58, v56);

            goto LABEL_23;
          }
        }

        else
        {
        }

        v60 = v68;
LABEL_23:

        goto LABEL_26;
      }

LABEL_32:
      __break(1u);
      return;
    }
  }

  else
  {
  }

  v44 = v65;
  if (v65)
  {
    goto LABEL_16;
  }

LABEL_25:
  v60 = v68;
LABEL_26:
  v69[0] = 0;
  if ([v60 save_])
  {
    v61 = v69[0];
  }

  else
  {
    v62 = v69[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B56544@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, char *, unint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v132 = a3;
  v133 = a4;
  v130 = a2;
  v111 = a1;
  v100 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v92 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v91 - v10;
  v122 = sub_226D6EC9C();
  v124 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v104 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = &v91 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v97 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v91 - v18;
  MEMORY[0x28223BE20](v19);
  v131 = &v91 - v20;
  v21 = sub_226D6EC9C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v127 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v91 - v25;
  v134 = v14;
  v27 = sub_226D6E6AC();
  swift_getTupleTypeMetadata2();
  v28 = sub_226D6E62C();
  v29 = v130;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v105 = AssociatedTypeWitness;
  v98 = v27;
  v96 = AssociatedConformanceWitness;
  v112 = sub_226B59144(v28, AssociatedTypeWitness, v27, AssociatedConformanceWitness);
  v31 = v21;

  v32 = v29[8];
  v121 = v29 + 8;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v120 = (v33 + 63) >> 6;
  v128 = a5 + 56;
  v129 = a5;
  v125 = (v15 + 48);
  v126 = (v22 + 16);
  v117 = (v15 + 32);
  v110 = a5 + 72;
  v103 = (v124 + 2);
  v102 = (v119 + 48);
  v101 = v124 + 1;
  v114 = (v15 + 8);
  v124 = (v22 + 8);
  v95 = (v119 + 32);
  v94 = (v15 + 16);
  v91 = (v119 + 16);
  v93 = (v119 + 8);

  v107 = 0;
  v106 = 0;
  v109 = 0;
  v108 = 0;
  v36 = 0;
  v115 = v26;
  v116 = v21;
  while (1)
  {
    do
    {
      while (1)
      {
        if (!v35)
        {
          while (1)
          {
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v38 >= v120)
            {
              goto LABEL_53;
            }

            v35 = v121[v38];
            ++v36;
            if (v35)
            {
              v36 = v38;
              goto LABEL_10;
            }
          }

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
          __break(1u);
LABEL_65:
          result = sub_226D6F25C();
          __break(1u);
          return result;
        }

LABEL_10:
        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v40 = *(v29[7] + ((v36 << 9) | (8 * v39)));
        v41 = v40 >> 62;
        if (v40 >> 62)
        {
          break;
        }

        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }
      }
    }

    while (!sub_226D6EDFC());
    if (!sub_226D6EDFC())
    {
      goto LABEL_63;
    }

    if (!sub_226D6EDFC())
    {
      goto LABEL_62;
    }

LABEL_12:
    if ((v40 & 0xC000000000000001) != 0)
    {

      v43 = MEMORY[0x22AA8AFD0](0, v40);
    }

    else
    {
      if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v42 = *(v40 + 32);

      v43 = v42;
    }

    v44 = v43;
    if (v41)
    {
      if (!sub_226D6EDFC())
      {
        goto LABEL_59;
      }

      if (sub_226D6EDFC() < 1)
      {
        goto LABEL_60;
      }

      v45 = sub_226D6EDFC();
    }

    else
    {
      v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_59;
      }
    }

    v46 = v45 - 1;
    if (__OFSUB__(v45, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v41)
      {
        v47 = v40 & 0xFFFFFFFFFFFFFF8;
        if (v46 <= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_27:
      sub_226D6EDFC();
      goto LABEL_28;
    }

    if (v41)
    {
      goto LABEL_27;
    }

LABEL_28:
    v40 = sub_226D6EF3C();
    v47 = v40 & 0xFFFFFFFFFFFFFF8;
LABEL_29:

    if (!(v40 >> 62))
    {
      v48 = *(v47 + 16);
      memmove((v47 + 32), (v47 + 40), 8 * v48 - 8);
      v49 = v48 - 1;
      if (__OFSUB__(v48, 1))
      {
        break;
      }

      goto LABEL_31;
    }

    v88 = sub_226D6EDFC();
    if (__OFSUB__(v88, 1))
    {
      goto LABEL_64;
    }

    memmove((v47 + 32), (v47 + 40), 8 * (v88 - 1));
    v89 = sub_226D6EDFC();
    v49 = v89 - 1;
    if (__OFSUB__(v89, 1))
    {
      break;
    }

LABEL_31:
    *(v47 + 16) = v49;
    v50 = v129;
    v51 = v132;
    v52 = v135;
    (*(v129 + 56))(v44, v133, v129);
    v135 = v52;
    if (v52)
    {

      sub_226AC7B44(v107, v106);
      return sub_226AC7B44(v109, v108);
    }

    v53 = v127;
    (*v126)(v127, v26, v31);
    v54 = v134;
    if ((*v125)(v53, 1, v134) == 1)
    {
      v37 = *v124;
      (*v124)(v26, v31);

      v37(v53, v31);
      v29 = v130;
    }

    else
    {
      (*v117)(v131, v53, v54);
      v136 = v40;
      v55 = v133;
      v56 = sub_226B57418(v51, v133, v50);
      v119 = &v91;
      MEMORY[0x28223BE20](v56);
      v57 = v123;
      *(&v91 - 4) = v55;
      *(&v91 - 3) = v50;
      *(&v91 - 2) = v58;
      *(&v91 - 1) = v59;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F78, &unk_226D758E0);
      sub_226B5A5A4();
      v60 = v135;
      sub_226D6E52C();
      if (v60)
      {

        (*v114)(v131, v134);
        (*v124)(v115, v116);

        sub_226AC7B44(v107, v106);
        result = sub_226AC7B44(v109, v108);
        v135 = v60;
        return result;
      }

      v62 = MEMORY[0x22AA8B6A0](v61);
      v63 = v113;
      (*(v50 + 72))(v57, v111, v55, v50);
      v135 = 0;
      objc_autoreleasePoolPop(v62);
      v64 = v104;
      v65 = v122;
      (*v103)(v104, v63, v122);
      v66 = v105;
      v67 = (*v102)(v64, 1, v105);
      v68 = v134;
      if (v67 == 1)
      {
        v119 = *v101;
        v119(v63, v65);
        v69 = *v114;
        v70 = v68;
        (*v114)(v131, v68);
        v72 = v115;
        v71 = v116;
        (*v124)(v115, v116);
        v73 = v64;
        v31 = v71;
        v26 = v72;
        v119(v73, v122);
        v69(v123, v70);
        v29 = v130;
      }

      else
      {
        v74 = v99;
        (*v95)(v99, v64, v66);
        v75 = swift_allocObject();
        v76 = v133;
        *(v75 + 16) = v133;
        *(v75 + 24) = v50;
        sub_226AC7B44(v107, v106);
        (*v94)(v97, v123, v68);
        v77 = swift_allocObject();
        v77[2] = v76;
        v77[3] = v50;
        v77[4] = sub_226B5A608;
        v77[5] = v75;
        v106 = v75;
        v118 = v77;
        sub_226AC7B44(v109, v108);
        v78 = v112;
        swift_isUniquelyReferenced_nonNull_native();
        v136 = v78;
        v79 = v96;
        v119 = sub_226B57D54(v74, v66, v96);
        if (__OFADD__(*(v78 + 16), (v80 & 1) == 0))
        {
          goto LABEL_61;
        }

        v81 = v80;
        sub_226D6EFEC();
        v82 = sub_226D6EFCC();
        v83 = v79;
        v26 = v115;
        v31 = v116;
        if (v82)
        {
          v119 = sub_226B57D54(v99, v66, v83);
          v29 = v130;
          v85 = v66;
          if ((v81 & 1) != (v84 & 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          v29 = v130;
          v85 = v66;
        }

        v86 = v134;
        v112 = v136;
        if ((v81 & 1) == 0)
        {
          v136 = (*(v118 + 32))();
          (*v91)(v92, v99, v85);
          sub_226D6EFDC();
        }

        sub_226D6E67C();
        (*v93)(v99, v85);
        (*v101)(v113, v122);
        v87 = *v114;
        (*v114)(v131, v86);
        (*v124)(v26, v31);
        v87(v123, v86);
        v109 = sub_226B5A650;
        v107 = sub_226B5A608;
        v108 = v118;
      }
    }
  }

  __break(1u);
LABEL_53:

  sub_226AC7B44(v107, v106);
  result = sub_226AC7B44(v109, v108);
  *v100 = v112;
  return result;
}

uint64_t (*sub_226B57418(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_226B5A680;
}

void sub_226B57538(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

void sub_226B575C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a3;
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v33 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = MEMORY[0x22AA8B6A0](v16);
  v20 = *(a6 + 80);
  v21 = v46;
  v46 = a5;
  v20(v43, a4, a1, a5, a6);
  if (v21)
  {
    objc_autoreleasePoolPop(v19);
  }

  else
  {
    v43 = a1;
    v33 = v12;
    objc_autoreleasePoolPop(v19);
    v22 = *(a6 + 88);
    v34 = v18;
    v23 = v22(v18, v46, a6);
    if (sub_226D6E66C())
    {
      v24 = 0;
      v41 = a6;
      v42 = (v11 + 16);
      v38 = a6 + 96;
      v39 = (v11 + 32);
      v40 = (v11 + 8);
      while (1)
      {
        v25 = sub_226D6E64C();
        sub_226D6E60C();
        if (v25)
        {
          v26 = v44;
          (*(v11 + 16))(v44, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, AssociatedTypeWitness);
        }

        else
        {
          v31 = sub_226D6EF1C();
          if (v33 != 8)
          {
            goto LABEL_14;
          }

          v47 = v31;
          v32 = v44;
          (*v42)(v44, &v47, AssociatedTypeWitness);
          v26 = v32;
          swift_unknownObjectRelease();
        }

        v27 = v24 + 1;
        v28 = v45;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v29 = (*v39)(v45, v26, AssociatedTypeWitness);
        v30 = MEMORY[0x22AA8B6A0](v29);
        (*(v41 + 96))(v28, v43, v46);
        objc_autoreleasePoolPop(v30);
        (*v40)(v28, AssociatedTypeWitness);
        ++v24;
        if (v27 == sub_226D6E66C())
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {
LABEL_12:
      (*(v35 + 8))(v34, v36);
    }
  }
}

id sub_226B579F8(void *a1, void (*a2)(void *))
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v11[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v11];

  if (v6)
  {
    v7 = v11[0];
    v8 = sub_226D6E36C();
    [a1 setTransactionAuthor_];

    a2(a1);
    if (!v2)
    {
      [a1 reset];
    }

    return [a1 setTransactionAuthor_];
  }

  else
  {
    v10 = v11[0];
    sub_226D6D04C();

    return swift_willThrow();
  }
}

id sub_226B57B54@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18 = a4;
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v19[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v19];

  if (v12)
  {
    v13 = v19[0];
    v14 = sub_226D6E36C();
    [a1 setTransactionAuthor_];

    a2(a1);
    if (!v4)
    {
      [a1 reset];
      (*(v8 + 32))(v18, v10, a3);
    }

    return [a1 setTransactionAuthor_];
  }

  else
  {
    v16 = v19[0];
    sub_226D6D04C();

    return swift_willThrow();
  }
}

unint64_t sub_226B57D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6E2FC();

  return sub_226B57DB0(a1, v6, a2, a3);
}

unint64_t sub_226B57DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_226D6E35C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_226B57F38(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_226C694C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_226B57FB4(v6);
  return sub_226D6EF7C();
}

void sub_226B57FB4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_226D6F1BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226AE59B4(0, &qword_28105F418, 0x277CBE4C8);
        v6 = sub_226D6E63C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_226B582E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_226B580C8(0, v2, 1, a1);
  }
}

void sub_226B580C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 timestamp];
      sub_226D6D45C();

      v22 = [v20 timestamp];
      v23 = v34;
      sub_226D6D45C();

      LOBYTE(v22) = sub_226D6D40C();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_226B582E8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_226C69374(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_226B58B58((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_226C69374(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_226C692E8(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 timestamp];
      v24 = v123;
      sub_226D6D45C();

      v25 = [v22 timestamp];
      v26 = v124;
      sub_226D6D45C();

      LODWORD(v121) = sub_226D6D40C();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 timestamp];
        v34 = v123;
        sub_226D6D45C();

        v35 = [v32 timestamp];
        v36 = v124;
        sub_226D6D45C();

        LODWORD(v35) = sub_226D6D40C() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_226BBB0C4(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_226BBB0C4((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_226B58B58((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_226C69374(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_226C692E8(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 timestamp];
    v53 = v123;
    sub_226D6D45C();

    v54 = [v51 timestamp];
    v55 = v124;
    sub_226D6D45C();

    LOBYTE(v54) = sub_226D6D40C();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_226B58B58(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_226D6D4AC();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 timestamp];
        v41 = v54;
        sub_226D6D45C();

        v42 = [v39 timestamp];
        v43 = v55;
        sub_226D6D45C();

        LOBYTE(v42) = sub_226D6D40C();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 timestamp];
        v21 = v54;
        sub_226D6D45C();

        v22 = [v19 timestamp];
        v23 = v55;
        sub_226D6D45C();

        LOBYTE(v22) = sub_226D6D40C();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

unint64_t sub_226B58FF4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_226D6EDFC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_226C40E9C();
  sub_226CEFD4C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_226B59088@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226B59F18(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226B590FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226B59144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_226D6E66C())
  {
    sub_226D6F11C();
    v13 = sub_226D6F10C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_226D6E66C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_226D6E64C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_226D6EF1C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_226B57D54(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_226B59430(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = sub_226D6B70C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6A32C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  v14 = (*(v6 + 88))(v8, v5);
  if (v14 == *MEMORY[0x277CC7FF0])
  {
    v15 = sub_226D6EB3C();
    v16 = MEMORY[0x277CC7B90];
  }

  else if (v14 == *MEMORY[0x277CC7FE8])
  {
    v15 = sub_226D6EB2C();
    v16 = MEMORY[0x277CC7B88];
  }

  else
  {
    if (v14 != *MEMORY[0x277CC7FF8])
    {
LABEL_42:
      result = sub_226D6F0AC();
      __break(1u);
      return result;
    }

    v15 = sub_226D6EB4C();
    v16 = MEMORY[0x277CC7B80];
  }

  (*(v10 + 104))(v13, *v16, v9);
  if (!v15)
  {
    (*(v10 + 8))(v13, v9);
    return MEMORY[0x277D84F90];
  }

  v80 = a2;
  v17 = v15;
  v18 = sub_226D6A31C();
  v20 = v19;
  v21 = [v17 metadata];
  if (!v21)
  {
    __break(1u);
    goto LABEL_42;
  }

  v22 = v21;
  v23 = sub_226D6E2BC();

  v24 = *(v23 + 16);
  v79 = v9;
  v77 = v13;
  if (!v24)
  {

    goto LABEL_20;
  }

  v25 = sub_226C2FDD4(v18, v20);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_226AC4708(*(v23 + 56) + 32 * v25, v83);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v78 = v2;
    v39 = 0;
    goto LABEL_22;
  }

  v28 = v82[0];
  sub_226AE59B4(0, &qword_27D7A6F88, 0x277CCAAC8);
  sub_226AE59B4(0, &qword_27D7A6F90, 0x277CBE4C0);
  v29 = sub_226D6EA0C();
  if (v2)
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v30 = sub_226D6E07C();
    __swift_project_value_buffer(v30, qword_28105F628);
    v31 = v2;
    v32 = sub_226D6E05C();
    v33 = sub_226D6E9CC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v2;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_226AB4000, v32, v33, "Failed to unarchive persistent history token with error: %@", v34, 0xCu);
      sub_226B17298(v35);
      MEMORY[0x22AA8BEE0](v35, -1, -1);
      MEMORY[0x22AA8BEE0](v34, -1, -1);
      sub_226B11B98(v28, *(&v28 + 1));
    }

    else
    {
      sub_226B11B98(v28, *(&v28 + 1));
    }

    v39 = 0;
    v78 = 0;
  }

  else
  {
    v73 = v29;
    v78 = 0;
    sub_226B11B98(v28, *(&v28 + 1));
    v39 = v73;
  }

LABEL_22:
  v40 = objc_opt_self();
  v41 = [v40 fetchHistoryAfterToken_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v42 = swift_allocObject();
  v76 = xmmword_226D71F20;
  *(v42 + 16) = xmmword_226D71F20;
  *(v42 + 32) = v17;
  sub_226AE59B4(0, &unk_28105F480, 0x277CBE4D0);
  v43 = v17;
  v44 = v41;
  v45 = sub_226D6E5CC();

  [v44 setAffectedStores_];

  *&v83[0] = 0;
  v46 = [v80 executeRequest:v44 error:v83];
  v47 = *&v83[0];
  if (!v46)
  {
    v51 = *&v83[0];
    v52 = sub_226D6D04C();

    swift_willThrow();
    v53 = sub_226D6D03C();
    if ([v53 code] == 134301)
    {
      v75 = v53;
      v78 = v52;
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v54 = sub_226D6E07C();
      __swift_project_value_buffer(v54, qword_28105F628);
      v55 = sub_226D6E05C();
      v56 = sub_226D6E9DC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_226AB4000, v55, v56, "Caught NSPersistentHistoryTokenExpiredError while mapping", v57, 2u);
        MEMORY[0x22AA8BEE0](v57, -1, -1);
      }

      v58 = [v40 fetchHistoryAfterToken_];
      v59 = swift_allocObject();
      *(v59 + 16) = v76;
      *(v59 + 32) = v43;
      v60 = v43;
      v43 = v58;
      v61 = sub_226D6E5CC();

      [v43 setAffectedStores_];

      *&v83[0] = 0;
      v62 = [v80 executeRequest:v43 error:v83];
      v63 = *&v83[0];
      if (v62)
      {
        v64 = v62;
        objc_opt_self();
        v65 = swift_dynamicCastObjCClassUnconditional();
        v66 = v63;
        v67 = [v65 result];
        v69 = v77;
        v68 = v78;
        if (v67)
        {
          sub_226D6ED0C();

          swift_unknownObjectRelease();
          (*(v10 + 8))(v69, v79);
          sub_226B24A98(v83, v82);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
          swift_dynamicCast();
          return v81;
        }

        (*(v10 + 8))(v69, v79);
        return MEMORY[0x277D84F90];
      }

      v72 = *&v83[0];
      sub_226D6D04C();

      swift_willThrow();
      v39 = v60;
      v71 = v77;
      v70 = v75;
    }

    else
    {
      swift_willThrow();

      v70 = v43;
      v71 = v77;
    }

    return (*(v10 + 8))(v71, v79);
  }

  v48 = v46;
  objc_opt_self();
  v49 = swift_dynamicCastObjCClassUnconditional();
  v50 = v47;
  if ([v49 result])
  {
    sub_226D6ED0C();

    swift_unknownObjectRelease();
    (*(v10 + 8))(v77, v79);
    sub_226B24A98(v83, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
    swift_dynamicCast();
    return v81;
  }

  else
  {

    (*(v10 + 8))(v77, v79);
    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_226B59F18(void *a1)
{
  v3 = sub_226D6B70C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v58 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v58 - v12;
  v63 = MEMORY[0x277D84F90];
  v14 = *(v4 + 104);
  v14(v58 - v12, *MEMORY[0x277CC7FF0], v3, v11);
  v15 = sub_226B59430(v13, a1);
  if (v1)
  {
    return (*(v4 + 8))(v13, v3);
  }

  v17 = *(v4 + 8);
  v18 = v15;
  v60 = 0;
  v61 = v17;
  v17(v13, v3);
  sub_226CED904(v18);
  (v14)(v9, *MEMORY[0x277CC7FE8], v3);
  v59 = a1;
  v19 = v60;
  v20 = sub_226B59430(v9, a1);
  if (v19)
  {
    v61(v9, v3);
  }

  v21 = v20;
  v22 = v9;
  v23 = v61;
  v61(v22, v3);
  sub_226CED904(v21);
  (v14)(v6, *MEMORY[0x277CC7FF8], v3);
  v24 = sub_226B59430(v6, v59);
  v23(v6, v3);
  sub_226CED904(v24);
  v25 = v63;
  v62 = MEMORY[0x277D84F90];
  v60 = 0;
  if (v63 >> 62)
  {
    goto LABEL_50;
  }

  v26 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v27 = MEMORY[0x277D84F90];
  v58[1] = v25;
  if (v26)
  {
    v28 = 0;
    v61 = (v25 & 0xC000000000000001);
    v29 = v25 & 0xFFFFFFFFFFFFFF8;
    v59 = 0x8000000226D7FDA0;
    while (1)
    {
      if (v61)
      {
        v30 = v25;
        v31 = MEMORY[0x22AA8AFD0](v28);
      }

      else
      {
        if (v28 >= *(v29 + 16))
        {
          goto LABEL_47;
        }

        v30 = v25;
        v31 = *(v25 + 8 * v28 + 32);
      }

      v32 = v31;
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v54 = v25;
        v55 = sub_226D6EDFC();
        v25 = v54;
        v26 = v55;
        goto LABEL_7;
      }

      v34 = [v31 author];
      if (!v34)
      {
        goto LABEL_9;
      }

      v35 = v34;
      v36 = sub_226D6E39C();
      v38 = v37;

      if (v36 == 0xD000000000000027 && v59 == v38)
      {

        goto LABEL_10;
      }

      v40 = sub_226D6F21C();

      if (v40)
      {
      }

      else
      {
LABEL_9:
        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

LABEL_10:
      ++v28;
      v25 = v30;
      if (v33 == v26)
      {
        v41 = v62;
        v27 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_26:
  v62 = v27;
  if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
  {
    v42 = sub_226D6EDFC();
    if (v42)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v42 = *(v41 + 16);
    if (v42)
    {
LABEL_29:
      v43 = 0;
      v61 = (v41 & 0xC000000000000001);
      do
      {
        if (v61)
        {
          v44 = MEMORY[0x22AA8AFD0](v43, v41);
        }

        else
        {
          if (v43 >= *(v41 + 16))
          {
            goto LABEL_49;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_48;
        }

        v47 = [v44 author];
        if (!v47)
        {
          goto LABEL_30;
        }

        v48 = v47;
        v49 = sub_226D6E39C();
        v51 = v50;

        if (v49 == 0xD000000000000026 && 0x8000000226D7FDD0 == v51)
        {

          goto LABEL_31;
        }

        v53 = sub_226D6F21C();

        if (v53)
        {
        }

        else
        {
LABEL_30:
          sub_226D6EF6C();
          sub_226D6EF9C();
          sub_226D6EFAC();
          sub_226D6EF7C();
        }

LABEL_31:
        ++v43;
      }

      while (v46 != v42);
    }
  }

  v62 = sub_226B58FF4(v56);
  v57 = v60;
  sub_226B57F38(&v62);
  if (v57)
  {

    __break(1u);
  }

  else
  {

    return v62;
  }

  return result;
}

unint64_t sub_226B5A5A4()
{
  result = qword_27D7A6F80;
  if (!qword_27D7A6F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A6F78, &unk_226D758E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F80);
  }

  return result;
}

uint64_t sub_226B5A608()
{
  swift_getAssociatedTypeWitness();

  return sub_226D6E62C();
}

uint64_t sub_226B5A650@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
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

uint64_t sub_226B5A6FC(uint64_t a1, int a2)
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

uint64_t sub_226B5A744(uint64_t result, int a2, int a3)
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

uint64_t sub_226B5A79C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_226D69A3C();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_226D69A4C();
  if (v8[3])
  {
    v4 = sub_226D6D4AC();
    v5 = swift_dynamicCast();
    (*(*(v4 - 8) + 56))(a1, v5 ^ 1u, 1, v4);
  }

  else
  {
    sub_226B5AAF4(v8);
    v6 = sub_226D6D4AC();
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  return v3 & 1;
}

uint64_t sub_226B5A910(unsigned __int8 a1)
{
  v3 = a1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (v3 == 2)
  {
    return sub_226D69A1C();
  }

  v6 = MEMORY[0x277D839B0];
  v5[0] = a1 & 1;
  sub_226D69A2C();
  return sub_226B5AAF4(v5);
}

uint64_t sub_226B5A9C8(char a1, uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9[0]) = a1;
  sub_226D69A2C();
  sub_226B5AAF4(v9);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = sub_226D6D4AC();
  v10 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a2, v6);
  sub_226D69A2C();
  return sub_226B5AAF4(v9);
}

uint64_t sub_226B5AAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BB0, &unk_226D74340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_226B5ABA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_226B5ABE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226B5AC68(uint64_t a1, void *a2)
{
  v4 = sub_226D6B49C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D691CC();
  sub_226D6740C();
  v8 = sub_226D691BC();
  if (v2)
  {
    v10 = *(v5 + 8);
    v9 = v5 + 8;
    v10(v7, v4);
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v11 = sub_226D6E07C();
    __swift_project_value_buffer(v11, qword_28105F5C0);
    v12 = v2;
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_226AB4000, v13, v14, "Could not delete wallet messages: %@", v15, 0xCu);
      sub_226AC47B0(v16, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    swift_willThrow();
    return v9 & 1;
  }

  v19 = v8;
  result = (*(v5 + 8))(v7, v4);
  if (v19 >> 62)
  {
    result = sub_226D6EDFC();
    v21 = result;
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v21 != 0;
  if (!v21)
  {
LABEL_16:

    return v9 & 1;
  }

  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x22AA8AFD0](i, v19);
      }

      else
      {
        v23 = *(v19 + 8 * i + 32);
      }

      v24 = v23;
      [a2 deleteObject_];
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B5AF60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D66DBC();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6714C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ManagedOrderDeleter.DeleteResult(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6B49C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  sub_226B5B60C(a1, v12);
  v35 = v13;
  v36 = v14;
  (*(v14 + 32))(v16, v12, v13);
  v34 = v16;
  sub_226B5B670(v16);
  v18 = v2;
  sub_226AC40E8(v2 + 40, v37, &qword_27D7A6910, &unk_226D721C0);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v7 + 104))(v9, *MEMORY[0x277CC6B48], v6);
    sub_226D680BC();
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  else
  {
    sub_226AC47B0(v37, &qword_27D7A6910, &unk_226D721C0);
  }

  sub_226B5B60C(v17, v12);
  v19 = v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60) + 48)];
  v20 = *(v36 + 8);
  v21 = v12;
  v22 = v35;
  v20(v21, v35);
  v23 = v34;
  if (v19 == 1)
  {
    sub_226AC40E8(v18 + 80, v37, &qword_27D7A6E50, &unk_226D73598);
    if (v38)
    {
      __swift_project_boxed_opaque_existential_1(v37, v38);
      sub_226D69A5C();
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    else
    {
      sub_226AC47B0(v37, &qword_27D7A6E50, &unk_226D73598);
    }
  }

  sub_226AC40E8(v18 + 120, v37, &qword_27D7A6FA0, &qword_226D79780);
  if (v38)
  {
    v25 = v31;
    v24 = v32;
    v26 = v33;
    (*(v32 + 104))(v31, *MEMORY[0x277CC6508], v33);
    v27 = sub_226D66D6C();
    (*(v24 + 8))(v25, v26);
    if (v27)
    {
      v28 = __swift_project_boxed_opaque_existential_1(v37, v38);
      MEMORY[0x28223BE20](v28);
      *(&v30 - 2) = v23;
      off_283A6D830(sub_226B5BE00);
    }

    v20(v23, v22);
    return sub_226B5BD20(v37);
  }

  else
  {
    v20(v23, v22);
    return sub_226AC47B0(v37, &qword_27D7A6FA0, &qword_226D79780);
  }
}

uint64_t type metadata accessor for ManagedOrderDeleter.DeleteResult(uint64_t a1)
{
  result = qword_27D7A6FA8;
  if (!qword_27D7A6FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B5B60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedOrderDeleter.DeleteResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B5B670(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - v5;
  v53 = a1;
  v6 = sub_226D6B47C();
  v8 = v7;
  v9 = v2[3];
  v51 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  v10 = sub_226D69FFC();
  v11 = v10;
  v56 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_35;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v54 = v11 & 0xFFFFFFFFFFFFFF8;
    v55 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v55)
      {
        v15 = MEMORY[0x22AA8AFD0](v14, v11);
      }

      else
      {
        if (v14 >= *(v54 + 16))
        {
          goto LABEL_34;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v12 = sub_226D6EDFC();
        goto LABEL_3;
      }

      v18 = [v15 request];
      v19 = [v18 content];

      v20 = [v19 threadIdentifier];
      v21 = sub_226D6E39C();
      v23 = v22;

      if (v21 == v6 && v23 == v8)
      {
      }

      else
      {
        v25 = sub_226D6F21C();

        if ((v25 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
LABEL_7:
      ++v14;
      if (v17 == v12)
      {
        v26 = v56;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }
  }

  v26 = MEMORY[0x277D84F90];
LABEL_21:

  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
    v27 = sub_226D6EDFC();
    if (v27)
    {
      goto LABEL_24;
    }

LABEL_37:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_37;
  }

LABEL_24:
  v56 = v13;
  sub_226AE1D68(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
    goto LABEL_40;
  }

  v28 = 0;
  v8 = v56;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x22AA8AFD0](v28, v26);
    }

    else
    {
      v29 = *(v26 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = [v30 request];
    v32 = [v31 identifier];
    v33 = sub_226D6E39C();
    v35 = v34;

    v56 = v8;
    v37 = *(v8 + 16);
    v36 = *(v8 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_226AE1D68((v36 > 1), v37 + 1, 1);
      v8 = v56;
    }

    ++v28;
    *(v8 + 16) = v37 + 1;
    v38 = v8 + 16 * v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
  }

  while (v27 != v28);

LABEL_38:
  if (!*(v8 + 16))
  {
    goto LABEL_43;
  }

  if (qword_28105F5B8 != -1)
  {
    goto LABEL_45;
  }

LABEL_40:
  v39 = sub_226D6E07C();
  __swift_project_value_buffer(v39, qword_28105F5C0);

  v40 = sub_226D6E05C();
  v41 = sub_226D6E9AC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v56 = v43;
    *v42 = 136315138;
    v44 = MEMORY[0x22AA8A6A0](v8, MEMORY[0x277D837D0]);
    v46 = sub_226AC4530(v44, v45, &v56);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_226AB4000, v40, v41, "Removing outstanding notifications: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x22AA8BEE0](v43, -1, -1);
    MEMORY[0x22AA8BEE0](v42, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  sub_226D6A00C();
LABEL_43:

  v47 = sub_226D6D1AC();
  v48 = v52;
  (*(*(v47 - 8) + 56))(v52, 1, 1, v47);
  type metadata accessor for NotificationAttachmentStore(0);
  swift_allocObject();
  NotificationAttachmentStore.init(notificationAttachmentDirectory:)(v48);
  sub_226BCF534();
}

uint64_t sub_226B5BD7C()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t sub_226B5BDC0(uint64_t a1)
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t sub_226B5BE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226B5BE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_226B5BF18(uint64_t a1)
{
  sub_226B5BFEC(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_226D6B49C();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_226B5BFEC(uint64_t a1)
{
  if (!qword_27D7A6FB8)
  {
    sub_226D6B49C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A6FB8);
    }
  }
}

unint64_t sub_226B5C05C()
{
  result = qword_27D7A6FC0;
  if (!qword_27D7A6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6FC0);
  }

  return result;
}

uint64_t sub_226B5C0B8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask(0);
  sub_226AF265C(v1 + Task[9], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[7], a1);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + Task[8]);
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_226B5C2D0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2[8] = swift_task_alloc();
  v4 = sub_226D6D4AC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_226D6BE1C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B5C480, 0, 0);
}

uint64_t sub_226B5C480()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v14 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 56);
  v5 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_226B41FC0();
  v17 = swift_allocObject();
  sub_226B42014(v5, v17 + 16);
  v6 = sub_226D6BE3C();
  swift_allocObject();
  v7 = sub_226D6BDFC();
  *(v0 + 120) = v7;
  *(v0 + 16) = v7;
  v8 = *(type metadata accessor for BankConnectTransactionsDataFetchTask(0) + 20);
  sub_226D6D3DC();
  (*(v1 + 56))(v2, 1, 1, v14);
  sub_226D6BE0C();
  (*(v3 + 104))(v16, *MEMORY[0x277CC6D38], v15);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_226B5C654;
  v10 = *(v0 + 112);
  v11 = *(v0 + 56);
  v12 = MEMORY[0x277CC8178];

  return MEMORY[0x28211A688](v4 + v8, v10, v11, v6, v12);
}

uint64_t sub_226B5C654()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_226B5C970;
  }

  else
  {
    v6 = sub_226B5C818;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226B5C818()
{
  v1 = v0[3];
  v2 = v0[4];

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_226D676AC();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_226D6EB7C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_226B5C970()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226B5CA04(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask(0);
  MEMORY[0x28223BE20](Task);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v8 = sub_226D69D9C();
  if (!v2)
  {
    if (v8)
    {
      v9 = v8;
      [v8 setTransactionsRequestAttemptCount_];
      [v9 setLastTransactionsRequestAttemptDate_];
      v21[0] = 0;
      if ([a2 save_])
      {
        v10 = v21[0];
      }

      else
      {
        v20 = v21[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v11 = sub_226D6E07C();
      __swift_project_value_buffer(v11, qword_28105F710);
      sub_226B5DDB8(a1, v7, type metadata accessor for BankConnectTransactionsDataFetchTask);
      v12 = sub_226D6E05C();
      v13 = sub_226D6E9AC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21[0] = v15;
        *v14 = 136315138;
        sub_226D6B9BC();
        sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v16 = sub_226D6F1CC();
        v18 = v17;
        sub_226B5DE20(v7, type metadata accessor for BankConnectTransactionsDataFetchTask);
        v19 = sub_226AC4530(v16, v18, v21);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_226AB4000, v12, v13, "Account %s doesn't exist", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
        MEMORY[0x22AA8BEE0](v14, -1, -1);
      }

      else
      {

        sub_226B5DE20(v7, type metadata accessor for BankConnectTransactionsDataFetchTask);
      }
    }
  }
}

uint64_t sub_226B5CD3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for BankConnectTransactionsDataFetchTask(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B5CE04, 0, 0);
}

uint64_t sub_226B5CE04()
{
  v27 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226B5DDB8(v3, v1, type metadata accessor for BankConnectTransactionsDataFetchTask);
  sub_226B5DDB8(v4, v2, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  if (!v8)
  {
    v20 = *(v0 + 48);

    sub_226B5DE20(v20, MEMORY[0x277CC6528]);
    sub_226B5DE20(v9, type metadata accessor for BankConnectTransactionsDataFetchTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = *(v0 + 48);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v26 = v13;
  *v11 = 136315394;
  sub_226D6B9BC();
  sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v14 = sub_226D6F1CC();
  v16 = v15;
  sub_226B5DE20(v9, type metadata accessor for BankConnectTransactionsDataFetchTask);
  v17 = sub_226AC4530(v14, v16, &v26);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2112;
  sub_226B5E018(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
  swift_allocError();
  sub_226B5DDB8(v10, v18, MEMORY[0x277CC6528]);
  v19 = _swift_stdlib_bridgeErrorToNSError();
  sub_226B5DE20(v10, MEMORY[0x277CC6528]);
  *(v11 + 14) = v19;
  *v12 = v19;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to fetch transactions for account %s with error: %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v21 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v22 = sub_226D676AC();
    v23 = swift_task_alloc();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    sub_226D6EB7C();
  }

LABEL_8:

  v24 = *(v0 + 8);

  return v24();
}

void sub_226B5D22C(uint64_t a1, void *a2)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask(0);
  MEMORY[0x28223BE20](Task);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  sub_226D69F0C();
  v14 = sub_226D69D9C();
  if (v2)
  {
    return;
  }

  v15 = v14;
  v43 = a2;
  v44 = v10;
  v16 = v46;
  v45 = 0;
  if (!v14)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v20 = sub_226D6E07C();
    __swift_project_value_buffer(v20, qword_28105F710);
    v21 = v13;
    sub_226B5DDB8(a1, v13, type metadata accessor for BankConnectTransactionsDataFetchTask);
    v22 = sub_226D6E05C();
    v23 = sub_226D6E9AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47[0] = v25;
      *v24 = 136315138;
      sub_226D6B9BC();
      sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v26 = sub_226D6F1CC();
      v28 = v27;
      sub_226B5DE20(v21, type metadata accessor for BankConnectTransactionsDataFetchTask);
      v29 = sub_226AC4530(v26, v28, v47);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_226AB4000, v22, v23, "Account %s doesn't exist", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
      MEMORY[0x22AA8BEE0](v24, -1, -1);

      return;
    }

    v41 = v21;
LABEL_17:
    sub_226B5DE20(v41, type metadata accessor for BankConnectTransactionsDataFetchTask);
    return;
  }

  if (([v14 isAccountEnabled] & 1) == 0)
  {
    if (qword_28105F708 == -1)
    {
LABEL_13:
      v30 = sub_226D6E07C();
      __swift_project_value_buffer(v30, qword_28105F710);
      v31 = v44;
      sub_226B5DDB8(a1, v44, type metadata accessor for BankConnectTransactionsDataFetchTask);
      v32 = sub_226D6E05C();
      v33 = sub_226D6E9AC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = v15;
        v36 = swift_slowAlloc();
        v47[0] = v36;
        *v34 = 136315138;
        sub_226D6B9BC();
        sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v37 = sub_226D6F1CC();
        v39 = v38;
        sub_226B5DE20(v31, type metadata accessor for BankConnectTransactionsDataFetchTask);
        v40 = sub_226AC4530(v37, v39, v47);

        *(v34 + 4) = v40;
        _os_log_impl(&dword_226AB4000, v32, v33, "Account %s was disabled while fetching data from the server.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x22AA8BEE0](v36, -1, -1);
        MEMORY[0x22AA8BEE0](v34, -1, -1);

        return;
      }

      v41 = v31;
      goto LABEL_17;
    }

LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  v17 = [v15 transactionsRequestAttemptCount];
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  [v15 setTransactionsRequestAttemptCount_];
  sub_226D6D46C();
  v18 = sub_226D6D3EC();
  (*(v16 + 8))(v7, v5);
  [v15 setLastTransactionsRequestAttemptDate_];

  v47[0] = 0;
  if ([v43 save_])
  {
    v19 = v47[0];
  }

  else
  {
    v42 = v47[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B5D840(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B5C2D0(a1);
}

uint64_t sub_226B5D8D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226B5CD3C(a1, a2);
}

uint64_t sub_226B5D978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_226D6B9BC();
  (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226B5DA04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v3 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71840;
  v6 = *(a1 + 20);
  v7 = sub_226D6B9BC();
  (*(*(v7 - 8) + 16))(v5 + v4, v1 + v6, v7);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = sub_226B1ED68(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v8;
}

unint64_t sub_226B5DB68()
{
  sub_226D6B9BC();
  sub_226B5E018(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

uint64_t sub_226B5DCBC(uint64_t a1)
{
  result = sub_226B5E018(&qword_27D7A6FC8, type metadata accessor for BankConnectTransactionsDataFetchTask, &unk_226D73C60);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectTransactionsDataFetchTask(uint64_t a1)
{
  result = qword_27D7A6FE0;
  if (!qword_27D7A6FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B5DD60(uint64_t a1)
{
  result = sub_226B5E018(&qword_27D7A6FD8, type metadata accessor for BankConnectTransactionsDataFetchTask, &unk_226D73CA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B5DDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B5DE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B5DEE0(uint64_t a1)
{
  sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    sub_226D6B9BC();
    if (v2 <= 0x3F)
    {
      sub_226B20350(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_226B5DF94(uint64_t a1)
{
  *(a1 + 8) = sub_226B5E018(&qword_27D7A6FF0, type metadata accessor for BankConnectTransactionsDataFetchTask, &unk_226D73CD0);
  result = sub_226B5E018(&qword_27D7A6FF8, type metadata accessor for BankConnectTransactionsDataFetchTask, &unk_226D73D48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226B5E018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_226B5E064(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v3 = sub_226D6EA3C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_226D6E1BC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_226D6EA4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v5);
  sub_226D6E19C();
  v15 = MEMORY[0x277D84F90];
  sub_226B5F840(&qword_28105F478, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226B5F888(&qword_28105F518, &qword_27D7A6C00, &qword_226D73DF0);
  sub_226D6ED5C();
  v2[4] = sub_226D6EA8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7008, &qword_226D73DF8);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  v2[5] = v9;
  v10 = v14;
  v2[2] = v13;
  v2[3] = v10;
  return v2;
}

void sub_226B5E300(void *a1)
{
  v2 = v1;
  v4 = sub_226D6E18C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6E1BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 userInfo];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = sub_226D6E2BC();

  v45 = sub_226D6E39C();
  v46 = v16;
  sub_226D6EE8C();
  if (!*(v15 + 16) || (v17 = sub_226C2FE4C(&aBlock), (v18 & 1) == 0))
  {

    sub_226AE5030(&aBlock);
LABEL_11:
    v47 = 0u;
    v48 = 0u;
    goto LABEL_12;
  }

  sub_226AC4708(*(v15 + 56) + 32 * v17, &v47);
  sub_226AE5030(&aBlock);

  if (!*(&v48 + 1))
  {
LABEL_12:
    sub_226AC47B0(&v47, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v19 = v40;
    v38 = aBlock;
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v20 = sub_226D6E07C();
    __swift_project_value_buffer(v20, qword_28105F628);

    v21 = sub_226D6E05C();
    v22 = sub_226D6E9AC();

    LODWORD(v37) = v22;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v23 = 136315138;
      v24 = sub_226AC4530(v38, v19, &aBlock);
      v38 = v21;
      v25 = v24;

      *(v23 + 4) = v25;
      v26 = v38;
      _os_log_impl(&dword_226AB4000, v38, v37, "Received NSPersistentStoreRemoteChangeNotification for store: %s", v23, 0xCu);
      v27 = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
    }

    else
    {
    }

    v32 = *(v2 + 40);
    os_unfair_lock_lock((v32 + 20));
    if (*(v32 + 16) == 1)
    {
      *(v32 + 17) = 1;
      os_unfair_lock_unlock((v32 + 20));
    }

    else
    {
      *(v32 + 16) = 1;
      os_unfair_lock_unlock((v32 + 20));
      v38 = *(v2 + 32);
      v33 = swift_allocObject();
      *(v33 + 16) = v2;
      *(v33 + 24) = v32;
      v43 = sub_226B5F804;
      v44 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_226C0B9A8;
      v42 = &block_descriptor_3;
      v37 = _Block_copy(&aBlock);

      sub_226D6E19C();
      *&v47 = MEMORY[0x277D84F90];
      sub_226B5F840(&qword_28105F588, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7000, &unk_226D73DE0);
      sub_226B5F888(&qword_28105F528, &qword_27D7A7000, &unk_226D73DE0);
      sub_226D6ED5C();
      v34 = v37;
      MEMORY[0x22AA8AB20](0, v12, v7, v37);
      _Block_release(v34);
      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v8);
    }

    return;
  }

LABEL_13:
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v28 = sub_226D6E07C();
  __swift_project_value_buffer(v28, qword_28105F628);
  v29 = sub_226D6E05C();
  v30 = sub_226D6E9CC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226AB4000, v29, v30, "Received NSPersistentStoreRemoteChangeNotification but no store present", v31, 2u);
    MEMORY[0x22AA8BEE0](v31, -1, -1);
  }
}

void sub_226B5E900(uint64_t a1, uint64_t a2)
{
  os_transaction_create();
  while (1)
  {
    sub_226D66E6C();
    os_unfair_lock_lock((a2 + 20));
    if (*(a2 + 16) != 1)
    {
      __break(1u);
      return;
    }

    if (*(a2 + 17) != 1)
    {
      break;
    }

    *(a2 + 17) = 0;
    os_unfair_lock_unlock((a2 + 20));
  }

  *(a2 + 16) = 0;
  os_unfair_lock_unlock((a2 + 20));

  swift_unknownObjectRelease();
}

uint64_t sub_226B5EBB4()
{

  return swift_deallocClassInstance();
}

void sub_226B5EC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v69 = a3;
  v74 = *MEMORY[0x277D85DE8];
  v4 = sub_226D6A32C();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v13 = sub_226D6B70C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  *&v72 = 0;
  v18 = [v17 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v72];
  v19 = v72;
  if (!v18)
  {
    v36 = v19;
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v65 = v4;
  v66 = sub_226D6D21C();
  v21 = v20;

  (*(v14 + 16))(v16, v68, v13);
  v22 = (*(v14 + 88))(v16, v13);
  if (v22 == *MEMORY[0x277CC7FF0])
  {
    v23 = sub_226D6EB3C();
    if (v23)
    {
      v24 = v23;
      v25 = v67;
      v26 = v65;
      (*(v67 + 104))(v12, *MEMORY[0x277CC7B90], v65);
      v27 = sub_226D6A31C();
      v29 = v28;
      (*(v25 + 8))(v12, v26);
      v73 = MEMORY[0x277CC9318];
      v30 = v66;
      *&v72 = v66;
      *(&v72 + 1) = v21;
      sub_226B11B44(v66, v21);
      v31 = [v24 metadata];
      if (v31)
      {
        v32 = v31;
        v33 = sub_226D6E2BC();

        sub_226B24A98(&v72, v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v33;
        sub_226BE6188(v71, v27, v29, isUniquelyReferenced_nonNull_native);

        if (v70)
        {
          v35 = sub_226D6E2AC();
        }

        else
        {
          v35 = 0;
        }

        [v24 setMetadata_];
        v64 = v30;
LABEL_25:
        sub_226B11B98(v64, v21);

        return;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_13:
    v48 = v66;
    v49 = v21;
LABEL_22:
    sub_226B11B98(v48, v49);
    return;
  }

  if (v22 == *MEMORY[0x277CC7FE8])
  {
    v37 = sub_226D6EB2C();
    if (v37)
    {
      v24 = v37;
      v38 = v67;
      v39 = v65;
      (*(v67 + 104))(v9, *MEMORY[0x277CC7B88], v65);
      v40 = sub_226D6A31C();
      v42 = v41;
      (*(v38 + 8))(v9, v39);
      v73 = MEMORY[0x277CC9318];
      v43 = v66;
      *&v72 = v66;
      *(&v72 + 1) = v21;
      sub_226B11B44(v66, v21);
      v44 = [v24 metadata];
      if (v44)
      {
        v45 = v44;
        v46 = sub_226D6E2BC();

        sub_226B24A98(&v72, v71);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v70 = v46;
        sub_226BE6188(v71, v40, v42, v47);

        if (v70)
        {
          v35 = sub_226D6E2AC();
        }

        else
        {
          v35 = 0;
        }

        [v24 setMetadata_];
        v64 = v43;
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    goto LABEL_13;
  }

  if (v22 != *MEMORY[0x277CC7FF8])
  {
LABEL_32:
    sub_226D6F0AC();
    __break(1u);
    return;
  }

  v50 = v21;
  v51 = sub_226D6EB4C();
  v52 = v66;
  if (!v51)
  {
    v48 = v66;
    v49 = v50;
    goto LABEL_22;
  }

  v53 = v51;
  v54 = v67;
  v55 = v65;
  (*(v67 + 104))(v6, *MEMORY[0x277CC7B80], v65);
  v56 = sub_226D6A31C();
  v58 = v57;
  (*(v54 + 8))(v6, v55);
  v73 = MEMORY[0x277CC9318];
  *&v72 = v52;
  *(&v72 + 1) = v50;
  sub_226B11B44(v52, v50);
  v59 = [v53 metadata];
  if (!v59)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v60 = v59;
  v61 = sub_226D6E2BC();

  sub_226B24A98(&v72, v71);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v70 = v61;
  sub_226BE6188(v71, v56, v58, v62);

  if (v70)
  {
    v63 = sub_226D6E2AC();
  }

  else
  {
    v63 = 0;
  }

  [v53 setMetadata_];
  sub_226B11B98(v52, v50);
}

uint64_t sub_226B5F38C(uint64_t a1)
{
  v2 = sub_226D6A32C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6B70C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277CC7FF0])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CC7B90], v2);
    v12 = sub_226D6A31C();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_226D6EB3C();
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v11 == *MEMORY[0x277CC7FE8])
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CC7B88], v2);
    v12 = sub_226D6A31C();
    v14 = v16;
    (*(v3 + 8))(v5, v2);
    v15 = sub_226D6EB2C();
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  if (v11 != *MEMORY[0x277CC7FF8])
  {
    goto LABEL_19;
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CC7B80], v2);
  v12 = sub_226D6A31C();
  v14 = v26;
  (*(v3 + 8))(v5, v2);
  v15 = sub_226D6EB4C();
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_6:
  v17 = v15;
  v18 = [v17 metadata];
  if (v18)
  {
    v19 = v18;
    v20 = sub_226D6E2BC();

    if (*(v20 + 16))
    {
      v21 = sub_226C2FDD4(v12, v14);
      v23 = v22;

      if (v23)
      {
        sub_226AC4708(*(v20 + 56) + 32 * v21, v30);

        if (swift_dynamicCast())
        {
          v24 = v29[2];
          v25 = v29[3];
          sub_226AE59B4(0, &qword_27D7A6F88, 0x277CCAAC8);
          sub_226AE59B4(0, &qword_27D7A6F90, 0x277CBE4C0);
          v27 = sub_226D6EA0C();

          sub_226B11B98(v24, v25);
          return v27;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_16:

    return 0;
  }

  __break(1u);
LABEL_19:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B5F840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B5F888(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

char *sub_226B5F900()
{
  v66 = sub_226D67F1C();
  v0 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v2 = v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_226D6A7AC();
  v3 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = v56 - v6;
  v76 = sub_226D6D1AC();
  v70 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v63 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v56 - v9;
  MEMORY[0x28223BE20](v11);
  v67 = v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v56 - v17;
  MEMORY[0x28223BE20](v19);
  v69 = v56 - v20;
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v22 = result;
    v23 = [objc_opt_self() webServiceURLWithWebService_];

    if (v23)
    {
      sub_226D6D14C();

      v24 = v70;
      v25 = *(v70 + 56);
      v26 = v18;
      v27 = 0;
    }

    else
    {
      v24 = v70;
      v25 = *(v70 + 56);
      v26 = v18;
      v27 = 1;
    }

    v28 = v76;
    v25(v26, v27, 1, v76);
    v29 = v18;
    v30 = v69;
    sub_226B60108(v29, v69);
    sub_226B60178(v30, v15);
    if ((*(v24 + 48))(v15, 1, v28) == 1)
    {
      sub_226B601E8(v15);
      sub_226B60250();
      v71 = swift_allocError();
      swift_willThrow();
      sub_226B601E8(v30);
      return v15;
    }

    v61 = v0;
    v31 = v67;
    (*(v24 + 32))(v67, v15, v28);
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v32 = sub_226D6E07C();
    __swift_project_value_buffer(v32, qword_28105F5C0);
    v33 = *(v24 + 16);
    v58 = v24 + 16;
    v57 = v33;
    v33(v10, v31, v28);
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9AC();
    v36 = os_log_type_enabled(v34, v35);
    v60 = v3;
    v62 = v2;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = v24;
      v39 = swift_slowAlloc();
      v75[0] = v39;
      *v37 = 136315138;
      sub_226B602A4();
      v40 = sub_226D6F1CC();
      v42 = v41;
      v59 = *(v38 + 8);
      v59(v10, v28);
      v43 = sub_226AC4530(v40, v42, v75);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_226AB4000, v34, v35, "Creating Prism web service client with URL: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    else
    {

      v59 = *(v24 + 8);
      v59(v10, v28);
    }

    v44 = v68;
    sub_226D6A79C();
    v45 = [objc_opt_self() ephemeralSessionConfiguration];
    sub_226D67E6C();
    sub_226D67F0C();
    v46 = sub_226D6E36C();

    [v45 set:v46 sourceApplicationBundleIdentifier:?];

    v47 = sub_226D1EA08();
    v56[1] = v45;
    [v45 set:v47 appleIDContext:?];

    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v48 = sub_226D69BDC();
      swift_allocObject();
      v49 = sub_226D69BCC();
      v50 = sub_226D676FC();
      swift_allocObject();
      v51 = sub_226D676EC();
      v52 = v67;
      v57(v63, v67, v76);
      v53 = v60;
      v54 = v44;
      v55 = v65;
      (*(v60 + 16))(v64, v54, v65);
      v75[3] = v48;
      v75[4] = MEMORY[0x277CC79A0];
      v75[0] = v49;
      v73 = v50;
      v74 = MEMORY[0x277CC6DA0];
      v72 = v51;
      sub_226D6827C();
      sub_226D699CC();
      swift_allocObject();
      v15 = sub_226D699BC();
      (*(v61 + 8))(v62, v66);
      (*(v53 + 8))(v68, v55);
      v59(v52, v76);
      sub_226B601E8(v69);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226B60108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B60178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B601E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226B60250()
{
  result = qword_27D7A7010;
  if (!qword_27D7A7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7010);
  }

  return result;
}

unint64_t sub_226B602A4()
{
  result = qword_27D7A7018;
  if (!qword_27D7A7018)
  {
    sub_226D6D1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7018);
  }

  return result;
}

unint64_t sub_226B60310()
{
  result = qword_27D7A7020;
  if (!qword_27D7A7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7020);
  }

  return result;
}

uint64_t sub_226B60364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_226AC40E8(a3, v25 - v10, &unk_27D7A8BA0, &qword_226D734E0);
  v12 = sub_226D6E79C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226AC47B0(v11, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_226D6E6CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_226D6E40C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);

      return v23;
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

  sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t Daemon.__allocating_init()()
{
  v0 = swift_allocObject();
  Daemon.init()();
  return v0;
}

void *Daemon.init()()
{
  v0 = sub_226D6E0AC();
  MEMORY[0x28223BE20](v0 - 8);
  v297 = &v290 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v311 = &v290 - v3;
  v325 = sub_226D679BC();
  v331 = *(v325 - 1);
  MEMORY[0x28223BE20](v325);
  v296 = &v290 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v310 = &v290 - v6;
  v322 = sub_226D66E1C();
  v309 = *(v322 - 1);
  MEMORY[0x28223BE20](v322);
  v307 = &v290 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v308 = &v290 - v9;
  v324 = sub_226D67F1C();
  v330 = *(v324 - 1);
  MEMORY[0x28223BE20](v324);
  v323 = (&v290 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_226D6EA4C();
  v305 = *(v11 - 8);
  v306 = v11;
  MEMORY[0x28223BE20](v11);
  v304 = &v290 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_226D6EA3C();
  MEMORY[0x28223BE20](v302);
  v303 = &v290 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6E1BC();
  MEMORY[0x28223BE20](v14 - 8);
  v301 = &v290 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6BBAC();
  MEMORY[0x28223BE20](v16 - 8);
  v316 = &v290 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D6D1AC();
  MEMORY[0x28223BE20](v18 - 8);
  v298 = &v290 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D6B94C();
  MEMORY[0x28223BE20](v20 - 8);
  v312 = &v290 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_226D6B5EC();
  v295 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v293 = &v290 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v319 = &v290 - v24;
  v320 = sub_226D6B92C();
  v318 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v300 = &v290 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v329 = &v290 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v294 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v328 = &v290 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v327 = &v290 - v31;
  v32 = sub_226D6DFCC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v290 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v290 - v37;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v39 = sub_226D6DFFC();
  __swift_project_value_buffer(v39, qword_281064510);
  sub_226D6DFBC();
  v40 = sub_226D6DFDC();
  v41 = sub_226D6EABC();
  v42 = sub_226D6EC8C();
  v317 = v28;
  if (v42)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v40, v41, v44, "DaemonStart", "", v43, 2u);
    MEMORY[0x22AA8BEE0](v43, -1, -1);
  }

  (*(v33 + 16))(v35, v38, v32);
  sub_226D6E03C();
  swift_allocObject();
  v292 = sub_226D6E02C();
  (*(v33 + 8))(v38, v32);
  sub_226B697D4();
  v45 = type metadata accessor for XPCActivityScheduler();
  swift_allocObject();
  v46 = sub_226B29628();
  v47 = v332;
  v332[4] = v46;
  v47 += 32;
  v313 = v47;
  v314 = v45;
  *(v47 + 24) = v45;
  *(v47 + 32) = &off_283A6ACF0;
  LOBYTE(v340[0]) = 0;
  v48 = sub_226D6704C();
  v49 = MEMORY[0x277CC7F68];
  v50 = v333;
  *(&v363 + 1) = v333;
  v364 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v362);
  sub_226D6B58C();
  v326 = v48;
  sub_226D6701C();
  sub_226D66FEC();
  if (v362 == 1)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v51 = sub_226D6E07C();
    __swift_project_value_buffer(v51, qword_28105F5E0);
    v52 = sub_226D6E05C();
    v53 = sub_226D6E9EC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_226AB4000, v52, v53, "Using development container", v54, 2u);
      MEMORY[0x22AA8BEE0](v54, -1, -1);
    }
  }

  LOBYTE(v340[0]) = 0;
  *(&v363 + 1) = v50;
  v364 = v49;
  __swift_allocate_boxed_opaque_existential_1(&v362);
  sub_226D6B58C();
  sub_226D6701C();
  sub_226D66FEC();
  if (v362 == 1)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v55 = sub_226D6E07C();
    __swift_project_value_buffer(v55, qword_28105F5E0);
    v56 = sub_226D6E05C();
    v57 = sub_226D6E9EC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_226AB4000, v56, v57, "Using dropbox development container", v58, 2u);
      MEMORY[0x22AA8BEE0](v58, -1, -1);
    }
  }

  sub_226D66FEC();
  sub_226D66FEC();
  sub_226D6B91C();
  sub_226D6B5AC();
  sub_226D6B5CC();
  sub_226D6B8EC();
  sub_226D6B90C();
  v364 = 0;
  v363 = 0u;
  v362 = 0u;
  v59 = type metadata accessor for AuthorisationStatusProvider();
  memset(v340, 0, 40);
  swift_allocObject();
  v60 = AuthorisationStatusProvider.init()();
  v61 = type metadata accessor for DaemonCoreDataStoreServerHandlingPolicy();
  v62 = objc_allocWithZone(v61);
  v63 = OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_entitlementChecker;
  sub_226D69A8C();
  swift_allocObject();
  *&v62[v63] = sub_226D69A7C();
  sub_226AC40E8(&v362, &v62[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_bundleInfoProvider], &qword_27D7A7028, &qword_226D73F30);
  sub_226AC40E8(v340, &v62[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_policyLevelProvider], &qword_27D7A7030, &qword_226D73F38);
  v64 = &v62[OBJC_IVAR____TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy_authStatusProvider];
  v299 = v59;
  v64[3] = v59;
  v64[4] = &protocol witness table for AuthorisationStatusProvider;
  *v64 = v60;
  v447.receiver = v62;
  v447.super_class = v61;
  v65 = objc_msgSendSuper2(&v447, sel_init);
  sub_226AC47B0(v340, &qword_27D7A7030, &qword_226D73F38);
  sub_226AC47B0(&v362, &qword_27D7A7028, &qword_226D73F30);
  if (qword_2810610C0 != -1)
  {
    swift_once();
  }

  v321 = qword_2810610C8;
  if (qword_281060130 != -1)
  {
    swift_once();
  }

  v315 = qword_281060138;
  sub_226D6C76C();
  swift_allocObject();
  v66 = sub_226D6C75C();
  v67 = v300;
  (*(v318 + 16))(v300, v329, v320);
  sub_226D6A97C();
  v68 = v312;
  sub_226D6B93C();
  sub_226D6A97C();
  v291 = v65;
  sub_226D6BB8C();
  v69 = v316;
  sub_226D6BB9C();
  type metadata accessor for DaemonCoreDataStoreManager();
  swift_allocObject();

  v312 = v66;
  v70 = sub_226B6FA58(v67, v68, v69, v66);
  v71 = v332;
  v332[9] = v70;
  type metadata accessor for DaemonPersistentHistoryObserver();
  v72 = swift_allocObject();
  v73 = MEMORY[0x277D84F90];
  *(v72 + 16) = MEMORY[0x277D84F90];
  *(v72 + 24) = 0;
  v71[3] = v72;
  v74 = type metadata accessor for WalletMessageUpdater();
  v75 = swift_allocObject();
  v71[139] = v74;
  v71[140] = sub_226B6ABCC(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
  v71[136] = v75;
  sub_226AE532C((v71 + 136), &v362);

  v76 = sub_226D676AC();
  MEMORY[0x28223BE20](v76);
  *(&v290 - 2) = v77;
  sub_226D6EB8C();
  v300 = 0;
  if (LOBYTE(v340[0]) == 1)
  {
    __swift_project_boxed_opaque_existential_1(&v362, *(&v363 + 1));
    sub_226D69A5C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v362);

  v78 = sub_226D676AC();

  v298 = type metadata accessor for BackgroundDeliveryRegistrationManager();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  v316 = v79;
  type metadata accessor for BackgroundDeliveryScheduler();
  v80 = swift_allocObject();
  v290 = v78;

  v71[13] = sub_226B684C4(v81, v80);
  sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  sub_226D6E1AC();
  *&v362 = v73;
  sub_226B6ABCC(&qword_28105F478, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226AC4194(&qword_28105F518, &qword_27D7A6C00, &qword_226D73DF0, MEMORY[0x277D83970]);
  sub_226D6ED5C();
  (*(v305 + 13))(v304, *MEMORY[0x277D85260], v306);
  v306 = sub_226D6EA8C();
  v424[3] = &type metadata for AppleAccountInformationProvider;
  v424[4] = &off_283A6FBB0;
  v82 = v71[9];
  v83 = *(v82 + 16);
  v84 = *(v82 + 40);
  v425 = 0u;
  v426 = 0u;
  v427 = 0;
  sub_226AE532C((v71 + 136), v428);
  v85 = v84;

  v86 = v323;
  sub_226D67EEC();
  sub_226D67F0C();
  v87 = v330[1];
  ++v330;
  v305 = v87;
  v87(v86, v324);
  v88 = sub_226D6A36C();
  swift_allocObject();
  v89 = sub_226D6A35C();
  v428[8] = v88;
  v428[5] = v89;
  v428[9] = MEMORY[0x277CC7BC8];
  v90 = v333;
  v429[3] = v333;
  v91 = MEMORY[0x277CC7F68];
  v429[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v429);
  sub_226D6B58C();
  v430[3] = v90;
  v430[4] = v91;
  __swift_allocate_boxed_opaque_existential_1(v430);
  sub_226D6B5AC();
  v92 = sub_226D69BFC();
  v93 = MEMORY[0x22AA85C90]();
  v430[15] = MEMORY[0x277CC79A8];
  v304 = v92;
  v430[14] = v92;
  v430[11] = v93;
  Service = type metadata accessor for BusinessQueryService();
  memset(v431, 0, sizeof(v431));
  memset(v434, 0, sizeof(v434));
  v432 = 0;
  v435 = 0;
  v95 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v95 + 112) = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  v364 = &off_283A72868;
  *(&v363 + 1) = Service;
  *&v362 = v95;
  type metadata accessor for BusinessConnectProvider();
  v96 = swift_allocObject();
  v97 = __swift_mutable_project_boxed_opaque_existential_1(&v362, Service);
  v98 = MEMORY[0x28223BE20](v97);
  v100 = (&v290 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v101 + 16))(v100, v98);
  v102 = *v100;
  v96[5] = Service;
  v96[6] = &off_283A72868;
  v96[2] = v102;
  __swift_destroy_boxed_opaque_existential_0Tm(&v362);
  v103 = v299;
  swift_allocObject();
  v104 = AuthorisationStatusProvider.init()();
  v430[9] = &protocol witness table for AuthorisationStatusProvider;
  v430[8] = v103;
  v430[5] = v104;
  v105 = objc_allocWithZone(MEMORY[0x277D06D78]);
  v106 = v321;

  v107 = [v105 init];
  v439 = &off_283A72E98;
  v438 = &type metadata for FoundInMailItemDocumentFinderDefaultIndex;
  v437 = v107;
  v108 = sub_226AE59B4(0, &unk_28105F450, 0x277CC1E70);
  v424[5] = v83;
  v424[6] = v306;
  v424[7] = v84;
  v430[10] = v106;
  v440 = &type metadata for WalletInfo;
  v441 = &protocol witness table for WalletInfo;
  v442 = v326;
  v443 = MEMORY[0x277CC6A68];
  v444 = v108;
  v445 = &off_283A6C170;
  v446 = v96;
  v364 = &protocol witness table for BackgroundDeliveryRegistrationManager;
  *(&v363 + 1) = v298;
  *&v362 = v316;

  sub_226AFD680(&v362, v431, &qword_27D7A7038, &qword_226D73F40);
  if (qword_281060AF8 != -1)
  {
    swift_once();
  }

  v433 = qword_281064530;
  *(&v363 + 1) = &type metadata for TrackedOrderBiomeStream;
  v364 = &off_283A6EDD8;

  sub_226AFD680(&v362, v434, &unk_27D7A7660, &unk_226D7B420);
  v109 = v308;
  sub_226D66E0C();
  type metadata accessor for ExtractedOrderConfigurationProvider(0);
  v110 = swift_allocObject();
  v111 = v309;
  v112 = v307;
  v113 = v322;
  (v309[2])(v307, v109, v322);
  v114 = sub_226B686A0(v112, v110);
  (v111[1])(v109, v113);
  v436 = v114;
  sub_226B6A058(v424, &v362);
  type metadata accessor for DaemonFinanceStoreImplementation();
  swift_allocObject();
  v115 = sub_226B67E88(&v362);
  v116 = *MEMORY[0x277CC6EA0];
  v117 = v331;
  v118 = v310;
  v119 = v325;
  v308 = v331[13];
  v309 = v331 + 13;
  (v308)(v310, v116, v325);
  sub_226D679AC();
  v120 = v117[1];
  v331 = v117 + 1;
  v307 = v120;
  (v120)(v118, v119);

  sub_226D6E09C();
  v310 = sub_226D6E0EC();
  swift_allocObject();
  v306 = v115;
  v121 = v300;
  v122 = sub_226D6E0DC();
  v311 = v121;
  if (v121)
  {
    v273 = v311;
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v274 = sub_226D6E07C();
    __swift_project_value_buffer(v274, qword_28105F5E0);
    v275 = v273;
    v276 = sub_226D6E05C();
    v277 = sub_226D6E9CC();

    if (os_log_type_enabled(v276, v277))
    {
      v278 = swift_slowAlloc();
      v279 = swift_slowAlloc();
      *v278 = 138412290;
      v280 = v273;
      v281 = _swift_stdlib_bridgeErrorToNSError();
      *(v278 + 4) = v281;
      *v279 = v281;
      _os_log_impl(&dword_226AB4000, v276, v277, "Could create finance store listener: %@", v278, 0xCu);
      sub_226AC47B0(v279, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v279, -1, -1);
      v282 = v278;
LABEL_42:
      MEMORY[0x22AA8BEE0](v282, -1, -1);
    }

LABEL_43:

    exit(1);
  }

  v123 = v332;
  v332[2] = v122;
  sub_226D691EC();
  swift_allocObject();

  v124 = sub_226D691DC();
  v125 = type metadata accessor for EphemeralBankConnectWebServiceClientProvider();
  v126 = swift_allocObject();
  *(v126 + 16) = v124;
  sub_226D6BF8C();
  *(&v363 + 1) = v125;
  v364 = sub_226B6ABCC(qword_28105F960, type metadata accessor for EphemeralBankConnectWebServiceClientProvider, &unk_226D73000);
  v127 = v364;
  v300 = v124;
  v301 = v364;
  *&v362 = v126;

  v303 = sub_226D6BF6C();
  *(&v363 + 1) = v333;
  v364 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v362);
  sub_226D6B5AC();
  v128 = sub_226D6A92C();
  v129 = objc_allocWithZone(v128);
  v130 = sub_226D6A91C();
  v131 = sub_226D692BC();
  v132 = sub_226D692AC();
  v423[4] = MEMORY[0x277CC7838];
  v423[3] = v131;
  v423[0] = v132;
  v302 = *(v123[9] + 16);
  v365 = v127;
  v364 = v125;
  *(&v362 + 1) = v126;
  v133 = sub_226D6A0CC();
  swift_retain_n();

  v134 = sub_226D6A0BC();
  v367 = v133;
  v366 = v134;
  v368 = MEMORY[0x277CC7AA8];
  v369 = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v370 = &off_283A71A38;
  v371 = &type metadata for BankConnectPaymentPassDataSourceProvider;
  v372 = &protocol witness table for BankConnectPaymentPassDataSourceProvider;
  v135 = *(v123[9] + 16);
  v374 = &type metadata for BankConnectAccountMatcherProvider;
  v375 = &off_283A6A768;
  v136 = swift_allocObject();
  v373 = v136;
  v136[6] = &type metadata for BankConnectPassKitTransactionsDataSourceProvider;
  v136[7] = &off_283A71A38;
  v136[2] = v135;
  v137 = type metadata accessor for TransactionClassificationDataLoaderProvider();
  v138 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7040, &qword_226D73F48);
  v139 = swift_allocObject();
  v139[1] = 0u;
  v139[2] = 0u;
  *(v139 + 44) = 0u;
  *(v138 + 16) = v139;
  v377 = v137;
  v376 = v138;
  v378 = &off_283A71A48;
  v380 = &type metadata for FinanceConfigurationProvider;
  v381 = sub_226B6A0BC();
  v140 = swift_allocObject();
  v379 = v140;
  v141 = MEMORY[0x277CC6538];
  v140[5] = v322;
  v140[6] = v141;
  __swift_allocate_boxed_opaque_existential_1(v140 + 2);

  sub_226D66E0C();
  v142 = sub_226D6C26C();
  swift_allocObject();
  v143 = sub_226D6C25C();
  v384 = MEMORY[0x277CC8220];
  v383 = v142;
  v382 = v143;
  v144 = sub_226D6973C();
  v145 = sub_226D6971C();
  v387 = MEMORY[0x277CC78A8];
  v299 = v144;
  v386 = v144;
  v385 = v145;
  v146 = type metadata accessor for BankConnectPKCEGenerator();
  v147 = swift_allocObject();
  *(v147 + 16) = sub_226D45B28;
  *(v147 + 24) = 0;
  v390 = &off_283A72DC0;
  v389 = v146;
  v388 = v147;
  v148 = sub_226D6B15C();
  v149 = sub_226D6B14C();
  v394 = MEMORY[0x277CC7E18];
  v393 = v148;
  v392 = v149;
  sub_226D6C11C();

  v322 = sub_226D6C0FC();
  v150 = MEMORY[0x277CC7CC8];
  v398 = MEMORY[0x277CC7CC8];
  v397 = v128;
  v396 = v130;
  v151 = *(v123[9] + 16);
  sub_226AE532C((v123 + 136), v340);
  v360 = sub_226D6BD3C();
  v361 = MEMORY[0x277CC8138];
  __swift_allocate_boxed_opaque_existential_1(&v359);
  v152 = v130;

  sub_226D6BD2C();
  v153 = sub_226D6976C();
  v154 = sub_226D6975C();
  v358 = MEMORY[0x277CC78C0];
  v357 = v153;
  *&v356 = v154;
  v355 = v301;
  v354 = v125;
  *&v353 = v126;
  v352 = v150;
  v351 = v128;
  *&v350 = v152;
  v348 = &type metadata for WidgetRefresher;
  v155 = sub_226B6A110();
  v349 = v155;
  v301 = type metadata accessor for FinancialDataAppPermissions();
  v345 = v301;
  v156 = sub_226B6ABCC(&unk_2810610B0, type metadata accessor for FinancialDataAppPermissions, &protocol conformance descriptor for FinancialDataAppPermissions);
  v346 = v156;
  v157 = v321;
  *&v344 = v321;
  v158 = type metadata accessor for FinancialDataDeletedAccountsRemover();
  v343 = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v342 = v158;
  v159 = v315;
  *&v341 = v315;
  v160 = type metadata accessor for BankConnectConsentArbiter();
  v161 = swift_allocObject();
  v161[2] = v151;
  sub_226AC484C(&v353, (v161 + 3));
  sub_226AC484C(&v350, (v161 + 8));
  sub_226AC484C(v340, (v161 + 13));
  sub_226AC484C(&v347, (v161 + 18));
  v161[23] = &type metadata for WalletInfo;
  v161[24] = &protocol witness table for WalletInfo;
  sub_226AC484C(&v359, (v161 + 25));
  sub_226AC484C(&v356, (v161 + 30));
  sub_226AC484C(&v344, (v161 + 35));
  sub_226AC484C(&v341, (v161 + 40));
  v401 = &off_283A6D1B8;
  v400 = v160;
  v399 = v161;
  v403 = v158;
  v404 = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v402 = v159;
  v405 = &type metadata for WidgetRefresher;
  v162 = v123;
  v406 = v155;
  v163 = sub_226D66D5C();
  swift_allocObject();
  swift_retain_n();

  v164 = v333;
  v165 = sub_226D66D4C();
  v408 = v163;
  v409 = MEMORY[0x277CC64E0];
  v407 = v165;
  sub_226AC40E8(v423, &v410, &qword_27D7A5FD0, &qword_226D708A0);
  v166 = type metadata accessor for EngagementEventTrigger();
  memset(v411, 0, sizeof(v411));
  v412 = 0;
  v167 = swift_allocObject();
  v414 = v166;
  v415 = &off_283A6D088;
  v413 = v167;
  v417 = v301;
  v418 = v156;
  v416 = v157;
  *(&v340[1] + 1) = &type metadata for BankConnectPaymentPassDataSourceProvider;
  *&v340[2] = &protocol witness table for BankConnectPaymentPassDataSourceProvider;
  v168 = type metadata accessor for PaymentPassCardArtRefresher();
  v169 = swift_allocObject();
  sub_226AC484C(v340, v169 + 16);
  v420 = v168;
  v421 = &off_283A72098;
  v419 = v169;
  sub_226AE532C((v123 + 136), v422);

  v171 = v304;
  v172 = MEMORY[0x22AA85C90](v170);
  v422[8] = v171;
  v422[9] = MEMORY[0x277CC79A8];
  *&v362 = v302;
  v391 = v303;
  v422[5] = v172;
  v395 = v322;
  *(&v340[1] + 1) = type metadata accessor for OfflineLabConfigurationManager(0);
  *&v340[2] = &off_283A6DF38;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v340);
  v174 = v323;
  sub_226D67EEC();
  v175 = sub_226D67F0C();
  v177 = v176;
  v305(v174, v324);
  v360 = v164;
  v361 = MEMORY[0x277CC7F70];
  __swift_allocate_boxed_opaque_existential_1(&v359);
  sub_226D6B58C();
  *boxed_opaque_existential_1 = v175;
  boxed_opaque_existential_1[1] = v177;
  boxed_opaque_existential_1[2] = 0xD000000000000021;
  boxed_opaque_existential_1[3] = 0x8000000226D7F6B0;
  sub_226AE532C(&v359, &v356);
  sub_226D6B5FC();
  __swift_destroy_boxed_opaque_existential_0Tm(&v359);
  sub_226AFD680(v340, v411, &qword_27D7A7048, &qword_226D74690);
  sub_226B42014(&v362, (v162 + 15));
  v178 = v296;
  v179 = v325;
  (v308)(v296, *MEMORY[0x277CC6E98], v325);
  sub_226D679AC();
  (v307)(v178, v179);
  sub_226B42014(&v362, v340);
  v180 = swift_allocObject();
  memcpy((v180 + 16), v340, 0x3B0uLL);
  sub_226D6E09C();
  swift_allocObject();
  v181 = v311;
  v182 = sub_226D6E0DC();
  if (v181)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v283 = sub_226D6E07C();
    __swift_project_value_buffer(v283, qword_28105F5E0);
    v284 = v181;
    v276 = sub_226D6E05C();
    v285 = sub_226D6E9CC();

    if (os_log_type_enabled(v276, v285))
    {
      v286 = swift_slowAlloc();
      v287 = swift_slowAlloc();
      *v286 = 138412290;
      v288 = v181;
      v289 = _swift_stdlib_bridgeErrorToNSError();
      *(v286 + 4) = v289;
      *v287 = v289;
      _os_log_impl(&dword_226AB4000, v276, v285, "Could create bankconnect service listener: %@", v286, 0xCu);
      sub_226AC47B0(v287, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v287, -1, -1);
      v282 = v286;
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v162[133] = v182;
  sub_226AE532C(v313, v340);
  v360 = v164;
  v361 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v359);
  sub_226D6B58C();
  v183 = __swift_mutable_project_boxed_opaque_existential_1(v340, *(&v340[1] + 1));
  v324 = &v290;
  v184 = MEMORY[0x28223BE20](v183);
  v186 = (&v290 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v187 + 16))(v186, v184);
  v188 = *v186;
  v357 = &type metadata for BankConnectEnvironmentImplementation;
  v189 = sub_226B6A16C();
  v358 = v189;
  *&v356 = swift_allocObject();
  sub_226B42014(&v362, v356 + 16);
  v355 = &off_283A6ACF0;
  v190 = v314;
  v354 = v314;
  *&v353 = v188;
  type metadata accessor for BankConnectWebServiceCoordinator();
  v191 = swift_allocObject();
  v192 = __swift_mutable_project_boxed_opaque_existential_1(&v356, &type metadata for BankConnectEnvironmentImplementation);
  v321 = &v290;
  v193 = off_283A722F0;
  v194 = *(off_283A722F0 + 8);
  v195 = MEMORY[0x28223BE20](v192);
  v322 = v193[2];
  v323 = ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322(&v290 - v323, v195);
  v196 = __swift_mutable_project_boxed_opaque_existential_1(&v353, v190);
  v197 = MEMORY[0x28223BE20](v196);
  v199 = (&v290 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = *(v200 + 16);
  v330 = v198;
  v331 = (v200 + 16);
  v325 = v201;
  v201(v199, v197);
  v202 = *v199;
  v351 = &type metadata for BankConnectEnvironmentImplementation;
  v352 = v189;
  *&v350 = swift_allocObject();
  memcpy((v350 + 16), &v290 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0), 0x3B0uLL);
  v349 = &off_283A6ACF0;
  v348 = v190;
  *&v347 = v202;
  v203 = v332;
  swift_defaultActor_initialize();
  v191[33] = 0;
  v191[34] = 0;
  sub_226AC484C(&v350, (v191 + 14));
  sub_226AC484C(&v347, (v191 + 19));
  v191[24] = &type metadata for WalletInfo;
  v191[25] = &protocol witness table for WalletInfo;
  sub_226AC484C(&v359, (v191 + 26));
  v191[31] = v326;
  v191[32] = MEMORY[0x277CC6A68];
  __swift_destroy_boxed_opaque_existential_0Tm(&v353);
  __swift_destroy_boxed_opaque_existential_0Tm(&v356);
  __swift_destroy_boxed_opaque_existential_0Tm(v340);
  v203[134] = v191;
  sub_226AE532C((v203 + 136), v340);
  v204 = v315;

  v203[135] = sub_226B68304(v205, v204, &type metadata for WalletInfo, &protocol witness table for WalletInfo, v340);
  v206 = v203[3];
  *(&v340[1] + 1) = &type metadata for BankConnectEnvironmentImplementation;
  *&v340[2] = v189;
  *&v340[0] = swift_allocObject();
  sub_226B42014(&v362, *&v340[0] + 16);
  v207 = type metadata accessor for BankConnectCardArtObserver();
  v208 = swift_allocObject();
  v209 = __swift_mutable_project_boxed_opaque_existential_1(v340, &type metadata for BankConnectEnvironmentImplementation);
  v210 = MEMORY[0x28223BE20](v209);
  v211 = (&v290 - v323);
  v322(&v290 - v323, v210);

  v212 = sub_226B6820C(v211, v208);
  __swift_destroy_boxed_opaque_existential_0Tm(v340);
  swift_beginAccess();
  v213 = *(v206 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v206 + 16) = v213;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v213 = sub_226BBB8E8(0, v213[2] + 1, 1, v213);
    *(v206 + 16) = v213;
  }

  v216 = v213[2];
  v215 = v213[3];
  if (v216 >= v215 >> 1)
  {
    v213 = sub_226BBB8E8((v215 > 1), v216 + 1, 1, v213);
  }

  *(&v340[1] + 1) = v207;
  *&v340[2] = &off_283A70D28;
  *&v340[0] = v212;
  v213[2] = v216 + 1;
  sub_226AC484C(v340, &v213[5 * v216 + 4]);
  *(v206 + 16) = v213;
  swift_endAccess();

  v324 = *(v203[9] + 16);
  sub_226AE532C(v313, v340);
  v217 = type metadata accessor for EphemeralOrderWebServiceClientProvider();
  v322 = v217;
  v323 = swift_allocObject();
  v218 = type metadata accessor for EphemeralPrismWebServiceClientProvider();
  v321 = v218;
  v315 = swift_allocObject();
  v219 = type metadata accessor for PushNotificationCoordinator();
  v220 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v220 + 112) = 0;
  *(v220 + 120) = [objc_allocWithZone(type metadata accessor for PushNotificationCoordinator.DelegateWrapper()) init];
  *(v220 + 128) = 0;
  *(v220 + 136) = 0;
  v221 = v299;
  v222 = sub_226D6971C();
  v223 = __swift_mutable_project_boxed_opaque_existential_1(v340, *(&v340[1] + 1));
  v326 = &v290;
  v224 = MEMORY[0x28223BE20](v223);
  v226 = (&v290 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v227 + 16))(v226, v224);
  v228 = *v226;
  v361 = &off_283A6ACF0;
  v229 = v314;
  v360 = v314;
  *&v359 = v228;
  v357 = v217;
  *&v356 = v323;
  v358 = &off_283A6E5E8;
  v355 = &off_283A6B908;
  v354 = v218;
  *&v353 = v315;
  v352 = &off_283A720A8;
  v351 = v219;
  v230 = v219;
  *&v350 = v220;
  v349 = MEMORY[0x277CC78A8];
  v348 = v221;
  *&v347 = v222;
  type metadata accessor for OrderWebServiceCoordinator();
  v231 = swift_allocObject();
  v232 = __swift_mutable_project_boxed_opaque_existential_1(&v359, v229);
  v323 = &v290;
  v233 = MEMORY[0x28223BE20](v232);
  v235 = (&v290 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325(v235, v233);
  v236 = __swift_mutable_project_boxed_opaque_existential_1(&v356, v357);
  v331 = &v290;
  v237 = MEMORY[0x28223BE20](v236);
  v239 = (&v290 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v240 + 16))(v239, v237);
  v241 = __swift_mutable_project_boxed_opaque_existential_1(&v353, v354);
  v330 = &v290;
  v242 = MEMORY[0x28223BE20](v241);
  v244 = (&v290 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v245 + 16))(v244, v242);
  v246 = __swift_mutable_project_boxed_opaque_existential_1(&v350, v351);
  v247 = MEMORY[0x28223BE20](v246);
  v249 = (&v290 - ((v248 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v250 + 16))(v249, v247);
  v251 = *v235;
  v252 = *v239;
  v253 = *v244;
  v254 = *v249;
  v255 = v332;
  v346 = &off_283A6ACF0;
  v345 = v229;
  *&v344 = v251;
  v343 = &off_283A6E5E8;
  v342 = v322;
  *&v341 = v252;
  v338 = v321;
  v339 = &off_283A6B908;
  *&v337 = v253;
  v335 = v230;
  v336 = &off_283A720A8;
  v256 = v312;
  *&v334 = v254;
  swift_defaultActor_initialize();
  v231[41] = 0;
  v231[42] = 0;
  v231[14] = v324;
  sub_226AC484C(&v344, (v231 + 15));
  sub_226AC484C(&v341, (v231 + 20));
  sub_226AC484C(&v337, (v231 + 25));
  v231[30] = v256;
  sub_226AC484C(&v334, (v231 + 31));
  sub_226AC484C(&v347, (v231 + 36));
  __swift_destroy_boxed_opaque_existential_0Tm(&v350);
  __swift_destroy_boxed_opaque_existential_0Tm(&v353);
  __swift_destroy_boxed_opaque_existential_0Tm(&v356);
  __swift_destroy_boxed_opaque_existential_0Tm(&v359);
  __swift_destroy_boxed_opaque_existential_0Tm(v340);
  v255[10] = v231;
  v257 = *(v255[9] + 16);

  v258 = v293;
  sub_226D6B58C();
  *(&v340[1] + 1) = &type metadata for PostInstallCoordinator.PostInstallTasks;
  *&v340[2] = &off_283A71E78;
  type metadata accessor for PostInstallCoordinator(0);
  v259 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v340, &type metadata for PostInstallCoordinator.PostInstallTasks);
  v259[6] = &type metadata for PostInstallCoordinator.PostInstallTasks;
  v259[7] = &off_283A71E78;
  v259[2] = v257;
  v260 = v295;
  v261 = v258;
  v262 = v333;
  (*(v295 + 32))(v259 + OBJC_IVAR____TtC13FinanceDaemon22PostInstallCoordinator_userDefaults, v261, v333);
  __swift_destroy_boxed_opaque_existential_0Tm(v340);
  v255[11] = v259;
  v263 = *(v255[9] + 16);
  type metadata accessor for OrderChangeDistributedNotificationCoordinator();
  v264 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v264 + 112) = v263;
  *(v264 + 120) = 0;
  v255[12] = v264;
  v265 = *(v255[9] + 16);
  v266 = qword_281060348;

  if (v266 != -1)
  {
    swift_once();
  }

  v267 = qword_281064528;
  type metadata accessor for ExtractedOrderCascadeSetReader();
  v268 = swift_allocObject();
  v269 = v267;
  swift_defaultActor_initialize();

  (*(v260 + 8))(v319, v262);
  (*(v318 + 8))(v329, v320);
  v270 = *(v294 + 8);
  v271 = v317;
  v270(v328, v317);
  v270(v327, v271);
  v268[15] = v269;
  v268[16] = 0;
  v268[14] = v265;
  v255[14] = v268;
  sub_226B6A2D0(&v362);
  sub_226AC47B0(v423, &qword_27D7A5FD0, &qword_226D708A0);
  sub_226B6A324(v424);
  sub_226B634C8("DaemonStart", 11, 2, v292);

  return v255;
}

uint64_t sub_226B634C8(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_226D6E00C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6DFCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6DFFC();
  __swift_project_value_buffer(v13, qword_281064510);
  v14 = sub_226D6DFDC();
  sub_226D6E01C();
  v19 = sub_226D6EAAC();
  result = sub_226D6EC8C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_226D6E04C();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_226D6DFAC();
      _os_signpost_emit_with_name_impl(&dword_226AB4000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_226B637A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7088, &qword_226D740D0);
  sub_226AC4194(qword_2810629D0, &qword_27D7A7088, &qword_226D740D0, &unk_226D734A0);
  return sub_226D6E0BC();
}

uint64_t sub_226B6384C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_226D69A8C();
  swift_allocObject();
  v6 = sub_226D69A7C();
  v7 = sub_226D6973C();
  v8 = sub_226D6971C();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = v6;
  v10 = MEMORY[0x277CC7940];
  v9[6] = v5;
  v9[7] = v10;
  v9[8] = v8;
  v11 = MEMORY[0x277CC78A8];
  v9[11] = v7;
  v9[12] = v11;
  swift_weakInit();
  *(a3 + 8) = sub_226AB6D84;
  *(a3 + 16) = v9;
}

uint64_t sub_226B63930(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7078, &qword_226D740C8);
  sub_226AC4194(&qword_27D7A7080, &qword_27D7A7078, &qword_226D740C8, &unk_226D734A0);
  return sub_226D6E0BC();
}

uint64_t sub_226B639E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a1;
  v5 = sub_226D6B5EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v24 = &type metadata for BankConnectEnvironmentImplementation;
  v9 = sub_226B6A16C();
  v25 = v9;
  v23[0] = swift_allocObject();
  sub_226B42014(a2, v23[0] + 16);
  v21 = v5;
  v22 = MEMORY[0x277CC7F68];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
  type metadata accessor for BankConnectServiceImplementation();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v11[5] = &type metadata for BankConnectEnvironmentImplementation;
  v11[6] = v9;
  v17 = swift_allocObject();
  v11[2] = v17;
  memcpy((v17 + 16), v15, 0x3B0uLL);
  sub_226AC484C(&v20, (v11 + 7));
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  (*(v6 + 8))(v8, v5);
  result = swift_weakInit();
  *(a3 + 8) = sub_226B6AF94;
  *(a3 + 16) = v11;
  return result;
}

uint64_t Daemon.deinit()
{

  sub_226D6E0CC();

  sub_226D6E0CC();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  sub_226B6A2D0(v0 + 120);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1088));
  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_226B63D3C@<X0>(_BYTE *a2@<X8>)
{
  sub_226D691CC();
  v5[3] = sub_226D6B5EC();
  v5[4] = MEMORY[0x277CC7F70];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_226D6B58C();
  sub_226D6704C();
  v3 = sub_226D6914C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v5);
  *a2 = v3 & 1;
  return result;
}

Swift::Void __swiftcall Daemon.run()()
{
  v1 = v0;
  v2 = sub_226D6B5EC();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6707C();
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v58 - v7;
  v8 = sub_226D6E1CC();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_226D6DFCC();
  v11 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v17 = sub_226D6E07C();
  __swift_project_value_buffer(v17, qword_28105F5E0);
  v18 = sub_226D6E05C();
  v19 = sub_226D6E9EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_226AB4000, v18, v19, "Running daemon", v20, 2u);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
  }

  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v21 = sub_226D6DFFC();
  __swift_project_value_buffer(v21, qword_281064510);
  sub_226D6DFBC();
  v22 = sub_226D6DFDC();
  v23 = sub_226D6EABC();
  if (sub_226D6EC8C())
  {
    v24 = swift_slowAlloc();
    v58 = v11;
    v25 = v13;
    v26 = v1;
    v27 = v8;
    v28 = v4;
    v29 = v24;
    *v24 = 0;
    v30 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v22, v23, v30, "DaemonRun", "", v29, 2u);
    v31 = v29;
    v4 = v28;
    v8 = v27;
    v1 = v26;
    v13 = v25;
    v11 = v58;
    MEMORY[0x22AA8BEE0](v31, -1, -1);
  }

  v32 = v65;
  (*(v11 + 16))(v13, v16, v65);
  sub_226D6E03C();
  swift_allocObject();
  v33 = sub_226D6E02C();
  (*(v11 + 8))(v16, v32);
  sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  *v10 = sub_226D6EA5C();
  v34 = v66;
  (*(v66 + 104))(v10, *MEMORY[0x277D85200], v8);
  v35 = sub_226D6E1DC();
  (*(v34 + 8))(v10, v8);
  if (v35)
  {
    v36 = sub_226D6E79C();
    v37 = *(*(v36 - 8) + 56);
    v38 = v62;
    v37(v62, 1, 1, v36);
    v39 = v1[10];
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = v39;
    *(v40 + 40) = v1;
    *(v40 + 48) = "DaemonRun";
    *(v40 + 56) = 9;
    *(v40 + 64) = 2;
    *(v40 + 72) = v33;

    sub_226B60364(0, 0, v38, &unk_226D73F58, v40);

    v37(v38, 1, 1, v36);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v1;

    sub_226B67BC8(0, 0, v38, &unk_226D73F68, v41);

    sub_226AC47B0(v38, &unk_27D7A8BA0, &qword_226D734E0);
    sub_226BE10EC(v1[11]);
    sub_226C81494(v39);
    sub_226B68DA0((v1 + 15));
    v42 = v1[134];
    sub_226B17028(v42, v39);
    sub_226B9F100(v42, v39);
    v71 = &type metadata for BankConnectEnvironmentImplementation;
    v43 = sub_226B6A16C();
    v72 = v43;
    v70[0] = swift_allocObject();
    sub_226B42014((v1 + 15), v70[0] + 16);
    v44 = __swift_project_boxed_opaque_existential_1(v70, &type metadata for BankConnectEnvironmentImplementation);
    sub_226B68B14(v44);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    if (sub_226D6931C())
    {
      sub_226B68F50((v1 + 15));
    }

    v45 = v63;
    sub_226D6703C();
    v46 = sub_226D6706C();
    (*(v64 + 8))(v45, v4);
    if (v46)
    {
      v66 = v33;
      v47 = v59;
      sub_226D6B58C();
      v71 = &type metadata for BankConnectEnvironmentImplementation;
      v72 = v43;
      v70[0] = swift_allocObject();
      sub_226B42014((v1 + 15), v70[0] + 16);
      v48 = v61;
      v68 = v61;
      v69 = MEMORY[0x277CC7F68];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
      v50 = v60;
      (*(v60 + 16))(boxed_opaque_existential_1, v47, v48);
      type metadata accessor for BankConnectServiceImplementation();
      v51 = swift_allocObject();
      v52 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
      v53 = MEMORY[0x28223BE20](v52);
      v55 = &v58 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55, v53);
      v51[5] = &type metadata for BankConnectEnvironmentImplementation;
      v51[6] = v43;
      v57 = swift_allocObject();
      v51[2] = v57;
      memcpy((v57 + 16), v55, 0x3B0uLL);
      sub_226AC484C(&v67, (v51 + 7));
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      (*(v50 + 8))(v47, v48);
      sub_226B69368(v51);
    }

    sub_226BEB7D0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226B646D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 32) = a6;
  *(v8 + 40) = v14;
  *(v8 + 136) = a8;
  *(v8 + 24) = a5;
  v9 = sub_226D6E00C();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();
  v10 = sub_226D6DFCC();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  *(v8 + 96) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_226B64868;

  return sub_226C0BF70();
}

uint64_t sub_226B64868()
{

  return MEMORY[0x2822009F8](sub_226B64964, 0, 0);
}

uint64_t sub_226B64964()
{
  v1 = *(*(v0 + 24) + 96);
  *(v0 + 112) = v1;
  return MEMORY[0x2822009F8](sub_226B64988, v1, 0);
}

uint64_t sub_226B64988()
{
  sub_226B032F0(sub_226B03268, 0);

  return MEMORY[0x2822009F8](sub_226B64A08, 0, 0);
}

uint64_t sub_226B64A08()
{
  v1 = v0[12];
  v2 = *(v0[3] + 24);
  v3 = sub_226D6E79C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  *(v2 + 24) = sub_226B60364(0, 0, v1, &unk_226D740B8, v5);

  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_226B64B64;

  return sub_226CB5C18();
}

uint64_t sub_226B64B64()
{

  return MEMORY[0x2822009F8](sub_226B64C60, 0, 0);
}

uint64_t sub_226B64C60()
{
  v1 = *(v0 + 24);
  sub_226CE85E8();
  v2 = *(v1 + 112);
  *(v0 + 128) = v2;

  return MEMORY[0x2822009F8](sub_226B64CD0, v2, 0);
}

uint64_t sub_226B64CD0()
{
  sub_226BAE5BC();

  return MEMORY[0x2822009F8](sub_226B64D38, 0, 0);
}

uint64_t sub_226B64D38()
{
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6DFFC();
  __swift_project_value_buffer(v1, qword_281064510);
  v2 = sub_226D6DFDC();
  sub_226D6E01C();
  v3 = sub_226D6EAAC();
  result = sub_226D6EC8C();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v0 + 32);
  if (*(v0 + 136))
  {
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((*(v0 + 32) & 0xFFFFF800) == 0xD800)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v5)
  {
LABEL_12:
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);

    sub_226D6E04C();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      v12 = "";
    }

    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v2, v3, v17, v5, v12, v16, 2u);
    MEMORY[0x22AA8BEE0](v16, -1, -1);

    (*(v14 + 8))(v13, v15);
    goto LABEL_16;
  }

  __break(1u);
LABEL_7:
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);

  (*(v7 + 8))(v6, v8);
LABEL_16:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_226B64F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_226B64FB8, 0, 0);
}

uint64_t sub_226B64FB8()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_226B6507C;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007C0](v2, v4, 0, 0, &unk_226D74030, v3, v5);
}

uint64_t sub_226B6507C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226B65170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B6520C, 0, 0);
}

uint64_t sub_226B6520C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_226D6E79C();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_226B65D08(v1, &unk_226D74040, v5);
  sub_226AC47B0(v1, &unk_27D7A8BA0, &qword_226D734E0);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_226B65D08(v1, &unk_226D74050, v6);
  sub_226AC47B0(v1, &unk_27D7A8BA0, &qword_226D734E0);
  v4(v1, 1, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_226B65D08(v1, &unk_226D74060, v7);
  sub_226AC47B0(v1, &unk_27D7A8BA0, &qword_226D734E0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_226B65418()
{
  v1 = sub_226D67F1C();
  v0[39] = v1;
  v0[40] = *(v1 - 8);
  v0[41] = swift_task_alloc();
  v0[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v0[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B65510, 0, 0);
}

uint64_t sub_226B65510()
{
  if (qword_281061980 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = v0[43];
  v3 = __swift_project_value_buffer(v1, qword_281064538);
  sub_226AE532C(v3, v2);
  sub_226B6AD74(v3 + *(v1 + 48), v2 + *(v1 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
  v4 = *(v1 + 48);
  sub_226AC484C(v2, (v0 + 18));
  sub_226B6ADDC(v2 + v4, type metadata accessor for OrderNotificationCenter.Continuation);
  v5 = v0[21];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 18, v5);
  v7 = *(v5 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v5);
  v0[26] = swift_getAssociatedTypeWitness();
  v0[27] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 23);
  sub_226D6E84C();

  __swift_mutable_project_boxed_opaque_existential_1((v0 + 23), v0[26]);
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_226B6575C;

  return MEMORY[0x282200310](v0 + 33, 0, 0);
}

uint64_t sub_226B6575C()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_226B6586C, 0, 0);
  }

  return result;
}

uint64_t sub_226B6586C(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 272);
  *(v1 + 360) = v2;
  *(v1 + 368) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 288);
  *(v1 + 376) = v4;
  *(v1 + 384) = v5;
  if (v2)
  {
    v7 = *(v1 + 320);
    v6 = *(v1 + 328);
    v8 = *(v1 + 312);
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v7 + 8))(v6, v8);
    v9 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v10 = sub_226D6E36C();

    v11 = [v9 initWithBundleIdentifier_];
    *(v1 + 392) = v11;

    v12 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v13 = MEMORY[0x277CC85E8];
    *(v1 + 248) = v12;
    *(v1 + 256) = v13;
    *(v1 + 224) = v11;
    v14 = sub_226D692BC();
    v15 = v11;
    v16 = sub_226D692AC();
    v17 = sub_226AE59B4(0, &qword_28105F4A0, 0x277CC1E90);
    type metadata accessor for OrderNotificationCenter();
    inited = swift_initStackObject();
    *(v1 + 400) = inited;
    sub_226AC484C((v1 + 224), inited + 16);
    *(inited + 56) = &type metadata for WalletInfo;
    *(inited + 64) = &protocol witness table for WalletInfo;
    *(inited + 72) = v16;
    *(inited + 80) = *(v1 + 296);
    v19 = MEMORY[0x277CC7838];
    *(inited + 96) = v14;
    *(inited + 104) = v19;
    *(inited + 112) = v17;
    *(inited + 120) = &off_283A6C158;
    v20 = swift_task_alloc();
    *(v1 + 408) = v20;
    *v20 = v1;
    v20[1] = sub_226B65AEC;

    return sub_226BE6F4C(v2, v3, v4);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 184));
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 144));

    v22 = *(v1 + 8);

    return v22();
  }
}

uint64_t sub_226B65AEC()
{

  return MEMORY[0x2822009F8](sub_226B65BE8, 0, 0);
}

uint64_t sub_226B65BE8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 368);

  sub_226B6AE3C(v3, v2);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  sub_226AC47B0(v1 + 72, &qword_27D7A5FD0, &qword_226D708A0);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, *(v0 + 208));
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_226B6575C;

  return MEMORY[0x282200310](v0 + 264, 0, 0);
}

uint64_t sub_226B65D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_226AC40E8(a1, v20 - v9, &unk_27D7A8BA0, &qword_226D734E0);
  v11 = sub_226D6E79C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_226AC47B0(v10, &unk_27D7A8BA0, &qword_226D734E0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_226D6E6CC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_226D6E78C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_226B65F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v4 = sub_226D67F1C();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v5 = type metadata accessor for ApplicationWorkspaceEvent(0);
  v3[55] = v5;
  v3[56] = *(v5 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7050, &qword_226D74068);
  v3[60] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7058, &qword_226D74070);
  v3[61] = v6;
  v3[62] = *(v6 - 8);
  v3[63] = swift_task_alloc();
  v3[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7060, &qword_226D74078);
  v3[65] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7068, &qword_226D74080);
  v3[66] = v7;
  v3[67] = *(v7 - 8);
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B66260, 0, 0);
}

uint64_t sub_226B66260()
{
  (*(v0[62] + 104))(v0[63], *MEMORY[0x277D85778], v0[61]);
  sub_226D6E7EC();
  sub_226AC4194(&qword_28105F4C8, &qword_27D7A7060, &qword_226D74078, MEMORY[0x277D857C0]);
  sub_226D6E84C();
  sub_226AC4194(&qword_28105F4D8, &qword_27D7A7068, &qword_226D74080, MEMORY[0x277D857B0]);
  v1 = swift_task_alloc();
  v0[69] = v1;
  *v1 = v0;
  v1[1] = sub_226B663F4;
  v2 = v0[60];

  return MEMORY[0x282200310](v2, 0, 0);
}

uint64_t sub_226B663F4()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_226B66504, 0, 0);
  }

  return result;
}

uint64_t sub_226B66504()
{
  v1 = v0[60];
  if ((*(v0[56] + 48))(v1, 1, v0[55]) == 1)
  {
    (*(v0[67] + 8))(v0[68], v0[66]);

    v2 = v0[1];

    return v2();
  }

  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[42];
  sub_226B6AB68(v1, v4);
  sub_226B6AD74(v4, v5, type metadata accessor for ApplicationWorkspaceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v6 + 32);
  v9 = v0[58];
  if (EnumCaseMultiPayload == 1)
  {
    v8(v0[51], v9, v0[41]);
    sub_226D67E6C();
    sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
    sub_226D6E53C();
    sub_226D6E53C();
    if (v0[6] == v0[8] && v0[7] == v0[9])
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_226D6F21C();
    }

    v12 = *(v0[42] + 8);
    v12(v0[50], v0[41]);

    if ((v10 & 1) == 0)
    {
      sub_226D67E9C();
      sub_226D6E53C();
      sub_226D6E53C();
      v13 = v0[49];
      v14 = v0[41];
      if (v0[10] == v0[12] && v0[11] == v0[13])
      {
        v12(v0[49], v0[41]);
      }

      else
      {
        v18 = sub_226D6F21C();
        v12(v13, v14);

        if ((v18 & 1) == 0)
        {
          v21 = v0[51];
          v22 = v0[41];
          goto LABEL_26;
        }
      }
    }

    v19 = v0[51];
    v20 = v0[41];
    sub_226CE85E8();
    v21 = v19;
    v22 = v20;
LABEL_26:
    v12(v21, v22);
    goto LABEL_27;
  }

  v8(v0[54], v9, v0[41]);
  sub_226D67E6C();
  sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v0[30] == v0[32] && v0[31] == v0[33])
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_226D6F21C();
  }

  v12 = *(v0[42] + 8);
  v12(v0[53], v0[41]);

  if (v11)
  {
    v12(v0[54], v0[41]);
  }

  else
  {
    sub_226D67E9C();
    sub_226D6E53C();
    sub_226D6E53C();
    v15 = v0[54];
    v16 = v0[52];
    v17 = v0[41];
    if (v0[34] != v0[36] || v0[35] != v0[37])
    {
      sub_226D6F21C();
    }

    v12(v16, v17);
    v12(v15, v17);
  }

LABEL_27:
  v23 = *(v0[38] + 1072);
  sub_226B6AD74(v0[59], v0[57], type metadata accessor for ApplicationWorkspaceEvent);
  v24 = swift_getEnumCaseMultiPayload();
  v25 = v0[57];
  if (v24 == 1)
  {
    v8(v0[45], v25, v0[41]);
    sub_226D67E6C();
    sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
    sub_226D6E53C();
    sub_226D6E53C();
    if (v0[14] == v0[16] && v0[15] == v0[17])
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_226D6F21C();
    }

    v12(v0[44], v0[41]);

    if ((v26 & 1) == 0)
    {
      sub_226D67E9C();
      sub_226D6E53C();
      sub_226D6E53C();
      v33 = v0[59];
      v34 = v0[45];
      v35 = v0[43];
      v36 = v0[41];
      if (v0[18] != v0[20] || v0[19] != v0[21])
      {
        sub_226D6F21C();
      }

      v12(v35, v36);
      v12(v34, v36);
      sub_226B6ADDC(v33, type metadata accessor for ApplicationWorkspaceEvent);

      goto LABEL_58;
    }

    v28 = v0[59];
    v29 = v0[45];
    goto LABEL_37;
  }

  v8(v0[48], v25, v0[41]);
  sub_226D67E6C();
  sub_226B6ABCC(&qword_281062BC8, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v0[22] == v0[24] && v0[23] == v0[25])
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_226D6F21C();
  }

  v12(v0[47], v0[41]);

  if (v27)
  {
LABEL_48:
    v39 = v0[39];
    v38 = v0[40];
    v40 = sub_226D6E79C();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v38, 1, 1, v40);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v23;
    sub_226AC40E8(v38, v39, &unk_27D7A8BA0, &qword_226D734E0);
    LODWORD(v39) = (*(v41 + 48))(v39, 1, v40);

    v43 = v0[39];
    if (v39 == 1)
    {
      sub_226AC47B0(v0[39], &unk_27D7A8BA0, &qword_226D734E0);
    }

    else
    {
      sub_226D6E78C();
      (*(v41 + 8))(v43, v40);
    }

    v44 = v42[2];
    swift_unknownObjectRetain();

    if (v44)
    {
      swift_getObjectType();
      v45 = sub_226D6E6CC();
      v47 = v46;
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_226AC47B0(v0[40], &unk_27D7A8BA0, &qword_226D734E0);
    v48 = swift_allocObject();
    *(v48 + 16) = &unk_226D74088;
    *(v48 + 24) = v42;
    if (v47 | v45)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v45;
      v0[5] = v47;
    }

    v28 = v0[59];
    v49 = v0[48];
    v50 = v0[41];
    swift_task_create();

    v29 = v49;
    v30 = v50;
    goto LABEL_57;
  }

  sub_226D67E9C();
  sub_226D6E53C();
  sub_226D6E53C();
  v31 = v0[46];
  v32 = v0[41];
  if (v0[26] == v0[28] && v0[27] == v0[29])
  {
    v12(v0[46], v0[41]);

    goto LABEL_48;
  }

  v37 = sub_226D6F21C();
  v12(v31, v32);

  if (v37)
  {
    goto LABEL_48;
  }

  v28 = v0[59];
  v29 = v0[48];
LABEL_37:
  v30 = v0[41];
LABEL_57:
  v12(v29, v30);
  sub_226B6ADDC(v28, type metadata accessor for ApplicationWorkspaceEvent);
LABEL_58:
  sub_226AC4194(&qword_28105F4D8, &qword_27D7A7068, &qword_226D74080, MEMORY[0x277D857B0]);
  v51 = swift_task_alloc();
  v0[69] = v51;
  *v51 = v0;
  v51[1] = sub_226B663F4;
  v52 = v0[60];

  return MEMORY[0x282200310](v52, 0, 0);
}

uint64_t sub_226B67134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a3;
  v4 = sub_226D6D4AC();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B671F4, 0, 0);
}

uint64_t sub_226B671F4()
{
  v1 = *(v0 + 168);
  v2 = type metadata accessor for BackgroundDeliveryHistoryObserver(0);

  v3 = sub_226D676AC();

  v4 = sub_226CF9EBC((v0 + 16), v3);
  *(v0 + 200) = v4;

  v5 = *(v1 + 24);
  swift_beginAccess();
  v6 = *(v5 + 16);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_226BBB8E8(0, v6[2] + 1, 1, v6);
    *(v5 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_226BBB8E8((v8 > 1), v9 + 1, 1, v6);
  }

  *(v0 + 80) = v2;
  *(v0 + 88) = &off_283A71E48;
  *(v0 + 56) = v4;
  v6[2] = v9 + 1;
  sub_226AC484C((v0 + 56), &v6[5 * v9 + 4]);
  *(v5 + 16) = v6;
  swift_endAccess();

  v10 = *(v0 + 40);
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_226D6E84C();

  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_226B674C0;

  return MEMORY[0x282200310](v0 + 160, 0, 0);
}

uint64_t sub_226B674C0()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_226B675D0, 0, 0);
  }

  return result;
}

uint64_t sub_226B675D0(uint64_t a1)
{
  v2 = v1[20];
  v1[27] = v2;
  if (v2)
  {
    sub_226D6D46C();
    v3 = swift_task_alloc();
    v1[28] = v3;
    *v3 = v1;
    v3[1] = sub_226B676D4;
    v4 = v1[24];

    return sub_226BE9D80(v4, v2);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 12);
    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);

    v6 = v1[1];

    return v6();
  }
}