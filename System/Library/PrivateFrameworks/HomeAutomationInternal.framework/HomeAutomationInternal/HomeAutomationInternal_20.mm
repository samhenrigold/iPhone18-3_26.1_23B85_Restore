uint64_t sub_252AA321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252A9CB70(a1, v6, a3);
}

uint64_t sub_252AA32C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_252AA3394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_252AA3460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_252AA3524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_252AA35E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_252AA3634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252AA3710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

unint64_t sub_252AA3840()
{
  result = qword_27F5429B0;
  if (!qword_27F5429B0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5429B8, qword_252E47458);
    result = swift_getWitnessTable(MEMORY[0x277D5C0A8], v3, v0, v1);
    atomic_store(result, &qword_27F5429B0);
  }

  return result;
}

uint64_t sub_252AA38A4(uint64_t a1, uint64_t a2)
{
  result = sub_252AA38FC(&qword_27F5429C0, a2, type metadata accessor for AutomateHomeNeedsDisambiguationStrategy, aQj);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252AA38FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252AA3944()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252B29FE8((v0 + 2), v2, v3, v4);
}

uint64_t sub_252AA39F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_25294B958;

  return sub_252B28D44(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_252AA3AC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25294B958;

  return sub_252B29588(v2, v3, v4, v5, v6);
}

uint64_t sub_252AA3B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25293B808;

  return sub_252B29AE4(a1, v4, v5, v7, v6);
}

uint64_t sub_252AA3C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[326] = v3;
  v4[325] = a3;
  v4[324] = a2;
  v4[323] = a1;
  v5 = sub_252E34014();
  v4[327] = v5;
  v4[328] = *(v5 - 8);
  v4[329] = swift_task_alloc();
  v4[330] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AA3D18, 0, 0);
}

uint64_t sub_252AA3D18()
{
  v36 = v0;
  v2 = MEMORY[0x277D84F90];
  if (v0[325])
  {
    v3 = sub_252C2C068();
    v4 = v3;
    __dst[0] = v2;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (1)
    {
      if (v6 == v7)
      {

        goto LABEL_16;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v1 = sub_252DA124C(0);

      ++v7;
      if (v1)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v2 = __dst[0];
        v7 = v10;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_16:
    v0[331] = v2;
    v1 = v0[326];
    v11 = v0[324];
    memcpy(v0 + 65, (v1 + 112), 0x1F8uLL);
    memcpy(__dst, (v1 + 112), 0x1F8uLL);
    sub_2529D291C((v0 + 65), (v0 + 128));
    v12 = v11;
    v4 = sub_252953488(v11, __dst, 0);
    v0[332] = v4;

    if (qword_27F53F4D0 == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  v13 = v0[326];
  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544D18);
  __dst[0] = 0x203A746E65746E49;
  __dst[1] = 0xE800000000000000;
  memcpy(v0 + 2, (v1 + 112), 0x1F8uLL);
  memcpy(v0 + 191, (v1 + 112), 0x1F8uLL);
  sub_2529D291C((v0 + 2), (v0 + 254));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v15 = sub_252E36F94();
  MEMORY[0x2530AD570](v15);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000091, 0x8000000252E774D0);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E77570;
  v0[322] = *(v4 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000091, 0x8000000252E774D0);

  v17 = swift_allocObject();
  v0[333] = v17;
  *(v17 + 16) = v13;
  *(v17 + 24) = v2;

  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v18);
  sub_252929E74((v19 + 288), (v0 + 317));

  v20 = v0[320];
  v21 = v0[321];
  __swift_project_boxed_opaque_existential_1(v0 + 317, v20);
  v22 = (*(v21 + 120))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 317);
  if (v22)
  {
    v23 = v0[326];
    v24 = v0[324];
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
    type metadata accessor for HomeAutomationEntityResponses();
    v25 = swift_allocObject();
    v0[334] = v25;
    *(v25 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v25 + 24) = v2;
    v26 = v23[12];
    v27 = v23[13];
    __swift_project_boxed_opaque_existential_1(v23 + 9, v26);
    v28 = swift_task_alloc();
    v0[335] = v28;
    v28[2] = v24;
    v28[3] = v25;
    v28[4] = v4;
    sub_252B03B94();
    v29 = swift_task_alloc();
    v0[336] = v29;
    *v29 = v0;
    v29[1] = sub_252AA4314;
    v30 = v0[330];
    v31 = v0[323];
    v40 = v26;
    v41 = v27;
    v39 = 512;
    v38 = 0;

    return sub_252A199A8(v31, &unk_252E47648, v17, &unk_252E47668, v28, v30, 0, 0);
  }

  else
  {
    v33 = *__swift_project_boxed_opaque_existential_1((v0[326] + 24), *(v0[326] + 48));

    v34 = swift_task_alloc();
    v0[338] = v34;
    *v34 = v0;
    v34[1] = sub_252AA4524;

    return sub_252C0FFE0(0, v33, v2);
  }
}

uint64_t sub_252AA4314()
{
  v2 = *(*v1 + 2640);
  v3 = *(*v1 + 2624);
  v4 = *(*v1 + 2616);
  *(*v1 + 2696) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252AA4A14;
  }

  else
  {

    v5 = sub_252AA4494;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AA4494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AA4524(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2712) = a1;
  *(v3 + 2720) = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {
    v4 = sub_252AA4900;
  }

  else
  {
    v4 = sub_252AA4660;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AA4660()
{
  v1 = v0[339];
  v2 = v0[326];
  v3 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v3);
  v4 = swift_task_alloc();
  v0[341] = v4;
  *(v4 + 16) = v1;
  sub_252AD7CC4();
  v5 = swift_task_alloc();
  v0[342] = v5;
  *v5 = v0;
  v5[1] = sub_252AA4780;
  v6 = v0[329];
  v7 = v0[323];

  return sub_252BDB88C(v7, &unk_252E47658, v4, v6, 0, 0, 0, v3);
}

uint64_t sub_252AA4780()
{
  v2 = *(*v1 + 2632);
  v3 = *(*v1 + 2624);
  v4 = *(*v1 + 2616);
  *(*v1 + 2744) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252AA4AB8;
  }

  else
  {

    v5 = sub_252AA4984;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AA4900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AA4984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AA4A14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AA4AB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AA4B5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252AA4B7C, 0, 0);
}

uint64_t sub_252AA4B7C()
{
  v1 = v0[3];
  v0[4] = *(v0[2] + 64);
  v2 = type metadata accessor for HomeAutomationEntityResponses();
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 32) = 0xD000000000000019;
  *(v4 + 40) = 0x8000000252E775C0;
  *(v4 + 72) = v2;
  v7 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v0[6] = v4;
  *(v4 + 16) = xmmword_252E3C290;
  *(v4 + 48) = v3;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_252AA4CF0;

  return v7(0xD000000000000021, 0x8000000252E77590, v4);
}

uint64_t sub_252AA4CF0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252AA4E58, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252AA4E58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AA4ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for CompletionSnippetModel(0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AA4F64, 0, 0);
}

uint64_t sub_252AA4F64(uint64_t a1)
{
  if (sub_252C4B5D4())
  {
    v2 = v1[4];
    v3 = swift_task_alloc();
    v1[7] = v3;
    *v3 = v1;
    v3[1] = sub_252AA5090;
    v5 = v1[5];
    v4 = v1[6];
    v6 = v1[3];

    return sub_252A25610(v4, v6, v2, v5);
  }

  else
  {
    v8 = type metadata accessor for HomeAutomationSnippetModels(0);
    (*(*(v8 - 8) + 56))(v1[2], 1, 1);

    v9 = v1[1];

    return v9();
  }
}

uint64_t sub_252AA5090()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_252AA5270;
  }

  else
  {
    v2 = sub_252AA51A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252AA51A4()
{
  sub_2529645E8(v0[6], v0[2]);
  v1 = type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v1 - 8) + 56))(v0[2], 0, 1, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252AA5270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AA5300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252AA3C40(a1, a2, a3);
}

void *sub_252AA53B4@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252AA5418(void *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = sub_252C285CC();
  if (v2 >> 62)
  {
    v8 = sub_252E378C4();

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_10:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  v4 = sub_252C285CC();
  if (v4 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_252C2C068();
  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v5 == v7);
}

uint64_t sub_252AA5528()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252AA4B5C(v2, v3);
}

uint64_t sub_252AA55C0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252AA5654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252AA4ED0(a1, v4, v5, v6);
}

unint64_t AttributeSemantic.rawValue.getter()
{
  result = 0x74617265706D6574;
  switch(*v0)
  {
    case 1:
      return 0x656E746867697262;
    case 2:
      return 0x6974617275746173;
    case 3:
      return 0x726F6C6F63;
    case 4:
      return 0x7265776F70;
    case 5:
    case 0x16:
    case 0x17:
    case 0x23:
    case 0x2C:
      return 0xD000000000000011;
    case 6:
      v2 = 1769172848;
      return v2 | 0x6E6F697400000000;
    case 7:
    case 0x32:
    case 0x35:
    case 0x40:
      return 0xD000000000000012;
    case 8:
      v2 = 1635020658;
      return v2 | 0x6E6F697400000000;
    case 9:
      return 0x79746964696D7568;
    case 0xA:
      return 0x79726574746162;
    case 0xB:
      return 0x656B6F6D73;
    case 0xC:
      return 0x6D5F6E6F62726163;
    case 0xD:
      return 0x645F6E6F62726163;
    case 0xE:
      return 0x746361746E6F63;
    case 0xF:
      return 0x6E6F69746F6DLL;
    case 0x10:
      return 0x636E61707563636FLL;
    case 0x11:
      return 0x746867696CLL;
    case 0x12:
      return 1801545068;
    case 0x13:
      return 0x656E656373;
    case 0x14:
      return 0x352E326D70;
    case 0x15:
      return 808545648;
    case 0x18:
    case 0x1E:
      return 0xD000000000000014;
    case 0x19:
    case 0x36:
      return 0xD000000000000016;
    case 0x1A:
      return 0x65645F656E6F7A6FLL;
    case 0x1B:
      return 0xD000000000000010;
    case 0x1C:
      return 0x5F727568706C7573;
    case 0x1D:
      return 0x736E65645F636F76;
    case 0x1F:
      return 0x64656C62616E65;
    case 0x20:
      return 0x6573556E69;
    case 0x21:
      return 0x4D6D6172676F7270;
    case 0x22:
      v2 = 1634891108;
      return v2 | 0x6E6F697400000000;
    case 0x24:
      return 6649192;
    case 0x25:
      return 0xD000000000000010;
    case 0x26:
      return 0xD000000000000010;
    case 0x27:
      return 1801678700;
    case 0x28:
      return 0x4C6C6F72746E6F63;
    case 0x29:
    case 0x33:
      return 0xD000000000000013;
    case 0x2A:
      return 0x6573696172;
    case 0x2B:
      return 0xD000000000000010;
    case 0x2D:
      return 0x646F4D676E697773;
    case 0x2E:
      v3 = 10;
      goto LABEL_58;
    case 0x2F:
      return 0xD000000000000010;
    case 0x30:
      return 0xD000000000000018;
    case 0x31:
      v3 = 5;
LABEL_58:
      result = v3 | 0xD000000000000010;
      break;
    case 0x34:
      result = 0xD000000000000017;
      break;
    case 0x37:
      result = 0x676E696772616863;
      break;
    case 0x38:
      result = 0x6574746142776F6CLL;
      break;
    case 0x39:
      result = 0x68437265746C6966;
      break;
    case 0x3A:
      result = 0x694C7265746C6966;
      break;
    case 0x3B:
      result = 0x76654C7265746177;
      break;
    case 0x3C:
      result = 0x6146737574617473;
      break;
    case 0x3D:
      result = 1701080941;
      break;
    case 0x3E:
      result = 0x7265746177;
      break;
    case 0x3F:
      result = 0x6E6964726F636572;
      break;
    case 0x41:
      result = 1701670760;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationInternal::AttributeSemantic_optional __swiftcall AttributeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 48;
  switch(v3)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v5 = 1;
      goto LABEL_65;
    case 2:
      v5 = 2;
      goto LABEL_65;
    case 3:
      v5 = 3;
      goto LABEL_65;
    case 4:
      v5 = 4;
      goto LABEL_65;
    case 5:
      v5 = 5;
      goto LABEL_65;
    case 6:
      v5 = 6;
      goto LABEL_65;
    case 7:
      v5 = 7;
      goto LABEL_65;
    case 8:
      v5 = 8;
      goto LABEL_65;
    case 9:
      v5 = 9;
      goto LABEL_65;
    case 10:
      v5 = 10;
      goto LABEL_65;
    case 11:
      v5 = 11;
      goto LABEL_65;
    case 12:
      v5 = 12;
      goto LABEL_65;
    case 13:
      v5 = 13;
      goto LABEL_65;
    case 14:
      v5 = 14;
      goto LABEL_65;
    case 15:
      v5 = 15;
      goto LABEL_65;
    case 16:
      v5 = 16;
      goto LABEL_65;
    case 17:
      v5 = 17;
      goto LABEL_65;
    case 18:
      v5 = 18;
      goto LABEL_65;
    case 19:
      v5 = 19;
      goto LABEL_65;
    case 20:
      v5 = 20;
      goto LABEL_65;
    case 21:
      v5 = 21;
      goto LABEL_65;
    case 22:
      v5 = 22;
      goto LABEL_65;
    case 23:
      v5 = 23;
      goto LABEL_65;
    case 24:
      v5 = 24;
      goto LABEL_65;
    case 25:
      v5 = 25;
      goto LABEL_65;
    case 26:
      v5 = 26;
      goto LABEL_65;
    case 27:
      v5 = 27;
      goto LABEL_65;
    case 28:
      v5 = 28;
      goto LABEL_65;
    case 29:
      v5 = 29;
      goto LABEL_65;
    case 30:
      v5 = 30;
      goto LABEL_65;
    case 31:
      v5 = 31;
      goto LABEL_65;
    case 32:
      v5 = 32;
      goto LABEL_65;
    case 33:
      v5 = 33;
      goto LABEL_65;
    case 34:
      v5 = 34;
      goto LABEL_65;
    case 35:
      v5 = 35;
      goto LABEL_65;
    case 36:
      v5 = 36;
      goto LABEL_65;
    case 37:
      v5 = 37;
      goto LABEL_65;
    case 38:
      v5 = 38;
      goto LABEL_65;
    case 39:
      v5 = 39;
      goto LABEL_65;
    case 40:
      v5 = 40;
      goto LABEL_65;
    case 41:
      v5 = 41;
      goto LABEL_65;
    case 42:
      v5 = 42;
      goto LABEL_65;
    case 43:
      v5 = 43;
      goto LABEL_65;
    case 44:
      v5 = 44;
      goto LABEL_65;
    case 45:
      v5 = 45;
      goto LABEL_65;
    case 46:
      v5 = 46;
      goto LABEL_65;
    case 47:
      v5 = 47;
LABEL_65:
      v6 = v5;
      break;
    case 48:
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    default:
      v6 = 66;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static AttributeSemantic.< infix(_:_:)()
{
  v0 = AttributeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AttributeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252AA6098()
{
  sub_252E37EC4();
  AttributeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AA6100(uint64_t a1)
{
  AttributeSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252AA6164(uint64_t a1)
{
  sub_252E37EC4();
  AttributeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252AA61D4@<X0>(unint64_t *a1@<X8>)
{
  result = AttributeSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252AA61FC()
{
  v0 = AttributeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AttributeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252AA6298()
{
  v0 = AttributeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AttributeSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252AA6348()
{
  v0 = AttributeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AttributeSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252AA63F8()
{
  v0 = AttributeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AttributeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252AA6554()
{
  v0 = AttributeSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == AttributeSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252AA65F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252AA6920();
  v5 = sub_252AA6974();
  v6 = sub_252AA69C8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252AA6664()
{
  result = qword_27F5429E0;
  if (!qword_27F5429E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5429E0);
  }

  return result;
}

unint64_t sub_252AA66BC()
{
  result = qword_27F5429E8;
  if (!qword_27F5429E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540948, &qword_252E47730);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5429E8);
  }

  return result;
}

unint64_t sub_252AA6724()
{
  result = qword_27F5429F0;
  if (!qword_27F5429F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5429F0);
  }

  return result;
}

unint64_t sub_252AA677C()
{
  result = qword_27F5429F8;
  if (!qword_27F5429F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5429F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBF)
  {
    goto LABEL_17;
  }

  if (a2 + 65 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 65) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 65;
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

      return (*a1 | (v4 << 8)) - 65;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 65;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x42;
  v8 = v6 - 66;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributeSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 65) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBF)
  {
    v4 = 0;
  }

  if (a2 > 0xBE)
  {
    v5 = ((a2 - 191) >> 8) + 1;
    *result = a2 + 65;
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
    *result = a2 + 65;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252AA6920()
{
  result = qword_27F542A00;
  if (!qword_27F542A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F542A00);
  }

  return result;
}

unint64_t sub_252AA6974()
{
  result = qword_27F542A08;
  if (!qword_27F542A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F542A08);
  }

  return result;
}

unint64_t sub_252AA69C8()
{
  result = qword_27F542A10;
  if (!qword_27F542A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F542A10);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.init(primaryText:secondaryText:confirmationText:confirmLabel:denyLabel:confirmDirectInvocation:denyDirectInvocation:iconConfiguration:isDestructive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = type metadata accessor for ConfirmationSnippetModel(0);
  v21 = *(v20 + 44);
  v22 = type metadata accessor for IconConfiguration(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  sub_252E330C4();
  sub_252E330C4();
  sub_252A75B60();
  v23 = a12;
  sub_252E33054();
  sub_252E33054();

  a9[*(v20 + 48)] = a15;
  result = sub_252A6FB00(a14, &a9[v21]);
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  return result;
}

uint64_t type metadata accessor for ConfirmationSnippetModel(uint64_t a1)
{
  result = qword_27F542A70;
  if (!qword_27F542A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t ConfirmationSnippetModel.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-2] - v2;
  v17 = 0xD000000000000019;
  v18 = 0x8000000252E775E0;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v16, "primaryText: ");
  HIWORD(v16[1]) = -4864;
  MEMORY[0x2530AD570](*v0, *(v0 + 8));
  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v16[0], v16[1]);

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v16, "confirmLabel: ");
  HIBYTE(v16[1]) = -18;
  v4 = type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v15, *(&v15 + 1));

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v16[0], v16[1]);

  strcpy(v16, "denyLabel: ");
  HIDWORD(v16[1]) = -352321536;
  sub_252E330E4();
  MEMORY[0x2530AD570](v15, *(&v15 + 1));

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v16[0], v16[1]);

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252E379F4();

  v5 = *(v0 + *(v4 + 48));
  v16[0] = 0x7572747365447369;
  v16[1] = 0xEF203A6576697463;
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v6, v7);

  MEMORY[0x2530AD570](v16[0], v16[1]);

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E77600);
  v15 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E37AE4();
  MEMORY[0x2530AD570](v16[0], v16[1]);

  v8 = *(v0 + 24);
  if (v8)
  {
    v9 = *(v0 + 16);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_252E379F4();

    v16[0] = 0xD000000000000011;
    v16[1] = 0x8000000252E77640;
    MEMORY[0x2530AD570](v9, v8);
    MEMORY[0x2530AD570](v16[0], v16[1]);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252E379F4();

  v16[0] = 0xD000000000000015;
  v16[1] = 0x8000000252E77620;
  sub_252A6FA90(v0 + *(v4 + 44), v3);
  v10 = type metadata accessor for IconConfiguration(0);
  v11 = (*(*(v10 - 8) + 48))(v3, 1, v10);
  sub_252AA7488(v3);
  if (v11 == 1)
  {
    v12 = 0x65736C6166;
  }

  else
  {
    v12 = 1702195828;
  }

  if (v11 == 1)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v12, v13);

  MEMORY[0x2530AD570](v16[0], v16[1]);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v17;
}

uint64_t ConfirmationSnippetModel.primaryText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationSnippetModel.primaryText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.secondaryText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmationSnippetModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmationText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmationSnippetModel.confirmationText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmLabel.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

void *sub_252AA7268@<X0>(void *a1@<X8>)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252AA72D0(void *a1)
{
  type metadata accessor for ConfirmationSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t ConfirmationSnippetModel.confirmLabel.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t (*ConfirmationSnippetModel.confirmLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t ConfirmationSnippetModel.denyLabel.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t sub_252AA7488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_252AA74F0@<X0>(void *a1@<X8>)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252AA7558(void *a1)
{
  type metadata accessor for ConfirmationSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t ConfirmationSnippetModel.denyLabel.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

void (*ConfirmationSnippetModel.denyLabel.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252AA7700@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252AA7758(void **a1)
{
  v1 = *a1;
  type metadata accessor for ConfirmationSnippetModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

void (*ConfirmationSnippetModel.confirmDirectInvocation.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_252AA9630;
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252AA78F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252AA794C(void **a1)
{
  v1 = *a1;
  type metadata accessor for ConfirmationSnippetModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

void (*ConfirmationSnippetModel.denyDirectInvocation.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_252AA9630;
}

uint64_t ConfirmationSnippetModel.iconConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConfirmationSnippetModel(0) + 44);

  return sub_252A6FA90(v3, a1);
}

uint64_t ConfirmationSnippetModel.iconConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ConfirmationSnippetModel(0) + 44);

  return sub_252A6FB00(a1, v3);
}

uint64_t ConfirmationSnippetModel.isDestructive.setter(char a1)
{
  result = type metadata accessor for ConfirmationSnippetModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

unint64_t sub_252AA7C10(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x547972616D697270;
    v6 = 0x4C6D7269666E6F63;
    if (a1 != 2)
    {
      v6 = 0x6562614C796E6564;
    }

    if (a1)
    {
      v5 = 0x7261646E6F636573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7572747365447369;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252AA7D70()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB37C4(v3, v1);
  return sub_252E37F14();
}

uint64_t sub_252AA7DC0(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252AB37C4(v4, v2);
  return sub_252E37F14();
}

unint64_t sub_252AA7E04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252AA95E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_252AA7E34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252AA7C10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252AA7E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252AA95E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252AA7EA4(uint64_t a1)
{
  v2 = sub_252AA87A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AA7EE0(uint64_t a1)
{
  v2 = sub_252AA87A8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall ConfirmationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E77660;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t ConfirmationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v44 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v59 = *(v62 - 8);
  v5 = MEMORY[0x28223BE20](v62);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A20, &qword_252E47980);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for ConfirmationSnippetModel(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 44);
  v16 = type metadata accessor for IconConfiguration(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v64 = v15;
  v67 = v14;
  v18(v14 + v15, 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AA87A8();
  v20 = v63;
  sub_252E37F74();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252AA7488(v67 + v64);
  }

  else
  {
    v51 = v19;
    v52 = v18;
    v53 = v16;
    v54 = v11;
    v21 = v60;
    v22 = v61;
    v23 = a1;
    v24 = v62;
    LOBYTE(v65) = 0;
    v25 = sub_252E37C04();
    v26 = v67;
    *v67 = v25;
    v26[1] = v27;
    v50 = v27;
    LOBYTE(v65) = 1;
    v63 = v10;
    v26[2] = sub_252E37C04();
    v26[3] = v28;
    v49 = v28;
    LOBYTE(v65) = 8;
    v26[4] = sub_252E37C04();
    v26[5] = v29;
    v48 = v29;
    LOBYTE(v65) = 2;
    v65 = sub_252E37C04();
    v66 = v30;
    sub_252E330C4();
    LOBYTE(v65) = 3;
    v47 = 0;
    v65 = sub_252E37C04();
    v66 = v31;
    sub_252E330C4();
    LOBYTE(v65) = 4;
    v32 = sub_252AA8EEC(&qword_27F542A30, MEMORY[0x277D63230]);
    v33 = v62;
    v46 = v32;
    sub_252E37C64();
    v34 = v58;
    v45 = sub_252E33074();
    v35 = *(v59 + 8);
    v58 = (v59 + 8);
    v44 = v35;
    v35(v34, v33);
    v45 = sub_252A75B60();
    sub_252E33054();
    LOBYTE(v65) = 5;
    v36 = v57;
    sub_252E37C64();
    sub_252E33074();
    v44(v36, v24);
    sub_252E33054();
    LOBYTE(v65) = 7;
    sub_252AA9210(&qword_27F542A38, type metadata accessor for IconConfiguration, protocol conformance descriptor for IconConfiguration);
    v37 = v56;
    v38 = v53;
    sub_252E37C64();
    v39 = v64;
    v52(v37, 0, 1, v38);
    v40 = v67;
    sub_252A6FB00(v37, v67 + v39);
    LOBYTE(v65) = 6;
    v41 = v63;
    LOBYTE(v37) = sub_252E37C14();
    (*(v21 + 8))(v41, v22);
    v42 = v55;
    *(v40 + *(v54 + 48)) = v37 & 1;
    sub_252AA87FC(v40, v42);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_252AA8860(v40);
  }
}

unint64_t sub_252AA87A8()
{
  result = qword_27F542A28;
  if (!qword_27F542A28)
  {
    result = swift_getWitnessTable(byte_252E47B44, &type metadata for ConfirmationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542A28);
  }

  return result;
}

uint64_t sub_252AA87FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252AA8860(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A40, &qword_252E47988);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AA87A8();
  sub_252E37F84();
  LOBYTE(v31) = 0;
  v15 = v30;
  sub_252E37CF4();
  if (v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v26 = v8;
  v27 = v10;
  v30 = v12;
  v17 = v2[3];
  v31 = v2[2];
  v32 = v17;
  v33 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_25292FA38();
  sub_252E37D54();
  v18 = v11;

  v19 = v2[5];
  v31 = v2[4];
  v32 = v19;
  v33 = 8;

  sub_252E37D54();

  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v31) = 2;
  sub_252E37CF4();

  LOBYTE(v31) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  sub_252AA8E38();
  sub_252E37D54();
  v20 = v27;
  sub_252E330E4();
  LOBYTE(v31) = 3;
  sub_252E37CF4();

  v21 = v28;
  sub_252E33074();
  v27 = sub_252A75B60();
  sub_252E33054();
  LOBYTE(v31) = 4;
  v25 = sub_252AA8EEC(&qword_27F542A58, MEMORY[0x277D63228]);
  sub_252E37D54();
  v22 = v29 + 8;
  v23 = *(v29 + 8);
  v23(v20, v21);
  v29 = v22;
  sub_252E33074();
  v24 = v26;
  sub_252E33054();
  LOBYTE(v31) = 5;
  sub_252E37D54();
  v23(v24, v21);
  LOBYTE(v31) = 6;
  sub_252E37D04();
  return (*(v30 + 8))(v14, v18);
}

unint64_t sub_252AA8E38()
{
  result = qword_27F542A48;
  if (!qword_27F542A48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541B50, &unk_252E47970);
    v4[0] = sub_252AA9210(&qword_27F542A50, type metadata accessor for IconConfiguration, protocol conformance descriptor for IconConfiguration);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F542A48);
  }

  return result;
}

uint64_t sub_252AA8EEC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542A18, &qword_252E5FE30);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.stringId.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v14, "#primaryText: ");
  HIBYTE(v14[1]) = -18;
  MEMORY[0x2530AD570](*v0, v0[1]);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_252E379F4();

  v12 = 0xD000000000000010;
  v13 = 0x8000000252E77680;
  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x2530AD570](v4, v5);

  MEMORY[0x2530AD570](v12, v13);

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_252E379F4();

  v12 = 0xD000000000000017;
  v13 = 0x8000000252E776A0;
  v6 = type metadata accessor for ConfirmationSnippetModel(0);
  sub_252A6FA90(v0 + *(v6 + 44), v3);
  v7 = type metadata accessor for IconConfiguration(0);
  v8 = (*(*(v7 - 8) + 48))(v3, 1, v7);
  sub_252AA7488(v3);
  if (v8 == 1)
  {
    v9 = 0x65736C6166;
  }

  else
  {
    v9 = 1702195828;
  }

  if (v8 == 1)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v9, v10);

  MEMORY[0x2530AD570](v12, v13);

  return v14[0];
}

uint64_t sub_252AA9210(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_252AA92B0(uint64_t a1)
{
  sub_252AA9414(319, &qword_27F542A80, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252AA9414(319, &qword_27F540118, MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      sub_252AA9468(319, &qword_27F542A88, sub_252A75B60, MEMORY[0x277D63220]);
      if (v3 <= 0x3F)
      {
        sub_252AA9468(319, &qword_27F542A90, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252AA9414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252AA9468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_252AA94E0()
{
  result = qword_27F542A98;
  if (!qword_27F542A98)
  {
    result = swift_getWitnessTable(byte_252E47B1C, &type metadata for ConfirmationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542A98);
  }

  return result;
}

unint64_t sub_252AA9538()
{
  result = qword_27F542AA0;
  if (!qword_27F542AA0)
  {
    result = swift_getWitnessTable(aM5, &type metadata for ConfirmationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542AA0);
  }

  return result;
}

unint64_t sub_252AA9590()
{
  result = qword_27F542AA8;
  if (!qword_27F542AA8)
  {
    result = swift_getWitnessTable(a1_10, &type metadata for ConfirmationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542AA8);
  }

  return result;
}

unint64_t sub_252AA95E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252AA9634@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v45 = sub_252E36324();
  v40 = *(v45 - 8);
  v9 = MEMORY[0x28223BE20](v45);
  v39 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v44 = &v35 - v11;
  v12 = &off_279711000;
  v13 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeUserTask();
  if (!swift_dynamicCast())
  {
    if (qword_27F53F4D0 == -1)
    {
LABEL_20:
      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544D18);
      sub_252CC4050(0xD000000000000021, 0x8000000252E776C0, 0xD000000000000095, 0x8000000252E776F0, 0xD00000000000002FLL, 0x8000000252E77790, 29);
      sub_2529515FC(6, 0, 0xD00000000000001ELL, 0x8000000252E777C0);
      type metadata accessor for HomeAutomationError(0);
      sub_2529671A8();
      v28 = swift_allocError();
      v29 = [a1 v12[306]];
      sub_252E377F4();
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      *a3 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_24:
    swift_once();
    goto LABEL_20;
  }

  v12 = v46;
  v14 = [a2 filters];
  if (v14)
  {
    a1 = v14;
    v36 = v12;
    v37 = v8;
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();

    if (v15 >> 62)
    {
      v16 = sub_252E378C4();
      v38 = a3;
      if (v16)
      {
LABEL_5:
        v17 = 0;
        v41 = v15 & 0xFFFFFFFFFFFFFF8;
        v42 = v15 & 0xC000000000000001;
        v43 = (v40 + 32);
        v18 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v42)
          {
            v19 = MEMORY[0x2530ADF00](v17, v15);
          }

          else
          {
            if (v17 >= *(v41 + 16))
            {
              goto LABEL_23;
            }

            v19 = *(v15 + 8 * v17 + 32);
          }

          a1 = v19;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v21 = [v19 homeEntityName];
          if (v21)
          {
            v22 = v21;
            sub_252E36F34();
            v12 = v23;

            a3 = v39;
            sub_252E37024();

            v24 = *v43;
            (*v43)(v44, a3, v45);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_2529F7F74(0, *(v18 + 2) + 1, 1, v18);
            }

            v26 = *(v18 + 2);
            v25 = *(v18 + 3);
            a1 = (v26 + 1);
            if (v26 >= v25 >> 1)
            {
              v18 = sub_2529F7F74((v25 > 1), v26 + 1, 1, v18);
            }

            *(v18 + 2) = a1;
            v24(&v18[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v26], v44, v45);
          }

          else
          {
          }

          ++v17;
          if (v20 == v16)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = a3;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_27:

    v8 = v37;
    v12 = v36;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  [(SEL *)v12 attribute];
  if (qword_27F53F2A8 != -1)
  {
    swift_once();
  }

  v31 = off_27F541CD8;
  if (*(off_27F541CD8 + 2) && (v32 = sub_252A488EC(), (v33 & 1) != 0))
  {
    LOBYTE(v47[0]) = *(v31[7] + v32);
    AttributeSemantic.rawValue.getter();
    sub_252E362F4();
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v40 + 56))(v8, v34, 1, v45);
  if (qword_27F53F318 != -1)
  {
    swift_once();
  }

  sub_252BFDC54(v8, v18);

  return sub_252938BBC(v8);
}

uint64_t sub_252AA9C4C(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v2 = *(v1 + 22);

  qword_27F5757D0 = v2;
  return result;
}

uint64_t sub_252AA9CA8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v143 = a3;
  v156 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v147 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v145 = &v142 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v158 = &v142 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v142 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v146 = &v142 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v142 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v150 = &v142 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v157 = &v142 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v160 = &v142 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v148 = &v142 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v155 = &v142 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v161 = &v142 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v142 - v31;
  v33 = sub_252E36324();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v149 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v153 = &v142 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v162 = &v142 - v40;
  MEMORY[0x28223BE20](v39);
  v167 = &v142 - v41;
  v154 = a1;
  v42 = [a1 filters];
  v166 = v33;
  v163 = v34;
  v152 = a4;
  v159 = v32;
  if (v42)
  {
    v43 = v42;
    type metadata accessor for HomeFilter();
    v44 = sub_252E37264();

    if (v44 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v46 = 0;
      v164 = v44 & 0xFFFFFFFFFFFFFF8;
      v165 = v44 & 0xC000000000000001;
      v34 += 32;
      v168 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v165)
        {
          v47 = MEMORY[0x2530ADF00](v46, v44);
        }

        else
        {
          if (v46 >= *(v164 + 16))
          {
            goto LABEL_20;
          }

          v47 = *(v44 + 8 * v46 + 32);
        }

        v48 = v47;
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v50 = [v47 homeEntityName];
        if (v50)
        {
          v51 = v50;
          v52 = i;
          sub_252E36F34();

          v53 = v162;
          sub_252E37024();

          v54 = *v34;
          v55 = v53;
          v33 = v166;
          (*v34)(v167, v55, v166);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v168 = sub_2529F7F74(0, *(v168 + 2) + 1, 1, v168);
          }

          v57 = *(v168 + 2);
          v56 = *(v168 + 3);
          if (v57 >= v56 >> 1)
          {
            v168 = sub_2529F7F74((v56 > 1), v57 + 1, 1, v168);
          }

          v58 = v167;
          v59 = v168;
          *(v168 + 2) = v57 + 1;
          v54(&v59[((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v57], v58, v33);
          i = v52;
        }

        else
        {

          v33 = v166;
        }

        ++v46;
        if (v49 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v168 = MEMORY[0x277D84F90];
LABEL_23:

    v32 = v159;
    v34 = v163;
  }

  else
  {
    v168 = MEMORY[0x277D84F90];
  }

  v60 = v154;
  v61 = [v154 filters];
  v62 = v156;
  if (!v61)
  {
    goto LABEL_33;
  }

  v63 = v61;
  type metadata accessor for HomeFilter();
  v64 = sub_252E37264();

  if (v64 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  result = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_32:

    v61 = 0;
LABEL_33:
    v69 = 1;
    goto LABEL_34;
  }

LABEL_27:
  if ((v64 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x2530ADF00](0, v64);
  }

  else
  {
    if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v66 = *(v64 + 32);
  }

  v67 = v66;

  v68 = [v67 deviceType];

  v61 = v68;
  v69 = 0;
LABEL_34:
  v70 = static SemanticMapper.getSemanticKey(for:)(v61, v69, v32);
  v71 = sub_252B680FC(v70);
  swift_beginAccess();
  v72 = *(v71 + 16);
  v73 = *(v72 + 16);
  if (v73)
  {
    v74 = (v72 + 504 * v73 - 472);
    memcpy(v169, v74, sizeof(v169));
    memmove(v170, v74, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v169, v171);

    memcpy(v171, v170, 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v171);
  }

  memcpy(v170, v171, 0x1F8uLL);
  v75 = v60;
  v167 = sub_252953488(v60, v170, 0);

  if (v62)
  {
    v76 = *(v34 + 56);
    v76(v155, 1, 1, v33);
    v77 = v62;
    v78 = [v77 homeName];
    if (v78)
    {
      v79 = v78;
      sub_252E36F34();

      v80 = v148;
      sub_252E37024();

      v62 = v156;

      v81 = 0;
    }

    else
    {

      v81 = 1;
      v80 = v148;
    }

    v83 = v155;
    sub_252938BBC(v155);
    v76(v80, v81, 1, v33);
    sub_2529439A0(v80, v83);
    v82 = sub_2529439A0(v83, v161);
  }

  else
  {
    v76 = *(v34 + 56);
    v82 = (v76)(v161, 1, 1, v33);
  }

  sub_252B680FC(v82);
  v84 = sub_252B63638();

  if (v84)
  {
    if (v62)
    {
      v85 = [v62 deviceType];
      static SemanticMapper.getSemanticKey(for:)(v85, 0, v160);
      v86 = [v62 entityType];
    }

    else
    {
      static SemanticMapper.getSemanticKey(for:)(0, 1, v160);
      v86 = 0;
    }

    v118 = v153;
    sub_252A48498(v86, v62 == 0);
    sub_252E37024();

    if (qword_27F53F318 != -1)
    {
      swift_once();
    }

    v119 = qword_27F5757D0;
    v120 = v157;
    (*(v34 + 16))(v157, v118, v33);
    v76(v120, 0, 1, v33);
    v121 = v150;
    sub_252956C1C(v160, v150);
    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v122 = swift_allocObject();
    v123 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v76(v122 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v33);
    swift_beginAccess();
    v164 = v119;

    sub_252956BAC(v121, v122 + v123);
    swift_endAccess();
    sub_252938BBC(v121);
    v124 = v34;
    v125 = type metadata accessor for HomeAutomationHomeLocation(0);
    v126 = swift_allocObject();
    *(v126 + 16) = 0;
    v165 = v126;
    sub_252956C1C(v122 + v123, v126 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v122 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    swift_deallocClassInstance();
    sub_252956C1C(v161, v121);
    v127 = swift_allocObject();
    v128 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v76(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v166);
    v129 = v124;
    swift_beginAccess();
    sub_252956BAC(v121, v127 + v128);
    swift_endAccess();
    sub_252938BBC(v121);
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    v131 = v166;
    v132 = v130;
    sub_252956C1C(v127 + v128, v130 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v127 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_252E3F1F0;
    *(v133 + 32) = 0xD000000000000013;
    *(v133 + 40) = 0x8000000252E76480;
    v134 = v144;
    sub_252956C1C(v157, v144);
    v135 = *(v129 + 48);
    if (v135(v134, 1, v131) == 1)
    {
      v136 = v167;

      sub_252938BBC(v134);
      *(v133 + 48) = 0u;
      *(v133 + 64) = 0u;
    }

    else
    {
      *(v133 + 72) = v131;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v133 + 48));
      (*(v129 + 32))(boxed_opaque_existential_0, v134, v131);
      v136 = v167;
    }

    v138 = v146;
    strcpy((v133 + 80), "candidateName");
    *(v133 + 94) = -4864;
    *(v133 + 96) = v165;
    *(v133 + 120) = v125;
    *(v133 + 128) = 0x656D614E656D6F68;
    *(v133 + 136) = 0xE800000000000000;
    *(v133 + 144) = v132;
    *(v133 + 168) = v125;
    *(v133 + 176) = 0xD000000000000011;
    *(v133 + 184) = 0x8000000252E764A0;
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(v133 + 192) = v168;
    *(v133 + 216) = v139;
    *(v133 + 224) = 0xD000000000000010;
    *(v133 + 232) = 0x8000000252E764C0;
    sub_252956C1C(v160, v138);
    if (v135(v138, 1, v131) == 1)
    {

      sub_252938BBC(v138);
      *(v133 + 240) = 0u;
      *(v133 + 256) = 0u;
      v114 = v159;
      v140 = v163;
    }

    else
    {
      *(v133 + 264) = v131;
      v141 = __swift_allocate_boxed_opaque_existential_0((v133 + 240));
      v140 = v163;
      (*(v163 + 32))(v141, v138, v131);

      v114 = v159;
    }

    strcpy((v133 + 272), "intentContext");
    *(v133 + 286) = -4864;
    *(v133 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
    *(v133 + 288) = v136;

    sub_252E362B4();

    sub_252938BBC(v157);
    (*(v140 + 8))(v153, v131);
    sub_252938BBC(v160);
  }

  else
  {
    v87 = v143;
    v88 = v143 == 1;
    if (v143 == 1)
    {
      v89 = 0;
    }

    else
    {
      v89 = v143;
    }

    v90 = v76;
    if (v62 && v143 == 1)
    {
      v89 = [v62 entityType];
      v88 = 0;
    }

    v91 = v34;
    if (!v88)
    {
      v87 = v89;
    }

    sub_252A48498(v89, v88);
    v92 = v149;
    sub_252E37024();

    v93 = v151;
    sub_252AAB0A8(v62, v87, v151);
    if (qword_27F53F318 != -1)
    {
      swift_once();
    }

    v94 = qword_27F5757D0;
    v95 = v158;
    (*(v91 + 16))(v158, v92, v33);
    v90(v95, 0, 1, v33);
    v96 = v150;
    sub_252956C1C(v93, v150);
    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v97 = swift_allocObject();
    v98 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v90(v97 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v33);
    swift_beginAccess();
    v165 = v94;

    sub_252956BAC(v96, v97 + v98);
    swift_endAccess();
    sub_252938BBC(v96);
    v99 = type metadata accessor for HomeAutomationHomeLocation(0);
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    v164 = v100;
    sub_252956C1C(v97 + v98, v100 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v97 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    swift_deallocClassInstance();
    sub_252956C1C(v161, v96);
    v101 = swift_allocObject();
    v102 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v90(v101 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v166);
    swift_beginAccess();
    sub_252956BAC(v96, v101 + v102);
    swift_endAccess();
    sub_252938BBC(v96);
    v103 = swift_allocObject();
    *(v103 + 16) = 0;
    v104 = v166;
    v105 = v103;
    sub_252956C1C(v101 + v102, v103 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v101 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_252E3F1F0;
    *(v106 + 32) = 0xD000000000000013;
    *(v106 + 40) = 0x8000000252E76480;
    v107 = v145;
    sub_252956C1C(v158, v145);
    v108 = *(v91 + 48);
    v109 = v108(v107, 1, v104);
    v162 = v108;
    if (v109 == 1)
    {
      v110 = v167;

      sub_252938BBC(v107);
      *(v106 + 48) = 0u;
      *(v106 + 64) = 0u;
    }

    else
    {
      *(v106 + 72) = v104;
      v111 = __swift_allocate_boxed_opaque_existential_0((v106 + 48));
      (*(v91 + 32))(v111, v107, v104);
      v110 = v167;
    }

    v112 = v147;
    strcpy((v106 + 80), "candidateName");
    *(v106 + 94) = -4864;
    *(v106 + 96) = v164;
    *(v106 + 120) = v99;
    *(v106 + 128) = 0x656D614E656D6F68;
    *(v106 + 136) = 0xE800000000000000;
    *(v106 + 144) = v105;
    *(v106 + 168) = v99;
    *(v106 + 176) = 0xD000000000000011;
    *(v106 + 184) = 0x8000000252E764A0;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(v106 + 192) = v168;
    *(v106 + 216) = v113;
    *(v106 + 224) = 0xD000000000000010;
    *(v106 + 232) = 0x8000000252E764C0;
    v114 = v159;
    sub_252956C1C(v159, v112);
    if ((v162)(v112, 1, v104) == 1)
    {

      sub_252938BBC(v112);
      *(v106 + 240) = 0u;
      *(v106 + 256) = 0u;
      v115 = v163;
    }

    else
    {
      *(v106 + 264) = v104;
      v116 = __swift_allocate_boxed_opaque_existential_0((v106 + 240));
      v115 = v163;
      (*(v163 + 32))(v116, v112, v104);
    }

    v117 = v149;
    strcpy((v106 + 272), "intentContext");
    *(v106 + 286) = -4864;
    *(v106 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
    *(v106 + 288) = v110;

    sub_252E362B4();

    sub_252938BBC(v158);
    sub_252938BBC(v151);
    (*(v115 + 8))(v117, v104);
  }

  sub_252938BBC(v161);
  return sub_252938BBC(v114);
}

uint64_t sub_252AAB0A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v74 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v74 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v74 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v74 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v23);
  v28 = &v74 - v27;
  if (a1)
  {
    v76 = v26;
    v79 = a3;
    v29 = sub_252E36324();
    v75 = *(v29 - 8);
    v30 = *(v75 + 56);
    v31 = v28;
    v32 = v28;
    v33 = v29;
    v77 = v75 + 56;
    v78 = v30;
    v30(v32, 1, 1, v29);
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        v47 = a1;
        v48 = [v47 homeName];
        v34 = v31;
        if (v48)
        {
          v49 = v33;
          v50 = v48;
          sub_252E36F34();

          v33 = v49;
          sub_252E37024();

          v51 = 0;
        }

        else
        {

          v51 = 1;
        }

        v65 = v78;
        v46 = v79;
        sub_252938BBC(v34);
        v65(v25, v51, 1, v33);
        v66 = v25;
        goto LABEL_38;
      }

      if (a2 == 2)
      {
        v57 = a1;
        v58 = [v57 zoneName];
        if (v58)
        {
          v59 = v58;
          sub_252E36F34();

          sub_252E37024();

          v60 = 0;
        }

        else
        {
          v60 = 1;
        }

        v71 = v78;
        v46 = v79;

        sub_252938BBC(v31);
        v71(v16, v60, 1, v33);
        v66 = v16;
        v34 = v31;
        v72 = v31;
        goto LABEL_39;
      }

      v34 = v31;
      if (a2 == 3)
      {
        v35 = a1;
        v36 = [v35 roomName];
        if (v36)
        {
          v37 = v36;
          sub_252E36F34();

          sub_252E37024();

          v38 = 0;
        }

        else
        {
          v38 = 1;
        }

        v46 = v79;

        sub_252938BBC(v31);
        v78(v22, v38, 1, v33);
        v66 = v22;
        goto LABEL_38;
      }

LABEL_20:
      sub_252938BBC(v34);
      v78(v34, 1, 1, v33);
      v46 = v79;
      return sub_2529439A0(v34, v46);
    }

    if (a2 == 4)
    {
      v52 = a1;
      v53 = [v52 groupName];
      v34 = v31;
      v54 = v78;
      if (v53)
      {
        v55 = v53;
        sub_252E36F34();

        sub_252E37024();

        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v46 = v79;

      sub_252938BBC(v31);
      v54(v19, v56, 1, v33);
    }

    else
    {
      v34 = v31;
      if (a2 == 5)
      {
        v61 = a1;
        v62 = [v61 homeName];
        if (v62)
        {
          v63 = v62;
          sub_252E36F34();

          sub_252E37024();

          v64 = 0;
        }

        else
        {
          v64 = 1;
        }

        v73 = v78;
        v46 = v79;

        sub_252938BBC(v34);
        v73(v9, v64, 1, v33);
        v66 = v9;
        goto LABEL_38;
      }

      if (a2 != 7)
      {
        goto LABEL_20;
      }

      v42 = a1;
      v43 = [v42 homeEntityName];
      if (v43)
      {
        v44 = v43;
        sub_252E36F34();

        sub_252E37024();

        v45 = v78;
        v78(v12, 0, 1, v33);
        sub_252938BBC(v31);
        v19 = v76;
        (*(v75 + 32))(v76, v12, v33);
        v45(v19, 0, 1, v33);
        v46 = v79;
      }

      else
      {
        v67 = 1;
        v68 = v78;
        v78(v12, 1, 1, v33);
        v69 = [v42 outerDeviceName];
        if (v69)
        {
          v70 = v69;
          sub_252E36F34();

          v19 = v76;
          sub_252E37024();

          v67 = 0;
          v46 = v79;
        }

        else
        {
          v46 = v79;
          v19 = v76;
        }

        sub_252938BBC(v34);
        v68(v19, v67, 1, v33);
        if ((*(v75 + 48))(v12, 1, v33) != 1)
        {
          sub_252938BBC(v12);
        }
      }
    }

    v66 = v19;
LABEL_38:
    v72 = v34;
LABEL_39:
    sub_2529439A0(v66, v72);
    return sub_2529439A0(v34, v46);
  }

  v39 = sub_252E36324();
  v40 = *(*(v39 - 8) + 56);

  return v40(a3, 1, 1, v39);
}

uint64_t sub_252AAB844()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 limitValue];

      if (v4 == 2)
      {
        return 1;
      }
    }
  }

  result = [v0 userTask];
  if (result)
  {
    v6 = result;
    v7 = [result value];

    if (v7)
    {
      v8 = [v7 limitValue];

      return v8 == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AAB938()
{
  v1 = [v0 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 value];
      if (v5)
      {
        v6 = [v5 limitValue];

        if (v6 == 2)
        {
          return 1;
        }
      }
    }

    else
    {
    }
  }

  result = [v0 automatableTask];
  if (result)
  {
    v8 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v11 = [v10 value];
      if (v11)
      {
        v12 = [v11 limitValue];

        return v12 == 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_252AABAA0()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result value];

    if (v3)
    {
      if ([v3 type] == 2 || objc_msgSend(v3, sel_type) == 4)
      {

        return 1;
      }

      else
      {
        v4 = [v3 type];

        return v4 == 6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AABB9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetMaxMinForPositionRequestsHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252AABBD0(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 9)
    {
      v5 = [a1 userTask];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 taskType];

        if (v7 == 1 || (sub_252AAB844() & 1) != 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_252C515AC();
        if (sub_252AAB844())
        {
LABEL_10:
          v8 = sub_252AABAA0() ^ 1;
          return v8 & 1;
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  v8 = 0;
  return v8 & 1;
}

id sub_252AABC98(void *a1, uint64_t a2)
{
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v78 = v4;
  v79 = v5;
  MEMORY[0x28223BE20](v4);
  v152 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *a2;
  v140 = *(a2 + 8);
  v139 = *(a2 + 9);
  v151 = *(a2 + 10);
  v170 = *(a2 + 11);
  v171 = *(a2 + 15);
  v124 = *(a2 + 16);
  v123 = *(a2 + 24);
  v122 = *(a2 + 25);
  v121 = *(a2 + 26);
  v168 = *(a2 + 27);
  v169 = *(a2 + 31);
  v120 = *(a2 + 32);
  v119 = *(a2 + 40);
  *(v167 + 3) = *(a2 + 44);
  v167[0] = *(a2 + 41);
  v7 = *(a2 + 48);
  v117 = *(a2 + 56);
  v118 = v7;
  v116 = *(a2 + 64);
  *(v166 + 3) = *(a2 + 68);
  v166[0] = *(a2 + 65);
  v8 = *(a2 + 72);
  v114 = *(a2 + 80);
  v115 = v8;
  v9 = *(a2 + 88);
  v112 = *(a2 + 96);
  v113 = v9;
  v10 = *(a2 + 104);
  v110 = *(a2 + 112);
  v111 = v10;
  v11 = *(a2 + 120);
  v108 = *(a2 + 128);
  v109 = v11;
  v12 = *(a2 + 136);
  v106 = *(a2 + 144);
  v107 = v12;
  v13 = *(a2 + 152);
  v104 = *(a2 + 160);
  v105 = v13;
  v14 = *(a2 + 168);
  v102 = *(a2 + 176);
  v103 = v14;
  v15 = *(a2 + 184);
  v100 = *(a2 + 192);
  v101 = v15;
  v164 = *(a2 + 210);
  v165 = *(a2 + 214);
  v163[0] = *(a2 + 233);
  *(v163 + 3) = *(a2 + 236);
  v162 = *(a2 + 294);
  v161 = *(a2 + 290);
  *(v160 + 3) = *(a2 + 316);
  v160[0] = *(a2 + 313);
  v97 = *(a2 + 200);
  LODWORD(v15) = *(a2 + 208);
  v95 = *(a2 + 209);
  v96 = v15;
  v16 = *(a2 + 216);
  v93 = *(a2 + 224);
  v94 = v16;
  LODWORD(v16) = *(a2 + 232);
  v17 = *(a2 + 240);
  v91 = *(a2 + 248);
  v92 = v17;
  v18 = *(a2 + 256);
  v89 = *(a2 + 264);
  v90 = v18;
  v19 = *(a2 + 272);
  v87 = *(a2 + 280);
  v88 = v19;
  v86 = *(a2 + 288);
  v98 = *(a2 + 289);
  v99 = v16;
  v20 = *(a2 + 296);
  v84 = *(a2 + 304);
  v85 = v20;
  LODWORD(v20) = *(a2 + 312);
  v21 = *(a2 + 328);
  v150 = *(a2 + 320);
  v149 = v21;
  v22 = *(a2 + 344);
  v148 = *(a2 + 336);
  v23 = *(a2 + 360);
  v146 = *(a2 + 352);
  v147 = v22;
  v145 = v23;
  v24 = *(a2 + 368);
  v143 = *(a2 + 376);
  v144 = v24;
  v142 = *(a2 + 384);
  v82 = *(a2 + 385);
  v83 = v20;
  LODWORD(v20) = *(a2 + 386);
  v80 = *(a2 + 387);
  v81 = v20;
  v25 = *(a2 + 388);
  v26 = *(a2 + 389);
  v27 = *(a2 + 390);
  v28 = *(a2 + 392);
  v137 = *(a2 + 400);
  v138 = v28;
  v29 = *(a2 + 408);
  v135 = *(a2 + 416);
  v136 = v29;
  v30 = *(a2 + 424);
  v133 = *(a2 + 432);
  v134 = v30;
  v31 = *(a2 + 440);
  v131 = *(a2 + 448);
  v132 = v31;
  v32 = *(a2 + 456);
  v129 = *(a2 + 464);
  v130 = v32;
  v33 = *(a2 + 472);
  v127 = *(a2 + 480);
  v128 = v33;
  v34 = *(a2 + 488);
  v125 = *(a2 + 496);
  v126 = v34;
  v35 = a1;
  v36 = [a1 userTask];
  if (v36)
  {
    v37 = v36;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v38 = sub_252D6CA80(v37);
  }

  else
  {
    v38 = 0;
  }

  *(&v159[36] + 2) = v161;
  *(&v159[39] + 1) = v160[0];
  *(&v159[1] + 3) = v170;
  HIBYTE(v159[1]) = v171;
  *(&v159[3] + 3) = v168;
  HIBYTE(v159[3]) = v169;
  HIDWORD(v159[5]) = *(v167 + 3);
  *(&v159[5] + 1) = v167[0];
  HIDWORD(v159[8]) = *(v166 + 3);
  *(&v159[8] + 1) = v166[0];
  HIWORD(v159[26]) = v165;
  *(&v159[26] + 2) = v164;
  HIDWORD(v159[29]) = *(v163 + 3);
  *(&v159[29] + 1) = v163[0];
  HIWORD(v159[36]) = v162;
  HIDWORD(v159[39]) = *(v160 + 3);
  HIWORD(v159[48]) = v27;
  v159[2] = v124;
  v159[4] = v120;
  v159[6] = v118;
  v159[7] = v117;
  v159[9] = v115;
  v159[10] = v114;
  v159[11] = v113;
  v159[12] = v112;
  v159[13] = v111;
  v159[14] = v110;
  v159[15] = v109;
  v159[16] = v108;
  v159[17] = v107;
  v159[18] = v106;
  v159[19] = v105;
  v159[20] = v104;
  v159[21] = v103;
  v159[22] = v102;
  v159[23] = v101;
  v159[24] = v100;
  v159[25] = v97;
  v159[27] = v94;
  v159[28] = v93;
  v159[30] = v92;
  v159[31] = v91;
  v159[32] = v90;
  v159[33] = v89;
  v159[34] = v88;
  v159[35] = v87;
  v159[37] = v85;
  v159[38] = v84;
  v159[40] = v150;
  v159[41] = v149;
  v159[42] = v148;
  v159[43] = v147;
  v159[44] = v146;
  v159[45] = v145;
  v159[46] = v144;
  v159[47] = v143;
  v159[49] = v138;
  v159[50] = v137;
  v159[51] = v136;
  v159[52] = v135;
  v159[53] = v134;
  v159[54] = v133;
  v159[55] = v132;
  v159[56] = v131;
  v159[57] = v130;
  v159[58] = v129;
  v159[59] = v128;
  v159[60] = v127;
  v159[61] = v126;
  v159[62] = v125;
  v159[0] = v141;
  LOBYTE(v159[1]) = v140;
  BYTE1(v159[1]) = v139;
  BYTE2(v159[1]) = v151;
  LOBYTE(v159[3]) = v123;
  BYTE1(v159[3]) = v122;
  BYTE2(v159[3]) = v121;
  LOBYTE(v159[5]) = v119;
  LOBYTE(v159[8]) = v116;
  LOBYTE(v159[26]) = v96;
  BYTE1(v159[26]) = v95;
  LOBYTE(v159[29]) = v99;
  LOBYTE(v159[36]) = v86;
  BYTE1(v159[36]) = v98;
  LOBYTE(v159[39]) = v83;
  LOBYTE(v159[48]) = v142;
  BYTE1(v159[48]) = v82;
  BYTE2(v159[48]) = v81;
  BYTE3(v159[48]) = v80;
  BYTE4(v159[48]) = v25;
  BYTE5(v159[48]) = v26;
  if (sub_252956B94(v159) != 1)
  {
    memcpy(v154, v159, sizeof(v154));
    sub_252A10E18(&v157);
    v40 = v35;
    v42 = v79;
    v43 = &off_279711000;
    HIDWORD(v77) = v157 != 77 && sub_2529A78B0(v157, &unk_2864A43B0);
    v41 = v78;
    v154[0] = v141;
    LOBYTE(v154[1]) = v140;
    BYTE1(v154[1]) = v139;
    v154[2] = v124;
    LOBYTE(v154[3]) = v123;
    BYTE1(v154[3]) = v122;
    BYTE2(v154[3]) = v121;
    v154[4] = v120;
    LOBYTE(v154[5]) = v119;
    v154[6] = v118;
    v154[7] = v117;
    LOBYTE(v154[8]) = v116;
    v154[9] = v115;
    v154[10] = v114;
    v154[11] = v113;
    v154[12] = v112;
    v154[13] = v111;
    v154[14] = v110;
    v154[15] = v109;
    v154[16] = v108;
    v154[17] = v107;
    v154[18] = v106;
    v154[19] = v105;
    v154[20] = v104;
    v154[21] = v103;
    v154[22] = v102;
    v154[23] = v101;
    v154[24] = v100;
    v154[25] = v97;
    LOBYTE(v154[26]) = v96;
    BYTE1(v154[26]) = v95;
    v154[27] = v94;
    v154[28] = v93;
    v154[30] = v92;
    v154[31] = v91;
    v154[32] = v90;
    v154[33] = v89;
    v154[34] = v88;
    v154[35] = v87;
    LOBYTE(v154[36]) = v86;
    v154[37] = v85;
    v154[38] = v84;
    LOBYTE(v154[39]) = v83;
    LOBYTE(v157) = v151 & 1;
    LOBYTE(v155) = v99 & 1;
    v153[1] = v98 & 1;
    BYTE2(v154[1]) = v151 & 1;
    LOBYTE(v154[29]) = v99 & 1;
    BYTE1(v154[36]) = v98 & 1;
    v154[40] = v150;
    v154[41] = v149;
    v154[42] = v148;
    v154[43] = v147;
    v154[44] = v146;
    v154[45] = v145;
    v154[46] = v144;
    v154[47] = v143;
    LOBYTE(v154[48]) = v142;
    BYTE1(v154[48]) = v82 & 1;
    BYTE2(v154[48]) = v81 & 1;
    BYTE3(v154[48]) = v80 & 1;
    BYTE4(v154[48]) = v25 & 1;
    BYTE5(v154[48]) = v26 & 1;
    v154[49] = v138;
    v154[50] = v137;
    v154[51] = v136;
    v154[52] = v135;
    v154[53] = v134;
    v154[54] = v133;
    v154[55] = v132;
    v154[56] = v131;
    v154[57] = v130;
    v154[58] = v129;
    v154[59] = v128;
    v154[60] = v127;
    v154[61] = v126;
    v154[62] = v125;
    sub_252A10E18(v153);
    if (v153[0] == 77)
    {
      if ((v77 & 0x100000000) == 0)
      {
        v39 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      v59 = sub_2529A78B0(v153[0], &unk_2864A4440);
      if ((v77 & 0x100000000) == 0)
      {
        v39 = v59;
        goto LABEL_6;
      }
    }

LABEL_23:
    if (!v38)
    {
      goto LABEL_28;
    }

    v53 = sub_252D6CA30(v154);
    if (!*v60)
    {
      goto LABEL_27;
    }

    v54 = v60;
    v61 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v62 = sub_252E36F04();
    v63 = [v61 initWithIdentifier:0 displayString:v62];

    v42 = v79;
    v58 = v63;
    [v58 setIntegerValue_];
    goto LABEL_26;
  }

  v39 = 0;
  v40 = v35;
  v41 = v78;
  v42 = v79;
  v43 = &off_279711000;
LABEL_6:
  v44 = [v40 v43[214]];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 value];

    if (v46)
    {
      v47 = [v46 limitValue];

      if (v47 == 2)
      {
        goto LABEL_23;
      }
    }
  }

  if (v39 || (v48 = [v40 v43[214]]) != 0 && (v49 = v48, v50 = objc_msgSend(v48, sel_value), v49, v50) && (v51 = objc_msgSend(v50, sel_limitValue), v50, v51 == 1))
  {
    if (v38)
    {

      v53 = sub_252D6CA30(v154);
      if (!*v52)
      {
LABEL_27:
        (v53)(v154, 0);

        goto LABEL_28;
      }

      v54 = v52;
      v55 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v56 = sub_252E36F04();
      v57 = [v55 initWithIdentifier:0 displayString:v56];

      v42 = v79;
      v58 = v57;
      [v58 setIntegerValue_];
LABEL_26:
      [v58 setUnit_];
      [v58 setType_];

      type metadata accessor for MutableAttributeValue();
      swift_allocObject();
      *v54 = sub_252D6CC80(v58);

      goto LABEL_27;
    }
  }

LABEL_28:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v64 = __swift_project_value_buffer(v41, qword_27F544DA8);
  (*(v42 + 16))(v152, v64, v41);
  v154[0] = 0;
  v154[1] = 0xE000000000000000;
  sub_252E379F4();
  v157 = v154[0];
  v158 = v154[1];
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E77830);
  if (v38)
  {
    swift_beginAccess();
    v65 = v38[4];
    if (v65)
    {
      v66 = 0;
      v65 = *(v65 + 40);
      goto LABEL_35;
    }
  }

  else
  {
    v65 = 0;
  }

  v66 = 1;
LABEL_35:
  v155 = v65;
  v156 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v67 = sub_252E36F94();
  MEMORY[0x2530AD570](v67);

  v68 = v152;
  sub_252CC3D90(v157, v158, 0xD00000000000009CLL, 0x8000000252E77870);

  (*(v42 + 8))(v68, v41);
  if (v38)
  {

    v69 = sub_252D6CB58();
  }

  else
  {
    v69 = 0;
  }

  v70 = [v40 filters];
  if (v70)
  {
    v71 = v70;
    type metadata accessor for HomeFilter();
    v72 = sub_252E37264();
  }

  else
  {
    v72 = 0;
  }

  v73 = [v40 time];
  v74 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v74 setUserTask_];
  if (v72)
  {
    type metadata accessor for HomeFilter();
    v75 = sub_252E37254();
  }

  else
  {
    v75 = 0;
  }

  [v74 setFilters_];

  [v74 setTime_];

  return v74;
}

uint64_t static PhraseSemantic.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t PhraseSemantic.rawValue.getter()
{
  if (*v0)
  {
    return 0x79625F706F7473;
  }

  else
  {
    return 6645107;
  }
}

HomeAutomationInternal::PhraseSemantic_optional __swiftcall PhraseSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

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

  *v2 = v5;
  return result;
}

uint64_t sub_252AACA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AACB10()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AACB8C(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252AACBF4(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AACC6C@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

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

void sub_252AACCCC(uint64_t *a1@<X8>)
{
  v2 = 6645107;
  if (*v1)
  {
    v2 = 0x79625F706F7473;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252AACD04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AACDA4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (*a2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (v2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252AACE58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252AACF0C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x79625F706F7473;
  }

  else
  {
    v3 = 6645107;
  }

  if (*a2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (v2)
  {
    v5 = 0x79625F706F7473;
  }

  else
  {
    v5 = 6645107;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AAD06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252AAD25C();
  v5 = sub_252AAD2B0();
  v6 = sub_252AAD304();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252AAD0E0()
{
  result = qword_27F542AB0;
  if (!qword_27F542AB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F542AB0);
  }

  return result;
}

unint64_t sub_252AAD138()
{
  result = qword_27F542AB8;
  if (!qword_27F542AB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F542AB8);
  }

  return result;
}

unint64_t sub_252AAD190()
{
  result = qword_27F542AC0;
  if (!qword_27F542AC0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409F0, &qword_252E3DF70);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F542AC0);
  }

  return result;
}

unint64_t sub_252AAD1F8()
{
  result = qword_27F542AC8;
  if (!qword_27F542AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F542AC8);
  }

  return result;
}

unint64_t sub_252AAD25C()
{
  result = qword_27F542AD0;
  if (!qword_27F542AD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F542AD0);
  }

  return result;
}

unint64_t sub_252AAD2B0()
{
  result = qword_27F542AD8;
  if (!qword_27F542AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F542AD8);
  }

  return result;
}

unint64_t sub_252AAD304()
{
  result = qword_27F542AE0;
  if (!qword_27F542AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F542AE0);
  }

  return result;
}

uint64_t sub_252AAD370(__int128 *a1)
{
  v1 = a1;
  v232 = *a1;
  v233 = *(a1 + 2);
  LODWORD(v2) = *(a1 + 24);
  v3 = *(a1 + 73);
  v4 = *(a1 + 105);
  v230 = *(a1 + 89);
  v231[0] = v4;
  v5 = *(a1 + 16);
  *(v231 + 15) = *(a1 + 15);
  v6 = *(a1 + 41);
  v226 = *(a1 + 25);
  v227 = v6;
  v228 = *(a1 + 57);
  v229 = v3;
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v9 = *(a1 + 19);
  v10 = *(a1 + 20);
  v11 = *(a1 + 21);
  v12 = a1[12];
  v224 = a1[11];
  v225 = v12;
  LODWORD(v13) = *(a1 + 208);
  memcpy(__dst, a1 + 209, sizeof(__dst));
  if (v13 != 9)
  {
    goto LABEL_43;
  }

LABEL_2:
  v204 = *v1;
  v205 = *(v1 + 16);
  v206 = v2;
  v210 = *(v1 + 73);
  v211 = *(v1 + 89);
  *v212 = *(v1 + 105);
  v14 = *(v1 + 120);
  v207 = *(v1 + 25);
  v208 = *(v1 + 41);
  v209 = *(v1 + 57);
  *&v212[15] = v14;
  v213 = v5;
  v15 = v7;
  v214 = v7;
  v215 = v8;
  v194 = v8;
  v195 = v11;
  v198 = v9;
  v216 = v9;
  v217 = v10;
  v218 = v11;
  v16 = *(v1 + 192);
  v219 = *(v1 + 176);
  v220 = v16;
  v221 = v13;
  memcpy(v222, (v1 + 209), sizeof(v222));
  v17 = sub_252A10F24();
  v1 = sub_252DF9098(v17);

  if (qword_27F53F520 != -1)
  {
    goto LABEL_282;
  }

LABEL_3:
  v18 = sub_252E36AD4();
  v11 = __swift_project_value_buffer(v18, qword_27F544E08);
  sub_252E379F4();

  v9 = 0xD00000000000001ALL;
  *&v204 = 0xD00000000000001ALL;
  *(&v204 + 1) = 0x8000000252E77910;
  v19 = sub_252C65520(v1);
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E77910, 0xD00000000000008ELL, 0x8000000252E77930);

  v202 = *(v1 + 16);
  if (!v202)
  {

    v41 = sub_252E36AC4();
    v42 = sub_252E374C4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_252917000, v41, v42, "Empty intent attributes", v43, 2u);
      MEMORY[0x2530AED00](v43, -1, -1);
    }

    return 1;
  }

  v203 = v1;
  v204 = v232;
  v210 = v229;
  v211 = v230;
  *v212 = v231[0];
  v207 = v226;
  v205 = v233;
  v206 = v2;
  v208 = v227;
  v209 = v228;
  *&v212[15] = *(v231 + 15);
  v213 = v5;
  v214 = v15;
  v215 = v194;
  v216 = v198;
  v217 = v10;
  v218 = v195;
  v219 = v224;
  v220 = v225;
  v221 = v13;
  memcpy(v222, __dst, sizeof(v222));
  v2 = sub_252BAC7E4();
  KeyPath = swift_getKeyPath();
  v21 = sub_2529304DC(KeyPath, v2);

  if ((v21 & 1) == 0)
  {
    v22 = swift_getKeyPath();
    v23 = sub_252BAF91C(v22, v2);

    if (!v23)
    {
      v44 = type metadata accessor for HomeStore(0);
      v45 = static HomeStore.shared.getter(v44);
      v8 = HomeStore.services(matching:supporting:)(v2, 0);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_53:
      sub_252929F10(v8, 1);

LABEL_293:

      v181 = sub_252E36AC4();
      v182 = sub_252E374C4();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        *&v204 = v184;
        *v183 = 136315138;
        v185 = type metadata accessor for HomeFilter();
        v186 = MEMORY[0x2530AD730](v2, v185);
        v188 = v187;

        v189 = sub_252BE2CE0(v186, v188, &v204);

        *(v183 + 4) = v189;
        _os_log_impl(&dword_252917000, v181, v182, "Can't get any accessories matching %s. Invalidating candidate", v183, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v184);
        MEMORY[0x2530AED00](v184, -1, -1);
        MEMORY[0x2530AED00](v183, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v24 = type metadata accessor for HomeStore(0);
  v25 = static HomeStore.shared.getter(v24);
  v8 = HomeStore.accessories(matching:supporting:)(v2, 0);
  v27 = v26;

  if (v27)
  {
    goto LABEL_53;
  }

  v28 = (v8 & 0xFFFFFFFFFFFFFF8);
  if (!(v8 >> 62))
  {
    v5 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_292;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v5 = sub_252E378C4();
    if (!v5)
    {
      goto LABEL_292;
    }

LABEL_9:

    v191 = v5;
    v193 = v28;
    v190 = v8;
    if (v13 == 9)
    {
      break;
    }

    result = sub_252A0D524(v13, 0);
    if ((result & 1) == 0)
    {
      break;
    }

    if (*(v198 + 16) <= 1uLL && *(v195 + 16) <= 1uLL && *(v194 + 16) <= 1uLL && *(v15 + 16) <= 1uLL)
    {
      goto LABEL_187;
    }

    v13 = 0;
    v198 = v8 & 0xC000000000000001;
    v15 = v8 + 32;
    v10 = v1 + 32;
LABEL_16:
    if (v198)
    {
      v7 = MEMORY[0x2530ADF00](v13, v190);
      v30 = __OFADD__(v13++, 1);
      if (v30)
      {
        goto LABEL_42;
      }

LABEL_19:
      v9 = 0;
      while (v9 < *(v1 + 16))
      {
        v5 = *(v10 + 8 * v9);
        v31 = (*v7 + 352);
        v32 = *v31;
        v8 = v31;
        v33 = (*v31)();
        v34 = *(v33 + 16);
        v35 = 32;
        if (v5 == 5)
        {
          while (v34)
          {
            v36 = *(v33 + v35);
            v35 += 8;
            --v34;
            if (v36 == 3)
            {

              v11 = (v32)(v37);
              v2 = sub_2529A6C5C(4, v11);

              if ((v2 & 1) == 0)
              {
                goto LABEL_31;
              }

              v11 = (v32)(v38);
              v2 = sub_2529A6C5C(2, v11);

              if ((v2 & 1) == 0)
              {
                goto LABEL_31;
              }

              goto LABEL_39;
            }
          }
        }

        else
        {
          while (v34)
          {
            v39 = *(v33 + v35);
            v35 += 8;
            --v34;
            if (v39 == v5)
            {
              v11 = v33;

              goto LABEL_37;
            }
          }
        }

LABEL_31:
        v40 = (*(*v7 + 256))(v38) == 29 && v5 == 6;
        if (v40)
        {
LABEL_39:

LABEL_37:
          v1 = v203;
          v28 = v193;
          if (v13 != v191)
          {
            goto LABEL_16;
          }

          goto LABEL_157;
        }

        ++v9;
        v1 = v203;
        if (v9 == v202)
        {

          goto LABEL_159;
        }
      }

LABEL_281:
      __break(1u);
LABEL_282:
      swift_once();
      goto LABEL_3;
    }

    if (v13 < v28[2])
    {
      v7 = *(v15 + 8 * v13);

      v30 = __OFADD__(v13++, 1);
      if (!v30)
      {
        goto LABEL_19;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      if ((sub_252A0D524(v13, 1u) & 1) != 0 && *(v5 + 16))
      {
        return 0;
      }

      if ((sub_252A0D524(v13, 0) & 1) != 0 && v2 == 2 && *(v5 + 16))
      {
        return 1;
      }

      goto LABEL_2;
    }

LABEL_286:
    __break(1u);
  }

  if (*(v198 + 16) <= 1uLL && *(v195 + 16) <= 1uLL && *(v194 + 16) <= 1uLL && *(v15 + 16) <= 1uLL)
  {
    v95 = 0;
    v96 = v8 & 0xC000000000000001;
    v97 = v8 + 32;
    v98 = v1 + 32;
    v199 = v8 + 32;
    while (1)
    {
      if (v96)
      {
        result = MEMORY[0x2530ADF00](v95, v190);
        v28 = result;
        v30 = __OFADD__(v95++, 1);
        if (v30)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v95 >= v28[2])
        {
          goto LABEL_303;
        }

        v28 = *(v97 + 8 * v95);

        v30 = __OFADD__(v95++, 1);
        if (v30)
        {
LABEL_186:
          __break(1u);
LABEL_187:
          v115 = 0;
          v116 = v8 + 32;
          v117 = v1 + 32;
LABEL_188:
          if ((v8 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x2530ADF00](v115, v190);
            v118 = result;
            v30 = __OFADD__(v115++, 1);
            if (!v30)
            {
              goto LABEL_191;
            }
          }

          else
          {
            if (v115 >= v28[2])
            {
              goto LABEL_305;
            }

            v118 = *(v116 + 8 * v115);

            v30 = __OFADD__(v115++, 1);
            if (!v30)
            {
LABEL_191:
              v119 = 0;
              while (v119 < *(v1 + 16))
              {
                v120 = *(v117 + 8 * v119);
                v121 = (*v118 + 352);
                v122 = *v121;
                v123 = (*v121)();
                v124 = *(v123 + 16);
                v125 = 32;
                if (v120 == 5)
                {
                  while (v124)
                  {
                    v126 = *(v123 + v125);
                    v125 += 8;
                    --v124;
                    if (v126 == 3)
                    {

                      v128 = (v122)(v127);
                      v129 = sub_2529A6C5C(4, v128);

                      if (!v129)
                      {
                        goto LABEL_203;
                      }

                      v131 = (v122)(v130);
                      v132 = sub_2529A6C5C(2, v131);

                      if (!v132)
                      {
                        goto LABEL_203;
                      }

                      goto LABEL_214;
                    }
                  }
                }

                else
                {
                  while (v124)
                  {
                    v133 = *(v123 + v125);
                    v125 += 8;
                    --v124;
                    if (v133 == v120)
                    {
                      goto LABEL_213;
                    }
                  }
                }

LABEL_203:
                result = (*(*v118 + 256))(v130);
                if (result == 29 && v120 == 6)
                {
                  goto LABEL_214;
                }

                ++v119;
                v1 = v203;
                if (v119 == v202)
                {

                  v28 = v193;
                  v116 = v8 + 32;
                  if (v115 != v191)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_159;
                }
              }

              goto LABEL_302;
            }
          }

          __break(1u);
LABEL_213:

LABEL_214:

          sub_252929F10(v190, 0);
          goto LABEL_215;
        }
      }

      for (i = 0; i != v202; ++i)
      {
        if (i >= *(v1 + 16))
        {
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
          goto LABEL_301;
        }

        v100 = *(v98 + 8 * i);
        v101 = (*v28 + 336);
        v102 = *v101;
        v8 = v101;
        v103 = (*v101)();
        v104 = *(v103 + 16);
        v105 = 32;
        if (v100 == 5)
        {
          do
          {
            if (!v104)
            {
              goto LABEL_176;
            }

            v106 = *(v103 + v105);
            v105 += 8;
            --v104;
          }

          while (v106 != 3);

          v108 = (v102)(v107);
          v109 = sub_2529A6C5C(4, v108);

          if (v109)
          {
            v111 = (v102)(v110);
            v112 = sub_2529A6C5C(2, v111);

            if (v112)
            {
              goto LABEL_214;
            }
          }
        }

        else
        {
          while (v104)
          {
            v113 = *(v103 + v105);
            v105 += 8;
            --v104;
            if (v113 == v100)
            {
              goto LABEL_213;
            }
          }

LABEL_176:
        }

        result = (*(*v28 + 256))(v110);
        if (result == 29 && v100 == 6)
        {
          goto LABEL_214;
        }

        v1 = v203;
      }

      v28 = v193;
      v97 = v199;
      if (v95 == v191)
      {
LABEL_159:

        v94 = v190;
        goto LABEL_160;
      }
    }
  }

  v13 = 0;
  v198 = v8 & 0xC000000000000001;
  v15 = v8 + 32;
  v10 = v1 + 32;
  while (2)
  {
    if (v198)
    {
      v48 = MEMORY[0x2530ADF00](v13, v190);
      v30 = __OFADD__(v13++, 1);
      if (v30)
      {
        break;
      }

      goto LABEL_62;
    }

    if (v13 >= v28[2])
    {
      __break(1u);
      goto LABEL_284;
    }

    v48 = *(v15 + 8 * v13);

    v30 = __OFADD__(v13++, 1);
    if (!v30)
    {
LABEL_62:
      v49 = 0;
      while (1)
      {
        if (v49 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_248;
        }

        v8 = *(v10 + 8 * v49);
        v50 = (*v48 + 336);
        v51 = *v50;
        v9 = v50;
        v52 = (*v50)();
        v53 = *(v52 + 16);
        v54 = 32;
        if (v8 == 5)
        {
          while (v53)
          {
            v55 = *(v52 + v54);
            v54 += 8;
            --v53;
            if (v55 == 3)
            {

              v57 = (v51)(v56);
              v2 = sub_2529A6C5C(4, v57);

              if ((v2 & 1) == 0)
              {
                goto LABEL_74;
              }

              v59 = (v51)(v58);
              v2 = sub_2529A6C5C(2, v59);

              if ((v2 & 1) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_82;
            }
          }
        }

        else
        {
          while (v53)
          {
            v60 = *(v52 + v54);
            v54 += 8;
            --v53;
            if (v60 == v8)
            {

              goto LABEL_80;
            }
          }
        }

LABEL_74:
        if ((*(*v48 + 256))(v58) == 29 && v8 == 6)
        {
          break;
        }

        ++v49;
        v1 = v203;
        if (v49 == v202)
        {
          goto LABEL_122;
        }
      }

LABEL_82:

LABEL_80:
      v1 = v203;
      v28 = v193;
      if (v13 == v191)
      {
LABEL_157:

        v93 = v190;
        goto LABEL_158;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_86:
  v28 = (v8 & 0xFFFFFFFFFFFFFF8);
  if (v8 >> 62)
  {
    goto LABEL_291;
  }

  v62 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v62)
  {
LABEL_292:

    sub_252929F10(v8, 0);
    goto LABEL_293;
  }

LABEL_88:

  v192 = v28;
  v193 = v8;
  v190 = v62;
  if (v13 == 9 || (result = sub_252A0D524(v13, 0), (result & 1) == 0))
  {
    if (*(v198 + 16) > 1uLL || *(v195 + 16) > 1uLL || *(v194 + 16) > 1uLL || *(v15 + 16) > 1uLL)
    {
      v13 = 0;
      v78 = v8 & 0xC000000000000001;
      v195 = v8 & 0xC000000000000001;
      v198 = v8 + 32;
      v8 = &qword_27F546000;
      while (1)
      {
        if (v78)
        {
          v2 = MEMORY[0x2530ADF00](v13, v193);
          v30 = __OFADD__(v13++, 1);
          if (v30)
          {
LABEL_155:
            __break(1u);
LABEL_156:

            sub_252929F10(v193, 0);

            return 0;
          }
        }

        else
        {
          if (v13 >= v28[2])
          {
            __break(1u);
LABEL_291:
            v62 = sub_252E378C4();
            if (!v62)
            {
              goto LABEL_292;
            }

            goto LABEL_88;
          }

          v2 = *(v198 + 8 * v13);

          v30 = __OFADD__(v13++, 1);
          if (v30)
          {
            goto LABEL_155;
          }
        }

        v79 = 0;
        v5 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
        while (1)
        {
          if (v79 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_281;
          }

          v9 = *(v1 + 8 * v79 + 32);
          v80 = sub_252CD95D8();
          if (v9 == 5)
          {
            v81 = sub_2529A6C5C(3, v80);

            if (!v81)
            {
              goto LABEL_143;
            }

            v82 = sub_252CD95D8();
            v83 = sub_2529A6C5C(4, v82);

            if (!v83)
            {
              goto LABEL_143;
            }

            v84 = sub_252CD95D8();
            v85 = 2;
          }

          else
          {
            v15 = sub_2529A6C5C(v9, v80);

            if (v15)
            {
              goto LABEL_128;
            }

            v84 = sub_252CD995C();
            v85 = v9;
          }

          v15 = sub_2529A6C5C(v85, v84);

          if (v15)
          {
            goto LABEL_128;
          }

LABEL_143:
          v86 = [*(v2 + v5) serviceType];
          v10 = sub_252E36F34();
          v15 = v87;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v88 = off_27F546230;
          if (*(off_27F546230 + 2))
          {
            v89 = sub_252A44A10(v10, v15);
            if (v90)
            {
              break;
            }
          }

LABEL_134:
          if (v202 == ++v79)
          {
            goto LABEL_156;
          }
        }

        v91 = *(v88[7] + 8 * v89);

        v40 = v91 == 29;
        v1 = v203;
        if (!v40 || v9 != 6)
        {
          goto LABEL_134;
        }

LABEL_128:

        v28 = v192;
        v78 = v195;
        if (v13 == v190)
        {
LABEL_248:

          v93 = v193;
          goto LABEL_158;
        }
      }
    }

    v135 = 0;
    v136 = v8 & 0xC000000000000001;
    v137 = v8 + 32;
    v196 = v8 + 32;
    v200 = v8 & 0xC000000000000001;
LABEL_217:
    if (v136)
    {
      result = MEMORY[0x2530ADF00](v135, v8);
      v138 = result;
      v30 = __OFADD__(v135++, 1);
      if (v30)
      {
        goto LABEL_245;
      }
    }

    else
    {
      if (v135 >= v28[2])
      {
        goto LABEL_304;
      }

      v138 = *(v137 + 8 * v135);

      v30 = __OFADD__(v135++, 1);
      if (v30)
      {
LABEL_245:
        __break(1u);
LABEL_279:

        sub_252929F10(v193, 0);
LABEL_215:

        return 1;
      }
    }

    v139 = 0;
    v140 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    while (1)
    {
      if (v139 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_299;
      }

      v141 = *(v1 + 8 * v139 + 32);
      v142 = sub_252CD95D8();
      if (v141 != 5)
      {
        break;
      }

      v143 = sub_2529A6C5C(3, v142);

      if (v143)
      {
        v144 = sub_252CD95D8();
        v145 = sub_2529A6C5C(4, v144);

        if (v145)
        {
          v146 = sub_252CD95D8();
          v147 = 2;
          goto LABEL_230;
        }
      }

LABEL_231:
      v150 = [*(v138 + v140) serviceType];
      v151 = sub_252E36F34();
      v153 = v152;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v154 = off_27F546230;
      if (*(off_27F546230 + 2) && (v155 = sub_252A44A10(v151, v153), (v156 & 1) != 0))
      {
        v157 = *(v154[7] + 8 * v155);

        v40 = v157 == 29;
        v1 = v203;
        if (v40 && v141 == 6)
        {
          goto LABEL_279;
        }
      }

      else
      {
      }

      if (v202 == ++v139)
      {

        v28 = v192;
        v8 = v193;
        v137 = v196;
        v136 = v200;
        if (v135 == v190)
        {
          goto LABEL_289;
        }

        goto LABEL_217;
      }
    }

    v148 = sub_2529A6C5C(v141, v142);

    if (v148)
    {
      goto LABEL_279;
    }

    v146 = sub_252CD995C();
    v147 = v141;
LABEL_230:
    v149 = sub_2529A6C5C(v147, v146);

    if (v149)
    {
      goto LABEL_279;
    }

    goto LABEL_231;
  }

  if (*(v198 + 16) <= 1uLL && *(v195 + 16) <= 1uLL && *(v194 + 16) <= 1uLL && *(v15 + 16) <= 1uLL)
  {
    v159 = 0;
    v160 = v8 & 0xC000000000000001;
    v161 = v8 + 32;
    v197 = v8 + 32;
    v201 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v160)
      {
        result = MEMORY[0x2530ADF00](v159, v8);
        v162 = result;
        v30 = __OFADD__(v159++, 1);
        if (v30)
        {
          goto LABEL_278;
        }
      }

      else
      {
        if (v159 >= v28[2])
        {
          goto LABEL_306;
        }

        v162 = *(v161 + 8 * v159);

        v30 = __OFADD__(v159++, 1);
        if (v30)
        {
LABEL_278:
          __break(1u);
          goto LABEL_279;
        }
      }

      v163 = 0;
      v164 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      do
      {
        if (v163 >= *(v1 + 16))
        {
          goto LABEL_300;
        }

        v165 = *(v1 + 8 * v163 + 32);
        v166 = sub_252CD9C58();
        if (v165 == 5)
        {
          v167 = sub_2529A6C5C(3, v166);

          if (!v167)
          {
            goto LABEL_264;
          }

          v168 = sub_252CD9C58();
          v169 = sub_2529A6C5C(4, v168);

          if (!v169)
          {
            goto LABEL_264;
          }

          v166 = sub_252CD9C58();
          v170 = 2;
        }

        else
        {
          v170 = v165;
        }

        v171 = sub_2529A6C5C(v170, v166);

        if (v171)
        {
          goto LABEL_279;
        }

LABEL_264:
        v172 = [*(v162 + v164) serviceType];
        v173 = sub_252E36F34();
        v175 = v174;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v176 = off_27F546230;
        if (*(off_27F546230 + 2) && (v177 = sub_252A44A10(v173, v175), (v178 & 1) != 0))
        {
          v179 = *(v176[7] + 8 * v177);

          v40 = v179 == 29;
          v1 = v203;
          if (v40 && v165 == 6)
          {
            goto LABEL_279;
          }
        }

        else
        {
        }

        ++v163;
      }

      while (v202 != v163);

      v28 = v192;
      v8 = v193;
      v161 = v197;
      v160 = v201;
      if (v159 == v190)
      {
LABEL_289:

        v94 = v8;
LABEL_160:
        sub_252929F10(v94, 0);
        return 0;
      }
    }
  }

  v13 = 0;
  v63 = v8 & 0xC000000000000001;
  v64 = v8 + 32;
  v11 = &qword_27F546000;
  v195 = v8 + 32;
  v198 = v8 & 0xC000000000000001;
  while (2)
  {
    if (!v63)
    {
      if (v13 < v28[2])
      {
        v2 = *(v64 + 8 * v13);

        v30 = __OFADD__(v13++, 1);
        if (!v30)
        {
          goto LABEL_98;
        }

LABEL_121:
        __break(1u);
LABEL_122:

        sub_252929F10(v190, 0);

        return 0;
      }

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
      return result;
    }

    v2 = MEMORY[0x2530ADF00](v13, v8);
    v30 = __OFADD__(v13++, 1);
    if (v30)
    {
      goto LABEL_121;
    }

LABEL_98:
    v65 = 0;
    v8 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    while (2)
    {
      if (v65 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_286;
      }

      v9 = *(v1 + 8 * v65 + 32);
      v66 = sub_252CD9C58();
      if (v9 != 5)
      {
        v70 = v9;
        goto LABEL_107;
      }

      v67 = sub_2529A6C5C(3, v66);

      if (v67)
      {
        v68 = sub_252CD9C58();
        v69 = sub_2529A6C5C(4, v68);

        if (v69)
        {
          v66 = sub_252CD9C58();
          v70 = 2;
LABEL_107:
          v15 = sub_2529A6C5C(v70, v66);

          if (v15)
          {
            break;
          }
        }
      }

      v71 = [*(v2 + v8) serviceType];
      v72 = sub_252E36F34();
      v15 = v73;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v28 = off_27F546230;
      if (!*(off_27F546230 + 2) || (v74 = sub_252A44A10(v72, v15), (v75 & 1) == 0))
      {

        goto LABEL_100;
      }

      v76 = *(v28[7] + 8 * v74);

      v40 = v76 == 29;
      v1 = v203;
      if (!v40 || v9 != 6)
      {
LABEL_100:
        if (v202 == ++v65)
        {
          goto LABEL_156;
        }

        continue;
      }

      break;
    }

    v28 = v192;
    v8 = v193;
    v64 = v195;
    v63 = v198;
    if (v13 != v190)
    {
      continue;
    }

    break;
  }

LABEL_284:

  v93 = v8;
LABEL_158:
  sub_252929F10(v93, 0);
  return 1;
}

uint64_t sub_252AAEA44(void *__src)
{
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252AAEAB4, 0, 0);
}

uint64_t sub_252AAEAB4()
{
  v37 = v0;
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544E08);
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  v2 = MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E779C0);
  sub_252B680FC(v2);
  v3 = sub_252B63B0C();

  v4 = MEMORY[0x2530AD730](v3, &type metadata for ReferencedEntityValue);
  v6 = v5;

  MEMORY[0x2530AD570](v4, v6);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000009BLL, 0x8000000252E77A10);

  v8 = sub_252AB0020(v7);
  v10 = v9;
  sub_252B680FC(v8);
  v11 = sub_252B63B0C();

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v12 - 1;
    v14 = MEMORY[0x277D84F90];
    v15 = 32;
    v34 = v11;
    while (1)
    {
      v16 = *(v11 + v15 + 16);
      *(v0 + 1528) = *(v11 + v15);
      *(v0 + 1544) = v16;
      v17 = *(v11 + v15 + 32);
      v18 = *(v11 + v15 + 48);
      v19 = *(v11 + v15 + 80);
      *(v0 + 1592) = *(v11 + v15 + 64);
      *(v0 + 1608) = v19;
      *(v0 + 1560) = v17;
      *(v0 + 1576) = v18;
      v20 = *(v11 + v15 + 96);
      v21 = *(v11 + v15 + 112);
      v22 = *(v11 + v15 + 128);
      *(v0 + 1672) = *(v11 + v15 + 144);
      *(v0 + 1640) = v21;
      *(v0 + 1656) = v22;
      *(v0 + 1624) = v20;
      v23 = *(v11 + v15 + 112);
      __dst[6] = *(v11 + v15 + 96);
      __dst[7] = v23;
      __dst[8] = *(v11 + v15 + 128);
      LOWORD(__dst[9]) = *(v11 + v15 + 144);
      v24 = *(v11 + v15 + 48);
      __dst[2] = *(v11 + v15 + 32);
      __dst[3] = v24;
      v25 = *(v11 + v15 + 80);
      __dst[4] = *(v11 + v15 + 64);
      __dst[5] = v25;
      v26 = *(v11 + v15 + 16);
      __dst[0] = *(v11 + v15);
      __dst[1] = v26;
      sub_25297DE08(v0 + 1528, v0 + 1680);
      sub_252AAEEB4(v0 + 16, __dst, v8, v10, __src);
      sub_2529AEC80(v0 + 1528);
      memcpy((v0 + 1024), __src, 0x1F8uLL);
      memcpy((v0 + 520), __src, 0x1F8uLL);
      if (sub_252956B94((v0 + 520)) != 1)
      {
        v27 = v10;
        v28 = v8;
        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        memcpy(__dst, (v0 + 520), 0x1F8uLL);
        sub_252E1EBE8(__dst);

        sub_252E1F258(&unk_2864A77A0);

        sub_252E1E4F8(__dst);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2529F7FB0(0, *(v14 + 2) + 1, 1, v14);
        }

        v30 = *(v14 + 2);
        v29 = *(v14 + 3);
        if (v30 >= v29 >> 1)
        {
          v14 = sub_2529F7FB0((v29 > 1), v30 + 1, 1, v14);
        }

        sub_25299F5D4(v0 + 1024);
        *(v14 + 2) = v30 + 1;
        memcpy(&v14[504 * v30 + 32], __dst, 0x1F8uLL);
        v8 = v28;
        v10 = v27;
        v11 = v34;
      }

      if (!v13)
      {
        break;
      }

      --v13;
      v15 += 152;
    }
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v31 = sub_252DF93D8(v14);

  v32 = *(v0 + 8);

  return v32(v31);
}

void *sub_252AAEEB4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a1 + 48);
  __dst[2] = *(a1 + 32);
  __dst[3] = v10;
  __dst[4] = *(a1 + 64);
  *&__dst[5] = *(a1 + 80);
  v11 = *(a1 + 16);
  __dst[0] = *a1;
  __dst[1] = v11;
  v12 = *(a1 + 104);
  v13 = *(a1 + 144);
  __dst[8] = *(a1 + 128);
  __dst[9] = v13;
  __dst[7] = *(a1 + 112);
  v14 = *(a1 + 160);
  memcpy(&__dst[10] + 8, (a1 + 168), 0x150uLL);
  v15 = a2[7];
  v86 = a2[6];
  v87 = v15;
  v88 = a2[8];
  v89 = *(a2 + 72);
  v16 = a2[3];
  v82 = a2[2];
  v83 = v16;
  v17 = a2[5];
  v84 = a2[4];
  v85 = v17;
  v18 = a2[1];
  v80 = *a2;
  v81 = v18;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v77 = *(a1 + 88);
  *(&__dst[5] + 8) = v77;
  v75 = v12;
  *(&__dst[6] + 1) = v12;
  *&__dst[10] = v14;
  v19 = sub_252E1EBE8(__dst);

  v76 = a5;
  v73 = v14;
  if (!v89)
  {

    if (a4)
    {
      goto LABEL_7;
    }

LABEL_14:
    swift_beginAccess();
    if (*(v19[8] + 16) || (v35 = v88) == 0 || (v36 = *(&v87 + 1), *(v77 + 16)) && (__dst[6] = v86, __dst[7] = v87, __dst[8] = v88, LOWORD(__dst[9]) = v89, __dst[2] = v82, __dst[3] = v83, __dst[4] = v84, __dst[5] = v85, __dst[0] = v80, __dst[1] = v81, sub_252AAFAAC()))
    {
      v74 = 0;
      v72 = 0;
      goto LABEL_16;
    }

    swift_beginAccess();
    v37 = v19[8];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[8] = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_2529F7A80(0, *(v37 + 2) + 1, 1, v37);
      v19[8] = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    a3 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v37 = sub_2529F7A80((v39 > 1), v40 + 1, 1, v37);
    }

    *(v37 + 2) = a3;
    v41 = &v37[16 * v40];
    *(v41 + 4) = v36;
    *(v41 + 5) = v35;
    v19[8] = v37;
    swift_endAccess();
    v72 = 0;
    v27 = 1;
    v28 = &unk_2864A7750;
    goto LABEL_13;
  }

  v20 = sub_252E37DB4();

  if ((v20 & 1) == 0 || !a4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (qword_27F53F520 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544E08);
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&__dst[0] = 0xD000000000000014;
    *(&__dst[0] + 1) = 0x8000000252E77AB0;
    MEMORY[0x2530AD570](a3, a4);
    sub_252CC3D90(*&__dst[0], *(&__dst[0] + 1), 0xD00000000000009BLL, 0x8000000252E77A10);

    swift_beginAccess();
    v22 = v19[8];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v19[8] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_2529F7A80(0, *(v22 + 2) + 1, 1, v22);
      v19[8] = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2529F7A80((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[16 * v25];
    *(v26 + 4) = a3;
    *(v26 + 5) = a4;
    v19[8] = v22;
    swift_endAccess();
    v27 = 0;
    v72 = 1;
    v28 = &unk_2864A7728;
LABEL_13:
    v74 = v27;

    v29 = sub_252E1F258(v28);

    v19 = v29;
LABEL_16:
    v30 = *(v77 + 16);
    if (!v30)
    {
      goto LABEL_35;
    }

    v31 = 0;
    a4 = 0x6572656874;
LABEL_18:
    if (v31 < *(v77 + 16))
    {
      break;
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v32 = *(v77 + 32 + v31++);
  switch(v32)
  {
    case 2:
LABEL_33:

      break;
    default:
      v33 = sub_252E37DB4();

      if ((v33 & 1) == 0)
      {
        switch(v32)
        {
          case 0:
          case 1:
          case 2:
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
            a3 = sub_252E37DB4();

            if (a3)
            {
              goto LABEL_34;
            }

            if (v30 == v31)
            {
              goto LABEL_35;
            }

            goto LABEL_18;
          case 3:
            goto LABEL_33;
          default:
            JUMPOUT(0);
        }
      }

      return result;
  }

LABEL_34:
  if (!*(v75 + 16))
  {
    v54 = sub_252AB0E20(v34);
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_252E3C290;
      *(v58 + 32) = v56;
      *(v58 + 40) = v57;
      v19[15] = v58;
      goto LABEL_48;
    }
  }

LABEL_35:
  v42 = v86;
  if (v86 && !*(v75 + 16))
  {
    v52 = *(&v85 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_252E3C290;
    *(v53 + 32) = v52;
    *(v53 + 40) = v42;
    v19[15] = v53;

LABEL_48:

    v45 = 1;
    v44 = v76;
    goto LABEL_49;
  }

  v43 = *(&v81 + 1);
  v44 = v76;
  if (*(&v81 + 1))
  {
    v45 = v74;
    if (!*(v73 + 16))
    {
      v46 = v81;
      swift_beginAccess();
      v47 = v19[22];

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v19[22] = v47;
      if ((v48 & 1) == 0)
      {
        v47 = sub_2529F7A80(0, *(v47 + 2) + 1, 1, v47);
        v19[22] = v47;
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      if (v50 >= v49 >> 1)
      {
        v47 = sub_2529F7A80((v49 > 1), v50 + 1, 1, v47);
      }

      *(v47 + 2) = v50 + 1;
      v51 = &v47[16 * v50];
      *(v51 + 4) = v46;
      *(v51 + 5) = v43;
      v19[22] = v47;
      swift_endAccess();
      v45 = 1;
    }
  }

  else
  {
    v45 = v74;
  }

LABEL_49:
  if (!*(v19[30] + 16))
  {
    v59 = v87;
    if (v87)
    {
      v60 = *(&v86 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_252E3C290;
      *(v61 + 32) = v60;
      *(v61 + 40) = v59;
      v19[30] = v61;

      goto LABEL_55;
    }
  }

  if (v45)
  {
LABEL_55:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v62 = swift_allocObject();
    v63 = v86;
    v64 = v88;
    *(v62 + 144) = v87;
    *(v62 + 160) = v64;
    v65 = v82;
    v66 = v84;
    v67 = v85;
    *(v62 + 80) = v83;
    *(v62 + 96) = v66;
    *(v62 + 112) = v67;
    *(v62 + 128) = v63;
    v68 = v80;
    v69 = v81;
    *(v62 + 16) = xmmword_252E3C290;
    *(v62 + 32) = v68;
    *(v62 + 176) = v89;
    *(v62 + 48) = v69;
    *(v62 + 64) = v65;
    sub_25297DE08(&v80, __dst);
    v70 = sub_2529FE8B4(v62);
    swift_setDeallocating();
    sub_2529AEC80(v62 + 32);
    swift_deallocClassInstance();
    sub_252E1E320(v70);

    goto LABEL_56;
  }

  if (v72)
  {
LABEL_56:
    sub_252E1E4F8(__src);

    memcpy(__dst, __src, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    return memcpy(v44, __dst, 0x1F8uLL);
  }

  sub_25293DEE0(__dst);
  return memcpy(v44, __dst, 0x1F8uLL);
}

BOOL sub_252AAFAAC()
{
  v1 = v0[12];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[16];
  if (v1)
  {
    if ((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : v0[11] & 0xFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  if (v4)
  {
    v6 = type metadata accessor for HomeStore(0);
    v7 = static HomeStore.shared.getter(v6);
    v8 = sub_2529D9114();

    if (!v8)
    {
      return 0;
    }

    v10 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    if (v2 == v10 && v4 == v9)
    {
    }

    else
    {
      v12 = sub_252E37DB4();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return v3 == 0;
}

uint64_t sub_252AAFB9C(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252AAEA44(a1);
}

uint64_t sub_252AAFC30(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 280);
  v3 = *(a1 + 288);
  v4 = *(a1 + 289);
  v5 = *(a1 + 386);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v6 + 288), v22);

  v7 = v23;
  v8 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  LOBYTE(v7) = (*(v8 + 152))(v7, v8);
  v9 = __swift_destroy_boxed_opaque_existential_1(v22);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v21 = v5;
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v10 + 16), v22);

  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  result = sub_2529796B4(v11, v12);
  if ((result & 1) != 0 && (v14 = *(v1 + 16)) != 0)
  {
    v15 = 0;
    while (v15 < *(v1 + 16))
    {
      v16 = v15 + 1;
      switch(*(v1 + 32 + v15))
      {
        case 2:

          goto LABEL_22;
        default:
          v17 = sub_252E37DB4();

          if (v17)
          {
LABEL_22:
            __swift_destroy_boxed_opaque_existential_1(v22);
            return 0;
          }

          v15 = v16;
          if (v14 == v16)
          {
            goto LABEL_9;
          }

          break;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    if (v4)
    {
      v18 = 0;
      result = 0;
      if (!v21)
      {
        return result;
      }
    }

    else if ((v3 & 1) != 0 && v2 == 3)
    {
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      v18 = 1;
    }

    else
    {
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      v18 = v3 & (v2 > 4);
    }

    sub_252B680FC(result);
    v19 = sub_252B63B0C();

    v20 = *(v19 + 16);

    if (v20)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AB0020(uint64_t a1)
{
  v1 = 1701736302;
  sub_252B680FC(a1);
  v2 = sub_252B63B0C();

  v3 = -*(v2 + 16);
  v4 = -1;
  v5 = 176;
  while (1)
  {
    if (v3 + v4 == -1)
    {

      if (qword_27F53F520 == -1)
      {
LABEL_9:
        v8 = sub_252E36AD4();
        __swift_project_value_buffer(v8, qword_27F544E08);
        v9 = "rom the onScreen entities";
        v10 = 0xD00000000000001ELL;
        goto LABEL_158;
      }

LABEL_119:
      swift_once();
      goto LABEL_9;
    }

    if (++v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:

LABEL_93:

      sub_2529AEC80(&v111);
      v82 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
LABEL_143:
      v104 = v82;
      if (!v104)
      {

        return 0;
      }

      v105 = v104;
      type metadata accessor for Home(0);
      swift_allocObject();
      v72 = sub_2529E65BC(v105);

      goto LABEL_145;
    }

    v7 = *(v2 + v5);
    if (v7 != 1 && v7 != 2)
    {
      break;
    }

    v5 += 152;
    v6 = sub_252E37DB4();

    if (v6)
    {
      goto LABEL_11;
    }
  }

LABEL_11:

  sub_252B680FC(v11);
  v12 = sub_252B63B0C();

  v13 = *(v12 + 16);
  if (!v13)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v14 = 0;
  v15 = v12 + 32;
  v16 = MEMORY[0x277D84F90];
  while (2)
  {
    v17 = v15 + 152 * v14;
    v18 = v14;
    while (2)
    {
      if (v18 >= *(v12 + 16))
      {
        goto LABEL_91;
      }

      v19 = *(v17 + 16);
      v111 = *v17;
      v112 = v19;
      v20 = *(v17 + 32);
      v21 = *(v17 + 48);
      v22 = *(v17 + 80);
      v115 = *(v17 + 64);
      v116 = v22;
      v113 = v20;
      v114 = v21;
      v23 = *(v17 + 96);
      v24 = *(v17 + 112);
      v25 = *(v17 + 128);
      v120 = *(v17 + 144);
      v118 = v24;
      v119 = v25;
      v117 = v23;
      if (v120)
      {
        v26 = sub_252E37DB4();
        sub_25297DE08(&v111, v110);

        if ((v26 & 1) == 0)
        {
LABEL_16:
          sub_2529AEC80(&v111);
          ++v18;
          v17 += 152;
          if (v13 == v18)
          {
            goto LABEL_28;
          }

          continue;
        }
      }

      else
      {
        sub_25297DE08(&v111, v110);
      }

      break;
    }

    if (!v119)
    {
      goto LABEL_16;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA580(0, *(v16 + 16) + 1, 1);
      v16 = v121;
    }

    v29 = *(v16 + 16);
    v28 = *(v16 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_2529AA580((v28 > 1), v29 + 1, 1);
      v16 = v121;
    }

    v14 = v18 + 1;
    *(v16 + 16) = v29 + 1;
    v30 = v16 + 152 * v29;
    v31 = v112;
    *(v30 + 32) = v111;
    *(v30 + 48) = v31;
    v32 = v113;
    v33 = v114;
    v34 = v116;
    *(v30 + 96) = v115;
    *(v30 + 112) = v34;
    *(v30 + 64) = v32;
    *(v30 + 80) = v33;
    v35 = v117;
    v36 = v118;
    v37 = v119;
    *(v30 + 176) = v120;
    *(v30 + 144) = v36;
    *(v30 + 160) = v37;
    *(v30 + 128) = v35;
    v15 = v12 + 32;
    if (v13 - 1 != v18)
    {
      continue;
    }

    break;
  }

LABEL_28:

  if (*(v16 + 16) == 1)
  {
    v38 = *(v16 + 144);
    v117 = *(v16 + 128);
    v118 = v38;
    v119 = *(v16 + 160);
    v120 = *(v16 + 176);
    v39 = *(v16 + 80);
    v113 = *(v16 + 64);
    v114 = v39;
    v40 = *(v16 + 112);
    v115 = *(v16 + 96);
    v116 = v40;
    v41 = *(v16 + 48);
    v111 = *(v16 + 32);
    v112 = v41;
    sub_25297DE08(&v111, v110);

    v42 = *(&v118 + 1);

    sub_2529AEC80(&v111);
    return v42;
  }

  sub_252B680FC(v44);
  v45 = sub_252B63B0C();

  v109 = *(v45 + 16);
  if (!v109)
  {
    goto LABEL_154;
  }

  v46 = 0;
  v47 = 32;
  while (2)
  {
    if (v46 >= *(v45 + 16))
    {
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v48 = *(v45 + v47 + 16);
    v111 = *(v45 + v47);
    v112 = v48;
    v49 = *(v45 + v47 + 32);
    v50 = *(v45 + v47 + 48);
    v51 = *(v45 + v47 + 80);
    v115 = *(v45 + v47 + 64);
    v116 = v51;
    v113 = v49;
    v114 = v50;
    v52 = *(v45 + v47 + 96);
    v53 = *(v45 + v47 + 112);
    v54 = *(v45 + v47 + 128);
    v120 = *(v45 + v47 + 144);
    v118 = v53;
    v119 = v54;
    v117 = v52;
    if (v120 == 1 || v120 == 2)
    {
      LODWORD(v55) = HIBYTE(v120);
      v56 = v111;
      v57 = sub_252E37DB4();
      sub_25297DE08(&v111, v110);

      if (v57)
      {
        v108 = v56;
        goto LABEL_40;
      }

      ++v46;
      sub_2529AEC80(&v111);
      v47 += 152;
      if (v109 == v46)
      {
        goto LABEL_154;
      }

      continue;
    }

    break;
  }

  LODWORD(v55) = HIBYTE(v120);
  v108 = v111;
  sub_25297DE08(&v111, v110);

LABEL_40:

  if (v55)
  {
    v58 = sub_252E37DB4();

    if ((v58 & 1) == 0)
    {
      if (v55 <= 2)
      {
        goto LABEL_63;
      }

      goto LABEL_64;
    }
  }

  else
  {
  }

  v59 = type metadata accessor for HomeStore(0);
  v60 = static HomeStore.shared.getter(v59);
  v61 = sub_2529D9D50();
  v62 = sub_2529D70E4(v61);

  if (v62 >> 62)
  {
    goto LABEL_122;
  }

  v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
LABEL_123:

    v94 = static HomeStore.shared.getter(v93);
    v95 = sub_2529D9D50();

    if (v95 >> 62)
    {
      goto LABEL_148;
    }

    v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v96)
    {
      while (1)
      {
        v97 = 0;
        while ((v95 & 0xC000000000000001) != 0)
        {
          v98 = MEMORY[0x2530ADF00](v97, v95);
          v99 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
LABEL_140:
            __break(1u);
LABEL_141:

LABEL_142:

            sub_2529AEC80(&v111);
            v82 = [*(v98 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
            goto LABEL_143;
          }

LABEL_131:
          v100 = sub_252E32E24();
          if (*(&v108 + 1))
          {
            if (v100 == v108 && *(&v108 + 1) == v101)
            {
              goto LABEL_141;
            }

            v103 = sub_252E37DB4();

            if (v103)
            {
              goto LABEL_142;
            }
          }

          else
          {
          }

          ++v97;
          if (v99 == v96)
          {
            goto LABEL_153;
          }
        }

        if (v97 < *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_148:
        v96 = sub_252E378C4();
        if (!v96)
        {
          goto LABEL_153;
        }
      }

      v98 = *(v95 + 8 * v97 + 32);

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_140;
      }

      goto LABEL_131;
    }

LABEL_153:
    sub_2529AEC80(&v111);
LABEL_154:

    goto LABEL_155;
  }

  while (2)
  {
    v64 = 0;
    v55 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
    while ((v62 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v64, v62);
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_62;
      }

LABEL_53:
      v66 = sub_252E32E24();
      if (*(&v108 + 1))
      {
        if (v66 == v108 && *(&v108 + 1) == v67)
        {

LABEL_68:

          sub_2529AEC80(&v111);
          sub_252CDB4B0();
          v72 = v71;

          if (!v72)
          {
            return 0;
          }

          goto LABEL_145;
        }

        v69 = sub_252E37DB4();

        if (v69)
        {
          goto LABEL_68;
        }
      }

      else
      {
      }

      ++v64;
      if (v65 == v63)
      {
        goto LABEL_123;
      }
    }

    if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_118;
    }

    v65 = v64 + 1;
    if (!__OFADD__(v64, 1))
    {
      goto LABEL_53;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    if (v55 == 1)
    {
LABEL_64:
      v70 = sub_252E37DB4();

      if ((v70 & 1) == 0)
      {
        if (v55 != 4)
        {
          goto LABEL_94;
        }

LABEL_95:
        v84 = type metadata accessor for HomeStore(0);
        v85 = static HomeStore.shared.getter(v84);
        v62 = sub_2529D9884();

        if (v62 >> 62)
        {
          v86 = sub_252E378C4();
          if (!v86)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v86 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v86)
          {
            goto LABEL_153;
          }
        }

        v87 = 0;
        while (1)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v87, v62);
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_112;
            }
          }

          else
          {
            if (v87 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_121;
            }

            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
LABEL_112:
              __break(1u);
              goto LABEL_113;
            }
          }

          v89 = sub_252E32E24();
          if (*(&v108 + 1))
          {
            if (v89 == v108 && *(&v108 + 1) == v90)
            {

LABEL_115:

              sub_2529AEC80(&v111);
              v72 = sub_2529A2E84();

              if (!v72)
              {
                return 0;
              }

LABEL_145:
              v106 = *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

              return v106;
            }

            v92 = sub_252E37DB4();

            if (v92)
            {
              goto LABEL_115;
            }
          }

          else
          {
          }

          ++v87;
          if (v88 == v86)
          {
            goto LABEL_153;
          }
        }
      }
    }

    else
    {
    }

    v73 = type metadata accessor for HomeStore(0);
    v74 = static HomeStore.shared.getter(v73);
    v62 = sub_2529DA828();

    if (v62 >> 62)
    {
      v75 = sub_252E378C4();
      if (!v75)
      {
        goto LABEL_153;
      }
    }

    else
    {
      v75 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        goto LABEL_153;
      }
    }

    v76 = 0;
LABEL_76:
    if ((v62 & 0xC000000000000001) == 0)
    {
      if (v76 < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v1 = *(v62 + 8 * v76 + 32);

        v77 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_88;
        }

        goto LABEL_79;
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      v63 = sub_252E378C4();
      if (!v63)
      {
        goto LABEL_123;
      }

      continue;
    }

    break;
  }

  v1 = MEMORY[0x2530ADF00](v76, v62);
  v77 = v76 + 1;
  if (!__OFADD__(v76, 1))
  {
LABEL_79:
    v78 = sub_252E32E24();
    if (*(&v108 + 1))
    {
      if (v78 == v108 && *(&v108 + 1) == v79)
      {
        goto LABEL_92;
      }

      v81 = sub_252E37DB4();

      if (v81)
      {
        goto LABEL_93;
      }
    }

    else
    {
    }

    ++v76;
    if (v77 == v75)
    {
      goto LABEL_153;
    }

    goto LABEL_76;
  }

LABEL_88:
  __break(1u);
LABEL_94:
  v83 = sub_252E37DB4();

  if (v83)
  {
    goto LABEL_95;
  }

LABEL_113:
  sub_2529AEC80(&v111);
LABEL_155:
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v107 = sub_252E36AD4();
  __swift_project_value_buffer(v107, qword_27F544E08);
  v9 = "Adding onScreenHome ";
  v10 = 0xD000000000000039;
LABEL_158:
  sub_252CC3D90(v10, v9 | 0x8000000000000000, 0xD00000000000009BLL, 0x8000000252E77A10);
  return 0;
}

uint64_t sub_252AB0E20(uint64_t a1)
{
  sub_252B680FC(a1);
  v1 = sub_252B63B0C();

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5 + 152 * v4;
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *(v7 + 16);
        v33 = *v7;
        v34 = v9;
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 80);
        v37 = *(v7 + 64);
        v38 = v12;
        v35 = v10;
        v36 = v11;
        v13 = *(v7 + 96);
        v14 = *(v7 + 112);
        v15 = *(v7 + 128);
        v42 = *(v7 + 144);
        v40 = v14;
        v41 = v15;
        v39 = v13;
        if (v42)
        {
          v16 = sub_252E37DB4();
          sub_25297DE08(&v33, v32);

          if ((v16 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_25297DE08(&v33, v32);
        }

        if (v39)
        {
          break;
        }

LABEL_6:
        result = sub_2529AEC80(&v33);
        ++v8;
        v7 += 152;
        if (v3 == v8)
        {
          goto LABEL_18;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v43 = v6;
      if ((result & 1) == 0)
      {
        result = sub_2529AA580(0, *(v6 + 16) + 1, 1);
        v6 = v43;
      }

      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_2529AA580((v17 > 1), v18 + 1, 1);
        v6 = v43;
      }

      v4 = v8 + 1;
      *(v6 + 16) = v18 + 1;
      v19 = v6 + 152 * v18;
      v20 = v34;
      *(v19 + 32) = v33;
      *(v19 + 48) = v20;
      v21 = v35;
      v22 = v36;
      v23 = v38;
      *(v19 + 96) = v37;
      *(v19 + 112) = v23;
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      *(v19 + 176) = v42;
      *(v19 + 144) = v25;
      *(v19 + 160) = v26;
      *(v19 + 128) = v24;
      v5 = v1 + 32;
      if (v3 - 1 == v8)
      {
        goto LABEL_18;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_18:

  if (*(v6 + 16) == 1)
  {
    v27 = *(v6 + 144);
    v39 = *(v6 + 128);
    v40 = v27;
    v41 = *(v6 + 160);
    v42 = *(v6 + 176);
    v28 = *(v6 + 80);
    v35 = *(v6 + 64);
    v36 = v28;
    v29 = *(v6 + 112);
    v37 = *(v6 + 96);
    v38 = v29;
    v30 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v30;
    sub_25297DE08(&v33, v32);

    v31 = *(&v38 + 1);

    sub_2529AEC80(&v33);
  }

  else
  {

    return 0;
  }

  return v31;
}

uint64_t sub_252AB1104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000252E77BC0 == a2;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x474E494752414843;
    v8 = 0xE800000000000000;
LABEL_7:
    v9 = sub_25299CB2C(v7, v8);
    v10 = type metadata accessor for HomeAutomationBatteryResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v9;
    a3[3] = v10;
LABEL_8:
    *a3 = result;
    return result;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E77BE0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v12 = *(sub_25299C704(43) + 24);

    v13 = type metadata accessor for HomeAutomationBatteryResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v12;
    a3[3] = v13;
    goto LABEL_8;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E77C00 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x524148435F544F4ELL;
    v8 = 0xEC000000474E4947;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E77C20 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x524148435F544F4ELL;
    v8 = 0xEE00454C42414547;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x8000000252E77C40 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x5F59524554544142;
    v8 = 0xEB00000000574F4CLL;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E77C60 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x5F59524554544142;
    v8 = 0xEE004C414D524F4ELL;
    goto LABEL_7;
  }

  return sub_252CDF514(a1, a2, a3);
}

uint64_t sub_252AB1414(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_252E33C44();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_252E33DB4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AB1534, 0, 0);
}

uint64_t sub_252AB1534()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v4 = sub_252E34024();
  v0[14] = v4;
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = v5 == 0x6B73615472657375 && v7 == 0xE800000000000000;
  if (v8 || (sub_252E37DB4() & 1) != 0)
  {

    if ((sub_252CCFCB8() & 1) != 0 || (v9 = [v4 userTask]) == 0)
    {
      v15 = v0[10];
      v14 = *(v0[7] + 16);
      v16 = 0;
      v17 = 2;
    }

    else
    {
      v10 = v0[10];
      v11 = v0[7];
      v12 = v9;
      v13 = [v9 attribute];

      v14 = *(v11 + 16);
      v15 = v10;
      v16 = v13;
      v17 = 1;
    }

    v18 = sub_252A6105C(v16, v17, v14, 4u, v15);
    v19 = sub_252B680FC(v18);
    swift_beginAccess();
    v20 = *(v19 + 16);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 504 * v21 - 85);
    }

    else
    {
      v22 = 0;
    }

    v23 = v0[7];

    v24 = v23[7];
    v25 = v23[8];
    __swift_project_boxed_opaque_existential_1(v23 + 4, v24);
    v26 = swift_allocObject();
    v0[15] = v26;
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    *(v26 + 32) = v4;

    v27 = v4;
    v28 = swift_task_alloc();
    v0[16] = v28;
    *v28 = v0;
    v28[1] = sub_252AB18B0;
    v29 = v0[10];
    v30 = v0[5];

    return sub_252BDB3DC(v30, &unk_252E480B0, v26, v29, v24, v25);
  }

  else
  {
    sub_2529515FC(0, 1, 0xD000000000000017, 0x8000000252E6FB60);
    type metadata accessor for HomeAutomationError(0);
    sub_252AB2D54(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v32 = v5;
    v32[1] = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_252AB18B0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_252AB1A80;
  }

  else
  {
    v2 = sub_252AB19E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252AB19E4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252AB1A80()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252AB1B20(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_252E36324();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AB1C58, 0, 0);
}

void sub_252AB1C58()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 72, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = [v1 filters];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v0;
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_20:
      v7 = MEMORY[0x277D84F90];
LABEL_21:
      v21 = v7;
      v23 = v0[12];
      v22 = v0[13];
      v24 = v0[10];
      v25 = v0[11];
      v26 = v0[8];
      v27 = *(v0 + 160);

      v28 = v24[5];
      v29 = *(v22 + 56);
      v29(&v25[v28], 1, 1, v23);
      v29(&v25[v24[8]], 1, 1, v23);
      *v25 = 0;
      v25[v24[6]] = 0;
      v25[v24[7]] = v27;
      *&v25[v24[9]] = v21;
      v30 = [v26 userTask];
      v31 = v30;
      if (v30)
      {
        v32 = [v30 attribute];
      }

      else
      {
        v32 = 0;
      }

      v33 = v39[9];
      static SemanticMapper.getSemanticKey(for:)(v32, v31 == 0, v33);
      sub_252956C98(v33, &v25[v28]);
      v34 = sub_252C07E14();
      v39[16] = v34;
      v43 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v35 = swift_task_alloc();
      v39[17] = v35;
      *v35 = v39;
      v35[1] = sub_2529CD40C;

      v43(0xD000000000000020, 0x8000000252E6FD10, v34);
      return;
    }
  }

  v5 = sub_252E378C4();
  v39 = v0;
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_4:
  v6 = 0;
  v40 = v4 & 0xFFFFFFFFFFFFFF8;
  v41 = v4 & 0xC000000000000001;
  v36 = v0[13];
  v42 = (v36 + 32);
  v7 = MEMORY[0x277D84F90];
  v37 = v5;
  v38 = v4;
  while (1)
  {
    if (v41)
    {
      v8 = MEMORY[0x2530ADF00](v6, v4);
    }

    else
    {
      if (v6 >= *(v40 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v11 = [v8 homeEntityName];
    if (v11)
    {
      v13 = v0[14];
      v12 = v0[15];
      v14 = v0[12];
      v15 = v11;
      sub_252E36F34();

      sub_252E37024();

      v16 = *v42;
      (*v42)(v12, v13, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7F74(0, v7[2] + 1, 1, v7);
      }

      v18 = v7[2];
      v17 = v7[3];
      v0 = v39;
      if (v18 >= v17 >> 1)
      {
        v7 = sub_2529F7F74((v17 > 1), v18 + 1, 1, v7);
      }

      v19 = v39[15];
      v20 = v39[12];
      v7[2] = v18 + 1;
      v16(v7 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v18, v19, v20);
      v5 = v37;
      v4 = v38;
    }

    else
    {
    }

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_252AB2080()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_252AB20F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252AB21BC(a1, a2, a3);
}

uint64_t sub_252AB21BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[133] = a3;
  v3[132] = a2;
  v3[131] = a1;
  v4 = sub_252E34164();
  v3[134] = v4;
  v3[135] = *(v4 - 8);
  v3[136] = swift_task_alloc();
  v5 = sub_252E33DB4();
  v3[137] = v5;
  v3[138] = *(v5 - 8);
  v3[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AB22E0, 0, 0);
}

uint64_t sub_252AB22E0()
{
  v26 = v0;
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[137];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v4 = sub_252E34024();
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = v5 == 0x6B73615472657375 && v7 == 0xE800000000000000;
  if (!v8 && (sub_252E37DB4() & 1) == 0 && (v5 != 0x6174616D6F747561 || v7 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    sub_2529515FC(6, 1, 0xD000000000000017, 0x8000000252E6FB60);
    type metadata accessor for HomeAutomationError(0);
    sub_252AB2D54(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v24 = v5;
    v24[1] = v7;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v14 = v0[1];
    goto LABEL_20;
  }

  v9 = v0[136];
  v10 = v0[135];
  v11 = v0[134];
  sub_252E340E4();
  sub_252AB3FEC(v9, 0, v25);
  (*(v10 + 8))(v9, v11);
  memcpy(v0 + 65, v25, 0x1F8uLL);
  memcpy(v0 + 2, v25, 0x1F8uLL);
  if (sub_252956B94(v0 + 2) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DA8);
    *&v25[0] = 0;
    *(&v25[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v25[0] = 0xD000000000000026;
    *(&v25[0] + 1) = 0x8000000252E6FC90;
    v13 = sub_252E340C4();
    MEMORY[0x2530AD570](v13);

    sub_252CC4050(*&v25[0], *(&v25[0] + 1), 0xD00000000000008DLL, 0x8000000252E6FAD0, 0xD000000000000028, 0x8000000252E6FC40, 46);

    sub_2529515FC(6, 1, 0xD000000000000015, 0x8000000252E6FCC0);
    type metadata accessor for HomeAutomationError(0);
    sub_252AB2D54(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    sub_252E340E4();
    goto LABEL_13;
  }

  v15 = [v4 userTask];
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v18 = sub_252D6CA80(v16);
    memcpy(v25, v0 + 2, 0x1F8uLL);
    v19 = sub_252BBB45C(v18[3]);
    if (v19)
    {
      type metadata accessor for MutableAttributeValue();
      swift_allocObject();
      v19 = sub_252D6CC80(v19);
    }

    swift_beginAccess();
    v18[4] = v19;

    v20 = sub_252D6CB58();
    ControlHomeIntent.withUpdated(task:)(v20);

    *(&v25[1] + 1) = v17;
    *&v25[0] = v18;
    type metadata accessor for ControlHomeIntent();

    sub_252E33CC4();
    sub_25299F5D4((v0 + 65));
  }

  else
  {
    type metadata accessor for ControlHomeIntent();
    memset(v25, 0, 32);
    sub_252E33CC4();
    sub_25299F5D4((v0 + 65));
  }

  v21 = v0[131];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D0, &qword_252E480A0);
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);

  v14 = v0[1];
LABEL_20:

  return v14();
}

uint64_t sub_252AB28C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252AB1414(a1, a2);
}

uint64_t sub_252AB296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9BF8](a1, a2, v9, a4);
}

uint64_t sub_252AB2A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C00](a1, a2, v9, a4);
}

uint64_t sub_252AB2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252AB2BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for ControlHomeNeedsValueStrategy();
  *v14 = v7;
  v14[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_252AB2CFC(uint64_t a1, uint64_t a2)
{
  result = sub_252AB2D54(&qword_27F542AF0, a2, type metadata accessor for ControlHomeNeedsValueStrategy, a9y_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252AB2D54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252AB2D9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252AB1B20(v2, v3, v4);
}

uint64_t sub_252AB2E5C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_252E37EC4();

    sub_252E37044();
    v10 = sub_252E37F14();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_252AB2FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    v81 = *(a1 + 16);
    do
    {
      memcpy(__dst, v2, 0x1F8uLL);
      if ((sub_252CDFDD4() & 1) == 0)
      {
        return v3;
      }

      v2 += 504;
      --v1;
    }

    while (v1);
    v4 = type metadata accessor for HomeStore(0);
    v5 = static HomeStore.shared.getter(v4);
    v6 = sub_2529DA2BC();

    isUniquelyReferenced_nonNull_native = v6;
    __dst[0] = v3;
    if (v6 >> 62)
    {
      goto LABEL_112;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v66 = v4;
      v10 = 0;
      v75 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v77 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v69 = isUniquelyReferenced_nonNull_native;
      v71 = v8;
      v73 = isUniquelyReferenced_nonNull_native + 32;
      while (1)
      {
        if (v77)
        {
          isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v10, v69);
          v4 = isUniquelyReferenced_nonNull_native;
          v11 = __OFADD__(v10++, 1);
          if (v11)
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v10 >= *(v75 + 16))
          {
            goto LABEL_109;
          }

          v4 = *(v73 + 8 * v10);

          v11 = __OFADD__(v10++, 1);
          if (v11)
          {
            goto LABEL_108;
          }
        }

        v12 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(isUniquelyReferenced_nonNull_native);
        v13 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
        swift_beginAccess();
        v14 = *&v12[v13];
        if (v14 >> 62)
        {
          v19 = sub_252E378C4();

          if (!v19)
          {
LABEL_22:
            v18 = v9;
            goto LABEL_23;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v15)
          {
            goto LABEL_22;
          }
        }

        v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(isUniquelyReferenced_nonNull_native);
        v17 = sub_252AC0F68(v4);

        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v9;
        }

LABEL_23:
        if (v18 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_252E378C4();
          v20 = isUniquelyReferenced_nonNull_native;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            goto LABEL_9;
          }
        }

        v21 = 0;
        do
        {
          v22 = v21;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v22, v18);
            }

            else
            {
              if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_103;
              }

              isUniquelyReferenced_nonNull_native = *(v18 + 8 * v22 + 32);
            }

            v4 = isUniquelyReferenced_nonNull_native;
            v21 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
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
              v65 = isUniquelyReferenced_nonNull_native;
              v8 = sub_252E378C4();
              isUniquelyReferenced_nonNull_native = v65;
              goto LABEL_7;
            }

            v23 = [isUniquelyReferenced_nonNull_native name];
            if (v23)
            {
              break;
            }

            ++v22;
            if (v21 == v20)
            {
              goto LABEL_9;
            }
          }

          v24 = v23;
          v25 = sub_252E36F34();
          v79 = v26;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v9 + 16) + 1, 1, v9);
            v9 = isUniquelyReferenced_nonNull_native;
          }

          v4 = *(v9 + 16);
          v27 = *(v9 + 24);
          if (v4 >= v27 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_2529F7A80((v27 > 1), v4 + 1, 1, v9);
            v9 = isUniquelyReferenced_nonNull_native;
          }

          *(v9 + 16) = v4 + 1;
          v28 = v9 + 16 * v4;
          *(v28 + 32) = v25;
          *(v28 + 40) = v79;
        }

        while (v21 != v20);
LABEL_9:

        isUniquelyReferenced_nonNull_native = sub_25297A744(v9);
        v9 = MEMORY[0x277D84F90];
        if (v10 == v71)
        {
          v29 = __dst[0];
          v4 = v66;
          goto LABEL_46;
        }
      }
    }

    v29 = MEMORY[0x277D84F90];
LABEL_46:

    v78 = sub_252C75848(v29);

    v31 = static HomeStore.shared.getter(v30);
    v32 = sub_2529DA2BC();

    __dst[0] = v9;
    if (v32 >> 62)
    {
      isUniquelyReferenced_nonNull_native = sub_252E378C4();
      v33 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v35 = 0;
      v74 = v32 & 0xFFFFFFFFFFFFFF8;
      v76 = v32 & 0xC000000000000001;
      v67 = v32;
      v70 = v33;
      v72 = v32 + 32;
      while (1)
      {
        if (v76)
        {
          isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v35, v67);
          v4 = isUniquelyReferenced_nonNull_native;
          v11 = __OFADD__(v35++, 1);
          if (v11)
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (v35 >= *(v74 + 16))
          {
            goto LABEL_111;
          }

          v4 = *(v72 + 8 * v35);

          v11 = __OFADD__(v35++, 1);
          if (v11)
          {
            goto LABEL_110;
          }
        }

        v36 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(isUniquelyReferenced_nonNull_native);
        v37 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
        swift_beginAccess();
        v38 = *&v36[v37];
        if (v38 >> 62)
        {
          v43 = sub_252E378C4();

          if (!v43)
          {
LABEL_63:
            v42 = v34;
            goto LABEL_64;
          }
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v39)
          {
            goto LABEL_63;
          }
        }

        v40 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(isUniquelyReferenced_nonNull_native);
        v41 = sub_252AC11C8(v4);

        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = v34;
        }

LABEL_64:
        if (v42 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_252E378C4();
          v44 = isUniquelyReferenced_nonNull_native;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_66:
            v45 = 0;
            do
            {
              v46 = v45;
              while (1)
              {
                if ((v42 & 0xC000000000000001) != 0)
                {
                  isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v46, v42);
                }

                else
                {
                  if (v46 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_105;
                  }

                  isUniquelyReferenced_nonNull_native = *(v42 + 8 * v46 + 32);
                }

                v4 = isUniquelyReferenced_nonNull_native;
                v45 = v46 + 1;
                if (__OFADD__(v46, 1))
                {
                  goto LABEL_104;
                }

                v47 = [isUniquelyReferenced_nonNull_native name];
                if (v47)
                {
                  break;
                }

                ++v46;
                if (v45 == v44)
                {
                  goto LABEL_50;
                }
              }

              v48 = v47;
              v49 = sub_252E36F34();
              v80 = v50;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v34 + 16) + 1, 1, v34);
                v34 = isUniquelyReferenced_nonNull_native;
              }

              v52 = *(v34 + 16);
              v51 = *(v34 + 24);
              v4 = v52 + 1;
              if (v52 >= v51 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_2529F7A80((v51 > 1), v52 + 1, 1, v34);
                v34 = isUniquelyReferenced_nonNull_native;
              }

              *(v34 + 16) = v4;
              v53 = v34 + 16 * v52;
              *(v53 + 32) = v49;
              *(v53 + 40) = v80;
            }

            while (v45 != v44);
          }
        }

        else
        {
          v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v44)
          {
            goto LABEL_66;
          }
        }

LABEL_50:

        isUniquelyReferenced_nonNull_native = sub_25297A744(v34);
        v34 = MEMORY[0x277D84F90];
        if (v35 == v70)
        {
          v34 = __dst[0];
          break;
        }
      }
    }

    v54 = sub_252C75848(v34);

    v55 = 0;
    v3 = MEMORY[0x277D84F90];
    v56 = v81;
LABEL_86:
    v57 = (a1 + 32 + 504 * v55);
    v58 = v55;
    while (1)
    {
      if (v58 >= v56)
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = memcpy(__dst, v57, 0x1F8uLL);
      v55 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_107;
      }

      memcpy(v83, v57, sizeof(v83));
      sub_2529353AC(__dst, v82);
      if (sub_252CDFDD4())
      {
        memcpy(v83, __dst, sizeof(v83));
        v59 = sub_252E09BA8(v83);
        memcpy(v83, __dst, sizeof(v83));
        v60 = sub_252E09F40(v83);
        v61 = sub_252AB2E5C(v59, v78);

        if ((v61 & 1) == 0)
        {

LABEL_95:
          v62 = swift_isUniquelyReferenced_nonNull_native();
          v84 = v3;
          if ((v62 & 1) == 0)
          {
            sub_2529AA480(0, *(v3 + 16) + 1, 1);
            v3 = v84;
          }

          v4 = *(v3 + 16);
          v63 = *(v3 + 24);
          if (v4 >= v63 >> 1)
          {
            sub_2529AA480((v63 > 1), v4 + 1, 1);
            v3 = v84;
          }

          *(v3 + 16) = v4 + 1;
          isUniquelyReferenced_nonNull_native = memcpy((v3 + 504 * v4 + 32), __dst, 0x1F8uLL);
          v56 = v81;
          if (v55 == v81)
          {
LABEL_100:

            return v3;
          }

          goto LABEL_86;
        }

        v4 = sub_252AB2E5C(v60, v54);

        if ((v4 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      isUniquelyReferenced_nonNull_native = sub_252935408(__dst);
      ++v58;
      v57 += 504;
      v56 = v81;
      if (v55 == v81)
      {
        goto LABEL_100;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252AB37C4(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37044();
}

uint64_t sub_252AB394C(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37044();
}

uint64_t sub_252AB3AB0(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37044();
}

uint64_t sub_252AB3C18(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37044();
}

uint64_t sub_252AB3D9C(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37044();
}

uint64_t sub_252AB3ED8(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37044();
}

void *sub_252AB3FEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F53F5A8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F544F30;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v11 = sub_252D2D190(201, 0x6E776F6E6B6E75, 0xE700000000000000);
  sub_252AB431C(a1, a2 & 1, v14);
  if (v11)
  {

    sub_252D2D83C(0, 0);
  }

  v12 = sub_252E375C4();
  sub_252E36A74(v12, &dword_252917000, v10, "ParseToHomeAutomationIntent", 27, 2, v9, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);

  (*(v7 + 8))(v9, v6);
  return memcpy(a3, v14, 0x1F8uLL);
}

unint64_t HomeAutomationIntent.Verb.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 7628135;
    v6 = 0x656C67676F74;
    if (v1 != 2)
    {
      v6 = 2003789939;
    }

    if (!*v0)
    {
      v5 = 7628147;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    if (v1 != 7)
    {
      v2 = 0x656E4F6863696877;
    }

    if (v1 == 6)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000011;
    if (v1 == 4)
    {
      v3 = 0x746E756F63;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

void *sub_252AB431C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252B680FC(v8);
  sub_252B63EE0(a1, v18);

  memcpy(v19, v18, sizeof(v19));
  if (sub_252956B94(v19) == 1)
  {
    (*(v7 + 16))(v10, a1, v6);
    v11 = sub_252AB4570(v10, a2 & 1, v17);
    sub_252B680FC(v11);
    memcpy(v16, v17, sizeof(v16));
    sub_252B64134(a1, v16);

    v12 = v17;
  }

  else
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D90);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_252E379F4();

    v16[0] = 0xD00000000000001ALL;
    v16[1] = 0x8000000252E78250;
    memcpy(v17, v19, sizeof(v17));
    v14 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v14);

    sub_252CC7784(v16[0], v16[1], 0, 0xD000000000000072, 0x8000000252E78270);

    v12 = v18;
  }

  return memcpy(a3, v12, 0x1F8uLL);
}

void *sub_252AB4570@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v48 = a2;
  v53 = a3;
  v4 = sub_252E34134();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34284();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_252E341A4();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HomeAutomationNLV3Intent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E34164();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E358D4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v58[0] = MEMORY[0x277D84F90];
  LOWORD(v58[1]) = 771;
  BYTE2(v58[1]) = 1;
  v58[2] = 0;
  LOWORD(v58[3]) = 770;
  BYTE2(v58[3]) = 4;
  v58[4] = MEMORY[0x277D84F90];
  LOBYTE(v58[5]) = 4;
  v58[6] = MEMORY[0x277D84F90];
  v58[7] = MEMORY[0x277D84F90];
  LOBYTE(v58[8]) = 4;
  v58[9] = MEMORY[0x277D84F90];
  v58[10] = MEMORY[0x277D84F90];
  v58[11] = MEMORY[0x277D84F90];
  v58[12] = MEMORY[0x277D84F90];
  v58[13] = MEMORY[0x277D84F90];
  v58[14] = MEMORY[0x277D84F90];
  v58[15] = MEMORY[0x277D84F90];
  v58[16] = MEMORY[0x277D84F90];
  v58[17] = MEMORY[0x277D84F90];
  v58[18] = MEMORY[0x277D84F90];
  v58[19] = MEMORY[0x277D84F90];
  v58[20] = MEMORY[0x277D84F90];
  v58[21] = MEMORY[0x277D84F90];
  v58[22] = MEMORY[0x277D84F90];
  v58[23] = MEMORY[0x277D84F90];
  v58[24] = MEMORY[0x277D84F90];
  v58[25] = MEMORY[0x277D84F90];
  LOWORD(v58[26]) = 521;
  v58[27] = MEMORY[0x277D84F90];
  v58[28] = MEMORY[0x277D84F90];
  LOBYTE(v58[29]) = 1;
  v58[31] = 0;
  v58[30] = 0;
  v58[32] = MEMORY[0x277D84F90];
  memset(&v58[33], 0, 24);
  LOWORD(v58[36]) = 256;
  v58[37] = 0;
  v58[38] = 0;
  LOBYTE(v58[39]) = 2;
  v58[40] = 0;
  v58[41] = MEMORY[0x277D84F90];
  v58[42] = MEMORY[0x277D84F90];
  v58[43] = MEMORY[0x277D84F90];
  v58[44] = MEMORY[0x277D84F90];
  v58[45] = MEMORY[0x277D84F90];
  v58[46] = MEMORY[0x277D84F90];
  v58[47] = MEMORY[0x277D84F90];
  LOBYTE(v58[48]) = 22;
  *(&v58[48] + 1) = 0;
  BYTE5(v58[48]) = 0;
  v58[49] = MEMORY[0x277D84F90];
  v58[50] = MEMORY[0x277D84F90];
  v58[51] = MEMORY[0x277D84F90];
  v58[52] = MEMORY[0x277D84F90];
  v58[53] = MEMORY[0x277D84F90];
  v58[54] = MEMORY[0x277D84F90];
  v58[55] = MEMORY[0x277D84F90];
  v58[56] = MEMORY[0x277D84F90];
  v58[57] = MEMORY[0x277D84F90];
  v58[58] = MEMORY[0x277D84F90];
  v58[59] = MEMORY[0x277D84F90];
  v58[60] = MEMORY[0x277D84F90];
  v58[61] = MEMORY[0x277D84FA0];
  v58[62] = 0;
  v23 = *(v13 + 16);
  v52 = a1;
  v23(v15, a1, v12);
  v24 = (*(v13 + 88))(v15, v12);
  if (v24 == *MEMORY[0x277D5C128])
  {
    (*(v13 + 96))(v15, v12);
LABEL_5:
    v25 = *(v17 + 32);
    v25(v22, v15, v16);
    v25(v20, v22, v16);
    HomeAutomationNLV3Intent.init(_:)(v20, v11);
    sub_25295B778(v11);
    sub_25294E8F4(v11);
    goto LABEL_6;
  }

  if (v24 == *MEMORY[0x277D5C158])
  {
    (*(v13 + 96))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

    goto LABEL_5;
  }

  if (v24 == *MEMORY[0x277D5C150])
  {
    (*(v13 + 96))(v15, v12);
    v31 = v49;
    v30 = v50;
    v32 = v51;
    (*(v50 + 32))(v49, v15, v51);
    sub_252BC38D8(v31);
    (*(v30 + 8))(v31, v32);
  }

  else
  {
    if (v24 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      __swift_project_value_buffer(v39, qword_27F544D90);
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E782F0);
      v40 = v52;
      sub_252E37AE4();
      sub_252CC4050(v57[0], v57[1], 0xD000000000000072, 0x8000000252E78270, 0xD00000000000001DLL, 0x8000000252E78310, 149);

      v41 = *(v13 + 8);
      v41(v40, v12);
      v41(v15, v12);
      goto LABEL_21;
    }

    (*(v13 + 96))(v15, v12);
    v36 = v42;
    v35 = v43;
    v37 = v45;
    (*(v43 + 32))(v42, v15, v45);
    v38 = v44;
    sub_252E34184();
    sub_252CE341C(v38, v48 & 1);
    (*(v46 + 8))(v38, v47);
    (*(v35 + 8))(v36, v37);
  }

LABEL_6:
  memcpy(v57, v58, 0x182uLL);
  v26 = BYTE2(v58[48]);
  BYTE2(v57[48]) = BYTE2(v58[48]);
  *(&v57[56] + 3) = *(&v58[56] + 3);
  *(&v57[58] + 3) = *(&v58[58] + 3);
  *(&v57[60] + 3) = *(&v58[60] + 3);
  *(&v57[48] + 3) = *(&v58[48] + 3);
  *(&v57[50] + 3) = *(&v58[50] + 3);
  *(&v57[52] + 3) = *(&v58[52] + 3);
  *(&v57[54] + 3) = *(&v58[54] + 3);
  v57[62] = v58[62];
  if ((sub_252AB5058() & 1) != 0 && (v26 & 1) == 0)
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544D90);
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E78350);
    v34 = v52;
    sub_252E37AE4();
    sub_252CC4050(v57[0], v57[1], 0xD000000000000072, 0x8000000252E78270, 0xD00000000000001DLL, 0x8000000252E78310, 154);

    (*(v13 + 8))(v34, v12);
LABEL_21:
    memcpy(v56, v58, sizeof(v56));
    sub_252935408(v56);
    sub_25293DEE0(v57);
    return memcpy(v53, v57, 0x1F8uLL);
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_27F544D90);
  v57[0] = 0;
  v57[1] = 0xE000000000000000;
  sub_252E379F4();

  v56[0] = 0xD000000000000013;
  v56[1] = 0x8000000252E78330;
  memcpy(v57, v58, sizeof(v57));
  v28 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v28);

  sub_252CC7784(v56[0], v56[1], 0, 0xD000000000000072, 0x8000000252E78270);

  (*(v13 + 8))(v52, v12);
  memcpy(v55, v58, sizeof(v55));
  memcpy(v56, v58, sizeof(v56));
  GEOLocationCoordinate2DMake();
  memcpy(v53, v56, 0x1F8uLL);
  memcpy(v57, v58, sizeof(v57));
  sub_2529353AC(v55, &v54);
  return sub_252935408(v57);
}

uint64_t sub_252AB5058()
{
  v1 = *v0;
  *&__dst[184] = *(v0 + 23);
  *&__dst[200] = *(v0 + 25);
  *&__dst[216] = *(v0 + 27);
  *&__dst[232] = *(v0 + 29);
  v2 = *(v0 + 15);
  *&__dst[136] = *(v0 + 17);
  *&__dst[152] = *(v0 + 19);
  *&__dst[168] = *(v0 + 21);
  v3 = *(v0 + 9);
  *&__dst[56] = *(v0 + 7);
  *&__dst[72] = v3;
  *&__dst[88] = *(v0 + 11);
  *&__dst[104] = *(v0 + 13);
  *&__dst[120] = v2;
  v4 = *(v0 + 3);
  *&__dst[8] = *(v0 + 1);
  *&__dst[24] = v4;
  *&__dst[40] = *(v0 + 5);
  v5 = v0[31];
  *&__dst[256] = *(v0 + 16);
  v6 = v0[34];
  v7 = *(v0 + 57);
  *&__dst[440] = *(v0 + 55);
  *&__dst[456] = v7;
  v8 = *(v0 + 61);
  *&__dst[472] = *(v0 + 59);
  *&__dst[488] = v8;
  v9 = *(v0 + 49);
  *&__dst[376] = *(v0 + 47);
  *&__dst[392] = v9;
  v10 = *(v0 + 53);
  *&__dst[408] = *(v0 + 51);
  *&__dst[424] = v10;
  v11 = *(v0 + 41);
  *&__dst[312] = *(v0 + 39);
  *&__dst[328] = v11;
  v12 = *(v0 + 45);
  *&__dst[344] = *(v0 + 43);
  *&__dst[360] = v12;
  v13 = *(v0 + 37);
  *&__dst[280] = *(v0 + 35);
  *&__dst[296] = v13;
  *__dst = v1;
  *&__dst[248] = v5;
  *&__dst[272] = v6;
  result = sub_252AB51DC();
  if ((result & 1) == 0 || v5 | v6)
  {
    LOBYTE(result) = 0;
    return result & 1;
  }

  v15 = *(v1 + 16);
  if (!v15)
  {
    LOBYTE(result) = 1;
    return result & 1;
  }

  v16 = 0;
  v17 = (v1 + 32);
  v18 = v15 - 1;
  while (v16 < *(v1 + 16))
  {
    memcpy(__dst, v17, sizeof(__dst));
    result = sub_252AB5058();
    if (result)
    {
      v17 += 504;
      if (v18 != v16++)
      {
        continue;
      }
    }

    return result & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_252AB51DC()
{
  result = 0;
  if (*(v0 + 8) == 3 && *(v0 + 9) == 3 && !v0[2])
  {
    if (*(v0 + 10))
    {
      if (*(v0 + 24) == 2 && *(v0 + 25) == 3 && *(v0 + 26) == 4)
      {
        result = 0;
        if (!*(v0[4] + 16) && *(v0 + 40) == 4)
        {
          if (*(v0[6] + 16))
          {
            return 0;
          }

          result = 0;
          if (!*(v0[7] + 16) && *(v0 + 64) == 4)
          {
            if (*(v0[9] + 16) || *(v0[10] + 16) || *(v0[11] + 16) || *(v0[13] + 16) || *(v0[14] + 16) || *(v0[15] + 16) || *(v0[16] + 16) || *(v0[17] + 16) || *(v0[18] + 16) || *(v0[19] + 16) || *(v0[20] + 16) || *(v0[21] + 16) || *(v0[22] + 16) || *(v0[23] + 16) || *(v0[24] + 16))
            {
              return 0;
            }

            result = 0;
            if (!*(v0[25] + 16) && *(v0 + 208) == 9 && *(v0 + 209) == 2)
            {
              if (*(v0[27] + 16) || ((*(v0[28] + 16) == 0) & v0[29]) != 1)
              {
                return 0;
              }

              result = 0;
              if (((*(v0[32] + 16) == 0) & *(v0 + 289)) == 1 && *(v0 + 384) == 22)
              {
                if (*(v0[12] + 16) || *(v0[44] + 16) || *(v0[42] + 16) || *(v0[45] + 16) || *(v0[43] + 16) || *(v0[41] + 16) || *(v0[47] + 16))
                {
                  return 0;
                }

                v2 = *v0;
                v3 = v0[38];
                v4 = v0[49];
                v5 = v0[62];
                if (v4 >> 62)
                {
                  goto LABEL_53;
                }

                if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  return 0;
                }

                while (1)
                {
                  v6 = *(v2 + 16);
                  if (!v6)
                  {
                    break;
                  }

                  v7 = 0;
                  v8 = (v2 + 32);
                  while (v7 < *(v2 + 16))
                  {
                    memcpy(__dst, v8, sizeof(__dst));
                    if (!sub_252AB51DC())
                    {
                      return 0;
                    }

                    ++v7;
                    v8 += 504;
                    if (v6 == v7)
                    {
                      return (v5 | v3) == 0;
                    }
                  }

                  __break(1u);
LABEL_53:
                  if (sub_252E378C4())
                  {
                    return 0;
                  }
                }

                return (v5 | v3) == 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_252AB54DC()
{
  switch(*v0)
  {
    case 1:
      sub_252E35474();
      swift_allocObject();
      result = sub_252E35464();
      break;
    case 2:
      sub_252E35404();
      swift_allocObject();
      result = sub_252E353F4();
      break;
    case 3:
      sub_252E35224();
      swift_allocObject();
      result = sub_252E35214();
      break;
    case 4:
      sub_252E354E4();
      swift_allocObject();
      result = sub_252E354D4();
      break;
    case 5:
      sub_252E35594();
      swift_allocObject();
      result = sub_252E35584();
      break;
    case 6:
      sub_252E35574();
      swift_allocObject();
      result = sub_252E35564();
      break;
    case 7:
      sub_252E356C4();
      swift_allocObject();
      result = sub_252E356B4();
      break;
    case 8:
      sub_252E357B4();
      swift_allocObject();
      result = sub_252E357A4();
      break;
    case 9:
      sub_252E35794();
      swift_allocObject();
      result = sub_252E35784();
      break;
    case 0xA:
      sub_252E35504();
      swift_allocObject();
      result = sub_252E354F4();
      break;
    case 0xB:
      sub_252E35684();
      swift_allocObject();
      result = sub_252E35674();
      break;
    case 0xC:
      sub_252E354C4();
      swift_allocObject();
      result = sub_252E354B4();
      break;
    case 0xD:
      sub_252E353E4();
      swift_allocObject();
      result = sub_252E353D4();
      break;
    case 0xE:
      sub_252E35774();
      swift_allocObject();
      result = sub_252E35764();
      break;
    case 0xF:
      sub_252E356A4();
      swift_allocObject();
      result = sub_252E35694();
      break;
    case 0x10:
      sub_252E355B4();
      swift_allocObject();
      result = sub_252E355A4();
      break;
    case 0x11:
      sub_252E35664();
      swift_allocObject();
      result = sub_252E35654();
      break;
    case 0x12:
      sub_252E35204();
      swift_allocObject();
      result = sub_252E351F4();
      break;
    case 0x13:
      sub_252E35334();
      swift_allocObject();
      result = sub_252E35324();
      break;
    case 0x14:
      sub_252E35144();
      swift_allocObject();
      result = sub_252E35134();
      break;
    case 0x15:
      sub_252E35644();
      swift_allocObject();
      result = sub_252E35634();
      break;
    default:
      sub_252E353C4();
      swift_allocObject();
      result = sub_252E353B4();
      break;
  }

  return result;
}

uint64_t HomeAutomationIntent.description.getter()
{
  v1 = *(v0 + 29);
  v2 = *(v0 + 27);
  v3 = *(v0 + 26);
  v471 = *(v0 + 28);
  v472 = v1;
  v4 = *(v0 + 25);
  v469 = *(v0 + 26);
  v470 = v2;
  v468 = v4;
  v461 = v2;
  v462 = v471;
  v463 = *(v0 + 29);
  v398 = *v0;
  v376 = *(v0 + 8);
  v377 = *(v0 + 9);
  v481 = *(v0 + 10);
  *(&v400 + 11) = *(v0 + 11);
  HIBYTE(v400) = *(v0 + 15);
  v378 = v0[2];
  v379 = *(v0 + 24);
  v380 = *(v0 + 25);
  v381 = *(v0 + 26);
  *(&v401 + 11) = *(v0 + 27);
  HIBYTE(v401) = *(v0 + 31);
  v382 = v0[4];
  v383 = *(v0 + 40);
  HIDWORD(v402) = *(v0 + 11);
  *(&v402 + 9) = *(v0 + 41);
  v384 = *(v0 + 3);
  v385 = *(v0 + 64);
  *(&v404 + 1) = *(v0 + 65);
  DWORD1(v404) = *(v0 + 17);
  v386 = v0[9];
  v387 = v0[10];
  v388 = v0[11];
  v389 = v0[13];
  v390 = v0[14];
  v391 = v0[15];
  v395 = v0[17];
  v396 = v0[12];
  v375 = v0[18];
  v394 = v0[19];
  v392 = v0[16];
  v393 = v0[20];
  v423 = *(v0 + 210);
  v424 = *(v0 + 107);
  v480 = *(v0 + 232);
  *v428 = *(v0 + 233);
  *&v428[3] = *(v0 + 59);
  v437 = *(v0 + 290);
  v438 = *(v0 + 147);
  *v442 = *(v0 + 313);
  *&v442[3] = *(v0 + 79);
  v473 = v0[60];
  *&v467 = 0xD000000000000017;
  *(&v467 + 1) = 0x8000000252E77CE0;
  v479 = *(v0 + 289);
  BYTE10(v400) = v481;
  v5 = v0[46];
  v397 = v0[47];
  v427 = v480;
  v478 = *(v0 + 385);
  v436 = v479;
  v477 = *(v0 + 386);
  v449 = v5;
  v476 = *(v0 + 387);
  v452 = v478;
  v475 = *(v0 + 388);
  v453 = v477;
  v474 = *(v0 + 389);
  v454 = v476;
  LOWORD(v5) = *(v0 + 195);
  v455 = v475;
  v6 = v0[49];
  v456 = v474;
  v457 = v5;
  v7 = v0[60];
  v8 = v0[61];
  v373 = v6;
  v458 = v6;
  v464 = v7;
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[25];
  v14 = *(v0 + 208);
  v15 = *(v0 + 209);
  v16 = v0[27];
  v17 = v0[28];
  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[32];
  v21 = v0[33];
  v22 = v0[34];
  v23 = v0[35];
  v24 = *(v0 + 288);
  v26 = v0[37];
  v25 = v0[38];
  LODWORD(v6) = *(v0 + 312);
  v27 = v0[40];
  v28 = v0[41];
  v29 = v0[42];
  v30 = v0[43];
  v31 = v0[44];
  v32 = v0[45];
  v33 = *(v0 + 384);
  v34 = v0[62];
  *&v400 = v398;
  BYTE8(v400) = v376;
  BYTE9(v400) = v377;
  *&v401 = v378;
  BYTE8(v401) = v379;
  BYTE9(v401) = v380;
  BYTE10(v401) = v381;
  *&v402 = v382;
  BYTE8(v402) = v383;
  v403 = v384;
  LOBYTE(v404) = v385;
  *(&v404 + 1) = v386;
  v405 = v387;
  v406 = v388;
  v407 = v396;
  v408 = v389;
  v409 = v390;
  v410 = v391;
  v411 = v392;
  v412 = v395;
  v413 = v375;
  v414 = v394;
  v415 = v393;
  v416 = v10;
  v355 = v19;
  v356 = v9;
  v417 = v9;
  v418 = v11;
  v419 = v12;
  v420 = v13;
  v360 = v14;
  v421 = v14;
  v359 = v15;
  v422 = v15;
  v357 = v20;
  v358 = v16;
  v425 = v16;
  v361 = v17;
  v362 = v22;
  v426 = v17;
  v429 = v19;
  v363 = v18;
  v364 = v26;
  v430 = v18;
  v431 = v20;
  v353 = v23;
  v354 = v21;
  v432 = v21;
  v433 = v22;
  v434 = v23;
  v352 = v24;
  v435 = v24;
  v439 = v26;
  v365 = v25;
  v440 = v25;
  v371 = v6;
  v441 = v6;
  v372 = v27;
  v443 = v27;
  v369 = v30;
  v370 = v28;
  v444 = v28;
  v366 = v31;
  v367 = v29;
  v445 = v29;
  v446 = v30;
  v447 = v31;
  v368 = v32;
  v448 = v32;
  v450 = v397;
  v451 = v33;
  v459 = v4;
  v460 = v3;
  v374 = v8;
  v465 = v8;
  v466 = v34;
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v399);
  *&v400 = sub_252E37F14();
  v35 = sub_252E37D94();
  MEMORY[0x2530AD570](v35);

  MEMORY[0x2530AD570](0xA7B203A3ELL, 0xE500000000000000);
  v36 = v467;
  v37 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v10 + 16))
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000014;
    *(&v399[0] + 1) = 0x8000000252E77D00;
    v38 = MEMORY[0x2530AD730](v10, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v38);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v40 = *(&v399[0] + 1);
    v39 = *&v399[0];
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v39, v40);

  v41 = v400;
  v400 = v36;

  MEMORY[0x2530AD570](v41, *(&v41 + 1));

  v42 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v375 + 16))
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000014;
    *(&v399[0] + 1) = 0x8000000252E77D20;
    v43 = MEMORY[0x2530AD730](v375, &type metadata for AccessoryTypeSemantic);
    MEMORY[0x2530AD570](v43);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v37 = *(&v399[0] + 1);
    v44 = *&v399[0];
  }

  else
  {
    v44 = 0;
  }

  MEMORY[0x2530AD570](v44, v37);

  v46 = *(&v400 + 1);
  v45 = v400;
  v400 = v42;

  MEMORY[0x2530AD570](v45, v46);

  v47 = v400;
  v48 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v376 == 3)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD000000000000019;
    *(&v399[0] + 1) = 0x8000000252E781E0;
    LOBYTE(v467) = v376;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B68, &qword_252E48178);
    v51 = sub_252E36F94();
    MEMORY[0x2530AD570](v51);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v50 = *(&v399[0] + 1);
    v49 = *&v399[0];
  }

  MEMORY[0x2530AD570](v49, v50);

  v52 = v400;
  v400 = v47;

  MEMORY[0x2530AD570](v52, *(&v52 + 1));

  v53 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v377 == 3)
  {
    v54 = 0;
  }

  else
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E781C0;
    LOBYTE(v467) = v377;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v55 = sub_252E36F94();
    MEMORY[0x2530AD570](v55);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v48 = *(&v399[0] + 1);
    v54 = *&v399[0];
  }

  MEMORY[0x2530AD570](v54, v48);

  v56 = v400;
  v400 = v53;

  MEMORY[0x2530AD570](v56, *(&v56 + 1));

  v57 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v481)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E781A0;
    LOBYTE(v467) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B60, &qword_252E48168);
    v60 = sub_252E36F94();
    MEMORY[0x2530AD570](v60);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v59 = *(&v399[0] + 1);
    v58 = *&v399[0];
  }

  MEMORY[0x2530AD570](v58, v59);

  v61 = v400;
  v400 = v57;

  MEMORY[0x2530AD570](v61, *(&v61 + 1));

  v62 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v378)
  {
    strcpy(v399, "    dateTime: ");
    HIBYTE(v399[0]) = -18;
    *&v467 = v378;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B58, &qword_252E48160);
    v63 = sub_252E36F94();
    MEMORY[0x2530AD570](v63);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
  }

  MEMORY[0x2530AD570]();

  v65 = *(&v400 + 1);
  v64 = v400;
  v400 = v62;

  MEMORY[0x2530AD570](v64, v65);

  v66 = v400;
  v67 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v379 == 2)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    delta: ");
    HIDWORD(v399[0]) = -352321536;
    LOBYTE(v467) = v379;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B50, &qword_252E48158);
    v70 = sub_252E36F94();
    MEMORY[0x2530AD570](v70);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v69 = *(&v399[0] + 1);
    v68 = *&v399[0];
  }

  MEMORY[0x2530AD570](v68, v69);

  v71 = v400;
  v400 = v66;

  MEMORY[0x2530AD570](v71, *(&v71 + 1));

  v72 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v380 == 3)
  {
    v73 = 0;
  }

  else
  {
    *&v399[0] = 0xD000000000000015;
    *(&v399[0] + 1) = 0x8000000252E78180;
    LOBYTE(v467) = v380;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B48, &qword_252E48150);
    v74 = sub_252E36F94();
    MEMORY[0x2530AD570](v74);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v67 = *(&v399[0] + 1);
    v73 = *&v399[0];
  }

  MEMORY[0x2530AD570](v73, v67);

  v76 = *(&v400 + 1);
  v75 = v400;
  v400 = v72;

  MEMORY[0x2530AD570](v75, v76);

  v77 = v400;
  v78 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v381 == 4)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0x746C656420202020;
    *(&v399[0] + 1) = 0xEF203A656C6F5261;
    LOBYTE(v467) = v381;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B40, &qword_252E48148);
    v81 = sub_252E36F94();
    MEMORY[0x2530AD570](v81);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v80 = *(&v399[0] + 1);
    v79 = *&v399[0];
  }

  MEMORY[0x2530AD570](v79, v80);

  v82 = v400;
  v400 = v77;

  MEMORY[0x2530AD570](v82, *(&v82 + 1));

  v83 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v382 + 16))
  {
    *&v399[0] = 0xD000000000000017;
    *(&v399[0] + 1) = 0x8000000252E77D40;
    v84 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v84);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v78 = *(&v399[0] + 1);
    v85 = *&v399[0];
  }

  else
  {
    v85 = 0;
  }

  MEMORY[0x2530AD570](v85, v78);

  v87 = *(&v400 + 1);
  v86 = v400;
  v400 = v83;

  MEMORY[0x2530AD570](v86, v87);

  v88 = v400;
  v89 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v383 == 4)
  {
    v90 = 0;
    v91 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    event: ");
    HIDWORD(v399[0]) = -352321536;
    LOBYTE(v467) = v383;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B38, &qword_252E48140);
    v92 = sub_252E36F94();
    MEMORY[0x2530AD570](v92);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v91 = *(&v399[0] + 1);
    v90 = *&v399[0];
  }

  MEMORY[0x2530AD570](v90, v91);

  v93 = v400;
  v400 = v88;

  MEMORY[0x2530AD570](v93, *(&v93 + 1));

  v94 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v356 + 16))
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E77D60;
    v95 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v95);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v89 = *(&v399[0] + 1);
    v96 = *&v399[0];
  }

  else
  {
    v96 = 0;
  }

  MEMORY[0x2530AD570](v96, v89);

  v98 = *(&v400 + 1);
  v97 = v400;
  v400 = v94;

  MEMORY[0x2530AD570](v97, v98);

  v99 = v400;
  v100 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v384 + 16))
  {
    strcpy(v399, "    homes: ");
    HIDWORD(v399[0]) = -352321536;
    v101 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v101);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v103 = *(&v399[0] + 1);
    v102 = *&v399[0];
  }

  else
  {
    v102 = 0;
    v103 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v102, v103);

  v104 = v400;
  v400 = v99;

  MEMORY[0x2530AD570](v104, *(&v104 + 1));

  v105 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(*(&v384 + 1) + 16))
  {
    strcpy(v399, "    hues: ");
    BYTE11(v399[0]) = 0;
    HIDWORD(v399[0]) = -369098752;
    v106 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v106);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v100 = *(&v399[0] + 1);
    v107 = *&v399[0];
  }

  else
  {
    v107 = 0;
  }

  MEMORY[0x2530AD570](v107, v100);

  v109 = *(&v400 + 1);
  v108 = v400;
  v400 = v105;

  MEMORY[0x2530AD570](v108, v109);

  v110 = v400;
  v111 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v385 == 4)
  {
    v112 = 0;
    v113 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    limit: ");
    HIDWORD(v399[0]) = -352321536;
    LOBYTE(v467) = v385;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B30, &qword_252E48138);
    v114 = sub_252E36F94();
    MEMORY[0x2530AD570](v114);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v113 = *(&v399[0] + 1);
    v112 = *&v399[0];
  }

  MEMORY[0x2530AD570](v112, v113);

  v115 = v400;
  v400 = v110;

  MEMORY[0x2530AD570](v115, *(&v115 + 1));

  v116 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v386 + 16))
  {
    strcpy(v399, "    misc: ");
    BYTE11(v399[0]) = 0;
    HIDWORD(v399[0]) = -369098752;
    v117 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v117);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v111 = *(&v399[0] + 1);
    v118 = *&v399[0];
  }

  else
  {
    v118 = 0;
  }

  MEMORY[0x2530AD570](v118, v111);

  v120 = *(&v400 + 1);
  v119 = v400;
  v400 = v116;

  MEMORY[0x2530AD570](v119, v120);

  v121 = v400;
  v122 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v387 + 16))
  {
    strcpy(v399, "    nouns: ");
    HIDWORD(v399[0]) = -352321536;
    v123 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v123);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v125 = *(&v399[0] + 1);
    v124 = *&v399[0];
  }

  else
  {
    v124 = 0;
    v125 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v124, v125);

  v126 = v400;
  v400 = v121;

  MEMORY[0x2530AD570](v126, *(&v126 + 1));

  v127 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v357 + 16))
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E77D80;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
    v129 = MEMORY[0x2530AD730](v357, v128);
    MEMORY[0x2530AD570](v129);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v122 = *(&v399[0] + 1);
    v130 = *&v399[0];
  }

  else
  {
    v130 = 0;
  }

  MEMORY[0x2530AD570](v130, v122);

  v132 = *(&v400 + 1);
  v131 = v400;
  v400 = v127;

  MEMORY[0x2530AD570](v131, v132);

  v133 = v400;
  v134 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v358 + 16))
  {
    strcpy(v399, "    phrases: ");
    HIWORD(v399[0]) = -4864;
    v135 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v135);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v137 = *(&v399[0] + 1);
    v136 = *&v399[0];
  }

  else
  {
    v136 = 0;
    v137 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v136, v137);

  v138 = v400;
  v400 = v133;

  MEMORY[0x2530AD570](v138, *(&v138 + 1));

  v139 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v388 + 16))
  {
    *&v399[0] = 0xD000000000000010;
    *(&v399[0] + 1) = 0x8000000252E77DA0;
    v140 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v140);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v134 = *(&v399[0] + 1);
    v141 = *&v399[0];
  }

  else
  {
    v141 = 0;
  }

  MEMORY[0x2530AD570](v141, v134);

  v143 = *(&v400 + 1);
  v142 = v400;
  v400 = v139;

  MEMORY[0x2530AD570](v142, v143);

  v144 = v400;
  v145 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v359 == 2)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E78160;
    LOBYTE(v467) = v359;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B28, &qword_252E48130);
    v148 = sub_252E36F94();
    MEMORY[0x2530AD570](v148);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v147 = *(&v399[0] + 1);
    v146 = *&v399[0];
  }

  MEMORY[0x2530AD570](v146, v147);

  v149 = v400;
  v400 = v144;

  MEMORY[0x2530AD570](v149, *(&v149 + 1));

  v150 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v479)
  {
    v151 = 0;
  }

  else
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E78140;
    *&v467 = v353;
    WORD4(v467) = v352;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B20, &qword_252E48128);
    v152 = sub_252E36F94();
    MEMORY[0x2530AD570](v152);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v145 = *(&v399[0] + 1);
    v151 = *&v399[0];
  }

  MEMORY[0x2530AD570](v151, v145);

  v154 = *(&v400 + 1);
  v153 = v400;
  v400 = v150;

  MEMORY[0x2530AD570](v153, v154);

  v155 = v400;
  v156 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v389 + 16))
  {
    strcpy(v399, "    rooms: ");
    HIDWORD(v399[0]) = -352321536;
    v157 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v157);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v159 = *(&v399[0] + 1);
    v158 = *&v399[0];
  }

  else
  {
    v158 = 0;
    v159 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v158, v159);

  v160 = v400;
  v400 = v155;

  MEMORY[0x2530AD570](v160, *(&v160 + 1));

  v161 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v390 + 16))
  {
    *&v399[0] = 0xD000000000000011;
    *(&v399[0] + 1) = 0x8000000252E77DC0;
    v162 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v162);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v156 = *(&v399[0] + 1);
    v163 = *&v399[0];
  }

  else
  {
    v163 = 0;
  }

  MEMORY[0x2530AD570](v163, v156);

  v165 = *(&v400 + 1);
  v164 = v400;
  v400 = v161;

  MEMORY[0x2530AD570](v164, v165);

  v166 = v400;
  v167 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v391 + 16))
  {
    *&v399[0] = 0xD000000000000010;
    *(&v399[0] + 1) = 0x8000000252E77DE0;
    v168 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v168);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v170 = *(&v399[0] + 1);
    v169 = *&v399[0];
  }

  else
  {
    v169 = 0;
    v170 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v169, v170);

  v171 = v400;
  v400 = v166;

  MEMORY[0x2530AD570](v171, *(&v171 + 1));

  v172 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v392 + 16))
  {
    strcpy(v399, "    scenes: ");
    BYTE13(v399[0]) = 0;
    HIWORD(v399[0]) = -5120;
    v173 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v173);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v167 = *(&v399[0] + 1);
    v174 = *&v399[0];
  }

  else
  {
    v174 = 0;
  }

  MEMORY[0x2530AD570](v174, v167);

  v176 = *(&v400 + 1);
  v175 = v400;
  v400 = v172;

  MEMORY[0x2530AD570](v175, v176);

  v177 = v400;
  v178 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v393 + 16))
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E77E00;
    v179 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v179);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v181 = *(&v399[0] + 1);
    v180 = *&v399[0];
  }

  else
  {
    v180 = 0;
    v181 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v180, v181);

  v182 = v400;
  v400 = v177;

  MEMORY[0x2530AD570](v182, *(&v182 + 1));

  v183 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v394 + 16))
  {
    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E77E20;
    v184 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v184);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v178 = *(&v399[0] + 1);
    v185 = *&v399[0];
  }

  else
  {
    v185 = 0;
  }

  MEMORY[0x2530AD570](v185, v178);

  v187 = *(&v400 + 1);
  v186 = v400;
  v400 = v183;

  MEMORY[0x2530AD570](v186, v187);

  v188 = v400;
  v189 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v395 + 16))
  {
    strcpy(v399, "    services: ");
    HIBYTE(v399[0]) = -18;
    v190 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v190);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v192 = *(&v399[0] + 1);
    v191 = *&v399[0];
  }

  else
  {
    v191 = 0;
    v192 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v191, v192);

  v193 = v400;
  v400 = v188;

  MEMORY[0x2530AD570](v193, *(&v193 + 1));

  v194 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v12 + 16))
  {
    strcpy(v399, "    states: ");
    BYTE13(v399[0]) = 0;
    HIWORD(v399[0]) = -5120;
    v195 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v195);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v189 = *(&v399[0] + 1);
    v196 = *&v399[0];
  }

  else
  {
    v196 = 0;
  }

  MEMORY[0x2530AD570](v196, v189);

  v198 = *(&v400 + 1);
  v197 = v400;
  v400 = v194;

  MEMORY[0x2530AD570](v197, v198);

  v199 = v400;
  v200 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v396 + 16))
  {
    strcpy(v399, "    tagSets: ");
    HIWORD(v399[0]) = -4864;
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540990, &qword_252E3DF50);
    v202 = MEMORY[0x2530AD730](v396, v201);
    MEMORY[0x2530AD570](v202);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v204 = *(&v399[0] + 1);
    v203 = *&v399[0];
  }

  else
  {
    v203 = 0;
    v204 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v203, v204);

  v205 = v400;
  v400 = v199;

  MEMORY[0x2530AD570](v205, *(&v205 + 1));

  v206 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v11 + 16))
  {
    *&v399[0] = 0xD000000000000010;
    *(&v399[0] + 1) = 0x8000000252E77E40;
    v207 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v207);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v200 = *(&v399[0] + 1);
    v208 = *&v399[0];
  }

  else
  {
    v208 = 0;
  }

  MEMORY[0x2530AD570](v208, v200);

  v210 = *(&v400 + 1);
  v209 = v400;
  v400 = v206;

  MEMORY[0x2530AD570](v209, v210);

  v211 = v400;
  v212 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v480)
  {
    v213 = 0;
    v214 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    trigger: ");
    HIWORD(v399[0]) = -4864;
    LOBYTE(v467) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B18, &qword_252E48120);
    v215 = sub_252E36F94();
    MEMORY[0x2530AD570](v215);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v214 = *(&v399[0] + 1);
    v213 = *&v399[0];
  }

  MEMORY[0x2530AD570](v213, v214);

  v216 = v400;
  v400 = v211;

  MEMORY[0x2530AD570](v216, *(&v216 + 1));

  v217 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v13 + 16))
  {
    strcpy(v399, "    units: ");
    HIDWORD(v399[0]) = -352321536;
    v218 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v218);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v212 = *(&v399[0] + 1);
    v219 = *&v399[0];
  }

  else
  {
    v219 = 0;
  }

  MEMORY[0x2530AD570](v219, v212);

  v221 = *(&v400 + 1);
  v220 = v400;
  v400 = v217;

  MEMORY[0x2530AD570](v220, v221);

  v222 = v400;
  v223 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v360 == 9)
  {
    v224 = 0;
    v225 = 0xE000000000000000;
  }

  else
  {
    strcpy(v399, "    verb: ");
    BYTE11(v399[0]) = 0;
    HIDWORD(v399[0]) = -369098752;
    LOBYTE(v467) = v360;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B10, &qword_252E48118);
    v226 = sub_252E36F94();
    MEMORY[0x2530AD570](v226);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v225 = *(&v399[0] + 1);
    v224 = *&v399[0];
  }

  MEMORY[0x2530AD570](v224, v225);

  v227 = v400;
  v400 = v222;

  MEMORY[0x2530AD570](v227, *(&v227 + 1));

  v228 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v361 + 16))
  {
    strcpy(v399, "    zones: ");
    HIDWORD(v399[0]) = -352321536;
    v229 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v229);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v223 = *(&v399[0] + 1);
    v230 = *&v399[0];
  }

  else
  {
    v230 = 0;
  }

  MEMORY[0x2530AD570](v230, v223);

  v231 = v400;
  v400 = v228;

  MEMORY[0x2530AD570](v231, *(&v231 + 1));

  v232 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  v233 = v362;
  if (v362)
  {
    *&v399[0] = 0xD000000000000013;
    *(&v399[0] + 1) = 0x8000000252E78120;
    *&v467 = v354;
    *(&v467 + 1) = v362;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v234 = sub_252E36F94();
    MEMORY[0x2530AD570](v234);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v235 = *(&v399[0] + 1);
    v233 = *&v399[0];
  }

  else
  {
    v235 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v233, v235);

  v236 = v400;
  v400 = v232;

  MEMORY[0x2530AD570](v236, *(&v236 + 1));

  v237 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v363)
  {
    *&v399[0] = 0xD00000000000001CLL;
    *(&v399[0] + 1) = 0x8000000252E78100;
    *&v467 = v355;
    *(&v467 + 1) = v363;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v238 = sub_252E36F94();
    MEMORY[0x2530AD570](v238);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
  }

  MEMORY[0x2530AD570]();

  v240 = *(&v400 + 1);
  v239 = v400;
  v400 = v237;

  MEMORY[0x2530AD570](v239, v240);

  v241 = v400;
  v242 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v364)
  {
    if (v364 >> 62)
    {
      v243 = sub_252E378C4();
      if (v243)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v243 = *((v364 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v243)
      {
LABEL_116:
        *&v399[0] = 0xD000000000000020;
        *(&v399[0] + 1) = 0x8000000252E780D0;
        *&v467 = v364;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
        v244 = sub_252E36F94();
        MEMORY[0x2530AD570](v244);

        MEMORY[0x2530AD570](2604, 0xE200000000000000);
        v245 = *(&v399[0] + 1);
        v243 = *&v399[0];
        goto LABEL_119;
      }
    }
  }

  else
  {
    v243 = 0;
  }

  v245 = 0xE000000000000000;
LABEL_119:
  MEMORY[0x2530AD570](v243, v245);

  v246 = v400;
  v400 = v241;

  MEMORY[0x2530AD570](v246, *(&v246 + 1));

  v247 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v365)
  {
    if (!(v365 >> 62))
    {
      v248 = *((v365 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v248)
      {
        goto LABEL_124;
      }

      goto LABEL_122;
    }

    v248 = sub_252E378C4();
    if (v248)
    {
LABEL_122:
      *&v399[0] = 0xD00000000000001ELL;
      *(&v399[0] + 1) = 0x8000000252E780B0;
      *&v467 = v365;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
      v249 = sub_252E36F94();
      MEMORY[0x2530AD570](v249);

      MEMORY[0x2530AD570](2604, 0xE200000000000000);
      v242 = *(&v399[0] + 1);
      v248 = *&v399[0];
    }
  }

  else
  {
    v248 = 0;
  }

LABEL_124:
  MEMORY[0x2530AD570](v248, v242);

  v251 = *(&v400 + 1);
  v250 = v400;
  v400 = v247;

  MEMORY[0x2530AD570](v250, v251);

  v252 = v400;
  v253 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v33 == 22)
  {
    v254 = 0;
    v255 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0xD00000000000001DLL;
    *(&v399[0] + 1) = 0x8000000252E78090;
    LOBYTE(v467) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B08, &qword_252E48110);
    v256 = sub_252E36F94();
    MEMORY[0x2530AD570](v256);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v255 = *(&v399[0] + 1);
    v254 = *&v399[0];
  }

  MEMORY[0x2530AD570](v254, v255);

  v257 = v400;
  v400 = v252;

  MEMORY[0x2530AD570](v257, *(&v257 + 1));

  v258 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v366 + 16))
  {
    *&v399[0] = 0xD000000000000018;
    *(&v399[0] + 1) = 0x8000000252E77E60;
    v259 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v259);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v253 = *(&v399[0] + 1);
    v260 = *&v399[0];
  }

  else
  {
    v260 = 0;
  }

  MEMORY[0x2530AD570](v260, v253);

  v262 = *(&v400 + 1);
  v261 = v400;
  v400 = v258;

  MEMORY[0x2530AD570](v261, v262);

  v263 = v400;
  v264 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v367 + 16))
  {
    *&v399[0] = 0xD000000000000018;
    *(&v399[0] + 1) = 0x8000000252E77E80;
    v265 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v265);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v267 = *(&v399[0] + 1);
    v266 = *&v399[0];
  }

  else
  {
    v266 = 0;
    v267 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v266, v267);

  v268 = v400;
  v400 = v263;

  MEMORY[0x2530AD570](v268, *(&v268 + 1));

  v269 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v368 + 16))
  {
    *&v399[0] = 0xD000000000000014;
    *(&v399[0] + 1) = 0x8000000252E77EA0;
    v270 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v270);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v264 = *(&v399[0] + 1);
    v271 = *&v399[0];
  }

  else
  {
    v271 = 0;
  }

  MEMORY[0x2530AD570](v271, v264);

  v273 = *(&v400 + 1);
  v272 = v400;
  v400 = v269;

  MEMORY[0x2530AD570](v272, v273);

  v274 = v400;
  v275 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v369 + 16))
  {
    *&v399[0] = 0xD000000000000016;
    *(&v399[0] + 1) = 0x8000000252E77EC0;
    v276 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v276);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v278 = *(&v399[0] + 1);
    v277 = *&v399[0];
  }

  else
  {
    v277 = 0;
    v278 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v277, v278);

  v279 = v400;
  v400 = v274;

  MEMORY[0x2530AD570](v279, *(&v279 + 1));

  v280 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v370 + 16))
  {
    *&v399[0] = 0xD000000000000016;
    *(&v399[0] + 1) = 0x8000000252E77EE0;
    v281 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v281);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v275 = *(&v399[0] + 1);
    v282 = *&v399[0];
  }

  else
  {
    v282 = 0;
  }

  MEMORY[0x2530AD570](v282, v275);

  v284 = *(&v400 + 1);
  v283 = v400;
  v400 = v280;

  MEMORY[0x2530AD570](v283, v284);

  v285 = v400;
  v286 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0xD000000000000013;
  *(&v399[0] + 1) = 0x8000000252E77F00;
  if (v477)
  {
    v287 = 1702195828;
  }

  else
  {
    v287 = 0x65736C6166;
  }

  if (v477)
  {
    v288 = 0xE400000000000000;
  }

  else
  {
    v288 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v287, v288);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v289 = v400;
  v400 = v285;

  MEMORY[0x2530AD570](v289, *(&v289 + 1));

  v290 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0xD000000000000020;
  *(&v399[0] + 1) = 0x8000000252E77F20;
  if (v476)
  {
    v291 = 1702195828;
  }

  else
  {
    v291 = 0x65736C6166;
  }

  if (v476)
  {
    v292 = 0xE400000000000000;
  }

  else
  {
    v292 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v291, v292);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v293 = v400;
  v400 = v290;

  MEMORY[0x2530AD570](v293, *(&v293 + 1));

  v294 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0;
  *(&v399[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v399[0] = 0xD000000000000012;
  *(&v399[0] + 1) = 0x8000000252E77F50;
  if (v478)
  {
    v295 = 1702195828;
  }

  else
  {
    v295 = 0x65736C6166;
  }

  if (v478)
  {
    v296 = 0xE400000000000000;
  }

  else
  {
    v296 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v295, v296);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v297 = v400;
  v400 = v294;

  MEMORY[0x2530AD570](v297, *(&v297 + 1));

  v298 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  *&v399[0] = 0;
  *(&v399[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v399[0] = 0xD000000000000015;
  *(&v399[0] + 1) = 0x8000000252E77F70;
  if (v475)
  {
    v299 = 1702195828;
  }

  else
  {
    v299 = 0x65736C6166;
  }

  if (v475)
  {
    v300 = 0xE400000000000000;
  }

  else
  {
    v300 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v299, v300);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  MEMORY[0x2530AD570](*&v399[0], *(&v399[0] + 1));

  v301 = v400;
  v400 = v298;

  MEMORY[0x2530AD570](v301, *(&v301 + 1));

  v302 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v371 == 2)
  {
    v303 = 0;
    v304 = 0xE000000000000000;
  }

  else
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000015;
    *(&v399[0] + 1) = 0x8000000252E78070;
    LOBYTE(v467) = v371;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    v305 = sub_252E36F94();
    MEMORY[0x2530AD570](v305);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v304 = *(&v399[0] + 1);
    v303 = *&v399[0];
  }

  MEMORY[0x2530AD570](v303, v304);

  v306 = v400;
  v400 = v302;

  MEMORY[0x2530AD570](v306, *(&v306 + 1));

  v307 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v400 = 0xD000000000000014;
  *(&v400 + 1) = 0x8000000252E77F90;
  *&v399[0] = v372;
  v308 = sub_252E37D94();
  MEMORY[0x2530AD570](v308);

  MEMORY[0x2530AD570](2604, 0xE200000000000000);
  v309 = v400;
  v400 = v307;

  MEMORY[0x2530AD570](v309, *(&v309 + 1));

  v310 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v397 + 16))
  {
    strcpy(v399, "    flags: ");
    HIDWORD(v399[0]) = -352321536;
    v311 = MEMORY[0x2530AD730]();
    MEMORY[0x2530AD570](v311);

    MEMORY[0x2530AD570](2604, 0xE200000000000000);
    v286 = *(&v399[0] + 1);
    v312 = *&v399[0];
  }

  else
  {
    v312 = 0;
  }

  MEMORY[0x2530AD570](v312, v286);

  v313 = v400;
  v400 = v310;

  MEMORY[0x2530AD570](v313, *(&v313 + 1));

  v314 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v373 >> 62)
  {
    v315 = sub_252E378C4();
    v316 = 0xE000000000000000;
    if (v315)
    {
      goto LABEL_174;
    }
  }

  else
  {
    v315 = *((v373 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v316 = 0xE000000000000000;
    if (v315)
    {
LABEL_174:
      *&v399[0] = 0;
      *(&v399[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v399[0] = 0xD000000000000012;
      *(&v399[0] + 1) = 0x8000000252E77FB0;
      v317 = type metadata accessor for Entity(0);
      v318 = MEMORY[0x2530AD730](v373, v317);
      MEMORY[0x2530AD570](v318);

      MEMORY[0x2530AD570](2604, 0xE200000000000000);
      v319 = *(&v399[0] + 1);
      v315 = *&v399[0];
      goto LABEL_177;
    }
  }

  v319 = 0xE000000000000000;
LABEL_177:
  MEMORY[0x2530AD570](v315, v319);

  v320 = v400;
  v400 = v314;

  MEMORY[0x2530AD570](v320, *(&v320 + 1));

  v321 = v400;
  *&v399[0] = 0;
  *(&v399[0] + 1) = 0xE000000000000000;
  if (sub_252C5CF44())
  {
    v322 = 0;
  }

  else
  {
    *&v400 = 0;
    *(&v400 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v467 = v400;
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E77FD0);
    v402 = v470;
    v403 = v471;
    v404 = v472;
    v405 = v473;
    v400 = v468;
    v401 = v469;
    sub_252E37AE4();
    MEMORY[0x2530AD570](663596, 0xE300000000000000);
    v316 = *(&v467 + 1);
    v322 = v467;
  }

  MEMORY[0x2530AD570](v322, v316);

  v324 = *(&v399[0] + 1);
  v323 = *&v399[0];
  v400 = v321;

  MEMORY[0x2530AD570](v323, v324);

  v325 = v400;
  v326 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (*(v374 + 16))
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v399[0] = 0xD00000000000001CLL;
    *(&v399[0] + 1) = 0x8000000252E77FF0;
    sub_252ABC210();
    v327 = sub_252E373B4();
    MEMORY[0x2530AD570](v327);

    MEMORY[0x2530AD570](663596, 0xE300000000000000);
    v329 = *(&v399[0] + 1);
    v328 = *&v399[0];
  }

  else
  {
    v328 = 0;
    v329 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v328, v329);

  v330 = v400;
  v400 = v325;

  MEMORY[0x2530AD570](v330, *(&v330 + 1));

  v331 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v474)
  {
    v332 = 0xD00000000000001FLL;
  }

  else
  {
    v332 = 0;
  }

  if (v474)
  {
    v333 = 0x8000000252E78050;
  }

  else
  {
    v333 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v332, v333);

  v334 = v400;
  v400 = v331;

  MEMORY[0x2530AD570](v334, *(&v334 + 1));

  v335 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v34)
  {
    *&v399[0] = 0;
    *(&v399[0] + 1) = 0xE000000000000000;
    v336 = v34;
    sub_252E379F4();

    *&v399[0] = 0xD000000000000012;
    *(&v399[0] + 1) = 0x8000000252E78030;
    *&v467 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B00, &unk_252E48100);
    v337 = sub_252E36F94();
    MEMORY[0x2530AD570](v337);

    MEMORY[0x2530AD570](663596, 0xE300000000000000);
    v326 = *(&v399[0] + 1);
    v338 = *&v399[0];
  }

  else
  {
    v338 = 0;
  }

  MEMORY[0x2530AD570](v338, v326);

  v340 = *(&v400 + 1);
  v339 = v400;
  v400 = v335;

  MEMORY[0x2530AD570](v339, v340);

  v341 = v400;
  v342 = 0xE000000000000000;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  v343 = *(v398 + 16);
  if (v343)
  {
    v344 = 0xD000000000000014;
  }

  else
  {
    v344 = 0;
  }

  if (v343)
  {
    v345 = 0x8000000252E78010;
  }

  else
  {
    v345 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v344, v345);

  v346 = v400;
  v400 = v341;

  MEMORY[0x2530AD570](v346, *(&v346 + 1));

  v347 = v400;
  *&v400 = 0;
  *(&v400 + 1) = 0xE000000000000000;
  if (v343)
  {
    v348 = MEMORY[0x2530AD730](v398, &type metadata for HomeAutomationIntent);
    v342 = v349;
  }

  else
  {
    v348 = 0;
  }

  MEMORY[0x2530AD570](v348, v342);

  v350 = v400;
  v400 = v347;

  MEMORY[0x2530AD570](v350, *(&v350 + 1));

  MEMORY[0x2530AD570](32010, 0xE200000000000000);

  return v400;
}