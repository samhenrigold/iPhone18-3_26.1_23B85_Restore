uint64_t sub_254322B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2543A26D8();
  sub_2543A2EB8();
  sub_2543A27B8();
  swift_getWitnessTable();
  sub_2543A29B8();
  return v4;
}

uint64_t sub_254322C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  v6[45] = *v5;
  return OUTLINED_FUNCTION_17_6(sub_254322C4C);
}

uint64_t sub_254322C4C()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 360);
  *(v0 + 288) = *(v0 + 352);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000025);
  v2 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v2, 0xE500000000000000);
  *(v0 + 368) = *(v1 + 80);
  v3 = *(v1 + 88);
  *(v0 + 376) = v3;
  v4 = OUTLINED_FUNCTION_58_0();
  *(v0 + 384) = type metadata accessor for ObservationManager.ObservationKey(v4, v5, v3, v6);
  OUTLINED_FUNCTION_3_15();
  *(v0 + 392) = swift_getWitnessTable();
  OUTLINED_FUNCTION_107_0();
  sub_2543A35D8();
  v7 = OUTLINED_FUNCTION_58_0();
  *(v0 + 400) = type metadata accessor for ObservationManager(v7, v8, v3, v9);
  *(v0 + 448) = sub_2542DF684() & 1;
  v10._countAndFlagsBits = OUTLINED_FUNCTION_107_0();
  Logging.ulog(_:extended:)(v10, v11);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 408) = v12;
  *v12 = v13;
  v12[1] = sub_254322DC0;
  v14 = *(v0 + 328);

  return sub_254321150(v0 + 96, v14);
}

uint64_t sub_254322DC0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v3);
}

void sub_254322EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  if (*(v20 + 120))
  {
    v21 = *(v20 + 448);
    v72 = *(v20 + 400);
    v73 = *(v20 + 368);
    v23 = *(v20 + 344);
    v22 = *(v20 + 352);
    v25 = *(v20 + 328);
    v24 = *(v20 + 336);
    v74 = *(v20 + 320);
    v75 = *(v20 + 376);
    sub_2542DA8C0((v20 + 96), v20 + 56);
    *(v20 + 304) = v22;
    OUTLINED_FUNCTION_33_1();
    sub_2543A3298();
    OUTLINED_FUNCTION_124_0();
    MEMORY[0x259C093D0](0xD000000000000028, 0x80000002543B90B0);
    __swift_project_boxed_opaque_existential_0((v20 + 56), *(v20 + 80));
    sub_2543A35D8();
    MEMORY[0x259C093D0](0x3D79656B202ELL, 0xE600000000000000);
    OUTLINED_FUNCTION_112_0();
    sub_2543A35D8();
    v26._countAndFlagsBits = a15;
    v26._object = a16;
    Logging.ulog(_:extended:)(v26, v21);

    sub_25432B3CC(v20 + 56, v20 + 16);
    v27 = sub_254323664(v73, v24, v75, v23);
    sub_254322888(v74, v25, v27, v24, v23);

    __swift_destroy_boxed_opaque_existential_0((v20 + 56));
    sub_25432B3CC(v20 + 16, v20 + 176);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
    v32 = OUTLINED_FUNCTION_11_10(v28, v29, v30, v31, &associated type descriptor for TransportObservationUpdate.InitialValue);
    v36 = OUTLINED_FUNCTION_11_10(v32, v33, v34, v35, &associated type descriptor for TransportObservationUpdate.UpdateValue);
    v40 = OUTLINED_FUNCTION_11_10(v36, v37, v38, v39, &associated type descriptor for TransportObservationUpdate.Target);
    v44 = OUTLINED_FUNCTION_11_10(v40, v41, v42, v43, &associated type descriptor for TransportObservationUpdate.Failure);
    *(v20 + 256) = v32;
    *(v20 + 264) = v36;
    *(v20 + 272) = v40;
    *(v20 + 280) = v44;
    OUTLINED_FUNCTION_1_22();
    ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
    if (OUTLINED_FUNCTION_117_0(ExtendedExistentialTypeMetadata_unique))
    {
      v46 = *(v20 + 312);
      __swift_destroy_boxed_opaque_existential_0((v20 + 16));
      sub_2542DA8C0((v20 + 216), v46);
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_85();

      v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, v72, v73, v74, v75, a15, a16, a17, a18, a19, a20);
    }

    else
    {
      OUTLINED_FUNCTION_33_1();
      sub_2543A3298();

      OUTLINED_FUNCTION_14_5();
      v76 = v59;
      v77 = v58;
      v60 = OUTLINED_FUNCTION_6_13();
      v62 = v61(v60);
      MEMORY[0x259C093D0](v62);

      OUTLINED_FUNCTION_24_3("Fatal error", v63, v64, v76, v77, "HomePodSettings/ObservationManager.swift");
      OUTLINED_FUNCTION_85();
    }
  }

  else
  {
    v47 = *(v20 + 448);
    v48 = *(v20 + 352);
    sub_25432AFA4(v20 + 96);
    *(v20 + 296) = v48;
    OUTLINED_FUNCTION_33_1();
    sub_2543A3298();
    OUTLINED_FUNCTION_124_0();
    MEMORY[0x259C093D0](0xD00000000000004FLL, 0x80000002543B8FF0);
    OUTLINED_FUNCTION_48_1();
    sub_2543A35D8();
    v49._countAndFlagsBits = a15;
    v49._object = a16;
    Logging.ulog(_:extended:)(v49, v47);

    sub_2543A2C88();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_45_0();
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_60_0();
      sub_25432B00C();
      v66 = v65;
    }

    else
    {

      v66 = MEMORY[0x277D84FA0];
    }

    *(v20 + 416) = v66;
    swift_getAssociatedConformanceWitness();
    sub_25435FF58();
    *(v20 + 424) = v67;
    *(v20 + 449) = v68;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v20 + 432) = v69;
    *v69 = v70;
    v69[1] = sub_254323348;
    OUTLINED_FUNCTION_85();

    sub_2543236EC();
  }
}

uint64_t sub_254323348()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
    v7 = sub_2543235F8;
  }

  else
  {
    sub_25432B39C(*(v3 + 424), *(v3 + 449) & 1);

    v7 = sub_254323470;
  }

  return MEMORY[0x2822009F8](v7);
}

void sub_254323470()
{
  OUTLINED_FUNCTION_46_0();
  sub_2542DA8C0((v0 + 136), v0 + 16);
  sub_25432B3CC(v0 + 16, v0 + 176);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  v5 = OUTLINED_FUNCTION_11_10(v1, v2, v3, v4, &associated type descriptor for TransportObservationUpdate.InitialValue);
  v9 = OUTLINED_FUNCTION_11_10(v5, v6, v7, v8, &associated type descriptor for TransportObservationUpdate.UpdateValue);
  v13 = OUTLINED_FUNCTION_11_10(v9, v10, v11, v12, &associated type descriptor for TransportObservationUpdate.Target);
  v17 = OUTLINED_FUNCTION_11_10(v13, v14, v15, v16, &associated type descriptor for TransportObservationUpdate.Failure);
  *(v0 + 256) = v5;
  *(v0 + 264) = v9;
  *(v0 + 272) = v13;
  *(v0 + 280) = v17;
  OUTLINED_FUNCTION_1_22();
  ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
  if (OUTLINED_FUNCTION_117_0(ExtendedExistentialTypeMetadata_unique))
  {
    v19 = *(v0 + 312);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_2542DA8C0((v0 + 216), v19);
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_139_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_144_0();

  OUTLINED_FUNCTION_14_5();
  v29 = v23;
  v30 = v22;
  v24 = OUTLINED_FUNCTION_6_13();
  v26 = v25(v24);
  MEMORY[0x259C093D0](v26);

  OUTLINED_FUNCTION_24_3("Fatal error", v27, v28, v29, v30, "HomePodSettings/ObservationManager.swift");
  OUTLINED_FUNCTION_139_0();
}

uint64_t sub_2543235F8()
{
  OUTLINED_FUNCTION_28();
  sub_25432B39C(*(v0 + 424), *(v0 + 449) & 1);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254323664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_2543A26F8();
}

uint64_t sub_2543236EC()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 57) = v3;
  *(v1 + 232) = v4;
  *(v1 + 240) = v5;
  *(v1 + 216) = v6;
  *(v1 + 224) = v7;
  *(v1 + 200) = v8;
  *(v1 + 208) = v9;
  OUTLINED_FUNCTION_15_4();
  *(v1 + 264) = *(v10 + 80);
  OUTLINED_FUNCTION_56_0();
  v12 = *(v11 + 88);
  *(v1 + 272) = v12;
  v15 = type metadata accessor for ObservationManager.ObservationKey(0, v13, v12, v14);
  *(v1 + 280) = v15;
  OUTLINED_FUNCTION_8(v15);
  *(v1 + 288) = v16;
  *(v1 + 296) = *(v17 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_146();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v18);
  *(v1 + 312) = OUTLINED_FUNCTION_146();
  v19 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_2543237FC()
{
  v57 = *(v0 + 272);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  *(v0 + 168) = *(v0 + 256);
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000003ELL);
  v3 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v3, 0xE600000000000000);
  OUTLINED_FUNCTION_55_1();
  v5 = v4(v1);
  MEMORY[0x259C093D0](v5);

  v6 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v6, 0xE500000000000000);
  OUTLINED_FUNCTION_3_15();
  *(v0 + 320) = swift_getWitnessTable();
  sub_2543A35D8();
  v7 = OUTLINED_FUNCTION_78_0();
  MEMORY[0x259C093D0](v7);
  *(v0 + 176) = v2;
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_45_0();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  v10 = OUTLINED_FUNCTION_64_1();
  *(v0 + 328) = type metadata accessor for ObservationManager(v10, v11, v57, v12);
  v13 = sub_2542DF684() & 1;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v14, v13);

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    _s16ObservationErrorOMa(0, *(v0 + 264), *(v0 + 272), v16);
    OUTLINED_FUNCTION_0_27();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_80_1(WitnessTable);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_127();

    __asm { BRAA            X1, X16 }
  }

  v17 = Strong;
  v52 = AssociatedConformanceWitness;
  v53 = AssociatedTypeWitness;
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);
  v21 = *(v0 + 288);
  v20 = *(v0 + 296);
  v22 = *(v0 + 280);
  v58 = *(v0 + 272);
  v23 = *(v0 + 240);
  v55 = *(v0 + 264);
  v56 = *(v0 + 248);
  v24 = *(v0 + 224);
  v54 = *(v0 + 208);
  v25 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v18, v26, v27, v25);
  OUTLINED_FUNCTION_112_0();
  v28();
  v29 = (*(v21 + 80) + 80) & ~*(v21 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v55;
  *(v30 + 5) = v23;
  *(v30 + 6) = v58;
  *(v30 + 7) = v56;
  *(v30 + 8) = v17;
  *(v30 + 9) = v54;
  (*(v21 + 32))(&v30[v29], v19, v22);
  *&v30[(v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;
  swift_unknownObjectRetain();
  sub_2543A2768();
  OUTLINED_FUNCTION_60_1();
  sub_25434E1A4();
  v32 = v31;
  *(v0 + 344) = v31;
  sub_2543A2C88();
  v36 = *(v0 + 272);
  v37 = *(v0 + 232);
  v38 = *(v0 + 216);
  *(v0 + 16) = v32;
  *(v0 + 56) = 0;
  LOBYTE(v20) = *(v0 + 57);
  *(v0 + 136) = type metadata accessor for ObserversCounter(0, v53, v52, v39);
  *(v0 + 144) = swift_getWitnessTable();
  *(v0 + 112) = v37;
  LOBYTE(v20) = v20 & 1;
  *(v0 + 120) = v20;

  sub_25432B54C(v37, v20);
  sub_254324594(v0 + 16, v0 + 112, v38, v40);
  v41 = OUTLINED_FUNCTION_91_0();
  *(v0 + 352) = type metadata accessor for ObservationManager.ObservationState(v41, v42, v36, v43);
  OUTLINED_FUNCTION_19_0();
  v45 = *(v44 + 8);
  *(v0 + 360) = v45;
  *(v0 + 368) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v46 = swift_task_alloc();
  *(v0 + 376) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *(v0 + 384) = v47;
  *v46 = v48;
  v46[1] = sub_254323D0C;
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_127();

  return MEMORY[0x282200430](v49);
}

uint64_t sub_254323D0C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254323E20()
{
  v13 = *(v0 + 360);
  v12 = *(v0 + 352);
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = swift_task_alloc();
  *v6 = v2;
  v6[1] = v4;
  v6[2] = v1;
  v6[3] = v3;
  swift_getKeyPath();

  sub_25432B3CC(v5, v0 + 64);
  *(v0 + 104) = 1;
  v7 = OUTLINED_FUNCTION_121_0();
  sub_2543224C8(v7, v8, v9);

  swift_unknownObjectRelease();
  v13(v0 + 64, v12);

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_254323F50()
{
  v1 = v0[49];
  v2 = v0[41];
  v16 = v0[33];
  v17 = v0[34];
  v3 = v0[27];
  v0[23] = v0[32];
  sub_2543A3298();
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000026);
  sub_2543A35D8();
  v4 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v4, 0xE700000000000000);
  v0[24] = v1;
  sub_2543A3358();
  v5 = v0[19];
  v6 = v0[20];
  v7 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(90, v5, v6, v7 & 1, v2, &off_286648A78);

  sub_2543248E4(v3, v8, v9, v10);
  _s16ObservationErrorOMa(0, v16, v17, v11);
  OUTLINED_FUNCTION_0_27();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_80_1(WitnessTable);
  *v13 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27();

  return v14();
}

uint64_t sub_25432411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[3] = v22;
  v9[4] = a9;
  v9[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[5] = AssociatedTypeWitness;
  v9[6] = *(AssociatedTypeWitness - 8);
  v9[7] = swift_task_alloc();
  v15 = swift_task_alloc();
  v9[8] = v15;
  v17 = *(type metadata accessor for ObservationManager.ObservationKey(0, a8, v23, v16) + 36);
  v20 = (*(v23 + 40) + **(v23 + 40));
  v18 = swift_task_alloc();
  v9[9] = v18;
  *v18 = v9;
  v18[1] = sub_25432432C;

  return v20(v15, a5, a6 + v17, a7, a7, v22, a9, a8);
}

uint64_t sub_25432432C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 80) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25432442C()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  (*(v3 + 16))(v0[7], v1, v2);
  OUTLINED_FUNCTION_48_1();
  v8 = sub_254365304(v5, v6, v7);
  OUTLINED_FUNCTION_48_1();
  v4[3] = type metadata accessor for TransportObservation(v9, v10, v11, v12);
  v4[4] = swift_getWitnessTable();
  *v4 = v8;
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_254324530()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254324594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 88);
  v11 = type metadata accessor for ObservationManager.ObservationKey(0, v9, v10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v25 = &v24 - v13;
  v15 = type metadata accessor for ObservationManager.ObservationState(0, v9, v10, v14);
  (*(*(v15 - 8) + 16))(v29, a1, v15);
  sub_25432B3CC(a2, &v30);
  v26[0] = v5;
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B8FA0);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  swift_getWitnessTable();
  sub_2543A35D8();
  v16 = v27;
  v17 = v28;
  v19 = type metadata accessor for ObservationManager(0, v9, v10, v18);
  v20 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(20, v16, v17, v20 & 1, v19, &off_286648A78);

  (*(v12 + 16))(v25, a3, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  (*(v22 + 16))(&v27, v29, TupleTypeMetadata2);
  swift_beginAccess();
  swift_getWitnessTable();
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  sub_254327D64(a3);
  return (*(v22 + 8))(v29, TupleTypeMetadata2);
}

uint64_t sub_2543248E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for ObservationManager.ObservationKey(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  swift_beginAccess();
  type metadata accessor for ObservationManager.ObservationState(255, v6, v7, v12);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_2543A27D8();

  v13 = *(&v26 + 1);
  v14 = sub_2543A30C8();
  (*(*(v14 - 8) + 8))(v25, v14);
  if (v13)
  {
    (*(v9 + 16))(v11, a1, v8);
    v27 = 0;
    v26 = 0u;
    memset(v25, 0, sizeof(v25));
    swift_beginAccess();
    sub_2543A27B8();
    sub_2543A27E8();
    swift_endAccess();
    v24 = v4;
    *&v25[0] = 0;
    *(&v25[0] + 1) = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001DLL, 0x80000002543B8D30);
    swift_getWitnessTable();
    sub_2543A35D8();
    v15 = v25[0];
    type metadata accessor for ObservationManager(0, v6, v7, v16);
    v17 = sub_2542DF684() & 1;
    Logging.ulog(_:extended:)(v15, v17);
  }

  else
  {
    v24 = v4;
    *&v25[0] = 0;
    *(&v25[0] + 1) = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000034, 0x80000002543B8CF0);
    swift_getWitnessTable();
    sub_2543A35D8();
    v18 = v25[0];
    v20 = type metadata accessor for ObservationManager(0, v6, v7, v19);
    v21 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, v18, *(&v18 + 1), v21 & 1, v20, &off_286648A78);
  }
}

uint64_t sub_254324CA8()
{
  OUTLINED_FUNCTION_46_0();
  v1[85] = v0;
  v1[84] = v2;
  v1[83] = v3;
  v1[82] = v4;
  v1[81] = v5;
  v47 = *v0;
  OUTLINED_FUNCTION_93_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[86] = AssociatedTypeWitness;
  v10 = OUTLINED_FUNCTION_29_2(AssociatedTypeWitness, v7, v8, v9, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Decodable);
  v14 = OUTLINED_FUNCTION_29_2(v10, v11, v12, v13, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Encodable);
  v18 = OUTLINED_FUNCTION_29_2(v14, v15, v16, v17, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Hashable);
  v1[68] = AssociatedTypeWitness;
  v1[69] = v10;
  v1[70] = v14;
  v1[71] = v18;
  updated = type metadata accessor for ObservationUpdateScope(0, (v1 + 68));
  v1[87] = updated;
  OUTLINED_FUNCTION_8(updated);
  v1[88] = v20;
  v1[89] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_111_0();
  v21 = swift_getAssociatedTypeWitness();
  v1[90] = v21;
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_111_0();
  v22 = swift_getAssociatedTypeWitness();
  v1[91] = v22;
  v26 = OUTLINED_FUNCTION_29_2(v22, v23, v24, v25, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.UpdateValue: Decodable);
  v30 = OUTLINED_FUNCTION_29_2(v26, v27, v28, v29, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.UpdateValue: Encodable);
  OUTLINED_FUNCTION_51_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_1();
  v32 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_1();
  v33 = swift_getAssociatedConformanceWitness();
  v1[13] = v21;
  v1[14] = v22;
  v1[15] = v26;
  v1[16] = v30;
  v1[17] = AssociatedConformanceWitness;
  v1[18] = v32;
  v1[19] = v33;
  v34 = type metadata accessor for UpdateResult(0, (v1 + 13));
  v1[92] = v34;
  OUTLINED_FUNCTION_8(v34);
  v1[93] = v35;
  v1[94] = OUTLINED_FUNCTION_146();
  v36 = *(v47 + 88);
  v1[95] = v36;
  v1[96] = *(v47 + 80);
  OUTLINED_FUNCTION_38_1();
  v37 = swift_getAssociatedTypeWitness();
  v1[97] = v37;
  OUTLINED_FUNCTION_8(v37);
  v1[98] = v38;
  v1[99] = OUTLINED_FUNCTION_146();
  v39 = OUTLINED_FUNCTION_45_0();
  v42 = type metadata accessor for ObservationManager.ObservationKey(v39, v40, v36, v41);
  v1[100] = v42;
  OUTLINED_FUNCTION_8(v42);
  v1[101] = v43;
  v1[102] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v44);
}

uint64_t sub_254324FDC()
{
  v82 = *(v0 + 800);
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 760);
  v75 = *(v0 + 768);
  v4 = *(v0 + 680);
  v77 = *(v0 + 672);
  v79 = *(v0 + 792);
  v5 = *(v0 + 664);
  v72 = *(v0 + 656);
  *(v0 + 632) = v4;
  OUTLINED_FUNCTION_94_0();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000025, 0x80000002543B8ED0);
  MEMORY[0x259C093D0](0x3D65746164707520, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x3D7265626D656D20, 0xE800000000000000);
  OUTLINED_FUNCTION_62_1();
  sub_2543A35C8();
  v6 = OUTLINED_FUNCTION_64_1();
  *(v0 + 824) = type metadata accessor for ObservationManager(v6, v7, v3, v8);
  *(v0 + 201) = sub_2542DF684() & 1;
  v9._countAndFlagsBits = OUTLINED_FUNCTION_46();
  Logging.ulog(_:extended:)(v9, v10);

  *(v0 + 832) = *(v77 + 8);
  OUTLINED_FUNCTION_55_1();
  *(v0 + 840) = v11;
  *(v0 + 848) = v12 & 0xFFFFFFFFFFFFLL | 0xDCA9000000000000;
  v11(v5);
  (*(v1 + 16))(v79, v72, v2);
  v13 = OUTLINED_FUNCTION_60_0();
  sub_25431D440(v13, v14, v79, v75, v3, v15);
  OUTLINED_FUNCTION_97(v4 + 112, v0 + 608);
  v17 = type metadata accessor for ObservationManager.ObservationState(255, v75, v3, v16);
  *(v0 + 856) = v17;
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_38_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61_1();
  sub_2543A27D8();

  if (!*(v0 + 88))
  {
    v39 = *(v0 + 816);
    v40 = *(v0 + 808);
    v41 = *(v0 + 800);
    v42 = *(v0 + 760);
    OUTLINED_FUNCTION_4_7();
    sub_2543A30C8();
    OUTLINED_FUNCTION_2_3();
    (*(v43 + 8))(v0 + 16);
    v44 = OUTLINED_FUNCTION_58_0();
    _s16ObservationErrorOMa(v44, v45, v42, v46);
    OUTLINED_FUNCTION_0_27();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_138_0(WitnessTable);
    (*(v40 + 16))(v48, v39, v41);
    OUTLINED_FUNCTION_51_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v49 = OUTLINED_FUNCTION_60_0();
    v50(v49);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_2();
  *(v0 + 864) = v19;
  v21 = *(v20 + 16);
  v21(v0 + 208, v0 + 16, v17);
  OUTLINED_FUNCTION_4_7();
  sub_2543A30C8();
  OUTLINED_FUNCTION_2_3();
  (*(v22 + 8))(v0 + 16);
  v23 = *(v0 + 224);
  *(v0 + 160) = *(v0 + 208);
  *(v0 + 176) = v23;
  *(v0 + 185) = *(v0 + 233);
  v21(v0 + 256, v0 + 160, v17);
  if (*(v0 + 296))
  {
    sub_2542DA8C0((v0 + 256), v0 + 304);
    OUTLINED_FUNCTION_89_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
    OUTLINED_FUNCTION_20_3();
    *(v0 + 576) = swift_getAssociatedTypeWitness();
    *(v0 + 584) = v82;
    *(v0 + 592) = v79;
    *(v0 + 600) = TupleTypeMetadata2;
    OUTLINED_FUNCTION_1_22();
    ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
    v25 = OUTLINED_FUNCTION_116_0(ExtendedExistentialTypeMetadata_unique);
    v81 = *(v0 + 808);
    v83 = *(v0 + 816);
    v80 = *(v0 + 800);
    if (v25)
    {
      v74 = *(v0 + 864);
      v76 = *(v0 + 856);
      v29 = *(v0 + 201);
      v30 = *(v0 + 752);
      v71 = *(v0 + 744);
      v73 = *(v0 + 736);
      v31 = *(v0 + 712);
      v69 = *(v0 + 704);
      v70 = *(v0 + 696);
      v32 = *(v0 + 680);
      v33 = *(v0 + 672);
      v34 = *(v0 + 664);
      sub_2542DA8C0((v0 + 424), v0 + 344);
      *(v0 + 640) = v32;
      OUTLINED_FUNCTION_94_0();
      sub_2543A3298();
      OUTLINED_FUNCTION_28_2();
      MEMORY[0x259C093D0](0xD000000000000022);
      sub_2543A35C8();
      Logging.ulog(_:extended:)(v84, v29);

      v35 = *(v0 + 368);
      v36 = *(v0 + 376);
      __swift_project_boxed_opaque_existential_0((v0 + 344), v35);
      (*(v33 + 136))(v34, v33);
      (*(v33 + 144))(v34, v33);
      v37 = OUTLINED_FUNCTION_62_1();
      sub_25430CDC0(v37, v38, v35, v36);
      (*(v69 + 8))(v31, v70);
      (*(v71 + 8))(v30, v73);
      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      (*(v74 + 8))(v0 + 160, v76);
      (*(v81 + 8))(v83, v80);
      __swift_destroy_boxed_opaque_existential_0((v0 + 344));

      OUTLINED_FUNCTION_25();
      goto LABEL_11;
    }

    v55 = *(v0 + 864);
    v78 = *(v0 + 856);
    v56 = *(v0 + 840);
    v57 = *(v0 + 832);
    OUTLINED_FUNCTION_143_0(v25, v26, v27, v28);
    OUTLINED_FUNCTION_0_27();
    v58 = swift_getWitnessTable();
    OUTLINED_FUNCTION_138_0(v58);
    v60 = v59;
    sub_25432B3CC(v0 + 304, v0 + 464);
    __swift_project_boxed_opaque_existential_0((v0 + 464), *(v0 + 488));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    v61 = sub_2543A37B8();
    v63 = v62;
    v64 = OUTLINED_FUNCTION_59_1();
    v65 = v56(v64, v57);
    MEMORY[0x259C093D0](v65);

    v60->_countAndFlagsBits = v61;
    v60->_object = v63;
    v60[1] = v84;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v55 + 8))(v0 + 160, v78);
    (*(v81 + 8))(v83, v80);
LABEL_10:
    OUTLINED_FUNCTION_142_0();

    OUTLINED_FUNCTION_27();
LABEL_11:
    OUTLINED_FUNCTION_130();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 872) = *(v0 + 256);
  v51 = swift_task_alloc();
  *(v0 + 880) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *v51 = v52;
  v51[1] = sub_2543257F0;
  OUTLINED_FUNCTION_130();

  return MEMORY[0x282200430](v53);
}

uint64_t sub_2543257F0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 888) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

void sub_254325904()
{

  sub_2542DA8C0((v0 + 504), v0 + 304);
  OUTLINED_FUNCTION_89_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  OUTLINED_FUNCTION_20_3();
  *(v0 + 576) = swift_getAssociatedTypeWitness();
  *(v0 + 584) = v2;
  *(v0 + 592) = v3;
  *(v0 + 600) = v1;
  OUTLINED_FUNCTION_1_22();
  ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
  v5 = OUTLINED_FUNCTION_116_0(ExtendedExistentialTypeMetadata_unique);
  v39 = *(v0 + 856);
  v40 = *(v0 + 864);
  if (v5)
  {
    v9 = *(v0 + 201);
    v35 = *(v0 + 800);
    v36 = *(v0 + 816);
    v10 = *(v0 + 752);
    v33 = *(v0 + 736);
    v34 = *(v0 + 808);
    v11 = *(v0 + 712);
    v30 = *(v0 + 704);
    v31 = *(v0 + 696);
    v32 = *(v0 + 744);
    v12 = *(v0 + 680);
    v13 = *(v0 + 672);
    v14 = *(v0 + 664);
    sub_2542DA8C0((v0 + 424), v0 + 344);
    *(v0 + 640) = v12;
    OUTLINED_FUNCTION_94_0();
    sub_2543A3298();
    OUTLINED_FUNCTION_28_2();
    MEMORY[0x259C093D0](0xD000000000000022);
    sub_2543A35C8();
    Logging.ulog(_:extended:)(v41, v9);

    v15 = *(v0 + 368);
    v16 = *(v0 + 376);
    __swift_project_boxed_opaque_existential_0((v0 + 344), v15);
    (*(v13 + 136))(v14, v13);
    (*(v13 + 144))(v14, v13);
    sub_25430CDC0(v10, v11, v15, v16);
    (*(v30 + 8))(v11, v31);
    (*(v32 + 8))(v10, v33);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v40 + 8))(v0 + 160, v39);
    (*(v34 + 8))(v36, v35);
    __swift_destroy_boxed_opaque_existential_0((v0 + 344));

    OUTLINED_FUNCTION_25();
  }

  else
  {
    v17 = *(v0 + 840);
    v18 = *(v0 + 832);
    v38 = *(v0 + 816);
    v19 = *(v0 + 808);
    v37 = *(v0 + 800);
    OUTLINED_FUNCTION_143_0(v5, v6, v7, v8);
    OUTLINED_FUNCTION_0_27();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_50_1(WitnessTable);
    v22 = v21;
    sub_25432B3CC(v0 + 304, v0 + 464);
    __swift_project_boxed_opaque_existential_0((v0 + 464), *(v0 + 488));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    v23 = sub_2543A37B8();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_59_1();
    v27 = v17(v26, v18);
    MEMORY[0x259C093D0](v27);

    v22->_countAndFlagsBits = v23;
    v22->_object = v25;
    v22[1] = v41;
    OUTLINED_FUNCTION_121_0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));
    (*(v40 + 8))(v0 + 160, v39);
    (*(v19 + 8))(v38, v37);
    OUTLINED_FUNCTION_142_0();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_130();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_254325CDC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);

  (*(v1 + 8))(v0 + 160, v2);
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_254325DAC()
{
  OUTLINED_FUNCTION_88();
  v40 = v1;
  OUTLINED_FUNCTION_15_4();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_56_0();
  v5 = *(v4 + 88);
  v6 = OUTLINED_FUNCTION_58_0();
  v38 = v3;
  v39 = v5;
  v9 = type metadata accessor for ObservationManager.ObservationKey(v6, v7, v5, v8);
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  v37 = *(v12 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v46 = v0;
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001FLL);
  v22 = OUTLINED_FUNCTION_15_6();
  MEMORY[0x259C093D0](v22, 0xEA00000000003D44);
  OUTLINED_FUNCTION_57_0();
  swift_checkMetadataState();
  sub_2543A32A8();
  sub_2543A35C8();
  (*(v18 + 8))(v21, AssociatedTypeWitness);
  v24 = v38;
  v23 = v39;
  type metadata accessor for ObservationManager(0, v38, v39, v25);
  sub_2542DF684();
  v26._countAndFlagsBits = OUTLINED_FUNCTION_62_1();
  Logging.ulog(_:extended:)(v26, v27);

  OUTLINED_FUNCTION_97(v0 + 112, v45);
  type metadata accessor for ObservationManager.ObservationState(255, v24, v23, v28);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_58_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_111_0();
  v29 = sub_2543A2768();

  v46 = v29;
  v41 = v24;
  v42 = v23;
  v43 = v40;
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_111_0();
  sub_2543A2758();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  v30 = sub_2543A29A8();
  v31 = sub_2543A2A48();
  v46 = v31;
  OUTLINED_FUNCTION_4_1();
  if (v31 == sub_2543A2AC8())
  {
LABEL_2:

    OUTLINED_FUNCTION_86();
    return;
  }

  while (1)
  {
    OUTLINED_FUNCTION_4_1();
    v32 = sub_2543A2AA8();
    sub_2543A2A68();
    if ((v32 & 1) == 0)
    {
      break;
    }

    (*(v11 + 16))(v15, v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, v9);
LABEL_5:
    sub_2543A2B28();
    sub_2543262C4(v15);
    v33 = OUTLINED_FUNCTION_114_0();
    v34(v33);
    OUTLINED_FUNCTION_4_1();
    v35 = sub_2543A2AC8();
    v31 = v46;
    if (v46 == v35)
    {
      goto LABEL_2;
    }
  }

  v36 = sub_2543A32B8();
  if (v37 == 8)
  {
    v44 = v36;
    (*(v11 + 16))(v15, &v44, v9);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_254326208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ObservationManager.ObservationKey(0, a3, a4, v6);
  swift_getAssociatedConformanceWitness();
  return sub_2543A2848() & 1;
}

uint64_t sub_2543262C4(uint64_t a1)
{
  v3 = *v1;
  v33[0]._countAndFlagsBits = 0;
  v33[0]._object = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000019);
  v4 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v4, 0xE500000000000000);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for ObservationManager.ObservationKey(v7, v8, v6, v9);
  OUTLINED_FUNCTION_3_15();
  swift_getWitnessTable();
  sub_2543A35D8();
  v10 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for ObservationManager(v10, v11, v6, v12);
  v32 = sub_2542DF684();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v13, v32 & 1);

  OUTLINED_FUNCTION_97((v1 + 14), v36);
  v15 = type metadata accessor for ObservationManager.ObservationState(255, v5, v6, v14);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_57_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_121_0();
  sub_2543A27D8();

  if (v35)
  {
    OUTLINED_FUNCTION_0_2();
    v17 = v16;
    v19 = *(v18 + 16);
    v19(&v37, v33, v15);
    OUTLINED_FUNCTION_38_1();
    sub_2543A30C8();
    OUTLINED_FUNCTION_2_3();
    (*(v20 + 8))(v33);
    v39 = v37;
    v40[0] = *v38;
    *(v40 + 9) = *&v38[9];
    v19(v33, &v39, v15);
    if (v34)
    {
      sub_2542DA8C0(&v33[0]._countAndFlagsBits, &v37);
      sub_2543A3298();
      OUTLINED_FUNCTION_131_0();
      MEMORY[0x259C093D0](0xD00000000000001DLL, 0x80000002543B8E60);
      __swift_project_boxed_opaque_existential_0(&v37, *&v38[8]);
      sub_2543A35D8();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      Logging.ulog(_:extended:)(v21, v32 & 1);

      v22 = *&v38[16];
      __swift_project_boxed_opaque_existential_0(&v37, *&v38[8]);
      OUTLINED_FUNCTION_54_1();
      sub_254326754(v23, v24, v25, v22);
      __swift_destroy_boxed_opaque_existential_0(&v37);
    }

    else
    {
      *&v37 = v1;
      v31._countAndFlagsBits = 0xD000000000000027;
      v31._object = 0x80000002543B8E80;
      Logging.ulog(_:extended:)(v31, v32 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
      sub_2543A2C58();
    }

    sub_2543248E4(a1, v26, v27, v28);
    return (*(v17 + 8))(&v39, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_1();
    sub_2543A30C8();
    OUTLINED_FUNCTION_2_3();
    (*(v29 + 8))(v33);
    *&v39 = v1;
    OUTLINED_FUNCTION_33_1();
    sub_2543A3298();
    OUTLINED_FUNCTION_124_0();
    MEMORY[0x259C093D0](0xD00000000000003ALL, 0x80000002543B8E20);
    sub_2543A35D8();
    Logging.ulog(_:extended:)(v33[0], v32 & 1);
  }
}

uint64_t sub_254326754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_2543A1FF8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(a4 + 64))(a3, a4, v9);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, AssociatedTypeWitness);
  sub_2543A2088();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2543268EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[40] = a5;
  v6[41] = v5;
  v6[38] = a3;
  v6[39] = a4;
  v6[36] = a1;
  v6[37] = a2;
  v6[42] = *v5;
  return OUTLINED_FUNCTION_17_6(sub_254326938);
}

uint64_t sub_254326938()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 336);
  *(v0 + 248) = *(v0 + 328);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000035);
  v2 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v2, 0xE500000000000000);
  *(v0 + 344) = *(v1 + 80);
  v3 = *(v1 + 88);
  *(v0 + 352) = v3;
  v4 = OUTLINED_FUNCTION_4_7();
  *(v0 + 360) = type metadata accessor for ObservationManager.ObservationKey(v4, v5, v3, v6);
  OUTLINED_FUNCTION_3_15();
  *(v0 + 368) = swift_getWitnessTable();
  sub_2543A35D8();
  v7 = OUTLINED_FUNCTION_4_7();
  *(v0 + 376) = type metadata accessor for ObservationManager(v7, v8, v3, v9);
  v10 = sub_2542DF684();
  *(v0 + 424) = v10 & 1;
  OUTLINED_FUNCTION_26_2(v10, v11, v10 & 1);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 384) = v12;
  *v12 = v13;
  v12[1] = sub_254326AAC;
  v14 = *(v0 + 296);

  return sub_254321150(v0 + 104, v14);
}

uint64_t sub_254326AAC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  sub_25432AFA4(v2 + 104);

  return MEMORY[0x2822009F8](sub_254326BAC);
}

uint64_t sub_254326BAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, char *extended, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  sub_2543A2C88();
  v25 = sub_2543272FC(*(v24 + 288), *(v24 + 296), *(v24 + 304), *(v24 + 312), *(v24 + 320));
  v27 = v26;
  *(v24 + 392) = v26;
  if ((v25 & 1) == 0)
  {
    v54 = *(v24 + 424);
    v55 = *(v24 + 328);

    *(v24 + 256) = v55;
    v56._countAndFlagsBits = 0xD00000000000003ALL;
    v56._object = 0x80000002543B8C30;
    Logging.ulog(_:extended:)(v56, v54);
LABEL_11:
    OUTLINED_FUNCTION_25();
    goto LABEL_12;
  }

  v28 = *(v24 + 352);
  OUTLINED_FUNCTION_97(*(v24 + 328) + 112, v24 + 224);
  v29 = OUTLINED_FUNCTION_93_0();
  type metadata accessor for ObservationManager.ObservationState(v29, v30, v28, v31);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_58_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65();
  sub_2543A27D8();

  if (!*(v24 + 88))
  {

    OUTLINED_FUNCTION_58_0();
    sub_2543A30C8();
    OUTLINED_FUNCTION_2_3();
    (*(v57 + 8))(v24 + 16);
    goto LABEL_11;
  }

  LODWORD(extended) = *(v24 + 424);
  v32 = *(v24 + 328);
  sub_25432B3CC(v24 + 64, v24 + 184);
  OUTLINED_FUNCTION_58_0();
  sub_2543A30C8();
  OUTLINED_FUNCTION_2_3();
  (*(v33 + 8))(v24 + 16);
  sub_2542DA8C0((v24 + 184), v24 + 144);
  *(v24 + 264) = v32;
  a11 = 0;
  a12 = 0xE000000000000000;
  sub_2543A3298();
  a9 = "Won't stop any observation";
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x259C093D0](0xD00000000000001ALL);
  OUTLINED_FUNCTION_112_0();
  sub_2543A35D8();
  v34 = OUTLINED_FUNCTION_78_0();
  MEMORY[0x259C093D0](v34);
  *(v24 + 272) = v27;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_65();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_58_0();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x259C093D0]();
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v35, extended);

  __swift_project_boxed_opaque_existential_0((v24 + 144), *(v24 + 168));
  if (!sub_25435FF60())
  {
    v36 = *(v24 + 424);
    v37 = *(v24 + 296);
    *(v24 + 280) = *(v24 + 328);
    a11 = 0;
    a12 = 0xE000000000000000;
    sub_2543A3298();
    OUTLINED_FUNCTION_133_0();
    MEMORY[0x259C093D0](0xD00000000000001ALL);
    OUTLINED_FUNCTION_112_0();
    sub_2543A35D8();
    OUTLINED_FUNCTION_133_0();
    MEMORY[0x259C093D0]();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    Logging.ulog(_:extended:)(v38, v36);

    sub_2543248E4(v37, v39, v40, v41);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v24 + 400) = Strong;
  if (Strong)
  {
    v73 = (*(v24 + 352) + 48);
    extendeda = (*v73 + **v73);
    v43 = swift_task_alloc();
    *(v24 + 408) = v43;
    *v43 = v24;
    v43[1] = sub_2543270FC;
    OUTLINED_FUNCTION_48();

    return v51(v44, v45, v46, v47, v48, v49, v50, v51, v73, extendeda, 0, 0xE000000000000000, a13, a14, a15, a16);
  }

  v66 = *(v24 + 352);

  v67 = OUTLINED_FUNCTION_58_0();
  _s16ObservationErrorOMa(v67, v68, v66, v69);
  OUTLINED_FUNCTION_0_27();
  WitnessTable = swift_getWitnessTable();
  v71 = OUTLINED_FUNCTION_50_1(WitnessTable);
  OUTLINED_FUNCTION_95_0(v71, v72);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v24 + 144));
  OUTLINED_FUNCTION_27();
LABEL_12:
  OUTLINED_FUNCTION_48();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, extended, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2543270FC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 416) = v0;

  if (v0)
  {
    v4 = sub_254327298;
  }

  else
  {
    v4 = sub_254327238;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254327238()
{
  OUTLINED_FUNCTION_28();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_254327298()
{
  OUTLINED_FUNCTION_28();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_2543272FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000033, 0x80000002543B8D50);
  MEMORY[0x259C093D0](0x3D6570797420, 0xE600000000000000);
  v11 = sub_2543A37B8();
  MEMORY[0x259C093D0](v11);

  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  v12 = *(v10 + 80);
  v13 = *(v10 + 88);
  type metadata accessor for ObservationManager.ObservationKey(0, v12, v13, v14);
  swift_getWitnessTable();
  sub_2543A35D8();
  MEMORY[0x259C093D0](0x5574656772617420, 0xEE003D6574616470);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2543A2EB8();
  swift_getWitnessTable();
  sub_2543A35D8();
  type metadata accessor for ObservationManager(0, v12, v13, v15);
  v16 = sub_2542DF684() & 1;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v17, v16);

  return sub_254328110(a1, a2, sub_25432865C, 0, a3, a4, a5) & 1;
}

uint64_t sub_254327598()
{

  MEMORY[0x259C0AE60](v0 + 120);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2543275C8()
{
  sub_254327598();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25432760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254327668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2543276A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2543276F0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_254327730(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2543277C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v9 + 16) & ~v9) + *(*(AssociatedTypeWitness - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((a1 + v9 + 16) & ~v9, v7, AssociatedTypeWitness);
      }

      else
      {
        v16 = *(a1 + 1);
        if (v16 >= 0xFFFFFFFF)
        {
          LODWORD(v16) = -1;
        }

        return (v16 + 1);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2543279A0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v13 = 8 * v12;
  if (a3 <= v10)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((a3 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v10 < a2)
  {
    v15 = ~v10 + a2;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v12)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          *(a1 + 2) = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v12) = v16;
        return;
      case 2:
        *(a1 + v12) = v16;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v12) = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x254327C10);
    case 4:
      *(a1 + v12) = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v9 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((a1 + v11 + 16) & ~v11, a2, v9, AssociatedTypeWitness);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_254327C6C()
{
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_54_1();
  type metadata accessor for ObservationManager.ObservationKey(v1, v2, v3, v4);
  OUTLINED_FUNCTION_54_1();
  type metadata accessor for ObservationManager.ObservationState(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_92_0();
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  *(v0 + 112) = sub_2543A2748();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_254327D64(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for ObservationManager.ObservationKey(0, v3, v4, v5);
  type metadata accessor for ObservationManager.ObservationState(255, v3, v4, v6);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_2543A27D8();

  if (v20[9])
  {
    memcpy(__dst, v20, 0x58uLL);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B8DE0);
    swift_getWitnessTable();
    sub_2543A35D8();
    MEMORY[0x259C093D0](0x3A65746174530A3ALL, 0xE900000000000020);
    sub_2543A35C8();
    MEMORY[0x259C093D0](0x203A746E756F430ALL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_0(&__dst[6], __dst[9]);
    sub_2543A35D8();
    v8 = v20[0];
    v9 = v20[1];
    v20[0] = v1;
    type metadata accessor for ObservationManager(0, v3, v4, v10);
    v11 = sub_2542DF684() & 1;
    v12._countAndFlagsBits = v8;
    v12._object = v9;
    Logging.ulog(_:extended:)(v12, v11);

    return (*(*(TupleTypeMetadata2 - 8) + 8))(__dst, TupleTypeMetadata2);
  }

  else
  {
    v14 = sub_2543A30C8();
    (*(*(v14 - 8) + 8))(v20, v14);
    v20[0] = v1;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000016, 0x80000002543B8DC0);
    swift_getWitnessTable();
    sub_2543A35D8();
    v15 = __dst[0];
    v16 = __dst[1];
    v18 = type metadata accessor for ObservationManager(0, v3, v4, v17);
    v19 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, v15, v16, v19 & 1, v18, &off_286648A78);
  }
}

uint64_t sub_254328110(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  swift_beginAccess();
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);
  type metadata accessor for ObservationManager.ObservationKey(0, v10, v11, v12);
  v14 = type metadata accessor for ObservationManager.ObservationState(255, v10, v11, v13);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_2543A27D8();

  if (!__src[9])
  {
    v26 = sub_2543A30C8();
    (*(*(v26 - 8) + 8))(__src, v26);
    swift_getAssociatedTypeWitness();
    sub_2543A2A88();
    if (!sub_2543A2AC8())
    {

      return 0;
    }

    swift_getAssociatedConformanceWitness();
    sub_25432B00C();
    return 0;
  }

  v28 = a2;
  memcpy(__dst, __src, sizeof(__dst));
  v29 = *(TupleTypeMetadata2 - 8);
  (*(v29 + 16))(__src, __dst, TupleTypeMetadata2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for ObserversCounter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  if (!swift_dynamicCast())
  {
    (*(*(v14 - 8) + 8))(__src, v14);
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      sub_25432B00C();
      (*(v29 + 8))(__dst, TupleTypeMetadata2);
    }

    else
    {
      (*(v29 + 8))(__dst, TupleTypeMetadata2);
    }

    return 0;
  }

  (*(*(v14 - 8) + 8))(__src, v14);
  v20 = sub_2543600A0(a3, a4, a5, v33, v34, AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = v21;
  v23 = (v21 >> 8) & 1;
  v24 = sub_25432B39C(v33, v34);
  MEMORY[0x28223BE20](v24);
  KeyPath = swift_getKeyPath();
  __src[3] = v19;
  __src[4] = swift_getWitnessTable();
  __src[0] = v20;
  LOBYTE(__src[1]) = v22 & 1;
  sub_2543224C8(v28, KeyPath, __src);

  (*(v29 + 8))(__dst, TupleTypeMetadata2);
  __swift_destroy_boxed_opaque_existential_0(__src);
  return v23;
}

uint64_t sub_25432864C(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25432865C(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25432866C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  OUTLINED_FUNCTION_15_4();
  v1[9] = *(v7 + 88);
  OUTLINED_FUNCTION_56_0();
  v1[10] = *(v8 + 80);
  v1[11] = OUTLINED_FUNCTION_11_10(v9, v10, v11, v12, &unk_2543BD2FC);
  OUTLINED_FUNCTION_41_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  v1[12] = v14;
  v16 = OUTLINED_FUNCTION_146_0(AssociatedConformanceWitness, v14, v15, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  v1[13] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[14] = v17;
  v1[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_2543288F0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_2543289EC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[4] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[11] = *(v8 + 88);
  OUTLINED_FUNCTION_56_0();
  v1[12] = *(v9 + 80);
  v1[13] = OUTLINED_FUNCTION_11_10(v10, v11, v12, v13, &unk_2543BD2FC);
  OUTLINED_FUNCTION_41_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 8);
  v1[14] = v15;
  v17 = OUTLINED_FUNCTION_146_0(AssociatedConformanceWitness, v15, v16, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  v1[15] = v17;
  OUTLINED_FUNCTION_8(v17);
  v1[16] = v18;
  v1[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_254328B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  v43 = v20[11];
  v44 = v20[12];
  v46 = v20[8];
  v47 = v20[9];
  v45 = v20[7];
  v20[2] = v20[10];
  OUTLINED_FUNCTION_33_1();
  sub_2543A3298();
  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000028);
  v21 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v21, 0xE600000000000000);
  v22 = sub_2543A37B8();
  MEMORY[0x259C093D0](v22);

  v23 = OUTLINED_FUNCTION_15_6();
  MEMORY[0x259C093D0](v23, 0xEA00000000003D44);
  OUTLINED_FUNCTION_57_0();
  swift_checkMetadataState();
  sub_2543A32A8();
  OUTLINED_FUNCTION_122_0();
  sub_2543A35C8();
  v24 = OUTLINED_FUNCTION_122_0();
  v25(v24);
  type metadata accessor for ObservationManager(0, v44, v43, v26);
  sub_2542DF684();
  v27._countAndFlagsBits = OUTLINED_FUNCTION_60_0();
  Logging.ulog(_:extended:)(v27, v28);

  v20[3] = v45;
  OUTLINED_FUNCTION_41_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48_1();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_4_7();
  sub_2543A2EB8();
  swift_getWitnessTable();
  if (sub_254372EE4())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v20[18] = v30;
    *v30 = v31;
    v30[1] = sub_254328DD8;
    OUTLINED_FUNCTION_85();

    return sub_25431D6A4();
  }

  else
  {
    _s16ObservationErrorOMa(0, v20[12], v20[11], v29);
    OUTLINED_FUNCTION_0_27();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_80_1(WitnessTable);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_85();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v43, v44, v45, v46, v47, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_254328DD8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_167();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_254328EDC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v7);
  v1[9] = OUTLINED_FUNCTION_146();
  v1[10] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58_0();
  v8 = sub_2543A2BF8();
  v1[11] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v10 = sub_2543A2C28();
  v1[14] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[15] = v11;
  v1[16] = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_147_0();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_58_0();
  v13 = sub_2543A2D78();
  v1[19] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[20] = v14;
  v1[21] = *(v15 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_69_1();
  v1[24] = *(v16 + 88);
  OUTLINED_FUNCTION_69_1();
  v1[25] = *(v17 + 80);
  OUTLINED_FUNCTION_54_1();
  v1[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_61_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 8);
  v1[27] = v19;
  v21 = OUTLINED_FUNCTION_146_0(AssociatedConformanceWitness, v19, v20, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  v1[28] = v21;
  OUTLINED_FUNCTION_8(v21);
  v1[29] = v22;
  v1[30] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v23);
}

uint64_t sub_254329300()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254329414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = v5[30];
  v92 = v5[24];
  v65 = v5[19];
  v69 = v5[22];
  v73 = v5[17];
  v79 = v5[21];
  v81 = v5[16];
  v57 = v5[14];
  v61 = v5[15];
  v6 = v5[12];
  v7 = v5[13];
  v8 = v5[11];
  v9 = v5[9];
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_84_0();
  (*(v6 + 8))(v7, v8);
  v10 = sub_2543A2BB8();
  v13 = OUTLINED_FUNCTION_120_0(v9, v11, v12, v10);
  v21 = OUTLINED_FUNCTION_74_0(v13, v14, v15, v16, v17, v18, v19, v20, v57, v61, v65, v69);
  v23 = v22(v21);
  v31 = OUTLINED_FUNCTION_76_1(v23, v24, v25, v26, v27, v28, v29, v30, v58, v62, v66, v70, v73);
  v32(v31);
  OUTLINED_FUNCTION_53_1();
  v33 = swift_allocObject();
  v41 = OUTLINED_FUNCTION_45_1(v33, v34, v35, v36, v37, v38, v39, v40, v59, v63, v67, v71, v74, v76, v9, v79, v81, v83, v85, v88, v90, v92);
  v42(v41);
  v43 = OUTLINED_FUNCTION_72_1();
  v44(v43);
  OUTLINED_FUNCTION_60_1();
  sub_25434DFA4();
  OUTLINED_FUNCTION_115_0();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_82_1(v45, v46, v47, v48, v49, v50, v51, v52, v60, v64, v68, v72, v75, v77, v78, v80, v82, v84, v86, v89, v91, v93);
  sub_2543A2BE8();
  (*(v9 + 8))(v87, v6 + 8);
  v53 = OUTLINED_FUNCTION_46();
  v54(v53);

  OUTLINED_FUNCTION_25();

  return v55();
}

void sub_254329630()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_195();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2543296D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = sub_2543A2BF8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_254329750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[5] = AssociatedTypeWitness;
  v7[6] = *(AssociatedTypeWitness - 8);
  v7[7] = swift_task_alloc();
  v9 = sub_2543A2BD8();
  v7[8] = v9;
  v7[9] = *(v9 - 8);
  v7[10] = swift_task_alloc();
  sub_2543A30C8();
  v7[11] = swift_task_alloc();
  v7[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v10 = sub_2543A2D68();
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254329948);
}

uint64_t sub_254329948()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_128_0();
  sub_2543A2D78();
  sub_2543A2D48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_9(v1);

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_2543299E8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_254329AE4()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_150_0();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_73_1();
    v5(v4);
    OUTLINED_FUNCTION_64_1();
    sub_2543A2C28();
    sub_2543A2C18();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_181();

    __asm { BRAA            X1, X16 }
  }

  v8 = OUTLINED_FUNCTION_67_1();
  v9(v8);
  OUTLINED_FUNCTION_64_1();
  sub_2543A2C28();
  sub_2543A2C08();
  (*(v2 + 8))(v0, v1);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_30_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8_9(v11);
  OUTLINED_FUNCTION_181();

  return MEMORY[0x2822005A8](v13);
}

uint64_t sub_254329C2C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[3] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v8);
  v1[10] = OUTLINED_FUNCTION_146();
  v1[11] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_58_0();
  v9 = sub_2543A2BF8();
  v1[12] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v11 = sub_2543A2C28();
  v1[15] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[16] = v12;
  v1[17] = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_147_0();
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_58_0();
  v14 = sub_2543A2D78();
  v1[20] = v14;
  OUTLINED_FUNCTION_8(v14);
  v1[21] = v15;
  v1[22] = *(v16 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_69_1();
  v1[25] = *(v17 + 88);
  OUTLINED_FUNCTION_69_1();
  v1[26] = *(v18 + 80);
  OUTLINED_FUNCTION_54_1();
  v1[27] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_61_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 8);
  v1[28] = v20;
  v22 = OUTLINED_FUNCTION_146_0(AssociatedConformanceWitness, v20, v21, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  v1[29] = v22;
  OUTLINED_FUNCTION_8(v22);
  v1[30] = v23;
  v1[31] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v24);
}

uint64_t sub_25432A054()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25432A168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = v5[31];
  v92 = v5[25];
  v65 = v5[20];
  v69 = v5[23];
  v73 = v5[18];
  v79 = v5[22];
  v81 = v5[17];
  v57 = v5[15];
  v61 = v5[16];
  v6 = v5[13];
  v7 = v5[14];
  v8 = v5[12];
  v9 = v5[10];
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_84_0();
  (*(v6 + 8))(v7, v8);
  v10 = sub_2543A2BB8();
  v13 = OUTLINED_FUNCTION_120_0(v9, v11, v12, v10);
  v21 = OUTLINED_FUNCTION_74_0(v13, v14, v15, v16, v17, v18, v19, v20, v57, v61, v65, v69);
  v23 = v22(v21);
  v31 = OUTLINED_FUNCTION_76_1(v23, v24, v25, v26, v27, v28, v29, v30, v58, v62, v66, v70, v73);
  v32(v31);
  OUTLINED_FUNCTION_53_1();
  v33 = swift_allocObject();
  v41 = OUTLINED_FUNCTION_45_1(v33, v34, v35, v36, v37, v38, v39, v40, v59, v63, v67, v71, v74, v76, v9, v79, v81, v83, v85, v88, v90, v92);
  v42(v41);
  v43 = OUTLINED_FUNCTION_72_1();
  v44(v43);
  OUTLINED_FUNCTION_60_1();
  sub_25434DFA4();
  OUTLINED_FUNCTION_115_0();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_82_1(v45, v46, v47, v48, v49, v50, v51, v52, v60, v64, v68, v72, v75, v77, v78, v80, v82, v84, v86, v89, v91, v93);
  sub_2543A2BE8();
  (*(v9 + 8))(v87, v6 + 8);
  v53 = OUTLINED_FUNCTION_46();
  v54(v53);

  OUTLINED_FUNCTION_25();

  return v55();
}

void sub_25432A384()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_195();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_25432A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[5] = AssociatedTypeWitness;
  v7[6] = *(AssociatedTypeWitness - 8);
  v7[7] = swift_task_alloc();
  v9 = sub_2543A2BD8();
  v7[8] = v9;
  v7[9] = *(v9 - 8);
  v7[10] = swift_task_alloc();
  sub_2543A30C8();
  v7[11] = swift_task_alloc();
  v7[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v10 = sub_2543A2D68();
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25432A624);
}

uint64_t sub_25432A624()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_128_0();
  sub_2543A2D78();
  sub_2543A2D48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_9(v1);

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_25432A6C4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_25432A7C0()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_150_0();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_73_1();
    v5(v4);
    OUTLINED_FUNCTION_64_1();
    sub_2543A2C28();
    sub_2543A2C18();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_181();

    __asm { BRAA            X1, X16 }
  }

  v8 = OUTLINED_FUNCTION_67_1();
  v9(v8);
  OUTLINED_FUNCTION_64_1();
  sub_2543A2C28();
  sub_2543A2C08();
  (*(v2 + 8))(v0, v1);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_30_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8_9(v11);
  OUTLINED_FUNCTION_181();

  return MEMORY[0x2822005A8](v13);
}

uint64_t sub_25432A908()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_25432A9AC()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_75_0();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_91_0();
  v1 = sub_2543A2D78();
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_91_0();
  v2 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_123_0();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_46_1(v3);
  OUTLINED_FUNCTION_77_0();

  return sub_25432A42C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25432AB0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);

  return sub_2543A2C58();
}

uint64_t sub_25432AB6C()
{

  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_88();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_45_0();
  v1 = sub_2543A2D78();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_45_0();
  v7 = sub_2543A2C28();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v11);
}

uint64_t sub_25432AD2C()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_75_0();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_91_0();
  v1 = sub_2543A2D78();
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_91_0();
  v2 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_123_0();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_46_1(v3);
  OUTLINED_FUNCTION_77_0();

  return sub_254329750(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25432AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v8 = 1;
  v9 = 0;
  sub_2543A27B8();
  return sub_2543A27E8();
}

uint64_t sub_25432AFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0F60, &qword_2543AC590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25432B00C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v37 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  if (sub_2543A2AC8())
  {
    OUTLINED_FUNCTION_92_0();
    sub_2543A3278();
    v17 = sub_2543A3268();
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  v40 = sub_2543A2AC8();
  if (v40)
  {
    v37 = v9;
    v38 = v5;
    v18 = 0;
    v45 = (v7 + 16);
    v46 = v17 + 56;
    v42 = (v7 + 32);
    v44 = v7 + 8;
    v39 = v16;
    while (1)
    {
      v19 = sub_2543A2AA8();
      sub_2543A2A68();
      if (v19)
      {
        v20 = *(v7 + 16);
        v20(v16, (v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18), v3);
      }

      else
      {
        v43 = v18;
        OUTLINED_FUNCTION_107_0();
        v36 = sub_2543A32B8();
        if (v37 != 8)
        {
          goto LABEL_23;
        }

        v48 = v36;
        v20 = *v45;
        (*v45)(v16, &v48, v3);
        swift_unknownObjectRelease();
        v18 = v43;
      }

      v43 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v41 = *v42;
      v41(v47, v16, v3);
      v21 = sub_2543A27F8();
      v22 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v23 = v21 & v22;
        v24 = (v21 & v22) >> 6;
        v25 = *(v46 + 8 * v24);
        v26 = 1 << (v21 & v22);
        if ((v26 & v25) == 0)
        {
          break;
        }

        v27 = v17;
        v20(v11, (*(v17 + 48) + *(v7 + 72) * v23), v3);
        v28 = v1;
        v29 = sub_2543A2848();
        v30 = *(v7 + 8);
        v31 = OUTLINED_FUNCTION_114_0();
        v30(v31);
        if (v29)
        {
          (v30)(v47, v3);
          v1 = v28;
          v16 = v39;
          v17 = v27;
          v18 = v43;
          goto LABEL_16;
        }

        v21 = v23 + 1;
        v1 = v28;
        v17 = v27;
      }

      v32 = v47;
      *(v46 + 8 * v24) = v26 | v25;
      v41((*(v17 + 48) + *(v7 + 72) * v23), v32, v3);
      v33 = *(v17 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      v16 = v39;
      v18 = v43;
      if (v34)
      {
        goto LABEL_22;
      }

      *(v17 + 16) = v35;
LABEL_16:
      v5 = v38;
      if (v18 == v40)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_25432B39C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25432B3CC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_19_0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_25432B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_0();
  v11 = v9[6];
  v35 = v9[7];
  v36 = v9[5];
  v12 = OUTLINED_FUNCTION_45_0();
  v15 = type metadata accessor for ObservationManager.ObservationKey(v12, v13, v11, v14);
  OUTLINED_FUNCTION_8(v15);
  OUTLINED_FUNCTION_86_0();
  v16 = swift_task_alloc();
  *(v10 + 16) = v16;
  *v16 = v10;
  OUTLINED_FUNCTION_37_1(v16, v17, v18, v19, v20, v21, v22, v23, v34, v35, v36);
  OUTLINED_FUNCTION_128();

  return sub_25432411C(v24, v25, v26, v27, v28, v29, v30, v31, a9);
}

uint64_t sub_25432B54C(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_2543A2768();
  }

  return result;
}

uint64_t sub_25432B558()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22_1();
  type metadata accessor for ObservationManager.ObservationKey(v2, v3, v4, v5);
  OUTLINED_FUNCTION_132_0();
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v9 = (((((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v10 = *(v1 + 44);
  OUTLINED_FUNCTION_58_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  (*(v11 + 8))(v0 + v7 + v10);

  __swift_destroy_boxed_opaque_existential_0((v0 + v9));
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v12);
}

uint64_t sub_25432B68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_22_1();
  v14 = type metadata accessor for ObservationManager.ObservationKey(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8(v14);
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  *v15 = v9;
  v15[1] = sub_2542DB160;
  OUTLINED_FUNCTION_48();

  return sub_254321BE4(v16, v17, v18, v19, v20, v21, v22, v23, a9);
}

uint64_t sub_25432B81C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25432B864()
{

  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t objectdestroy_70Tm()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_45_0();
  sub_2543A2D38();
  OUTLINED_FUNCTION_2_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25432B99C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_64_1();
  v8 = sub_2543A2D38();
  OUTLINED_FUNCTION_110(v8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return a2(a1, v10, v4, v5, v6, v7);
}

uint64_t sub_25432BA90()
{
  OUTLINED_FUNCTION_22_1();
  type metadata accessor for ObservationManager.ObservationKey(v2, v3, v4, v5);
  OUTLINED_FUNCTION_132_0();
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);

  v8 = *(v1 + 44);
  OUTLINED_FUNCTION_58_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  (*(v9 + 8))(v0 + v7 + v8);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25432BBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[3];
  v7 = v4[5];
  v8 = type metadata accessor for ObservationManager.ObservationKey(0, v4[2], v4[4], a4);
  OUTLINED_FUNCTION_8(v8);
  v10 = v9;
  v12 = v11;
  v13 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v14 = v4[6];
  v15 = v4[7];
  v16 = v4[8];
  v17 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25431F14C(a1, v14, v15, v16, v4 + v13, v17, v6, v7);
}

uint64_t sub_25432BC60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t objectdestroy_38Tm(void (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = OUTLINED_FUNCTION_58_0();
  v7 = (type metadata accessor for ObservationManager.ObservationKey(v4, v5, v3, v6) - 8);
  v8 = (*(*v7 + 80) + 80) & ~*(*v7 + 80);
  swift_unknownObjectRelease();
  a1(*(v1 + 64));

  v9 = v7[11];
  OUTLINED_FUNCTION_92_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  (*(v10 + 8))(v1 + v8 + v9);

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_25432BDE0()
{
  OUTLINED_FUNCTION_46_0();
  v2 = v0[6];
  v26 = v0[7];
  v27 = v0[5];
  v3 = OUTLINED_FUNCTION_45_0();
  v6 = type metadata accessor for ObservationManager.ObservationKey(v3, v4, v2, v5);
  OUTLINED_FUNCTION_8(v6);
  OUTLINED_FUNCTION_86_0();
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_37_1(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26, v27);
  OUTLINED_FUNCTION_128();

  return sub_25431F39C(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_25432BEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25432BF24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25432BF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25432BFC8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2543A33D8();
}

uint64_t OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;

  return sub_2543A3298();
}

void OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v6 = v3;
  v7 = v4;

  Logging.ulog(_:extended:)(*&v6, a3);
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v1 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));
  sub_2542DA8C0((v0 + 408), v1);
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  v13[3] = v12;
  v13[4] = a10;
  v13[2] = a11;
  return v13[5];
}

char *OUTLINED_FUNCTION_45_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a1[2] = 0;
  a1[3] = 0;
  v24 = *(v23 - 96);
  a1[4] = *(v23 - 88);
  a1[5] = v24;
  a1[6] = a22;
  a1[7] = a18;
  return a1 + v22;
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return sub_25432B3CC(v0 + 488, v0 + 368);
}

void *OUTLINED_FUNCTION_82_1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = *(v24 - 96);
  result[2] = *(v24 - 88);
  result[3] = v25;
  result[4] = a22;
  result[5] = v23;
  result[6] = v22;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return MEMORY[0x282200390](v2, v1, v0, v3, v0);
}

uint64_t OUTLINED_FUNCTION_87_0(uint64_t a1)
{

  return sub_2543A27D8();
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_25432B3CC(v0 + 304, v0 + 384);
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  *(v2 - 96) = v0;

  return sub_2543296D8(v1);
}

uint64_t OUTLINED_FUNCTION_116_0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_118_0()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_119_0(uint64_t a1)
{

  return sub_2543A32A8();
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

double OUTLINED_FUNCTION_130_0()
{
  v1 = *(v0 + 352);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_142_0()
{
}

uint64_t OUTLINED_FUNCTION_143_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 768);
  v7 = *(v4 + 760);

  return _s16ObservationErrorOMa(0, v6, v7, a4);
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_145_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_146_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return swift_task_alloc();
}

id sub_25432C9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2543A2858();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_25432CA60()
{
  v0 = sub_2543A1FB8();
  __swift_allocate_value_buffer(v0, qword_27F5F8878);
  __swift_project_value_buffer(v0, qword_27F5F8878);
  return sub_2543A1FA8();
}

uint64_t ProfileController.__allocating_init(withTarget:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProfileController.init(withTarget:)(a1);
  return v2;
}

uint64_t ProfileController.init(withTarget:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84FA0];
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = a1;
  return v1;
}

id sub_25432CB68()
{
  v1 = v0;
  sub_2542E4024();
  v2 = sub_25432C9E4(0xD000000000000021, 0x80000002543B9240, 0);
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  v5 = [v3 interfaceWithProtocol_];
  [v2 setExportedInterface_];

  [v2 setExportedObject_];
  return v2;
}

uint64_t ProfileController.installedProfiles()()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_66(v2);

  return sub_25432D0F0();
}

uint64_t sub_25432CCF4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_25432CE10()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0[2] + 144);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_66(v2);

    return sub_25432D45C();
  }

  else
  {
    v4 = sub_25432D408();
    v5 = OUTLINED_FUNCTION_100(&type metadata for Profile.ProfileError, v4);
    OUTLINED_FUNCTION_18_4(v5, v6);
    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_25432CF00()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 48) = v0;

  if (v0)
  {
    v6 = sub_25432D094;
  }

  else
  {
    *(v4 + 56) = v3;
    v6 = sub_25432D030;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_25432D030()
{
  OUTLINED_FUNCTION_28();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_25432D094()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_25432D110()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  if (*(v1 + 144))
  {
    OUTLINED_FUNCTION_27();

    return v2();
  }

  else
  {
    type metadata accessor for XPCConnectionManager();
    v4 = swift_allocObject();

    v6 = sub_254330124(v5, 0x4008000000000000, 15, 2, v4);
    v0[3] = v6;
    *(v1 + 144) = v6;

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_66(v7);

    return sub_254316F80();
  }
}

uint64_t sub_25432D230()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v4 = sub_25432D3AC;
  }

  else
  {
    v4 = sub_25432D350;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25432D350()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_25432D3AC()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

unint64_t sub_25432D408()
{
  result = qword_27F5E0FF0;
  if (!qword_27F5E0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0FF0);
  }

  return result;
}

uint64_t sub_25432D45C()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 152) = v0;
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_66(v2);

  return sub_25432F298();
}

uint64_t sub_25432D4E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v8);
  }
}

uint64_t sub_25432D60C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25432D70C;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1008, &unk_2543AC810);
  OUTLINED_FUNCTION_8_10(v3);
  v0[11] = 1107296256;
  v0[12] = sub_25432F86C;
  v0[13] = &block_descriptor_43;
  v0[14] = v2;
  [v1 installedProfilesWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25432D70C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_25432D880;
  }

  else
  {
    v5 = sub_25432D81C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25432D81C()
{
  OUTLINED_FUNCTION_28();
  swift_unknownObjectRelease();
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25432D880()
{
  OUTLINED_FUNCTION_31();
  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t ProfileController.installProfile(withData:)()
{
  OUTLINED_FUNCTION_28();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432D0F0();
}

uint64_t sub_25432D978()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_25432DA94()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0[4] + 144);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_15_7(v2);

    return sub_25432DD6C();
  }

  else
  {
    v4 = sub_25432D408();
    v5 = OUTLINED_FUNCTION_100(&type metadata for Profile.ProfileError, v4);
    OUTLINED_FUNCTION_18_4(v5, v6);
    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_25432DB84()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *v5 = *v2;
  v4[8] = v1;

  if (v1)
  {
    v6 = sub_25432DD10;
  }

  else
  {
    v4[9] = v0;
    v4[10] = v3;
    v6 = sub_25432DCAC;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_25432DCAC()
{
  OUTLINED_FUNCTION_28();

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_25432DD10()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_25432DD6C()
{
  OUTLINED_FUNCTION_28();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = swift_task_alloc();
  v1[23] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432F298();
}

uint64_t sub_25432DDF8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v8);
  }
}

uint64_t sub_25432DF20()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[24];
  v2 = sub_2543A1EC8();
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25432E03C;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1000, &qword_2543AC808);
  OUTLINED_FUNCTION_8_10(v4);
  v0[11] = 1107296256;
  v0[12] = sub_25432F534;
  v0[13] = &block_descriptor_38_0;
  v0[14] = v3;
  [v1 installProfileWithData:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25432E03C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = sub_25432E1C4;
  }

  else
  {
    v5 = sub_25432E14C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25432E14C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];
  swift_unknownObjectRelease();
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_25432E1C4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 200);
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t ProfileController.removeProfile(withIdentifier:)()
{
  OUTLINED_FUNCTION_28();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432D0F0();
}

uint64_t sub_25432E2C4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_25432E3E0()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0[4] + 144);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_15_7(v2);

    return sub_25432E5CC();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_25432E4AC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25432DD10);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_25432E5CC()
{
  OUTLINED_FUNCTION_28();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = swift_task_alloc();
  v1[21] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_66(v4);

  return sub_25432F298();
}

uint64_t sub_25432E658()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_3_16();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_22();

    return MEMORY[0x2822009F8](v8);
  }
}

uint64_t sub_25432E780()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[22];
  v2 = sub_2543A2858();
  v0[23] = v2;
  v0[2] = v0;
  v0[3] = sub_25432E8AC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2542C9210;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v1 removeProfileWithIdentifier:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25432E8AC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_25432EA1C;
  }

  else
  {
    v5 = sub_25432E9BC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25432E9BC()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 184);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_25432EA1C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 184);
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t ProfileController.setProfilesUpdatedHandler(handler:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25432EAB4);
}

uint64_t sub_25432EAB4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = *(v2 + 120);
  v4 = *(v2 + 128);
  *(v2 + 120) = v3;
  *(v2 + 128) = v1;
  sub_2542DAA2C(v3, v1);
  sub_2542D7A3C(v5, v4);
  OUTLINED_FUNCTION_27();

  return v6();
}

Swift::Void __swiftcall ProfileController.profilesChangedForLocalDevice(profiles:)(Swift::OpaquePointer profiles)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2]._rawValue = 0;
  v9[3]._rawValue = 0;
  v9[4]._rawValue = profiles._rawValue;
  v9[5]._rawValue = v8;
  v9[6]._rawValue = v3;
  sub_2543A2768();
  sub_2542CCD54(0, 0, v6);
}

uint64_t sub_25432EC68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25432ECA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_25432ECC0);
}

uint64_t sub_25432ECC0()
{
  if (qword_27F5DF080 != -1)
  {
    swift_once();
  }

  v1 = sub_2543A1FB8();
  __swift_project_value_buffer(v1, qword_27F5F8878);
  sub_2543A2768();
  v2 = sub_2543A1F98();
  v3 = sub_2543A3008();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315138;
    v5 = sub_2543A2728();
    v6 = sub_2542D5198(v5);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_2542B7000, v2, v3, "Received profile changes from the service. New list of profiles = %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C0AD90](v10, -1, -1);
    MEMORY[0x259C0AD90](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_25432EED4);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }
}

uint64_t sub_25432EED4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[7];
  v2 = *(v1 + 120);
  v0[8] = v2;
  if (v2)
  {
    v0[9] = *(v1 + 128);

    v3 = sub_25432EFBC;
  }

  else
  {
    v3 = sub_25432EF64;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_25432EF64()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_25432EFBC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  v1(v2);
  v3 = OUTLINED_FUNCTION_5_1();
  sub_2542D7A3C(v3, v4);
  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_25432F038()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25432F080()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_39(v7);
  *v8 = v9;
  v8[1] = sub_2542D32CC;

  return sub_25432ECA0(v2, v3, v4, v5, v6);
}

uint64_t *ProfileController.deinit()
{

  sub_2542D7A3C(*(v0 + 120), *(v0 + 128));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ProfileController.__deallocating_deinit()
{
  ProfileController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25432F2B8()
{
  OUTLINED_FUNCTION_28();
  sub_2543A2B98();
  *(v0 + 96) = sub_2543A2B88();
  sub_2543A2B58();

  return MEMORY[0x2822009F8](sub_25432F348);
}

uint64_t sub_25432F348()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 88);

  v2 = *(v1 + 152);
  *(v0 + 104) = v2;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25432F3B8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[13];
  if (v1)
  {
    v2 = [v1 remoteObjectProxy];
    sub_2543A3158();
    swift_unknownObjectRelease();
    sub_2542D62F0((v0 + 2), (v0 + 6));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0FF8, &qword_2543AC800);
    v3 = swift_dynamicCast();
    v4 = v0[13];
    if (v3)
    {

      v5 = v0[10];
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v6 = v0[1];

      return v6(v5);
    }

    v10 = sub_2542DAE80();
    OUTLINED_FUNCTION_100(&type metadata for ClientError, v10);
    *v11 = 3;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v8 = sub_2542DAE80();
    OUTLINED_FUNCTION_100(&type metadata for ClientError, v8);
    *v9 = 2;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_25432F534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_254372814();
  }

  else
  {
    v8 = sub_2543A2878();

    return sub_25436B708(v4, v8, v7);
  }
}

uint64_t sub_25432F5EC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a1;

  v6 = sub_2543A1EF8();
  v8 = v7;

  v3[4] = v6;
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_25432F6C8;

  return sub_25432DD6C();
}

uint64_t sub_25432F6C8()
{
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;

  sub_2542D7D40(*(v2 + 32), *(v2 + 40));
  if (v0)
  {
    v5 = sub_2543A1E78();

    v6 = v5;
  }

  else
  {
    v7 = sub_2543A2858();

    v6 = v7;
  }

  v8 = OUTLINED_FUNCTION_12_11();
  v9(v8);

  _Block_release(v2);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_25432F86C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_254372814();
  }

  else
  {
    v7 = sub_2543A2718();

    return sub_25436B72C(v4, v7);
  }
}

uint64_t sub_25432F990(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_25432FA38;

  return sub_25432D45C();
}

uint64_t sub_25432FA38()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  OUTLINED_FUNCTION_41();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  if (v2)
  {
    v8 = sub_2543A1E78();

    v9 = v8;
  }

  else
  {
    v10 = sub_2543A2708();

    v9 = v10;
  }

  v11 = OUTLINED_FUNCTION_12_11();
  v12(v11);

  _Block_release(v4);
  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_25432FBC8(uint64_t a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;

  v10 = OUTLINED_FUNCTION_5_1();

  return sub_254366AA8(v10, v11);
}

uint64_t sub_25432FC4C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_2543A2878();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_25432FD20;

  return sub_25432E5CC();
}

uint64_t sub_25432FD20()
{
  OUTLINED_FUNCTION_40();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_2543A1E78();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_25432FEBC()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_11(v1);

  return v4(v3);
}

uint64_t sub_25432FF50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25432FF90()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  v3 = OUTLINED_FUNCTION_5_1();

  return v4(v3);
}

uint64_t objectdestroy_18Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254330078()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_11(v1);

  return v4(v3);
}

uint64_t sub_254330124(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  *(a5 + 112) = a1;
  *(a5 + 120) = &off_286648D68;
  *(a5 + 128) = a2;
  *(a5 + 136) = a3;
  *(a5 + 144) = a4;
  return a5;
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 8;

  return swift_willThrow();
}

uint64_t sub_254330264(uint64_t a1)
{
  v2 = sub_2543303F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543302A0(uint64_t a1)
{
  v2 = sub_2543303F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ObservationUpdateAcknowlegement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1010, &qword_2543AC820);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543303F0();
  sub_2543A3778();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2543303F0()
{
  result = qword_27F5E1018;
  if (!qword_27F5E1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1018);
  }

  return result;
}

unint64_t sub_25433046C(uint64_t a1)
{
  *(a1 + 8) = sub_25433049C();
  result = sub_2543304F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25433049C()
{
  result = qword_27F5E1020;
  if (!qword_27F5E1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1020);
  }

  return result;
}

unint64_t sub_2543304F0()
{
  result = qword_27F5E1028;
  if (!qword_27F5E1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObservationUpdateAcknowlegement(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254330610);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25433065C()
{
  result = qword_27F5E1030;
  if (!qword_27F5E1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1030);
  }

  return result;
}

unint64_t sub_2543306B4()
{
  result = qword_27F5E1038[0];
  if (!qword_27F5E1038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1038);
  }

  return result;
}

uint64_t sub_254330708(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2542FE220;

  return v7(a1, a2);
}

uint64_t sub_254330820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2542DF754;

  return v9(a1, a2, a3);
}

void *ServicesRouter.__allocating_init(services:registerAllowedRequests:)()
{
  OUTLINED_FUNCTION_3_7();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v3[14] = v2;
  v3[15] = v1;
  v3[16] = v0;
  return v3;
}

void *ServicesRouter.init(services:registerAllowedRequests:)()
{
  OUTLINED_FUNCTION_3_7();
  swift_defaultActor_initialize();
  v1[14] = v3;
  v1[15] = v2;
  v1[16] = v0;
  return v1;
}

uint64_t sub_2543309C8()
{
  *(v1 + 152) = v0;
  *(v1 + 160) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_254330A0C);
}

uint64_t sub_254330A0C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  *(v0 + 96) = v2;
  v3 = v1[10];
  *(v0 + 168) = v3;
  v4 = v1[11];
  *(v0 + 176) = v4;
  v5 = v1[12];
  *(v0 + 184) = v5;
  *(v0 + 192) = type metadata accessor for ServicesRouter(0, v3, v4, v5);
  v6 = sub_2542DF684() & 1;
  *(v0 + 232) = v6;
  v7._object = 0x80000002543B9320;
  v7._countAndFlagsBits = 0xD000000000000012;
  Logging.ulog(_:extended:)(v7, v6);
  *(v0 + 104) = MEMORY[0x277D84FA0];
  *(v0 + 200) = *(v2 + 112);
  sub_2543A2768();
  *(v0 + 120) = v3;
  OUTLINED_FUNCTION_0_28();
  *(v0 + 208) = swift_getExtendedExistentialTypeMetadata();
  v8 = sub_2543A2A48();
  *(v0 + 112) = v8;
  if (v8 == sub_2543A2AC8())
  {

    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14(v11);
    if (v2)
    {
      sub_2543004CC(*(v0 + 200) + 40 * v8 + 32, v0 + 16);
      OUTLINED_FUNCTION_48_1();
      sub_2543A2B28();
      sub_2542DA8C0((v0 + 16), v0 + 56);
      v12 = *(v0 + 80);
      v13 = *(v0 + 88);
      OUTLINED_FUNCTION_8_11((v0 + 56));
      OUTLINED_FUNCTION_42();
      v16 = (v14 + *v14);
      v15 = swift_task_alloc();
      *(v0 + 216) = v15;
      *v15 = v0;
      OUTLINED_FUNCTION_3_17(v15);

      return v16(v12, v13);
    }

    else
    {
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_254330C90()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 224) = v0;

  if (v0)
  {

    v6 = sub_2543312E0;
  }

  else
  {
    v6 = sub_254330DBC;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_254330DBC()
{
  *(v0 + 128) = *(v0 + 152);
  v1 = (v0 + 104);
  v2._object = 0x80000002543B9340;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  Logging.ulog(_:extended:)(v2, *(v0 + 232));
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v37 = (v0 + 56);
  __swift_project_boxed_opaque_existential_0((v0 + 56), v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    *(v0 + 136) = MEMORY[0x277D84F90];
    sub_2542F1568(0, v6, 0);
    v7 = *(v0 + 136);
    v8 = v5 + 40;
    do
    {
      v9 = (*(*v8 + 32))();
      v11 = v10;
      *(v0 + 136) = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2542F1568(v12 > 1, v13 + 1, 1);
        v7 = *(v0 + 136);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v8 += 16;
      --v6;
    }

    while (v6);

    v1 = (v0 + 104);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v15 = sub_2542D1C8C(v7);
  v16 = *v1;
  sub_2543A2768();
  if (sub_254332458(v15, v16)[2])
  {
    v17 = *(v0 + 192);
    v18 = *(v0 + 176);
    v36 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);

    *(v0 + 144) = v20;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000003CLL, 0x80000002543B9360);
    v21 = sub_2543A2DB8();
    v23 = v22;

    MEMORY[0x259C093D0](v21, v23);

    Logging.ulog(_:_:extended:)(90, 0, 0xE000000000000000, 0, v17, &protocol witness table for ServicesRouter<A>);

    type metadata accessor for ServicesRouter.Error(0, v19, v18, v36);
    OUTLINED_FUNCTION_5_14();
    swift_getWitnessTable();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    swift_willThrow();
    sub_2543320A8(v15);

    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_27();
LABEL_12:

    return v25();
  }

  v26 = *(v0 + 152);

  v27 = *(v26 + 120);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0(v37, v28);
  (*(v29 + 24))(v28, v29);
  v27();

  sub_2543320A8(v15);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v30 = *(v0 + 112);
  if (v30 == sub_2543A2AC8())
  {

    OUTLINED_FUNCTION_27();
    goto LABEL_12;
  }

  v32 = sub_2543A2AA8();
  sub_2543A2A68();
  if (v32)
  {
    sub_2543004CC(*(v0 + 200) + 40 * v30 + 32, v0 + 16);
    OUTLINED_FUNCTION_48_1();
    sub_2543A2B28();
    sub_2542DA8C0((v0 + 16), v37);
    __swift_project_boxed_opaque_existential_0(v37, *(v0 + 80));
    OUTLINED_FUNCTION_42();
    v38 = (v33 + *v33);
    v34 = swift_task_alloc();
    *(v0 + 216) = v34;
    *v34 = v0;
    OUTLINED_FUNCTION_3_17(v34);
    v35 = OUTLINED_FUNCTION_76();

    return v38(v35);
  }

  else
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_2543A32B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2543312E0()
{
  OUTLINED_FUNCTION_28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254331354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v6[21] = *v5;
  return OUTLINED_FUNCTION_17_6(sub_2543313A0);
}

uint64_t sub_2543313A0()
{
  *(v0 + 96) = *(v0 + 160);
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v25 = *(v0 + 152);
  v3 = *(v0 + 128);
  MEMORY[0x259C093D0](0xD00000000000001ALL, 0x80000002543B93A0);
  MEMORY[0x259C093D0](0x7473657571657220, 0xE90000000000003DLL);
  sub_2543A35C8();
  v4 = v1[11];
  v26 = v1[10];
  v23 = v1[12];
  type metadata accessor for ServicesRouter(0, v26, v4, v23);
  v24 = sub_2542DF684();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v5, v24 & 1);

  sub_254331EB0(v3, v2, v25);
  if (*(v0 + 80))
  {
    v6 = *(v0 + 160);
    sub_2542DA8C0((v0 + 56), v0 + 16);
    *(v0 + 104) = v6;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000012, 0x80000002543B93C0);
    *(v0 + 112) = v26;
    OUTLINED_FUNCTION_0_28();
    swift_getExtendedExistentialTypeMetadata();
    sub_2543A35C8();
    MEMORY[0x259C093D0](0x20726F6620, 0xE500000000000000);
    sub_2543A35C8();
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    Logging.ulog(_:extended:)(v7, v24 & 1);

    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    OUTLINED_FUNCTION_8_11((v0 + 16));
    OUTLINED_FUNCTION_42();
    v27 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 176) = v11;
    *v11 = v0;
    v11[1] = sub_254331760;
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    v16 = *(v0 + 120);

    return v27(v16, v14, v15, v12, v13, v8, v9);
  }

  else
  {
    v18 = (*(*(v0 + 152) + 32))();
    v20 = v19;
    type metadata accessor for ServicesRouter.Error(0, v26, v4, v23);
    OUTLINED_FUNCTION_5_14();
    swift_getWitnessTable();
    swift_allocError();
    *v21 = v18;
    v21[1] = v20;
    swift_willThrow();
    OUTLINED_FUNCTION_27();

    return v22();
  }
}

uint64_t sub_254331760()
{
  OUTLINED_FUNCTION_31();
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2543318E4;
  }

  else
  {
    v2 = sub_254331888;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_254331888()
{
  OUTLINED_FUNCTION_28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_2543318E4()
{
  OUTLINED_FUNCTION_28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254331940(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  return OUTLINED_FUNCTION_17_6(sub_254331984);
}

uint64_t sub_254331984()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[7] = v2;
  MEMORY[0x259C093D0](0xD000000000000014, 0x80000002543B93E0);
  MEMORY[0x259C093D0](0x3D7265626D656D20, 0xE800000000000000);
  v3 = v1[10];
  OUTLINED_FUNCTION_76();
  sub_2543A35C8();
  v4 = type metadata accessor for ServicesRouter(0, v3, v1[11], v1[12]);
  v5 = sub_2542DF684() & 1;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v6, v5);

  v0[13] = *(v2 + 112);
  sub_2543A2768();
  v0[9] = v3;
  OUTLINED_FUNCTION_0_28();
  v0[14] = swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_76();
  v7 = sub_2543A2A48();
  v0[8] = v7;
  OUTLINED_FUNCTION_76();
  if (v7 == sub_2543A2AC8())
  {

    OUTLINED_FUNCTION_27();

    return v8();
  }

  else
  {
    v10 = sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14(v10);
    if (v4)
    {
      sub_2543004CC(v0[13] + 40 * v7 + 32, (v0 + 2));
      OUTLINED_FUNCTION_11_11();
      sub_2543A2B28();
      OUTLINED_FUNCTION_8_11(v0 + 2);
      OUTLINED_FUNCTION_42();
      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v12 = OUTLINED_FUNCTION_2_23(v11);

      return v13(v12);
    }

    else
    {
      OUTLINED_FUNCTION_11_11();
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_254331C0C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_254331D0C);
}

uint64_t sub_254331D0C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_2543A2AC8();
  v3 = v0[8];
  if (v3 == v2)
  {

    OUTLINED_FUNCTION_27();

    return v4();
  }

  else
  {
    v6 = sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14(v6);
    if (v1)
    {
      sub_2543004CC(v0[13] + 40 * v3 + 32, (v0 + 2));
      OUTLINED_FUNCTION_11_11();
      sub_2543A2B28();
      OUTLINED_FUNCTION_8_11(v0 + 2);
      OUTLINED_FUNCTION_42();
      v7 = swift_task_alloc();
      v0[15] = v7;
      *v7 = v0;
      v8 = OUTLINED_FUNCTION_2_23(v7);

      return v9(v8);
    }

    else
    {
      OUTLINED_FUNCTION_11_11();
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_254331EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2543A2768();
  OUTLINED_FUNCTION_0_28();
  swift_getExtendedExistentialTypeMetadata();
  sub_2543A2B38();
  swift_getWitnessTable();
  sub_2543A2998();
}

uint64_t sub_254331FB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v10);
  return TransportRequestHandlerService.canHandle<A>(request:)(a2, v10, a4, v11, a7) & 1;
}

uint64_t ServicesRouter.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ServicesRouter.__deallocating_deinit()
{
  ServicesRouter.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2543320A8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_2543A2768();
      sub_2542D8284(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

unint64_t *sub_2543321AC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_254332620(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25433223C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF550, &unk_2543A6CE0);
  result = sub_2543A3268();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2543A36E8();
    sub_2543A2768();
    sub_2543A28C8();
    result = sub_2543A3728();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_254332458(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_25439F45C(0, v6, v8);
    v9 = sub_254332620(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2543321AC(v11, v6, a2, a1);

    MEMORY[0x259C0AD90](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_254332620(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_2543A36E8();
      sub_2543A2768();
      sub_2543A28C8();
      v40 = sub_2543A3728();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_2543A3608();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_25433223C(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_2543A36E8();
      sub_2543A2768();
      sub_2543A28C8();
      v18 = sub_2543A3728();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_2543A3608();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of ServicesRouter.activateServices()()
{
  OUTLINED_FUNCTION_31();
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2542D32CC;

  return v4();
}

uint64_t dispatch thunk of ServicesRouter.pipeRequest<A>(_:fromMember:)()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_48_1();

  return v4();
}

uint64_t dispatch thunk of ServicesRouter.handleLostMember(_:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v6 = (*(*v0 + 152) + **(*v0 + 152));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542D32CC;

  return v6(v3);
}

uint64_t sub_254332DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254332E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254332E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254332EC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_6_14(char a1)
{

  return sub_2543A2A68();
}

uint64_t sub_254332FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7 - 8];
  v9 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v11 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 32);
  *(v10 + 96) = *(a1 + 48);

  sub_25433E1CC(a1, v14);
  sub_2542CCD54(0, 0, v8);
}

uint64_t sub_2543330FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a6 + 32);
  *(v6 + 64) = *(a6 + 48);
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 72) = v8;
  *v8 = v6;
  v8[1] = sub_254333204;

  return v10(v6 + 16);
}

uint64_t sub_254333204()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2543332EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E1150, &qword_2543ACBC0);
  v4 = OUTLINED_FUNCTION_110(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = qword_27F5E1140;
  OUTLINED_FUNCTION_97(v1 + qword_27F5E1140, v17);
  sub_2542EDD5C(v1 + v10, v9, qword_27F5E1150, &qword_2543ACBC0);
  v11 = sub_2543A1FB8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    sub_2542EDDC0(v9, qword_27F5E1150, &qword_2543ACBC0);
    sub_2543A1FA8();
    OUTLINED_FUNCTION_19_0();
    v12 = OUTLINED_FUNCTION_5_10();
    v13(v12);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
    OUTLINED_FUNCTION_64_0(v1 + v10, v16);
    sub_25433DB90(v6, v1 + v10);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
    return (*(v15 + 32))(a1, v9, v11);
  }
}

uint64_t CarrySettings.NetworkingClient.updatePublisher.getter()
{
  OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for CarrySettings.MessageableDevice(255, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8), v2);
  sub_2543A2B38();
  sub_2543A2078();
  swift_getWitnessTable();
  return sub_2543A20E8();
}

id CarrySettings.NetworkingClient.init(network:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = *MEMORY[0x277D85000];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v8 = OUTLINED_FUNCTION_110(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  swift_defaultActor_initialize();
  v11 = *((v6 & v5) + 0x58);
  v12 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_4_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_58_0();
  _s16NetworkingClientC15DeviceCacheItemVMa(v14, v15, v11, v16);
  OUTLINED_FUNCTION_51_1();
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  *(v2 + 14) = sub_2543A26D8();
  sub_2543A1FB8();
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = qword_27F5F8890;
  type metadata accessor for CarrySettings.MessageableDevice(255, AssociatedTypeWitness, *(v17 + 8), v23);
  sub_2543A2B38();
  sub_2543A2078();
  *&v2[v22] = sub_2543A2058();
  v24 = qword_27F5E1148;
  type metadata accessor for CarrySettings.BufferItem(0, AssociatedTypeWitness, v25, v26);
  *&v2[v24] = sub_2543A26E8();
  OUTLINED_FUNCTION_35_2();
  v28 = &v2[*(v27 + 144)];
  *v28 = 0;
  *(v28 + 1) = 0;
  OUTLINED_FUNCTION_35_2();
  *&v2[*(v29 + 152)] = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_35_2();
  (*(*(v12 - 8) + 16))(&v2[*(v30 + 136)], a1, v12);
  v42.receiver = v2;
  v42.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v42, sel_init);
  sub_2543A2BB8();
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_67();
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v12;
  v37[5] = v11;
  v37[6] = v36;
  v38 = v31;
  sub_2542CD000(0, 0, v10);

  v39 = OUTLINED_FUNCTION_46();
  v40(v39);
  return v38;
}

uint64_t sub_254333970()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2543339A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2543339C4);
}

uint64_t sub_2543339C4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_254333A64()
{
  OUTLINED_FUNCTION_28();
  sub_254333B88(v0);

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254333AE4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_68_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_70_1(v2);
  OUTLINED_FUNCTION_43_1();

  return sub_2543339A4(v4, v5, v6, v0);
}

uint64_t sub_254333B88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & v3) + 0x50);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v66 = *((v4 & v3) + 0x88);
  v8 = *(v6 + 16);
  v64 = v6 + 16;
  v8(&v56 - v9, &v2[v66], v5, v7);
  v57 = v8;
  v10 = *((v4 & v3) + 0x58);
  v11 = OUTLINED_FUNCTION_42_1();
  v13 = v12(v11);
  v14 = *(v6 + 8);
  v63 = v6 + 8;
  v65 = v14;
  v15 = OUTLINED_FUNCTION_51_1();
  v16(v15);
  v67 = v13;
  OUTLINED_FUNCTION_67();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_102_1(v17);
  OUTLINED_FUNCTION_81_2();
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = v10;
  v18[4] = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_2543A2008();

  OUTLINED_FUNCTION_30_2();
  v61 = v20;
  v59 = v19;
  WitnessTable = swift_getWitnessTable();
  v21 = OUTLINED_FUNCTION_94_1();
  sub_2542FE2DC(v21, v18, v19, v22);

  v62 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  OUTLINED_FUNCTION_105(&v2[v62]);
  sub_2543A2018();
  swift_endAccess();

  v23 = OUTLINED_FUNCTION_40_2();
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_42_1();
  v26 = v25(v24);
  v27 = OUTLINED_FUNCTION_51_1();
  v65(v27);
  v67 = v26;
  OUTLINED_FUNCTION_67();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_102_1(v28);
  OUTLINED_FUNCTION_81_2();
  v29 = swift_allocObject();
  v29[2] = v5;
  v29[3] = v10;
  v29[4] = v28;

  v30 = OUTLINED_FUNCTION_94_1();
  sub_2542FE2DC(v30, v29, v59, WitnessTable);

  OUTLINED_FUNCTION_105(&v2[v62]);
  sub_2543A2018();
  swift_endAccess();

  v31 = OUTLINED_FUNCTION_40_2();
  v32 = v57;
  v57(v31);
  v33 = OUTLINED_FUNCTION_42_1();
  v35 = v34(v33);
  v36 = OUTLINED_FUNCTION_51_1();
  v37 = v65;
  v65(v36);
  v67 = v35;
  OUTLINED_FUNCTION_67();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_102_1(v38);
  OUTLINED_FUNCTION_81_2();
  v39 = swift_allocObject();
  v39[2] = v5;
  v39[3] = v10;
  v39[4] = v38;
  v40 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for DataModelUpdate(255, v40, AssociatedConformanceWitness, v42);
  v43 = sub_2543A2008();
  swift_getWitnessTable();
  v44 = OUTLINED_FUNCTION_94_1();
  sub_2542FE2DC(v44, v39, v43, v45);

  v46 = v62;
  OUTLINED_FUNCTION_105(&v2[v62]);
  sub_2543A2018();
  swift_endAccess();

  v47 = OUTLINED_FUNCTION_40_2();
  v32(v47);
  v48 = OUTLINED_FUNCTION_42_1();
  v50 = v49(v48);
  v51 = OUTLINED_FUNCTION_51_1();
  v37(v51);
  OUTLINED_FUNCTION_67();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_102_1(v52);
  OUTLINED_FUNCTION_81_2();
  v53 = swift_allocObject();
  v53[2] = v5;
  v53[3] = v10;
  v53[4] = v52;
  v67 = v50;
  v54 = swift_allocObject();
  *(v54 + 16) = &unk_2543ACD68;
  *(v54 + 24) = v53;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBF8, &qword_2543ACD70);
  sub_25433DEA0(&qword_27F5DFC00, &qword_27F5DFBF8, &qword_2543ACD70);
  OUTLINED_FUNCTION_94_1();
  sub_2543A2148();

  OUTLINED_FUNCTION_105(&v2[v46]);
  sub_2543A2018();
  swift_endAccess();
}

Swift::Void __swiftcall CarrySettings.NetworkingClient.invalidate()()
{
  OUTLINED_FUNCTION_27_0();
  v2 = *(v1 + 152);
  swift_beginAccess();
  *(v0 + v2) = MEMORY[0x277D84FA0];
}

uint64_t sub_2543341DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2543341FC);
}

uint64_t sub_2543341FC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2542EEA14;
    OUTLINED_FUNCTION_29_0(v0[5]);

    return CarrySettings.NetworkingClient.found(target:)();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t CarrySettings.NetworkingClient.found(target:)()
{
  OUTLINED_FUNCTION_40();
  v1[14] = v2;
  v1[15] = v0;
  OUTLINED_FUNCTION_27_0();
  v4 = *(v3 + 88);
  v1[16] = v4;
  OUTLINED_FUNCTION_27_0();
  v6 = *(v5 + 80);
  v1[17] = v6;
  OUTLINED_FUNCTION_59_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[18] = AssociatedTypeWitness;
  v8 = OUTLINED_FUNCTION_45_0();
  v12 = type metadata accessor for CarrySettings.BufferItem(v8, v9, v10, v11);
  v1[19] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_146();
  v15 = _s16NetworkingClientC15DeviceCacheItemVMa(255, v6, v4, v14);
  v1[22] = v15;
  v16 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v16);
  v1[23] = OUTLINED_FUNCTION_146();
  v1[24] = *(v15 - 8);
  v1[25] = OUTLINED_FUNCTION_146();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA88, &unk_2543ACB80);
  OUTLINED_FUNCTION_110(v17);
  v1[26] = OUTLINED_FUNCTION_146();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA80, &unk_2543A7B60);
  OUTLINED_FUNCTION_110(v18);
  v1[27] = OUTLINED_FUNCTION_146();
  v19 = type metadata accessor for CarrySettings.DataModel(0);
  v1[28] = v19;
  OUTLINED_FUNCTION_110(v19);
  v1[29] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_76();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v1[30] = v20;
  v1[31] = *(v20 + 8);
  v21 = OUTLINED_FUNCTION_45_0();
  v25 = type metadata accessor for CarrySettings.MessageableDevice(v21, v22, v23, v24);
  v1[32] = v25;
  OUTLINED_FUNCTION_8(v25);
  v1[33] = v26;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = *(AssociatedTypeWitness - 8);
  v1[37] = OUTLINED_FUNCTION_82_0();
  v1[38] = swift_task_alloc();
  v27 = sub_2543A1FB8();
  v1[39] = v27;
  OUTLINED_FUNCTION_8(v27);
  v1[40] = v28;
  v1[41] = OUTLINED_FUNCTION_146();
  v29 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v29);
}

uint64_t sub_25433460C()
{
  v1 = v0[41];
  v2 = v0[36];
  sub_2543332EC(v1);
  v0[42] = *(v2 + 16);
  v0[43] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3 = OUTLINED_FUNCTION_69_2();
  v48 = v4;
  v4(v3);
  v5 = v1;
  v6 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v11 = v0[39];
  if (v8)
  {
    OUTLINED_FUNCTION_129();
    v49 = OUTLINED_FUNCTION_51_2();
    v13 = OUTLINED_FUNCTION_89_1(4.8149e-34);
    v48(v13);
    v14 = sub_2543A2888();
    v15 = OUTLINED_FUNCTION_34_3();
    v16(v15);
    sub_2542D5198(v14);
    OUTLINED_FUNCTION_103_1();
    *(v10 + 4) = v12;
    OUTLINED_FUNCTION_33_2(&dword_2542B7000, v17, v18, "Found %s", v19, v20, v21, v22, v46, v47, v5);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    (*(v9 + 8))(v10, v11);
  }

  else
  {

    v23 = OUTLINED_FUNCTION_65_2();
    v24(v23);
    v25 = OUTLINED_FUNCTION_65();
    v27(v25, v26);
  }

  v28 = v0[37];
  v29 = v0[35];
  v30 = v0[31];
  v32 = v0[28];
  v31 = v0[29];
  v33 = v0[27];
  v34 = v0[18];
  _s13DataModelCRDTVMa(0);
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_254382290(v33);
  v39 = OUTLINED_FUNCTION_79_0();
  v48(v39);
  CarrySettings.MessageableDevice.init(model:target:)(v31, v28, v34, v30, v29);
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v32);
  type metadata accessor for CarrySettings.SyncManager(0);
  swift_allocObject();
  v43 = swift_task_alloc();
  v0[44] = v43;
  *v43 = v0;
  v43[1] = sub_254334894;
  OUTLINED_FUNCTION_29_0(v0[26]);
  OUTLINED_FUNCTION_98_0();

  return CarrySettings.SyncManager.init(withModel:)();
}

uint64_t sub_254334894()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v7 + 360) = v2;

  v8 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_25433497C()
{
  OUTLINED_FUNCTION_28();
  sub_25434EF80(v0[35]);
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_254334A18;
  OUTLINED_FUNCTION_29_0(v0[14]);

  return sub_254337090();
}

uint64_t sub_254334A18()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v7 + 376) = v5;
  *(v7 + 384) = v6;

  v8 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_254334B14()
{
  v1 = v0[48];
  v16 = v0[42];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v14 = v0[23];
  v15 = v0[37];
  v5 = v0[17];
  v6 = v0[16];
  v17 = v0[15];
  v12 = v0[14];
  v13 = v0[18];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  OUTLINED_FUNCTION_59_2();
  sub_25433C02C(v7, v8, v1, v5, v6, v9);
  v16(v15, v12, v13);
  (*(v2 + 16))(v14, v3, v4);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
  OUTLINED_FUNCTION_64_0(v17 + 112, (v0 + 2));
  OUTLINED_FUNCTION_45_0();
  sub_2543A27B8();

  sub_2543A27E8();
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[49] = v10;
  *v10 = v0;
  v10[1] = sub_254334CDC;

  return sub_254338FCC();
}

uint64_t sub_254334CDC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_254334DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v16 = *(v14 + 112);
  v15 = *(v14 + 120);
  v17 = qword_27F5E1148;
  v46 = *(v14 + 128);
  OUTLINED_FUNCTION_97(v15 + qword_27F5E1148, v14 + 40);
  *(v14 + 104) = *(v15 + v17);
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_52_0(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  *(v28 + 32) = v16;
  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  sub_2543A2768();
  swift_getWitnessTable();
  sub_2543A2F78();

  if (*(v14 + 96) == 1)
  {

    v29 = OUTLINED_FUNCTION_65();
    v30(v29);
    v31 = OUTLINED_FUNCTION_76();
    v32(v31);
    OUTLINED_FUNCTION_46_2();
    *&v46 = v33;

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, v46, *(&v46 + 1), a11, a12, a13, a14);
  }

  else
  {
    v43 = *(v14 + 168);
    OUTLINED_FUNCTION_64_0(v15 + v17, v14 + 64);
    sub_2543A2AF8();
    swift_endAccess();
    *(v14 + 400) = *v43;
    *(v14 + 408) = v43[1];
    OUTLINED_FUNCTION_128();

    return MEMORY[0x2822009F8](v44);
  }
}

uint64_t sub_25433501C()
{
  OUTLINED_FUNCTION_28();
  sub_2543A2528();
  v0 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v0);
}

uint64_t sub_25433508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v15 = v14[32];
  v16 = v14[33];
  v31 = v14[35];
  v32 = v14[21];
  v18 = v14[19];
  v17 = v14[20];

  v19 = OUTLINED_FUNCTION_65();
  v20(v19);
  (*(v16 + 8))(v31, v15);
  (*(v17 + 8))(v32, v18);
  OUTLINED_FUNCTION_46_2();
  v33 = v21;

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_128();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v33, a12, a13, a14);
}

uint64_t sub_2543351B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2543351D8);
}

uint64_t sub_2543351D8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2542E7588;
    OUTLINED_FUNCTION_29_0(v0[5]);

    return CarrySettings.NetworkingClient.lost(target:)();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t CarrySettings.NetworkingClient.lost(target:)()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v2;
  v1[3] = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[4] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_82_0();
  v1[7] = swift_task_alloc();
  v5 = sub_2543A1FB8();
  v1[8] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_146();
  v7 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2543355A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_2543356E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[12] = AssociatedTypeWitness;
  v4[13] = *(AssociatedTypeWitness - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_2543A1FB8();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_2543A30C8();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254335884);
}

uint64_t sub_254335884()
{
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 64);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = type metadata accessor for DataModelUpdate(0, v3, AssociatedConformanceWitness, v7);
    *(v0 + 176) = v8;
    v9 = *(v8 + 36);
    *(v0 + 256) = v9;
    v10 = *(v4 + 16);
    *(v0 + 184) = v10;
    *(v0 + 192) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v2, v5 + v9, v3);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    v11 = swift_task_alloc();
    *(v0 + 200) = v11;
    *v11 = v0;
    v11[1] = sub_254335A8C;
    OUTLINED_FUNCTION_46();

    return CarrySettings.NetworkingClient.handleDataModelUpdate(withData:from:)();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v13 = OUTLINED_FUNCTION_38_1();
    type metadata accessor for DataModelUpdate(v13, v14, v15, v16);
    OUTLINED_FUNCTION_0_7();
    v20 = v17;
    v18 = swift_task_alloc();
    *(v0 + 216) = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_21_0(v18);

    return v20(v19);
  }
}

uint64_t sub_254335A8C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 208) = v0;

  v7 = OUTLINED_FUNCTION_76();
  v8(v7);

  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_254335BFC()
{
  OUTLINED_FUNCTION_31();
  swift_getAssociatedConformanceWitness();
  v1 = OUTLINED_FUNCTION_38_1();
  type metadata accessor for DataModelUpdate(v1, v2, v3, v4);
  OUTLINED_FUNCTION_0_7();
  v9 = v5;
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_21_0(v6);

  return v9(v7);
}

uint64_t sub_254335CD4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);
  (*(v0 + 184))(*(v0 + 112), *(v0 + 64) + *(v0 + 256), *(v0 + 96));
  OUTLINED_FUNCTION_60_0();
  *(v0 + 232) = sub_2543A2888();
  *(v0 + 240) = v2;
  OUTLINED_FUNCTION_97(v1 + 16, v0 + 40);
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    v4 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v4);
  }

  else
  {

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_1_9();
    v11 = v5;
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_76_0(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_20_0(v7);

    return v11(v9);
  }
}

uint64_t sub_254335E04()
{
  OUTLINED_FUNCTION_28();
  sub_2543332EC(*(v0 + 136));

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254335E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  sub_2543A2768();
  v14 = sub_2543A1F98();
  v15 = sub_2543A2FF8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_87();
    *v16 = 136315138;
    v17 = OUTLINED_FUNCTION_61_0();
    v18 = sub_2542D5198(v17);

    *(v16 + 4) = v18;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v19, v15, "### Failed to handle data model update from %s");
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();
  }

  else
  {
  }

  v20 = OUTLINED_FUNCTION_46();
  v21(v20);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_1_9();
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_76_0(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_20_0(v24);
  OUTLINED_FUNCTION_128();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, a11, a12, a13, a14);
}

uint64_t CarrySettings.NetworkingClient.handleDataModelUpdate(withData:from:)()
{
  OUTLINED_FUNCTION_31();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  OUTLINED_FUNCTION_27_0();
  v6 = *(v5 + 88);
  v1[18] = v6;
  OUTLINED_FUNCTION_27_0();
  v1[19] = *(v7 + 80);
  OUTLINED_FUNCTION_59_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[20] = AssociatedTypeWitness;
  v9 = OUTLINED_FUNCTION_45_0();
  v13 = type metadata accessor for CarrySettings.BufferItem(v9, v10, v11, v12);
  v1[21] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_146();
  v15 = OUTLINED_FUNCTION_4_7();
  v1[24] = _s16NetworkingClientC15DeviceCacheItemVMa(v15, v16, v6, v17);
  OUTLINED_FUNCTION_3();
  v1[25] = v18;
  v1[26] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v19 = sub_2543A30C8();
  v1[27] = v19;
  OUTLINED_FUNCTION_8(v19);
  v1[28] = v20;
  v1[29] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_45_0();
  v21 = sub_2543A30C8();
  v1[30] = v21;
  OUTLINED_FUNCTION_8(v21);
  v1[31] = v22;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = *(AssociatedTypeWitness - 8);
  v1[36] = OUTLINED_FUNCTION_82_0();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v23);
}

uint64_t sub_25433627C()
{
  v1 = v0[34];
  v2 = v0[20];
  v3 = *(v0[31] + 16);
  v3(v1, v0[16], v0[30]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[31] + 8))(v0[34], v0[30]);
    goto LABEL_5;
  }

  v4 = v0[29];
  v5 = v0[24];
  (*(v0[35] + 32))(v0[38], v0[34], v0[20]);
  swift_beginAccess();
  OUTLINED_FUNCTION_61_0();
  swift_getAssociatedConformanceWitness();
  sub_2543A27D8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
    swift_endAccess();
    v6 = OUTLINED_FUNCTION_60_0();
    v7(v6);
LABEL_5:
    v8 = v0[33];
    v9 = v0[20];
    v3(v8, v0[16], v0[30]);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      v10 = v0[32];
      v11 = v0[30];
      v12 = v0[16];
      (*(v0[31] + 8))(v0[33], v11);
      v3(v10, v12, v11);
      v13 = sub_2543A2888();
      v15 = v14;
      sub_2542D6354();
      swift_allocError();
      *v16 = v13;
      v16[1] = v15;
      swift_willThrow();

      OUTLINED_FUNCTION_27();
    }

    else
    {
      v17 = v0[17];
      (*(v0[35] + 32))(v0[37], v0[33], v0[20]);
      v18 = qword_27F5E1148;
      OUTLINED_FUNCTION_97(v17 + qword_27F5E1148, (v0 + 2));
      sub_2543A2768();
      v19 = sub_2543A2AC8();

      if (v19 == 20)
      {
        OUTLINED_FUNCTION_64_0(v17 + v18, (v0 + 8));
        OUTLINED_FUNCTION_58_0();
        sub_2543A2B38();
        swift_getWitnessTable();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_92();
        sub_2543A2FC8();
        swift_endAccess();
        v20 = OUTLINED_FUNCTION_46();
        v21(v20);
      }

      v22 = v0[36];
      v23 = v0[23];
      v24 = v0[20];
      (*(v0[35] + 16))(v22, v0[37], v24);
      v25 = OUTLINED_FUNCTION_61_0();
      sub_25430FBF0(v25, v26, v22, v24, v27);
      OUTLINED_FUNCTION_64_0(v17 + v18, (v0 + 5));
      v28 = OUTLINED_FUNCTION_61_0();
      sub_2542D61B4(v28, v29);
      OUTLINED_FUNCTION_58_0();
      sub_2543A2B38();
      sub_2543A2AE8();
      swift_endAccess();
      OUTLINED_FUNCTION_37_2();
      v30(v23);

      OUTLINED_FUNCTION_25();
    }

    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v33 = v0[26];
  v34 = v0[24];
  v35 = v0[25];
  v36 = OUTLINED_FUNCTION_77_1();
  v37(v36);
  v38 = OUTLINED_FUNCTION_60_0();
  v39(v38);
  swift_endAccess();
  v0[39] = *(v33 + *(v34 + 36));
  v40 = *(v35 + 8);

  v41 = OUTLINED_FUNCTION_76();
  v40(v41);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_98_0();

  return MEMORY[0x2822009F8](v42);
}

uint64_t sub_254336788()
{
  OUTLINED_FUNCTION_28();
  sub_2543A2528();
  v0 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v0);
}

void sub_2543367F8()
{

  OUTLINED_FUNCTION_37_2();
  v1(v0);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2543368C4(__int128 *a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  v4 = sub_2543A1FB8();
  *(v2 + 120) = v4;
  *(v2 + 128) = *(v4 - 8);
  *(v2 + 136) = swift_task_alloc();
  v5 = *a1;
  *(v2 + 256) = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v2 + 144) = v5;
  *(v2 + 160) = v6;
  *(v2 + 176) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2543369A4);
}

uint64_t sub_2543369A4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    *(v0 + 40) = *(v0 + 256);
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    sub_2543A2768();
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    *v4 = v0;
    v4[1] = sub_254336AEC;

    return CarrySettings.NetworkingClient.handleInstallProfile(withData:context:)();
  }

  else
  {
    OUTLINED_FUNCTION_0_7();
    v8 = v6;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_23_0(v7);

    return v8(0);
  }
}

uint64_t sub_254336AEC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v5);
  }

  else
  {
    OUTLINED_FUNCTION_0_7();
    v7 = swift_task_alloc();
    *(v2 + 216) = v7;
    *v7 = v4;
    OUTLINED_FUNCTION_23_0(v7);
    OUTLINED_FUNCTION_196();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_254336CA8()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 64) = *(v0 + 256);
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  *(v0 + 72) = *(v0 + 160);
  *(v0 + 80) = v1;
  sub_2543A2768();
  *(v0 + 232) = sub_2543A2888();
  *(v0 + 240) = v3;
  OUTLINED_FUNCTION_97(v2 + 16, v0 + 88);
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    v5 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v5);
  }

  else
  {

    v6 = *(v0 + 208);
    OUTLINED_FUNCTION_1_9();
    v13 = v7;
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_76_0(v8);
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_18_0(v9);

    return v13(v11);
  }
}

uint64_t sub_254336DE4()
{
  OUTLINED_FUNCTION_28();
  sub_2543332EC(*(v0 + 136));

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254336E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  sub_2543A2768();
  v15 = sub_2543A1F98();
  v16 = sub_2543A2FF8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_87();
    *v17 = 136315138;
    v18 = OUTLINED_FUNCTION_61_0();
    v19 = sub_2542D5198(v18);

    *(v17 + 4) = v19;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v20, v16, "### Failed to handle data model update: %s");
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();
  }

  else
  {
  }

  v21 = OUTLINED_FUNCTION_46();
  v22(v21);
  v23 = *(v14 + 208);
  OUTLINED_FUNCTION_1_9();
  v37 = v24;
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_76_0(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_18_0(v26);
  OUTLINED_FUNCTION_128();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, a11, a12, a13, a14);
}

uint64_t sub_254337004()
{
  OUTLINED_FUNCTION_31();
  sub_2542D6354();
  swift_allocError();
  *v0 = xmmword_2543ACB50;
  swift_willThrow();
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254337090()
{
  OUTLINED_FUNCTION_28();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  OUTLINED_FUNCTION_27_0();
  v1[7] = *(v4 + 88);
  OUTLINED_FUNCTION_27_0();
  v1[8] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[9] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[10] = v7;
  v1[11] = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_146();
  v9 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_25433718C()
{
  OUTLINED_FUNCTION_28();
  sub_25434E51C();
  *(v0 + 104) = v1;
  v2 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2543371EC()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 104);
  v5 = *(v2 + 16);
  v6 = *(v0 + 32);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v6, v3);
  *(v0 + 160) = *(v2 + 80);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_52_0(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  *(v17 + 32) = v4;
  *(v0 + 128) = *(v2 + 32);
  *(v0 + 136) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  OUTLINED_FUNCTION_43_1();
  v18();
  swift_retain_n();
  v19 = OUTLINED_FUNCTION_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_43_1();
  sub_25433DEA0(v21, v22, v23);
  *(v0 + 144) = sub_2543A2118();

  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v24);
}

uint64_t sub_254337384()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 152) = sub_25434E77C();
  v1 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2543373E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v46 = *(v14 + 152);
  v15 = *(v14 + 128);
  v16 = *(v14 + 112);
  v17 = *(v14 + 96);
  v18 = *(v14 + 72);
  v19 = *(v14 + 48);
  v20 = *(v14 + 32);
  v21 = (*(v14 + 160) + 40) & ~*(v14 + 160);
  *(v14 + 24) = v46;
  v45 = *(v14 + 56);
  v16(v17, v20, v18);
  v22 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_52_0(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  *(v33 + 32) = v19;
  v15(v33 + v21, v17, v18, v32);

  v34 = OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  sub_25433DEA0(&qword_27F5DFBF0, &qword_27F5DFBE8, &qword_2543A7D60);
  sub_2543A2148();

  OUTLINED_FUNCTION_128();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, v45, *(&v45 + 1), v46, a12, a13, a14);
}

uint64_t sub_254337538(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *MEMORY[0x277D85000];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = *((v3 & v2) + 0x50);
  v9[5] = *((v3 & v2) + 0x58);
  v9[6] = v8;
  sub_2542CD000(0, 0, v6);
}

uint64_t sub_25433767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_2543A1FB8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25433773C);
}

uint64_t sub_25433773C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    OUTLINED_FUNCTION_50_0();

    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_2543377E4()
{
  OUTLINED_FUNCTION_28();
  sub_2543332EC(*(v0 + 72));

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254337848()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_2543A1F98();
  v2 = sub_2543A3008();
  if (OUTLINED_FUNCTION_108(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_99_0(&dword_2542B7000, v3, v4, "Updates completed");
    OUTLINED_FUNCTION_82();
  }

  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  **(v0 + 40) = *(v0 + 80) == 0;

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_254337920(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v23 = a1;
  v24 = a3;
  v3 = *a2;
  v4 = *MEMORY[0x277D85000];
  v26 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v25 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v23 - v7;
  v9 = type metadata accessor for CarrySettings.DataModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  sub_2542ED4C0(v23, v12);
  (*(v6 + 16))(v8, v24, AssociatedTypeWitness);
  v18 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v19 = (v11 + v18 + *(v6 + 80)) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v26;
  *(v20 + 4) = v25;
  *(v20 + 5) = v21;
  *(v20 + 6) = v17;
  sub_2542ED378(v12, &v20[v18]);
  (*(v6 + 32))(&v20[v19], v8, AssociatedTypeWitness);
  sub_2542CD000(0, 0, v15);
}

uint64_t sub_254337BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_254337C1C);
}

uint64_t sub_254337C1C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_254337CF4;
    v3 = OUTLINED_FUNCTION_29_0(v0[7]);

    return sub_254337E0C(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_254337CF4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_254337E0C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v3[12] = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v3[13] = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[14] = AssociatedTypeWitness;
  v3[15] = *(AssociatedTypeWitness - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for CarrySettings.DataModel(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_2543A1FB8();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254337FD0);
}

uint64_t sub_254337FD0()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  sub_2543332EC(v1);
  sub_2542ED4C0(v7, v2);
  v8 = v6;
  v9 = *(v5 + 16);
  v9(v3, v8, v4);
  v10 = v1;
  v11 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[21];
  v48 = v0[22];
  if (v13)
  {
    log = v11;
    v43 = v0[18];
    v44 = v10;
    v17 = v0[17];
    v47 = v9;
    v19 = v0[14];
    v18 = v0[15];
    v46 = v0[24];
    v20 = swift_slowAlloc();
    swift_slowAlloc();
    *v20 = 136315394;
    v21 = OUTLINED_FUNCTION_5_10();
    sub_2542ED4C0(v21, v22);
    v23 = sub_2543A2888();
    sub_2542ED524(v16);
    v24 = sub_2542D5198(v23);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v47(v17, v43, v19);
    sub_2543A2888();
    v25 = *(v18 + 8);
    v26 = v19;
    v9 = v47;
    v25(v43, v26);
    v27 = OUTLINED_FUNCTION_60_0();
    v28 = sub_2542D5198(v27);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_2542B7000, log, v44, "Received model %s for target %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    (*(v14 + 8))(v46, v48);
  }

  else
  {
    v29 = v0[15];

    v25 = *(v29 + 8);
    v30 = OUTLINED_FUNCTION_60_0();
    (v25)(v30);
    sub_2542ED524(v16);
    (*(v14 + 8))(v15, v48);
  }

  v31 = v0[11];
  v9(v0[16], v0[10], v0[14]);
  OUTLINED_FUNCTION_64_0(v31 + 112, (v0 + 6));
  OUTLINED_FUNCTION_59_2();
  v36 = _s16NetworkingClientC15DeviceCacheItemVMa(v32, v33, v34, v35);
  OUTLINED_FUNCTION_51_1();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_38_1();
  sub_2543A27B8();
  v37 = sub_2543A27C8();
  v39 = v38;
  if (!__swift_getEnumTagSinglePayload(v38, 1, v36))
  {
    sub_2542ED9E4(v0[9], v39);
  }

  v37(v0 + 2, 0);
  swift_endAccess();
  v40 = OUTLINED_FUNCTION_60_0();
  (v25)(v40);
  v41 = swift_task_alloc();
  v0[25] = v41;
  *v41 = v0;
  v41[1] = sub_254338398;

  return sub_254338FCC();
}

uint64_t sub_254338398()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254338530(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *MEMORY[0x277D85000];
  v25 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v24 = *((v6 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, a3, AssociatedTypeWitness);
  v19 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v25;
  *(v20 + 4) = v24;
  *(v20 + 5) = v21;
  *(v20 + 6) = v18;
  (*(v8 + 32))(&v20[v19], v11, AssociatedTypeWitness);
  v22 = &v20[(v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v15;
  v22[1] = v16;
  sub_2542D61B4(v15, v16);
  sub_25434DFA4();
}

uint64_t sub_254338794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[11] = *(a8 - 8);
  v8[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[13] = AssociatedTypeWitness;
  v8[14] = *(AssociatedTypeWitness - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = sub_2543A1FB8();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25433893C);
}

uint64_t sub_25433893C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v3();
  }
}

uint64_t sub_254338A0C()
{
  OUTLINED_FUNCTION_28();
  sub_2543332EC(*(v0 + 152));
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254338A68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v25 = *(v24 + 152);
  v26 = *(*(v24 + 112) + 16);
  (v26)(*(v24 + 128), *(v24 + 48), *(v24 + 104));
  v27 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v24 + 144);
  v31 = *(v24 + 152);
  v32 = *(v24 + 128);
  v33 = *(v24 + 136);
  if (v29)
  {
    v43 = *(v24 + 136);
    v34 = *(v24 + 112);
    loga = v27;
    v35 = *(v24 + 104);
    OUTLINED_FUNCTION_129();
    v44 = OUTLINED_FUNCTION_51_2();
    v36 = OUTLINED_FUNCTION_89_1(4.8149e-34);
    v26(v36);
    sub_2543A2888();
    (*(v34 + 8))(v32, v35);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_103_1();
    *(v31 + 4) = v32;
    _os_log_impl(&dword_2542B7000, loga, v25, "Broadcasting to %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    (*(v30 + 8))(v31, v43);
  }

  else
  {
    v37 = *(v24 + 104);
    v38 = *(v24 + 112);

    (*(v38 + 8))(v32, v37);
    (*(v30 + 8))(v31, v33);
  }

  *(v24 + 168) = *((*MEMORY[0x277D85000] & **(v24 + 160)) + 0x88);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v39);
}

uint64_t sub_254338C34()
{
  OUTLINED_FUNCTION_31();
  v5 = v0[10];
  (*(v0[11] + 16))(v0[12], v0[20] + v0[21], v0[9]);
  v4 = (*(v5 + 72) + **(v5 + 72));
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_254338D64;
  v2 = OUTLINED_FUNCTION_29_0(v0[7]);

  return v4(v2);
}

uint64_t sub_254338D64()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 184) = v0;

  v7 = OUTLINED_FUNCTION_46();
  v8(v7);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_254338EB8()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_254338F40()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254338FCC()
{
  OUTLINED_FUNCTION_28();
  v1[3] = v0;
  OUTLINED_FUNCTION_27_0();
  v1[4] = v2;
  v3 = sub_2543A1FB8();
  v1[5] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_146();
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_2543390D8;

  return sub_2543393E4();
}

uint64_t sub_2543390D8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 72) = v5;

  v7 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2543391D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  sub_2543332EC(v16[7]);
  sub_2543A2768();
  v18 = sub_2543A1F98();
  v19 = sub_2543A3008();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v16[9];
  v22 = v16[6];
  v23 = v16[5];
  if (v20)
  {
    a12 = v16[7];
    OUTLINED_FUNCTION_129();
    a10 = OUTLINED_FUNCTION_51_2();
    a13 = a10;
    *v17 = 136315138;
    swift_getAssociatedTypeWitness();
    a11 = v23;
    swift_getAssociatedConformanceWitness();
    v24 = OUTLINED_FUNCTION_58_0();
    v28 = type metadata accessor for CarrySettings.MessageableDevice(v24, v25, v26, v27);
    MEMORY[0x259C09530](v21, v28);

    v29 = OUTLINED_FUNCTION_46();
    v30 = sub_2542D5198(v29);

    *(v17 + 4) = v30;
    _os_log_impl(&dword_2542B7000, v18, v19, "Publishing update %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    (*(v22 + 8))(a12, v23);
  }

  else
  {

    v31 = OUTLINED_FUNCTION_46();
    v33(v31, v32);
  }

  v16[2] = v16[9];

  sub_2543A2048();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2543393E4()
{
  OUTLINED_FUNCTION_28();
  v1[7] = v0;
  OUTLINED_FUNCTION_27_0();
  v1[8] = v2;
  v3 = sub_2543A1FB8();
  v1[9] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_146();
  v5 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2543394BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v51 = v14[11];
  v15 = v14[8];
  swift_beginAccess();
  v17 = *(v15 + 80);
  v16 = *(v15 + 88);
  swift_getAssociatedTypeWitness();
  _s16NetworkingClientC15DeviceCacheItemVMa(0, v17, v16, v18);
  swift_getAssociatedConformanceWitness();
  v19 = sub_2543A2798();
  swift_endAccess();
  v14[5] = v19;
  v20 = swift_task_alloc();
  *v20 = v17;
  v20[1] = v16;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_58_0();
  v22 = sub_2543A2778();
  v23 = OUTLINED_FUNCTION_58_0();
  v27 = type metadata accessor for CarrySettings.MessageableDevice(v23, v24, v25, v26);
  WitnessTable = swift_getWitnessTable();
  v30 = sub_254369100(sub_25433D320, KeyPath, v22, v27, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v29);

  v14[6] = v30;
  sub_2543A2B38();
  swift_getWitnessTable();
  v31 = sub_2543A2B48();
  sub_2543332EC(v51);
  sub_2543A2768();
  v32 = sub_2543A1F98();
  v33 = sub_2543A3008();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v14[11];
  v37 = v14[9];
  v36 = v14[10];
  if (v34)
  {
    v38 = OUTLINED_FUNCTION_129();
    v51 = v35;
    a10 = OUTLINED_FUNCTION_87();
    *v38 = 136315138;
    v39 = MEMORY[0x259C09530](v31, v27);

    v40 = sub_2542D5198(v39);

    *(v38 + 4) = v40;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v41, v33, "Current devices: %s");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();
  }

  else
  {
  }

  (*(v36 + 8))(v35, v37);

  OUTLINED_FUNCTION_128();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, v51, a10, a11, a12, a13, a14);
}

uint64_t sub_2543397DC()
{
  OUTLINED_FUNCTION_31();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_27_0();
  v4 = *(v3 + 80);
  v1[7] = v4;
  OUTLINED_FUNCTION_27_0();
  v6 = *(v5 + 88);
  v1[8] = v6;
  v8 = _s16NetworkingClientC15DeviceCacheItemVMa(255, v4, v6, v7);
  v1[9] = v8;
  OUTLINED_FUNCTION_4_7();
  v9 = sub_2543A30C8();
  v1[10] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[11] = v10;
  v1[12] = OUTLINED_FUNCTION_146();
  v1[13] = *(v8 - 8);
  v1[14] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_82_0();
  v1[18] = swift_task_alloc();
  v13 = sub_2543A1FB8();
  v1[19] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[20] = v14;
  v1[21] = OUTLINED_FUNCTION_146();
  v15 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_254339C88()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

void CarrySettings.NetworkingClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

char *CarrySettings.NetworkingClient.deinit()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];

  sub_2542EDDC0(&v0[qword_27F5E1140], qword_27F5E1150, &qword_2543ACBC0);

  OUTLINED_FUNCTION_27_0();
  (*(*(*((v2 & v1) + 0x50) - 8) + 8))(&v0[*(v3 + 136)]);
  OUTLINED_FUNCTION_27_0();

  OUTLINED_FUNCTION_27_0();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CarrySettings.NetworkingClient.__deallocating_deinit()
{
  CarrySettings.NetworkingClient.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 72) = v4;
  *(v1 + 80) = v0;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  v7 = *v0;
  v8 = *MEMORY[0x277D85000];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v9);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = *((v8 & v7) + 0x58);
  *(v1 + 112) = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 120) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  *(v1 + 128) = v11;
  *(v1 + 136) = *(v12 + 64);
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 176) = *v3;
  *(v1 + 160) = *(v3 + 8);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_25433A15C()
{
  OUTLINED_FUNCTION_5_10();
  v1 = sub_2543A2A48();
  v49 = v1;
  OUTLINED_FUNCTION_5_10();
  if (v1 != sub_2543A2AC8())
  {
    v4 = *(v0 + 128);
    v39 = (v4 + 16);
    v38 = *(v0 + 136);
    v40 = v4;
    do
    {
      OUTLINED_FUNCTION_5_10();
      v5 = sub_2543A2AA8();
      sub_2543A2A68();
      if (v5)
      {
        (*(v4 + 16))(*(v0 + 152), *(v0 + 72) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1, *(v0 + 120));
      }

      else
      {
        result = sub_2543A32B8();
        if (v38 != 8)
        {
          __break(1u);
          return result;
        }

        v35 = result;
        v36 = *(v0 + 152);
        v37 = *(v0 + 120);
        *(v0 + 48) = v35;
        (*v39)(v36, v0 + 48, v37);
        swift_unknownObjectRelease();
      }

      v6 = v4;
      v47 = *(v0 + 168);
      v45 = *(v0 + 160);
      v43 = *(v0 + 176);
      v7 = *(v0 + 144);
      v8 = *(v0 + 152);
      v9 = *(v0 + 120);
      v42 = *(v0 + 96);
      v48 = *(v0 + 88);
      v46 = *(v0 + 64);
      v44 = *(v0 + 56);
      v41 = *(v0 + 104);
      sub_2543A2B28();
      v10 = sub_2543A2BB8();
      OUTLINED_FUNCTION_73_0();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
      OUTLINED_FUNCTION_67();
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = *(v6 + 32);
      v15(v7, v8, v9);
      v16 = (*(v6 + 80) + 80) & ~*(v6 + 80);
      v17 = swift_allocObject();
      v17[1].i64[0] = 0;
      v17[1].i64[1] = 0;
      v17[2] = vextq_s8(v41, v41, 8uLL);
      v17[3].i64[0] = v14;
      v17[3].i8[8] = v43;
      v17[4].i64[0] = v45;
      v17[4].i64[1] = v47;
      v15(&v17->i8[v16], v7, v9);
      v18 = (v17->i64 + ((v38 + 7 + v16) & 0xFFFFFFFFFFFFFFF8));
      *v18 = v44;
      v18[1] = v46;
      sub_2542EDD5C(v42, v48, &qword_27F5DF328, &qword_2543A68B0);
      LODWORD(v7) = __swift_getEnumTagSinglePayload(v48, 1, v10);
      swift_retain_n();
      sub_2543A2768();
      sub_2542D61B4(v44, v46);
      if (v7 == 1)
      {
        OUTLINED_FUNCTION_43_1();
        sub_2542EDDC0(v19, v20, v21);
      }

      else
      {
        sub_2543A2BA8();
        OUTLINED_FUNCTION_19_0();
        v22 = OUTLINED_FUNCTION_79_0();
        v23(v22);
      }

      v24 = v17[1].i64[0];
      swift_unknownObjectRetain();

      if (v24)
      {
        swift_getObjectType();
        v25 = sub_2543A2B58();
        v27 = v26;

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_43_1();
        sub_2542EDDC0(v28, v29, v30);
      }

      else
      {
        OUTLINED_FUNCTION_43_1();
        sub_2542EDDC0(v31, v32, v33);

        v25 = 0;
        v27 = 0;
      }

      v34 = swift_allocObject();
      *(v34 + 16) = &unk_2543ACBE0;
      *(v34 + 24) = v17;
      if (v27 | v25)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v25;
        *(v0 + 40) = v27;
      }

      v4 = v40;
      swift_task_create();

      v1 = v49;
    }

    while (v49 != sub_2543A2AC8());
  }

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_25433A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 176) = v16;
  *(v8 + 152) = v13;
  *(v8 + 160) = v14;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 336) = a5;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  *(v8 + 184) = *(v15 - 8);
  *(v8 + 192) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 200) = AssociatedTypeWitness;
  *(v8 + 208) = *(AssociatedTypeWitness - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v10 = sub_2543A1FB8();
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25433A7B4);
}

uint64_t sub_25433A7B4()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    OUTLINED_FUNCTION_56_1();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_196();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

uint64_t sub_25433A888()
{
  OUTLINED_FUNCTION_28();
  sub_2543332EC(*(v0 + 264));
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_25433A8E4()
{
  v1 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 144);
  v6 = *(v4 + 16);
  *(v0 + 280) = v6;
  *(v0 + 288) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  sub_2543A2768();
  v7 = sub_2543A1F98();
  v8 = sub_2543A3008();

  if (os_log_type_enabled(v7, v8))
  {
    log = v7;
    v32 = *(v0 + 248);
    v33 = *(v0 + 240);
    v34 = *(v0 + 264);
    v28 = *(v0 + 224);
    v29 = *(v0 + 232);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v27 = *(v0 + 136);
    v30 = v8;
    v11 = *(v0 + 128);
    v12 = *(v0 + 336);
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136315394;
    *(v0 + 88) = v12;
    *(v0 + 96) = v11;
    *(v0 + 104) = v27;
    sub_2543A2768();
    v14 = sub_2543A2888();
    v15 = sub_2542D5198(v14);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v6(v28, v29, v10);
    v16 = sub_2543A2888();
    v17 = *(v9 + 8);
    v18 = OUTLINED_FUNCTION_79_0();
    v17(v18);
    v19 = sub_2542D5198(v16);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_2542B7000, log, v30, "Sending profile (%s) to %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    v20 = *(v32 + 8);
    v20(v34, v33);
  }

  else
  {
    v21 = *(v0 + 264);
    v22 = *(v1 + 240);
    v23 = *(v1 + 248);
    v24 = *(v1 + 208);

    v17 = *(v24 + 8);
    v25 = OUTLINED_FUNCTION_92();
    v17(v25);
    v20 = *(v23 + 8);
    v20(v21, v22);
  }

  *(v1 + 296) = v20;
  *(v1 + 304) = v17;
  *(v1 + 312) = *((*MEMORY[0x277D85000] & **(v1 + 272)) + 0x88);

  return MEMORY[0x2822009F8](sub_25433ABB8);
}

uint64_t sub_25433ABB8()
{
  OUTLINED_FUNCTION_40();
  v9 = *(v0 + 176);
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 336);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 272) + *(v0 + 312), *(v0 + 168));
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v4 = *(v9 + 80);
  sub_2543A2768();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 320) = v5;
  *v5 = v0;
  v5[1] = sub_25433AD20;
  v6 = OUTLINED_FUNCTION_29_0(*(v0 + 152));

  return v8(v6);
}

uint64_t sub_25433AD20()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[41] = v0;

  sub_25433D30C(v3[5], v3[6], v3[7]);
  v7 = OUTLINED_FUNCTION_76();
  v8(v7);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_25433AE80()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_56_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_25433AF20()
{
  OUTLINED_FUNCTION_28();
  sub_2543332EC(*(v0 + 256));
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

void sub_25433AF80()
{
  v1 = *(v0 + 328);
  (*(v0 + 280))(*(v0 + 216), *(v0 + 144), *(v0 + 200));
  sub_2543A2768();
  v2 = v1;
  v3 = sub_2543A1F98();
  v4 = sub_2543A2FF8();

  if (os_log_type_enabled(v3, v4))
  {
    v28 = *(v0 + 304);
    v29 = *(v0 + 328);
    v27 = *(v0 + 280);
    v32 = *(v0 + 256);
    v33 = *(v0 + 296);
    v31 = *(v0 + 240);
    v30 = v4;
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 200);
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 336);
    v11 = OUTLINED_FUNCTION_87();
    swift_slowAlloc();
    *v11 = 136315650;
    *(v0 + 64) = v10;
    *(v0 + 72) = v9;
    *(v0 + 80) = v8;
    sub_2543A2768();
    v12 = sub_2543A2888();
    v13 = sub_2542D5198(v12);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v27(v5, v6, v7);
    OUTLINED_FUNCTION_51_1();
    v14 = sub_2543A2888();
    v28(v6, v7);
    v15 = sub_2542D5198(v14);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2080;
    *(v0 + 112) = v29;
    v16 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    v17 = sub_2543A2888();
    v18 = sub_2542D5198(v17);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_2542B7000, v3, v30, "### Error sending profile (%s) to %s: %s", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v19 = v31;
    v20 = v32;
  }

  else
  {
    v21 = *(v0 + 328);
    v22 = *(v0 + 304);
    v33 = *(v0 + 296);
    v23 = *(v0 + 216);
    v24 = *(v0 + 200);

    v22(v23, v24);
    v20 = OUTLINED_FUNCTION_92();
  }

  v33(v20, v19);
  OUTLINED_FUNCTION_56_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_130();

  __asm { BRAA            X1, X16 }
}

uint64_t CarrySettings.NetworkingClient.prewarm()()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v1[3] = *MEMORY[0x277D85000] & *v0;
  v4 = *((v3 & v2) + 0x50);
  v1[4] = v4;
  v1[5] = *(v4 - 8);
  v1[6] = OUTLINED_FUNCTION_146();
  v5 = sub_2543A1FB8();
  v1[7] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_146();
  v7 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_25433B3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  sub_2543332EC(v14[9]);
  v15 = sub_2543A1F98();
  v16 = sub_2543A3008();
  if (OUTLINED_FUNCTION_108(v16))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_99_0(&dword_2542B7000, v17, v18, "Prewarm");
    OUTLINED_FUNCTION_82();
  }

  v19 = v14[6];
  v20 = v14[4];
  v21 = v14[5];
  v23 = v14[2];
  v22 = v14[3];

  v24 = OUTLINED_FUNCTION_46();
  v25(v24);
  (*(v21 + 16))(v19, &v23[*((*MEMORY[0x277D85000] & *v23) + 0x88)], v20);
  v36 = (*(v22 + 88) + 64);
  v37 = *v36 + **v36;
  v26 = swift_task_alloc();
  v14[10] = v26;
  *v26 = v14;
  v26[1] = sub_25433B5C8;
  OUTLINED_FUNCTION_29_0(v14[4]);
  OUTLINED_FUNCTION_128();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

uint64_t sub_25433B5C8()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 88) = v0;

  v7 = OUTLINED_FUNCTION_76();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_196();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_25433B750()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t CarrySettings.NetworkingClient.updateModel(for:)()
{
  OUTLINED_FUNCTION_31();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_27_0();
  v1[7] = *(v3 + 80);
  OUTLINED_FUNCTION_27_0();
  v5 = *(v4 + 88);
  v1[8] = v5;
  v6 = OUTLINED_FUNCTION_45_0();
  v1[9] = _s16NetworkingClientC15DeviceCacheItemVMa(v6, v7, v5, v8);
  OUTLINED_FUNCTION_3();
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_4_7();
  v10 = sub_2543A30C8();
  v1[12] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[13] = v11;
  v1[14] = OUTLINED_FUNCTION_146();
  v12 = sub_2543A1FB8();
  v1[15] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[18] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[19] = v15;
  v1[20] = OUTLINED_FUNCTION_82_0();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v16 = type metadata accessor for CarrySettings.DataModel(0);
  v1[23] = v16;
  OUTLINED_FUNCTION_110(v16);
  v1[24] = OUTLINED_FUNCTION_82_0();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_25433B9F0()
{
  v1 = v0[26];
  v2 = v0[22];
  v61 = v0[21];
  v63 = v0[25];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[7];
  v7 = v0[5];
  v8 = OUTLINED_FUNCTION_51_1();
  sub_2542ED4C0(v8, v9);
  v65 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = type metadata accessor for CarrySettings.MessageableDevice(0, v4, *(v65 + 8), v10);
  v12 = *(v3 + 16);
  v12(v2, v7 + *(v11 + 36), v4);
  sub_2543332EC(v5);
  v12(v61, v2, v4);
  sub_2542ED4C0(v1, v63);
  v13 = sub_2543A1F98();
  v14 = sub_2543A3008();
  v15 = OUTLINED_FUNCTION_108(v14);
  v16 = v0[25];
  v60 = v12;
  if (v15)
  {
    v56 = v0[24];
    v17 = v0[21];
    v58 = v6;
    v18 = v0[18];
    v19 = v0[19];
    v59 = v0[16];
    v62 = v0[15];
    v64 = v0[17];
    v20 = swift_slowAlloc();
    swift_slowAlloc();
    *v20 = 136315394;
    v21 = OUTLINED_FUNCTION_76();
    (v12)(v21);
    OUTLINED_FUNCTION_5_10();
    v22 = sub_2543A2888();
    v23 = *(v19 + 8);
    v23(v17, v18);
    v24 = sub_2542D5198(v22);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_2542ED4C0(v16, v56);
    sub_2543A2888();
    sub_2542ED524(v16);
    v25 = OUTLINED_FUNCTION_46();
    v26 = sub_2542D5198(v25);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_2542B7000, v13, v58, "Updating %s with %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    (*(v59 + 8))(v64, v62);
  }

  else
  {
    v27 = v0[19];

    sub_2542ED524(v16);
    v28 = *(v27 + 8);
    v29 = OUTLINED_FUNCTION_46();
    v28(v29);
    v30 = OUTLINED_FUNCTION_92();
    v31(v30);
    v23 = v28;
  }

  v0[27] = v23;
  v32 = v0[14];
  v33 = v0[9];
  swift_beginAccess();
  sub_2543A27D8();
  if (__swift_getEnumTagSinglePayload(v32, 1, v33))
  {
    v34 = v0[26];
    v57 = v23;
    v35 = v0[22];
    v36 = v0[20];
    v37 = v0[18];
    (*(v0[13] + 8))(v0[14], v0[12]);
    swift_endAccess();
    v60(v36, v35, v37);
    OUTLINED_FUNCTION_65();
    v38 = sub_2543A2888();
    v40 = v39;
    sub_2542D6354();
    swift_allocError();
    *v41 = v38;
    v41[1] = v40;
    swift_willThrow();
    v57(v35, v37);
    sub_2542ED524(v34);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_130();

    __asm { BRAA            X1, X16 }
  }

  v44 = v0[11];
  v45 = v0[9];
  v46 = v0[10];
  v47 = OUTLINED_FUNCTION_77_1();
  v48(v47);
  v49 = OUTLINED_FUNCTION_60_0();
  v50(v49);
  swift_endAccess();
  v0[28] = *(v44 + *(v45 + 36));
  v51 = *(v46 + 8);

  v52 = OUTLINED_FUNCTION_76();
  v51(v52);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_130();

  return MEMORY[0x2822009F8](v53);
}

uint64_t sub_25433BEDC()
{
  OUTLINED_FUNCTION_28();
  sub_25434EF80(*(v0 + 208));
  v1 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_25433BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v15 = v14[27];
  v16 = v14[26];
  v17 = v14[22];
  v18 = v14[18];
  v28 = v14[17];
  v29 = v14[14];
  v30 = v14[11];

  v15(v17, v18);
  sub_2542ED524(v16);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, a12, a13, a14);
}

int *sub_25433C02C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for CarrySettings.MessageableDevice(0, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8), v14);
  OUTLINED_FUNCTION_19_0();
  v15 = OUTLINED_FUNCTION_61_0();
  v16(v15);
  result = _s16NetworkingClientC15DeviceCacheItemVMa(0, a4, a5, v17);
  *(a6 + result[9]) = a1;
  *(a6 + result[10]) = a2;
  *(a6 + result[11]) = a3;
  return result;
}

uint64_t sub_25433C130()
{
  OUTLINED_FUNCTION_31();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_70_1(v2);

  return v6(v4);
}

uint64_t sub_25433C214()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_25433C2F4()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_100_0();

  v2 = OUTLINED_FUNCTION_67_2();
  v3(v2);
  sub_2542D7D40(*(v0 + v1), *(v0 + v1 + 8));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25433C3D0()
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_71_1(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_48();

  return sub_25433A5EC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_25433C524()
{

  return MEMORY[0x2821FE8E8](v0);
}

void sub_25433C594(uint64_t a1)
{
  sub_25433C6E4(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_25433C6E4(uint64_t a1)
{
  if (!qword_27F5E11D8[0])
  {
    sub_2543A1FB8();
    v1 = sub_2543A30C8();
    if (!v2)
    {
      atomic_store(v1, qword_27F5E11D8);
    }
  }
}

uint64_t sub_25433C73C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for CarrySettings.MessageableDevice(319, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8), v3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CarrySettings.SyncManager(319);
    if (v6 <= 0x3F)
    {
      result = sub_2543A2038();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25433C83C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v51 = *(v47 - 8);
  v3 = *(v51 + 84);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v50 = *(v45 - 8);
  v46 = *(v50 + 84);
  if (v46 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v50 + 84);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v5 = *(v43 - 8);
  v44 = *(v5 + 84);
  if (v44 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v7 = *(v41 - 8);
  v8 = *(v7 + 84);
  v42 = v8;
  if (v8 <= v6)
  {
    v8 = v6;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  v48 = v8;
  v9 = v8 - 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v50 + 80);
  v16 = *(v50 + 64);
  v17 = *(v5 + 80);
  v18 = *(v5 + 64);
  v19 = *(v7 + 80);
  v20 = *(v7 + 64);
  v21 = *(v11 + 80);
  if (!a2)
  {
    return 0;
  }

  v22 = AssociatedTypeWitness;
  v23 = *(v51 + 64) + v15;
  v24 = v20 + 7;
  v25 = ((v20 + 7 + ((v18 + v19 + ((v16 + v17 + (v23 & ~v15)) & ~v17)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + v21 + 8;
  v26 = (v25 & ~v21) + *(*(AssociatedTypeWitness - 8) + 64);
  v27 = a1;
  if (v14 < a2)
  {
    v28 = ((((((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v29 = 2;
    }

    else
    {
      v29 = a2 - v14 + 1;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    switch(v31)
    {
      case 1:
        v32 = *(a1 + v28);
        if (!*(a1 + v28))
        {
          break;
        }

        goto LABEL_35;
      case 2:
        v32 = *(a1 + v28);
        if (*(a1 + v28))
        {
          goto LABEL_35;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x25433CCFCLL);
      case 4:
        v32 = *(a1 + v28);
        if (!v32)
        {
          break;
        }

LABEL_35:
        v34 = v32 - 1;
        if ((v28 & 0xFFFFFFF8) != 0)
        {
          v34 = 0;
          v35 = *a1;
        }

        else
        {
          v35 = 0;
        }

        return v14 + (v35 | v34) + 1;
      default:
        break;
    }
  }

  if (v13 >= 0x7FFFFFFF)
  {
    if (v9 < v12)
    {

      return __swift_getEnumTagSinglePayload((a1 + v25) & ~v21, v12, v22);
    }

    v37 = v3;
    if (v3 == v48)
    {
      v38 = v47;
    }

    else
    {
      v27 = ((a1 + v23) & ~v15);
      v37 = v46;
      if (v46 == v48)
      {
        v38 = v45;
      }

      else
      {
        v27 = ((v27 + v16 + v17) & ~v17);
        v37 = v44;
        if (v44 == v48)
        {
          v38 = v43;
        }

        else
        {
          v27 = ((v27 + v18 + v19) & ~v19);
          v37 = v42;
          if (v42 != v48)
          {
            v40 = *((v27 + v24) & 0xFFFFFFFFFFFFFFF8);
            if (v40 >= 0xFFFFFFFF)
            {
              LODWORD(v40) = -1;
            }

            EnumTagSinglePayload = v40 + 1;
            goto LABEL_57;
          }

          v38 = v41;
        }
      }
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, v37, v38);
LABEL_57:
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  v36 = *((a1 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v36 >= 0xFFFFFFFF)
  {
    LODWORD(v36) = -1;
  }

  return (v36 + 1);
}

void sub_25433CD10(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v51 = *(v47 - 8);
  v4 = *(v51 + 84);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v50 = *(v45 - 8);
  v48 = v4;
  v46 = *(v50 + 84);
  if (v46 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(v50 + 84);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v6 = *(v43 - 8);
  v44 = *(v6 + 84);
  if (v44 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v8 = *(v41 - 8);
  v9 = *(v8 + 84);
  v42 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  v49 = v9;
  v10 = v9 - 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v50 + 80);
  v17 = *(v51 + 64) + v16;
  v18 = *(v50 + 64);
  v19 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64) + 7;
  v23 = ((v22 + ((v20 + v21 + ((v18 + v19 + (v17 & ~v16)) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v24 = *(v12 + 80);
  v25 = v23 + v24;
  v26 = ((v23 + v24) & ~v24) + *(*(AssociatedTypeWitness - 8) + 64);
  v27 = ((((((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 >= a3)
  {
    v30 = 0;
  }

  else
  {
    if (((((((v26 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a3 - v15 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  if (a2 > v15)
  {
    if (((((((v26 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v31 = a2 - v15;
    }

    else
    {
      v31 = 1;
    }

    if (((((((v26 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v32 = ~v15 + a2;
      bzero(a1, v27);
      *a1 = v32;
    }

    switch(v30)
    {
      case 1:
        a1[v27] = v31;
        return;
      case 2:
        *&a1[v27] = v31;
        return;
      case 3:
        goto LABEL_88;
      case 4:
        *&a1[v27] = v31;
        return;
      default:
        return;
    }
  }

  v33 = ~v24;
  switch(v30)
  {
    case 1:
      a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 2:
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 3:
LABEL_88:
      __break(1u);
      JUMPOUT(0x25433D2D4);
    case 4:
      *&a1[v27] = 0;
      goto LABEL_44;
    default:
LABEL_44:
      if (!a2)
      {
        return;
      }

LABEL_45:
      if (v14 < 0x7FFFFFFF)
      {
        v37 = (&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v38 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v38 = a2 - 1;
        }

        goto LABEL_66;
      }

      if (v14 < a2)
      {
        if (v26 <= 3)
        {
          v34 = ~(-1 << (8 * v26));
        }

        else
        {
          v34 = -1;
        }

        if (v26)
        {
          v35 = v34 & (~v14 + a2);
          if (v26 <= 3)
          {
            v36 = v26;
          }

          else
          {
            v36 = 4;
          }

          bzero(a1, v26);
          switch(v36)
          {
            case 2:
              *a1 = v35;
              break;
            case 3:
              *a1 = v35;
              a1[2] = BYTE2(v35);
              break;
            case 4:
              goto LABEL_78;
            default:
              *a1 = v35;
              break;
          }
        }

        return;
      }

      if (v10 >= v13)
      {
        if (v10 < a2)
        {
          if (((v22 + ((v20 + v21 + ((v18 + v19 + (v17 & ~v16)) & ~v19)) & ~v21)) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v35 = a2 - v49;
LABEL_77:
          bzero(a1, v23);
LABEL_78:
          *a1 = v35;
          return;
        }

        v35 = a2 - v49;
        if (a2 >= v49)
        {
          if (((v22 + ((v20 + v21 + ((v18 + v19 + (v17 & ~v16)) & ~v19)) & ~v21)) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          goto LABEL_77;
        }

        v40 = a2 + 1;
        v13 = v48;
        if (v48 == v49)
        {
          v39 = a1;
          AssociatedTypeWitness = v47;
          goto LABEL_62;
        }

        v39 = (&a1[v17] & ~v16);
        v13 = v46;
        if (v46 == v49)
        {
          AssociatedTypeWitness = v45;
          goto LABEL_62;
        }

        v39 = (&v39[v18 + v19] & ~v19);
        v13 = v44;
        if (v44 == v49)
        {
          AssociatedTypeWitness = v43;
          goto LABEL_62;
        }

        v39 = (&v39[v20 + v21] & ~v21);
        v13 = v42;
        if (v42 == v49)
        {
          AssociatedTypeWitness = v41;
          goto LABEL_62;
        }

        v37 = (&v39[v22] & 0xFFFFFFFFFFFFFFF8);
        if ((v40 & 0x80000000) != 0)
        {
          v38 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v38 = a2;
        }

LABEL_66:
        *v37 = v38;
        return;
      }

      v39 = (&a1[v25] & v33);
      v40 = a2;
LABEL_62:

      __swift_storeEnumTagSinglePayload(v39, v40, v13, AssociatedTypeWitness);
      return;
  }
}

uint64_t sub_25433D30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_25433D358()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v1 = OUTLINED_FUNCTION_59_0();

  return sub_254337920(v1, v2, v3);
}

uint64_t objectdestroy_30Tm()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();

  v1 = OUTLINED_FUNCTION_67_2();
  v2(v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25433D490()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v1 = OUTLINED_FUNCTION_59_0();

  return sub_254338530(v1, v2, v3);
}

uint64_t sub_25433D504()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_100_0();

  v2 = OUTLINED_FUNCTION_67_2();
  v3(v2);
  sub_2542D7D40(*(v0 + v1), *(v0 + v1 + 8));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25433D5D8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_71_1(v2);
  *v3 = v4;
  v3[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_77_0();

  return sub_254338794(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_25433D720()
{
  v1 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_8(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  v9 = *(v7 + 80);
  swift_unknownObjectRelease();

  v10 = v0 + v3;
  v11 = _s20CarryDeviceMergeableVMa(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v11))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
    OUTLINED_FUNCTION_2_3();
    (*(v12 + 8))(v0 + v3);
    v21 = v5;
    v13 = v11[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    OUTLINED_FUNCTION_2_3();
    (*(v14 + 8))(v10 + v13);
    v15 = v11[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
    OUTLINED_FUNCTION_2_3();
    (*(v16 + 8))(v10 + v15);
    v17 = v11[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
    OUTLINED_FUNCTION_2_3();
    v19 = v10 + v17;
    v5 = v21;
    (*(v18 + 8))(v19);
  }

  (*(v8 + 8))(v0 + ((v3 + v5 + v9) & ~v9), AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25433D988(uint64_t a1)
{
  v1 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_45_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  *v4 = v5;
  v4[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_77_0();

  return sub_254337BF8(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_25433DAEC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_68_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_70_1(v2);
  OUTLINED_FUNCTION_43_1();

  return sub_25433767C(v4, v5, v6, v0);
}

uint64_t sub_25433DB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E1150, &qword_2543ACBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25433DC00()
{

  OUTLINED_FUNCTION_81_2();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25433DC34()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543341DC(v3, v4);
}