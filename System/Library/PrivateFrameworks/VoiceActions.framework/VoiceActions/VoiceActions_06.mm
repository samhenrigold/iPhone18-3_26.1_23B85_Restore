uint64_t sub_27226A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v32 = a6;
  v31 = a4;
  v11 = sub_272376E5C();
  v30 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v6) + 0x120))(v12);
  if (v16)
  {
    v17 = v16;
    v29 = v11;
    v18 = (*((*v15 & *v6) + 0x150))();
    if (v18)
    {
      v19 = v18;
      type metadata accessor for VAInstrumentedKeywordResult(0);
      v20 = (*(*a1 + 104))();
      v21 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v20);
      v22 = *(*v21 + 480);

      v22(a2, a3);
      v23 = *(*v21 + 528);

      v23(v31, a5);
      (*(*v21 + 504))((v32 & 1) == 0);
      v24 = v33;
      v25 = (*(*v17 + 432))(v21);
      if (!v24)
      {
        (*(*v17 + 144))(v25);
        (*(*v19 + 80))(v21, v14);
        (*(v30 + 8))(v14, v29);
      }
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v28 = 0xD000000000000011;
      v28[1] = 0x8000000272388A20;
      swift_willThrow();
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v26 = 0x75716552206C694ELL;
    v26[1] = 0xEF6F666E49747365;
    return swift_willThrow();
  }
}

uint64_t sub_27226A628()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id VASpeechAPISpotterV2.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VASpeechAPISpotterV2();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27226A7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VAInputStreamActor(uint64_t a1)
{
  result = qword_280888040;
  if (!qword_280888040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27226A8E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27226A918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27226A930()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27226A96C(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272219D80;

  return sub_2722627BC(a1, v6, v7, v5, v4);
}

void sub_27226AA20(uint64_t a1)
{
  sub_27226AABC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27226AABC(uint64_t a1)
{
  if (!qword_280881FA8)
  {
    sub_2721F214C(&qword_280881F58, &unk_27237E2F0);
    v1 = sub_27237801C();
    if (!v2)
    {
      atomic_store(v1, &qword_280881FA8);
    }
  }
}

uint64_t sub_27226ABB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27226AC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27226ACAC(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272219D80;

  return sub_2722639E8(a1, v6, v7, v5, v4);
}

uint64_t sub_27226AD58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27226ADA0(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272211DBC;

  return sub_272264C18(a1, v6, v7, v5, v4);
}

uint64_t sub_27226AE98(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_27226AF30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;
  swift_beginAccess();
  return sub_27226AF88(v1 + v3, a1);
}

uint64_t sub_27226AF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27226AFF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;
  swift_beginAccess();
  sub_27226B058(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_27226B058(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_27226C1C0(a1, a2);

  return v4;
}

uint64_t VAResultGeneratorVerifier.init(subVerifier:config:)(void *a1, void *a2)
{
  v3 = sub_27226C1C0(a1, a2);

  return v3;
}

uint64_t sub_27226B1B0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for VARuntimeParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VAResultGenerator();
  v12 = v3[7];
  sub_272216374(a1, v11);
  result = sub_2722C53D8(v12, v11);
  if (!v2)
  {
    (*(*v3 + 160))(result);
    sub_272216374(a1, v7);
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(*v3 + 184))(v7);
    v14 = v3[5];
    v15 = v3[6];
    sub_27220300C(v3 + 2, v14);
    return (*(v15 + 16))(a1, v14, v15);
  }

  return result;
}

void sub_27226B3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v82 = a3;
  v8 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v71 - v9;
  v11 = type metadata accessor for VARuntimeParameters(0);
  v81 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[5];
  v14 = v5[6];
  sub_27220300C(v5 + 2, v15);
  v16 = (*(v14 + 8))(a1, a2, v15, v14);
  if (v4)
  {
    return;
  }

  v17 = v81;
  v80 = v13;
  if ((*(v16 + 16) & 1) == 0)
  {
    static VAVerifierModelOutput.none.getter(v82);

    return;
  }

  v18 = v11;
  v19 = v16;
  v20 = *(v16 + 24);
  if (!v20)
  {
    v24 = 0x800000027238B560;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD00000000000002BLL;
LABEL_10:
    *v25 = v26;
    v25[1] = v24;
    swift_willThrow();
    goto LABEL_11;
  }

  v71[1] = 0;
  v21 = *(*v5 + 152);

  v79 = v21(v22);
  if (!v79)
  {

    v24 = 0x800000027238B590;
    sub_2722032B4();
    swift_allocError();
    v26 = 0xD000000000000017;
    goto LABEL_10;
  }

  (*(*v5 + 176))();
  if ((*(v17 + 48))(v10, 1, v18) == 1)
  {

    sub_27226C3A0(v10);
    sub_2722032B4();
    swift_allocError();
    *v23 = 0xD000000000000015;
    v23[1] = 0x800000027238B5B0;
    swift_willThrow();

LABEL_11:

    return;
  }

  sub_2722164B8(v10, v80);
  v81 = *(v20 + 16);
  if (!v81)
  {
    goto LABEL_67;
  }

  v74 = v5;
  v75 = v20;
  v76 = v19;
  v27 = *(v20 + 32);
  v78 = v20 + 32;
  v28 = *(v27 + 16);
  isUniquelyReferenced_nonNull_native = sub_27220392C(MEMORY[0x277D84F90], v28);
  v30 = isUniquelyReferenced_nonNull_native;
  v77 = v28;
  if (v28)
  {
    v31 = 0;
LABEL_17:
    v32 = v31 + 1;
    v33 = v78;
    v34 = v81;
    while (v31 < *(*v33 + 16))
    {
      v35 = *(*v33 + 4 * v31 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_272200344(v30);
      }

      if (v31 >= v30[2])
      {
        goto LABEL_59;
      }

      v36 = v30 + 4;
      v37 = v30[v31 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30[v31 + 4] = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2721FF8B4(0, *(v37 + 16) + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
        v36[v31] = isUniquelyReferenced_nonNull_native;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      if (v39 >= v38 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2721FF8B4((v38 > 1), v39 + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
        v36[v31] = isUniquelyReferenced_nonNull_native;
      }

      *(v37 + 16) = v39 + 1;
      *(v37 + 4 * v39 + 32) = v35;
      v33 += 8;
      if (!--v34)
      {
        ++v31;
        if (v32 == v77)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }
    }

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
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

LABEL_28:
  v40 = v74;
  if (v74[64] == 1)
  {
    isUniquelyReferenced_nonNull_native = (*(*v74 + 216))(v30);
  }

  v41 = MEMORY[0x277D85000];
  v42 = (*((*MEMORY[0x277D85000] & **(v40 + 7)) + 0xD0))(isUniquelyReferenced_nonNull_native);
  v43 = v76;
  if (!v42)
  {
    goto LABEL_68;
  }

  v45 = (*((*v41 & *v42) + 0x138))(v44);

  v46 = v30[2];
  if (v46)
  {
    v47 = 0;
    LODWORD(v81) = v80[72];
    LODWORD(v78) = v80[73];
    LODWORD(v77) = v80[74];
    v48 = *(*v79 + 592);
    v74 = (*v79 + 592);
    v75 = v48;
    v71[0] = v45 & 0xFFFFFFFFFFFFFFF8;
    v72 = 4 * v45;
    v73 = v30 + 4;
    v49 = 48;
    v50 = v45;
    while (1)
    {
      v51 = v47 + 1;
      v52 = *(v43 + 32);
      if (v52)
      {
        v53 = v47 * v45;
        if ((v47 * v45) >> 64 != (v47 * v45) >> 63)
        {
          goto LABEL_61;
        }

        v54 = v51 * v45;
        if ((v51 * v45) >> 64 != (v51 * v45) >> 63)
        {
          goto LABEL_62;
        }

        if (v54 < v53)
        {
          goto LABEL_63;
        }

        v55 = 0.0;
        if (v53 != v54)
        {
          if (v53 >= v54)
          {
            goto LABEL_64;
          }

          if (v53 < 0)
          {
            goto LABEL_65;
          }

          v56 = *(v52 + 16);
          if (v53 >= v56 || v54 - 1 >= v56)
          {
            goto LABEL_66;
          }

          if (v45 < 8)
          {
            goto LABEL_46;
          }

          v57 = v71[0];
          v53 += v71[0];
          v58 = v52 + v49;
          do
          {
            v55 = (((((((v55 + COERCE_FLOAT(*(v58 - 16))) + COERCE_FLOAT(HIDWORD(*(v58 - 16)))) + COERCE_FLOAT(*(v58 - 8))) + COERCE_FLOAT(HIDWORD(*(v58 - 16)))) + COERCE_FLOAT(*v58)) + COERCE_FLOAT(HIDWORD(*v58))) + COERCE_FLOAT(*(v58 + 8))) + COERCE_FLOAT(HIDWORD(*v58));
            v58 += 32;
            v57 -= 8;
          }

          while (v57);
          if (v45 != v71[0])
          {
LABEL_46:
            v59 = v50 - v53;
            v60 = (v52 + 4 * v53 + 32);
            do
            {
              v61 = *v60++;
              v55 = v55 + v61;
              --v59;
            }

            while (v59);
          }
        }

        v62 = v55 / v45;
      }

      else
      {
        v62 = 0.0;
      }

      if (v47 >= v30[2])
      {
        goto LABEL_60;
      }

      v63 = v73[v47];

      v64 = VARuntimeParameters.keywordsNoThresholds.getter();
      v65 = v75(v63, v64, 0, 0, v81, v78, v77, v62);

      v67 = *((*(*v65 + 104))(v66) + 16);

      if (v67)
      {
        break;
      }

      v49 += v72;
      v50 += v45;
      v47 = v51;
      v43 = v76;
      v68 = v82;
      v69 = v80;
      if (v51 == v46)
      {
        goto LABEL_55;
      }
    }

    sub_2722E45C4(v65, v82);

    v70 = v80;
  }

  else
  {
    v68 = v82;
    v69 = v80;
LABEL_55:
    static VAVerifierModelOutput.none.getter(v68);

    v70 = v69;
  }

  sub_272216BD8(v70);
}

uint64_t sub_27226BB7C(uint64_t result)
{
  v33 = *(result + 16);
  if (v33)
  {
    v1 = 0;
    v2 = result + 32;
    while (2)
    {
      v3 = *(v2 + 8 * v1++);
      v4 = *(v3 + 16);
      v5 = (v3 + 32);
      while (v4)
      {
        v6 = *v5++;
        --v4;
        if (v6 >= 0.2)
        {
          v7 = 0;
          v32 = result + 32;
          do
          {
            v12 = *(v2 + 8 * v7);
            v13 = *(v12 + 16);
            if (v13)
            {
              v34 = v7;
              v14 = *(v12 + 32);
              v15 = v13 - 1;
              if (v13 != 1)
              {
                v16 = (v12 + 36);
                do
                {
                  v17 = *v16++;
                  v18 = v17;
                  if (v14 < v17)
                  {
                    v14 = v18;
                  }

                  --v15;
                }

                while (v15);
              }

              v35 = MEMORY[0x277D84F90];

              sub_27220056C(0, v13, 0);
              v19 = 32;
              do
              {
                v20 = *(v12 + v19);
                sub_2721F065C(&qword_280881CB0, qword_27237D820);
                v21 = swift_allocObject();
                *(v21 + 16) = xmmword_27237AF80;
                *(v21 + 56) = MEMORY[0x277D83A90];
                *(v21 + 64) = MEMORY[0x277D83B08];
                *(v21 + 32) = v20;
                v22 = sub_27237786C();
                MEMORY[0x2743C4AD0](v22, v23);

                if (v20 == v14)
                {
                  v24 = 42;
                }

                else
                {
                  v24 = 32;
                }

                MEMORY[0x2743C4AD0](v24, 0xE100000000000000);
                sub_272203AC4();
                v25 = sub_27237812C();
                v27 = v26;

                v29 = *(v35 + 16);
                v28 = *(v35 + 24);
                if (v29 >= v28 >> 1)
                {
                  sub_27220056C((v28 > 1), v29 + 1, 1);
                }

                *(v35 + 16) = v29 + 1;
                v30 = v35 + 16 * v29;
                *(v30 + 32) = v25;
                *(v30 + 40) = v27;
                v19 += 4;
                --v13;
              }

              while (v13);

              sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
              sub_272203B18();
              v8 = sub_2723777CC();
              v10 = v9;

              sub_2721F065C(&qword_280882040, &unk_27237E470);
              v11 = swift_allocObject();
              *(v11 + 16) = xmmword_27237AF80;
              MEMORY[0x2743C4AD0](v8, v10);

              MEMORY[0x2743C4AD0](93, 0xE100000000000000);
              *(v11 + 56) = MEMORY[0x277D837D0];
              *(v11 + 32) = 91;
              *(v11 + 40) = 0xE100000000000000;
              sub_27237872C();

              v2 = v32;
              v7 = v34;
            }

            ++v7;
          }

          while (v7 != v33);
          sub_2721F065C(&qword_280882040, &unk_27237E470);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_27237AF80;
          *(v31 + 56) = MEMORY[0x277D837D0];
          *(v31 + 32) = 32;
          *(v31 + 40) = 0xE100000000000000;
          sub_27237872C();
        }
      }

      if (v1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_27226BF80()
{
  sub_2722039C8((v0 + 16));

  v1 = v0 + OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;

  return sub_27226C3A0(v1);
}

uint64_t VAResultGeneratorVerifier.deinit()
{
  v0 = VAVerifierModel.deinit();
  sub_2722039C8((v0 + 16));

  sub_27226C3A0(v0 + OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams);
  return v0;
}

uint64_t VAResultGeneratorVerifier.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();

  sub_2722039C8((v1 + 16));

  sub_27226C3A0(v0 + OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams);

  return swift_deallocClassInstance();
}

uint64_t VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(char a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t VAResultGeneratorInput.init(hasInput:scores:vadBuffer:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t VAResultGeneratorInput.deinit()
{

  return v0;
}

uint64_t VAResultGeneratorInput.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27226C1C0(void *a1, void *a2)
{
  *(v2 + 72) = 0;
  v5 = OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;
  v6 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  sub_27221629C(a1, v2 + 16);
  *(v2 + 56) = a2;
  v7 = objc_opt_self();
  v8 = a2;
  v9 = [v7 processInfo];
  v10 = [v9 environment];

  v11 = sub_27237772C();
  if (*(v11 + 16))
  {
    v12 = v2;
    v13 = sub_27220038C(0x414D5F544E495250, 0xEC00000058495254);
    if (v14)
    {
      v15 = (*(v11 + 56) + 16 * v13);
      v17 = *v15;
      v16 = v15[1];

      if (v17 == 1702195828 && v16 == 0xE400000000000000)
      {

        v19 = 1;
      }

      else
      {
        v19 = sub_27237865C();
      }
    }

    else
    {

      v19 = 0;
    }

    v2 = v12;
  }

  else
  {

    v19 = 0;
  }

  *(v2 + 64) = v19 & 1;
  v20 = sub_2722591B0();
  sub_2722039C8(a1);
  return v20;
}

uint64_t sub_27226C3A0(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for VAResultGeneratorVerifier(uint64_t a1)
{
  result = qword_280888050;
  if (!qword_280888050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27226C45C(uint64_t a1)
{
  sub_272253328(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27226C61C@<X0>(void *a1@<X8>)
{
  VARuntimeParameters.init()(a1);

  *a1 = &unk_28817E9E8;
  return result;
}

uint64_t sub_27226C6B0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_27226C6E4@<X0>(uint64_t *a1@<X8>)
{
  VARuntimeParameters.init()(a1);
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

id sub_27226C7B4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  v15 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  sub_27221629C(a3, &v13[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
  *&v13[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = a4;
  *&v13[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = a5;
  sub_27221629C(a6, v18);
  v16 = sub_272335390(a1, a2, v18);
  sub_2722039C8(a6);
  sub_2722039C8(a3);
  return v16;
}

uint64_t static VAFixedKeywordSpotter.buildForAudioToText(delegate:jsonConfigFilename:vadGated:computeUnits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VAConfiguration();
  v9 = static VAConfiguration.buildForFixedVCWakeupRuntime(vadGated:)(a4);
  if (!v4)
  {
    v10 = v9;
    v29[3] = type metadata accessor for VARuntimeParametersFactoryForVCWakeup();
    v29[4] = &off_28817EA70;
    v29[0] = swift_allocObject();
    if (a3)
    {
      v11 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
    }

    else
    {
      v11 = v10;
    }

    v12 = v11;
    type metadata accessor for VAKWSModel();
    v13 = v12;
    v14 = sub_272333404(v13);
    type metadata accessor for VASilenceModel();
    v15 = (*((*MEMORY[0x277D85000] & *v13) + 0xE8))();
    v17 = v16;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v28);
    LOBYTE(v27[0]) = v28[0];
    v19 = sub_27228DC9C(v15, v17, v27);
    v20 = type metadata accessor for VAStrategyProviderPassthrough();
    v21 = sub_2722043D8();
    v28[3] = v20;
    v28[4] = &protocol witness table for VAStrategyProviderPassthrough;
    v28[0] = v21;
    sub_27221629C(v29, v27);
    v22 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter(0));
    v23 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
    v24 = type metadata accessor for VARuntimeParameters(0);
    (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
    sub_27221629C(v28, &v22[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
    *&v22[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v14;
    *&v22[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v19;
    sub_27221629C(v27, v26);
    v25 = swift_unknownObjectRetain();
    v8 = sub_272335390(v25, v13, v26);

    sub_2722039C8(v27);
    sub_2722039C8(v28);
    sub_2722039C8(v29);
  }

  return v8;
}

uint64_t static VAFixedKeywordSpotter.buildForVoiceControlWakeup(delegate:jsonConfigFilename:vadGated:evalMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = type metadata accessor for VAConfiguration();
  v11 = a4 & 1;
  if (a5)
  {
    v12 = static VAConfiguration.buildForFixedVCWakeupEval(vadGated:)(v11);
    if (v5)
    {
      return v10;
    }
  }

  else
  {
    v12 = static VAConfiguration.buildForFixedVCWakeupRuntime(vadGated:)(v11);
    if (v5)
    {
      return v10;
    }
  }

  v13 = v12;
  v32[3] = type metadata accessor for VARuntimeParametersFactoryForVCWakeup();
  v32[4] = &off_28817EA70;
  v32[0] = swift_allocObject();
  if (a3)
  {
    v14 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  type metadata accessor for VAKWSModel();
  v16 = v15;
  v17 = sub_272333404(v16);
  type metadata accessor for VASilenceModel();
  v18 = (*((*MEMORY[0x277D85000] & *v16) + 0xE8))();
  v20 = v19;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v31);
  LOBYTE(v30[0]) = v31[0];
  v22 = sub_27228DC9C(v18, v20, v30);
  v23 = type metadata accessor for VAStrategyProviderPassthrough();
  v24 = sub_2722043D8();
  v31[3] = v23;
  v31[4] = &protocol witness table for VAStrategyProviderPassthrough;
  v31[0] = v24;
  sub_27221629C(v32, v30);
  v25 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter(0));
  v26 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  v27 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
  sub_27221629C(v31, &v25[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
  *&v25[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v17;
  *&v25[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v22;
  sub_27221629C(v30, v29);
  v28 = swift_unknownObjectRetain();
  v10 = sub_272335390(v28, v16, v29);

  sub_2722039C8(v30);
  sub_2722039C8(v31);
  sub_2722039C8(v32);
  return v10;
}

uint64_t type metadata accessor for VAFixedKeywordSpotter(uint64_t a1)
{
  result = qword_280888068;
  if (!qword_280888068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t static VAFixedKeywordSpotter.buildForCustomModel(delegate:jsonConfigFilename:modelFilePath:vadGated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for VAConfiguration();
  v13 = static VAConfiguration.buildForFixedWithCustomModel(modelFilepath:vadGated:)(a4, a5);
  if (!v6)
  {
    v14 = v13;
    v15 = MEMORY[0x277D85000];
    v16 = (*((*MEMORY[0x277D85000] & *v13) + 0xA0))();
    if (!v16)
    {
LABEL_6:
      v12 = 0x800000027238B6D0;
      sub_2722032B4();
      swift_allocError();
      *v23 = 0xD000000000000014;
      v23[1] = 0x800000027238B6D0;
      swift_willThrow();

      return v12;
    }

    v17 = v16;
    v45[7] = a1;
    v18 = (*((*v15 & *v16) + 0xB8))();
    v19 = v18;
    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = sub_2722702A8(*(v18 + 16), 0);
      v22 = sub_27227032C(v45, v21 + 4, v20, v19);
      sub_272270484(v45[0]);
      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v24 = MEMORY[0x277D85000];
    v25 = type metadata accessor for VARuntimeParametersFactoryForCustomModel();
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    v45[3] = v25;
    v45[4] = &off_28817EA80;
    v45[0] = v26;
    if (a3)
    {
      v27 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
    }

    else
    {
      v27 = v14;
    }

    v28 = v27;
    type metadata accessor for VAKWSModel();
    v29 = v28;
    v30 = sub_272333404(v29);
    type metadata accessor for VASilenceModel();
    v31 = (*((*v24 & *v29) + 0xE8))();
    v33 = v32;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v44);
    LOBYTE(v43[0]) = v44[0];
    v35 = sub_27228DC9C(v31, v33, v43);
    v36 = type metadata accessor for VAStrategyProviderPassthrough();
    v37 = sub_2722043D8();
    v44[3] = v36;
    v44[4] = &protocol witness table for VAStrategyProviderPassthrough;
    v44[0] = v37;
    sub_27221629C(v45, v43);
    v38 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter(0));
    v39 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
    v40 = type metadata accessor for VARuntimeParameters(0);
    (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
    sub_27221629C(v44, &v38[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
    *&v38[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v30;
    *&v38[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v35;
    sub_27221629C(v43, v42);
    swift_retain_n();

    v41 = swift_unknownObjectRetain();
    v12 = sub_272335390(v41, v29, v42);

    sub_2722039C8(v43);
    sub_2722039C8(v44);
    sub_2722039C8(v45);
  }

  return v12;
}

uint64_t static VAFixedKeywordSpotter.buildForBreakthrough(delegate:jsonConfigFilename:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VAConfiguration();
  v7 = static VAConfiguration.buildForFixedBreakthrough()();
  if (!v3)
  {
    v8 = v7;
    v27[3] = type metadata accessor for VARuntimeParametersFactoryDummy();
    v27[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
    v27[0] = sub_2722043D8();
    if (a3)
    {
      v9 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
    type metadata accessor for VAKWSModel();
    v11 = v10;
    v12 = sub_272333404(v11);
    type metadata accessor for VASilenceModel();
    v13 = (*((*MEMORY[0x277D85000] & *v11) + 0xE8))();
    v15 = v14;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v26);
    LOBYTE(v25[0]) = v26[0];
    v17 = sub_27228DC9C(v13, v15, v25);
    v18 = type metadata accessor for VAStrategyProviderPassthrough();
    v19 = sub_2722043D8();
    v26[3] = v18;
    v26[4] = &protocol witness table for VAStrategyProviderPassthrough;
    v26[0] = v19;
    sub_27221629C(v27, v25);
    v20 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter(0));
    v21 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
    v22 = type metadata accessor for VARuntimeParameters(0);
    (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
    sub_27221629C(v26, &v20[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
    *&v20[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v12;
    *&v20[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v17;
    sub_27221629C(v25, v24);
    v23 = swift_unknownObjectRetain();
    v6 = sub_272335390(v23, v11, v24);
    sub_2722039C8(v25);
    sub_2722039C8(v26);

    sub_2722039C8(v27);
  }

  return v6;
}

uint64_t sub_27226D4F8()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x168))(&v5);
  if (v6)
  {
    sub_2721F41B4(&v5, v7);
    v1 = v8;
    v2 = v9;
    sub_27220300C(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_2722039C8(v7);
  }

  else
  {
    sub_2721F40F0(&v5, &qword_2808821C8, &qword_272386260);
    sub_2722032B4();
    swift_allocError();
    *v4 = 0xD00000000000001ALL;
    v4[1] = 0x800000027238B6F0;
    return swift_willThrow();
  }
}

unint64_t sub_27226D630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for VARuntimeParameters(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v34 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v36 = 0xD00000000000006DLL;
LABEL_12:
    *v35 = v36;
    v35[1] = v34;
    swift_willThrow();
    return v34;
  }

  sub_272216374(a1, v13);
  (*(v8 + 56))(v13, 0, 1, v7);
  v14 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  swift_beginAccess();
  sub_27226B058(v13, v2 + v14);
  v15 = swift_endAccess();
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v2) + 0x78))(v15);
  if (!v17)
  {
    v34 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v36 = 0xD000000000000011;
    goto LABEL_12;
  }

  v18 = v17;
  v19 = (*((*v16 & *v17) + 0xA0))();
  if (!v19)
  {
    v34 = 0x800000027238B710;
    sub_2722032B4();
    swift_allocError();
    *v38 = 0xD00000000000001ELL;
    v38[1] = 0x800000027238B710;
    swift_willThrow();

    return v34;
  }

  v20 = v19;
  if (((*((*v16 & *v19) + 0x178))() & 1) != 0 && !*(v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel))
  {
    v34 = 0x800000027238B730;
    sub_2722032B4();
    swift_allocError();
    v40 = 0xD00000000000003BLL;
    goto LABEL_18;
  }

  type metadata accessor for VARequestContext(0);
  sub_272216374(a1, v10);
  v18 = v18;
  v21 = sub_272232E00(v18, v10);
  v22 = (*((*v16 & *v2) + 0x128))(v21);
  v23 = (*((*v16 & *v2) + 0x120))(v22);
  if (!v23)
  {
    v34 = 0x800000027238B430;
    sub_2722032B4();
    swift_allocError();
    v40 = 0xD00000000000001DLL;
LABEL_18:
    *v39 = v40;
    v39[1] = v34;
    swift_willThrow();

    return v34;
  }

  v24 = v23;
  v42 = v18;
  v43 = v20;
  v26 = *(v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider + 24);
  v25 = *(v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider + 32);
  sub_27220300C((v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider), v26);
  v27 = (*(v25 + 8))(v2, &protocol witness table for VAKeywordSpotterBase, a1, v26, v25);
  (*((*v16 & *v2) + 0x158))(v27);
  v28 = sub_272377C3C();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v2;
  v29[5] = v24;
  v30 = v2;

  v31 = sub_272262CC0(0, 0, v6, &unk_27237ED58, v29);
  v32 = (*((*v16 & *v30) + 0x140))(v31);
  v33 = (*((*v16 & *v30) + 0x138))(v32);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0x8000000272388930;
    sub_2722032B4();
    swift_allocError();
    *v41 = 0xD00000000000001DLL;
    v41[1] = 0x8000000272388930;
    swift_willThrow();
  }

  return v34;
}

uint64_t sub_27226DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v7 = sub_27237728C();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_27220AFF8;

  return sub_27226DE0C(a5);
}

uint64_t sub_27226DE0C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_2721F065C(&qword_280881F70, &qword_27237E320);
  v2[19] = swift_task_alloc();
  v3 = type metadata accessor for VARuntimeParameters(0);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_27237728C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27226DF9C, 0, 0);
}

void *sub_27226DF9C(uint64_t a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = sub_2722C389C();
  *(v1 + 248) = v5;
  v6 = *(v4 + 16);
  *(v1 + 256) = v6;
  *(v1 + 264) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_27237725C();
  v8 = sub_272377E7C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "Entering StartProcessingAudio()", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v10 = *(v1 + 240);
  v11 = *(v1 + 200);
  v12 = *(v1 + 208);
  v13 = *(v1 + 160);
  v14 = *(v1 + 168);
  v16 = *(v1 + 144);
  v15 = *(v1 + 152);

  v17 = *(v12 + 8);
  *(v1 + 272) = v17;
  v17(v10, v11);
  v18 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  swift_beginAccess();
  sub_2721F07F4(v16 + v18, v15, &qword_280881F70, &qword_27237E320);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_2721F40F0(*(v1 + 152), &qword_280881F70, &qword_27237E320);
    sub_2722032B4();
    swift_allocError();
    *v19 = 0xD000000000000016;
    v19[1] = 0x8000000272388EA0;
    swift_willThrow();
LABEL_20:

    v69 = *(v1 + 8);

    return v69();
  }

  v20 = *(v1 + 144);
  v21 = sub_2722164B8(*(v1 + 152), *(v1 + 192));
  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v20) + 0x78))(v21);
  *(v1 + 280) = v23;
  if (!v23)
  {
    v38 = *(v1 + 192);
    sub_2722032B4();
    swift_allocError();
    *v39 = 0xD000000000000011;
    v39[1] = 0x8000000272388910;
    swift_willThrow();
LABEL_11:
    sub_272216BD8(v38);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = *((*v22 & *v23) + 0xA0);
  v26 = v25();
  *(v1 + 288) = v26;
  if (!v26)
  {
    v38 = *(v1 + 192);
    sub_2722032B4();
    swift_allocError();
    *v40 = 0xD00000000000001ELL;
    v40[1] = 0x800000027238B710;
    swift_willThrow();

    goto LABEL_11;
  }

  v27 = v26;
  v28 = (*((*v22 & *v26) + 0x130))();
  v85 = v25;
  if (v28)
  {
    v29 = sub_272323818();
    v30 = sub_272323820();
    v31 = sub_272241B00();
    v28 = sub_272323828(v29, v30, v31, (v1 + 16));
    v32 = *(v1 + 16);
    v33 = *(v1 + 24);
    v34 = *(v1 + 32);
    v35 = *(v1 + 40);
    v36 = *(v1 + 48);
    v37 = *(v1 + 56);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v83 = v33;
  v84 = v32;
  *(v1 + 64) = v32;
  *(v1 + 72) = v33;
  v81 = v35;
  v82 = v34;
  *(v1 + 80) = v34;
  *(v1 + 88) = v35;
  v79 = v37;
  v80 = v36;
  *(v1 + 96) = v36;
  *(v1 + 104) = v37;
  v41 = *((*v22 & *v27) + 0x160);
  v42 = *((v41)(v28) + 16);

  if (v42)
  {
    v44 = (*((*v22 & *v24) + 0x88))(v43);
    v45 = (*((*v22 & *v44) + 0x148))();

    v46 = (*((*v22 & *v27) + 0x148))();
    v41();
    sub_272323698();
    v47 = sub_2723236A8(v45, v46);
    v50 = v49;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v50 = 0;
  }

  *(v1 + 464) = v50;
  v77 = v48;
  v78 = v47;
  *(v1 + 296) = v47;
  *(v1 + 304) = v48;
  v51 = *(*(v1 + 144) + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel);
  *(v1 + 312) = v51;
  v52 = 0;
  if (v51)
  {
    type metadata accessor for VACircularMatrixBuffer();
    v53 = (*((*v22 & *v24) + 0x88))();
    v54 = (*((*v22 & *v53) + 0x148))();

    v52 = sub_272302780(66, v54);
  }

  v76 = v27;
  *(v1 + 320) = v52;
  result = v85();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v56 = result;
  v57 = *(v1 + 184);
  v58 = *(v1 + 136);
  type metadata accessor for VACircularMatrixBuffer();
  v59 = (*((*v22 & *v56) + 0xE8))();

  v60 = *((*v22 & *v24) + 0x88);
  v61 = ((*v22 & *v24) + 136) & 0xFFFFFFFFFFFFLL | 0xF95A000000000000;
  *(v1 + 328) = v60;
  *(v1 + 336) = v61;
  v62 = v60();
  v63 = (*((*v22 & *v62) + 0x148))();

  *(v1 + 344) = sub_272302780(v59, v63);
  type metadata accessor for VAFeatureExtract();
  v64 = VAFeatureExtract.__allocating_init()();
  *(v1 + 352) = v64;
  type metadata accessor for VAResultGenerator();
  v65 = (*v58 + 312);
  v66 = *v65;
  *(v1 + 360) = *v65;
  *(v1 + 368) = v65 & 0xFFFFFFFFFFFFLL | 0xEDEA000000000000;
  v67 = v24;
  v66();
  v68 = sub_2722C53D8(v67, v57);
  *(v1 + 376) = v68;
  if (!v68)
  {
    v74 = *(v1 + 192);
    sub_272270678(v78, v77);
    sub_2722032B4();
    swift_allocError();
    *v75 = 0xD000000000000014;
    v75[1] = 0x800000027238B870;
    swift_willThrow();

    sub_272216BD8(v74);
    sub_2722706B8(v84, v83, v82, v81, v80, v79);
    goto LABEL_20;
  }

  v70 = **(v1 + 136) + 368;
  v71 = *v70;
  *(v1 + 384) = *v70;
  *(v1 + 392) = v70 & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
  v72 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 400) = v72;
  v86 = (v71 + *v71);
  v73 = swift_task_alloc();
  *(v1 + 424) = v73;
  *v73 = v1;
  v73[1] = sub_27226E968;

  return v86();
}

uint64_t sub_27226E968(char a1)
{
  *(*v1 + 468) = a1;

  return MEMORY[0x2822009F8](sub_27226EA68, 0, 0);
}

void sub_27226EA68()
{
  if (*(v0 + 468))
  {
    sub_272270678(*(v0 + 296), *(v0 + 304));
    (*((*MEMORY[0x277D85000] & **(v0 + 144)) + 0x220))(0);
    v1 = *(v0 + 352);
    v2 = *(v0 + 280);
    v3 = *(v0 + 288);
    sub_272216BD8(*(v0 + 192));

    sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

    v4 = *(v0 + 8);

    v4();
    return;
  }

  v5 = *(v0 + 416);
  v6 = v5 + 1;
  *(v0 + 432) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = (*(v0 + 328))();
  v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x160))();

  if (!v8)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v6 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  v10 = *(v0 + 136);
  v11 = sub_27222CD4C();
  v13 = (*(*v10 + 384) + **(*v10 + 384));
  v12 = swift_task_alloc();
  *(v0 + 440) = v12;
  *v12 = v0;
  v12[1] = sub_27226EE48;

  v13(0, 1, v11 & 1);
}

uint64_t sub_27226EE48(uint64_t a1)
{
  v4 = *v2;
  (*v2)[56] = v1;

  if (v1)
  {
    sub_272270678(v4[37], v4[38]);
    v5 = sub_272270058;
  }

  else
  {
    v4[57] = a1;
    v5 = sub_27226EF7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_27226EF7C()
{
  if (*(v0 + 456))
  {
    v1 = *(v0 + 456);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (!*(v1 + 16))
  {
    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v16 = *(v0 + 256);
    v17 = *(v0 + 248);
    v18 = *(v0 + 232);
    v19 = *(v0 + 200);

    sub_272270678(v15, v14);
    v16(v18, v17, v19);
    v20 = sub_27237725C();
    v21 = sub_272377E7C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 272);
    v24 = *(v0 + 232);
    v25 = *(v0 + 200);
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2721E4000, v20, v21, "processing was stopped, stop predictions", v26, 2u);
      MEMORY[0x2743C69C0](v26, -1, -1);
    }

    v23(v24, v25);
    v27 = *(v0 + 448);
    (*((*MEMORY[0x277D85000] & **(v0 + 144)) + 0x220))(0);
    v28 = *(v0 + 352);
    v29 = *(v0 + 280);
    v30 = *(v0 + 288);
    if (!v27)
    {
      sub_272216BD8(*(v0 + 192));

      sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

      v31 = *(v0 + 8);
      goto LABEL_17;
    }

    sub_272216BD8(*(v0 + 192));

    goto LABEL_15;
  }

  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & **(v0 + 352)) + 0x170))(v1);
  if (v3 && v2)
  {
    v6 = *(**(v0 + 320) + 168);

    v6(v5);
  }

  v7 = *(v0 + 448);
  if (!*(v0 + 96))
  {

    v32 = v5;
    v33 = *(v0 + 296);
    if (!v33)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v8 = sub_272323A58(v5);
  if (v7)
  {
    v9 = *(v0 + 352);
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    sub_272216BD8(*(v0 + 192));

    sub_272270678(v11, v10);

LABEL_15:

LABEL_16:
    sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

    v31 = *(v0 + 8);
LABEL_17:

    v31();
    return;
  }

  v32 = v8;
  v33 = *(v0 + 296);
  if (v33)
  {
LABEL_21:
    v34 = *(v0 + 464);
    v35 = *(v0 + 304);

    v36 = sub_2723236B4(v32, v33, v35, v34);

    v32 = v36;
  }

LABEL_22:
  v37 = *(v0 + 328);
  v38 = (*(**(v0 + 344) + 168))(v32);
  v39 = v37(v38);
  v40 = (*((*v4 & *v39) + 0x160))();

  if (!v40)
  {
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

  v41 = *(v0 + 432);
  if (v41 == 0x8000000000000000 && v40 == -1)
  {
    goto LABEL_93;
  }

  if (!(v41 % v40))
  {
    v44 = 0;
    v45 = 0;
    v46 = *(v0 + 312);
    if (v46)
    {
      v47 = *(v0 + 320);
      if (v47)
      {
        v48 = *(*v47 + 176);

        v48(v49);
        v50 = (*(*v46 + 128))();
        if (v7)
        {
          v51 = *(v0 + 352);
          v137 = *(v0 + 296);
          v139 = *(v0 + 304);
          v53 = *(v0 + 280);
          v52 = *(v0 + 288);
          sub_272216BD8(*(v0 + 192));

          sub_272270678(v137, v139);

          goto LABEL_16;
        }

        v44 = v50;
        v54 = *(v0 + 288);

        v55 = *((*v4 & *v54) + 0x178);

        if (v55(v56))
        {
          v57 = (*((*v4 & **(v0 + 144)) + 0x238))(v44, *(*(v0 + 192) + 52));

          v45 = (v57 >> 8) & 1;
          if ((v57 & 0x100) != 0)
          {
            (*(v0 + 256))(*(v0 + 224), *(v0 + 248), *(v0 + 200));
            v58 = sub_27237725C();
            v59 = sub_272377E7C();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = *(v0 + 432);
              v61 = swift_slowAlloc();
              *v61 = 134217984;
              *(v61 + 4) = v60;
              _os_log_impl(&dword_2721E4000, v58, v59, "Speech stopped detected at frame %lld", v61, 0xCu);
              MEMORY[0x2743C69C0](v61, -1, -1);
            }

            v62 = *(v0 + 272);
            v63 = *(v0 + 224);
            v64 = *(v0 + 200);

            v62(v63, v64);
          }

          if (v57)
          {
            (*(v0 + 256))(*(v0 + 216), *(v0 + 248), *(v0 + 200));
            v65 = sub_27237725C();
            v66 = sub_272377E7C();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = *(v0 + 432);
              v68 = swift_slowAlloc();
              *v68 = 134217984;
              *(v68 + 4) = v67;
              _os_log_impl(&dword_2721E4000, v65, v66, "Speech started detected at frame %lld", v68, 0xCu);
              MEMORY[0x2743C69C0](v68, -1, -1);
            }

            v144 = *(v0 + 272);
            v69 = *(v0 + 216);
            v70 = *(v0 + 200);

            v144(v69, v70);
          }

          else
          {
          }

          v7 = 0;
        }

        else
        {

          v7 = 0;
          v45 = 0;
        }
      }
    }

    v141 = v44;
    if ((*((*v4 & **(v0 + 288)) + 0x178))())
    {
      v71 = (*((*v4 & **(v0 + 144)) + 0x198))();
      v72 = *(v0 + 400);
      if (((v45 | v71) & 1) == 0)
      {
        v73 = (*(**(*(v0 + 144) + v72) + 168))();
        if (v7)
        {
          v76 = *(v0 + 352);
          v77 = *(v0 + 296);
          v78 = *(v0 + 304);
          v80 = *(v0 + 280);
          v79 = *(v0 + 288);
          sub_272216BD8(*(v0 + 192));

          v81 = v77;
          v82 = v78;
LABEL_56:
          sub_272270678(v81, v82);

          goto LABEL_16;
        }

        v94 = v73;
        v138 = v75;
        v140 = v74;
LABEL_59:
        v95 = v44;
        v96 = *((*v4 & **(v0 + 280)) + 0xD0);

        v98 = v96(v97);
        if (!v98)
        {
LABEL_97:
          __break(1u);
          return;
        }

        v99 = v98;

        v101 = (*((*v4 & *v99) + 0x138))(v100);

        v102 = *(v94 + 16);

        v136 = v102;
        if (!v102)
        {
LABEL_85:

          v7 = 0;
          goto LABEL_27;
        }

        v103 = 0;
        v104 = *(v0 + 192);
        v132 = v104[73];
        v133 = v104[72];
        v131 = v104[74];
        v130 = *(**(v0 + 376) + 592);
        v135 = v94 + 32;
        v105 = v44 + 48;
        v128 = v101 & 0xFFFFFFFFFFFFFFF8;
        v106 = v101;
        v129 = v94;
        while (1)
        {
          v107 = v103 + 1;
          if (v95)
          {
            v108 = v103 * v101;
            if ((v103 * v101) >> 64 != (v103 * v101) >> 63)
            {
              goto LABEL_90;
            }

            v109 = v107 * v101;
            if ((v107 * v101) >> 64 != (v107 * v101) >> 63)
            {
              goto LABEL_91;
            }

            if (v109 < v108)
            {
              goto LABEL_92;
            }

            v110 = 0.0;
            if (v108 != v109)
            {
              if (v108 >= v109)
              {
                goto LABEL_94;
              }

              if (v108 < 0)
              {
                goto LABEL_95;
              }

              v111 = *(v95 + 16);
              if (v108 >= v111 || v109 - 1 >= v111)
              {
                goto LABEL_96;
              }

              if (v101 < 8)
              {
                goto LABEL_76;
              }

              v112 = v101 & 0xFFFFFFFFFFFFFFF8;
              v108 += v128;
              v113 = v105;
              do
              {
                v110 = (((((((v110 + COERCE_FLOAT(*(v113 - 16))) + COERCE_FLOAT(HIDWORD(*(v113 - 16)))) + COERCE_FLOAT(*(v113 - 8))) + COERCE_FLOAT(HIDWORD(*(v113 - 16)))) + COERCE_FLOAT(*v113)) + COERCE_FLOAT(HIDWORD(*v113))) + COERCE_FLOAT(*(v113 + 8))) + COERCE_FLOAT(HIDWORD(*v113));
                v113 += 32;
                v112 -= 8;
              }

              while (v112);
              if (v101 != v128)
              {
LABEL_76:
                v114 = (v141 + 32 + 4 * v108);
                v115 = v106 - v108;
                do
                {
                  v116 = *v114++;
                  v110 = v110 + v116;
                  --v115;
                }

                while (v115);
              }
            }

            v117 = v110 / v101;
          }

          else
          {
            v117 = 0.0;
          }

          if (v103 >= *(v94 + 16))
          {
            break;
          }

          v142 = v103 + 1;
          v118 = *(v0 + 360);
          v119 = *(v0 + 176);
          v120 = *(v135 + 8 * v103);

          v118(v121);
          v122 = VARuntimeParameters.keywordsNoThresholds.getter();
          sub_272216BD8(v119);
          if (v103 >= *(v140 + 16))
          {
            goto LABEL_87;
          }

          if (v103 >= *(v138 + 16))
          {
            goto LABEL_88;
          }

          v123 = *(v140 + 32 + 8 * v103);
          v124 = *(v138 + 32 + 8 * v103);

          v125 = v130(v120, v122, v123, v124, v133, v132, v131, v117);

          v127 = *((*(*v125 + 104))(v126) + 16);

          if (v127)
          {
            (*((*MEMORY[0x277D85000] & **(v0 + 144)) + 0x240))(v125);
          }

          v94 = v129;
          v105 += 4 * v101;
          v106 += v101;
          v103 = v142;
          v95 = v141;
          if (v142 == v136)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    else
    {
      v72 = *(v0 + 400);
    }

    v83 = *(v0 + 376);
    v84 = *(v0 + 144);
    v85 = (*(**(v0 + 344) + 176))();
    v86 = *(v84 + v72);
    v87 = (*(*v83 + 344))();
    v88 = (*(*v86 + 176))(v85, v87);
    if (v7)
    {
      v91 = *(v0 + 352);
      v92 = *(v0 + 296);
      v134 = *(v0 + 304);
      v80 = *(v0 + 280);
      v93 = *(v0 + 288);
      sub_272216BD8(*(v0 + 192));

      v81 = v92;
      v82 = v134;
      goto LABEL_56;
    }

    v94 = v88;
    v138 = v90;
    v140 = v89;

    goto LABEL_59;
  }

LABEL_27:

  v42 = *(v0 + 432);
  *(v0 + 408) = v7;
  *(v0 + 416) = v42;
  v143 = (*(v0 + 384) + **(v0 + 384));
  v43 = swift_task_alloc();
  *(v0 + 424) = v43;
  *v43 = v0;
  v43[1] = sub_27226E968;

  v143();
}

uint64_t sub_272270058()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 192);

  sub_272216BD8(v3);
  sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27227019C()
{
  sub_2722039C8((v0 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider));

  return sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters, &qword_280881F70, &qword_27237E320);
}

id VAFixedKeywordSpotter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAFixedKeywordSpotter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2722702A8(uint64_t a1, uint64_t a2)
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

  sub_2721F065C(&qword_280881860, &unk_27237C340);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_27227032C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2722704B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722704F8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272211DBC;

  return sub_27226DD10(a1, v6, v7, v5, v4);
}

void sub_2722705AC(uint64_t a1)
{
  sub_272253328(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_272270678(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_2722706B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }
}

uint64_t sub_27227074C(__int128 *a1)
{
  swift_beginAccess();
  sub_2722039C8((v1 + 32));
  sub_2721F41B4(a1, v1 + 32);
  return swift_endAccess();
}

void *sub_2722707A4()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_2722707E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_272270884(unsigned __int8 *a1, void *a2)
{
  v4 = v2;
  v6 = *a1;
  v7 = MEMORY[0x277D84F90];
  v2[3] = MEMORY[0x277D84F90];
  v2[9] = v7;
  v2[10] = v7;
  v2[11] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v9 = v8;
  if (v6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v8 setComputeUnits_];
  type metadata accessor for at_verifier_rdr_125141826();
  v11 = sub_2722B4458(v9);
  if (v3)
  {
    sub_2722039C8(a2);

    type metadata accessor for VAA2TVerifierV2();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v11;
    sub_27221629C(a2, (v4 + 4));
    v13 = sub_2722591B0();
    sub_2722039C8(a2);
    return v13;
  }
}

uint64_t sub_2722709C0(uint64_t a1)
{
  v4 = type metadata accessor for G2PFactored();
  v28 = (*(v4 + 80))();
  if (!v28)
  {
    sub_2722032B4();
    swift_allocError();
    *v26 = 0xD000000000000014;
    v26[1] = 0x800000027238B890;
    swift_willThrow();
    return v2;
  }

  v2 = sub_27223D5A8(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_18:

    return v2;
  }

  v6 = (a1 + 40);
  while (1)
  {
    v9 = *(v6 - 1);
    v8 = *v6;
    v10 = *((*MEMORY[0x277D85000] & *v28) + 0x60);

    v11 = v10(v9, v8);
    if (v1)
    {

      return v2;
    }

    v12 = v11;
    v29 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v2;
    v14 = sub_27220038C(v9, v8);
    v16 = *(v2 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (*(v2 + 24) < v19)
    {
      sub_27223C9E8(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_27220038C(v9, v8);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      v1 = 0;
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v25 = v14;
    sub_27223D2B8();
    v14 = v25;
    v1 = 0;
    if (v20)
    {
LABEL_4:
      v7 = v14;

      v2 = v30;
      *(v30[7] + 8 * v7) = v12;

      goto LABEL_5;
    }

LABEL_13:
    v2 = v30;
    v30[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v30[6] + 16 * v14);
    *v22 = v9;
    v22[1] = v8;
    *(v30[7] + 8 * v14) = v12;
    v23 = v30[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_22;
    }

    v30[2] = v24;
LABEL_5:
    v6 += 2;
    --v5;
    if (v29 == 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_272270C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2722722B0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_27220038C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_27223D2B8();
        v14 = v16;
      }

      result = sub_27223CF60(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_272270D64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v9 = sub_27220392C(&unk_28817EA90, v8);
  v10 = (*(*v3 + 168))(v9);
  v11 = *(*v3 + 184);
  v12 = *v3 + 184;
  v11(&v120, v10);
  v13 = v122;
  v14 = v123;
  sub_27220300C(&v120, v122);
  v15 = (*(v14 + 8))(v13, v14);
  if (v2)
  {
    return sub_2722039C8(&v120);
  }

  v17 = v15;
  v113 = v12;
  v114 = v11;
  *&v112 = v7;
  v117 = v3;
  v124 = v15;
  sub_2722039C8(&v120);
  v111 = a1;
  v18 = VARuntimeParameters.keywordsNoThresholds.getter();
  v19 = *(v18 + 2);
  if (v19)
  {
    v20 = (v18 + 40);
    v118 = MEMORY[0x277D84F90];
    do
    {
      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v17 + 16);

      if (v24 && (sub_27220038C(v23, v22), (v25 & 1) != 0))
      {

        v21 = v118;
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = v118;
        }

        else
        {
          v21 = sub_2721FFBF8(0, *(v118 + 2) + 1, 1, v118);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_2721FFBF8((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        v28 = &v21[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v22;
      }

      v118 = v21;
      v20 += 2;
      --v19;
    }

    while (v19);
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
  }

  v29 = v118;
  if (*(v118 + 2))
  {
    type metadata accessor for VALog();
    static VALog.begin(_:_:)("G2p", 3, 2u, 0, 0, v112);
    v30 = v117;
    v31 = (*(*v117 + 288))(v29);
    v115 = 0;
    v63 = v31 + 64;
    v64 = 1 << *(v31 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v31 + 64);
    v67 = (v64 + 63) >> 6;
    v68 = 0;
    v32 = v29;

    v108 = v69;
    v109 = v67;
    for (i = v63; ; v63 = i)
    {
      v118 = v32;
      v71 = v114;
      if (!v66)
      {
        break;
      }

LABEL_53:
      v73 = (*(v69 + 48) + ((v68 << 10) | (16 * __clz(__rbit64(v66)))));
      v74 = *v73;
      v75 = v73[1];
      v76 = *(v32 + 2);

      if (v76)
      {
        v77 = 0;
        v78 = v32 + 40;
        v106 = v76 - 1;
        v116 = MEMORY[0x277D84F90];
        v107 = v32 + 40;
LABEL_55:
        v79 = &v78[16 * v77];
        v80 = v77;
        while (v80 < *(v32 + 2))
        {
          v81 = *(v79 - 1);
          v82 = *v79;
          v83 = v81 == v74 && v82 == v75;
          if (!v83)
          {
            v84 = sub_27237865C();
            v32 = v118;
            if ((v84 & 1) == 0)
            {

              v85 = v116;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v120 = v85;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27220056C(0, *(v85 + 2) + 1, 1);
                v85 = v120;
              }

              v88 = *(v85 + 2);
              v87 = *(v85 + 3);
              v89 = (v88 + 1);
              v32 = v118;
              if (v88 >= v87 >> 1)
              {
                v116 = (v88 + 1);
                v105 = v88;
                sub_27220056C((v87 > 1), v88 + 1, 1);
                v89 = v116;
                v88 = v105;
                v32 = v118;
                v85 = v120;
              }

              v77 = v80 + 1;
              *(v85 + 2) = v89;
              v116 = v85;
              v90 = &v85[16 * v88];
              *(v90 + 4) = v81;
              *(v90 + 5) = v82;
              v83 = v106 == v80;
              v30 = v117;
              v69 = v108;
              v78 = v107;
              if (v83)
              {
                goto LABEL_72;
              }

              goto LABEL_55;
            }
          }

          ++v80;
          v79 += 16;
          v30 = v117;
          if (v76 == v80)
          {
            v69 = v108;
            goto LABEL_72;
          }
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);

        __break(1u);
        return result;
      }

      v116 = MEMORY[0x277D84F90];
LABEL_72:

      if (*(v69 + 16) && (sub_27220038C(v74, v75), (v91 & 1) != 0))
      {
      }

      else
      {
        v70 = 0;
      }

      v66 &= v66 - 1;
      sub_272270C6C(v70, v74, v75);
      v32 = v116;
      v67 = v109;
    }

    while (1)
    {
      v72 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_86;
      }

      if (v72 >= v67)
      {
        break;
      }

      v66 = *(v63 + 8 * v72);
      ++v68;
      if (v66)
      {
        v68 = v72;
        goto LABEL_53;
      }
    }

    if (*(v32 + 2))
    {
      v120 = 0;
      v121 = 0xE000000000000000;
      sub_27237820C();

      v120 = 0xD000000000000012;
      v121 = 0x800000027238B8B0;
      v119 = v32;
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_272203B18();
      v93 = sub_2723777CC();
      v95 = v94;

      MEMORY[0x2743C4AD0](v93, v95);

      v96 = v120;
      v97 = v121;
      sub_2722032B4();
      swift_allocError();
      *v98 = v96;
      v98[1] = v97;
      swift_willThrow();
      sub_272272F68(v112);
    }

    v71(&v120, v92);
    v100 = v122;
    v101 = v123;
    sub_27220300C(&v120, v122);
    v17 = v124;
    v102 = v115;
    (*(v101 + 16))(v124, v100, v101);
    if (v102)
    {
      sub_272272F68(v112);

      sub_2722039C8(&v120);
    }

    sub_2722039C8(&v120);
    v103 = v112;
    VASignpostInterval.end(_:)(0);
    sub_272272F68(v103);
  }

  else
  {
    v30 = v117;
  }

  v120 = VARuntimeParameters.keywordsNoThresholds.getter();

  v32 = 0;
  sub_272272490(&v120);

  v33 = v120;
  v34 = sub_272377B5C();
  *(v34 + 16) = 48;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0u;
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 96) = 0u;
  *(v34 + 112) = 0u;
  *(v34 + 128) = 0u;
  *(v34 + 144) = 0u;
  *(v34 + 160) = 0u;
  *(v34 + 176) = 0u;
  *(v34 + 192) = 0u;
  *(v34 + 208) = 0u;
  v35 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v36 = sub_27220392C(v34, v35);

  *(v30 + 72) = v36;

  v37 = [objc_allocWithZone(MEMORY[0x277CBFF40]) init];
  v38 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v39 = sub_272272FC4(v37, v38);

  swift_beginAccess();
  *(v30 + 80) = v39;

  v114 = *(v33 + 2);
  if (v114)
  {
    v40 = 0;
    v113 = v33 + 32;
    v112 = xmmword_27237AF80;
    v116 = v33;
    while (v40 < *(v33 + 2))
    {
      if (!*(v17 + 16) || (v41 = 0, v42 = &v113[16 * v40], v32 = *v42, v43 = *(v42 + 1), , v44 = sub_27220038C(v32, v43), v46 = v45, , (v46 & 1) == 0))
      {

        sub_2722032B4();
        swift_allocError();
        *v99 = 0xD00000000000001DLL;
        v99[1] = 0x800000027238B8D0;
        swift_willThrow();
      }

      v47 = *(*(v17 + 56) + 8 * v44);
      v48 = *(v47 + 16);
      if (v48)
      {
        v115 = 0;

        v49 = 0;
        v50 = *(v30 + 72);
        while (1)
        {
          v51 = *(v47 + 8 * v49 + 32);
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *(v30 + 72) = v50;
          if ((v52 & 1) == 0)
          {
            v50 = sub_272200344(v50);
            *(v30 + 72) = v50;
          }

          if (v40 >= v50[2])
          {
            break;
          }

          v53 = v50[v40 + 4];
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v50[v40 + 4] = v53;
          if ((v54 & 1) == 0)
          {
            v53 = sub_2722002AC(v53);
            v50[v40 + 4] = v53;
          }

          v30 = v117;
          if (v49 >= *(v53 + 2))
          {
            goto LABEL_84;
          }

          *&v53[4 * v49 + 32] = v51;
          *(v30 + 72) = v50;
          if (v48 == ++v49)
          {

            v41 = v115;
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

LABEL_34:
      sub_2721F065C(&qword_280881850, &unk_27237E840);
      v55 = swift_allocObject();
      *(v55 + 16) = v112;
      v56 = *(v30 + 72);
      if (v40 >= *(v56 + 16))
      {
        goto LABEL_88;
      }

      v57 = v55;
      *(v55 + 32) = *(v56 + 8 * v40 + 32);

      v32 = v41;
      sub_272256C78(v57);
      if (v41)
      {
      }

      v59 = v58;

      swift_beginAccess();
      v60 = *(v30 + 80);
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v30 + 80) = v60;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v60 & 0x8000000000000000) != 0 || (v60 & 0x4000000000000000) != 0)
      {
        v60 = sub_27227242C(v60);
        *(v30 + 80) = v60;
      }

      if (v40 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v40 + 0x20);
      *((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v40 + 0x20) = v59;
      *(v30 + 80) = v60;
      swift_endAccess();

      ++v40;
      v33 = v116;
      if (v40 == v114)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_87;
  }

LABEL_42:
}

uint64_t sub_272271854(unint64_t a1, char a2)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v15 = result;
    if (sub_2723783AC())
    {
      v16 = sub_2723783AC();
      result = v15;
      if (v16 >= 2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_16:
    type metadata accessor for VAResultGeneratorInput();
    return VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(0, 0, 0);
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_16;
  }

  if (v11 >= 2)
  {
LABEL_4:
    v12 = 0x80000002723886D0;
    sub_2722032B4();
    swift_allocError();
    v14 = 0xD00000000000001FLL;
LABEL_18:
    *v13 = v14;
    v13[1] = v12;
    return swift_willThrow();
  }

LABEL_7:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = result;
    MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = result;
    swift_unknownObjectRetain();
  }

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v12 = 0x80000002723886B0;
    sub_2722032B4();
    swift_allocError();
    v14 = 0xD000000000000018;
    goto LABEL_18;
  }

  if ((*(v18 + 16) & 1) == 0)
  {
LABEL_22:
    type metadata accessor for VAResultGeneratorInput();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_23;
  }

  if (!*(v2[9] + 16))
  {
    v25 = sub_2722C389C();
    (*(v7 + 16))(v10, v25, v17);
    v26 = sub_27237725C();
    v27 = sub_272377E8C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2721E4000, v26, v27, "No pronunciations set for this model", v28, 2u);
      MEMORY[0x2743C69C0](v28, -1, -1);
    }

    (*(v7 + 8))(v10, v17);
    goto LABEL_22;
  }

  if (a2)
  {
    v19 = v18;
    v20 = (*(*v2 + 160))();
LABEL_15:
    type metadata accessor for VAResultGeneratorInput();
    v21 = *(v19 + 32);

    v22 = 1;
    v23 = v20;
    v24 = v21;
LABEL_23:
    v29 = VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(v22, v23, v24);
    swift_unknownObjectRelease();
    return v29;
  }

  if (*(v18 + 40))
  {
    v19 = v18;
    v30 = *(*v2 + 312);

    v20 = v30(v31);

    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v32 = 0xD00000000000001ELL;
    v32[1] = 0x800000027238B8F0;
    swift_willThrow();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_272271C60(uint64_t a1)
{
  v3 = v1;
  v5 = sub_27220392C(MEMORY[0x277D84F90], *(v1[9] + 16));
  v6 = (*(*v1 + 272))(v40);
  sub_27225677C(a1, v7);
  if (v2)
  {

    v6(v40, 1);
    return v5;
  }

  v9 = (v6)(v40, 0);
  v10 = (*(*v3 + 256))(v9);
  if (!v10)
  {

    sub_2722032B4();
    swift_allocError();
    *v35 = 0xD000000000000024;
    v35[1] = 0x800000027238B910;
    swift_willThrow();
    return v5;
  }

  v11 = v10;
  v12 = *(v3[9] + 16);
  result = swift_beginAccess();
  if (!v12)
  {
LABEL_16:

    return v5;
  }

  v13 = 4;
  v36 = v11;
  v37 = v3;
  while (1)
  {
    v14 = v3[10];
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    v34 = v11;

    v17 = MEMORY[0x2743C5370](v13 - 4, v14);

LABEL_10:
    type metadata accessor for at_verifier_rdr_125141826Input();
    sub_2722B4168(v11, v17);
    v18 = (*(*v3[2] + 136))();
    v39 = v12;
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_27237AFB0;
    v38 = v5;
    v20 = *(*v18 + 88);
    v21 = v20();
    v22 = [v21 objectAtIndexedSubscript_];

    [v22 floatValue];
    v24 = v23;

    *(v19 + 32) = v24;
    v25 = v20();
    v26 = [v25 objectAtIndexedSubscript_];

    [v26 floatValue];
    v28 = v27;

    *(v19 + 36) = v28;
    v29 = v20();
    v5 = v38;
    v30 = v29;
    v31 = [v29 objectAtIndexedSubscript_];

    [v31 floatValue];
    v33 = v32;

    *(v19 + 40) = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_272200344(v38);
    }

    v11 = v36;
    v3 = v37;
    if ((v13 - 4) >= *(v5 + 16))
    {
      goto LABEL_19;
    }

    *(v5 + 8 * v13) = v19;

    ++v13;
    --v12;
    if (v39 == 1)
    {
      goto LABEL_16;
    }
  }

  if ((v13 - 4) < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 8 * v13);
    v16 = v11;
    v17 = v15;
    goto LABEL_10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_2722720B0()
{

  sub_2722039C8((v0 + 32));

  v1 = *(v0 + 88);
}

uint64_t VAA2TVerifierV2.deinit()
{
  v0 = VAVerifierModel.deinit();

  sub_2722039C8((v0 + 32));

  return v0;
}

uint64_t VAA2TVerifierV2.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();

  sub_2722039C8((v0 + 32));

  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

void sub_2722722B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
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
      sub_27223C9E8(v16, a4 & 1);
      v11 = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2723786BC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_27223D2B8();
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

uint64_t sub_27227242C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2723783AC();
  }

  return sub_27237822C();
}

uint64_t sub_272272490(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_272272F54(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2722724FC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2722724FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27237861C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_272377B5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2722726C4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2722725F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2722725F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_27237865C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2722726C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_272244CC4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_272272CA0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_27237865C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_27237865C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272244480(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_272244480((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_272272CA0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_272244CC4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_272272EC8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_27237865C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_272272CA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_27237865C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_27237865C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_272272EC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_272244CC4(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_272272F68(uint64_t a1)
{
  v2 = type metadata accessor for VASignpostInterval(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_272272FC4(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    sub_272273128();
    v4 = sub_272377B5C();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

unint64_t sub_272273128()
{
  result = qword_2808821D0;
  if (!qword_2808821D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2808821D0);
  }

  return result;
}

VoiceActions::SpeechDetectorMode_optional __swiftcall SpeechDetectorMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_272273248@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_27227328C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_27227330C()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_272273364(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2722733C4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272273408(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272273458()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_2722734B4(*v1, v1[1]);
  return v2;
}

uint64_t sub_2722734B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2722734C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_272273524(v6, v7);
}

uint64_t sub_272273524(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_272273574()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_locale;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2722735C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_locale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272273640@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_2722736EC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t VASpeechAPISpotterConfiguration.__allocating_init(taskHint:farField:keepModelLoaded:speechDetectorMode:batchAudioMode:hypothesisCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v11 = a3;
  v12 = a2;
  swift_allocObject();
  v14 = sub_272273AC8(a1, v12, v11, a4, v9, a6, a7);
  sub_272273524(a6, a7);
  return v14;
}

uint64_t VASpeechAPISpotterConfiguration.init(taskHint:farField:keepModelLoaded:speechDetectorMode:batchAudioMode:hypothesisCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_272273AC8(a1, a2, a3, a4, a5, a6, a7);
  sub_272273524(a6, a7);
  return v9;
}

uint64_t VASpeechAPISpotterConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint;
  v2 = sub_27237768C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_272273524(*(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback), *(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback + 8));
  v3 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_modelOptions;
  v4 = sub_27237732C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_analysisOptions;
  v6 = sub_2723774DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t VASpeechAPISpotterConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint;
  v2 = sub_27237768C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_272273524(*(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback), *(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback + 8));
  v3 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_modelOptions;
  v4 = sub_27237732C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_analysisOptions;
  v6 = sub_2723774DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_272273AC8(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v78 = a6;
  v79 = a7;
  v77 = a5;
  v68 = a3;
  v76 = a2;
  v66 = a1;
  v9 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v74 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v72 = &v56[-v12];
  v75 = sub_27237732C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_27237768C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v67 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2721F065C(&qword_2808821D8, &unk_27237F088);
  MEMORY[0x28223BE20](v17 - 8);
  v65 = &v56[-v18];
  v64 = sub_2723774BC();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_272377C3C();
  MEMORY[0x28223BE20](v20 - 8);
  v58 = &v56[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_2723774DC();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v23 = &v56[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = *a4;
  *(v7 + 16) = 1;
  v24 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint;
  v59 = *MEMORY[0x277CDCE70];
  v25 = v14;
  (*(v15 + 104))(v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint);
  v26 = (v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString);
  *v26 = 0x6F69746174636944;
  v26[1] = 0xE90000000000006ELL;
  v69 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode;
  *(v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode) = 0;
  v27 = (v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback);
  *v27 = 0;
  v27[1] = 0;
  v70 = v27;
  v28 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_locale;
  v29 = objc_allocWithZone(MEMORY[0x277CBEAF8]);
  v30 = sub_2723777FC();
  v31 = [v29 initWithLocaleIdentifier_];

  *(v7 + v28) = v31;
  v32 = v66;
  swift_beginAccess();
  v33 = v7 + v24;
  v34 = v7;
  v35 = v25;
  (*(v15 + 24))(v33, v32, v25);
  swift_endAccess();
  swift_beginAccess();
  *(v7 + 16) = v57;
  sub_272377C1C();
  v36 = MEMORY[0x277CDCC20];
  if ((v68 & 1) == 0)
  {
    v36 = MEMORY[0x277CDCC10];
  }

  (*(v62 + 104))(v60, *v36, v64);
  v37 = sub_2723774AC();
  (*(*(v37 - 8) + 56))(v65, 1, 1, v37);
  sub_2723774CC();
  (*(v61 + 32))(v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_analysisOptions, v23, v63);
  v38 = v32;
  v39 = v67;
  (*(v15 + 16))(v67, v38, v35);
  v40 = (*(v15 + 88))(v39, v35);
  if (v40 != v59)
  {
    if (v40 == *MEMORY[0x277CDCE50])
    {
      swift_beginAccess();
      v42 = 0x686372616553;
      v43 = 0xE600000000000000;
LABEL_12:
      *v26 = v42;
      v26[1] = v43;
      goto LABEL_13;
    }

    if (v40 == *MEMORY[0x277CDCE10])
    {
      swift_beginAccess();
      v42 = 0x616D7269666E6F43;
      v43 = 0xEC0000006E6F6974;
      goto LABEL_12;
    }

    if (v40 == *MEMORY[0x277CDCE68])
    {
      swift_beginAccess();
      v42 = 0x6E61747369737341;
      v43 = 0xE900000000000074;
      goto LABEL_12;
    }

    if (v40 == *MEMORY[0x277CDCE38])
    {
      v54 = 0x800000027238BB20;
      swift_beginAccess();
      v55 = 0xD000000000000012;
    }

    else
    {
      if (v40 == *MEMORY[0x277CDCE28])
      {
        v54 = 0x800000027238BB00;
      }

      else
      {
        if (v40 == *MEMORY[0x277CDCE20])
        {
          swift_beginAccess();
          v42 = 0x6369446863746157;
          v43 = 0xEE006E6F69746174;
          goto LABEL_12;
        }

        if (v40 == *MEMORY[0x277CDCE78])
        {
          swift_beginAccess();
          v42 = 0x69616D6563696F56;
          v43 = 0xE90000000000006CLL;
          goto LABEL_12;
        }

        if (v40 == *MEMORY[0x277CDCE18])
        {
          swift_beginAccess();
          v42 = 0x436E49646E756F46;
          v43 = 0xEC000000736C6C61;
          goto LABEL_12;
        }

        if (v40 == *MEMORY[0x277CDCE00])
        {
          swift_beginAccess();
          v42 = 0x696E6F6974706143;
          v43 = 0xEA0000000000676ELL;
          goto LABEL_12;
        }

        if (v40 == *MEMORY[0x277CDCE08])
        {
          swift_beginAccess();
          v41 = 0xEB0000000043436ELL;
          *v26 = 0x6F69746174636944;
          goto LABEL_5;
        }

        if (v40 == *MEMORY[0x277CDCE58])
        {
          swift_beginAccess();
          v42 = 0x43436C6C657053;
          v43 = 0xE700000000000000;
          goto LABEL_12;
        }

        if (v40 == *MEMORY[0x277CDCE60])
        {
          swift_beginAccess();
          v42 = 0x676E696C6C657053;
          v43 = 0xE800000000000000;
          goto LABEL_12;
        }

        if (v40 == *MEMORY[0x277CDCE48])
        {
          swift_beginAccess();
          v42 = 0x746F687354;
          v43 = 0xE500000000000000;
          goto LABEL_12;
        }

        if (v40 == *MEMORY[0x277CDCE40])
        {
          v54 = 0x800000027238BAE0;
          swift_beginAccess();
          v55 = 0xD000000000000014;
          goto LABEL_20;
        }

        if (v40 != *MEMORY[0x277CDCE30])
        {
          swift_beginAccess();
          *v26 = 0x746C7561666544;
          v26[1] = 0xE700000000000000;

          (*(v15 + 8))(v39, v35);
          goto LABEL_14;
        }

        v54 = 0x800000027238BAC0;
      }

      swift_beginAccess();
      v55 = 0xD000000000000011;
    }

LABEL_20:
    *v26 = v55;
    v26[1] = v54;
    goto LABEL_13;
  }

  swift_beginAccess();
  *v26 = 0x6F69746174636944;
  v41 = 0xE90000000000006ELL;
LABEL_5:
  v26[1] = v41;
LABEL_13:

LABEL_14:
  v44 = sub_272376D5C();
  v45 = *(*(v44 - 8) + 56);
  v45(v72, 1, 1, v44);
  v45(v74, 1, 1, v44);
  swift_beginAccess();

  v46 = v71;
  sub_27237731C();
  (*(v15 + 8))(v38, v35);
  (*(v73 + 32))(v34 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_modelOptions, v46, v75);
  v47 = v69;
  swift_beginAccess();
  *(v34 + v47) = v77 & 1;
  v48 = v70;
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  v51 = v78;
  v52 = v79;
  *v48 = v78;
  v48[1] = v52;
  sub_2722734B4(v51, v52);
  sub_272273524(v49, v50);
  return v34;
}

uint64_t type metadata accessor for VASpeechAPISpotterConfiguration(uint64_t a1)
{
  result = qword_280888300;
  if (!qword_280888300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722747C0(uint64_t a1)
{
  result = sub_27237768C();
  if (v2 <= 0x3F)
  {
    result = sub_27237732C();
    if (v3 <= 0x3F)
    {
      result = sub_2723774DC();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_272274924()
{
  result = qword_2808821E0;
  if (!qword_2808821E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808821E0);
  }

  return result;
}

uint64_t sub_272274988(uint64_t a1)
{
  v2 = v1;
  v13 = 4;
  type metadata accessor for e5rt_tensor_desc_component_dtype_t(0);
  type metadata accessor for e5rt_error_code_t(0);
  sub_272292FA0(&v13, sub_272276E48, v3, &v12);
  if (!v1)
  {
    v4 = v12;
    v5 = sub_272275FF0();
    v6 = (v5 + 32);
    v7 = *(v5 + 16) + 1;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = *v6;
      v6 += 2;
      if (v9 == v4)
      {
        v2 = *(v8 - 4);

        return v2;
      }
    }

    sub_272274924();
    v2 = swift_allocError();
    *v10 = 5;
    *(v10 + 4) = 1;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_272274ABC()
{
  v0 = MEMORY[0x277D07970];

  return sub_2722759BC(v0);
}

void *sub_272274B6C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_272292FA0(&v6, sub_272276E48, v3, &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_272274C60()
{
  v0 = MEMORY[0x277D077D0];

  return sub_2722759BC(v0);
}

void *sub_272274CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = a2;
  v14 = a1;
  v11[2] = a3;
  v11[3] = &v12;
  v8 = sub_2721F065C(&qword_2808821E8, &qword_27237F098);
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a4, v11, v8, v9, &v15);
  if (!v5)
  {
    *a5 = v15;
  }

  return result;
}

void *sub_272274D74(uint64_t a1, void *a2)
{
  v8[2] = a1;
  v9 = 0;
  v4 = sub_2721F065C(&qword_2808821E8, &qword_27237F098);
  sub_272292CB8(&v11, &v10, &v9, a2, v8, MEMORY[0x277D83B88], v4);
  if (!v2)
  {
    v5 = v11;
    if (v11)
    {
      v6 = v10;
      a2 = sub_272275CE4(v11, 0);
      memcpy(a2 + 4, v6, 8 * v5);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void *sub_272274E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v9[2] = a2;
  v9[3] = &v10;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a3, v9, a4, v7, &v12);
  if (!v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_272274EC0()
{
  v0 = MEMORY[0x277D07990];

  return sub_2722759BC(v0);
}

void *sub_272275078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v12 = *(v3 + 16);
  v10[2] = a1;
  v10[3] = &v11;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a2, v10, MEMORY[0x277D841D8], v7, &v13);
  if (!v4)
  {
    v9 = v13;
    a3(result);
    result = swift_allocObject();
    result[2] = v9;
  }

  return result;
}

uint64_t sub_27227512C()
{
  v0 = MEMORY[0x277D078D8];

  return sub_2722759BC(v0);
}

uint64_t sub_27227521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_2723778BC();
  sub_2723778BC();
  sub_2723778BC();
  precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

  return precompiled_compute_operation;
}

char *sub_2722752D8(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, void, uint64_t))
{
  if (a1 < 0)
  {
    goto LABEL_24;
  }

  v7 = a3;
  v6 = v5;
  v8 = a2;
  v10 = a1;
  v9 = MEMORY[0x277D84F90];
  if (a1)
  {
    v23 = MEMORY[0x277D84F90];
    v4 = &v23;
    sub_272275D88(0, a1, 0);
    v3 = v23;
    v11 = *(v23 + 2);
    do
    {
      v23 = v3;
      v12 = *(v3 + 3);
      if (v11 >= v12 >> 1)
      {
        v4 = &v23;
        sub_272275D88((v12 > 1), v11 + 1, 1);
        v3 = v23;
      }

      *(v3 + 2) = v11 + 1;
      *&v3[8 * v11++ + 32] = 0;
      --v10;
    }

    while (v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v13 = v7(v8, *(v3 + 2), (v3 + 32));
    sub_2722761A4(v13);
    if (v6)
    {
LABEL_11:

      return v4;
    }

    v7 = *(v3 + 2);
    if (!v7)
    {
      break;
    }

    v23 = v9;
    sub_27220056C(0, v7, 0);
    v15 = 0;
    v4 = v23;
    while (v15 < *(v3 + 2))
    {
      if (!*&v3[8 * v15 + 32])
      {

        sub_272274924();
        swift_allocError();
        *v22 = 3;
        *(v22 + 4) = 1;
        swift_willThrow();

        return v4;
      }

      v16 = sub_27237798C();
      v23 = v4;
      v19 = *(v4 + 2);
      v18 = *(v4 + 3);
      v8 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v9 = v16;
        v21 = v17;
        sub_27220056C((v18 > 1), v19 + 1, 1);
        v17 = v21;
        v16 = v9;
        v4 = v23;
      }

      ++v15;
      *(v4 + 2) = v8;
      v20 = &v4[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      if (v7 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v3 = sub_272275FAC(v3);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_272275514()
{
  v0 = MEMORY[0x277D07890];

  return sub_2722759BC(v0);
}

void *sub_272275584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v12[2] = sub_272276E64;
  v12[3] = &v13;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, sub_272276D4C, v12, MEMORY[0x277D841D8], v9, &v22);
  if (!v8)
  {
    v11 = v22;
    result = swift_allocObject();
    result[2] = v11;
  }

  return result;
}

uint64_t sub_272275668()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000028;
  v0[1] = 0x800000027238BB70;
  return swift_willThrow();
}

char *sub_272275774(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, void, uint64_t))
{
  v6 = *(v3 + 16);
  v10 = 0;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_272292FA0(&v10, sub_272276E48, v7, &v9);
  if (!v4)
  {
    return sub_2722752D8(v9, v6, a3);
  }

  return result;
}

void *sub_27227589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *(v4 + 16);
  v13 = a1;
  v14 = a2;
  v10[2] = a3;
  v10[3] = &v11;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a4, v10, MEMORY[0x277D841D8], v7, &v15);
  if (!v5)
  {
    v9 = v15;
    type metadata accessor for E5RTIOPort();
    result = swift_allocObject();
    result[2] = v9;
  }

  return result;
}

uint64_t sub_27227594C()
{
  v0 = MEMORY[0x277D078A8];

  return sub_2722759BC(v0);
}

uint64_t sub_2722759BC(uint64_t (*a1)(void *))
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *(v1 + 16);
  v2 = a1(v4);
  sub_2722761A4(v2);
  return swift_deallocClassInstance();
}

void *sub_272275A6C()
{
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, sub_272275FC0, 0, MEMORY[0x277D841D8], v1, &v4);
  if (!v0)
  {
    v3 = v4;
    result = swift_allocObject();
    result[2] = v3;
  }

  return result;
}

_DWORD *sub_272275BC4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *sub_272275BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882218, &unk_27237F4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_272275CE4(uint64_t a1, uint64_t a2)
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

  sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_272275D68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_272275DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272275D88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_272275EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272275DA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882220, &qword_27237F4B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_272275EA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882218, &unk_27237F4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_272275FC0@<X0>(_DWORD *a1@<X8>)
{
  result = e5rt_execution_stream_create();
  *a1 = result;
  return result;
}

uint64_t sub_272275FF0()
{
  v16 = MEMORY[0x277D84F90];
  sub_272275D68(0, 5, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_272275D68((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 8 * v2;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_272275D68((v1 > 1), v2 + 2, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 8 * v4;
  *(v7 + 32) = 1;
  *(v7 + 36) = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_272275D68((v1 > 1), v2 + 3, 1);
  }

  result = v16;
  *(v16 + 16) = v8;
  v10 = v16 + 8 * v6;
  *(v10 + 32) = 2;
  *(v10 + 36) = 2;
  v11 = *(v16 + 24);
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    sub_272275D68((v11 > 1), v2 + 4, 1);
    result = v16;
  }

  *(result + 16) = v12;
  v13 = result + 8 * v8;
  *(v13 + 32) = 3;
  *(v13 + 36) = 3;
  v14 = *(result + 24);
  if ((v2 + 5) > (v14 >> 1))
  {
    sub_272275D68((v14 > 1), v2 + 5, 1);
    result = v16;
  }

  *(result + 16) = v2 + 5;
  v15 = result + 8 * v12;
  *(v15 + 32) = 4;
  *(v15 + 36) = 4;
  return result;
}

uint64_t sub_2722761A4(void *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v33 - v8;
  if (a1)
  {
    if (MEMORY[0x2743C5F20](a1))
    {
      v10 = sub_27237798C();
      v12 = v11;
      v13 = sub_2722C389C();
      (*(v3 + 16))(v9, v13, v2);

      v14 = sub_27237725C();
      v15 = sub_272377E8C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        LODWORD(v35) = a1;
        a1 = v17;
        v37 = v17;
        *v16 = 136315138;
        v18 = sub_2721FFD04(v10, v12, &v37);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_2721E4000, v14, v15, "Error in E5RTWrapper: %s", v16, 0xCu);
        sub_2722039C8(a1);
        v19 = a1;
        LODWORD(a1) = v35;
        MEMORY[0x2743C69C0](v19, -1, -1);
        MEMORY[0x2743C69C0](v16, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v9, v2);
    }

    else
    {
      sub_272274924();
      v20 = swift_allocError();
      *v21 = 4;
      *(v21 + 4) = 1;
      swift_willThrow();
      v22 = sub_2722C389C();
      (*(v3 + 16))(v6, v22, v2);
      v23 = sub_27237725C();
      v24 = sub_272377E8C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v37 = v35;
        *v25 = 136315138;
        v36 = a1;
        type metadata accessor for e5rt_error_code_t(0);
        v26 = sub_27237789C();
        v28 = sub_2721FFD04(v26, v27, &v37);
        v34 = v20;
        v29 = v28;

        *(v25 + 4) = v29;
        _os_log_impl(&dword_2721E4000, v23, v24, "Error in E5RTWrapper and could not get error string. Code: %s", v25, 0xCu);
        v30 = v35;
        sub_2722039C8(v35);
        MEMORY[0x2743C69C0](v30, -1, -1);
        MEMORY[0x2743C69C0](v25, -1, -1);
        v31 = v34;
      }

      else
      {
        v31 = v20;
      }

      (*(v3 + 8))(v6, v2);
    }

    sub_272274924();
    swift_allocError();
    *v32 = a1;
    *(v32 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2722765D0@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_272276618(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_27227698C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = sub_2723778BC();
  v7 = a2(v5, v6 + 32, a1);

  return v7;
}

unint64_t sub_272276A00()
{
  result = qword_2808821F0;
  if (!qword_2808821F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808821F0);
  }

  return result;
}

unint64_t sub_272276A58()
{
  result = qword_2808821F8;
  if (!qword_2808821F8)
  {
    sub_2721F214C(&qword_280882200, qword_27237F108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808821F8);
  }

  return result;
}

uint64_t _s12VoiceActions16UnsafeE5RTIOPortVwet_0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s12VoiceActions16UnsafeE5RTIOPortVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for E5RTUtils.DomainError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_272276C88(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_272276CA4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t VAAVSBuildEnrollmentFactory(delegate:computeUnits:maxSamplesPerEnrollment:)(uint64_t a1, char *a2, Swift::Int a3, char a4)
{
  v8 = *a2;
  type metadata accessor for VAAVSAudioEncoderModel();
  LOBYTE(v30.rejectEnrollmentThreshold) = v8;
  result = VAAVSAudioEncoderModel.__allocating_init(computeUnits:)(&v30);
  if (!v4)
  {
    v16 = result;
    AVSConfig.init()(&v31);
    if ((a4 & 1) == 0)
    {
      AVSConfig.setEnrollmentParams(maxSamplesPerEnrollment:)(a3);
    }

    type metadata accessor for VAAVSVerifierModel();
    v30 = v31;
    VAAVSVerifierModel.__allocating_init(configuration:)(&v30);
    v24 = *&v31.streamingMinDuration;
    v25 = *&v31.enrollMinimumSilenceFrames;
    v26 = *&v31.enrollSpeechThreshold;
    minDuration_high = HIDWORD(v31.minDuration);
    streamingMinimumSilenceFrames = v31.streamingMinimumSilenceFrames;
    v23 = *&v31.streamingMinimumSpeechFrames;
    maxSamplesPerEnrollment = v31.maxSamplesPerEnrollment;
    recency = v31.recency;
    v28 = v31.maxSamplesPerEnrollment;
    AVSConfig.getAVSEndpointerConfig()(&v29);
    minimumSilenceFrames = v29.minimumSilenceFrames;
    minimumSpeechFrames = v29.minimumSpeechFrames;
    speechThreshold = v29.speechThreshold;
    minDuration = v29.minDuration;
    v14 = v29.recency;
    type metadata accessor for VAAVSAudioEnrollerFactory();
    v17[0] = minimumSilenceFrames;
    v17[1] = minimumSpeechFrames;
    v18 = speechThreshold;
    v20 = minDuration;
    v21 = v14;
    sub_272277044(a1, &v29);
    return VAAVSAudioEnrollerFactory.__allocating_init(encoder:endpointerConfig:delegate:maxSamplesPerEnrollment:)(v16, v17, &v29, maxSamplesPerEnrollment, 0);
  }

  return result;
}

uint64_t sub_272277044(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VAAVSBuildKeywordSpotter(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for VAAVSAudioEncoderModel();
  v17 = v4;
  v6 = VAAVSAudioEncoderModel.__allocating_init(computeUnits:)(&v17);
  if (!v2)
  {
    v7 = v6;
    AVSConfig.init()(&v16);
    v8 = type metadata accessor for VAAVSVerifierModel();
    v10 = VAAVSVerifierModel.__allocating_init(configuration:)(&v16);
    v11 = type metadata accessor for VAStrategyProviderAVS();
    v12 = VAStrategyProviderAVS.__allocating_init()();
    type metadata accessor for VAFlexibleKeywordSpotter();
    type metadata accessor for VAConfiguration();
    swift_unknownObjectRetain();

    v13 = static VAConfiguration.buildForFlexibleAVS()();
    v16.maxDuration = v11;
    v16.resampleDuration = &protocol witness table for VAStrategyProviderAVS;
    *&v16.rejectEnrollmentThreshold = v12;
    v15[3] = v8;
    v15[4] = &protocol witness table for VAAVSVerifierModel;
    v15[0] = v10;

    v14 = sub_2721F7EE4();
    v5 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(a1, v14 & 1, v10, v7, v13, &v16, v15);
  }

  return v5;
}

uint64_t VAA2ABuildEnrollmentFactory(delegate:computeUnits:maxSamplesPerEnrollment:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for VAA2AAudioEncoderModel();
  v7[0] = v4;
  result = VAA2AAudioEncoderModel.__allocating_init(computeUnits:)(v7);
  if (!v2)
  {
    v6 = result;
    type metadata accessor for VAA2AVerifierModel();
    v7[0] = v4;
    VAA2AVerifierModel.__allocating_init(computeUnits:)(v7);
    type metadata accessor for VAA2AAudioEnrollerFactory();
    sub_272277044(a1, v7);
    return VAA2AAudioEnrollerFactory.__allocating_init(encoder:delegate:)(v6, v7);
  }

  return result;
}

uint64_t VAA2ABuildKeywordSpotter(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for VAConfiguration();
  v5 = static VAConfiguration.buildForFlexibleA2A()();
  v6 = type metadata accessor for VAA2AAudioEncoderModel();
  LOBYTE(v18[0]) = v4;
  v7 = VAA2AAudioEncoderModel.__allocating_init(computeUnits:)(v18);
  if (v2)
  {
  }

  else
  {
    v8 = v7;
    type metadata accessor for VAA2AVerifierModel();
    LOBYTE(v18[0]) = v4;
    v9 = VAA2AVerifierModel.__allocating_init(computeUnits:)(v18);
    type metadata accessor for VAStrideConfiguration();
    v10 = static VAStrideConfiguration.forFlexibleA2A()();
    v11 = type metadata accessor for VAStrategyProviderDefault();
    v12 = v10;
    v13 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v12);
    type metadata accessor for VAFlexibleKeywordSpotter();
    v18[3] = v11;
    v18[4] = &protocol witness table for VAStrategyProviderDefault;
    v17 = 0;
    v18[0] = v13;
    memset(v16, 0, sizeof(v16));
    swift_unknownObjectRetain();

    v14 = sub_2721F7EE4();
    v6 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(a1, v14 & 1, v9, v8, v5, v18, v16);
  }

  return v6;
}

uint64_t VAA2ABuildEnrollmentFactoryV2(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for VAConfiguration();
  v5 = static VAConfiguration.buildForFlexibleA2Av2()();
  v6 = type metadata accessor for VASilenceModel();
  v7 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();
  v9 = v8;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v22);
  v23 = v22[0];
  v10 = v7;
  v11 = v6;
  v12 = sub_27228DC9C(v10, v9, &v23);
  if (v2)
  {
  }

  else
  {
    v13 = v12;
    type metadata accessor for VAFeatureExtract();
    v14 = VAFeatureExtract.__allocating_init()();
    v15 = type metadata accessor for VAA2AAudioEncoderModelV2();
    LOBYTE(v22[0]) = v4;
    v16 = VAA2AAudioEncoderModelV2.__allocating_init(computeUnits:)(v22);
    type metadata accessor for VAFeatureExtractingEncoder();
    v22[3] = v15;
    v22[4] = &protocol witness table for VAA2AAudioEncoderModelV2;
    v22[0] = v16;

    v17 = v14;

    v18 = v5;
    v19 = sub_2721F7EE4();
    VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v22, v17, v13, v18, v19 & 1);
    type metadata accessor for VAA2AVerifierModelV2();
    LOBYTE(v22[0]) = v4;
    VAA2AVerifierModelV2.__allocating_init(computeUnits:)(v22);
    type metadata accessor for VAA2AAudioEnrollerFactoryV2();
    sub_272277044(a1, v22);

    v11 = VAA2AAudioEnrollerFactoryV2.__allocating_init(encoder:delegate:)(v21, v22);
  }

  return v11;
}

uint64_t VAA2ABuildKeywordSpotterV2(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for VAConfiguration();
  v5 = static VAConfiguration.buildForFlexibleA2Av2()();
  v6 = type metadata accessor for VASilenceModel();
  v7 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();
  v9 = v8;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v31);
  LOBYTE(v29[0]) = v31[0];
  v10 = v7;
  v11 = v6;
  v12 = sub_27228DC9C(v10, v9, v29);
  if (v2)
  {
  }

  else
  {
    v13 = v12;
    type metadata accessor for VAFeatureExtract();
    v14 = VAFeatureExtract.__allocating_init()();
    v15 = type metadata accessor for VAA2AAudioEncoderModelV2();
    v31[0] = v4;
    v16 = VAA2AAudioEncoderModelV2.__allocating_init(computeUnits:)(v31);
    type metadata accessor for VAFeatureExtractingEncoder();
    v32 = v15;
    v33 = &protocol witness table for VAA2AAudioEncoderModelV2;
    *v31 = v16;

    v17 = v14;

    v18 = v5;
    v19 = sub_2721F7EE4();
    v28 = v17;
    v34 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v31, v17, v13, v18, v19 & 1);
    type metadata accessor for VAA2AVerifierModelV2();
    v31[0] = v4;
    v21 = VAA2AVerifierModelV2.__allocating_init(computeUnits:)(v31);
    type metadata accessor for VAStrideConfiguration();
    v22 = static VAStrideConfiguration.forFlexibleA2Av2()();
    v23 = type metadata accessor for VAStrategyProviderDefault();
    v27 = v22;
    v24 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v27);
    type metadata accessor for VAFlexibleKeywordSpotter();
    v32 = v23;
    v33 = &protocol witness table for VAStrategyProviderDefault;
    v30 = 0;
    *v31 = v24;
    memset(v29, 0, sizeof(v29));
    swift_unknownObjectRetain();

    v25 = v34;

    v26 = sub_2721F7EE4();
    v11 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(a1, v26 & 1, v21, v25, v18, v31, v29);
  }

  return v11;
}

uint64_t VAA2ABuildEnrollmentFactoryV3(delegate:computeUnits:)(uint64_t a1)
{
  type metadata accessor for VAConfiguration();
  v3 = static VAConfiguration.buildForFlexibleA2Av3()();
  v4 = type metadata accessor for VASilenceModel();
  v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();
  v7 = v6;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v21);
  v22 = v21[0];
  v8 = v5;
  v9 = v4;
  v10 = sub_27228DC9C(v8, v7, &v22);
  if (v1)
  {
  }

  else
  {
    v11 = v10;
    type metadata accessor for VAFeatureExtract();
    v12 = VAFeatureExtract.__allocating_init()();
    v13 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v21);
    v22 = v21[0];
    v14 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(&v22);
    type metadata accessor for VAFeatureExtractingEncoder();
    v21[3] = v13;
    v21[4] = &protocol witness table for VAA2AAudioEncoderModelV3;
    v21[0] = v14;

    v15 = v12;

    v16 = v3;
    v17 = sub_2721F7EE4();
    v18 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v21, v15, v11, v16, v17 & 1);
    type metadata accessor for VAA2AAudioEnrollerFactoryV3();
    sub_272277044(a1, v21);
    VAA2AAudioEnrollerFactoryV3.__allocating_init(encoder:delegate:)(v18, v21);
    v9 = v19;
  }

  return v9;
}

uint64_t VAA2ABuildKeywordSpotterV3(delegate:computeUnits:useResultGenerator:)(uint64_t a1, char *a2, char a3)
{
  v6 = *a2;
  type metadata accessor for VAConfiguration();
  v7 = static VAConfiguration.buildForFlexibleA2Av3()();
  v8 = type metadata accessor for VASilenceModel();
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0xE8))();
  v11 = v10;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v37);
  LOBYTE(v35[0]) = v37[0];
  v12 = v9;
  v13 = v8;
  v14 = sub_27228DC9C(v12, v11, v35);
  if (v3)
  {
  }

  else
  {
    v15 = v14;
    type metadata accessor for VAFeatureExtract();
    v16 = VAFeatureExtract.__allocating_init()();
    v17 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v37);
    LOBYTE(v35[0]) = v37[0];
    v18 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(v35);
    v40 = a1;
    type metadata accessor for VAFeatureExtractingEncoder();
    v38 = v17;
    v39 = &protocol witness table for VAA2AAudioEncoderModelV3;
    *v37 = v18;

    v19 = v16;

    v20 = v7;
    v21 = sub_2721F7EE4();
    v33 = v19;
    v34 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v37, v19, v15, v20, v21 & 1);
    v22 = type metadata accessor for VAA2AVerifierModelV3();
    v37[0] = v6;
    v24 = VAA2AVerifierModelV3.__allocating_init(computeUnits:)(v37);
    if (a3)
    {
      type metadata accessor for VAResultGeneratorVerifier(0);
      v38 = v22;
      v39 = &protocol witness table for VAA2AVerifierModelV3;
      *v37 = v24;
      v25 = v20;

      v32 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(v37, v25);
    }

    else
    {

      v32 = v24;
    }

    type metadata accessor for VAStrideConfiguration();
    v26 = static VAStrideConfiguration.forFlexibleA2Av3()();
    v27 = type metadata accessor for VAStrategyProviderDefault();
    v31 = v26;
    v28 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v31);
    type metadata accessor for VAFlexibleKeywordSpotter();
    v38 = v27;
    v39 = &protocol witness table for VAStrategyProviderDefault;
    v36 = 0;
    *v37 = v28;
    memset(v35, 0, sizeof(v35));
    v29 = v40;
    swift_unknownObjectRetain();

    v30 = sub_2721F7EE4();
    v13 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v29, v30 & 1, v32, v34, v20, v37, v35);
  }

  return v13;
}

uint64_t VAA2ABuildEnrollmentFactoryAttentionDetection(config:delegate:computeUnits:)(void *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  type metadata accessor for VASilenceModel();
  v7 = (*((*MEMORY[0x277D85000] & *a1) + 0xE8))();
  v9 = v8;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v21);
  v22 = v21[0];
  v10 = sub_27228DC9C(v7, v9, &v22);
  if (!v3)
  {
    v11 = v10;
    type metadata accessor for VAFeatureExtract();
    v12 = VAFeatureExtract.__allocating_init()();
    v13 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v21);
    v22 = v21[0];
    v14 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(&v22);
    type metadata accessor for VAFeatureExtractingEncoder();
    v21[3] = v13;
    v21[4] = &protocol witness table for VAA2AAudioEncoderModelV3;
    v21[0] = v14;

    v15 = v12;

    v16 = a1;
    v17 = sub_2721F7EE4();
    v18 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v21, v15, v11, v16, v17 & 1);
    type metadata accessor for VAA2AVerifierModelV3();
    LOBYTE(v21[0]) = v6;
    VAA2AVerifierModelV3.__allocating_init(computeUnits:)(v21);
    type metadata accessor for VAA2AAudioEnrollerFactoryV3();
    sub_272277044(a2, v21);
    VAA2AAudioEnrollerFactoryV3.__allocating_init(encoder:delegate:)(v18, v21);
    a2 = v20;
  }

  return a2;
}

void VAA2ABuildKeywordSpotterAttentionDetection(delegate:attentionDetectionConfig:)(uint64_t a1, uint64_t a2)
{
  v317 = a1;
  v330 = *MEMORY[0x277D85DE8];
  v308 = sub_272376D5C();
  v314 = *(v308 - 8);
  v3 = MEMORY[0x28223BE20](v308);
  v307 = &v254[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v309 = &v254[-v5];
  v6 = sub_27237728C();
  v315 = *(v6 - 8);
  v316 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v310 = &v254[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v311 = &v254[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v312 = &v254[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v313 = &v254[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v254[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v254[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v254[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v254[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v254[-v27];
  type metadata accessor for VAConfiguration();
  v318 = a2;
  v29 = static VAConfiguration.buildForFlexibleA2AAttentionDetection(_:)(a2);
  type metadata accessor for VASilenceModel();
  v30 = (*((*MEMORY[0x277D85000] & *v29) + 0xE8))();
  v32 = v31;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(&v326);
  LOBYTE(v323) = v326;
  v33 = v319;
  v34 = sub_27228DC9C(v30, v32, &v323);
  if (v33)
  {

    return;
  }

  v306 = v28;
  v304 = v23;
  v303 = v20;
  v305 = v17;
  v302 = v26;
  v319 = v34;
  type metadata accessor for VAFeatureExtract();
  v35 = VAFeatureExtract.__allocating_init()();
  v36 = type metadata accessor for VAA2AAudioEncoderModelV3();
  sub_27225A39C(&v326);
  LOBYTE(v323) = v326;
  v37 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(&v323);
  type metadata accessor for VAFeatureExtractingEncoder();
  v328 = v36;
  v329 = &protocol witness table for VAA2AAudioEncoderModelV3;
  v326 = v37;

  v38 = v35;
  v39 = v319;

  v40 = v29;
  v41 = sub_2721F7EE4();
  v42 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(&v326, v38, v39, v40, v41 & 1);
  v300 = v37;
  v301 = v42;
  v43 = type metadata accessor for VAA2AVerifierModelV3();
  v44 = v318;
  LOBYTE(v326) = *(v318 + 32);
  v45 = VAA2AVerifierModelV3.__allocating_init(computeUnits:)(&v326);
  v298 = v38;
  v94 = *(v44 + 33) == 1;
  v299 = v45;
  if (v94)
  {
    v46 = v45;
    type metadata accessor for VAResultGeneratorVerifier(0);
    v328 = v43;
    v329 = &protocol witness table for VAA2AVerifierModelV3;
    v326 = v46;
    v47 = v40;

    v48 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(&v326, v47);
  }

  else
  {
  }

  v49 = v48;
  v50 = v317;
  type metadata accessor for VAStrideConfiguration();
  v51 = static VAStrideConfiguration.forFlexibleA2Av3()();
  v52 = type metadata accessor for VAStrategyProviderDefault();
  v53 = v51;
  v54 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v53);
  type metadata accessor for VAFlexibleKeywordSpotter();
  v328 = v52;
  v329 = &protocol witness table for VAStrategyProviderDefault;
  v325 = 0;
  v326 = v54;
  v323 = 0u;
  v324 = 0u;
  v55 = v40;
  v56 = v54;
  v57 = v55;
  swift_unknownObjectRetain();

  v58 = v301;

  v59 = sub_2721F7EE4() & 1;
  v60 = v50;
  v61 = v57;
  v62 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v60, v59, v49, v58, v57, &v326, &v323);
  v63 = 0;
  v64 = v62;
  v297 = v53;
  v65 = type metadata accessor for VAA2ABuilderEnrollerDelegate();
  v66 = swift_allocObject();
  v67 = MEMORY[0x277D84F90];
  v66[2] = MEMORY[0x277D84F90];
  v66[3] = v67;
  v328 = v65;
  v329 = &off_28817F048;
  v326 = v66;
  LOBYTE(v323) = 1;

  v68 = VAA2ABuildEnrollmentFactoryAttentionDetection(config:delegate:computeUnits:)(v61, &v326, &v323);
  v284 = v66 + 3;
  v290 = v66 + 2;
  v293 = v68;
  sub_27227B688(&v326);

  v70 = v318;
  v71 = (*(**(v318 + 16) + 248))(v69);
  v73 = v71;
  v74 = *(v70 + 24);
  v75 = *(v74 + 16);
  v283 = v74;
  if (!v75)
  {
LABEL_121:

    v194 = v290;
    swift_beginAccess();
    if (*(*v194 + 16))
    {
      v195 = sub_2722C389C();
      v196 = v312;
      (*(v315 + 16))(v312, v195, v316);

      v197 = sub_27237725C();
      v198 = sub_272377E7C();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        *v199 = 134217984;
        *(v199 + 4) = *(v66[2] + 16);

        _os_log_impl(&dword_2721E4000, v197, v198, "Successfully enrolled %ld enrollments.", v199, 0xCu);
        v196 = v312;
        MEMORY[0x2743C69C0](v199, -1, -1);
      }

      else
      {
      }

      (*(v315 + 8))(v196, v316);
      v194 = v290;

      VAA2AVerifierModelV3.setAudioEnrollments(enrollments:)(v219);
      if (v220)
      {

        goto LABEL_7;
      }
    }

    v221 = v284;
    swift_beginAccess();
    if (!*(*v221 + 16))
    {
      if (*(*v194 + 16))
      {

        return;
      }

      v286 = v66;
      v287 = v61;
      v289 = v56;
      v285 = v64;
      v288 = v49;
      v233 = sub_2722C389C();
      v234 = v315;
      v235 = v316;
      v236 = v310;
      (*(v315 + 16))(v310, v233, v316);

      v237 = sub_27237725C();
      v238 = sub_272377E8C();

      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        v321 = v240;
        *v239 = 136315138;
        v241 = MEMORY[0x2743C4C60](v283, MEMORY[0x277D837D0]);
        v243 = sub_2721FFD04(v241, v242, &v321);

        *(v239 + 4) = v243;
        _os_log_impl(&dword_2721E4000, v237, v238, "0 enrollments found for %s", v239, 0xCu);
        sub_2722039C8(v240);
        MEMORY[0x2743C69C0](v240, -1, -1);
        MEMORY[0x2743C69C0](v239, -1, -1);
      }

      (*(v234 + 8))(v236, v235);
      sub_2722032B4();
      swift_allocError();
      *v244 = 0xD000000000000015;
      v244[1] = 0x800000027238BCF0;
      swift_willThrow();

LABEL_8:

      return;
    }

    v222 = sub_2722C389C();
    v223 = v315;
    v224 = v311;
    (*(v315 + 16))(v311, v222, v316);

    v225 = sub_27237725C();
    v226 = sub_272377E7C();
    if (os_log_type_enabled(v225, v226))
    {
      v227 = swift_slowAlloc();
      *v227 = 134217984;
      *(v227 + 4) = *(v66[3] + 16);

      _os_log_impl(&dword_2721E4000, v225, v226, "Failed to enroll %ld enrollments.", v227, 0xCu);
      v228 = v227;
      v224 = v311;
      MEMORY[0x2743C69C0](v228, -1, -1);
    }

    else
    {
    }

    (*(v223 + 8))(v224, v316);
    v321 = 0;
    v322 = 0xE000000000000000;
    sub_27237820C();

    v321 = 0xD000000000000011;
    v322 = 0x800000027238BD10;
    v320 = *(v66[3] + 16);
    v229 = sub_27237862C();
    MEMORY[0x2743C4AD0](v229);

    MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xED00002E73746E65);
    v230 = v321;
    v231 = v322;
    sub_2722032B4();
    swift_allocError();
    *v232 = v230;
    v232[1] = v231;
    swift_willThrow();

LABEL_7:

    goto LABEL_8;
  }

  v76 = 0;
  v77 = v71 + 64;
  v78 = v74 + 32;
  v291 = (v315 + 16);
  v292 = (v315 + 8);
  v275 = (v314 + 16);
  v276 = (v314 + 8);
  *&v72 = 136316162;
  v273 = v72;
  *&v72 = 136315906;
  v272 = v72;
  *&v72 = 136316418;
  v274 = v72;
  v294 = v71 + 64;
  v288 = v49;
  v289 = v56;
  v287 = v61;
  v286 = v66;
  v285 = v64;
  v279 = v75;
  v278 = v74 + 32;
LABEL_11:
  if (v76 >= *(v74 + 16))
  {
    goto LABEL_144;
  }

  v79 = (v78 + 16 * v76);
  v80 = v79[1];
  v295 = *v79;
  v280 = v76 + 1;
  v81 = 1 << *(v73 + 32);
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  else
  {
    v82 = -1;
  }

  v83 = v82 & *(v73 + 64);
  v84 = (v81 + 63) >> 6;
  v296 = v80;

  v85 = 0;
  if (!v83)
  {
    do
    {
LABEL_17:
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
      }

      if (v86 >= v84)
      {

        v200 = sub_2722C389C();
        v201 = v313;
        v202 = v316;
        (*v291)(v313, v200, v316);
        v203 = v296;

        v204 = sub_27237725C();
        v205 = sub_272377E8C();

        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          v207 = swift_slowAlloc();
          v326 = v207;
          *v206 = 136315394;
          v208 = v295;
          *(v206 + 4) = sub_2721FFD04(v295, v203, &v326);
          *(v206 + 12) = 2080;
          sub_2721F065C(&qword_280882230, &qword_27237F4D8);
          v209 = sub_27237774C();
          v211 = v210;

          v212 = sub_2721FFD04(v209, v211, &v326);

          *(v206 + 14) = v212;
          _os_log_impl(&dword_2721E4000, v204, v205, "attentionName %s, keys: %s", v206, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v207, -1, -1);
          MEMORY[0x2743C69C0](v206, -1, -1);

          (*v292)(v201, v316);
          v213 = v298;
          v214 = v297;
          v215 = v287;
        }

        else
        {

          (*v292)(v201, v202);
          v213 = v298;
          v214 = v297;
          v215 = v287;
          v208 = v295;
        }

        v326 = 0;
        v327 = 0xE000000000000000;
        sub_27237820C();

        v326 = 0xD000000000000017;
        v327 = 0x800000027238BD30;
        MEMORY[0x2743C4AD0](v208, v203);

        v216 = v326;
        v217 = v327;
        sub_2722032B4();
        swift_allocError();
        *v218 = v216;
        v218[1] = v217;
        swift_willThrow();

        goto LABEL_8;
      }

      v83 = *(v77 + 8 * v86);
      ++v85;
    }

    while (!v83);
    goto LABEL_20;
  }

  while (1)
  {
    v86 = v85;
LABEL_20:
    v317 = v63;
    v87 = __clz(__rbit64(v83)) | (v86 << 6);
    v88 = *(*(v73 + 48) + 16 * v87 + 8);
    v89 = *(*(v73 + 56) + 8 * v87);
    v90 = sub_2723778AC();
    v92 = v91;
    v94 = v90 == sub_2723778AC() && v92 == v93;
    if (v94)
    {

      goto LABEL_29;
    }

    LODWORD(v314) = sub_27237865C();

    if (v314)
    {
      break;
    }

    v83 &= v83 - 1;

    v85 = v86;
    v63 = v317;
    v77 = v294;
    if (!v83)
    {
      goto LABEL_17;
    }
  }

LABEL_29:
  v95 = *(v89 + 64);
  v314 = v89 + 64;
  v96 = 1 << *(v89 + 32);
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  else
  {
    v97 = -1;
  }

  v98 = v97 & v95;
  v282 = (v96 + 63) >> 6;
  v281 = v89;
  swift_bridgeObjectRetain_n();

  v99 = 0;
  v270 = 0;
  v100 = 0;
  v56 = v289;
  do
  {
    while (1)
    {
LABEL_33:
      v271 = v99;
      v101 = v306;
      while (2)
      {
        v63 = v317;
        if (v98)
        {
          goto LABEL_40;
        }

        do
        {
          v102 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            goto LABEL_143;
          }

          if (v102 >= v282)
          {

            swift_bridgeObjectRelease_n();

            swift_bridgeObjectRelease_n();
            v76 = v280;
            v49 = v288;
            v61 = v287;
            v66 = v286;
            v74 = v283;
            v77 = v294;
            v78 = v278;
            if (v280 == v279)
            {
              goto LABEL_121;
            }

            goto LABEL_11;
          }

          v98 = *(v314 + 8 * v102);
          ++v100;
        }

        while (!v98);
        v100 = v102;
LABEL_40:
        v103 = __clz(__rbit64(v98));
        v98 &= v98 - 1;
        v104 = (v281[6] + ((v100 << 10) | (16 * v103)));
        v106 = *v104;
        v105 = v104[1];
        v107 = *v104 == 0x6F69647561 && v105 == 0xE500000000000000;
        v108 = v107;
        v277 = v108;
        if (v107 || (sub_27237865C()) && *(v318 + 40) == 1)
        {
          v109 = sub_2722C389C();
          (*v291)(v101, v109, v316);
          v110 = sub_27237725C();
          v111 = sub_272377E7C();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&dword_2721E4000, v110, v111, "Skipping audio enrollment since text only", v112, 2u);
            MEMORY[0x2743C69C0](v112, -1, -1);
          }

          v101 = v306;
          (*v292)(v306, v316);
          continue;
        }

        break;
      }

      v269 = v106;
      v268 = v105;
      v113 = v106 == 1954047348 && v105 == 0xE400000000000000;
      v114 = v113;
      v267 = v114;
      if (v113)
      {
        v99 = v270;
        if (v270 <= 3)
        {
          break;
        }

        continue;
      }

      v127 = sub_27237865C();
      if (v127)
      {
        v99 = v270;
        v56 = v289;
        if (v270 > 3)
        {
          continue;
        }
      }

      if (v127)
      {
        v128 = v270;
      }

      else
      {
        v128 = v271;
      }

      if (v269 != 0x636E756F6E6F7270)
      {
        v56 = v289;
        v99 = v128;
        break;
      }

      v56 = v289;
      v99 = v128;
      if (v268 != 0xEE006E6F69746169)
      {
        break;
      }
    }

    v115 = v99;
    v116 = sub_27237865C();
    v99 = v115;
  }

  while ((v116 & 1) != 0);
  v256 = v73;
  v117 = v281[2];
  v258 = v88;

  if (!v117)
  {
    goto LABEL_161;
  }

  v118 = v268;

  v119 = sub_27220038C(v269, v118);
  if ((v120 & 1) == 0)
  {
    goto LABEL_160;
  }

  v121 = v119;

  v122 = *(v281[7] + 8 * v121);

  v271 = 0;
  v123 = *(v122 + 64);
  v265 = v122 + 64;
  v261 = v122;
  v124 = 1 << *(v122 + 32);
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  else
  {
    v125 = -1;
  }

  v126 = v125 & v123;
  v266 = (v124 + 63) >> 6;
  while (2)
  {
    if (v126)
    {
      goto LABEL_84;
    }

    while (2)
    {
      v130 = v271 + 1;
      if (__OFADD__(v271, 1))
      {
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      if (v130 >= v266)
      {

        v64 = v285;
        v56 = v289;
        v73 = v256;
        v88 = v258;
        v99 = v115;
        goto LABEL_33;
      }

      v131 = *(v265 + 8 * v130);
      ++v271;
      if (!v131)
      {
        continue;
      }

      break;
    }

    v126 = v131;
    v271 = v130;
LABEL_84:
    v132 = (v271 << 10) | (16 * __clz(__rbit64(v126)));
    v133 = (*(v261 + 48) + v132);
    v134 = *v133;
    v135 = v133[1];
    v136 = (*(v261 + 56) + v132);
    v138 = *v136;
    v137 = v136[1];

    v260 = v134;
    v262 = v135;
    sub_272376CAC();
    v139 = [objc_opt_self() defaultManager];
    sub_272376D2C();
    v140 = sub_2723777FC();

    v141 = [v139 fileExistsAtPath_];

    if ((v141 & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v245 = sub_2722C389C();
      (*v291)(v302, v245, v316);

      v246 = sub_27237725C();
      v247 = sub_272377E8C();

      if (os_log_type_enabled(v246, v247))
      {
        v248 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        v326 = v249;
        *v248 = 136315138;
        *(v248 + 4) = sub_2721FFD04(v260, v262, &v326);
        _os_log_impl(&dword_2721E4000, v246, v247, "No such enrollment file: %s", v248, 0xCu);
        sub_2722039C8(v249);
        MEMORY[0x2743C69C0](v249, -1, -1);
        MEMORY[0x2743C69C0](v248, -1, -1);
      }

      (*v292)(v302, v316);
      v326 = 0;
      v327 = 0xE000000000000000;
      sub_27237820C();

      v326 = 0xD000000000000019;
      v327 = 0x800000027238BCD0;
      MEMORY[0x2743C4AD0](v260, v262);

      v250 = v326;
      v251 = v327;
      sub_2722032B4();
      swift_allocError();
      *v252 = v250;
      v252[1] = v251;
      swift_willThrow();

      goto LABEL_150;
    }

    v142 = v307;
    (*v275)(v307, v309, v308);
    v143 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v144 = v317;
    v263 = sub_27227B734(v142, 3, 0);
    if (v144)
    {
      (*v276)(v309, v308);

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      return;
    }

    v145 = v263;
    v146 = [v263 processingFormat];
    v147 = [v145 length];
    if ((v147 & 0x8000000000000000) != 0)
    {
      goto LABEL_155;
    }

    if (HIDWORD(v147))
    {
      goto LABEL_156;
    }

    v148 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v146 frameCapacity:v147];

    v264 = v148;
    if (!v148)
    {
      goto LABEL_159;
    }

    v326 = 0;
    v149 = [v263 readIntoBuffer:v264 error:&v326];
    v150 = v326;
    if ((v149 & 1) == 0)
    {
      v253 = v326;

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_272376C6C();

      swift_willThrow();

LABEL_150:

      (*v276)(v309, v308);
      return;
    }

    if ((v277 & 1) == 0 && (sub_27237865C() & 1) == 0)
    {
      if (sub_27237865C())
      {
        goto LABEL_96;
      }

      if (!__OFADD__(v115++, 1))
      {
        v187 = v150;
        v270 = v115;
        goto LABEL_97;
      }

      goto LABEL_158;
    }

    v151 = *(v318 + 57);
    if (v151 != 2 && (v151 & 1) != 0)
    {
      v152 = *(v318 + 36);
      v153 = v150;
      sub_272254228(v152);
      goto LABEL_97;
    }

LABEL_96:
    v154 = v150;
LABEL_97:
    (*(*v293 + 104))(&v326, v138, v137);

    v155 = v328;
    v156 = v329;
    sub_27220300C(&v326, v328);
    v157 = mach_absolute_time();
    (v156[1])(v264, v157, v155, v156);
    v317 = 0;
    LODWORD(v156) = [v264 frameLength];
    v159 = v328;
    v158 = v329;
    sub_27220300C(&v326, v328);
    if (v156 >= (v158[4])(v159, v158))
    {
      v172 = sub_2722C389C();
      (*v291)(v305, v172, v316);
      sub_27221629C(&v326, &v323);

      v264 = v264;
      v173 = sub_27237725C();
      v174 = sub_272377E7C();

      LODWORD(v259) = v174;
      v175 = v173;
      if (os_log_type_enabled(v173, v174))
      {
        v176 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v321 = v257;
        *v176 = v274;
        *(v176 + 4) = sub_2721FFD04(v269, v268, &v321);
        *(v176 + 12) = 2080;
        *(v176 + 14) = sub_2721FFD04(v295, v296, &v321);
        *(v176 + 22) = 2080;
        v177 = sub_2721FFD04(v260, v262, &v321);

        *(v176 + 24) = v177;
        *(v176 + 32) = 2048;
        *(v176 + 34) = *(v318 + 36);
        *(v176 + 42) = 1024;
        v178 = v264;
        *(v176 + 44) = [v264 frameLength];

        *(v176 + 48) = 1024;
        v180 = *(&v324 + 1);
        v179 = v325;
        sub_27220300C(&v323, *(&v324 + 1));
        LODWORD(v179) = (*(v179 + 32))(v180, v179);
        sub_2722039C8(&v323);
        *(v176 + 50) = v179;
        v173 = v175;
        _os_log_impl(&dword_2721E4000, v175, v259, "Enrolling %s for %s: %s with gain %f, no padding needed since %u >= required %u", v176, 0x36u);
        v181 = v257;
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v181, -1, -1);
        MEMORY[0x2743C69C0](v176, -1, -1);
      }

      else
      {
        sub_2722039C8(&v323);

        v129 = v264;
      }

      (*v292)(v305, v316);
      (*v276)(v309, v308);
LABEL_78:
      v126 &= v126 - 1;
      sub_2722039C8(&v326);
      continue;
    }

    break;
  }

  v160 = v328;
  v161 = v329;
  sub_27220300C(&v326, v328);
  LODWORD(v160) = (v161[4])(v160, v161);
  v162 = [v264 frameLength];
  LODWORD(v257) = v160 - v162;
  if (v160 < v162)
  {
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
    return;
  }

  v163 = [v264 format];
  v164 = v317;
  v259 = sub_27227B050(v257, v163);
  v317 = v164;
  if (v164)
  {
    (*v276)(v309, v308);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    if (v277 & 1) != 0 || (sub_27237865C())
    {
      v165 = sub_2722C389C();
      (*v291)(v304, v165, v316);

      v166 = sub_27237725C();
      v167 = sub_272377E7C();

      v255 = v167;
      v168 = v166;
      if (os_log_type_enabled(v166, v167))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *&v323 = v170;
        *v169 = v273;
        *(v169 + 4) = sub_2721FFD04(v269, v268, &v323);
        *(v169 + 12) = 2080;
        *(v169 + 14) = sub_2721FFD04(v295, v296, &v323);
        *(v169 + 22) = 2080;
        v171 = sub_2721FFD04(v260, v262, &v323);

        *(v169 + 24) = v171;
        *(v169 + 32) = 1024;
        *(v169 + 34) = v257;
        *(v169 + 38) = 2048;
        *(v169 + 40) = *(v318 + 36);
        _os_log_impl(&dword_2721E4000, v168, v255, "Enrolling %s for %s: %s with padding of %u samples with gain %f", v169, 0x30u);
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v170, -1, -1);
        MEMORY[0x2743C69C0](v169, -1, -1);
      }

      else
      {
      }

      (*v292)(v304, v316);
    }

    else if (v267 & 1) != 0 || (sub_27237865C())
    {
      v188 = sub_2722C389C();
      (*v291)(v303, v188, v316);

      v189 = sub_27237725C();
      v190 = sub_272377E7C();

      v255 = v190;
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *&v323 = v192;
        *v191 = v272;
        *(v191 + 4) = sub_2721FFD04(v269, v268, &v323);
        *(v191 + 12) = 2080;
        *(v191 + 14) = sub_2721FFD04(v295, v296, &v323);
        *(v191 + 22) = 2080;
        v193 = sub_2721FFD04(v260, v262, &v323);

        *(v191 + 24) = v193;
        *(v191 + 32) = 1024;
        *(v191 + 34) = v257;
        _os_log_impl(&dword_2721E4000, v189, v255, "Enrolling %s for %s: %s with padding of %u samples without gain", v191, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v192, -1, -1);
        MEMORY[0x2743C69C0](v191, -1, -1);
      }

      else
      {
      }

      (*v292)(v303, v316);
    }

    else
    {
    }

    v182 = v328;
    v183 = v329;
    sub_27220300C(&v326, v328);
    v184 = mach_absolute_time();
    v185 = v317;
    (v183[1])(v259, v184, v182, v183);
    v317 = v185;
    if (!v185)
    {
      (*v276)(v309, v308);

      goto LABEL_78;
    }

    (*v276)(v309, v308);

    swift_bridgeObjectRelease_n();
  }

  swift_bridgeObjectRelease_n();
  sub_2722039C8(&v326);
}

uint64_t sub_27227B020()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = v1;
  return result;
}

void *sub_27227B050(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:a2 frameCapacity:a1];
  v4 = v3;
  if (v3)
  {
    [v3 setFrameLength_];
    v5 = [v4 int16ChannelData];
    if (v5)
    {
      v6 = a1 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = 0;
      do
      {
        *(*v5 + v7) = 0;
        v7 += 2;
      }

      while (2 * a1 != v7);
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v8 = 0xD000000000000019;
    v8[1] = 0x8000000272389140;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_27227B148(uint64_t a1)
{
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VASingleEnrollmentData(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  LOBYTE(v49[0]) = *(a1 + *(v14 + 40));
  v50 = 1;
  if (static VASingleEnrollmentStatus.== infix(_:_:)(v49, &v50))
  {
    sub_272204F54(a1, v16);
    v17 = (*(*v1 + 112))(v49);
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_27227B890(0, v20[2] + 1, 1, v20);
      *v19 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_27227B890((v22 > 1), v23 + 1, 1, v20);
      *v19 = v20;
    }

    v20[2] = v23 + 1;
    sub_27227BA68(v16, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23);
    return v17(v49, 0);
  }

  else
  {
    v46 = v4;
    sub_272204F54(a1, v13);
    v45 = (*(*v1 + 136))(v49);
    v26 = v25;
    v27 = *v25;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v27;
    v47 = v3;
    if ((v28 & 1) == 0)
    {
      v27 = sub_27227B890(0, v27[2] + 1, 1, v27);
      *v26 = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_27227B890((v29 > 1), v30 + 1, 1, v27);
      *v26 = v27;
    }

    v27[2] = v30 + 1;
    sub_27227BA68(v13, v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30);
    v45(v49, 0);
    v31 = sub_2722C389C();
    v32 = v46;
    v33 = v47;
    v34 = v48;
    (*(v46 + 16))(v48, v31, v47);
    sub_272204F54(a1, v10);
    v35 = sub_27237725C();
    v36 = sub_272377E8C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v32;
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v37 = 136315138;
      v40 = &v10[*(v6 + 24)];
      v41 = *v40;
      v42 = v40[1];

      sub_272204FB8(v10);
      v43 = sub_2721FFD04(v41, v42, v49);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_2721E4000, v35, v36, "Did not successfully enroll %s", v37, 0xCu);
      sub_2722039C8(v39);
      MEMORY[0x2743C69C0](v39, -1, -1);
      MEMORY[0x2743C69C0](v37, -1, -1);

      return (*(v38 + 8))(v48, v33);
    }

    else
    {

      sub_272204FB8(v10);
      return (*(v32 + 8))(v34, v33);
    }
  }
}

uint64_t sub_27227B624()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27227B688(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_27227B734(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = sub_272376CCC();
  v17[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_272376D5C();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_272376C6C();

    swift_willThrow();
    v15 = sub_272376D5C();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void *sub_27227B890(void *result, int64_t a2, char a3, void *a4)
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

  sub_2721F065C(&qword_280882238, &unk_27237F520);
  v10 = *(type metadata accessor for VASingleEnrollmentData(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for VASingleEnrollmentData(0) - 8);
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

uint64_t sub_27227BA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASingleEnrollmentData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27227BC88()
{
  v1 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227BD20(char a1)
{
  v3 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227BD70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_27227BED0()
{
  v1 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227BF68(char a1)
{
  v3 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227BFB8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_27227C0D0()
{
  if (*v0)
  {
    return 0x6F70646E45657375;
  }

  else
  {
    return 0x46726F4674696177;
  }
}

uint64_t sub_27227C120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x46726F4674696177 && a2 == 0xEC0000006C616E69;
  if (v6 || (sub_27237865C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F70646E45657375 && a2 == 0xED00007265746E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27237865C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_27227C208(uint64_t a1)
{
  v2 = sub_27227C604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227C244(uint64_t a1)
{
  v2 = sub_27227C604();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SecondPassConfig.init(from:)(void *a1)
{
  v4 = sub_2721F065C(&qword_280882250, &qword_27237F5E0);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  v1[OBJC_IVAR___SecondPassConfig_waitForFinal] = 1;
  v8 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  v21 = v1;
  v1[OBJC_IVAR___SecondPassConfig_useEndpointer] = 0;
  v9 = a1[3];
  v25 = a1;
  v10 = sub_27220300C(a1, v9);
  sub_27227C604();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v25);
    type metadata accessor for SecondPassConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v20;
    v12 = v8;
    v24 = 0;
    v13 = v4;
    v14 = sub_27237844C();
    v15 = v21;
    if (v14 == 2)
    {
      swift_beginAccess();
      v14 = v15[v7];
    }

    swift_beginAccess();
    v15[v7] = v14 & 1;
    v23 = 1;
    v16 = sub_27237844C();
    v18 = v16;
    (*(v11 + 8))(v6, v13);
    if (v18 == 2)
    {
      swift_beginAccess();
      v18 = v15[v12];
    }

    swift_beginAccess();
    v15[v12] = v18 & 1;
    v19 = type metadata accessor for SecondPassConfig();
    v22.receiver = v15;
    v22.super_class = v19;
    v10 = objc_msgSendSuper2(&v22, sel_init);
    sub_2722039C8(v25);
  }

  return v10;
}

unint64_t sub_27227C604()
{
  result = qword_280888698;
  if (!qword_280888698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280888698);
  }

  return result;
}

uint64_t sub_27227C658(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882258, &qword_27237F5E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  sub_27220300C(a1, a1[3]);
  sub_27227C604();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v9);
  v13[15] = 0;
  v11 = sub_27237859C();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x78))(v11);
    v13[14] = 1;
    sub_27237859C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_27227C9D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27227CAAC()
{
  v1 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227CB44(uint64_t a1)
{
  v3 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227CB94@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_27227CCF0()
{
  v1 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227CD88(uint64_t a1)
{
  v3 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227CDD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

float sub_27227CF34()
{
  v1 = v0 + OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227CFD0(float a1)
{
  v3 = (v1 + OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

unint64_t sub_27227D138()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626B6F6F6CLL;
  }
}

uint64_t sub_27227D1AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27228CE8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27227D1E0(uint64_t a1)
{
  v2 = sub_27227D67C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227D21C(uint64_t a1)
{
  v2 = sub_27227D67C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PreKeywordSilence.init(from:)(void *a1)
{
  v4 = sub_2721F065C(&qword_280882280, &qword_27237F5F0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  *&v1[OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames] = 20;
  v6 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  *&v1[OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames] = 10;
  v7 = OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability;
  v30 = v1;
  *&v1[OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability] = 1060320051;
  v8 = a1[3];
  v35 = a1;
  v9 = a1;
  v11 = &v26 - v10;
  v12 = sub_27220300C(v9, v8);
  sub_27227D67C();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v35);
    type metadata accessor for PreKeywordSilence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v6;
    v27 = v7;
    v13 = v29;
    v34 = 0;
    v14 = sub_27237847C();
    v15 = v30;
    if (v16)
    {
      swift_beginAccess();
      v17 = *&v15[v5];
    }

    else
    {
      v17 = v14;
    }

    swift_beginAccess();
    *&v15[v5] = v17;
    v33 = 1;
    v18 = sub_27237847C();
    if (v19)
    {
      v20 = v28;
      swift_beginAccess();
      v21 = *&v15[v20];
    }

    else
    {
      v21 = v18;
      v20 = v28;
    }

    swift_beginAccess();
    *&v15[v20] = v21;
    v32 = 2;
    v23 = sub_27237846C();
    (*(v13 + 8))(v11, v4);
    v24 = v27;
    if ((v23 & 0x100000000) != 0)
    {
      swift_beginAccess();
      LODWORD(v23) = *&v15[v24];
    }

    swift_beginAccess();
    *&v15[v24] = v23;
    v25 = type metadata accessor for PreKeywordSilence();
    v31.receiver = v15;
    v31.super_class = v25;
    v12 = objc_msgSendSuper2(&v31, sel_init);
    sub_2722039C8(v35);
  }

  return v12;
}

unint64_t sub_27227D67C()
{
  result = qword_2808886A0;
  if (!qword_2808886A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886A0);
  }

  return result;
}

uint64_t sub_27227D6D0(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882288, &qword_27237F5F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  sub_27220300C(a1, a1[3]);
  sub_27227D67C();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v9);
  v14[15] = 0;
  v11 = sub_2723785CC();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x80))(v11);
    v14[14] = 1;
    v12 = sub_2723785CC();
    (*((*v10 & *v3) + 0x98))(v12);
    v14[13] = 2;
    sub_2723785BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_27227DA80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27227DAE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

float sub_27227DBB8()
{
  v1 = v0 + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227DC54(float a1)
{
  v3 = (v1 + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_27227DE04()
{
  v1 = v0 + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227DEA0(float a1)
{
  v3 = (v1 + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

unint64_t sub_27227E008()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_27227E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x800000027238C140 == a2 || (sub_27237865C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C090 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_27237865C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_27227E134(uint64_t a1)
{
  v2 = sub_27227E510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227E170(uint64_t a1)
{
  v2 = sub_27227E510();

  return MEMORY[0x2821FE720](a1, v2);
}

void *DuringKeywordSilence.init(from:)(void *a1)
{
  v4 = sub_2721F065C(&qword_2808822A8, &qword_27237F600);
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames;
  *&v1[OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames] = 1056964608;
  v8 = OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability;
  v19 = v1;
  *&v1[OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability] = 1056964608;
  v9 = a1[3];
  v23 = a1;
  v10 = sub_27220300C(a1, v9);
  sub_27227E510();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v23);
    type metadata accessor for DuringKeywordSilence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v18;
    v22 = 0;
    v12 = sub_27237846C();
    v13 = v12;
    v14 = v19;
    if ((v12 & 0x100000000) != 0)
    {
      swift_beginAccess();
      v13 = *&v14[v7];
    }

    swift_beginAccess();
    *&v14[v7] = v13;
    v21 = 1;
    v16 = sub_27237846C();
    (*(v11 + 8))(v6, v4);
    if ((v16 & 0x100000000) != 0)
    {
      swift_beginAccess();
      LODWORD(v16) = *&v14[v8];
    }

    swift_beginAccess();
    *&v14[v8] = v16;
    v17 = type metadata accessor for DuringKeywordSilence();
    v20.receiver = v14;
    v20.super_class = v17;
    v10 = objc_msgSendSuper2(&v20, sel_init);
    sub_2722039C8(v23);
  }

  return v10;
}

unint64_t sub_27227E510()
{
  result = qword_2808886A8;
  if (!qword_2808886A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886A8);
  }

  return result;
}

uint64_t sub_27227E564(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808822B0, &qword_27237F608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  sub_27220300C(a1, a1[3]);
  sub_27227E510();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v9);
  v13[15] = 0;
  v11 = sub_2723785BC();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x78))(v11);
    v13[14] = 1;
    sub_2723785BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_27227E8D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27227E9B0()
{
  v1 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227EA48(uint64_t a1)
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227EA98@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_27227EBF4()
{
  v1 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227EC8C(uint64_t a1)
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227ECDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

float sub_27227EE38()
{
  v1 = v0 + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227EED4(float a1)
{
  v3 = (v1 + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_27227F084()
{
  v1 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227F11C(uint64_t a1)
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227F16C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

unint64_t sub_27227F280()
{
  v1 = 0xD000000000000011;
  v2 = 0xD000000000000022;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_27227F2F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27228CFBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27227F324(uint64_t a1)
{
  v2 = sub_27227F89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227F360(uint64_t a1)
{
  v2 = sub_27227F89C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PostKeywordSilence.init(from:)(void *a1)
{
  v37 = sub_2721F065C(&qword_2808822E0, &qword_27237F610);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v33 - v3;
  v5 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames] = 8;
  v6 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected] = 2;
  v7 = OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability] = 1060320051;
  v8 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  v39 = v1;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword] = 2;
  v9 = a1[3];
  v45 = a1;
  v10 = sub_27220300C(a1, v9);
  sub_27227F89C();
  v11 = v38;
  sub_2723787AC();
  if (v11)
  {
    sub_2722039C8(v45);
    type metadata accessor for PostKeywordSilence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v6;
    v38 = v7;
    v34 = v8;
    v12 = v36;
    v44 = 0;
    v13 = v37;
    v14 = sub_27237847C();
    v16 = v4;
    v18 = v39;
    if (v15)
    {
      swift_beginAccess();
      v19 = *&v18[v5];
    }

    else
    {
      v19 = v14;
    }

    swift_beginAccess();
    *&v18[v5] = v19;
    v43 = 1;
    v20 = sub_27237847C();
    v21 = v12;
    if (v22)
    {
      v23 = v35;
      swift_beginAccess();
      v24 = *&v18[v23];
      v25 = v38;
    }

    else
    {
      v24 = v20;
      v25 = v38;
      v23 = v35;
    }

    swift_beginAccess();
    *&v18[v23] = v24;
    v42 = 2;
    v26 = sub_27237846C();
    v27 = v26;
    if ((v26 & 0x100000000) != 0)
    {
      swift_beginAccess();
      v27 = *&v18[v25];
    }

    swift_beginAccess();
    *&v18[v25] = v27;
    v41 = 3;
    v28 = sub_27237847C();
    v30 = v29;
    (*(v21 + 8))(v16, v13);
    v31 = v34;
    if (v30)
    {
      swift_beginAccess();
      v28 = *&v18[v31];
    }

    swift_beginAccess();
    *&v18[v31] = v28;
    v32 = type metadata accessor for PostKeywordSilence();
    v40.receiver = v18;
    v40.super_class = v32;
    v10 = objc_msgSendSuper2(&v40, sel_init);
    sub_2722039C8(v45);
  }

  return v10;
}

unint64_t sub_27227F89C()
{
  result = qword_2808886B0;
  if (!qword_2808886B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886B0);
  }

  return result;
}

uint64_t sub_27227F8F0(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808822E8, &qword_27237F618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  sub_27220300C(a1, a1[3]);
  sub_27227F89C();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(v9);
  v15[15] = 0;
  v11 = sub_2723785CC();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x88))(v11);
    v15[14] = 1;
    v12 = sub_2723785CC();
    (*((*v10 & *v3) + 0xA0))(v12);
    v15[13] = 2;
    v13 = sub_2723785BC();
    (*((*v10 & *v3) + 0xB8))(v13);
    v15[12] = 3;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_27227FD0C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27227FDE4()
{
  v1 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227FE7C(uint64_t a1)
{
  v3 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227FECC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_272280028()
{
  v1 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722800C0(uint64_t a1)
{
  v3 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272280110@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

unint64_t sub_272280224()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_27228025C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000016 && 0x800000027238C2B0 == a2;
  if (v6 || (sub_27237865C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000027238C2D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27237865C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_272280348(uint64_t a1)
{
  v2 = sub_272280738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272280384(uint64_t a1)
{
  v2 = sub_272280738();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AudioCapture.init(from:)(void *a1)
{
  v4 = sub_2721F065C(&qword_280882308, &qword_27237F620);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  *&v1[OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset] = 1;
  v8 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  v25 = v1;
  *&v1[OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset] = 8;
  v9 = a1[3];
  v29 = a1;
  v10 = sub_27220300C(a1, v9);
  sub_272280738();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v29);
    type metadata accessor for AudioCapture();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    v12 = v24;
    v13 = v8;
    v28 = 0;
    v14 = sub_27237847C();
    v15 = v25;
    if (v16)
    {
      swift_beginAccess();
      v17 = *&v15[v7];
    }

    else
    {
      v17 = v14;
    }

    v18 = v12;
    swift_beginAccess();
    *&v15[v11] = v17;
    v27 = 1;
    v20 = sub_27237847C();
    v22 = v21;
    (*(v18 + 8))(v6, v4);
    if (v22)
    {
      swift_beginAccess();
      v20 = *&v15[v13];
    }

    swift_beginAccess();
    *&v15[v13] = v20;
    v23 = type metadata accessor for AudioCapture();
    v26.receiver = v15;
    v26.super_class = v23;
    v10 = objc_msgSendSuper2(&v26, sel_init);
    sub_2722039C8(v29);
  }

  return v10;
}

unint64_t sub_272280738()
{
  result = qword_2808886B8;
  if (!qword_2808886B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886B8);
  }

  return result;
}

uint64_t sub_27228078C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882310, &qword_27237F628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  sub_27220300C(a1, a1[3]);
  sub_272280738();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v9);
  v13[15] = 0;
  v11 = sub_2723785CC();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x78))(v11);
    v13[14] = 1;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_272280B00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272280BD8()
{
  v1 = OBJC_IVAR___DecoderConfig_useChecker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272280C70(char a1)
{
  v3 = OBJC_IVAR___DecoderConfig_useChecker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272280CC0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

id sub_272280E24()
{
  v1 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272280ED8(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272280F30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

id sub_27228109C()
{
  v1 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272281150(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722811A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

id sub_272281314()
{
  v1 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2722813C8(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272281420@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

id sub_27228158C()
{
  v1 = OBJC_IVAR___DecoderConfig_audioCapture;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272281640(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_audioCapture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272281698@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

unint64_t sub_2722817B8()
{
  v1 = *v0;
  v2 = 0x6B63656843657375;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x7061436F69647561;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_272281868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27228D128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27228189C(uint64_t a1)
{
  v2 = sub_2722820C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722818D8(uint64_t a1)
{
  v2 = sub_2722820C4();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_272281914()
{
  v0[OBJC_IVAR___DecoderConfig_useChecker] = 0;
  v1 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for PreKeywordSilence()) init];
  v2 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for DuringKeywordSilence()) init];
  v3 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for PostKeywordSilence()) init];
  v4 = OBJC_IVAR___DecoderConfig_audioCapture;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for AudioCapture()) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DecoderConfig();
  return objc_msgSendSuper2(&v6, sel_init);
}

char *DecoderConfig.init(from:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882348, &qword_27237F630);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v53 - v5;
  v55 = OBJC_IVAR___DecoderConfig_useChecker;
  v1[OBJC_IVAR___DecoderConfig_useChecker] = 0;
  v7 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  v54 = type metadata accessor for PreKeywordSilence();
  v8 = [objc_allocWithZone(v54) init];
  v59 = v7;
  *&v1[v7] = v8;
  v9 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  v10 = type metadata accessor for DuringKeywordSilence();
  v11 = [objc_allocWithZone(v10) init];
  v60 = v9;
  *&v1[v9] = v11;
  v12 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  v13 = type metadata accessor for PostKeywordSilence();
  v14 = [objc_allocWithZone(v13) init];
  v63 = v12;
  *&v1[v12] = v14;
  v15 = OBJC_IVAR___DecoderConfig_audioCapture;
  v16 = type metadata accessor for AudioCapture();
  v17 = [objc_allocWithZone(v16) init];
  v61 = v15;
  v74 = v1;
  *&v1[v15] = v17;
  v18 = a1[3];
  v62 = a1;
  sub_27220300C(a1, v18);
  sub_2722820C4();
  v19 = v58;
  sub_2723787AC();
  if (v19)
  {
    v24 = v60;
    v23 = v61;
    v25 = v59;
    sub_2722039C8(v62);
    v26 = v74;

    type metadata accessor for DecoderConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v58 = v10;
    v53[1] = v16;
    v53[2] = v13;
    v73 = 0;
    v21 = v55;
    v20 = v56;
    v22 = sub_27237844C();
    v28 = v22;
    v53[0] = v6;
    v29 = v59;
    v30 = v74;
    if (v22 == 2)
    {
      swift_beginAccess();
      v28 = v30[v21];
    }

    swift_beginAccess();
    v30[v21] = v28 & 1;
    v72 = 1;
    sub_27227DA80(&qword_280882350, v31, type metadata accessor for PreKeywordSilence, &protocol conformance descriptor for PreKeywordSilence);
    sub_27237848C();
    v32 = v71;
    v34 = v60;
    v33 = v61;
    v35 = v74;
    if (!v71)
    {
      swift_beginAccess();
      v32 = *&v35[v29];
    }

    swift_beginAccess();
    v36 = *&v35[v29];
    *&v35[v29] = v32;

    v70 = 2;
    sub_27227DA80(&qword_280882358, v37, type metadata accessor for DuringKeywordSilence, &protocol conformance descriptor for DuringKeywordSilence);
    sub_27237848C();
    v38 = v69;
    v39 = v57;
    v40 = v74;
    if (!v69)
    {
      swift_beginAccess();
      v38 = *&v40[v34];
    }

    swift_beginAccess();
    v41 = *&v40[v34];
    *&v40[v34] = v38;

    v68 = 3;
    sub_27227DA80(&qword_280882360, v42, type metadata accessor for PostKeywordSilence, &protocol conformance descriptor for PostKeywordSilence);
    sub_27237848C();
    v43 = v63;
    v44 = v74;
    if (v67)
    {
      v58 = v67;
    }

    else
    {
      swift_beginAccess();
      v58 = *&v44[v43];
    }

    swift_beginAccess();
    v45 = *&v44[v43];
    *&v44[v43] = v58;

    v66 = 4;
    sub_27227DA80(&qword_280882368, v46, type metadata accessor for AudioCapture, &protocol conformance descriptor for AudioCapture);
    v47 = v53[0];
    sub_27237848C();
    (*(v39 + 8))(v47, v20);
    v48 = v65;
    if (v65)
    {
      v49 = &selRef_environment;
      v50 = v74;
    }

    else
    {
      v50 = v74;
      swift_beginAccess();
      v48 = *&v50[v33];
      v49 = &selRef_environment;
    }

    swift_beginAccess();
    v51 = *&v50[v33];
    *&v50[v33] = v48;

    v52 = type metadata accessor for DecoderConfig();
    v64.receiver = v50;
    v64.super_class = v52;
    v26 = objc_msgSendSuper2(&v64, v49[136]);
    sub_2722039C8(v62);
  }

  return v26;
}

unint64_t sub_2722820C4()
{
  result = qword_2808886C0;
  if (!qword_2808886C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886C0);
  }

  return result;
}

uint64_t sub_272282118(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882370, &qword_27237F638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  sub_27220300C(a1, a1[3]);
  sub_2722820C4();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x78))(v9);
  LOBYTE(v22) = 0;
  v11 = sub_27237859C();
  if (!v2)
  {
    v12 = (*((*v10 & *v3) + 0x90))(v11);
    v22 = v12;
    HIBYTE(v21) = 1;
    type metadata accessor for PreKeywordSilence();
    sub_27227DA80(&qword_280882290, v13, type metadata accessor for PreKeywordSilence, &protocol conformance descriptor for PreKeywordSilence);
    sub_2723785DC();

    v14 = (*((*v10 & *v3) + 0xA8))();
    v22 = v14;
    HIBYTE(v21) = 2;
    type metadata accessor for DuringKeywordSilence();
    sub_27227DA80(&qword_2808822B8, v15, type metadata accessor for DuringKeywordSilence, &protocol conformance descriptor for DuringKeywordSilence);
    sub_2723785DC();

    v16 = (*((*v10 & *v3) + 0xC0))();
    v22 = v16;
    HIBYTE(v21) = 3;
    type metadata accessor for PostKeywordSilence();
    sub_27227DA80(&qword_2808822F0, v17, type metadata accessor for PostKeywordSilence, &protocol conformance descriptor for PostKeywordSilence);
    sub_2723785DC();

    v18 = (*((*v10 & *v3) + 0xD8))();
    v22 = v18;
    HIBYTE(v21) = 4;
    type metadata accessor for AudioCapture();
    sub_27227DA80(&qword_280882318, v19, type metadata accessor for AudioCapture, &protocol conformance descriptor for AudioCapture);
    sub_2723785DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_272282750@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27228285C()
{
  v1 = (v0 + OBJC_IVAR___NeuralNetworkConfig_modelPath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_272282920(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NeuralNetworkConfig_modelPath);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_272282980@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2722829DC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x70);

  return v4(v2, v3);
}

float sub_272282AFC()
{
  v1 = v0 + OBJC_IVAR___NeuralNetworkConfig_logThreshold;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_272282B98(float a1)
{
  v3 = (v1 + OBJC_IVAR___NeuralNetworkConfig_logThreshold);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_272282D48()
{
  v1 = v0 + OBJC_IVAR___NeuralNetworkConfig_logMinimum;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_272282DE4(float a1)
{
  v3 = (v1 + OBJC_IVAR___NeuralNetworkConfig_logMinimum);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_272282F4C()
{
  v1 = 0x7365726854676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D696E694D676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461506C65646F6DLL;
  }
}

uint64_t sub_272282FB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27228D2EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_272282FE0(uint64_t a1)
{
  v2 = sub_2722834E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27228301C(uint64_t a1)
{
  v2 = sub_2722834E0();

  return MEMORY[0x2821FE720](a1, v2);
}

char *NeuralNetworkConfig.init(from:)(void *a1)
{
  v4 = sub_2721F065C(&qword_280882398, &qword_27237F640);
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = &v1[OBJC_IVAR___NeuralNetworkConfig_modelPath];
  *v7 = 0xD000000000000041;
  v7[1] = 0x800000027238BE80;
  v28 = v7;
  v8 = OBJC_IVAR___NeuralNetworkConfig_logThreshold;
  *&v1[OBJC_IVAR___NeuralNetworkConfig_logThreshold] = -1035468800;
  v9 = OBJC_IVAR___NeuralNetworkConfig_logMinimum;
  v29 = v1;
  *&v1[OBJC_IVAR___NeuralNetworkConfig_logMinimum] = -1027080192;
  v10 = a1[3];
  v34 = a1;
  sub_27220300C(a1, v10);
  sub_2722834E0();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v34);

    type metadata accessor for NeuralNetworkConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v8;
    v25 = v9;
    v11 = v27;
    v33 = 0;
    v12 = sub_27237843C();
    v15 = v13;
    v16 = v28;
    if (v13)
    {
      v17 = v12;
    }

    else
    {
      swift_beginAccess();
      v17 = *v16;
      v15 = v16[1];
    }

    swift_beginAccess();
    *v16 = v17;
    v16[1] = v15;

    v32 = 1;
    v18 = sub_27237846C();
    v19 = v18;
    v20 = v29;
    v21 = v26;
    if ((v18 & 0x100000000) != 0)
    {
      swift_beginAccess();
      v19 = *&v20[v21];
    }

    swift_beginAccess();
    *&v20[v21] = v19;
    v31 = 2;
    v22 = sub_27237846C();
    (*(v11 + 8))(v6, v4);
    v23 = v25;
    if ((v22 & 0x100000000) != 0)
    {
      swift_beginAccess();
      LODWORD(v22) = *(v23 + v20);
    }

    swift_beginAccess();
    *(v23 + v20) = v22;
    v24 = type metadata accessor for NeuralNetworkConfig();
    v30.receiver = v20;
    v30.super_class = v24;
    v9 = objc_msgSendSuper2(&v30, sel_init);
    sub_2722039C8(v34);
  }

  return v9;
}

unint64_t sub_2722834E0()
{
  result = qword_2808886C8;
  if (!qword_2808886C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886C8);
  }

  return result;
}

uint64_t sub_272283534(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808823A0, &qword_27237F648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  sub_27220300C(a1, a1[3]);
  sub_2722834E0();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v9);
  v14[15] = 0;
  sub_27237858C();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*((*v10 & *v3) + 0x80))(v12);
    v14[14] = 1;
    v13 = sub_2723785BC();
    (*((*v10 & *v3) + 0x98))(v13);
    v14[13] = 2;
    sub_2723785BC();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_272283940@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272283A18()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272283AB0(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272283B00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_272283C5C()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272283CF4(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272283D44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_272283EA0()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272283F38(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272283F88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_2722840E4()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27228417C(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722841CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_272284328()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722843C0(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272284410@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_27228456C()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272284604(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272284654@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_2722847C0()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272284858(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722848A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

unint64_t sub_2722849CC()
{
  v1 = *v0;
  v2 = 0x7463655674656E6ELL;
  if (v1 == 5)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000010;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000017;
  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_272284ABC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27228D418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_272284AF0(uint64_t a1)
{
  v2 = sub_2722851C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272284B2C(uint64_t a1)
{
  v2 = sub_2722851C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FeatureExtractorConfig.init(from:)(void *a1)
{
  v3 = sub_2721F065C(&qword_2808823E8, &qword_27237F650);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v51 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength] = 600;
  v50 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength] = 24;
  v49 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext] = 3;
  v48 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_spliceRightContext] = 3;
  v6 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_downSampleStride] = 3;
  v7 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength] = 8;
  v8 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  v55 = v1;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize] = 280;
  v9 = a1[3];
  v64 = a1;
  v10 = sub_27220300C(a1, v9);
  sub_2722851C8();
  v11 = v54;
  sub_2723787AC();
  if (v11)
  {
    sub_2722039C8(v64);
    type metadata accessor for FeatureExtractorConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v51;
    v13 = v52;
    v54 = v6;
    v46 = v8;
    v47 = v7;
    v63 = 0;
    v14 = v53;
    v15 = sub_27237847C();
    v16 = v55;
    if (v17)
    {
      swift_beginAccess();
      v18 = *&v16[v12];
    }

    else
    {
      v18 = v15;
    }

    swift_beginAccess();
    *&v16[v12] = v18;
    v62 = 1;
    v19 = sub_27237847C();
    if (v20)
    {
      v21 = v50;
      swift_beginAccess();
      v22 = *&v16[v21];
    }

    else
    {
      v22 = v19;
      v21 = v50;
    }

    swift_beginAccess();
    *&v16[v21] = v22;
    v61 = 2;
    v23 = sub_27237847C();
    if (v24)
    {
      v26 = v49;
      swift_beginAccess();
      v27 = *&v16[v26];
    }

    else
    {
      v27 = v23;
      v26 = v49;
    }

    swift_beginAccess();
    *&v16[v26] = v27;
    v60 = 3;
    v28 = sub_27237847C();
    if (v29)
    {
      v30 = v48;
      swift_beginAccess();
      v31 = *&v16[v30];
    }

    else
    {
      v31 = v28;
      v30 = v48;
    }

    swift_beginAccess();
    *&v16[v30] = v31;
    v59 = 4;
    v32 = sub_27237847C();
    if (v33)
    {
      v34 = v54;
      swift_beginAccess();
      v35 = *&v16[v34];
    }

    else
    {
      v35 = v32;
      v34 = v54;
    }

    swift_beginAccess();
    *&v16[v34] = v35;
    v58 = 5;
    v36 = sub_27237847C();
    if (v37)
    {
      v38 = v47;
      swift_beginAccess();
      v39 = *&v16[v38];
    }

    else
    {
      v39 = v36;
      v38 = v47;
    }

    swift_beginAccess();
    *&v16[v38] = v39;
    v57 = 6;
    v40 = sub_27237847C();
    v42 = v41;
    (*(v13 + 8))(v5, v14);
    v43 = v46;
    if (v42)
    {
      swift_beginAccess();
      v40 = *&v16[v43];
    }

    swift_beginAccess();
    *&v16[v43] = v40;
    v44 = type metadata accessor for FeatureExtractorConfig();
    v56.receiver = v16;
    v56.super_class = v44;
    v10 = objc_msgSendSuper2(&v56, sel_init);
    sub_2722039C8(v64);
  }

  return v10;
}