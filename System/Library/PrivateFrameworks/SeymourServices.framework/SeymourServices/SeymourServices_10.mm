uint64_t sub_226FABE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226FABE84, 0, 0);
}

uint64_t sub_226FABE84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 88);

    return sub_226F9E180(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_226FABFA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_226FAD638;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226FAC0C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_226FAC0F0, 0, 0);
}

uint64_t sub_226FAC0F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_226FABFA0;
    v3 = *(v0 + 96);

    return sub_226F9EE28(v3);
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_226FAC20C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FAC2CC, 0, 0);
}

uint64_t sub_226FAC2CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    sub_226E91B50(Strong + 80, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_226FAC458;

    return sub_226F9CDBC();
  }

  else
  {
    **(v0 + 80) = 0;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_226FAC458(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_226FAC630;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_226FAC580;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226FAC580()
{
  v1 = v0[10];
  v2 = sub_226FA7588(v0[17]);

  v3 = sub_226F43154(v2);

  *v1 = v3;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226FAC630()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FAC6C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FA92A8(a1, v1);
}

unint64_t sub_226FAC760()
{
  result = qword_281398E20;
  if (!qword_281398E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9168, &qword_227673160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E20);
  }

  return result;
}

unint64_t sub_226FAC7E4()
{
  result = qword_281398E18;
  if (!qword_281398E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9168, &qword_227673160);
    sub_226FAD5E4(&qword_28139B980, MEMORY[0x277D50978], MEMORY[0x277D50970]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E18);
  }

  return result;
}

uint64_t sub_226FAC898(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FA93DC(a1, a2, v2);
}

uint64_t sub_226FAC944(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FA9718(a1, a2, v2);
}

uint64_t sub_226FAC9F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_226FA9C54(v0);
}

uint64_t sub_226FACA80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FA9E40(a1, v1);
}

uint64_t sub_226FACB18()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_226FA9F74(v0);
}

uint64_t sub_226FACBA8(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAA1B4(a1, v1);
}

uint64_t sub_226FACC40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAA404(a1, v1);
}

unint64_t sub_226FACCDC()
{
  result = qword_281398DC0;
  if (!qword_281398DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9198, &qword_227673450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DC0);
  }

  return result;
}

unint64_t sub_226FACD60()
{
  result = qword_281398DB8;
  if (!qword_281398DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9198, &qword_227673450);
    sub_226FAD5E4(&qword_28139B8C0, MEMORY[0x277D51098], MEMORY[0x277D51090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DB8);
  }

  return result;
}

uint64_t sub_226FACE14(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_226FAA660(a1, a2, v2);
}

uint64_t sub_226FACEC0(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAAA14(a1, a2, v2);
}

uint64_t sub_226FACF6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAACF0(a1, v1);
}

uint64_t sub_226FAD008(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAB018(a1, a2, v2);
}

uint64_t sub_226FAD0B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAB4DC(a1, v1);
}

uint64_t sub_226FAD14C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAB610(a1, a2, v2);
}

uint64_t sub_226FAD1F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FABA58(a1, v1);
}

uint64_t sub_226FAD294(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FA9E40(a1, v1);
}

uint64_t sub_226FAD32C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FABE60(a1, a2, v2);
}

uint64_t sub_226FAD3D8(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAC0C8(a1, a2, v2);
}

uint64_t sub_226FAD484(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAC20C(a1, v1);
}

uint64_t sub_226FAD57C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91B8, &qword_227673528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FAD5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226FAD640(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = [a1 identifier];
  if (!v16)
  {
    goto LABEL_9;
  }

  v39 = a2;
  v17 = v16;
  v38 = sub_22766C000();
  v19 = v18;

  v20 = [a1 name];
  if (!v20)
  {
LABEL_8:

LABEL_9:
    v31 = sub_227664DD0();
    sub_226FAE288(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
    swift_willThrow();

    return;
  }

  v37 = v2;
  v21 = v20;
  v36[2] = sub_22766C000();
  v23 = v22;

  v24 = [a1 dateCreated];
  if (!v24)
  {

    goto LABEL_8;
  }

  v36[3] = v23;
  v25 = v24;
  sub_227662710();

  (*(v6 + 32))(v15, v11, v5);
  v26 = [a1 items];
  if (!v26)
  {
    v33 = sub_227664DD0();
    sub_226FAE288(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
    swift_willThrow();
    goto LABEL_11;
  }

  v27 = v26;
  v36[1] = v19;
  v28 = MEMORY[0x22AA99A00]();
  v29 = v37;
  v30 = sub_22715629C(v27);
  if (v29)
  {
    objc_autoreleasePoolPop(v28);

LABEL_11:
    (*(v6 + 8))(v15, v5);

    return;
  }

  v35 = v30;
  objc_autoreleasePoolPop(v28);
  sub_226F3F110(v35);

  (*(v6 + 16))(v8, v15, v5);
  sub_227669420();

  (*(v6 + 8))(v15, v5);
}

void sub_226FADA50(void *a1, uint64_t a2)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227669430();
  v9 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227669450();
  v10 = sub_22766BFD0();

  [a1 setName_];

  v11 = sub_227669460();
  sub_22764A174(a2, v11);
  v13 = v12;

  if (!v2)
  {
    [a1 setItems_];

    sub_227669440();
    v14 = sub_2276626A0();
    (*(v6 + 8))(v8, v5);
    [a1 setDateCreated_];
  }
}

void *static Playlist.representativeSamples()()
{
  v30 = sub_227662750();
  v21 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91C8, &qword_227673530);
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = v20 - v2;
  v27 = sub_227669480();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = sub_22766C090();
  v9 = static PlaylistItem.representativeSamples()();
  v10 = sub_226F3F110(v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91D0, &qword_227673538);
  v11 = sub_22766C380();
  v11[2] = 3;
  v11[4] = v10;
  v11[5] = v10;
  v11[6] = v10;
  swift_bridgeObjectRetain_n();
  v12 = sub_227662630();
  v42 = v8;
  v43[0] = v7;
  v43[1] = v43;
  v43[2] = &v42;
  v40 = v12;
  v41 = v11;
  v43[3] = &v41;
  v43[4] = &v40;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91D8, &qword_227673540);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v32 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v33 = v32;
  v34 = sub_226F5BF60(&qword_27D7B91E0, &qword_27D7B91D8, &qword_227673540);
  v35 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_226F1FA88(0, v14, 0);
    v16 = 0;
    v17 = v31;
    v22 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v21 += 2;
    v20[1] = v4 + 32;
    v26 = v1;
    v25 = v4;
    v24 = v13;
    v23 = v14;
    while (v16 < *(v13 + 16))
    {
      sub_226FAE158(v22 + *(v1 + 72) * v16, v3);
      (*v21)(v29, &v3[*(v28 + 80)], v30);

      sub_227669420();
      sub_226FAE1C8(v3);
      v31 = v17;
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F1FA88((v18 > 1), v19 + 1, 1);
        v17 = v31;
      }

      ++v16;
      *(v17 + 16) = v19 + 1;
      result = (*(v25 + 32))(v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, v6, v27);
      v1 = v26;
      v13 = v24;
      if (v23 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_226FAE158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91C8, &qword_227673530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FAE1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91C8, &qword_227673530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FAE230(uint64_t a1)
{
  result = sub_226FAE288(&qword_2813A54D8, MEMORY[0x277D53C88], &protocol conformance descriptor for Playlist);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FAE288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226FAE2D0(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 88);
  if (*(v1 + 105) < 0)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v2);
    sub_22766D3A0();
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v4);
    sub_22766D3A0();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v2);
    sub_22766D3A0();
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v4);
  }

  return sub_22766D3A0();
}

uint64_t sub_226FAE420()
{
  sub_22766D370();
  sub_226FAE2D0(v1);
  return sub_22766D3F0();
}

uint64_t sub_226FAE464(uint64_t a1)
{
  sub_22766D370();
  sub_226FAE2D0(v2);
  return sub_22766D3F0();
}

uint64_t sub_226FAE4A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 10) = *(a1 + 90);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[10] = *(a2 + 90);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return sub_226FAE8A4(v10, v12) & 1;
}

uint64_t sub_226FAE50C()
{
  v1 = *(v0 + 32);
  sub_22766D370();
  sub_22766C100();
  sub_22766C100();
  MEMORY[0x22AA996B0](v1);
  sub_22766D3A0();
  return sub_22766D3F0();
}

uint64_t sub_226FAE5A4(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22766C100();
  sub_22766C100();
  MEMORY[0x22AA996B0](v2);
  return sub_22766D3A0();
}

uint64_t sub_226FAE60C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22766D370();
  sub_22766C100();
  sub_22766C100();
  MEMORY[0x22AA996B0](v2);
  sub_22766D3A0();
  return sub_22766D3F0();
}

BOOL sub_226FAE6A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v15[0] = *(a1 + 1);
  v15[1] = v6;
  v16 = *(a1 + 48);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v13[0] = *(a2 + 1);
  v13[1] = v9;
  v14 = *(a2 + 48);
  if (v4 == v7 && v5 == v8)
  {
    return sub_226FAE7D4(v13, v15);
  }

  v10 = sub_22766D190();
  v11 = 0;
  if (v10)
  {
    return sub_226FAE7D4(v13, v15);
  }

  return v11;
}

unint64_t sub_226FAE728()
{
  result = qword_27D7B91E8;
  if (!qword_27D7B91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91E8);
  }

  return result;
}

unint64_t sub_226FAE780()
{
  result = qword_27D7B91F0;
  if (!qword_27D7B91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91F0);
  }

  return result;
}

BOOL sub_226FAE7D4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  sub_22766D400();
  sub_22766C100();
  MEMORY[0x22AA996B0](v3);
  sub_22766D3A0();
  sub_22766D400();
  sub_22766C100();
  MEMORY[0x22AA996B0](v2);
  sub_22766D3A0();
  v4 = sub_22766D3E0();
  return v4 == sub_22766D3E0();
}

uint64_t sub_226FAE8A4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 48);
  v11 = *(a1 + 105);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *(a2 + 48);
  v16 = a2[7];
  v17 = *(a2 + 105);
  if (v11 < 0)
  {
    if (v17 < 0)
    {
      if (v50 = a2[8], v52 = a1[8], v36 = a1[7], v38 = a2[9], v40 = a1[9], v42 = a1[10], v44 = a1[11], v46 = a1[12], v48 = *(a1 + 104), v34 = *(a2 + 104), v32 = a2[12], v30 = *(a2 + 5), v24 = a2[5], v25 = *(a2 + 3), v4 == v12) && v5 == v13 || (v28 = a2[5], v27 = *(a2 + 3), v26 = sub_22766D190(), v25 = v27, v24 = v28, (v26))
      {
        v66 = v6;
        v67 = v8;
        v68 = v7;
        v69 = v9;
        v70 = v10 & 1;
        v62 = v14;
        v63 = v25;
        v64 = v24;
        v65 = v15 & 1;
        if (sub_226FAE7D4(&v62, &v66) && (v36 == v16 && v52 == v50 || (sub_22766D190() & 1) != 0))
        {
          v57 = v40;
          v58 = v42;
          v59 = v44;
          v60 = v46;
          v61 = v48 & 1;
          v53 = v38;
          v54 = v30;
          v55 = v32;
          v56 = v34 & 1;
          if (sub_226FAE7D4(&v53, &v57))
          {
            v22 = v11 ^ v17 ^ 1;
            return v22 & 1;
          }
        }
      }
    }

    goto LABEL_13;
  }

  if (v17 < 0 || ((v49 = a2[8], v51 = a1[8], v18 = a1[7], v37 = a2[9], v39 = a1[9], v41 = a1[10], v43 = a1[11], v45 = a1[12], v47 = *(a1 + 104), v35 = *(a2 + 104), v33 = a2[12], v31 = *(a2 + 5), v19 = a2[5], v20 = *(a2 + 3), v4 != v12) || v5 != v13) && (v29 = *(a2 + 3), v21 = sub_22766D190(), v20 = v29, (v21 & 1) == 0) || (v66 = v6, v67 = v8, v68 = v7, v69 = v9, v70 = v10 & 1, v62 = v14, v63 = v20, v64 = v19, v65 = v15 & 1, !sub_226FAE7D4(&v62, &v66)) || (v18 != v16 || v51 != v49) && (sub_22766D190() & 1) == 0 || (v57 = v39, v58 = v41, v59 = v43, v60 = v45, v61 = v47 & 1, v53 = v37, v54 = v31, v55 = v33, v56 = v35 & 1, !sub_226FAE7D4(&v53, &v57)))
  {
LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  v22 = 1;
  return v22 & 1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_226FAEBA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (*(a1 + 48) >> 1 << 14);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_226FAEC18(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 106) = 1;
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
      v4 = -a2;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (v4 | (v4 << 57)) & 0xF000000000000007;
      *(a1 + 40) = ((v4 >> 7) | (v4 << 50)) & 0xF000000000000007;
      *(a1 + 48) = (v4 >> 13) & 0x7FFFE;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_226FAECBC(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 48) & 1;
  v3 = *(a1 + 104) & 0x101 | (a2 << 15);
  v4 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  *(a1 + 32) = vandq_s8(*(a1 + 32), v4);
  *(a1 + 48) = v2;
  result = vandq_s8(*(a1 + 88), v4);
  *(a1 + 88) = result;
  *(a1 + 104) = v3;
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

uint64_t sub_226FAED28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_226FAED70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226FAEDD0(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  sub_22766CEE0();
  sub_226FAF14C();
  if ((sub_22766BF20() & 1) == 0 || (sub_22766C680() & 1) == 0)
  {
    return 0;
  }

  sub_22766C730();
  swift_getWitnessTable();

  return sub_22766BF20();
}

uint64_t sub_226FAEF10(uint64_t a1, uint64_t a2)
{
  sub_22766C100();
  sub_22766CEE0();
  sub_226FAF0F8();
  sub_22766BF10();
  sub_22766C690();
  sub_22766C730();
  swift_getWitnessTable();

  return sub_22766BF10();
}

uint64_t sub_226FAF004(uint64_t a1)
{
  sub_22766D370();
  sub_226FAEF10(v3, a1);
  return sub_22766D3F0();
}

uint64_t sub_226FAF054(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_226FAEF10(v4, a2);
  return sub_22766D3F0();
}

uint64_t sub_226FAF0BC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226FAF0F8()
{
  result = qword_27D7B91F8;
  if (!qword_27D7B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91F8);
  }

  return result;
}

unint64_t sub_226FAF14C()
{
  result = qword_27D7B9200[0];
  if (!qword_27D7B9200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B9200);
  }

  return result;
}

uint64_t sub_226FAF1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_226FAF1E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_226FAF230(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_226FAF290@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227662CA0();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - v5;
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v7;
  v8 = sub_227663540();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662CE0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2276627D0();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_227662750();
  MEMORY[0x28223BE20](v14 - 8);
  v36 = sub_227663850();
  v37 = v15 & 1;
  v35 = 0;
  sub_226FAF720();
  sub_226FAF774();
  if (sub_227663B30())
  {
    v29 = v2;
    v30 = a1;
    sub_2276637E0();
    sub_2276637C0();
    v16 = sub_227663840();
    v28 = sub_2274EDB84(v16);

    sub_2276638B0();
    sub_227663510();
    sub_227663520();
    sub_2276634D0();
    sub_227662CD0();
    (*(v9 + 8))(v11, v8);
    v36 = sub_2276638C0();
    v37 = v17 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    sub_227663B00();
    if (v35 > 1u)
    {
      v19 = v29;
      v20 = v33;
      if (v35 != 2)
      {
        (*(v34 + 104))(v33, *MEMORY[0x277D494E0], v29);
        a1 = v30;
        goto LABEL_12;
      }

      v18 = MEMORY[0x277D494E8];
      a1 = v30;
    }

    else
    {
      if (v35)
      {
        v18 = MEMORY[0x277D494D8];
      }

      else
      {
        v18 = MEMORY[0x277D494E0];
      }

      v19 = v29;
      a1 = v30;
      v20 = v33;
    }

    v22 = v34;
    v23 = v32;
    (*(v34 + 104))(v32, *v18, v19);
    v24 = *(v22 + 32);
    v25 = v31;
    v24(v31, v23, v19);
    v24(v20, v25, v19);
LABEL_12:
    sub_227662B20();
    v21 = 0;
    goto LABEL_13;
  }

  v21 = 1;
LABEL_13:
  v26 = sub_227662B30();
  return (*(*(v26 - 8) + 56))(a1, v21, 1, v26);
}

unint64_t sub_226FAF720()
{
  result = qword_27D7B9288;
  if (!qword_27D7B9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9288);
  }

  return result;
}

unint64_t sub_226FAF774()
{
  result = qword_27D7B9290;
  if (!qword_27D7B9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9290);
  }

  return result;
}

void *static AudioLanguagePreference.representativeSamples()()
{
  v16 = sub_2276668F0();
  v0 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v3 = swift_allocObject();
  v15 = xmmword_227670CD0;
  *(v3 + 16) = xmmword_227670CD0;
  *(v3 + 32) = sub_22766C0A0();
  *(v3 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
  v5 = swift_allocObject();
  *(v5 + 16) = v15;
  sub_22766C530();
  *(v5 + 32) = v6;
  v22 = v5;
  v23[0] = v3;
  v23[1] = v23;
  v23[2] = &v22;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v18 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v19 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_226F1FAA8(0, v8, 0);
    v10 = 0;
    v11 = v17;
    v12 = v7 + 48;
    while (v10 < *(v7 + 16))
    {

      sub_2276668D0();
      v17 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1FAA8((v13 > 1), v14 + 1, 1);
        v11 = v17;
      }

      ++v10;
      *(v11 + 16) = v14 + 1;
      result = (*(v0 + 32))(v11 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v14, v2, v16);
      v12 += 24;
      if (v8 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_226FAFAB8(void *a1)
{
  v2 = [a1 languageIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    [a1 machTimestamp];
    sub_2276668D0();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_226FAFCB8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

id sub_226FAFBE8(void *a1)
{
  sub_2276668E0();
  v2 = sub_22766BFD0();

  [a1 setLanguageIdentifier_];

  sub_2276668C0();
  return [a1 setMachTimestamp_];
}

uint64_t sub_226FAFC60(uint64_t a1)
{
  result = sub_226FAFCB8(&qword_2813A5670, MEMORY[0x277D52700], &protocol conformance descriptor for AudioLanguagePreference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FAFCB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226FAFD00(void *a1)
{
  v53 = a1;
  v1 = sub_22766BE10();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v54 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766B390();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v51 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = sub_22766CAB0();
  sub_22766CAA0();

  v19 = v9;
  sub_227662310();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226FB1188(v7);
    v20 = sub_22766CAB0();
    sub_22766BD00();
    sub_226FB11F0();
    swift_allocError();
    sub_22766BCF0();
    swift_willThrow();
  }

  else
  {
    v45 = *(v9 + 32);
    v46 = v9 + 32;
    v45(v17, v7, v8);
    sub_22766A730();
    v22 = v9 + 16;
    v21 = *(v19 + 16);
    v48 = v17;
    v44 = v21;
    v21(v13, v17, v8);
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59 = v26;
      *v25 = 141558274;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      v27 = sub_227662390();
      v43 = v22;
      v28 = v19;
      v30 = v29;
      v47 = *(v28 + 8);
      v47(v13, v8);
      v31 = sub_226E97AE8(v27, v30, &v59);
      v19 = v28;

      *(v25 + 14) = v31;
      _os_log_impl(&dword_226E8E000, v23, v24, "Simulator network request: %{mask.hash}s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    else
    {

      v47 = *(v19 + 8);
      v47(v13, v8);
    }

    (*(v56 + 8))(v58, v57);
    v20 = sub_22766B9F0();
    v32 = MEMORY[0x22AA97CF0]();
    v33 = v48;
    if (v32)
    {
      v34 = v32;
      v35 = v52;
      v44(v52, v48, v8);
      v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v36 = (v51 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      v45((v37 + v20), v35, v8);
      *(v37 + v36) = v34;
      v38 = v53;

      v39 = v54;
      v40 = v55;
      sub_22766BDF0();
      if (v40)
      {
        v47(v33, v8);
      }

      else
      {
        v20 = sub_22766BE00();

        (*(v49 + 8))(v39, v50);
        v47(v33, v8);
      }
    }

    else
    {
      sub_226F6649C();
      swift_allocError();
      *v41 = 8;
      swift_willThrow();
      v47(v33, v8);
    }
  }

  return v20;
}

void sub_226FB0368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v28 = a3;
  v30 = a2;
  v37 = a1;
  v34 = sub_2276624A0();
  v6 = *(v34 - 8);
  v29 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v32 = [objc_opt_self() sharedSession];
  v31 = sub_2276623E0();
  v14 = *(v9 + 16);
  v14(v13, v28, v8);
  (*(v6 + 16))(v33, a4, v34);
  v14(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v8);
  v15 = *(v9 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = (v29 + v15 + v17) & ~v15;
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 16) = v35;
  *(v19 + 24) = v20;
  v21 = *(v9 + 32);
  v21(v19 + v16, v13, v8);
  (*(v6 + 32))(v19 + v17, v33, v34);
  v21(v19 + v18, v27, v8);
  aBlock[4] = sub_226FB12F8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FB0F70;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  v23 = v37;

  v25 = v31;
  v24 = v32;
  v26 = [v32 dataTaskWithURL:v31 completionHandler:v22];
  _Block_release(v22);

  [v26 resume];
}

uint64_t sub_226FB06D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v41 = a3;
  v46 = a6;
  v43 = a2;
  v44 = a5;
  v42 = a1;
  v38 = a7;
  v39 = a9;
  v45 = sub_2276624A0();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v45);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B780();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = *(v12 + 16);
  v18(&v35 - v16, v38, v11, v15);
  v35 = v9;
  (*(v9 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v45);
  v19 = v11;
  (v18)(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v11);
  v20 = *(v12 + 80);
  v21 = (v20 + 24) & ~v20;
  v22 = (v13 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v20 + v24 + 16) & ~v20;
  v26 = swift_allocObject();
  *(v26 + 16) = v46;
  v27 = *(v12 + 32);
  v27(v26 + v21, v17, v19);
  (*(v35 + 32))(v26 + v22, v36, v45);
  v29 = v41;
  v28 = v42;
  *(v26 + v23) = v41;
  v30 = (v26 + v24);
  v31 = v43;
  *v30 = v28;
  v30[1] = v31;
  v27(v26 + v25, v37, v19);
  v32 = v29;
  v33 = v46;
  sub_226FB1554(v28, v31);
  sub_22766B9E0();
}

void sub_226FB09A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v32 = a5;
  v33 = a7;
  v10 = sub_22766C050();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_22766B390();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = objc_opt_self();
  v16 = [v15 valueWithNewObjectInContext_];
  if (v16)
  {
    v17 = v16;
    v36 = sub_227662390();
    v37 = v18;
    v19 = [v15 valueWithObject:sub_22766D200() inContext:a1];
    swift_unknownObjectRelease();
    if (v19)
    {
      sub_22766CAC0();
      if (!a4)
      {
        goto LABEL_10;
      }

      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        goto LABEL_10;
      }

      v21 = [v20 statusCode];
      if (![v15 valueWithBool:(v21 - 200) < 0x64 inContext:a1])
      {
        goto LABEL_23;
      }

      sub_22766CAC0();
      if (v21 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v21 <= 0x7FFFFFFF)
      {
        if ([v15 valueWithInt32:v21 inContext:a1])
        {
          sub_22766CAC0();
LABEL_10:
          if (a6 >> 60 == 15)
          {
LABEL_15:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
            v25 = swift_allocObject();
            *(v25 + 16) = xmmword_227670CD0;
            *(v25 + 56) = sub_226E99364(0, &qword_27D7B92B0, 0x277CD4658);
            *(v25 + 32) = v17;
            v26 = v17;
            v30 = sub_22766B770();

            return;
          }

          sub_226F5E0B4(v32, a6);
          sub_22766C040();
          v22 = sub_22766C020();
          if (!v23)
          {
LABEL_14:
            sub_226FB1424(v32, a6);
            goto LABEL_15;
          }

          v36 = v22;
          v37 = v23;

          v24 = [v15 valueWithObject:sub_22766D200() inContext:a1];
          swift_unknownObjectRelease();
          if (v24)
          {

            sub_22766CAC0();
            goto LABEL_14;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_22766A730();
  v27 = sub_22766B380();
  v28 = sub_22766C890();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226E8E000, v27, v28, "Unable to create JS response", v29, 2u);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  (*(v34 + 8))(v14, v35);
}

uint64_t sub_226FB0F70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_227662590();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_226FB1424(v6, v10);
}

id sub_226FB1114(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SimulatorNetwork();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_226FB1188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226FB11F0()
{
  result = qword_2813991B0;
  if (!qword_2813991B0)
  {
    sub_22766BD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991B0);
  }

  return result;
}

void sub_226FB1248(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_2276624A0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  sub_226FB0368(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_226FB12F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(sub_22766B780() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = *(v9 + 64);
  v13 = *(sub_2276624A0() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  return sub_226FB06D0(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v11, v4 + v14, v4 + ((*(v13 + 64) + v10 + v14) & ~v10));
}

uint64_t sub_226FB1424(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226EDC420(result, a2);
  }

  return result;
}

void sub_226FB1438()
{
  v1 = *(sub_22766B780() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_2276624A0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  v10 = *(v0 + v7);
  v11 = *(v0 + v8);
  v12 = *(v0 + v8 + 8);

  sub_226FB09A8(v9, v0 + v3, v0 + v6, v10, v11, v12, v0 + ((v2 + v8 + 16) & ~v2));
}

uint64_t sub_226FB1554(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226F5E0B4(result, a2);
  }

  return result;
}

uint64_t sub_226FB1580()
{
  sub_22766D370();
  MEMORY[0x22AA996B0](0);
  return sub_22766D3F0();
}

uint64_t sub_226FB15C4(uint64_t a1)
{
  sub_22766D370();
  MEMORY[0x22AA996B0](0);
  return sub_22766D3F0();
}

unint64_t sub_226FB1608()
{
  result = qword_27D7B9318;
  if (!qword_27D7B9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9318);
  }

  return result;
}

id sub_226FB165C()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_2276623E0();
  v5[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_2276622C0();

  return swift_willThrow();
}

uint64_t sub_226FB1748()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2276624A0();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_2276623E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9320, &qword_227673980);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_227670CD0;
  v8 = *MEMORY[0x277CBE7C0];
  *(v7 + 32) = *MEMORY[0x277CBE7C0];
  type metadata accessor for URLResourceKey(0);
  v9 = v8;
  v10 = sub_22766C2B0();

  v31[0] = 0;
  v11 = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v10 options:0 error:v31];

  v12 = v31[0];
  if (v11)
  {
    v13 = sub_22766C2C0();
    v14 = v12;

    v31[0] = v13;

    sub_226FB259C(v31);
    if (v1)
    {

      __break(1u);
    }

    else
    {

      v15 = v31[0];
      v16 = *(v31[0] + 2) + 1;
      v17 = *(v0 + *(type metadata accessor for TransportSerializableJournalRecorder(0) + 32));
      v18 = v16 - v17;
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_15;
      }

      if (v18 <= 0)
      {
      }

      else
      {
        v29 = sub_2273FC3FC(v18, v15);
        v22 = v21 >> 1;
        if (v20 != v21 >> 1)
        {
          v23 = v19;
          v24 = v20;
          v25 = (v30 + 8);
          if (v20 <= v22)
          {
            v26 = v21 >> 1;
          }

          else
          {
            v26 = v20;
          }

          while (v26 != v24)
          {
            (*(v30 + 16))(v4, v23 + *(v30 + 72) * v24, v2);
            sub_226FB2114(v4);
            ++v24;
            (*v25)(v4, v2);
            if (v22 == v24)
            {
              return swift_unknownObjectRelease();
            }
          }

          __break(1u);
LABEL_15:
          __break(1u);
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v28 = v31[0];
    sub_2276622C0();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226FB1A8C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = sub_227662750();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = &v35 - v17;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9320, &qword_227673980);
  inited = swift_initStackObject();
  v37 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  v19 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v36 = v19;
  sub_226F4C634(inited);
  swift_setDeallocating();
  sub_226FB46B8(inited + 32);
  v20 = v35;
  sub_2276623A0();
  if (v20)
  {

    v21 = sub_2276621F0();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    sub_226E97D1C(v7, &qword_27D7B9328, &qword_227673988);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  else
  {

    v22 = sub_2276621F0();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v7, 0, 1, v22);
    sub_2276621C0();
    (*(v23 + 8))(v7, v22);
    v24 = *(v14 + 48);
    if (v24(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v42, v12, v13);
      goto LABEL_7;
    }
  }

  sub_227662660();
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) != 1)
  {
    sub_226E97D1C(v12, &qword_27D7B9690, qword_227670B50);
  }

LABEL_7:
  v25 = swift_initStackObject();
  *(v25 + 16) = v37;
  *(v25 + 32) = v36;
  v26 = v25 + 32;
  sub_226F4C634(v25);
  swift_setDeallocating();
  sub_226FB46B8(v26);
  sub_2276623A0();
  v27 = v41;

  v28 = sub_2276621F0();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v4, 0, 1, v28);
  sub_2276621C0();
  (*(v29 + 8))(v4, v28);
  if (v24(v27, 1, v13) == 1)
  {
    v30 = v40;
    sub_227662660();
    if (v24(v27, 1, v13) != 1)
    {
      sub_226E97D1C(v27, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v30 = v40;
    (*(v14 + 32))(v40, v27, v13);
  }

  v31 = v42;
  v32 = sub_2276626C0();
  v33 = *(v14 + 8);
  v33(v30, v13);
  v33(v31, v13);
  return v32 & 1;
}

id sub_226FB2114(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22766B390();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_2276623E0();
  v32[0] = 0;
  v11 = [v9 removeItemAtURL:v10 error:v32];

  if (v11)
  {
    return v32[0];
  }

  v13 = v32[0];
  v14 = sub_2276622C0();

  swift_willThrow();
  sub_22766A730();
  (*(v3 + 16))(v5, a1, v2);
  v15 = v14;
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32[0] = v29;
    *v18 = 136315394;
    sub_226FB24F0();
    v19 = sub_22766D140();
    v28 = v17;
    v21 = v20;
    (*(v3 + 8))(v5, v2);
    v22 = sub_226E97AE8(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v23 = sub_22766D250();
    v25 = sub_226E97AE8(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v16, v28, "[TransportSerializableJournalWriter] failed to delete journal at %s with error: %s", v18, 0x16u);
    v26 = v29;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return (*(v30 + 8))(v8, v31);
}

unint64_t sub_226FB24F0()
{
  result = qword_28139BDD0;
  if (!qword_28139BDD0)
  {
    sub_2276624A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDD0);
  }

  return result;
}

unint64_t sub_226FB2548()
{
  result = qword_28139D310;
  if (!qword_28139D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D310);
  }

  return result;
}

void sub_226FB259C(uint64_t *a1)
{
  v2 = *(sub_2276624A0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2271176E0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_226FB2644(v5);
  *a1 = v3;
}

void sub_226FB2644(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
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
        sub_2276624A0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_2276624A0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_226FB2A50(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_226FB2770(0, v2, 1, a1);
  }
}

void sub_226FB2770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_2276624A0();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v16.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v37 = a2;
  if (a3 != a2)
  {
    v50 = &v35 - v15;
    v17 = *a4;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 56);
    v48 = v19;
    v49 = (v18 - 8);
    v21 = (v17 + v20 * (a3 - 1));
    v43 = -v20;
    v44 = (v18 + 16);
    v22 = a1 - a3;
    v45 = v17;
    v46 = v18;
    v36 = v20;
    v23 = v17 + v20 * a3;
    v24 = v4;
    while (2)
    {
      v40 = v21;
      v41 = a3;
      v38 = v23;
      v39 = v22;
      v25 = v42;
      while (1)
      {
        v26 = v50;
        v27 = v48;
        (v48)(v50, v23, v25, v16);
        v27(v13, v21, v25);
        v28 = sub_226FB1A8C(v26, v13);
        v51 = v24;
        if (v24)
        {
          v34 = *v49;
          (*v49)(v13, v25);
          v34(v26, v25);
          return;
        }

        v29 = v28;
        v30 = *v49;
        (*v49)(v13, v25);
        v30(v26, v25);
        if ((v29 & 1) == 0)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return;
        }

        v31 = *v44;
        v32 = v47;
        (*v44)(v47, v23, v25);
        swift_arrayInitWithTakeFrontToBack();
        v31(v21, v32, v25);
        v21 += v43;
        v23 += v43;
        v33 = __CFADD__(v22++, 1);
        v24 = v51;
        if (v33)
        {
          goto LABEL_11;
        }
      }

      v24 = v51;
LABEL_11:
      a3 = v41 + 1;
      v21 = &v40[v36];
      v22 = v39 - 1;
      v23 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_226FB2A50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v198 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  MEMORY[0x28223BE20](v6 - 8);
  v216 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v217 = &v194 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v10 - 8);
  v215 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v214 = &v194 - v13;
  v14 = sub_227662750();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v232 = &v194 - v19;
  v20 = sub_2276624A0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v201 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v207 = &v194 - v24;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v235 = &v194 - v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v194 - v31;
  v38.n128_f64[0] = MEMORY[0x28223BE20](v33);
  v205 = a3;
  if (*(a3 + 8) < 1)
  {
    v41 = MEMORY[0x277D84F90];
LABEL_137:
    a3 = *v198;
    if (*v198)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_139;
    }

    goto LABEL_180;
  }

  v39 = *(a3 + 8);
  v197 = a4;
  v195 = &v194 - v34;
  v196 = v32;
  v202 = v37;
  v203 = v36;
  v213 = v35;
  v211 = v17;
  v40 = 0;
  v221 = v21 + 16;
  v220 = (v21 + 8);
  v218 = (v21 + 32);
  v212 = *MEMORY[0x277CBE7C0];
  v223 = (v15 + 56);
  v233 = (v15 + 48);
  v206 = (v15 + 32);
  v210 = (v15 + 8);
  v41 = MEMORY[0x277D84F90];
  v194 = v21;
  v224 = v14;
  v222 = v20;
LABEL_4:
  v42 = v40;
  v199 = v41;
  v219 = v40;
  if (v40 + 1 >= v39)
  {
    v64 = v40 + 1;
LABEL_17:
    v69 = v197;
    goto LABEL_18;
  }

  v204 = v39;
  v43 = *v205;
  v44 = *(v21 + 72);
  v45 = v40;
  v46 = &(*v205)[v44 * (v40 + 1)];
  v47 = *(v21 + 16);
  v48 = v195;
  (v47)(v195, v46, v20, v38);
  v49 = &v43[v44 * v45];
  a3 = v196;
  v229 = v47;
  v47(v196, v49, v20);
  v50 = v234;
  LODWORD(v230) = sub_226FB1A8C(v48, a3);
  v234 = v50;
  if (v50)
  {
    v193 = *v220;
    (*v220)(a3, v20);
    v193(v48, v20);
    goto LABEL_149;
  }

  v51 = *v220;
  (*v220)(a3, v20);
  v228 = v51;
  v51(v48, v20);
  v52 = (v219 + 2);
  v53 = &v43[v44 * (v219 + 2)];
  v54 = v44;
  v231 = v44;
  while (v204 != v52)
  {
    v55 = v202;
    v56 = v222;
    v57 = v229;
    v229(v202, v53, v222);
    v58 = v203;
    v57(v203, v46, v56);
    v59 = v234;
    v60 = sub_226FB1A8C(v55, v58);
    v234 = v59;
    if (v59)
    {
      v192 = v228;
      (v228)(v58, v56);
      v192(v55, v56);
      goto LABEL_149;
    }

    v61 = v60;
    v62 = v58;
    a3 = v220;
    v63 = v228;
    (v228)(v62, v56);
    v63(v55, v56);
    ++v52;
    v54 = v231;
    v53 += v231;
    v46 += v231;
    if ((v230 ^ v61))
    {
      v64 = (v52 - 1);
      goto LABEL_13;
    }
  }

  v64 = v204;
LABEL_13:
  v21 = v194;
  v14 = v224;
  v20 = v222;
  v42 = v219;
  if ((v230 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v64 < v219)
  {
    goto LABEL_174;
  }

  if (v219 >= v64)
  {
    goto LABEL_17;
  }

  v65 = v54 * (v64 - 1);
  v66 = v64 * v54;
  v204 = v64;
  v67 = v219;
  v68 = v219 * v54;
  do
  {
    if (v67 != --v64)
    {
      v119 = *v205;
      if (!*v205)
      {
        goto LABEL_178;
      }

      v120 = *v218;
      (*v218)(v201, &v119[v68], v222);
      if (v68 < v65 || &v119[v68] >= &v119[v66])
      {
        a3 = v222;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a3 = v222;
        if (v68 != v65)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v120(&v119[v65], v201, a3);
      v41 = v199;
      v20 = a3;
      v54 = v231;
    }

    ++v67;
    v65 -= v54;
    v66 -= v54;
    v68 += v54;
  }

  while (v67 < v64);
  v21 = v194;
  v69 = v197;
  v14 = v224;
  v64 = v204;
  v42 = v219;
LABEL_18:
  v70 = v205[1];
  if (v64 >= v70)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(v64, v42))
  {
    goto LABEL_170;
  }

  if (v64 - v42 >= v69)
  {
LABEL_27:
    v40 = v64;
    if (v64 < v42)
    {
      goto LABEL_169;
    }

    goto LABEL_28;
  }

  if (__OFADD__(v42, v69))
  {
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    return;
  }

  if (&v42[v69] >= v70)
  {
    v71 = v205[1];
  }

  else
  {
    v71 = &v42[v69];
  }

  if (v71 < v42)
  {
    goto LABEL_173;
  }

  if (v64 == v71)
  {
    goto LABEL_27;
  }

  v228 = *v205;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A80, &qword_227671700);
  v209 = *(v21 + 72);
  v208 = *(v21 + 16);
  v121 = v213;
  v200 = v71;
LABEL_89:
  v204 = v64;
  v123 = v64;
LABEL_90:
  v124 = v123 - 1;
  v125 = v228;
  v126 = v209;
  v226 = &v228[v209 * v123];
  v127 = v208;
  v208(v235);
  v227 = v124;
  v225 = &v125[v124 * v126];
  v127(v121);
  v128 = v212;
  v237 = v212;
  v21 = sub_22766CDE0();
  v129 = v21 + 56;
  v130 = v237;
  v230 = v128;
  sub_22766C000();
  a3 = v131;
  sub_22766D370();
  v132 = v130;
  sub_22766C100();
  v133 = sub_22766D3F0();

  v134 = -1 << *(v21 + 32);
  v41 = v133 & ~v134;
  v135 = v41 >> 6;
  v136 = *(v21 + 56 + 8 * (v41 >> 6));
  v137 = 1 << v41;
  if (((1 << v41) & v136) == 0)
  {
    goto LABEL_99;
  }

  v138 = ~v134;
  do
  {
    v139 = sub_22766C000();
    v141 = v140;
    if (v139 == sub_22766C000() && v141 == v142)
    {

LABEL_103:
      v146 = v217;
      v14 = v224;
LABEL_104:
      sub_226FB46B8(&v237);
      v147 = v234;
      sub_2276623A0();
      if (v147)
      {

        v148 = sub_2276621F0();
        (*(*(v148 - 8) + 56))(v146, 1, 1, v148);
        sub_226E97D1C(v146, &qword_27D7B9328, &qword_227673988);
        v149 = v214;
        (*v223)(v214, 1, 1, v14);
      }

      else
      {

        v150 = sub_2276621F0();
        v151 = *(v150 - 8);
        (*(v151 + 56))(v146, 0, 1, v150);
        v149 = v214;
        sub_2276621C0();
        (*(v151 + 8))(v146, v150);
        v152 = *v233;
        if ((*v233)(v149, 1, v14) != 1)
        {
          v234 = 0;
          v229 = v152;
          (*v206)(v232, v149, v14);
          goto LABEL_110;
        }
      }

      sub_227662660();
      v153 = *v233;
      v154 = (*v233)(v149, 1, v14);
      v229 = v153;
      v234 = 0;
      if (v154 != 1)
      {
        sub_226E97D1C(v149, &qword_27D7B9690, qword_227670B50);
      }

LABEL_110:
      v236 = v230;
      v155 = sub_22766CDE0();
      v41 = v155 + 56;
      v156 = v236;
      a3 = sub_22766C000();
      v21 = v157;
      sub_22766D370();
      v158 = v156;
      sub_22766C100();
      v159 = sub_22766D3F0();

      v160 = -1 << *(v155 + 32);
      v161 = v159 & ~v160;
      v162 = v161 >> 6;
      v163 = *(v155 + 56 + 8 * (v161 >> 6));
      v164 = 1 << v161;
      if (((1 << v161) & v163) != 0)
      {
        v165 = ~v160;
        while (1)
        {
          v166 = sub_22766C000();
          v21 = v167;
          if (v166 == sub_22766C000() && v21 == v168)
          {

            goto LABEL_122;
          }

          a3 = sub_22766D190();

          if (a3)
          {
            break;
          }

          v161 = (v161 + 1) & v165;
          v162 = v161 >> 6;
          v163 = *(v41 + 8 * (v161 >> 6));
          v164 = 1 << v161;
          if (((1 << v161) & v163) == 0)
          {
            goto LABEL_118;
          }
        }

LABEL_122:
        v172 = v216;
        v173 = v215;
      }

      else
      {
LABEL_118:
        *(v41 + 8 * v162) = v164 | v163;
        *(*(v155 + 48) + 8 * v161) = v158;
        v170 = *(v155 + 16);
        v88 = __OFADD__(v170, 1);
        v171 = v170 + 1;
        v172 = v216;
        v173 = v215;
        if (v88)
        {
          goto LABEL_152;
        }

        *(v155 + 16) = v171;
      }

      sub_226FB46B8(&v236);
      v121 = v213;
      v174 = v234;
      sub_2276623A0();
      v20 = v222;
      v175 = v211;
      if (v174)
      {

        v176 = sub_2276621F0();
        (*(*(v176 - 8) + 56))(v172, 1, 1, v176);
        sub_226E97D1C(v172, &qword_27D7B9328, &qword_227673988);
        v14 = v224;
        (*v223)(v173, 1, 1, v224);
        v234 = 0;
        v177 = v229;
      }

      else
      {
        v234 = 0;

        v178 = sub_2276621F0();
        v179 = *(v178 - 8);
        (*(v179 + 56))(v172, 0, 1, v178);
        sub_2276621C0();
        (*(v179 + 8))(v172, v178);
        v14 = v224;
        v177 = v229;
        if (v229(v173, 1, v224) != 1)
        {
          (*v206)(v175, v173, v14);
LABEL_129:
          v180 = v232;
          v181 = sub_2276626C0();
          v182 = *v210;
          (*v210)(v175, v14);
          v182(v180, v14);
          a3 = v220;
          v183 = *v220;
          (*v220)(v121, v20);
          v183(v235, v20);
          if (v181)
          {
            if (!v228)
            {
              goto LABEL_175;
            }

            a3 = v218;
            v184 = *v218;
            v185 = v207;
            (*v218)(v207, v226, v20);
            v186 = v225;
            swift_arrayInitWithTakeFrontToBack();
            v184(v186, v185, v20);
            v123 = v227;
            v122 = v219;
            if (v227 == v219)
            {
              goto LABEL_88;
            }

            goto LABEL_90;
          }

          v122 = v219;
LABEL_88:
          v64 = (v204 + 1);
          v40 = v200;
          if (v204 + 1 != v200)
          {
            goto LABEL_89;
          }

          v21 = v194;
          v41 = v199;
          if (v200 < v122)
          {
            goto LABEL_169;
          }

LABEL_28:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_2273A4F9C(0, *(v41 + 16) + 1, 1, v41);
          }

          v73 = *(v41 + 16);
          v72 = *(v41 + 24);
          v74 = v73 + 1;
          if (v73 >= v72 >> 1)
          {
            v41 = sub_2273A4F9C((v72 > 1), v73 + 1, 1, v41);
          }

          *(v41 + 16) = v74;
          v75 = v41 + 16 * v73;
          *(v75 + 32) = v219;
          *(v75 + 40) = v40;
          v76 = *v198;
          if (!*v198)
          {
            goto LABEL_179;
          }

          if (v73)
          {
            while (1)
            {
              v77 = v74 - 1;
              if (v74 >= 4)
              {
                break;
              }

              if (v74 == 3)
              {
                v78 = *(v41 + 32);
                v79 = *(v41 + 40);
                v88 = __OFSUB__(v79, v78);
                v80 = v79 - v78;
                v81 = v88;
LABEL_47:
                if (v81)
                {
                  goto LABEL_158;
                }

                v94 = (v41 + 16 * v74);
                v96 = *v94;
                v95 = v94[1];
                v97 = __OFSUB__(v95, v96);
                v98 = v95 - v96;
                v99 = v97;
                if (v97)
                {
                  goto LABEL_161;
                }

                v100 = (v41 + 32 + 16 * v77);
                v102 = *v100;
                v101 = v100[1];
                v88 = __OFSUB__(v101, v102);
                v103 = v101 - v102;
                if (v88)
                {
                  goto LABEL_164;
                }

                if (__OFADD__(v98, v103))
                {
                  goto LABEL_165;
                }

                if (v98 + v103 >= v80)
                {
                  if (v80 < v103)
                  {
                    v77 = v74 - 2;
                  }

                  goto LABEL_68;
                }

                goto LABEL_61;
              }

              v104 = (v41 + 16 * v74);
              v106 = *v104;
              v105 = v104[1];
              v88 = __OFSUB__(v105, v106);
              v98 = v105 - v106;
              v99 = v88;
LABEL_61:
              if (v99)
              {
                goto LABEL_160;
              }

              v107 = v41 + 16 * v77;
              v109 = *(v107 + 32);
              v108 = *(v107 + 40);
              v88 = __OFSUB__(v108, v109);
              v110 = v108 - v109;
              if (v88)
              {
                goto LABEL_163;
              }

              if (v110 < v98)
              {
                goto LABEL_3;
              }

LABEL_68:
              v115 = v77 - 1;
              if (v77 - 1 >= v74)
              {
                goto LABEL_153;
              }

              if (!*v205)
              {
                goto LABEL_176;
              }

              v116 = *(v41 + 32 + 16 * v115);
              a3 = *(v41 + 32 + 16 * v77 + 8);
              v117 = v234;
              sub_226FB401C(&(*v205)[*(v21 + 72) * v116], &(*v205)[*(v21 + 72) * *(v41 + 32 + 16 * v77)], &(*v205)[*(v21 + 72) * a3], v76);
              v234 = v117;
              if (v117)
              {
                goto LABEL_149;
              }

              if (a3 < v116)
              {
                goto LABEL_154;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v41 = sub_2271171D0(v41);
              }

              if (v115 >= *(v41 + 16))
              {
                goto LABEL_155;
              }

              v118 = v41 + 16 * v115;
              *(v118 + 32) = v116;
              *(v118 + 40) = a3;
              v238 = v41;
              sub_227117144(v77);
              v41 = v238;
              v74 = *(v238 + 16);
              if (v74 <= 1)
              {
                goto LABEL_3;
              }
            }

            v82 = v41 + 32 + 16 * v74;
            v83 = *(v82 - 64);
            v84 = *(v82 - 56);
            v88 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            if (v88)
            {
              goto LABEL_156;
            }

            v87 = *(v82 - 48);
            v86 = *(v82 - 40);
            v88 = __OFSUB__(v86, v87);
            v80 = v86 - v87;
            v81 = v88;
            if (v88)
            {
              goto LABEL_157;
            }

            v89 = (v41 + 16 * v74);
            v91 = *v89;
            v90 = v89[1];
            v88 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v88)
            {
              goto LABEL_159;
            }

            v88 = __OFADD__(v80, v92);
            v93 = v80 + v92;
            if (v88)
            {
              goto LABEL_162;
            }

            if (v93 >= v85)
            {
              v111 = (v41 + 32 + 16 * v77);
              v113 = *v111;
              v112 = v111[1];
              v88 = __OFSUB__(v112, v113);
              v114 = v112 - v113;
              if (v88)
              {
                goto LABEL_168;
              }

              if (v80 < v114)
              {
                v77 = v74 - 2;
              }

              goto LABEL_68;
            }

            goto LABEL_47;
          }

LABEL_3:
          v39 = v205[1];
          v14 = v224;
          if (v40 >= v39)
          {
            goto LABEL_137;
          }

          goto LABEL_4;
        }
      }

      sub_227662660();
      if (v177(v173, 1, v14) != 1)
      {
        sub_226E97D1C(v173, &qword_27D7B9690, qword_227670B50);
      }

      goto LABEL_129;
    }

    a3 = sub_22766D190();

    if (a3)
    {

      goto LABEL_103;
    }

    v41 = (v41 + 1) & v138;
    v135 = v41 >> 6;
    v136 = *(v129 + 8 * (v41 >> 6));
    v137 = 1 << v41;
  }

  while (((1 << v41) & v136) != 0);
  v14 = v224;
LABEL_99:
  *(v129 + 8 * v135) = v137 | v136;
  *(*(v21 + 48) + 8 * v41) = v132;
  v144 = *(v21 + 16);
  v88 = __OFADD__(v144, 1);
  v145 = v144 + 1;
  v146 = v217;
  if (!v88)
  {
    *(v21 + 16) = v145;
    goto LABEL_104;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  v41 = sub_2271171D0(v41);
LABEL_139:
  v238 = v41;
  v187 = *(v41 + 16);
  if (v187 >= 2)
  {
    while (*v205)
    {
      v188 = *(v41 + 16 * v187);
      v189 = *(v41 + 16 * (v187 - 1) + 40);
      v190 = v234;
      sub_226FB401C(&(*v205)[*(v21 + 72) * v188], &(*v205)[*(v21 + 72) * *(v41 + 16 * (v187 - 1) + 32)], &(*v205)[*(v21 + 72) * v189], a3);
      v234 = v190;
      if (v190)
      {
        goto LABEL_149;
      }

      if (v189 < v188)
      {
        goto LABEL_166;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2271171D0(v41);
      }

      if (v187 - 2 >= *(v41 + 16))
      {
        goto LABEL_167;
      }

      v191 = (v41 + 16 * v187);
      *v191 = v188;
      v191[1] = v189;
      v238 = v41;
      sub_227117144(v187 - 1);
      v41 = v238;
      v187 = *(v238 + 16);
      if (v187 <= 1)
      {
        goto LABEL_149;
      }
    }

    goto LABEL_177;
  }

LABEL_149:
}

void sub_226FB401C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v13;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = sub_226FB1A8C(v37, v50);
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = v16;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = sub_226FB1A8C(v30, v31);
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  sub_227117214(&v79, &v78, &v77);
}

uint64_t sub_226FB46B8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FB473C(uint64_t a1)
{
  result = sub_2276624A0();
  if (v2 <= 0x3F)
  {
    result = sub_226E99364(319, &qword_281398B00, 0x277CCA968);
    if (v3 <= 0x3F)
    {
      result = sub_226E99364(319, &unk_28139D250, 0x277D85C90);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices25SQLiteDatabaseHandleErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_226FB4840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_226FB4888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_226FB48CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_226FB48F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_227664530();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22766B390();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227670CD0;
  *(v14 + 32) = sub_2276644F0();
  *(v14 + 40) = v15;
  v16 = sub_226F86AB0(v14, a2);
  if (v3)
  {

    v17 = 0;
  }

  else
  {
    v17 = v16;

    if (*(v17 + 16))
    {
      v32 = sub_227666B60();
      (*(*(v32 - 8) + 16))(a3, v17 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80)), v32);
    }
  }

  sub_22766A610();
  (*(v8 + 16))(v10, a1, v7);

  v18 = sub_22766B380();
  v19 = sub_22766C890();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v20 = 136315394;
    v21 = sub_2276644F0();
    v34 = v19;
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = sub_226E97AE8(v21, v23, &v39);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v38 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9350, &qword_227673B38);
    v25 = sub_22766CB80();
    v27 = v26;

    v28 = sub_226E97AE8(v25, v27, &v39);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v18, v34, "CatalogWorkoutReferences for workout identifier %s: %s", v20, 0x16u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v36 + 8))(v13, v37);
  sub_226F73CD0();
  swift_allocError();
  *v30 = 7;
  return swift_willThrow();
}

uint64_t sub_226FB4D0C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);

  return swift_deallocClassInstance();
}

uint64_t sub_226FB4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_22766B390();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  v8 = sub_227667A70();
  v5[17] = v8;
  v9 = *(v8 - 8);
  v5[18] = v9;
  v5[19] = *(v9 + 64);
  v5[20] = swift_task_alloc();
  v10 = sub_227664530();
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v5[23] = *(v11 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v5[26] = v12;
  v5[27] = *(v12 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FB5000, 0, 0);
}

uint64_t sub_226FB5000()
{
  v31 = v0[28];
  v1 = v0[25];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v24 = v3;
  v25 = v1;
  v5 = v0[18];
  v27 = v0[23];
  v28 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v26 = v0[14];
  v8 = v0[10];
  v22 = v0[9];
  v23 = v7;
  v9 = v0[7];
  v21 = v0[8];
  v29 = v8[25];
  v30 = v8[26];
  __swift_project_boxed_opaque_existential_0(v8 + 22, v29);
  v10 = *(v2 + 16);
  v0[29] = v10;
  v0[30] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v3);
  v11 = v6;
  (*(v5 + 16))(v4, v21, v6);
  sub_226E93170(v22, v7, &qword_27D7B8E38, &qword_22767C730);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = (v27 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = (v28 + *(v26 + 80) + v13) & ~*(v26 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  (*(v2 + 32))(v15 + v12, v25, v24);
  (*(v5 + 32))(v15 + v13, v4, v11);
  sub_226FB6CC8(v23, v15 + v14);

  sub_226ECF5D8(sub_226FB6D38, v15, v29, v11, v30, v31);

  v16 = swift_task_alloc();
  v0[31] = v16;
  *(v16 + 16) = "SeymourServices/AchievementEnvironmentCacheCoordinator.swift";
  *(v16 + 24) = 60;
  *(v16 + 32) = 2;
  *(v16 + 40) = 70;
  *(v16 + 48) = v31;
  v17 = swift_task_alloc();
  v0[32] = v17;
  *v17 = v0;
  v17[1] = sub_226FB52C0;
  v18 = v0[17];
  v19 = v0[6];

  return MEMORY[0x2822008A0](v19, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226FB6E84, v16, v18);
}

uint64_t sub_226FB52C0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FB549C, 0, 0);
  }

  else
  {
    v5 = v2[27];
    v4 = v2[28];
    v6 = v2[26];

    (*(v5 + 8))(v4, v6);

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_226FB549C()
{
  v33 = v0;
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[7];
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_22766A610();
  v2(v3, v5, v4);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v11 = v0[21];
    v10 = v0[22];
    v29 = v0[12];
    v30 = v0[11];
    v31 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315394;
    v14 = sub_2276644D0();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_226E97AE8(v14, v16, v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v18 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v20 = sub_226E97AE8(v18, v19, v32);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v7, v8, "Failed to make new environment cache using session ID %s, error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v29 + 8))(v31, v30);
  }

  else
  {
    v21 = v0[24];
    v22 = v0[21];
    v23 = v0[22];
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[11];

    (*(v23 + 8))(v21, v22);
    (*(v25 + 8))(v24, v26);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_226FB5770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a3;
  v37 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v12 - 8);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v38 = a2;
  sub_226FB48F4(a2, a1, &v34 - v18);
  if (v5)
  {

    v36 = 0;
    v20 = 1;
  }

  else
  {
    v36 = 0;
    v20 = 0;
  }

  v21 = sub_227666B60();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v19, v20, 1, v21);
  sub_226E93170(a4, v11, &qword_27D7B8E38, &qword_22767C730);
  v23 = sub_22766A4C0();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_226E97D1C(v11, &qword_27D7B8E38, &qword_22767C730);
  }

  else
  {
    sub_22766A4A0();
    (*(v24 + 8))(v11, v23);
  }

  sub_226E93170(v19, v16, &qword_27D7B8F20, &qword_2276767D0);
  v25 = *(v22 + 48);
  v26 = v25(v16, 1, v21);
  v34 = v22;
  if (v26 == 1)
  {
    sub_226E97D1C(v16, &qword_27D7B8F20, &qword_2276767D0);
  }

  else
  {
    v27 = sub_227666B50();
    v29 = v28;
    v31 = v30;
    (*(v22 + 8))(v16, v21);
    sub_227663AC0();
    sub_226EB2DFC(v27, v29, v31 & 1);
  }

  v32 = v35;
  sub_226E93170(v19, v35, &qword_27D7B8F20, &qword_2276767D0);
  if (v25(v32, 1, v21) == 1)
  {
    sub_226E97D1C(v32, &qword_27D7B8F20, &qword_2276767D0);
  }

  else
  {
    sub_227666A90();
    (*(v34 + 8))(v32, v21);
  }

  sub_2276679B0();

  return sub_226E97D1C(v19, &qword_27D7B8F20, &qword_2276767D0);
}

uint64_t sub_226FB5BA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227667A70();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FB5CD4, 0, 0);
}

uint64_t sub_226FB5CD4(uint64_t a1)
{
  v40 = v1;
  v2 = v1[8];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  sub_22766A610();
  v37 = *(v4 + 16);
  v37(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[10];
  v10 = v1[11];
  v12 = v1[8];
  v11 = v1[9];
  if (v8)
  {
    v13 = v1[7];
    v15 = v1[4];
    v14 = v1[5];
    v36 = v1[11];
    v16 = swift_slowAlloc();
    v35 = v11;
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136315138;
    v37(v13, v12, v15);
    v18 = sub_22766C060();
    v34 = v7;
    v20 = v19;
    (*(v14 + 8))(v12, v15);
    v21 = sub_226E97AE8(v18, v20, &v39);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226E8E000, v6, v34, "Inserting a new achievement environment cache: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v9 + 8))(v36, v35);
  }

  else
  {
    v22 = v1[4];
    v23 = v1[5];

    (*(v23 + 8))(v12, v22);
    (*(v9 + 8))(v10, v11);
  }

  v24 = v1[7];
  v25 = v1[4];
  v26 = v1[5];
  v28 = v1[2];
  v27 = v1[3];
  v29 = v27[26];
  __swift_project_boxed_opaque_existential_0(v27 + 22, v27[25]);
  v37(v24, v28, v25);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  v1[12] = v31;
  (*(v26 + 32))(v31 + v30, v24, v25);
  v38 = (*(v29 + 24) + **(v29 + 24));
  v32 = swift_task_alloc();
  v1[13] = v32;
  *v32 = v1;
  v32[1] = sub_226FA03B4;

  return v38();
}

void sub_226FB604C(void *a1, uint64_t a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9338, &qword_227673B10);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v11 = qword_2813B2078;
  swift_beginAccess();
  v12 = sub_227542F78(v8 + v11, v7, v6);
  if (v12)
  {
    if (v12 == 1)
    {

LABEL_4:
      v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9340, &qword_227673B18);
      v14 = sub_227667A70();
      v15 = *(v14 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_227670CD0;
      (*(v15 + 16))(v17 + v16, a2, v14);
      sub_22755F0D0(v17, v13[1], *(v13 + 16), v13[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v18 = sub_2272480B8(0);
    if (!v23)
    {
      v19 = v18;
      [v18 setResultType_];
      sub_226ED9864();
      v20 = sub_22766C9E0();
      v21 = sub_226EDAB24(v20);

      sub_226EDAB78(v21, v10);

      goto LABEL_4;
    }
  }
}

uint64_t sub_226FB62F8()
{
  v2 = *v1;
  v2[43] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FB6704, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[44] = v3;
    *v3 = v2;
    v3[1] = sub_226FB646C;
    v4 = v2[29];

    return sub_226FB5BA4(v4);
  }
}

uint64_t sub_226FB646C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_226FB67C4;
  }

  else
  {
    v2 = sub_226FB6580;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226FB6580()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[25];

  sub_226E97D1C(v1, &qword_27D7B9330, &qword_227673B00);
  (*(v3 + 32))(v5, v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226FB6668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FB6704()
{
  v1 = *(v0 + 256);

  sub_226E97D1C(v1, &qword_27D7B9330, &qword_227673B00);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226FB67C4()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  (*(v3 + 8))(v2, v4);
  sub_226E97D1C(v1, &qword_27D7B9330, &qword_227673B00);

  v5 = v0[1];

  return v5();
}

uint64_t sub_226FB68A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_226FB6958(uint64_t a1, void *a2, void *a3)
{
  v25 = a3;
  v24 = a2;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CatalogDataStore();
  v31[3] = v12;
  v31[4] = &off_283A99B78;
  v31[0] = a1;
  v29 = &type metadata for AchievementAwardDataStore;
  v30 = &off_283AC5C08;
  type metadata accessor for AchievementEnvironmentCacheProvider(0);
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v19 = *v17;
  v27[3] = v12;
  v27[4] = &off_283A99B78;
  v26[4] = &off_283AC5C08;
  v27[0] = v19;
  v26[3] = &type metadata for AchievementAwardDataStore;
  *(v13 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider) = 0;
  sub_226E91B50(v27, v13 + 16);
  sub_226E91B50(v26, v13 + 56);
  v20 = v24;
  sub_226E91B50(v24, v13 + 96);
  v21 = v25;
  sub_226FB68A4(v25, v13 + 136);
  sub_2276625C0();
  (*(v5 + 16))(v8, v11, v4);
  sub_227662720();
  sub_227661FF0();
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v20);
  (*(v5 + 8))(v11, v4);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v13;
}

uint64_t sub_226FB6CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FB6D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227664530() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227667A70() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  return sub_226FB5770(a1, v2 + v6, v2 + v9, v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226FB6EBC@<X0>(uint64_t a1@<X8>)
{
  sub_2276696C0();
  swift_allocObject();
  *a1 = sub_2276696B0();
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277CBE780];
  v4 = [objc_opt_self() mainQueue];
  v10 = sub_226FB7030;
  v11 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_226FB7164;
  ObjectType = &block_descriptor_1;
  v5 = _Block_copy(v8);
  v6 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:v5];
  _Block_release(v5);

  ObjectType = swift_getObjectType();
  v8[0] = v6;
  return sub_226FB7810(v8, a1 + 8);
}

uint64_t sub_226FB7030()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "[MetricEventSequenceNumberProvider] system time zone changed", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_226FB7164(uint64_t a1, uint64_t a2)
{
  v3 = sub_227662030();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_227662020();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_226FB7258@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v38[1] = a1;
  v2 = sub_22766B390();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_227662940();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227662750();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  sub_227664830();
  v15 = sub_22766BFD0();

  [v14 doubleForKey_];

  sub_2276625C0();
  v16 = [v13 standardUserDefaults];
  sub_227664890();
  v17 = sub_22766BFD0();

  v18 = [v16 integerForKey_];

  sub_227662740();
  sub_227662920();
  LOBYTE(v16) = sub_227662900();
  (*(v4 + 8))(v6, v44);
  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
LABEL_5:
    v19 = 1;
  }

  v20 = [v13 standardUserDefaults];
  sub_2276625D0();
  v22 = v21;
  sub_227664830();
  v23 = sub_22766BFD0();

  [v20 setDouble:v23 forKey:v22];

  v24 = [v13 standardUserDefaults];
  sub_227664890();
  v25 = sub_22766BFD0();

  [v24 setInteger:v19 forKey:v25];

  v26 = v45;
  sub_22766A740();
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = v30;
    *v29 = 134218242;
    *(v29 + 4) = v19;
    *(v29 + 12) = 2080;
    v31 = sub_2276637A0();
    v33 = sub_226E97AE8(v31, v32, &v46);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_226E8E000, v27, v28, "[MetricEventSequenceNumberProvider] providing event sequence number %ld for topic %s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v29, -1, -1);

    (*(v41 + 8))(v45, v42);
  }

  else
  {

    (*(v41 + 8))(v26, v42);
  }

  v34 = v40;
  v35 = *(v39 + 8);
  v35(v9, v40);
  result = (v35)(v12, v34);
  v37 = v43;
  *v43 = v19;
  *(v37 + 8) = 0;
  return result;
}

uint64_t sub_226FB7734(uint64_t a1)
{
  if (a1 != 4)
  {
    return 0;
  }

  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
  sub_2276696A0();
  return v2;
}

uint64_t sub_226FB7810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FB7880()
{
  v1 = v0;
  v67 = sub_227669910();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_227669A70();
  v79 = *(v3 - 8);
  v4 = v79;
  MEMORY[0x28223BE20](v3);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v8 + 8))(v10, v7);
  v11 = v1[10];
  v75 = v1[12];
  ObjectType = swift_getObjectType();
  v86 = v11;
  v13 = *(v4 + 104);
  v13(v6, *MEMORY[0x277D4E410], v3);
  v77 = v13;
  swift_allocObject();
  v78 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();

  v74 = ObjectType;
  sub_227669EB0();

  v14 = *(v79 + 8);
  v79 += 8;
  v72 = v14;
  v14(v6, v3);

  swift_unknownObjectRelease();
  v86 = v11;
  v13(v6, *MEMORY[0x277D4E380], v3);
  swift_allocObject();
  swift_weakInit();
  sub_2276639B0();
  sub_227663CF0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v76 = v3;
  v15 = v72;
  v72(v6, v3);
  swift_unknownObjectRelease();
  v86 = v11;
  v16 = v77;
  v77(v6, *MEMORY[0x277D4EB40], v3);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v17 = v76;
  v15(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v16(v6, *MEMORY[0x277D4E5F8], v17);
  v73 = v4 + 104;
  swift_allocObject();
  swift_weakInit();
  sub_227666500();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v18 = v76;
  v15(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v19 = v77;
  v77(v6, *MEMORY[0x277D4ECA8], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v20 = v76;
  v15(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v19(v6, *MEMORY[0x277D4EE20], v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v15(v6, v20);

  swift_unknownObjectRelease();
  v86 = v11;
  v21 = v77;
  v77(v6, *MEMORY[0x277D4E400], v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v22 = v76;
  v15(v6, v76);

  swift_unknownObjectRelease();
  v86 = v11;
  v21(v6, *MEMORY[0x277D4EA60], v22);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v23 = v72;
  v72(v6, v22);
  swift_unknownObjectRelease();
  v86 = v11;
  v24 = v77;
  v77(v6, *MEMORY[0x277D4EC28], v22);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v25 = v76;
  v23(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v24(v6, *MEMORY[0x277D4EA20], v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v26 = v76;
  v23(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v27 = v77;
  v77(v6, *MEMORY[0x277D4EC08], v26);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v28 = v76;
  v23(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v27(v6, *MEMORY[0x277D4E310], v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v29 = v76;
  v30 = v72;
  v72(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v27(v6, *MEMORY[0x277D4E3E0], v29);
  swift_allocObject();
  swift_weakInit();
  v68 = sub_2276624A0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v31 = v76;
  v30(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v32 = v77;
  v77(v6, *MEMORY[0x277D4E840], v31);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v33 = v76;
  v34 = v72;
  v72(v6, v76);

  swift_unknownObjectRelease();
  v86 = v11;
  v32(v6, *MEMORY[0x277D4E598], v33);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v35 = v76;
  v34(v6, v76);

  swift_unknownObjectRelease();
  v86 = v11;
  v32(v6, *MEMORY[0x277D4E4B8], v35);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226FA712C();
  sub_226FA71B0();
  v70 = sub_226FBD1C0();
  v69 = sub_226FBD244();
  sub_227669E80();

  v36 = v72;
  v72(v6, v35);
  swift_unknownObjectRelease();
  v86 = v11;
  v77(v6, *MEMORY[0x277D4E5A0], v35);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v37 = v76;
  v36(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v38 = v77;
  v77(v6, *MEMORY[0x277D4E7B8], v37);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9358, &qword_227673C00);
  sub_226FBD308();
  sub_226FBD38C();
  sub_227669E90();

  v39 = v76;
  v40 = v72;
  v72(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v38(v6, *MEMORY[0x277D4E3B8], v39);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v41 = v76;
  v40(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v38(v6, *MEMORY[0x277D4E850], v41);
  swift_allocObject();
  swift_weakInit();
  sub_2276642E0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v72(v6, v41);
  swift_unknownObjectRelease();
  v86 = v11;
  v77(v6, *MEMORY[0x277D4E5A8], v41);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  sub_226FBD490();
  sub_226FBD514();
  sub_227669E90();

  v42 = v72;
  v72(v6, v41);
  swift_unknownObjectRelease();
  v86 = v11;
  v43 = v77;
  v77(v6, *MEMORY[0x277D4ED18], v41);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v44 = v76;
  v42(v6, v76);
  swift_unknownObjectRelease();
  v86 = v11;
  v43(v6, *MEMORY[0x277D4ED90], v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v42(v6, v44);
  swift_unknownObjectRelease();
  v86 = v11;
  v45 = v44;
  v77(v6, *MEMORY[0x277D4EDB0], v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v46 = v72;
  v72(v6, v44);
  swift_unknownObjectRelease();
  v86 = v11;
  v77(v6, *MEMORY[0x277D4E610], v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_226FBD650();
  sub_226FBD6D4();
  sub_227669E90();

  v46(v6, v44);
  swift_unknownObjectRelease();
  v86 = v11;
  v77(v6, *MEMORY[0x277D4E890], v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9368, &unk_22767FFA0);
  sub_226FBD790();
  sub_226FBD814();
  sub_227669E90();

  v46(v6, v44);
  swift_unknownObjectRelease();
  v86 = v11;
  v47 = v77;
  v77(v6, *MEMORY[0x277D4E778], v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v64[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  v68 = sub_226FBD8D0();
  v64[1] = sub_226FBD954();
  sub_227669E80();

  v46(v6, v45);
  swift_unknownObjectRelease();
  v86 = v11;
  v47(v6, *MEMORY[0x277D4E8D0], v45);
  swift_allocObject();
  swift_weakInit();
  sub_227668910();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  sub_226F62F70(&qword_281399150, &qword_27D7B90F8, &qword_227679D10);
  sub_226FBDA10();
  sub_227669E80();

  v48 = v72;
  v72(v6, v45);
  swift_unknownObjectRelease();
  v86 = v11;
  v77(v6, *MEMORY[0x277D4E988], v45);
  swift_allocObject();
  swift_weakInit();
  sub_227668C20();
  swift_unknownObjectRetain();
  sub_227669E80();

  v48(v6, v45);
  swift_unknownObjectRelease();
  v86 = v11;
  v49 = v77;
  v77(v6, *MEMORY[0x277D4E578], v45);
  swift_allocObject();
  swift_weakInit();
  sub_2276668A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9378, &qword_22768AF50);
  sub_226F62F70(&qword_281399140, &qword_27D7B9378, &qword_22768AF50);
  sub_226FBDB44();
  sub_227669E80();

  v50 = v45;
  v51 = v45;
  v52 = v72;
  v72(v6, v51);
  swift_unknownObjectRelease();
  v86 = v11;
  v49(v6, *MEMORY[0x277D4EB08], v50);
  swift_allocObject();
  v53 = v78;
  swift_weakInit();
  sub_227664F30();
  sub_227669E80();

  v52(v6, v50);
  swift_unknownObjectRelease();
  v54 = v53[7];
  v55 = v53;
  swift_getObjectType();
  v86 = v54;
  v56 = v66;
  v57 = v65;
  v58 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x277D4E110], v67);
  swift_allocObject();
  swift_weakInit();
  sub_227665780();
  swift_unknownObjectRetain();
  sub_227669E60();

  (*(v56 + 8))(v57, v58);
  swift_unknownObjectRelease();
  v59 = v55[13];
  v60 = swift_allocObject();
  swift_weakInit();
  v83 = v59;
  v84 = sub_226FBDC08;
  v85 = v60;

  sub_2276696A0();

  v61 = swift_allocObject();
  swift_weakInit();
  v80 = v59;
  v81 = sub_226FBDC30;
  v82 = v61;

  sub_2276696A0();

  __swift_project_boxed_opaque_existential_0(v55 + 14, v55[17]);
  v62 = swift_allocObject();
  swift_weakInit();
  sub_226F64EB4(39, sub_226FBDC5C, v62);
}

uint64_t sub_226FB97CC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v24);

    v11 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
    v12 = *v11;
    v13 = *(*v11 + 600);
    v14 = *(*v11 + 608);
    __swift_project_boxed_opaque_existential_0((*v11 + 576), v13);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE110, v12, v13, v15, v14, v9);

    v16 = swift_allocObject();
    *(v16 + 16) = sub_226FBE12C;
    *(v16 + 24) = v12;
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v4 + 32))(v19 + v17, v6, v3);
    v20 = (v19 + v18);
    *v20 = sub_226FBE148;
    v20[1] = v16;

    sub_227669270();
    (*(v4 + 8))(v9, v3);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }
}

uint64_t sub_226FB9B14@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v14);

    v10 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A6C0();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v10 + 336), *(v10 + 360));
    sub_2272FBA14(a1, a3);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_226FB9D2C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_227662750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    sub_227662670();
    sub_22751B450(v6, a2);
    (*(v4 + 8))(v6, v3);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_226FB9EFC@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v9);

    v4 = __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    __swift_project_boxed_opaque_existential_0((*v4 + 416), *(*v4 + 440));
    v5 = sub_227665FC0();
    sub_22708193C(v5, a2);

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_226FBA048@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v33 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v31 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v34);

    v16 = *__swift_project_boxed_opaque_existential_0(v34, v34[3]);
    sub_22766A6C0();
    sub_22766B370();
    (*(v11 + 8))(v13, v10);
    v17 = v16[75];
    v18 = v16[76];
    __swift_project_boxed_opaque_existential_0(v16 + 72, v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = 0;
    *(v19 + 32) = v31;
    *(v19 + 40) = v14;
    *(v19 + 48) = 1;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE21C, v19, v17, v20, v18, v9);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_226FBE268;
    *(v21 + 24) = v16;
    v22 = v32;
    (*(v4 + 16))(v6, v9, v32);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    (*(v4 + 32))(v24 + v23, v6, v22);
    v25 = (v24 + ((v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = sub_226FBE218;
    v25[1] = v21;

    v26 = v33;
    sub_227669270();
    (*(v4 + 8))(v9, v22);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
  }
}

uint64_t sub_226FBA4B0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v33 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v31 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v34);

    v16 = *__swift_project_boxed_opaque_existential_0(v34, v34[3]);
    sub_22766A6C0();
    sub_22766B370();
    (*(v11 + 8))(v13, v10);
    v17 = v16[75];
    v18 = v16[76];
    __swift_project_boxed_opaque_existential_0(v16 + 72, v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = 1;
    *(v19 + 32) = v31;
    *(v19 + 40) = v14;
    *(v19 + 48) = 1;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE088, v19, v17, v20, v18, v9);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_226FBE0A0;
    *(v21 + 24) = v16;
    v22 = v32;
    (*(v4 + 16))(v6, v9, v32);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    (*(v4 + 32))(v24 + v23, v6, v22);
    v25 = (v24 + ((v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = sub_226FBE218;
    v25[1] = v21;

    v26 = v33;
    sub_227669270();
    (*(v4 + 8))(v9, v22);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
  }
}

uint64_t sub_226FBA918@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v14);

    __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    a4(v8, v9, a3, 1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a5, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a5, 1, 1, v13);
  }
}

uint64_t sub_226FBAA70@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_227180570(v5, v4, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_226FBABAC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    v6 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    __swift_project_boxed_opaque_existential_0((*v6 + 96), *(*v6 + 120));
    sub_226F307BC(a1, a3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_226FBACEC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v24);

    v11 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
    v12 = *v11;
    v13 = *(*v11 + 600);
    v14 = *(*v11 + 608);
    __swift_project_boxed_opaque_existential_0((*v11 + 576), v13);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE034, v12, v13, v15, v14, v9);

    v16 = swift_allocObject();
    *(v16 + 16) = sub_226FBE050;
    *(v16 + 24) = v12;
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v4 + 32))(v19 + v17, v6, v3);
    v20 = (v19 + v18);
    *v20 = sub_226FBE058;
    v20[1] = v16;

    sub_227669270();
    (*(v4 + 8))(v9, v3);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }
}

uint64_t sub_226FBB034@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v7);

    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_2273C3E8C(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_226FBB154@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v15);

    v6 = __swift_project_boxed_opaque_existential_0(v15, v15[3]);
    v7 = *v6;
    v8 = *(*v6 + 600);
    v9 = *(*v6 + 608);
    __swift_project_boxed_opaque_existential_0((*v6 + 576), v8);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v4;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE018, v10, v8, v11, v9, a3);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }
}

uint64_t sub_226FBB318@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v12);

    v4 = __swift_project_boxed_opaque_existential_0(v12, v12[3]);
    v5 = *v4;
    v6 = *(*v4 + 600);
    v7 = *(*v4 + 608);
    __swift_project_boxed_opaque_existential_0((*v4 + 576), v6);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBDFFC, v5, v6, v8, v7, a2);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_226FBB4AC@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    v4 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v5 = *(*v4 + 600);
    v6 = *(*v4 + 608);
    __swift_project_boxed_opaque_existential_0((*v4 + 576), v5);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9358, &qword_227673C00);
    sub_226ECF5D8(sub_22744D46C, 0, v5, v7, v6, a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A8, &unk_227673C20);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A8, &unk_227673C20);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_226FBB628@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v17);

    v9 = __swift_project_boxed_opaque_existential_0(v17, v17[3]);
    v10 = *(*v9 + 600);
    v11 = *(*v9 + 608);
    __swift_project_boxed_opaque_existential_0((*v9 + 576), v10);
    (*(v6 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    sub_226ECF5D8(sub_226FBDF80, v13, v10, v5, v11, a3);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_226FBB88C@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v12);

    v4 = __swift_project_boxed_opaque_existential_0(v12, v12[3]);
    v5 = *v4;
    v6 = *(*v4 + 600);
    v7 = *(*v4 + 608);
    __swift_project_boxed_opaque_existential_0((*v4 + 576), v6);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
    sub_226ECF5D8(sub_226FBDF64, v5, v6, v8, v7, a2);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_226FBBA20@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v12);

    v4 = __swift_project_boxed_opaque_existential_0(v12, v12[3]);
    v5 = *v4;
    v6 = *(*v4 + 600);
    v7 = *(*v4 + 608);
    __swift_project_boxed_opaque_existential_0((*v4 + 576), v6);
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = 0;

    sub_226ECF5D8(sub_226FBDF44, v8, v6, MEMORY[0x277D83B88], v7, a2);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_226FBBBC4@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v12);

    v4 = __swift_project_boxed_opaque_existential_0(v12, v12[3]);
    v5 = *v4;
    v6 = *(*v4 + 600);
    v7 = *(*v4 + 608);
    __swift_project_boxed_opaque_existential_0((*v4 + 576), v6);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    sub_226ECF5D8(sub_226FBDF28, v5, v6, v8, v7, a2);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_226FBBD58@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    v4 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v5 = *(*v4 + 600);
    v6 = *(*v4 + 608);
    __swift_project_boxed_opaque_existential_0((*v4 + 576), v5);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9368, &unk_22767FFA0);
    sub_226ECF5D8(sub_22744A310, 0, v5, v7, v6, a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A0, &qword_227684EF0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A0, &qword_227684EF0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_226FBBED4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v13 = *a1;
  v12 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v32);

    v15 = *__swift_project_boxed_opaque_existential_0(v32, v32[3]);
    v30 = v5;
    v16 = *(v15 + 75);
    v29 = *(v15 + 76);
    __swift_project_boxed_opaque_existential_0(v15 + 72, v16);
    v17 = swift_allocObject();
    v31 = a3;
    v18 = v17;
    v17[2] = v15;
    v17[3] = v13;
    v17[4] = v12;
    v19 = sub_2276642E0();

    sub_226ECF5D8(sub_226FBDED8, v18, v16, v19, v29, v11);

    v20 = v30;
    (*(v6 + 16))(v8, v11, v30);
    v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v22 = swift_allocObject();
    (*(v6 + 32))(v22 + v21, v8, v20);
    v23 = (v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = sub_226FBDEF8;
    v23[1] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
    v24 = v31;
    sub_227669270();
    (*(v6 + 8))(v11, v20);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
    return (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
  }
}

uint64_t sub_226FBC238@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    v6 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    __swift_project_boxed_opaque_existential_0((*v6 + 376), *(*v6 + 400));
    v7 = off_283AA5528[0];
    type metadata accessor for AssetScriptClient();
    v7(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9398, &qword_227673C18);
    (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9398, &qword_227673C18);
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_226FBC3AC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v15);

    __swift_project_boxed_opaque_existential_0(v15, v15[3]);
    a5(a1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    (*(*(v12 - 8) + 56))(a6, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    return (*(*(v14 - 8) + 56))(a6, 1, 1, v14);
  }
}

uint64_t sub_226FBC4EC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_227664F30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v20);

    v9 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    v10 = *v9;
    v11 = *(*v9 + 600);
    v19 = *(*v9 + 608);
    __swift_project_boxed_opaque_existential_0((v10 + 576), v11);
    (*(v6 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    (*(v6 + 32))(v13 + v12, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBDE58, v13, v11, v14, v19, a3);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

uint64_t sub_226FBC774(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v4);

    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    sub_227319E08(a1);
    return __swift_destroy_boxed_opaque_existential_0(v4);
  }

  return result;
}

uint64_t sub_226FBC7F8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9380, &qword_227673C08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v17);

    __swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_227180DD0(v3, v7);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    v10 = *(v9 - 8);
    (*(v10 + 56))(v7, 0, 1, v9);
    __swift_destroy_boxed_opaque_existential_0(v17);
    if ((*(v10 + 48))(v7, 1, v9) != 1)
    {
      return (*(v10 + 32))(a3, v7, v9);
    }
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  v13 = sub_227664580();
  sub_226FBDCB8(&qword_27D7B9388, MEMORY[0x277D509D0], MEMORY[0x277D509D8]);
  v14 = swift_allocError();
  (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D509C8], v13);
  *(swift_allocObject() + 16) = v14;
  sub_227669280();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  result = (*(*(v16 - 8) + 48))(v7, 1, v16);
  if (result != 1)
  {
    return sub_226FBDDBC(v7);
  }

  return result;
}

uint64_t sub_226FBCB04@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v5 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9380, &qword_227673C08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v19);

    __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    sub_227181320(v5, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    v12 = *(v11 - 8);
    (*(v12 + 56))(v9, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_0(v19);
    if ((*(v12 + 48))(v9, 1, v11) != 1)
    {
      return (*(v12 + 32))(a5, v9, v11);
    }
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = sub_227664580();
  sub_226FBDCB8(&qword_27D7B9388, MEMORY[0x277D509D0], MEMORY[0x277D509D8]);
  v16 = swift_allocError();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D509C8], v15);
  *(swift_allocObject() + 16) = v16;
  sub_227669280();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  result = (*(*(v18 - 8) + 48))(v9, 1, v18);
  if (result != 1)
  {
    return sub_226FBDDBC(v9);
  }

  return result;
}

uint64_t sub_226FBCE28@<X0>(char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v18);

    v9 = __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    v10 = *v9;
    v11 = *(*v9 + 600);
    v12 = *(*v9 + 608);
    __swift_project_boxed_opaque_existential_0((*v9 + 576), v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = a3;

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(a4, v13, v11, v14, v12, a5);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v15 - 8) + 56))(a5, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }
}

uint64_t sub_226FBCFDC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  return swift_deallocClassInstance();
}

unint64_t sub_226FBD1C0()
{
  result = qword_281398EA0;
  if (!qword_281398EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8640, qword_227671210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EA0);
  }

  return result;
}

unint64_t sub_226FBD244()
{
  result = qword_281398E98;
  if (!qword_281398E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8640, qword_227671210);
    sub_226FBDCB8(&qword_28139BCD8, MEMORY[0x277D4FF88], MEMORY[0x277D4FF80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E98);
  }

  return result;
}

unint64_t sub_226FBD308()
{
  result = qword_281398E00;
  if (!qword_281398E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9358, &qword_227673C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E00);
  }

  return result;
}

unint64_t sub_226FBD38C()
{
  result = qword_281398DF8;
  if (!qword_281398DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9358, &qword_227673C00);
    sub_226FBDCB8(&qword_28139B918, MEMORY[0x277D50D88], MEMORY[0x277D50D80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DF8);
  }

  return result;
}

unint64_t sub_226FBD490()
{
  result = qword_281398EF8;
  if (!qword_281398EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE6C0, qword_227670F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EF8);
  }

  return result;
}

unint64_t sub_226FBD514()
{
  result = qword_281398EF0;
  if (!qword_281398EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE6C0, qword_227670F00);
    sub_226FBDCB8(&qword_28139BD38, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EF0);
  }

  return result;
}

unint64_t sub_226FBD650()
{
  result = qword_281398E70;
  if (!qword_281398E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9360, qword_22767B900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E70);
  }

  return result;
}

unint64_t sub_226FBD6D4()
{
  result = qword_281398E68;
  if (!qword_281398E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9360, qword_22767B900);
    sub_226FBDCB8(&qword_28139BC98, MEMORY[0x277D501C8], MEMORY[0x277D501C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E68);
  }

  return result;
}

unint64_t sub_226FBD790()
{
  result = qword_281398D90;
  if (!qword_281398D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9368, &unk_22767FFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D90);
  }

  return result;
}

unint64_t sub_226FBD814()
{
  result = qword_281398D88;
  if (!qword_281398D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9368, &unk_22767FFA0);
    sub_226FBDCB8(&qword_28139B838, MEMORY[0x277D51680], MEMORY[0x277D51678]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D88);
  }

  return result;
}

unint64_t sub_226FBD8D0()
{
  result = qword_281398F38;
  if (!qword_281398F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9370, qword_227685C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F38);
  }

  return result;
}

unint64_t sub_226FBD954()
{
  result = qword_281398F30;
  if (!qword_281398F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9370, qword_227685C90);
    sub_226FBDCB8(&qword_28139BDE8, MEMORY[0x277CC9260], MEMORY[0x277D4FB98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F30);
  }

  return result;
}

unint64_t sub_226FBDA10()
{
  result = qword_281399148;
  if (!qword_281399148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B90F8, &qword_227679D10);
    sub_226FBDCB8(&qword_28139BDE8, MEMORY[0x277CC9260], MEMORY[0x277D4FB98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399148);
  }

  return result;
}

unint64_t sub_226FBDB44()
{
  result = qword_281399138;
  if (!qword_281399138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9378, &qword_22768AF50);
    sub_226FBDCB8(&qword_28139BC40, MEMORY[0x277D50450], MEMORY[0x277D50448]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399138);
  }

  return result;
}

uint64_t sub_226FBDCB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226FBDD00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_226FBDDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9380, &qword_227673C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_226FBDE24(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  return v2;
}

uint64_t objectdestroy_79Tm()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_226FBE150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_226FBE26C()
{

  return swift_deallocClassInstance();
}

void sub_226FBE2C8(uint64_t a1, void *a2)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
    sub_22766A730();
    v8 = a2;
    v9 = sub_22766B380();
    v10 = sub_22766C890();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = MEMORY[0x22AA995D0](v16[2], v16[3]);
      v15 = sub_226E97AE8(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_226E8E000, v9, v10, "Error reporting engagement event %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AA9A450](v12, -1, -1);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_226FBE4B8()
{
  v2 = *(*v0 + 16);
  sub_2276646F0();
  if (!v1)
  {
    v3 = sub_22766BE90();

    v4 = [v2 enqueueData_];

    v6[4] = sub_226FBE2C8;
    v6[5] = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_226E9F1D0;
    v6[3] = &block_descriptor_2;
    v5 = _Block_copy(v6);
    [v4 addFinishBlock_];
    _Block_release(v5);
  }
}

uint64_t sub_226FBE5D8(void *a1, uint64_t a2, uint64_t a3)
{
  v162 = a3;
  v161 = a2;
  v180 = a1;
  v4 = sub_227664530();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v168 = v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v159 = v153 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v153 - v10;
  v181 = sub_22766B390();
  v12 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v169 = v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v160 = v153 - v15;
  MEMORY[0x28223BE20](v16);
  v167 = v153 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v153 - v19;
  sub_22766A770();
  v21 = *(v5 + 16);
  v173 = v5 + 16;
  v172 = v21;
  v21(v11, v3, v4);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  v24 = os_log_type_enabled(v22, v23);
  v175 = v4;
  v176 = v12;
  v174 = v5;
  v183 = v3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v188 = v26;
    *v25 = 136315138;
    v27 = sub_2276644D0();
    v28 = v5;
    v30 = v29;
    v170 = *(v28 + 8);
    v170(v11, v4);
    v31 = sub_226E97AE8(v27, v30, &v188);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_226E8E000, v22, v23, "Inserting ArchivedSession %s on journal read", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);

    v171 = *(v176 + 8);
  }

  else
  {

    v170 = *(v5 + 8);
    v170(v11, v4);
    v171 = *(v12 + 8);
  }

  v171(v20, v181);
  v32 = __swift_project_boxed_opaque_existential_0(v180, v180[3]);
  v33 = *v32;
  v34 = v32[1];
  v35 = *(v32 + 16);
  v36 = v32[3];
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v37 = swift_allocObject();
  v38 = v33;
  v39 = v34;

  sub_22766A070();
  v182 = v38;
  *(v37 + 16) = v38;
  *(v37 + 24) = v39;
  v177 = v39;
  v178 = v36;
  *(v37 + 32) = v35;
  *(v37 + 40) = v36;
  swift_getKeyPath();
  v40 = sub_2276644D0();
  v42 = v41;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v190 = v165;
  v188 = v40;
  v189 = v42;
  v43 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v164 = v43;
  v44 = sub_22766C820();
  sub_226ED25F8(&v188, v186);
  v45 = v187;
  if (v187)
  {
    v46 = __swift_project_boxed_opaque_existential_0(v186, v187);
    v47 = *(v45 - 8);
    v48 = MEMORY[0x28223BE20](v46);
    v50 = v153 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50, v48);
    v51 = sub_22766D170();
    (*(v47 + 8))(v50, v45);
    __swift_destroy_boxed_opaque_existential_0(v186);
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_opt_self();
  v53 = [v52 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v54 = [objc_allocWithZone(v163) initWithLeftExpression:v44 rightExpression:v53 modifier:0 type:4 options:0];

  sub_226EBC888(&v188);
  swift_beginAccess();
  v55 = v54;
  v56 = sub_22766A080();
  v58 = v57;
  MEMORY[0x22AA985C0]();
  if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v56(&v188, 0);
  swift_endAccess();

  v59 = v179;
  v60 = sub_226EC6320(0);
  v61 = v183;
  if (v59)
  {

    swift_setDeallocating();
    v66 = qword_2813B2078;
    v67 = sub_22766A100();
    (*(*(v67 - 8) + 8))(v37 + v66, v67);
    return swift_deallocClassInstance();
  }

  v62 = v60;
  [v60 setResultType_];
  [v62 setFetchLimit_];
  [v62 setFetchOffset_];
  [v62 setIncludesSubentities_];
  v63 = sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
  v64 = v182;
  v65 = sub_22766C9D0();
  v179 = 0;
  v69 = v65;
  v157 = v63;
  v158 = v52;

  swift_setDeallocating();
  v70 = qword_2813B2078;
  v71 = sub_22766A100();
  v72 = *(v71 - 8);
  v73 = *(v72 + 8);
  v74 = (v72 + 8);
  v73(v37 + v70, v71);
  swift_deallocClassInstance();
  if (v69)
  {
    v75 = v169;
    sub_22766A770();
    v76 = v168;
    v77 = v175;
    v172(v168, v61, v175);
    v78 = sub_22766B380();
    v79 = sub_22766C8B0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = v75;
      v82 = swift_slowAlloc();
      v188 = v82;
      *v80 = 136315138;
      v83 = sub_2276644D0();
      v84 = v76;
      v86 = v85;
      v170(v84, v77);
      v87 = sub_226E97AE8(v83, v86, &v188);

      *(v80 + 4) = v87;
      _os_log_impl(&dword_226E8E000, v78, v79, "ArchivedSession %s already exists, skipping insertion on journal read", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x22AA9A450](v82, -1, -1);
      MEMORY[0x22AA9A450](v80, -1, -1);

      v88 = v81;
    }

    else
    {

      v170(v76, v77);
      v88 = v75;
    }

    goto LABEL_20;
  }

  v182 = v74;
  v177 = v73;
  v178 = v71;
  v89 = __swift_project_boxed_opaque_existential_0(v180, v180[3]);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
  v91 = *(v174 + 80);
  v168 = *(v174 + 72);
  v169 = v90;
  v92 = swift_allocObject();
  v156 = xmmword_227670CD0;
  *(v92 + 16) = xmmword_227670CD0;
  v172((v92 + ((v91 + 32) & ~v91)), v61, v175);
  v93 = v179;
  sub_22755DF08(v92, v89[1], *(v89 + 16), v89[3]);

  if (!v93)
  {
    v153[1] = v91;
    v155 = (v91 + 32) & ~v91;
    v179 = 0;
    v94 = __swift_project_boxed_opaque_existential_0(v180, v180[3]);
    v95 = *v94;
    v96 = v94[1];
    v97 = *(v94 + 16);
    v98 = v94[3];
    v99 = swift_allocObject();
    v100 = v95;
    v101 = v96;

    sub_22766A070();
    v180 = v100;
    *(v99 + 16) = v100;
    *(v99 + 24) = v101;
    v154 = v101;
    *(v99 + 32) = v97;
    v166 = v98;
    *(v99 + 40) = v98;
    swift_getKeyPath();
    v102 = sub_2276644D0();
    v190 = v165;
    v188 = v102;
    v189 = v103;

    v104 = sub_22766C820();
    sub_226ED25F8(&v188, v186);
    v105 = v187;
    if (v187)
    {
      v106 = __swift_project_boxed_opaque_existential_0(v186, v187);
      v107 = v104;
      v108 = *(v105 - 8);
      v109 = MEMORY[0x28223BE20](v106);
      v111 = v153 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v108 + 16))(v111, v109);
      v112 = sub_22766D170();
      (*(v108 + 8))(v111, v105);
      v104 = v107;
      __swift_destroy_boxed_opaque_existential_0(v186);
    }

    else
    {
      v112 = 0;
    }

    v114 = v155;
    v115 = [v158 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v116 = [objc_allocWithZone(v163) initWithLeftExpression:v104 rightExpression:v115 modifier:0 type:4 options:0];

    sub_226EBC888(&v188);
    swift_beginAccess();
    v117 = v116;
    v118 = sub_22766A080();
    v120 = v119;
    MEMORY[0x22AA985C0]();
    v121 = v181;
    if (*((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
      v121 = v181;
    }

    sub_22766C3A0();
    v118(&v188, 0);
    swift_endAccess();

    v122 = v179;
    v123 = sub_226EC6320(0);
    if (v122)
    {

      v124 = v167;
      sub_22766A770();
      v128 = v122;
      v129 = sub_22766B380();
      v130 = sub_22766C8B0();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v188 = v132;
        *v131 = 136315138;
        swift_getErrorValue();
        v133 = MEMORY[0x22AA995D0](v184, v185);
        v135 = sub_226E97AE8(v133, v134, &v188);

        *(v131 + 4) = v135;
        _os_log_impl(&dword_226E8E000, v129, v130, "Skipping eventHub update for ArchivedSession added due to error: %s", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v132);
        MEMORY[0x22AA9A450](v132, -1, -1);
        MEMORY[0x22AA9A450](v131, -1, -1);

        v88 = v124;
        v113 = v181;
      }

      else
      {

        v88 = v124;
        v113 = v121;
      }

      return (v171)(v88, v113);
    }

    v125 = v123;
    [v123 setResultType_];
    [v125 setFetchLimit_];
    [v125 setFetchOffset_];
    [v125 setIncludesSubentities_];
    v126 = v180;
    v127 = sub_22766C9D0();
    v179 = 0;
    v136 = v127;

    swift_setDeallocating();
    v177(v99 + qword_2813B2078, v178);
    swift_deallocClassInstance();
    if (v136 <= 0)
    {
      v140 = v160;
      sub_22766A770();
      v141 = v159;
      v142 = v175;
      v172(v159, v183, v175);
      v143 = sub_22766B380();
      v144 = sub_22766C8B0();
      if (!os_log_type_enabled(v143, v144))
      {

        v170(v141, v142);
        v88 = v140;
        v113 = v121;
        return (v171)(v88, v113);
      }

      v145 = v140;
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v188 = v147;
      *v146 = 136315138;
      v148 = sub_2276644D0();
      v149 = v141;
      v151 = v150;
      v170(v149, v142);
      v152 = sub_226E97AE8(v148, v151, &v188);

      *(v146 + 4) = v152;
      _os_log_impl(&dword_226E8E000, v143, v144, "No ArchivedSessions found for identifier %s after insert from journal, skipping eventHub update", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v147);
      MEMORY[0x22AA9A450](v147, -1, -1);
      MEMORY[0x22AA9A450](v146, -1, -1);

      v88 = v145;
LABEL_20:
      v113 = v181;
      return (v171)(v88, v113);
    }

    swift_getObjectType();
    v137 = swift_allocObject();
    *(v137 + 16) = v156;
    v138 = v175;
    v172((v137 + v114), v183, v175);
    v139 = sub_226F4BFF4(v137);
    swift_setDeallocating();
    v170((v137 + v114), v138);
    swift_deallocClassInstance();
    v188 = v139;
    LOBYTE(v189) = 0;
    sub_226FA6E58();
    sub_2276699D0();
  }

  return result;
}

unint64_t sub_226FBF954(uint64_t a1)
{
  result = sub_226FBF97C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_226FBF97C()
{
  result = qword_2813A57C8;
  if (!qword_2813A57C8)
  {
    sub_227664530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A57C8);
  }

  return result;
}

void sub_226FBF9D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v15 = [a1 templateUniqueName];
  if (v15)
  {
    v21[3] = a2;
    v16 = v15;
    v21[1] = sub_22766C000();

    v17 = [a1 datePresented];
    if (v17)
    {
      v18 = v17;
      sub_227662710();

      (*(v8 + 32))(v14, v10, v7);
      (*(v8 + 16))(v6, v14, v7);
      (*(v8 + 56))(v6, 0, 1, v7);
      sub_227668280();

      (*(v8 + 8))(v14, v7);
      return;
    }
  }

  v19 = sub_227664DD0();
  sub_226FC0128(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
  swift_willThrow();
}

uint64_t static AchievementNotificationRecord.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v28 = &v22 - v3;
  v29 = sub_2276682A0();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v36 = sub_227662630();
  v37[0] = v7;
  v37[1] = v37;
  v37[2] = &v36;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v32 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v33 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v31 = MEMORY[0x277D84F90];
    sub_226F1FAC8(0, v9, 0);
    v10 = v31;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
    v12 = 0;
    v24 = *(result - 8);
    v25 = result;
    v23 = v8 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v22 = v4 + 32;
    v26 = v9;
    v27 = v8;
    while (v12 < *(v8 + 16))
    {
      v13 = v4;
      v14 = v23 + *(v24 + 72) * v12;
      v15 = *(v25 + 48);
      v16 = sub_227662750();
      v17 = *(v16 - 8);
      v18 = v14 + v15;
      v19 = v28;
      (*(v17 + 16))(v28, v18, v16);
      (*(v17 + 56))(v19, 0, 1, v16);
      sub_226EDDC60(v19, v30);

      sub_227668280();
      sub_226EDDD40(v19);
      v31 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1FAC8((v20 > 1), v21 + 1, 1);
        v10 = v31;
      }

      ++v12;
      *(v10 + 16) = v21 + 1;
      v4 = v13;
      result = (*(v13 + 32))(v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v6, v29);
      v8 = v27;
      if (v26 == v12)
      {

        return v10;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_226FC00D0(uint64_t a1)
{
  result = sub_226FC0128(&qword_2813A5588, MEMORY[0x277D53450], &protocol conformance descriptor for AchievementNotificationRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FC0128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226FC0170(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_227668290();
  v5 = sub_22766BFD0();

  [a1 setTemplateUniqueName_];

  sub_227668270();
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_2276626A0();
    (*(v7 + 8))(v4, v6);
  }

  [a1 setDatePresented_];
}

id sub_226FC02CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScriptStorefrontCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226FC0300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_227666C80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227669910();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v8 + 104))(v10, *MEMORY[0x277D4E170], v7);
  sub_22766A400();
  sub_227669650();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_226FC04D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2276666A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227669910();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v8 + 104))(v10, *MEMORY[0x277D4E160], v7);
  sub_22766A390();
  sub_227669650();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_226FC06A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_227668A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227669910();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v8 + 104))(v10, *MEMORY[0x277D4E1C0], v7);
  sub_22766A5D0();
  sub_227669650();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_226FC087C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v38 = sub_22766A5F0();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_227668A00();
  v42 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = v33 - v8;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_22766A730();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "Received PersonalizationPrivacyPreference Update. Sending Event.", v16, 2u);
    MEMORY[0x22AA9A450](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);

  sub_2273FB594(v17, v13);
  v18 = 0;
  v21 = v19 + 56;
  v20 = *(v19 + 56);
  v41 = v19;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v33[1] = v42 + 32;
  v33[2] = v42 + 16;
  v33[0] = v4 + 8;
  v26 = v34;
  if ((v23 & v20) != 0)
  {
    do
    {
      v27 = v18;
LABEL_11:
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = v42;
      v30 = v36;
      (*(v42 + 16))(v26, *(v41 + 48) + *(v42 + 72) * (v28 | (v27 << 6)), v36);
      swift_getObjectType();
      (*(v29 + 32))(v35, v26, v30);
      v31 = v37;
      sub_22766A5E0();
      v32 = v38;
      sub_2276699D0();
      (*v33[0])(v31, v32);
    }

    while (v24);
  }

  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v27);
    ++v18;
    if (v24)
    {
      v18 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_226FC0C5C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);

  return swift_deallocClassInstance();
}

uint64_t sub_226FC0CD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v8 = *(v5 + 8);
  v8(v7, v4);
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_22766A730();
  sub_22766B370();
  v8(v7, v4);
  return sub_227360A74(a1);
}

uint64_t sub_226FC0E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = v3;
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v45 - v5;
  v6 = sub_227666710();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v8;
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v16 = *(v7 + 16);
  v52 = a1;
  v49 = v16;
  v16(v11, a1, v6);
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v13;
    v20 = v19;
    v47 = swift_slowAlloc();
    v61[0] = v47;
    *v20 = 136446210;
    sub_226FC23D4(&qword_27D7B93C0, MEMORY[0x277D52578], MEMORY[0x277D52590]);
    v21 = sub_22766D140();
    v46 = v12;
    v23 = v22;
    (*(v7 + 8))(v11, v6);
    v24 = sub_226E97AE8(v21, v23, v61);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_226E8E000, v17, v18, "Alert Acknowledgement - Inserting %{public}s", v20, 0xCu);
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v48 + 8))(v15, v46);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v15, v12);
  }

  v26 = v53;
  v27 = v53[12];
  v28 = v53[13];
  __swift_project_boxed_opaque_existential_0(v53 + 9, v27);
  v29 = v51;
  v49(v51, v52, v6);
  v30 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  (*(v7 + 32))(v31 + v30, v29, v6);

  v32 = v56;
  sub_226ECF5D8(sub_226FC2308, v31, v27, MEMORY[0x277D84F78] + 8, v28, v56);

  v33 = *__swift_project_boxed_opaque_existential_0(v26 + 15, v26[18]);
  v61[3] = type metadata accessor for SyncCoordinator(0);
  v61[4] = &off_283AA3680;
  v61[0] = v33;
  sub_226E91B50(v61, v60);
  v34 = swift_allocObject();
  sub_226F19770(v60, v34 + 16);

  __swift_destroy_boxed_opaque_existential_0(v61);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_226F3277C;
  *(v35 + 24) = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_226F325EC;
  *(v36 + 24) = v35;
  v37 = v57;
  v38 = v55;
  v39 = v59;
  (*(v57 + 16))(v55, v32, v59);
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = (v54 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v37 + 32))(v42 + v40, v38, v39);
  v43 = (v42 + v41);
  *v43 = sub_226EBFB9C;
  v43[1] = v36;
  sub_227669270();
  return (*(v37 + 8))(v32, v39);
}

uint64_t sub_226FC1488(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93C8, &qword_227673E00);
  v8 = sub_227666710();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v11 + v10, a3, v8);
  sub_22755F0FC(v11, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 120), *(a2 + 144));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    v14 = sub_226FC23D4(&qword_27D7B93D0, MEMORY[0x277D52578], &unk_22767E700);
    (*(v14 + 104))(v16, v8, v14);
    v15 = v16[1];
    *(v13 + 32) = v16[0];
    *(v13 + 40) = v15;
    sub_2272D7B74(0, v13, a1);
  }

  return result;
}

uint64_t sub_226FC1684(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227668A00();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC17A8, 0, 0);
}

uint64_t sub_226FC17A8(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[5];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[2];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v7[13];
  __swift_project_boxed_opaque_existential_0(v7 + 9, v7[12]);
  (*(v6 + 16))(v5, v9, v8);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v1[11] = v12;
  *(v12 + 16) = v7;
  (*(v6 + 32))(v12 + v11, v5, v8);
  v13 = *(v10 + 24);

  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  v1[12] = v14;
  *v14 = v1;
  v14[1] = sub_226FC19EC;

  return v16();
}

uint64_t sub_226FC19EC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226FC1B9C;
  }

  else
  {

    v2 = sub_226FC1B08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226FC1B08()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 120), *(*(v0 + 24) + 144));
  sub_2271D7EE8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FC1B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FC1C14(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a2 + 2, a2[5]);
  result = sub_2273624D8(a3, a1);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0(a2 + 15, a2[18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_227670CD0;
    v9 = sub_226FC23D4(&qword_27D7B93B8, MEMORY[0x277D53708], &unk_227672840);
    v10 = *(v9 + 104);
    v11 = sub_227668A00();
    v10(v13, v11, v9);
    v12 = v13[1];
    *(v8 + 32) = v13[0];
    *(v8 + 40) = v12;
    sub_2272D7BA0(0, v8, a1);
  }

  return result;
}

uint64_t sub_226FC1D60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC1E20, 0, 0);
}

uint64_t sub_226FC1E20(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[12];
  v7 = v5[13];
  __swift_project_boxed_opaque_existential_0(v5 + 9, v6);
  v8 = *(v7 + 24);

  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  v10 = sub_227668A00();
  *v9 = v1;
  v9[1] = sub_226FC1FE0;
  v11 = v1[2];
  v12 = v1[3];

  return (v14)(v11, sub_226FC241C, v12, v10, v6, v7);
}

uint64_t sub_226FC1FE0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F9DA40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226FC212C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_0((a2 + 16), *(a2 + 40));
  result = sub_227362748(a1, v12);
  if (!v3)
  {
    sub_226FC2438(v12, v9);
    v14 = sub_227668A00();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v9, 1, v14) == 1)
    {
      sub_226FC24A8(v9);
      sub_2276689D0();
      sub_2276689B0();
      return sub_226FC24A8(v12);
    }

    else
    {
      sub_226FC24A8(v12);
      return (*(v15 + 32))(a3, v9, v14);
    }
  }

  return result;
}

uint64_t sub_226FC23D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226FC2438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FC24A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226FC2510(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  v15 = [a1 identifier];
  if (v15)
  {
    v42 = a2;
    v16 = v15;
    v41 = sub_22766C000();

    v17 = [a1 workoutIdentifier];
    if (v17)
    {
      v18 = v17;
      v40 = sub_22766C000();
      v43 = v19;

      v20 = [a1 requestingDeviceIdentifier];
      if (v20)
      {
        v39 = v5;
        v21 = v20;
        v38 = sub_22766C000();
        v23 = v22;

        v24 = [a1 downloadingDeviceIdentifier];
        if (v24)
        {
          v37 = v23;
          v25 = v24;
          v36 = sub_22766C000();
          v27 = v26;

          v28 = [a1 dateRequested];
          if (v28)
          {
            v29 = v28;
            sub_227662710();

            v35 = v27;
            v30 = v39;
            (*(v39 + 32))(v14, v10, v4);
            v44 = [a1 reason];
            sub_226FC3018();
            sub_227663AE0();
            v34 = v45;
            v33[3] = v46;
            v47 = [a1 loadStatus];
            sub_226F32864();
            sub_227663AE0();
            (*(v30 + 16))(v7, v14, v4);
            sub_2276633D0();

            (*(v30 + 8))(v14, v4);
            return;
          }
        }
      }
    }
  }

  v31 = sub_227664DD0();
  sub_226FC3230(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
  swift_willThrow();
}

void *static AssetBundle.representativeSamples()()
{
  v34 = sub_227662750();
  v39 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93E0, &qword_227673E18);
  v1 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v3 = &v23 - v2;
  v31 = sub_227663480();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v40 = sub_22766C090();
  sub_226FC2FC4();
  sub_226FC3018();
  v8 = sub_227663B50();
  v9 = sub_22766C090();
  v10 = sub_22766C090();
  sub_226FC306C();
  sub_226F32864();
  v11 = sub_227663B50();
  v12 = sub_227662630();
  v48 = v40;
  v49[0] = v7;
  v49[1] = v49;
  v49[2] = &v48;
  v46 = v9;
  v47 = v8;
  v49[3] = &v47;
  v49[4] = &v46;
  v44 = v11;
  v45 = v10;
  v49[5] = &v45;
  v49[6] = &v44;
  v43 = v12;
  v49[7] = &v43;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v42[7] = v13;
  v42[8] = v13;
  v42[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9400, &qword_227673E20);
  v42[10] = v13;
  v42[11] = v13;
  v42[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9408, &qword_227673E28);
  v42[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v14 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v42[0] = v14;
  v42[1] = v14;
  v42[2] = sub_226F5BF60(&qword_27D7B9410, &qword_27D7B9400, &qword_227673E20);
  v42[3] = v14;
  v42[4] = v14;
  v42[5] = sub_226F5BF60(&qword_27D7B9418, &qword_27D7B9408, &qword_227673E28);
  v42[6] = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_226F1F568(0, v16, 0);
    v18 = 0;
    v19 = v41;
    v25 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v24 = (v39 + 16);
    v23 = v4 + 32;
    v30 = v1;
    v29 = v4;
    v28 = v15;
    v27 = v16;
    v26 = v6;
    while (v18 < *(v15 + 16))
    {
      sub_226FC3100(v25 + *(v1 + 72) * v18, v3);
      v40 = *v3;
      v39 = *(v3 + 2);
      v38 = *(v3 + 4);
      v37 = v3[40];
      v36 = *(v3 + 6);
      v35 = *(v3 + 8);
      (*v24)(v33, &v3[*(v32 + 128)], v34);

      v20 = v26;
      sub_2276633D0();
      sub_226FC3170(v3);
      v41 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F568((v21 > 1), v22 + 1, 1);
        v19 = v41;
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      result = (*(v29 + 32))(v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v20, v31);
      v1 = v30;
      v15 = v28;
      if (v27 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_226FC2FC4()
{
  result = qword_27D7B93E8;
  if (!qword_27D7B93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B93E8);
  }

  return result;
}

unint64_t sub_226FC3018()
{
  result = qword_27D7B93F0;
  if (!qword_27D7B93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B93F0);
  }

  return result;
}

unint64_t sub_226FC306C()
{
  result = qword_27D7B93F8;
  if (!qword_27D7B93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B93F8);
  }

  return result;
}

uint64_t sub_226FC3100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93E0, &qword_227673E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FC3170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93E0, &qword_227673E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FC31D8(uint64_t a1)
{
  result = sub_226FC3230(&qword_2813A57F8, MEMORY[0x277D4FF88], &protocol conformance descriptor for AssetBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FC3230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226FC3278(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276633E0();
  v6 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663410();
  v7 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  v18 = sub_227663460();
  v19 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F0, qword_227671158);
  sub_227663AD0();
  v9 = v20;
  if (v20 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  if (v9 <= 0xFFFFFFFF80000000)
  {
    v10 = 0xFFFFFFFF80000000;
  }

  else
  {
    v10 = v9;
  }

  [a1 setReason_];
  sub_227663420();
  v11 = sub_22766BFD0();

  [a1 setRequestingDeviceIdentifier_];

  sub_227663430();
  v12 = sub_22766BFD0();

  [a1 setDownloadingDeviceIdentifier_];

  v18 = sub_2276633F0();
  v19 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9420, &qword_227673E78);
  sub_227663AD0();
  v14 = v20;
  if (v20 >= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFFLL;
  }

  if (v14 <= 0xFFFFFFFF80000000)
  {
    v15 = 0xFFFFFFFF80000000;
  }

  else
  {
    v15 = v14;
  }

  [a1 setLoadStatus_];
  sub_227663400();
  v16 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setDateRequested_];
}

uint64_t sub_226FC3510()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = v1;
  v11 = *(v1 + 16);
  v12 = *(v1 + 32);
  v26 = v10;
  ObjectType = swift_getObjectType();
  v28 = v11;
  v14 = *MEMORY[0x277D4E500];
  v27 = *(v3 + 104);
  v27(v5, v14, v2);
  swift_allocObject();
  swift_weakInit();
  sub_227663FA0();
  swift_unknownObjectRetain_n();
  v24 = ObjectType;
  v25 = v12;
  sub_227669E90();

  v15 = *(v3 + 8);
  v22 = v2;
  v23 = v15;
  v15(v5, v2);
  swift_unknownObjectRelease();
  v28 = v11;
  v16 = v2;
  v17 = v27;
  v27(v5, *MEMORY[0x277D4E720], v16);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v18 = v22;
  v19 = v23;
  v23(v5, v22);

  swift_unknownObjectRelease();
  v28 = v11;
  v17(v5, *MEMORY[0x277D4E538], v18);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v19(v5, v18);

  return swift_unknownObjectRelease();
}

uint64_t sub_226FC38EC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
    v11 = sub_227663FA0();

    sub_226ECF5D8(sub_226FC3F50, v8, v9, v11, v10, a2);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_226FC3B44@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v7);

    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_226E96C50(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_226FC3C64@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v9);

    sub_226ECF5D8(sub_226FC3F34, v8, v9, MEMORY[0x277D84F78] + 8, v10, a2);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_226FC3EB8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_226FC3F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_227669DF0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_226FC4018(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v22 - v13;
  v15 = [a1 platform];
  if (!v15)
  {
    goto LABEL_6;
  }

  v22[1] = a2;
  v16 = v15;
  v22[0] = sub_22766C000();
  v23 = v17;

  v26 = a1;
  v18 = [a1 url];
  if (v18)
  {
    v19 = v18;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_226E97D1C(v6, &unk_27D7BB570, &unk_227670FC0);
    a1 = v26;
LABEL_6:
    v20 = sub_227664DD0();
    sub_226FC4950(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
    swift_willThrow();

    return;
  }

  (*(v8 + 32))(v14, v6, v7);
  v24 = v22[0];
  v25 = v23;
  sub_226FC47F4();
  sub_227663AE0();
  (*(v8 + 16))(v10, v14, v7);
  sub_227665380();

  (*(v8 + 8))(v14, v7);
}

void *static SocialMediaHandle.representativeSamples()()
{
  v31 = sub_2276624A0();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9428, &qword_227673F20);
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v22 - v3;
  v28 = sub_2276653A0();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226FC47A0();
  sub_226FC47F4();
  v8 = sub_227663B50();
  v37 = sub_2276622F0();
  v38[0] = v8;
  v38[1] = v38;
  v38[2] = &v37;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9440, &qword_227673F28);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v33 = sub_226F5BF60(&qword_27D7B9448, &qword_27D7B9440, &qword_227673F28);
  v34 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v27 = v7;
    v32 = MEMORY[0x277D84F90];
    result = sub_226F1F288(0, v10, 0);
    v12 = 0;
    v13 = v32;
    v24 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v25 = v9;
    v26 = v5;
    v22 = v5 + 32;
    v23 = (v0 + 16);
    v14 = v27;
    while (v12 < *(v9 + 16))
    {
      v15 = v10;
      v16 = v2;
      sub_226FC4888(v24 + *(v2 + 72) * v12, v4);
      v18 = *v4;
      v17 = *(v4 + 1);
      v19 = v4[16];
      (*v23)(v30, &v4[*(v29 + 48)], v31);
      sub_226EB396C(v18, v17, v19);
      sub_227665380();
      sub_226E97D1C(v4, &qword_27D7B9428, &qword_227673F20);
      v32 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1F288((v20 > 1), v21 + 1, 1);
        v13 = v32;
      }

      ++v12;
      *(v13 + 16) = v21 + 1;
      result = (*(v26 + 32))(v13 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v14, v28);
      v10 = v15;
      v2 = v16;
      v9 = v25;
      if (v15 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_226FC47A0()
{
  result = qword_27D7B9430;
  if (!qword_27D7B9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9430);
  }

  return result;
}

unint64_t sub_226FC47F4()
{
  result = qword_27D7B9438;
  if (!qword_27D7B9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9438);
  }

  return result;
}

uint64_t sub_226FC4888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9428, &qword_227673F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FC48F8(uint64_t a1)
{
  result = sub_226FC4950(&qword_27D7B9450, MEMORY[0x277D51610], &protocol conformance descriptor for SocialMediaHandle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FC4950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226FC4998(void *a1)
{
  v13[0] = a1;
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227665390();
  v7 = v6;
  v13[3] = v5;
  v13[4] = v6;
  v9 = v8 & 1;
  v14 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF260, &qword_227673F78);
  sub_227663AD0();
  v10 = sub_22766BFD0();
  sub_226EB2DFC(v5, v7, v9);

  v11 = v13[0];
  [v13[0] setPlatform_];

  sub_227665370();
  sub_227662390();
  (*(v2 + 8))(v4, v1);
  v12 = sub_22766BFD0();

  [v11 setUrl_];
}

void sub_226FC4B50(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 value];

  *a2 = v4 & ~(v4 >> 63);
}

id sub_226FC4BA0(void *a1)
{
  if (*v1 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = *v1;
  }

  return [a1 setValue_];
}

uint64_t sub_226FC4BE4()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

uint64_t sub_226FC4C58(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  MEMORY[0x22AA996B0](v2);
  return sub_22766D3F0();
}

unint64_t sub_226FC4CA0()
{
  result = qword_28139A450;
  if (!qword_28139A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A450);
  }

  return result;
}

unint64_t sub_226FC4CF4(uint64_t a1)
{
  result = sub_226FC4D1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226FC4D1C()
{
  result = qword_28139A460;
  if (!qword_28139A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A460);
  }

  return result;
}

uint64_t sub_226FC4D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EED0(0, v1, 0);
    v3 = a1;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_226F1EED0((v8 > 1), v5 + 1, 1);
        v3 = a1;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_226FC4E64()
{
  sub_226F5D220();
  v0 = sub_22766CFA0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    v2 = v0;
    sub_226F1EED0(0, v1, 0);
    v3 = v2;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_226F1EED0((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

unint64_t sub_226FC4F70()
{
  result = qword_28139B8D0;
  if (!qword_28139B8D0)
  {
    sub_227664DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B8D0);
  }

  return result;
}

void sub_226FC4FD8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_226ED25F8(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_226ED25F8(&v35, &v28);
    if (v29)
    {
      sub_226F04970(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_226F04970(v33, v30);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_226FE4910(v16 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v17 = v31;
      sub_22766D370();
      sub_22766C100();
      v18 = sub_22766D3F0();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v17;
      sub_226F04970(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      v9 = v32;
    }

    else
    {

      sub_226E97D1C(&v34, &qword_27D7B9470, &qword_227689B70);
      v9 = &v28;
    }

    sub_226E97D1C(v9, &unk_27D7BC990, &qword_227670A30);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id sub_226FC52A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v34 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9458, &unk_227674080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227674070;
  *(inited + 32) = sub_227669CA0();
  v34[1] = inited + 32;
  *(inited + 40) = v7;
  v8 = sub_227668E00();
  v9 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 80) = sub_227669C90();
  *(inited + 88) = v11;
  v12 = sub_227668E10();
  *(inited + 120) = v9;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_22766C000();
  *(inited + 136) = v14;
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 2;
  *(inited + 176) = sub_227669CB0();
  *(inited + 184) = v15;
  sub_227668DE0();
  v16 = sub_227664950();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v5, 1, v16) == 1)
  {
    sub_226E97D1C(v5, &qword_27D7B8CC8, &unk_227689B50);
    *(inited + 192) = 0u;
    *(inited + 208) = 0u;
  }

  else
  {
    v19 = sub_227664930();
    *(inited + 216) = MEMORY[0x277D837D0];
    *(inited + 192) = v19;
    *(inited + 200) = v20;
    (*(v17 + 8))(v5, v16);
  }

  *(inited + 224) = sub_227669CC0();
  *(inited + 232) = v21;
  sub_227668DE0();
  if (v18(v2, 1, v16) == 1)
  {
    sub_226E97D1C(v2, &qword_27D7B8CC8, &unk_227689B50);
    v22 = MEMORY[0x277D837D0];
LABEL_8:
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
    goto LABEL_9;
  }

  v23 = sub_227664910();
  v25 = v24;
  (*(v17 + 8))(v2, v16);
  v22 = MEMORY[0x277D837D0];
  if (!v25)
  {
    goto LABEL_8;
  }

  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = v23;
  *(inited + 248) = v25;
LABEL_9:
  *(inited + 272) = sub_22766C000();
  *(inited + 280) = v26;
  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = 1;
  *(inited + 320) = sub_22766C000();
  *(inited + 328) = v27;
  v28 = sub_227668E10();
  *(inited + 360) = v22;
  *(inited + 336) = v28;
  *(inited + 344) = v29;
  v30 = sub_227148D38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9460, &unk_227689B60);
  swift_arrayDestroy();
  v31 = sub_227668E20();

  v32 = sub_226FC5614(v31, v30);

  swift_bridgeObjectRelease_n();
  return v32;
}

id sub_226FC5614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v49 = sub_227662750();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v37 - v8;
  v9 = sub_227666BF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v57 = MEMORY[0x277D84F90];
    v54 = v5;
    sub_22766CF30();
    v15 = a1 + 56;
    v16 = sub_22766CC90();
    v55 = *(a1 + 36);
    sub_226FC5AF8();
    result = swift_getObjCClassFromMetadata();
    v17 = 0;
    v45 = v10 + 16;
    v46 = result;
    v43 = (v10 + 8);
    v44 = (v54 + 8);
    v38 = a1 + 64;
    v39 = v13;
    v40 = v10;
    v41 = a1 + 56;
    v56 = v12;
    v42 = a1;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      if ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      if (v55 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v53 = 1 << v16;
      v54 = v16 >> 6;
      v52 = v17;
      (*(v10 + 16))(v12, *(a1 + 48) + *(v10 + 72) * v16, v9);
      result = [v46 deepBreathingSessionType];
      if (!result)
      {
        goto LABEL_28;
      }

      v19 = result;
      v20 = v9;
      v21 = v47;
      sub_227666BE0();
      v22 = v48;
      sub_227666BC0();
      sub_226FC4FD8(v50);
      v51 = v3;
      v23 = sub_2276626A0();
      v24 = sub_2276626A0();
      v25 = sub_22766BE90();

      v26 = [objc_opt_self() categorySampleWithType:v19 value:0 startDate:v23 endDate:v24 metadata:v25];

      v27 = *v44;
      v28 = v22;
      v12 = v56;
      v29 = v49;
      (*v44)(v28, v49);
      v27(v21, v29);
      (*v43)(v12, v20);
      sub_22766CF00();
      sub_22766CF40();
      sub_22766CF50();
      result = sub_22766CF10();
      a1 = v42;
      v18 = 1 << *(v42 + 32);
      if (v16 >= v18)
      {
        goto LABEL_25;
      }

      v15 = v41;
      v30 = *(v41 + 8 * v54);
      if ((v30 & v53) == 0)
      {
        goto LABEL_26;
      }

      if (v55 != *(v42 + 36))
      {
        goto LABEL_27;
      }

      v9 = v20;
      v31 = v30 & (-2 << (v16 & 0x3F));
      if (v31)
      {
        v18 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v3 = v51;
        v10 = v40;
      }

      else
      {
        v32 = v54 << 6;
        v33 = v54 + 1;
        v34 = (v38 + 8 * v54);
        v3 = v51;
        v10 = v40;
        while (v33 < (v18 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v16, v55, 0);
            v18 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v16, v55, 0);
LABEL_19:
        v12 = v56;
      }

      v17 = v52 + 1;
      v16 = v18;
      if (v52 + 1 == v39)
      {
        return v57;
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
LABEL_28:
    __break(1u);
  }

  return result;
}

unint64_t sub_226FC5AF8()
{
  result = qword_27D7B9468;
  if (!qword_27D7B9468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7B9468);
  }

  return result;
}

uint64_t sub_226FC5B44(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  type metadata accessor for PersistenceQuery(0, a6, a7, a8);
  v12 = a2;
  v13 = a3;

  return sub_226FDD19C(v12, v13, v9, a5);
}

void sub_226FC5BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v58 = a4;
  v59 = a2;
  v11 = sub_22766B390();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51 = &v46 - v14;
  v55 = v15;
  v16 = sub_22766CB90();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - v17;
  AssociatedConformanceWitness = *(a5 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v52 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = a1;
  v26 = a1;
  v27 = v60;
  v28 = sub_226F5B58C(v26, a3, v58, a5, a6, v60);
  if (v28)
  {
    if (v28 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v47 = v25;
    v57 = v24;
    v58 = v22;
    (*(v27 + 32))();
    if (sub_227669C10())
    {
      v29 = sub_227664DD0();
      sub_226FC4F70();
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51010], v29);
      swift_willThrow();
    }

    else
    {
      (*(AssociatedConformanceWitness + 16))(v21, v47, a5);
      sub_22766C230();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_22766CBB0();
      v31 = v53;
      v32 = *(v53 + 48);
      v33 = v55;
      if (v32(v18, 1, v55) == 1)
      {
        v34 = v56;
LABEL_11:
        v56 = v34;
        (*(v52 + 8))(v57, v58);
        sub_226EDC474(0);
      }

      else
      {
        v35 = *(v31 + 32);
        v53 = v31 + 8;
        v36 = v51;
        v34 = v56;
        while (1)
        {
          v35(v36, v18, v33);
          v37 = sub_2271259DC(v59, v33, v60);
          if (v34)
          {
            break;
          }

          (*v53)(v36, v33);
          sub_22766CBB0();
          if (v32(v18, 1, v33) == 1)
          {
            goto LABEL_11;
          }
        }

        v38 = v48;
        sub_22766A770();
        v39 = v34;
        v40 = sub_22766B380();
        v41 = sub_22766C8B0();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          v44 = v34;
          v45 = _swift_stdlib_bridgeErrorToNSError();
          *(v42 + 4) = v45;
          *v43 = v45;
          _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
          sub_226F2534C(v43);
          MEMORY[0x22AA9A450](v43, -1, -1);
          MEMORY[0x22AA9A450](v42, -1, -1);
        }

        (*(v49 + 8))(v38, v50);
        swift_willThrow();
        sub_226EDC474(0);
        (*v53)(v36, v33);
        (*(v52 + 8))(v57, v58);
      }
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_226FC6214(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_226FC625C(uint64_t result, int a2, int a3)
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

uint64_t sub_226FC62AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D08];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_226FC6320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227666620();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226FC6348(uint64_t a1)
{
  *(a1 + 24) = sub_226FC63B0(&qword_2813A56B0, &unk_22767F5F8);
  result = sub_226FC63B0(&qword_2813A56A8, MEMORY[0x277D524A0]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226FC63B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666650();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226FC63F4()
{
  v1 = *(v0 + 16);
  sub_22766D370();
  sub_22766C100();
  MEMORY[0x22AA996B0](v1);
  sub_22766D3A0();
  return sub_22766D3F0();
}

uint64_t sub_226FC6470(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22766C100();
  MEMORY[0x22AA996B0](v2);
  return sub_22766D3A0();
}

uint64_t sub_226FC64BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22766D370();
  sub_22766C100();
  MEMORY[0x22AA996B0](v2);
  sub_22766D3A0();
  return sub_22766D3F0();
}

BOOL sub_226FC6534(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_226FAE7D4(v5, v7);
}

unint64_t sub_226FC6584()
{
  result = qword_27D7B9478;
  if (!qword_27D7B9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9478);
  }

  return result;
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

uint64_t sub_226FC65EC(uint64_t a1, int a2)
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

uint64_t sub_226FC6634(uint64_t result, int a2, int a3)
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

uint64_t sub_226FC6688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2276668F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227669910();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v8 + 104))(v10, *MEMORY[0x277D4E168], v7);
  sub_22766A3D0();
  sub_227669650();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_226FC685C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v38 = sub_22766A3F0();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2276668F0();
  v42 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = v33 - v8;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_22766A730();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "Received AudioLanguagePreference Update. Sending Event.", v16, 2u);
    MEMORY[0x22AA9A450](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);

  sub_2273FB5C0(v17, v13);
  v18 = 0;
  v21 = v19 + 56;
  v20 = *(v19 + 56);
  v41 = v19;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v33[1] = v42 + 32;
  v33[2] = v42 + 16;
  v33[0] = v4 + 8;
  v26 = v34;
  if ((v23 & v20) != 0)
  {
    do
    {
      v27 = v18;
LABEL_11:
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = v42;
      v30 = v36;
      (*(v42 + 16))(v26, *(v41 + 48) + *(v42 + 72) * (v28 | (v27 << 6)), v36);
      swift_getObjectType();
      (*(v29 + 32))(v35, v26, v30);
      v31 = v37;
      sub_22766A3E0();
      v32 = v38;
      sub_2276699D0();
      (*v33[0])(v31, v32);
    }

    while (v24);
  }

  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v27);
    ++v18;
    if (v24)
    {
      v18 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_226FC6C3C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_226FC6CB8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_22722BFF4();
  if (!v2)
  {
    v6 = result;
    if (*(result + 16) && (v7 = sub_226F3AA10(*(a1 + 72)), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + v7);
    }

    else
    {

      result = sub_227665790();
      v9 = result & 1;
    }

    *a2 = v9;
  }

  return result;
}

uint64_t sub_226FC6D5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC6E1C, 0, 0);
}

uint64_t sub_226FC6E1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A750();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[13];
  v6 = v4[14];
  __swift_project_boxed_opaque_existential_0(v4 + 10, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_2276668F0();
  *v8 = v0;
  v8[1] = sub_226FC1FE0;
  v10 = v0[2];
  v11 = v0[3];

  return (v13)(v10, sub_226FC9610, v11, v9, v5, v6);
}

uint64_t sub_226FC6FDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_0((a2 + 32), *(a2 + 56));
  result = sub_22722B004(a1, v9);
  if (!v3)
  {
    v11 = sub_2276668F0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_226E97D1C(v9, &qword_27D7B94C0, &unk_2276874A0);
      v13 = sub_2276654A0();
      sub_226FC962C(&qword_27D7B94C8, MEMORY[0x277D516B0], MEMORY[0x277D516B8]);
      swift_allocError();
      (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D516A0], v13);
      return swift_willThrow();
    }

    else
    {
      return (*(v12 + 32))(a3, v9, v11);
    }
  }

  return result;
}

uint64_t sub_226FC71E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A3F0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2276668F0();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC7360, 0, 0);
}

uint64_t sub_226FC7360()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[7];
  v8 = v0[2];
  v7 = v0[3];
  sub_22766A750();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v9 = v7[14];
  __swift_project_boxed_opaque_existential_0(v7 + 10, v7[13]);
  v10 = *(v5 + 16);
  v0[14] = v10;
  v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v8, v6);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[16] = v12;
  *(v12 + 16) = v7;
  (*(v5 + 32))(v12 + v11, v4, v6);
  v13 = *(v9 + 24);

  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_226FC75B0;

  return v16();
}

uint64_t sub_226FC75B0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_226FC77F8;
  }

  else
  {

    v2 = sub_226FC76CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226FC76CC()
{
  v9 = v0[14];
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  __swift_project_boxed_opaque_existential_0((v0[3] + 128), *(v0[3] + 152));
  sub_2271D7EE8();
  swift_getObjectType();
  v9(v1, v6, v3);
  sub_22766A3E0();
  sub_2276699D0();
  (*(v4 + 8))(v2, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_226FC77F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226FC7888(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22722C54C(a3, a1);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a2 + 128), *(a2 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_227670CD0;
    *(v6 + 32) = sub_2276668E0();
    *(v6 + 40) = v7;
    sub_2272D7BCC(0, v6, a1);
  }
}

uint64_t sub_226FC79E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v25 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  __swift_project_boxed_opaque_existential_0((a2 + 32), *(a2 + 56));
  result = a6(a1, a3);
  if (!v8)
  {
    v19 = v25;
    v20 = v26(0);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      sub_226E97D1C(v17, a4, a5);
      v22 = sub_227666510();
      sub_226FC962C(&qword_27D7B94A8, MEMORY[0x277D52348], MEMORY[0x277D52350]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D52340], v22);
      return swift_willThrow();
    }

    else
    {
      return (*(v21 + 32))(v19, v17, v20);
    }
  }

  return result;
}

uint64_t sub_226FC7C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v34 = a2;
  v4 = sub_227666F20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A750();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = v3[13];
  v29 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v16);
  v17 = v4;
  (*(v5 + 16))(v7, v31, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  (*(v5 + 32))(v19 + v18, v7, v17);

  v20 = v30;
  sub_226ECF5D8(sub_226FC94D0, v19, v16, MEMORY[0x277D84F78] + 8, v29, v30);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_226FC9510;
  *(v21 + 24) = v3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_226F5B0EC;
  *(v22 + 24) = v21;
  v24 = v32;
  v23 = v33;
  (*(v8 + 16))(v32, v20, v33);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v24, v23);
  v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_226F32FEC;
  v27[1] = v22;

  sub_227669270();
  return (*(v8 + 8))(v20, v23);
}

uint64_t sub_226FC8098(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v21 = sub_227668D10();
  v20 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9498, &qword_227679AA0);
  v9 = sub_227666F20();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v18 = xmmword_227670CD0;
  *(v12 + 16) = xmmword_227670CD0;
  (*(v10 + 16))(v12 + v11, a3, v9);
  sub_227560908(v12, v8[1], *(v8 + 16), v8[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((v19 + 128), *(v19 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = v18;
    sub_227666EF0();
    v15 = sub_227668D00();
    v17 = v16;
    (*(v20 + 8))(v7, v21);
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_2272D7BF8(0, v14, a1);
  }

  return result;
}

uint64_t sub_226FC82F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v34 = a2;
  v4 = sub_227667170();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A750();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = v3[13];
  v29 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v16);
  v17 = v4;
  (*(v5 + 16))(v7, v31, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  (*(v5 + 32))(v19 + v18, v7, v17);

  v20 = v30;
  sub_226ECF5D8(sub_226FC9490, v19, v16, MEMORY[0x277D84F78] + 8, v29, v30);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_226FC9674;
  *(v21 + 24) = v3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_226F5B0EC;
  *(v22 + 24) = v21;
  v24 = v32;
  v23 = v33;
  (*(v8 + 16))(v32, v20, v33);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v24, v23);
  v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_226F32FEC;
  v27[1] = v22;

  sub_227669270();
  return (*(v8 + 8))(v20, v23);
}

uint64_t sub_226FC8724(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v21 = sub_227668D10();
  v20 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9490, &unk_227674280);
  v9 = sub_227667170();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v18 = xmmword_227670CD0;
  *(v12 + 16) = xmmword_227670CD0;
  (*(v10 + 16))(v12 + v11, a3, v9);
  sub_227560FC8(v12, v8[1], *(v8 + 16), v8[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((v19 + 128), *(v19 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = v18;
    sub_227667140();
    v15 = sub_227668D00();
    v17 = v16;
    (*(v20 + 8))(v7, v21);
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_2272D7C24(0, v14, a1);
  }

  return result;
}

uint64_t sub_226FC897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v34 = a2;
  v4 = sub_2276675F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A750();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = v3[13];
  v29 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v16);
  v17 = v4;
  (*(v5 + 16))(v7, v31, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  (*(v5 + 32))(v19 + v18, v7, v17);

  v20 = v30;
  sub_226ECF5D8(sub_226FC9450, v19, v16, MEMORY[0x277D84F78] + 8, v29, v30);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_226FC9674;
  *(v21 + 24) = v3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_226EB4A28;
  *(v22 + 24) = v21;
  v24 = v32;
  v23 = v33;
  (*(v8 + 16))(v32, v20, v33);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v24, v23);
  v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_226EBFB9C;
  v27[1] = v22;

  sub_227669270();
  return (*(v8 + 8))(v20, v23);
}

uint64_t sub_226FC8DB0(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v21 = sub_227668D10();
  v20 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9488, &unk_227674270);
  v9 = sub_2276675F0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v18 = xmmword_227670CD0;
  *(v12 + 16) = xmmword_227670CD0;
  (*(v10 + 16))(v12 + v11, a3, v9);
  sub_227561688(v12, v8[1], *(v8 + 16), v8[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((v19 + 128), *(v19 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = v18;
    sub_2276675C0();
    v15 = sub_227668D00();
    v17 = v16;
    (*(v20 + 8))(v7, v21);
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_2272D7C50(0, v14, a1);
  }

  return result;
}

void sub_226FC9008(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_22722BEA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 30324;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = sub_2276657B0();
  *(inited + 56) = v6;
  v7 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE670, &unk_227674260);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v4;
  sub_226FC91B0(v7, sub_2270ABE5C, 0, isUniquelyReferenced_nonNull_native, &v12);

  if (v3)
  {

    __break(1u);
  }

  else
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = sub_22766BE90();

    sub_227669BF0();
    v11 = sub_22766BFD0();

    [v9 setObject:v10 forKey:v11];
  }
}