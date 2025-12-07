void sub_27021E4E8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 inputDelegate];

    if (v4)
    {
      if ([v4 inputDelegate])
      {
        v5 = swift_dynamicCastObjCProtocolConditional();
        if (v5)
        {
          v6 = v5;
          if ([v5 respondsToSelector_])
          {
            v7 = sub_2702343BC();
            [v6 _insertSmartText_completionHandler_];
            swift_unknownObjectRelease();

            return;
          }
        }

        swift_unknownObjectRelease();
      }

      v9 = sub_2702343BC();
      [v4 insertText_];
    }

    else
    {
      sub_27021E7EC();
      swift_allocError();
      *v8 = 1;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_27021E66C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_27021E68C, 0, 0);
}

uint64_t sub_27021E68C()
{
  sub_27023441C();
  *(v0 + 32) = sub_27023440C();
  v2 = sub_2702343FC();

  return MEMORY[0x2822009F8](sub_27021E720, v2, v1);
}

uint64_t sub_27021E720()
{
  v1 = v0[3];
  v2 = v0[2];
  sub_27023410C();
  sub_27021E4E8(v2, v1);
  v0[5] = 0;

  return MEMORY[0x2822009F8](sub_27021E7BC, 0, 0);
}

unint64_t sub_27021E7EC()
{
  result = qword_2807C3ED0;
  if (!qword_2807C3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3ED0);
  }

  return result;
}

uint64_t sub_27021E840()
{

  return swift_deallocClassInstance();
}

unint64_t sub_27021E8A0()
{
  result = qword_2807C3F38;
  if (!qword_2807C3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F38);
  }

  return result;
}

uint64_t sub_27021E8F4()
{
  v0 = sub_2702340CC();
  __swift_allocate_value_buffer(v0, qword_2807C4548);
  __swift_project_value_buffer(v0, qword_2807C4548);
  return sub_2702340BC();
}

unint64_t sub_27021E960()
{
  result = qword_2807C3F40;
  if (!qword_2807C3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F40);
  }

  return result;
}

unint64_t sub_27021E9B8()
{
  result = qword_2807C3F48;
  if (!qword_2807C3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F48);
  }

  return result;
}

unint64_t sub_27021EA10()
{
  result = qword_2807C3F50;
  if (!qword_2807C3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F50);
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

uint64_t sub_27021EAFC(uint64_t a1)
{
  v2 = sub_27021F3FC();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_27021EB4C()
{
  result = qword_2807C3F68;
  if (!qword_2807C3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F68);
  }

  return result;
}

unint64_t sub_27021EBA4()
{
  result = qword_2807C3F70;
  if (!qword_2807C3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F70);
  }

  return result;
}

unint64_t sub_27021EBFC()
{
  result = qword_2807C3F78;
  if (!qword_2807C3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F78);
  }

  return result;
}

unint64_t sub_27021EC54()
{
  result = qword_2807C3F80;
  if (!qword_2807C3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F80);
  }

  return result;
}

unint64_t sub_27021ECAC()
{
  result = qword_2807C3F88;
  if (!qword_2807C3F88)
  {
    sub_27023414C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3F88);
  }

  return result;
}

uint64_t sub_27021ED04(uint64_t a1)
{
  v2 = sub_27021F3FC();

  return MEMORY[0x28210B2F8](a1, v2);
}

uint64_t sub_27021ED54@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807C3E60 != -1)
  {
    swift_once();
  }

  v2 = sub_2702340CC();
  v3 = __swift_project_value_buffer(v2, qword_2807C4548);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_27021EE40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_27021EE88(uint64_t a1)
{
  v2 = sub_27021E8A0();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_27021EED8()
{
  result = qword_2807C3FA0;
  if (!qword_2807C3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3FA0);
  }

  return result;
}

uint64_t sub_27021EF2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FA8, &unk_270235880);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_27023413C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_27023411C();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_270233FCC();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_270233FDC();
}

uint64_t sub_27021F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27021F1C8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_27021F1C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27021F2BC(uint64_t a1)
{
  v2 = sub_27021EC54();

  return MEMORY[0x28210C4B8](a1, v2);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_27021F3FC()
{
  result = qword_2807C3FB8;
  if (!qword_2807C3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3FB8);
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceCommandEntityID(uint64_t a1)
{
  result = qword_2807C3FC8;
  if (!qword_2807C3FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27021F4EC()
{
  sub_2702344FC();
  sub_27023416C();
  sub_27021FA94(&qword_2807C3FE8, MEMORY[0x277D74550], MEMORY[0x277D74558]);
  sub_27023433C();
  return sub_27023451C();
}

uint64_t sub_27021F574(uint64_t a1)
{
  sub_27023416C();
  sub_27021FA94(&qword_2807C3FE8, MEMORY[0x277D74550], MEMORY[0x277D74558]);

  return sub_27023433C();
}

uint64_t sub_27021F5F8(uint64_t a1)
{
  sub_2702344FC();
  sub_27023416C();
  sub_27021FA94(&qword_2807C3FE8, MEMORY[0x277D74550], MEMORY[0x277D74558]);
  sub_27023433C();
  return sub_27023451C();
}

uint64_t sub_27021F67C()
{
  sub_27023416C();
  sub_27021FA94(&qword_2807C3FE0, MEMORY[0x277D74550], MEMORY[0x277D74570]);

  return sub_27023448C();
}

uint64_t sub_27021F6F0@<X0>(uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FD8, "f-");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_27023416C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_27023417C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_27021FA2C(v8);
    v13 = 1;
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    v14(a4, v12, v9);
    v13 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v13, 1, a3);
}

uint64_t sub_27021F8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_27023416C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_27021F950(uint64_t a1, uint64_t a2)
{
  v4 = sub_27023416C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_27021F9C0(uint64_t a1)
{
  result = sub_27023416C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27021FA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FD8, "f-");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27021FA94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27021FAE0()
{
  result = qword_2807C3FF0;
  if (!qword_2807C3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3FF0);
  }

  return result;
}

unint64_t sub_27021FB38()
{
  result = qword_2807C3FF8;
  if (!qword_2807C3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C3FF8);
  }

  return result;
}

uint64_t sub_27021FBE0()
{
  if (qword_2807C3EA0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_27021FCAC;
  v2 = *(v0 + 16);

  return sub_27022C46C(v2);
}

uint64_t sub_27021FCAC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_27021FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27021FEB4;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_27021FEB4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_27021FFB8()
{
  result = qword_2807C4008;
  if (!qword_2807C4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4008);
  }

  return result;
}

uint64_t sub_27022000C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_270220030, 0, 0);
}

uint64_t sub_270220030()
{
  if (qword_2807C3EA0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_270220100;
  v3 = v0[3];
  v2 = v0[4];

  return sub_27022D1FC(v3, v2, 0);
}

uint64_t sub_270220100(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_27022024C, 0, 0);
  }
}

unint64_t sub_270220274()
{
  result = qword_2807C4010;
  if (!qword_2807C4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4010);
  }

  return result;
}

uint64_t sub_2702202FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntelligenceCommandEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_270220344()
{
  result = qword_2807C4020;
  if (!qword_2807C4020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C4028, qword_270234E30);
    sub_2702202FC(&qword_2807C4018, &unk_270235728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4020);
  }

  return result;
}

uint64_t sub_2702203E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_27021FFB8();
  *v5 = v2;
  v5[1] = sub_27021F1C8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_270220498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27021F1C8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_270220564()
{
  result = qword_2807C4030;
  if (!qword_2807C4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4030);
  }

  return result;
}

uint64_t sub_2702205B8()
{
  v0 = sub_27023413C();
  __swift_allocate_value_buffer(v0, qword_2807C4560);
  __swift_project_value_buffer(v0, qword_2807C4560);
  return sub_27023411C();
}

uint64_t sub_2702206AC@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = sub_27023413C();
  v14 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  sub_27023411C();
  sub_27023411C();
  v13 = *(v8 + 56);
  v13(v6, 0, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40B0, &qword_270235170);
  *(swift_allocObject() + 16) = xmmword_270234F30;
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  v13(v4, 0, 1, v14);
  v9 = v15;
  sub_270233FAC();
  v10 = sub_270233F9C();
  return (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
}

uint64_t sub_2702209D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40B8, &qword_270235178);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40C0, &qword_270235180);
  MEMORY[0x28223BE20](v1);
  sub_2702223C8();
  sub_27023404C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40C8, &qword_2702351B0);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40D0, &qword_270235208);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  sub_27023405C();
  return sub_27023401C();
}

uint64_t sub_270220C4C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for IntelligenceCommandEntity(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FD8, "f-");
  v2[12] = swift_task_alloc();
  v4 = sub_27023416C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = *(type metadata accessor for IntelligenceCommandEntityID(0) - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4098, &qword_270235160);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270220E60, 0, 0);
}

uint64_t sub_270220E60()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v3 + 56);
  *(v0 + 184) = v4;
  *(v0 + 192) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_270233E3C();
  if (*(v0 + 24))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    sub_27023417C();
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v8 = *(v0 + 96);
      v9 = &qword_2807C3FD8;
      v10 = "f-";
LABEL_4:
      sub_2702231C8(v8, v9, v10);
      sub_2702230C0();
      swift_allocError();
      *v11 = 2;
      swift_willThrow();
      sub_2702231C8(*(v0 + 176), &qword_2807C4098, &qword_270235160);

      v12 = *(v0 + 8);

      return v12();
    }

    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v20 = *(v0 + 120);
    v21 = *(v0 + 104);
    v22 = *(*(v0 + 112) + 32);
    v22(v20, *(v0 + 96), v21);
    v22(v18, v20, v21);
    sub_270223228(v18, v19, type metadata accessor for IntelligenceCommandEntityID);
    if (qword_2807C3EA0 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 144);
    v24 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40A8, &qword_270235168);
    v25 = *(v24 + 80);
    *(v0 + 288) = v25;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    *(v0 + 200) = v27;
    *(v27 + 16) = xmmword_270234F40;
    sub_270223290(v23, v27 + v26, type metadata accessor for IntelligenceCommandEntityID);
    v28 = swift_task_alloc();
    *(v0 + 208) = v28;
    *v28 = v0;
    v28[1] = sub_27022143C;

    return sub_27022C46C(v27);
  }

  else
  {
    sub_270233E3C();
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    *(v0 + 232) = v15;
    if (v15)
    {
      if (qword_2807C3EA0 != -1)
      {
        swift_once();
      }

      sub_270233E3C();
      v16 = *(v0 + 48);
      *(v0 + 240) = v16;
      v17 = swift_task_alloc();
      *(v0 + 248) = v17;
      *v17 = v0;
      v17[1] = sub_270221940;

      return sub_27022D1FC(v14, v15, v16);
    }

    else
    {
      v29 = *(v0 + 152);
      v30 = *(v0 + 72);
      v31 = *(v0 + 80);
      sub_270223050(*(v0 + 176), v29);
      v32 = (*(v31 + 48))(v29, 1, v30);
      v8 = *(v0 + 152);
      if (v32 == 1)
      {
        v9 = &qword_2807C4098;
        v10 = &qword_270235160;
        goto LABEL_4;
      }

      sub_270223228(v8, *(v0 + 88), type metadata accessor for IntelligenceCommandEntity);
      if (qword_2807C3EA0 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 88);
      v34 = *(*(v0 + 72) + 44);
      v35 = qword_2807C4630;
      v36 = unk_2807C4638;
      __swift_project_boxed_opaque_existential_1(qword_2807C4618, qword_2807C4630);
      v38 = (*(v36 + 8) + **(v36 + 8));
      v37 = swift_task_alloc();
      *(v0 + 272) = v37;
      *v37 = v0;
      v37[1] = sub_270221E0C;

      return v38(v33 + v34, v35, v36);
    }
  }
}

uint64_t sub_27022143C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 200);
  v6 = (*(v4 + 288) + 32) & ~*(v4 + 288);
  swift_setDeallocating();
  sub_2702232F8(v5 + v6, type metadata accessor for IntelligenceCommandEntityID);
  swift_deallocClassInstance();
  if (v1)
  {
    v7 = sub_270222160;
  }

  else
  {
    v7 = sub_2702215B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2702215B4()
{
  v1 = v0[27];
  if (*(v1 + 16))
  {
    v2 = *(v0[10] + 80);
    sub_270223290(v1 + ((v2 + 32) & ~v2), v0[21], type metadata accessor for IntelligenceCommandEntity);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[23];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v8 = v0[9];

  sub_2702232F8(v7, type metadata accessor for IntelligenceCommandEntityID);
  sub_2702231C8(v5, &qword_2807C4098, &qword_270235160);
  v4(v6, v3, 1, v8);
  sub_270223158(v0[21], v0[22]);
  v9 = v0[19];
  v10 = v0[9];
  v11 = v0[10];
  sub_270223050(v0[22], v9);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = v0[19];
  if (v12 == 1)
  {
    sub_2702231C8(v13, &qword_2807C4098, &qword_270235160);
    sub_2702230C0();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
    sub_2702231C8(v0[22], &qword_2807C4098, &qword_270235160);

    v15 = v0[1];

    return v15();
  }

  else
  {
    sub_270223228(v13, v0[11], type metadata accessor for IntelligenceCommandEntity);
    if (qword_2807C3EA0 != -1)
    {
      swift_once();
    }

    v17 = v0[11];
    v18 = *(v0[9] + 44);
    v19 = qword_2807C4630;
    v20 = unk_2807C4638;
    __swift_project_boxed_opaque_existential_1(qword_2807C4618, qword_2807C4630);
    v22 = (*(v20 + 8) + **(v20 + 8));
    v21 = swift_task_alloc();
    v0[34] = v21;
    *v21 = v0;
    v21[1] = sub_270221E0C;

    return v22(v17 + v18, v19, v20);
  }
}

uint64_t sub_270221940(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_270222274;
  }

  else
  {
    v4 = sub_270221A98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_270221A98()
{
  v1 = v0[32];
  if (*(v1 + 16))
  {
    v2 = *(v0[10] + 80);
    sub_270223290(v1 + ((v2 + 32) & ~v2), v0[20], type metadata accessor for IntelligenceCommandEntity);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[23];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[9];

  sub_2702231C8(v5, &qword_2807C4098, &qword_270235160);
  v4(v6, v3, 1, v7);
  sub_270223158(v0[20], v0[22]);
  v8 = v0[19];
  v9 = v0[9];
  v10 = v0[10];
  sub_270223050(v0[22], v8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[19];
  if (v11 == 1)
  {
    sub_2702231C8(v12, &qword_2807C4098, &qword_270235160);
    sub_2702230C0();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    sub_2702231C8(v0[22], &qword_2807C4098, &qword_270235160);

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_270223228(v12, v0[11], type metadata accessor for IntelligenceCommandEntity);
    if (qword_2807C3EA0 != -1)
    {
      swift_once();
    }

    v16 = v0[11];
    v17 = *(v0[9] + 44);
    v18 = qword_2807C4630;
    v19 = unk_2807C4638;
    __swift_project_boxed_opaque_existential_1(qword_2807C4618, qword_2807C4630);
    v21 = (*(v19 + 8) + **(v19 + 8));
    v20 = swift_task_alloc();
    v0[34] = v20;
    *v20 = v0;
    v20[1] = sub_270221E0C;

    return v21(v16 + v17, v18, v19);
  }
}

uint64_t sub_270221E0C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_27022204C;
  }

  else
  {
    v2 = sub_270221F20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270221F20()
{
  v1 = v0[22];
  v2 = v0[11];
  sub_27021EBFC();
  sub_270233DBC();
  sub_2702232F8(v2, type metadata accessor for IntelligenceCommandEntity);
  sub_2702231C8(v1, &qword_2807C4098, &qword_270235160);

  v3 = v0[1];

  return v3();
}

uint64_t sub_27022204C()
{
  sub_2702232F8(v0[11], type metadata accessor for IntelligenceCommandEntity);
  sub_2702231C8(v0[22], &qword_2807C4098, &qword_270235160);

  v1 = v0[1];

  return v1();
}

uint64_t sub_270222160()
{
  sub_2702232F8(v0[18], type metadata accessor for IntelligenceCommandEntityID);
  sub_2702231C8(v0[22], &qword_2807C4098, &qword_270235160);

  v1 = v0[1];

  return v1();
}

uint64_t sub_270222274()
{
  sub_2702231C8(*(v0 + 176), &qword_2807C4098, &qword_270235160);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2702223C8()
{
  result = qword_2807C4038;
  if (!qword_2807C4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4038);
  }

  return result;
}

unint64_t sub_270222420()
{
  result = qword_2807C4040;
  if (!qword_2807C4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4040);
  }

  return result;
}

unint64_t sub_270222478()
{
  result = qword_2807C4048;
  if (!qword_2807C4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4048);
  }

  return result;
}

uint64_t sub_27022251C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807C3E68 != -1)
  {
    swift_once();
  }

  v2 = sub_27023413C();
  v3 = __swift_project_value_buffer(v2, qword_2807C4560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2702225DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_270222688;

  return sub_270220C4C(a1);
}

uint64_t sub_270222688()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_27022277C@<D0>(uint64_t a1@<X8>)
{
  sub_270222938(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2702227C0(uint64_t a1)
{
  v2 = sub_2702223C8();

  return MEMORY[0x28210B538](a1, v2);
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

uint64_t sub_270222810(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_270222858(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_270222938@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4070, &unk_270235130);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v41 - v2;
  v3 = sub_27023406C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4078, &unk_270235510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_27023413C();
  v63 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4080, &unk_270235520);
  sub_27023411C();
  v17 = *(v14 + 56);
  v17(v12, 1, 1, v13);
  v53 = v17;
  v59 = sub_270233DAC();
  v18 = *(v59 - 8);
  v19 = *(v18 + 56);
  v61 = v18 + 56;
  v49 = v9;
  v19(v9, 1, 1, v59);
  v48 = v19;
  v54 = *MEMORY[0x277CBA308];
  v20 = *(v4 + 104);
  v55 = v4 + 104;
  v57 = v6;
  v58 = v20;
  v51 = v3;
  (v20)(v6);
  v45 = sub_270233E8C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4088, &qword_270235140);
  v21 = v16;
  sub_27023411C();
  v52 = v14 + 56;
  v17(v12, 1, 1, v63);
  v60 = sub_27023436C();
  v64 = 0;
  v65 = 0;
  v22 = *(v60 - 8);
  v62 = *(v22 + 56);
  v50 = v22 + 56;
  v23 = v44;
  v62(v44, 1, 1, v60);
  v19(v49, 1, 1, v59);
  v24 = v54;
  v25 = v3;
  v26 = v58;
  v58(v57, v54, v25);
  v47 = v21;
  v41 = v12;
  v43 = sub_270233E9C();
  sub_27023411C();
  v27 = v53;
  v53(v12, 1, 1, v63);
  v64 = 0;
  v65 = 0;
  v62(v23, 1, 1, v60);
  v28 = v49;
  v29 = v59;
  v48(v49, 1, 1, v59);
  v30 = v51;
  v26(v57, v24, v51);
  v31 = v41;
  v42 = sub_270233E9C();
  sub_27023411C();
  v32 = v31;
  v27(v31, 1, 1, v63);
  v64 = 0;
  v65 = 0;
  v62(v23, 1, 1, v60);
  v33 = v29;
  v34 = v48;
  v48(v28, 1, 1, v33);
  v35 = v57;
  v36 = v54;
  v58(v57, v54, v30);
  v56 = sub_270233E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4090, &qword_270235148);
  sub_27023411C();
  v53(v32, 1, 1, v63);
  v64 = 0;
  v62(v23, 1, 1, v60);
  v34(v28, 1, 1, v59);
  v58(v35, v36, v51);
  result = sub_270233E9C();
  v38 = v46;
  v39 = v43;
  *v46 = v45;
  v38[1] = v39;
  v40 = v56;
  v38[2] = v42;
  v38[3] = v40;
  v38[4] = result;
  return result;
}

uint64_t sub_270223050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4098, &qword_270235160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2702230C0()
{
  result = qword_2807C40A0;
  if (!qword_2807C40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C40A0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_270223158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4098, &qword_270235160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2702231C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_270223228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_270223290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2702232F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_270223358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_270223384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_2702233B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_2702233DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_270223408()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4110, &qword_270235320);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = sub_270233ECC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4118, &qword_270235328);
  MEMORY[0x28223BE20](v8);
  sub_270223BF4();
  sub_270233F3C();
  sub_270233F2C();
  (*(v5 + 104))(v7, *MEMORY[0x277CB9F50], v4);
  sub_270233F0C();
  (*(v5 + 8))(v7, v4);
  sub_270233F2C();
  sub_270233F4C();
  v9 = sub_270233EEC();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4120, qword_270235330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_270234F40;
  *(v10 + 32) = v9;
  v11 = sub_270233EDC();

  return v11;
}

uint64_t sub_2702236C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40F0, &qword_2702352E0);
  v12 = *(v0 - 8);
  v13 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - v1;
  v3 = sub_270233ECC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40F8, &qword_2702352E8);
  MEMORY[0x28223BE20](v7);
  sub_270223C48();
  sub_270233F3C();
  sub_270233F2C();
  swift_getKeyPath();
  sub_270223D10();
  sub_270233EBC();
  sub_27023410C();
  sub_270233F1C();
  sub_27023410C();
  sub_270233F2C();
  (*(v4 + 104))(v6, *MEMORY[0x277CB9F50], v3);
  sub_270233F0C();
  (*(v4 + 8))(v6, v3);
  sub_270233F2C();
  sub_270233F4C();
  v8 = sub_270233EEC();
  (*(v12 + 8))(v2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4108, &qword_270235318);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_270234F40;
  *(v9 + 32) = v8;
  v10 = sub_270233EDC();

  return v10;
}

uint64_t sub_270223A10()
{
  v0 = sub_270233F7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_270232DD0();
  v15 = v4;
  sub_270223BF4();
  sub_270233F8C();
  v5 = sub_270233F6C();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v14 = sub_2702331D0();
  v15 = v7;
  v16 = v8;
  v17 = v9;
  sub_270223C48();
  sub_270233F8C();
  v10 = sub_270233F6C();
  v6(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40E8, &qword_2702352D8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_270235240;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  v12 = sub_270233F5C();

  return v12;
}

unint64_t sub_270223BF4()
{
  result = qword_2807C40D8;
  if (!qword_2807C40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C40D8);
  }

  return result;
}

unint64_t sub_270223C48()
{
  result = qword_2807C40E0;
  if (!qword_2807C40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C40E0);
  }

  return result;
}

uint64_t sub_270223C9C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_270233E3C();
  *a2 = v4;
  return result;
}

unint64_t sub_270223D10()
{
  result = qword_2807C4100;
  if (!qword_2807C4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4100);
  }

  return result;
}

unint64_t sub_270223D6C()
{
  result = qword_2807C4128;
  if (!qword_2807C4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4128);
  }

  return result;
}

uint64_t sub_270223DC0()
{
  v0 = sub_27023413C();
  __swift_allocate_value_buffer(v0, qword_2807C4578);
  __swift_project_value_buffer(v0, qword_2807C4578);
  return sub_27023411C();
}

uint64_t sub_270223E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  sub_27023441C();
  v4[6] = sub_27023440C();
  v6 = sub_2702343FC();

  return MEMORY[0x2822009F8](sub_270223EC4, v6, v5);
}

uint64_t sub_270223EC4()
{
  sub_27023410C();
  type metadata accessor for WritingTools_UIKit();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 _responderForKeyEvents];

  if (v3)
  {
    *(v1 + 16) = v3;
    if ([v3 _supportsWritingTools])
    {
      sub_270233E3C();
      v4 = *(v0 + 24);
      v5 = *(v1 + 16);
      v6 = sub_2702343BC();
      if (v4)
      {
        v7 = sub_2702343BC();
      }

      else
      {
        v7 = 0;
      }

      [v5 _startWritingToolsWithTool_prompt_sender_];

      *(v0 + 16) = 0;
      sub_270224A10();
    }

    else
    {
      *(v0 + 16) = 1;
      sub_270224A10();
    }

    sub_270233DBC();
    sub_27023410C();
  }

  else
  {
    swift_deallocPartialClassInstance();
    *(v0 + 16) = 1;
    sub_270224A10();
    sub_270233DBC();
  }

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_2702240D0()
{
  result = qword_2807C4130;
  if (!qword_2807C4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4130);
  }

  return result;
}

unint64_t sub_270224128()
{
  result = qword_2807C4138;
  if (!qword_2807C4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4138);
  }

  return result;
}

unint64_t sub_270224180()
{
  result = qword_2807C4140;
  if (!qword_2807C4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4140);
  }

  return result;
}

uint64_t sub_270224258@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807C3E70 != -1)
  {
    swift_once();
  }

  v2 = sub_27023413C();
  v3 = __swift_project_value_buffer(v2, qword_2807C4578);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_270224308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27021F1C8;

  return sub_270223E2C(a1, v5, v6, v4);
}

uint64_t sub_2702243A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270224524();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_2702243D4(uint64_t a1)
{
  v2 = sub_2702240D0();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_270224424(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_27022446C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2702244C0()
{
  result = qword_2807C4148;
  if (!qword_2807C4148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C4150, "v(");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4148);
  }

  return result;
}

uint64_t sub_270224524()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4070, &unk_270235130);
  MEMORY[0x28223BE20](v0 - 8);
  v29 = v23 - v1;
  v36 = sub_27023406C();
  v2 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4078, &unk_270235510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = sub_27023413C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4080, &unk_270235520);
  sub_27023411C();
  v12 = *(v11 + 56);
  v35 = v11 + 56;
  v25 = v10;
  v12(v9, 1, 1, v10);
  v24 = v12;
  v31 = sub_270233DAC();
  v27 = *(*(v31 - 8) + 56);
  v27(v6, 1, 1, v31);
  v26 = *MEMORY[0x277CBA308];
  v13 = *(v2 + 104);
  v33 = v2 + 104;
  v34 = v13;
  (v13)(v32);
  v28 = sub_270233E8C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4088, &qword_270235140);
  sub_27023411C();
  v12(v9, 1, 1, v10);
  v14 = sub_27023436C();
  v37 = 0;
  v38 = 0;
  v15 = *(v14 - 8);
  v23[0] = *(v15 + 56);
  v23[1] = v15 + 56;
  v16 = v29;
  (v23[0])(v29, 1, 1, v14);
  v17 = v6;
  v18 = v6;
  v19 = v27;
  v27(v18, 1, 1, v31);
  v20 = v32;
  v21 = v26;
  v34(v32, v26, v36);
  v23[2] = sub_270233E9C();
  sub_27023411C();
  v24(v9, 1, 1, v25);
  v37 = 0;
  v38 = 0;
  (v23[0])(v16, 1, 1, v14);
  v19(v17, 1, 1, v31);
  v34(v20, v21, v36);
  sub_270233E9C();
  return v28;
}

unint64_t sub_270224A10()
{
  result = qword_2807C4158;
  if (!qword_2807C4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4158);
  }

  return result;
}

uint64_t sub_270224A74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27021F1C8;

  return sub_270224D60(a1);
}

uint64_t sub_270224B3C()
{
  v0[3] = sub_27023431C();
  v0[4] = sub_27023441C();
  v0[5] = sub_27023440C();
  v2 = sub_2702343FC();

  return MEMORY[0x2822009F8](sub_270224BE0, v2, v1);
}

uint64_t sub_270224BE0()
{
  sub_27023410C();
  *(v0 + 48) = sub_27023430C();

  return MEMORY[0x2822009F8](sub_270224C54, 0, 0);
}

uint64_t sub_270224C54()
{
  *(v0 + 56) = sub_27023440C();
  v2 = sub_2702343FC();

  return MEMORY[0x2822009F8](sub_270224CE0, v2, v1);
}

uint64_t sub_270224CE0()
{
  sub_27023410C();
  v1 = sub_2702342DC();
  sub_27023410C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_270224D60(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_2702342CC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_2702342EC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270224E7C, 0, 0);
}

uint64_t sub_270224E7C()
{
  *(v0 + 80) = sub_27023431C();
  sub_27023441C();
  *(v0 + 88) = sub_27023440C();
  v2 = sub_2702343FC();

  return MEMORY[0x2822009F8](sub_270224F1C, v2, v1);
}

uint64_t sub_270224F1C()
{
  sub_27023410C();
  v0[12] = sub_27023430C();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_270224FCC;
  v2 = v0[9];
  v3 = v0[3];

  return MEMORY[0x2821DD670](v2, v3);
}

uint64_t sub_270224FCC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_270225170;
  }

  else
  {
    sub_27023410C();
    v2 = sub_2702250E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2702250E8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_270225170()
{
  v1 = v0[14];
  sub_27023410C();
  v0[2] = v1;
  MEMORY[0x27439ADF0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4160, &qword_2702355A8);
  if (swift_dynamicCast())
  {
    v2 = (*(v0[5] + 88))(v0[6], v0[4]);
    if (v2 == *MEMORY[0x277D74CE8])
    {
      MEMORY[0x27439ADE0](v0[14]);
      sub_2702230C0();
      swift_allocError();
      v4 = 2;
LABEL_6:
      *v3 = v4;
      swift_willThrow();
      MEMORY[0x27439ADE0](v0[2]);
      goto LABEL_9;
    }

    if (v2 == *MEMORY[0x277D74CE0])
    {
      MEMORY[0x27439ADE0](v0[14]);
      sub_2702230C0();
      swift_allocError();
      v4 = 3;
      goto LABEL_6;
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  MEMORY[0x27439ADE0](v0[2]);
  swift_willThrow();
LABEL_9:

  v5 = v0[1];

  return v5();
}

uint64_t type metadata accessor for IntelligenceCommandEntity(uint64_t a1)
{
  result = qword_2807C41C0;
  if (!qword_2807C41C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27022548C()
{
  v0 = sub_2702340CC();
  __swift_allocate_value_buffer(v0, qword_2807C4590);
  __swift_project_value_buffer(v0, qword_2807C4590);
  return sub_2702340BC();
}

uint64_t sub_2702254F0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FA8, &unk_270235880);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v50 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v50 - v4;
  v51 = sub_27023413C();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = sub_2702343AC();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4288, &qword_270235878);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_270234F40;
  sub_27023416C();
  sub_2702272A8(&qword_2807C3FE0, MEMORY[0x277D74550], MEMORY[0x277D74570]);
  *(v7 + 32) = sub_27023448C();
  *(v7 + 40) = v8;
  type metadata accessor for IntelligenceCommandEntity(0);
  sub_270233DDC();
  v9 = v56;
  if (v56)
  {
    v10 = v55;
    v11 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v11 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        v48 = v56;
        v7 = sub_270227198((v12 > 1), v13 + 1, 1, v7);
        v9 = v48;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
    }

    else
    {
    }
  }

  sub_270233DDC();
  v15 = v56;
  if (v56)
  {
    v16 = v55;
    v17 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v17 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        v49 = v56;
        v7 = sub_270227198((v18 > 1), v19 + 1, 1, v7);
        v15 = v49;
      }

      *(v7 + 16) = v19 + 1;
      v20 = v7 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v15;
    }

    else
    {
    }
  }

  sub_270233DDC();
  if (v55)
  {
    if (*(v55 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4210, &qword_270235840);
      sub_27021EE40(&qword_2807C4280, &qword_2807C4210, &qword_270235840, MEMORY[0x277D83958]);
      v21 = sub_27023434C();
      v23 = v22;

      v25 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v25 >= v24 >> 1)
      {
        v7 = sub_270227198((v24 > 1), v25 + 1, 1, v7);
      }

      *(v7 + 16) = v25 + 1;
      v26 = v7 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    else
    {
    }
  }

  v55 = 0x2070756F7247;
  v56 = 0xE600000000000000;
  sub_270233DDC();
  v27 = sub_27023448C();
  MEMORY[0x27439AAE0](v27);

  v28 = v55;
  v29 = v56;
  v31 = *(v7 + 16);
  v30 = *(v7 + 24);
  if (v31 >= v30 >> 1)
  {
    v7 = sub_270227198((v30 > 1), v31 + 1, 1, v7);
  }

  *(v7 + 16) = v31 + 1;
  v32 = v7 + 16 * v31;
  *(v32 + 32) = v28;
  *(v32 + 40) = v29;
  sub_270233DDC();
  v33 = v55;
  if (v55 != 2)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    if (v33)
    {
      v34 = 1702195828;
    }

    else
    {
      v34 = 0x65736C6166;
    }

    if (v33)
    {
      v35 = 0xE400000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    MEMORY[0x27439AAE0](v34, v35);

    v36 = v55;
    v37 = v56;
    v39 = *(v7 + 16);
    v38 = *(v7 + 24);
    if (v39 >= v38 >> 1)
    {
      v7 = sub_270227198((v38 > 1), v39 + 1, 1, v7);
    }

    *(v7 + 16) = v39 + 1;
    v40 = v7 + 16 * v39;
    *(v40 + 32) = v36;
    *(v40 + 40) = v37;
  }

  sub_270233DDC();
  v41 = v56;
  if (v56)
  {
    v42 = v55;
    v44 = *(v7 + 16);
    v43 = *(v7 + 24);
    if (v44 >= v43 >> 1)
    {
      v7 = sub_270227198((v43 > 1), v44 + 1, 1, v7);
    }

    *(v7 + 16) = v44 + 1;
    v45 = v7 + 16 * v44;
    *(v45 + 32) = v42;
    *(v45 + 40) = v41;
  }

  sub_27023439C();
  sub_27023438C();
  v55 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4210, &qword_270235840);
  sub_27021EE40(&qword_2807C4280, &qword_2807C4210, &qword_270235840, MEMORY[0x277D83958]);
  sub_27023434C();

  sub_27023437C();

  sub_27023438C();
  sub_27023412C();
  (*(v5 + 56))(v52, 1, 1, v51);
  v46 = sub_270233FCC();
  (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
  return sub_270233FDC();
}

uint64_t sub_270225BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2702341FC();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2702341CC();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v57 - v10;
  MEMORY[0x28223BE20](v9);
  v58 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4248, &qword_270235850);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v57 - v13;
  v14 = sub_27023421C();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_27023413C();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for IntelligenceCommandEntity(0);
  v18 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4250, &qword_270235858);
  sub_27023411C();
  v66 = sub_270233DFC();
  *(a2 + v18) = v66;
  v19 = v17[6];
  sub_27023411C();
  v65 = sub_270233DFC();
  *(a2 + v19) = v65;
  v20 = v17[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4258, &qword_270235860);
  sub_27023411C();
  *(a2 + v20) = sub_270233DFC();
  v21 = v17[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4260, &qword_270235868);
  sub_27023411C();
  *(a2 + v21) = sub_270233E1C();
  v22 = v17[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4268, &qword_270235870);
  sub_27023411C();
  *(a2 + v22) = sub_270233E0C();
  v23 = v17[10];
  sub_27023411C();
  v24 = sub_270233DFC();
  *(a2 + v23) = v24;
  v25 = v17[11];
  v26 = sub_27023426C();
  v27 = *(v26 - 8);
  v28 = a2 + v25;
  v29 = v26;
  (*(v27 + 16))(v28, a1, v26);
  sub_27023418C();
  v71 = sub_27023424C();
  v72 = v30;
  sub_270233DEC();
  v71 = sub_2702341AC();
  v72 = v31;
  sub_270233DEC();
  v71 = sub_27023423C();
  sub_270233DEC();
  v71 = sub_27023425C();
  sub_270233DEC();
  LOBYTE(v71) = sub_27023419C() & 1;
  sub_270233DEC();
  v32 = v67;
  sub_27023422C();
  if ((*(v69 + 48))(v32, 1, v70) == 1)
  {
    sub_270226F58(v32);
    v71 = 0;
    v72 = 0;
    sub_270233DEC();
    return (*(v27 + 8))(a1, v29);
  }

  else
  {
    v65 = v29;
    v66 = v24;
    (*(v69 + 32))(v68, v32, v70);
    v34 = v58;
    sub_2702341DC();
    v35 = MEMORY[0x277D74578];
    sub_2702272A8(&qword_2807C4270, MEMORY[0x277D74578], MEMORY[0x277D74588]);
    v36 = v59;
    v37 = v61;
    sub_27023443C();
    sub_2702272A8(&qword_2807C4278, v35, MEMORY[0x277D74580]);
    LOBYTE(v35) = sub_27023435C();
    v38 = *(v60 + 8);
    v38(v36, v37);
    v38(v34, v37);
    if (v35)
    {
      v39 = MEMORY[0x277D84F90];
    }

    else
    {
      v40 = v57;
      sub_2702341DC();
      v41 = sub_2702341BC();
      v43 = v42;
      v38(v40, v37);
      v39 = sub_270227198(0, 1, 1, MEMORY[0x277D84F90]);
      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        v39 = sub_270227198((v44 > 1), v45 + 1, 1, v39);
      }

      *(v39 + 2) = v45 + 1;
      v46 = &v39[16 * v45];
      *(v46 + 4) = v41;
      *(v46 + 5) = v43;
    }

    v47 = v62;
    sub_27023420C();
    v48 = sub_2702341EC();
    v50 = v49;
    (*(v63 + 8))(v47, v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_270227198(0, *(v39 + 2) + 1, 1, v39);
    }

    v52 = *(v39 + 2);
    v51 = *(v39 + 3);
    if (v52 >= v51 >> 1)
    {
      v39 = sub_270227198((v51 > 1), v52 + 1, 1, v39);
    }

    *(v39 + 2) = v52 + 1;
    v53 = &v39[16 * v52];
    *(v53 + 4) = v48;
    *(v53 + 5) = v50;
    v71 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4210, &qword_270235840);
    sub_27021EE40(&qword_2807C4280, &qword_2807C4210, &qword_270235840, MEMORY[0x277D83958]);
    v54 = sub_27023434C();
    v56 = v55;

    v71 = v54;
    v72 = v56;
    sub_270233DEC();
    (*(v27 + 8))(a1, v65);
    return (*(v69 + 8))(v68, v70);
  }
}

uint64_t sub_2702265B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807C3E78 != -1)
  {
    swift_once();
  }

  v2 = sub_2702340CC();
  v3 = __swift_project_value_buffer(v2, qword_2807C4590);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2702266A4(uint64_t a1)
{
  v2 = sub_2702272A8(&qword_2807C4000, type metadata accessor for IntelligenceCommandEntity, &unk_2702355B0);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_27022676C(uint64_t a1)
{
  v2 = sub_2702272A8(&qword_2807C4198, type metadata accessor for IntelligenceCommandEntity, &unk_270235788);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2702267FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IntelligenceCommandEntityID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_27023426C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_270226934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IntelligenceCommandEntityID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_27023426C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_270226A58(uint64_t a1)
{
  type metadata accessor for IntelligenceCommandEntityID(319);
  if (v1 <= 0x3F)
  {
    sub_270226C48(319, &qword_2807C41D0, &qword_2807C41D8, &qword_270235830, sub_270226BC4);
    if (v2 <= 0x3F)
    {
      sub_270226C48(319, &qword_2807C41F0, &qword_2807C41F8, &qword_270235838, sub_270226CB8);
      if (v3 <= 0x3F)
      {
        sub_270226DD0(319);
        if (v4 <= 0x3F)
        {
          sub_270226C48(319, &qword_2807C4228, &qword_2807C4230, &qword_270235848, sub_270226E80);
          if (v5 <= 0x3F)
          {
            sub_27023426C();
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

unint64_t sub_270226BF4()
{
  result = qword_2807C41E8;
  if (!qword_2807C41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C41E8);
  }

  return result;
}

void sub_270226C48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_270233E2C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_270226CB8()
{
  result = qword_2807C4200;
  if (!qword_2807C4200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C41F8, &qword_270235838);
    sub_270226D68(&qword_2807C4208, &qword_2807C4210, &qword_270235840, MEMORY[0x277CBA540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4200);
  }

  return result;
}

uint64_t sub_270226D68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_270226BF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_270226DD0(uint64_t a1)
{
  if (!qword_2807C4218)
  {
    sub_270226E2C();
    v1 = sub_270233E2C();
    if (!v2)
    {
      atomic_store(v1, &qword_2807C4218);
    }
  }
}

unint64_t sub_270226E2C()
{
  result = qword_2807C4220;
  if (!qword_2807C4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4220);
  }

  return result;
}

unint64_t sub_270226E80()
{
  result = qword_2807C4238;
  if (!qword_2807C4238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C4230, &qword_270235848);
    sub_270226F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4238);
  }

  return result;
}

unint64_t sub_270226F04()
{
  result = qword_2807C4240;
  if (!qword_2807C4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4240);
  }

  return result;
}

uint64_t sub_270226F58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4248, &qword_270235850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_270226FC0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4290, qword_270235890);
  v10 = *(sub_27023416C() - 8);
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
  v15 = *(sub_27023416C() - 8);
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

char *sub_270227198(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4288, &qword_270235878);
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

uint64_t sub_2702272A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2702272F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceCommandEntityID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_270227360()
{
  result = qword_2807C4298;
  if (!qword_2807C4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4298);
  }

  return result;
}

uint64_t sub_2702273B4()
{
  v0 = sub_27023413C();
  __swift_allocate_value_buffer(v0, qword_2807C45A8);
  __swift_project_value_buffer(v0, qword_2807C45A8);
  return sub_27023411C();
}

uint64_t sub_270227484@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = sub_27023413C();
  v14 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  sub_27023411C();
  sub_27023411C();
  v13 = *(v8 + 56);
  v13(v6, 0, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40B0, &qword_270235170);
  *(swift_allocObject() + 16) = xmmword_270234F30;
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  v13(v4, 0, 1, v14);
  v9 = v15;
  sub_270233FAC();
  v10 = sub_270233F9C();
  return (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
}

uint64_t sub_2702277B0@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42E8, &qword_270235AB0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42F0, &qword_270235AB8);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42D0, &qword_270235AA8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_270228294();
  sub_27023404C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42F8, &qword_270235AE8);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4300, &qword_270235B18);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  sub_27023405C();
  sub_27023401C();
  v10 = sub_27021EE40(&qword_2807C42D8, &qword_2807C42D0, &qword_270235AA8, MEMORY[0x277CBA2C0]);
  MEMORY[0x27439A790](v7, &type metadata for RunIntelligenceCommand, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x27439A780](v9, &type metadata for RunIntelligenceCommand, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_270227AE0@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42E8, &qword_270235AB0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42F0, &qword_270235AB8);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42D0, &qword_270235AA8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_270228294();
  sub_27023404C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42F8, &qword_270235AE8);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4300, &qword_270235B18);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4308, &unk_270235B20);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  sub_27023405C();
  sub_27023401C();
  v10 = sub_27021EE40(&qword_2807C42D8, &qword_2807C42D0, &qword_270235AA8, MEMORY[0x277CBA2C0]);
  MEMORY[0x27439A790](v7, &type metadata for RunIntelligenceCommand, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x27439A780](v9, &type metadata for RunIntelligenceCommand, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_270227E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for IntelligenceCommandEntity(0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270227F04, 0, 0);
}

uint64_t sub_270227F04(uint64_t a1)
{
  if (qword_2807C3EA0 != -1)
  {
    swift_once();
  }

  v3 = v1[4];
  v2 = v1[5];
  sub_270233E3C();
  v4 = *(v3 + 44);
  v5 = qword_2807C4630;
  v6 = unk_2807C4638;
  __swift_project_boxed_opaque_existential_1(qword_2807C4618, qword_2807C4630);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = sub_270228080;

  return v9(v2 + v4, v5, v6);
}

uint64_t sub_270228080()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_270228220;
  }

  else
  {
    v2 = sub_270228194;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_270228194()
{
  sub_270228EB0(*(v0 + 40));
  sub_27021EBFC();
  sub_270233DBC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_270228220()
{
  sub_270228EB0(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_270228294()
{
  result = qword_2807C42A0;
  if (!qword_2807C42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C42A0);
  }

  return result;
}

unint64_t sub_2702282EC()
{
  result = qword_2807C42A8;
  if (!qword_2807C42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C42A8);
  }

  return result;
}

unint64_t sub_270228344()
{
  result = qword_2807C42B0;
  if (!qword_2807C42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C42B0);
  }

  return result;
}

uint64_t sub_2702283E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807C3E80 != -1)
  {
    swift_once();
  }

  v2 = sub_27023413C();
  v3 = __swift_project_value_buffer(v2, qword_2807C45A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_270228490()
{
  v0 = sub_2702340DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42D0, &qword_270235AA8);
  sub_27021EE40(&qword_2807C42D8, &qword_2807C42D0, &qword_270235AA8, MEMORY[0x277CBA2C0]);
  sub_27021EE40(&qword_2807C42E0, &qword_2807C4088, &qword_270235140, MEMORY[0x277CB9F10]);
  return sub_27023410C();
}

uint64_t sub_270228654(uint64_t a1)
{
  v4 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27021F1C8;

  return sub_270227E70(a1, v5, v6, v4);
}

uint64_t sub_2702286F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2702287F4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_270228720(uint64_t a1)
{
  v2 = sub_270228294();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2702287F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4098, &qword_270235160);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4070, &unk_270235130);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v27 - v3;
  v35 = sub_27023406C();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4078, &unk_270235510);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_27023413C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4080, &unk_270235520);
  sub_27023411C();
  sub_27023411C();
  v17 = *(v16 + 56);
  v29 = v15;
  v17(v14, 0, 1, v15);
  sub_270233D9C();
  v30 = sub_270233DAC();
  v18 = *(v30 - 8);
  v38 = *(v18 + 56);
  v39 = v18 + 56;
  v38(v11, 0, 1, v30);
  v40 = *MEMORY[0x277CBA308];
  v19 = *(v4 + 104);
  v36 = v4 + 104;
  v37 = v19;
  v28 = v6;
  v20 = v35;
  v19(v6);
  v31 = sub_270233E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4088, &qword_270235140);
  sub_27023411C();
  sub_27023411C();
  v17(v14, 0, 1, v15);
  v21 = sub_27023436C();
  v41 = 0;
  v42 = 0;
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  sub_270233D9C();
  v22 = v30;
  v38(v11, 0, 1, v30);
  v23 = v28;
  v37(v28, v40, v20);
  v32 = sub_270233E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C42C8, &qword_270235A68);
  sub_27023411C();
  sub_27023411C();
  v17(v14, 0, 1, v29);
  v24 = type metadata accessor for IntelligenceCommandEntity(0);
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  sub_270233D9C();
  v25 = v38;
  v38(v11, 0, 1, v22);
  v25(v33, 1, 1, v22);
  v37(v23, v40, v35);
  sub_270228E58();
  sub_270233E7C();
  return v31;
}

unint64_t sub_270228E58()
{
  result = qword_2807C4000;
  if (!qword_2807C4000)
  {
    type metadata accessor for IntelligenceCommandEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4000);
  }

  return result;
}

uint64_t sub_270228EB0(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceCommandEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270228F0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_270228F38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_270228F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

unint64_t sub_270228F94()
{
  result = qword_2807C4310;
  if (!qword_2807C4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4310);
  }

  return result;
}

uint64_t sub_270228FE8()
{
  v0 = sub_27023413C();
  __swift_allocate_value_buffer(v0, qword_2807C45C0);
  __swift_project_value_buffer(v0, qword_2807C45C0);
  return sub_27023411C();
}

uint64_t sub_27022904C@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = sub_27023413C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  sub_27023411C();
  sub_27023411C();
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40B0, &qword_270235170);
  *(swift_allocObject() + 16) = xmmword_270235B30;
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  v9(v4, 0, 1, v7);
  v10 = v14;
  sub_270233FAC();
  v11 = sub_270233F9C();
  return (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
}

uint64_t sub_27022933C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4368, &qword_270235D50);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4370, &qword_270235D58);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4358, &qword_270235D48);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_270229A00();
  sub_27023404C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4378, &qword_270235D88);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4380, &qword_270235DB8);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4388, qword_270235DC0);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  sub_27023405C();
  sub_27023401C();
  v10 = sub_27021EE40(&qword_2807C4360, &qword_2807C4358, &qword_270235D48, MEMORY[0x277CBA2C0]);
  MEMORY[0x27439A790](v7, &type metadata for InsertIntelligenceText, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x27439A780](v9, &type metadata for InsertIntelligenceText, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_2702296CC@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4368, &qword_270235D50);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4370, &qword_270235D58);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4358, &qword_270235D48);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_270229A00();
  sub_27023404C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4378, &qword_270235D88);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4380, &qword_270235DB8);
  sub_27023402C();
  sub_27023410C();
  sub_27023403C();
  sub_27023405C();
  sub_27023401C();
  v10 = sub_27021EE40(&qword_2807C4360, &qword_2807C4358, &qword_270235D48, MEMORY[0x277CBA2C0]);
  MEMORY[0x27439A790](v7, &type metadata for InsertIntelligenceText, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x27439A780](v9, &type metadata for InsertIntelligenceText, v3, v10);
  return (v11)(v9, v3);
}

unint64_t sub_270229A00()
{
  result = qword_2807C4318;
  if (!qword_2807C4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4318);
  }

  return result;
}

unint64_t sub_270229A58()
{
  result = qword_2807C4320;
  if (!qword_2807C4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4320);
  }

  return result;
}

unint64_t sub_270229AB0()
{
  result = qword_2807C4328;
  if (!qword_2807C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4328);
  }

  return result;
}

uint64_t sub_270229B3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807C3E88 != -1)
  {
    swift_once();
  }

  v2 = sub_27023413C();
  v3 = __swift_project_value_buffer(v2, qword_2807C45C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_270229BE4()
{
  v0 = sub_2702340DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4358, &qword_270235D48);
  sub_27021EE40(&qword_2807C4360, &qword_2807C4358, &qword_270235D48, MEMORY[0x277CBA2C0]);
  sub_27021EE40(&qword_2807C42E0, &qword_2807C4088, &qword_270235140, MEMORY[0x277CB9F10]);
  return sub_27023410C();
}

uint64_t sub_270229DA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_270229DCC, 0, 0);
}

uint64_t sub_270229DCC(uint64_t a1)
{
  if (qword_2807C3E98 != -1)
  {
    swift_once();
  }

  sub_270233E3C();
  v3 = v1[2];
  v2 = v1[3];
  v1[6] = v2;
  v4 = qword_2807C4608;
  v5 = unk_2807C4610;
  __swift_project_boxed_opaque_existential_1(qword_2807C45F0, qword_2807C4608);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_270229F4C;

  return v8(v3, v2, v4, v5);
}

uint64_t sub_270229F4C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_27022A098, 0, 0);
  }
}

uint64_t sub_27022A098()
{

  sub_270233DCC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27022A108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27022A208();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_27022A134(uint64_t a1)
{
  v2 = sub_270229A00();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_27022A208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4070, &unk_270235130);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v22 - v1;
  v38 = sub_27023406C();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4078, &unk_270235510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_27023413C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4080, &unk_270235520);
  sub_27023411C();
  sub_27023411C();
  v12 = *(v11 + 56);
  v28 = v10;
  v12(v9, 0, 1, v10);
  v29 = v12;
  v30 = v11 + 56;
  sub_270233D9C();
  v31 = sub_270233DAC();
  v13 = *(v31 - 8);
  v14 = *(v13 + 56);
  v32 = v13 + 56;
  v14(v6, 0, 1, v31);
  v24 = v14;
  v36 = *MEMORY[0x277CBA308];
  v27 = *(v2 + 104);
  v37 = v2 + 104;
  v27(v35);
  v33 = sub_270233E8C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4088, &qword_270235140);
  sub_27023411C();
  sub_27023411C();
  v12(v9, 0, 1, v10);
  v15 = sub_27023436C();
  v39 = 0;
  v40 = 0;
  v16 = *(v15 - 8);
  v23 = *(v16 + 56);
  v25 = v16 + 56;
  v17 = v34;
  v23(v34, 1, 1, v15);
  sub_270233D9C();
  v18 = v31;
  v14(v6, 0, 1, v31);
  v19 = v35;
  v20 = v27;
  (v27)(v35, v36, v38);
  v26 = sub_270233E9C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4350, &unk_270235D10);
  sub_27023411C();
  sub_27023411C();
  v29(v9, 0, 1, v28);
  v39 = 0;
  v40 = 0;
  v23(v17, 1, 1, v15);
  sub_270233D9C();
  v24(v6, 0, 1, v18);
  (v20)(v19, v36, v38);
  sub_270233E9C();
  return v33;
}

uint64_t sub_27022A7C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_27022A7F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

uint64_t sub_27022A81C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270233E5C();
  *a1 = result;
  return result;
}

unint64_t sub_27022A84C()
{
  result = qword_2807C4390;
  if (!qword_2807C4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4390);
  }

  return result;
}

uint64_t sub_27022A8A0()
{
  v0 = sub_27023413C();
  __swift_allocate_value_buffer(v0, qword_2807C45D8);
  __swift_project_value_buffer(v0, qword_2807C45D8);
  return sub_27023411C();
}

uint64_t sub_27022A904@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = sub_27023413C();
  v14 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  sub_27023411C();
  sub_27023411C();
  v13 = *(v8 + 56);
  v13(v6, 0, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C40B0, &qword_270235170);
  *(swift_allocObject() + 16) = xmmword_270234F30;
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  sub_27023411C();
  v13(v4, 0, 1, v14);
  v9 = v15;
  sub_270233FAC();
  v10 = sub_270233F9C();
  return (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
}

uint64_t sub_27022AC2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2702342BC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27022ACEC, 0, 0);
}

uint64_t sub_27022ACEC()
{
  sub_2702342AC();
  sub_270233E3C();
  if (*(v0 + 88) == 1)
  {
    sub_27023428C();
  }

  sub_270233E3C();
  if (*(v0 + 89) == 1)
  {
    sub_27023427C();
  }

  sub_270233E3C();
  if (*(v0 + 90) == 1)
  {
    sub_27023429C();
  }

  if (qword_2807C3EA0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_27022AE38;
  v2 = *(v0 + 56);

  return sub_27022DC00(v2);
}

uint64_t sub_27022AE38(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_27022B044;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_27022AF60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27022AF60()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4028, qword_270234E30);
  sub_27022BC0C();
  sub_270233DBC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_27022B044()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_27022B0C8()
{
  result = qword_2807C4398;
  if (!qword_2807C4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4398);
  }

  return result;
}

unint64_t sub_27022B120()
{
  result = qword_2807C43A0;
  if (!qword_2807C43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C43A0);
  }

  return result;
}

unint64_t sub_27022B178()
{
  result = qword_2807C43A8;
  if (!qword_2807C43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C43A8);
  }

  return result;
}

uint64_t sub_27022B250@<X0>(uint64_t a1@<X8>)
{
  if (qword_2807C3E90 != -1)
  {
    swift_once();
  }

  v2 = sub_27023413C();
  v3 = __swift_project_value_buffer(v2, qword_2807C45D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_27022B2FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_270222688;

  return sub_27022AC2C(a1);
}

double sub_27022B3A8@<D0>(uint64_t a1@<X8>)
{
  sub_27022B4A0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_27022B3EC(uint64_t a1)
{
  v2 = sub_27022B0C8();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_27022B43C()
{
  result = qword_2807C43B0;
  if (!qword_2807C43B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C43B8, &qword_270235FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C43B0);
  }

  return result;
}

uint64_t sub_27022B4A0@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C43C0, &unk_270235FA8);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4070, &unk_270235130);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v40 - v4;
  v61 = sub_27023406C();
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4078, &unk_270235510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_27023413C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4080, &unk_270235520);
  sub_27023411C();
  v60 = *(v15 + 56);
  v60(v13, 1, 1, v14);
  v62 = sub_270233DAC();
  v16 = *(v62 - 8);
  v58 = *(v16 + 56);
  v59 = v16 + 56;
  v58(v10, 1, 1, v62);
  v17 = *MEMORY[0x277CBA308];
  v57 = *(v5 + 104);
  v49 = v7;
  v51 = v17;
  v57(v7, v17, v61);
  v42 = v5 + 104;
  v48 = v13;
  v45 = sub_270233E8C();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4088, &qword_270235140);
  sub_27023411C();
  v56 = v14;
  v18 = v60;
  v52 = v15 + 56;
  v60(v13, 1, 1, v14);
  v19 = sub_27023436C();
  v63 = 0;
  v64 = 0;
  (*(*(v19 - 8) + 56))(v55, 1, 1, v19);
  v58(v10, 1, 1, v62);
  v20 = v49;
  v21 = v17;
  v22 = v61;
  v57(v49, v21, v61);
  v23 = v48;
  v44 = sub_270233E9C();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C43C8, &qword_270235FB8);
  sub_27023411C();
  v18(v23, 1, 1, v14);
  LOBYTE(v63) = 2;
  v55 = sub_2702343EC();
  v24 = *(v55 - 1);
  v25 = *(v24 + 56);
  v53 = v24 + 56;
  v54 = v25;
  v26 = v46;
  v25(v46, 1, 1, v55);
  v27 = v62;
  v28 = v58;
  v58(v10, 1, 1, v62);
  v29 = v51;
  v30 = v22;
  v31 = v57;
  v57(v20, v51, v30);
  v43 = sub_270233EAC();
  sub_27023411C();
  v32 = v48;
  v60(v48, 1, 1, v56);
  LOBYTE(v63) = 2;
  v54(v26, 1, 1, v55);
  v28(v10, 1, 1, v27);
  v33 = v49;
  v34 = v29;
  v35 = v61;
  v31(v49, v34, v61);
  v41 = sub_270233EAC();
  sub_27023411C();
  v60(v32, 1, 1, v56);
  LOBYTE(v63) = 2;
  v54(v26, 1, 1, v55);
  v28(v10, 1, 1, v62);
  v31(v33, v51, v35);
  result = sub_270233EAC();
  v37 = v47;
  v38 = v44;
  *v47 = v45;
  v37[1] = v38;
  v39 = v41;
  v37[2] = v43;
  v37[3] = v39;
  v37[4] = result;
  return result;
}

unint64_t sub_27022BC0C()
{
  result = qword_2807C43D0;
  if (!qword_2807C43D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807C4028, qword_270234E30);
    sub_27022BC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C43D0);
  }

  return result;
}

unint64_t sub_27022BC90()
{
  result = qword_2807C4018;
  if (!qword_2807C4018)
  {
    type metadata accessor for IntelligenceCommandEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4018);
  }

  return result;
}

uint64_t sub_27022BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27021F1C8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_27022BE30()
{
  v1 = *v0;
  sub_2702344FC();
  MEMORY[0x27439AC10](v1);
  return sub_27023451C();
}

uint64_t sub_27022BEA4(uint64_t a1)
{
  v2 = *v1;
  sub_2702344FC();
  MEMORY[0x27439AC10](v2);
  return sub_27023451C();
}

uint64_t getEnumTagSinglePayload for InsertTextBridge.BridgeError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InsertTextBridge.BridgeError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27022C0CC()
{
  result = qword_2807C43D8;
  if (!qword_2807C43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C43D8);
  }

  return result;
}

uint64_t sub_27022C120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27021F1C8;

  return v9(a1, a2, a3);
}

uint64_t sub_27022C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27022C370;

  return v9(a1, a2, a3);
}

uint64_t sub_27022C370(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_27022C46C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for IntelligenceCommandEntity(0) - 8);
  v2[5] = swift_task_alloc();
  v3 = sub_27023426C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_27023416C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = *(type metadata accessor for IntelligenceCommandEntityID(0) - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_2702342BC();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27022C6D0, 0, 0);
}

uint64_t sub_27022C6D0()
{
  v1 = v0[3];
  sub_2702342AC();
  sub_27023428C();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_27022C81C;
  v5 = v0[21];

  return v7(v5, v2, v3);
}

uint64_t sub_27022C81C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_27022D0F8;
  }

  else
  {
    v4 = sub_27022C930;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27022C930()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[13];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v72 = *(v3 + 72);
    v6 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v0[18];
      v9 = v0[16];
      v10 = v0[12];
      sub_2702272F0(v5, v8);
      v11 = *v6;
      (*v6)(v9, v8, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_270226FC0(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_270226FC0((v12 > 1), v13 + 1, 1, v7);
      }

      v14 = v0[16];
      v15 = v0[12];
      *(v7 + 2) = v13 + 1;
      v11(&v7[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13], v14, v15);
      v5 += v72;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v16 = v0[23];
  v17 = sub_27022F8F4(v7);

  v63 = v16;
  v62 = *(v16 + 16);
  if (v62)
  {
    v19 = 0;
    v20 = v0[7];
    v70 = v17 + 56;
    v57 = v0[13];
    v73 = (v57 + 8);
    v58 = (v20 + 32);
    v61 = v20;
    v59 = MEMORY[0x277D84F90];
    v60 = (v20 + 8);
    while (v19 < *(v63 + 16))
    {
      v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v67 = v19;
      v64 = *(v61 + 72);
      (*(v61 + 16))(v0[11], v0[23] + v65 + v64 * v19, v0[6]);
      sub_27023418C();
      if (*(v17 + 16) && (sub_27022FA7C(&qword_2807C3FE8, MEMORY[0x277D74558]), v23 = sub_27023432C(), v24 = -1 << *(v17 + 32), v25 = v23 & ~v24, ((*(v70 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        v27 = *(v57 + 72);
        v28 = *(v57 + 16);
        while (1)
        {
          v29 = v0[14];
          v30 = v0[12];
          v31 = v17;
          v28(v29, *(v17 + 48) + v25 * v27, v30);
          sub_27022FA7C(&qword_2807C43E8, MEMORY[0x277D74560]);
          v32 = sub_27023435C();
          v33 = *v73;
          (*v73)(v29, v30);
          if (v32)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          v17 = v31;
          if (((*(v70 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v34 = v0[11];
        v35 = v0[10];
        v36 = v0[6];
        v33(v0[15], v0[12]);
        v37 = *v58;
        (*v58)(v35, v34, v36);
        v38 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27022EBD0(0, *(v59 + 16) + 1, 1);
          v38 = v59;
        }

        v17 = v31;
        v40 = *(v38 + 16);
        v39 = *(v38 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_27022EBD0((v39 > 1), v40 + 1, 1);
          v38 = v59;
        }

        v41 = v0[10];
        v42 = v0[6];
        *(v38 + 16) = v40 + 1;
        v59 = v38;
        result = v37(v38 + v65 + v40 * v64, v41, v42);
      }

      else
      {
LABEL_12:
        v21 = v0[11];
        v22 = v0[6];
        (*v73)(v0[15], v0[12]);
        result = (*v60)(v21, v22);
      }

      v19 = v67 + 1;
      if (v67 + 1 == v62)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
LABEL_27:

    v43 = *(v59 + 16);
    if (v43)
    {
      v44 = v0[7];
      v71 = v0[4];
      v74 = MEMORY[0x277D84F90];
      sub_27022EB8C(0, v43, 0);
      v45 = *(v44 + 16);
      v44 += 16;
      v46 = v59 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
      v68 = *(v44 + 56);
      v69 = v45;
      v66 = (v44 - 8);
      do
      {
        v48 = v0[8];
        v47 = v0[9];
        v50 = v0[5];
        v49 = v0[6];
        v69(v47, v46, v49);
        v69(v48, v47, v49);
        sub_270225BCC(v48, v50);
        (*v66)(v47, v49);
        v52 = *(v74 + 16);
        v51 = *(v74 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_27022EB8C((v51 > 1), v52 + 1, 1);
        }

        v53 = v0[5];
        *(v74 + 16) = v52 + 1;
        sub_270223228(v53, v74 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v52, type metadata accessor for IntelligenceCommandEntity);
        v46 += v68;
        --v43;
      }

      while (v43);
      (*(v0[20] + 8))(v0[21], v0[19]);
      sub_27023410C();

      v54 = v0[1];

      return v54(v74);
    }

    else
    {
      sub_27023410C();
      sub_2702230C0();
      swift_allocError();
      *v55 = 2;
      swift_willThrow();
      (*(v0[20] + 8))(v0[21], v0[19]);

      v56 = v0[1];

      return v56();
    }
  }

  return result;
}

uint64_t sub_27022D0F8()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27022D1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_27023426C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = *(type metadata accessor for IntelligenceCommandEntity(0) - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FD8, "f-");
  v4[12] = swift_task_alloc();
  v6 = sub_27023416C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4400, &qword_270236198);
  v4[16] = swift_task_alloc();
  v7 = sub_2702342BC();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27022D44C, 0, 0);
}

uint64_t sub_27022D44C()
{
  v1 = v0[5];
  sub_2702342AC();
  sub_27023428C();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_27022D598;
  v5 = v0[19];

  return v7(v5, v2, v3);
}

uint64_t sub_27022D598(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_27022DB30;
  }

  else
  {
    v4 = sub_27022D6AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27022D6AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  sub_27023417C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2702231C8(*(v0 + 96), &qword_2807C3FD8, "f-");
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(*(v0 + 112) + 32);
    v8(v5, *(v0 + 96), v7);
    v8(v6, v5, v7);
    v4 = 0;
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 128);
  v11 = *(v0 + 32);
  v38 = *(v0 + 16);
  v12 = type metadata accessor for IntelligenceCommandEntityID(0);
  (*(*(v12 - 8) + 56))(v10, v4, 1, v12);
  v13 = swift_task_alloc();
  *(v13 + 16) = v38;
  *(v13 + 32) = v11;
  *(v13 + 40) = v10;
  v14 = sub_27022E260(sub_27022FAC0, v13, v9);

  v15 = *(v14 + 16);
  if (v15)
  {
    v39 = *(v0 + 80);
    v16 = *(v0 + 56);
    v40 = MEMORY[0x277D84F90];
    sub_27022EB8C(0, v15, 0);
    v18 = *(v16 + 16);
    v17 = v16 + 16;
    v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v36 = *(v17 + 56);
    v37 = v18;
    do
    {
      v20 = *(v0 + 88);
      v22 = *(v0 + 64);
      v21 = *(v0 + 72);
      v23 = *(v0 + 48);
      v37(v21, v19, v23);
      v37(v22, v21, v23);
      sub_270225BCC(v22, v20);
      (*(v17 - 8))(v21, v23);
      v25 = *(v40 + 16);
      v24 = *(v40 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_27022EB8C((v24 > 1), v25 + 1, 1);
      }

      v26 = *(v0 + 88);
      *(v40 + 16) = v25 + 1;
      sub_270223228(v26, v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, type metadata accessor for IntelligenceCommandEntity);
      v19 += v36;
      --v15;
    }

    while (v15);
    v27 = *(v0 + 128);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    sub_2702231C8(v27, &qword_2807C4400, &qword_270236198);

    v28 = *(v0 + 8);

    return v28(v40);
  }

  else
  {
    v30 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);

    sub_2702230C0();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
    (*(v30 + 8))(v31, v32);
    sub_2702231C8(v33, &qword_2807C4400, &qword_270236198);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_27022DB30()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27022DC00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_27023426C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = *(type metadata accessor for IntelligenceCommandEntity(0) - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27022DD24, 0, 0);
}

uint64_t sub_27022DD24()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_27022DE50;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_27022DE50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_27022DFAC, 0, 0);
  }
}

uint64_t sub_27022DFAC()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = v0[8];
    v3 = v0[5];
    v20 = MEMORY[0x277D84F90];
    sub_27022EB8C(0, v2, 0);
    v4 = v20;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v18 = *(v3 + 56);
    v17 = (v3 - 8);
    v7 = v5;
    do
    {
      v8 = v0[9];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[4];
      v7(v9, v6, v11);
      v7(v10, v9, v11);
      sub_270225BCC(v10, v8);
      (*v17)(v9, v11);
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_27022EB8C((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[9];
      *(v20 + 16) = v13 + 1;
      sub_270223228(v14, v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v13, type metadata accessor for IntelligenceCommandEntity);
      v6 += v18;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v15 = v0[1];

  return v15(v4);
}

uint64_t sub_27022E260(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_27023426C();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;
        sub_27023410C();

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27022EBD0(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_27022EBD0((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_27022E530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v8 = sub_27023416C();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4400, &qword_270236198);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for IntelligenceCommandEntityID(0);
  v29 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_27023424C() == a2 && v16 == a3)
  {
    goto LABEL_3;
  }

  v26 = v8;
  v17 = sub_27023449C();

  if (v17)
  {
    goto LABEL_5;
  }

  if (sub_2702341AC() == a2 && v22 == a3)
  {
LABEL_3:
  }

  else
  {
    v23 = sub_27023449C();

    if ((v23 & 1) == 0)
    {
      sub_27022FAE4(v30, v12);
      if ((*(v29 + 48))(v12, 1, v13) == 1)
      {
        sub_2702231C8(v12, &qword_2807C4400, &qword_270236198);
        v21 = 0;
      }

      else
      {
        sub_270223228(v12, v15, type metadata accessor for IntelligenceCommandEntityID);
        v24 = v27;
        sub_27023418C();
        v21 = sub_27023415C();
        (*(v28 + 8))(v24, v26);
        sub_27022FB54(v15);
      }

      return v21 & 1;
    }
  }

LABEL_5:
  if (a4)
  {
    v18 = sub_27023423C();
    v19 = sub_27022E844(a4, v18);

    return v19 & 1;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_27022E844(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27023449C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_27022E8D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_27023416C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_27022FA7C(&qword_2807C3FE8, MEMORY[0x277D74558]);
  v33 = a2;
  v11 = sub_27023432C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_27022FA7C(&qword_2807C43E8, MEMORY[0x277D74560]);
      v21 = sub_27023435C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_27022F138(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void *sub_27022EB8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27022EC14(a1, a2, a3, *v3, &qword_2807C43E0, &qword_270236168, type metadata accessor for IntelligenceCommandEntity);
  *v3 = result;
  return result;
}

void *sub_27022EBD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27022EC14(a1, a2, a3, *v3, &qword_2807C43F0, &qword_270236178, MEMORY[0x277D74590]);
  *v3 = result;
  return result;
}

void *sub_27022EC14(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

  sub_27023410C();
  return v17;
}

uint64_t sub_27022EDF0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_27023416C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C43F8, &qword_270236180);
  result = sub_27023445C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_27022FA7C(&qword_2807C3FE8, MEMORY[0x277D74558]);
      result = sub_27023432C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  result = sub_27023410C();
  *v2 = v7;
  return result;
}

uint64_t sub_27022F138(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_27023416C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_27022EDF0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_27022F3B4();
      goto LABEL_12;
    }

    sub_27022F5EC(v10 + 1);
  }

  v12 = *v3;
  sub_27022FA7C(&qword_2807C3FE8, MEMORY[0x277D74558]);
  v13 = sub_27023432C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_27022FA7C(&qword_2807C43E8, MEMORY[0x277D74560]);
      v21 = sub_27023435C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2702344AC();
  __break(1u);
  return result;
}

void *sub_27022F3B4()
{
  v1 = v0;
  v2 = sub_27023416C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C43F8, &qword_270236180);
  v6 = *v0;
  v7 = sub_27023444C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        result = sub_27023410C();
        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    result = sub_27023410C();
LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_27022F5EC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_27023416C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C43F8, &qword_270236180);
  v7 = sub_27023445C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_27022FA7C(&qword_2807C3FE8, MEMORY[0x277D74558]);
      result = sub_27023432C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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
        result = sub_27023410C();
        v2 = v28;
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
    result = sub_27023410C();
LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_27022F8F4(uint64_t a1)
{
  v2 = sub_27023416C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_27022FA7C(&qword_2807C3FE8, MEMORY[0x277D74558]);
  result = MEMORY[0x27439AB30](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_27022E8D4(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_27022FA7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_27023416C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27022FAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4400, &qword_270236198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27022FB54(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceCommandEntityID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntelligenceCommandBridge.BridgeError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntelligenceCommandBridge.BridgeError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27022FD0C()
{
  result = qword_2807C4408;
  if (!qword_2807C4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4408);
  }

  return result;
}

unint64_t sub_27022FD60(unsigned __int8 a1)
{
  v1 = 0xD000000000000018;
  if (a1 <= 4u)
  {
    v6 = 0xD000000000000024;
    v7 = 0xD00000000000001FLL;
    if (a1 != 3)
    {
      v7 = 0xD000000000000021;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000020;
    if (!a1)
    {
      v8 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v3 = 0xD00000000000001DLL;
    if (a1 != 9)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000023;
    if (a1 != 6)
    {
      v4 = 0xD00000000000001ELL;
    }

    if (a1 != 5)
    {
      v1 = v4;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_27022FECC()
{
  v0 = sub_2702340CC();
  __swift_allocate_value_buffer(v0, qword_2807C4640);
  __swift_project_value_buffer(v0, qword_2807C4640);
  return sub_2702340BC();
}

uint64_t sub_27022FF30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4530, &qword_270236B90);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4538, &qword_270236B98) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_270235240;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_270233FBC();
  v4[v1] = 1;
  sub_270233FBC();
  v5 = sub_2702337FC(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2807C4658 = v5;
  return result;
}

uint64_t sub_270230090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F70707553746F6ELL;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC00000064657472;
  }

  if (*a2)
  {
    v5 = 0x6F70707553746F6ELL;
  }

  else
  {
    v5 = 0x73736563637573;
  }

  if (*a2)
  {
    v6 = 0xEC00000064657472;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27023449C();
  }

  return v8 & 1;
}

unint64_t sub_270230144()
{
  result = qword_2807C4410;
  if (!qword_2807C4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4410);
  }

  return result;
}

uint64_t sub_270230198()
{
  sub_2702344FC();
  sub_2702343CC();

  return sub_27023451C();
}

uint64_t sub_270230224(uint64_t a1)
{
  sub_2702343CC();
}

uint64_t sub_27023029C(uint64_t a1)
{
  sub_2702344FC();
  sub_2702343CC();

  return sub_27023451C();
}

uint64_t sub_270230324@<X0>(char *a2@<X8>)
{
  v3 = sub_27023447C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_270230384(uint64_t *a1@<X8>)
{
  v2 = 0x73736563637573;
  if (*v1)
  {
    v2 = 0x6F70707553746F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC00000064657472;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2702303D0()
{
  result = qword_2807C4418;
  if (!qword_2807C4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4418);
  }

  return result;
}

unint64_t sub_270230428()
{
  result = qword_2807C4420;
  if (!qword_2807C4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4420);
  }

  return result;
}

unint64_t sub_270230480()
{
  result = qword_2807C4428;
  if (!qword_2807C4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4428);
  }

  return result;
}

unint64_t sub_2702304E4()
{
  result = qword_2807C4430;
  if (!qword_2807C4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4430);
  }

  return result;
}

unint64_t sub_27023053C()
{
  result = qword_2807C4438;
  if (!qword_2807C4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4438);
  }

  return result;
}

unint64_t sub_270230598()
{
  result = qword_2807C4440;
  if (!qword_2807C4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4440);
  }

  return result;
}

unint64_t sub_270230650()
{
  result = qword_2807C4448;
  if (!qword_2807C4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4448);
  }

  return result;
}

uint64_t sub_2702306A4(uint64_t a1)
{
  v2 = sub_270230650();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2702306F4()
{
  result = qword_2807C4450;
  if (!qword_2807C4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4450);
  }

  return result;
}

unint64_t sub_27023074C()
{
  result = qword_2807C4458;
  if (!qword_2807C4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4458);
  }

  return result;
}

unint64_t sub_2702307A4()
{
  result = qword_2807C4460;
  if (!qword_2807C4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4460);
  }

  return result;
}

uint64_t sub_27023081C(uint64_t a1)
{
  v2 = sub_270230598();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2702308C0()
{
  result = qword_2807C4478;
  if (!qword_2807C4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4478);
  }

  return result;
}

uint64_t sub_270230938(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_27023441C();
  *(v1 + 24) = sub_27023440C();
  v3 = sub_2702343FC();

  return MEMORY[0x2822009F8](sub_2702309D0, v3, v2);
}

uint64_t sub_2702309D0()
{
  sub_27023410C();
  type metadata accessor for WritingTools_UIKit();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 _responderForKeyEvents];

  if (v3)
  {
    *(v1 + 16) = v3;
    if ([v3 _supportsWritingTools])
    {
      v4 = *(v1 + 16);
      v5 = sub_2702343BC();
      [v4 _startWritingToolsWithTool_prompt_sender_];

      *(v0 + 32) = 0;
    }

    else
    {
      *(v0 + 32) = 1;
    }

    sub_270224A10();
    sub_270233DBC();
    sub_27023410C();
  }

  else
  {
    swift_deallocPartialClassInstance();
    *(v0 + 32) = 1;
    sub_270224A10();
    sub_270233DBC();
  }

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_270230B84()
{
  result = qword_2807C4480;
  if (!qword_2807C4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4480);
  }

  return result;
}

unint64_t sub_270230BDC()
{
  result = qword_2807C4488;
  if (!qword_2807C4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4488);
  }

  return result;
}

uint64_t sub_270230CD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_270233C80;

  return sub_270230938(a1);
}

uint64_t sub_270230D68@<X0>(uint64_t *a2@<X8>)
{
  result = sub_270232DD0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_270230D90(uint64_t a1)
{
  v2 = sub_270223BF4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_270230DD0()
{
  result = qword_2807C4490;
  if (!qword_2807C4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4490);
  }

  return result;
}

uint64_t sub_270230E44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_27023413C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_27023411C();
}

uint64_t sub_270230EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  sub_27023441C();
  v5[7] = sub_27023440C();
  v7 = sub_2702343FC();

  return MEMORY[0x2822009F8](sub_270230F40, v7, v6);
}

uint64_t sub_270230F40()
{
  sub_27023410C();
  type metadata accessor for WritingTools_UIKit();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 _responderForKeyEvents];

  if (v3)
  {
    *(v1 + 16) = v3;
    if ([v3 _supportsWritingTools])
    {
      sub_270233E3C();
      v4 = *(v0 + 16);
      sub_270233E3C();
      v5 = *(v0 + 24);
      v6 = *(v1 + 16);
      sub_27022FD60(v4);
      v7 = v6;
      v8 = sub_2702343BC();

      if (v5)
      {
        v9 = sub_2702343BC();
      }

      else
      {
        v9 = 0;
      }

      [v7 _startWritingToolsWithTool_prompt_sender_];

      *(v0 + 16) = 0;
      sub_270224A10();
    }

    else
    {
      *(v0 + 16) = 1;
      sub_270224A10();
    }

    sub_270233DBC();
    sub_27023410C();
  }

  else
  {
    swift_deallocPartialClassInstance();
    *(v0 + 16) = 1;
    sub_270224A10();
    sub_270233DBC();
  }

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_270231168()
{
  result = qword_2807C4498;
  if (!qword_2807C4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C4498);
  }

  return result;
}

unint64_t sub_2702311C0()
{
  result = qword_2807C44A0;
  if (!qword_2807C44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44A0);
  }

  return result;
}

uint64_t sub_2702312AC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_270231354(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27021F1C8;

  return sub_270230EA4(a1, v6, v7, v5, v4);
}

uint64_t sub_270231400@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2702331D0();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_27023142C(uint64_t a1)
{
  v2 = sub_270223C48();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_270231468()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FA8, &unk_270235880);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v50 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_27023413C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4510, &qword_270236B60);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4518, &qword_270236B68);
  v8 = *(v57 - 8);
  v61 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v52 = v10;
  *(v10 + 16) = xmmword_2702362A0;
  v11 = v10 + v9;
  *(v10 + v9) = 0;
  sub_27023411C();
  v60 = *(v7 + 56);
  v53 = v7 + 56;
  v12 = v6;
  v55 = v6;
  v60(v5, 1, 1, v6);
  v59 = sub_270233FCC();
  v13 = *(v59 - 8);
  v58 = *(v13 + 56);
  v14 = v13 + 56;
  v58(v2, 1, 1, v59);
  v54 = v14;
  v56 = v11;
  v15 = v5;
  v16 = v2;
  sub_270233FDC();
  v17 = v61;
  v18 = v57;
  v51 = *(v57 + 48);
  *(v11 + v61) = 1;
  sub_27023411C();
  v19 = v60;
  v60(v15, 1, 1, v12);
  v20 = v58;
  v58(v16, 1, 1, v59);
  sub_270233FDC();
  v51 = 2 * v17;
  v21 = v56;
  v50 = *(v18 + 48);
  *(v56 + 2 * v17) = 2;
  sub_27023411C();
  v22 = v55;
  v19(v15, 1, 1, v55);
  v23 = v59;
  v20(v16, 1, 1, v59);
  sub_270233FDC();
  v24 = v61;
  v25 = (v21 + v51 + v61);
  v26 = v57;
  v51 = *(v57 + 48);
  *v25 = 3;
  sub_27023411C();
  v60(v15, 1, 1, v22);
  v58(v16, 1, 1, v23);
  sub_270233FDC();
  v51 = 4 * v24;
  v50 = *(v26 + 48);
  *(v21 + 4 * v24) = 4;
  sub_27023411C();
  v27 = v55;
  v28 = v60;
  v60(v15, 1, 1, v55);
  v29 = v58;
  v58(v16, 1, 1, v59);
  sub_270233FDC();
  v30 = v51 + v24;
  v31 = v56;
  v51 = *(v26 + 48);
  *(v56 + v30) = 5;
  sub_27023411C();
  v28(v15, 1, 1, v27);
  v32 = v59;
  v29(v16, 1, 1, v59);
  sub_270233FDC();
  v33 = v57;
  v51 = *(v57 + 48);
  *(v31 + 6 * v61) = 6;
  sub_27023411C();
  v34 = v60;
  v60(v15, 1, 1, v55);
  v29(v16, 1, 1, v32);
  sub_270233FDC();
  v35 = v56;
  v50 = *(v33 + 48);
  v51 = 8 * v61;
  *(v56 + 7 * v61) = 7;
  sub_27023411C();
  v36 = v55;
  v34(v15, 1, 1, v55);
  v37 = v32;
  v38 = v58;
  v58(v16, 1, 1, v37);
  sub_270233FDC();
  v39 = v51;
  v40 = (v35 + v51);
  v41 = v57;
  v50 = *(v57 + 48);
  *v40 = 8;
  sub_27023411C();
  v42 = v36;
  v43 = v60;
  v60(v15, 1, 1, v42);
  v38(v16, 1, 1, v59);
  sub_270233FDC();
  v44 = v56;
  v51 = *(v41 + 48);
  *(v56 + v39 + v61) = 9;
  sub_27023411C();
  v45 = v55;
  v43(v15, 1, 1, v55);
  v46 = v58;
  v47 = v59;
  v58(v16, 1, 1, v59);
  sub_270233FDC();
  *(v44 + 10 * v61) = 10;
  sub_27023411C();
  v60(v15, 1, 1, v45);
  v46(v16, 1, 1, v47);
  sub_270233FDC();
  v48 = sub_2702339E4(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2807C4690 = v48;
  return result;
}

uint64_t sub_270231D50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_27022FD60(*a1);
  v5 = v4;
  if (v3 == sub_27022FD60(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27023449C();
  }

  return v8 & 1;
}

unint64_t sub_270231DDC()
{
  result = qword_2807C44A8;
  if (!qword_2807C44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44A8);
  }

  return result;
}

uint64_t sub_270231E30()
{
  v1 = *v0;
  sub_2702344FC();
  sub_27022FD60(v1);
  sub_2702343CC();

  return sub_27023451C();
}

uint64_t sub_270231E94(uint64_t a1)
{
  sub_27022FD60(*v1);
  sub_2702343CC();
}

uint64_t sub_270231EE8(uint64_t a1)
{
  v2 = *v1;
  sub_2702344FC();
  sub_27022FD60(v2);
  sub_2702343CC();

  return sub_27023451C();
}

unint64_t sub_270231F48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270233BCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_270231F78@<X0>(unint64_t *a1@<X8>)
{
  result = sub_27022FD60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_270231FA8()
{
  result = qword_2807C44B0;
  if (!qword_2807C44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44B0);
  }

  return result;
}

unint64_t sub_270232000()
{
  result = qword_2807C44B8;
  if (!qword_2807C44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44B8);
  }

  return result;
}

unint64_t sub_270232058()
{
  result = qword_2807C44C0;
  if (!qword_2807C44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44C0);
  }

  return result;
}

unint64_t sub_2702320B0()
{
  result = qword_2807C44C8;
  if (!qword_2807C44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44C8);
  }

  return result;
}

unint64_t sub_270232108()
{
  result = qword_2807C44D0;
  if (!qword_2807C44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44D0);
  }

  return result;
}

unint64_t sub_270232164()
{
  result = qword_2807C44D8;
  if (!qword_2807C44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44D8);
  }

  return result;
}

unint64_t sub_27023224C()
{
  result = qword_2807C44E0;
  if (!qword_2807C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44E0);
  }

  return result;
}

uint64_t sub_2702322A0(uint64_t a1)
{
  v2 = sub_27023224C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2702322F0()
{
  result = qword_2807C44E8;
  if (!qword_2807C44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44E8);
  }

  return result;
}

unint64_t sub_270232348()
{
  result = qword_2807C44F0;
  if (!qword_2807C44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44F0);
  }

  return result;
}

unint64_t sub_2702323A0()
{
  result = qword_2807C44F8;
  if (!qword_2807C44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C44F8);
  }

  return result;
}

uint64_t sub_270232418(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_27023247C(uint64_t a1)
{
  v2 = sub_270232164();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for RewriteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RewriteType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_270232678(uint64_t *a1, int a2)
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

uint64_t sub_2702326C0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27023271C(uint64_t *a1, int a2)
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

uint64_t sub_270232764(uint64_t result, int a2, int a3)
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

unint64_t sub_270232804(char a1)
{
  sub_2702344FC();
  sub_2702343CC();

  v2 = sub_27023451C();

  return sub_27023293C(a1 & 1, v2);
}

unint64_t sub_2702328B4(uint64_t a1)
{
  v1 = a1;
  sub_2702344FC();
  sub_27022FD60(v1);
  sub_2702343CC();

  v2 = sub_27023451C();

  return sub_270232A8C(v1, v2);
}

unint64_t sub_27023293C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F70707553746F6ELL;
    }

    else
    {
      v6 = 0x73736563637573;
    }

    if (a1)
    {
      v7 = 0xEC00000064657472;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6F70707553746F6ELL : 0x73736563637573;
      v9 = *(*(v2 + 48) + v4) ? 0xEC00000064657472 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_27023449C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_270232A8C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 4)
      {
        v10 = 0xD00000000000001ALL;
        v11 = 0xD000000000000024;
        v12 = 0xD00000000000001FLL;
        if (v7 != 3)
        {
          v12 = 0xD000000000000021;
        }

        v13 = "lRewriteProfessional";
        if (v7 != 3)
        {
          v13 = "WTUIRequestedToolRewriteConcise";
        }

        if (v7 != 2)
        {
          v11 = v12;
        }

        v14 = "lRewriteFriendly";
        if (v7 != 2)
        {
          v14 = v13;
        }

        if (*(*(v2 + 48) + v4))
        {
          v10 = 0xD000000000000020;
        }

        v15 = "success";
        if (*(*(v2 + 48) + v4))
        {
          v15 = "WTUIRequestedToolRewriting";
        }

        v8 = *(*(v2 + 48) + v4) <= 1u ? v10 : v11;
        v9 = *(*(v2 + 48) + v4) <= 1u ? v15 : v14;
      }

      else if (*(*(v2 + 48) + v4) > 7u)
      {
        if (v7 == 8)
        {
          v8 = 0xD00000000000001FLL;
          v9 = "WTUIRequestedToolTransformList";
        }

        else if (v7 == 9)
        {
          v8 = 0xD00000000000001DLL;
          v9 = "WTUIRequestedToolTransformTable";
        }

        else
        {
          v8 = 0xD000000000000018;
          v9 = "WTUIRequestedToolProofreading";
        }
      }

      else if (v7 == 5)
      {
        v8 = 0xD000000000000018;
        v9 = "lRewriteOpenEnded";
      }

      else if (v7 == 6)
      {
        v8 = 0xD000000000000023;
        v9 = "WTUIRequestedToolSummary";
      }

      else
      {
        v8 = 0xD00000000000001ELL;
        v9 = "lTransformKeyPoints";
      }

      if (v6 <= 4)
      {
        if (v6 <= 1)
        {
          v16 = v6 ? 0xD000000000000020 : 0xD00000000000001ALL;
          v17 = "success";
          if (v6)
          {
            v17 = "WTUIRequestedToolRewriting";
          }
        }

        else if (v6 == 2)
        {
          v16 = 0xD000000000000024;
          v17 = "lRewriteFriendly";
        }

        else if (v6 == 3)
        {
          v16 = 0xD00000000000001FLL;
          v17 = "lRewriteProfessional";
        }

        else
        {
          v16 = 0xD000000000000021;
          v17 = "WTUIRequestedToolRewriteConcise";
        }
      }

      else if (v6 > 7)
      {
        if (v6 == 8)
        {
          v16 = 0xD00000000000001FLL;
          v17 = "WTUIRequestedToolTransformList";
        }

        else if (v6 == 9)
        {
          v16 = 0xD00000000000001DLL;
          v17 = "WTUIRequestedToolTransformTable";
        }

        else
        {
          v16 = 0xD000000000000018;
          v17 = "WTUIRequestedToolProofreading";
        }
      }

      else if (v6 == 5)
      {
        v16 = 0xD000000000000018;
        v17 = "lRewriteOpenEnded";
      }

      else if (v6 == 6)
      {
        v16 = 0xD000000000000023;
        v17 = "WTUIRequestedToolSummary";
      }

      else
      {
        v16 = 0xD00000000000001ELL;
        v17 = "lTransformKeyPoints";
      }

      if (v8 == v16 && (v9 | 0x8000000000000000) == (v17 | 0x8000000000000000))
      {
        break;
      }

      v18 = sub_27023449C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_270232DD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4070, &unk_270235130);
  MEMORY[0x28223BE20](v0 - 8);
  v28 = v20 - v1;
  v27 = sub_27023406C();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4078, &unk_270235510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = sub_27023413C();
  v20[0] = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4080, &unk_270235520);
  sub_27023411C();
  v12 = *(v11 + 56);
  v12(v9, 1, 1, v10);
  v13 = sub_270233DAC();
  v14 = *(v13 - 8);
  v23 = *(v14 + 56);
  v24 = v14 + 56;
  v23(v6, 1, 1, v13);
  v22 = *MEMORY[0x277CBA308];
  v15 = *(v2 + 104);
  v20[1] = v2 + 104;
  v21 = v15;
  v16 = v26;
  v17 = v27;
  v15(v26);
  v25 = sub_270233E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4088, &qword_270235140);
  sub_27023411C();
  v12(v9, 1, 1, v20[0]);
  v18 = sub_27023436C();
  v29 = 0;
  v30 = 0;
  (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  v23(v6, 1, 1, v13);
  v21(v16, v22, v17);
  sub_270233E9C();
  return v25;
}

uint64_t sub_2702331D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4070, &unk_270235130);
  MEMORY[0x28223BE20](v0 - 8);
  v47 = v32 - v1;
  v42 = sub_27023406C();
  v49 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4078, &unk_270235510);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v40 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C3FB0, ":.");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v32 - v10;
  v12 = sub_27023413C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4080, &unk_270235520);
  sub_27023411C();
  v16 = *(v13 + 56);
  v16(v11, 1, 1, v12);
  v45 = v13 + 56;
  v48 = sub_270233DAC();
  v17 = *(v48 - 8);
  v43 = *(v17 + 56);
  v18 = v17 + 56;
  v43(v8, 1, 1, v48);
  v41 = v18;
  v34 = *MEMORY[0x277CBA308];
  v46 = *(v49 + 104);
  v49 += 104;
  v46(v3);
  v19 = v8;
  v39 = sub_270233E8C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4088, &qword_270235140);
  v20 = v15;
  sub_27023411C();
  v21 = v11;
  v33 = v12;
  v16(v11, 1, 1, v12);
  v36 = sub_27023436C();
  v50 = 0;
  v51 = 0;
  v22 = *(v36 - 8);
  v35 = *(v22 + 56);
  v37 = v22 + 56;
  v35(v47, 1, 1, v36);
  v23 = v19;
  v24 = v43;
  v43(v19, 1, 1, v48);
  v25 = v3;
  v26 = v3;
  v27 = v34;
  v28 = v42;
  (v46)(v26, v34, v42);
  v32[0] = v20;
  v38 = sub_270233E9C();
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4528, &qword_270236B78);
  sub_27023411C();
  v16(v21, 1, 1, v12);
  LOBYTE(v50) = 0;
  v29 = v48;
  v24(v23, 1, 1, v48);
  v24(v40, 1, 1, v29);
  v30 = v46;
  (v46)(v25, v27, v28);
  sub_27023224C();
  sub_270233E6C();
  sub_27023411C();
  v16(v21, 1, 1, v33);
  v50 = 0;
  v51 = 0;
  v35(v47, 1, 1, v36);
  v43(v23, 1, 1, v48);
  v30(v25, v27, v42);
  sub_270233E9C();
  return v39;
}

unint64_t sub_2702337FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4538, &qword_270236B98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4540, &unk_270236BA0);
    v7 = sub_27023446C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_270233EBC();
    while (1)
    {
      sub_270233C18(v9, v5, &qword_2807C4538, &qword_270236B98);
      v11 = *v5;
      result = sub_270232804(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_270233FEC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        sub_27023410C();
        return v7;
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

unint64_t sub_2702339E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4518, &qword_270236B68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C4520, &qword_270236B70);
    v7 = sub_27023446C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_270233EBC();
    while (1)
    {
      sub_270233C18(v9, v5, &qword_2807C4518, &qword_270236B68);
      v11 = *v5;
      result = sub_2702328B4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_270233FEC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        sub_27023410C();
        return v7;
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

unint64_t sub_270233BCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_27023447C();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_270233C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}