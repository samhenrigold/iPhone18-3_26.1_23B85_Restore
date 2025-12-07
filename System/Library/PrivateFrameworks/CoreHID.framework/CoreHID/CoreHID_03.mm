uint64_t sub_2455D76A4()
{
  (*(v0 + 32))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_2455D7718@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = (*(**a1 + 872))(&v5, *a2, a2[1]);
  *a3 = v5;
  return result;
}

uint64_t sub_2455D7780(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a2;
  v8 = *a1;
  v6 = *(*v5 + 880);
  swift_unknownObjectRetain();

  return v6(&v8, v3, v4);
}

void sub_2455D7808(void *a3@<X8>)
{
  v5 = *(v3 + 296);
  v6 = sub_2455E9B60();
  v7 = IOHIDDeviceGetProperty(v5, v6);

  *a3 = v7;
}

uint64_t sub_2455D785C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 296);
  v5 = sub_2455E9B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15170, qword_2455F1648);
  v6 = sub_2455E9D40();
  swift_unknownObjectRelease();
  IOHIDDeviceSetProperty(v4, v5, v6);

  return swift_unknownObjectRelease();
}

void (*sub_2455D78FC(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a2;
  v7[3] = a3;
  v9 = *(v3 + 296);
  v7[4] = v9;
  v10 = sub_2455E9B60();
  v11 = IOHIDDeviceGetProperty(v9, v10);

  *v8 = v11;
  return sub_2455D79B4;
}

void sub_2455D79B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[4];
  if (a2)
  {
    swift_unknownObjectRetain();
    v5 = sub_2455E9B60();
    v2[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15170, qword_2455F1648);
    v6 = sub_2455E9D40();
    swift_unknownObjectRelease();
    IOHIDDeviceSetProperty(v4, v5, v6);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_2455E9B60();
    v2[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15170, qword_2455F1648);
    v8 = sub_2455E9D40();
    swift_unknownObjectRelease();
    IOHIDDeviceSetProperty(v4, v7, v8);
    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t sub_2455D7ACC(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = v7;
  *(v8 + 101) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 24) = a3;
  *(v8 + 102) = *a1;
  *(v8 + 103) = *a2;
  *(v8 + 104) = a2[1];
  return MEMORY[0x2822009F8](sub_2455D7B10, v7, 0);
}

uint64_t sub_2455D7B10()
{
  (*(**(v0 + 56) + 816))(0, 0);
  v14 = *(v0 + 102);
  v15 = *(v0 + 104);
  v1 = *(v0 + 48);
  v13 = *(v0 + 56);
  v2 = *(v0 + 101);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  v6 = swift_slowAlloc();
  *(v0 + 64) = v6;
  v8 = sub_2455E6848(&qword_27EE15178, v7, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  *(v9 + 32) = v1;
  *(v9 + 40) = v2 & 1;
  *(v9 + 48) = v5;
  *(v9 + 56) = v4;
  *(v9 + 64) = v13;
  *(v9 + 72) = v14;
  *(v9 + 74) = v15;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_2455D7E5C;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, v13, v8, 0xD00000000000002FLL, 0x80000002455F31D0, sub_2455E6890, v9, v11);
}

uint64_t sub_2455D7E5C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_2455D8020;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2455D7F84;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2455D7F84()
{
  v1 = *(v0 + 64);
  (*(**(v0 + 56) + 824))();
  MEMORY[0x245D6C8C0](v1, -1, -1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2455D8020()
{
  v1 = *(v0 + 64);

  MEMORY[0x245D6C8C0](v1, -1, -1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2455D8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9, __int16 a10)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  v17 = (*(*(v16 - 8) + 24))(a2, a1, v16);
  if ((a5 & 1) == 0)
  {
    sub_2455EA100();
    v17 = sub_2455EA100();
  }

  v19[2] = a8;
  v20 = a9;
  v21 = a10 & 0x1FF;
  v22 = a6;
  v23 = a7;
  v24 = MEMORY[0x28223BE20](v17);
  v25 = a2;
  v26 = a1;
  return sub_2455AC860(sub_2455E91E4, v19, a6, a7);
}

uint64_t sub_2455D8218(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = v5;
  *(v6 + 117) = a5;
  *(v6 + 40) = a3;
  *(v6 + 118) = *a1;
  *(v6 + 119) = *a2;
  *(v6 + 120) = a2[1];
  return MEMORY[0x2822009F8](sub_2455D8258, v5, 0);
}

uint64_t sub_2455D8258()
{
  (*(**(v0 + 56) + 816))(0, 0);
  v14 = *(v0 + 118);
  v15 = *(v0 + 120);
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v13 = *(v0 + 117);
  v3 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15180, &qword_2455F1668);
  v4 = swift_slowAlloc();
  *(v0 + 64) = v4;
  v5 = swift_slowAlloc();
  *(v0 + 72) = v5;
  (*(*v1 + 832))();
  v6 = swift_slowAlloc();
  *(v0 + 80) = v6;
  v8 = sub_2455E6848(&qword_27EE15178, v7, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v1;
  *(v9 + 40) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v13 & 1;
  *(v9 + 57) = v14;
  *(v9 + 59) = v15;
  *(v9 + 64) = v6;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_2455D8600;
  v11 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, v1, v8, 0xD00000000000002ALL, 0x80000002455F3200, sub_2455E68DC, v9, v11);
}

uint64_t sub_2455D8600()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_2455D8804;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2455D8728;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2455D8728()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  (*(**(v0 + 56) + 824))();
  MEMORY[0x245D6C8C0](v3, -1, -1);
  MEMORY[0x245D6C8C0](v2, -1, -1);
  MEMORY[0x245D6C8C0](v1, -1, -1);
  v6 = *(v0 + 8);

  return v6(v4, v5);
}

uint64_t sub_2455D8804()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];

  MEMORY[0x245D6C8C0](v3, -1, -1);
  MEMORY[0x245D6C8C0](v2, -1, -1);
  MEMORY[0x245D6C8C0](v1, -1, -1);
  v4 = v0[1];

  return v4();
}

uint64_t HIDDeviceClient.ProvideElementUpdate.init(values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2455E9E70();
  result = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t static HIDDeviceClient.ProvideElementUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2455E9E80() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2455D8B8C(v5, v6);
}

uint64_t sub_2455D89C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v49 = v2;
  v50 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v36 = v5[4];
    v37 = v8;
    v38[0] = v5[6];
    v9 = v38[0];
    *(v38 + 9) = *(v5 + 105);
    v10 = v5[1];
    v33[0] = *v5;
    v33[1] = v10;
    v11 = v5[3];
    v34 = v5[2];
    v35 = v11;
    v26 = v33[0];
    v27 = v10;
    v28 = v34;
    v29 = v11;
    v30 = v36;
    v31 = v8;
    v32[0] = v9;
    *(v32 + 9) = *(v38 + 9);
    v12 = v6[5];
    v42 = v6[4];
    v43 = v12;
    v44[0] = v6[6];
    v13 = v44[0];
    *(v44 + 9) = *(v6 + 105);
    v14 = v6[1];
    v39[0] = *v6;
    v39[1] = v14;
    v15 = v6[3];
    v40 = v6[2];
    v41 = v15;
    v19 = v39[0];
    v20 = v14;
    v21 = v40;
    v22 = v15;
    v23 = v42;
    v24 = v12;
    v25[0] = v13;
    *(v25 + 9) = *(v44 + 9);
    sub_2455A5D68(v33, v18);
    sub_2455A5D68(v39, v18);
    sub_2455A700C();
    v16 = sub_2455E9B50();
    v45[4] = v23;
    v45[5] = v24;
    v46[0] = v25[0];
    *(v46 + 9) = *(v25 + 9);
    v45[0] = v19;
    v45[1] = v20;
    v45[2] = v21;
    v45[3] = v22;
    sub_2455A5DA0(v45);
    v47[4] = v30;
    v47[5] = v31;
    v48[0] = v32[0];
    *(v48 + 9) = *(v32 + 9);
    v47[0] = v26;
    v47[1] = v27;
    v47[2] = v28;
    v47[3] = v29;
    sub_2455A5DA0(v47);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 8;
    v6 += 8;
  }

  return 1;
}

uint64_t sub_2455D8B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDElement.Value(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2455E661C(v13, v10, type metadata accessor for HIDElement.Value);
        sub_2455E661C(v14, v6, type metadata accessor for HIDElement.Value);
        sub_2455E6848(&qword_27EE14E90, 255, type metadata accessor for HIDElement.Value, &protocol conformance descriptor for HIDElement.Value);
        v16 = sub_2455E9B50();
        sub_2455E6788(v6, type metadata accessor for HIDElement.Value);
        sub_2455E6788(v10, type metadata accessor for HIDElement.Value);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t HIDDeviceClient.ProvideElementUpdate.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for HIDElement.Value(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2455E9E90();
  sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938], MEMORY[0x277D85940]);
  sub_2455E9B00();
  v6 = *(v1 + *(type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0) + 20));
  result = MEMORY[0x245D6BE80](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_2455E661C(v9, v5, type metadata accessor for HIDElement.Value);
      sub_2455E6848(&qword_27EE15188, 255, type metadata accessor for HIDElement.Value, &protocol conformance descriptor for HIDElement.Value);
      sub_2455E9B00();
      result = sub_2455E6788(v5, type metadata accessor for HIDElement.Value);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2455D8FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2455E9E80() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2455D8B8C(v7, v8);
}

uint64_t sub_2455D9010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2455E9E90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2455D9090(uint64_t (*a1)(void))
{
  a1(0);
}

uint64_t sub_2455D90E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t HIDDeviceClient.RequestElementUpdate.pollDevice.setter(char a1)
{
  result = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t HIDDeviceClient.RequestElementUpdate.init(elements:pollDevice:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2455E9E70();
  result = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t static HIDDeviceClient.RequestElementUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_2455E9E80() & 1) != 0 && (v4 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0), (sub_2455D89C8(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t HIDDeviceClient.RequestElementUpdate.hash(into:)(uint64_t a1)
{
  sub_2455E9E90();
  sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938], MEMORY[0x277D85940]);
  sub_2455E9B00();
  v2 = *(v1 + *(type metadata accessor for HIDDeviceClient.RequestElementUpdate(0) + 20));
  MEMORY[0x245D6BE80](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[3];
      v12[2] = v4[2];
      v12[3] = v7;
      v12[0] = v5;
      v12[1] = v6;
      v8 = v4[4];
      v9 = v4[5];
      v10 = v4[6];
      *&v13[9] = *(v4 + 105);
      v12[5] = v9;
      *v13 = v10;
      v12[4] = v8;
      memmove(__dst, v4, 0x79uLL);
      sub_2455A5D68(v12, v14);
      sub_2455A5F88();
      sub_2455E9B00();
      v14[4] = __dst[4];
      v14[5] = __dst[5];
      v15[0] = v17[0];
      *(v15 + 9) = *(v17 + 9);
      v14[0] = __dst[0];
      v14[1] = __dst[1];
      v14[2] = __dst[2];
      v14[3] = __dst[3];
      sub_2455A5DA0(v14);
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return sub_2455EA0A0();
}

uint64_t sub_2455D946C(uint64_t (*a1)(void *))
{
  sub_2455EA080();
  a1(v3);
  return sub_2455EA0D0();
}

uint64_t sub_2455D94CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_2455EA080();
  a3(v5);
  return sub_2455EA0D0();
}

uint64_t sub_2455D9530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2455EA080();
  a4(v6);
  return sub_2455EA0D0();
}

uint64_t sub_2455D9574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2455E9E80() & 1) != 0 && (sub_2455D89C8(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2455D95E8(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2455D963C(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2455D9688(uint64_t a1, void *a2)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15190, &qword_2455F1670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15198, &qword_2455F1678);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2455ABC88(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v14);
    sub_2455E6F48(v13, v17, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    v20 = v34;
    v21 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *v3;
    sub_2455E5648(v20, 1, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v35[0];
    v23 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate;
    v24 = v17;
    return sub_2455E6788(v24, v23);
  }

  v25 = v34;
  v19(v13, 1, 1, v14);
  sub_2455A7680(v13, &qword_27EE15198, &qword_2455F1678);
  sub_2455ABC88(a1, v35);
  v26 = swift_dynamicCast();
  v27 = *(v9 + 56);
  if (v26)
  {
    v27(v7, 0, 1, v8);
    v28 = v33;
    sub_2455E6F48(v7, v33, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
    v29 = v25;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v3[1];
    sub_2455E5414(v25, 1, v28, v30);
    v3[1] = v35[0];
    v23 = type metadata accessor for HIDDeviceClient.RequestElementUpdate;
    v24 = v28;
    return sub_2455E6788(v24, v23);
  }

  v27(v7, 1, 1, v8);
  return sub_2455A7680(v7, &qword_27EE15190, &qword_2455F1670);
}

id HIDDeviceClient.HIDElementUpdateResult.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_2455E347C(a1, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 56) + 16 * v3;
  v6 = *v5;
  sub_2455E6FB0(*v5, *(v5 + 8));
  return v6;
}

{
  v2 = *(v1 + 8);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_2455E347C(a1, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 56) + 16 * v3;
  v6 = *v5;
  sub_2455E6FBC(*v5, *(v5 + 8));
  return v6;
}

unint64_t sub_2455D9B7C@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = sub_2455E6B10(MEMORY[0x277D84F90]);
  result = sub_2455E6D2C(v2);
  a1[1] = result;
  return result;
}

uint64_t sub_2455D9BD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2455D9BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 880) = v5;
  *(v6 + 301) = a5;
  *(v6 + 872) = a4;
  *(v6 + 864) = a3;
  *(v6 + 856) = a2;
  *(v6 + 848) = a1;
  sub_2455E9E90();
  *(v6 + 888) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15190, &qword_2455F1670);
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();
  v7 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  *(v6 + 912) = v7;
  *(v6 + 920) = *(v7 - 8);
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  *(v6 + 944) = swift_task_alloc();
  *(v6 + 952) = swift_task_alloc();
  v8 = type metadata accessor for HIDElement.Value(0);
  *(v6 + 960) = v8;
  *(v6 + 968) = *(v8 - 8);
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15198, &qword_2455F1678);
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  v9 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  *(v6 + 1008) = v9;
  *(v6 + 1016) = *(v9 - 8);
  *(v6 + 1024) = swift_task_alloc();
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2455D9E98, v5, 0);
}

uint64_t sub_2455D9E98()
{
  v2 = *(v0 + 301);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 688) = sub_2455E6B10(MEMORY[0x277D84F90]);
  *(v0 + 696) = sub_2455E6D2C(v3);
  v4 = 0.0;
  if ((v2 & 1) == 0)
  {
    v5 = sub_2455EA100() * 1000.0;
    sub_2455EA100();
    v4 = v5 + v6 / 1000000.0;
  }

  *(v0 + 1048) = v4;
  v7 = *(v0 + 880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  *(v0 + 1056) = swift_slowAlloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A8, &qword_2455F1690);
  *(v0 + 1064) = swift_slowAlloc();
  *(v0 + 1072) = swift_slowAlloc();
  v8 = (*(*v7 + 816))(0, 0);
  *(v0 + 1080) = 0;
  v9 = *(*(v0 + 856) + 16);
  *(v0 + 1088) = v9;
  if (!v9)
  {
    v82 = 0;
LABEL_38:
    v83 = *(v0 + 1072);
    v84 = *(v0 + 1064);
    v85 = *(v0 + 1056);
    v86 = *(v0 + 848);
    (*(**(v0 + 880) + 824))(v8);
    v87 = *(v0 + 696);
    *v86 = *(v0 + 688);
    v86[1] = v87;

    MEMORY[0x245D6C8C0](v85, -1, -1);
    MEMORY[0x245D6C8C0](v84, -1, -1);
    MEMORY[0x245D6C8C0](v83, -1, -1);

    v88 = *(v0 + 8);

    return v88();
  }

  v10 = 0;
  v288 = (v0 + 776);
  v11 = (v0 + 744);
  v281 = (v0 + 792);
  v283 = (v0 + 824);
  bytes = (v0 + 287);
  v282 = (v0 + 840);
  v280 = (v0 + 808);
  while (1)
  {
    *(v0 + 1104) = v10;
    *(v0 + 1096) = v1;
    v15 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v10 + 32, v0 + 432);
    if (!v15)
    {
      break;
    }

    v16 = *(v0 + 1080);
    swift_willThrow();
    v17 = v16;
    v18 = *(v0 + 1080);
    v19 = *(v0 + 1016);
    sub_2455ABC88(v0 + 432, v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v20 = swift_dynamicCast();
    v21 = *(v19 + 56);
    if (v20)
    {
      v22 = *(v0 + 1032);
      v23 = *(v0 + 1024);
      v24 = *(v0 + 992);
      v21(v24, 0, 1, *(v0 + 1008));
      sub_2455E6F48(v24, v22, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E661C(v22, v23, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v25 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v0 + 688);
      *(v0 + 712) = v27;
      v28 = sub_2455E347C(v23, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      v30 = *(v27 + 16);
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
      }

      v34 = v29;
      if (*(v27 + 24) >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v28;
          sub_2455E5BBC();
          v28 = v81;
        }
      }

      else
      {
        v35 = *(v0 + 1024);
        sub_2455E49CC(v33, isUniquelyReferenced_nonNull_native);
        v28 = sub_2455E347C(v35, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_228;
        }
      }

      v60 = *(v0 + 712);
      v61 = *(v0 + 1032);
      v62 = *(v0 + 1024);
      if (v34)
      {
        v63 = v60[7] + 16 * v28;
        v64 = *v63;
        v65 = *(v63 + 8);
        *v63 = v18;
        *(v63 + 8) = 1;
        sub_2455E711C(v64, v65);

        sub_2455E6788(v62, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E6788(v61, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v8 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      }

      else
      {
        v66 = *(v0 + 1016);
        v60[(v28 >> 6) + 8] |= 1 << v28;
        v67 = v28;
        sub_2455E661C(v62, v60[6] + *(v66 + 72) * v28, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v68 = v60[7] + 16 * v67;
        *v68 = v18;
        *(v68 + 8) = 1;

        sub_2455E6788(v62, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E6788(v61, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v8 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        v69 = v60[2];
        v32 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v32)
        {
          goto LABEL_234;
        }

        v60[2] = v70;
      }

      *(v0 + 688) = v60;
    }

    else
    {
      v44 = *(v0 + 992);
      v21(v44, 1, 1, *(v0 + 1008));
      sub_2455A7680(v44, &qword_27EE15198, &qword_2455F1678);
      sub_2455ABC88(v0 + 432, v0 + 592);
      if (swift_dynamicCast())
      {
        v45 = *(v0 + 936);
        v46 = *(v0 + 928);
        v47 = *(v0 + 896);
        (*(*(v0 + 920) + 56))(v47, 0, 1, *(v0 + 912));
        sub_2455E6F48(v47, v45, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E661C(v45, v46, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v48 = v18;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v50 = *(v0 + 696);
        *(v0 + 728) = v50;
        v52 = sub_2455E347C(v46, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
        v53 = *(v50 + 16);
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_233;
        }

        v56 = v51;
        if (*(v50 + 24) >= v55)
        {
          if ((v49 & 1) == 0)
          {
            sub_2455E5940();
          }
        }

        else
        {
          v57 = *(v0 + 928);
          sub_2455E44CC(v55, v49);
          v58 = sub_2455E347C(v57, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
          if ((v56 & 1) != (v59 & 1))
          {
LABEL_228:

            return sub_2455EA020();
          }

          v52 = v58;
        }

        v71 = *(v0 + 728);
        v72 = *(v0 + 936);
        v73 = *(v0 + 928);
        if (v56)
        {
          v74 = v71[7] + 16 * v52;
          v75 = *v74;
          v76 = *(v74 + 8);
          *v74 = v18;
          *(v74 + 8) = 1;
          sub_2455E7110(v75, v76);

          sub_2455E6788(v73, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E6788(v72, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v8 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        }

        else
        {
          v77 = *(v0 + 920);
          v71[(v52 >> 6) + 8] |= 1 << v52;
          sub_2455E661C(v73, v71[6] + *(v77 + 72) * v52, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v78 = v71[7] + 16 * v52;
          *v78 = v18;
          *(v78 + 8) = 1;

          sub_2455E6788(v73, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E6788(v72, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v8 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          v79 = v71[2];
          v32 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v32)
          {
            goto LABEL_235;
          }

          v71[2] = v80;
        }

        *(v0 + 696) = v71;
      }

      else
      {
        v12 = *(v0 + 920);
        v13 = *(v0 + 912);
        v14 = *(v0 + 896);

        __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        (*(v12 + 56))(v14, 1, 1, v13);
        v8 = sub_2455A7680(v14, &qword_27EE15190, &qword_2455F1670);
      }
    }

    v1 = *(v0 + 1096);
LABEL_7:
    v10 = *(v0 + 1104) + 1;
    if (v10 == *(v0 + 1088))
    {
      v82 = *(v0 + 1080);
      goto LABEL_38;
    }
  }

  v37 = *(v0 + 1016);
  sub_2455ABC88(v0 + 432, v0 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v38 = swift_dynamicCast();
  v39 = *(v37 + 56);
  if (!v38)
  {
    v40 = *(v0 + 1000);
    v39(v40, 1, 1, *(v0 + 1008));
    sub_2455A7680(v40, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      v259 = *(v0 + 952);
      v260 = *(v0 + 912);
      v261 = *(v0 + 904);
      (*(*(v0 + 920) + 56))(v261, 0, 1, v260);
      sub_2455E6F48(v261, v259, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v263 = *(v259 + *(v260 + 20));
      v264 = *(v263 + 16);
      v265 = MEMORY[0x277D84F90];
      if (v264)
      {
        *v11 = MEMORY[0x277D84F90];
        sub_2455E9E40();
        v266 = (v263 + 128);
        do
        {
          v267 = *v266;
          v266 += 16;
          v268 = v267;
          sub_2455E9E20();
          sub_2455E9E50();
          sub_2455E9E60();
          sub_2455E9E30();
          --v264;
        }

        while (v264);
        v265 = *v11;
      }

      *(v0 + 1136) = v265;
      v269 = *(v0 + 1072);
      v270 = *(v0 + 1064);
      v271 = *(v0 + 1048);
      v272 = *(v0 + 880);
      v273 = sub_2455E6848(&qword_27EE15178, v262, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
      v274 = swift_task_alloc();
      *(v0 + 1144) = v274;
      v274[2] = v270;
      v274[3] = v272;
      v274[4] = v265;
      v274[5] = v269;
      v274[6] = v271;
      v275 = swift_task_alloc();
      *(v0 + 1152) = v275;
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
      *v275 = v0;
      v275[1] = sub_2455DD5A0;
      v139 = v276;
      v137 = sub_2455E6FC8;
      v132 = (v0 + 736);
      v136 = 0x80000002455F3230;
      goto LABEL_223;
    }

    v41 = *(v0 + 920);
    v42 = *(v0 + 912);
    v43 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v41 + 56))(v43, 1, 1, v42);
    v8 = sub_2455A7680(v43, &qword_27EE15190, &qword_2455F1670);
    goto LABEL_7;
  }

  v90 = *(v0 + 1040);
  v91 = *(v0 + 1008);
  v92 = *(v0 + 1000);
  v39(v92, 0, 1, v91);
  sub_2455E6F48(v92, v90, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  *(v0 + 776) = MEMORY[0x277D84F98];
  v287 = *(v90 + *(v91 + 20));
  v286 = *(v287 + 16);
  if (!v286)
  {
LABEL_222:
    v277 = *(v0 + 1056);
    v278 = *(v0 + 1048);
    v279 = *(v0 + 1040);
    v272 = *(v0 + 880);
    v273 = sub_2455E6848(&qword_27EE15178, v93, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
    v274 = swift_task_alloc();
    *(v0 + 1112) = v274;
    v274[2] = v277;
    v274[3] = v272;
    v274[4] = v288;
    v274[5] = v278;
    v274[6] = v0 + 688;
    v274[7] = v279;
    v132 = swift_task_alloc();
    *(v0 + 1120) = v132;
    *v132 = v0;
    v132[1] = sub_2455DBA40;
    v137 = sub_2455E7134;
    v136 = 0x80000002455F3230;
    v139 = MEMORY[0x277D84F78] + 8;
LABEL_223:
    v133 = v272;
    v134 = v273;
    v135 = 0xD00000000000001ALL;
    v138 = v274;

    return MEMORY[0x2822008A0](v132, v133, v134, v135, v136, v137, v138, v139);
  }

  v94 = 0;
  v95 = (*(v0 + 984) + *(*(v0 + 960) + 24));
  v96 = *(*(v0 + 968) + 80);
  v285 = v287 + ((v96 + 32) & ~v96);
  v97 = MEMORY[0x277D84F98];
  v98 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v94 >= *(v287 + 16))
    {
      goto LABEL_232;
    }

    sub_2455E661C(v285 + *(*(v0 + 968) + 72) * v94, *(v0 + 984), type metadata accessor for HIDElement.Value);
    v99 = *v95;
    v100 = v95[1];
    v101 = v100 >> 62;
    if ((v100 >> 62) <= 1)
    {
      if (!v101)
      {
        v102 = *(v0 + 984);
        *(v0 + 273) = v99;
        *(v0 + 281) = v100;
        *(v0 + 283) = BYTE2(v100);
        *(v0 + 284) = BYTE3(v100);
        *(v0 + 285) = BYTE4(v100);
        *(v0 + 286) = BYTE5(v100);
        v103 = *(v102 + 96);
        v104 = sub_2455D04E0();
        v105 = *v95;
        v106 = v95[1];
        v107 = v106 >> 62;
        if ((v106 >> 62) > 1)
        {
          if (v107 == 2)
          {
            v127 = v105 + 16;
            v125 = *(v105 + 16);
            v126 = *(v127 + 8);
            v108 = v126 - v125;
            if (__OFSUB__(v126, v125))
            {
              goto LABEL_254;
            }
          }

          else
          {
            v108 = 0;
          }
        }

        else if (v107)
        {
          v32 = __OFSUB__(HIDWORD(v105), v105);
          v155 = HIDWORD(v105) - v105;
          if (v32)
          {
            goto LABEL_251;
          }

          v108 = v155;
        }

        else
        {
          v108 = BYTE6(v106);
        }

        v169 = IOHIDValueCreateWithBytes(0, v103, v104, (v0 + 273), v108);
        if (v169)
        {
          v158 = v169;
          if ((v98 & 0xC000000000000001) != 0)
          {
            if (v98 < 0)
            {
              v170 = v98;
            }

            else
            {
              v170 = v98 & 0xFFFFFFFFFFFFFF8;
            }

            v171 = sub_2455E9F20();
            if (__OFADD__(v171, 1))
            {
              goto LABEL_243;
            }

            v161 = (v0 + 776);
            *v288 = sub_2455E424C(v170, v171 + 1);
          }

          else
          {
            v161 = (v0 + 776);
          }

          v210 = swift_isUniquelyReferenced_nonNull_native();
          v211 = *v161;
          *v283 = *v161;
          v201 = sub_2455E34FC(v103);
          v213 = *(v211 + 16);
          v214 = (v212 & 1) == 0;
          v32 = __OFADD__(v213, v214);
          v215 = v213 + v214;
          if (v32)
          {
            goto LABEL_240;
          }

          v216 = v212;
          if (*(v211 + 24) >= v215)
          {
            if ((v210 & 1) == 0)
            {
              v256 = v201;
              sub_2455E5E38();
              v201 = v256;
            }
          }

          else
          {
            sub_2455E4F3C(v215, v210);
            v201 = sub_2455E34FC(v103);
            if ((v216 & 1) != (v217 & 1))
            {
              goto LABEL_227;
            }
          }

          v97 = *v283;
          if ((v216 & 1) == 0)
          {
            *(v97 + 8 * (v201 >> 6) + 64) |= 1 << v201;
            *(*(v97 + 48) + 8 * v201) = v103;
            *(*(v97 + 56) + 8 * v201) = v158;
            v218 = *(v97 + 16);
            v32 = __OFADD__(v218, 1);
            v209 = v218 + 1;
            if (v32)
            {
              goto LABEL_248;
            }

            goto LABEL_198;
          }

LABEL_196:
          v236 = *(v97 + 56);
          v237 = *(v236 + 8 * v201);
          *(v236 + 8 * v201) = v158;

LABEL_199:
          *v161 = v97;
LABEL_200:
          v98 = v97;
LABEL_44:
          ++v94;
          sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
          if (v286 == v94)
          {
            goto LABEL_222;
          }

          continue;
        }

        if ((v97 & 0xC000000000000001) != 0)
        {
          if (v97 < 0)
          {
            v172 = v97;
          }

          else
          {
            v172 = v97 & 0xFFFFFFFFFFFFFF8;
          }

          v103 = v103;
          v173 = sub_2455E9F50();

          if (v173)
          {
            swift_unknownObjectRelease();

            v174 = sub_2455E9F20();
            v98 = sub_2455E424C(v172, v174);

            v175 = sub_2455E34FC(v103);
            v177 = v176;

            if ((v177 & 1) == 0)
            {
              goto LABEL_260;
            }

            goto LABEL_154;
          }

LABEL_43:

          goto LABEL_44;
        }

        v245 = sub_2455E34FC(v103);
        if ((v246 & 1) == 0)
        {
          goto LABEL_43;
        }

        v241 = v245;
        v242 = (v0 + 776);
        v247 = swift_isUniquelyReferenced_nonNull_native();
        v97 = *v288;
        *(v0 + 816) = *v288;
        if ((v247 & 1) == 0)
        {
          v244 = (v0 + 816);
          goto LABEL_216;
        }

LABEL_214:

        v254 = *(*(v97 + 56) + 8 * v241);
        sub_2455E5218(v241, v97);

        *v242 = v97;
        goto LABEL_200;
      }

      v114 = v99;
      if (v99 > v99 >> 32)
      {
        goto LABEL_236;
      }

      v115 = sub_2455E9910();
      if (v115)
      {
        v116 = v115;
        v117 = sub_2455E9940();
        if (__OFSUB__(v114, v117))
        {
          goto LABEL_238;
        }

        v118 = (v114 - v117 + v116);
      }

      else
      {
        v118 = 0;
      }

      v147 = *(v0 + 984);
      sub_2455E9930();
      v103 = *(v147 + 96);
      v132 = sub_2455D04E0();
      if (!v118)
      {
        goto LABEL_264;
      }

      v148 = *v95;
      v149 = v95[1];
      v150 = v149 >> 62;
      if ((v149 >> 62) > 1)
      {
        if (v150 == 2)
        {
          v154 = v148 + 16;
          v152 = *(v148 + 16);
          v153 = *(v154 + 8);
          v151 = v153 - v152;
          if (__OFSUB__(v153, v152))
          {
            goto LABEL_258;
          }
        }

        else
        {
          v151 = 0;
        }
      }

      else if (v150)
      {
        v32 = __OFSUB__(HIDWORD(v148), v148);
        v188 = HIDWORD(v148) - v148;
        if (v32)
        {
          goto LABEL_257;
        }

        v151 = v188;
      }

      else
      {
        v151 = BYTE6(v149);
      }

      v189 = IOHIDValueCreateWithBytes(0, v103, v132, v118, v151);
      v190 = v97 & 0xC000000000000001;
      if (v189)
      {
        v158 = v189;
        if (v190)
        {
          if (v97 < 0)
          {
            v191 = v97;
          }

          else
          {
            v191 = v97 & 0xFFFFFFFFFFFFFF8;
          }

          v192 = sub_2455E9F20();
          v161 = (v0 + 776);
          if (__OFADD__(v192, 1))
          {
            goto LABEL_246;
          }

          *v288 = sub_2455E424C(v191, v192 + 1);
        }

        else
        {
          v161 = (v0 + 776);
        }

        v228 = swift_isUniquelyReferenced_nonNull_native();
        v229 = *v161;
        *v280 = *v161;
        v201 = sub_2455E34FC(v103);
        v231 = *(v229 + 16);
        v232 = (v230 & 1) == 0;
        v32 = __OFADD__(v231, v232);
        v233 = v231 + v232;
        if (v32)
        {
          goto LABEL_242;
        }

        v234 = v230;
        if (*(v229 + 24) >= v233)
        {
          if ((v228 & 1) == 0)
          {
            v258 = v201;
            sub_2455E5E38();
            v201 = v258;
          }
        }

        else
        {
          sub_2455E4F3C(v233, v228);
          v201 = sub_2455E34FC(v103);
          if ((v234 & 1) != (v235 & 1))
          {
LABEL_227:
            type metadata accessor for IOHIDElement();
            goto LABEL_228;
          }
        }

        v97 = *v280;
        if (v234)
        {
          goto LABEL_196;
        }

        *(v97 + 8 * (v201 >> 6) + 64) |= 1 << v201;
        *(*(v97 + 48) + 8 * v201) = v103;
        *(*(v97 + 56) + 8 * v201) = v158;
        v238 = *(v97 + 16);
        v32 = __OFADD__(v238, 1);
        v209 = v238 + 1;
        if (v32)
        {
          goto LABEL_250;
        }

        goto LABEL_198;
      }

      if (v190)
      {
        if (v97 < 0)
        {
          v193 = v97;
        }

        else
        {
          v193 = v97 & 0xFFFFFFFFFFFFFF8;
        }

        v103 = v103;
        v194 = sub_2455E9F50();

        if (!v194)
        {
          goto LABEL_43;
        }

        swift_unknownObjectRelease();

        v195 = sub_2455E9F20();
        v98 = sub_2455E424C(v193, v195);

        v175 = sub_2455E34FC(v103);
        v197 = v196;

        if ((v197 & 1) == 0)
        {
          goto LABEL_262;
        }

LABEL_154:

        v198 = *(*(v98 + 56) + 8 * v175);
        sub_2455E5218(v175, v98);

        *v288 = v98;
LABEL_205:
        v97 = v98;
        goto LABEL_44;
      }

      v251 = sub_2455E34FC(v103);
      if ((v252 & 1) == 0)
      {
        goto LABEL_43;
      }

      v241 = v251;
      v242 = (v0 + 776);
      v253 = swift_isUniquelyReferenced_nonNull_native();
      v97 = *v288;
      *(v0 + 800) = *v288;
      if (v253)
      {
        goto LABEL_214;
      }

      v244 = (v0 + 800);
LABEL_216:
      sub_2455E5E38();
      v97 = *v244;
      goto LABEL_214;
    }

    break;
  }

  if (v101 != 2)
  {
    v119 = *(v0 + 984);
    *bytes = 0;
    *(v0 + 293) = 0;
    v103 = *(v119 + 96);
    v120 = sub_2455D04E0();
    v121 = *v95;
    v122 = v95[1];
    v123 = v122 >> 62;
    if ((v122 >> 62) > 1)
    {
      v124 = 0;
      if (v123 == 2)
      {
        v130 = v121 + 16;
        v128 = *(v121 + 16);
        v129 = *(v130 + 8);
        v124 = v129 - v128;
        if (__OFSUB__(v129, v128))
        {
          goto LABEL_253;
        }
      }
    }

    else if (v123)
    {
      v32 = __OFSUB__(HIDWORD(v121), v121);
      v156 = HIDWORD(v121) - v121;
      if (v32)
      {
        goto LABEL_252;
      }

      v124 = v156;
    }

    else
    {
      v124 = BYTE6(v122);
    }

    v157 = IOHIDValueCreateWithBytes(0, v103, v120, bytes, v124);
    if (v157)
    {
      v158 = v157;
      if ((v98 & 0xC000000000000001) != 0)
      {
        if (v98 < 0)
        {
          v159 = v98;
        }

        else
        {
          v159 = v98 & 0xFFFFFFFFFFFFFF8;
        }

        v160 = sub_2455E9F20();
        if (__OFADD__(v160, 1))
        {
          goto LABEL_244;
        }

        v161 = (v0 + 776);
        *v288 = sub_2455E424C(v159, v160 + 1);
      }

      else
      {
        v161 = (v0 + 776);
      }

      v199 = swift_isUniquelyReferenced_nonNull_native();
      v200 = *v161;
      *v282 = *v161;
      v201 = sub_2455E34FC(v103);
      v203 = *(v200 + 16);
      v204 = (v202 & 1) == 0;
      v32 = __OFADD__(v203, v204);
      v205 = v203 + v204;
      if (v32)
      {
        goto LABEL_239;
      }

      v206 = v202;
      if (*(v200 + 24) >= v205)
      {
        if ((v199 & 1) == 0)
        {
          v255 = v201;
          sub_2455E5E38();
          v201 = v255;
        }
      }

      else
      {
        sub_2455E4F3C(v205, v199);
        v201 = sub_2455E34FC(v103);
        if ((v206 & 1) != (v207 & 1))
        {
          goto LABEL_227;
        }
      }

      v97 = *v282;
      if ((v206 & 1) == 0)
      {
        *(v97 + 8 * (v201 >> 6) + 64) |= 1 << v201;
        *(*(v97 + 48) + 8 * v201) = v103;
        *(*(v97 + 56) + 8 * v201) = v158;
        v208 = *(v97 + 16);
        v32 = __OFADD__(v208, 1);
        v209 = v208 + 1;
        if (v32)
        {
          goto LABEL_247;
        }

        goto LABEL_198;
      }

      goto LABEL_196;
    }

    if ((v98 & 0xC000000000000001) != 0)
    {
      if (v98 < 0)
      {
        v162 = v98;
      }

      else
      {
        v162 = v98 & 0xFFFFFFFFFFFFFF8;
      }

      v103 = v103;
      v163 = sub_2455E9F50();

      if (v163)
      {
        swift_unknownObjectRelease();

        v164 = sub_2455E9F20();
        v97 = sub_2455E424C(v162, v164);

        v165 = sub_2455E34FC(v103);
        v167 = v166;

        if ((v167 & 1) == 0)
        {
          goto LABEL_259;
        }

        v168 = *(*(v97 + 56) + 8 * v165);
        sub_2455E5218(v165, v97);

        *v288 = v97;
        goto LABEL_200;
      }
    }

    else
    {
      v239 = sub_2455E34FC(v103);
      if (v240)
      {
        v241 = v239;
        v242 = (v0 + 776);
        v243 = swift_isUniquelyReferenced_nonNull_native();
        v97 = *v288;
        *(v0 + 832) = *v288;
        if ((v243 & 1) == 0)
        {
          v244 = (v0 + 832);
          goto LABEL_216;
        }

        goto LABEL_214;
      }
    }

    goto LABEL_205;
  }

  v109 = *(v99 + 16);
  v110 = sub_2455E9910();
  if (v110)
  {
    v111 = v110;
    v112 = sub_2455E9940();
    if (__OFSUB__(v109, v112))
    {
      goto LABEL_237;
    }

    v113 = (v109 - v112 + v111);
  }

  else
  {
    v113 = 0;
  }

  v131 = *(v0 + 984);
  sub_2455E9930();
  v103 = *(v131 + 96);
  v132 = sub_2455D04E0();
  if (v113)
  {
    v140 = *v95;
    v141 = v95[1];
    v142 = v141 >> 62;
    if ((v141 >> 62) > 1)
    {
      if (v142 == 2)
      {
        v146 = v140 + 16;
        v144 = *(v140 + 16);
        v145 = *(v146 + 8);
        v143 = v145 - v144;
        if (__OFSUB__(v145, v144))
        {
          goto LABEL_256;
        }
      }

      else
      {
        v143 = 0;
      }
    }

    else if (v142)
    {
      v32 = __OFSUB__(HIDWORD(v140), v140);
      v178 = HIDWORD(v140) - v140;
      if (v32)
      {
        goto LABEL_255;
      }

      v143 = v178;
    }

    else
    {
      v143 = BYTE6(v141);
    }

    v179 = IOHIDValueCreateWithBytes(0, v103, v132, v113, v143);
    v180 = v97 & 0xC000000000000001;
    if (v179)
    {
      v158 = v179;
      if (v180)
      {
        if (v97 < 0)
        {
          v181 = v97;
        }

        else
        {
          v181 = v97 & 0xFFFFFFFFFFFFFF8;
        }

        v182 = sub_2455E9F20();
        v161 = (v0 + 776);
        if (__OFADD__(v182, 1))
        {
          goto LABEL_245;
        }

        *v288 = sub_2455E424C(v181, v182 + 1);
      }

      else
      {
        v161 = (v0 + 776);
      }

      v219 = swift_isUniquelyReferenced_nonNull_native();
      v220 = *v161;
      *v281 = *v161;
      v201 = sub_2455E34FC(v103);
      v222 = *(v220 + 16);
      v223 = (v221 & 1) == 0;
      v32 = __OFADD__(v222, v223);
      v224 = v222 + v223;
      if (v32)
      {
        goto LABEL_241;
      }

      v225 = v221;
      if (*(v220 + 24) >= v224)
      {
        if ((v219 & 1) == 0)
        {
          v257 = v201;
          sub_2455E5E38();
          v201 = v257;
        }
      }

      else
      {
        sub_2455E4F3C(v224, v219);
        v201 = sub_2455E34FC(v103);
        if ((v225 & 1) != (v226 & 1))
        {
          goto LABEL_227;
        }
      }

      v97 = *v281;
      if (v225)
      {
        goto LABEL_196;
      }

      *(v97 + 8 * (v201 >> 6) + 64) |= 1 << v201;
      *(*(v97 + 48) + 8 * v201) = v103;
      *(*(v97 + 56) + 8 * v201) = v158;
      v227 = *(v97 + 16);
      v32 = __OFADD__(v227, 1);
      v209 = v227 + 1;
      if (v32)
      {
        goto LABEL_249;
      }

LABEL_198:
      *(v97 + 16) = v209;
      goto LABEL_199;
    }

    if (v180)
    {
      if (v97 < 0)
      {
        v183 = v97;
      }

      else
      {
        v183 = v97 & 0xFFFFFFFFFFFFFF8;
      }

      v103 = v103;
      v184 = sub_2455E9F50();

      if (!v184)
      {
        goto LABEL_43;
      }

      swift_unknownObjectRelease();

      v185 = sub_2455E9F20();
      v98 = sub_2455E424C(v183, v185);

      v175 = sub_2455E34FC(v103);
      v187 = v186;

      if ((v187 & 1) == 0)
      {
        goto LABEL_261;
      }

      goto LABEL_154;
    }

    v248 = sub_2455E34FC(v103);
    if ((v249 & 1) == 0)
    {
      goto LABEL_43;
    }

    v241 = v248;
    v242 = (v0 + 776);
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *v288;
    *(v0 + 784) = *v288;
    if (v250)
    {
      goto LABEL_214;
    }

    v244 = (v0 + 784);
    goto LABEL_216;
  }

  __break(1u);
LABEL_264:
  __break(1u);
  return MEMORY[0x2822008A0](v132, v133, v134, v135, v136, v137, v138, v139);
}

uint64_t sub_2455DBA40()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = *(v2 + 880);
    v4 = sub_2455DF94C;
  }

  else
  {
    v5 = *(v2 + 880);

    v4 = sub_2455DBBB4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2455DBBB4()
{
  v1 = *(v0 + 1040);
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));

  sub_2455E6788(v1, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  v2 = *(v0 + 1104) + 1;
  if (v2 == *(v0 + 1088))
  {
LABEL_2:
    v3 = *(v0 + 1080);
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1056);
    v7 = *(v0 + 848);
    (*(**(v0 + 880) + 824))();
    v8 = *(v0 + 696);
    *v7 = *(v0 + 688);
    v7[1] = v8;

    MEMORY[0x245D6C8C0](v6, -1, -1);
    MEMORY[0x245D6C8C0](v5, -1, -1);
    MEMORY[0x245D6C8C0](v4, -1, -1);

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = (v0 + 744);
  bytes = (v0 + 287);
  v277 = (v0 + 776);
  v273 = (v0 + 792);
  v271 = (v0 + 688);
  v272 = (v0 + 808);
  v274 = (v0 + 840);
  v275 = (v0 + 824);
  v12 = *(v0 + 1096);
  while (1)
  {
    *(v0 + 1104) = v2;
    *(v0 + 1096) = v12;
    v13 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v2 + 32, v0 + 432);
    if (v13)
    {
      v21 = *(v0 + 1080);
      swift_willThrow();
      v22 = v21;
      v280 = *(v0 + 1080);
      v23 = *(v0 + 1016);
      sub_2455ABC88(v0 + 432, v0 + 552);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
      v24 = swift_dynamicCast();
      v25 = *(v23 + 56);
      if (v24)
      {
        v26 = *(v0 + 1032);
        v27 = *(v0 + 1024);
        v28 = *(v0 + 992);
        v25(v28, 0, 1, *(v0 + 1008));
        sub_2455E6F48(v28, v26, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E661C(v26, v27, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v29 = v280;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v0 + 688);
        *(v0 + 712) = v31;
        v32 = sub_2455E347C(v27, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
        v34 = *(v31 + 16);
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_251;
        }

        v38 = v33;
        if (*(v31 + 24) >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v81 = v32;
            sub_2455E5BBC();
            v32 = v81;
          }
        }

        else
        {
          v39 = *(v0 + 1024);
          sub_2455E49CC(v37, isUniquelyReferenced_nonNull_native);
          v32 = sub_2455E347C(v39, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_219;
          }
        }

        v60 = *(v0 + 712);
        v61 = *(v0 + 1032);
        v62 = *(v0 + 1024);
        if (v38)
        {
          v63 = v60[7] + 16 * v32;
          v64 = *v63;
          v65 = *(v63 + 8);
          *v63 = v280;
          *(v63 + 8) = 1;
          sub_2455E711C(v64, v65);

          sub_2455E6788(v62, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v61, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        }

        else
        {
          v66 = *(v0 + 1016);
          v60[(v32 >> 6) + 8] |= 1 << v32;
          v67 = v32;
          sub_2455E661C(v62, v60[6] + *(v66 + 72) * v32, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          v68 = v60[7] + 16 * v67;
          *v68 = v280;
          *(v68 + 8) = 1;

          sub_2455E6788(v62, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v61, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          v69 = v60[2];
          v36 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v36)
          {
            goto LABEL_253;
          }

          v60[2] = v70;
        }

        *v271 = v60;
      }

      else
      {
        v41 = *(v0 + 992);
        v25(v41, 1, 1, *(v0 + 1008));
        sub_2455A7680(v41, &qword_27EE15198, &qword_2455F1678);
        sub_2455ABC88(v0 + 432, v0 + 592);
        if (swift_dynamicCast())
        {
          v42 = *(v0 + 936);
          v43 = *(v0 + 928);
          v44 = *(v0 + 896);
          (*(*(v0 + 920) + 56))(v44, 0, 1, *(v0 + 912));
          sub_2455E6F48(v44, v42, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E661C(v42, v43, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v45 = v280;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v47 = *(v0 + 696);
          *(v0 + 728) = v47;
          v49 = sub_2455E347C(v43, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
          v50 = *(v47 + 16);
          v51 = (v48 & 1) == 0;
          v52 = v50 + v51;
          if (__OFADD__(v50, v51))
          {
            goto LABEL_252;
          }

          v53 = v48;
          if (*(v47 + 24) >= v52)
          {
            if ((v46 & 1) == 0)
            {
              sub_2455E5940();
            }
          }

          else
          {
            v54 = *(v0 + 928);
            sub_2455E44CC(v52, v46);
            v55 = sub_2455E347C(v54, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
            if ((v53 & 1) != (v56 & 1))
            {
              goto LABEL_219;
            }

            v49 = v55;
          }

          v71 = *(v0 + 728);
          v72 = *(v0 + 936);
          v73 = *(v0 + 928);
          if (v53)
          {
            v74 = v71[7] + 16 * v49;
            v75 = *v74;
            v76 = *(v74 + 8);
            *v74 = v280;
            *(v74 + 8) = 1;
            sub_2455E7110(v75, v76);

            sub_2455E6788(v73, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v72, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          }

          else
          {
            v77 = *(v0 + 920);
            v71[(v49 >> 6) + 8] |= 1 << v49;
            sub_2455E661C(v73, v71[6] + *(v77 + 72) * v49, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            v78 = v71[7] + 16 * v49;
            *v78 = v280;
            *(v78 + 8) = 1;

            sub_2455E6788(v73, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v72, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v0 + 432));
            v79 = v71[2];
            v36 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v36)
            {
              goto LABEL_254;
            }

            v71[2] = v80;
          }

          *(v0 + 696) = v71;
        }

        else
        {
          v57 = *(v0 + 920);
          v58 = *(v0 + 912);
          v59 = *(v0 + 896);

          __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          (*(v57 + 56))(v59, 1, 1, v58);
          sub_2455A7680(v59, &qword_27EE15190, &qword_2455F1670);
        }
      }

      v12 = *(v0 + 1096);
      goto LABEL_10;
    }

    v14 = *(v0 + 1016);
    sub_2455ABC88(v0 + 432, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v15 = swift_dynamicCast();
    v16 = *(v14 + 56);
    if (v15)
    {
      break;
    }

    v17 = *(v0 + 1000);
    v16(v17, 1, 1, *(v0 + 1008));
    sub_2455A7680(v17, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      v250 = *(v0 + 952);
      v251 = *(v0 + 912);
      v252 = *(v0 + 904);
      (*(*(v0 + 920) + 56))(v252, 0, 1, v251);
      sub_2455E6F48(v252, v250, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v254 = *(v250 + *(v251 + 20));
      v255 = *(v254 + 16);
      v256 = MEMORY[0x277D84F90];
      if (v255)
      {
        *v11 = MEMORY[0x277D84F90];
        sub_2455E9E40();
        v257 = (v254 + 128);
        do
        {
          v258 = *v257;
          v257 += 16;
          v259 = v258;
          sub_2455E9E20();
          sub_2455E9E50();
          sub_2455E9E60();
          sub_2455E9E30();
          --v255;
        }

        while (v255);
        v256 = *v11;
      }

      *(v0 + 1136) = v256;
      v260 = *(v0 + 1072);
      v261 = *(v0 + 1064);
      v262 = *(v0 + 1048);
      v263 = *(v0 + 880);
      v264 = sub_2455E6848(&qword_27EE15178, v253, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
      v265 = swift_task_alloc();
      *(v0 + 1144) = v265;
      v265[2] = v261;
      v265[3] = v263;
      v265[4] = v256;
      v265[5] = v260;
      v265[6] = v262;
      v266 = swift_task_alloc();
      *(v0 + 1152) = v266;
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
      *v266 = v0;
      v266[1] = sub_2455DD5A0;
      v134 = v267;
      v132 = sub_2455E6FC8;
      v127 = (v0 + 736);
      v131 = 0x80000002455F3230;
      goto LABEL_215;
    }

    v18 = *(v0 + 920);
    v19 = *(v0 + 912);
    v20 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v18 + 56))(v20, 1, 1, v19);
    sub_2455A7680(v20, &qword_27EE15190, &qword_2455F1670);
LABEL_10:
    v2 = *(v0 + 1104) + 1;
    if (v2 == *(v0 + 1088))
    {
      goto LABEL_2;
    }
  }

  v82 = *(v0 + 1040);
  v83 = *(v0 + 1008);
  v84 = *(v0 + 1000);
  v16(v84, 0, 1, v83);
  sub_2455E6F48(v84, v82, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  *(v0 + 776) = MEMORY[0x277D84F98];
  v281 = *(v82 + *(v83 + 20));
  v86 = (v0 + 776);
  v279 = v281[2];
  if (!v279)
  {
LABEL_214:
    v268 = *(v0 + 1056);
    v269 = *(v0 + 1048);
    v270 = *(v0 + 1040);
    v263 = *(v0 + 880);
    v264 = sub_2455E6848(&qword_27EE15178, v85, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
    v265 = swift_task_alloc();
    *(v0 + 1112) = v265;
    v265[2] = v268;
    v265[3] = v263;
    v265[4] = v86;
    v265[5] = v269;
    v265[6] = v271;
    v265[7] = v270;
    v127 = swift_task_alloc();
    *(v0 + 1120) = v127;
    *v127 = v0;
    v127[1] = sub_2455DBA40;
    v132 = sub_2455E7134;
    v131 = 0x80000002455F3230;
    v134 = MEMORY[0x277D84F78] + 8;
LABEL_215:
    v128 = v263;
    v129 = v264;
    v130 = 0xD00000000000001ALL;
    v133 = v265;

    return MEMORY[0x2822008A0](v127, v128, v129, v130, v131, v132, v133, v134);
  }

  v87 = 0;
  v88 = (*(v0 + 984) + *(*(v0 + 960) + 24));
  v89 = *(*(v0 + 968) + 80);
  v278 = v281 + ((v89 + 32) & ~v89);
  v90 = MEMORY[0x277D84F98];
  v91 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v87 >= v281[2])
    {
      __break(1u);
      goto LABEL_219;
    }

    sub_2455E661C(&v278[*(*(v0 + 968) + 72) * v87], *(v0 + 984), type metadata accessor for HIDElement.Value);
    v94 = *v88;
    v95 = v88[1];
    v96 = v95 >> 62;
    if ((v95 >> 62) <= 1)
    {
      if (!v96)
      {
        v97 = *(v0 + 984);
        *(v0 + 273) = v94;
        *(v0 + 281) = v95;
        *(v0 + 283) = BYTE2(v95);
        *(v0 + 284) = BYTE3(v95);
        *(v0 + 285) = BYTE4(v95);
        *(v0 + 286) = BYTE5(v95);
        v98 = *(v97 + 96);
        v99 = sub_2455D04E0();
        v100 = *v88;
        v101 = v88[1];
        v102 = v101 >> 62;
        if ((v101 >> 62) > 1)
        {
          if (v102 == 2)
          {
            v122 = v100 + 16;
            v120 = *(v100 + 16);
            v121 = *(v122 + 8);
            v103 = v121 - v120;
            if (__OFSUB__(v121, v120))
            {
              goto LABEL_242;
            }
          }

          else
          {
            v103 = 0;
          }
        }

        else if (v102)
        {
          v36 = __OFSUB__(HIDWORD(v100), v100);
          v150 = HIDWORD(v100) - v100;
          if (v36)
          {
            goto LABEL_239;
          }

          v103 = v150;
        }

        else
        {
          v103 = BYTE6(v101);
        }

        v163 = IOHIDValueCreateWithBytes(0, v98, v99, (v0 + 273), v103);
        if (v163)
        {
          v153 = v163;
          if ((v91 & 0xC000000000000001) != 0)
          {
            if (v91 < 0)
            {
              v164 = v91;
            }

            else
            {
              v164 = v91 & 0xFFFFFFFFFFFFFF8;
            }

            v165 = sub_2455E9F20();
            if (__OFADD__(v165, 1))
            {
              goto LABEL_231;
            }

            *v86 = sub_2455E424C(v164, v165 + 1);
          }

          v204 = swift_isUniquelyReferenced_nonNull_native();
          v205 = *v86;
          *v275 = *v86;
          v195 = sub_2455E34FC(v98);
          v207 = *(v205 + 16);
          v208 = (v206 & 1) == 0;
          v36 = __OFADD__(v207, v208);
          v209 = v207 + v208;
          if (v36)
          {
            goto LABEL_228;
          }

          v210 = v206;
          if (*(v205 + 24) >= v209)
          {
            if ((v204 & 1) == 0)
            {
              v247 = v195;
              sub_2455E5E38();
              v195 = v247;
            }
          }

          else
          {
            sub_2455E4F3C(v209, v204);
            v195 = sub_2455E34FC(v98);
            if ((v210 & 1) != (v211 & 1))
            {
              goto LABEL_218;
            }
          }

          v90 = *v275;
          if ((v210 & 1) == 0)
          {
            *(v90 + 8 * (v195 >> 6) + 64) |= 1 << v195;
            *(*(v90 + 48) + 8 * v195) = v98;
            *(*(v90 + 56) + 8 * v195) = v153;
            v212 = *(v90 + 16);
            v36 = __OFADD__(v212, 1);
            v203 = v212 + 1;
            if (v36)
            {
              goto LABEL_236;
            }

            goto LABEL_191;
          }

LABEL_40:
          v92 = *(v90 + 56);
          v93 = *(v92 + 8 * v195);
          *(v92 + 8 * v195) = v153;

LABEL_41:
          *v86 = v90;
          v91 = v90;
LABEL_42:
          ++v87;
          sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
          if (v279 == v87)
          {
            goto LABEL_214;
          }

          continue;
        }

        if ((v90 & 0xC000000000000001) != 0)
        {
          if (v90 < 0)
          {
            v166 = v90;
          }

          else
          {
            v166 = v90 & 0xFFFFFFFFFFFFFF8;
          }

          v98 = v98;
          v167 = sub_2455E9F50();

          if (v167)
          {
            swift_unknownObjectRelease();

            v168 = sub_2455E9F20();
            v91 = sub_2455E424C(v166, v168);

            v169 = sub_2455E34FC(v98);
            v171 = v170;

            if ((v171 & 1) == 0)
            {
              goto LABEL_248;
            }

            goto LABEL_152;
          }

LABEL_206:

          goto LABEL_42;
        }

        v236 = sub_2455E34FC(v98);
        if ((v237 & 1) == 0)
        {
          goto LABEL_206;
        }

        v233 = v236;
        v238 = swift_isUniquelyReferenced_nonNull_native();
        v90 = *v86;
        *(v0 + 816) = *v86;
        if ((v238 & 1) == 0)
        {
          v235 = (v0 + 816);
          goto LABEL_208;
        }

LABEL_205:

        v245 = *(*(v90 + 56) + 8 * v233);
        sub_2455E5218(v233, v90);

        goto LABEL_41;
      }

      v109 = v94;
      if (v94 > v94 >> 32)
      {
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
      }

      v110 = sub_2455E9910();
      if (v110)
      {
        v111 = v110;
        v112 = sub_2455E9940();
        if (__OFSUB__(v109, v112))
        {
          goto LABEL_226;
        }

        v113 = (v109 - v112 + v111);
      }

      else
      {
        v113 = 0;
      }

      v142 = *(v0 + 984);
      sub_2455E9930();
      v98 = *(v142 + 96);
      v127 = sub_2455D04E0();
      if (!v113)
      {
        goto LABEL_256;
      }

      v143 = *v88;
      v144 = v88[1];
      v145 = v144 >> 62;
      v86 = (v0 + 776);
      if ((v144 >> 62) > 1)
      {
        if (v145 == 2)
        {
          v149 = v143 + 16;
          v147 = *(v143 + 16);
          v148 = *(v149 + 8);
          v146 = v148 - v147;
          if (__OFSUB__(v148, v147))
          {
            goto LABEL_246;
          }
        }

        else
        {
          v146 = 0;
        }
      }

      else if (v145)
      {
        v36 = __OFSUB__(HIDWORD(v143), v143);
        v182 = HIDWORD(v143) - v143;
        if (v36)
        {
          goto LABEL_245;
        }

        v146 = v182;
      }

      else
      {
        v146 = BYTE6(v144);
      }

      v183 = IOHIDValueCreateWithBytes(0, v98, v127, v113, v146);
      v184 = v90 & 0xC000000000000001;
      if (v183)
      {
        v153 = v183;
        if (v184)
        {
          if (v90 < 0)
          {
            v185 = v90;
          }

          else
          {
            v185 = v90 & 0xFFFFFFFFFFFFFF8;
          }

          v186 = sub_2455E9F20();
          if (__OFADD__(v186, 1))
          {
            goto LABEL_234;
          }

          *v277 = sub_2455E424C(v185, v186 + 1);
        }

        v222 = swift_isUniquelyReferenced_nonNull_native();
        v223 = *v277;
        *v272 = *v277;
        v195 = sub_2455E34FC(v98);
        v225 = *(v223 + 16);
        v226 = (v224 & 1) == 0;
        v36 = __OFADD__(v225, v226);
        v227 = v225 + v226;
        if (v36)
        {
          goto LABEL_230;
        }

        v228 = v224;
        if (*(v223 + 24) >= v227)
        {
          if ((v222 & 1) == 0)
          {
            v249 = v195;
            sub_2455E5E38();
            v195 = v249;
          }
        }

        else
        {
          sub_2455E4F3C(v227, v222);
          v195 = sub_2455E34FC(v98);
          if ((v228 & 1) != (v229 & 1))
          {
LABEL_218:
            type metadata accessor for IOHIDElement();
LABEL_219:

            return sub_2455EA020();
          }
        }

        v90 = *v272;
        if (v228)
        {
          goto LABEL_40;
        }

        *(v90 + 8 * (v195 >> 6) + 64) |= 1 << v195;
        *(*(v90 + 48) + 8 * v195) = v98;
        *(*(v90 + 56) + 8 * v195) = v153;
        v230 = *(v90 + 16);
        v36 = __OFADD__(v230, 1);
        v203 = v230 + 1;
        if (v36)
        {
          goto LABEL_238;
        }

LABEL_191:
        *(v90 + 16) = v203;
        goto LABEL_41;
      }

      if (v184)
      {
        if (v90 < 0)
        {
          v187 = v90;
        }

        else
        {
          v187 = v90 & 0xFFFFFFFFFFFFFF8;
        }

        v98 = v98;
        v188 = sub_2455E9F50();

        if (!v188)
        {
          goto LABEL_206;
        }

        swift_unknownObjectRelease();

        v189 = sub_2455E9F20();
        v91 = sub_2455E424C(v187, v189);

        v169 = sub_2455E34FC(v98);
        v191 = v190;

        if ((v191 & 1) == 0)
        {
          goto LABEL_250;
        }

LABEL_152:

        v192 = *(*(v91 + 56) + 8 * v169);
        sub_2455E5218(v169, v91);

        *v86 = v91;
LABEL_196:
        v90 = v91;
        goto LABEL_42;
      }

      v242 = sub_2455E34FC(v98);
      if ((v243 & 1) == 0)
      {
        goto LABEL_206;
      }

      v233 = v242;
      v244 = swift_isUniquelyReferenced_nonNull_native();
      v90 = *v277;
      *(v0 + 800) = *v277;
      if (v244)
      {
        goto LABEL_205;
      }

      v235 = (v0 + 800);
LABEL_208:
      sub_2455E5E38();
      v90 = *v235;
      goto LABEL_205;
    }

    break;
  }

  if (v96 != 2)
  {
    v114 = *(v0 + 984);
    *bytes = 0;
    *(v0 + 293) = 0;
    v98 = *(v114 + 96);
    v115 = sub_2455D04E0();
    v116 = *v88;
    v117 = v88[1];
    v118 = v117 >> 62;
    if ((v117 >> 62) > 1)
    {
      v119 = 0;
      if (v118 == 2)
      {
        v125 = v116 + 16;
        v123 = *(v116 + 16);
        v124 = *(v125 + 8);
        v119 = v124 - v123;
        if (__OFSUB__(v124, v123))
        {
          goto LABEL_241;
        }
      }
    }

    else if (v118)
    {
      v36 = __OFSUB__(HIDWORD(v116), v116);
      v151 = HIDWORD(v116) - v116;
      if (v36)
      {
        goto LABEL_240;
      }

      v119 = v151;
    }

    else
    {
      v119 = BYTE6(v117);
    }

    v152 = IOHIDValueCreateWithBytes(0, v98, v115, bytes, v119);
    if (v152)
    {
      v153 = v152;
      if ((v91 & 0xC000000000000001) != 0)
      {
        if (v91 < 0)
        {
          v154 = v91;
        }

        else
        {
          v154 = v91 & 0xFFFFFFFFFFFFFF8;
        }

        v155 = sub_2455E9F20();
        if (__OFADD__(v155, 1))
        {
          goto LABEL_232;
        }

        *v86 = sub_2455E424C(v154, v155 + 1);
      }

      v193 = swift_isUniquelyReferenced_nonNull_native();
      v194 = *v86;
      *v274 = *v86;
      v195 = sub_2455E34FC(v98);
      v197 = *(v194 + 16);
      v198 = (v196 & 1) == 0;
      v36 = __OFADD__(v197, v198);
      v199 = v197 + v198;
      if (v36)
      {
        goto LABEL_227;
      }

      v200 = v196;
      if (*(v194 + 24) >= v199)
      {
        if ((v193 & 1) == 0)
        {
          v246 = v195;
          sub_2455E5E38();
          v195 = v246;
        }
      }

      else
      {
        sub_2455E4F3C(v199, v193);
        v195 = sub_2455E34FC(v98);
        if ((v200 & 1) != (v201 & 1))
        {
          goto LABEL_218;
        }
      }

      v90 = *v274;
      if ((v200 & 1) == 0)
      {
        *(v90 + 8 * (v195 >> 6) + 64) |= 1 << v195;
        *(*(v90 + 48) + 8 * v195) = v98;
        *(*(v90 + 56) + 8 * v195) = v153;
        v202 = *(v90 + 16);
        v36 = __OFADD__(v202, 1);
        v203 = v202 + 1;
        if (v36)
        {
          goto LABEL_235;
        }

        goto LABEL_191;
      }

      goto LABEL_40;
    }

    if ((v91 & 0xC000000000000001) != 0)
    {
      if (v91 < 0)
      {
        v156 = v91;
      }

      else
      {
        v156 = v91 & 0xFFFFFFFFFFFFFF8;
      }

      v98 = v98;
      v157 = sub_2455E9F50();

      if (v157)
      {
        swift_unknownObjectRelease();

        v158 = sub_2455E9F20();
        v90 = sub_2455E424C(v156, v158);

        v159 = sub_2455E34FC(v98);
        v161 = v160;

        if ((v161 & 1) == 0)
        {
          goto LABEL_247;
        }

        v162 = *(*(v90 + 56) + 8 * v159);
        sub_2455E5218(v159, v90);

        goto LABEL_41;
      }
    }

    else
    {
      v231 = sub_2455E34FC(v98);
      if (v232)
      {
        v233 = v231;
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v90 = *v86;
        *(v0 + 832) = *v86;
        if ((v234 & 1) == 0)
        {
          v235 = (v0 + 832);
          goto LABEL_208;
        }

        goto LABEL_205;
      }
    }

    goto LABEL_196;
  }

  v104 = *(v94 + 16);
  v105 = sub_2455E9910();
  if (v105)
  {
    v106 = v105;
    v107 = sub_2455E9940();
    if (__OFSUB__(v104, v107))
    {
      goto LABEL_225;
    }

    v108 = (v104 - v107 + v106);
  }

  else
  {
    v108 = 0;
  }

  v126 = *(v0 + 984);
  sub_2455E9930();
  v98 = *(v126 + 96);
  v127 = sub_2455D04E0();
  if (v108)
  {
    v135 = *v88;
    v136 = v88[1];
    v137 = v136 >> 62;
    v86 = (v0 + 776);
    if ((v136 >> 62) > 1)
    {
      if (v137 == 2)
      {
        v141 = v135 + 16;
        v139 = *(v135 + 16);
        v140 = *(v141 + 8);
        v138 = v140 - v139;
        if (__OFSUB__(v140, v139))
        {
          goto LABEL_244;
        }
      }

      else
      {
        v138 = 0;
      }
    }

    else if (v137)
    {
      v36 = __OFSUB__(HIDWORD(v135), v135);
      v172 = HIDWORD(v135) - v135;
      if (v36)
      {
        goto LABEL_243;
      }

      v138 = v172;
    }

    else
    {
      v138 = BYTE6(v136);
    }

    v173 = IOHIDValueCreateWithBytes(0, v98, v127, v108, v138);
    v174 = v90 & 0xC000000000000001;
    if (v173)
    {
      v153 = v173;
      if (v174)
      {
        if (v90 < 0)
        {
          v175 = v90;
        }

        else
        {
          v175 = v90 & 0xFFFFFFFFFFFFFF8;
        }

        v176 = sub_2455E9F20();
        if (__OFADD__(v176, 1))
        {
          goto LABEL_233;
        }

        *v277 = sub_2455E424C(v175, v176 + 1);
      }

      v213 = swift_isUniquelyReferenced_nonNull_native();
      v214 = *v277;
      *v273 = *v277;
      v195 = sub_2455E34FC(v98);
      v216 = *(v214 + 16);
      v217 = (v215 & 1) == 0;
      v36 = __OFADD__(v216, v217);
      v218 = v216 + v217;
      if (v36)
      {
        goto LABEL_229;
      }

      v219 = v215;
      if (*(v214 + 24) >= v218)
      {
        if ((v213 & 1) == 0)
        {
          v248 = v195;
          sub_2455E5E38();
          v195 = v248;
        }
      }

      else
      {
        sub_2455E4F3C(v218, v213);
        v195 = sub_2455E34FC(v98);
        if ((v219 & 1) != (v220 & 1))
        {
          goto LABEL_218;
        }
      }

      v90 = *v273;
      if (v219)
      {
        goto LABEL_40;
      }

      *(v90 + 8 * (v195 >> 6) + 64) |= 1 << v195;
      *(*(v90 + 48) + 8 * v195) = v98;
      *(*(v90 + 56) + 8 * v195) = v153;
      v221 = *(v90 + 16);
      v36 = __OFADD__(v221, 1);
      v203 = v221 + 1;
      if (v36)
      {
        goto LABEL_237;
      }

      goto LABEL_191;
    }

    if (v174)
    {
      if (v90 < 0)
      {
        v177 = v90;
      }

      else
      {
        v177 = v90 & 0xFFFFFFFFFFFFFF8;
      }

      v98 = v98;
      v178 = sub_2455E9F50();

      if (!v178)
      {
        goto LABEL_206;
      }

      swift_unknownObjectRelease();

      v179 = sub_2455E9F20();
      v91 = sub_2455E424C(v177, v179);

      v169 = sub_2455E34FC(v98);
      v181 = v180;

      if ((v181 & 1) == 0)
      {
        goto LABEL_249;
      }

      goto LABEL_152;
    }

    v239 = sub_2455E34FC(v98);
    if ((v240 & 1) == 0)
    {
      goto LABEL_206;
    }

    v233 = v239;
    v241 = swift_isUniquelyReferenced_nonNull_native();
    v90 = *v277;
    *(v0 + 784) = *v277;
    if (v241)
    {
      goto LABEL_205;
    }

    v235 = (v0 + 784);
    goto LABEL_208;
  }

  __break(1u);
LABEL_256:
  __break(1u);
  return MEMORY[0x2822008A0](v127, v128, v129, v130, v131, v132, v133, v134);
}

uint64_t sub_2455DD5A0()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  v3 = *(v2 + 880);

  if (v0)
  {
    v4 = sub_2455E136C;
  }

  else
  {
    v4 = sub_2455DD738;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2455DD738()
{
  v2 = *(v1 + 736);
  v357 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_2455E9F20();
    v371 = v1;
    if (v3)
    {
LABEL_3:
      *(v1 + 704) = MEMORY[0x277D84F90];
      sub_2455E5F98(0, v3 & ~(v3 >> 63), 0);
      v342 = (v1 + 704);
      v4 = *(v1 + 704);
      if (v357)
      {
        v5 = sub_2455E9EC0();
      }

      else
      {
        v5 = sub_2455E9DD0();
        v6 = *(v2 + 36);
      }

      *(v1 + 664) = v5;
      *(v1 + 672) = v6;
      *(v1 + 680) = v357 != 0;
      if (v3 < 0)
      {
        goto LABEL_64;
      }

      v7 = 0;
      v8 = (v1 + 152);
      v9 = (v1 + 304);
      v347 = (v1 + 768);
      v349 = (v1 + 760);
      v352 = (v1 + 632);
      v354 = *(v1 + 1096);
      v355 = v3;
      v343 = v2 + 72;
      v345 = v2 + 64;
      v359 = v2;
      while (1)
      {
        v10 = __OFADD__(v7, 1);
        v11 = v7 + 1;
        if (v10)
        {
          break;
        }

        v361 = v11;
        v12 = *(v1 + 880);
        v13 = *(v1 + 680);
        v367 = *(v1 + 672);
        v369 = *(v1 + 664);
        sub_2455E6190((v1 + 720), v369, v367, *(v1 + 680), v2);
        v14 = *(v1 + 720);
        v16 = v15;

        sub_2455A0954(v16, v12, v8);
        v17 = v8[5];
        v9[4] = v8[4];
        v9[5] = v17;
        v9[6] = v8[6];
        *(v9 + 105) = *(v8 + 105);
        v18 = v8[1];
        *v9 = *v8;
        v9[1] = v18;
        v19 = v8[3];
        v9[2] = v8[2];
        v9[3] = v19;
        if (sub_2455A5BFC(v9) == 1)
        {
          goto LABEL_322;
        }

        v20 = v9[5];
        *(v1 + 80) = v9[4];
        *(v1 + 96) = v20;
        *(v1 + 112) = v9[6];
        *(v1 + 121) = *(v9 + 105);
        v21 = v9[1];
        *(v1 + 16) = *v9;
        *(v1 + 32) = v21;
        v22 = v9[3];
        *(v1 + 48) = v9[2];
        *(v1 + 64) = v22;
        BytePtr = IOHIDValueGetBytePtr(v14);
        Length = IOHIDValueGetLength(v14);
        v363 = v13;
        if (Length)
        {
          v25 = Length;
          if (Length <= 0xE)
          {
            v28 = v4;
            *(v1 + 143) = 0;
            *(v1 + 137) = 0;
            *(v1 + 151) = Length;
            memcpy((v1 + 137), BytePtr, Length);
            v29 = *(v1 + 137);
            v30 = v354 & 0xF00000000000000 | *(v1 + 145) | ((*(v1 + 149) | (*(v1 + 151) << 16)) << 32);
            v354 = v30;
          }

          else
          {
            sub_2455E9960();
            swift_allocObject();
            v26 = sub_2455E9900();
            v27 = v26;
            v28 = v4;
            if (v25 >= 0x7FFFFFFF)
            {
              sub_2455E99E0();
              v29 = swift_allocObject();
              *(v29 + 16) = 0;
              *(v29 + 24) = v25;
              v30 = v27 | 0x8000000000000000;
            }

            else
            {
              v29 = v25 << 32;
              v30 = v26 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v28 = v4;
          v29 = 0;
          v30 = 0xC000000000000000;
        }

        v31 = *(v371 + 976);
        v32 = *(v371 + 888);
        TimeStamp = IOHIDValueGetTimeStamp(v14);
        sub_2455D05BC(TimeStamp, v32);
        v1 = v371;
        HIDElement.Value.init(element:fromBytes:timestamp:)((v371 + 16), v29, v30, v32, v31);

        v4 = v28;
        *(v371 + 704) = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        v3 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          sub_2455E5F98((v34 > 1), v35 + 1, 1);
          v4 = *v342;
        }

        v36 = *(v371 + 976);
        v37 = *(v371 + 968);
        *(v4 + 16) = v3;
        v5 = sub_2455E6F48(v36, v4 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, type metadata accessor for HIDElement.Value);
        v2 = v359;
        if (v357)
        {
          if (!v363)
          {
            goto LABEL_325;
          }

          if (sub_2455E9EF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B8, &qword_2455F16A0);
          v0 = v352;
          v43 = sub_2455E9AF0();
          sub_2455E9F70();
          v5 = v43(v352, 0);
          v7 = v361;
        }

        else
        {
          v0 = v369;
          if (v363)
          {
            v5 = sub_2455E9F00();
            if (v5 != *(v359 + 36))
            {
              goto LABEL_58;
            }

            *v347 = sub_2455E9F10();
            type metadata accessor for IOHIDElement();
            swift_dynamicCast();
            v3 = *v349;
            sub_2455E34FC(*v349);
            v39 = v38;

            if ((v39 & 1) == 0)
            {
              goto LABEL_61;
            }

            v0 = sub_2455E9EE0();
            v40 = sub_2455E9F30();
            v42 = v41;
            swift_unknownObjectRelease();
            v2 = v359;
            v5 = sub_2455E7128(v369, v367, 1);
          }

          else
          {
            if ((v369 & 0x8000000000000000) != 0)
            {
              goto LABEL_59;
            }

            v40 = 1 << *(v359 + 32);
            if (v369 >= v40)
            {
              goto LABEL_59;
            }

            v44 = v369 >> 6;
            v45 = *(v345 + 8 * (v369 >> 6));
            if (((v45 >> v369) & 1) == 0)
            {
              goto LABEL_60;
            }

            if (*(v359 + 36) != v367)
            {
              goto LABEL_62;
            }

            v46 = v45 & (-2 << (v369 & 0x3F));
            if (v46)
            {
              v40 = __clz(__rbit64(v46)) | v369 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v0 = (v44 << 6);
              v47 = (v343 + 8 * v44);
              v48 = v44 + 1;
              while (v48 < (v40 + 63) >> 6)
              {
                v50 = *v47++;
                v49 = v50;
                v0 += 8;
                ++v48;
                if (v50)
                {
                  v5 = sub_2455E7128(v369, v367, 0);
                  v40 = v0 + __clz(__rbit64(v49));
                  goto LABEL_41;
                }
              }

              v5 = sub_2455E7128(v369, v367, 0);
            }

LABEL_41:
            v42 = v367;
          }

          v7 = v361;
          *(v371 + 664) = v40;
          *(v371 + 672) = v42;
          *(v371 + 680) = v363;
        }

        LOBYTE(v3) = v355;
        if (v7 == v355)
        {
          sub_2455E7128(*(v371 + 664), *(v371 + 672), *(v371 + 680));

          goto LABEL_47;
        }

        if (v7 >= v355)
        {
          goto LABEL_57;
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
      v64 = v5;
      sub_2455E5940();
      v5 = v64;
      v60 = *v0;
      if ((v3 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v3 = *(v2 + 16);
    v371 = v1;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v354 = *(v1 + 1096);
  v4 = MEMORY[0x277D84F90];
LABEL_47:
  v3 = *(v1 + 944);
  sub_2455E661C(*(v1 + 952), v3, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v1 + 696);
  *(v1 + 752) = v52;
  v5 = sub_2455E347C(v3, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
  v54 = *(v52 + 16);
  v55 = (v53 & 1) == 0;
  v10 = __OFADD__(v54, v55);
  v56 = v54 + v55;
  if (v10)
  {
    goto LABEL_63;
  }

  LOBYTE(v3) = v53;
  v0 = (v1 + 752);
  if (*(v52 + 24) >= v56)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v57 = *(v1 + 944);
    sub_2455E44CC(v56, isUniquelyReferenced_nonNull_native);
    v5 = sub_2455E347C(v57, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
    if ((v3 & 1) != (v58 & 1))
    {
LABEL_50:

      return sub_2455EA020();
    }
  }

  v60 = *v0;
  if ((v3 & 1) == 0)
  {
LABEL_66:
    v65 = *(v1 + 944);
    v66 = *(v1 + 920);
    v60[(v5 >> 6) + 8] |= 1 << v5;
    v67 = v5;
    sub_2455E661C(v65, v60[6] + *(v66 + 72) * v5, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
    v68 = v60[7] + 16 * v67;
    *v68 = v4;
    *(v68 + 8) = 0;
    v69 = v60[2];
    v10 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v10)
    {
      goto LABEL_294;
    }

    v60[2] = v70;
    goto LABEL_68;
  }

LABEL_55:
  v61 = v60[7] + 16 * v5;
  v62 = *v61;
  v63 = *(v61 + 8);
  *v61 = v4;
  *(v61 + 8) = 0;
  sub_2455E7110(v62, v63);
LABEL_68:
  v71 = *(v1 + 952);
  sub_2455E6788(*(v1 + 944), type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  *(v1 + 696) = v60;
  __swift_destroy_boxed_opaque_existential_1((v1 + 432));
  sub_2455E6788(v71, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v72 = *(v1 + 1104) + 1;
  v73 = v1;
  if (v72 == *(v1 + 1088))
  {
LABEL_69:
    v74 = *(v73 + 1080);
    v75 = *(v73 + 1072);
    v76 = *(v73 + 1064);
    v77 = *(v73 + 1056);
    v78 = *(v73 + 848);
    (*(**(v73 + 880) + 824))();
    v79 = *(v73 + 696);
    *v78 = *(v73 + 688);
    v78[1] = v79;

    MEMORY[0x245D6C8C0](v77, -1, -1);
    MEMORY[0x245D6C8C0](v76, -1, -1);
    MEMORY[0x245D6C8C0](v75, -1, -1);

    v80 = *(v73 + 8);

    return v80();
  }

  v370 = (v1 + 776);
  v351 = (v1 + 688);
  v353 = v1 + 287;
  v81 = (v1 + 744);
  v344 = (v1 + 800);
  v346 = (v1 + 784);
  v356 = (v1 + 808);
  v358 = (v1 + 792);
  v348 = (v1 + 832);
  v350 = (v1 + 816);
  v360 = (v1 + 840);
  v362 = (v1 + 824);
  while (1)
  {
    *(v73 + 1104) = v72;
    *(v73 + 1096) = v354;
    v82 = *(v73 + 1080);
    sub_2455ABC88(*(v73 + 856) + 40 * v72 + 32, v73 + 432);
    if (v82)
    {
      v90 = *(v73 + 1080);
      swift_willThrow();
      v91 = v90;
      v92 = *(v73 + 1080);
      v93 = *(v73 + 1016);
      sub_2455ABC88(v73 + 432, v73 + 552);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
      v94 = swift_dynamicCast();
      v95 = *(v93 + 56);
      if (v94)
      {
        v96 = *(v73 + 1032);
        v97 = *(v73 + 1024);
        v98 = *(v73 + 992);
        v95(v98, 0, 1, *(v73 + 1008));
        sub_2455E6F48(v98, v96, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E661C(v96, v97, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v99 = v92;
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v73 + 688);
        *(v73 + 712) = v101;
        v102 = sub_2455E347C(v97, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
        v104 = *(v101 + 16);
        v105 = (v103 & 1) == 0;
        v10 = __OFADD__(v104, v105);
        v106 = v104 + v105;
        if (v10)
        {
          goto LABEL_321;
        }

        v107 = v103;
        if (*(v101 + 24) >= v106)
        {
          if ((v100 & 1) == 0)
          {
            v150 = v102;
            sub_2455E5BBC();
            v102 = v150;
          }
        }

        else
        {
          v108 = *(v371 + 1024);
          sub_2455E49CC(v106, v100);
          v102 = sub_2455E347C(v108, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
          if ((v107 & 1) != (v109 & 1))
          {
            goto LABEL_50;
          }
        }

        v131 = *(v371 + 712);
        v364 = *(v371 + 1032);
        v132 = *(v371 + 1024);
        if (v107)
        {
          v133 = v131[7] + 16 * v102;
          v134 = *v133;
          v135 = *(v133 + 8);
          *v133 = v92;
          *(v133 + 8) = 1;
          sub_2455E711C(v134, v135);

          sub_2455E6788(v132, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v364, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v371 + 432));
        }

        else
        {
          v136 = *(v371 + 1016);
          v131[(v102 >> 6) + 8] |= 1 << v102;
          v137 = v102;
          sub_2455E661C(v132, v131[6] + *(v136 + 72) * v102, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          v138 = v131[7] + 16 * v137;
          *v138 = v92;
          *(v138 + 8) = 1;

          sub_2455E6788(v132, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v364, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v371 + 432));
          v139 = v131[2];
          v10 = __OFADD__(v139, 1);
          v140 = v139 + 1;
          if (v10)
          {
            goto LABEL_324;
          }

          v131[2] = v140;
        }

        *v351 = v131;
        v73 = v371;
      }

      else
      {
        v110 = *(v73 + 992);
        v95(v110, 1, 1, *(v73 + 1008));
        sub_2455A7680(v110, &qword_27EE15198, &qword_2455F1678);
        sub_2455ABC88(v73 + 432, v73 + 592);
        if (swift_dynamicCast())
        {
          v111 = *(v73 + 936);
          v112 = *(v73 + 928);
          v113 = *(v73 + 896);
          (*(*(v73 + 920) + 56))(v113, 0, 1, *(v73 + 912));
          sub_2455E6F48(v113, v111, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E661C(v111, v112, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v114 = v92;
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v116 = *(v73 + 696);
          *(v73 + 728) = v116;
          v118 = sub_2455E347C(v112, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
          v119 = *(v116 + 16);
          v120 = (v117 & 1) == 0;
          v121 = v119 + v120;
          if (__OFADD__(v119, v120))
          {
            goto LABEL_323;
          }

          v122 = v117;
          if (*(v116 + 24) >= v121)
          {
            if ((v115 & 1) == 0)
            {
              sub_2455E5940();
            }
          }

          else
          {
            v123 = v117;
            v124 = *(v371 + 928);
            sub_2455E44CC(v121, v115);
            v125 = v124;
            v122 = v123;
            v126 = sub_2455E347C(v125, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
            if ((v123 & 1) != (v127 & 1))
            {
              goto LABEL_50;
            }

            v118 = v126;
          }

          v73 = v371;
          v141 = *(v371 + 728);
          v365 = *(v371 + 936);
          v142 = *(v371 + 928);
          if (v122)
          {
            v143 = v141[7] + 16 * v118;
            v144 = *v143;
            v145 = *(v143 + 8);
            *v143 = v92;
            *(v143 + 8) = 1;
            sub_2455E7110(v144, v145);

            sub_2455E6788(v142, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v365, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v371 + 432));
          }

          else
          {
            v146 = *(v371 + 920);
            v141[(v118 >> 6) + 8] |= 1 << v118;
            sub_2455E661C(v142, v141[6] + *(v146 + 72) * v118, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            v147 = v141[7] + 16 * v118;
            *v147 = v92;
            *(v147 + 8) = 1;

            sub_2455E6788(v142, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v365, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v371 + 432));
            v148 = v141[2];
            v10 = __OFADD__(v148, 1);
            v149 = v148 + 1;
            if (v10)
            {
              goto LABEL_326;
            }

            v141[2] = v149;
          }

          *(v371 + 696) = v141;
        }

        else
        {
          v128 = *(v73 + 920);
          v129 = *(v73 + 912);
          v130 = *(v73 + 896);

          __swift_destroy_boxed_opaque_existential_1((v73 + 432));
          (*(v128 + 56))(v130, 1, 1, v129);
          sub_2455A7680(v130, &qword_27EE15190, &qword_2455F1670);
        }
      }

      v354 = *(v73 + 1096);
      goto LABEL_77;
    }

    v83 = *(v73 + 1016);
    sub_2455ABC88(v73 + 432, v73 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v84 = swift_dynamicCast();
    v85 = *(v83 + 56);
    if (v84)
    {
      break;
    }

    v86 = *(v73 + 1000);
    v85(v86, 1, 1, *(v73 + 1008));
    sub_2455A7680(v86, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v73 + 432, v73 + 512);
    if (swift_dynamicCast())
    {
      v321 = *(v73 + 952);
      v322 = *(v73 + 912);
      v323 = *(v73 + 904);
      (*(*(v73 + 920) + 56))(v323, 0, 1, v322);
      sub_2455E6F48(v323, v321, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v325 = *(v321 + *(v322 + 20));
      v326 = *(v325 + 16);
      v327 = MEMORY[0x277D84F90];
      if (v326)
      {
        *v81 = MEMORY[0x277D84F90];
        sub_2455E9E40();
        v328 = (v325 + 128);
        do
        {
          v329 = *v328;
          v328 += 16;
          v330 = v329;
          sub_2455E9E20();
          sub_2455E9E50();
          sub_2455E9E60();
          sub_2455E9E30();
          --v326;
        }

        while (v326);
        v327 = *v81;
      }

      *(v371 + 1136) = v327;
      v331 = *(v371 + 1072);
      v332 = *(v371 + 1064);
      v333 = *(v371 + 1048);
      v334 = *(v371 + 880);
      v335 = sub_2455E6848(&qword_27EE15178, v324, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
      v336 = swift_task_alloc();
      *(v371 + 1144) = v336;
      v336[2] = v332;
      v336[3] = v334;
      v336[4] = v327;
      v336[5] = v331;
      v336[6] = v333;
      v337 = swift_task_alloc();
      *(v371 + 1152) = v337;
      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
      *v337 = v371;
      v337[1] = sub_2455DD5A0;
      v201 = v338;
      v199 = sub_2455E6FC8;
      v194 = (v371 + 736);
      v198 = 0x80000002455F3230;
      goto LABEL_287;
    }

    v87 = *(v73 + 920);
    v88 = *(v73 + 912);
    v89 = *(v73 + 904);
    __swift_destroy_boxed_opaque_existential_1((v73 + 432));
    (*(v87 + 56))(v89, 1, 1, v88);
    sub_2455A7680(v89, &qword_27EE15190, &qword_2455F1670);
LABEL_77:
    v72 = *(v73 + 1104) + 1;
    if (v72 == *(v73 + 1088))
    {
      goto LABEL_69;
    }
  }

  v151 = *(v73 + 1040);
  v152 = *(v73 + 1008);
  v153 = *(v73 + 1000);
  v85(v153, 0, 1, v152);
  sub_2455E6F48(v153, v151, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  *(v73 + 776) = MEMORY[0x277D84F98];
  v155 = *(v151 + *(v152 + 20));
  v368 = *(v155 + 16);
  if (!v368)
  {
LABEL_286:
    v339 = *(v371 + 1056);
    v340 = *(v371 + 1048);
    v341 = *(v371 + 1040);
    v334 = *(v371 + 880);
    v335 = sub_2455E6848(&qword_27EE15178, v154, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
    v336 = swift_task_alloc();
    *(v371 + 1112) = v336;
    v336[2] = v339;
    v336[3] = v334;
    v336[4] = v370;
    v336[5] = v340;
    v336[6] = v351;
    v336[7] = v341;
    v194 = swift_task_alloc();
    *(v371 + 1120) = v194;
    *v194 = v371;
    v194[1] = sub_2455DBA40;
    v199 = sub_2455E7134;
    v198 = 0x80000002455F3230;
    v201 = MEMORY[0x277D84F78] + 8;
LABEL_287:
    v195 = v334;
    v196 = v335;
    v197 = 0xD00000000000001ALL;
    v200 = v336;

    return MEMORY[0x2822008A0](v194, v195, v196, v197, v198, v199, v200, v201);
  }

  v156 = 0;
  v157 = (*(v371 + 984) + *(*(v371 + 960) + 24));
  v158 = *(*(v371 + 968) + 80);
  v366 = v155 + ((v158 + 32) & ~v158);
  v159 = MEMORY[0x277D84F98];
  v160 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v156 >= *(v155 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    sub_2455E661C(v366 + *(*(v371 + 968) + 72) * v156, *(v371 + 984), type metadata accessor for HIDElement.Value);
    v161 = *v157;
    v162 = v157[1];
    v163 = v162 >> 62;
    if ((v162 >> 62) <= 1)
    {
      if (!v163)
      {
        v164 = *(v371 + 984);
        *(v371 + 273) = v161;
        *(v371 + 281) = v162;
        *(v371 + 283) = BYTE2(v162);
        *(v371 + 284) = BYTE3(v162);
        *(v371 + 285) = BYTE4(v162);
        *(v371 + 286) = BYTE5(v162);
        v165 = *(v164 + 96);
        v166 = sub_2455D04E0();
        v167 = *v157;
        v168 = v157[1];
        v169 = v168 >> 62;
        if ((v168 >> 62) > 1)
        {
          if (v169 == 2)
          {
            v189 = v167 + 16;
            v187 = *(v167 + 16);
            v188 = *(v189 + 8);
            v170 = v188 - v187;
            if (__OFSUB__(v188, v187))
            {
              goto LABEL_312;
            }
          }

          else
          {
            v170 = 0;
          }
        }

        else if (v169)
        {
          v10 = __OFSUB__(HIDWORD(v167), v167);
          v217 = HIDWORD(v167) - v167;
          if (v10)
          {
            goto LABEL_309;
          }

          v170 = v217;
        }

        else
        {
          v170 = BYTE6(v168);
        }

        v231 = IOHIDValueCreateWithBytes(0, v165, v166, (v371 + 273), v170);
        if (v231)
        {
          v220 = v231;
          if ((v160 & 0xC000000000000001) != 0)
          {
            if (v160 < 0)
            {
              v232 = v160;
            }

            else
            {
              v232 = v160 & 0xFFFFFFFFFFFFFF8;
            }

            v233 = sub_2455E9F20();
            if (__OFADD__(v233, 1))
            {
              goto LABEL_301;
            }

            v223 = v370;
            *v370 = sub_2455E424C(v232, v233 + 1);
          }

          else
          {
            v223 = v370;
          }

          v272 = swift_isUniquelyReferenced_nonNull_native();
          v273 = *v223;
          *v362 = *v223;
          v263 = sub_2455E34FC(v165);
          v275 = *(v273 + 16);
          v276 = (v274 & 1) == 0;
          v10 = __OFADD__(v275, v276);
          v277 = v275 + v276;
          if (v10)
          {
            goto LABEL_298;
          }

          v278 = v274;
          if (*(v273 + 24) >= v277)
          {
            if ((v272 & 1) == 0)
            {
              v318 = v263;
              sub_2455E5E38();
              v263 = v318;
            }
          }

          else
          {
            sub_2455E4F3C(v277, v272);
            v263 = sub_2455E34FC(v165);
            if ((v278 & 1) != (v279 & 1))
            {
              goto LABEL_290;
            }
          }

          v159 = *v362;
          if ((v278 & 1) == 0)
          {
            *(v159 + 8 * (v263 >> 6) + 64) |= 1 << v263;
            *(*(v159 + 48) + 8 * v263) = v165;
            *(*(v159 + 56) + 8 * v263) = v220;
            v280 = *(v159 + 16);
            v10 = __OFADD__(v280, 1);
            v271 = v280 + 1;
            if (v10)
            {
              goto LABEL_306;
            }

            goto LABEL_262;
          }

LABEL_260:
          v298 = *(v159 + 56);
          v299 = *(v298 + 8 * v263);
          *(v298 + 8 * v263) = v220;

LABEL_263:
          *v223 = v159;
LABEL_264:
          v160 = v159;
LABEL_108:
          ++v156;
          sub_2455E6788(*(v371 + 984), type metadata accessor for HIDElement.Value);
          if (v368 == v156)
          {
            goto LABEL_286;
          }

          continue;
        }

        if ((v159 & 0xC000000000000001) != 0)
        {
          if (v159 < 0)
          {
            v234 = v159;
          }

          else
          {
            v234 = v159 & 0xFFFFFFFFFFFFFF8;
          }

          v165 = v165;
          v235 = sub_2455E9F50();

          if (v235)
          {
            swift_unknownObjectRelease();

            v236 = sub_2455E9F20();
            v160 = sub_2455E424C(v234, v236);

            v237 = sub_2455E34FC(v165);
            v239 = v238;

            if ((v239 & 1) == 0)
            {
              goto LABEL_318;
            }

            goto LABEL_218;
          }

LABEL_107:

          goto LABEL_108;
        }

        v307 = sub_2455E34FC(v165);
        if ((v308 & 1) == 0)
        {
          goto LABEL_107;
        }

        v303 = v307;
        v304 = v370;
        v309 = swift_isUniquelyReferenced_nonNull_native();
        v159 = *v370;
        *v350 = *v370;
        if ((v309 & 1) == 0)
        {
          v306 = v350;
          goto LABEL_280;
        }

LABEL_278:

        v316 = *(*(v159 + 56) + 8 * v303);
        sub_2455E5218(v303, v159);

        *v304 = v159;
        goto LABEL_264;
      }

      v176 = v161;
      if (v161 <= v161 >> 32)
      {
        v177 = sub_2455E9910();
        if (v177)
        {
          v178 = v177;
          v179 = sub_2455E9940();
          if (__OFSUB__(v176, v179))
          {
            goto LABEL_296;
          }

          v180 = (v176 - v179 + v178);
        }

        else
        {
          v180 = 0;
        }

        v209 = *(v371 + 984);
        sub_2455E9930();
        v165 = *(v209 + 96);
        v194 = sub_2455D04E0();
        if (!v180)
        {
          goto LABEL_328;
        }

        v210 = *v157;
        v211 = v157[1];
        v212 = v211 >> 62;
        if ((v211 >> 62) > 1)
        {
          if (v212 == 2)
          {
            v216 = v210 + 16;
            v214 = *(v210 + 16);
            v215 = *(v216 + 8);
            v213 = v215 - v214;
            if (__OFSUB__(v215, v214))
            {
              goto LABEL_316;
            }
          }

          else
          {
            v213 = 0;
          }
        }

        else if (v212)
        {
          v10 = __OFSUB__(HIDWORD(v210), v210);
          v250 = HIDWORD(v210) - v210;
          if (v10)
          {
            goto LABEL_315;
          }

          v213 = v250;
        }

        else
        {
          v213 = BYTE6(v211);
        }

        v251 = IOHIDValueCreateWithBytes(0, v165, v194, v180, v213);
        v252 = v159 & 0xC000000000000001;
        if (v251)
        {
          v220 = v251;
          if (v252)
          {
            if (v159 < 0)
            {
              v253 = v159;
            }

            else
            {
              v253 = v159 & 0xFFFFFFFFFFFFFF8;
            }

            v254 = sub_2455E9F20();
            v223 = v370;
            if (__OFADD__(v254, 1))
            {
              goto LABEL_304;
            }

            *v370 = sub_2455E424C(v253, v254 + 1);
          }

          else
          {
            v223 = v370;
          }

          v290 = swift_isUniquelyReferenced_nonNull_native();
          v291 = *v223;
          *v356 = *v223;
          v263 = sub_2455E34FC(v165);
          v293 = *(v291 + 16);
          v294 = (v292 & 1) == 0;
          v10 = __OFADD__(v293, v294);
          v295 = v293 + v294;
          if (v10)
          {
            goto LABEL_300;
          }

          v296 = v292;
          if (*(v291 + 24) >= v295)
          {
            if ((v290 & 1) == 0)
            {
              v320 = v263;
              sub_2455E5E38();
              v263 = v320;
            }
          }

          else
          {
            sub_2455E4F3C(v295, v290);
            v263 = sub_2455E34FC(v165);
            if ((v296 & 1) != (v297 & 1))
            {
LABEL_290:
              type metadata accessor for IOHIDElement();
              goto LABEL_50;
            }
          }

          v159 = *v356;
          if (v296)
          {
            goto LABEL_260;
          }

          *(v159 + 8 * (v263 >> 6) + 64) |= 1 << v263;
          *(*(v159 + 48) + 8 * v263) = v165;
          *(*(v159 + 56) + 8 * v263) = v220;
          v300 = *(v159 + 16);
          v10 = __OFADD__(v300, 1);
          v271 = v300 + 1;
          if (v10)
          {
            goto LABEL_308;
          }

LABEL_262:
          *(v159 + 16) = v271;
          goto LABEL_263;
        }

        if (v252)
        {
          if (v159 < 0)
          {
            v255 = v159;
          }

          else
          {
            v255 = v159 & 0xFFFFFFFFFFFFFF8;
          }

          v165 = v165;
          v256 = sub_2455E9F50();

          if (!v256)
          {
            goto LABEL_107;
          }

          swift_unknownObjectRelease();

          v257 = sub_2455E9F20();
          v160 = sub_2455E424C(v255, v257);

          v237 = sub_2455E34FC(v165);
          v259 = v258;

          if ((v259 & 1) == 0)
          {
            goto LABEL_320;
          }

LABEL_218:

          v260 = *(*(v160 + 56) + 8 * v237);
          sub_2455E5218(v237, v160);

          *v370 = v160;
LABEL_269:
          v159 = v160;
          goto LABEL_108;
        }

        v313 = sub_2455E34FC(v165);
        if ((v314 & 1) == 0)
        {
          goto LABEL_107;
        }

        v303 = v313;
        v304 = v370;
        v315 = swift_isUniquelyReferenced_nonNull_native();
        v159 = *v370;
        *v344 = *v370;
        if (v315)
        {
          goto LABEL_278;
        }

        v306 = v344;
LABEL_280:
        sub_2455E5E38();
        v159 = *v306;
        goto LABEL_278;
      }

      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
    }

    break;
  }

  if (v163 != 2)
  {
    v181 = *(v371 + 984);
    *v353 = 0;
    *(v353 + 6) = 0;
    v165 = *(v181 + 96);
    v182 = sub_2455D04E0();
    v183 = *v157;
    v184 = v157[1];
    v185 = v184 >> 62;
    if ((v184 >> 62) > 1)
    {
      v186 = 0;
      if (v185 == 2)
      {
        v192 = v183 + 16;
        v190 = *(v183 + 16);
        v191 = *(v192 + 8);
        v186 = v191 - v190;
        if (__OFSUB__(v191, v190))
        {
          goto LABEL_311;
        }
      }
    }

    else if (v185)
    {
      v10 = __OFSUB__(HIDWORD(v183), v183);
      v218 = HIDWORD(v183) - v183;
      if (v10)
      {
        goto LABEL_310;
      }

      v186 = v218;
    }

    else
    {
      v186 = BYTE6(v184);
    }

    v219 = IOHIDValueCreateWithBytes(0, v165, v182, v353, v186);
    if (v219)
    {
      v220 = v219;
      if ((v160 & 0xC000000000000001) != 0)
      {
        if (v160 < 0)
        {
          v221 = v160;
        }

        else
        {
          v221 = v160 & 0xFFFFFFFFFFFFFF8;
        }

        v222 = sub_2455E9F20();
        if (__OFADD__(v222, 1))
        {
          goto LABEL_302;
        }

        v223 = v370;
        *v370 = sub_2455E424C(v221, v222 + 1);
      }

      else
      {
        v223 = v370;
      }

      v261 = swift_isUniquelyReferenced_nonNull_native();
      v262 = *v223;
      *v360 = *v223;
      v263 = sub_2455E34FC(v165);
      v265 = *(v262 + 16);
      v266 = (v264 & 1) == 0;
      v10 = __OFADD__(v265, v266);
      v267 = v265 + v266;
      if (v10)
      {
        goto LABEL_297;
      }

      v268 = v264;
      if (*(v262 + 24) >= v267)
      {
        if ((v261 & 1) == 0)
        {
          v317 = v263;
          sub_2455E5E38();
          v263 = v317;
        }
      }

      else
      {
        sub_2455E4F3C(v267, v261);
        v263 = sub_2455E34FC(v165);
        if ((v268 & 1) != (v269 & 1))
        {
          goto LABEL_290;
        }
      }

      v159 = *v360;
      if ((v268 & 1) == 0)
      {
        *(v159 + 8 * (v263 >> 6) + 64) |= 1 << v263;
        *(*(v159 + 48) + 8 * v263) = v165;
        *(*(v159 + 56) + 8 * v263) = v220;
        v270 = *(v159 + 16);
        v10 = __OFADD__(v270, 1);
        v271 = v270 + 1;
        if (v10)
        {
          goto LABEL_305;
        }

        goto LABEL_262;
      }

      goto LABEL_260;
    }

    if ((v160 & 0xC000000000000001) != 0)
    {
      if (v160 < 0)
      {
        v224 = v160;
      }

      else
      {
        v224 = v160 & 0xFFFFFFFFFFFFFF8;
      }

      v165 = v165;
      v225 = sub_2455E9F50();

      if (v225)
      {
        swift_unknownObjectRelease();

        v226 = sub_2455E9F20();
        v159 = sub_2455E424C(v224, v226);

        v227 = sub_2455E34FC(v165);
        v229 = v228;

        if ((v229 & 1) == 0)
        {
          goto LABEL_317;
        }

        v230 = *(*(v159 + 56) + 8 * v227);
        sub_2455E5218(v227, v159);

        *v370 = v159;
        goto LABEL_264;
      }
    }

    else
    {
      v301 = sub_2455E34FC(v165);
      if (v302)
      {
        v303 = v301;
        v304 = v370;
        v305 = swift_isUniquelyReferenced_nonNull_native();
        v159 = *v370;
        *v348 = *v370;
        if ((v305 & 1) == 0)
        {
          v306 = v348;
          goto LABEL_280;
        }

        goto LABEL_278;
      }
    }

    goto LABEL_269;
  }

  v171 = *(v161 + 16);
  v172 = sub_2455E9910();
  if (v172)
  {
    v173 = v172;
    v174 = sub_2455E9940();
    if (__OFSUB__(v171, v174))
    {
      goto LABEL_295;
    }

    v175 = (v171 - v174 + v173);
  }

  else
  {
    v175 = 0;
  }

  v193 = *(v371 + 984);
  sub_2455E9930();
  v165 = *(v193 + 96);
  v194 = sub_2455D04E0();
  if (v175)
  {
    v202 = *v157;
    v203 = v157[1];
    v204 = v203 >> 62;
    if ((v203 >> 62) > 1)
    {
      if (v204 == 2)
      {
        v208 = v202 + 16;
        v206 = *(v202 + 16);
        v207 = *(v208 + 8);
        v205 = v207 - v206;
        if (__OFSUB__(v207, v206))
        {
          goto LABEL_314;
        }
      }

      else
      {
        v205 = 0;
      }
    }

    else if (v204)
    {
      v10 = __OFSUB__(HIDWORD(v202), v202);
      v240 = HIDWORD(v202) - v202;
      if (v10)
      {
        goto LABEL_313;
      }

      v205 = v240;
    }

    else
    {
      v205 = BYTE6(v203);
    }

    v241 = IOHIDValueCreateWithBytes(0, v165, v194, v175, v205);
    v242 = v159 & 0xC000000000000001;
    if (v241)
    {
      v220 = v241;
      if (v242)
      {
        if (v159 < 0)
        {
          v243 = v159;
        }

        else
        {
          v243 = v159 & 0xFFFFFFFFFFFFFF8;
        }

        v244 = sub_2455E9F20();
        v223 = v370;
        if (__OFADD__(v244, 1))
        {
          goto LABEL_303;
        }

        *v370 = sub_2455E424C(v243, v244 + 1);
      }

      else
      {
        v223 = v370;
      }

      v281 = swift_isUniquelyReferenced_nonNull_native();
      v282 = *v223;
      *v358 = *v223;
      v263 = sub_2455E34FC(v165);
      v284 = *(v282 + 16);
      v285 = (v283 & 1) == 0;
      v10 = __OFADD__(v284, v285);
      v286 = v284 + v285;
      if (v10)
      {
        goto LABEL_299;
      }

      v287 = v283;
      if (*(v282 + 24) >= v286)
      {
        if ((v281 & 1) == 0)
        {
          v319 = v263;
          sub_2455E5E38();
          v263 = v319;
        }
      }

      else
      {
        sub_2455E4F3C(v286, v281);
        v263 = sub_2455E34FC(v165);
        if ((v287 & 1) != (v288 & 1))
        {
          goto LABEL_290;
        }
      }

      v159 = *v358;
      if (v287)
      {
        goto LABEL_260;
      }

      *(v159 + 8 * (v263 >> 6) + 64) |= 1 << v263;
      *(*(v159 + 48) + 8 * v263) = v165;
      *(*(v159 + 56) + 8 * v263) = v220;
      v289 = *(v159 + 16);
      v10 = __OFADD__(v289, 1);
      v271 = v289 + 1;
      if (v10)
      {
        goto LABEL_307;
      }

      goto LABEL_262;
    }

    if (v242)
    {
      if (v159 < 0)
      {
        v245 = v159;
      }

      else
      {
        v245 = v159 & 0xFFFFFFFFFFFFFF8;
      }

      v165 = v165;
      v246 = sub_2455E9F50();

      if (!v246)
      {
        goto LABEL_107;
      }

      swift_unknownObjectRelease();

      v247 = sub_2455E9F20();
      v160 = sub_2455E424C(v245, v247);

      v237 = sub_2455E34FC(v165);
      v249 = v248;

      if ((v249 & 1) == 0)
      {
        goto LABEL_319;
      }

      goto LABEL_218;
    }

    v310 = sub_2455E34FC(v165);
    if ((v311 & 1) == 0)
    {
      goto LABEL_107;
    }

    v303 = v310;
    v304 = v370;
    v312 = swift_isUniquelyReferenced_nonNull_native();
    v159 = *v370;
    *v346 = *v370;
    if (v312)
    {
      goto LABEL_278;
    }

    v306 = v346;
    goto LABEL_280;
  }

  __break(1u);
LABEL_328:
  __break(1u);
  return MEMORY[0x2822008A0](v194, v195, v196, v197, v198, v199, v200, v201);
}

uint64_t sub_2455DF94C()
{
  v1 = (v0 + 744);
  v280 = (v0 + 776);
  v273 = (v0 + 792);
  v271 = (v0 + 688);
  v272 = (v0 + 808);
  v275 = (v0 + 824);
  bytes = (v0 + 287);
  v274 = (v0 + 840);
  v2 = *(v0 + 1040);

  sub_2455E6788(v2, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  v3 = *(v0 + 1128);
LABEL_2:
  v4 = *(v0 + 1016);
  sub_2455ABC88(v0 + 432, v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v5 = swift_dynamicCast();
  v6 = *(v4 + 56);
  if (v5)
  {
    v7 = *(v0 + 1032);
    v8 = *(v0 + 1024);
    v9 = *(v0 + 992);
    v6(v9, 0, 1, *(v0 + 1008));
    sub_2455E6F48(v9, v7, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    sub_2455E661C(v7, v8, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    v10 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 688);
    *(v0 + 712) = v12;
    v13 = sub_2455E347C(v8, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
    v15 = *(v12 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_235;
    }

    v19 = v14;
    if (*(v12 + 24) >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = v13;
        sub_2455E5BBC();
        v13 = v75;
      }
    }

    else
    {
      v20 = *(v0 + 1024);
      sub_2455E49CC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_2455E347C(v20, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_223;
      }
    }

    v42 = *(v0 + 712);
    v43 = *(v0 + 1032);
    v44 = *(v0 + 1024);
    if (v19)
    {
      v45 = v42[7] + 16 * v13;
      v46 = *v45;
      v47 = *(v45 + 8);
      *v45 = v3;
      *(v45 + 8) = 1;
      sub_2455E711C(v46, v47);

      sub_2455E6788(v44, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v43, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v41 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    }

    else
    {
      v48 = *(v0 + 1016);
      v42[(v13 >> 6) + 8] |= 1 << v13;
      v49 = v13;
      sub_2455E661C(v44, v42[6] + *(v48 + 72) * v13, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v50 = v42[7] + 16 * v49;
      *v50 = v3;
      *(v50 + 8) = 1;

      sub_2455E6788(v44, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v43, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v41 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      v51 = v42[2];
      v17 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v17)
      {
        goto LABEL_245;
      }

      v42[2] = v52;
    }

    *v271 = v42;
  }

  else
  {
    v22 = *(v0 + 992);
    v6(v22, 1, 1, *(v0 + 1008));
    sub_2455A7680(v22, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 592);
    if (swift_dynamicCast())
    {
      v23 = *(v0 + 936);
      v24 = *(v0 + 928);
      v25 = *(v0 + 896);
      (*(*(v0 + 920) + 56))(v25, 0, 1, *(v0 + 912));
      sub_2455E6F48(v25, v23, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      sub_2455E661C(v23, v24, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v26 = v3;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v0 + 696);
      *(v0 + 728) = v28;
      v30 = sub_2455E347C(v24, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
      v31 = *(v28 + 16);
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_244;
      }

      v34 = v29;
      if (*(v28 + 24) >= v33)
      {
        if ((v27 & 1) == 0)
        {
          sub_2455E5940();
        }
      }

      else
      {
        v35 = *(v0 + 928);
        sub_2455E44CC(v33, v27);
        v36 = sub_2455E347C(v35, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
        if ((v34 & 1) != (v37 & 1))
        {
LABEL_223:

          return sub_2455EA020();
        }

        v30 = v36;
      }

      v53 = *(v0 + 728);
      v54 = *(v0 + 936);
      v55 = *(v0 + 928);
      if (v34)
      {
        v56 = v53[7] + 16 * v30;
        v57 = *v56;
        v58 = *(v56 + 8);
        *v56 = v3;
        *(v56 + 8) = 1;
        sub_2455E7110(v57, v58);

        sub_2455E6788(v55, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v54, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v41 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        *(v0 + 696) = v53;
      }

      else
      {
        v278 = *(v0 + 936);
        v59 = *(v0 + 920);
        v53[(v30 >> 6) + 8] |= 1 << v30;
        sub_2455E661C(v55, v53[6] + *(v59 + 72) * v30, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v60 = v53[7] + 16 * v30;
        *v60 = v3;
        *(v60 + 8) = 1;

        sub_2455E6788(v55, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v278, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v41 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        v61 = v53[2];
        v17 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v17)
        {
          goto LABEL_258;
        }

        v53[2] = v62;
        *(v0 + 696) = v53;
      }
    }

    else
    {
      v38 = *(v0 + 920);
      v39 = *(v0 + 912);
      v40 = *(v0 + 896);

      __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      (*(v38 + 56))(v40, 1, 1, v39);
      v41 = sub_2455A7680(v40, &qword_27EE15190, &qword_2455F1670);
    }
  }

  v63 = *(v0 + 1104) + 1;
  if (v63 == *(v0 + 1088))
  {
LABEL_34:
    v76 = *(v0 + 1080);
    v77 = *(v0 + 1072);
    v78 = *(v0 + 1064);
    v79 = *(v0 + 1056);
    v80 = *(v0 + 848);
    (*(**(v0 + 880) + 824))(v41);
    v81 = *(v0 + 696);
    *v80 = *(v0 + 688);
    v80[1] = v81;

    MEMORY[0x245D6C8C0](v79, -1, -1);
    MEMORY[0x245D6C8C0](v78, -1, -1);
    MEMORY[0x245D6C8C0](v77, -1, -1);

    v82 = *(v0 + 8);

    return v82();
  }

  v64 = *(v0 + 1096);
  while (1)
  {
    *(v0 + 1104) = v63;
    *(v0 + 1096) = v64;
    v65 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v63 + 32, v0 + 432);
    if (v65)
    {
      v73 = *(v0 + 1080);
      swift_willThrow();
      v74 = v73;
      v3 = *(v0 + 1080);
      goto LABEL_2;
    }

    v66 = *(v0 + 1016);
    sub_2455ABC88(v0 + 432, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v67 = swift_dynamicCast();
    v68 = *(v66 + 56);
    if (v67)
    {
      v84 = *(v0 + 1040);
      v85 = *(v0 + 1008);
      v86 = *(v0 + 1000);
      v68(v86, 0, 1, v85);
      sub_2455E6F48(v86, v84, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      *(v0 + 776) = MEMORY[0x277D84F98];
      v281 = *(v84 + *(v85 + 20));
      v279 = *(v281 + 16);
      if (!v279)
      {
LABEL_218:
        v268 = *(v0 + 1056);
        v269 = *(v0 + 1048);
        v270 = *(v0 + 1040);
        v260 = *(v0 + 880);
        v261 = sub_2455E6848(&qword_27EE15178, v87, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
        v262 = swift_task_alloc();
        *(v0 + 1112) = v262;
        v262[2] = v268;
        v262[3] = v260;
        v262[4] = v280;
        v262[5] = v269;
        v262[6] = v271;
        v262[7] = v270;
        v267 = swift_task_alloc();
        *(v0 + 1120) = v267;
        *v267 = v0;
        v267[1] = sub_2455DBA40;
        v266 = sub_2455E7134;
        v265 = MEMORY[0x277D84F78] + 8;
        goto LABEL_219;
      }

      v88 = 0;
      v89 = (*(v0 + 984) + *(*(v0 + 960) + 24));
      v90 = *(*(v0 + 968) + 80);
      v277 = v281 + ((v90 + 32) & ~v90);
      v91 = MEMORY[0x277D84F98];
      v92 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v88 >= *(v281 + 16))
        {
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
        }

        sub_2455E661C(v277 + *(*(v0 + 968) + 72) * v88, *(v0 + 984), type metadata accessor for HIDElement.Value);
        v93 = *v89;
        v94 = v89[1];
        v95 = v94 >> 62;
        if ((v94 >> 62) > 1)
        {
          if (v95 != 2)
          {
            v113 = *(v0 + 984);
            *bytes = 0;
            *(v0 + 293) = 0;
            v97 = *(v113 + 96);
            v114 = sub_2455D04E0();
            v115 = *v89;
            v116 = v89[1];
            v117 = v116 >> 62;
            if ((v116 >> 62) > 1)
            {
              v118 = 0;
              if (v117 == 2)
              {
                v124 = v115 + 16;
                v122 = *(v115 + 16);
                v123 = *(v124 + 8);
                v118 = v123 - v122;
                if (__OFSUB__(v123, v122))
                {
                  goto LABEL_248;
                }
              }
            }

            else if (v117)
            {
              v17 = __OFSUB__(HIDWORD(v115), v115);
              v144 = HIDWORD(v115) - v115;
              if (v17)
              {
                goto LABEL_247;
              }

              v118 = v144;
            }

            else
            {
              v118 = BYTE6(v116);
            }

            v145 = IOHIDValueCreateWithBytes(0, v97, v114, bytes, v118);
            if (v145)
            {
              v146 = v145;
              if ((v92 & 0xC000000000000001) != 0)
              {
                if (v92 < 0)
                {
                  v147 = v92;
                }

                else
                {
                  v147 = v92 & 0xFFFFFFFFFFFFFF8;
                }

                v148 = sub_2455E9F20();
                if (__OFADD__(v148, 1))
                {
                  goto LABEL_237;
                }

                v149 = (v0 + 776);
                *v280 = sub_2455E424C(v147, v148 + 1);
              }

              else
              {
                v149 = (v0 + 776);
              }

              v187 = swift_isUniquelyReferenced_nonNull_native();
              v188 = *v149;
              *v274 = *v149;
              v189 = sub_2455E34FC(v97);
              v191 = *(v188 + 16);
              v192 = (v190 & 1) == 0;
              v17 = __OFADD__(v191, v192);
              v193 = v191 + v192;
              if (v17)
              {
                goto LABEL_231;
              }

              v194 = v190;
              if (*(v188 + 24) >= v193)
              {
                if ((v187 & 1) == 0)
                {
                  v243 = v189;
                  sub_2455E5E38();
                  v189 = v243;
                }
              }

              else
              {
                sub_2455E4F3C(v193, v187);
                v189 = sub_2455E34FC(v97);
                if ((v194 & 1) != (v195 & 1))
                {
                  goto LABEL_222;
                }
              }

              v91 = *v274;
              if (v194)
              {
                goto LABEL_192;
              }

              *(v91 + 8 * (v189 >> 6) + 64) |= 1 << v189;
              *(*(v91 + 48) + 8 * v189) = v97;
              *(*(v91 + 56) + 8 * v189) = v146;
              v196 = *(v91 + 16);
              v17 = __OFADD__(v196, 1);
              v197 = v196 + 1;
              if (v17)
              {
                goto LABEL_240;
              }

              goto LABEL_194;
            }

            if ((v92 & 0xC000000000000001) != 0)
            {
              if (v92 < 0)
              {
                v150 = v92;
              }

              else
              {
                v150 = v92 & 0xFFFFFFFFFFFFFF8;
              }

              v97 = v97;
              v151 = sub_2455E9F50();

              if (!v151)
              {
LABEL_200:

                goto LABEL_201;
              }

              swift_unknownObjectRelease();

              v152 = sub_2455E9F20();
              v91 = sub_2455E424C(v150, v152);

              v153 = sub_2455E34FC(v97);
              v155 = v154;

              if ((v155 & 1) == 0)
              {
                goto LABEL_254;
              }

              v156 = *(*(v91 + 56) + 8 * v153);
              sub_2455E5218(v153, v91);

              *v280 = v91;
              goto LABEL_196;
            }

            v227 = sub_2455E34FC(v97);
            if ((v228 & 1) == 0)
            {
              goto LABEL_200;
            }

            v229 = v227;
            v230 = (v0 + 776);
            v231 = swift_isUniquelyReferenced_nonNull_native();
            v91 = *v280;
            *(v0 + 832) = *v280;
            if (v231)
            {
              goto LABEL_210;
            }

            v232 = (v0 + 832);
            goto LABEL_212;
          }

          v103 = *(v93 + 16);
          v104 = sub_2455E9910();
          if (v104)
          {
            v105 = v104;
            v106 = sub_2455E9940();
            if (__OFSUB__(v103, v106))
            {
              goto LABEL_229;
            }

            v107 = (v103 - v106 + v105);
          }

          else
          {
            v107 = 0;
          }

          v125 = *(v0 + 984);
          sub_2455E9930();
          v97 = *(v125 + 96);
          v126 = sub_2455D04E0();
          if (!v107)
          {
            goto LABEL_259;
          }

          v127 = *v89;
          v128 = v89[1];
          v129 = v128 >> 62;
          if ((v128 >> 62) > 1)
          {
            if (v129 == 2)
            {
              v133 = v127 + 16;
              v131 = *(v127 + 16);
              v132 = *(v133 + 8);
              v130 = v132 - v131;
              if (__OFSUB__(v132, v131))
              {
                goto LABEL_251;
              }
            }

            else
            {
              v130 = 0;
            }
          }

          else if (v129)
          {
            v17 = __OFSUB__(HIDWORD(v127), v127);
            v166 = HIDWORD(v127) - v127;
            if (v17)
            {
              goto LABEL_250;
            }

            v130 = v166;
          }

          else
          {
            v130 = BYTE6(v128);
          }

          v167 = IOHIDValueCreateWithBytes(0, v97, v126, v107, v130);
          v168 = v91 & 0xC000000000000001;
          if (v167)
          {
            v146 = v167;
            if (v168)
            {
              if (v91 < 0)
              {
                v169 = v91;
              }

              else
              {
                v169 = v91 & 0xFFFFFFFFFFFFFF8;
              }

              v170 = sub_2455E9F20();
              v149 = (v0 + 776);
              if (__OFADD__(v170, 1))
              {
                goto LABEL_238;
              }

              *v280 = sub_2455E424C(v169, v170 + 1);
            }

            else
            {
              v149 = (v0 + 776);
            }

            v207 = swift_isUniquelyReferenced_nonNull_native();
            v208 = *v149;
            *v273 = *v149;
            v189 = sub_2455E34FC(v97);
            v210 = *(v208 + 16);
            v211 = (v209 & 1) == 0;
            v17 = __OFADD__(v210, v211);
            v212 = v210 + v211;
            if (v17)
            {
              goto LABEL_233;
            }

            v213 = v209;
            if (*(v208 + 24) >= v212)
            {
              if ((v207 & 1) == 0)
              {
                v245 = v189;
                sub_2455E5E38();
                v189 = v245;
              }
            }

            else
            {
              sub_2455E4F3C(v212, v207);
              v189 = sub_2455E34FC(v97);
              if ((v213 & 1) != (v214 & 1))
              {
                goto LABEL_222;
              }
            }

            v91 = *v273;
            if (v213)
            {
              goto LABEL_192;
            }

            *(v91 + 8 * (v189 >> 6) + 64) |= 1 << v189;
            *(*(v91 + 48) + 8 * v189) = v97;
            *(*(v91 + 56) + 8 * v189) = v146;
            v215 = *(v91 + 16);
            v17 = __OFADD__(v215, 1);
            v197 = v215 + 1;
            if (v17)
            {
              goto LABEL_242;
            }

            goto LABEL_194;
          }

          if (v168)
          {
            if (v91 < 0)
            {
              v171 = v91;
            }

            else
            {
              v171 = v91 & 0xFFFFFFFFFFFFFF8;
            }

            v97 = v97;
            v172 = sub_2455E9F50();

            if (v172)
            {
              swift_unknownObjectRelease();

              v173 = sub_2455E9F20();
              v92 = sub_2455E424C(v171, v173);

              v163 = sub_2455E34FC(v97);
              v175 = v174;

              if ((v175 & 1) == 0)
              {
                goto LABEL_256;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v236 = sub_2455E34FC(v97);
            if (v237)
            {
              v229 = v236;
              v230 = (v0 + 776);
              v238 = swift_isUniquelyReferenced_nonNull_native();
              v91 = *v280;
              *(v0 + 784) = *v280;
              if ((v238 & 1) == 0)
              {
                v232 = (v0 + 784);
                goto LABEL_212;
              }

              goto LABEL_210;
            }
          }
        }

        else if (v95)
        {
          v108 = v93;
          if (v93 > v93 >> 32)
          {
            goto LABEL_228;
          }

          v109 = sub_2455E9910();
          if (v109)
          {
            v110 = v109;
            v111 = sub_2455E9940();
            if (__OFSUB__(v108, v111))
            {
              goto LABEL_230;
            }

            v112 = (v108 - v111 + v110);
          }

          else
          {
            v112 = 0;
          }

          v134 = *(v0 + 984);
          sub_2455E9930();
          v97 = *(v134 + 96);
          v135 = sub_2455D04E0();
          if (!v112)
          {
            goto LABEL_260;
          }

          v136 = *v89;
          v137 = v89[1];
          v138 = v137 >> 62;
          if ((v137 >> 62) > 1)
          {
            if (v138 == 2)
            {
              v142 = v136 + 16;
              v140 = *(v136 + 16);
              v141 = *(v142 + 8);
              v139 = v141 - v140;
              if (__OFSUB__(v141, v140))
              {
                goto LABEL_253;
              }
            }

            else
            {
              v139 = 0;
            }
          }

          else if (v138)
          {
            v17 = __OFSUB__(HIDWORD(v136), v136);
            v176 = HIDWORD(v136) - v136;
            if (v17)
            {
              goto LABEL_252;
            }

            v139 = v176;
          }

          else
          {
            v139 = BYTE6(v137);
          }

          v177 = IOHIDValueCreateWithBytes(0, v97, v135, v112, v139);
          v178 = v91 & 0xC000000000000001;
          if (v177)
          {
            v146 = v177;
            if (v178)
            {
              if (v91 < 0)
              {
                v179 = v91;
              }

              else
              {
                v179 = v91 & 0xFFFFFFFFFFFFFF8;
              }

              v180 = sub_2455E9F20();
              v149 = (v0 + 776);
              if (__OFADD__(v180, 1))
              {
                goto LABEL_239;
              }

              *v280 = sub_2455E424C(v179, v180 + 1);
            }

            else
            {
              v149 = (v0 + 776);
            }

            v216 = swift_isUniquelyReferenced_nonNull_native();
            v217 = *v149;
            *v272 = *v149;
            v189 = sub_2455E34FC(v97);
            v219 = *(v217 + 16);
            v220 = (v218 & 1) == 0;
            v17 = __OFADD__(v219, v220);
            v221 = v219 + v220;
            if (v17)
            {
              goto LABEL_234;
            }

            v222 = v218;
            if (*(v217 + 24) >= v221)
            {
              if ((v216 & 1) == 0)
              {
                v246 = v189;
                sub_2455E5E38();
                v189 = v246;
              }
            }

            else
            {
              sub_2455E4F3C(v221, v216);
              v189 = sub_2455E34FC(v97);
              if ((v222 & 1) != (v223 & 1))
              {
LABEL_222:
                type metadata accessor for IOHIDElement();
                goto LABEL_223;
              }
            }

            v91 = *v272;
            if (v222)
            {
LABEL_192:
              v224 = *(v91 + 56);
              v225 = *(v224 + 8 * v189);
              *(v224 + 8 * v189) = v146;

              goto LABEL_195;
            }

            *(v91 + 8 * (v189 >> 6) + 64) |= 1 << v189;
            *(*(v91 + 48) + 8 * v189) = v97;
            *(*(v91 + 56) + 8 * v189) = v146;
            v226 = *(v91 + 16);
            v17 = __OFADD__(v226, 1);
            v197 = v226 + 1;
            if (v17)
            {
              goto LABEL_243;
            }

LABEL_194:
            *(v91 + 16) = v197;
LABEL_195:
            *v149 = v91;
LABEL_196:
            v92 = v91;
            goto LABEL_40;
          }

          if (v178)
          {
            if (v91 < 0)
            {
              v181 = v91;
            }

            else
            {
              v181 = v91 & 0xFFFFFFFFFFFFFF8;
            }

            v97 = v97;
            v182 = sub_2455E9F50();

            if (v182)
            {
              swift_unknownObjectRelease();

              v183 = sub_2455E9F20();
              v92 = sub_2455E424C(v181, v183);

              v163 = sub_2455E34FC(v97);
              v185 = v184;

              if ((v185 & 1) == 0)
              {
                goto LABEL_257;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v239 = sub_2455E34FC(v97);
            if (v240)
            {
              v229 = v239;
              v230 = (v0 + 776);
              v241 = swift_isUniquelyReferenced_nonNull_native();
              v91 = *v280;
              *(v0 + 800) = *v280;
              if (v241)
              {
                goto LABEL_210;
              }

              v232 = (v0 + 800);
LABEL_212:
              sub_2455E5E38();
              v91 = *v232;
              goto LABEL_210;
            }
          }
        }

        else
        {
          v96 = *(v0 + 984);
          *(v0 + 273) = v93;
          *(v0 + 281) = v94;
          *(v0 + 283) = BYTE2(v94);
          *(v0 + 284) = BYTE3(v94);
          *(v0 + 285) = BYTE4(v94);
          *(v0 + 286) = BYTE5(v94);
          v97 = *(v96 + 96);
          v98 = sub_2455D04E0();
          v99 = *v89;
          v100 = v89[1];
          v101 = v100 >> 62;
          if ((v100 >> 62) > 1)
          {
            if (v101 == 2)
            {
              v121 = v99 + 16;
              v119 = *(v99 + 16);
              v120 = *(v121 + 8);
              v102 = v120 - v119;
              if (__OFSUB__(v120, v119))
              {
                goto LABEL_249;
              }
            }

            else
            {
              v102 = 0;
            }
          }

          else if (v101)
          {
            v17 = __OFSUB__(HIDWORD(v99), v99);
            v143 = HIDWORD(v99) - v99;
            if (v17)
            {
              goto LABEL_246;
            }

            v102 = v143;
          }

          else
          {
            v102 = BYTE6(v100);
          }

          v157 = IOHIDValueCreateWithBytes(0, v97, v98, (v0 + 273), v102);
          if (v157)
          {
            v146 = v157;
            if ((v92 & 0xC000000000000001) != 0)
            {
              if (v92 < 0)
              {
                v158 = v92;
              }

              else
              {
                v158 = v92 & 0xFFFFFFFFFFFFFF8;
              }

              v159 = sub_2455E9F20();
              if (__OFADD__(v159, 1))
              {
                goto LABEL_236;
              }

              v149 = (v0 + 776);
              *v280 = sub_2455E424C(v158, v159 + 1);
            }

            else
            {
              v149 = (v0 + 776);
            }

            v198 = swift_isUniquelyReferenced_nonNull_native();
            v199 = *v149;
            *v275 = *v149;
            v189 = sub_2455E34FC(v97);
            v201 = *(v199 + 16);
            v202 = (v200 & 1) == 0;
            v17 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v17)
            {
              goto LABEL_232;
            }

            v204 = v200;
            if (*(v199 + 24) >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v244 = v189;
                sub_2455E5E38();
                v189 = v244;
              }
            }

            else
            {
              sub_2455E4F3C(v203, v198);
              v189 = sub_2455E34FC(v97);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_222;
              }
            }

            v91 = *v275;
            if (v204)
            {
              goto LABEL_192;
            }

            *(v91 + 8 * (v189 >> 6) + 64) |= 1 << v189;
            *(*(v91 + 48) + 8 * v189) = v97;
            *(*(v91 + 56) + 8 * v189) = v146;
            v206 = *(v91 + 16);
            v17 = __OFADD__(v206, 1);
            v197 = v206 + 1;
            if (v17)
            {
              goto LABEL_241;
            }

            goto LABEL_194;
          }

          if ((v91 & 0xC000000000000001) != 0)
          {
            if (v91 < 0)
            {
              v160 = v91;
            }

            else
            {
              v160 = v91 & 0xFFFFFFFFFFFFFF8;
            }

            v97 = v97;
            v161 = sub_2455E9F50();

            if (v161)
            {
              swift_unknownObjectRelease();

              v162 = sub_2455E9F20();
              v92 = sub_2455E424C(v160, v162);

              v163 = sub_2455E34FC(v97);
              v165 = v164;

              if ((v165 & 1) == 0)
              {
                goto LABEL_255;
              }

LABEL_150:

              v186 = *(*(v92 + 56) + 8 * v163);
              sub_2455E5218(v163, v92);

              *v280 = v92;
LABEL_201:
              v91 = v92;
              goto LABEL_40;
            }
          }

          else
          {
            v233 = sub_2455E34FC(v97);
            if (v234)
            {
              v229 = v233;
              v230 = (v0 + 776);
              v235 = swift_isUniquelyReferenced_nonNull_native();
              v91 = *v280;
              *(v0 + 816) = *v280;
              if ((v235 & 1) == 0)
              {
                v232 = (v0 + 816);
                goto LABEL_212;
              }

LABEL_210:

              v242 = *(*(v91 + 56) + 8 * v229);
              sub_2455E5218(v229, v91);

              *v230 = v91;
              goto LABEL_196;
            }
          }
        }

LABEL_40:
        ++v88;
        sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
        if (v279 == v88)
        {
          goto LABEL_218;
        }
      }
    }

    v69 = *(v0 + 1000);
    v68(v69, 1, 1, *(v0 + 1008));
    sub_2455A7680(v69, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      break;
    }

    v70 = *(v0 + 920);
    v71 = *(v0 + 912);
    v72 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v70 + 56))(v72, 1, 1, v71);
    v41 = sub_2455A7680(v72, &qword_27EE15190, &qword_2455F1670);
    v63 = *(v0 + 1104) + 1;
    if (v63 == *(v0 + 1088))
    {
      goto LABEL_34;
    }
  }

  v247 = *(v0 + 952);
  v248 = *(v0 + 912);
  v249 = *(v0 + 904);
  (*(*(v0 + 920) + 56))(v249, 0, 1, v248);
  sub_2455E6F48(v249, v247, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v251 = *(v247 + *(v248 + 20));
  v252 = *(v251 + 16);
  v253 = MEMORY[0x277D84F90];
  if (v252)
  {
    *v1 = MEMORY[0x277D84F90];
    sub_2455E9E40();
    v254 = (v251 + 128);
    do
    {
      v255 = *v254;
      v254 += 16;
      v256 = v255;
      sub_2455E9E20();
      sub_2455E9E50();
      sub_2455E9E60();
      sub_2455E9E30();
      --v252;
    }

    while (v252);
    v253 = *v1;
  }

  *(v0 + 1136) = v253;
  v257 = *(v0 + 1072);
  v258 = *(v0 + 1064);
  v259 = *(v0 + 1048);
  v260 = *(v0 + 880);
  v261 = sub_2455E6848(&qword_27EE15178, v250, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
  v262 = swift_task_alloc();
  *(v0 + 1144) = v262;
  v262[2] = v258;
  v262[3] = v260;
  v262[4] = v253;
  v262[5] = v257;
  v262[6] = v259;
  v263 = swift_task_alloc();
  *(v0 + 1152) = v263;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
  *v263 = v0;
  v263[1] = sub_2455DD5A0;
  v265 = v264;
  v266 = sub_2455E6FC8;
  v267 = (v0 + 736);
LABEL_219:

  return MEMORY[0x2822008A0](v267, v260, v261, 0xD00000000000001ALL, 0x80000002455F3230, v266, v262, v265);
}

uint64_t sub_2455E136C()
{
  v1 = (v0 + 744);
  v279 = (v0 + 776);
  v272 = (v0 + 792);
  v270 = (v0 + 688);
  v271 = (v0 + 808);
  v274 = (v0 + 824);
  bytes = (v0 + 287);
  v273 = (v0 + 840);
  sub_2455E6788(*(v0 + 952), type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v2 = *(v0 + 1160);
LABEL_2:
  v3 = *(v0 + 1016);
  sub_2455ABC88(v0 + 432, v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v4 = swift_dynamicCast();
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = *(v0 + 1032);
    v7 = *(v0 + 1024);
    v8 = *(v0 + 992);
    v5(v8, 0, 1, *(v0 + 1008));
    sub_2455E6F48(v8, v6, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    sub_2455E661C(v6, v7, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    v9 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 688);
    *(v0 + 712) = v11;
    v12 = sub_2455E347C(v7, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
    v14 = *(v11 + 16);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_235;
    }

    v18 = v13;
    if (*(v11 + 24) >= v17)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = v12;
        sub_2455E5BBC();
        v12 = v74;
      }
    }

    else
    {
      v19 = *(v0 + 1024);
      sub_2455E49CC(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_2455E347C(v19, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_223;
      }
    }

    v41 = *(v0 + 712);
    v42 = *(v0 + 1032);
    v43 = *(v0 + 1024);
    if (v18)
    {
      v44 = v41[7] + 16 * v12;
      v45 = *v44;
      v46 = *(v44 + 8);
      *v44 = v2;
      *(v44 + 8) = 1;
      sub_2455E711C(v45, v46);

      sub_2455E6788(v43, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v42, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v40 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    }

    else
    {
      v47 = *(v0 + 1016);
      v41[(v12 >> 6) + 8] |= 1 << v12;
      v48 = v12;
      sub_2455E661C(v43, v41[6] + *(v47 + 72) * v12, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v49 = v41[7] + 16 * v48;
      *v49 = v2;
      *(v49 + 8) = 1;

      sub_2455E6788(v43, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v42, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v40 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      v50 = v41[2];
      v16 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v16)
      {
        goto LABEL_245;
      }

      v41[2] = v51;
    }

    *v270 = v41;
  }

  else
  {
    v21 = *(v0 + 992);
    v5(v21, 1, 1, *(v0 + 1008));
    sub_2455A7680(v21, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 592);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 936);
      v23 = *(v0 + 928);
      v24 = *(v0 + 896);
      (*(*(v0 + 920) + 56))(v24, 0, 1, *(v0 + 912));
      sub_2455E6F48(v24, v22, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      sub_2455E661C(v22, v23, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v25 = v2;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v0 + 696);
      *(v0 + 728) = v27;
      v29 = sub_2455E347C(v23, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
      v30 = *(v27 + 16);
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_244;
      }

      v33 = v28;
      if (*(v27 + 24) >= v32)
      {
        if ((v26 & 1) == 0)
        {
          sub_2455E5940();
        }
      }

      else
      {
        v34 = *(v0 + 928);
        sub_2455E44CC(v32, v26);
        v35 = sub_2455E347C(v34, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
        if ((v33 & 1) != (v36 & 1))
        {
LABEL_223:

          return sub_2455EA020();
        }

        v29 = v35;
      }

      v52 = *(v0 + 728);
      v53 = *(v0 + 936);
      v54 = *(v0 + 928);
      if (v33)
      {
        v55 = v52[7] + 16 * v29;
        v56 = *v55;
        v57 = *(v55 + 8);
        *v55 = v2;
        *(v55 + 8) = 1;
        sub_2455E7110(v56, v57);

        sub_2455E6788(v54, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v53, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v40 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        *(v0 + 696) = v52;
      }

      else
      {
        v277 = *(v0 + 936);
        v58 = *(v0 + 920);
        v52[(v29 >> 6) + 8] |= 1 << v29;
        sub_2455E661C(v54, v52[6] + *(v58 + 72) * v29, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v59 = v52[7] + 16 * v29;
        *v59 = v2;
        *(v59 + 8) = 1;

        sub_2455E6788(v54, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v277, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v40 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        v60 = v52[2];
        v16 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v16)
        {
          goto LABEL_258;
        }

        v52[2] = v61;
        *(v0 + 696) = v52;
      }
    }

    else
    {
      v37 = *(v0 + 920);
      v38 = *(v0 + 912);
      v39 = *(v0 + 896);

      __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      (*(v37 + 56))(v39, 1, 1, v38);
      v40 = sub_2455A7680(v39, &qword_27EE15190, &qword_2455F1670);
    }
  }

  v62 = *(v0 + 1104) + 1;
  if (v62 == *(v0 + 1088))
  {
LABEL_34:
    v75 = *(v0 + 1080);
    v76 = *(v0 + 1072);
    v77 = *(v0 + 1064);
    v78 = *(v0 + 1056);
    v79 = *(v0 + 848);
    (*(**(v0 + 880) + 824))(v40);
    v80 = *(v0 + 696);
    *v79 = *(v0 + 688);
    v79[1] = v80;

    MEMORY[0x245D6C8C0](v78, -1, -1);
    MEMORY[0x245D6C8C0](v77, -1, -1);
    MEMORY[0x245D6C8C0](v76, -1, -1);

    v81 = *(v0 + 8);

    return v81();
  }

  v63 = *(v0 + 1096);
  while (1)
  {
    *(v0 + 1104) = v62;
    *(v0 + 1096) = v63;
    v64 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v62 + 32, v0 + 432);
    if (v64)
    {
      v72 = *(v0 + 1080);
      swift_willThrow();
      v73 = v72;
      v2 = *(v0 + 1080);
      goto LABEL_2;
    }

    v65 = *(v0 + 1016);
    sub_2455ABC88(v0 + 432, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v66 = swift_dynamicCast();
    v67 = *(v65 + 56);
    if (v66)
    {
      v83 = *(v0 + 1040);
      v84 = *(v0 + 1008);
      v85 = *(v0 + 1000);
      v67(v85, 0, 1, v84);
      sub_2455E6F48(v85, v83, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      *(v0 + 776) = MEMORY[0x277D84F98];
      v280 = *(v83 + *(v84 + 20));
      v278 = *(v280 + 16);
      if (!v278)
      {
LABEL_218:
        v267 = *(v0 + 1056);
        v268 = *(v0 + 1048);
        v269 = *(v0 + 1040);
        v259 = *(v0 + 880);
        v260 = sub_2455E6848(&qword_27EE15178, v86, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
        v261 = swift_task_alloc();
        *(v0 + 1112) = v261;
        v261[2] = v267;
        v261[3] = v259;
        v261[4] = v279;
        v261[5] = v268;
        v261[6] = v270;
        v261[7] = v269;
        v266 = swift_task_alloc();
        *(v0 + 1120) = v266;
        *v266 = v0;
        v266[1] = sub_2455DBA40;
        v265 = sub_2455E7134;
        v264 = MEMORY[0x277D84F78] + 8;
        goto LABEL_219;
      }

      v87 = 0;
      v88 = (*(v0 + 984) + *(*(v0 + 960) + 24));
      v89 = *(*(v0 + 968) + 80);
      v276 = v280 + ((v89 + 32) & ~v89);
      v90 = MEMORY[0x277D84F98];
      v91 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v87 >= *(v280 + 16))
        {
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
        }

        sub_2455E661C(v276 + *(*(v0 + 968) + 72) * v87, *(v0 + 984), type metadata accessor for HIDElement.Value);
        v92 = *v88;
        v93 = v88[1];
        v94 = v93 >> 62;
        if ((v93 >> 62) > 1)
        {
          if (v94 != 2)
          {
            v112 = *(v0 + 984);
            *bytes = 0;
            *(v0 + 293) = 0;
            v96 = *(v112 + 96);
            v113 = sub_2455D04E0();
            v114 = *v88;
            v115 = v88[1];
            v116 = v115 >> 62;
            if ((v115 >> 62) > 1)
            {
              v117 = 0;
              if (v116 == 2)
              {
                v123 = v114 + 16;
                v121 = *(v114 + 16);
                v122 = *(v123 + 8);
                v117 = v122 - v121;
                if (__OFSUB__(v122, v121))
                {
                  goto LABEL_248;
                }
              }
            }

            else if (v116)
            {
              v16 = __OFSUB__(HIDWORD(v114), v114);
              v143 = HIDWORD(v114) - v114;
              if (v16)
              {
                goto LABEL_247;
              }

              v117 = v143;
            }

            else
            {
              v117 = BYTE6(v115);
            }

            v144 = IOHIDValueCreateWithBytes(0, v96, v113, bytes, v117);
            if (v144)
            {
              v145 = v144;
              if ((v91 & 0xC000000000000001) != 0)
              {
                if (v91 < 0)
                {
                  v146 = v91;
                }

                else
                {
                  v146 = v91 & 0xFFFFFFFFFFFFFF8;
                }

                v147 = sub_2455E9F20();
                if (__OFADD__(v147, 1))
                {
                  goto LABEL_237;
                }

                v148 = (v0 + 776);
                *v279 = sub_2455E424C(v146, v147 + 1);
              }

              else
              {
                v148 = (v0 + 776);
              }

              v186 = swift_isUniquelyReferenced_nonNull_native();
              v187 = *v148;
              *v273 = *v148;
              v188 = sub_2455E34FC(v96);
              v190 = *(v187 + 16);
              v191 = (v189 & 1) == 0;
              v16 = __OFADD__(v190, v191);
              v192 = v190 + v191;
              if (v16)
              {
                goto LABEL_231;
              }

              v193 = v189;
              if (*(v187 + 24) >= v192)
              {
                if ((v186 & 1) == 0)
                {
                  v242 = v188;
                  sub_2455E5E38();
                  v188 = v242;
                }
              }

              else
              {
                sub_2455E4F3C(v192, v186);
                v188 = sub_2455E34FC(v96);
                if ((v193 & 1) != (v194 & 1))
                {
                  goto LABEL_222;
                }
              }

              v90 = *v273;
              if (v193)
              {
                goto LABEL_192;
              }

              *(v90 + 8 * (v188 >> 6) + 64) |= 1 << v188;
              *(*(v90 + 48) + 8 * v188) = v96;
              *(*(v90 + 56) + 8 * v188) = v145;
              v195 = *(v90 + 16);
              v16 = __OFADD__(v195, 1);
              v196 = v195 + 1;
              if (v16)
              {
                goto LABEL_240;
              }

              goto LABEL_194;
            }

            if ((v91 & 0xC000000000000001) != 0)
            {
              if (v91 < 0)
              {
                v149 = v91;
              }

              else
              {
                v149 = v91 & 0xFFFFFFFFFFFFFF8;
              }

              v96 = v96;
              v150 = sub_2455E9F50();

              if (!v150)
              {
LABEL_200:

                goto LABEL_201;
              }

              swift_unknownObjectRelease();

              v151 = sub_2455E9F20();
              v90 = sub_2455E424C(v149, v151);

              v152 = sub_2455E34FC(v96);
              v154 = v153;

              if ((v154 & 1) == 0)
              {
                goto LABEL_254;
              }

              v155 = *(*(v90 + 56) + 8 * v152);
              sub_2455E5218(v152, v90);

              *v279 = v90;
              goto LABEL_196;
            }

            v226 = sub_2455E34FC(v96);
            if ((v227 & 1) == 0)
            {
              goto LABEL_200;
            }

            v228 = v226;
            v229 = (v0 + 776);
            v230 = swift_isUniquelyReferenced_nonNull_native();
            v90 = *v279;
            *(v0 + 832) = *v279;
            if (v230)
            {
              goto LABEL_210;
            }

            v231 = (v0 + 832);
            goto LABEL_212;
          }

          v102 = *(v92 + 16);
          v103 = sub_2455E9910();
          if (v103)
          {
            v104 = v103;
            v105 = sub_2455E9940();
            if (__OFSUB__(v102, v105))
            {
              goto LABEL_229;
            }

            v106 = (v102 - v105 + v104);
          }

          else
          {
            v106 = 0;
          }

          v124 = *(v0 + 984);
          sub_2455E9930();
          v96 = *(v124 + 96);
          v125 = sub_2455D04E0();
          if (!v106)
          {
            goto LABEL_259;
          }

          v126 = *v88;
          v127 = v88[1];
          v128 = v127 >> 62;
          if ((v127 >> 62) > 1)
          {
            if (v128 == 2)
            {
              v132 = v126 + 16;
              v130 = *(v126 + 16);
              v131 = *(v132 + 8);
              v129 = v131 - v130;
              if (__OFSUB__(v131, v130))
              {
                goto LABEL_251;
              }
            }

            else
            {
              v129 = 0;
            }
          }

          else if (v128)
          {
            v16 = __OFSUB__(HIDWORD(v126), v126);
            v165 = HIDWORD(v126) - v126;
            if (v16)
            {
              goto LABEL_250;
            }

            v129 = v165;
          }

          else
          {
            v129 = BYTE6(v127);
          }

          v166 = IOHIDValueCreateWithBytes(0, v96, v125, v106, v129);
          v167 = v90 & 0xC000000000000001;
          if (v166)
          {
            v145 = v166;
            if (v167)
            {
              if (v90 < 0)
              {
                v168 = v90;
              }

              else
              {
                v168 = v90 & 0xFFFFFFFFFFFFFF8;
              }

              v169 = sub_2455E9F20();
              v148 = (v0 + 776);
              if (__OFADD__(v169, 1))
              {
                goto LABEL_238;
              }

              *v279 = sub_2455E424C(v168, v169 + 1);
            }

            else
            {
              v148 = (v0 + 776);
            }

            v206 = swift_isUniquelyReferenced_nonNull_native();
            v207 = *v148;
            *v272 = *v148;
            v188 = sub_2455E34FC(v96);
            v209 = *(v207 + 16);
            v210 = (v208 & 1) == 0;
            v16 = __OFADD__(v209, v210);
            v211 = v209 + v210;
            if (v16)
            {
              goto LABEL_233;
            }

            v212 = v208;
            if (*(v207 + 24) >= v211)
            {
              if ((v206 & 1) == 0)
              {
                v244 = v188;
                sub_2455E5E38();
                v188 = v244;
              }
            }

            else
            {
              sub_2455E4F3C(v211, v206);
              v188 = sub_2455E34FC(v96);
              if ((v212 & 1) != (v213 & 1))
              {
                goto LABEL_222;
              }
            }

            v90 = *v272;
            if (v212)
            {
              goto LABEL_192;
            }

            *(v90 + 8 * (v188 >> 6) + 64) |= 1 << v188;
            *(*(v90 + 48) + 8 * v188) = v96;
            *(*(v90 + 56) + 8 * v188) = v145;
            v214 = *(v90 + 16);
            v16 = __OFADD__(v214, 1);
            v196 = v214 + 1;
            if (v16)
            {
              goto LABEL_242;
            }

            goto LABEL_194;
          }

          if (v167)
          {
            if (v90 < 0)
            {
              v170 = v90;
            }

            else
            {
              v170 = v90 & 0xFFFFFFFFFFFFFF8;
            }

            v96 = v96;
            v171 = sub_2455E9F50();

            if (v171)
            {
              swift_unknownObjectRelease();

              v172 = sub_2455E9F20();
              v91 = sub_2455E424C(v170, v172);

              v162 = sub_2455E34FC(v96);
              v174 = v173;

              if ((v174 & 1) == 0)
              {
                goto LABEL_256;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v235 = sub_2455E34FC(v96);
            if (v236)
            {
              v228 = v235;
              v229 = (v0 + 776);
              v237 = swift_isUniquelyReferenced_nonNull_native();
              v90 = *v279;
              *(v0 + 784) = *v279;
              if ((v237 & 1) == 0)
              {
                v231 = (v0 + 784);
                goto LABEL_212;
              }

              goto LABEL_210;
            }
          }
        }

        else if (v94)
        {
          v107 = v92;
          if (v92 > v92 >> 32)
          {
            goto LABEL_228;
          }

          v108 = sub_2455E9910();
          if (v108)
          {
            v109 = v108;
            v110 = sub_2455E9940();
            if (__OFSUB__(v107, v110))
            {
              goto LABEL_230;
            }

            v111 = (v107 - v110 + v109);
          }

          else
          {
            v111 = 0;
          }

          v133 = *(v0 + 984);
          sub_2455E9930();
          v96 = *(v133 + 96);
          v134 = sub_2455D04E0();
          if (!v111)
          {
            goto LABEL_260;
          }

          v135 = *v88;
          v136 = v88[1];
          v137 = v136 >> 62;
          if ((v136 >> 62) > 1)
          {
            if (v137 == 2)
            {
              v141 = v135 + 16;
              v139 = *(v135 + 16);
              v140 = *(v141 + 8);
              v138 = v140 - v139;
              if (__OFSUB__(v140, v139))
              {
                goto LABEL_253;
              }
            }

            else
            {
              v138 = 0;
            }
          }

          else if (v137)
          {
            v16 = __OFSUB__(HIDWORD(v135), v135);
            v175 = HIDWORD(v135) - v135;
            if (v16)
            {
              goto LABEL_252;
            }

            v138 = v175;
          }

          else
          {
            v138 = BYTE6(v136);
          }

          v176 = IOHIDValueCreateWithBytes(0, v96, v134, v111, v138);
          v177 = v90 & 0xC000000000000001;
          if (v176)
          {
            v145 = v176;
            if (v177)
            {
              if (v90 < 0)
              {
                v178 = v90;
              }

              else
              {
                v178 = v90 & 0xFFFFFFFFFFFFFF8;
              }

              v179 = sub_2455E9F20();
              v148 = (v0 + 776);
              if (__OFADD__(v179, 1))
              {
                goto LABEL_239;
              }

              *v279 = sub_2455E424C(v178, v179 + 1);
            }

            else
            {
              v148 = (v0 + 776);
            }

            v215 = swift_isUniquelyReferenced_nonNull_native();
            v216 = *v148;
            *v271 = *v148;
            v188 = sub_2455E34FC(v96);
            v218 = *(v216 + 16);
            v219 = (v217 & 1) == 0;
            v16 = __OFADD__(v218, v219);
            v220 = v218 + v219;
            if (v16)
            {
              goto LABEL_234;
            }

            v221 = v217;
            if (*(v216 + 24) >= v220)
            {
              if ((v215 & 1) == 0)
              {
                v245 = v188;
                sub_2455E5E38();
                v188 = v245;
              }
            }

            else
            {
              sub_2455E4F3C(v220, v215);
              v188 = sub_2455E34FC(v96);
              if ((v221 & 1) != (v222 & 1))
              {
LABEL_222:
                type metadata accessor for IOHIDElement();
                goto LABEL_223;
              }
            }

            v90 = *v271;
            if (v221)
            {
LABEL_192:
              v223 = *(v90 + 56);
              v224 = *(v223 + 8 * v188);
              *(v223 + 8 * v188) = v145;

              goto LABEL_195;
            }

            *(v90 + 8 * (v188 >> 6) + 64) |= 1 << v188;
            *(*(v90 + 48) + 8 * v188) = v96;
            *(*(v90 + 56) + 8 * v188) = v145;
            v225 = *(v90 + 16);
            v16 = __OFADD__(v225, 1);
            v196 = v225 + 1;
            if (v16)
            {
              goto LABEL_243;
            }

LABEL_194:
            *(v90 + 16) = v196;
LABEL_195:
            *v148 = v90;
LABEL_196:
            v91 = v90;
            goto LABEL_40;
          }

          if (v177)
          {
            if (v90 < 0)
            {
              v180 = v90;
            }

            else
            {
              v180 = v90 & 0xFFFFFFFFFFFFFF8;
            }

            v96 = v96;
            v181 = sub_2455E9F50();

            if (v181)
            {
              swift_unknownObjectRelease();

              v182 = sub_2455E9F20();
              v91 = sub_2455E424C(v180, v182);

              v162 = sub_2455E34FC(v96);
              v184 = v183;

              if ((v184 & 1) == 0)
              {
                goto LABEL_257;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v238 = sub_2455E34FC(v96);
            if (v239)
            {
              v228 = v238;
              v229 = (v0 + 776);
              v240 = swift_isUniquelyReferenced_nonNull_native();
              v90 = *v279;
              *(v0 + 800) = *v279;
              if (v240)
              {
                goto LABEL_210;
              }

              v231 = (v0 + 800);
LABEL_212:
              sub_2455E5E38();
              v90 = *v231;
              goto LABEL_210;
            }
          }
        }

        else
        {
          v95 = *(v0 + 984);
          *(v0 + 273) = v92;
          *(v0 + 281) = v93;
          *(v0 + 283) = BYTE2(v93);
          *(v0 + 284) = BYTE3(v93);
          *(v0 + 285) = BYTE4(v93);
          *(v0 + 286) = BYTE5(v93);
          v96 = *(v95 + 96);
          v97 = sub_2455D04E0();
          v98 = *v88;
          v99 = v88[1];
          v100 = v99 >> 62;
          if ((v99 >> 62) > 1)
          {
            if (v100 == 2)
            {
              v120 = v98 + 16;
              v118 = *(v98 + 16);
              v119 = *(v120 + 8);
              v101 = v119 - v118;
              if (__OFSUB__(v119, v118))
              {
                goto LABEL_249;
              }
            }

            else
            {
              v101 = 0;
            }
          }

          else if (v100)
          {
            v16 = __OFSUB__(HIDWORD(v98), v98);
            v142 = HIDWORD(v98) - v98;
            if (v16)
            {
              goto LABEL_246;
            }

            v101 = v142;
          }

          else
          {
            v101 = BYTE6(v99);
          }

          v156 = IOHIDValueCreateWithBytes(0, v96, v97, (v0 + 273), v101);
          if (v156)
          {
            v145 = v156;
            if ((v91 & 0xC000000000000001) != 0)
            {
              if (v91 < 0)
              {
                v157 = v91;
              }

              else
              {
                v157 = v91 & 0xFFFFFFFFFFFFFF8;
              }

              v158 = sub_2455E9F20();
              if (__OFADD__(v158, 1))
              {
                goto LABEL_236;
              }

              v148 = (v0 + 776);
              *v279 = sub_2455E424C(v157, v158 + 1);
            }

            else
            {
              v148 = (v0 + 776);
            }

            v197 = swift_isUniquelyReferenced_nonNull_native();
            v198 = *v148;
            *v274 = *v148;
            v188 = sub_2455E34FC(v96);
            v200 = *(v198 + 16);
            v201 = (v199 & 1) == 0;
            v16 = __OFADD__(v200, v201);
            v202 = v200 + v201;
            if (v16)
            {
              goto LABEL_232;
            }

            v203 = v199;
            if (*(v198 + 24) >= v202)
            {
              if ((v197 & 1) == 0)
              {
                v243 = v188;
                sub_2455E5E38();
                v188 = v243;
              }
            }

            else
            {
              sub_2455E4F3C(v202, v197);
              v188 = sub_2455E34FC(v96);
              if ((v203 & 1) != (v204 & 1))
              {
                goto LABEL_222;
              }
            }

            v90 = *v274;
            if (v203)
            {
              goto LABEL_192;
            }

            *(v90 + 8 * (v188 >> 6) + 64) |= 1 << v188;
            *(*(v90 + 48) + 8 * v188) = v96;
            *(*(v90 + 56) + 8 * v188) = v145;
            v205 = *(v90 + 16);
            v16 = __OFADD__(v205, 1);
            v196 = v205 + 1;
            if (v16)
            {
              goto LABEL_241;
            }

            goto LABEL_194;
          }

          if ((v90 & 0xC000000000000001) != 0)
          {
            if (v90 < 0)
            {
              v159 = v90;
            }

            else
            {
              v159 = v90 & 0xFFFFFFFFFFFFFF8;
            }

            v96 = v96;
            v160 = sub_2455E9F50();

            if (v160)
            {
              swift_unknownObjectRelease();

              v161 = sub_2455E9F20();
              v91 = sub_2455E424C(v159, v161);

              v162 = sub_2455E34FC(v96);
              v164 = v163;

              if ((v164 & 1) == 0)
              {
                goto LABEL_255;
              }

LABEL_150:

              v185 = *(*(v91 + 56) + 8 * v162);
              sub_2455E5218(v162, v91);

              *v279 = v91;
LABEL_201:
              v90 = v91;
              goto LABEL_40;
            }
          }

          else
          {
            v232 = sub_2455E34FC(v96);
            if (v233)
            {
              v228 = v232;
              v229 = (v0 + 776);
              v234 = swift_isUniquelyReferenced_nonNull_native();
              v90 = *v279;
              *(v0 + 816) = *v279;
              if ((v234 & 1) == 0)
              {
                v231 = (v0 + 816);
                goto LABEL_212;
              }

LABEL_210:

              v241 = *(*(v90 + 56) + 8 * v228);
              sub_2455E5218(v228, v90);

              *v229 = v90;
              goto LABEL_196;
            }
          }
        }

LABEL_40:
        ++v87;
        sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
        if (v278 == v87)
        {
          goto LABEL_218;
        }
      }
    }

    v68 = *(v0 + 1000);
    v67(v68, 1, 1, *(v0 + 1008));
    sub_2455A7680(v68, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      break;
    }

    v69 = *(v0 + 920);
    v70 = *(v0 + 912);
    v71 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v69 + 56))(v71, 1, 1, v70);
    v40 = sub_2455A7680(v71, &qword_27EE15190, &qword_2455F1670);
    v62 = *(v0 + 1104) + 1;
    if (v62 == *(v0 + 1088))
    {
      goto LABEL_34;
    }
  }

  v246 = *(v0 + 952);
  v247 = *(v0 + 912);
  v248 = *(v0 + 904);
  (*(*(v0 + 920) + 56))(v248, 0, 1, v247);
  sub_2455E6F48(v248, v246, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v250 = *(v246 + *(v247 + 20));
  v251 = *(v250 + 16);
  v252 = MEMORY[0x277D84F90];
  if (v251)
  {
    *v1 = MEMORY[0x277D84F90];
    sub_2455E9E40();
    v253 = (v250 + 128);
    do
    {
      v254 = *v253;
      v253 += 16;
      v255 = v254;
      sub_2455E9E20();
      sub_2455E9E50();
      sub_2455E9E60();
      sub_2455E9E30();
      --v251;
    }

    while (v251);
    v252 = *v1;
  }

  *(v0 + 1136) = v252;
  v256 = *(v0 + 1072);
  v257 = *(v0 + 1064);
  v258 = *(v0 + 1048);
  v259 = *(v0 + 880);
  v260 = sub_2455E6848(&qword_27EE15178, v249, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
  v261 = swift_task_alloc();
  *(v0 + 1144) = v261;
  v261[2] = v257;
  v261[3] = v259;
  v261[4] = v252;
  v261[5] = v256;
  v261[6] = v258;
  v262 = swift_task_alloc();
  *(v0 + 1152) = v262;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
  *v262 = v0;
  v262[1] = sub_2455DD5A0;
  v264 = v263;
  v265 = sub_2455E6FC8;
  v266 = (v0 + 736);
LABEL_219:

  return MEMORY[0x2822008A0](v266, v259, v260, 0xD00000000000001ALL, 0x80000002455F3230, v265, v261, v264);
}

void sub_2455E2D90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  sub_2455E8FD4(a1, a2, v6);
}

uint64_t static HIDDeviceClient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IOHIDDevice(0);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice, &unk_2455F1D18);
  return sub_2455E9A50() & 1;
}

uint64_t sub_2455E2E88(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for IOHIDDevice(0);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice, &unk_2455F1D18);
  return sub_2455E9A50() & 1;
}

uint64_t HIDDeviceClient.hash(into:)(uint64_t a1)
{
  type metadata accessor for IOHIDDevice(0);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice, &unk_2455F1D18);
  return sub_2455E9A60();
}

uint64_t HIDDeviceClient.hashValue.getter()
{
  sub_2455EA080();
  type metadata accessor for HIDDeviceClient();
  sub_2455E6848(&qword_27EE14E00, v0, type metadata accessor for HIDDeviceClient, &protocol conformance descriptor for HIDDeviceClient);
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455E3024(uint64_t a1, uint64_t a2)
{
  sub_2455EA080();
  type metadata accessor for HIDDeviceClient();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455E3080(uint64_t a1)
{
  type metadata accessor for IOHIDDevice(0);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice, &unk_2455F1D18);
  return sub_2455E9A60();
}

uint64_t sub_2455E3104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2455EA080();
  type metadata accessor for HIDDeviceClient();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t HIDDeviceClient.description.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

uint64_t sub_2455E318C()
{
  v1 = *(*v0 + 312);

  return v1;
}

uint64_t HIDDeviceClient.DeviceReference.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB0, &unk_2455F15E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2455EAC10;
  v3 = MEMORY[0x277D84D90];
  *(v2 + 56) = MEMORY[0x277D84D38];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_2455E9B70();
}

uint64_t sub_2455E3250()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB0, &unk_2455F15E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2455EAC10;
  v3 = MEMORY[0x277D84D90];
  *(v2 + 56) = MEMORY[0x277D84D38];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_2455E9B70();
}

uint64_t sub_2455E33AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2455EA080();
  swift_getWitnessTable();
  sub_2455E9A60();
  return sub_2455EA0D0();
}

uint64_t sub_2455E3410(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2455E9A50();
}

uint64_t sub_2455E347C(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_2455EA080();
  a2(v8);
  v5 = sub_2455EA0D0();

  return a3(a1, v5);
}

unint64_t sub_2455E34FC(uint64_t a1)
{
  sub_2455EA080();
  type metadata accessor for IOHIDElement();
  sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement, &unk_2455F1CF0);
  sub_2455E9A60();
  v2 = sub_2455EA0D0();

  return sub_2455E40D8(a1, v2);
}

char *sub_2455E35B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15288, &qword_2455F1E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 6 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_2455E36C0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15250, &qword_2455F1D48);
  v10 = *(type metadata accessor for HIDElement.Value(0) - 8);
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
  v15 = *(type metadata accessor for HIDElement.Value(0) - 8);
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

void *sub_2455E3898(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15118, &qword_2455F15F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15130, &qword_2455F1610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2455E39CC(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = type metadata accessor for HIDElement.Value(0);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v27 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  MEMORY[0x28223BE20](v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v2;
  v14 = -1 << *(v2 + 32);
  result = a2 & ~v14;
  v29 = v2 + 64;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v28 = ~v14;
    v30 = *(v11 + 72);
    v32 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v16 = *(v31 + 48);
      v34 = result;
      sub_2455E661C(v16 + v30 * result, v13, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      result = sub_2455E9E80();
      if (result)
      {
        v17 = *(v27 + 20);
        v18 = *&v32[v17];
        v19 = *(v33 + v17);
        v20 = *(v18 + 16);
        if (v20 == *(v19 + 16))
        {
          break;
        }
      }

LABEL_3:
      v13 = v32;
      sub_2455E6788(v32, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      result = (v34 + 1) & v28;
      if (((*(v29 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (!v20 || v18 == v19)
    {
LABEL_13:
      sub_2455E6788(v32, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      return v34;
    }

    else
    {
      v21 = 0;
      v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v35 = v18 + v22;
      v23 = v19 + v22;
      while (v21 < *(v18 + 16))
      {
        v24 = *(v37 + 72) * v21;
        result = sub_2455E661C(v35 + v24, v10, type metadata accessor for HIDElement.Value);
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_16;
        }

        sub_2455E661C(v23 + v24, v7, type metadata accessor for HIDElement.Value);
        sub_2455E6848(&qword_27EE14E90, 255, type metadata accessor for HIDElement.Value, &protocol conformance descriptor for HIDElement.Value);
        v25 = sub_2455E9B50();
        sub_2455E6788(v7, type metadata accessor for HIDElement.Value);
        result = sub_2455E6788(v10, type metadata accessor for HIDElement.Value);
        if ((v25 & 1) == 0)
        {
          goto LABEL_3;
        }

        if (v20 == ++v21)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_2455E3D58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + 64;
  v10 = -1 << *(v2 + 32);
  result = a2 & ~v10;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v12 = *(v6 + 72);
  v39 = ~v10;
  v40 = v12;
  v37 = a1;
  v38 = v2;
  v35 = v2 + 64;
  v36 = v5;
  while (1)
  {
    v13 = *(v2 + 48);
    v42 = result;
    sub_2455E661C(v13 + v40 * result, v8, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
    result = sub_2455E9E80();
    if ((result & 1) == 0)
    {
      goto LABEL_4;
    }

    v14 = *(v5 + 20);
    v15 = *&v8[v14];
    v16 = *(a1 + v14);
    v17 = *(v15 + 16);
    if (v17 != *(v16 + 16))
    {
      goto LABEL_4;
    }

    if (v17 && v15 != v16)
    {
      break;
    }

LABEL_3:
    v5 = v36;
    a1 = v37;
    v2 = v38;
    v9 = v35;
    if (v8[*(v36 + 24)] == *(v37 + *(v36 + 24)))
    {
      sub_2455E6788(v8, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      return v42;
    }

LABEL_4:
    sub_2455E6788(v8, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
    result = (v42 + 1) & v39;
    if (((*(v9 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 32);
    v21 = (v16 + 32);
    v41 = v17 - 1;
    while (1)
    {
      v22 = *v20;
      v23 = v20[1];
      v24 = v20[3];
      v48[2] = v20[2];
      v48[3] = v24;
      v48[0] = v22;
      v48[1] = v23;
      v25 = v20[4];
      v26 = v20[5];
      v27 = v20[6];
      *(v49 + 9) = *(v20 + 105);
      v48[5] = v26;
      v49[0] = v27;
      v48[4] = v25;
      result = memmove(v46, v20, 0x79uLL);
      if (v19 >= *(v16 + 16))
      {
        break;
      }

      v28 = *v21;
      v29 = v21[1];
      v30 = v21[3];
      v50[2] = v21[2];
      v50[3] = v30;
      v50[0] = v28;
      v50[1] = v29;
      v31 = v21[4];
      v32 = v21[5];
      v33 = v21[6];
      *(v51 + 9) = *(v21 + 105);
      v50[5] = v32;
      v51[0] = v33;
      v50[4] = v31;
      memmove(v44, v21, 0x79uLL);
      sub_2455A5D68(v48, v43);
      sub_2455A5D68(v50, v43);
      sub_2455A700C();
      v34 = sub_2455E9B50();
      v52[4] = v44[4];
      v52[5] = v44[5];
      v53[0] = v45[0];
      *(v53 + 9) = *(v45 + 9);
      v52[0] = v44[0];
      v52[1] = v44[1];
      v52[2] = v44[2];
      v52[3] = v44[3];
      sub_2455A5DA0(v52);
      v54[4] = v46[4];
      v54[5] = v46[5];
      v55[0] = v47[0];
      *(v55 + 9) = *(v47 + 9);
      v54[0] = v46[0];
      v54[1] = v46[1];
      v54[2] = v46[2];
      v54[3] = v46[3];
      result = sub_2455A5DA0(v54);
      if ((v34 & 1) == 0)
      {
        a1 = v37;
        v2 = v38;
        v9 = v35;
        v5 = v36;
        goto LABEL_4;
      }

      if (v41 == v19)
      {
        goto LABEL_3;
      }

      v20 += 8;
      v21 += 8;
      if (++v19 >= *(v15 + 16))
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2455E40D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for IOHIDElement();
    sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement, &unk_2455F1CF0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2455E9A50();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2455E41E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2455E9F20();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_2455E424C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15248, &qword_2455F1D40);
    v2 = sub_2455E9FB0();
    v16 = v2;
    sub_2455E9ED0();
    if (sub_2455E9F60())
    {
      type metadata accessor for IOHIDElement();
      do
      {
        swift_dynamicCast();
        type metadata accessor for IOHIDValue(0);
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2455E4F3C(v9 + 1, 1);
        }

        v2 = v16;
        sub_2455EA080();
        sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement, &unk_2455F1CF0);
        sub_2455E9A60();
        result = sub_2455EA0D0();
        v4 = v16 + 64;
        v5 = -1 << *(v16 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v16 + 48) + 8 * v8) = v15;
        *(*(v16 + 56) + 8 * v8) = v14;
        ++*(v16 + 16);
      }

      while (sub_2455E9F60());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2455E44CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v59 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15260, &qword_2455F1D58);
  v55 = v4;
  v8 = sub_2455E9FA0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v60 = v6;
    v10 = 0;
    v11 = *(v7 + 64);
    v50 = v2;
    v51 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    v52 = v8;
    v53 = v7;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v58 = (v14 - 1) & v14;
LABEL_15:
      v23 = v19 | (v10 << 6);
      v24 = *(v7 + 48);
      v57 = *(v54 + 72);
      v25 = v24 + v57 * v23;
      v26 = 16 * v23;
      v27 = v60;
      if (v55)
      {
        sub_2455E6F48(v25, v60, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v28 = *(v7 + 56) + v26;
        v29 = *v28;
        v56 = *(v28 + 8);
      }

      else
      {
        sub_2455E661C(v25, v60, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v30 = *(v7 + 56) + v26;
        v29 = *v30;
        v31 = *(v30 + 8);
        v32 = *v30;
        v56 = v31;
        sub_2455E6FBC(v32, v31);
      }

      sub_2455EA080();
      sub_2455E9E90();
      sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938], MEMORY[0x277D85940]);
      sub_2455E9B00();
      v33 = *(v27 + *(v59 + 20));
      MEMORY[0x245D6BE80](*(v33 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = (v33 + 32);
        do
        {
          v36 = *v35;
          v37 = v35[1];
          v38 = v35[3];
          v61[2] = v35[2];
          v61[3] = v38;
          v61[0] = v36;
          v61[1] = v37;
          v39 = v35[4];
          v40 = v35[5];
          v41 = v35[6];
          *(v62 + 9) = *(v35 + 105);
          v61[5] = v40;
          v62[0] = v41;
          v61[4] = v39;
          memmove(v65, v35, 0x79uLL);
          sub_2455A5D68(v61, v63);
          sub_2455A5F88();
          sub_2455E9B00();
          v63[4] = v65[4];
          v63[5] = v65[5];
          v64[0] = v66[0];
          *(v64 + 9) = *(v66 + 9);
          v63[0] = v65[0];
          v63[1] = v65[1];
          v63[2] = v65[2];
          v63[3] = v65[3];
          sub_2455A5DA0(v63);
          v35 += 8;
          --v34;
        }

        while (v34);
      }

      sub_2455EA0A0();
      result = sub_2455EA0D0();
      v9 = v52;
      v42 = -1 << *(v52 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v16 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v7 = v53;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v16 + 8 * v44);
          if (v48 != -1)
          {
            v17 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v43) & ~*(v16 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v7 = v53;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_2455E6F48(v60, v9[6] + v57 * v17, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v18 = v9[7] + 16 * v17;
      *v18 = v29;
      *(v18 + 8) = v56;
      ++v9[2];
      v14 = v58;
    }

    v20 = v10;
    result = v51;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v51[v10];
      ++v20;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v58 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_37;
    }

    v49 = 1 << *(v7 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v7 + 16) = 0;
  }

LABEL_37:
  *v3 = v9;
  return result;
}

uint64_t sub_2455E49CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HIDElement.Value(0);
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15258, &qword_2455F1D50);
  v56 = v4;
  v12 = sub_2455E9FA0();
  v13 = v12;
  if (*(v11 + 16))
  {
    v47 = v3;
    v14 = 0;
    v15 = *(v11 + 64);
    v48 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    v52 = v12;
    v53 = v11;
    v50 = v19;
    v51 = v10;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v60 = (v18 - 1) & v18;
LABEL_15:
      v27 = v23 | (v14 << 6);
      v28 = *(v11 + 48);
      v59 = *(v54 + 72);
      v29 = v28 + v59 * v27;
      v30 = 16 * v27;
      if (v56)
      {
        sub_2455E6F48(v29, v10, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v31 = *(v11 + 56) + v30;
        v58 = *v31;
        v57 = *(v31 + 8);
      }

      else
      {
        sub_2455E661C(v29, v10, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v32 = *(v11 + 56) + v30;
        v33 = *(v32 + 8);
        v58 = *v32;
        v57 = v33;
        sub_2455E6FB0(v58, v33);
      }

      sub_2455EA080();
      sub_2455E9E90();
      sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938], MEMORY[0x277D85940]);
      sub_2455E9B00();
      v34 = *&v10[*(v55 + 20)];
      MEMORY[0x245D6BE80](*(v34 + 16));
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v34 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v37 = *(v49 + 72);
        do
        {
          sub_2455E661C(v36, v7, type metadata accessor for HIDElement.Value);
          sub_2455E6848(&qword_27EE15188, 255, type metadata accessor for HIDElement.Value, &protocol conformance descriptor for HIDElement.Value);
          sub_2455E9B00();
          sub_2455E6788(v7, type metadata accessor for HIDElement.Value);
          v36 += v37;
          --v35;
        }

        while (v35);
      }

      result = sub_2455EA0D0();
      v13 = v52;
      v38 = -1 << *(v52 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v20 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v11 = v53;
        v10 = v51;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v40);
          if (v44 != -1)
          {
            v21 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v39) & ~*(v20 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v11 = v53;
      v10 = v51;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_2455E6F48(v10, v13[6] + v59 * v21, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v22 = v13[7] + 16 * v21;
      *v22 = v58;
      *(v22 + 8) = v57;
      ++v13[2];
      v19 = v50;
      v18 = v60;
    }

    v24 = v14;
    result = v48;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v26 = v48[v14];
      ++v24;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v60 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_37;
    }

    v45 = 1 << *(v11 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v48, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v45;
    }

    *(v11 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_2455E4F3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15248, &qword_2455F1D40);
  v32 = v4;
  result = sub_2455E9FA0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      sub_2455EA080();
      type metadata accessor for IOHIDElement();
      sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement, &unk_2455F1CF0);
      sub_2455E9A60();
      result = sub_2455EA0D0();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_2455E5218(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2455E9DE0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_2455EA080();
      type metadata accessor for IOHIDElement();
      sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement, &unk_2455F1CF0);
      v10 = v9;
      sub_2455E9A60();
      v11 = sub_2455EA0D0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_2455E5414(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_2455E347C(a3, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_2455E5940();
      goto LABEL_7;
    }

    sub_2455E44CC(v18, a4 & 1);
    v25 = sub_2455E347C(a3, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2455E661C(a3, v12, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      sub_2455E587C(v15, v12, a1, a2 & 1, v21, type metadata accessor for HIDDeviceClient.RequestElementUpdate, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      return;
    }

LABEL_15:
    sub_2455EA020();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;
  v23 = *v22;
  v24 = *(v22 + 8);
  *v22 = a1;
  *(v22 + 8) = a2 & 1;

  sub_2455E7110(v23, v24);
}

void sub_2455E5648(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_2455E347C(a3, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_2455E5BBC();
      goto LABEL_7;
    }

    sub_2455E49CC(v18, a4 & 1);
    v25 = sub_2455E347C(a3, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2455E661C(a3, v12, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E587C(v15, v12, a1, a2 & 1, v21, type metadata accessor for HIDDeviceClient.ProvideElementUpdate, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      return;
    }

LABEL_15:
    sub_2455EA020();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;
  v23 = *v22;
  v24 = *(v22 + 8);
  *v22 = a1;
  *(v22 + 8) = a2 & 1;

  sub_2455E711C(v23, v24);
}

uint64_t sub_2455E587C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a5[6];
  v14 = a6(0);
  result = sub_2455E6F48(a2, v13 + *(*(v14 - 8) + 72) * a1, a7);
  v16 = a5[7] + 16 * a1;
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

void *sub_2455E5940()
{
  v1 = v0;
  v2 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15260, &qword_2455F1D58);
  v4 = *v0;
  v5 = sub_2455E9F90();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v33 + 72) * v19;
        sub_2455E661C(*(v4 + 48) + v21, v32, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v22 = *(v4 + 56);
        v23 = v4;
        v24 = 16 * v19;
        v25 = v22 + 16 * v19;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = v34;
        sub_2455E6F48(v20, *(v34 + 48) + v21, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v29 = *(v28 + 56) + v24;
        v4 = v23;
        *v29 = v26;
        *(v29 + 8) = v27;
        result = sub_2455E6FBC(v26, v27);
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2455E5BBC()
{
  v1 = v0;
  v2 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15258, &qword_2455F1D50);
  v4 = *v0;
  v5 = sub_2455E9F90();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v33 + 72) * v19;
        sub_2455E661C(*(v4 + 48) + v21, v32, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v22 = *(v4 + 56);
        v23 = v4;
        v24 = 16 * v19;
        v25 = v22 + 16 * v19;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = v34;
        sub_2455E6F48(v20, *(v34 + 48) + v21, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v29 = *(v28 + 56) + v24;
        v4 = v23;
        *v29 = v26;
        *(v29 + 8) = v27;
        result = sub_2455E6FB0(v26, v27);
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_2455E5E38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15248, &qword_2455F1D40);
  v2 = *v0;
  v3 = sub_2455E9F90();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_2455E5F98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2455E5FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2455E5FB8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15250, &qword_2455F1D48);
  v10 = *(type metadata accessor for HIDElement.Value(0) - 8);
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
  v15 = *(type metadata accessor for HIDElement.Value(0) - 8);
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

void sub_2455E6190(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_2455E9F40();
      type metadata accessor for IOHIDElement();
      swift_dynamicCast();
      type metadata accessor for IOHIDValue(0);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_2455E9F00() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2455E9F10();
  type metadata accessor for IOHIDElement();
  swift_dynamicCast();
  a2 = sub_2455E34FC(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}