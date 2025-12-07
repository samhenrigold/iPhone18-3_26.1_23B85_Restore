uint64_t sub_264720BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264720C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264720D48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264720D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264611390;

  return sub_264714AE0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for UserSessionConfiguration(uint64_t a1)
{
  result = qword_27FF785F0;
  if (!qword_27FF785F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264720E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_264720EF4(uint64_t a1)
{
  result = sub_264723EE4(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264720F4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  return sub_264720BE8(v3 + v4, a2);
}

void sub_26472145C(uint64_t a1)
{
  sub_2647233E8(319, &qword_27FF75DE0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2647233E8(319, &qword_27FF78600, type metadata accessor for SMSessionType, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_264656F60(319, &qword_27FF75E18, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_264656F0C(319, &qword_27FF75E20, &qword_27FF75C80, &qword_264788A78);
        if (v4 <= 0x3F)
        {
          sub_264656F0C(319, &qword_27FF78608, &qword_27FF75CE8, &unk_264788B70);
          if (v5 <= 0x3F)
          {
            sub_2647233E8(319, &qword_27FF78610, type metadata accessor for HKWorkoutActivityType, MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              sub_2647233E8(319, &qword_27FF78618, type metadata accessor for HKWorkoutSessionType, MEMORY[0x277CBCED0]);
              if (v7 <= 0x3F)
              {
                sub_264656F60(319, &qword_27FF77790, &type metadata for GeofenceSize);
                if (v8 <= 0x3F)
                {
                  sub_2647233E8(319, &qword_27FF77788, type metadata accessor for SMSessionDestinationType, MEMORY[0x277CBCED0]);
                  if (v9 <= 0x3F)
                  {
                    sub_264656F60(319, &qword_27FF78620, &type metadata for ETAType);
                    if (v10 <= 0x3F)
                    {
                      sub_264656F60(319, &qword_27FF75E38, MEMORY[0x277D839F8]);
                      if (v11 <= 0x3F)
                      {
                        sub_264656F0C(319, &qword_27FF78628, &qword_27FF77F78, &qword_26478F340);
                        if (v12 <= 0x3F)
                        {
                          sub_264656F0C(319, &qword_27FF78630, &qword_27FF78568, &qword_26478FF98);
                          if (v13 <= 0x3F)
                          {
                            swift_updateClassMetadata2();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2647233E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264723474()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_264723544(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_264719B88(a1, a2, v6, v7);
}

uint64_t sub_2647235D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26460F764;

  return sub_264715088(a1, v5, v4);
}

uint64_t sub_264723680(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264611390;

  return sub_264715128(a1, v5, v4);
}

uint64_t sub_26472372C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264611390;

  return sub_2647151C8(a1, v5, v4);
}

uint64_t sub_2647237D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26460F764;

  return sub_264714AE0(a1, v4, v5, v6);
}

uint64_t sub_264723890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_26470A9AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_264723970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_264723A54(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_264718474(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_264723B14(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_2647190F8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_265Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264723D04(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_264718F54(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_251Tm()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_264655264(*(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_264723E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264723EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_264723F40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_264723F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264724058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264783AF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264724138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264783AF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for TimerInfoView(uint64_t a1)
{
  result = qword_27FF78648;
  if (!qword_27FF78648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26472423C(uint64_t a1)
{
  result = sub_264783AF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2647242D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v25 = sub_264784AA4();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78658, &qword_264790858);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v22 - v6;
  v8 = sub_264783A64();
  v9 = [v8 absoluteTimeString:0 preposition:0 capitalized:0];

  v10 = sub_264785724();
  v12 = v11;

  if (*(v2 + *(type metadata accessor for TimerInfoView(0) + 24)) == 1)
  {
    v13 = sub_264783A64();
    v14 = [v13 absoluteTimeString:0 preposition:0 capitalized:0];

    v15 = sub_264785724();
    v17 = v16;
  }

  else
  {
    v18 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
    v15 = v18;
    v17 = v19;
  }

  MEMORY[0x28223BE20](v18);
  *(&v22 - 6) = v10;
  *(&v22 - 5) = v12;
  *(&v22 - 4) = v2;
  *(&v22 - 3) = v15;
  *(&v22 - 2) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78660, &qword_264790860);
  sub_2647252CC();
  sub_264785464();

  sub_264784A94();
  sub_264725330();
  v20 = v22;
  sub_264784FF4();
  (*(v23 + 8))(v4, v25);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_2647245B0@<X0>(uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v8 = sub_2647845C4();
  sub_26472492C(&v53);
  v37 = *&v54[16];
  v38 = *&v54[32];
  v35 = v53;
  v36 = *v54;
  v40[2] = *&v54[16];
  v40[3] = *&v54[32];
  v40[4] = *&v54[48];
  v40[1] = *v54;
  v39 = *&v54[48];
  v40[0] = v53;
  sub_26460CCE8(&v35, &v51, &qword_27FF78678, &qword_264792450);
  sub_26460CD50(v40, &qword_27FF78678, &qword_264792450);
  *&v34[23] = v36;
  *&v34[39] = v37;
  *&v34[55] = v38;
  *&v34[71] = v39;
  *&v34[7] = v35;
  v9 = sub_2647845C4();
  LOBYTE(v21[0]) = 1;
  sub_264724CC4(a3, &v53);
  v43 = *&v54[16];
  v44 = *&v54[32];
  v45 = *&v54[48];
  v46 = *&v54[64];
  v41 = v53;
  v42 = *v54;
  v48 = *&v54[64];
  v47[2] = *&v54[16];
  v47[3] = *&v54[32];
  v47[4] = *&v54[48];
  v47[0] = v53;
  v47[1] = *v54;
  sub_26460CCE8(&v41, &v51, &qword_27FF78680, &qword_264790868);
  sub_26460CD50(v47, &qword_27FF78680, &qword_264790868);
  *(&v33[2] + 7) = v43;
  *(&v33[3] + 7) = v44;
  *(&v33[4] + 7) = v45;
  *(&v33[5] + 7) = v46;
  *(v33 + 7) = v41;
  *(&v33[1] + 7) = v42;
  v49[0] = v8;
  v49[1] = 0;
  v50[0] = 1;
  *&v50[1] = *v34;
  *&v50[17] = *&v34[16];
  *&v50[80] = *&v34[79];
  *&v50[65] = *&v34[64];
  *&v50[49] = *&v34[48];
  *&v50[33] = *&v34[32];
  *&v27[31] = v8;
  *&v27[47] = *v50;
  v30 = *&v50[48];
  v31 = *&v50[64];
  v28 = *&v50[16];
  v29 = *&v50[32];
  v51 = v9;
  v52[0] = 1;
  *&v52[1] = v33[0];
  v10 = v33[0];
  v11 = v33[1];
  *&v52[17] = v33[1];
  *&v52[80] = *(&v33[4] + 15);
  v12 = v33[3];
  *&v52[65] = v33[4];
  v13 = v33[2];
  *&v52[49] = v33[3];
  *&v52[33] = v33[2];
  *&v32[40] = *&v52[16];
  *&v32[24] = *v52;
  *&v32[8] = v9;
  *&v32[104] = *&v52[80];
  *&v32[88] = *&v52[64];
  *v32 = *&v50[80];
  *&v32[72] = *&v52[48];
  *&v32[56] = *&v52[32];
  v14 = *v50;
  *a6 = v8;
  *(a6 + 16) = v14;
  v15 = v31;
  *(a6 + 64) = v30;
  *(a6 + 80) = v15;
  v16 = v29;
  *(a6 + 32) = v28;
  *(a6 + 48) = v16;
  v17 = *&v32[48];
  *(a6 + 128) = *&v32[32];
  *(a6 + 144) = v17;
  v18 = *&v32[16];
  *(a6 + 96) = *v32;
  *(a6 + 112) = v18;
  v19 = *&v32[96];
  *(a6 + 176) = *&v32[80];
  *(a6 + 192) = v19;
  *(a6 + 160) = *&v32[64];
  *(a6 + 208) = *&v32[112];
  v53 = v9;
  v54[0] = 1;
  *&v54[33] = v13;
  *&v54[49] = v12;
  *&v54[65] = v33[4];
  *&v54[80] = *(&v33[4] + 15);
  *&v54[1] = v10;
  *&v54[17] = v11;
  sub_26460CCE8(v49, v21, &qword_27FF78688, &qword_264790870);
  sub_26460CCE8(&v51, v21, &qword_27FF78690, &qword_264790878);
  sub_26460CD50(&v53, &qword_27FF78690, &qword_264790878);
  v25 = *&v34[32];
  v26 = *&v34[48];
  *v27 = *&v34[64];
  v23 = *v34;
  v21[0] = v8;
  v21[1] = 0;
  v22 = 1;
  *&v27[15] = *&v34[79];
  v24 = *&v34[16];
  return sub_26460CD50(v21, &qword_27FF78688, &qword_264790870);
}

uint64_t sub_26472492C@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_264783B94();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  v8 = sub_264784E44();
  v10 = v9;
  LOBYTE(ObjCClassFromMetadata) = v11;
  sub_264784CC4();
  v12 = sub_264784E24();
  v14 = v13;
  v16 = v15;

  sub_26460ECC4(v8, v10, ObjCClassFromMetadata & 1);

  sub_264785204();
  v17 = sub_264784DE4();
  v39 = v18;
  v40 = v17;
  v38 = v19;
  v41 = v20;

  sub_26460ECC4(v12, v14, v16 & 1);

  v21 = sub_264784E44();
  v23 = v22;
  v25 = v24;
  sub_264784CC4();
  v26 = sub_264784E24();
  v28 = v27;
  LOBYTE(v10) = v29;

  sub_26460ECC4(v21, v23, v25 & 1);

  sub_264785214();
  v30 = sub_264784DE4();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_26460ECC4(v26, v28, v10 & 1);

  *a3 = v40;
  *(a3 + 8) = v39;
  *(a3 + 16) = v38 & 1;
  *(a3 + 24) = v41;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v30;
  *(a3 + 56) = v32;
  *(a3 + 64) = v34 & 1;
  *(a3 + 72) = v36;
  sub_26460C474(v40, v39, v38 & 1);

  sub_26460C474(v30, v32, v34 & 1);

  sub_26460ECC4(v30, v32, v34 & 1);

  sub_26460ECC4(v40, v39, v38 & 1);
}

uint64_t sub_264724CC4@<X0>(uint64_t a1@<X0>, _OWORD *a4@<X8>)
{
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264785704();
  MEMORY[0x28223BE20](v6 - 8);
  if (*(a1 + *(type metadata accessor for TimerInfoView(0) + 24)) == 1)
  {
    sub_264785694();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v51 = sub_264785744();
    *(&v51 + 1) = v9;
    sub_264613FC4();
    v10 = sub_264784E44();
    v12 = v11;
    LOBYTE(ObjCClassFromMetadata) = v13;
    sub_264784CC4();
    v14 = sub_264784E24();
    v16 = v15;
    v18 = v17;

    sub_26460ECC4(v10, v12, ObjCClassFromMetadata & 1);

    sub_264785204();
    sub_264784DE4();

    sub_26460ECC4(v14, v16, v18 & 1);
  }

  else
  {
    sub_264785694();
    sub_26460EC78();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v51 = sub_264785754();
    *(&v51 + 1) = v21;
    sub_264613FC4();
    v22 = sub_264784E44();
    v24 = v23;
    v26 = v25;
    sub_264784CC4();
    v27 = sub_264784E24();
    v29 = v28;
    v31 = v30;

    sub_26460ECC4(v22, v24, v26 & 1);

    sub_264785204();
    sub_264784DE4();

    sub_26460ECC4(v27, v29, v31 & 1);
  }

  sub_264784874();
  sub_2647253C0(v51, *(&v51 + 1), v52, *(&v52 + 1));
  sub_264613FC4();

  v32 = sub_264784E44();
  v34 = v33;
  v36 = v35;
  sub_264784CC4();
  v37 = sub_264784E24();
  v39 = v38;
  v41 = v40;

  sub_26460ECC4(v32, v34, v36 & 1);

  sub_264785214();
  v42 = sub_264784DE4();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_26460ECC4(v37, v39, v41 & 1);

  sub_2647253C0(v51, *(&v51 + 1), v52, *(&v52 + 1));
  sub_26460C474(v42, v44, v46 & 1);

  sub_2647253FC(v51, *(&v51 + 1), v52, *(&v52 + 1));
  *a4 = v51;
  a4[1] = v52;
  *(a4 + 32) = v53;
  *(a4 + 5) = 0;
  *(a4 + 48) = 1;
  *(a4 + 7) = v42;
  *(a4 + 8) = v44;
  *(a4 + 72) = v46 & 1;
  *(a4 + 10) = v48;
  sub_26460ECC4(v42, v44, v46 & 1);

  return sub_2647253FC(v51, *(&v51 + 1), v52, *(&v52 + 1));
}

unint64_t sub_2647252CC()
{
  result = qword_27FF78668;
  if (!qword_27FF78668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78660, &qword_264790860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78668);
  }

  return result;
}

unint64_t sub_264725330()
{
  result = qword_27FF78670;
  if (!qword_27FF78670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78658, &qword_264790858);
    sub_2647252CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78670);
  }

  return result;
}

uint64_t sub_2647253C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_26460C474(a1, a2, a3 & 1);
}

uint64_t sub_2647253FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_26460ECC4(a1, a2, a3 & 1);
}

uint64_t sub_264725438()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78658, &qword_264790858);
  sub_264725330();
  return swift_getOpaqueTypeConformance2();
}

id PhoneCacheInfoViewModel.__allocating_init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = v8;
  v10 = a2[3];
  v23 = a2[2];
  v24 = v10;
  v11 = a2[5];
  v25 = a2[4];
  v26 = v11;
  v12 = a2[1];
  v21 = *a2;
  v22 = v12;
  if (v21)
  {
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v8[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v9[v13] = a1;
    v14 = &v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v15 = v22;
    *v14 = v21;
    v14[1] = v15;
    v16 = v26;
    v18 = v23;
    v17 = v24;
    v14[4] = v25;
    v14[5] = v16;
    v14[2] = v18;
    v14[3] = v17;
    v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v20.receiver = v9;
    v20.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {

    sub_26472579C(&v21);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id WatchCacheInfoViewModel.__allocating_init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = v8;
  v10 = a2[3];
  v23 = a2[2];
  v24 = v10;
  v11 = a2[5];
  v25 = a2[4];
  v26 = v11;
  v12 = a2[1];
  v21 = *a2;
  v22 = v12;
  if (*(&v21 + 1))
  {
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v8[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v9[v13] = a1;
    v14 = &v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v15 = v22;
    *v14 = v21;
    v14[1] = v15;
    v16 = v26;
    v18 = v23;
    v17 = v24;
    v14[4] = v25;
    v14[5] = v16;
    v14[2] = v18;
    v14[3] = v17;
    v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v20.receiver = v9;
    v20.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {

    sub_26472579C(&v21);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id PhoneCacheInfoViewModel.init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v5 = a2[3];
  v18 = a2[2];
  v19 = v5;
  v6 = a2[5];
  v20 = a2[4];
  v21 = v6;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  if (v16)
  {
    v9 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v3[v9] = a1;
    v10 = &v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v11 = v19;
    v10[2] = v18;
    v10[3] = v11;
    v12 = v21;
    v10[4] = v20;
    v10[5] = v12;
    v13 = v17;
    *v10 = v16;
    v10[1] = v13;
    v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    sub_26472579C(&v16);
    type metadata accessor for PhoneCacheInfoViewModel();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_264725814()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

BOOL sub_264725860()
{
  v1 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

uint64_t sub_2647258B0()
{
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 date];
  sub_264783AC4();

  v8 = sub_264783A64();
  v9 = [v8 preciseFormattedTime];

  v10 = sub_264785724();
  (*(v2 + 8))(v4, v1);
  return v10;
}

id sub_264725A54(SEL *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  v4 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = [v3 *a1];

  return v5;
}

void *sub_264725AE0()
{
  v1 = v0;
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647856E4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_264783E24();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783AF4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v60 = &v54 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x88))(v18);
  if (!result)
  {
    return result;
  }

  v55 = v8;
  v56 = v4;
  v22 = result;
  v23 = [result date];

  sub_264783AC4();
  v24 = v11;
  v25 = *(v11 + 32);
  (v25)(v20, v17, v10);
  v26 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
  swift_beginAccess();
  v27 = *(v26 + 5);
  v28 = v10;
  if (!v27)
  {
LABEL_7:
    sub_2647856D4();
    sub_2647856C4();
    v48 = sub_264783A64();
    v49 = [v48 preciseFormattedTime];

    sub_264785724();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v52 = sub_264785754();
    (*(v24 + 8))(v20, v28);
    return v52;
  }

  v29 = v24;
  v30 = [v27 date];
  sub_264783AC4();

  v31 = v60;
  v25();
  sub_264783A44();
  v33 = v20;
  if (fabs(v32) >= 300.0)
  {
    v24 = v29;
    (*(v29 + 8))(v31, v28);
    goto LABEL_7;
  }

  v59 = v28;
  v34 = v57;
  sub_264783E04();
  v35 = v1;
  v36 = sub_264783E14();
  v37 = sub_2647859F4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *v38 = 136315394;
    v39 = v35;
    v40 = [v39 description];
    v41 = sub_264785724();
    v43 = v42;

    v44 = sub_2646DF234(v41, v43, v61);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2646DF234(0xD000000000000011, 0x80000002647998B0, v61);
    _os_log_impl(&dword_264605000, v36, v37, "%s, %s: No last updated string because we are within 5 mins of last location update", v38, 0x16u);
    v45 = v56;
    swift_arrayDestroy();
    MEMORY[0x266740650](v45, -1, -1);
    MEMORY[0x266740650](v38, -1, -1);

    (*(v58 + 8))(v34, v55);
    v46 = *(v29 + 8);
    v47 = v60;
  }

  else
  {

    (*(v58 + 8))(v34, v55);
    v46 = *(v29 + 8);
    v47 = v31;
  }

  v53 = v59;
  v46(v47, v59);
  v46(v33, v53);
  return 0;
}

void *sub_2647261A4()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2647261F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2647262A8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  swift_beginAccess();
  v4 = v3[2];
  v6 = v3[4];
  v7 = v3[5];
  v13 = v3[3];
  v5 = v13;
  v14 = v6;
  v15 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  *a1 = v8;
  a1[1] = v9;
  return sub_26467A834(v12, v11);
}

uint64_t sub_264726330(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  swift_beginAccess();
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v5 = v3[5];
  v11[4] = v3[4];
  v11[5] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  return sub_26472579C(v11);
}

uint64_t sub_264726410()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_264726454(char a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_264726504(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B0, &qword_264790880);
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B8, &qword_264790888);
  MEMORY[0x28223BE20](v51);
  v54 = &v42 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C0, &qword_264790890);
  MEMORY[0x28223BE20](v49);
  v50 = &v42 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C8, &qword_264790898);
  MEMORY[0x28223BE20](v52);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D0, &qword_2647908A0);
  MEMORY[0x28223BE20](v9);
  v55 = &v42 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  MEMORY[0x28223BE20](v48);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786E0, &qword_2647908B0);
  MEMORY[0x28223BE20](v13);
  v56 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786E8, &qword_2647908B8);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  type metadata accessor for WatchCacheInfoViewModel();
  v18 = swift_dynamicCastClass();
  v57 = v13;
  if (v18)
  {
    v19 = v1;
    if (sub_264728B2C())
    {
      swift_storeEnumTagMultiPayload();
      sub_26472966C();
      sub_264784874();

      return;
    }
  }

  v20 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 cellularStrength];

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v36 = sub_264785264();
        v45 = v36;
        v37 = sub_264784D44();
        v42 = v37;
        KeyPath = swift_getKeyPath();
        v60 = v36;
        v61 = KeyPath;
        v62 = v37;
        v38 = sub_264729B44(2);
        v43 = v39;
        v58 = v38;
        v59 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v46 = v5;
        v47 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v12, v50, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_16;
      }

      if (v22 == 4)
      {
        v27 = sub_264785264();
        v45 = v27;
        v28 = sub_264784D44();
        v42 = v28;
        KeyPath = swift_getKeyPath();
        v60 = v27;
        v61 = KeyPath;
        v62 = v28;
        v29 = sub_264729B44(3);
        v43 = v30;
        v58 = v29;
        v59 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v46 = v5;
        v47 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v12, v50, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_16;
      }
    }

    else
    {
      if (v22 == 1)
      {
        v32 = sub_264785264();
        v45 = v32;
        v33 = sub_264784D44();
        v42 = v33;
        KeyPath = swift_getKeyPath();
        v60 = v32;
        v61 = KeyPath;
        v62 = v33;
        v34 = sub_264729B44(0);
        v43 = v35;
        v58 = v34;
        v59 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v46 = v5;
        v47 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v12, v50, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_16;
      }

      if (v22 == 2)
      {
        v23 = sub_264785264();
        v45 = v23;
        v24 = sub_264784D44();
        v42 = v24;
        KeyPath = swift_getKeyPath();
        v60 = v23;
        v61 = KeyPath;
        v62 = v24;
        v25 = sub_264729B44(1);
        v43 = v26;
        v58 = v25;
        v59 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v46 = v5;
        v47 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v12, v50, &qword_27FF786D8, &qword_2647908A8);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        sub_2647295E0();
        v40 = v53;
        sub_264784874();
        sub_26460CCE8(v40, v54, &qword_27FF786C8, &qword_264790898);
        swift_storeEnumTagMultiPayload();
        sub_264729534();
        v41 = v55;
        sub_264784874();
        sub_26460CD50(v40, &qword_27FF786C8, &qword_264790898);
        sub_26460CCE8(v41, v46, &qword_27FF786D0, &qword_2647908A0);
        swift_storeEnumTagMultiPayload();
        sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
        v31 = v56;
        sub_264784874();
        sub_26460CD50(v41, &qword_27FF786D0, &qword_2647908A0);
        sub_26460CD50(v12, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_17;
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
  v31 = v56;
  sub_264784874();
LABEL_17:
  sub_26460CCE8(v31, v17, &qword_27FF786E0, &qword_2647908B0);
  swift_storeEnumTagMultiPayload();
  sub_26472966C();
  sub_264784874();
  sub_26460CD50(v31, &qword_27FF786E0, &qword_2647908B0);
}

uint64_t sub_264726F80@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B0, &qword_264790880);
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B8, &qword_264790888);
  MEMORY[0x28223BE20](v46);
  v6 = &v40 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C0, &qword_264790890);
  MEMORY[0x28223BE20](v45);
  v8 = &v40 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C8, &qword_264790898);
  MEMORY[0x28223BE20](v47);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D0, &qword_2647908A0);
  MEMORY[0x28223BE20](v11);
  v49 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v14);
  if (!v17)
  {
    goto LABEL_9;
  }

  v48 = v2;
  v18 = v17;
  v19 = [v17 wifiStrength];

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v36 = sub_264785264();
      v43 = v36;
      v37 = sub_264784D44();
      v41 = v37;
      KeyPath = swift_getKeyPath();
      v44 = v11;
      v42 = KeyPath;
      v53 = v36;
      v54 = KeyPath;
      v55 = v37;
      v23 = v16;
      v51 = sub_2647297D4(2);
      v52 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
      sub_26466D5C8();
      sub_264613FC4();
      sub_264784FC4();

      sub_26460CCE8(v16, v8, &qword_27FF786D8, &qword_2647908A8);
      swift_storeEnumTagMultiPayload();
      sub_2647295E0();
      sub_264784874();
      sub_26460CCE8(v10, v6, &qword_27FF786C8, &qword_264790898);
      goto LABEL_13;
    }

    if (v19 != 4)
    {
      goto LABEL_9;
    }

    v27 = sub_264785264();
    v43 = v27;
    v28 = sub_264784D44();
    v41 = v28;
    v29 = swift_getKeyPath();
    v44 = v11;
    v42 = v29;
    v53 = v27;
    v54 = v29;
    v55 = v28;
    v23 = v16;
    v51 = sub_2647297D4(3);
    v52 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    sub_264613FC4();
    sub_264784FC4();

    sub_26460CCE8(v16, v8, &qword_27FF786D8, &qword_2647908A8);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_2647295E0();
    sub_264784874();
    sub_26460CCE8(v10, v6, &qword_27FF786C8, &qword_264790898);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    sub_264729534();
    v25 = v49;
    sub_264784874();
    sub_26460CD50(v10, &qword_27FF786C8, &qword_264790898);
    v26 = v25;
    goto LABEL_14;
  }

  if (v19 == 1)
  {
    v32 = sub_264785264();
    v43 = v32;
    v33 = sub_264784D44();
    v41 = v33;
    v34 = swift_getKeyPath();
    v44 = v11;
    v42 = v34;
    v53 = v32;
    v54 = v34;
    v55 = v33;
    v23 = v16;
    v51 = sub_2647297D4(0);
    v52 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    sub_264613FC4();
    sub_264784FC4();

    sub_26460CCE8(v16, v8, &qword_27FF786D8, &qword_2647908A8);
    goto LABEL_11;
  }

  if (v19 != 2)
  {
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
    return sub_264784874();
  }

  v20 = sub_264785264();
  v42 = v20;
  v21 = sub_264784D44();
  v41 = v21;
  v22 = swift_getKeyPath();
  v53 = v20;
  v54 = v22;
  v55 = v21;
  v23 = v16;
  v51 = sub_2647297D4(1);
  v52 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
  v44 = v11;
  sub_26466D5C8();
  v43 = v4;
  sub_264613FC4();
  sub_264784FC4();

  sub_26460CCE8(v16, v8, &qword_27FF786D8, &qword_2647908A8);
  swift_storeEnumTagMultiPayload();
  sub_2647295E0();
  sub_264784874();
  sub_26460CCE8(v10, v6, &qword_27FF786C8, &qword_264790898);
  swift_storeEnumTagMultiPayload();
  sub_264729534();
  v25 = v49;
  sub_264784874();
  sub_26460CD50(v10, &qword_27FF786C8, &qword_264790898);
  v26 = v25;
  v4 = v43;
LABEL_14:
  sub_26460CCE8(v26, v4, &qword_27FF786D0, &qword_2647908A0);
  swift_storeEnumTagMultiPayload();
  sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
  sub_264784874();
  sub_26460CD50(v25, &qword_27FF786D0, &qword_2647908A0);
  return sub_26460CD50(v23, &qword_27FF786D8, &qword_2647908A8);
}

uint64_t sub_2647278CC@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78710, &qword_264790900);
  MEMORY[0x28223BE20](v76);
  v77 = &v62 - v2;
  v3 = sub_264783E24();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v62 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78718, &qword_264790908);
  MEMORY[0x28223BE20](v63);
  v64 = &v62 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78720, &qword_264790910);
  MEMORY[0x28223BE20](v74);
  v65 = &v62 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78728, &qword_264790918);
  MEMORY[0x28223BE20](v70);
  v72 = &v62 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B8, &qword_264790888);
  MEMORY[0x28223BE20](v68);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C0, &qword_264790890);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C8, &qword_264790898);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D0, &qword_2647908A0);
  MEMORY[0x28223BE20](v71);
  v69 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78730, &qword_264790920);
  v23 = MEMORY[0x28223BE20](v75);
  v73 = &v62 - v24;
  v25 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v23);
  if (v25)
  {
    v26 = v25;
    v27 = [v25 batteryRemaining];

    if (v27 > 9 && v27 > 0x59)
    {
      if (v27 <= 0x64)
      {
        sub_26472868C(v27, v22);
        v58 = &qword_27FF786D8;
        v59 = &qword_2647908A8;
        sub_26460CCE8(v22, v64, &qword_27FF786D8, &qword_2647908A8);
        swift_storeEnumTagMultiPayload();
        sub_2647295E0();
        v60 = v65;
        sub_264784874();
        sub_26460CCE8(v60, v72, &qword_27FF78720, &qword_264790910);
        swift_storeEnumTagMultiPayload();
        sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
        sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
        v42 = v73;
        sub_264784874();
        sub_26460CD50(v60, &qword_27FF78720, &qword_264790910);
        v43 = v22;
      }

      else
      {
        v46 = v62;
        sub_264783E04();
        v47 = v1;
        v48 = sub_264783E14();
        v49 = sub_2647859E4();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v79 = v51;
          *v50 = 136315650;
          v52 = v47;
          v53 = [v52 description];
          v54 = sub_264785724();
          v56 = v55;

          v57 = sub_2646DF234(v54, v56, &v79);

          *(v50 + 4) = v57;
          *(v50 + 12) = 2080;
          *(v50 + 14) = sub_2646DF234(0xD000000000000014, 0x80000002647998D0, &v79);
          *(v50 + 22) = 2048;
          *(v50 + 24) = v27;
          _os_log_impl(&dword_264605000, v48, v49, "%s, %s: Battery level %ld is unexpected.", v50, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v51, -1, -1);
          MEMORY[0x266740650](v50, -1, -1);

          (*(v66 + 8))(v62, v67);
        }

        else
        {

          (*(v66 + 8))(v46, v67);
        }

        v42 = v73;
        swift_storeEnumTagMultiPayload();
        sub_2647295E0();
        v61 = v65;
        sub_264784874();
        v58 = &qword_27FF78720;
        v59 = &qword_264790910;
        sub_26460CCE8(v61, v72, &qword_27FF78720, &qword_264790910);
        swift_storeEnumTagMultiPayload();
        sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
        sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
        sub_264784874();
        v43 = v61;
      }

      v44 = v58;
      v45 = v59;
    }

    else
    {
      v40 = v22;
      sub_26472868C(v27, v22);
      sub_26460CCE8(v22, v15, &qword_27FF786D8, &qword_2647908A8);
      swift_storeEnumTagMultiPayload();
      sub_2647295E0();
      sub_264784874();
      sub_26460CCE8(v18, v12, &qword_27FF786C8, &qword_264790898);
      swift_storeEnumTagMultiPayload();
      sub_264729534();
      v41 = v69;
      sub_264784874();
      sub_26460CD50(v18, &qword_27FF786C8, &qword_264790898);
      sub_26460CCE8(v41, v72, &qword_27FF786D0, &qword_2647908A0);
      swift_storeEnumTagMultiPayload();
      sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
      sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
      v42 = v73;
      sub_264784874();
      sub_26460CD50(v41, &qword_27FF786D0, &qword_2647908A0);
      v43 = v40;
      v44 = &qword_27FF786D8;
      v45 = &qword_2647908A8;
    }

    sub_26460CD50(v43, v44, v45);
    sub_26460CCE8(v42, v77, &qword_27FF78730, &qword_264790920);
    swift_storeEnumTagMultiPayload();
    sub_264729D58();
    sub_264784874();
    return sub_26460CD50(v42, &qword_27FF78730, &qword_264790920);
  }

  else
  {
    sub_264783E04();
    v28 = v1;
    v29 = sub_264783E14();
    v30 = sub_2647859E4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v79 = v32;
      *v31 = 136315394;
      v33 = v28;
      v34 = [v33 description];
      v35 = sub_264785724();
      v37 = v36;

      v38 = sub_2646DF234(v35, v37, &v79);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2646DF234(0xD000000000000014, 0x80000002647998D0, &v79);
      _os_log_impl(&dword_264605000, v29, v30, "%s, %s: Battery level nil is unexpected.", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v32, -1, -1);
      MEMORY[0x266740650](v31, -1, -1);
    }

    (*(v66 + 8))(v6, v67);
    swift_storeEnumTagMultiPayload();
    sub_264729D58();
    return sub_264784874();
  }
}

uint64_t sub_26472868C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a3;
  v17[1] = a4;
  v4 = sub_264784634();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264785704();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;

  v10 = sub_264785274();
  v11 = sub_264784D44();
  KeyPath = swift_getKeyPath();
  v18 = v10;
  v19 = KeyPath;
  v20 = v11;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v17[2] = sub_264785754();
  v17[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
  sub_26466D5C8();
  sub_264613FC4();
  sub_264784FC4();

  sub_264784624();
  sub_264784614();
  v18 = v17[0];
  sub_2647845F4();
  sub_264784614();
  sub_264784654();
  sub_264784224();

  return sub_26460CD50(v9, &qword_27FF786D8, &qword_2647908A8);
}

id WatchCacheInfoViewModel.init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v5 = a2[3];
  v18 = a2[2];
  v19 = v5;
  v6 = a2[5];
  v20 = a2[4];
  v21 = v6;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  if (*(&v16 + 1))
  {
    v9 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v3[v9] = a1;
    v10 = &v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v11 = v19;
    v10[2] = v18;
    v10[3] = v11;
    v12 = v21;
    v10[4] = v20;
    v10[5] = v12;
    v13 = v17;
    *v10 = v16;
    v10[1] = v13;
    v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    sub_26472579C(&v16);
    type metadata accessor for WatchCacheInfoViewModel();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_264728ADC()
{
  v1 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = v2;
  return v2;
}

uint64_t sub_264728B2C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v50 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = &v0[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
  swift_beginAccess();
  result = *(v11 + 1);
  if (result)
  {
    if ([result cellularStrength] == 1)
    {
      v13 = *(v11 + 1);
      if (!v13 || [v13 wifiStrength] != 1)
      {
        sub_264783E04();
        v26 = v0;
        v27 = sub_264783E14();
        v28 = sub_2647859F4();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = v51;
          *v29 = 136315394;
          v30 = v26;
          v31 = v2;
          v32 = [v30 description];
          v33 = sub_264785724();
          v35 = v34;

          v36 = sub_2646DF234(v33, v35, &v52);

          *(v29 + 4) = v36;
          *(v29 + 12) = 2080;
          *(v29 + 14) = sub_2646DF234(0xD000000000000012, 0x8000000264799990, &v52);
          _os_log_impl(&dword_264605000, v27, v28, "%s, %s: Hiding inactive cellular because watch has wifi", v29, 0x16u);
          v37 = v51;
          swift_arrayDestroy();
          MEMORY[0x266740650](v37, -1, -1);
          MEMORY[0x266740650](v29, -1, -1);

          (*(v31 + 8))(v10, v1);
          return 1;
        }

        (*(v2 + 8))(v10, v1);
        return 1;
      }

      if (*v11)
      {
        sub_264783E04();
        v14 = v0;
        v15 = sub_264783E14();
        v16 = sub_2647859F4();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = v51;
          *v17 = 136315394;
          v18 = v14;
          v19 = v2;
          v20 = [v18 description];
          v21 = sub_264785724();
          v23 = v22;

          v24 = sub_2646DF234(v21, v23, &v52);

          *(v17 + 4) = v24;
          *(v17 + 12) = 2080;
          *(v17 + 14) = sub_2646DF234(0xD000000000000012, 0x8000000264799990, &v52);
          _os_log_impl(&dword_264605000, v15, v16, "%s, %s: Hiding inactive cellular because phone device status is present", v17, 0x16u);
          v25 = v51;
          swift_arrayDestroy();
          MEMORY[0x266740650](v25, -1, -1);
          MEMORY[0x266740650](v17, -1, -1);

          (*(v19 + 8))(v8, v1);
          return 1;
        }

        (*(v2 + 8))(v8, v1);
        return 1;
      }

      sub_264783E04();
      v38 = v0;
      v39 = sub_264783E14();
      v40 = sub_2647859F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = v51;
        *v41 = 136315394;
        v42 = v38;
        v43 = v2;
        v44 = [v42 description];
        v45 = sub_264785724();
        v47 = v46;

        v48 = sub_2646DF234(v45, v47, &v52);

        *(v41 + 4) = v48;
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_2646DF234(0xD000000000000012, 0x8000000264799990, &v52);
        _os_log_impl(&dword_264605000, v39, v40, "%s, %s: Not hiding cellular info", v41, 0x16u);
        v49 = v51;
        swift_arrayDestroy();
        MEMORY[0x266740650](v49, -1, -1);
        MEMORY[0x266740650](v41, -1, -1);

        (*(v43 + 8))(v5, v1);
      }

      else
      {

        (*(v2 + 8))(v5, v1);
      }
    }

    return 0;
  }

  return result;
}

void sub_26472917C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_2647291DC@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  swift_beginAccess();
  v4 = *v3;
  v14[1] = v3[1];
  v14[0] = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  v14[4] = v3[4];
  v14[5] = v7;
  v14[2] = v5;
  v14[3] = v6;
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[5];
  a2[4] = v3[4];
  a2[5] = v11;
  a2[2] = v9;
  a2[3] = v10;
  return sub_26467A834(v14, v13);
}

uint64_t sub_264729274(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[5];
  v20 = a1[3];
  v21 = v3;
  v22 = v4;
  v5 = a1[1];
  v17 = *a1;
  v6 = (*a2 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  v18 = v5;
  v19 = v2;
  swift_beginAccess();
  v7 = v6[1];
  v23[0] = *v6;
  v23[1] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v23[4] = v6[4];
  v23[5] = v10;
  v23[2] = v8;
  v23[3] = v9;
  v11 = v22;
  v13 = v19;
  v12 = v20;
  v6[4] = v21;
  v6[5] = v11;
  v6[2] = v13;
  v6[3] = v12;
  v14 = v18;
  *v6 = v17;
  v6[1] = v14;
  sub_26467A834(&v17, v16);
  return sub_26472579C(v23);
}

id DeviceCacheInfoViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2647293D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2647294D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DeviceCacheInfoViewModel();
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t sub_264729564(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2647295E0()
{
  result = qword_27FF78700;
  if (!qword_27FF78700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF786D8, &qword_2647908A8);
    sub_26466D5C8();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78700);
  }

  return result;
}

unint64_t sub_26472966C()
{
  result = qword_27FF78708;
  if (!qword_27FF78708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF786E0, &qword_2647908B0);
    sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78708);
  }

  return result;
}

uint64_t sub_264729724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2647844A4();
  *a1 = result;
  return result;
}

uint64_t sub_264729750@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2647844A4();
  *a1 = result;
  return result;
}

uint64_t sub_2647297D4(char a1)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2647856E4();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  if (MGGetBoolAnswer())
  {
    sub_2647856D4();
    result = sub_2647856C4();
    v7 = ceil(dbl_264790A18[a1]);
    if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2647856D4();
  result = sub_2647856C4();
  v8 = ceil(dbl_264790A18[a1]);
  if (v8 <= -9.22337204e18)
  {
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
LABEL_7:
    sub_2647856A4();
    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785754();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_264729B44(char a1)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2647856E4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2647856D4();
  result = sub_2647856C4();
  v6 = ceil(dbl_264790A38[a1]);
  if (v6 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v6 < 9.22337204e18)
  {
    sub_2647856A4();
    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785754();
  }

  __break(1u);
  return result;
}

unint64_t sub_264729D58()
{
  result = qword_27FF78738;
  if (!qword_27FF78738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78730, &qword_264790920);
    sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
    sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78738);
  }

  return result;
}

id sub_264729E3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_264729EB0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_264729F08(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

unint64_t sub_26472A458()
{
  result = qword_27FF78748;
  if (!qword_27FF78748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78750, &qword_264790A00);
    sub_26472966C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78748);
  }

  return result;
}

uint64_t sub_26472A52C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26472A600@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264784574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveActivityView(0);
  sub_26460CCE8(v1 + *(v10 + 28), v9, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_264783F74();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LiveActivityView.init(with:onLockscreen:resizeHandler:)@<X0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for LiveActivityView(0);
  v10 = v9[6];
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  swift_storeEnumTagMultiPayload();
  v11 = v9[7];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v9[8];
  sub_2647852E4();
  *v12 = v18;
  *(v12 + 1) = v19;
  type metadata accessor for SessionViewModel(0);
  sub_2647365C0(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);

  *a5 = sub_264784174();
  a5[1] = v13;
  *(a5 + v9[9]) = a2;
  v14 = (a5 + v9[10]);
  *v14 = a3;
  v14[1] = a4;
  v15 = qword_27FF74FE8;

  if (v15 != -1)
  {
    swift_once();
  }

  type metadata accessor for DeviceLockMonitor(0);
  sub_2647365C0(&qword_27FF78770, type metadata accessor for DeviceLockMonitor, &protocol conformance descriptor for DeviceLockMonitor);

  a5[2] = sub_264784174();
  a5[3] = v16;
  sub_26466626C();
}

uint64_t type metadata accessor for LiveActivityView(uint64_t a1)
{
  result = qword_27FF78870;
  if (!qword_27FF78870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26472AAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a5;
  v56 = a6;
  v60 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B98, &qword_2647910A0);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v53 - v12;
  v13 = sub_264783F74();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v63 = a1;
  v64 = a2;
  sub_264613FC4();

  v20 = sub_264784E44();
  v22 = v21;
  v24 = v23;
  v58 = v25;
  v59 = a3;
  sub_26472A600(v19);
  (*(v14 + 104))(v17, *MEMORY[0x277CDF3C0], v13);
  LOBYTE(a3) = sub_264783F64();
  v26 = *(v14 + 8);
  v26(v17, v13);
  v26(v19, v13);
  if (a3)
  {
    v27 = v60;
  }

  else
  {
    v27 = sub_264785204();
  }

  v63 = v27;
  v28 = sub_264784DF4();
  v30 = v29;
  v32 = v31;
  sub_26460ECC4(v20, v22, v24 & 1);

  sub_264784D84();
  v33 = sub_264784E24();
  v35 = v34;
  v57 = v36;
  v58 = v37;

  sub_26460ECC4(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (*(v59 + *(type metadata accessor for LiveActivityView(0) + 36)) == 1)
  {
    v42 = v56;
    if (v56)
    {

      v43 = v55;
      sub_264785274();
      v44 = v54;
      sub_264784734();
      v45 = sub_264784744();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      v46 = sub_2647852A4();

      sub_26460CD50(v44, &qword_27FF78B98, &qword_2647910A0);
      v39 = sub_26472AF6C(v43, v42, v60, v46);

      v41 = sub_264784D34();
      v40 = swift_getKeyPath();
    }
  }

  v47 = v57 & 1;
  LOBYTE(v63) = v57 & 1;
  v62 = 0;
  v61 = 0;
  sub_26460C474(v33, v35, v57 & 1);
  v48 = v58;

  sub_26466D2FC(v39);
  sub_26466D34C(v39, v40, v41);
  v49 = v63;
  v50 = v62;
  v51 = v61;
  *a7 = v33;
  *(a7 + 8) = v35;
  *(a7 + 16) = v49;
  *(a7 + 24) = v48;
  *(a7 + 32) = KeyPath;
  *(a7 + 40) = 1;
  *(a7 + 48) = v50;
  *(a7 + 56) = 0;
  *(a7 + 64) = v51;
  *(a7 + 72) = v39;
  *(a7 + 80) = v40;
  *(a7 + 88) = v41;
  sub_26466D34C(v39, v40, v41);
  sub_26460ECC4(v33, v35, v47);
}

uint64_t sub_26472AF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 == 0x69662E6B636F6C63 && a2 == 0xEA00000000006C6CLL;
  if (v4 || (sub_264785E84() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78BC0, &qword_2647910B8);
    sub_2647368C4();
  }

  else
  {
    if (qword_27FF753B0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78BA0, &qword_2647910A8);
    sub_26473680C();
  }

  return sub_2647853C4();
}

uint64_t LiveActivityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v96 = sub_2647846B4();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_264784AA4();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v90 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LiveActivityView(0);
  v6 = *(v5 - 8);
  v98 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78778, &qword_264790AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v78 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78780, &qword_264790AE8);
  MEMORY[0x28223BE20](v12);
  v14 = &v78 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78788, &qword_264790AF0);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v78 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78790, &qword_264790AF8);
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v99 = &v78 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78798, &qword_264790B00);
  MEMORY[0x28223BE20](v87);
  v83 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787A0, &qword_264790B08);
  v19 = *(v18 - 8);
  v88 = v18;
  v89 = v19;
  MEMORY[0x28223BE20](v18);
  v86 = &v78 - v20;
  *v11 = sub_264785504();
  v11[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787A8, &qword_264790B10);
  sub_26472BC00(v1, v11 + *(v22 + 44));
  v23 = sub_264784C24();
  sub_26460CCE8(v11, v14, &qword_27FF78778, &qword_264790AE0);
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787B0, &qword_264790B18) + 36)];
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v25 = sub_264784C44();
  sub_264783F54();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787B8, &qword_264790B20) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_264784C54();
  sub_264783F54();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787C0, &unk_264790B28) + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  sub_26460CD50(v11, &qword_27FF78778, &qword_264790AE0);
  sub_2647851C4();
  v45 = sub_2647851F4();

  v46 = sub_264784C34();
  v78 = v12;
  v47 = &v14[*(v12 + 36)];
  *v47 = v45;
  v47[8] = v46;
  v48 = v8;
  sub_26473413C(v1, v8);
  v49 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v50 = swift_allocObject();
  sub_2647341A4(v8, v50 + v49);
  v51 = sub_264734220();
  v52 = v80;
  sub_264784F14();

  sub_26460CD50(v14, &qword_27FF78780, &qword_264790AE8);
  v79 = v1;
  v97 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v105);

  v104 = v105;
  sub_26473413C(v1, v48);
  v53 = swift_allocObject();
  v54 = v48;
  sub_2647341A4(v48, v53 + v49);
  v100 = v78;
  v101 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = sub_264667DA8();
  v57 = v81;
  sub_2647850F4();

  (*(v82 + 8))(v52, v57);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v105);

  v104 = v105;
  v58 = v79;
  sub_26473413C(v79, v54);
  v59 = swift_allocObject();
  sub_2647341A4(v54, v59 + v49);
  v100 = v57;
  v101 = &type metadata for DeviceLockMonitor.LockState;
  v102 = OpaqueTypeConformance2;
  v103 = v56;
  swift_getOpaqueTypeConformance2();
  v60 = v83;
  v61 = v84;
  v62 = v99;
  sub_2647850F4();

  (*(v85 + 8))(v62, v61);
  sub_26473413C(v58, v54);
  v63 = swift_allocObject();
  sub_2647341A4(v54, v63 + v49);
  v64 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787F0, &qword_264790BC8) + 36));
  *v64 = sub_26472D430;
  v64[1] = 0;
  v64[2] = sub_264734530;
  v64[3] = v63;
  sub_264785534();
  v65 = sub_264785524();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v100);

  LOBYTE(v63) = v100;
  v66 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787F8, &qword_264790BD0) + 36);
  *v66 = v65;
  *(v66 + 8) = v63;
  sub_264785534();
  v67 = sub_264785524();

  LOBYTE(v63) = sub_26472D5E0();
  v68 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78800, &qword_264790BD8) + 36);
  *v68 = v67;
  *(v68 + 8) = v63 & 1;
  v69 = sub_264785544();
  v70 = v87;
  v71 = (v60 + *(v87 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78808, &qword_264790BE0);
  sub_264783B54();
  *v71 = v69;
  v72 = v90;
  sub_264784A94();
  v73 = sub_2647345A0();
  v74 = v86;
  sub_264784FF4();
  (*(v91 + 8))(v72, v92);
  sub_26460CD50(v60, &qword_27FF78798, &qword_264790B00);
  v75 = v93;
  sub_2647846A4();
  v100 = v70;
  v101 = v73;
  swift_getOpaqueTypeConformance2();
  v76 = v88;
  sub_264785024();
  (*(v94 + 8))(v75, v96);
  return (*(v89 + 8))(v74, v76);
}

uint64_t sub_26472BC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788A0, &qword_264790CE8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788A8, &qword_264790CF0);
  MEMORY[0x28223BE20](v27[0]);
  v11 = v27 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v33);

  v27[1] = a2;
  v27[2] = v4;
  if (LOBYTE(v33[0]) && LOBYTE(v33[0]) == 1)
  {

LABEL_5:
    v13 = sub_264784724();
    v31[0] = 1;
    sub_26472EDC8(v33);
    memcpy(v28, v33, 0x1B2uLL);
    memcpy(v29, v33, 0x1B2uLL);
    sub_26460CCE8(v28, v32, &qword_27FF788F8, &qword_264790D70);
    sub_26460CD50(v29, &qword_27FF788F8, &qword_264790D70);
    memcpy(v33 + 7, v28, 0x1B2uLL);
    v30[0] = v13;
    v30[1] = 0;
    LOBYTE(v30[2]) = v31[0];
    memcpy(&v30[2] + 1, v33, 0x1B9uLL);
    memcpy(v33, v30, 0x1CAuLL);
    sub_2647352E4(v33);
    memcpy(v31, v33, sizeof(v31));
    v14 = &qword_27FF788D0;
    v15 = &qword_264790D58;
    sub_26460CCE8(v30, v32, &qword_27FF788D0, &qword_264790D58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788D0, &qword_264790D58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788E0, &qword_264790D60);
    v16 = MEMORY[0x277CE1198];
    sub_26460CDF0(&qword_27FF788C8, &qword_27FF788D0, &qword_264790D58, MEMORY[0x277CE1198]);
    sub_26460CDF0(&qword_27FF788D8, &qword_27FF788E0, &qword_264790D60, v16);
LABEL_6:
    sub_264784874();
    memcpy(v11, v32, 0x1CBuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788B8, &qword_264790D50);
    sub_2647351F8();
    sub_26460CDF0(&qword_27FF788E8, &qword_27FF788A0, &qword_264790CE8, MEMORY[0x277CDD828]);
    sub_264784874();
    return sub_26460CD50(v30, v14, v15);
  }

  v12 = sub_264785E84();

  if (v12)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v33);

  v18 = v33[0];
  if (v33[0])
  {
    v19 = [v33[0] unsupportedDeviceSeparationState];

    if (v19)
    {
      v20 = sub_264784724();
      v31[0] = 1;
      sub_26472FA10(v33);
      memcpy(v28, v33, 0x112uLL);
      memcpy(v29, v33, 0x112uLL);
      sub_26460CCE8(v28, v32, &qword_27FF788F0, &qword_264790D68);
      sub_26460CD50(v29, &qword_27FF788F0, &qword_264790D68);
      memcpy(v33 + 7, v28, 0x112uLL);
      v30[0] = v20;
      v30[1] = 0;
      LOBYTE(v30[2]) = v31[0];
      memcpy(&v30[2] + 1, v33, 0x119uLL);
      memcpy(v33, v30, 0x12AuLL);
      sub_2647352D8(v33);
      memcpy(v31, v33, sizeof(v31));
      v14 = &qword_27FF788E0;
      v15 = &qword_264790D60;
      sub_26460CCE8(v30, v32, &qword_27FF788E0, &qword_264790D60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788D0, &qword_264790D58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788E0, &qword_264790D60);
      v21 = MEMORY[0x277CE1198];
      sub_26460CDF0(&qword_27FF788C8, &qword_27FF788D0, &qword_264790D58, MEMORY[0x277CE1198]);
      sub_26460CDF0(&qword_27FF788D8, &qword_27FF788E0, &qword_264790D60, v21);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C8, &qword_264790D40);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2647889B0;
  v23 = sub_264784BF4();
  *(v22 + 32) = v23;
  v24 = sub_264784C14();
  *(v22 + 33) = v24;
  v25 = sub_264784C04();
  sub_264784C04();
  if (sub_264784C04() != v23)
  {
    v25 = sub_264784C04();
  }

  sub_264784C04();
  if (sub_264784C04() != v24)
  {
    v25 = sub_264784C04();
  }

  *v7 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788B0, &qword_264790D48);
  sub_26472C378(a1, &v7[*(v26 + 44)]);
  sub_26460E7E4(v7, v9, &qword_27FF788A0, &qword_264790CE8);
  sub_26460CCE8(v9, v11, &qword_27FF788A0, &qword_264790CE8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788B8, &qword_264790D50);
  sub_2647351F8();
  sub_26460CDF0(&qword_27FF788E8, &qword_27FF788A0, &qword_264790CE8, MEMORY[0x277CDD828]);
  sub_264784874();
  return sub_26460CD50(v9, &qword_27FF788A0, &qword_264790CE8);
}

uint64_t sub_26472C378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78938, &qword_264790E10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  *v15 = sub_264784714();
  *(v15 + 1) = 0x4030000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78940, &qword_264790E18);
  sub_26472D6D4(a1, 0, &v15[*(v16 + 44)]);
  *v13 = sub_264784714();
  *(v13 + 1) = 0x4030000000000000;
  v13[16] = 0;
  sub_26472D6D4(a1, 1, &v13[*(v16 + 44)]);
  sub_26460CCE8(v15, v10, &qword_27FF78938, &qword_264790E10);
  sub_26460CCE8(v13, v7, &qword_27FF78938, &qword_264790E10);
  sub_26460CCE8(v10, a2, &qword_27FF78938, &qword_264790E10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78948, &qword_264790E20);
  sub_26460CCE8(v7, a2 + *(v17 + 48), &qword_27FF78938, &qword_264790E10);
  sub_26460CD50(v13, &qword_27FF78938, &qword_264790E10);
  sub_26460CD50(v15, &qword_27FF78938, &qword_264790E10);
  sub_26460CD50(v7, &qword_27FF78938, &qword_264790E10);
  return sub_26460CD50(v10, &qword_27FF78938, &qword_264790E10);
}

uint64_t sub_26472C57C(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityView(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v112 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759C8, &qword_2647885E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v104 - v8;
  v10 = sub_2647839D4();
  v11 = *(v10 - 8);
  v113 = v10;
  v114 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v107 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v104 - v14;
  v15 = sub_264783E24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v111 = &v104 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v109 = &v104 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v108 = &v104 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v104 - v26;
  sub_264783DF4();
  v28 = sub_264783E14();
  v29 = sub_2647859B4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v15;
    v31 = v16;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_264605000, v28, v29, "Live Activity Tapped", v32, 2u);
    v33 = v32;
    v16 = v31;
    v15 = v30;
    MEMORY[0x266740650](v33, -1, -1);
  }

  v36 = *(v16 + 8);
  v35 = v16 + 8;
  v34 = v36;
  v36(v27, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v116);

  v37 = v116[0];
  if (v116[0] && (v38 = [v116[0] configuration], v37, v38) && (v39 = objc_msgSend(v38, sel_conversation), v38, v39))
  {
    v40 = [v39 receiverPrimaryHandles];
    v41 = sub_2647857F4();

    v42 = *(v41 + 16);

    if (v42)
    {
      sub_26472D1B4(v9);
      v44 = v113;
      v43 = v114;
      if ((*(v114 + 48))(v9, 1, v113) == 1)
      {
        sub_26460CD50(v9, &qword_27FF759C8, &qword_2647885E0);
      }

      else
      {
        v71 = v110;
        (*(v43 + 32))(v110, v9, v44);
        v72 = [objc_opt_self() defaultWorkspace];
        if (v72)
        {
          v73 = v72;
          v106 = v34;
          v112 = sub_2647839B4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2647889B0;
          *(inited + 32) = sub_264785724();
          *(inited + 40) = v75;
          v76 = v71;
          v77 = MEMORY[0x277D839B0];
          *(inited + 72) = MEMORY[0x277D839B0];
          *(inited + 48) = 1;
          *(inited + 80) = sub_264785724();
          *(inited + 88) = v78;
          *(inited + 120) = v77;
          *(inited + 96) = 1;
          v79 = v114;
          sub_264655958(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E70, &qword_264789800);
          swift_arrayDestroy();
          v80 = sub_264785604();

          v81 = v112;
          v105 = [v73 openSensitiveURL:v112 withOptions:v80];

          v82 = v108;
          sub_264783DF4();
          v83 = v107;
          (*(v79 + 16))(v107, v76, v44);
          v84 = sub_264783E14();
          v85 = sub_2647859F4();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v112 = v35;
            v87 = v86;
            v88 = v83;
            v89 = v79;
            v90 = swift_slowAlloc();
            v116[0] = v90;
            *v87 = 136315394;
            v91 = sub_264783994();
            v104 = v73;
            v92 = v91;
            v109 = v39;
            v94 = v93;
            v111 = v15;
            v95 = *(v89 + 8);
            v95(v88, v44);
            v96 = sub_2646DF234(v92, v94, v116);

            *(v87 + 4) = v96;
            *(v87 + 12) = 1024;
            *(v87 + 14) = v105;
            _os_log_impl(&dword_264605000, v84, v85, "Live Activity, onTapGesture, URL: %s, success: %{BOOL}d", v87, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v90);
            MEMORY[0x266740650](v90, -1, -1);
            MEMORY[0x266740650](v87, -1, -1);

            v106(v108, v111);
            return (v95)(v110, v44);
          }

          else
          {

            v102 = *(v79 + 8);
            v102(v83, v44);
            v106(v82, v15);
            return (v102)(v110, v44);
          }
        }

        (*(v43 + 8))(v71, v44);
      }

      v98 = v109;
      sub_264783DF4();
      v99 = sub_264783E14();
      v100 = sub_2647859D4();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_264605000, v99, v100, "Live Activity, onTapGesture, cannot construct URL", v101, 2u);
        MEMORY[0x266740650](v101, -1, -1);
      }

      return (v34)(v98, v15);
    }

    else
    {
      v58 = v34;
      v59 = v111;
      sub_264783DF4();
      v60 = a1;
      v61 = v112;
      sub_26473413C(v60, v112);
      v62 = sub_264783E14();
      v63 = sub_2647859D4();
      if (os_log_type_enabled(v62, v63))
      {
        v109 = v39;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v116[0] = v65;
        *v64 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v115);

        v66 = v115;
        if (v115)
        {
          v67 = [v115 description];

          v68 = sub_264785724();
          v70 = v69;
        }

        else
        {
          v68 = 0;
          v70 = 0xE000000000000000;
        }

        sub_264734F20(v112);
        v103 = sub_2646DF234(v68, v70, v116);

        *(v64 + 4) = v103;
        _os_log_impl(&dword_264605000, v62, v63, "Live Activity, onTapGesture, unable to resolve conversation, sessionState:%s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x266740650](v65, -1, -1);
        MEMORY[0x266740650](v64, -1, -1);

        v97 = v111;
      }

      else
      {

        sub_264734F20(v61);
        v97 = v59;
      }

      return v58(v97, v15);
    }
  }

  else
  {
    v45 = v15;
    v46 = v34;
    sub_264783DF4();
    sub_26473413C(a1, v5);
    v47 = sub_264783E14();
    v48 = sub_2647859D4();
    if (os_log_type_enabled(v47, v48))
    {
      v111 = v45;
      v112 = v35;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v116[0] = v50;
      *v49 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v115);

      v51 = v115;
      if (v115)
      {
        v52 = [v115 description];

        v53 = sub_264785724();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0xE000000000000000;
      }

      sub_264734F20(v5);
      v57 = sub_2646DF234(v53, v55, v116);

      *(v49 + 4) = v57;
      _os_log_impl(&dword_264605000, v47, v48, "Live Activity, onTapGesture, unable to resolve conversation, sessionState:%s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v49, -1, -1);

      return v46(v19, v111);
    }

    else
    {

      sub_264734F20(v5);
      return v46(v19, v45);
    }
  }
}

uint64_t sub_26472D1B4@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v14);

  v3 = v14;
  if (v14)
  {
    v4 = [v14 configuration];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 conversation];

      v7 = [v6 receiverPrimaryHandles];
      sub_2647857F4();
    }

    v10 = [v3 configuration];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 conversation];

      v13 = [v12 identifier];
      if (v13)
      {
        sub_264785724();
      }
    }

    sub_264783D04();
    [v3 isActiveState];
    sub_264783CD4();
  }

  else
  {
    v8 = sub_2647839D4();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_26472D3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LiveActivityView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  return sub_264785304();
}

void sub_26472D430(void *a1@<X8>)
{
  sub_2647840E4();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26472D45C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  sub_264783DF4();
  v10 = sub_264783E14();
  v11 = sub_2647859C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v8;
    _os_log_impl(&dword_264605000, v10, v11, "Live Activity, onGeometryChange, height: %f, width: %f", v12, 0x16u);
    MEMORY[0x266740650](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = type metadata accessor for LiveActivityView(0);
  return (*(a2 + *(v13 + 40)))();
}

BOOL sub_26472D5E0()
{
  v1 = (v0 + *(type metadata accessor for LiveActivityView(0) + 32));
  v2 = *v1;
  v3 = *(v1 + 1);
  LOBYTE(v8[0]) = v2;
  v8[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v7 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v8);

  v4 = v8[0];
  if (!v8[0])
  {
    return 0;
  }

  v5 = [v8[0] sessionState];

  return v5 == 9;
}

uint64_t sub_26472D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78950, &qword_264790E28);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78958, &qword_264790E30);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78960, &qword_264790E38);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  *v23 = sub_2647845C4();
  *(v23 + 1) = 0x4020000000000000;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78968, &qword_264790E40);
  sub_26472DA74(a1, v3, &v23[*(v24 + 44)]);
  if (sub_26472E86C())
  {
    v25 = *(a1 + *(type metadata accessor for LiveActivityView(0) + 36)) == 0;
    v34 = v5;
    v26 = v3;
    if (v25)
    {
      v27 = 0x401C000000000000;
    }

    else
    {
      v27 = 0x4022000000000000;
    }

    *v9 = sub_2647845C4();
    *(v9 + 1) = v27;
    v9[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78978, &qword_264790E50);
    v29 = v26 & 1;
    v5 = v34;
    sub_26472EA58(v29, &v9[*(v28 + 44)]);
    sub_26460E7E4(v9, v11, &qword_27FF78950, &qword_264790E28);
    sub_26460E7E4(v11, v17, &qword_27FF78950, &qword_264790E28);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v6 + 56))(v17, v30, 1, v5);
  sub_26460CCE8(v23, v21, &qword_27FF78960, &qword_264790E38);
  sub_26460CCE8(v17, v15, &qword_27FF78958, &qword_264790E30);
  v31 = v35;
  sub_26460CCE8(v21, v35, &qword_27FF78960, &qword_264790E38);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78970, &qword_264790E48);
  sub_26460CCE8(v15, v31 + *(v32 + 48), &qword_27FF78958, &qword_264790E30);
  sub_26460CD50(v17, &qword_27FF78958, &qword_264790E30);
  sub_26460CD50(v23, &qword_27FF78960, &qword_264790E38);
  sub_26460CD50(v15, &qword_27FF78958, &qword_264790E30);
  return sub_26460CD50(v21, &qword_27FF78960, &qword_264790E38);
}

uint64_t sub_26472DA74@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B10, &qword_264791008);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for LiveActivityView(0);
  v37 = 0;
  v12 = 0;
  countAndFlagsBits = 0;
  object = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v36 = 0;
  if ((*(a1 + *(v11 + 36)) & 1) == 0)
  {
    v37 = SessionViewModel.activeSessionRecipientContacts.getter();
    v18 = SessionViewModel.activeSessionGroupID.getter();
    v36 = v19;
    v20 = SessionViewModel.badgeImageName()();
    countAndFlagsBits = v20.value._countAndFlagsBits;
    object = v20.value._object;
    v17 = v18;
    v15 = SessionViewModel.badgeImageColor()();
    v16 = sub_2647845B4();
    v14 = 0x4039000000000000;
    v12 = 0x4049000000000000;
  }

  v32 = v16;
  v31 = v14;
  v33 = v12;
  *v10 = sub_264784714();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B18, &qword_264791010);
  sub_26472DD74(a1, v34 & 1, &v10[*(v21 + 44)]);
  v30 = v15;
  sub_26460CCE8(v10, v8, &qword_27FF78B10, &qword_264791008);
  v22 = v37;
  *&v38 = v37;
  *(&v38 + 1) = v12;
  v23 = countAndFlagsBits;
  *&v39 = countAndFlagsBits;
  *(&v39 + 1) = object;
  *&v40 = v14;
  *(&v40 + 1) = v15;
  v41 = v16;
  v24 = v36;
  *&v42 = v17;
  *(&v42 + 1) = v36;
  v43 = 0;
  *(a3 + 80) = 0;
  v25 = v41;
  *(a3 + 32) = v40;
  *(a3 + 48) = v25;
  *(a3 + 64) = v42;
  v26 = v39;
  *a3 = v38;
  *(a3 + 16) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B20, &qword_264791018);
  sub_26460CCE8(v8, a3 + *(v27 + 48), &qword_27FF78B10, &qword_264791008);
  sub_26460CCE8(&v38, v44, &qword_27FF78B28, &qword_264791020);
  sub_26460CD50(v10, &qword_27FF78B10, &qword_264791008);
  sub_26460CD50(v8, &qword_27FF78B10, &qword_264791008);
  v44[0] = v22;
  v44[1] = v33;
  v44[2] = v23;
  v44[3] = object;
  v44[4] = v31;
  v44[5] = v30;
  v44[6] = v32;
  v44[7] = 0;
  v44[8] = v17;
  v44[9] = v24;
  v44[10] = 0;
  return sub_26460CD50(v44, &qword_27FF78B28, &qword_264791020);
}

uint64_t sub_26472DD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v6 = type metadata accessor for LiveActivityView(0);
  v58 = *(v6 - 8);
  v56 = *(v58 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_264783AF4();
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_264784A44();
  v53 = *(v55 - 8);
  v10 = MEMORY[0x28223BE20](v55);
  v51 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v49 = &v46[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B30, &qword_264791028);
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v57 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v52 = &v46[-v16];
  v17 = sub_26472D5E0();
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v72);

  v18 = v72;
  v19 = MEMORY[0x26673D9F0](v72, v17, a2, 0);
  v21 = v20;

  v22 = SessionViewModel.badgeImageName()();
  v23 = SessionViewModel.badgeImageColor()();
  v48 = sub_2647845C4();
  v62 = 1;
  sub_26472AAD8(v19, v21, a1, v23, v22.value._countAndFlagsBits, v22.value._object, &v72);
  v65 = *&v73[16];
  v66 = *&v73[32];
  v67 = *&v73[48];
  v68 = *&v73[64];
  v63 = v72;
  v64 = *v73;
  v69[2] = *&v73[16];
  v69[3] = *&v73[32];
  v69[4] = *&v73[48];
  v69[5] = *&v73[64];
  v69[0] = v72;
  v69[1] = *v73;
  sub_26460CCE8(&v63, &v70, &qword_27FF78B38, &qword_264791030);
  sub_26460CD50(v69, &qword_27FF78B38, &qword_264791030);

  *&v61[39] = v65;
  *&v61[55] = v66;
  *&v61[71] = v67;
  *&v61[87] = v68;
  *&v61[7] = v63;
  *&v61[23] = v64;
  v24 = v62;
  sub_264783AE4();
  v25 = v49;
  sub_264784A34();
  v26 = v54;
  sub_26473413C(a1, v54);
  v27 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v28 = v27 + v56;
  v29 = swift_allocObject();
  sub_2647341A4(v26, v29 + v27);
  *(v29 + v28) = v47;
  v30 = v53;
  v31 = v25;
  v32 = v55;
  (*(v53 + 16))(v51, v25, v55);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2647364E0;
  *(v33 + 24) = v29;
  sub_2647365C0(&qword_27FF78B40, MEMORY[0x277CE06F0], MEMORY[0x277CE06E8]);
  v34 = v52;
  sub_264784024();
  (*(v30 + 8))(v31, v32);
  v36 = v59;
  v35 = v60;
  v37 = *(v59 + 16);
  v38 = v57;
  v37(v57, v34, v60);
  v39 = v48;
  v70 = v48;
  v71[0] = v24;
  *&v71[17] = *&v61[16];
  *&v71[1] = *v61;
  *&v71[81] = *&v61[80];
  *&v71[65] = *&v61[64];
  *&v71[49] = *&v61[48];
  *&v71[96] = *&v61[95];
  *&v71[33] = *&v61[32];
  v40 = *&v71[32];
  *(a3 + 32) = *&v71[16];
  *(a3 + 48) = v40;
  *(a3 + 112) = *&v71[96];
  v41 = *&v71[80];
  *(a3 + 80) = *&v71[64];
  *(a3 + 96) = v41;
  *(a3 + 64) = *&v71[48];
  v42 = *v71;
  *a3 = v70;
  *(a3 + 16) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B48, &qword_264791038);
  v37((a3 + *(v43 + 48)), v38, v35);
  sub_26460CCE8(&v70, &v72, &qword_27FF78B50, &unk_264791040);
  v44 = *(v36 + 8);
  v44(v34, v35);
  v44(v38, v35);
  *&v73[49] = *&v61[48];
  *&v73[65] = *&v61[64];
  *v74 = *&v61[80];
  *&v73[1] = *v61;
  *&v73[17] = *&v61[16];
  v72 = v39;
  v73[0] = v24;
  *&v74[15] = *&v61[95];
  *&v73[33] = *&v61[32];
  return sub_26460CD50(&v72, &qword_27FF78B50, &unk_264791040);
}

uint64_t sub_26472E408@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B60, &qword_264791058);
  MEMORY[0x28223BE20](v42);
  v6 = v40 - v5;
  v41 = a1;
  LOBYTE(a1) = sub_26472D5E0();
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v44);

  v7 = v44;
  v8 = MEMORY[0x26673DA10](v44, a1 & 1, 0, a2, 0);
  v10 = v9;

  v44 = v8;
  v45 = v10;
  sub_264613FC4();
  v11 = sub_264784E44();
  v13 = v12;
  LOBYTE(v10) = v14;
  sub_264784CB4();
  v15 = sub_264784E24();
  v17 = v16;
  v19 = v18;
  v40[1] = v20;

  sub_26460ECC4(v11, v13, v10 & 1);

  LODWORD(v44) = sub_2647849C4();
  v21 = sub_264784DF4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_26460ECC4(v15, v17, v19 & 1);

  sub_264785514();
  sub_264784314();
  v28 = v25 & 1;
  v70 = v25 & 1;
  v29 = *(v41 + *(type metadata accessor for LiveActivityView(0) + 36));
  KeyPath = swift_getKeyPath();
  v71 = v29;
  if (v29 == 1)
  {
    v41 = KeyPath;
    v31 = swift_getKeyPath();
    v32 = &v6[*(v42 + 36)];
    v33 = v27;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B80, &qword_264791098) + 28);
    sub_264785494();
    v35 = sub_2647854C4();
    (*(*(v35 - 8) + 56))(v32 + v34, 0, 1, v35);
    *v32 = v31;
    *v6 = v21;
    *(v6 + 1) = v23;
    v6[16] = v28;
    *(v6 + 17) = *v69;
    *(v6 + 5) = *&v69[3];
    *(v6 + 3) = v33;
    v36 = v67;
    *(v6 + 6) = v66;
    *(v6 + 7) = v36;
    *(v6 + 8) = v68;
    v37 = v63;
    *(v6 + 2) = v62;
    *(v6 + 3) = v37;
    v38 = v65;
    *(v6 + 4) = v64;
    *(v6 + 5) = v38;
    *(v6 + 72) = 256;
    *(v6 + 75) = v73;
    *(v6 + 146) = v72;
    *(v6 + 19) = v41;
    *(v6 + 20) = 0;
    v6[168] = 1;
    sub_264736754();
  }

  else
  {
    v44 = v21;
    v45 = v23;
    v46 = v25 & 1;
    *v47 = *v69;
    *&v47[3] = *&v69[3];
    v48 = v27;
    v53 = v66;
    v54 = v67;
    v55 = v68;
    v49 = v62;
    v50 = v63;
    v52 = v65;
    v51 = v64;
    v56 = 256;
    v58 = v73;
    v57 = v72;
    v59 = KeyPath;
    v60 = 3;
    v61 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B68, &qword_264791060);
    sub_264736608();
  }

  result = sub_2647853C4();
  *v43 = result;
  return result;
}

BOOL sub_26472E86C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v10);

  v0 = v10;
  v8 = v10 && (v1 = [v10 sessionState], v0, v1 == 9) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v10), , , (v2 = v10) != 0) && (v3 = objc_msgSend(v10, sel_sessionState), v2, v3 == 7) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v10), , , (v4 = v10) != 0) && (v5 = objc_msgSend(v10, sel_sessionState), v4, v5 == 4) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v10), , , (v6 = v10) != 0) && (v7 = objc_msgSend(v10, sel_sessionState), v6, v7 == 14) || sub_26472D5E0();
  return v8;
}

uint64_t sub_26472EA58@<X0>(int a2@<W1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78980, &qword_264790E58);
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78988, &qword_264790E60);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78990, &qword_264790E68);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78998, &qword_264790E70);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  if (sub_26472D5E0())
  {
    v22[1] = v7;
    v22[2] = a3;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v25);

    v16 = v25;
    if (v25)
    {
      sub_2647316B0(v23 & 1, v25, v6);

      sub_26460E7E4(v6, v9, &qword_27FF78980, &qword_264790E58);
      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    (*(v4 + 56))(v9, v17, 1, v24);
    sub_26460CCE8(v9, v12, &qword_27FF78988, &qword_264790E60);
    swift_storeEnumTagMultiPayload();
    sub_2647352FC();
    sub_2647353AC();
    sub_264784874();
    v18 = v9;
    v19 = &qword_27FF78988;
    v20 = &qword_264790E60;
  }

  else
  {
    sub_264730160(v15);
    sub_26460CCE8(v15, v12, &qword_27FF78998, &qword_264790E70);
    swift_storeEnumTagMultiPayload();
    sub_2647352FC();
    sub_2647353AC();
    sub_264784874();
    v18 = v15;
    v19 = &qword_27FF78998;
    v20 = &qword_264790E70;
  }

  return sub_26460CD50(v18, v19, v20);
}

uint64_t sub_26472EDC8@<X0>(void *a2@<X8>)
{
  v2 = sub_2647845C4();
  LOBYTE(v9[0]) = 1;
  sub_26472F164(__src);
  v30 = *&__src[64];
  v31 = *&__src[80];
  v32 = *&__src[96];
  v26 = *__src;
  v27 = *&__src[16];
  v28 = *&__src[32];
  v29 = *&__src[48];
  v33[0] = *__src;
  v33[1] = *&__src[16];
  v33[2] = *&__src[32];
  v33[3] = *&__src[48];
  v33[4] = *&__src[64];
  v33[5] = *&__src[80];
  v34 = *&__src[96];
  sub_26460CCE8(&v26, v22, &qword_27FF78900, &qword_264790D78);
  sub_26460CD50(v33, &qword_27FF78900, &qword_264790D78);
  *(&v25[3] + 7) = v29;
  *(&v25[4] + 7) = v30;
  *(&v25[5] + 7) = v31;
  *(v25 + 7) = v26;
  *(&v25[1] + 7) = v27;
  *(&v25[6] + 7) = v32;
  *(&v25[2] + 7) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C8, &qword_264790D40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2647889B0;
  v4 = sub_264784BF4();
  *(v3 + 32) = v4;
  v5 = sub_264784C14();
  *(v3 + 33) = v5;
  v6 = sub_264784C04();
  sub_264784C04();
  if (sub_264784C04() != v4)
  {
    v6 = sub_264784C04();
  }

  sub_264784C04();
  if (sub_264784C04() != v5)
  {
    v6 = sub_264784C04();
  }

  sub_26472F4F4(__src);
  memcpy(__dst, __src, 0x12AuLL);
  memcpy(v19, __src, 0x12AuLL);
  sub_26460CCE8(__dst, v22, &qword_27FF78908, &qword_264790D80);
  sub_26460CD50(v19, &qword_27FF78908, &qword_264790D80);
  memcpy(&v24[7], __dst, 0x12AuLL);
  v20[0] = v2;
  v20[1] = 0;
  LOBYTE(v21[0]) = 1;
  *(&v21[1] + 1) = v25[1];
  *(v21 + 1) = v25[0];
  *(&v21[5] + 12) = *(&v25[5] + 11);
  *(&v21[5] + 1) = v25[5];
  *(&v21[4] + 1) = v25[4];
  *(&v21[3] + 1) = v25[3];
  *(&v21[2] + 1) = v25[2];
  *&v17[32] = v21[1];
  *&v17[48] = v21[2];
  *&v17[108] = *(&v21[5] + 12);
  *&v17[80] = v21[4];
  *&v17[96] = v21[5];
  *&v17[64] = v21[3];
  *v17 = v2;
  *&v17[16] = v21[0];
  v22[0] = v6;
  memcpy(&v22[1], v24, 0x131uLL);
  memcpy(&v17[128], v22, 0x132uLL);
  memcpy(a2, v17, 0x1B2uLL);
  __src[0] = v6;
  memcpy(&__src[1], v24, 0x131uLL);
  sub_26460CCE8(v20, v9, &qword_27FF78910, &qword_264790D88);
  sub_26460CCE8(v22, v9, &qword_27FF78918, &qword_264790D90);
  sub_26460CD50(__src, &qword_27FF78918, &qword_264790D90);
  v14 = v25[3];
  v15 = v25[4];
  v16[0] = v25[5];
  *(v16 + 11) = *(&v25[5] + 11);
  v11 = v25[0];
  v12 = v25[1];
  v9[0] = v2;
  v9[1] = 0;
  v10 = 1;
  v13 = v25[2];
  return sub_26460CD50(v9, &qword_27FF78910, &qword_264790D88);
}

uint64_t sub_26472F164@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783F74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - v7;
  if (qword_27FF75260 != -1)
  {
    swift_once();
  }

  v39 = xmmword_27FF79078;
  sub_264613FC4();

  v9 = sub_264784E44();
  v11 = v10;
  v13 = v12;
  v36[1] = v14;
  sub_26472A600(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v15 = sub_264783F64();
  v16 = *(v3 + 8);
  v16(v6, v2);
  v16(v8, v2);
  if (v15)
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v17 = qword_27FF792E0;
  }

  else
  {
    v17 = sub_264785204();
  }

  *&v39 = v17;
  v18 = sub_264784DF4();
  v20 = v19;
  v22 = v21;
  sub_26460ECC4(v9, v11, v13 & 1);

  sub_264784D84();
  v23 = sub_264784E24();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_26460ECC4(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v31 = sub_264785274();
  v32 = sub_264784D34();
  v33 = swift_getKeyPath();
  v34 = sub_2647849C4();
  v27 &= 1u;
  LOBYTE(v39) = v27;
  v38 = 0;
  v37 = 0;
  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v27;
  *(a1 + 24) = v29;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v31;
  *(a1 + 80) = v33;
  *(a1 + 88) = v32;
  *(a1 + 96) = v34;
  sub_26460C474(v23, v25, v27);

  sub_26460ECC4(v23, v25, v27);
}

uint64_t sub_26472F4F4@<X0>(void *a1@<X8>)
{
  if (qword_27FF75160 != -1)
  {
    swift_once();
  }

  HIDWORD(v78) = HIDWORD(qword_27FF78E78);
  v79 = qword_27FF78E80;
  sub_264613FC4();

  v1 = sub_264784E44();
  v3 = v2;
  v5 = v4;
  sub_264784CB4();
  v6 = sub_264784E24();
  v8 = v7;
  v10 = v9;

  sub_26460ECC4(v1, v3, v5 & 1);

  LODWORD(v78) = sub_2647849C4();
  v11 = sub_264784DF4();
  v33 = v12;
  v34 = v11;
  v14 = v13;
  v35 = v15;
  sub_26460ECC4(v6, v8, v10 & 1);

  sub_264785514();
  sub_264784314();
  v37 = v14 & 1;
  v101 = v14 & 1;
  if (qword_27FF75168 != -1)
  {
    swift_once();
  }

  HIDWORD(v78) = HIDWORD(qword_27FF78E88);
  v79 = qword_27FF78E90;

  v16 = sub_264784E44();
  v18 = v17;
  v20 = v19;
  sub_264784CB4();
  v21 = sub_264784E24();
  v23 = v22;
  v25 = v24;

  sub_26460ECC4(v16, v18, v20 & 1);

  LODWORD(v78) = sub_2647849C4();
  v26 = sub_264784DF4();
  v28 = v27;
  LOBYTE(v16) = v29;
  v31 = v30;
  sub_26460ECC4(v21, v23, v25 & 1);

  sub_264785514();
  sub_264784314();
  LOBYTE(v16) = v16 & 1;
  *&v46 = v34;
  *(&v46 + 1) = v33;
  LOBYTE(v47) = v37;
  *(&v47 + 1) = *v100;
  DWORD1(v47) = *&v100[3];
  *(&v47 + 1) = v35;
  v52 = v97;
  v53 = v98;
  v54 = v99;
  v48 = v93;
  v49 = v94;
  v50 = v95;
  v51 = v96;
  __src[6] = v97;
  __src[7] = v98;
  __src[8] = v99;
  __src[2] = v93;
  __src[3] = v94;
  __src[4] = v95;
  __src[5] = v96;
  __src[0] = v46;
  __src[1] = v47;
  *&v56 = v26;
  *(&v56 + 1) = v28;
  LOBYTE(v57) = v16;
  *(&v57 + 1) = *v91;
  DWORD1(v57) = *&v91[3];
  *(&v57 + 1) = v31;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v64 = v45;
  v58 = v39;
  v59 = v40;
  v60 = v41;
  *(&__src[16] + 8) = v44;
  *(&__src[17] + 8) = v45;
  *(&__src[9] + 8) = v56;
  *(&__src[10] + 8) = v57;
  *(&__src[14] + 8) = v42;
  *(&__src[13] + 8) = v41;
  *(&__src[12] + 8) = v40;
  *(&__src[11] + 8) = v39;
  v92 = v16;
  v55 = 256;
  LOWORD(__src[9]) = 256;
  v65 = 256;
  WORD4(__src[18]) = 256;
  *(&__src[15] + 8) = v43;
  memcpy(a1, __src, 0x12AuLL);
  v66[0] = v26;
  v66[1] = v28;
  v67 = v16;
  *v68 = *v91;
  *&v68[3] = *&v91[3];
  v69 = v31;
  v74 = v43;
  v75 = v44;
  v76 = v45;
  v70 = v39;
  v71 = v40;
  v72 = v41;
  v73 = v42;
  v77 = 256;
  sub_26460CCE8(&v46, &v78, &qword_27FF78920, &qword_264790D98);
  sub_26460CCE8(&v56, &v78, &qword_27FF78920, &qword_264790D98);
  sub_26460CD50(v66, &qword_27FF78920, &qword_264790D98);
  v78 = v34;
  v79 = v33;
  v80 = v37;
  *v81 = *v100;
  *&v81[3] = *&v100[3];
  v82 = v35;
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v90 = 256;
  return sub_26460CD50(&v78, &qword_27FF78920, &qword_264790D98);
}

uint64_t sub_26472FA10@<X0>(void *a2@<X8>)
{
  v21 = sub_2647845C4();
  LOBYTE(v22[0]) = 1;
  sub_26472FF28(&v50);
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v66 = v53;
  v70[0] = v50;
  v70[1] = v51;
  v70[2] = v52;
  v70[3] = v53;
  v70[4] = v54;
  v70[5] = v55;
  v71 = v56;
  sub_26460CCE8(&v63, &v40, &qword_27FF78928, &qword_264790E00);
  sub_26460CD50(v70, &qword_27FF78928, &qword_264790E00);
  *(&v62[3] + 7) = v66;
  *(&v62[4] + 7) = v67;
  *(&v62[5] + 7) = v68;
  *(v62 + 7) = v63;
  *(&v62[1] + 7) = v64;
  *(&v62[6] + 7) = v69;
  *(&v62[2] + 7) = v65;
  if (qword_27FF75178 != -1)
  {
    swift_once();
  }

  v50 = xmmword_27FF78EA8;
  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  sub_264784CB4();
  v7 = sub_264784E24();
  v9 = v8;
  v11 = v10;

  sub_26460ECC4(v2, v4, v6 & 1);

  LODWORD(v50) = sub_2647849C4();
  v12 = sub_264784DF4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_26460ECC4(v7, v9, v11 & 1);

  sub_264785514();
  sub_264784314();
  v61 = v16 & 1;
  v38[0] = v21;
  v38[1] = 0;
  LOBYTE(v39[0]) = 1;
  *(&v39[4] + 1) = v62[4];
  *(&v39[3] + 1) = v62[3];
  *(&v39[1] + 1) = v62[1];
  *(v39 + 1) = v62[0];
  *(&v39[5] + 1) = v62[5];
  v39[6] = *(&v62[5] + 15);
  *(&v39[2] + 1) = v62[2];
  *&__src[64] = v39[3];
  *&__src[80] = v39[4];
  *&__src[96] = v39[5];
  *&__src[112] = *(&v62[5] + 15);
  *__src = v21;
  *&__src[16] = v39[0];
  *&__src[32] = v39[1];
  *&__src[48] = v39[2];
  *&v40 = v12;
  *(&v40 + 1) = v14;
  LOBYTE(v41) = v16 & 1;
  DWORD1(v41) = *&v60[3];
  *(&v41 + 1) = *v60;
  *(&v41 + 1) = v18;
  v43 = v32;
  v42 = v31;
  v48 = v37;
  v47 = v36;
  v46 = v35;
  v44 = v33;
  v45 = v34;
  v49 = 256;
  *&__src[128] = v40;
  *&__src[144] = v41;
  *&__src[192] = v33;
  *&__src[208] = v34;
  *&__src[160] = v31;
  *&__src[176] = v32;
  *&__src[272] = 256;
  *&__src[240] = v36;
  *&__src[256] = v37;
  *&__src[224] = v35;
  memcpy(a2, __src, 0x112uLL);
  *&v50 = v12;
  *(&v50 + 1) = v14;
  LOBYTE(v51) = v16 & 1;
  *(&v51 + 1) = *v60;
  DWORD1(v51) = *&v60[3];
  *(&v51 + 1) = v18;
  v56 = v35;
  v57 = v36;
  v58 = v37;
  v52 = v31;
  v53 = v32;
  v54 = v33;
  v55 = v34;
  v59 = 256;
  sub_26460CCE8(v38, v22, &qword_27FF78930, &qword_264790E08);
  sub_26460CCE8(&v40, v22, &qword_27FF78920, &qword_264790D98);
  sub_26460CD50(&v50, &qword_27FF78920, &qword_264790D98);
  v27 = v62[3];
  v28 = v62[4];
  v29[0] = v62[5];
  *(v29 + 15) = *(&v62[5] + 15);
  v24 = v62[0];
  v25 = v62[1];
  v22[0] = v21;
  v22[1] = 0;
  v23 = 1;
  v26 = v62[2];
  return sub_26460CD50(v22, &qword_27FF78930, &qword_264790E08);
}

uint64_t sub_26472FF28@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF75170 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  sub_264785164();
  v7 = sub_264784DF4();
  v9 = v8;
  v11 = v10;
  sub_26460ECC4(v2, v4, v6 & 1);

  sub_264784D84();
  v12 = sub_264784E24();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_26460ECC4(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = sub_264785274();
  v21 = sub_264784D34();
  v22 = swift_getKeyPath();
  v23 = sub_264785164();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v20;
  *(a1 + 80) = v22;
  *(a1 + 88) = v21;
  *(a1 + 96) = v23;
  sub_26460C474(v12, v14, v16 & 1);

  sub_26460ECC4(v12, v14, v16 & 1);
}

uint64_t sub_264730160@<X0>(uint64_t a2@<X8>)
{
  v65 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A78, &qword_264790F60);
  v2 = *(v67 - 1);
  MEMORY[0x28223BE20](v67);
  v60 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A80, &qword_264790F68);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v63 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v70 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A88, &qword_264790F70);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A90, &qword_264790F78);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v62 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v68 = &v58 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v66 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v71);

  v26 = v71;
  v59 = v16;
  if (v71 && (v27 = [v71 sessionState], v26, v27 == 9) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v71), , , (v28 = v71) != 0) && (v29 = objc_msgSend(v71, sel_sessionState), v28, v29 == 7) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v71), , , (v30 = v71) != 0) && (v31 = objc_msgSend(v71, sel_sessionState), v30, v31 == 14))
  {
    sub_26473111C(&unk_28761A9C8, sub_264735CDC, sub_264733260, v16);
    sub_26460E7E4(v16, v25, &qword_27FF78A88, &qword_264790F70);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = *(v14 + 56);
  v34 = 1;
  v69 = v25;
  v33(v25, v32, 1, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v71);

  v35 = v71;
  v61 = v14 + 56;
  if (v71)
  {
    v36 = [v71 sessionState];

    v37 = v13;
    if (v36 == 7)
    {
      v38 = v60;
      sub_264730A90(&unk_28761A9F0, sub_264736038, sub_26473697C, v60);
      sub_26460E7E4(v38, v12, &qword_27FF78A78, &qword_264790F60);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v37 = v13;
  }

  v39 = *(v2 + 56);
  v40 = 1;
  v39(v12, v34, 1, v67);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v71);

  v41 = v71;
  if (v71)
  {
    if ([v71 sessionState] == 9 && objc_msgSend(v41, sel_isTimerExtensionValid_, 900.0))
    {
      v42 = v60;
      sub_264730A90(&unk_28761AA40, sub_26473613C, sub_26473697C, v60);

      sub_26460E7E4(v42, v70, &qword_27FF78A78, &qword_264790F60);
      v40 = 0;
    }

    else
    {
    }
  }

  v43 = 1;
  v39(v70, v40, 1, v67);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v71);

  v44 = v71;
  if (v71)
  {
    v45 = [v71 sessionState];

    v46 = v69;
    if (v45 == 4)
    {
      v47 = v59;
      sub_26473111C(&unk_28761AA68, sub_264736304, sub_264733ED8, v59);
      sub_26460E7E4(v47, v66, &qword_27FF78A88, &qword_264790F70);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }
  }

  else
  {
    v46 = v69;
  }

  v48 = v66;
  v33(v66, v43, 1, v37);
  v49 = v68;
  sub_26460CCE8(v46, v68, &qword_27FF78A90, &qword_264790F78);
  v50 = v63;
  sub_26460CCE8(v12, v63, &qword_27FF78A80, &qword_264790F68);
  v67 = v12;
  v51 = v70;
  v52 = v64;
  sub_26460CCE8(v70, v64, &qword_27FF78A80, &qword_264790F68);
  v53 = v62;
  sub_26460CCE8(v48, v62, &qword_27FF78A90, &qword_264790F78);
  v54 = v49;
  v55 = v65;
  sub_26460CCE8(v54, v65, &qword_27FF78A90, &qword_264790F78);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A98, &qword_264790F80);
  sub_26460CCE8(v50, v55 + v56[12], &qword_27FF78A80, &qword_264790F68);
  sub_26460CCE8(v52, v55 + v56[16], &qword_27FF78A80, &qword_264790F68);
  sub_26460CCE8(v53, v55 + v56[20], &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v48, &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v51, &qword_27FF78A80, &qword_264790F68);
  sub_26460CD50(v67, &qword_27FF78A80, &qword_264790F68);
  sub_26460CD50(v69, &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v53, &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v52, &qword_27FF78A80, &qword_264790F68);
  sub_26460CD50(v50, &qword_27FF78A80, &qword_264790F68);
  return sub_26460CD50(v68, &qword_27FF78A90, &qword_264790F78);
}

uint64_t sub_264730A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v50 = a2;
  v47 = a1;
  v5 = v4;
  v59 = a4;
  v6 = sub_264784354();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264784B04();
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LiveActivityView(0);
  v13 = v12 - 8;
  v43 = *(v12 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA0, &qword_264790F88);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AF8, &qword_264790FC0);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v20 = &v42 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B00, &qword_264790FC8);
  MEMORY[0x28223BE20](v44);
  v22 = &v42 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B08, &qword_264790FD0);
  MEMORY[0x28223BE20](v48);
  v24 = &v42 - v23;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A78, &qword_264790F60);
  MEMORY[0x28223BE20](v51);
  v26 = &v42 - v25;
  sub_26473413C(v5, &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v28 = swift_allocObject();
  sub_2647341A4(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AB8, &unk_264790FA0);
  sub_264735D58();
  v29 = v20;
  sub_264785334();
  sub_264784AF4();
  sub_26460CDF0(&qword_27FF78AF0, &qword_27FF78AA0, &qword_264790F88, MEMORY[0x277CDF028]);
  sub_2647365C0(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v30 = v45;
  v31 = v54;
  sub_264784EC4();
  (*(v55 + 8))(v11, v31);
  (*(v46 + 8))(v18, v30);
  v32 = v56;
  if (*(v42 + *(v13 + 44)) == 1)
  {
    sub_264784324();
  }

  else
  {
    sub_264784344();
  }

  KeyPath = swift_getKeyPath();
  v34 = &v22[*(v44 + 36)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410);
  (*(v57 + 32))(v34 + *(v35 + 28), v32, v58);
  *v34 = KeyPath;
  (*(v49 + 32))(v22, v29, v52);
  v36 = [objc_opt_self() darkTextColor];
  v37 = sub_264785134();
  sub_26460E7E4(v22, v24, &qword_27FF78B00, &qword_264790FC8);
  *&v24[*(v48 + 36)] = v37;
  if (qword_27FF75398 != -1)
  {
    swift_once();
  }

  v38 = qword_27FF792E0;
  v39 = swift_getKeyPath();
  sub_26460E7E4(v24, v26, &qword_27FF78B08, &qword_264790FD0);
  v40 = &v26[*(v51 + 36)];
  *v40 = v39;
  v40[1] = v38;
  sub_26460E7E4(v26, v59, &qword_27FF78A78, &qword_264790F60);
}

uint64_t sub_26473111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v43 = a1;
  v53 = a4;
  v5 = sub_264784354();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264784B04();
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  MEMORY[0x28223BE20](v7);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783F74();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LiveActivityView(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA0, &qword_264790F88);
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA8, &qword_264790F90);
  MEMORY[0x28223BE20](v39);
  v21 = &v36 - v20;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AB0, &qword_264790F98);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v23 = &v36 - v22;
  sub_26473413C(v4, &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject() + v24;
  v26 = v23;
  sub_2647341A4(&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AB8, &unk_264790FA0);
  sub_264735D58();
  sub_264785334();
  sub_26472A600(v12);
  sub_264733288(v12, v21);
  (*(v40 + 8))(v12, v41);
  (*(v37 + 8))(v19, v38);
  v27 = v45;
  sub_264784AF4();
  sub_264735E10();
  sub_2647365C0(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v28 = v48;
  sub_264784EC4();
  (*(v49 + 8))(v27, v28);
  sub_26460CD50(v21, &qword_27FF78AA8, &qword_264790F90);
  v29 = v50;
  if (*(v4 + *(v14 + 44)) == 1)
  {
    sub_264784324();
  }

  else
  {
    sub_264784344();
  }

  KeyPath = swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A88, &qword_264790F70);
  v32 = v53;
  v33 = (v53 + *(v31 + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410);
  (*(v51 + 32))(v33 + *(v34 + 28), v29, v52);
  *v33 = KeyPath;
  return (*(v42 + 32))(v32, v26, v44);
}

uint64_t sub_2647316B0@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789D8, &qword_264790E88);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v38 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789E0, &qword_264790E90);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  sub_264731AC4(v4, &v38 - v19, 900.0);
  v21 = a2;
  v22 = [a2 isTimerExtensionValid_];
  v43 = v18;
  v23 = v4;
  if (v22)
  {
    sub_264731AC4(v4 & 1, v18, 1800.0);
    sub_26460E7E4(v18, v13, &qword_27FF789E0, &qword_264790E90);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = *(v15 + 56);
  v26 = 1;
  v27 = v13;
  v25(v13, v24, 1, v14);
  v28 = [v21 isTimerExtensionValid_];
  v29 = v39;
  if (v28)
  {
    v30 = v23 & 1;
    v31 = v43;
    sub_264731AC4(v30, v43, 3600.0);
    sub_26460E7E4(v31, v29, &qword_27FF789E0, &qword_264790E90);
    v26 = 0;
  }

  v25(v29, v26, 1, v14);
  v32 = v43;
  sub_26460CCE8(v20, v43, &qword_27FF789E0, &qword_264790E90);
  v33 = v40;
  sub_26460CCE8(v27, v40, &qword_27FF789D8, &qword_264790E88);
  v34 = v42;
  sub_26460CCE8(v29, v42, &qword_27FF789D8, &qword_264790E88);
  v35 = v41;
  sub_26460CCE8(v32, v41, &qword_27FF789E0, &qword_264790E90);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789E8, &qword_264790E98);
  sub_26460CCE8(v33, v35 + *(v36 + 48), &qword_27FF789D8, &qword_264790E88);
  sub_26460CCE8(v34, v35 + *(v36 + 64), &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v29, &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v27, &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v20, &qword_27FF789E0, &qword_264790E90);
  sub_26460CD50(v34, &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v33, &qword_27FF789D8, &qword_264790E88);
  return sub_26460CD50(v32, &qword_27FF789E0, &qword_264790E90);
}

uint64_t sub_264731AC4@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v42 = a1;
  v51 = a2;
  v5 = sub_264784354();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264784B04();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x28223BE20](v7);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783F74();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LiveActivityView(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F0, &qword_264790EA0);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v18 = &v36 - v17;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F8, &qword_264790EA8);
  MEMORY[0x28223BE20](v39);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A00, &qword_264790EB0);
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  sub_26473413C(v3, &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  sub_2647341A4(&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v52 = v42;
  v53 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A08, &qword_264790EB8);
  sub_264735710();
  sub_264785334();
  v26 = v23;
  sub_26472A600(v12);
  sub_264732DB4(v12, v20);
  (*(v40 + 8))(v12, v41);
  (*(v37 + 8))(v18, v38);
  v27 = v45;
  sub_264784AF4();
  sub_264735940();
  sub_2647365C0(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v28 = v46;
  sub_264784EC4();
  (*(v47 + 8))(v27, v28);
  sub_26460CD50(v20, &qword_27FF789F8, &qword_264790EA8);
  v29 = v48;
  if (*(v3 + *(v14 + 44)) == 1)
  {
    sub_264784324();
  }

  else
  {
    sub_264784344();
  }

  KeyPath = swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789E0, &qword_264790E90);
  v32 = v51;
  v33 = (v51 + *(v31 + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410);
  (*(v49 + 32))(v33 + *(v34 + 28), v29, v50);
  *v33 = KeyPath;
  return (*(v43 + 32))(v32, v26, v44);
}

uint64_t sub_2647320A4(uint64_t a1, double a2)
{
  v4 = type metadata accessor for LiveActivityView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v11 = sub_264783E14();
  v12 = sub_2647859F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a2 / 60.0;
    _os_log_impl(&dword_264605000, v11, v12, "#Initiator, LiveActivity, User requested to add %f minutes to the session", v13, 0xCu);
    MEMORY[0x266740650](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_26473413C(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_2647341A4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  SessionViewModel.extendDurationSession(timeInterval:completion:)(sub_264735BE8, v15, a2);
}

uint64_t sub_2647322E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_264785594();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2647855C4();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LiveActivityView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8);
  (*(a2 + *(v12 + 48)))();
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v13 = sub_264785A44();
  sub_26473413C(a2, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  sub_2647341A4(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_264735C58;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_16;
  v16 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2647365C0(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v5, v16);
  _Block_release(v16);

  (*(v19 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v18);
}

uint64_t sub_26473267C@<X0>(char a1@<W0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  v6 = sub_264783B94();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_264785704();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2647856E4();
  MEMORY[0x28223BE20](v8 - 8);
  if (a1)
  {
    sub_2647856D4();
    result = sub_2647856C4();
    v10 = a3 / 60.0;
    if (COERCE__INT64(fabs(a3 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v10 > -9.22337204e18)
      {
        if (v10 < 9.22337204e18)
        {
          *&v91 = v10;
          sub_2647856A4();
          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v12 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          *&v91 = sub_264785754();
          *(&v91 + 1) = v13;
          sub_264613FC4();
          v14 = sub_264784E44();
          v16 = v15;
          v18 = v17;
          sub_264784CB4();
          sub_264784D14();
          sub_264784D54();

          v19 = sub_264784E24();
          v57 = v21;
          v59 = v20;
          v23 = v22;

          sub_26460ECC4(v14, v16, v18 & 1);

          sub_264785504();
          sub_264784314();
          v90 = v23 & 1;
          v68 = v19;
          v69 = v59;
          v70 = v23 & 1;
          v71 = v57;
          v79 = 0;
          LOWORD(v80) = 257;
          sub_264735BE0(&v68);
LABEL_10:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A20, &unk_264790EC0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A30, &qword_264790ED0);
          sub_26473579C();
          sub_264735828();
          result = sub_264784874();
          v50 = v102;
          v51 = v104[0];
          a2[12] = v103;
          a2[13] = v51;
          *(a2 + 218) = *(v104 + 10);
          v52 = v100;
          a2[8] = v99;
          a2[9] = v52;
          a2[10] = v101;
          a2[11] = v50;
          v53 = v96;
          a2[4] = v95;
          a2[5] = v53;
          v54 = v98;
          a2[6] = v97;
          a2[7] = v54;
          v55 = v92;
          *a2 = v91;
          a2[1] = v55;
          v56 = v94;
          a2[2] = v93;
          a2[3] = v56;
          return result;
        }

        goto LABEL_15;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_2647856D4();
  result = sub_2647856C4();
  v24 = a3 / 60.0;
  if (COERCE__INT64(fabs(a3 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v24 < 9.22337204e18)
  {
    *&v91 = v24;
    sub_2647856A4();
    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v25 = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v91 = sub_264785754();
    *(&v91 + 1) = v27;
    sub_264613FC4();
    v28 = sub_264784E44();
    v30 = v29;
    v32 = v31;
    sub_264784CB4();
    sub_264784D14();
    sub_264784D54();

    v33 = sub_264784E24();
    v58 = v34;
    v60 = v33;
    LOBYTE(v25) = v35;
    v37 = v36;

    sub_26460ECC4(v28, v30, v32 & 1);

    sub_264785504();
    sub_264784314();
    LOBYTE(v30) = v25 & 1;
    v88 = v25 & 1;
    LOBYTE(v25) = sub_264784C94();
    sub_264783F54();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v89 = 0;
    LOBYTE(v28) = sub_264784C24();
    sub_264783F54();
    v90 = 0;
    v68 = v60;
    v69 = v58;
    v70 = v30;
    v71 = v37;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v72 = v61;
    v73 = v62;
    v74 = v63;
    v75 = v64;
    LOBYTE(v79) = v25;
    v80 = v39;
    v81 = v41;
    v82 = v43;
    v83 = v45;
    v84 = 0;
    v85 = v28;
    v86 = v46;
    v87[0] = v47;
    v87[1] = v48;
    v87[2] = v49;
    LOBYTE(v87[3]) = 0;
    sub_264735BD4(&v68);
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_264732DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = sub_264785554();
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264783F74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A68, &qword_264790EE8);
  MEMORY[0x28223BE20](v31);
  v9 = &v29 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A58, &qword_264790EE0);
  MEMORY[0x28223BE20](v33);
  v38 = &v29 - v10;
  v11 = v5 + 104;
  v12 = *MEMORY[0x277CDF3C0];
  v13 = *(v5 + 104);
  v13(v7);
  v39 = a1;
  LOBYTE(a1) = sub_264783F64();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (a1)
  {
    sub_2647851C4();
  }

  else
  {
    sub_264785194();
  }

  v15 = sub_2647851F4();

  KeyPath = swift_getKeyPath();
  v40 = v15;
  v17 = sub_2647840B4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F0, &qword_264790EA0);
  (*(*(v18 - 8) + 16))(v9, v34, v18);
  v19 = &v9[*(v31 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v30 = v13;
  (v13)(v7, v12, v4);
  LOBYTE(KeyPath) = sub_264783F64();
  v34 = v11;
  v20 = v14;
  v14(v7, v4);
  v21 = MEMORY[0x277CE13E8];
  if ((KeyPath & 1) == 0)
  {
    v21 = MEMORY[0x277CE13D0];
  }

  v22 = v32;
  v24 = v35;
  v23 = v36;
  (*(v32 + 104))(v35, *v21, v36);
  v25 = v38;
  (*(v22 + 32))(v38 + *(v33 + 36), v24, v23);
  sub_26460E7E4(v9, v25, &qword_27FF78A68, &qword_264790EE8);
  v30(v7, v12, v4);
  LOBYTE(v22) = sub_264783F64();
  v20(v7, v4);
  if (v22)
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v26 = qword_27FF792E0;
  }

  else
  {
    v26 = sub_264785204();
  }

  v27 = v37;
  sub_26460E7E4(v38, v37, &qword_27FF78A58, &qword_264790EE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F8, &qword_264790EA8);
  *(v27 + *(result + 36)) = v26;
  return result;
}

uint64_t sub_264733288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_264785554();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AE8, &qword_264790FB8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AD8, &qword_264790FB0);
  MEMORY[0x28223BE20](v34);
  v36 = &v33 - v12;
  v13 = *MEMORY[0x277CDF3C0];
  v14 = *(v6 + 104);
  v14(v8, v13, v5);
  v41 = a1;
  LOBYTE(a1) = sub_264783F64();
  v15 = *(v6 + 8);
  v15(v8, v5);
  if (a1)
  {
    v16 = sub_2647851C4();
  }

  else
  {
    v16 = sub_264785204();
  }

  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA0, &qword_264790F88);
  (*(*(v18 - 8) + 16))(v11, v35, v18);
  *&v11[*(v9 + 36)] = v17;
  v14(v8, v13, v5);
  LOBYTE(v17) = sub_264783F64();
  v15(v8, v5);
  if (v17)
  {
    sub_2647851C4();
  }

  else
  {
    sub_264785194();
  }

  v19 = sub_2647851F4();

  KeyPath = swift_getKeyPath();
  v42 = v19;
  v21 = sub_2647840B4();
  v22 = v11;
  v23 = v36;
  sub_26460E7E4(v22, v36, &qword_27FF78AE8, &qword_264790FB8);
  v24 = (v23 + *(v34 + 36));
  *v24 = KeyPath;
  v24[1] = v21;
  v14(v8, v13, v5);
  v25 = sub_264783F64();
  v15(v8, v5);
  v26 = MEMORY[0x277CE13E8];
  if ((v25 & 1) == 0)
  {
    v26 = MEMORY[0x277CE13D0];
  }

  v28 = v37;
  v27 = v38;
  v29 = v39;
  (*(v38 + 104))(v37, *v26, v39);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA8, &qword_264790F90);
  v31 = v40;
  (*(v27 + 32))(v40 + *(v30 + 36), v28, v29);
  return sub_26460E7E4(v23, v31, &qword_27FF78AD8, &qword_264790FB0);
}

uint64_t sub_2647336C8(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v9 = sub_264783E14();
  v10 = sub_2647859F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_264605000, v9, v10, "#Initiator, LiveActivity, User requested session extension", v11, 2u);
    MEMORY[0x266740650](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_26473413C(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_2647341A4(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  SessionViewModel.safeResponseToTriggerPrompt(with:)(sub_2647360CC, v13);
}

uint64_t sub_2647338E4(void *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_264783DF4();
    v9 = a1;
    v10 = sub_264783E14();
    v11 = sub_2647859D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_264785EF4();
      v17 = sub_2646DF234(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_264605000, v10, v11, "#Initiator, LiveActivity, safeResponseToTriggerPrompt error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266740650](v14, -1, -1);
      v18 = v13;
      a2 = v21;
      MEMORY[0x266740650](v18, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  v19 = type metadata accessor for LiveActivityView(0);
  return (*(a2 + *(v19 + 40)))();
}

uint64_t sub_264733B24(uint64_t a1, char a2)
{
  type metadata accessor for LiveActivityView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  return sub_264785304();
}

uint64_t sub_264733B98(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264605000, v8, v9, "#Initiator, LiveActivity, User requested to end the session", v10, 2u);
    MEMORY[0x266740650](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(*(a1 + 8));
}

uint64_t sub_264733CE8(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_264783DF4();
    v8 = a1;
    v9 = sub_264783E14();
    v10 = sub_2647859D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_264785EF4();
      v15 = sub_2646DF234(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_264605000, v9, v10, "#Initiator, LiveActivity, end session error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x266740650](v12, -1, -1);
      MEMORY[0x266740650](v11, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

__n128 sub_264733F00@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    v36 = a2;
    swift_once();
    a2 = v36;
  }

  v37 = *a2;
  sub_264613FC4();

  v6 = sub_264784E44();
  v8 = v7;
  v10 = v9;
  sub_264784CB4();
  sub_264784D14();
  sub_264784D54();

  v11 = sub_264784E24();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_26460ECC4(v6, v8, v10 & 1);

  sub_264785504();
  sub_264784314();
  LOBYTE(v6) = sub_264784C94();
  sub_264783F54();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v8) = sub_264784C24();
  sub_264783F54();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  KeyPath = swift_getKeyPath();
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
  *(a5 + 96) = v41;
  *(a5 + 112) = v42;
  *(a5 + 128) = v43;
  *(a5 + 32) = v37;
  *(a5 + 48) = v38;
  result = v40;
  *(a5 + 64) = v39;
  *(a5 + 80) = v40;
  *(a5 + 144) = v6;
  *(a5 + 152) = v19;
  *(a5 + 160) = v21;
  *(a5 + 168) = v23;
  *(a5 + 176) = v25;
  *(a5 + 184) = 0;
  *(a5 + 192) = v8;
  *(a5 + 200) = v27;
  *(a5 + 208) = v29;
  *(a5 + 216) = v31;
  *(a5 + 224) = v33;
  *(a5 + 232) = 0;
  *(a5 + 240) = KeyPath;
  *(a5 + 248) = 1;
  *(a5 + 256) = 0;
  return result;
}

uint64_t sub_26473413C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647341A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264734220()
{
  result = qword_27FF787C8;
  if (!qword_27FF787C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78780, &qword_264790AE8);
    sub_2647342D8();
    sub_26460CDF0(&qword_27FF76B00, &qword_27FF76B08, &unk_26478B650, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787C8);
  }

  return result;
}

unint64_t sub_2647342D8()
{
  result = qword_27FF787D0;
  if (!qword_27FF787D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787C0, &unk_264790B28);
    sub_264734364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787D0);
  }

  return result;
}

unint64_t sub_264734364()
{
  result = qword_27FF787D8;
  if (!qword_27FF787D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787B8, &qword_264790B20);
    sub_2647343F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787D8);
  }

  return result;
}

unint64_t sub_2647343F0()
{
  result = qword_27FF787E0;
  if (!qword_27FF787E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787B0, &qword_264790B18);
    sub_26460CDF0(&qword_27FF787E8, &qword_27FF78778, &qword_264790AE0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787E0);
  }

  return result;
}

uint64_t sub_264734530(uint64_t *a1)
{
  v3 = *(type metadata accessor for LiveActivityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26472D45C(a1, v4);
}

unint64_t sub_2647345A0()
{
  result = qword_27FF78810;
  if (!qword_27FF78810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78798, &qword_264790B00);
    sub_264734658();
    sub_26460CDF0(&qword_27FF78860, &qword_27FF78808, &qword_264790BE0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78810);
  }

  return result;
}

unint64_t sub_264734658()
{
  result = qword_27FF78818;
  if (!qword_27FF78818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78800, &qword_264790BD8);
    sub_264734710();
    sub_26460CDF0(&qword_27FF78850, &qword_27FF78858, &qword_264790BF8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78818);
  }

  return result;
}

unint64_t sub_264734710()
{
  result = qword_27FF78820;
  if (!qword_27FF78820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787F8, &qword_264790BD0);
    sub_2647347C8();
    sub_26460CDF0(&qword_27FF78840, &qword_27FF78848, &qword_264790BF0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78820);
  }

  return result;
}

unint64_t sub_2647347C8()
{
  result = qword_27FF78828;
  if (!qword_27FF78828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787F0, &qword_264790BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78790, &qword_264790AF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78788, &qword_264790AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78780, &qword_264790AE8);
    sub_264734220();
    swift_getOpaqueTypeConformance2();
    sub_264667DA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF78830, &qword_27FF78838, &qword_264790BE8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78828);
  }

  return result;
}

uint64_t sub_264734984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78868, &qword_264790C58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_264734AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78868, &qword_264790C58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_264734C10(uint64_t a1)
{
  sub_2646A0F00(319);
  if (v1 <= 0x3F)
  {
    sub_264734D34(319);
    if (v2 <= 0x3F)
    {
      sub_264734DC8(319, &qword_27FF78888, MEMORY[0x277CDF708]);
      if (v3 <= 0x3F)
      {
        sub_264734DC8(319, &qword_27FF75978, MEMORY[0x277CDF3E0]);
        if (v4 <= 0x3F)
        {
          sub_2646A1028();
          if (v5 <= 0x3F)
          {
            sub_264613E28();
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

void sub_264734D34(uint64_t a1)
{
  if (!qword_27FF78880)
  {
    type metadata accessor for DeviceLockMonitor(255);
    sub_2647365C0(&qword_27FF78770, type metadata accessor for DeviceLockMonitor, &protocol conformance descriptor for DeviceLockMonitor);
    v1 = sub_2647841A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF78880);
    }
  }
}

void sub_264734DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_264734E20()
{
  result = qword_27FF78890;
  if (!qword_27FF78890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78898, &unk_264790C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78798, &qword_264790B00);
    sub_2647345A0();
    swift_getOpaqueTypeConformance2();
    sub_2647365C0(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78890);
  }

  return result;
}

uint64_t sub_264734F20(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264734FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_26473509C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C0, &qword_26478AC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B58, &qword_264791050);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v15, v10);
    result = (*(v7 + 8))(v10, v6);
    *a3 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2647351F8()
{
  result = qword_27FF788C0;
  if (!qword_27FF788C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF788B8, &qword_264790D50);
    v1 = MEMORY[0x277CE1198];
    sub_26460CDF0(&qword_27FF788C8, &qword_27FF788D0, &qword_264790D58, MEMORY[0x277CE1198]);
    sub_26460CDF0(&qword_27FF788D8, &qword_27FF788E0, &qword_264790D60, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF788C0);
  }

  return result;
}

unint64_t sub_2647352FC()
{
  result = qword_27FF789A0;
  if (!qword_27FF789A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78998, &qword_264790E70);
    sub_26460CDF0(&qword_27FF789A8, &qword_27FF789B0, &qword_264790E78, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF789A0);
  }

  return result;
}

unint64_t sub_2647353AC()
{
  result = qword_27FF789B8;
  if (!qword_27FF789B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78988, &qword_264790E60);
    sub_264735430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF789B8);
  }

  return result;
}

unint64_t sub_264735430()
{
  result = qword_27FF789C0;
  if (!qword_27FF789C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78980, &qword_264790E58);
    sub_26460CDF0(&qword_27FF789C8, &qword_27FF789D0, &qword_264790E80, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF789C0);
  }

  return result;
}

uint64_t sub_2647354E0()
{
  v1 = type metadata accessor for LiveActivityView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_264784134();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_264783F74();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2647356A0()
{
  v1 = *(type metadata accessor for LiveActivityView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2647320A4(v3, v2);
}

unint64_t sub_264735710()
{
  result = qword_27FF78A10;
  if (!qword_27FF78A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A08, &qword_264790EB8);
    sub_26473579C();
    sub_264735828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A10);
  }

  return result;
}

unint64_t sub_26473579C()
{
  result = qword_27FF78A18;
  if (!qword_27FF78A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A20, &unk_264790EC0);
    sub_26465D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A18);
  }

  return result;
}

unint64_t sub_264735828()
{
  result = qword_27FF78A28;
  if (!qword_27FF78A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A30, &qword_264790ED0);
    sub_2647358B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A28);
  }

  return result;
}

unint64_t sub_2647358B4()
{
  result = qword_27FF78A38;
  if (!qword_27FF78A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A40, &qword_264790ED8);
    sub_26465D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A38);
  }

  return result;
}

unint64_t sub_264735940()
{
  result = qword_27FF78A48;
  if (!qword_27FF78A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF789F8, &qword_264790EA8);
    sub_2647359F8();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A48);
  }

  return result;
}

unint64_t sub_2647359F8()
{
  result = qword_27FF78A50;
  if (!qword_27FF78A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A58, &qword_264790EE0);
    sub_264735A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A50);
  }

  return result;
}

unint64_t sub_264735A84()
{
  result = qword_27FF78A60;
  if (!qword_27FF78A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A68, &qword_264790EE8);
    sub_26460CDF0(&qword_27FF78A70, &qword_27FF789F0, &qword_264790EA0, MEMORY[0x277CDF028]);
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A60);
  }

  return result;
}

uint64_t sub_264735BE8(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2647322E8(a1, v4);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264735D58()
{
  result = qword_27FF78AC0;
  if (!qword_27FF78AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AB8, &unk_264790FA0);
    sub_264735828();
    sub_26460CDF0(&qword_27FF76CE0, &qword_27FF76CE8, &qword_26478B910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AC0);
  }

  return result;
}

unint64_t sub_264735E10()
{
  result = qword_27FF78AC8;
  if (!qword_27FF78AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AA8, &qword_264790F90);
    sub_264735E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AC8);
  }

  return result;
}

unint64_t sub_264735E9C()
{
  result = qword_27FF78AD0;
  if (!qword_27FF78AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AD8, &qword_264790FB0);
    sub_264735F54();
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AD0);
  }

  return result;
}

unint64_t sub_264735F54()
{
  result = qword_27FF78AE0;
  if (!qword_27FF78AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AE8, &qword_264790FB8);
    sub_26460CDF0(&qword_27FF78AF0, &qword_27FF78AA0, &qword_264790F88, MEMORY[0x277CDF028]);
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AE0);
  }

  return result;
}

uint64_t sub_264736050(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LiveActivityView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2647360CC(void *a1)
{
  v3 = *(type metadata accessor for LiveActivityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2647338E4(a1, v4);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for LiveActivityView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_264784134();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_264783F74();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26473631C()
{
  v1 = type metadata accessor for LiveActivityView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_264784134();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_264783F74();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_2647364E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_26472E408(v4, v5, a1);
}

uint64_t sub_264736580()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647365C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264736608()
{
  result = qword_27FF78B70;
  if (!qword_27FF78B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78B68, &qword_264791060);
    sub_2647366C0();
    sub_26460CDF0(&qword_27FF76CE0, &qword_27FF76CE8, &qword_26478B910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78B70);
  }

  return result;
}

unint64_t sub_2647366C0()
{
  result = qword_27FF78B78;
  if (!qword_27FF78B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78920, &qword_264790D98);
    sub_26465D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78B78);
  }

  return result;
}

unint64_t sub_264736754()
{
  result = qword_27FF78B88;
  if (!qword_27FF78B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78B60, &qword_264791058);
    sub_264736608();
    sub_26460CDF0(&qword_27FF78B90, &qword_27FF78B80, &qword_264791098, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78B88);
  }

  return result;
}

unint64_t sub_26473680C()
{
  result = qword_27FF78BA8;
  if (!qword_27FF78BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78BA0, &qword_2647910A8);
    sub_26460CDF0(&qword_27FF78BB0, &qword_27FF78BB8, &qword_2647910B0, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78BA8);
  }

  return result;
}

unint64_t sub_2647368C4()
{
  result = qword_27FF78BC8;
  if (!qword_27FF78BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78BC0, &qword_2647910B8);
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78BC8);
  }

  return result;
}

uint64_t sub_2647369B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  type metadata accessor for MessagesCache();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27FF807E0 = result;
  return result;
}

uint64_t sub_264736A04()
{

  return swift_deallocClassInstance();
}

uint64_t CachedGeocoder.placemark(forKey:with:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v3[11] = swift_task_alloc();
  v4 = sub_264783E24();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264736B8C, 0, 0);
}

uint64_t sub_264736B8C()
{
  receiver = v0[5].receiver;
  v2 = v0[4].receiver;
  v3 = type metadata accessor for CachedGeocoder.CacheKey();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location] = v2;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[9].super_class = v6;
  v7 = receiver[2];
  v8 = [v7 objectForKey_];
  v0[10].receiver = v8;
  if (v8)
  {
    v9 = &v8[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state];
    v10 = *&v8[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state];
    v0[10].super_class = v10;
    v11 = v0[4].receiver;
    if (v9[8])
    {
      v12 = v8;
      sub_264738B00(v10, 1);
      v13 = v10;
      sub_264783E04();
      v14 = v11;
      v15 = sub_264783E14();
      v16 = sub_2647859F4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[4].receiver;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138739971;
        *(v18 + 4) = v17;
        *v19 = v17;
        v20 = v17;
        _os_log_impl(&dword_264605000, v15, v16, "#CachedGeocoder: cache hit for %{sensitive}@", v18, 0xCu);
        sub_26460CD50(v19, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v19, -1, -1);
        MEMORY[0x266740650](v18, -1, -1);

        sub_264738AF4(v10, 1);
      }

      else
      {

        sub_264738AF4(v10, 1);
      }

      (*(v0[6].super_class + 1))(v0[9].receiver, v0[6].receiver);

      super_class = v0->super_class;

      return super_class(v10);
    }

    sub_264783E04();
    v53 = v11;
    v54 = sub_264783E14();
    v55 = sub_2647859F4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v0[4].receiver;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138739971;
      *(v57 + 4) = v56;
      *v58 = v56;
      v59 = v56;
      _os_log_impl(&dword_264605000, v54, v55, "#CachedGeocoder: awaiting task completion for %{sensitive}@", v57, 0xCu);
      sub_26460CD50(v58, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v58, -1, -1);
      MEMORY[0x266740650](v57, -1, -1);
    }

    v60 = v0[8].super_class;
    v61 = v0[6].receiver;
    v62 = v0[6].super_class;

    (*(v62 + 1))(v60, v61);
    v63 = swift_task_alloc();
    v0[11].receiver = v63;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    *v63 = v0;
    v63[1] = sub_26473727C;
    v50 = MEMORY[0x277D84950];
    v51 = (v0 + 56);
    v52 = v10;
  }

  else
  {
    v66 = v7;
    v21 = v0[4].receiver;
    sub_264783E04();
    v22 = v21;
    v23 = sub_264783E14();
    v24 = sub_2647859F4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[4].receiver;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138739971;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&dword_264605000, v23, v24, "#CachedGeocoder: cache miss for %{sensitive}@", v26, 0xCu);
      sub_26460CD50(v27, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v27, -1, -1);
      MEMORY[0x266740650](v26, -1, -1);
    }

    v29 = v0[8].receiver;
    v31 = v0[6].receiver;
    v30 = v0[6].super_class;
    v33 = v0[5].receiver;
    v32 = v0[5].super_class;
    v34 = v0[4].receiver;
    v35 = v0[4].super_class;

    v36 = *(v30 + 1);
    v0[12].receiver = v36;
    v0[12].super_class = ((v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v36(v29, v31);
    sub_2647858C4();
    v37 = sub_2647858E4();
    (*(*(v37 - 8) + 56))(v32, 0, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v35;
    v38[5] = v34;
    v38[6] = v33;
    v38[7] = v6;
    v39 = v34;
    v40 = v35;

    v41 = v6;
    v42 = sub_26473866C(0, 0, v32, &unk_2647910F0, v38);
    v0[13].receiver = v42;
    v43 = type metadata accessor for CachedGeocoder.GeocodeStatus();
    v44 = objc_allocWithZone(v43);
    v45 = &v44[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state];
    *v45 = v42;
    v45[8] = 0;
    v0[2].receiver = v44;
    v0[2].super_class = v43;

    v46 = objc_msgSendSuper2(v0 + 2, sel_init);
    v0[13].super_class = v46;
    [v66 setObject:v46 forKey:v41];
    v47 = swift_task_alloc();
    v0[14].receiver = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    *v47 = v0;
    v47[1] = sub_26473745C;
    v50 = MEMORY[0x277D84950];
    v51 = v0 + 3;
    v52 = v42;
  }

  return MEMORY[0x282200430](v51, v52, v48, v49, v50);
}

uint64_t sub_26473727C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2647379A0;
  }

  else
  {
    v2 = sub_264737390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264737390()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  sub_264738AF4(v1, 0);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_26473745C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_264737A64;
  }

  else
  {
    v2 = sub_264737570;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264737570()
{
  v48 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 216) + OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state;
  v3 = *v2;
  v4 = *(v2 + 8);
  *v2 = v1;
  *(v2 + 8) = 1;
  v5 = v1;
  sub_264738AF4(v3, v4);
  v6 = *(v0 + 64);
  if (v1)
  {
    v7 = v5;
    sub_264783E04();
    v8 = v6;
    v9 = v7;
    v10 = sub_264783E14();
    v11 = sub_2647859F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 64);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v13 = 138740227;
      *(v13 + 4) = v12;
      *v14 = v12;
      *(v13 + 12) = 2080;
      v15 = v12;
      v16 = [v9 name];
      if (v16)
      {
        v17 = v16;
        v18 = sub_264785724();
        v20 = v19;
      }

      else
      {
        v20 = 0xE700000000000000;
        v18 = 0x656D616E206F6ELL;
      }

      v41 = *(v0 + 216);
      v45 = *(v0 + 192);
      v44 = *(v0 + 120);
      v42 = *(v0 + 152);
      v43 = *(v0 + 96);
      v38 = sub_2646DF234(v18, v20, &v47);

      *(v13 + 14) = v38;
      _os_log_impl(&dword_264605000, v10, v11, "#CachedGeocoder: storing placemark for %{sensitive}@, placemark name: %s", v13, 0x16u);
      sub_26460CD50(v14, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);

      v45(v44, v43);
    }

    else
    {
      v31 = *(v0 + 216);
      v32 = *(v0 + 192);
      v33 = *(v0 + 120);
      v34 = *(v0 + 96);

      v32(v33, v34);
    }
  }

  else
  {
    sub_264783E04();
    v21 = v6;
    v22 = sub_264783E14();
    v23 = sub_2647859F4();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 216);
    if (v24)
    {
      v26 = *(v0 + 152);
      v27 = *(v0 + 64);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138739971;
      *(v28 + 4) = v27;
      *v29 = v27;
      v30 = v27;
      _os_log_impl(&dword_264605000, v22, v23, "#CachedGeocoder: found no placemark for %{sensitive}@", v28, 0xCu);
      sub_26460CD50(v29, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v29, -1, -1);
      MEMORY[0x266740650](v28, -1, -1);
    }

    else
    {

      v22 = *(v0 + 152);
    }

    v35 = *(v0 + 192);
    v36 = *(v0 + 112);
    v37 = *(v0 + 96);

    v35(v36, v37);
  }

  v39 = *(v0 + 8);

  return v39(v1);
}

uint64_t sub_2647379A0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  sub_264738AF4(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264737A64()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CachedGeocoder.CacheKey.hash.getter()
{
  sub_264785FA4();
  v1 = *(v0 + OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location);
  [v1 coordinate];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26673FCA0](*&v2);
  [v1 coordinate];
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x26673FCA0](*&v4);
  return sub_264785F84();
}

BOOL CachedGeocoder.CacheKey.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_26460CCE8(a1, v15, &qword_27FF77FC8, &qword_26478F3A0);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location);
      [v3 coordinate];
      v5 = v4;
      v6 = OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location;
      [*&v14[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location] coordinate];
      if (v5 == v7)
      {
        [v3 coordinate];
        v9 = v8;
        v10 = *&v14[v6];
        [v10 coordinate];
        v12 = v11;

        return v9 == v12;
      }
    }
  }

  else
  {
    sub_26460CD50(v15, &qword_27FF77FC8, &qword_26478F3A0);
  }

  return 0;
}

id CachedGeocoder.GeocodeStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_264737EC0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  type metadata accessor for CachedGeocoder();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27FF807E8 = result;
  return result;
}

uint64_t CachedGeocoder.__allocating_init(cache:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_264737F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v7[23] = a1;
  v8 = sub_264783E24();
  v7[28] = v8;
  v7[29] = *(v8 - 8);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26473801C, 0, 0);
}

uint64_t sub_26473801C()
{
  v2 = v0[24];
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_264738144;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78BE0, &qword_2647911D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26473858C;
  v0[13] = &block_descriptor_17;
  v0[14] = v3;
  [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264738144()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_264738338;
  }

  else
  {
    v2 = sub_264738254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264738254()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    result = sub_264785C14();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26673FA30](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  **(v0 + 184) = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264738338(uint64_t a1)
{
  v25 = v1;
  v2 = v1[31];
  v3 = v1[25];
  swift_willThrow();
  sub_264783E04();
  v4 = v3;
  v5 = v2;
  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v21 = v1[29];
    v22 = v1[28];
    v23 = v1[30];
    v8 = v1[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v9 = 138740227;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = v8;
    v13 = sub_264785EF4();
    v15 = sub_2646DF234(v13, v14, &v24);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_264605000, v6, v7, "#CachedGeocoder: encountered error reverse geocoding %{sensitive}@, error: %s", v9, 0x16u);
    sub_26460CD50(v10, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v21 + 8))(v23, v22);
  }

  else
  {
    v17 = v1[29];
    v16 = v1[30];
    v18 = v1[28];

    (*(v17 + 8))(v16, v18);
  }

  [*(v1[26] + 16) removeObjectForKey_];
  swift_willThrow();

  v19 = v1[1];

  return v19();
}

uint64_t sub_26473858C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_264738C58();
    **(*(v4 + 64) + 40) = sub_2647857F4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_26473866C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26460CCE8(a3, v22 - v9, &qword_27FF76970, &qword_264789300);
  v11 = sub_2647858E4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26460CD50(v10, &qword_27FF76970, &qword_264789300);
  }

  else
  {
    sub_2647858D4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_264785874();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_264785784() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t CachedGeocoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2647389A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2647389FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26460F764;

  return sub_264737F54(a1, v4, v5, v6, v7, v9, v8);
}

void sub_264738AF4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_264738B00(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_264738B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264738BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_264738C58()
{
  result = qword_27FF77F50;
  if (!qword_27FF77F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF77F50);
  }

  return result;
}

void Date.roundedTime()(uint64_t a1)
{
  v1 = sub_264783A64();
  v2 = [v1 roundedTime];

  sub_264783AC4();
}

uint64_t sub_264738D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_264785BE4();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  else
  {
    sub_26474ED38(result, *(a1 + 36), a1, &v7);
    v6 = *(&v7 + 1);
    v5 = v7;
    sub_26465944C(v7, *(&v7 + 1));
    result = sub_264655264(v5, v6);
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

unint64_t SMSessionState.badgeImageName.getter(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  v1 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v1 = 0;
  }

  if (((1 << a1) & 0x1004) != 0)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = v1;
  }

  if (((1 << a1) & 0x4380) != 0)
  {
    return 0x69662E6B636F6C63;
  }

  else
  {
    return v2;
  }
}

uint64_t SMSessionState.badgeImageColor.getter(uint64_t a1, double a2)
{
  if (a1 == 4)
  {

    return sub_264785164();
  }

  else if (a1 == 12)
  {

    return sub_264785184();
  }

  else
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }
  }
}

uint64_t sub_264738EDC(unsigned __int8 a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264739004(unsigned __int8 a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_26473912C(uint64_t a1, unsigned __int8 a2)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264739250(uint64_t a1, unsigned __int8 a2)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t static SafetyMonitorUIUtilities.fetchChatGroupPhoto(with:)(uint64_t a1, void (*a2)(char *, uint64_t (*)(void)))
{
  v3 = v2;
  v81 = a2;
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v75 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v75 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v79 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  v20 = sub_264785714();
  v21 = CUTWeakLinkSymbol();

  v80 = v21;
  if (!v21)
  {
    sub_264783DF4();
    v32 = sub_264783E14();
    v33 = sub_2647859B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v82[0] = v35;
      *v34 = 136315394;
      v83 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v36 = sub_264785764();
      v38 = sub_2646DF234(v36, v37, v82);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v82);
      _os_log_impl(&dword_264605000, v32, v33, "%s, %s: IMCore framework or IMSPIGetGroupPhotosForChatsWithGroupIDsSymbol symbol not found", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v35, -1, -1);
      MEMORY[0x266740650](v34, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  v77 = a1;
  v75 = v15;
  sub_264783DF4();
  v22 = sub_264783E14();
  v23 = sub_2647859C4();
  v24 = os_log_type_enabled(v22, v23);
  v78 = v3;
  v76 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v82[0] = v26;
    *v25 = 136315394;
    v83 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v27 = sub_264785764();
    v29 = sub_2646DF234(v27, v28, v82);

    *(v25 + 4) = v29;
    v30 = v5;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v82);
    _os_log_impl(&dword_264605000, v22, v23, "%s, %s: attempting to unsafeBitCast IMSPIGetGroupPhotosForChatsWithGroupIDs", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v26, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);

    v31 = *(v6 + 8);
  }

  else
  {

    v31 = *(v6 + 8);
    v30 = v5;
  }

  v31(v19, v30);
  v39 = v79;
  sub_264783DF4();
  v40 = v81;

  v41 = sub_264783E14();
  v42 = sub_2647859C4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v82[0] = v44;
    *v43 = 136315650;
    v83 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v45 = sub_264785764();
    v47 = v31;
    v48 = sub_2646DF234(v45, v46, v82);

    *(v43 + 4) = v48;
    v31 = v47;
    v40 = v81;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v82);
    *(v43 + 22) = 2080;
    v49 = v77;
    *(v43 + 24) = sub_2646DF234(v77, v40, v82);
    _os_log_impl(&dword_264605000, v41, v42, "%s, %s: calling IMSPIGetGroupPhotosForChatsWithGroupIDs, groupID, %s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v44, -1, -1);
    MEMORY[0x266740650](v43, -1, -1);

    v31(v39, v30);
  }

  else
  {

    v31(v39, v30);
    v49 = v77;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78060, &qword_264789860);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2647889E0;
  *(v50 + 32) = v49;
  *(v50 + 40) = v40;

  v51 = sub_2647857E4();

  v52 = v80(v51);

  v53 = sub_264785614();
  sub_264738D18(v53, v82);

  if (v82[1] >> 60 == 15)
  {
    v54 = v30;
    v55 = v76;
    sub_264783DF4();
    v56 = sub_264783E14();
    v57 = sub_2647859C4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v82[0] = v59;
      *v58 = 136315394;
      v83 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v60 = sub_264785764();
      v62 = sub_2646DF234(v60, v61, v82);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v82);
      _os_log_impl(&dword_264605000, v56, v57, "%s, %s: did not get groupPhoto", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v59, -1, -1);
      MEMORY[0x266740650](v58, -1, -1);
    }

    v31(v55, v54);
    return 0;
  }

  v81 = v31;
  v63 = v82[0];
  v64 = v75;
  sub_264783DF4();
  v65 = sub_264783E14();
  v66 = sub_2647859C4();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v82[0] = v68;
    *v67 = 136315394;
    v83 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v69 = sub_264785764();
    v80 = v30;
    v71 = sub_2646DF234(v69, v70, v82);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v82);
    _os_log_impl(&dword_264605000, v65, v66, "%s, %s: got groupPhoto", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v68, -1, -1);
    MEMORY[0x266740650](v67, -1, -1);

    v72 = v64;
    v73 = v80;
  }

  else
  {

    v72 = v64;
    v73 = v30;
  }

  v81(v72, v73);
  return v63;
}

id sub_264739D18()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v54[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v54[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79498, &qword_264791A38);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54[-v16];
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result getActivePairedDeviceExcludingAltAccount];

  if (!v20)
  {
    sub_264783DF4();
    v33 = sub_264783E14();
    v34 = sub_2647859F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v62[0] = v36;
      *v35 = 136315394;
      v61[0] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v37 = sub_264785764();
      v39 = sub_2646DF234(v37, v38, v62);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v62);
      _os_log_impl(&dword_264605000, v33, v34, "%s,%s: NR activeDevice is nil", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v36, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (![v20 valueForProperty_])
  {
    sub_264783DF4();
    v40 = sub_264783E14();
    v41 = sub_2647859F4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62[0] = v43;
      *v42 = 136315394;
      v61[0] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v44 = sub_264785764();
      v46 = sub_2646DF234(v44, v45, v62);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v62);
      _os_log_impl(&dword_264605000, v40, v41, "%s,%s: productVersionProperty is nil", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v43, -1, -1);
      MEMORY[0x266740650](v42, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  sub_264785BA4();
  swift_unknownObjectRelease();
  sub_264655DB8(v62, v61);
  if (!swift_dynamicCast())
  {
    sub_264783DF4();
    v47 = sub_264783E14();
    v48 = sub_2647859F4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61[0] = v50;
      *v49 = 136315394;
      v59 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v51 = sub_264785764();
      v53 = sub_2646DF234(v51, v52, v61);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v61);
      _os_log_impl(&dword_264605000, v47, v48, "%s,%s: productVersion is not a string", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v49, -1, -1);
    }

    (*(v3 + 8))(v12, v2);
    __swift_destroy_boxed_opaque_existential_0(v62);
    return 0;
  }

  v57 = v2;
  v21 = v59;
  v22 = v60;
  v61[0] = v59;
  v61[1] = v60;
  v59 = 808333617;
  v60 = 0xE400000000000000;
  v23 = sub_264783B94();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_264613FC4();
  v24 = sub_264785B94();
  sub_26460CD50(v17, &qword_27FF79498, &qword_264791A38);
  v58 = v24 < 2;
  sub_264783DF4();

  v25 = sub_264783E14();
  v26 = sub_2647859F4();

  if (os_log_type_enabled(v25, v26))
  {
    v55 = v24 < 2;
    v27 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *v27 = 136315906;
    v59 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v28 = sub_264785764();
    v30 = sub_2646DF234(v28, v29, v61);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v61);
    *(v27 + 22) = 2080;
    v31 = sub_2646DF234(v21, v22, v61);

    *(v27 + 24) = v31;
    *(v27 + 32) = 1024;
    *(v27 + 34) = v55;
    _os_log_impl(&dword_264605000, v25, v26, "%s,%s: productVersion,%s,supportsWorkouts,%{BOOL}d", v27, 0x26u);
    v32 = v56;
    swift_arrayDestroy();
    MEMORY[0x266740650](v32, -1, -1);
    MEMORY[0x266740650](v27, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v14, v57);
  __swift_destroy_boxed_opaque_existential_0(v62);
  return v58;
}

double SMLocation.coordinate.getter()
{
  [v0 latitude];
  v2 = v1;
  [v0 longitude];
  return v2;
}

uint64_t Date.absoluteTimeString(_:preposition:capitalized:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_264783A64();
  v7 = [v6 absoluteTimeString:a1 preposition:a2 capitalized:a3 & 1];

  v8 = sub_264785724();
  return v8;
}

void sub_26473A67C(uint64_t a1, SEL *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_264785C14())
    {
      return;
    }
  }

  else if (!*(a1 + 16))
  {
    return;
  }

  sub_26474DDE4(a1);

  v12 = sub_26474EA68(v4);
  sub_26473ACCC(&v12, a2);

  v5 = v12;
  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v6 = sub_264785C14();
    if (v6)
    {
LABEL_8:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26673FA30](0, v5);
      }

      else
      {
        if (!*(v5 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v5 + 32);
      }

      v8 = v7;
      [v7 *a2];

      v9 = v6 - 1;
      if (!__OFSUB__(v6, 1))
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26673FA30](v9, v5);
LABEL_17:
          v11 = v10;

          [v11 *a2];

          return;
        }

        if ((v9 & 0x8000000000000000) == 0)
        {
          if (v9 < *(v5 + 16))
          {
            v10 = *(v5 + 8 * v9 + 32);
            goto LABEL_17;
          }

LABEL_25:
          __break(1u);

          __break(1u);
          return;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v6 = *(v12 + 16);
    if (v6)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_26473A828(uint64_t a1, SEL *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_264785C14())
    {
      goto LABEL_20;
    }
  }

  else if (!*(a1 + 16))
  {
LABEL_20:
    *&result = 0.0;
    return result;
  }

  sub_26474DDE4(a1);

  v17 = sub_26474EA68(v4);
  sub_26473ACCC(&v17, a2);

  v5 = v17;
  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    v6 = *(v17 + 16);
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v6 = sub_264785C14();
  if (!v6)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26673FA30](0, v5);
  }

  else
  {
    if (!*(v5 + 16))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  [v7 *a2];
  v10 = v9;

  v11 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26673FA30](v11, v5);
LABEL_17:
    v13 = v12;

    [v13 *a2];
    v15 = v14;

    *&result = (v10 + v15) * 0.5;
    return result;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (v11 < *(v5 + 16))
  {
    v12 = *(v5 + 8 * v11 + 32);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);

  *&result = COERCE_DOUBLE();
  __break(1u);
  return result;
}

id MKMapItem.isAddressOnly.getter()
{
  result = [v0 _geoMapItem];
  if (result)
  {
    v2 = [result _placeType];
    swift_unknownObjectRelease();
    return ((v2 < 0x12) & (0x2D000u >> v2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26473AA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5();
  if (qword_27FF75010 != -1)
  {
    swift_once();
  }

  return sub_264783DB4();
}

uint64_t static SafetyMonitorUIUtilities.doneButton(handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2647845C4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77328, &unk_26478CA80);
  sub_2647467A4(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = sub_264784C44();
  sub_264783F54();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77338, &qword_26478CA90) + 36);
  *v15 = a2;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(a2) = sub_264784C84();
  sub_264783F54();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77320, &qword_264791240);
  v25 = a3 + *(result + 36);
  *v25 = a2;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

Swift::String __swiftcall Date.preciseFormattedTime()()
{
  v0 = sub_26473C108(&selRef_preciseFormattedTime);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall Double.hourMinuteShortTimeString(precision:)(Swift::Double precision)
{
  v2 = sub_26473BD9C(&selRef_hourMinuteShortTimeIntervalFormatter, precision, v1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_26473ACCC(uint64_t *a1, SEL *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2646F4B30(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_26474DE94(v8, a2);
  return sub_264785D44();
}

uint64_t static SafetyMonitorUIUtilities.iconFor(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 != 4)
    {
      if (v3 != 2)
      {
        goto LABEL_12;
      }

      sub_264785274();
      sub_264785174();
      swift_getKeyPath();
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79350, &qword_264791248);
      sub_264753D24();
      sub_264784874();
      goto LABEL_10;
    }

LABEL_8:
    sub_264785274();
    sub_264785164();
    swift_getKeyPath();
    goto LABEL_9;
  }

  if (!*a1)
  {
    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79350, &qword_264791248);
    sub_264753D24();
    sub_264784874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79360, &qword_264791258);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79368, &qword_264791260);
    sub_264753DDC();
    sub_264757288(&qword_27FF79378, &qword_27FF79368, &qword_264791260, sub_264753D24);
    sub_264784874();
    goto LABEL_11;
  }

  sub_264785274();
  sub_2647851B4();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79350, &qword_264791248);
  sub_264753D24();
  sub_264784874();
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79360, &qword_264791258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79368, &qword_264791260);
  sub_264753DDC();
  sub_264757288(&qword_27FF79378, &qword_27FF79368, &qword_264791260, sub_264753D24);
  sub_264784874();

LABEL_11:
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  sub_264753EB0(v5, *(&v5 + 1), v6, v7, v8, sub_26466D2B4, sub_264753E60);
  return sub_264753EB0(v5, *(&v5 + 1), v6, v7, v8, sub_26466D3B0, sub_2646D6D84);
}

uint64_t static Color.receiverBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_264745BBC;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26474DD7C;
  v4[3] = &block_descriptor_18;
  v1 = _Block_copy(v4);
  [v0 initWithDynamicProvider_];
  _Block_release(v1);

  sub_264785134();
  v2 = sub_2647851F4();

  return v2;
}

uint64_t static SafetyMonitorUIUtilities.initiatorLiveActivityTitle(with:addTimeMode:shortStrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v8);

  v5 = v8;
  v6 = MEMORY[0x26673D9F0](v8, a2, a3, 0);

  return v6;
}

uint64_t static SafetyMonitorUIUtilities.initiatorLiveActivityMessage(with:addTimeMode:shortStrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v8);

  v5 = v8;
  v6 = MEMORY[0x26673DA10](v8, a2, 0, a3, 0);

  return v6;
}

uint64_t View.roundCornerLightWhiteBackground()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79380, &unk_2647912E0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v19 - v3);
  v5 = sub_2647851C4();
  KeyPath = swift_getKeyPath();
  v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782E8, &unk_26478FB80) + 36);
  sub_2647854A4();
  v8 = sub_264784C34();
  v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782F0, &unk_2647912F0) + 36)] = v8;
  *v4 = KeyPath;
  v4[1] = v5;
  v4[2] = 0x3FA999999999999ALL;
  v9 = v4 + *(v2 + 36);
  v10 = *(sub_2647842B4() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_264784674();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #15.0 }

  *v9 = _Q0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75948, &qword_26478B640) + 36)] = 256;
  sub_264785504();
  sub_264754404();
  sub_264784E94();
  return sub_26460CD50(v4, &qword_27FF79380, &unk_2647912E0);
}

void __swiftcall View.toImage(preferredSize:)(UIImage *__return_ptr retstr, CGSize_optional preferredSize)
{
  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *&preferredSize.is_nil;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](*&preferredSize.is_nil);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264784794();
  (*(v10 + 16))(v12, v5, v6);
  v13 = sub_264784774();
  v14 = [v13 view];
  v15 = [v13 view];

  if (!v15)
  {
    goto LABEL_8;
  }

  [v15 intrinsicContentSize];
  v17 = v16;
  v19 = v18;

  if ((v7 & 1) == 0)
  {
    v17 = v9;
    v19 = v8;
  }

  if (v14)
  {
    [v14 setBounds_];
    v20 = objc_opt_self();
    v21 = v14;
    v22 = [v20 clearColor];
    [v21 setBackgroundColor_];
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v24 = swift_allocObject();
  *(v24 + 16) = v14;
  *(v24 + 24) = v13;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_264754640;
  *(v25 + 24) = v24;
  aBlock[4] = sub_264754658;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26473BA24;
  aBlock[3] = &block_descriptor_12;
  v26 = _Block_copy(aBlock);
  v27 = v13;
  v28 = v14;

  [v23 imageWithActions_];

  _Block_release(v26);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }
}

void sub_26473B968(int a1, void *a2, id a3)
{
  if (a2)
  {
    v4 = [a3 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [a2 drawViewHierarchyInRect:1 afterScreenUpdates:{v7, v9, v11, v13}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_26473BA24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_26473BA70()
{
  sub_264659B70(0, &qword_27FF794B8, 0x277D86200);
  result = sub_264785B24();
  qword_27FF78BE8 = result;
  return result;
}

uint64_t CLPlacemark.id.getter()
{
  v1 = v0;
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_264785724();
    v6 = v5;
  }

  else
  {
    v6 = 0xE100000000000000;
    v4 = 45;
  }

  MEMORY[0x26673F4D0](v4, v6);

  v7 = 45;
  v8 = 0xE100000000000000;
  MEMORY[0x26673F4D0](45, 0xE100000000000000);
  v9 = [v1 location];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v7 = sub_264785724();
    v8 = v12;
  }

  MEMORY[0x26673F4D0](v7, v8);

  return 0;
}

uint64_t sub_26473BC30@<X0>(uint64_t *a1@<X8>)
{
  result = CLPlacemark.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MKMapItem.id.getter()
{
  v1 = v0;
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_264785724();
    v6 = v5;
  }

  else
  {
    v6 = 0xE100000000000000;
    v4 = 45;
  }

  MEMORY[0x26673F4D0](v4, v6);

  MEMORY[0x26673F4D0](45, 0xE100000000000000);
  [v1 _coordinate];
  sub_264785934();
  MEMORY[0x26673F4D0](45, 0xE100000000000000);
  [v1 _coordinate];
  sub_264785934();
  return 0;
}

uint64_t sub_26473BD64@<X0>(uint64_t *a1@<X8>)
{
  result = MKMapItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String_optional __swiftcall Double.hourMinuteTimeString(precision:)(Swift::Double precision)
{
  v2 = sub_26473BD9C(&selRef_hourMinuteTimeIntervalFormatter, precision, v1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_26473BD9C(SEL *a1, double a2, double a3)
{
  v6 = sub_264785E64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() *a1];
  (*(v7 + 104))(v9, *MEMORY[0x277D84680], v6);
  v11 = sub_26473BF14(v9, a2, a3);
  (*(v7 + 8))(v9, v6);
  v12 = [v10 stringFromTimeInterval_];

  if (!v12)
  {
    return 0;
  }

  v13 = sub_264785724();

  return v13;
}

double sub_26473BF14(uint64_t a1, double a2, double a3)
{
  v6 = sub_264785E64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 / a2;
  v16 = v10;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x277D84678])
  {
    v12 = round(v10);
  }

  else if (v11 == *MEMORY[0x277D84670])
  {
    v12 = rint(v10);
  }

  else if (v11 == *MEMORY[0x277D84680])
  {
    v12 = ceil(v10);
  }

  else if (v11 == *MEMORY[0x277D84688])
  {
    v12 = floor(v10);
  }

  else if (v11 == *MEMORY[0x277D84660])
  {
    v12 = trunc(v10);
  }

  else if (v11 == *MEMORY[0x277D84668])
  {
    v12 = ceil(v10);
    v13 = floor(v10);
    if (v10 < 0.0)
    {
      v12 = v13;
    }
  }

  else
  {
    sub_264785924();
    (*(v7 + 8))(v9, v6);
    v12 = v16;
  }

  return v12 * a2;
}

Swift::String __swiftcall Date.relativeTimeString()()
{
  v0 = sub_26473C108(&selRef_relativeTimeString);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26473C108(SEL *a1)
{
  v2 = sub_264783A64();
  v3 = [v2 *a1];

  v4 = sub_264785724();
  return v4;
}

unint64_t SMReceiverSessionStatus.badgeImageName.getter()
{
  v1 = [v0 sessionState];
  v2 = 0xD000000000000015;
  if (v1 != 2)
  {
    v2 = 0;
  }

  if ((v1 - 3) < 3 || v1 == 9)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return v2;
  }
}

uint64_t SMReceiverSessionStatus.badgeImageColor.getter()
{
  v1 = [v0 sessionState];
  if (v1 > 9 || ((1 << v1) & 0x238) == 0)
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }
  }

  else
  {

    return sub_264785164();
  }
}

uint64_t sub_26473C2BC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78BF0 = result;
  *algn_27FF78BF8 = v5;
  return result;
}

uint64_t sub_26473C490()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78C10 = result;
  *algn_27FF78C18 = v5;
  return result;
}

uint64_t sub_26473C63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_264785704();
  MEMORY[0x28223BE20](v8 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *a4 = result;
  *a5 = v12;
  return result;
}

uint64_t sub_26473C9F4()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CA0 = result;
  *algn_27FF78CA8 = v5;
  return result;
}

uint64_t sub_26473CBB4()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF78CC0 = result;
  *algn_27FF78CC8 = v5;
  return result;
}

uint64_t sub_26473CF70()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CD0 = result;
  *algn_27FF78CD8 = v5;
  return result;
}

uint64_t sub_26473D0E4()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CE0 = result;
  *algn_27FF78CE8 = v5;
  return result;
}

uint64_t sub_26473D258()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CF0 = result;
  *algn_27FF78CF8 = v5;
  return result;
}

uint64_t sub_26473D3D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794A8, &qword_264791A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  *(inited + 32) = 1;
  if (qword_27FF75088 != -1)
  {
    swift_once();
  }

  v1 = *algn_27FF78CD8;
  *(inited + 40) = qword_27FF78CD0;
  *(inited + 48) = v1;
  *(inited + 56) = 2;
  v2 = qword_27FF75090;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_27FF78CE8;
  *(inited + 64) = qword_27FF78CE0;
  *(inited + 72) = v3;
  *(inited + 80) = 3;
  v4 = qword_27FF75098;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_27FF78CF8;
  *(inited + 88) = qword_27FF78CF0;
  *(inited + 96) = v5;
  v6 = sub_264655B98(inited);
  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794B0, &unk_264791A50);
  result = swift_arrayDestroy();
  off_27FF78D00 = v6;
  return result;
}

uint64_t static SafetyMonitorUIConstants.destinationTypeMapToLocalizedString.getter()
{
  if (qword_27FF750A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26473D5C8()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF78D08 = result;
  qword_27FF78D10 = v5;
  return result;
}

uint64_t sub_26473D76C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D18 = result;
  qword_27FF78D20 = v5;
  return result;
}

uint64_t sub_26473D8E8()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D28 = result;
  qword_27FF78D30 = v5;
  return result;
}

uint64_t sub_26473DA64()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D38 = result;
  qword_27FF78D40 = v5;
  return result;
}

uint64_t sub_26473DBE0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D48 = result;
  qword_27FF78D50 = v5;
  return result;
}

uint64_t sub_26473DD5C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D58 = result;
  qword_27FF78D60 = v5;
  return result;
}

uint64_t sub_26473DED8()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D68 = result;
  qword_27FF78D70 = v5;
  return result;
}

uint64_t sub_26473E08C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D88 = result;
  qword_27FF78D90 = v5;
  return result;
}

uint64_t sub_26473E208()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D98 = result;
  qword_27FF78DA0 = v5;
  return result;
}

uint64_t sub_26473E384()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DA8 = result;
  qword_27FF78DB0 = v5;
  return result;
}

uint64_t sub_26473E500()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DB8 = result;
  qword_27FF78DC0 = v5;
  return result;
}

uint64_t sub_26473E68C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264785704();
  MEMORY[0x28223BE20](v6 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *a2 = result;
  *a3 = v10;
  return result;
}

uint64_t sub_26473E814()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DD8 = result;
  qword_27FF78DE0 = v5;
  return result;
}

uint64_t sub_26473E990()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DE8 = result;
  qword_27FF78DF0 = v5;
  return result;
}

uint64_t sub_26473EB0C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DF8 = result;
  qword_27FF78E00 = v5;
  return result;
}

uint64_t sub_26473EC88()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E08 = result;
  qword_27FF78E10 = v5;
  return result;
}

uint64_t sub_26473EE3C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E28 = result;
  qword_27FF78E30 = v5;
  return result;
}

uint64_t sub_26473EFB8()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E38 = result;
  qword_27FF78E40 = v5;
  return result;
}

uint64_t sub_26473F134()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E48 = result;
  qword_27FF78E50 = v5;
  return result;
}

uint64_t sub_26473F2B0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E58 = result;
  qword_27FF78E60 = v5;
  return result;
}

uint64_t sub_26473F478()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E78 = result;
  qword_27FF78E80 = v5;
  return result;
}

uint64_t sub_26473F63C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E98 = result;
  qword_27FF78EA0 = v5;
  return result;
}

uint64_t sub_26473F7B8()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *&xmmword_27FF78EA8 = result;
  *(&xmmword_27FF78EA8 + 1) = v5;
  return result;
}

uint64_t sub_26473F978()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF78EC8 = result;
  qword_27FF78ED0 = v5;
  return result;
}

uint64_t sub_26473FBE0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F08 = result;
  qword_27FF78F10 = v5;
  return result;
}

uint64_t sub_26473FD60()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F18 = result;
  qword_27FF78F20 = v5;
  return result;
}

uint64_t sub_26473FEE0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F28 = result;
  qword_27FF78F30 = v5;
  return result;
}

uint64_t sub_264740060()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F38 = result;
  qword_27FF78F40 = v5;
  return result;
}

uint64_t sub_2647401DC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F48 = result;
  qword_27FF78F50 = v5;
  return result;
}

uint64_t sub_264740358()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F58 = result;
  qword_27FF78F60 = v5;
  return result;
}

uint64_t sub_2647405BC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *&xmmword_27FF78F98 = result;
  *(&xmmword_27FF78F98 + 1) = v5;
  return result;
}

uint64_t sub_264740738()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *&xmmword_27FF78FA8 = result;
  *(&xmmword_27FF78FA8 + 1) = v5;
  return result;
}

uint64_t sub_26474090C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FC8 = result;
  qword_27FF78FD0 = v5;
  return result;
}

uint64_t sub_264740A88()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FD8 = result;
  qword_27FF78FE0 = v5;
  return result;
}

uint64_t sub_264740C04()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FE8 = result;
  qword_27FF78FF0 = v5;
  return result;
}

uint64_t sub_264740D80()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *&xmmword_27FF78FF8 = result;
  *(&xmmword_27FF78FF8 + 1) = v5;
  return result;
}

uint64_t sub_264740EFC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79008 = result;
  qword_27FF79010 = v5;
  return result;
}

uint64_t sub_264741150()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79048 = result;
  qword_27FF79050 = v5;
  return result;
}

uint64_t sub_264741320()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79068 = result;
  qword_27FF79070 = v5;
  return result;
}

uint64_t sub_2647414EC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79088 = result;
  qword_27FF79090 = v5;
  return result;
}

uint64_t sub_2647416AC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790A8 = result;
  qword_27FF790B0 = v5;
  return result;
}

uint64_t sub_264741828()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790B8 = result;
  qword_27FF790C0 = v5;
  return result;
}

uint64_t sub_2647419B0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF790C8 = result;
  qword_27FF790D0 = v5;
  return result;
}

uint64_t sub_264741B54()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790D8 = result;
  qword_27FF790E0 = v5;
  return result;
}

uint64_t sub_264741CDC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF790E8 = result;
  qword_27FF790F0 = v5;
  return result;
}

uint64_t sub_264741E74()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790F8 = result;
  qword_27FF79100 = v5;
  return result;
}

uint64_t sub_264741FF4()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF79108 = result;
  qword_27FF79110 = v5;
  return result;
}

uint64_t sub_264742190()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79118 = result;
  qword_27FF79120 = v5;
  return result;
}

uint64_t sub_26474230C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79128 = result;
  qword_27FF79130 = v5;
  return result;
}

uint64_t sub_264742488()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79138 = result;
  qword_27FF79140 = v5;
  return result;
}

uint64_t sub_26474275C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79188 = result;
  qword_27FF79190 = v5;
  return result;
}

uint64_t sub_264742AC8()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785E64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647856E4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v7 = [objc_opt_self() hourMinuteTimeIntervalFormatter];
  (*(v3 + 104))(v5, *MEMORY[0x277D84680], v2);
  v8 = sub_26473BF14(v5, 60.0, 28800.0);
  (*(v3 + 8))(v5, v2);
  v9 = [v7 stringFromTimeInterval_];

  if (v9)
  {
    sub_264785724();
  }

  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791A8 = result;
  qword_27FF791B0 = v13;
  return result;
}

uint64_t sub_264742E20()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785E64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647856E4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v7 = [objc_opt_self() hourMinuteTimeIntervalFormatter];
  (*(v3 + 104))(v5, *MEMORY[0x277D84680], v2);
  v8 = sub_26473BF14(v5, 60.0, 28800.0);
  (*(v3 + 8))(v5, v2);
  v9 = [v7 stringFromTimeInterval_];

  if (v9)
  {
    sub_264785724();
  }

  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791B8 = result;
  qword_27FF791C0 = v13;
  return result;
}

uint64_t sub_264743174()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791C8 = result;
  qword_27FF791D0 = v5;
  return result;
}

uint64_t sub_264743398()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791E8 = result;
  qword_27FF791F0 = v5;
  return result;
}

uint64_t sub_26474356C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79208 = result;
  qword_27FF79210 = v5;
  return result;
}

uint64_t sub_2647436EC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79218 = result;
  qword_27FF79220 = v5;
  return result;
}

uint64_t sub_26474386C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79228 = result;
  qword_27FF79230 = v5;
  return result;
}

uint64_t sub_264743A08()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79238 = result;
  qword_27FF79240 = v5;
  return result;
}

uint64_t sub_264743B88()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79248 = result;
  qword_27FF79250 = v5;
  return result;
}

uint64_t sub_264743CFC()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79258 = result;
  qword_27FF79260 = v5;
  return result;
}

uint64_t sub_264743E78()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79268 = result;
  qword_27FF79270 = v5;
  return result;
}

uint64_t sub_264743FF0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79278 = result;
  qword_27FF79280 = v5;
  return result;
}

uint64_t sub_264744160()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF79288 = result;
  qword_27FF79290 = v5;
  return result;
}

uint64_t sub_2647442F8()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79298 = result;
  qword_27FF792A0 = v5;
  return result;
}

uint64_t sub_26474446C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF792A8 = result;
  qword_27FF792B0 = v5;
  return result;
}

uint64_t sub_264744610()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF792B8 = result;
  qword_27FF792C0 = v5;
  return result;
}

uint64_t sub_264744790()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF792C8 = result;
  qword_27FF792D0 = v5;
  return result;
}

uint64_t sub_2647449B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_264785F44();
  MEMORY[0x26673FC80](v3);
  result = sub_264785F94();
  *a1 = result;
  return result;
}

SafetyMonitorUI::MapAnnotationType_optional __swiftcall MapAnnotationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MapAnnotationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x74616E6974736564;
  v3 = 0x6563655274736F6DLL;
  v4 = 0x6574756F726E65;
  if (v1 != 4)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6C6E557473616CLL;
  if (v1 != 1)
  {
    v5 = 0x636F4C7472617473;
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

uint64_t sub_264744B54(uint64_t a1)
{
  sub_264785794();
}

void sub_264744C78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x74616E6974736564;
  v5 = 0xEA0000000000746ELL;
  v6 = 0x6563655274736F6DLL;
  v7 = 0x6574756F726E65;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x6F6C6E557473616CLL;
  v9 = 0xEA00000000006B63;
  if (v2 != 1)
  {
    v8 = 0x636F4C7472617473;
    v9 = 0xED00006E6F697461;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}