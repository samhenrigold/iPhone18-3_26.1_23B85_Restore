id ThumbnailsBlastDoorInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ThumbnailsBlastDoorInterface.init()()
{
  v11 = sub_29EC29D8C();
  v0 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8]();
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EC29D7C();
  MEMORY[0x2A1C7C4A8]();
  sub_29EC29C3C();
  MEMORY[0x2A1C7C4A8]();
  v3 = sub_29EC29C7C();
  v10[1] = "P";
  v10[2] = v3;
  v4 = *MEMORY[0x29EDBFE08];
  sub_29EC28F28(0, &qword_2A188F190, 0x29EDCA548);
  v5 = v4;
  sub_29EC29C2C();
  v14 = MEMORY[0x29EDCA190];
  sub_29EC29818(&qword_2A188F198, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1A0, &qword_29EC2A110);
  sub_29EC288DC();
  sub_29EC29DBC();
  (*(v0 + 104))(v2, *MEMORY[0x29EDCA2A8], v11);
  sub_29EC29D9C();
  v6 = sub_29EC29C4C();
  v7 = v12;
  *&v12[OBJC_IVAR___ThumbnailsBlastDoorInterfaceInternal_bd] = v6;
  v8 = type metadata accessor for ThumbnailsBlastDoorInterface();
  v13.receiver = v7;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
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

unint64_t sub_29EC288DC()
{
  result = qword_2A188F1A8;
  if (!qword_2A188F1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F1A0, &qword_29EC2A110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F1A8);
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

uint64_t sub_29EC289D0(uint64_t a1, float a2, float a3)
{
  v34 = a1;
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1B8, &qword_29EC2A118);
  MEMORY[0x2A1C7C4A8]();
  v42 = &v31 - v5;
  v43 = sub_29EC29CBC();
  v32 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8]();
  v41 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EC29D5C();
  MEMORY[0x2A1C7C4A8]();
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EC29D3C();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x2A1C7C4A8]();
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29EC29C9C();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x2A1C7C4A8]();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29EC29D6C();
  sub_29EC28F28(0, &qword_2A188F1C0, 0x29EDCA970);
  v14 = sub_29EC29DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1C8, &unk_29EC2A120);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29EC2A100;
  v47 = a2;
  v48 = 0;
  v16 = sub_29EC29D1C();
  v18 = v17;
  v19 = MEMORY[0x29EDC99B0];
  *(v15 + 56) = MEMORY[0x29EDC99B0];
  v20 = sub_29EC28F70();
  *(v15 + 64) = v20;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v45 = a3;
  v46 = 0;
  v21 = sub_29EC29D1C();
  *(v15 + 96) = v19;
  *(v15 + 104) = v20;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22;
  sub_29EC29C1C(v13, &dword_29EC27000, v14, "Generating thumbnail with maxPixelDim %@ and scale %@", 53, 2, v15);

  if ((LODWORD(v44) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_29EC29C8C();
  sub_29EC29BDC();
  v23 = v35;
  sub_29EC29D4C();
  if (!v23)
  {
    v24 = v36;
    sub_29EC29D2C();
    v25 = sub_29EC29D0C();
    v26 = v42;
    (*(*(v25 - 8) + 56))(v42, 1, 1, v25);
    sub_29EC29818(&qword_2A188F1D8, MEMORY[0x29EDBFDF0], MEMORY[0x29EDBFDE8]);
    v27 = v41;
    v28 = v43;
    sub_29EC29C5C();
    sub_29EC28FC4(v26);
    v29 = sub_29EC29CAC();
    (*(v32 + 8))(v27, v28);
    (*(v39 + 8))(v24, v40);
    (*(v37 + 8))(v12, v38);
    return v29;
  }

LABEL_9:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_29EC28F28(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_29EC28F70()
{
  result = qword_2A188F1D0;
  if (!qword_2A188F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F1D0);
  }

  return result;
}

uint64_t sub_29EC28FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1B8, &qword_29EC2A118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EC291AC(float a1, double a2, double a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v10 = sub_29EC29C0C();
  v30 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8]();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1B8, &qword_29EC2A118);
  MEMORY[0x2A1C7C4A8]();
  v14 = &v25 - v13;
  sub_29EC29D5C();
  MEMORY[0x2A1C7C4A8]();
  v15 = sub_29EC29D3C();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x2A1C7C4A8]();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(sub_29EC29CDC() - 8);
  v19 = MEMORY[0x2A1C7C4A8]();
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    v25 = v19;
    v26 = v10;
    sub_29EC29CCC();
    sub_29EC29BDC();
    sub_29EC29D4C();
    sub_29EC29D2C();
    sub_29EC29CFC();
    v22 = sub_29EC29D0C();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    sub_29EC29BFC();
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = v29;
    sub_29EC29818(&qword_2A188F1E0, MEMORY[0x29EDBFE00], MEMORY[0x29EDBFDF8]);

    sub_29EC29C6C();

    (*(v30 + 8))(v12, v26);
    sub_29EC28FC4(v14);
    (*(v27 + 8))(v17, v28);
    return (*(v18 + 8))(v21, v25);
  }

LABEL_7:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_29EC2961C(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_29EC29CFC();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1E8, &qword_29EC2A180);
  MEMORY[0x2A1C7C4A8]();
  v9 = (&v12 - v8);
  sub_29EC29B4C(a1, &v12 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    MEMORY[0x29EDAD3D0](*v9);
    a2(0, v10);
  }

  else
  {
    (*(v5 + 32))(v7, v9, v4);
    v11 = sub_29EC29CEC();
    a2(v11, 0);

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29EC297D8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC29818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29EC299C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_29EC29BBC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id ThumbnailsBlastDoorInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailsBlastDoorInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EC29B0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EC29B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F1E8, &qword_29EC2A180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}