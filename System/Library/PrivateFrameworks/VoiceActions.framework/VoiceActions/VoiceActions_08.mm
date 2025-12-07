uint64_t sub_2722A0C1C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2722A115C;
  }

  else
  {
    v2 = sub_2722A0D30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722A0D30()
{
  v34 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_272376D1C();
  (*(v2 + 8))(v1, v3);
  sub_272376E7C();
  v4 = objc_allocWithZone(RDCustomProfile);
  v5 = sub_2723777FC();

  v6 = sub_2723777FC();

  v7 = [v4 initWithLanguage:v5 assetPath:v6];

  v8 = sub_2723777FC();
  v9 = [v7 pronunciationsForOrthography_];

  if (v9)
  {
    v10 = sub_272377D8C();
  }

  else
  {
    v10 = 0;
  }

  if (qword_28088CBD8 != -1)
  {
    swift_once();
  }

  v11 = sub_27237728C();
  sub_2721F08DC(v11, qword_28088CBE0);

  v12 = sub_27237725C();
  v13 = sub_272377E6C();

  if (os_log_type_enabled(v12, v13))
  {
    v32 = v7;
    v15 = v0[5];
    v14 = v0[6];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2721FFD04(v15, v14, &v33);
    *(v16 + 12) = 2080;
    if (v10)
    {
      v0[4] = v10;

      sub_2721F065C(&qword_280882718, &qword_272381AF0);
      sub_2722199BC(&qword_280882720, &qword_280882718, &qword_272381AF0, MEMORY[0x277D83B68]);
      sub_272203AC4();
      v18 = sub_272377A7C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v24 = v0[19];
    v31 = v0[20];
    v25 = v0[18];
    v0[2] = v18;
    v0[3] = v20;
    sub_2721F065C(&qword_280881828, &qword_27237BF40);
    v26 = sub_27237789C();
    v28 = sub_2721FFD04(v26, v27, &v33);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_2721E4000, v12, v13, "Prons[%s] = %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v17, -1, -1);
    MEMORY[0x2743C69C0](v16, -1, -1);

    (*(v24 + 8))(v31, v25);
  }

  else
  {
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];

    (*(v22 + 8))(v21, v23);
  }

  v29 = v0[1];

  return v29(v10);
}

uint64_t sub_2722A115C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2722A1214(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_27237728C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A12D4, 0, 0);
}

uint64_t sub_2722A12D4()
{
  v1 = v0[9];
  v2 = sub_2722A0548(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  v0[14] = v3;
  if (v3)
  {
    v4 = v0[9];
    v0[15] = v2;
    v0[16] = 0;
    v5 = *(v4 + 32);
    v0[17] = v5;
    v6 = *(v4 + 40);
    v0[18] = v6;

    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_2722A1414;
    v8 = v0[10];

    return sub_2722A08B8(v5, v6, v8);
  }

  else
  {
    v10 = v2;

    v11 = v0[1];

    return v11(v10);
  }
}

uint64_t sub_2722A1414(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {

    v4 = sub_2722A1A48;
  }

  else
  {
    v4 = sub_2722A153C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t sub_2722A153C()
{
  v55 = v0;
  v1 = *(v0 + 160);
  if (!v1)
  {
LABEL_11:
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);

    v14 = sub_2722C389C();
    (*(v12 + 16))(v11, v14, v13);

    v15 = sub_27237725C();
    v16 = sub_272377E8C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 144);
    if (v17)
    {
      v19 = *(v0 + 136);
      v21 = *(v0 + 96);
      v20 = *(v0 + 104);
      v22 = *(v0 + 88);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54 = v24;
      *v23 = 136315138;
      v25 = sub_2721FFD04(v19, v18, &v54);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_2721E4000, v15, v16, "Could not get pronunciations for name %s", v23, 0xCu);
      sub_2722039C8(v24);
      MEMORY[0x2743C69C0](v24, -1, -1);
      MEMORY[0x2743C69C0](v23, -1, -1);

      (*(v21 + 8))(v20, v22);
    }

    else
    {
      v27 = *(v0 + 96);
      v26 = *(v0 + 104);
      v28 = *(v0 + 88);

      (*(v27 + 8))(v26, v28);
    }

    v29 = 0;
    goto LABEL_15;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {

    goto LABEL_11;
  }

  sub_2721F065C(&qword_280881860, &unk_27237C340);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 17;
  }

  v3[2] = v2;
  v3[3] = 2 * (v5 >> 4);
  v6 = sub_2722A02C4((v0 + 16), v3 + 4, v2, v1);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  result = sub_272270484(v7);
  if (v6 != v2)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v53 = result;
    sub_2722A0154();
    result = v53;
    goto LABEL_25;
  }

  v10 = *(v0 + 168);
  *(v0 + 56) = v3;
  sub_272272490((v0 + 56));
  if (v10)
  {
  }

  v31 = *(v0 + 136);
  v2 = *(v0 + 144);
  v32 = *(v0 + 120);

  v8 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v32;
  result = sub_27220038C(v31, v2);
  v35 = *(v32 + 16);
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
    goto LABEL_34;
  }

  LOBYTE(v2) = v34;
  if (*(*(v0 + 120) + 24) >= v38)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  sub_27229FEAC(v38, isUniquelyReferenced_nonNull_native);
  result = sub_27220038C(v40, v39);
  if ((v2 & 1) != (v41 & 1))
  {

    return sub_2723786BC();
  }

LABEL_25:
  v29 = *(v0 + 64);
  v42 = *(v0 + 144);
  if (v2)
  {
    *(v29[7] + 8 * result) = v8;
  }

  else
  {
    v43 = *(v0 + 136);
    v29[(result >> 6) + 8] |= 1 << result;
    v44 = (v29[6] + 16 * result);
    *v44 = v43;
    v44[1] = v42;
    *(v29[7] + 8 * result) = v8;
    v45 = v29[2];
    v37 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v37)
    {
      __break(1u);
      return result;
    }

    v29[2] = v46;
  }

  v47 = *(v0 + 128) + 1;
  if (v47 != *(v0 + 112))
  {
    *(v0 + 120) = v29;
    *(v0 + 128) = v47;
    v48 = *(v0 + 72) + 16 * v47;
    v49 = *(v48 + 32);
    *(v0 + 136) = v49;
    v50 = *(v48 + 40);
    *(v0 + 144) = v50;

    v51 = swift_task_alloc();
    *(v0 + 152) = v51;
    *v51 = v0;
    v51[1] = sub_2722A1414;
    v52 = *(v0 + 80);

    return sub_2722A08B8(v49, v50, v52);
  }

LABEL_15:

  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_2722A1A48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722A1AEC(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882728, &qword_272381AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VATaskHintCommand.speechTaskHint()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_27237768C();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279E3FFC8 + v3);

  return v5(a1, v6, v4);
}

VoiceActions::VATaskHintCommand_optional __swiftcall VATaskHintCommand.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VATaskHintCommand.rawValue.getter()
{
  result = 0x6F69746174636964;
  switch(*v0)
  {
    case 1:
      result = 0x686372616573;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6369446863746177;
      break;
    case 7:
      result = 0x69616D6563696F76;
      break;
    case 8:
      result = 0x436E49646E756F66;
      break;
    case 9:
      result = 0x696E6F6974706163;
      break;
    case 0xB:
      result = 0x43436C6C657073;
      break;
    case 0xC:
      result = 0x676E696C6C657073;
      break;
    case 0xD:
      result = 0x746F687374;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2722A1E38()
{
  v0 = VATaskHintCommand.rawValue.getter();
  v2 = v1;
  if (v0 == VATaskHintCommand.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_27237865C();
  }

  return v5 & 1;
}

uint64_t sub_2722A1ED4()
{
  sub_27237874C();
  VATaskHintCommand.rawValue.getter();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722A1F3C(uint64_t a1)
{
  VATaskHintCommand.rawValue.getter();
  sub_27237790C();
}

uint64_t sub_2722A1FA0(uint64_t a1)
{
  sub_27237874C();
  VATaskHintCommand.rawValue.getter();
  sub_27237790C();

  return sub_27237878C();
}

unint64_t sub_2722A2010@<X0>(unint64_t *a1@<X8>)
{
  result = VATaskHintCommand.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for VASpeechBiasData(uint64_t a1)
{
  result = qword_28088CF30;
  if (!qword_28088CF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VASpeechBiasData.customLMPath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VASpeechBiasData.customLMPath.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VASpeechBiasData.speechProfileData.getter()
{
  v1 = *(v0 + 16);
  sub_2721F054C(v1, *(v0 + 24));
  return v1;
}

uint64_t VASpeechBiasData.speechProfileData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2721F05B4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t VASpeechBiasData.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VASpeechBiasData(0) + 24);
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VASpeechBiasData.created.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VASpeechBiasData(0) + 24);
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VASpeechBiasData.customLMWeight.setter(double a1)
{
  result = type metadata accessor for VASpeechBiasData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t VASpeechResult.best.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VASpeechResult.best.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VASpeechResult.nBest.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VASpeechResult.confidence.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void sub_2722A2540(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t sub_2722A255C()
{
  v0 = sub_27237728C();
  sub_2721F408C(v0, qword_28088CC08);
  sub_2721F08DC(v0, qword_28088CC08);
  return sub_27237726C();
}

id sub_2722A25D8()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    qword_28088CC28 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static VASpeechAPI.nearestGraphemeBasedOnGrapheme(_:neighborsOf:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_27237752C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_27237751C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_272376EBC();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A27A8, 0, 0);
}

uint64_t sub_2722A27A8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  (*(v0[13] + 16))(v0[14], v0[5], v0[12]);
  (*(v3 + 104))(v1, *MEMORY[0x277CDCC88], v2);
  (*(v5 + 104))(v4, *MEMORY[0x277CDCC90], v6);
  sub_27237756C();
  swift_allocObject();
  v0[15] = sub_27237754C();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_2722A291C;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return MEMORY[0x28212C020](v10, v8, v9);
}

uint64_t sub_2722A291C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_2722A2C58;
  }

  else
  {
    v4 = sub_2722A2A30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

char *sub_2722A2A30()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    v2 = sub_2723783AC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    v4 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = MEMORY[0x277D84F90];
  result = sub_27220056C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = v20;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      MEMORY[0x2743C5370](v5, *(v0 + 136));
      v6 = sub_27237757C();
      v8 = v7;
      swift_unknownObjectRelease();
      v10 = *(v20 + 16);
      v9 = *(v20 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_27220056C((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v20 + 16) = v10 + 1;
      v11 = v20 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
    }

    while (v2 != v5);
  }

  else
  {
    v12 = *(v0 + 136) + 32;
    do
    {

      v13 = sub_27237757C();
      v15 = v14;

      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27220056C((v16 > 1), v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      v18 = v20 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v12 += 8;
      --v2;
    }

    while (v2);
  }

LABEL_17:

  v19 = *(v0 + 8);

  return v19(v4);
}

uint64_t sub_2722A2C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static VASpeechAPI.nearestGraphemeBasedOnPhoneme(_:neighborsOf:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_27237752C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_27237751C();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_272376EBC();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A2E60, 0, 0);
}

uint64_t sub_2722A2E60()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  (*(v0[24] + 16))(v0[25], v0[16], v0[23]);
  (*(v3 + 104))(v1, *MEMORY[0x277CDCC80], v2);
  (*(v5 + 104))(v4, *MEMORY[0x277CDCC90], v6);
  sub_27237756C();
  swift_allocObject();
  v0[26] = sub_27237754C();
  type metadata accessor for VALanguageModelEnrollment();
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_2722A2FDC;
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[14];

  return sub_27229D4F8(v10, v8, v9);
}

uint64_t sub_2722A2FDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_2722A3A0C;
  }

  else
  {
    v4 = sub_2722A30F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722A30F0()
{
  v31 = v0;
  v1 = *(v0 + 224);
  if (!v1)
  {
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    sub_27237820C();

    v30[0] = 0xD00000000000001DLL;
    v30[1] = 0x800000027238D540;
    MEMORY[0x2743C4AD0](v8, v7);
    sub_2722032B4();
    swift_allocError();
    *v9 = 0xD00000000000001DLL;
    v9[1] = 0x800000027238D540;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  *(v0 + 96) = MEMORY[0x277D84FA0];
  v2 = *(v1 + 32);
  *(v0 + 288) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  if (!v5)
  {
    v12 = 0;
    v29 = *(v0 + 232);
    v13 = ((63 - v4) >> 6) - 1;
    while (v13 != v12)
    {
      v6 = v12 + 1;
      v5 = *(v1 + 8 * v12++ + 64);
      if (v5)
      {
        goto LABEL_12;
      }
    }

    v22 = *(v0 + 96);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = sub_2722702A8(*(v22 + 16), 0);
      v25 = sub_2722A02C4(v30, v24 + 4, v23, v22);
      v26 = v30[0];

      sub_272270484(v26);
      if (v25 == v23)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
LABEL_19:
    v30[0] = v24;
    sub_272272490(v30);
    if (v29)
    {
    }

    else
    {

      v27 = v30[0];

      v28 = *(v0 + 8);

      return v28(v27);
    }
  }

  v6 = 0;
LABEL_12:
  *(v0 + 240) = v5;
  *(v0 + 248) = v6;
  v14 = (*(v1 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v5)))));
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 16) = v16;
  *(v0 + 24) = v15;
  *(v0 + 32) = 46;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 32;
  *(v0 + 56) = 0xE100000000000000;
  sub_272203AC4();
  v17 = sub_2723780FC();
  v19 = v18;
  *(v0 + 256) = v18;
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_2722A34F0;
  v21 = *(v0 + 104);

  return MEMORY[0x28212C020](v21, v17, v19);
}

uint64_t sub_2722A34F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {

    v4 = sub_2722A3A98;
  }

  else
  {
    v4 = sub_2722A3620;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722A3620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = v3;
  v4 = *(v3 + 272);
  if (v4 >> 62)
  {
LABEL_32:
    a1 = sub_2723783AC();
    v5 = a1;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return MEMORY[0x28212C020](a1, a2, a3);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    do
    {
      MEMORY[0x2743C5370](v6++, *(v3 + 272), a3);
      v7 = sub_27237757C();
      v4 = v3 + 96;
      sub_2722AB1B4((v3 + 64), v7, v8);
      swift_unknownObjectRelease();
    }

    while (v5 != v6);
  }

  else
  {
    v9 = *(v3 + 272) + 32;
    do
    {
      v9 += 8;

      v10 = sub_27237757C();
      v4 = v3 + 96;
      sub_2722AB1B4((v3 + 80), v10, v11);

      --v5;
    }

    while (v5);
  }

LABEL_10:

  v12 = *(v3 + 248);
  v13 = (*(v3 + 240) - 1) & *(v3 + 240);
  if (v13)
  {
    v14 = *(v3 + 224);
LABEL_17:
    *(v3 + 240) = v13;
    *(v3 + 248) = v12;
    v16 = (*(v14 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
    v18 = *v16;
    v17 = v16[1];
    *(v3 + 16) = v18;
    *(v3 + 24) = v17;
    *(v3 + 32) = 46;
    *(v3 + 40) = 0xE100000000000000;
    *(v3 + 48) = 32;
    *(v3 + 56) = 0xE100000000000000;
    sub_272203AC4();
    v19 = sub_2723780FC();
    v21 = v20;
    *(v3 + 256) = v20;
    v22 = swift_task_alloc();
    *(v3 + 264) = v22;
    *v22 = v3;
    v22[1] = sub_2722A34F0;
    a1 = *(v3 + 104);
    a2 = v19;
    a3 = v21;

    return MEMORY[0x28212C020](a1, a2, a3);
  }

  v31 = *(v3 + 280);
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    v14 = *(v3 + 224);
    if (v15 >= (((1 << *(v3 + 288)) + 63) >> 6))
    {
      break;
    }

    v13 = *(v14 + 8 * v15 + 56);
    ++v12;
    if (v13)
    {
      v12 = v15;
      goto LABEL_17;
    }
  }

  v23 = *(v3 + 96);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_2722702A8(*(v23 + 16), 0);
    v26 = sub_2722A02C4(&v32, v25 + 4, v24, v23);
    v27 = v32;

    sub_272270484(v27);
    if (v26 == v24)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_24:
  v32 = v25;
  sub_272272490(&v32);
  if (v31)
  {
  }

  else
  {

    v29 = v32;

    v30 = *(v3 + 8);

    return v30(v29);
  }
}

uint64_t sub_2722A3A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722A3A98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static VASpeechAPI.createBiasData(_:_:_:customLMWeight:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, double a5)
{
  *(v5 + 72) = a5;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 48) = a1;
  *(v5 + 165) = *a4;
  return MEMORY[0x2822009F8](sub_2722A3B60, 0, 0);
}

unint64_t sub_2722A3B60()
{
  v44 = v0;
  v1 = *(v0 + 56);
  *(v0 + 80) = mach_absolute_time();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 56) + 32;
    sub_272203AC4();
    v4 = 0;
    while (1)
    {
      v5 = (v3 + 16 * v4);
      v7 = *v5;
      v6 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 24) = v6;
      *(v0 + 32) = 95;
      *(v0 + 40) = 0xE100000000000000;

      if (sub_27237813C())
      {
        break;
      }

      ++v4;
      v8 = HIBYTE(v6) & 0xF;
      v43[0] = v7;
      v43[1] = v6;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v43[2] = 0;
      v43[3] = v8;

      while (1)
      {
        sub_27237799C();
        if (!v9)
        {
          break;
        }

        v10 = sub_2723777BC();

        if (v10)
        {

          goto LABEL_15;
        }
      }

      if (v4 == v2)
      {
        goto LABEL_11;
      }
    }

LABEL_15:
    sub_27237820C();

    strcpy(v43, "Invalid name: ");
    HIBYTE(v43[1]) = -18;
    MEMORY[0x2743C4AD0](v7, v6);

    v24 = v43[1];
    sub_2722AC358();
    swift_allocError();
    *v25 = v43[0];
    v25[1] = v24;
    swift_willThrow();
    v26 = *(v0 + 8);
LABEL_16:

    return v26();
  }

LABEL_11:
  v11 = *(v0 + 165);
  v12 = *(v0 + 48);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0xF000000000000000;
  v13 = type metadata accessor for VASpeechBiasData(0);
  sub_272376DEC();
  v14 = *(v13 + 28);
  *(v0 + 160) = v14;
  *(v12 + v14) = 0x3FA999999999999ALL;
  LOBYTE(v43[0]) = v11;
  if (VASpeechBiasOptions.useCustomLM.getter())
  {
    type metadata accessor for VALanguageModelEnrollment();
    v15 = NSTemporaryDirectory();
    v16 = sub_27237782C();
    v18 = v17;

    *(v0 + 88) = v18;
    v19 = sub_27222CD4C();
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v20[1] = sub_2722A403C;
    v22 = *(v0 + 56);
    v21 = *(v0 + 64);

    return sub_27229EB98(v22, v16, v18, v19 & 1, v21);
  }

  else
  {
    v27 = *(v0 + 160);
    v28 = *(v0 + 165);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    *v30 = 0;
    v30[1] = 0;
    *(v30 + v27) = v29;
    LOBYTE(v43[0]) = v28;
    if ((VASpeechBiasOptions.useContactLM.getter() & 1) == 0)
    {
      v36 = *(v0 + 48);
      sub_2721F05B4(*(v36 + 16), *(v36 + 24));
      *(v36 + 16) = xmmword_27237AF40;
      v37 = mach_absolute_time();
      if (qword_28088CC00 != -1)
      {
        swift_once();
      }

      v38 = sub_27237728C();
      sub_2721F08DC(v38, qword_28088CC08);
      v39 = sub_27237725C();
      v40 = sub_272377E7C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 80);
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        type metadata accessor for VALanguageModelEnrollment();
        result = v37 - v41;
        if (v37 < v41)
        {
          __break(1u);
          return result;
        }

        *(v42 + 4) = sub_27229FC58(result);
        _os_log_impl(&dword_2721E4000, v39, v40, "Create LME time %f secs", v42, 0xCu);
        MEMORY[0x2743C69C0](v42, -1, -1);
      }

      v26 = *(v0 + 8);
      goto LABEL_16;
    }

    v31 = *(v0 + 165);
    type metadata accessor for VALanguageModelEnrollment();
    *(v0 + 164) = v31;
    v32 = VASpeechBiasOptions.useNBestPronsWithContactLME.getter();
    v33 = swift_task_alloc();
    *(v0 + 128) = v33;
    *v33 = v0;
    v33[1] = sub_2722A43BC;
    v35 = *(v0 + 56);
    v34 = *(v0 + 64);

    return sub_27229D76C(v35, v32, v34);
  }
}

uint64_t sub_2722A403C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_2722A4658;
  }

  else
  {

    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_2722A4178;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

unint64_t sub_2722A4178(uint64_t a1)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 160);
  v4 = *(v1 + 72);
  v5 = *(v1 + 48);
  *v5 = *(v1 + 120);
  v5[1] = v2;
  *(v5 + v3) = v4;
  if (VASpeechBiasOptions.useContactLM.getter())
  {
    v6 = *(v1 + 165);
    type metadata accessor for VALanguageModelEnrollment();
    *(v1 + 164) = v6;
    v7 = VASpeechBiasOptions.useNBestPronsWithContactLME.getter();
    v8 = swift_task_alloc();
    *(v1 + 128) = v8;
    *v8 = v1;
    v8[1] = sub_2722A43BC;
    v10 = *(v1 + 56);
    v9 = *(v1 + 64);

    return sub_27229D76C(v10, v7, v9);
  }

  else
  {
    v12 = *(v1 + 48);
    sub_2721F05B4(*(v12 + 16), *(v12 + 24));
    *(v12 + 16) = xmmword_27237AF40;
    v13 = mach_absolute_time();
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    v14 = sub_27237728C();
    sub_2721F08DC(v14, qword_28088CC08);
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v1 + 80);
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      type metadata accessor for VALanguageModelEnrollment();
      result = v13 - v17;
      if (v13 < v17)
      {
        __break(1u);
        return result;
      }

      *(v18 + 4) = sub_27229FC58(result);
      _os_log_impl(&dword_2721E4000, v15, v16, "Create LME time %f secs", v18, 0xCu);
      MEMORY[0x2743C69C0](v18, -1, -1);
    }

    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t sub_2722A43BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_2722A46C8;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_2722A44F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

unint64_t sub_2722A44F0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[6];
  sub_2721F05B4(*(v3 + 16), *(v3 + 24));
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = mach_absolute_time();
  if (qword_28088CC00 != -1)
  {
    swift_once();
  }

  v5 = sub_27237728C();
  sub_2721F08DC(v5, qword_28088CC08);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    type metadata accessor for VALanguageModelEnrollment();
    result = v4 - v8;
    if (v4 < v8)
    {
      __break(1u);
      return result;
    }

    *(v9 + 4) = sub_27229FC58(result);
    _os_log_impl(&dword_2721E4000, v6, v7, "Create LME time %f secs", v9, 0xCu);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2722A4658()
{
  v1 = *(v0 + 48);

  sub_2722AC3AC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722A46C8()
{
  sub_2722AC3AC(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s12VoiceActions16VASpeechBiasDataVACycfC_0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xF000000000000000;
  v2 = type metadata accessor for VASpeechBiasData(0);
  result = sub_272376DEC();
  *(a1 + *(v2 + 28)) = 0x3FA999999999999ALL;
  return result;
}

uint64_t static VASpeechAPI.recognize(_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, float a9)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v17;
  *(v9 + 80) = a5;
  *(v9 + 88) = a7;
  *(v9 + 64) = a2;
  *(v9 + 72) = a4;
  *(v9 + 52) = a9;
  *(v9 + 56) = a1;
  sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  *(v9 + 112) = swift_task_alloc();
  v12 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  *(v9 + 120) = v12;
  v13 = *(v12 - 8);
  *(v9 + 128) = v13;
  *(v9 + 136) = *(v13 + 64);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v14 = sub_27237768C();
  *(v9 + 160) = v14;
  *(v9 + 168) = *(v14 - 8);
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 50) = *a3;
  *(v9 + 51) = *a6;

  return MEMORY[0x2822009F8](sub_2722A4930, 0, 0);
}

uint64_t sub_2722A4930()
{
  v1 = [*(v0 + 64) format];
  if (qword_28088CC20 != -1)
  {
    swift_once();
  }

  v2 = qword_28088CC28;
  sub_2722AC408();
  v3 = v2;
  v4 = sub_272377FBC();

  if (v4)
  {
    v5 = *(v0 + 51);
    v6 = *(v0 + 176);
    type metadata accessor for VASpeechAPI();
    VATaskHintCommand.speechTaskHint()(v6);
    *(v0 + 49) = v5;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_2722A4B34;
    v8 = *(v0 + 176);
    v9 = *(v0 + 152);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v0 + 72);

    return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v9, v8, v12, v10, (v0 + 49), v11);
  }

  else
  {
    sub_2722AC358();
    swift_allocError();
    *v14 = 0xD000000000000015;
    v14[1] = 0x800000027238D560;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_2722A4B34(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_2722A50CC;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v7 = sub_2722A4C68;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2722A4C68()
{
  v1 = *(v0 + 200);
  v24 = *(v0 + 208);
  v25 = *(v0 + 168);
  v26 = *(v0 + 160);
  v27 = *(v0 + 176);
  v18 = *(v0 + 144);
  v19 = *(v0 + 152);
  v2 = *(v0 + 128);
  v17 = *(v0 + 120);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v22 = *(v0 + 96);
  v5 = *(v0 + 52);
  v20 = *(v0 + 136);
  v21 = *(v0 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = MEMORY[0x277D84F90];
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  v7 = sub_272377C3C();
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v6;
  v9[6] = v22;
  v9[7] = v4;

  v23 = sub_2722AA6C0(0, 0, v3, &unk_272381B40, v9, &type metadata for VASpeechResult);
  *(v0 + 216) = v23;
  v8(v3, 1, 1, v7);
  (*(v2 + 16))(v18, v19, v17);
  v10 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v5;
  *(v11 + 40) = v21;
  (*(v2 + 32))(v11 + v10, v18, v17);
  *(v11 + ((v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v12 = v21;
  sub_2722AA6C0(0, 0, v3, &unk_272381B50, v11, MEMORY[0x277D84F78] + 8);

  (*(v2 + 8))(v19, v17);
  (*(v25 + 8))(v27, v26);

  v13 = swift_task_alloc();
  *(v0 + 224) = v13;
  v14 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
  *v13 = v0;
  v13[1] = sub_2722A4FB8;
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v23, &type metadata for VASpeechResult, v14, v15);
}

uint64_t sub_2722A4FB8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_2722A522C;
  }

  else
  {
    v2 = sub_2722A5170;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722A50CC()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2722A5170()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2722A522C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v6 + 304) = a4;
  *(v6 + 312) = a6;
  *(v6 + 288) = a2;
  *(v6 + 296) = a3;
  *(v6 + 280) = a1;
  sub_2721F065C(&qword_280881FB8, &unk_272381B60);
  *(v6 + 320) = swift_task_alloc();
  sub_2723772FC();
  *(v6 + 328) = swift_task_alloc();
  v8 = sub_2721F065C(&qword_280881FC0, &qword_27237E400);
  *(v6 + 336) = v8;
  *(v6 + 344) = *(v8 - 8);
  *(v6 + 352) = swift_task_alloc();
  v9 = sub_2721F065C(&qword_280881F50, &unk_272381B70);
  *(v6 + 360) = v9;
  *(v6 + 368) = *(v9 - 8);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  sub_2721F065C(&qword_280881FC8, &qword_27237E408);
  *(v6 + 392) = swift_task_alloc();
  sub_2721F065C(&qword_280881FD0, &qword_27237E410);
  *(v6 + 400) = swift_task_alloc();
  v10 = sub_272376EBC();
  *(v6 + 408) = v10;
  *(v6 + 416) = *(v10 - 8);
  *(v6 + 424) = swift_task_alloc();
  v11 = sub_27237732C();
  *(v6 + 432) = v11;
  *(v6 + 440) = *(v11 - 8);
  *(v6 + 448) = swift_task_alloc();
  v12 = sub_27237728C();
  *(v6 + 456) = v12;
  *(v6 + 464) = *(v12 - 8);
  *(v6 + 472) = swift_task_alloc();
  sub_2721F065C(&qword_2808821D8, &unk_27237F088);
  *(v6 + 480) = swift_task_alloc();
  v13 = sub_2723774BC();
  *(v6 + 488) = v13;
  *(v6 + 496) = *(v13 - 8);
  *(v6 + 504) = swift_task_alloc();
  sub_272377C3C();
  *(v6 + 512) = swift_task_alloc();
  v14 = sub_2723774DC();
  *(v6 + 520) = v14;
  *(v6 + 528) = *(v14 - 8);
  *(v6 + 536) = swift_task_alloc();
  v15 = sub_272376D5C();
  *(v6 + 544) = v15;
  *(v6 + 552) = *(v15 - 8);
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  *(v6 + 592) = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  v16 = sub_27237745C();
  *(v6 + 656) = v16;
  *(v6 + 664) = *(v16 - 8);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 760) = *a5;

  return MEMORY[0x2822009F8](sub_2722A588C, 0, 0);
}

uint64_t sub_2722A588C()
{
  v180 = v0;
  v1 = *(v0 + 760);
  sub_27237749C();
  swift_allocObject();
  *(v0 + 680) = sub_27237748C();
  sub_272253380(MEMORY[0x277D84F90]);
  sub_27237742C();
  LOBYTE(v179[0]) = v1;
  if (VASpeechBiasOptions.useJITGrammar.getter())
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 664);
    v4 = *(v0 + 656);
    v5 = *(v0 + 296);
    sub_27237744C();

    v6 = sub_27237741C();
    v8 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v179[0] = *v8;
    *v8 = 0x8000000000000000;
    sub_2722ABE54(v5, v2, isUniquelyReferenced_nonNull_native);
    (*(v3 + 8))(v2, v4);
    *v8 = v179[0];
    v6(v0 + 176, 0);
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    sub_2721F08DC(*(v0 + 456), qword_28088CC08);

    v10 = sub_27237725C();
    v11 = sub_272377E7C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v179[0] = v14;
      *v13 = 136315138;
      v15 = MEMORY[0x2743C4C60](v12, MEMORY[0x277D837D0]);
      v17 = sub_2721FFD04(v15, v16, v179);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2721E4000, v10, v11, "\tUsing JIT: %s", v13, 0xCu);
      sub_2722039C8(v14);
      MEMORY[0x2743C69C0](v14, -1, -1);
      MEMORY[0x2743C69C0](v13, -1, -1);
    }
  }

  LOBYTE(v179[0]) = *(v0 + 760);
  if (VASpeechBiasOptions.useLeftContext.getter())
  {
    v18 = *(v0 + 672);
    v19 = *(v0 + 664);
    v20 = *(v0 + 656);
    sub_27237743C();
    sub_272376E7C();
    sub_27229D484();
    v22 = v21;

    v23 = sub_27237741C();
    v25 = v24;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v179[0] = *v25;
    *v25 = 0x8000000000000000;
    sub_2722ABE54(v22, v18, v26);
    (*(v19 + 8))(v18, v20);
    *v25 = v179[0];
    v23(v0 + 144, 0);
  }

  v27 = *(v0 + 312);
  v28 = v27[2];
  *(v0 + 688) = v28;
  v29 = v27[3];
  *(v0 + 696) = v29;
  if (v29 >> 60 != 15 && *(*(v0 + 296) + 16))
  {
    sub_2721F065C(&qword_280882040, &unk_27237E470);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_27237AF80;
    v179[0] = 0;
    v179[1] = 0xE000000000000000;
    sub_2721F0560(v28, v29);
    sub_27237820C();

    strcpy(v179, "\tContact LM: ");
    HIWORD(v179[1]) = -4864;
    v33 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      v34 = 0;
      if (v33 != 2)
      {
        goto LABEL_42;
      }

      v146 = *(v28 + 16);
      v145 = *(v28 + 24);
      v147 = __OFSUB__(v145, v146);
      v34 = v145 - v146;
      if (!v147)
      {
        goto LABEL_42;
      }

      __break(1u);
    }

    else if (!v33)
    {
      v34 = BYTE6(v29);
      goto LABEL_42;
    }

    LODWORD(v34) = HIDWORD(v28) - v28;
    if (__OFSUB__(HIDWORD(v28), v28))
    {
      __break(1u);
      return MEMORY[0x28212BEF0](v31, v32);
    }

    v34 = v34;
LABEL_42:
    *(v0 + 272) = v34;
    v148 = sub_27237862C();
    MEMORY[0x2743C4AD0](v148);

    MEMORY[0x2743C4AD0](0x736574796220, 0xE600000000000000);
    v149 = v179[0];
    v150 = v179[1];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 32) = v149;
    *(v30 + 40) = v150;
    sub_27237872C();

    sub_2721F0560(v28, v29);
    sub_27237740C();
    v151 = sub_27237747C();
    *(v0 + 704) = v151;
    v152 = swift_task_alloc();
    *(v0 + 712) = v152;
    v32 = sub_2721F065C(&qword_280882758, &qword_272381BA0);
    *v152 = v0;
    v152[1] = sub_2722A6F9C;
    v31 = v151;

    return MEMORY[0x28212BEF0](v31, v32);
  }

  v35 = *(v0 + 648);
  v36 = *(v0 + 552);
  v37 = *(v0 + 544);
  v38 = *(v36 + 56);
  *(v0 + 720) = v38;
  *(v0 + 728) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v176 = v38;
  v38(v35, 1, 1, v37);
  if (v27[1])
  {
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = *(v0 + 544);
    sub_272376CAC();
    v176(v40, 0, 1, v41);
    sub_2722AD1C0(v40, v39);
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    sub_2721F08DC(*(v0 + 456), qword_28088CC08);
    v42 = sub_27237725C();
    v43 = sub_272377E7C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 648);
      v45 = *(v0 + 552);
      v46 = *(v0 + 544);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v179[0] = v48;
      *v47 = 136315138;
      swift_beginAccess();
      v49 = (*(v45 + 48))(v44, 1, v46);
      v50 = 0;
      v51 = 0;
      if (!v49)
      {
        v52 = *(v0 + 584);
        v53 = *(v0 + 552);
        v54 = *(v0 + 544);
        (*(v53 + 16))(v52, *(v0 + 648), v54);
        v50 = sub_272376C9C();
        v51 = v55;
        (*(v53 + 8))(v52, v54);
      }

      *(v0 + 256) = v50;
      *(v0 + 264) = v51;
      sub_2721F065C(&qword_280881828, &qword_27237BF40);
      v56 = sub_27237789C();
      v58 = sub_2721FFD04(v56, v57, v179);

      *(v47 + 4) = v58;
      _os_log_impl(&dword_2721E4000, v42, v43, "\tCustom LM: %s", v47, 0xCu);
      sub_2722039C8(v48);
      MEMORY[0x2743C69C0](v48, -1, -1);
      MEMORY[0x2743C69C0](v47, -1, -1);
    }
  }

  v167 = *(v0 + 760);
  v59 = *(v0 + 632);
  v60 = *(v0 + 504);
  v61 = *(v0 + 488);
  v62 = *(v0 + 496);
  v63 = *(v0 + 472);
  v64 = *(v0 + 480);
  v65 = *(v0 + 464);
  v170 = *(v0 + 456);
  v173 = *(v0 + 624);
  sub_272377C1C();
  (*(v62 + 104))(v60, *MEMORY[0x277CDCC20], v61);
  v66 = sub_2723774AC();
  (*(*(v66 - 8) + 56))(v64, 1, 1, v66);
  sub_2723774CC();
  LOBYTE(v179[0]) = v167;
  VASpeechBiasOptions.overrideModelURL.getter(v59);
  v67 = sub_2722C389C();
  (*(v65 + 16))(v63, v67, v170);
  sub_2721F07F4(v59, v173, &qword_280881A50, &unk_27237CA30);
  v68 = sub_27237725C();
  v69 = sub_272377E7C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = *(v0 + 640);
    v71 = *(v0 + 624);
    v168 = *(v0 + 464);
    v171 = *(v0 + 456);
    v174 = *(v0 + 472);
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v179[0] = v73;
    *v72 = 136315138;
    sub_2721F07F4(v71, v70, &qword_280881A50, &unk_27237CA30);
    v74 = sub_27237789C();
    v76 = v75;
    sub_2721F40F0(v71, &qword_280881A50, &unk_27237CA30);
    v77 = sub_2721FFD04(v74, v76, v179);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_2721E4000, v68, v69, "Using custom model URL: %s", v72, 0xCu);
    sub_2722039C8(v73);
    MEMORY[0x2743C69C0](v73, -1, -1);
    MEMORY[0x2743C69C0](v72, -1, -1);

    (*(v168 + 8))(v174, v171);
  }

  else
  {
    v78 = *(v0 + 624);
    v80 = *(v0 + 464);
    v79 = *(v0 + 472);
    v81 = *(v0 + 456);

    sub_2721F40F0(v78, &qword_280881A50, &unk_27237CA30);
    (*(v80 + 8))(v79, v81);
  }

  v82 = *(v0 + 648);
  v83 = *(v0 + 616);
  v84 = *(v0 + 552);
  v85 = *(v0 + 544);
  swift_beginAccess();
  sub_2721F07F4(v82, v83, &qword_280881A50, &unk_27237CA30);
  v86 = *(v84 + 48);
  if (v86(v83, 1, v85) == 1)
  {
    sub_2721F40F0(*(v0 + 616), &qword_280881A50, &unk_27237CA30);
    v87 = *(v0 + 632);
    v88 = *(v0 + 600);
    v90 = *(v0 + 440);
    v89 = *(v0 + 448);
    v91 = *(v0 + 424);
    v161 = *(v0 + 432);
    v92 = *(v0 + 416);
    v160 = *(v0 + 408);
    v175 = *(v0 + 392);
    v177 = *(v0 + 400);
    v172 = *(v0 + 376);
    v166 = *(v0 + 368);
    v169 = *(v0 + 360);
    v164 = *(v0 + 352);
    v162 = *(v0 + 344);
    v163 = *(v0 + 336);
    v165 = *(v0 + 384);
    v93 = *(v0 + 304);
    v94 = *(v0 + 288);
    (*(v0 + 720))(*(v0 + 640), 1, 1, *(v0 + 544));
    sub_2721F07F4(v87, v88, &qword_280881A50, &unk_27237CA30);
    sub_2722AC7D8(v94);
    sub_27237730C();
    (*(v92 + 16))(v91, v93, v160);
    v95 = sub_27237768C();
    v96 = *(v95 - 8);
    (*(v96 + 16))(v177, v94, v95);
    (*(v96 + 56))(v177, 0, 1, v95);
    (*(v90 + 16))(v175, v89, v161);
    (*(v90 + 56))(v175, 0, 1, v161);
    sub_2721F065C(&qword_280881FF0, &unk_27237E430);
    v97 = sub_27237733C();
    v98 = *(v97 - 8);
    v99 = *(v98 + 72);
    v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_27237AFB0;
    v102 = v101 + v100;
    v103 = *(v98 + 104);
    v103(v102, *MEMORY[0x277CDCAB0], v97);
    v103(v102 + v99, *MEMORY[0x277CDCAB8], v97);
    v103(v102 + 2 * v99, *MEMORY[0x277CDCAA8], v97);
    sub_272253888(v101);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280882748, &unk_272381B80);
    v104 = sub_27237764C();
    v105 = *(v104 - 8);
    v106 = *(v105 + 72);
    v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_27237AF90;
    v109 = v108 + v107;
    v110 = *(v105 + 104);
    v110(v109, *MEMORY[0x277CDCDA8], v104);
    v110(v109 + v106, *MEMORY[0x277CDCDA0], v104);
    sub_2722ACB00(v108);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280881FE8, &qword_27237E428);
    v111 = sub_27237737C();
    v112 = *(v111 - 8);
    v113 = *(v112 + 72);
    v114 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_27237AFB0;
    v116 = v115 + v114;
    v117 = *(v112 + 104);
    v117(v116, *MEMORY[0x277CDCB08], v111);
    v117(v116 + v113, *MEMORY[0x277CDCB10], v111);
    v117(v116 + 2 * v113, *MEMORY[0x277CDCB28], v111);
    sub_2722ACE20(v115);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2723773AC();
    swift_allocObject();
    v178 = sub_27237739C();
    sub_2723773DC();
    (*(v162 + 104))(v164, *MEMORY[0x277D85778], v163);
    sub_272377C4C();
    (*(v162 + 8))(v164, v163);
    sub_2723772DC();
    sub_2723772EC();
    (*(v166 + 16))(v172, v165, v169);
    if (qword_28088CC20 != -1)
    {
      swift_once();
    }

    v159 = *(v0 + 648);
    v158 = *(v0 + 632);
    v118 = *(v0 + 536);
    v119 = *(v0 + 528);
    v120 = *(v0 + 520);
    v121 = *(v0 + 440);
    v156 = *(v0 + 432);
    v157 = *(v0 + 448);
    v155 = *(v0 + 384);
    v153 = qword_28088CC28;
    v122 = *(v0 + 368);
    v154 = *(v0 + 360);
    v123 = *(v0 + 320);
    sub_2721F065C(&qword_280881FF8, &qword_272381B90);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_27237AF80;
    v125 = sub_2722AD74C(&qword_280882000, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
    *(v124 + 32) = v178;
    *(v124 + 40) = v125;
    (*(v119 + 16))(v123, v118, v120);
    (*(v119 + 56))(v123, 0, 1, v120);
    sub_2722AD144();
    v126 = v153;

    v127 = sub_2723772CC();
    (*(v122 + 8))(v155, v154);
    (*(v121 + 8))(v157, v156);
    sub_2721F40F0(v158, &qword_280881A50, &unk_27237CA30);
    (*(v119 + 8))(v118, v120);
    sub_2721F40F0(v159, &qword_280881A50, &unk_27237CA30);

    v128 = *(v0 + 8);

    return v128(v127, v178);
  }

  else
  {
    v130 = *(v0 + 608);
    v131 = *(v0 + 560);
    v132 = *(v0 + 552);
    v133 = *(v0 + 544);
    v134 = *(v0 + 312);
    (*(v132 + 32))(*(v0 + 576), *(v0 + 616), v133);
    sub_272376CAC();
    sub_272376CAC();
    (*(v132 + 16))(v130, v131, v133);
    v176(v130, 0, 1, v133);
    v135 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v136 = sub_272376CCC();
    v137 = 0;
    if (v86(v130, 1, v133) != 1)
    {
      v138 = *(v0 + 608);
      v139 = *(v0 + 552);
      v140 = *(v0 + 544);
      v137 = sub_272376CCC();
      (*(v139 + 8))(v138, v140);
    }

    v141 = [objc_allocWithZone(MEMORY[0x277CDCED8]) initWithLanguageModel:v136 vocabulary:v137 weight:v135];
    *(v0 + 736) = v141;

    v142 = objc_opt_self();
    v143 = sub_272376CCC();
    *(v0 + 744) = v143;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2722A82C4;
    v144 = swift_continuation_init();
    *(v0 + 136) = sub_2721F065C(&qword_280882750, &qword_272381B98);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2722A9100;
    *(v0 + 104) = &unk_28818C368;
    *(v0 + 112) = v144;
    [v142 prepareCustomLanguageModelForUrl:v143 configuration:v141 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2722A6F9C()
{

  return MEMORY[0x2822009F8](sub_2722A70B4, 0, 0);
}

uint64_t sub_2722A70B4()
{
  v139 = v0;
  sub_2721F05B4(*(v0 + 688), *(v0 + 696));
  v1 = *(v0 + 648);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 312);
  v5 = *(v2 + 56);
  *(v0 + 720) = v5;
  *(v0 + 728) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v135 = v5;
  v5(v1, 1, 1, v3);
  if (*(v4 + 8))
  {
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v8 = *(v0 + 544);
    sub_272376CAC();
    v135(v7, 0, 1, v8);
    sub_2722AD1C0(v7, v6);
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    sub_2721F08DC(*(v0 + 456), qword_28088CC08);
    v9 = sub_27237725C();
    v10 = sub_272377E7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 648);
      v12 = *(v0 + 552);
      v13 = *(v0 + 544);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v138[0] = v15;
      *v14 = 136315138;
      swift_beginAccess();
      v16 = (*(v12 + 48))(v11, 1, v13);
      v17 = 0;
      v18 = 0;
      if (!v16)
      {
        v19 = *(v0 + 584);
        v20 = *(v0 + 552);
        v21 = *(v0 + 544);
        (*(v20 + 16))(v19, *(v0 + 648), v21);
        v17 = sub_272376C9C();
        v18 = v22;
        (*(v20 + 8))(v19, v21);
      }

      *(v0 + 256) = v17;
      *(v0 + 264) = v18;
      sub_2721F065C(&qword_280881828, &qword_27237BF40);
      v23 = sub_27237789C();
      v25 = sub_2721FFD04(v23, v24, v138);

      *(v14 + 4) = v25;
      _os_log_impl(&dword_2721E4000, v9, v10, "\tCustom LM: %s", v14, 0xCu);
      sub_2722039C8(v15);
      MEMORY[0x2743C69C0](v15, -1, -1);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }
  }

  v126 = *(v0 + 760);
  v26 = *(v0 + 632);
  v27 = *(v0 + 504);
  v28 = *(v0 + 488);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  v31 = *(v0 + 480);
  v32 = *(v0 + 464);
  v129 = *(v0 + 456);
  v132 = *(v0 + 624);
  sub_272377C1C();
  (*(v29 + 104))(v27, *MEMORY[0x277CDCC20], v28);
  v33 = sub_2723774AC();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  sub_2723774CC();
  LOBYTE(v138[0]) = v126;
  VASpeechBiasOptions.overrideModelURL.getter(v26);
  v34 = sub_2722C389C();
  (*(v32 + 16))(v30, v34, v129);
  sub_2721F07F4(v26, v132, &qword_280881A50, &unk_27237CA30);
  v35 = sub_27237725C();
  v36 = sub_272377E7C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v0 + 640);
    v38 = *(v0 + 624);
    v127 = *(v0 + 464);
    v130 = *(v0 + 456);
    v133 = *(v0 + 472);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v138[0] = v40;
    *v39 = 136315138;
    sub_2721F07F4(v38, v37, &qword_280881A50, &unk_27237CA30);
    v41 = sub_27237789C();
    v43 = v42;
    sub_2721F40F0(v38, &qword_280881A50, &unk_27237CA30);
    v44 = sub_2721FFD04(v41, v43, v138);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_2721E4000, v35, v36, "Using custom model URL: %s", v39, 0xCu);
    sub_2722039C8(v40);
    MEMORY[0x2743C69C0](v40, -1, -1);
    MEMORY[0x2743C69C0](v39, -1, -1);

    (*(v127 + 8))(v133, v130);
  }

  else
  {
    v45 = *(v0 + 624);
    v47 = *(v0 + 464);
    v46 = *(v0 + 472);
    v48 = *(v0 + 456);

    sub_2721F40F0(v45, &qword_280881A50, &unk_27237CA30);
    (*(v47 + 8))(v46, v48);
  }

  v49 = *(v0 + 648);
  v50 = *(v0 + 616);
  v51 = *(v0 + 552);
  v52 = *(v0 + 544);
  swift_beginAccess();
  sub_2721F07F4(v49, v50, &qword_280881A50, &unk_27237CA30);
  v53 = *(v51 + 48);
  if (v53(v50, 1, v52) == 1)
  {
    sub_2721F40F0(*(v0 + 616), &qword_280881A50, &unk_27237CA30);
    v54 = *(v0 + 632);
    v55 = *(v0 + 600);
    v57 = *(v0 + 440);
    v56 = *(v0 + 448);
    v58 = *(v0 + 424);
    v120 = *(v0 + 432);
    v59 = *(v0 + 416);
    v119 = *(v0 + 408);
    v134 = *(v0 + 392);
    v136 = *(v0 + 400);
    v131 = *(v0 + 376);
    v125 = *(v0 + 368);
    v128 = *(v0 + 360);
    v123 = *(v0 + 352);
    v121 = *(v0 + 344);
    v122 = *(v0 + 336);
    v124 = *(v0 + 384);
    v60 = *(v0 + 304);
    v61 = *(v0 + 288);
    (*(v0 + 720))(*(v0 + 640), 1, 1, *(v0 + 544));
    sub_2721F07F4(v54, v55, &qword_280881A50, &unk_27237CA30);
    sub_2722AC7D8(v61);
    sub_27237730C();
    (*(v59 + 16))(v58, v60, v119);
    v62 = sub_27237768C();
    v63 = *(v62 - 8);
    (*(v63 + 16))(v136, v61, v62);
    (*(v63 + 56))(v136, 0, 1, v62);
    (*(v57 + 16))(v134, v56, v120);
    (*(v57 + 56))(v134, 0, 1, v120);
    sub_2721F065C(&qword_280881FF0, &unk_27237E430);
    v64 = sub_27237733C();
    v65 = *(v64 - 8);
    v66 = *(v65 + 72);
    v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_27237AFB0;
    v69 = v68 + v67;
    v70 = *(v65 + 104);
    v70(v69, *MEMORY[0x277CDCAB0], v64);
    v70(v69 + v66, *MEMORY[0x277CDCAB8], v64);
    v70(v69 + 2 * v66, *MEMORY[0x277CDCAA8], v64);
    sub_272253888(v68);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280882748, &unk_272381B80);
    v71 = sub_27237764C();
    v72 = *(v71 - 8);
    v73 = *(v72 + 72);
    v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_27237AF90;
    v76 = v75 + v74;
    v77 = *(v72 + 104);
    v77(v76, *MEMORY[0x277CDCDA8], v71);
    v77(v76 + v73, *MEMORY[0x277CDCDA0], v71);
    sub_2722ACB00(v75);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280881FE8, &qword_27237E428);
    v78 = sub_27237737C();
    v79 = *(v78 - 8);
    v80 = *(v79 + 72);
    v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_27237AFB0;
    v83 = v82 + v81;
    v84 = *(v79 + 104);
    v84(v83, *MEMORY[0x277CDCB08], v78);
    v84(v83 + v80, *MEMORY[0x277CDCB10], v78);
    v84(v83 + 2 * v80, *MEMORY[0x277CDCB28], v78);
    sub_2722ACE20(v82);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2723773AC();
    swift_allocObject();
    v137 = sub_27237739C();
    sub_2723773DC();
    (*(v121 + 104))(v123, *MEMORY[0x277D85778], v122);
    sub_272377C4C();
    (*(v121 + 8))(v123, v122);
    sub_2723772DC();
    sub_2723772EC();
    (*(v125 + 16))(v131, v124, v128);
    if (qword_28088CC20 != -1)
    {
      swift_once();
    }

    v118 = *(v0 + 648);
    v117 = *(v0 + 632);
    v85 = *(v0 + 536);
    v86 = *(v0 + 528);
    v87 = *(v0 + 520);
    v88 = *(v0 + 440);
    v115 = *(v0 + 432);
    v116 = *(v0 + 448);
    v114 = *(v0 + 384);
    v112 = qword_28088CC28;
    v89 = *(v0 + 368);
    v113 = *(v0 + 360);
    v90 = *(v0 + 320);
    sub_2721F065C(&qword_280881FF8, &qword_272381B90);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_27237AF80;
    v92 = sub_2722AD74C(&qword_280882000, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
    *(v91 + 32) = v137;
    *(v91 + 40) = v92;
    (*(v86 + 16))(v90, v85, v87);
    (*(v86 + 56))(v90, 0, 1, v87);
    sub_2722AD144();
    v93 = v112;

    v94 = sub_2723772CC();
    (*(v89 + 8))(v114, v113);
    (*(v88 + 8))(v116, v115);
    sub_2721F40F0(v117, &qword_280881A50, &unk_27237CA30);
    (*(v86 + 8))(v85, v87);
    sub_2721F40F0(v118, &qword_280881A50, &unk_27237CA30);

    v95 = *(v0 + 8);

    return v95(v94, v137);
  }

  else
  {
    v97 = *(v0 + 608);
    v98 = *(v0 + 560);
    v99 = *(v0 + 552);
    v100 = *(v0 + 544);
    v101 = *(v0 + 312);
    (*(v99 + 32))(*(v0 + 576), *(v0 + 616), v100);
    sub_272376CAC();
    sub_272376CAC();
    (*(v99 + 16))(v97, v98, v100);
    v135(v97, 0, 1, v100);
    v102 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v103 = sub_272376CCC();
    v104 = 0;
    if (v53(v97, 1, v100) != 1)
    {
      v105 = *(v0 + 608);
      v106 = *(v0 + 552);
      v107 = *(v0 + 544);
      v104 = sub_272376CCC();
      (*(v106 + 8))(v105, v107);
    }

    v108 = [objc_allocWithZone(MEMORY[0x277CDCED8]) initWithLanguageModel:v103 vocabulary:v104 weight:v102];
    *(v0 + 736) = v108;

    v109 = objc_opt_self();
    v110 = sub_272376CCC();
    *(v0 + 744) = v110;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2722A82C4;
    v111 = swift_continuation_init();
    *(v0 + 136) = sub_2721F065C(&qword_280882750, &qword_272381B98);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2722A9100;
    *(v0 + 104) = &unk_28818C368;
    *(v0 + 112) = v111;
    [v109 prepareCustomLanguageModelForUrl:v110 configuration:v108 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2722A82C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 752) = v1;
  if (v1)
  {
    v2 = sub_2722A8E64;
  }

  else
  {
    v2 = sub_2722A83D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722A83D4()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 544);
  v6 = *(*(v0 + 552) + 8);
  v6(*(v0 + 560), v5);
  v6(v4, v5);
  v6(v3, v5);

  v7 = *(v0 + 632);
  v8 = *(v0 + 600);
  v9 = *(v0 + 440);
  v56 = *(v0 + 448);
  v10 = *(v0 + 424);
  v58 = *(v0 + 432);
  v11 = *(v0 + 416);
  v57 = *(v0 + 408);
  v67 = *(v0 + 392);
  v68 = *(v0 + 400);
  v65 = *(v0 + 376);
  v63 = *(v0 + 368);
  v64 = *(v0 + 360);
  v61 = *(v0 + 352);
  v59 = *(v0 + 344);
  v60 = *(v0 + 336);
  v62 = *(v0 + 384);
  v55 = *(v0 + 304);
  v12 = *(v0 + 288);
  (*(v0 + 720))(*(v0 + 640), 1, 1, *(v0 + 544));
  sub_2721F07F4(v7, v8, &qword_280881A50, &unk_27237CA30);
  sub_2722AC7D8(v12);
  v66 = v2;
  sub_27237730C();
  (*(v11 + 16))(v10, v55, v57);
  v13 = sub_27237768C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v68, v12, v13);
  (*(v14 + 56))(v68, 0, 1, v13);
  (*(v9 + 16))(v67, v56, v58);
  (*(v9 + 56))(v67, 0, 1, v58);
  sub_2721F065C(&qword_280881FF0, &unk_27237E430);
  v15 = sub_27237733C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_27237AFB0;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x277CDCAB0], v15);
  v21(v20 + v17, *MEMORY[0x277CDCAB8], v15);
  v21(v20 + 2 * v17, *MEMORY[0x277CDCAA8], v15);
  sub_272253888(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2721F065C(&qword_280882748, &unk_272381B80);
  v22 = sub_27237764C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_27237AF90;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x277CDCDA8], v22);
  v28(v27 + v24, *MEMORY[0x277CDCDA0], v22);
  sub_2722ACB00(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2721F065C(&qword_280881FE8, &qword_27237E428);
  v29 = sub_27237737C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_27237AFB0;
  v34 = v33 + v32;
  v35 = *(v30 + 104);
  v35(v34, *MEMORY[0x277CDCB08], v29);
  v35(v34 + v31, *MEMORY[0x277CDCB10], v29);
  v35(v34 + 2 * v31, *MEMORY[0x277CDCB28], v29);
  sub_2722ACE20(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2723773AC();
  swift_allocObject();
  v69 = sub_27237739C();
  sub_2723773DC();
  (*(v59 + 104))(v61, *MEMORY[0x277D85778], v60);
  sub_272377C4C();
  (*(v59 + 8))(v61, v60);
  sub_2723772DC();
  sub_2723772EC();
  (*(v63 + 16))(v65, v62, v64);
  if (qword_28088CC20 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 648);
  v53 = *(v0 + 632);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v38 = *(v0 + 520);
  v39 = *(v0 + 440);
  v51 = *(v0 + 432);
  v52 = *(v0 + 448);
  v50 = *(v0 + 384);
  v48 = qword_28088CC28;
  v40 = *(v0 + 368);
  v49 = *(v0 + 360);
  v41 = *(v0 + 320);
  sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_27237AF80;
  v43 = sub_2722AD74C(&qword_280882000, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
  *(v42 + 32) = v69;
  *(v42 + 40) = v43;
  (*(v37 + 16))(v41, v36, v38);
  (*(v37 + 56))(v41, 0, 1, v38);
  sub_2722AD144();
  v44 = v48;

  v45 = sub_2723772CC();

  (*(v40 + 8))(v50, v49);
  (*(v39 + 8))(v52, v51);
  sub_2721F40F0(v53, &qword_280881A50, &unk_27237CA30);
  (*(v37 + 8))(v36, v38);
  sub_2721F40F0(v54, &qword_280881A50, &unk_27237CA30);

  v46 = *(v0 + 8);

  return v46(v45, v69);
}

uint64_t sub_2722A8E64(uint64_t a1)
{
  v2 = v1[92];
  v16 = v1[93];
  v14 = v1[79];
  v15 = v1[81];
  v3 = v1[72];
  v4 = v1[71];
  v5 = v1[70];
  v6 = v1[69];
  v7 = v1[68];
  v8 = v1[66];
  v12 = v1[65];
  v13 = v1[67];
  swift_willThrow();

  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  v9(v3, v7);
  sub_2721F40F0(v14, &qword_280881A50, &unk_27237CA30);
  (*(v8 + 8))(v13, v12);

  sub_2721F40F0(v15, &qword_280881A50, &unk_27237CA30);

  v10 = v1[1];

  return v10();
}

uint64_t sub_2722A9100(uint64_t a1, void *a2)
{
  v3 = sub_27220300C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2722A91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[30] = a1;
  v7[35] = sub_272376C2C();
  v7[36] = swift_task_alloc();
  v8 = sub_272376C3C();
  v7[37] = v8;
  v7[38] = *(v8 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v9 = sub_2723773FC();
  v7[42] = v9;
  v7[43] = *(v9 - 8);
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v10 = sub_27237736C();
  v7[46] = v10;
  v7[47] = *(v10 - 8);
  v7[48] = swift_task_alloc();
  sub_2721F065C(&qword_280882018, &unk_27237EBF0);
  v7[49] = swift_task_alloc();
  v7[50] = sub_2721F065C(&qword_280882020, &unk_27237E460);
  v7[51] = swift_task_alloc();
  v11 = sub_2721F065C(&qword_280882028, &qword_27237EC00);
  v7[52] = v11;
  v7[53] = *(v11 - 8);
  v7[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A945C, 0, 0);
}

uint64_t sub_2722A945C(uint64_t a1)
{
  sub_27237738C();
  *(v1 + 440) = swift_getOpaqueTypeConformance2();
  sub_272377D0C();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v2 = MEMORY[0x277CDCBA0];
  *(v1 + 220) = *MEMORY[0x277CDCBB8];
  *(v1 + 456) = *v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_task_alloc();
  *(v1 + 448) = v4;
  *v4 = v1;
  v4[1] = sub_2722A960C;
  v5 = *(v1 + 416);
  v6 = *(v1 + 392);

  return MEMORY[0x282200310](v6, 0, 0, v1 + 224, v5, AssociatedConformanceWitness);
}

uint64_t sub_2722A960C()
{

  if (v0)
  {
    v1 = sub_2722AA48C;
  }

  else
  {
    v1 = sub_2722A971C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2722A971C()
{
  v128 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 272);
    v5 = sub_27237728C();
    sub_2721F08DC(v5, qword_28088CC08);

    v6 = sub_27237725C();
    v7 = sub_272377E7C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 256);
      v9 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v127 = v122;
      *v9 = 136315650;
      swift_beginAccess();
      v10 = *(v8 + 24);
      if (v10)
      {
        v11 = *(*(v0 + 256) + 16);
        v12 = v10;
      }

      else
      {
        v11 = 0x3E656E6F6E3CLL;
        v12 = 0xE600000000000000;
      }

      v59 = *(v0 + 272);
      v120 = *(v0 + 264);

      v60 = sub_2721FFD04(v11, v12, &v127);

      *(v9 + 4) = v60;
      *(v9 + 12) = 2080;
      swift_beginAccess();

      v62 = MEMORY[0x2743C4C60](v61, MEMORY[0x277D837D0]);
      v64 = v63;

      v65 = sub_2721FFD04(v62, v64, &v127);

      *(v9 + 14) = v65;
      *(v9 + 22) = 2080;
      if (v59)
      {
        v66 = v120;
      }

      else
      {
        v66 = 0x6F726620746F6E3CLL;
      }

      if (v59)
      {
        v67 = v4;
      }

      else
      {
        v67 = 0xEF3E656C6966206DLL;
      }

      v68 = sub_2721FFD04(v66, v67, &v127);

      *(v9 + 24) = v68;
      _os_log_impl(&dword_2721E4000, v6, v7, "\tchecker results: %s, nBest: %s: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v122, -1, -1);
      MEMORY[0x2743C69C0](v9, -1, -1);
    }

    v69 = *(v0 + 256);
    v70 = *(v0 + 240);
    swift_beginAccess();
    v71 = *(v69 + 24);
    v73 = *(v69 + 32);
    v72 = *(v69 + 40);
    v74 = *(v69 + 48);
    *v70 = *(v69 + 16);
    *(v70 + 8) = v71;
    *(v70 + 16) = v73;
    *(v70 + 24) = v72;
    *(v70 + 32) = v74;

    v75 = *(v0 + 8);

    return v75();
  }

  v123 = *(v0 + 456);
  v13 = *(v0 + 220);
  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  (*(v3 + 32))(*(v0 + 384), v1, v2);
  sub_27237734C();
  v18 = *(v17 + 104);
  v18(v15, v13, v16);
  v19 = sub_2723773EC();
  v21 = *(v17 + 8);
  v20 = v17 + 8;
  v21(v15, v16);
  v21(v14, v16);
  sub_27237734C();
  v18(v15, v123, v16);
  v22 = sub_2723773EC();
  v21(v15, v16);
  v23 = (v21)(v14, v16);
  if (v19 & 1) != 0 || (v22)
  {
    v24 = *(MEMORY[0x2743C44B0](v23) + 16);

    if (v24)
    {
      v118 = v22;
      v25 = MEMORY[0x2743C44B0](v23);
      v26 = *(v25 + 16);
      if (v26)
      {
        v115 = v19;
        v27 = *(v0 + 304);
        v28 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v124 = *(v27 + 72);
        v29 = *(v27 + 16);
        v30 = MEMORY[0x277D84F90];
        do
        {
          v31 = *(v0 + 328);
          v33 = *(v0 + 296);
          v32 = *(v0 + 304);
          v29(v31, v28, v33);
          sub_272376C1C();
          (*(v32 + 8))(v31, v33);
          sub_2722AD74C(&qword_280882030, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
          v34 = sub_272377A3C();
          v36 = v35;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2721FFBF8(0, *(v30 + 2) + 1, 1, v30);
          }

          v38 = *(v30 + 2);
          v37 = *(v30 + 3);
          if (v38 >= v37 >> 1)
          {
            v30 = sub_2721FFBF8((v37 > 1), v38 + 1, 1, v30);
          }

          *(v30 + 2) = v38 + 1;
          v39 = &v30[16 * v38];
          *(v39 + 4) = v34;
          *(v39 + 5) = v36;
          v28 += v124;
          --v26;
        }

        while (v26);

        v19 = v115;
      }

      else
      {

        v30 = MEMORY[0x277D84F90];
      }

      *(*(v0 + 256) + 32) = v30;

      v78 = MEMORY[0x2743C44B0](v77);
      if (*(v78 + 16))
      {
        v79 = *(v0 + 256);
        (*(*(v0 + 304) + 16))(*(v0 + 320), v78 + ((*(*(v0 + 304) + 80) + 32) & ~*(*(v0 + 304) + 80)), *(v0 + 296));

        sub_272376C1C();
        sub_2722AD74C(&qword_280882030, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        *(v79 + 16) = sub_272377A3C();
        *(v79 + 24) = v80;

        sub_272376C0C();
        sub_2722AD74C(&qword_280882788, MEMORY[0x277CDC970], MEMORY[0x277CDC968]);
        sub_272376C4C();
        if ((*(v0 + 216) & 1) == 0)
        {
          v81 = *(v0 + 256);
          *(v81 + 40) = *(v0 + 208);
          *(v81 + 48) = 0;
        }

        if (qword_28088CC00 == -1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_41:
      v82 = sub_27237728C();
      sub_2721F08DC(v82, qword_28088CC08);

      v83 = sub_27237725C();
      v84 = sub_272377E8C();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = *(v0 + 256);
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *(v0 + 232) = v87;
        *v86 = 136315906;
        if (v19)
        {
          v88 = 0x6C616E6946;
        }

        else
        {
          v88 = 0;
        }

        if (v19)
        {
          v89 = 0xE500000000000000;
        }

        else
        {
          v89 = 0xE000000000000000;
        }

        v90 = sub_2721FFD04(v88, v89, (v0 + 232));

        *(v86 + 4) = v90;
        *(v86 + 12) = 2080;
        if (v118)
        {
          v91 = 0x7265546C616E6946;
        }

        else
        {
          v91 = 0;
        }

        if (v118)
        {
          v92 = 0xED00006C616E696DLL;
        }

        else
        {
          v92 = 0xE000000000000000;
        }

        v93 = sub_2721FFD04(v91, v92, (v0 + 232));

        *(v86 + 14) = v93;
        *(v86 + 22) = 2080;
        if (*(v85 + 24))
        {
          v94 = *(*(v0 + 256) + 16);
          v95 = *(v85 + 24);
        }

        else
        {
          v94 = 0x3E656E6F6E3CLL;
          v95 = 0xE600000000000000;
        }

        v102 = *(v0 + 376);
        v121 = *(v0 + 368);
        v126 = *(v0 + 384);
        v103 = *(v0 + 304);
        v114 = *(v0 + 296);
        v117 = *(v0 + 320);

        v104 = sub_2721FFD04(v94, v95, (v0 + 232));

        *(v86 + 24) = v104;
        *(v86 + 32) = 2080;

        v106 = MEMORY[0x2743C4C60](v105, MEMORY[0x277D837D0]);
        v108 = v107;

        v109 = sub_2721FFD04(v106, v108, (v0 + 232));

        *(v86 + 34) = v109;
        _os_log_impl(&dword_2721E4000, v83, v84, "[%s%s] %s, n-best [%s]", v86, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v87, -1, -1);
        MEMORY[0x2743C69C0](v86, -1, -1);

        (*(v103 + 8))(v117, v114);
        (*(v102 + 8))(v126, v121);
      }

      else
      {
        v97 = *(v0 + 376);
        v96 = *(v0 + 384);
        v98 = *(v0 + 368);
        v99 = *(v0 + 320);
        v100 = *(v0 + 296);
        v101 = *(v0 + 304);

        (*(v101 + 8))(v99, v100);
        (*(v97 + 8))(v96, v98);
      }

      goto LABEL_59;
    }
  }

  v40 = *(MEMORY[0x2743C44B0](v23) + 16);

  if (v40)
  {
    v42 = MEMORY[0x2743C44B0](v41);
    if (*(v42 + 16))
    {
      (*(*(v0 + 304) + 16))(*(v0 + 312), v42 + ((*(*(v0 + 304) + 80) + 32) & ~*(*(v0 + 304) + 80)), *(v0 + 296));

      sub_272376C1C();
      sub_2722AD74C(&qword_280882030, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      v20 = sub_272377A3C();
      v18 = v43;
      if (qword_28088CC00 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_21:
    v44 = sub_27237728C();
    sub_2721F08DC(v44, qword_28088CC08);

    v45 = sub_27237725C();
    v46 = sub_272377E7C();

    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 376);
    v49 = *(v0 + 384);
    v50 = *(v0 + 368);
    v51 = *(v0 + 304);
    v52 = *(v0 + 312);
    v125 = *(v0 + 296);
    if (v47)
    {
      v119 = *(v0 + 312);
      v53 = v20;
      v54 = swift_slowAlloc();
      v116 = v50;
      v55 = swift_slowAlloc();
      v127 = v55;
      *v54 = 136315138;
      v56 = sub_2721FFD04(v53, v18, &v127);
      v57 = v49;
      v58 = v56;

      *(v54 + 4) = v58;
      _os_log_impl(&dword_2721E4000, v45, v46, "[Partial] %s", v54, 0xCu);
      sub_2722039C8(v55);
      MEMORY[0x2743C69C0](v55, -1, -1);
      MEMORY[0x2743C69C0](v54, -1, -1);

      (*(v51 + 8))(v119, v125);
      (*(v48 + 8))(v57, v116);
    }

    else
    {

      (*(v51 + 8))(v52, v125);
      (*(v48 + 8))(v49, v50);
    }

    goto LABEL_59;
  }

  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
LABEL_59:
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = swift_task_alloc();
  *(v0 + 448) = v111;
  *v111 = v0;
  v111[1] = sub_2722A960C;
  v112 = *(v0 + 416);
  v113 = *(v0 + 392);

  return MEMORY[0x282200310](v113, 0, 0, v0 + 224, v112, AssociatedConformanceWitness);
}

uint64_t sub_2722AA48C()
{
  (*(v0[53] + 8))(v0[54], v0[52]);
  v1 = v0[28];
  if (qword_28088CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_27237728C();
  sub_2721F08DC(v2, qword_28088CC08);
  v3 = v1;
  v4 = sub_27237725C();
  v5 = sub_272377E7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2721E4000, v4, v5, "Error in second pass: %@", v6, 0xCu);
    sub_2721F40F0(v7, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v7, -1, -1);
    MEMORY[0x2743C69C0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_2722AA6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2721F07F4(a3, v23 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272377BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_2723778BC() + 32;

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

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

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

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2722AA96C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 112) = a1;
  v8 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();
  v9 = sub_2723773DC();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722AAAA8, 0, 0);
}

uint64_t sub_2722AAAA8()
{
  v1 = *(v0 + 112);
  if (v1 != 1.0)
  {
    sub_2722AAF70(v1);
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  sub_2723773CC();
  (*(v5 + 16))(v2, v3, v4);
  sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  sub_272377C6C();
  (*(v7 + 8))(v6, v8);
  sub_272377C7C();
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_2722AABF0;

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_2722AABF0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2722AADA0;
  }

  else
  {
    v2 = sub_2722AAD04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722AAD04()
{
  (*(v0[9] + 8))(v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2722AADA0()
{
  (*(v0[9] + 8))(v0[11], v0[8]);
  if (qword_28088CC00 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_27237728C();
  sub_2721F08DC(v2, qword_28088CC08);
  v3 = v1;
  v4 = sub_27237725C();
  v5 = sub_272377E8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2721E4000, v4, v5, "Error in second pass: %@", v7, 0xCu);
    sub_2721F40F0(v8, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v8, -1, -1);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

void sub_2722AAF70(float a1)
{
  v2 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v4 = [v1 int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 frameLength];
    v7 = [v2 format];
    v8 = [v7 channelCount];

    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x277D84F90];
      do
      {
        if (v6)
        {
          v12 = sub_272377B5C();
          *(v12 + 16) = v6;
          bzero((v12 + 32), 4 * v6);
        }

        else
        {
          v12 = v10;
        }

        vDSP_vflt16(*v5, 1, (v12 + 32), 1, v6);
        v17 = a1;

        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2721FF8B4(0, *(v12 + 16), 0, v12);
        }

        MEMORY[0x2743C6C10](v12 + 32, 1, &v17, v13 + 32, 1, v6);

        __C = 32766.0;
        __B = -32767.0;

        v14 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2721FF8B4(0, *(v13 + 2), 0, v13);
        }

        vDSP_vclip(v13 + 8, 1, &__B, &__C, v14 + 8, 1, v6);

        v11 = *v5++;
        vDSP_vfixr16(v14 + 8, 1, v11, 1, v6);

        --v9;
      }

      while (v9);
    }
  }
}

uint64_t sub_2722AB1B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_27237874C();
  sub_27237790C();
  v8 = sub_27237878C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_27237865C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2722AB564(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2722AB304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
  result = sub_27237819C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_2722AB564(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2722AB304(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2722AB6E4();
      goto LABEL_16;
    }

    sub_2722AB840(v8 + 1);
  }

  v10 = *v4;
  sub_27237874C();
  sub_27237790C();
  v11 = sub_27237878C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_27237865C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2723786AC();
  __break(1u);
}

void sub_2722AB6E4()
{
  v1 = v0;
  sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
  v2 = *v0;
  v3 = sub_27237818C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_2722AB840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
  result = sub_27237819C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_27237874C();

      sub_27237790C();
      result = sub_27237878C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2722ABA78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_27237745C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2721F065C(&qword_280882078, &qword_27237E490);
  v39 = v4;
  result = sub_2723783DC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2722AD74C(&qword_280882080, MEMORY[0x277CDCBE8], MEMORY[0x277CDCBF0]);
      result = sub_27237776C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2722ABE54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_27237745C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_272252468(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2722AC0D8();
      goto LABEL_7;
    }

    sub_2722ABA78(v17, a3 & 1);
    v22 = sub_272252468(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2722AC020(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2723786BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_2722AC020(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_27237745C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_2722AC0D8()
{
  v1 = v0;
  v33 = sub_27237745C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_280882078, &qword_27237E490);
  v3 = *v0;
  v4 = sub_2723783CC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

unint64_t sub_2722AC358()
{
  result = qword_280882738;
  if (!qword_280882738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882738);
  }

  return result;
}

uint64_t sub_2722AC3AC(uint64_t a1)
{
  v2 = type metadata accessor for VASpeechBiasData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2722AC408()
{
  result = qword_280882740;
  if (!qword_280882740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280882740);
  }

  return result;
}

uint64_t sub_2722AC478()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2722AC4B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2722AC508(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_272211DBC;

  return sub_2722A91AC(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_2722AC5C8()
{
  v1 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2722AC6B4()
{
  v2 = *(sub_2721F065C(&qword_280881F58, &unk_27237E2F0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_272219D80;

  return sub_2722AA96C(v4, v7, v8, v9, v5, v0 + v3, v6);
}

uint64_t sub_2722AC7D8(uint64_t a1)
{
  v2 = 0x6F69746174636944;
  v3 = sub_27237768C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 != *MEMORY[0x277CDCE70])
  {
    if (v7 == *MEMORY[0x277CDCE50])
    {
      return 0x6372616553626557;
    }

    if (v7 == *MEMORY[0x277CDCE10] || v7 == *MEMORY[0x277CDCE68])
    {
      return 0xD000000000000011;
    }

    if (v7 == *MEMORY[0x277CDCE38])
    {
      return 0x7463694469726953;
    }

    if (v7 != *MEMORY[0x277CDCE28] && v7 != *MEMORY[0x277CDCE20])
    {
      if (v7 == *MEMORY[0x277CDCE78])
      {
        return 0x69614D6563696F56;
      }

      if (v7 == *MEMORY[0x277CDCE18])
      {
        return 0xD000000000000011;
      }

      if (v7 == *MEMORY[0x277CDCE00])
      {
        return 0x696E6F6974706143;
      }

      if (v7 != *MEMORY[0x277CDCE08])
      {
        v2 = 0x43436C6C657053;
        if (v7 != *MEMORY[0x277CDCE58] && v7 != *MEMORY[0x277CDCE60])
        {
          if (v7 != *MEMORY[0x277CDCE48] && v7 != *MEMORY[0x277CDCE40] && v7 != *MEMORY[0x277CDCE30])
          {
            (*(v4 + 8))(v6, v3);
            return 0xD000000000000010;
          }

          return 0xD000000000000011;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_2722ACB00(uint64_t a1)
{
  v2 = sub_27237764C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2721F065C(&qword_280882770, &unk_272381E10);
    v9 = sub_2723781AC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2722AD74C(&qword_280882778, MEMORY[0x277CDCDB8], MEMORY[0x277CDCDC0]);
      v16 = sub_27237776C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2722AD74C(&qword_280882780, MEMORY[0x277CDCDB8], MEMORY[0x277CDCDC8]);
          v23 = sub_2723777DC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2722ACE20(uint64_t a1)
{
  v2 = sub_27237737C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2721F065C(&qword_280882060, &qword_27237E488);
    v9 = sub_2723781AC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_2722AD74C(&qword_280882068, MEMORY[0x277CDCB30], MEMORY[0x277CDCB38]);
      v15 = sub_27237776C();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_2722AD74C(&qword_280882070, MEMORY[0x277CDCB30], MEMORY[0x277CDCB40]);
          v23 = sub_2723777DC();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_2722AD144()
{
  result = qword_280882008;
  if (!qword_280882008)
  {
    sub_2721F214C(&qword_280881F50, &unk_272381B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882008);
  }

  return result;
}

uint64_t sub_2722AD1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2722AD234()
{
  result = qword_280882760;
  if (!qword_280882760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VATaskHintCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VATaskHintCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2722AD3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_272376DFC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2722AD4C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_272376DFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2722AD56C(uint64_t a1)
{
  sub_2721F3E38(319, &qword_280881708, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2721F3E38(319, &qword_280881710, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_272376DFC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_2722AD630(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2722AD644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2722AD68C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2722AD6F8()
{
  result = qword_280882768;
  if (!qword_280882768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882768);
  }

  return result;
}

uint64_t sub_2722AD74C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2722AD7A8()
{
  v1 = 1701736302;
  v2 = 0x6863656570536F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x7973736F6CLL;
  }

  if (*v0)
  {
    v1 = 0x73736563637573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2722AD818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2722AFD24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2722AD840(uint64_t a1)
{
  v2 = sub_2722ADED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD87C(uint64_t a1)
{
  v2 = sub_2722ADED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722AD8B8(uint64_t a1)
{
  v2 = sub_2722ADF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD8F4(uint64_t a1)
{
  v2 = sub_2722ADF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722AD930(uint64_t a1)
{
  v2 = sub_2722ADF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD96C(uint64_t a1)
{
  v2 = sub_2722ADF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722AD9A8(uint64_t a1)
{
  v2 = sub_2722AE020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AD9E4(uint64_t a1)
{
  v2 = sub_2722AE020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722ADA20(uint64_t a1)
{
  v2 = sub_2722ADFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722ADA5C(uint64_t a1)
{
  v2 = sub_2722ADFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VASingleEnrollmentStatus.encode(to:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882790, &qword_272381E20);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = sub_2721F065C(&qword_280882798, &qword_272381E28);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = sub_2721F065C(&qword_2808827A0, &qword_272381E30);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = sub_2721F065C(&qword_2808827A8, &qword_272381E38);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = sub_2721F065C(&qword_2808827B0, &qword_272381E40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  sub_27220300C(a1, a1[3]);
  sub_2722ADED0();
  sub_2723787CC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_2722ADF78();
      v18 = v27;
      sub_27237851C();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_2722ADF24();
      v18 = v30;
      sub_27237851C();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_2722ADFCC();
    v18 = v24;
    sub_27237851C();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_2722AE020();
  sub_27237851C();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_2722ADED0()
{
  result = qword_28088CF40;
  if (!qword_28088CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF40);
  }

  return result;
}

unint64_t sub_2722ADF24()
{
  result = qword_28088CF48;
  if (!qword_28088CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF48);
  }

  return result;
}

unint64_t sub_2722ADF78()
{
  result = qword_28088CF50;
  if (!qword_28088CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF50);
  }

  return result;
}

unint64_t sub_2722ADFCC()
{
  result = qword_28088CF58;
  if (!qword_28088CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF58);
  }

  return result;
}

unint64_t sub_2722AE020()
{
  result = qword_28088CF60;
  if (!qword_28088CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CF60);
  }

  return result;
}

uint64_t VASingleEnrollmentStatus.hashValue.getter()
{
  v1 = *v0;
  sub_27237874C();
  MEMORY[0x2743C58B0](v1);
  return sub_27237878C();
}

uint64_t VASingleEnrollmentStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = sub_2721F065C(&qword_2808827B8, &qword_272381E48);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v35 - v3;
  v4 = sub_2721F065C(&qword_2808827C0, &qword_272381E50);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v35 - v6;
  v41 = sub_2721F065C(&qword_2808827C8, &qword_272381E58);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v35 - v7;
  v9 = sub_2721F065C(&qword_2808827D0, &qword_272381E60);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = sub_2721F065C(&qword_2808827D8, &unk_272381E68);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  sub_27220300C(a1, v16);
  sub_2722ADED0();
  v17 = v48;
  sub_2723787AC();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_27237850C();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_27237824C();
      swift_allocError();
      v27 = v26;
      sub_2721F065C(&qword_280882600, &unk_2723810A0);
      *v27 = &type metadata for VASingleEnrollmentStatus;
      sub_27237842C();
      sub_27237823C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_2722ADFCC();
          v32 = v37;
          sub_27237841C();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_2722AE020();
          v28 = v37;
          sub_27237841C();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return sub_2722039C8(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_2722ADF78();
        v31 = v37;
        sub_27237841C();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return sub_2722039C8(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_2722ADF24();
        v33 = v37;
        sub_27237841C();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return sub_2722039C8(v49);
}

uint64_t VASingleEnrollmentData.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_272376E5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double VASingleEnrollmentData.embeddings.getter()
{
  type metadata accessor for VASingleEnrollmentData(0);

  return result;
}

uint64_t type metadata accessor for VASingleEnrollmentData(uint64_t a1)
{
  result = qword_28088D3F0;
  if (!qword_28088D3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VASingleEnrollmentData.keywordIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for VASingleEnrollmentData(0) + 24));

  return v1;
}

double VASingleEnrollmentData.debugAudioSamples.getter()
{
  type metadata accessor for VASingleEnrollmentData(0);

  return result;
}

uint64_t VASingleEnrollmentData.debugStartFrame.setter(uint64_t a1)
{
  result = type metadata accessor for VASingleEnrollmentData(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t VASingleEnrollmentData.debugEndFrame.setter(uint64_t a1)
{
  result = type metadata accessor for VASingleEnrollmentData(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t VASingleEnrollmentData.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VASingleEnrollmentData(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VASingleEnrollmentData.description.getter()
{
  sub_27237820C();
  MEMORY[0x2743C4AD0](540697705, 0xE400000000000000);
  sub_272376E5C();
  sub_2722B0200(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_27237862C();
  MEMORY[0x2743C4AD0](v1);

  MEMORY[0x2743C4AD0](0x646465626D65202CLL, 0xEE00203A73676E69);
  v2 = type metadata accessor for VASingleEnrollmentData(0);
  v3 = *(v0 + *(v2 + 20));
  v4 = sub_27237862C();
  MEMORY[0x2743C4AD0](v4);

  result = MEMORY[0x2743C4AD0](2127904, 0xE300000000000000);
  if (*(v3 + 16))
  {
    v6 = sub_27237862C();
    MEMORY[0x2743C4AD0](v6);

    MEMORY[0x2743C4AD0](0xD000000000000015, 0x800000027238D600);
    MEMORY[0x2743C4AD0](*(v0 + *(v2 + 24)), *(v0 + *(v2 + 24) + 8));
    MEMORY[0x2743C4AD0](0xD000000000000015, 0x800000027238D620);
    v7 = sub_27237862C();
    MEMORY[0x2743C4AD0](v7);

    MEMORY[0x2743C4AD0](0xD000000000000013, 0x800000027238D640);
    v8 = sub_27237862C();
    MEMORY[0x2743C4AD0](v8);

    MEMORY[0x2743C4AD0](0xD000000000000011, 0x800000027238D660);
    v9 = sub_27237862C();
    MEMORY[0x2743C4AD0](v9);

    MEMORY[0x2743C4AD0](0x737574617473202CLL, 0xEA0000000000203ALL);
    sub_27237836C();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_2722AED94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2722AEE4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2722AEEA8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x646E456775626564;
  if (v1 != 5)
  {
    v3 = 0x737574617473;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6174536775626564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E69646465626D65;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_2722AEF98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2722B0C34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2722AEFC0(uint64_t a1)
{
  v2 = sub_2722AFF6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722AEFFC(uint64_t a1)
{
  v2 = sub_2722AFF6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VASingleEnrollmentData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808827E0, &qword_272381E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_27220300C(a1, a1[3]);
  sub_2722AFF6C();
  sub_2723787CC();
  LOBYTE(v12) = 0;
  sub_272376E5C();
  sub_2722B0200(&qword_280881CD8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2723785DC();
  if (!v2)
  {
    v9 = type metadata accessor for VASingleEnrollmentData(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    sub_2721F065C(&qword_280881F28, &unk_272381E80);
    sub_2722B0014(&qword_2808827E8, &qword_2808827F0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_2723785DC();
    LOBYTE(v12) = 2;
    sub_27237858C();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    sub_2722B00A0(&qword_2808827F0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_27237857C();
    LOBYTE(v12) = 4;
    sub_2723785CC();
    LOBYTE(v12) = 5;
    sub_2723785CC();
    LOBYTE(v12) = *(v3 + v9[10]);
    HIBYTE(v11) = 6;
    sub_2722AFFC0();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VASingleEnrollmentData.hash(into:)(uint64_t a1)
{
  sub_272376E5C();
  sub_2722B0200(&qword_280882800, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_27237777C();
  v3 = type metadata accessor for VASingleEnrollmentData(0);
  sub_2722AFC84(a1, *(v1 + v3[5]));
  sub_27237790C();
  v4 = *(v1 + v3[7]);
  sub_27237876C();
  if (v4)
  {
    sub_2722AFC1C(a1, v4);
  }

  MEMORY[0x2743C58B0](*(v1 + v3[8]));
  MEMORY[0x2743C58B0](*(v1 + v3[9]));
  return MEMORY[0x2743C58B0](*(v1 + v3[10]));
}

uint64_t VASingleEnrollmentData.hashValue.getter()
{
  sub_27237874C();
  VASingleEnrollmentData.hash(into:)(v1);
  return sub_27237878C();
}

uint64_t VASingleEnrollmentData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_272376E5C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2721F065C(&qword_280882808, &qword_272381E90);
  v21 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v19 - v6;
  v8 = type metadata accessor for VASingleEnrollmentData(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27220300C(a1, a1[3]);
  sub_2722AFF6C();
  v24 = v7;
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v11 = v10;
  v13 = v21;
  v12 = v22;
  LOBYTE(v27) = 0;
  sub_2722B0200(&qword_280882810, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v23;
  sub_2723784FC();
  (*(v12 + 32))(v11, v14, v4);
  sub_2721F065C(&qword_280881F28, &unk_272381E80);
  v26 = 1;
  sub_2722B0014(&qword_280882818, &qword_280882820, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  sub_2723784FC();
  *(v11 + v8[5]) = v27;
  LOBYTE(v27) = 2;
  v23 = 0;
  v15 = sub_2723784AC();
  v16 = (v11 + v8[6]);
  *v16 = v15;
  v16[1] = v17;
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  v26 = 3;
  sub_2722B00A0(&qword_280882820, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  sub_27237848C();
  *(v11 + v8[7]) = v27;
  LOBYTE(v27) = 4;
  *(v11 + v8[8]) = sub_2723784EC();
  LOBYTE(v27) = 5;
  *(v11 + v8[9]) = sub_2723784EC();
  v26 = 6;
  sub_2722B010C();
  sub_2723784FC();
  (*(v13 + 8))(v24, v25);
  *(v11 + v8[10]) = v27;
  sub_272204F54(v11, v20);
  sub_2722039C8(a1);
  return sub_272204FB8(v11);
}

int *sub_2722AFA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a8;
  v18 = sub_272376E5C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  result = type metadata accessor for VASingleEnrollmentData(0);
  *(a9 + result[5]) = a2;
  v20 = (a9 + result[6]);
  *v20 = a3;
  v20[1] = a4;
  *(a9 + result[7]) = a5;
  *(a9 + result[8]) = a6;
  *(a9 + result[9]) = a7;
  *(a9 + result[10]) = v17;
  return result;
}

uint64_t sub_2722AFB74()
{
  sub_27237874C();
  VASingleEnrollmentData.hash(into:)(v1);
  return sub_27237878C();
}

uint64_t sub_2722AFBB8(uint64_t a1)
{
  sub_27237874C();
  VASingleEnrollmentData.hash(into:)(v2);
  return sub_27237878C();
}

uint64_t sub_2722AFC10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_2722AFC1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2743C58B0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_27237877C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2722AFC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2743C58B0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x2743C58B0](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 32;
        do
        {
          v9 += 4;
          result = sub_27237877C();
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_2722AFD24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863656570536F6ELL && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7973736F6CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL _s12VoiceActions22VASingleEnrollmentDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_272376E2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for VASingleEnrollmentData(0);
  if (!sub_2722AED94(*(a1 + v4[5]), *(a2 + v4[5])))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (!v12 || (sub_2722AEE4C(v11, v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  return 0;
}

unint64_t sub_2722AFF6C()
{
  result = qword_28088CF68[0];
  if (!qword_28088CF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CF68);
  }

  return result;
}

unint64_t sub_2722AFFC0()
{
  result = qword_2808827F8;
  if (!qword_2808827F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808827F8);
  }

  return result;
}

uint64_t sub_2722B0014(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280881F28, &unk_272381E80);
    sub_2722B00A0(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2722B00A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280881858, &unk_27237C260);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2722B010C()
{
  result = qword_280882828;
  if (!qword_280882828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882828);
  }

  return result;
}

unint64_t sub_2722B0164()
{
  result = qword_280882830;
  if (!qword_280882830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882830);
  }

  return result;
}

uint64_t sub_2722B0200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2722B026C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2722B033C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376E5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2722B03F4(uint64_t a1)
{
  sub_272376E5C();
  if (v1 <= 0x3F)
  {
    sub_2722B04E4(319, &qword_280882840, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2722B04E4(319, &qword_280882848, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2722B04E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2721F214C(&qword_280881858, &unk_27237C260);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for VAEnrollmentProgress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VAEnrollmentProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VAEnrollmentProgress(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2722B0768()
{
  result = qword_28088D900[0];
  if (!qword_28088D900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088D900);
  }

  return result;
}

unint64_t sub_2722B07C0()
{
  result = qword_28088DB10[0];
  if (!qword_28088DB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DB10);
  }

  return result;
}

unint64_t sub_2722B0818()
{
  result = qword_28088DC20;
  if (!qword_28088DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DC20);
  }

  return result;
}

unint64_t sub_2722B0870()
{
  result = qword_28088DC28[0];
  if (!qword_28088DC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DC28);
  }

  return result;
}

unint64_t sub_2722B08C8()
{
  result = qword_28088DCB0;
  if (!qword_28088DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DCB0);
  }

  return result;
}

unint64_t sub_2722B0920()
{
  result = qword_28088DCB8[0];
  if (!qword_28088DCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DCB8);
  }

  return result;
}

unint64_t sub_2722B0978()
{
  result = qword_28088DD40;
  if (!qword_28088DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DD40);
  }

  return result;
}

unint64_t sub_2722B09D0()
{
  result = qword_28088DD48[0];
  if (!qword_28088DD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DD48);
  }

  return result;
}

unint64_t sub_2722B0A28()
{
  result = qword_28088DDD0;
  if (!qword_28088DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DDD0);
  }

  return result;
}

unint64_t sub_2722B0A80()
{
  result = qword_28088DDD8[0];
  if (!qword_28088DDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DDD8);
  }

  return result;
}

unint64_t sub_2722B0AD8()
{
  result = qword_28088DE60;
  if (!qword_28088DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DE60);
  }

  return result;
}

unint64_t sub_2722B0B30()
{
  result = qword_28088DE68[0];
  if (!qword_28088DE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DE68);
  }

  return result;
}

unint64_t sub_2722B0B88()
{
  result = qword_28088DEF0;
  if (!qword_28088DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088DEF0);
  }

  return result;
}

unint64_t sub_2722B0BE0()
{
  result = qword_28088DEF8[0];
  if (!qword_28088DEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088DEF8);
  }

  return result;
}

uint64_t sub_2722B0C34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEA00000000007367 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238D680 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238D6A0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174536775626564 && a2 == 0xEF656D6172467472 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E456775626564 && a2 == 0xED0000656D617246 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_2722B0F34()
{
  v0 = sub_272291FE0(&unk_28818C7F0);
  swift_arrayDestroy();
  return v0;
}

id sub_2722B0F7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000027238CEB0 == a2;
  if (v3 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 112))();
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238CED0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 136))();
  }

  else if (a1 == 0x75615F7475706E69 && a2 == 0xEF6E656C5F6F6964 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x800000027238CEF0 != a2) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*v2 + 184))();
  }

  v7 = v6;
  v8 = [objc_opt_self() featureValueWithMultiArray_];

  return v8;
}

uint64_t sub_2722B11E4()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B1338(void *a1)
{
  swift_allocObject();
  v2 = sub_2722B2584(a1);

  return v2;
}

void sub_2722B1380()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_272376D0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2722B1478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2722B1588(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B1648, 0, 0);
}

uint64_t sub_2722B1648()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2722B1778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B1830(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722B18F8;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B18F8(uint64_t a1)
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
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B1A44, 0, 0);
  }
}

uint64_t sub_2722B1A44()
{
  v1 = *(v0 + 24);
  type metadata accessor for aa_verifier_125141826_nocrop();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B1AB8(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B1B44(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_verifier_125141826_nocropOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2722B1C1C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B1C40, 0, 0);
}

uint64_t sub_2722B1C40()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2722B1CE0;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_2722B1CE0(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_2722B1E2C, 0, 0);
  }
}

uint64_t sub_2722B1E2C()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_verifier_125141826_nocropOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B1EA0(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for aa_verifier_125141826_nocropInput();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_2722B1F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v30 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v37 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = *(v5 + 16);
  v34 = &v30 - v18;
  v20(&v30 - v18, v31, v4);
  v20(v17, v32, v4);
  v20(v14, v33, v4);
  v20(v11, v35, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v20(v8, v19, v4);
  sub_272292148();
  v35 = sub_272377E5C();
  v20(v8, v37, v4);
  v33 = sub_272377E5C();
  v21 = v30;
  v20(v8, v30, v4);
  v32 = sub_272377E5C();
  v20(v8, v11, v4);
  v22 = sub_272377E5C();
  v23 = *(v5 + 8);
  v23(v11, v4);
  v23(v21, v4);
  v23(v37, v4);
  v23(v34, v4);
  type metadata accessor for aa_verifier_125141826_nocropInput();
  v24 = swift_allocObject();
  v25 = v36;
  v26 = v32;
  v27 = v33;
  v24[2] = v35;
  v24[3] = v27;
  v24[4] = v26;
  v24[5] = v22;
  v28 = (*(*v25 + 136))();

  return v28;
}

void sub_2722B22C0(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_verifier_125141826_nocropOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_2722B2584(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

uint64_t sub_2722B26D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B2708(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for aa_verifier_125141826_nocrop();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

uint64_t sub_2722B2870()
{
  v0 = sub_272291FE0(&unk_28818C8A8);
  sub_272203A70(&unk_28818C8C8);
  return v0;
}

id sub_2722B28AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_2722B2A80()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B2BD4(void *a1)
{
  swift_allocObject();
  v2 = sub_2722B3C64(a1);

  return v2;
}

void sub_2722B2C1C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_272376D0C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2722B2D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2722B2E24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B2EE4, 0, 0);
}

uint64_t sub_2722B2EE4()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2722B3014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B30CC(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722B3194;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B3194(uint64_t a1)
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
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B32E0, 0, 0);
  }
}

uint64_t sub_2722B32E0()
{
  v1 = *(v0 + 24);
  type metadata accessor for aa_encoder_125141826_nocrop();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B3354(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B33E0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_encoder_125141826_nocropOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2722B34B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B34DC, 0, 0);
}

uint64_t sub_2722B34DC()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2722B357C;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_2722B357C(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_2722B36C8, 0, 0);
  }
}

uint64_t sub_2722B36C8()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_encoder_125141826_nocropOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B373C(void *a1)
{
  type metadata accessor for aa_encoder_125141826_nocropInput();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_2722B37D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v11(v8, v10, v4);
  sub_272292148();
  v12 = sub_272377E5C();
  (*(v5 + 8))(v10, v4);
  type metadata accessor for aa_encoder_125141826_nocropInput();
  *(swift_allocObject() + 16) = v12;
  v13 = (*(*v2 + 136))();

  return v13;
}

void sub_2722B39A0(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_encoder_125141826_nocropOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_2722B3C64(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

uint64_t sub_2722B3DC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B3DF8(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for aa_encoder_125141826_nocrop();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

uint64_t sub_2722B3F74()
{
  v0 = sub_272291FE0(&unk_28818C940);
  swift_arrayDestroy();
  return v0;
}

id sub_2722B3FBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000027238D8B0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 96))();
  }

  else
  {
    if ((a1 != 0x62616C5F74786574 || a2 != 0xEB00000000736C65) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v5 = (*(*v2 + 120))();
  }

  v6 = v5;
  v7 = [objc_opt_self() featureValueWithMultiArray_];

  return v7;
}

uint64_t sub_2722B4168(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2722B41A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2722B41E8()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B433C(void *a1)
{
  swift_allocObject();
  v2 = sub_2722B5600(a1);

  return v2;
}

void sub_2722B4384()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_2722B4458(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_2722B4618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2722B4728(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B47E8, 0, 0);
}

uint64_t sub_2722B47E8()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2722B4918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B49D0(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722B4A98;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B4A98(uint64_t a1)
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
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B4BE4, 0, 0);
  }
}

uint64_t sub_2722B4BE4(uint64_t a1)
{
  v2 = *(v1 + 24);
  type metadata accessor for at_verifier_rdr_125141826();
  *(swift_allocObject() + 16) = v2;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2722B4C58(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B4CE4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for at_verifier_rdr_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2722B4DBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B4DE0, 0, 0);
}

uint64_t sub_2722B4DE0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2722B4E80;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_2722B4E80(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_2722B4FCC, 0, 0);
  }
}

uint64_t sub_2722B4FCC()
{
  v1 = *(v0 + 48);
  type metadata accessor for at_verifier_rdr_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B5040(void *a1, void *a2)
{
  type metadata accessor for at_verifier_rdr_125141826Input();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*v2 + 136);
  v7 = a1;
  v8 = a2;
  v9 = v6(v5);

  return v9;
}

uint64_t sub_2722B50E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v20 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  v14 = *(v5 + 16);
  v14(v20 - v12, a1, v4);
  v14(v11, a2, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v14(v8, v13, v4);
  sub_272292148();
  v20[0] = sub_272377E5C();
  v14(v8, v11, v4);
  v15 = sub_272377E5C();
  v16 = *(v5 + 8);
  v16(v11, v4);
  v16(v13, v4);
  type metadata accessor for at_verifier_rdr_125141826Input();
  v17 = swift_allocObject();
  *(v17 + 16) = v20[0];
  *(v17 + 24) = v15;
  v18 = (*(*v20[1] + 136))();

  return v18;
}

void sub_2722B533C(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for at_verifier_rdr_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_2722B5600(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

uint64_t sub_2722B574C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B5784(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for at_verifier_rdr_125141826();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

uint64_t static VAA2TBuilder.buildSpotterForAudioToTextV2(delegate:vadGated:jsonConfigFilename:computeUnits:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = type metadata accessor for VAConfiguration();
  v12 = static VAConfiguration.buildForFlexibleA2Tv2()();
  if (a4)
  {
    v13 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a3, a4);
    if (v5)
    {
      goto LABEL_5;
    }

    v14 = v13;

    v12 = v14;
  }

  v15 = type metadata accessor for VAA2TEncoderV2();
  v39[0] = v10;
  v11 = v15;
  v16 = VAA2TEncoderV2.__allocating_init(computeUnits:)(v39);
  if (!v5)
  {
    v36 = a1;
    v42 = v16;
    v17 = type metadata accessor for VAA2TVerifierV2();
    LOBYTE(v37[0]) = v10;
    v18 = type metadata accessor for VAMemoryBackedLexicon();
    v19 = sub_27223B49C();
    v40 = v18;
    v41 = &off_28817E268;
    *v39 = v19;
    v20 = sub_272270830(v37, v39);
    type metadata accessor for VAResultGeneratorVerifier(0);
    v40 = v17;
    v41 = &protocol witness table for VAA2TVerifierV2;
    *v39 = v20;

    v21 = v12;
    v22 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(v39, v21);
    type metadata accessor for VASilenceModel();
    v23 = (*((*MEMORY[0x277D85000] & *v21) + 0xE8))();
    v25 = v24;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v39);
    LOBYTE(v37[0]) = v39[0];
    v26 = sub_27228DC9C(v23, v25, v37);
    type metadata accessor for VAFeatureExtract();
    v27 = VAFeatureExtract.__allocating_init()();
    type metadata accessor for VAFeatureExtractingEncoder();
    v40 = v15;
    v41 = &protocol witness table for VAA2TEncoderV2;
    *v39 = v42;
    v28 = v21;

    v29 = v27;

    v30 = sub_2721F7EE4();
    v32 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v39, v29, v26, v28, v30 & 1);
    v33 = type metadata accessor for VAStrategyProviderPassthrough();
    v35 = v29;
    v34 = sub_2722043D8();
    type metadata accessor for VAFlexibleKeywordSpotter();
    v40 = v33;
    v41 = &protocol witness table for VAStrategyProviderPassthrough;
    v38 = 0;
    *v39 = v34;
    memset(v37, 0, sizeof(v37));
    swift_unknownObjectRetain();

    v11 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v36, a2 & 1, v22, v32, v28, v39, v37);

    return v11;
  }

LABEL_5:

  return v11;
}

uint64_t sub_2722B5CC0()
{
  v0 = sub_272291FE0(&unk_28818C9D8);
  sub_272203A70(&unk_28818C9F8);
  return v0;
}

id sub_2722B5CFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_2722B5EE8()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

void sub_2722B5F68(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_2723777FC();
  v5 = [v3 featureValueForName_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = [v5 multiArrayValue];

  if (!v6)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_2722B5FE8()
{
  v1 = (*(*v0 + 104))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722B613C(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_2722B737C(a1, a2);

  return v4;
}

void sub_2722B6198()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_2722B626C(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_2722B642C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2722B653C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722B65FC, 0, 0);
}

uint64_t sub_2722B65FC()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2722B672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722B67E4(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722B68AC;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722B68AC(uint64_t a1)
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
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722B69F8, 0, 0);
  }
}

uint64_t sub_2722B69F8()
{
  v1 = *(v0 + 24);
  type metadata accessor for all_audio2audio_encoder_ig2p();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B6A6C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722B6AF8(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for all_audio2audio_encoder_ig2pOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2722B6BD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722B6BF4, 0, 0);
}

uint64_t sub_2722B6BF4()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2722B6C94;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_2722B6C94(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_2722B6DE0, 0, 0);
  }
}

uint64_t sub_2722B6DE0()
{
  v1 = *(v0 + 48);
  type metadata accessor for all_audio2audio_encoder_ig2pOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722B6E54(void *a1)
{
  type metadata accessor for all_audio2audio_encoder_ig2pInput();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_2722B6EE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v11(v8, v10, v4);
  sub_272292148();
  v12 = sub_272377E5C();
  (*(v5 + 8))(v10, v4);
  type metadata accessor for all_audio2audio_encoder_ig2pInput();
  *(swift_allocObject() + 16) = v12;
  v13 = (*(*v2 + 136))();

  return v13;
}

void sub_2722B70B8(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for all_audio2audio_encoder_ig2pOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_2722B737C(uint64_t a1, uint64_t a2)
{
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x343834315F726176;
  *(inited + 16) = xmmword_27237AF90;
  *(inited + 40) = 0xE800000000000000;
  v6 = objc_opt_self();
  v7 = [v6 featureValueWithMultiArray_];
  v8 = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x3836315F726176;
  *(inited + 88) = 0xE700000000000000;
  v9 = [v6 featureValueWithMultiArray_];
  *(inited + 120) = v8;
  *(inited + 96) = v9;
  v10 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v10);
  return v2;
}

uint64_t sub_2722B7530()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722B7568(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for all_audio2audio_encoder_ig2p();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

uint64_t sub_2722B7660()
{
  v0 = swift_allocObject();
  sub_2722B7698();
  return v0;
}

void sub_2722B7698()
{
  v1 = v0;
  v2 = sub_2723769FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *sub_2722B9360();
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1[2] = v6;
  v7 = sub_2722B9344();
  if (*v7 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = ceilf(log2f((2 * *v7)));
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v8 >= 1.8447e19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v1[4] = 0;
  v1[3] = v8;
  (*(v3 + 104))(v5, *MEMORY[0x277D83108], v2);
  type metadata accessor for DSPSplitComplex();
  sub_2721F065C(&qword_280881EE8, &unk_27237E090);
  swift_allocObject();
  v9 = sub_2723769DC();
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    v1[4] = v10;

    return;
  }

LABEL_13:
  __break(1u);
}

float *sub_2722B7868(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(realp + 2);
  if (v3 < 0)
  {
    goto LABEL_31;
  }

  if (v3)
  {
    v5 = sub_272377B5C();
    *(v5 + 16) = v3;
    bzero((v5 + 32), 4 * v3);
    v6 = *(a1 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v6 = *(a1 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v6 > *(v5 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = 0;
  if (v6 < 8)
  {
    goto LABEL_12;
  }

  if ((v5 - a1) < 0x20)
  {
    goto LABEL_12;
  }

  v7 = v6 & 0x7FFFFFFFFFFFFFF8;
  v8 = (a1 + 48);
  v9 = (v5 + 48);
  v10 = v6 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v11 = *v8;
    *(v9 - 1) = *(v8 - 1);
    *v9 = v11;
    v8 += 2;
    v9 += 2;
    v10 -= 8;
  }

  while (v10);
  if (v6 != v7)
  {
LABEL_12:
    v12 = v6 - v7;
    v13 = 4 * v7 + 32;
    v14 = (v5 + v13);
    v15 = (a1 + v13);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v12;
    }

    while (v12);
  }

LABEL_14:
  if (v3)
  {
    v17 = sub_272377B5C();
    *(v17 + 16) = v3;
    bzero((v17 + 32), 4 * v3);
    v18 = sub_272377B5C();
    *(v18 + 16) = v3;
    bzero((v18 + 32), 4 * v3);
    v19 = sub_272377B5C();
    *(v19 + 16) = v3;
    bzero((v19 + 32), 4 * v3);
    v20 = sub_272377B5C();
    *(v20 + 16) = v3;
    bzero((v20 + 32), 4 * v3);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
  }

  v30.realp = (v18 + 32);
  v30.imagp = (v19 + 32);
  if (!(*(*realp + 104))())
  {
LABEL_34:
    __break(1u);
  }

  sub_2723769EC();

  v21 = *(v20 + 16);
  __A = v30;
  vDSP_zvabs(&__A, 1, (v20 + 32), 1, v21);
  realp = MEMORY[0x277D84F90];
  if (v3)
  {
    v22 = sub_272377B5C();
    *(v22 + 16) = v3;
    bzero((v22 + 32), 4 * v3);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  MEMORY[0x2743C6BD0](v20 + 32, 1, v20 + 32, 1, v22 + 32, 1, v3);

  v23 = *(v22 + 16);
  if (!v23)
  {

    if (*(realp + 2))
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v30.realp = realp;
  sub_2722005AC(0, v23, 0);
  realp = v30.realp;
  v24 = *(v30.realp + 2);
  v25 = 32;
  v2 = 0.25;
  do
  {
    v26 = *(v22 + v25);
    v30.realp = realp;
    v27 = *(realp + 3);
    if (v24 >= v27 >> 1)
    {
      sub_2722005AC((v27 > 1), v24 + 1, 1);
      realp = v30.realp;
    }

    *(realp + 2) = v24 + 1;
    realp[v24 + 8] = v26 * 0.25;
    v25 += 4;
    ++v24;
    --v23;
  }

  while (v23);

  if (!*(realp + 2))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_27:
  v2 = realp[8];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_32:
    realp = sub_2722002AC(realp);
  }

  realp[8] = v2 * 0.5;

  return realp;
}

uint64_t sub_2722B7C4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2722B7CE0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

void sub_2722B7D28(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v8 = v1[17];
  v7 = v1[18];
  sub_2722B7DB0(v3, v4, v5, v6, v8, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
}

double sub_2722B7DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return result;
}

void sub_2722B7DF4(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v9 = a1[1];
  *(v1 + 13) = *a1;
  *(v1 + 15) = v9;
  *(v1 + 17) = a1[2];
  sub_2722706B8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2722B7EA4()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 72)) + 0x88))();
  v3 = (*((*v1 & *v2) + 0x100))();

  return v3;
}

uint64_t VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v11 = swift_allocObject();
  *(v11 + 104) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 56) = a2;
  sub_27221629C(a1, v11 + 16);
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  *(v11 + 80) = -1;

  v12 = a4;
  v13 = a2;
  if (a5)
  {
    v14 = sub_272323818();
    v15 = sub_272323820();
    v16 = sub_272241B00();
    sub_272323828(v14, v15, v16, v29);
    v27 = v29[0];
    v28 = v29[1];
    v17 = v30;
    v18 = v31;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  swift_beginAccess();
  v19 = *(v11 + 104);
  v20 = *(v11 + 112);
  v21 = *(v11 + 120);
  v22 = *(v11 + 128);
  v23 = *(v11 + 136);
  v24 = *(v11 + 144);
  *(v11 + 104) = v27;
  *(v11 + 120) = v28;
  *(v11 + 136) = v17;
  *(v11 + 144) = v18;
  sub_2722706B8(v19, v20, v21, v22, v23, v24);
  v25 = sub_2722591B0();
  (*(*v25 + 296))();
  sub_2722039C8(a1);
  if (v5)
  {
  }

  return v25;
}

uint64_t VAFeatureExtractingEncoder.init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 56) = a2;
  sub_27221629C(a1, v5 + 16);
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = -1;

  v12 = a4;
  v13 = a2;
  if (a5)
  {
    v14 = sub_272323818();
    v15 = sub_272323820();
    v16 = sub_272241B00();
    sub_272323828(v14, v15, v16, v29);
    v27 = v29[0];
    v28 = v29[1];
    v17 = v30;
    v18 = v31;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  swift_beginAccess();
  v19 = *(v5 + 104);
  v20 = *(v5 + 112);
  v21 = *(v5 + 120);
  v22 = *(v5 + 128);
  v23 = *(v5 + 136);
  v24 = *(v5 + 144);
  *(v5 + 104) = v27;
  *(v5 + 120) = v28;
  *(v5 + 136) = v17;
  *(v5 + 144) = v18;
  sub_2722706B8(v19, v20, v21, v22, v23, v24);
  v25 = sub_2722591B0();
  (*(*v25 + 296))();
  sub_2722039C8(a1);
  if (v6)
  {
  }

  return v25;
}

void sub_2722B828C()
{
  v2 = v0;
  type metadata accessor for VACircularMatrixBuffer();
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & **(v0 + 72)) + 0x88);
  v5 = v4();
  v6 = (*((*v3 & *v5) + 0x178))();

  v7 = v4();
  v8 = (*((*v3 & *v7) + 0x148))();

  v9 = sub_272302780(v6, v8);
  v10 = (*(*v2 + 216))(v9);
  if (v2[8])
  {
    v11 = (v4)(v10);
    v12 = (*((*MEMORY[0x277D85000] & *v11) + 0x148))();

    v13 = sub_272302780(66, v12);
    (*(*v2 + 240))(v13);
  }

  v14 = *(*v2 + 192);
  v15 = v14(0);
  v16 = (v4)(v15);
  v17 = (*((*MEMORY[0x277D85000] & *v16) + 0x118))();

  if (v17 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v17)
  {
    v18 = sub_272377B5C();
    *(v18 + 16) = v17;
    bzero((v18 + 32), 4 * v17);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = v4();
  v20 = (*((*MEMORY[0x277D85000] & *v19) + 0x178))();

  if (v20 < 0)
  {
    goto LABEL_14;
  }

  if (v20)
  {
    while (1)
    {
      (*(*v2 + 312))(v18, 0);
      if (v1)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v14(0);
  }
}

void sub_2722B86DC(uint64_t a1, int a2)
{
  v4 = v3;
  v5 = v2;
  v8 = ((*v2)[26])();
  if (!v8)
  {
    sub_2722032B4();
    swift_allocError();
    *v23 = 0xD000000000000035;
    v23[1] = 0x800000027238DB20;
    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = (*v2)[23];
  if (v10() < 0)
  {
    v24 = 0x800000027238DBD0;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD00000000000002ALL;
LABEL_15:
    *v25 = v26;
    v25[1] = v24;
    swift_willThrow();
LABEL_16:

    return;
  }

  LODWORD(v48) = a2;
  v11 = MEMORY[0x277D85000];
  v45 = *((*MEMORY[0x277D85000] & *v2[9]) + 0x88);
  v12 = v45();
  v13 = (*((*v11 & *v12) + 0x118))();

  if (*(a1 + 16) != v13)
  {
    v24 = 0x800000027238DB60;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD000000000000033;
    goto LABEL_15;
  }

  v14 = ((*v5)[25])(v46);
  if (__OFADD__(*v15, 1))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  ++*v15;
  v14(v46, 0);
  v16 = (*((*MEMORY[0x277D85000] & *v5[7]) + 0x170))(a1);
  v17 = v5[8];
  if (v17)
  {
    v18 = ((*v5)[29])();
    if (v18)
    {
      (*(*v18 + 168))(v16);
    }
  }

  ((*v5)[32])(v47);
  if (v47[4])
  {
    v44 = v17;
    sub_2722B90A4(v47);
    v19 = ((*v5)[34])(v46);
    if (!*(v20 + 32))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v21 = v19;
    v22 = sub_272323A58(v16);
    if (v3)
    {
      v21(v46, 1);

      return;
    }

    v27 = v22;

    v21(v46, 0);
    v16 = v27;
    v17 = v44;
  }

  (*(*v9 + 168))(v16);

  if (v48 != 2)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v29 = (v10)(v28);
  v30 = v45();
  v31 = (*((*MEMORY[0x277D85000] & *v30) + 0x160))();

  if (!v31)
  {
    goto LABEL_33;
  }

  if (v29 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_34;
  }

  if (v29 % v31)
  {
LABEL_23:
    v32 = (*(*v9 + 176))();

    type metadata accessor for VAFeatureExtractingEncoderOutput();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    *(v33 + 24) = v32;
    return;
  }

LABEL_25:
  v34 = (*(*v9 + 176))();
  if (!v17)
  {
LABEL_30:

    v24 = 0x800000027238DBA0;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD000000000000024;
    goto LABEL_15;
  }

  v35 = (*v5)[29];

  v37 = v35(v36);
  if (!v37)
  {

    goto LABEL_30;
  }

  (*(*v37 + 176))();
  v38 = (*(*v17 + 128))();
  if (v4)
  {

    goto LABEL_16;
  }

  v48 = v38;

  v40 = v5[5];
  v39 = v5[6];
  sub_27220300C(v5 + 2, v40);
  v41 = (v39[1])(v34, v40, v39);

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  v43 = v48;
  *(v42 + 24) = v34;
  *(v42 + 32) = v43;
  *(v42 + 40) = v41;
}

uint64_t VAFeatureExtractingEncoderOutput.__allocating_init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

void sub_2722B8F0C()
{
  sub_2722039C8((v0 + 16));

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);

  sub_2722706B8(v1, v2, v3, v4, v5, v6);
}

uint64_t VAFeatureExtractingEncoder.deinit()
{
  v0 = VAAudioEncoderModel.deinit();
  sub_2722039C8((v0 + 16));

  sub_2722706B8(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  return v0;
}

uint64_t VAFeatureExtractingEncoder.__deallocating_deinit()
{
  VAFeatureExtractingEncoder.deinit();

  return swift_deallocClassInstance();
}

uint64_t VAFeatureExtractingEncoderOutput.init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_2722B90A4(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882850, &qword_272382990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *VAFeatureExtractingEncoderOutput.deinit()
{

  return v0;
}

uint64_t VAFeatureExtractingEncoderOutput.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2722B92E8()
{
  sub_27221982C(0, &qword_280882130, 0x277D86200);
  result = OS_os_log.init(category:)(0xD000000000000010, 0x800000027238E3B0);
  qword_280893AB8 = result;
  return result;
}

uint64_t *sub_2722B9360()
{
  if (qword_28088DF88 != -1)
  {
    swift_once();
  }

  return &qword_280893AC0;
}

id FeatureExtract.init(config:)(void *a1)
{
  v2 = v1;
  v45 = a1;
  v44 = sub_272377EDC();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_272377ECC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2723776EC();
  MEMORY[0x28223BE20](v6 - 8);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  v9 = *sub_272376ECC();
  v46 = v8;
  *&v2[v8] = v9;
  v37[3] = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer] = v9;
  v10 = MEMORY[0x277D84F90];
  v37[4] = OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer] = MEMORY[0x277D84F90];
  v37[5] = OBJC_IVAR___FeatureExtractObjc_spliceBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBuffer] = v10;
  v37[6] = OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer;
  *&v2[OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer] = v10;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_frameCounter] = 0;
  v11 = OBJC_IVAR___FeatureExtractObjc_fftCalculator;
  type metadata accessor for FFTCalculator();
  swift_retain_n();
  v12 = sub_2722B7660();
  v37[2] = v11;
  *&v2[v11] = v12;
  v13 = sub_272377B5C();
  *(v13 + 16) = 40;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  v37[1] = OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum;
  *&v2[OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum] = v13;
  *&v2[OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount] = 0;
  v47 = OBJC_IVAR___FeatureExtractObjc_serialWorkQueue;
  sub_27221982C(0, &qword_280881910, 0x277D85C78);
  v43 = "nBuffer";
  sub_2723776DC();
  v50 = v10;
  v40 = sub_2722C2C10(&qword_280881918, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v39 = sub_2721F065C(&qword_280881920, &qword_27237C500);
  v41 = sub_2722C1724(&qword_280881928, &qword_280881920, &qword_27237C500);
  sub_27237815C();
  v14 = *MEMORY[0x277D85260];
  v15 = *(v48 + 104);
  v48 += 104;
  v38 = v4;
  v16 = v44;
  v15(v4, v14, v44);
  *&v2[v47] = sub_272377F0C();
  v17 = OBJC_IVAR___FeatureExtractObjc_stateAccessQueue;
  v43 = "FeatureExtractSerialQueue";
  sub_2723776CC();
  v50 = MEMORY[0x277D84F90];
  sub_27237815C();
  v18 = v16;
  v19 = v17;
  v15(v38, v14, v18);
  *&v2[v17] = sub_272377F0C();
  v20 = OBJC_IVAR___FeatureExtractObjc_dataAvailableSem;
  *&v2[v20] = dispatch_semaphore_create(0);
  v21 = OBJC_IVAR___FeatureExtractObjc_allProcessedAfterStopSem;
  *&v2[v21] = dispatch_semaphore_create(0);
  v2[OBJC_IVAR___FeatureExtractObjc_stopSignaled] = 0;
  v22 = &v2[OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable];
  *v22 = 0;
  v22[1] = 0;
  v2[OBJC_IVAR___FeatureExtractObjc_isRunning] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_spliceBufferLength] = 7;
  *&v2[OBJC_IVAR___FeatureExtractObjc_splicedVectorDim] = 280;
  *&v2[OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer] = 0;
  *&v2[OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex] = 0;
  v23 = OBJC_IVAR___FeatureExtractObjc_frameDuration;
  *&v2[OBJC_IVAR___FeatureExtractObjc_frameDuration] = 1022739087;
  v2[OBJC_IVAR___FeatureExtractObjc_streamingMode] = 1;
  v24 = OBJC_IVAR___FeatureExtractObjc_config;
  v25 = v45;
  *&v2[OBJC_IVAR___FeatureExtractObjc_config] = v45;
  type metadata accessor for NeuralNet();
  v26 = v25;
  v27 = sub_27225A534(v26);
  if (v27)
  {
    *&v2[OBJC_IVAR___FeatureExtractObjc_nn] = v27;
    v28 = v46;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(*&v2[v28] + 16) < 48000 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2722374C0(isUniquelyReferenced_nonNull_native, 48000, 1);
    }

    v30 = swift_endAccess();
    v31 = MEMORY[0x277D85000];
    v32 = (*((*MEMORY[0x277D85000] & *v26) + 0x90))(v30);
    v33 = (*((*v31 & *v32) + 0xE8))();

    *&v2[v23] = (v33 * 160.0) / 16000.0;
    v34 = type metadata accessor for FeatureExtract();
    v49.receiver = v2;
    v49.super_class = v34;
    v35 = objc_msgSendSuper2(&v49, sel_init);
  }

  else
  {

    sub_272273524(*v22, v22[1]);
    type metadata accessor for FeatureExtract();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v35;
}

uint64_t sub_2722B9B28(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v4 = *(v2 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  v5 = *(v2 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_272273524(v4, v5);
}

void sub_2722B9C18(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___FeatureExtractObjc_config);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x90);
  v6 = v3;
  v7 = v5();

  (*((*v4 & *v7) + 0xA8))(a1);
}

uint64_t sub_2722B9E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_2723776AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2723776EC();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR___FeatureExtractObjc_serialWorkQueue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = ObjectType;
  aBlock[4] = sub_2722C0EAC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2722454D0;
  aBlock[3] = &unk_28818D358;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  sub_2723776CC();
  v20 = MEMORY[0x277D84F90];
  sub_2722C2C10(&qword_280882928, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2721F065C(&qword_280882930, &qword_272382AD8);
  sub_2722C1724(&qword_280882938, &qword_280882930, &qword_272382AD8);
  sub_27237815C();
  MEMORY[0x2743C5050](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_2722BA0E8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = v6[3];
  v8 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex;
  v9 = *(a1 + OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex);
  v10 = __OFSUB__(v7, v9);
  v11 = v7 - v9;
  if (v10)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 < 1)
  {
    return result;
  }

  v10 = __OFADD__(v9, v11);
  v12 = (v9 + v11);
  if (v10)
  {
    goto LABEL_34;
  }

  *(a1 + OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex) = v12;
  v10 = __OFSUB__(v12, 1);
  v13 = (v12 - 1);
  if (v10)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v13 < v9)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v9 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6[3] < v14)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v31 = a2;
  v15 = (a1 + OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer);
  v16 = swift_beginAccess();
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);

  result = sub_2722C2308(v6 + 2, (v6 + 5), sub_2722C34AC);
  v18 = v14 - v9;
  v19 = __OFSUB__(v14, v9);
  if ((result & 1) == 0)
  {
    result = swift_endAccess();
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v18 > 0)
  {
    result = *v15;
    v20 = *(*v15 + 24);
    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v15;
    if (*(*v15 + 16) < v21 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2722374C0(isUniquelyReferenced_nonNull_native, v21, 0);
      v23 = *v15;
    }

    sub_2722C18D0((v23 + 16), v23 + 40, v14 - v9, v9, v14, v6);
  }

  result = swift_endAccess();
LABEL_22:
  if (__OFADD__(*v31, v18))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *v31 += v18;
  if (*(a1 + OBJC_IVAR___FeatureExtractObjc_streamingMode))
  {
    v24 = *(a1 + v4);
    v25 = *(v24 + 24);
    if (v25 >= 48001)
    {
      v26 = v25 - 48000;
      v27 = *(a1 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer);
      v10 = __OFADD__(v27, v25 - 48000);
      v28 = v27 + v25 - 48000;
      if (!v10)
      {
        *(a1 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer) = v28;
        result = swift_beginAccess();
        if (*(v24 + 24) >= v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_272237B98();
          }

          sub_272237C38((*(a1 + v4) + 16), *(a1 + v4) + 40, v26);
          swift_endAccess();

          v29 = *(a1 + v8);
          v10 = __OFSUB__(v29, v26);
          v30 = v29 - v26;
          if (!v10)
          {
            *(a1 + v8) = v30;
            return result;
          }

          goto LABEL_46;
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }
}

uint64_t sub_2722BA430()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v1[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2722C1778;
  *(v5 + 24) = v4;
  v9[4] = sub_27225836C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_27225537C;
  v9[3] = &unk_28818D3D0;
  v6 = _Block_copy(v9);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

id sub_2722BA5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = OBJC_IVAR___FeatureExtractObjc_frameDuration;
  v12 = *(v4 + OBJC_IVAR___FeatureExtractObjc_frameDuration);
  v13 = ((v12 * a1) * 16000.0) + -560.0;
  if (v13 <= -9.2234e18)
  {
    goto LABEL_91;
  }

  if (v13 >= 9.2234e18)
  {
    goto LABEL_92;
  }

  v14 = fabs(((v12 * a1) * 16000.0) + -560.0);
  v15 = ((v12 * a2) * 16000.0) + 560.0;
  if (v14 > 2139095039 || (LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_93;
  }

  if (v15 <= -9.2234e18)
  {
    goto LABEL_94;
  }

  if (v15 >= 9.2234e18)
  {
    goto LABEL_95;
  }

  v3 = v4;
  v8 = v13;
  v9 = OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer;
  v16 = *(v4 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer);
  v7 = v13 - v16;
  if (__OFSUB__(v13, v16))
  {
    goto LABEL_96;
  }

  v5 = a3;
  v10 = v15;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  v6 = a2;
  if (qword_28088DF80 != -1)
  {
    goto LABEL_112;
  }

LABEL_10:
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_27237AF90;
  v18 = MEMORY[0x277D83B88];
  v19 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v19;
  *(v17 + 32) = v8;
  v20 = *(v3 + v9);
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 72) = v20;
  OS_os_log.error(_:_:)("startSample %d - removed %d < 0, using 0", 40, 2, v17);

  v7 = 0;
  a2 = v6;
LABEL_11:
  *v5 = a2;
  v21 = *(v3 + v9);
  v6 = v10 - v21;
  if (!__OFSUB__(v10, v21))
  {
    if (v6 < 0)
    {
      if (qword_28088DF80 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_27237AF90;
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x277D83C10];
      *(v22 + 56) = MEMORY[0x277D83B88];
      *(v22 + 64) = v24;
      *(v22 + 32) = v10;
      v25 = *(v3 + v9);
      *(v22 + 96) = v23;
      *(v22 + 104) = v24;
      *(v22 + 72) = v25;
      OS_os_log.error(_:_:)("endSample %d - removed %d < 0, using 0", 38, 2, v22);

      v6 = 0;
    }

    v8 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
    swift_beginAccess();
    v26 = *(*(v3 + v8) + 24);
    if (v6 >= v26)
    {
      v6 = v26 - 1;
      if (!__OFSUB__(v26, 1))
      {
        v27 = *(v3 + v9);
        v28 = __OFADD__(v6, v27);
        v29 = v6 + v27;
        if (!v28)
        {
          v28 = __OFSUB__(v29, 560);
          v30 = v29 - 560;
          if (!v28)
          {
            v31 = v30 / (*(v11 + v3) * 16000.0);
            if (COERCE__INT64(fabs(v31)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v31 > -9.22337204e18)
              {
                if (v31 < 9.22337204e18)
                {
                  *v5 = v31;
                  if (qword_28088DF80 != -1)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_24;
                }

                goto LABEL_109;
              }

              goto LABEL_108;
            }

            goto LABEL_107;
          }

          goto LABEL_106;
        }

        goto LABEL_105;
      }

      goto LABEL_104;
    }

    goto LABEL_25;
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  do
  {
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
    swift_once();
LABEL_24:
    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_27237AFA0;
    v33 = MEMORY[0x277D83B88];
    v34 = MEMORY[0x277D83C10];
    *(v32 + 56) = MEMORY[0x277D83B88];
    *(v32 + 64) = v34;
    v35 = *(v3 + v9);
    *(v32 + 32) = v10;
    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 72) = v35;
    v36 = *(v3 + v8);
    v37 = *(v36 + 24);
    *(v32 + 136) = v33;
    *(v32 + 144) = v34;
    *(v32 + 112) = v37;
    v38 = *(v36 + 24);
    *(v32 + 176) = v33;
    *(v32 + 184) = v34;
    *(v32 + 152) = v38;
    v39 = *v5;
    *(v32 + 216) = v33;
    *(v32 + 224) = v34;
    *(v32 + 192) = v39;
    OS_os_log.error(_:_:)("Getting data beyond end of buffer: (endSample %d - removed %d) > count %d, so using %d, actual end frame=%d", 107, 2, v32);

LABEL_25:
    if (__OFSUB__(v6, v7))
    {
      goto LABEL_98;
    }

    if (!(v6 | v7))
    {
      return 0;
    }

    v40 = (v6 - v7) / 16000.0;
    v10 = &off_27237A000;
    v41 = MEMORY[0x277D839F8];
    v42 = MEMORY[0x277D83A80];
    if (v6 < 0)
    {
      v6 = *(*(v3 + v8) + 24);
      if (qword_28088DF80 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_27237AF80;
      *(v5 + 56) = v41;
      *(v5 + 64) = v42;
      *(v5 + 32) = v40;
      v43 = "Keyword may be trimmed at the end, audio duration is %5.3lf secs";
      v44 = 64;
    }

    else
    {
      if (qword_28088DF80 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_27237AF80;
      *(v5 + 56) = v41;
      *(v5 + 64) = v42;
      *(v5 + 32) = v40;
      v43 = "Keyword audio duration is %5.3lf secs";
      v44 = 37;
    }

    OS_os_log.info(_:_:)(v43, v44, 2, v5);

    v9 = v6 - v7;
    if (v6 < v7)
    {
      goto LABEL_99;
    }

    v10 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_100;
    }

    v46 = *(v3 + v8);
    if (v46[3] < v10)
    {
      goto LABEL_101;
    }

    v47 = v10 - v7;
    if (__OFSUB__(v10, v7))
    {
      goto LABEL_102;
    }

    if (v47)
    {
      v3 = sub_27223743C(v10 - v7, 0);
      v11 = &v78;
      v8 = (v3 + 4);
      v79 = v7;
      v80 = v6 + 1;
      v81 = v46;
      v48 = MEMORY[0x28223BE20](v3);
      MEMORY[0x28223BE20](v48);
      v6 = (v46 + 5);
      swift_retain_n();
      v5 = 0;
      sub_272237D54(v46 + 2, (v46 + 5), sub_272238248);
      if (v50)
      {
        if (v47 < 1)
        {
          goto LABEL_88;
        }

        if (v7 != v10)
        {
          v51 = 0;
          while (v7 + v51 < v10)
          {
            if (v7 + v51 >= v46[3])
            {
              goto LABEL_90;
            }

            v52 = v46[4];
            if (v7 + v51 + v52 >= v46[2])
            {
              v53 = v46[2];
            }

            else
            {
              v53 = 0;
            }

            *(v8 + 4 * v51) = *(v6 + 4 * (v7 + v51 + v52 - v53));
            if (v9 != v51 && v9 + 1 != ++v51)
            {
              continue;
            }

            goto LABEL_51;
          }

          goto LABEL_89;
        }

LABEL_51:
      }

      else
      {
        v5 = v49;

        if (v5 != v47)
        {
          __break(1u);
LABEL_112:
          swift_once();
          goto LABEL_10;
        }
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v5 = v3[2];
    v54 = MEMORY[0x277D84F90];
    if (v5)
    {
      v79 = MEMORY[0x277D84F90];
      sub_272215F8C(0, v5, 0);
      v54 = v79;
      v6 = (v3 + 4);
      v7 = 2139095039;
      v8 = 3338666240;
      while (1)
      {
        v55 = *v6;
        if ((*v6 & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          break;
        }

        if (v55 <= -32769.0)
        {
          goto LABEL_86;
        }

        if (v55 >= 32768.0)
        {
          goto LABEL_87;
        }

        v79 = v54;
        v9 = *(v54 + 16);
        v56 = *(v54 + 24);
        if (v9 >= v56 >> 1)
        {
          sub_272215F8C((v56 > 1), v9 + 1, 1);
          v54 = v79;
        }

        *(v54 + 16) = v9 + 1;
        *(v54 + 2 * v9 + 32) = v55;
        v6 += 4;
        if (!--v5)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

LABEL_63:
    result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    if (!result)
    {
      __break(1u);
      goto LABEL_114;
    }

    v58 = *(v54 + 16);
  }

  while (HIDWORD(v58));
  v59 = result;
  result = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:result frameCapacity:v58];
  if (!result)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v45 = result;
  [result setFrameLength_];
  result = [v45 int16ChannelData];
  if (!result)
  {
LABEL_115:
    __break(1u);
    return result;
  }

  v60 = result;

  v61 = *(v54 + 16);
  if (v61)
  {
    v62 = *v60;
    if (v61 < 4 || (v62 - v54 - 32) < 0x20)
    {
      v63 = 0;
      goto LABEL_71;
    }

    if (v61 >= 0x10)
    {
      v63 = v61 & 0x7FFFFFFFFFFFFFF0;
      v69 = (v54 + 48);
      v70 = (v62 + 16);
      v71 = v61 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v72 = *v69;
        *(v70 - 1) = *(v69 - 1);
        *v70 = v72;
        v69 += 2;
        v70 += 2;
        v71 -= 16;
      }

      while (v71);
      if (v61 != v63)
      {
        if ((v61 & 0xC) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v63 = 0;
LABEL_81:
      v73 = v63;
      v63 = v61 & 0x7FFFFFFFFFFFFFFCLL;
      v74 = (2 * v73 + v54 + 32);
      v75 = (v62 + 2 * v73);
      v76 = v73 - (v61 & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v77 = *v74++;
        *v75++ = v77;
        v76 += 4;
      }

      while (v76);
      if (v61 != v63)
      {
LABEL_71:
        v64 = v61 - v63;
        v65 = 2 * v63;
        v66 = (v62 + v65);
        v67 = (v65 + v54 + 32);
        do
        {
          v68 = *v67++;
          *v66++ = v68;
          --v64;
        }

        while (v64);
      }
    }
  }

  return v45;
}