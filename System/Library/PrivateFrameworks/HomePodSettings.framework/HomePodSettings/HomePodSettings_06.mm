void sub_254358778(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2543587E0(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2543A2858();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setIdentifier_];
}

void *sub_254358850(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);
  return sub_25435996C(v4, v1[10], v2, v1[11], v1[12], v3);
}

uint64_t sub_25435889C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A7E00;
  sub_2543A3228();
  v2 = sub_254365704();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B48, &qword_2543AEB78);
  *(inited + 72) = v2;
  return sub_2543A2748();
}

uint64_t sub_254358980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for TransportRequestObject();
  v13 = sub_254358AE4(v12, a1, a2, v12);
  sub_254358FB8(v13 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request, v14, v15, a3, a4, a5, a6, &unk_28664A628, sub_2542DA8C0, &unk_2543AEC60, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_254358AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  v4 = a4;
  sub_2543A2878();
  sub_2543A3228();
  sub_25439499C(&v13, a3, &v14);
  sub_25435A68C(&v13);
  if (!*(&v15 + 1))
  {
LABEL_9:
    sub_25435BEC8(&v14, &unk_27F5DFA00, &unk_2543A76C0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_25435A638();
    swift_allocError();
    *v9 = xmmword_2543AE910;
    v10 = 6;
LABEL_11:
    *(v9 + 16) = v10;
    swift_willThrow();
    return v4;
  }

  sub_2543A3228();
  sub_25439499C(&v13, a2, &v14);
  sub_25435A68C(&v13);
  if (!*(&v15 + 1))
  {

    sub_25435BEC8(&v14, &unk_27F5DFA00, &unk_2543A76C0);
LABEL_15:
    sub_25435A638();
    swift_allocError();
    *v9 = xmmword_2543AE900;
    v10 = 4;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v4 = sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  v8 = sub_2543A3038();
  if (v5)
  {
    sub_2542D7D40(0x4474736575716572, 0xEB00000000617461);
  }

  else
  {
    v4 = v8;
    if (!v8)
    {

      sub_25435A638();
      swift_allocError();
      *v12 = xmmword_2543AE8F0;
      *(v12 + 16) = 6;
      swift_willThrow();
    }

    sub_2542D7D40(0x4474736575716572, 0xEB00000000617461);
  }

  return v4;
}

uint64_t sub_254358DC4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_2543A2718();
  if (a3)
  {
    a3 = sub_2543A2718();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_25435C174, v9);
}

void sub_254358ED0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_2543A2708();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_2543A2708();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_2543A1E78();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

void sub_254358FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(_BYTE *, void *), uint64_t a22)
{
  OUTLINED_FUNCTION_88();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v48 = v34;
  v49 = a22;
  v35 = *v22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v36);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v37);
  v39 = &v47 - v38;
  v40 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v39, v41, v42, v40);
  sub_25432B3CC(v33, v50);
  type metadata accessor for RapportTransport(255, v35[10], v35[11], v35[12]);
  OUTLINED_FUNCTION_0_32();
  WitnessTable = swift_getWitnessTable();
  v44 = swift_allocObject();
  v44[2] = v23;
  v44[3] = WitnessTable;
  v44[4] = v23;
  v44[5] = v31;
  v44[6] = v29;
  v44[7] = v27;
  v44[8] = v25;
  a21(v50, v44 + 9);
  v44[14] = v48;
  swift_retain_n();
  sub_2543A2768();

  v45 = OUTLINED_FUNCTION_43_0();
  sub_2542CCD54(v45, v46, v39);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_25435913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = v14;
  v8[33] = v15;
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = *a4;
  v8[34] = *a4;
  v10 = *(v9 + 80);
  v8[35] = v10;
  v11 = sub_2543A30C8();
  v8[36] = v11;
  v8[37] = *(v11 - 8);
  v8[38] = swift_task_alloc();
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2543592AC);
}

uint64_t sub_25435946C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254359580()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[42];
  v0[18] = &type metadata for ObservationUpdateAcknowlegement;
  v0[19] = sub_2542E1B40();
  v2 = sub_254358850(v0 + 15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    v4 = v0[30];
    v5 = sub_25435A638();
    v6 = OUTLINED_FUNCTION_100(&type metadata for RapportTransportError, v5);
    *v7 = v1;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v8 = v1;
    v9 = OUTLINED_FUNCTION_43_0();
    v4(v9);
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v12 = v0[30];
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_23_4(inited, xmmword_2543A7E00);
    sub_2543A3228();
    inited[6].n128_u64[0] = MEMORY[0x277CC9318];
    inited[4].n128_u64[1] = v10;
    inited[5].n128_u64[0] = v11;
    v14 = OUTLINED_FUNCTION_42_2();
    sub_2542D61B4(v14, v15);
    sub_2543A2748();
    OUTLINED_FUNCTION_139();
    v12();

    v16 = OUTLINED_FUNCTION_42_2();
    sub_2542D7D40(v16, v17);
  }

  (*(v0[39] + 8))(v0[40], v0[35]);
  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v18();
}

uint64_t sub_254359738()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[42];
  v2 = v0[30];
  v3 = sub_25435A638();
  v4 = OUTLINED_FUNCTION_100(&type metadata for RapportTransportError, v3);
  *v5 = v1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_43_0();
  v2(v7);

  (*(v0[39] + 8))(v0[40], v0[35]);
  OUTLINED_FUNCTION_73_2();

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_254359804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for TransportObservationUpdateObject();
  v13 = sub_254358AE4(updated, a1, a2, updated);
  sub_254358FB8(v13 + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationUpdate, v14, v15, a3, a4, a5, a6, &unk_28664A5B0, sub_2542DA8C0, &unk_2543AEC10, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);
}

void *sub_25435996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  type metadata accessor for RapportResponse(0, a3, a6, v13);
  (*(v9 + 16))(v11, a1, a3);
  v14 = sub_2542C6F64(v11);
  v19[0] = 0;
  v15 = [v12 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v19];

  v16 = v19[0];
  if (v15)
  {
    v17 = sub_2543A1EF8();
  }

  else
  {
    v17 = v16;
    sub_2543A1E88();

    swift_willThrow();
  }

  return v17;
}

uint64_t sub_254359B14(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 384) = a3;
  *(v4 + 392) = v3;
  *(v4 + 512) = a2;
  *(v4 + 376) = a1;
  v5 = *v3;
  *(v4 + 400) = *v3;
  *(v4 + 408) = *(*(v5 + 88) + 8);
  *(v4 + 416) = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 424) = AssociatedTypeWitness;
  *(v4 + 432) = *(AssociatedTypeWitness - 8);
  *(v4 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254359C78);
}

uint64_t sub_254359C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v55 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_97(*(v16 + 392) + 160, v16 + 264);
  sub_2542D6250(0, &qword_27F5E1B20, 0x277D44170);
  v17 = sub_254357F48();
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_51_3();
  sub_25437D87C(v18);

  v19 = *(v16 + 352);
  *(v16 + 448) = v19;
  if (v19)
  {
    v20 = *(v16 + 376);
    v21 = objc_opt_self();
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    v22 = sub_2543A35F8();
    *(v16 + 360) = 0;
    v23 = [v21 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v16 + 360];
    swift_unknownObjectRelease();
    v24 = *(v16 + 360);
    if (v23)
    {
      v25 = sub_2543A1EF8();
      v27 = v26;

      *(v16 + 456) = v25;
      *(v16 + 464) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B40, &unk_2543AEB68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2543A7E00;
      *(v16 + 288) = 0x4474736575716572;
      *(v16 + 296) = 0xEB00000000617461;
      sub_2543A3228();
      *(inited + 96) = MEMORY[0x277CC9318];
      *(inited + 72) = v25;
      *(inited + 80) = v27;
      sub_2542D61B4(v25, v27);
      *(v16 + 472) = sub_2543A2748();
      v29 = [v19 effectiveIdentifier];
      sub_2543A2878();
      v31 = v30;

      *(v16 + 480) = v31;
      v32 = swift_task_alloc();
      *(v16 + 488) = v32;
      *v32 = v16;
      v32[1] = sub_25435A074;
      OUTLINED_FUNCTION_48();

      return sub_254341D0C(v33, v34, v35, v36, v37, v38);
    }

    v46 = v24;
    sub_2543A1E88();

    swift_willThrow();
  }

  else
  {
    v42 = *(v16 + 432);
    v41 = *(v16 + 440);
    v43 = *(v16 + 424);
    a10 = 0;
    a11 = 0xE000000000000000;
    sub_2543A32A8();
    sub_2543A35C8();
    (*(v42 + 8))(v41, v43);
    v44 = sub_25435A638();
    OUTLINED_FUNCTION_100(&type metadata for RapportTransportError, v44);
    *v45 = 0;
    *(v45 + 8) = 0xE000000000000000;
    *(v45 + 16) = 2;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, v17, a10, a11, a12, v55, a14, a15, a16);
}

uint64_t sub_25435A074()
{
  OUTLINED_FUNCTION_89();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v4 + 496) = v0;

  if (v0)
  {
    v8 = sub_25435A550;
  }

  else
  {

    *(v4 + 504) = v3;

    v8 = sub_25435A228;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_25435A228()
{
  OUTLINED_FUNCTION_46_0();
  v22 = v0;
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 504);
  if (v1)
  {
    *(v0 + 336) = 0x726F727265;
    *(v0 + 344) = 0xE500000000000000;
    sub_2543A2768();
    sub_2543A3228();
    sub_25439499C(v0 + 160, v1, (v0 + 200));

    sub_25435A68C(v0 + 160);
    if (*(v0 + 224))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B48, &qword_2543AEB78);
      if (swift_dynamicCast())
      {
        sub_254365960(v19, *(v0 + 368));
        v2 = v20;
        if (v20 != 255)
        {
          v3 = *(v0 + 448);
          v5 = v19[0];
          v4 = v19[1];

          v6 = sub_25435A638();
          OUTLINED_FUNCTION_100(&type metadata for RapportTransportError, v6);
          *v7 = v5;
          *(v7 + 8) = v4;
          *(v7 + 16) = v2;
LABEL_16:
          swift_willThrow();
          v16 = OUTLINED_FUNCTION_82_2();
          sub_2542D7D40(v16, v17);

          OUTLINED_FUNCTION_27();

          return v18();
        }
      }

      goto LABEL_8;
    }
  }

  else
  {
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
  }

  sub_25435BEC8(v0 + 200, &unk_27F5DFA00, &unk_2543A76C0);
  if (!v1)
  {
    *(v0 + 248) = 0u;
    *(v0 + 232) = 0u;
    goto LABEL_14;
  }

LABEL_8:
  strcpy((v0 + 304), "responseData");
  *(v0 + 317) = 0;
  *(v0 + 318) = -5120;
  sub_2543A3228();
  sub_25439499C(v0 + 120, v1, (v0 + 232));

  sub_25435A68C(v0 + 120);
  if (!*(v0 + 256))
  {
LABEL_14:
    sub_25435BEC8(v0 + 232, &unk_27F5DFA00, &unk_2543A76C0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v3 = *(v0 + 448);
    v14 = sub_25435A638();
    OUTLINED_FUNCTION_100(&type metadata for RapportTransportError, v14);
    *v15 = xmmword_2543AE920;
    *(v15 + 16) = 5;
    goto LABEL_16;
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 464);

  sub_2542D7D40(v8, v9);
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);

  v12 = *(v0 + 8);

  return v12(v11, v10);
}

uint64_t sub_25435A550()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];

  sub_2542D7D40(v2, v1);

  OUTLINED_FUNCTION_27();

  return v4();
}

unint64_t sub_25435A638()
{
  result = qword_27F5E1B38;
  if (!qword_27F5E1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B38);
  }

  return result;
}

uint64_t sub_25435A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a3;
  v8[19] = a4;
  v8[16] = a1;
  v8[17] = a2;
  v10 = *a4;
  v8[24] = *a4;
  v11 = *(v10 + 80);
  v8[25] = v11;
  v12 = *(v11 - 8);
  v8[26] = v12;
  v8[27] = *(v12 + 64);
  v8[28] = swift_task_alloc();
  v13 = *(a7 - 8);
  v8[29] = v13;
  v8[30] = *(v13 + 64);
  v8[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B58, &unk_2543AEBA0);
  v8[34] = v14;
  v8[35] = *(v14 - 8);
  v8[36] = swift_task_alloc();
  sub_2543A30C8();
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25435A930);
}

uint64_t sub_25435A930()
{
  v1 = v0[18];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2543A31C8();
    v2 = sub_2543A2E88();
    v1 = v0[2];
    v42 = v0[3];
    v5 = v0[4];
    v49 = v0[5];
    v6 = v0[6];
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v42 = v1 + 56;
    v8 = ~v7;
    v9 = -v7;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v1 + 56);
    v2 = sub_2543A2768();
    v5 = v8;
    v49 = 0;
  }

  v43 = v0 + 7;
  v11 = v0[26];
  v50 = v0[24];
  v12 = (v5 + 64) >> 6;
  v45 = v12;
  v44 = v0[27] + 7;
  v47 = v0[29];
  v48 = v1;
  v46 = v11;
  v61 = v0;
  if (v1 < 0)
  {
    goto LABEL_10;
  }

  while (v6)
  {
    v13 = v49;
LABEL_17:
    v60 = (v6 - 1) & v6;
    (*(v11 + 16))(v0[37], *(v1 + 48) + *(v11 + 72) * (__clz(__rbit64(v6)) | (v13 << 6)), v0[25]);
    while (1)
    {
      v15 = v0[37];
      v16 = v0[33];
      v52 = v16;
      v59 = v0[32];
      v17 = v0[31];
      v55 = v0[28];
      v56 = v0[30];
      v18 = v0[25];
      v58 = v0[23];
      v54 = v0[22];
      v19 = v0[21];
      v53 = v0[20];
      v57 = v61[19];
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
      sub_2543A3298();
      MEMORY[0x259C093D0](0xD000000000000039, 0x80000002543B9C30);
      OUTLINED_FUNCTION_82_2();
      sub_2543A35C8();
      sub_2542DF684();
      v20 = OUTLINED_FUNCTION_30_3();
      static Logging.ulog(_:extended:)(v20, 0xE000000000000000, v21, v19, &off_28664A398);

      v51 = sub_2543A2BB8();
      OUTLINED_FUNCTION_120_0(v16, v22, v23, v51);
      (*(v47 + 16))(v17, v53, v54);
      v24 = *(v11 + 32);
      v24(v55, v15, v18);
      v25 = (*(v47 + 80) + 80) & ~*(v47 + 80);
      v26 = (v56 + *(v11 + 80) + v25) & ~*(v11 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = 0;
      *(v27 + 3) = 0;
      *(v27 + 4) = v18;
      *(v27 + 5) = v54;
      *(v27 + 6) = *(v50 + 88);
      *(v27 + 7) = *(v50 + 96);
      *(v27 + 8) = v58;
      *(v27 + 9) = v57;
      (*(v47 + 32))(&v27[v25], v17, v54);
      v24(&v27[v26], v55, v18);
      *&v27[(v44 + v26) & 0xFFFFFFFFFFFFFFF8] = v19;
      sub_2542DA8D8(v52, v59);
      LODWORD(v18) = __swift_getEnumTagSinglePayload(v59, 1, v51);
      v0 = v61;

      v28 = v61[32];
      if (v18 == 1)
      {
        sub_25435BEC8(v61[32], &qword_27F5DF328, &qword_2543A68B0);
      }

      else
      {
        sub_2543A2BA8();
        OUTLINED_FUNCTION_19_0();
        (*(v29 + 8))(v28, v51);
      }

      v11 = v46;
      if (*(v27 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v30 = sub_2543A2B58();
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = *v61[17];

      if (v32 | v30)
      {
        v34 = v43;
        *v43 = 0;
        v43[1] = 0;
        v61[9] = v30;
        v61[10] = v32;
      }

      else
      {
        v34 = 0;
      }

      v1 = v48;
      v35 = v61[33];
      v61[11] = 1;
      v61[12] = v34;
      v61[13] = v33;
      swift_task_create();

      v2 = sub_25435BEC8(v35, &qword_27F5DF328, &qword_2543A68B0);
      v12 = v45;
      v6 = v60;
      if ((v48 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!sub_2543A31F8())
      {
        goto LABEL_29;
      }

      v60 = v6;
      sub_2543A35E8();
      swift_unknownObjectRelease();
    }
  }

  v14 = v49;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v2);
    }

    if (v13 >= v12)
    {
      break;
    }

    v6 = *(v42 + 8 * v13);
    ++v14;
    if (v6)
    {
      v49 = v13;
      goto LABEL_17;
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_120_0(v0[37], v3, v4, v0[25]);
  sub_2542D6060(v1);
  v36 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A2CB8();
  type metadata accessor for RapportTransport(255, v36, *(v50 + 88), *(v50 + 96));
  OUTLINED_FUNCTION_0_32();
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x277D84F90];
  v0[38] = WitnessTable;
  v0[39] = v38;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[40] = v39;
  *v39 = v40;
  v2 = OUTLINED_FUNCTION_15_8(v39);

  return MEMORY[0x2822004E8](v2);
}

uint64_t sub_25435AF90()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  if (v0)
  {
    v7 = sub_25435B2DC;
  }

  else
  {
    v7 = sub_25435B08C;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_25435B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  if (*(v16 + 328) == 1)
  {
    v17 = *(v16 + 312);
    v43 = *(v16 + 256);
    v44 = *(v16 + 248);
    v45 = *(v16 + 224);
    v18 = *(v16 + 168);
    v19 = *(v16 + 128);
    (*(*(v16 + 280) + 8))(*(v16 + 288), *(v16 + 272));
    sub_2543A3298();

    OUTLINED_FUNCTION_32_0();
    v46 = v20;
    *(v16 + 120) = *(v17 + 16);
    v21 = sub_2543A35A8();
    MEMORY[0x259C093D0](v21);

    MEMORY[0x259C093D0](0x736E6F7073657220, 0xEB000000002E7365);
    sub_2542DF684();
    v22 = OUTLINED_FUNCTION_30_3();
    static Logging.ulog(_:extended:)(v22, v46, v23, v18, &off_28664A398);

    *v19 = v17;

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_48();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, v43, v44, v45, 0xD00000000000001FLL, v46, a14, a15, a16);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v16 + 312);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2542F1228();
      v34 = v41;
    }

    v35 = *(v34 + 16);
    v36 = v35 + 1;
    if (v35 >= *(v34 + 24) >> 1)
    {
      sub_2542F1228();
      v34 = v42;
    }

    *(v34 + 16) = v36;
    *(v16 + 312) = v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v16 + 320) = v37;
    *v37 = v38;
    OUTLINED_FUNCTION_15_8(v37);
    OUTLINED_FUNCTION_48();

    return MEMORY[0x2822004E8](v39);
  }
}

uint64_t sub_25435B2DC()
{
  OUTLINED_FUNCTION_89();
  (*(v0[35] + 8))(v0[36], v0[34]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25435B3AC()
{
  OUTLINED_FUNCTION_89();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[6];
  v9 = v0[7];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_17(v11);
  *v12 = v13;
  v12[1] = sub_2542DB160;

  return sub_25435A6E0(v4, v2, v7, v8, v10, v9, v5, v6);
}

uint64_t sub_25435B47C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = *a4;
  v12 = swift_task_alloc();
  v8[7] = v12;
  *v12 = v8;
  v12[1] = sub_25435B570;

  return sub_25435B7AC(v12, a5, a6, a8, v15);
}

uint64_t sub_25435B570()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 64) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25435B670()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[5];
  sub_2543A3298();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000024);
  sub_2543A3358();
  v2 = OUTLINED_FUNCTION_12_15();
  MEMORY[0x259C093D0](v2 & 0xFFFFFFFFFFFFLL | 0x3D72000000000000, 0xE800000000000000);
  sub_2543A35C8();
  v3 = v0[3];
  OUTLINED_FUNCTION_42_2();
  sub_2542DF684();
  v4 = OUTLINED_FUNCTION_30_3();
  static Logging.ulog(_:extended:)(v4, v3, v5, v1, &off_28664A398);

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_25435B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  v6[11] = *(a4 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25435B868);
}

uint64_t sub_25435B868()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  updated = type metadata accessor for TransportObservationUpdateObject();
  (*(v2 + 16))(v1, v5, v4);
  v7 = sub_254396620(v1, v4, v3);
  v0[13] = v7;
  v0[5] = updated;
  v0[2] = v7;
  v8 = v7;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_25435B970;
  v10 = v0[7];

  return sub_254359B14((v0 + 2), 0, v10);
}

uint64_t sub_25435B970()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  v3[15] = v5;
  v3[16] = v6;
  v3[17] = v0;

  if (v0)
  {
    v7 = sub_25435BBB4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v7 = sub_25435BA8C;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_25435BA8C()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[17];
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B60, &qword_2543AEBC8);
  v2 = sub_2543A3038();
  if (v1)
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[13];
LABEL_3:
    sub_2542D7D40(v3, v4);

    OUTLINED_FUNCTION_27();
    goto LABEL_6;
  }

  v7 = v2;
  v5 = v0[13];
  if (!v2)
  {
    v11 = sub_25435A638();
    v12 = OUTLINED_FUNCTION_100(&type metadata for RapportTransportError, v11);
    OUTLINED_FUNCTION_76_2(v12, v13);
    v3 = OUTLINED_FUNCTION_82_2();
    goto LABEL_3;
  }

  v8 = OUTLINED_FUNCTION_82_2();
  sub_2542D7D40(v8, v9);

  OUTLINED_FUNCTION_25();
LABEL_6:

  return v6();
}

uint64_t sub_25435BBB4()
{
  OUTLINED_FUNCTION_28();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25435BC20()
{
  OUTLINED_FUNCTION_88();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  v5 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v7 = *(v1 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v0 + v5, v2);
  (*(v7 + 8))(v0 + v8, v1);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v9);
}

uint64_t sub_25435BD58(uint64_t a1)
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_2();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_72_2();

  return sub_25435B47C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25435BEC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_19_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25435BF44()
{
  OUTLINED_FUNCTION_0_2();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_67_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_25435BFF0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_83_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_15(v1);

  return sub_254353B30(v3, v4, v5, v6, v7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25435C0FC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25435C13C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25435C180(uint64_t a1)
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_36_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_24_6(v2);
  OUTLINED_FUNCTION_72_2();

  return sub_25435913C(v4, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_25435C220()
{
  result = qword_27F5E1B68;
  if (!qword_27F5E1B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF998, &qword_2543AEC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1B68);
  }

  return result;
}

void sub_25435C2A4(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:
    case 4:
    case 5:

      break;
    default:
      return;
  }
}

uint64_t objectdestroy_87Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25435C354(uint64_t a1)
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_36_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_24_6(v2);
  OUTLINED_FUNCTION_72_2();

  return sub_254358004(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x259C0AD90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_20_6()
{
  *(v0 + 40) = *(v0 + 104);

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_23_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 200) = 0x65736E6F70736572;
  result = v2 + 200;
  *(v2 + 208) = 0xEC00000061746144;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  *(v0 + 40) = *(v0 + 88);

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_25437DB58(a13, v14, v16, v15, a11, v17, v18, a14);
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_25437D88C(v17, v18, v16, a13, a11, v13, a12, v15, v14);
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_25437DB58(a10, v11, v12, v13, v10, v14, v16, v15);
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_46_3()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_73_2()
{
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 3;

  return sub_2543A2768();
}

uint64_t OUTLINED_FUNCTION_76_2(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 6;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_89_2(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5 = v3;

  Logging.ulog(_:extended:)(*&a1, a3);
}

unint64_t OUTLINED_FUNCTION_90_1()
{

  return sub_254357F48();
}

void OUTLINED_FUNCTION_91_1(uint64_t a1, int a2, Swift::Bool a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = v15;

  Logging.ulog(_:extended:)(*&a1, a3);
}

void OUTLINED_FUNCTION_92_1()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_93_1()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_94_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_95_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_2543A35D8();
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

void *CarrySettings.VerifyResponse.error.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CarrySettings.VerifyResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  OUTLINED_FUNCTION_3_2(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CarrySettings.VerifyResponse.success.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success, v3);
  return *(v0 + v1);
}

uint64_t CarrySettings.VerifyResponse.success.setter(char a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
  result = OUTLINED_FUNCTION_3_2(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t CarrySettings.VerifyResponse.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type;
  result = OUTLINED_FUNCTION_97(v3, v6);
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t CarrySettings.VerifyResponse.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type;
  result = OUTLINED_FUNCTION_3_2(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type, v6);
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

id CarrySettings.VerifyResponse.init(type:result:)(uint64_t *a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error] = 0;
  v10 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type];
  *v10 = v6;
  v10[8] = v7;
  if (v8 == 1)
  {
    v8 = 0;
    v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success] = 1;
  }

  else
  {
    v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success] = 0;
  }

  OUTLINED_FUNCTION_3_2(&v2[v9], v13);
  *&v2[v9] = v8;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id CarrySettings.VerifyResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CarrySettings.VerifyResponse.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error] = 0;
  v5 = sub_2543A2858();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    sub_2542F464C();
    if (swift_dynamicCast())
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_2542E1050(v20);
    v7 = 0;
  }

  OUTLINED_FUNCTION_3_2(&v1[v4], v20);
  v8 = *&v1[v4];
  *&v1[v4] = v7;

  v9 = sub_2543A2858();
  v10 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success] = v10;
  v11 = sub_2543A2858();
  v12 = [a1 decodeIntegerForKey_];

  v13 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type];
  *v13 = v12;
  v13[8] = v12 < 2;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);

  return v14;
}

Swift::Void __swiftcall CarrySettings.VerifyResponse.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error, v13);
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success, v12);
  v7 = *(v1 + v6);
  v8 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_type, v11);
  v9 = sub_2543A3628();
  v10 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

uint64_t CarrySettings.VerifyResponse.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v18);
  if (!v19)
  {
    sub_2542E1050(v18);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v17[0];
    if (v17[0] == v1)
    {
    }

    else
    {
      v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success], v18);
      LODWORD(v4) = v1[v4];
      v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success;
      OUTLINED_FUNCTION_97(v17[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_success, v17);
      if (v4 != v3[v5])
      {
LABEL_5:

        return 0;
      }

      v7 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error], v16);
      v8 = *&v1[v7];
      v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error;
      OUTLINED_FUNCTION_97(&v3[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14VerifyResponse_error], v15);
      v10 = *&v3[v9];
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        sub_2542F464C();
        v11 = v10;
        v12 = v8;
        v13 = sub_2543A30B8();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v10;

        if (v10)
        {
          v3 = v14;
          goto LABEL_5;
        }
      }
    }

    return 1;
  }

  return 0;
}

id CarrySettings.VerifyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.VerifyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O14VerifyResponseC6ResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_25435D564(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25430F558();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25435D5DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_25435D710(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x25435D8D4);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t dispatch thunk of CoordinationSessionConsumerHandshake.shouldAllowSession(withRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2542DF754;

  return v11(a1, a2, a3, a4);
}

unint64_t CarrySettings.VerifyRequest.VerifyType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25435DA70@<X0>(uint64_t *a1@<X8>)
{
  result = CarrySettings.VerifyRequest.VerifyType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t CarrySettings.VerifyRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type;
  result = OUTLINED_FUNCTION_97(v3, v6);
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t CarrySettings.VerifyRequest.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t CarrySettings.VerifyRequest.additionalInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_additionalInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id CarrySettings.VerifyRequest.init(type:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 8);
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_additionalInfo] = MEMORY[0x277D84F98];
  v6 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type];
  *v6 = v4;
  v6[8] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_25435DD34(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_additionalInfo] = MEMORY[0x277D84F98];
  v4 = sub_2543A2858();
  v5 = [a1 decodeIntegerForKey_];

  v6 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type];
  *v6 = v5;
  v6[8] = v5 < 2;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

Swift::Void __swiftcall CarrySettings.VerifyRequest.encode(with:)(NSCoder with)
{
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type, v5);
  v3 = sub_2543A3628();
  v4 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

BOOL CarrySettings.VerifyRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v12);
  if (!v13)
  {
    sub_2542E1050(v12);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v11[0];
  if (v11[0] == v1)
  {

    return 1;
  }

  else
  {
    v4 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type];
    OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type], v12);
    v5 = *v4;
    v6 = v4[8];
    v7 = (v11[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type);
    OUTLINED_FUNCTION_97(v11[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings13VerifyRequest_type, v11);
    v8 = *v7;

    return sub_2542F4260(v5, v6, v8);
  }
}

id CarrySettings.VerifyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.VerifyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s13VerifyRequestC10VerifyTypeOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13VerifyRequestC10VerifyTypeOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25435E1F4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25435E210(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_25435E2E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  return a6(a1, a2, a3);
}

uint64_t sub_25435E394(uint64_t result, void *a2, uint64_t a3, uint64_t (*a4)(void, void, void), uint64_t a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v7 = result;
    if (*a2 != -1)
    {
      swift_once();
    }

    v8 = (v7 + 40);
    do
    {
      result = a4(*(v8 - 1), *(v8 - 1), *v8);
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Topaz(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25435E4A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25435E4E0()
{
  OUTLINED_FUNCTION_28();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_25435E58C;

  return TransportRequestHandler.handleLostMember(_:)();
}

uint64_t sub_25435E58C()
{
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t dispatch thunk of TransportMemberHandler.handleLostMember(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25435E58C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TransportRequestHandler.handle(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25435E58C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t AlarmsObservationUpdate.update.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2542E12A8(v2, v3);
}

uint64_t AlarmsObservationUpdate.init(alarms:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25435E930(uint64_t a1)
{
  v2 = sub_25435EB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25435E96C(uint64_t a1)
{
  v2 = sub_25435EB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmsObservationUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C18, &qword_2543AEEC8);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542E12A8(v9, v10);
  sub_25435EB3C();
  sub_2543A3778();
  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C28, &qword_2543AEED0);
  sub_25435ED2C(&qword_27F5E1C30, &protocol conformance descriptor for UpdateResult<A, B>);
  sub_2543A3578();
  sub_2542E1650(v12, v13);
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_25435EB3C()
{
  result = qword_27F5E1C20;
  if (!qword_27F5E1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C20);
  }

  return result;
}

uint64_t AlarmsObservationUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C38, &qword_2543AEED8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25435EB3C();
  sub_2543A3768();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1C28, &qword_2543AEED0);
    sub_25435ED2C(&qword_27F5E1C40, &protocol conformance descriptor for UpdateResult<A, B>);
    sub_2543A34D8();
    (*(v7 + 8))(v10, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25435ED2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E1C28, &qword_2543AEED0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25435ED7C(uint64_t a1)
{
  result = sub_25435EDA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25435EDA4()
{
  result = qword_27F5E1C48;
  if (!qword_27F5E1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C48);
  }

  return result;
}

uint64_t sub_25435EE40(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E1C58, &qword_2543AEF00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25435EF4C(uint64_t a1)
{
  result = sub_25435EF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25435EF74()
{
  result = qword_27F5E1C70;
  if (!qword_27F5E1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C70);
  }

  return result;
}

unint64_t sub_25435EFF4(uint64_t a1)
{
  result = sub_25435F01C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25435F01C()
{
  result = qword_27F5E1C78;
  if (!qword_27F5E1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C78);
  }

  return result;
}

unint64_t sub_25435F070(uint64_t a1)
{
  *(a1 + 8) = sub_25435F0A0();
  result = sub_25435F0F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25435F0A0()
{
  result = qword_27F5E1C80;
  if (!qword_27F5E1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C80);
  }

  return result;
}

unint64_t sub_25435F0F4()
{
  result = qword_27F5E1C88;
  if (!qword_27F5E1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlarmsObservationUpdate.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25435F230);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25435F26C()
{
  result = qword_27F5E1C90;
  if (!qword_27F5E1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C90);
  }

  return result;
}

unint64_t sub_25435F2C4()
{
  result = qword_27F5E1C98;
  if (!qword_27F5E1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1C98);
  }

  return result;
}

unint64_t sub_25435F31C()
{
  result = qword_27F5E1CA0;
  if (!qword_27F5E1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1CA0);
  }

  return result;
}

id sub_25435F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request];
  v9[3] = a2;
  v9[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v11 = *(a2 - 8);
  (*(v11 + 16))(boxed_opaque_existential_1, a1, a2);
  v12 = (*(a3 + 32))(a2, a3);
  v13 = &v4[OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_requestTypeIdentifier];
  *v13 = v12;
  v13[1] = v14;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v11 + 8))(a1, a2);
  return v15;
}

void sub_25435F4D4(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request), *(v1 + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request + 24));
  sub_25430D714(v3);
  v4 = sub_2543A2858();
  v5 = sub_2543A2858();
  [a1 encodeObject:v4 forKey:v5];
}

id sub_25435F720(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_25430CAE0();
  v3 = sub_2543A3088();
  if (v3)
  {
    v4 = v3;
    if (qword_27F5DF088 != -1)
    {
      swift_once();
    }

    v5 = sub_2543A2878();
    sub_25436A40C(v5, v6, a1, 0x74736575716552, 0xE700000000000000, &v19);

    v8 = v20;
    v9 = v21;
    v10 = __swift_project_boxed_opaque_existential_0(&v19, v20);
    v11 = swift_getObjectType();
    v12 = MEMORY[0x28223BE20](v11);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v10, v8, v12);
    v16 = sub_25435F378(v14, v8, v9);

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  else
  {
    v7 = sub_2542DF684();
    static Logging.ulog(_:_:extended:)(90, 0xD00000000000002ALL, 0x80000002543BA050, v7 & 1, ObjectType, &off_28664A9F8);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

uint64_t Profile.ProfileError.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

unint64_t sub_25435FC68()
{
  result = qword_27F5E1CC0[0];
  if (!qword_27F5E1CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1CC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Profile(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25435FD58);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Profile.ProfileError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Profile.ProfileError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25435FEE4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

BOOL sub_25435FF60()
{
  OUTLINED_FUNCTION_1_29();
  v1 = v0();
  if (v2)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_2543A2798();
    sub_25432B39C(v1, 1);
    OUTLINED_FUNCTION_4_7();
    sub_2543A2778();
    swift_getWitnessTable();
    sub_2543A29C8();

    v1 = v4;
  }

  return v1 > 0;
}

uint64_t sub_2543600A0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    sub_25432B54C(a4, 1);
    sub_2543A2768();
    v14 = sub_2543A2768();
    OUTLINED_FUNCTION_4_7();
    sub_2543A2758();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_29();
    v13[2] = sub_2543A2DF8();

    v13[1] = v13;
    v13[4] = a4;
    v13[5] = a3;
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_4_7();
    sub_2543A2EB8();
    OUTLINED_FUNCTION_4_7();
    sub_2543A27B8();
    swift_getWitnessTable();
    sub_2543A29B8();
    v10 = v14;
    v14 = sub_2543A2768();
    OUTLINED_FUNCTION_2_29();
    v11 = MEMORY[0x259C098B0]();

    v14 = v11;
    swift_getWitnessTable();
    sub_254372EE4();
  }

  else
  {
    v10 = a1(a4, 1, a3);
    OUTLINED_FUNCTION_4_7();
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      sub_25432B00C();
    }

    else
    {
    }
  }

  return v10;
}

void *sub_254360330@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

unint64_t sub_25436034C()
{
  OUTLINED_FUNCTION_1_29();
  v1 = v0();
  if (v2)
  {
    v6 = 0;
    sub_2543A3298();
    MEMORY[0x259C093D0](0x6465746567726154, 0xED0000203A796228);
    swift_getAssociatedTypeWitness();
    v3 = sub_2543A37B8();
    MEMORY[0x259C093D0](v3);

    MEMORY[0x259C093D0](0x203E2D2029, 0xE500000000000000);
    swift_getAssociatedConformanceWitness();
    sub_2543A27B8();
    swift_getWitnessTable();
    sub_2543A35D8();
    sub_25432B39C(v1, 1);
  }

  else
  {
    sub_2543A3298();

    v6 = 0xD000000000000012;
    v4 = sub_2543A35A8();
    MEMORY[0x259C093D0](v4);

    MEMORY[0x259C093D0](41, 0xE100000000000000);
  }

  return v6;
}

uint64_t sub_254360534(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v25 = v14;
  v15 = *v14;
  v16 = *(*v14 + 16);
  v28 = v10;
  if (v16 && (v17 = sub_2543607C4(v10, a5, v11), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = a3(v19, 1);
  v21 = *(v7 + 16);
  v21(v13, v28, a5);
  v26 = v20 & ~(v20 >> 63);
  v27 = 0;
  sub_2543A27B8();
  sub_2543A27E8();
  result = sub_2543A27D8();
  if (v27)
  {
    __break(1u);
  }

  else if (!v26)
  {
    v21(v24, v28, a5);
    v26 = 0;
    v27 = 1;
    return sub_2543A27E8();
  }

  return result;
}

uint64_t sub_254360738()
{
  v1 = *v0;
  sub_25432B54C(*v0, *(v0 + 8));
  return v1;
}

unint64_t sub_254360770()
{
  swift_getWitnessTable();

  return sub_25436034C();
}

unint64_t sub_2543607C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2543A27F8();

  return sub_254360820(a1, v6, a2, a3);
}

unint64_t sub_254360820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a4;
  v6 = *(a3 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v17 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v16 + 48) + *(v6 + 72) * i, a3, v7);
    v13 = sub_2543A2848();
    (*(v6 + 8))(v9, a3);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2543609B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254360A1C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254360A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254360AF0(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_24_0(a1);
  sub_2543825BC(v5, a1, a2);
  return sub_2543A3728();
}

uint64_t sub_254360B8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_0(a1);
  sub_2543A28C8();
  return sub_2543A3728();
}

uint64_t sub_254360BEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_24_0(a1);
  a2(a1);
  sub_2543A28C8();

  return sub_2543A3728();
}

uint64_t sub_254360C50(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_24_0(a1);
  MEMORY[0x259C0A1D0](v1 & 1);
  return sub_2543A3728();
}

uint64_t sub_254360C94(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_24_0(a1);
  MEMORY[0x259C0A1D0](v1 - 1);
  return sub_2543A3728();
}

BOOL sub_254360CD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2543A3438();

  return v2 != 0;
}

BOOL sub_254360D50@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254360CD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_254360D84@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254360CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254360DB0(uint64_t a1)
{
  v2 = sub_254361050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254360DEC(uint64_t a1)
{
  v2 = sub_254361050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateSettingRequest.encode(to:)(void *a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1DC8, &qword_2543AF478);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_21();
  v8 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254361050();
  sub_2543A3778();
  v16[0] = 0;
  v9 = [objc_opt_self() archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v16];
  v10 = v16[0];
  if (v9)
  {
    v11 = sub_2543A1EF8();
    v13 = v12;

    v16[0] = v11;
    v16[1] = v13;
    sub_25431A9E4();
    sub_2543A3578();
    (*(v6 + 8))(v2, v4);
    return sub_2542D7D40(v11, v13);
  }

  else
  {
    v15 = v10;
    sub_2543A1E88();

    swift_willThrow();
    return (*(v6 + 8))(v2, v4);
  }
}

unint64_t sub_254361050()
{
  result = qword_27F5E1DD0;
  if (!qword_27F5E1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DD0);
  }

  return result;
}

uint64_t UpdateSettingRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1DD8, &qword_2543AF480);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_21();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254361050();
  sub_2543A3768();
  if (!v2)
  {
    sub_25431AA38();
    sub_2543A34D8();
    sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
    sub_2542D6250(0, &qword_27F5E0C38, off_2797737F0);
    v8 = sub_2543A3038();
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_2_19();
      v10(v9);
      sub_2542D7D40(v12, v13);
      *a2 = v8;
    }

    else
    {
      sub_2543612C8();
      swift_allocError();
      swift_willThrow();
      sub_2542D7D40(v12, v13);
      v6 = OUTLINED_FUNCTION_2_19();
      v7(v6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2543612C8()
{
  result = qword_27F5E1DE0;
  if (!qword_27F5E1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DE0);
  }

  return result;
}

uint64_t sub_25436131C(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0(a1);
  MEMORY[0x259C0A1D0](0);
  return sub_2543A3728();
}

uint64_t sub_2543613B0(uint64_t a1)
{
  v2 = sub_254361528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543613EC(uint64_t a1)
{
  v2 = sub_254361528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateSettingResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1DE8, &qword_2543AF488);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_21();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254361528();
  sub_2543A3778();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_254361528()
{
  result = qword_27F5E1DF0;
  if (!qword_27F5E1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DF0);
  }

  return result;
}

unint64_t sub_2543615A8()
{
  result = qword_27F5E1DF8;
  if (!qword_27F5E1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1DF8);
  }

  return result;
}

unint64_t sub_2543615FC(uint64_t a1)
{
  result = sub_254361624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254361624()
{
  result = qword_27F5E1E00;
  if (!qword_27F5E1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E00);
  }

  return result;
}

unint64_t sub_2543616A4()
{
  result = qword_27F5E1E08;
  if (!qword_27F5E1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E08);
  }

  return result;
}

unint64_t sub_2543616F8()
{
  result = qword_27F5E1E10;
  if (!qword_27F5E1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E10);
  }

  return result;
}

uint64_t sub_254361778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2543617B4()
{
  result = qword_27F5E1E18;
  if (!qword_27F5E1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E18);
  }

  return result;
}

unint64_t sub_254361808()
{
  result = qword_27F5E1E20;
  if (!qword_27F5E1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E20);
  }

  return result;
}

_BYTE *sub_2543618D0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25436196CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2543619A8()
{
  result = qword_27F5E1E28;
  if (!qword_27F5E1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E28);
  }

  return result;
}

unint64_t sub_254361A00()
{
  result = qword_27F5E1E30;
  if (!qword_27F5E1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E30);
  }

  return result;
}

unint64_t sub_254361A58()
{
  result = qword_27F5E1E38;
  if (!qword_27F5E1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E38);
  }

  return result;
}

unint64_t sub_254361AB0()
{
  result = qword_27F5E1E40;
  if (!qword_27F5E1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E40);
  }

  return result;
}

unint64_t sub_254361B08()
{
  result = qword_27F5E1E48;
  if (!qword_27F5E1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1E48);
  }

  return result;
}

unint64_t sub_254361B60()
{
  result = qword_27F5E1E50[0];
  if (!qword_27F5E1E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1E50);
  }

  return result;
}

void TransportObservationHandler.init(initialObservationValue:setUpObservation:tearDownObservation:transport:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, uint64_t x4_0@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t x7_0@<X7>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_4();
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a10;
  v18[7] = a3;
  v18[8] = a4;
  v34[0] = a7;
  v34[1] = swift_getAssociatedTypeWitness();
  v34[2] = a10;
  v34[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for TargetedObserverStore(0, v34);
  v19 = sub_25437541C();
  WitnessTable = swift_getWitnessTable();
  *a5 = v19;
  a5[1] = WitnessTable;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = &unk_2543AF8A8;
  a5[5] = v18;
  OUTLINED_FUNCTION_36_3(WitnessTable, v21, v22, v23, v24, v25, v26, v27, v28, a2, x4_0, x5_0, x6_0, x7_0);
}

uint64_t sub_254361D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_254361D40);
}

uint64_t sub_254361D40()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_35_4();
  v5 = swift_allocObject();
  *(v0 + 88) = v5;
  v6 = *(v0 + 64);
  *(v5 + 16) = *(v0 + 48);
  *(v5 + 32) = v6;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  *(v5 + 64) = v2;

  v9 = (v3 + *v3);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_254361E8C;

  return v9(&unk_2543AFA60, v5);
}

uint64_t sub_254361E8C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v8();
  }
}

uint64_t sub_254361FAC()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254362008()
{

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25436203C()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_3_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_72_2();

  return sub_254361D08(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2543620D8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2542D32CC;

  return v7(a1);
}

void TransportObservationHandler.init<>(initialObservationValue:setUpObservation:tearDownObservation:transport:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, uint64_t x4_0@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t x7_0@<X7>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_4();
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a10;
  v18[7] = a1;
  v18[8] = a2;
  type metadata accessor for UntargetedObserverStore(0, a7, a10, v19);
  v20 = sub_25430F604();
  WitnessTable = swift_getWitnessTable();
  *a5 = v20;
  a5[1] = WitnessTable;
  a5[2] = &unk_2543AF8B8;
  a5[3] = v18;
  a5[4] = a3;
  a5[5] = a4;
  OUTLINED_FUNCTION_36_3(WitnessTable, v22, v23, v24, v25, v26, v27, v28, v29, a4, x4_0, x5_0, x6_0, x7_0);
}

uint64_t sub_2543622BC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2542DB160;

  return v7(a1);
}

uint64_t sub_2543623B8()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_3_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_72_2();

  return sub_2543622BC(v3, v4, v5);
}

uint64_t TransportObservationHandler.handle(_:from:)()
{
  OUTLINED_FUNCTION_89();
  v3 = v2;
  *(v1 + 352) = v4;
  *(v1 + 360) = v0;
  *(v1 + 336) = v5;
  *(v1 + 344) = v6;
  *(v1 + 368) = *(v4 + 32);
  *(v1 + 376) = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 384) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_76();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v1 + 392) = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_76();
  v9 = swift_getAssociatedConformanceWitness();
  *(v1 + 400) = v9;
  v10 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  *(v1 + 408) = v10;
  *(v1 + 416) = *(v10 - 8);
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *v0;
  v13 = v0[1];
  *(v1 + 448) = *v3;
  *(v1 + 464) = v12;
  v14 = v0[2];
  v15 = v0[3];
  *(v1 + 480) = v13;
  *(v1 + 496) = v14;
  *(v1 + 440) = v11;
  *(v1 + 313) = *(v3 + 16);
  *(v1 + 320) = v15;
  *(v1 + 512) = v0[4];
  v16 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_2543625F0()
{
  *(v0 + 16) = *(v0 + 464);
  v1 = *(v0 + 313);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 496);
  *(v0 + 32) = *(v0 + 480);
  *(v0 + 48) = v8;
  v9 = *(v0 + 512);
  *(v0 + 64) = *(v6 + 48);
  *(v0 + 80) = v9;
  OUTLINED_FUNCTION_40_3();
  MEMORY[0x259C093D0](0x5F28656C646E6168, 0xEF293A6D6F72663ALL);
  MEMORY[0x259C093D0](0x7473657571657220, 0xE90000000000003DLL);
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;
  type metadata accessor for ObservationLifeCycleRequest(0, v4, v5, v10);
  sub_2543A35C8();
  v11 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v11, 0xE800000000000000);
  *(v0 + 528) = *(v7 + 24);
  sub_2543A35C8();
  v12 = sub_2542DF684() & 1;
  *(v0 + 316) = v12;
  Logging.ulog(_:extended:)(v28, v12);

  if (v1)
  {
    v13 = *(v0 + 448);
    v14 = *(v0 + 456);
    v15 = *(v0 + 480);
    *(v0 + 96) = *(v0 + 464);
    v16 = *(v0 + 496);
    v17 = *(v0 + 512);
    *(v0 + 112) = v15;
    *(v0 + 128) = v16;
    *(v0 + 144) = *(v0 + 320);
    *(v0 + 160) = v17;
    sub_254364634(v13, v14, 1);
    v18 = swift_task_alloc();
    *(v0 + 544) = v18;
    *v18 = v0;
    v18[1] = sub_254362BA0;
    OUTLINED_FUNCTION_128();

    return sub_254363E00(v19, v20, v21);
  }

  else
  {
    v25 = *(v0 + 448);
    v24 = *(v0 + 456);
    *(v0 + 536) = swift_getObjectType();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(v0 + 280) = sub_2543A2EB8();
    OUTLINED_FUNCTION_0_34();
    *(v0 + 288) = swift_getWitnessTable();
    *(v0 + 256) = v25;
    sub_254364634(v25, v24, 0);
    sub_2543A2B58();
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x2822009F8](v26);
  }
}

uint64_t sub_2543628C0()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 314) = sub_2543694D4(*(v0 + 344), (v0 + 256), *(v0 + 536), *(v0 + 472));
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254362934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_71();
  if (*(v14 + 314))
  {
    v15 = *(v14 + 316);
    v16 = *(v14 + 528);
    v17 = *(v14 + 520);
    v18 = *(v14 + 512);
    v19 = *(v14 + 488);
    v20 = *(v14 + 464);
    v22 = *(v14 + 368);
    v21 = *(v14 + 376);
    v23 = *(v14 + 352);
    *(v14 + 176) = v20;
    v24 = *(v14 + 472);
    *(v14 + 184) = v24;
    *(v14 + 200) = v19;
    a9 = *(v14 + 496);
    a10 = v24;
    v25 = *(v14 + 320);
    *(v14 + 208) = a9;
    *(v14 + 224) = v25;
    *(v14 + 240) = v18;
    *(v14 + 248) = v17;
    v26._object = 0x80000002543BA160;
    v26._countAndFlagsBits = 0xD000000000000023;
    Logging.ulog(_:extended:)(v26, v15);
    v27 = swift_allocObject();
    *(v14 + 552) = v27;
    v27[2] = v21;
    v27[3] = v16;
    v27[4] = v22;
    v27[5] = *(v23 + 40);
    v27[6] = *(v23 + 48);
    v27[7] = v20;
    v27[8] = a10;
    v27[9] = v18;
    v27[10] = v17;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    *&a10 = a9 + *a9;
    v28 = swift_task_alloc();
    *(v14 + 560) = v28;
    *v28 = v14;
    v28[1] = sub_254362D8C;
    OUTLINED_FUNCTION_48();
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    *&a10 = v37;
    v38 = swift_task_alloc();
    *(v14 + 576) = v38;
    *v38 = v14;
    OUTLINED_FUNCTION_12_16(v38);
    OUTLINED_FUNCTION_48();
  }

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, a12, a13, a14);
}

uint64_t sub_254362BA0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 456);
  v3 = *(v1 + 448);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  sub_254364670(v3, v2, 1);
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_254362CBC()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 440);
  v2 = swift_checkMetadataState();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_20_7();
  v4(v3);
  v5 = swift_checkMetadataState();
  OUTLINED_FUNCTION_31_5(v5);

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_254362D8C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[71] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = v3[57];
    OUTLINED_FUNCTION_5_16();
    v13 = v9;
    v10 = swift_task_alloc();
    v3[72] = v10;
    *v10 = v5;
    OUTLINED_FUNCTION_12_16(v10);
    v11 = v3[54];

    return v13(v11, v8);
  }
}

uint64_t sub_254362F1C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_254363034()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[51];
  v4 = v0[52];
  v5 = swift_checkMetadataState();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  v6 = *(v4 + 32);
  v6(v2, v1, v3);
  v7 = OUTLINED_FUNCTION_20_7();
  (v6)(v7);
  v8 = swift_checkMetadataState();
  OUTLINED_FUNCTION_31_5(v8);

  OUTLINED_FUNCTION_27();

  return v9();
}

uint64_t sub_254363124()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_2543631B0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254363228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v16;
  v8[21] = v17;
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[22] = AssociatedTypeWitness;
  v8[23] = *(AssociatedTypeWitness - 8);
  v8[24] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v8[7] = AssociatedTypeWitness;
  v8[8] = AssociatedConformanceWitness;
  v8[9] = v11;
  v8[10] = v12;
  updated = type metadata accessor for ObservationUpdateScope(0, (v8 + 7));
  v8[25] = updated;
  v8[26] = *(updated - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254363410);
}

uint64_t sub_254363410()
{
  v11 = *(v0 + 136);
  *(v0 + 16) = v11;
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v12 = *(v0 + 152);
  *(v0 + 32) = v12;
  *(v0 + 48) = v2;
  v4 = type metadata accessor for TransportObservationHandler(0, v0 + 16);
  *(v0 + 232) = v4;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000010, 0x80000002543BA190);
  sub_2543A35C8();
  v5 = sub_2542DF684();
  *(v0 + 352) = v5 & 1;
  static Logging.ulog(_:extended:)(0, 0xE000000000000000, v5 & 1, v4, &protocol witness table for TransportObservationHandler<A, B>);

  v6 = *(v12 + 144);
  *(v0 + 240) = v6;
  *(v0 + 248) = (v12 + 144) & 0xFFFFFFFFFFFFLL | 0x3FE1000000000000;
  v6(v11);
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    v7 = *(v0 + 112);
    *(v0 + 256) = swift_getObjectType();
    *(v0 + 264) = *(v7 + 48);
    *(v0 + 272) = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x9E24000000000000;
    sub_2543A2B58();
    OUTLINED_FUNCTION_30_4();
    v8 = sub_254363634;
  }

  else
  {
    v9 = *(v0 + 112);
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 224), *(v0 + 176));
    *(v0 + 288) = swift_getObjectType();
    *(v0 + 296) = *(v9 + 56);
    *(v0 + 304) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0x8084000000000000;
    sub_2543A2B58();
    OUTLINED_FUNCTION_30_4();
    v8 = sub_2543638A8;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_254363634()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 280) = (*(v0 + 264))(*(v0 + 256), *(v0 + 112));
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2543638A8()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 312) = (*(v0 + 296))(*(v0 + 192), *(v0 + 288), *(v0 + 112));
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254363B38()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 336) = v0;

  if (!v0)
  {

    *(v5 + 344) = v3;
  }

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_254363C50()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 232);
  sub_2543A3298();

  v4 = MEMORY[0x259C09530](v1, &type metadata for ObservationUpdateAcknowlegement);
  v6 = v5;

  MEMORY[0x259C093D0](v4, v6);

  static Logging.ulog(_:extended:)(0xD000000000000016, 0x80000002543BA1F0, v2, v3, &protocol witness table for TransportObservationHandler<A, B>);

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_254363D80()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254363E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 288) = a3;
  *(v4 + 296) = v3;
  *(v4 + 272) = a1;
  *(v4 + 280) = a2;
  *(v4 + 304) = *(a3 + 24);
  v5 = sub_2543A30C8();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  v6 = *v3;
  *(v4 + 216) = v3[1];
  v7 = v3[3];
  *(v4 + 232) = v3[2];
  *(v4 + 336) = v6;
  *(v4 + 352) = v7;
  *(v4 + 248) = v3[4];

  return MEMORY[0x2822009F8](sub_254363EE8);
}

uint64_t sub_254363EE8()
{
  *(v0 + 16) = *(v0 + 336);
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 352);
  v4 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 80) = v1[4];
  OUTLINED_FUNCTION_40_3();
  MEMORY[0x259C093D0](0xD00000000000001FLL, 0x80000002543BA210);
  v5 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v5, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x7374656772617420, 0xE90000000000003DLL);
  if (v2)
  {
    v6 = *(v0 + 280);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      swift_getAssociatedConformanceWitness();
      sub_25432B00C();
      v6 = v7;
    }

    else
    {

      v6 = MEMORY[0x277D84FA0];
    }
  }

  v8 = *(v0 + 280);
  *(v0 + 264) = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_2543A2EB8();
  sub_2543A2768();
  swift_getWitnessTable();
  sub_2543A35D8();

  v10 = sub_2542DF684() & 1;
  *(v0 + 416) = v10;
  Logging.ulog(_:extended:)(v16, v10);

  *(v0 + 368) = swift_getObjectType();
  if (v2)
  {
    v11 = *(v0 + 344);
    *(v0 + 200) = v9;
    OUTLINED_FUNCTION_0_34();
    *(v0 + 208) = swift_getWitnessTable();
    *(v0 + 176) = v8;
    *(v0 + 392) = *(v11 + 96);
    *(v0 + 400) = (v11 + 96) & 0xFFFFFFFFFFFFLL | 0xEC1A000000000000;
    sub_2543A2768();
  }

  else
  {
    v12 = *(v0 + 344);
    *(v0 + 376) = *(v12 + 104);
    *(v0 + 384) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0x2E76000000000000;
  }

  sub_2543A2B58();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_254364218()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 417) = (*(v0 + 376))(*(v0 + 272), *(v0 + 368), *(v0 + 344)) & 1;
  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254364288()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 417) == 1)
  {
    v1 = OUTLINED_FUNCTION_13_11();
    *(v0 + 144) = v2;
    *(v0 + 160) = v1;
    v3._object = 0x80000002543BA230;
    v3._countAndFlagsBits = 0xD000000000000025;
    Logging.ulog(_:extended:)(v3, v4);
    OUTLINED_FUNCTION_4_17(v5, v6, v7, v8, v9, v10, v11, v12, v25);
    v26 = v13;
    v14 = swift_task_alloc();
    *(v0 + 408) = v14;
    *v14 = v0;
    v22 = OUTLINED_FUNCTION_9_12(v14, v15, v16, v17, v18, v19, v20, v21, v26);

    return v22();
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v24();
  }
}

uint64_t sub_254364388()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  *(v0 + 418) = (*(v0 + 392))(v1, *(v0 + 272), v0 + 176, *(v0 + 368), *(v0 + 344)) & 1;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v4 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254364430()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 418) == 1)
  {
    v1 = OUTLINED_FUNCTION_13_11();
    *(v0 + 144) = v2;
    *(v0 + 160) = v1;
    v3._object = 0x80000002543BA230;
    v3._countAndFlagsBits = 0xD000000000000025;
    Logging.ulog(_:extended:)(v3, v4);
    OUTLINED_FUNCTION_4_17(v5, v6, v7, v8, v9, v10, v11, v12, v25);
    v26 = v13;
    v14 = swift_task_alloc();
    *(v0 + 408) = v14;
    *v14 = v0;
    v22 = OUTLINED_FUNCTION_9_12(v14, v15, v16, v17, v18, v19, v20, v21, v26);

    return v22();
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v24();
  }
}

uint64_t sub_254364530()
{
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_254364634(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_2543A2768();
    v3 = vars8;
  }

  return sub_2543A2768();
}

uint64_t sub_254364670(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2543646BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2543646FC()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  OUTLINED_FUNCTION_72_2();

  return sub_254363228(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t TransportObservationHandler.handleLostMember(_:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = OUTLINED_FUNCTION_6();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2543647F4()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[24];
  memcpy(v0 + 2, v1, 0x50uLL);
  MEMORY[0x259C093D0](0xD000000000000014, 0x80000002543B93E0);
  v2 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v2, 0xE800000000000000);
  sub_2543A35C8();
  sub_2542DF684();
  v3._countAndFlagsBits = OUTLINED_FUNCTION_92();
  Logging.ulog(_:extended:)(v3, v4);

  memcpy(v0 + 12, v1, 0x50uLL);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_25436494C;
  v7 = v0[22];
  v6 = v0[23];

  return sub_254363E00(v7, 0, v6);
}

uint64_t sub_25436494C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254364A2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return TransportObservationHandler.handle(_:from:)();
}

uint64_t sub_254364B10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254364B54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2542D32CC;

  return TransportObservationHandler.handleLostMember(_:)(a1, a2);
}

uint64_t sub_254364BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_254364C3C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254364C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254364CE8()
{
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_3_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_72_2();

  return sub_2543620D8(v3, v4, v5);
}

__n128 OUTLINED_FUNCTION_13_11()
{
  *(v0 + 96) = *(v0 + 336);
  v1 = *(v0 + 232);
  *(v0 + 112) = *(v0 + 216);
  *(v0 + 128) = v1;
  return *(v0 + 248);
}

uint64_t OUTLINED_FUNCTION_18_6()
{
}

void OUTLINED_FUNCTION_22_2()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_24_7(char a1)
{

  static Logging.ulog(_:_:extended:)(20, v2, v1, a1 & 1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  *(v1 + 88) = v0;
  *(v1 + 320) = v0;

  return sub_2543A2EB8();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{

  return sub_25434D220(v1, a1, v3, v2, v4);
}

void OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15[6] = v14;
  v15[7] = a12;
  v15[8] = a13;
  v15[9] = a14;
}

void OUTLINED_FUNCTION_39_3()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return sub_2543A3298();
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings23TransportMessagingErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t sub_2543650F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254365134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25436517C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TransportObservationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254365274);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2543652B0()
{
  result = qword_27F5E1ED8[0];
  if (!qword_27F5E1ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E1ED8);
  }

  return result;
}

uint64_t sub_254365304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = OUTLINED_FUNCTION_1_30(AssociatedTypeWitness, v3, v4, v5, &associated type descriptor for TransportObservationUpdate.Target);
  v37 = OUTLINED_FUNCTION_0_35(v36, v6, v7, v8, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Decodable);
  v38 = OUTLINED_FUNCTION_0_35(v37, v9, v10, v11, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Encodable);
  v39 = OUTLINED_FUNCTION_0_35(v38, v12, v13, v14, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Hashable);
  updated = type metadata accessor for ObservationUpdateScope(255, &v36);
  v16 = sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &AssociatedTypeWitness - v18;
  v20 = *(v16 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &AssociatedTypeWitness - v22;
  OUTLINED_FUNCTION_1_30(v24, v25, v26, v27, &associated type descriptor for TransportObservationUpdate.Failure);
  swift_getAssociatedConformanceWitness();
  sub_2543A20C8();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, updated);
  v28 = *(TupleTypeMetadata2 + 48);
  v30 = AssociatedTypeWitness;
  v29 = v35;
  v31 = *(AssociatedTypeWitness - 8);
  (*(v31 + 16))(v19, v35, AssociatedTypeWitness);
  (*(v20 + 32))(&v19[v28], v23, v16);
  v32 = sub_2543A20D8();
  (*(v31 + 8))(v29, v30);
  return v32;
}

uint64_t sub_254365594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_254365634()
{
  swift_getWitnessTable();

  return sub_25430D598();
}

uint64_t sub_254365688(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_1_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_254365704()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC58, &qword_2543A7F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A7E00;
  *(inited + 32) = 0;
  v3 = inited;
  LOBYTE(inited) = v2;
  switch(v2)
  {
    case 2:
      LOBYTE(inited) = 4;
      break;
    case 3:
      LOBYTE(inited) = 5;
      break;
    case 4:
      LOBYTE(inited) = 7;
      break;
    case 5:
      LOBYTE(inited) = 8;
      break;
    case 6:
      LODWORD(inited) = 0x60302u >> (8 * v1);
      break;
    default:
      break;
  }

  v5 = sub_254365CD4(inited);
  v3[8] = MEMORY[0x277D837D0];
  v3[5] = v5;
  v3[6] = v6;
  sub_2543667D4();
  v67 = sub_2543A2748();
  switch(v2)
  {
    case 0:
      swift_getErrorValue();
      v7 = v59;
      v8 = v60;
      goto LABEL_11;
    case 1:
      swift_getErrorValue();
      v7 = v63;
      v8 = v64;
LABEL_11:
      v19 = Error.nsError.getter(v7, v8);
      v20 = sub_25436608C();
      v22 = v21;

      if (v22 >> 60 == 15)
      {
        v20 = 0;
      }

      v17 = OUTLINED_FUNCTION_2_31(v23, v24, v25, v26, v27, v28, v29, v30, v58, v59, v60, v61, v62, v63, v64, v65, v20);
      v18 = 1;
      goto LABEL_17;
    case 2:
      v31 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v31, v32, v33, v34, v35, v36, v37, v38, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 2;
      goto LABEL_17;
    case 3:
      v9 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v9, v10, v11, v12, v13, v14, v15, v16, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 3;
      goto LABEL_17;
    case 4:
      v39 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v39, v40, v41, v42, v43, v44, v45, v46, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 4;
      goto LABEL_17;
    case 5:
      v47 = OUTLINED_FUNCTION_1_31();
      v17 = OUTLINED_FUNCTION_2_31(v47, v48, v49, v50, v51, v52, v53, v54, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v18 = 5;
LABEL_17:
      sub_25439471C(v17, v18);
      break;
    case 6:
      break;
    default:
      JUMPOUT(0);
  }

  v55 = sub_25439E374(v67);

  v56 = sub_25436616C(v55);

  return v56;
}

void sub_254365960(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_254366430(a2);

  if (v3)
  {
    sub_25439E6C4(v3);
    v5 = v4;

    sub_254394938(0, v5, v109);
    if (v110)
    {
      if (OUTLINED_FUNCTION_0_36(v6, v7, v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v97, v103, v109[0]))
      {
        switch(sub_254365C88(v98, v104))
        {
          case 1u:
            sub_254394938(1, v5, v109);

            if (!v110)
            {
              goto LABEL_10;
            }

            if ((OUTLINED_FUNCTION_0_36(v56, v57, v58, MEMORY[0x277CC9318], v59, v60, v61, v62, v98, v104, v109[0]) & 1) == 0)
            {
              goto LABEL_12;
            }

            sub_2542D6250(0, &qword_27F5DFD40, 0x277CCA9B8);
            v63 = OUTLINED_FUNCTION_4_1();
            v64 = sub_2543666E8(v63);
            v65 = OUTLINED_FUNCTION_4_1();
            sub_2542D7D40(v65, v66);
            if (!v64)
            {
              goto LABEL_12;
            }

            *a1 = v64;
            *(a1 + 8) = 0;
            v24 = 1;
            goto LABEL_13;
          case 2u:

            *a1 = 0;
            *(a1 + 8) = 0;
            goto LABEL_32;
          case 3u:

            v40 = xmmword_2543AE8F0;
            goto LABEL_31;
          case 4u:
            sub_254394938(2, v5, v109);

            if (!v110)
            {
              goto LABEL_10;
            }

            v32 = OUTLINED_FUNCTION_0_36(v25, v26, v27, MEMORY[0x277D837D0], v28, v29, v30, v31, v98, v104, v109[0]);
            if ((v32 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v32, v33, v34, v35, v36, v37, v38, v39, v99, v105);
            v24 = 2;
            goto LABEL_13;
          case 5u:
            sub_254394938(3, v5, v109);

            if (!v110)
            {
              goto LABEL_10;
            }

            v74 = OUTLINED_FUNCTION_0_36(v67, v68, v69, MEMORY[0x277D837D0], v70, v71, v72, v73, v98, v104, v109[0]);
            if ((v74 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v74, v75, v76, v77, v78, v79, v80, v81, v101, v107);
            v24 = 3;
            goto LABEL_13;
          case 6u:

            v40 = xmmword_2543AE910;
LABEL_31:
            *a1 = v40;
LABEL_32:
            v24 = 6;
            goto LABEL_13;
          case 7u:
            sub_254394938(4, v5, v109);

            if (!v110)
            {
              goto LABEL_10;
            }

            v48 = OUTLINED_FUNCTION_0_36(v41, v42, v43, MEMORY[0x277D837D0], v44, v45, v46, v47, v98, v104, v109[0]);
            if ((v48 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v48, v49, v50, v51, v52, v53, v54, v55, v100, v106);
            v24 = 4;
            goto LABEL_13;
          case 8u:
            sub_254394938(5, v5, v109);

            if (!v110)
            {
              goto LABEL_10;
            }

            v89 = OUTLINED_FUNCTION_0_36(v82, v83, v84, MEMORY[0x277D837D0], v85, v86, v87, v88, v98, v104, v109[0]);
            if ((v89 & 1) == 0)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_3_23(v89, v90, v91, v92, v93, v94, v95, v96, v102, v108);
            v24 = 5;
            goto LABEL_13;
          case 9u:
            break;
          default:
            sub_254394938(1, v5, v109);

            if (!v110)
            {
              goto LABEL_10;
            }

            if ((OUTLINED_FUNCTION_0_36(v13, v14, v15, MEMORY[0x277CC9318], v16, v17, v18, v19, v98, v104, v109[0]) & 1) == 0)
            {
              goto LABEL_12;
            }

            sub_2542D6250(0, &qword_27F5DFD40, 0x277CCA9B8);
            v20 = OUTLINED_FUNCTION_4_1();
            v21 = sub_2543666E8(v20);
            v22 = OUTLINED_FUNCTION_4_1();
            sub_2542D7D40(v22, v23);
            if (!v21)
            {
              goto LABEL_12;
            }

            *a1 = v21;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            return;
        }
      }
    }

    else
    {

LABEL_10:
      sub_2542F5064(v109, &unk_27F5DFA00, &unk_2543A76C0);
    }
  }

LABEL_12:
  *a1 = 0;
  *(a1 + 8) = 0;
  v24 = -1;
LABEL_13:
  *(a1 + 16) = v24;
}

unint64_t sub_254365C88(uint64_t a1, uint64_t a2)
{
  v2 = sub_2543A3438();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_254365CD4(char a1)
{
  result = 0x7365757165526F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      return result;
    case 8:
      result = 0x6E6F707365526F6ELL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings21RapportTransportErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_254365E50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254365E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_254365ED4(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_254365EFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2543A3438();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_254365F48(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x726F727265;
      break;
    case 2:
      v3 = 1651336557;
      goto LABEL_6;
    case 3:
      v3 = 1684956531;
LABEL_6:
      result = v3 | 0x4449726500000000;
      break;
    case 4:
      result = 0x4B74736575716572;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254366018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254365EFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_254366048@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254365F48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25436608C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:0 error:v7];
  v2 = v7[0];
  if (v1)
  {
    v3 = sub_2543A1EF8();
  }

  else
  {
    v4 = v2;
    v5 = sub_2543A1E88();

    swift_willThrow();
    return 0;
  }

  return v3;
}

uint64_t sub_25436616C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1F78, &qword_2543AFE70);
    v2 = sub_2543A3418();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_2543A2768();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2542D62F0(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_2543A2768();
    swift_dynamicCast();
    sub_2542F50C4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2542F50C4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2542F50C4(v31, v32);
    result = sub_2543A3208();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2542F50C4(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_254366430(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1F60, &qword_2543AFE58);
    v2 = sub_2543A3418();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_2543A2768();
  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_254366778(*(a1 + 48) + 40 * v10, __src);
    sub_2542D62F0(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_254366778(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_2542D62F0(&__dst[40], v20);
    sub_2542F5064(__dst, &qword_27F5E1F68, &unk_2543AFE60);
    v21 = v18;
    sub_2542F50C4(v20, v22);
    v11 = v21;
    sub_2542F50C4(v22, v23);
    sub_2542F50C4(v23, &v21);
    result = sub_25438E0D0(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v14);
      result = sub_2542F50C4(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_2542F50C4(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_2542F5064(__dst, &qword_27F5E1F68, &unk_2543AFE60);

  return 0;
}

uint64_t sub_2543666E8(uint64_t a1)
{
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  sub_2542D6250(0, &qword_27F5DFD40, 0x277CCA9B8);
  return sub_2543A3038();
}

unint64_t sub_2543667D4()
{
  result = qword_27F5E1F70;
  if (!qword_27F5E1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1F70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RapportTransportError.CodingKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RapportTransportError.CodingKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25436697CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2543669B8()
{
  result = qword_27F5E1F80;
  if (!qword_27F5E1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1F80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_2543A2768();
}

uint64_t sub_254366AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  OUTLINED_FUNCTION_175();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  OUTLINED_FUNCTION_175();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_2543AFFE0;
  v9[5] = v8;
  sub_2543688F4(0, 0, v6, &unk_2543AFFF0, v9);
}

id sub_254366C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_18();
  ObjectType = swift_getObjectType();
  v10 = &v4[qword_27F5E1F90];
  *v10 = v7;
  *(v10 + 1) = v6;
  v11 = &v4[qword_27F5E1F98];
  *v11 = v5;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_254366C74(void *a1, void *a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();

  v4 = [a1 description];
  sub_2543A2878();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_13_8();

  OUTLINED_FUNCTION_12_17();
  MEMORY[0x259C093D0](0xD00000000000001DLL);
  v5 = [a2 description];
  v6 = sub_2543A2878();
  v8 = v7;

  MEMORY[0x259C093D0](v6, v8);

  v9 = sub_2542DF684() & 1;
  v10._countAndFlagsBits = 0x206C656E6E616843;
  v10._object = 0xE800000000000000;
  Logging.ulog(_:extended:)(v10, v9);
}

void sub_254366DA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_254366C74(v6, v7);
}

uint64_t sub_254366E24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  MEMORY[0x259C093D0](0x206C656E6E616843, 0xE800000000000000);
  v5 = [a1 description];
  sub_2543A2878();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_13_8();

  OUTLINED_FUNCTION_12_17();
  MEMORY[0x259C093D0](0xD000000000000025);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v6 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v6);
}

void sub_254366F3C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_2543A2878();
  v8 = a3;
  v12 = a5;
  v9 = a1;
  sub_254366E24(v8, v10, v11, v12);
}

uint64_t sub_254366FD0()
{
  OUTLINED_FUNCTION_28();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_254367040);
}

uint64_t sub_254367040()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[2] = v0[5];
  sub_2543A3298();

  v3 = [v2 description];
  v4 = sub_2543A2878();
  v6 = v5;

  MEMORY[0x259C093D0](v4, v6);

  OUTLINED_FUNCTION_14_10();
  v7 = [v1 description];
  v8 = sub_2543A2878();
  v10 = v9;

  MEMORY[0x259C093D0](v8, v10);

  v11 = sub_2542DF684() & 1;
  v12._countAndFlagsBits = 0xD000000000000033;
  v12._object = 0x80000002543BA3C0;
  Logging.ulog(_:extended:)(v12, v11);

  v13 = v0[1];

  return v13(1, 0);
}

uint64_t sub_2543671C4(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;

  return sub_254366AA8(&unk_2543AFFD0, v9);
}

uint64_t sub_25436725C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_254367334;

  return sub_254366FD0();
}

uint64_t sub_254367334()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_41();
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v0;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  (v6)[2](v6, v4 & 1, v2);
  _Block_release(v6);

  OUTLINED_FUNCTION_27();

  return v12();
}

void sub_2543674AC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v48[1] = *MEMORY[0x277D85000] & *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v10 - 8);
  v48[0] = v48 - v11;
  OUTLINED_FUNCTION_16_9();
  sub_2543A3298();

  v49 = 0xD00000000000002FLL;
  v50 = 0x80000002543BA310;
  v12 = [a1 description];
  v13 = sub_2543A2878();
  v15 = v14;

  MEMORY[0x259C093D0](v13, v15);

  OUTLINED_FUNCTION_10_13();
  v16 = [a2 description];
  v17 = sub_2543A2878();
  v19 = v18;

  MEMORY[0x259C093D0](v17, v19);

  MEMORY[0x259C093D0](0x736E6F7073657220, 0xEA00000000003D65);
  v48[2] = a4;
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF330, &qword_2543AFFB0);
  v21 = sub_2543A2888();
  MEMORY[0x259C093D0](v21);

  v22 = v49;
  v23 = v50;
  v24 = sub_2542DF684() & 1;
  v25._countAndFlagsBits = v22;
  v26 = ObjectType;
  v25._object = v23;
  Logging.ulog(_:extended:)(v25, v24);

  if (a4)
  {
    v27 = swift_dynamicCastUnknownClass();
    if (v27)
    {
      v28 = v27;
      v29 = sub_2543A2BB8();
      v30 = v48[0];
      __swift_storeEnumTagSinglePayload(v48[0], 1, 1, v29);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v5;
      v31[5] = a2;
      v31[6] = v28;
      v32 = v20;
      v33 = v5;
      v34 = a2;
      sub_2542CCD54(0, 0, v30);
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      v51 = v5;
      v42 = v20;
      sub_2543A3298();
      OUTLINED_FUNCTION_18_7();
      v43 = [v42 description];
      sub_2543A2878();
      OUTLINED_FUNCTION_19_6();
      MEMORY[0x259C093D0](v5, a2);

      MEMORY[0x259C093D0](0x6574636570786520, 0xEE003D6570795464);
      v44 = sub_2543A37B8();
      MEMORY[0x259C093D0](v44);

      v45 = v49;
      v46 = v50;
      v47 = sub_2542DF684();
      Logging.ulog(_:_:extended:)(90, v45, v46, v47 & 1, v26, &off_28664B288);
    }
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = v5;
    sub_2543A3298();
    OUTLINED_FUNCTION_18_7();
    v35 = [a2 description];
    v36 = sub_2543A2878();
    v38 = v37;

    MEMORY[0x259C093D0](v36, v38);

    v39 = v49;
    v40 = v50;
    v41 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, v39, v40, v41 & 1, v26, &off_28664B288);
  }
}

uint64_t sub_254367928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25436794C);
}

uint64_t sub_25436794C()
{
  OUTLINED_FUNCTION_28();
  v5 = (*(v0[2] + qword_27F5E1F90) + **(v0[2] + qword_27F5E1F90));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_254367A48;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_254367A48()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

void sub_254367B28(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a1;
  sub_2543674AC(v10, v11, v14, a6);
}

uint64_t sub_254367BD8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  OUTLINED_FUNCTION_16_9();
  sub_2543A3298();

  v34 = 0xD000000000000035;
  v35 = 0x80000002543BA2D0;
  v13 = [a1 description];
  v14 = sub_2543A2878();
  v16 = v15;

  MEMORY[0x259C093D0](v14, v16);

  OUTLINED_FUNCTION_10_13();
  v17 = [a2 description];
  v18 = sub_2543A2878();
  v20 = v19;

  MEMORY[0x259C093D0](v18, v20);

  v21 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v21, 0xE700000000000000);
  v33 = a5;
  v22 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF340, &qword_2543A68E8);
  v23 = sub_2543A2888();
  MEMORY[0x259C093D0](v23);

  v24 = v34;
  v25 = v35;
  v26 = sub_2542DF684() & 1;
  v27._countAndFlagsBits = v24;
  v27._object = v25;
  Logging.ulog(_:extended:)(v27, v26);

  v28 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v28);
  OUTLINED_FUNCTION_175();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v6;
  v29[5] = a2;
  v30 = v6;
  v31 = a2;
  sub_2542CCD54(0, 0, v12);
}

uint64_t sub_254367E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_254367E4C);
}

uint64_t sub_254367E4C()
{
  OUTLINED_FUNCTION_28();
  v4 = (*(v0[2] + qword_27F5E1F98) + **(v0[2] + qword_27F5E1F98));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2543168D0;
  v2 = v0[3];

  return v4(v2);
}

void sub_254367F48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v19 = a7;
  sub_254367BD8(v12, v13, v17, v18, a7);
}

uint64_t sub_254368000()
{
  OUTLINED_FUNCTION_4_18();
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  OUTLINED_FUNCTION_12_17();
  MEMORY[0x259C093D0](0xD000000000000032);
  MEMORY[0x259C093D0](0x656375646F727020, 0xEA00000000003D72);
  v2 = [v1 description];
  v3 = sub_2543A2878();
  v5 = v4;

  MEMORY[0x259C093D0](v3, v5);

  OUTLINED_FUNCTION_14_10();
  v6 = [v0 description];
  sub_2543A2878();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_13_8();

  v7 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v7, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v8 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v8);
}

void sub_254368170(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = a1;
  sub_254368000();
}

uint64_t sub_254368240(uint64_t a1)
{
}

uint64_t sub_2543682AC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2543682F0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v5[1] = sub_2542DB160;
  v7 = OUTLINED_FUNCTION_16();

  return sub_254367E2C(v7, v8, v1, v3, v2);
}

uint64_t sub_25436839C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2543683EC()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v6[1] = sub_2542DB160;
  v8 = OUTLINED_FUNCTION_16();

  return sub_254367928(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_2543684A0()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2543684EC()
{
  OUTLINED_FUNCTION_40();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_23(v1);

  return v3(v2);
}

uint64_t sub_25436858C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2542DB160;

  return v6();
}

uint64_t sub_254368678()
{
  OUTLINED_FUNCTION_40();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_23(v1);

  return v3(v2);
}

uint64_t sub_254368718(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2542D32CC;

  return v7();
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25436883C()
{
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  v3 = OUTLINED_FUNCTION_16();

  return v4(v3);
}

uint64_t sub_2543688F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_2542DA8D8(a3, v22 - v10);
  v12 = sub_2543A2BB8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_254368B90(v11);
  }

  else
  {
    sub_2543A2BA8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_2543A2B58();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_2543A28A8() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_254368B90(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254368B90(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_254368B90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254368BF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_254368CF0;

  return v6(a1);
}

uint64_t sub_254368CF0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254368DD4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254368E0C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  v3 = OUTLINED_FUNCTION_16();

  return v4(v3);
}

uint64_t sub_254368EB4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_2542D32CC;
  v3 = OUTLINED_FUNCTION_16();

  return v4(v3);
}

void OUTLINED_FUNCTION_14_10()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_16_9()
{
  *(v1 - 104) = 0;
  *(v1 - 96) = 0xE000000000000000;
  *(v1 - 88) = v0;
}

void OUTLINED_FUNCTION_18_7()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_19_6()
{
}

uint64_t sub_254369100(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_24();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v48 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_24();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v36 = v21;
  v37 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v24 = sub_2543A2EF8();
  if (!v24)
  {
    return sub_2543A2A88();
  }

  v47 = v24;
  v51 = sub_2543A3328();
  v38 = sub_2543A3338();
  sub_2543A3308();
  result = sub_2543A2ED8();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_2543A2FA8();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_2_32();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_2_32();
      v30(v29);
      sub_2543A3318();
      result = sub_2543A2F58();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2543694D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(a4 + 80))();
  sub_254369548(a2, v4, a1, a3, a4);
  return v9 & 0x101;
}

uint64_t sub_254369548(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v10 = sub_2543A30C8();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
  v16 = *(a5 + 64);
  v27 = a3;
  v28 = a2;
  v17 = v16(a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = MEMORY[0x259C098B0](v15, v17, AssociatedTypeWitness, v14, AssociatedConformanceWitness, *(v13 + 8));
  v29[0] = v20;
  v21 = sub_2543A2EB8();
  WitnessTable = swift_getWitnessTable();
  if (!sub_254372EE4())
  {
  }

  v29[3] = v21;
  v29[4] = WitnessTable;
  v29[0] = v20;
  (*(a5 + 96))(v12, v27, v29, a4, a5);
  (*(v25 + 8))(v12, v26);
  return __swift_destroy_boxed_opaque_existential_0(v29);
}

uint64_t sub_254369780(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v8);
  v19[2] = a3;
  v19[3] = a4;
  v20 = v4;
  v21 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2080, &unk_2543B0070);
  v12 = sub_254369100(sub_25436A204, v19, v8, v10, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v11);
  v13 = 0;
  v14 = 0;
  v15 = *(v12 + 16);
  for (i = (v12 + 33); v15; --v15)
  {
    v13 |= *(i - 1);
    v14 |= *i;
    i += 2;
  }

  if (v14)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 0xFFFFFFFE | v13 & 1;
}

uint64_t sub_25436987C(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_2();
  v34 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  v22 = a3[3];
  v21 = a3[4];
  v23 = __swift_project_boxed_opaque_existential_0(a3, v22);
  v44 = a4;
  v45 = a5;
  v46 = v32;
  v47 = v31;
  v32 = sub_254369100(sub_25436A1B8, v43, v22, TupleTypeMetadata2, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v23);
  v48 = v32;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
  v24 = *(TupleTypeMetadata2 + 48);
  *v17 = 0;
  v25 = v9 + 32;
  v26 = *(v9 + 32);
  AssociatedTypeWitness = v25;
  v27 = v30;
  v26(&v17[v24], v12, v30);
  v41 = a4;
  v42 = a5;
  v36 = a4;
  v37 = a5;
  v38 = sub_25436A1DC;
  v39 = &v40;
  sub_2543A2B38();
  swift_getWitnessTable();
  sub_2543A29C8();
  (*(v34 + 8))(v17, TupleTypeMetadata2);

  v28 = *v20;
  v26(v35, &v20[*(TupleTypeMetadata2 + 48)], v27);
  return v28;
}

uint64_t sub_254369BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = (*(a4 + 88))(&a5[*(TupleTypeMetadata2 + 48)], a2, a1, a3, a4);
  *a5 = result & 1;
  return result;
}

uint64_t sub_254369C98(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v35 = a4;
  v34 = a3;
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v19.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v21 = &v32 - v20;
  *(&v32 - v20) = a2;
  v23 = *(v8 - 8);
  v24 = *(v23 + 16);
  v24(&v32 + *(v22 + 48) - v20, v34, v8, v19);
  *v17 = v35;
  (v24)(&v17[*(TupleTypeMetadata2 + 48)], v37, v8);
  v33 = v23;
  if (a2)
  {
    LODWORD(v37) = 1;
  }

  else
  {
    (*(v10 + 16))(v14, v17, TupleTypeMetadata2);
    LODWORD(v37) = *v14;
    (*(v23 + 8))(&v14[*(TupleTypeMetadata2 + 48)], v8);
  }

  v25 = *(v10 + 32);
  v26 = v36;
  v25(v36, v21, TupleTypeMetadata2);
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = AssociatedTypeWitness;
  if (__swift_getEnumTagSinglePayload(&v26[v27], 1, AssociatedTypeWitness) == 1)
  {
    v25(v14, v17, TupleTypeMetadata2);
    v29 = v33;
    (*(v33 + 32))(v39, &v14[*(TupleTypeMetadata2 + 48)], v8);
    if (__swift_getEnumTagSinglePayload(&v26[v27], 1, v28) != 1)
    {
      (*(v29 + 8))(&v26[v27], v8);
    }
  }

  else
  {
    (*(v10 + 8))(v17, TupleTypeMetadata2);
    v30 = v39;
    (*(*(v28 - 8) + 32))(v39, &v26[v27], v28);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v28);
  }

  return v37;
}

uint64_t sub_25436A004@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(_BYTE *, uint64_t, unsigned __int8 *, void, unsigned __int8 *)@<X2>, _BYTE *a6@<X8>)
{
  v10 = *a1;
  swift_getAssociatedTypeWitness();
  sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a3(&a6[*(TupleTypeMetadata2 + 48)], v10, &a1[*(TupleTypeMetadata2 + 48)], *a2, &a2[*(TupleTypeMetadata2 + 48)]);
  *a6 = result & 1;
  return result;
}

uint64_t sub_25436A0D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 96);
  v11[0] = *(a3 + 80);
  v11[1] = v7;
  v8 = type metadata accessor for TargetedObserverStore(0, v11);
  v9 = sub_254369780(a1, a2, v8, a4);
  return v9 & 1 | ((v9 > 0xFFu) << 8);
}

uint64_t sub_25436A144(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 96);
  v12[0] = *(a4 + 80);
  v12[1] = v9;
  v10 = type metadata accessor for TargetedObserverStore(0, v12);
  return sub_25436987C(a1, a2, a3, v10, a5) & 1;
}

uint64_t sub_25436A204@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2[3] + 72))(v2[5], a1, v2[2]);
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(__int16 a1)
{
  *(v1 - 2) = a1 & 1;
  *(v1 - 3) = HIBYTE(a1) & 1;
  return a1 & 1 | ((HIBYTE(a1) & 1) << 8);
}

uint64_t sub_25436A2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v7 = v6(a2, a3);
  MEMORY[0x259C093D0](v7);

  sub_2543005C0(40, 0xD00000000000001DLL, 0x80000002543BA4E0, 0);

  v8 = v6(a2, a3);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 16);
  sub_25431997C(sub_25436A904, v11, v8, v10, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v14;

  return swift_endAccess();
}

uint64_t sub_25436A40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2543A3298();

  *&v18 = 0xD000000000000026;
  *(&v18 + 1) = 0x80000002543BA4B0;
  MEMORY[0x259C093D0](a1, a2);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  MEMORY[0x259C093D0](a4, a5);
  sub_2543005C0(40, 0xD000000000000026, 0x80000002543BA4B0, 0);

  swift_beginAccess();
  v12 = sub_254396570();
  if (v12)
  {
    v13 = v11;
    swift_endAccess();
    v20 = a3;
    v17[0] = a4;
    v17[1] = a5;
    v12(&v18, &v20, v17);
    sub_2542D7A3C(v12, v13);
    if (v19)
    {
      return sub_2542DA8C0(&v18, a6);
    }

    sub_254300464(&v18);
  }

  else
  {
    swift_endAccess();
    a5 = a2;
    a4 = a1;
  }

  sub_25436A8A0();
  swift_allocError();
  *v15 = a4;
  *(v15 + 8) = a5;
  *(v15 + 16) = v12 != 0;
  sub_2543A2768();
  return swift_willThrow();
}

uint64_t sub_25436A5D8()
{
  type metadata accessor for TransportRequestsRegister();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2098, &qword_2543B00E8);
  result = sub_2543A2748();
  *(v0 + 16) = result;
  qword_27F5E2088 = v0;
  return result;
}

uint64_t static TransportRequestsRegister.shared.getter()
{
  if (qword_27F5DF088 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25436A6A4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_2543A30C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  sub_25430D830(*a1, a1[1], a2, &v14 - v10);
  if (__swift_getEnumTagSinglePayload(v11, 1, a2) == 1)
  {
    result = (*(v9 + 8))(v11, v8);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    *(a4 + 24) = a2;
    *(a4 + 32) = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, v11, a2);
  }

  return result;
}

uint64_t TransportRequestsRegister.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_25436A8A0()
{
  result = qword_27F5E2090;
  if (!qword_27F5E2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2090);
  }

  return result;
}

uint64_t IntroductionResponse.opalVersion.getter()
{
  v1 = *v0;
  sub_2543A2768();
  return v1;
}

uint64_t sub_25436A960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737265566C61706FLL && a2 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25436AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25436A960(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25436AA2C(uint64_t a1)
{
  v2 = sub_25436ABD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25436AA68(uint64_t a1)
{
  v2 = sub_25436ABD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntroductionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E20A0, &qword_2543B01B0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25436ABD4();
  sub_2543A3778();
  sub_2543A3548();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_25436ABD4()
{
  result = qword_27F5E20A8;
  if (!qword_27F5E20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20A8);
  }

  return result;
}

uint64_t IntroductionResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E20B0, &qword_2543B01B8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25436ABD4();
  sub_2543A3768();
  if (!v2)
  {
    v11 = sub_2543A34A8();
    v13 = v12;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25436ADE0(uint64_t a1)
{
  v2 = sub_25436AF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25436AE1C(uint64_t a1)
{
  v2 = sub_25436AF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntroductionRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E20B8, &qword_2543B01D8);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25436AF60();
  sub_2543A3778();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_25436AF60()
{
  result = qword_27F5E20C0;
  if (!qword_27F5E20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20C0);
  }

  return result;
}

unint64_t sub_25436B008()
{
  result = qword_27F5E20C8;
  if (!qword_27F5E20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20C8);
  }

  return result;
}

unint64_t sub_25436B05C()
{
  result = qword_27F5E20D0;
  if (!qword_27F5E20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20D0);
  }

  return result;
}

unint64_t sub_25436B0B4()
{
  result = qword_27F5E20D8;
  if (!qword_27F5E20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20D8);
  }

  return result;
}

unint64_t sub_25436B128(uint64_t a1)
{
  result = sub_25436B150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25436B150()
{
  result = qword_27F5E20E0;
  if (!qword_27F5E20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20E0);
  }

  return result;
}

uint64_t sub_25436B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25436B20C()
{
  result = qword_27F5E20E8;
  if (!qword_27F5E20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20E8);
  }

  return result;
}

unint64_t sub_25436B260()
{
  result = qword_27F5E20F0;
  if (!qword_27F5E20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20F0);
  }

  return result;
}

uint64_t sub_25436B2E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25436B324(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_25436B394(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25436B430);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25436B46C()
{
  result = qword_27F5E20F8;
  if (!qword_27F5E20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E20F8);
  }

  return result;
}

unint64_t sub_25436B4C4()
{
  result = qword_27F5E2100;
  if (!qword_27F5E2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2100);
  }

  return result;
}

unint64_t sub_25436B51C()
{
  result = qword_27F5E2108;
  if (!qword_27F5E2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2108);
  }

  return result;
}

unint64_t sub_25436B574()
{
  result = qword_27F5E2110;
  if (!qword_27F5E2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2110);
  }

  return result;
}

unint64_t sub_25436B5CC()
{
  result = qword_27F5E2118;
  if (!qword_27F5E2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2118);
  }

  return result;
}

uint64_t sub_25436B6A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_100(v3, MEMORY[0x277D84950]);
  *v4 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_25436B70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

id sub_25436B77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 24);
  [v15 lock];
  sub_2543A1F78();
  (*(v10 + 16))(v14, a3, v8);
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + 16);
  sub_254319550(a1, a2, v14);
  *(v4 + 16) = v17;
  (*(v10 + 8))(v14, v8);
  swift_endAccess();
  return [v15 unlock];
}

uint64_t sub_25436B8F0(uint64_t a1)
{
  v3 = *(v1 + 24);
  [v3 lock];
  swift_beginAccess();
  sub_2542D56FC(a1);
  swift_endAccess();
  [v3 unlock];
  return OUTLINED_FUNCTION_5_1();
}

void sub_25436B978(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_67();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_25437259C, v8);
}

void sub_25436BA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2543A1E78();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_25436BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2542DF684();
  v9._object = 0x80000002543BA520;
  v10 = v8 & 1;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  Logging.ulog(_:extended:)(v9, v10);
  v28 = *(a4 + 24);
  v11 = OUTLINED_FUNCTION_5_10();
  v13 = v12(v11);
  v27 = *(a4 + 40);
  v14 = OUTLINED_FUNCTION_5_10();
  v16 = v15(v14);
  OUTLINED_FUNCTION_67();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = a1;
  v18[7] = a2;
  v33 = sub_25437224C;
  v34 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_25436B978;
  v32 = &block_descriptor_61;
  v19 = _Block_copy(&aBlock);

  type metadata accessor for CoordinationRequest();
  [v13 registerHandler:v19 forRequestClass:swift_getObjCClassFromMetadata()];
  _Block_release(v19);

  v20 = OUTLINED_FUNCTION_5_10();
  v21 = v28(v20);
  v22 = OUTLINED_FUNCTION_5_10();
  v23 = v27(v22);
  OUTLINED_FUNCTION_67();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = v23;
  v25[5] = v24;
  v33 = sub_2543722D4;
  v34 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_25436B978;
  v32 = &block_descriptor_68;
  v26 = _Block_copy(&aBlock);

  type metadata accessor for CoordinationObservationUpdate();
  [v21 registerHandler:v26 forRequestClass:swift_getObjCClassFromMetadata()];
  _Block_release(v26);
}

uint64_t sub_25436BD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportServer(v8, v9);
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436BE28();
}

uint64_t sub_25436BE28()
{
  OUTLINED_FUNCTION_31();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[28] = v5;
  v1[29] = v6;
  v1[26] = v7;
  v1[27] = v8;
  v1[34] = *(v3 - 8);
  v1[35] = OUTLINED_FUNCTION_146();
  sub_2543A2B58();
  OUTLINED_FUNCTION_46_4();
  v1[36] = v9;
  v1[37] = v10;
  v11 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_25436BEFC()
{
  v0[25] = v0[33];
  v1 = v0[34];
  v22 = v0[35];
  v23 = v0[32];
  v2 = v0[30];
  v21 = v0[27];
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001BLL);
  OUTLINED_FUNCTION_57_2();
  sub_2543A35C8();
  v3 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v3, 0xE800000000000000);
  swift_getAssociatedTypeWitness();
  sub_2543A35C8();
  v4 = sub_2542DF684() & 1;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v5, v4);

  type metadata accessor for CoordinationRequest();
  (*(v1 + 16))(v22, v21, v2);
  v6 = sub_2542FFF24(v22, v2, v23);
  v0[38] = v6;
  OUTLINED_FUNCTION_28_4();
  v8 = v7();
  v0[39] = v8;
  if (!v8)
  {
    v12 = sub_254357FB0();
    OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v12);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v9 = v8;
  v10 = (*(v0[31] + 24))(v0[29]);
  v0[40] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF380, &unk_2543A6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A6820;
  *(inited + 32) = [v9 member];
  if (sub_2542EEECC(inited))
  {
    sub_254371BCC(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_2542F14A8();
  }

  sub_254371D74();
  sub_254371DB8();
  v16 = sub_2543A2DA8();
  v0[41] = v16;

  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_25436C2C0;
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF398, &unk_2543B0540);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_254372800;
  v0[13] = &block_descriptor_7;
  v0[14] = v17;
  [v10 sendRequest:v6 members:v16 withCompletionHandler:v0 + 10];
  OUTLINED_FUNCTION_98_0();

  return MEMORY[0x282200938](v18);
}

uint64_t sub_25436C2C0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 336) = v4;
  if (v4)
  {
    v5 = sub_25436C5C8;
  }

  else
  {
    v5 = sub_25436C3E0;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25436C3E0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  v3 = *(v0 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_83_2();
  swift_getAssociatedConformanceWitness();
  v5 = OUTLINED_FUNCTION_14_3();
  type metadata accessor for CoordinationResponse(v5, AssociatedTypeWitness, v6, v7);
  v8 = swift_dynamicCastClass();
  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  if (v8)
  {
    v11 = v8;
    v12 = *(v0 + 208);

    (*(*(AssociatedTypeWitness - 8) + 16))(v12, &v11[*((*MEMORY[0x277D85000] & *v11) + 0x60)], AssociatedTypeWitness);
  }

  else
  {
    swift_getObjectType();
    v14 = sub_2543A37B8();
    v16 = v15;
    v17 = sub_2543A37B8();
    v19 = v18;
    v20 = sub_254357FB0();
    OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v20);
    *v21 = v14;
    *(v21 + 8) = v16;
    *(v21 + 16) = v17;
    *(v21 + 24) = v19;
    *(v21 + 32) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_25436C5C8()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_25436C654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportServer(v8, v9);
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436C6F4();
}

uint64_t sub_25436C6F4()
{
  OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_10_16(v1, v2, v3, v4, v5, v6, v7);
  v11 = OUTLINED_FUNCTION_77_3(v8, v9, v10, &protocol requirements base descriptor for MemberDiscovery, &associated type descriptor for MemberDiscovery.Member);
  v12 = OUTLINED_FUNCTION_51_4(v11);
  v0[13] = v12;
  OUTLINED_FUNCTION_8(v12);
  v0[14] = v13;
  v0[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[16] = v14;
  v15 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_35_5(v15);
  OUTLINED_FUNCTION_46_4();
  v0[19] = v16;
  v0[20] = v17;
  v18 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v18);
}

void sub_25436C7F8()
{
  v0[2] = v0[10];
  v20 = v0[15];
  sub_2543A3298();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000001BLL);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_51_1();
  sub_2543A35C8();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  v4 = OUTLINED_FUNCTION_76_3(v1, v2, v3, &unk_2543BD2DC, &unk_2543BD2EC);
  OUTLINED_FUNCTION_80_2(v4, *(v4 + 8), v5, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  sub_2543A35C8();
  sub_2542DF684();
  v21._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_93_2(v21, v6);

  OUTLINED_FUNCTION_28_4();
  v7();
  OUTLINED_FUNCTION_52_1(v20);
  if (!v8)
  {
    (*(v0[16] + 32))(v0[17], v0[15], v0[12]);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[21] = v16;
    *v16 = v17;
    v16[1] = sub_25436CAB8;
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X7, X16 }
  }

  v9 = OUTLINED_FUNCTION_62_2();
  v10(v9);
  v11 = sub_254357FB0();
  v12 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v11);
  OUTLINED_FUNCTION_4_16(v12, v13);
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_98_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_25436CAB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_25436CC64;
  }

  else
  {
    v4 = sub_25436CBE0;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25436CBE0()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25436CC64()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25436CCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportServer(v8, v9);
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436CD7C();
}

uint64_t sub_25436CD7C()
{
  OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_10_16(v1, v2, v3, v4, v5, v6, v7);
  v11 = OUTLINED_FUNCTION_77_3(v8, v9, v10, &protocol requirements base descriptor for MemberDiscovery, &associated type descriptor for MemberDiscovery.Member);
  v12 = OUTLINED_FUNCTION_51_4(v11);
  v0[13] = v12;
  OUTLINED_FUNCTION_8(v12);
  v0[14] = v13;
  v0[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[16] = v14;
  v15 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_35_5(v15);
  OUTLINED_FUNCTION_46_4();
  v0[19] = v16;
  v0[20] = v17;
  v18 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_25436CE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000020);
  v17 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v17, 0xE600000000000000);
  v18 = sub_2543A37B8();
  MEMORY[0x259C093D0](v18);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  v22 = OUTLINED_FUNCTION_76_3(v19, v20, v21, &unk_2543BD2DC, &unk_2543BD2EC);
  OUTLINED_FUNCTION_80_2(v22, *(v22 + 8), v23, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  sub_2543A35C8();
  OUTLINED_FUNCTION_65_3();
  v24._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  Logging.ulog(_:extended:)(v24, v25);

  OUTLINED_FUNCTION_28_4();
  v26();
  OUTLINED_FUNCTION_52_1(a10);
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_62_2();
    v29(v28);
    v30 = sub_254357FB0();
    v31 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v30);
    OUTLINED_FUNCTION_4_16(v31, v32);
    OUTLINED_FUNCTION_78_2();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_48();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v42 = OUTLINED_FUNCTION_43_2();
    v43(v42);
    v44 = OUTLINED_FUNCTION_20_8();
    *(v16 + 168) = v45(v44);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v16 + 176) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_58_2(v46);
    OUTLINED_FUNCTION_48();

    return sub_25432866C();
  }
}

uint64_t sub_25436D088()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_254372820;
  }

  else
  {
    v4 = sub_254372818;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25436D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v14 = swift_task_alloc();
  *(v12 + 56) = v14;
  v15 = OUTLINED_FUNCTION_4_19(v13[7].n128_u64[0], v13[5], v13[6]);
  type metadata accessor for CoordinationTransportServer(v15, v16);
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v14 = v17;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436D274();
}

uint64_t sub_25436D274()
{
  OUTLINED_FUNCTION_31();
  v9 = OUTLINED_FUNCTION_31_6(v1, v2, v3, v4, v5, v6, v7, v8);
  v12 = OUTLINED_FUNCTION_77_3(v9, v10, v11, &protocol requirements base descriptor for MemberDiscovery, &associated type descriptor for MemberDiscovery.Member);
  v13 = OUTLINED_FUNCTION_90_2(v12);
  v0[15] = v13;
  OUTLINED_FUNCTION_8(v13);
  v0[16] = v14;
  v0[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[18] = v15;
  v16 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_75_1(v16);
  OUTLINED_FUNCTION_46_4();
  v0[21] = v17;
  v0[22] = v18;
  v19 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_25436D378()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v1 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v1, 0xE600000000000000);
  v2 = sub_2543A37B8();
  MEMORY[0x259C093D0](v2);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_80_2(AssociatedConformanceWitness, *(AssociatedConformanceWitness + 8), v4, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  sub_2543A35C8();
  OUTLINED_FUNCTION_50_2();
  v0[3] = v31;
  v9 = OUTLINED_FUNCTION_88_1(v5, v6, v7, v8, &associated type descriptor for TransportObservationUpdate.Target);
  OUTLINED_FUNCTION_89_3(v9, v10, v11, v12, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Hashable);
  OUTLINED_FUNCTION_14_3();
  v13 = sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_1();
  sub_2543A35D8();
  OUTLINED_FUNCTION_66_1();
  v32._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_93_2(v32, v14);

  v15 = OUTLINED_FUNCTION_49_1();
  v16(v15);
  OUTLINED_FUNCTION_52_1(v13);
  if (v17)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v18 = sub_254357FB0();
    v19 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v18);
    OUTLINED_FUNCTION_4_16(v19, v20);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_85();

    __asm { BRAA            X1, X16 }
  }

  v23 = OUTLINED_FUNCTION_48_2();
  v24(v23);
  v25 = OUTLINED_FUNCTION_20_8();
  v0[23] = v26(v25);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[24] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_41_4(v27);
  OUTLINED_FUNCTION_85();

  return sub_2543289EC();
}

uint64_t sub_25436D5EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_254372824;
  }

  else
  {
    v4 = sub_25437281C;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25436D728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportServer(v8, v9);
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436D7C8();
}

uint64_t sub_25436D7C8()
{
  OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_10_16(v1, v2, v3, v4, v5, v6, v7);
  v11 = OUTLINED_FUNCTION_77_3(v8, v9, v10, &protocol requirements base descriptor for MemberDiscovery, &associated type descriptor for MemberDiscovery.Member);
  v12 = OUTLINED_FUNCTION_51_4(v11);
  v0[13] = v12;
  OUTLINED_FUNCTION_8(v12);
  v0[14] = v13;
  v0[15] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[16] = v14;
  v15 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_35_5(v15);
  OUTLINED_FUNCTION_46_4();
  v0[19] = v16;
  v0[20] = v17;
  v18 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_25436D8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000020);
  v17 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v17, 0xE600000000000000);
  v18 = sub_2543A37B8();
  MEMORY[0x259C093D0](v18);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  v22 = OUTLINED_FUNCTION_76_3(v19, v20, v21, &unk_2543BD2DC, &unk_2543BD2EC);
  OUTLINED_FUNCTION_80_2(v22, *(v22 + 8), v23, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  sub_2543A35C8();
  OUTLINED_FUNCTION_65_3();
  v24._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  Logging.ulog(_:extended:)(v24, v25);

  OUTLINED_FUNCTION_28_4();
  v26();
  OUTLINED_FUNCTION_52_1(a10);
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_62_2();
    v29(v28);
    v30 = sub_254357FB0();
    v31 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v30);
    OUTLINED_FUNCTION_4_16(v31, v32);
    OUTLINED_FUNCTION_78_2();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_48();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v42 = OUTLINED_FUNCTION_43_2();
    v43(v42);
    v44 = OUTLINED_FUNCTION_20_8();
    *(v16 + 168) = v45(v44);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v16 + 176) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_58_2(v46);
    OUTLINED_FUNCTION_48();

    return sub_254328EDC();
  }
}

uint64_t sub_25436DAD4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_25436DC10;
  }

  else
  {
    v4 = sub_254372818;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25436DC10()
{
  OUTLINED_FUNCTION_28();
  (*(v0[16] + 8))(v0[17], v0[12]);
  OUTLINED_FUNCTION_78_2();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25436DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v14 = swift_task_alloc();
  *(v12 + 56) = v14;
  v15 = OUTLINED_FUNCTION_4_19(v13[7].n128_u64[0], v13[5], v13[6]);
  type metadata accessor for CoordinationTransportServer(v15, v16);
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v14 = v17;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436DD38();
}

uint64_t sub_25436DD38()
{
  OUTLINED_FUNCTION_31();
  v9 = OUTLINED_FUNCTION_31_6(v1, v2, v3, v4, v5, v6, v7, v8);
  v12 = OUTLINED_FUNCTION_77_3(v9, v10, v11, &protocol requirements base descriptor for MemberDiscovery, &associated type descriptor for MemberDiscovery.Member);
  v13 = OUTLINED_FUNCTION_90_2(v12);
  v0[15] = v13;
  OUTLINED_FUNCTION_8(v13);
  v0[16] = v14;
  v0[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_24_8();
  v0[18] = v15;
  v16 = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_75_1(v16);
  OUTLINED_FUNCTION_46_4();
  v0[21] = v17;
  v0[22] = v18;
  v19 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_25436DE3C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002ALL);
  v1 = OUTLINED_FUNCTION_34_2();
  MEMORY[0x259C093D0](v1, 0xE600000000000000);
  v2 = sub_2543A37B8();
  MEMORY[0x259C093D0](v2);

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_79_2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_80_2(AssociatedConformanceWitness, *(AssociatedConformanceWitness + 8), v4, MEMORY[0x277D840C0], MEMORY[0x277D83340]);
  sub_2543A35C8();
  OUTLINED_FUNCTION_50_2();
  v0[3] = v31;
  v9 = OUTLINED_FUNCTION_88_1(v5, v6, v7, v8, &associated type descriptor for TransportObservationUpdate.Target);
  OUTLINED_FUNCTION_89_3(v9, v10, v11, v12, &associated conformance descriptor for TransportObservationUpdate.TransportObservationUpdate.Target: Hashable);
  OUTLINED_FUNCTION_14_3();
  v13 = sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_1();
  sub_2543A35D8();
  OUTLINED_FUNCTION_66_1();
  v32._countAndFlagsBits = OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_93_2(v32, v14);

  v15 = OUTLINED_FUNCTION_49_1();
  v16(v15);
  OUTLINED_FUNCTION_52_1(v13);
  if (v17)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v18 = sub_254357FB0();
    v19 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v18);
    OUTLINED_FUNCTION_4_16(v19, v20);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_85();

    __asm { BRAA            X1, X16 }
  }

  v23 = OUTLINED_FUNCTION_48_2();
  v24(v23);
  v25 = OUTLINED_FUNCTION_20_8();
  v0[23] = v26(v25);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[24] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_41_4(v27);
  OUTLINED_FUNCTION_85();

  return sub_254329C2C();
}

uint64_t sub_25436E0B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_167();

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_25436E270;
  }

  else
  {
    v4 = sub_25436E1EC;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25436E1EC()
{
  OUTLINED_FUNCTION_28();
  (*(v0[18] + 8))(v0[19], v0[14]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25436E270()
{
  OUTLINED_FUNCTION_28();
  (*(v0[18] + 8))(v0[19], v0[14]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25436E2F0()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72_3();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  v3 = OUTLINED_FUNCTION_4_19(v0[7].n128_u64[0], v0[5], v0[6]);
  type metadata accessor for CoordinationTransportServer(v3, v4);
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  *v2 = v1;
  OUTLINED_FUNCTION_44_1();

  return sub_25436E3B8();
}

uint64_t sub_25436E3B8()
{
  OUTLINED_FUNCTION_28();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[6] = v7;
  v8 = *(v4 + 8);
  v1[13] = v8;
  v1[14] = *(v8 + 8);
  sub_2543A2B58();
  OUTLINED_FUNCTION_46_4();
  v1[15] = v9;
  v1[16] = v10;
  v11 = OUTLINED_FUNCTION_47_2();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_25436E43C()
{
  v1 = *(v0 + 64);
  v11 = *(v0 + 72);
  v2 = *(v0 + 56);
  v12 = *(v0 + 48);
  v13 = *(v0 + 96);
  *(v0 + 16) = v13;
  v14 = *(v0 + 80);
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000001CLL, 0x80000002543B9BF0);
  MEMORY[0x259C093D0](0x3D65746164707520, 0xE800000000000000);
  sub_2543A35C8();
  MEMORY[0x259C093D0](0x6576726573626F20, 0xEB000000005B7372);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_83_2();
  *(v0 + 24) = sub_2543A2E28();
  v3 = sub_2543A35A8();
  MEMORY[0x259C093D0](v3);

  MEMORY[0x259C093D0](15709, 0xE200000000000000);
  *(v0 + 32) = v2;
  OUTLINED_FUNCTION_83_2();
  sub_2543A2EB8();
  OUTLINED_FUNCTION_47_1();
  swift_getWitnessTable();
  sub_2543A35D8();
  v4 = sub_2542DF684() & 1;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  OUTLINED_FUNCTION_93_2(v15, v4);

  v5 = (*(v14 + 24))(v1, v14);
  *(v0 + 136) = v5;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v11;
  *(v6 + 32) = v14;
  *(v6 + 48) = v2;
  *(v6 + 56) = v13;
  *(v6 + 64) = v5;
  *(v6 + 72) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B50, &qword_2543AEB98);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 152) = v7;
  *v7 = v8;
  v7[1] = sub_25436E74C;
  OUTLINED_FUNCTION_85();

  return MEMORY[0x282200740]();
}

uint64_t sub_25436E74C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    v7 = sub_25436E858;
  }

  else
  {

    v7 = sub_254356B0C;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_25436E858()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25436E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportClient(v8, v9);
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436BE28();
}

uint64_t sub_25436E95C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25436EA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportClient(v8, v9);
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436C6F4();
}

uint64_t sub_25436EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportClient(v8, v9);
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436CD7C();
}

uint64_t sub_25436EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  v10 = OUTLINED_FUNCTION_4_19(v8[7].n128_u64[0], v8[5], v8[6]);
  type metadata accessor for CoordinationTransportClient(v10, v11);
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v9 = v12;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436D274();
}

uint64_t sub_25436EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_5_17();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_33(v7);
  type metadata accessor for CoordinationTransportClient(v8, v9);
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_11();
  *v6 = v10;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_52_2();

  return sub_25436D7C8();
}

uint64_t sub_25436ECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_7_14();
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  v10 = OUTLINED_FUNCTION_4_19(v8[7].n128_u64[0], v8[5], v8[6]);
  type metadata accessor for CoordinationTransportClient(v10, v11);
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_4();
  *v9 = v12;
  OUTLINED_FUNCTION_6_24();
  OUTLINED_FUNCTION_77_0();

  return sub_25436DD38();
}

uint64_t sub_25436ED7C()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72_3();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  v3 = OUTLINED_FUNCTION_4_19(v0[7].n128_u64[0], v0[5], v0[6]);
  type metadata accessor for CoordinationTransportClient(v3, v4);
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  *v2 = v1;
  OUTLINED_FUNCTION_44_1();

  return sub_25436E3B8();
}

uint64_t sub_25436EE44()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void sub_25436EF34(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a7;
  v54 = a3;
  v49 = a6;
  v50 = a2;
  v51 = a9;
  v52 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_2543A1F88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  type metadata accessor for CoordinationRequest();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v48 = v24;
    v25 = swift_allocObject();
    v47 = a8;
    v26 = v25;
    *(v25 + 16) = v54;
    *(v25 + 24) = a4;
    v54 = a1;

    v46 = v23;
    sub_25436B77C(sub_25437280C, v26, v23);

    v27 = sub_2543A2BB8();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v27);
    v45 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    (*(v18 + 16))(v20, v23, v17);
    v28 = (*(v18 + 80) + 56) & ~*(v18 + 80);
    v29 = (v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = v16;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v52;
    *(v32 + 4) = v51;
    *(v32 + 5) = v33;
    *(v32 + 6) = a5;
    (*(v18 + 32))(&v32[v28], v20, v17);
    *&v32[v29] = v45;
    v34 = v50;
    *&v32[v30] = v50;
    v35 = &v32[v31];
    v36 = v47;
    *v35 = v53;
    v35[1] = v36;
    *&v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8] = v48;
    v37 = v54;

    v38 = v34;

    sub_2542CCD54(0, 0, v49);

    (*(v18 + 8))(v46, v17);
  }

  else
  {
    swift_getObjectType();
    v39 = sub_2543A37B8();
    v41 = v40;
    sub_254357FB0();
    v42 = swift_allocError();
    *v43 = v39;
    *(v43 + 8) = v41;
    *(v43 + 16) = 0xD000000000000013;
    *(v43 + 24) = 0x80000002543BA560;
    *(v43 + 32) = 0;
    (v54)(0, v42);
  }
}

uint64_t sub_25436F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v15;
  v8[21] = v16;
  v8[18] = v13;
  v8[19] = v14;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v8[22] = *(v16 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[23] = AssociatedTypeWitness;
  v10 = sub_2543A30C8();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = *(AssociatedTypeWitness - 8);
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25436F4AC);
}

uint64_t sub_25436F4AC()
{
  OUTLINED_FUNCTION_40();
  v1 = sub_25436B8F0(*(v0 + 112));
  *(v0 + 232) = v1;
  *(v0 + 240) = v2;
  if (v1)
  {
    OUTLINED_FUNCTION_91_2();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 248) = Strong;
    if (Strong)
    {
      v4 = *(v0 + 168);
      *(v0 + 256) = [*(v0 + 128) member];
      *(v0 + 264) = *(v4 + 64);
      *(v0 + 272) = (v4 + 64) & 0xFFFFFFFFFFFFLL | 0xF7E2000000000000;
      sub_2543A2B58();
      v5 = OUTLINED_FUNCTION_64_2();

      return MEMORY[0x2822009F8](v5);
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 208), 1, 1, *(v0 + 184));
    v6 = *(v0 + 232);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v7 = sub_254357FB0();
    v8 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v7);
    OUTLINED_FUNCTION_19_7(v8, v9);
    v18 = OUTLINED_FUNCTION_86_1(v10, v11, v12, v13, v14, v15, v16, v17, v23, 0);
    v6(v18);
    v19 = OUTLINED_FUNCTION_5_1();
    sub_2542DB194(v19, v20);
  }

  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_27();

  return v21();
}

uint64_t sub_25436F624()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 256);
  (*(v0 + 264))(v1, *(v0 + 160), *(v0 + 168));

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_25436F6A0()
{
  OUTLINED_FUNCTION_89();
  v20 = v0;
  v1 = v0[26];
  OUTLINED_FUNCTION_52_1(v1);
  if (v2)
  {
    v3 = v0[29];
    (*(v0[25] + 8))(v1, v0[24]);
    v4 = sub_254357FB0();
    v5 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v4);
    OUTLINED_FUNCTION_19_7(v5, v6);
    v18 = 0;
    v19 = v7;
    v3(&v18, &v19);
    v8 = OUTLINED_FUNCTION_5_10();
    sub_2542DB194(v8, v9);

    OUTLINED_FUNCTION_92_2();

    OUTLINED_FUNCTION_27();

    return v10();
  }

  else
  {
    v12 = v0[17];
    OUTLINED_FUNCTION_83_2();
    v13();
    sub_2542FFE54((v0 + 2));
    v17 = (v12 + *v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[35] = v14;
    *v14 = v15;
    v14[1] = sub_25436F878;
    v16 = v0[28];

    return (v17)(v0 + 2, v16);
  }
}

uint64_t sub_25436F878()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v5[36] = v0;

  if (!v0)
  {
    v5[37] = v3;
  }

  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_25436F994()
{
  OUTLINED_FUNCTION_89();
  v12 = v0;
  v1 = v0[29];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[23];
  v10 = v0[37];
  v11 = 0;
  v5 = v10;
  v1(&v10, &v11);
  v6 = OUTLINED_FUNCTION_5_1();
  sub_2542DB194(v6, v7);

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_25436FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_94();
  a22 = v24;
  v27 = v24[36];
  v29 = v24[29];
  v28 = v24[30];
  v30 = v24[27];
  v45 = v24[28];
  a11 = 0;
  v31 = v24[22];
  v32 = v24[23];
  v33 = v24[20];
  a12 = 0xE000000000000000;
  sub_2543A3298();
  v34 = a12;
  v24[10] = a11;
  v24[11] = v34;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000018);
  v24[12] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  static Logging.ulog(_:extended:)(v24[10], v24[11], 0, v33, *(*(v31 + 16) + 8));

  a13 = 0;
  a11 = v27;
  v35 = v27;
  v29(&a13, &a11);
  sub_2542DB194(v29, v28);

  (*(v30 + 8))(v45, v32);
  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, a11, a12, a13, a14, a15, a16);
}

void sub_25436FBD4(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v51 = a7;
  v52 = a8;
  v50 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_2543A1F88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  type metadata accessor for CoordinationObservationUpdate();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v48 = v22;
    v23 = swift_allocObject();
    v47 = a2;
    v24 = v23;
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v46 = a1;

    v25 = v21;
    v45 = v21;
    sub_25436B77C(sub_254372318, v24, v21);

    v26 = sub_2543A2BB8();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v26);
    v27 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v28 = v49;
    (*(v17 + 16))(v49, v25, v16);
    v29 = (*(v17 + 80) + 56) & ~*(v17 + 80);
    v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = a5;
    v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v50 = v15;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v52;
    *(v33 + 4) = v51;
    *(v33 + 5) = v34;
    *(v33 + 6) = v31;
    (*(v17 + 32))(&v33[v29], v28, v16);
    *&v33[v30] = v27;
    v36 = v47;
    v35 = v48;
    *&v33[v32] = v47;
    *&v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8] = v35;
    v37 = v46;

    v38 = v36;
    sub_2542CCD54(0, 0, v50);

    (*(v17 + 8))(v45, v16);
  }

  else
  {
    swift_getObjectType();
    v39 = sub_2543A37B8();
    v41 = v40;
    sub_254357FB0();
    v42 = swift_allocError();
    *v43 = v39;
    *(v43 + 8) = v41;
    *(v43 + 16) = 0xD00000000000001DLL;
    *(v43 + 24) = 0x80000002543BA540;
    *(v43 + 32) = 0;
    a3(0, v42);
  }
}

uint64_t sub_25436FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v13;
  v8[21] = v14;
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[22] = AssociatedTypeWitness;
  v10 = sub_2543A30C8();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = *(AssociatedTypeWitness - 8);
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254370114);
}

uint64_t sub_254370114()
{
  OUTLINED_FUNCTION_40();
  v1 = sub_25436B8F0(*(v0 + 128));
  *(v0 + 224) = v1;
  *(v0 + 232) = v2;
  if (v1)
  {
    OUTLINED_FUNCTION_91_2();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 240) = Strong;
    if (Strong)
    {
      v4 = *(v0 + 168);
      *(v0 + 248) = [*(v0 + 144) member];
      v5 = *(v4 + 64);
      v4 += 64;
      *(v0 + 256) = v5;
      *(v0 + 264) = v4 & 0xFFFFFFFFFFFFLL | 0xF7E2000000000000;
      *(v0 + 272) = *(*(v4 - 56) + 8);
      sub_2543A2B58();
      v6 = OUTLINED_FUNCTION_64_2();

      return MEMORY[0x2822009F8](v6);
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 200), 1, 1, *(v0 + 176));
    v7 = *(v0 + 224);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    v8 = sub_254357FB0();
    v9 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v8);
    OUTLINED_FUNCTION_19_7(v9, v10);
    v19 = OUTLINED_FUNCTION_86_1(v11, v12, v13, v14, v15, v16, v17, v18, v24, 0);
    v7(v19);
    v20 = OUTLINED_FUNCTION_5_1();
    sub_2542DB194(v20, v21);
  }

  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v22();
}

uint64_t sub_254370290()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 248);
  (*(v0 + 256))(v1, *(v0 + 160), *(v0 + 168));

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_25437030C()
{
  OUTLINED_FUNCTION_89();
  v28 = v0;
  v1 = v0[25];
  v2 = v0[22];
  OUTLINED_FUNCTION_52_1(v1);
  if (v3)
  {
    v4 = v0[28];
    (*(v0[24] + 8))(v1, v0[23]);
    v5 = sub_254357FB0();
    v6 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v5);
    OUTLINED_FUNCTION_19_7(v6, v7);
    v26 = 0;
    v27 = v8;
    v4(&v26, &v27);
    v9 = OUTLINED_FUNCTION_5_10();
    sub_2542DB194(v9, v10);
    v11 = v6;
  }

  else
  {
    (*(v0[26] + 32))(v0[27], v1, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[35] = Strong;
    if (Strong)
    {
      v13 = v0[21];
      v0[36] = *(v13 + 32);
      v0[37] = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0xF9B3000000000000;
      sub_2543A2B58();
      v14 = OUTLINED_FUNCTION_64_2();

      return MEMORY[0x2822009F8](v14);
    }

    v15 = v0[28];
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[22];
    v19 = sub_254357FB0();
    v20 = OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v19);
    *v21 = 3;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 2;
    v26 = 0;
    v27 = v20;
    v15(&v26, &v27);
    v22 = OUTLINED_FUNCTION_5_1();
    sub_2542DB194(v22, v23);
    (*(v17 + 8))(v16, v18);
    v11 = v20;
  }

  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v24();
}

uint64_t sub_254370510()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 304) = (*(v0 + 288))(*(v0 + 160), *(v0 + 168));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_254370584()
{
  OUTLINED_FUNCTION_31();
  sub_254396E2C((v0 + 2));
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_254370648;

  return sub_254324CA8();
}

uint64_t sub_254370648()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_254370740()
{
  OUTLINED_FUNCTION_69_0();
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2128, &unk_2543B0588);
  *(v0 + 104) = objc_allocWithZone(v6);
  *(v0 + 112) = v6;
  v7 = objc_msgSendSuper2((v0 + 104), sel_init);
  v15 = OUTLINED_FUNCTION_86_1(v7, v8, v9, v10, v11, v12, v13, v14, v18, v7);
  v2(v15);

  sub_2542DB194(v2, v1);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v16();
}

uint64_t sub_254370848()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[40];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[22];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v1;
  v15 = OUTLINED_FUNCTION_86_1(v7, v8, v9, v10, v11, v12, v13, v14, v18, 0);
  v3(v15);

  sub_2542DB194(v3, v2);

  (*(v5 + 8))(v4, v6);
  OUTLINED_FUNCTION_94_3();

  OUTLINED_FUNCTION_27();

  return v16();
}

uint64_t sub_25437092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v15;
  v8[20] = v16;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = *(a8 - 8);
  v8[21] = v9;
  v8[22] = *(v9 + 64);
  v8[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1B58, &unk_2543AEBA0);
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v11 = *(v15 + 8);
  v8[29] = v11;
  v8[30] = *(v11 + 8);
  v8[31] = sub_2543A2B58();
  v8[32] = v12;

  return MEMORY[0x2822009F8](sub_254370AD8);
}

uint64_t sub_254370AD8()
{
  v0[9] = v0[13];
  v43 = v0 + 2;
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = sub_254371434(v0[14], v4, v3, v2, v1);
  v7 = v6;
  v8 = swift_task_alloc();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v5;
  v8[7] = v7;
  v9 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_3();
  v10 = sub_2543A2EB8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2120, &qword_2543B0570);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_254369100(sub_254371F1C, v8, v10, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v18 = *(v14 + 16);
LABEL_2:
  v50 = v17;
  while (v18 != v16)
  {
    if (v16 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v15 = *(v14 + 8 * v16 + 32);
    if (v15)
    {
      v15 = [v15 member];
      if (v15)
      {
        MEMORY[0x259C09500]();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2543A2A78();
        }

        ++v16;
        OUTLINED_FUNCTION_51_1();
        v15 = sub_2543A2AB8();
        v17 = v56;
        goto LABEL_2;
      }
    }

    ++v16;
  }

  v15 = sub_2542EEECC(v50);
  v49 = v15;
  if (v15)
  {
    if (v15 < 1)
    {
LABEL_30:
      __break(1u);
      return MEMORY[0x2822004E8](v15);
    }

    v19 = 0;
    v48 = *(*(v9 + 16) + 8);
    v47 = v0[21];
    v46 = *v0[12];
    v45 = v0[22] + 7;
    v44 = v0;
    do
    {
      v54 = v19;
      if ((v50 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x259C09DA0](v19, v50);
      }

      else
      {
        v20 = *(v50 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v0[25];
      v23 = v0[23];
      v52 = v0[20];
      v53 = v0[24];
      v25 = v0[16];
      v24 = v0[17];
      v51 = v0[15];
      v55 = *(v0 + 9);
      sub_2543A3298();
      MEMORY[0x259C093D0](0xD000000000000039, 0x80000002543B9C30);
      v26 = [v21 description];
      v27 = sub_2543A2878();
      v29 = v28;

      MEMORY[0x259C093D0](v27, v29);

      static Logging.ulog(_:extended:)(0, 0xE000000000000000, 0, v24, v48);

      v30 = sub_2543A2BB8();
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v30);
      (*(v47 + 16))(v23, v25, v55);
      v31 = (*(v47 + 80) + 72) & ~*(v47 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v24;
      *(v32 + 40) = v55;
      *(v32 + 56) = v52;
      *(v32 + 64) = v51;
      (*(v47 + 32))(v32 + v31, v23, v55);
      *(v32 + ((v45 + v31) & 0xFFFFFFFFFFFFFFF8)) = v21;
      v0 = v44;
      sub_2542DA8D8(v22, v53);
      LODWORD(v21) = __swift_getEnumTagSinglePayload(v53, 1, v30);
      v33 = v51;
      v34 = v44[24];
      if (v21 == 1)
      {
        sub_254368B90(v44[24]);
      }

      else
      {
        sub_2543A2BA8();
        (*(*(v30 - 8) + 8))(v34, v30);
      }

      if (*(v32 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = sub_2543A2B58();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v38 = (v37 | v35);
      if (v37 | v35)
      {
        v38 = v43;
        *v43 = 0;
        v43[1] = 0;
        v44[4] = v35;
        v44[5] = v37;
      }

      v19 = v54 + 1;
      v39 = v44[25];
      v44[6] = 1;
      v44[7] = v38;
      v44[8] = v46;
      swift_task_create();

      sub_254368B90(v39);
    }

    while (v49 != v54 + 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A2CB8();
  v0[33] = MEMORY[0x277D84F90];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[34] = v40;
  *v40 = v41;
  v15 = OUTLINED_FUNCTION_21_3(v40);

  return MEMORY[0x2822004E8](v15);
}

uint64_t sub_254371118()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_254371390;
  }

  else
  {
    v7 = sub_254371218;
  }

  return MEMORY[0x2822009F8](v7);
}