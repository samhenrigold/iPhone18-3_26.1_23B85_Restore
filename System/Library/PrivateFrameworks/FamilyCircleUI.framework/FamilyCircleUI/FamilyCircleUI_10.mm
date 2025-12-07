void sub_21BC822EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D8, &qword_21BE329E8);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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
}

unint64_t sub_21BC82454(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BC824A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8540, &qword_21BE3BF18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC82F90();
  sub_21BE29B4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v30 = 1;
  v9 = sub_21BE2982C();
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v27 = v14;
  v29 = 3;
  v15 = sub_21BE2982C();
  v24 = v12;
  v25 = v16;
  v26 = v15;
  if (v16)
  {
    v13 = v16;
  }

  v28 = 4;
  v17 = sub_21BE2982C();
  if (v25)
  {
    v19 = v26;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  v26 = v20;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v22 = v26;
  v23 = v27;
  *a2 = v24;
  a2[1] = v23;
  a2[2] = v19;
  a2[3] = v13;
  a2[4] = v22;
  a2[5] = v21;
  return result;
}

double sub_21BC82714@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v35 = sub_21BE25D6C();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8518, &qword_21BE3BE60);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  KeyPath = swift_getKeyPath();
  v55 = 0;
  v40 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE283EC();
  v65 = v45;
  v39 = v46;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC82D34();
  v9 = v38;
  sub_21BE29B4C();
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v10 = v36;
    v38 = a1;
    v11 = KeyPath;
    LOBYTE(v44) = 0;
    v12 = sub_21BE2982C();
    if (v13)
    {
      v32 = v12;
      v33 = v13;
    }

    else
    {
      sub_21BE25D5C();
      v32 = sub_21BE25D2C();
      v33 = v15;
      (*(v10 + 1))(v4, v35);
    }

    LOBYTE(v40) = 1;
    v16 = sub_21BE2982C();
    v36 = v7;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    sub_21BE283EC();

    v18 = v44;
    v65 = v45;
    v19 = v46;
    __swift_project_boxed_opaque_existential_1Tm(v38, v38[3]);
    sub_21BE29B2C();
    v35 = v18;
    v39 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v53, v53[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8528, &unk_21BE3BE98);
    sub_21BC82D88();
    sub_21BE2998C();
    v31 = v5;
    v20 = v32;
    v21 = v33;
    v56 = v32;
    v57 = v33;
    v58 = KeyPath;
    v22 = v55;
    v59 = v55;
    *v60 = *v54;
    *&v60[3] = *&v54[3];
    v61 = v44;
    v62 = v35;
    v23 = v65;
    v63 = v65;
    v64 = v39;
    v24 = v44;
    sub_21BC78A60();
    (*(v37 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    *&v40 = v20;
    *(&v40 + 1) = v21;
    *&v41 = v11;
    BYTE8(v41) = v22;
    *(&v41 + 9) = *v54;
    HIDWORD(v41) = *&v54[3];
    *&v42 = v24;
    v25 = v35;
    *(&v42 + 1) = v35;
    *&v43 = v23;
    v26 = v39;
    *(&v43 + 1) = v39;
    sub_21BC7B244(&v40, &v44);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    v44 = v20;
    v45 = v21;
    v46 = v11;
    v47 = v22;
    *v48 = *v54;
    *&v48[3] = *&v54[3];
    v49 = v24;
    v50 = v25;
    v51 = v23;
    v52 = v26;
    sub_21BC82E3C(&v44);
    v27 = v41;
    v28 = v34;
    *v34 = v40;
    v28[1] = v27;
    result = *&v42;
    v29 = v43;
    v28[2] = v42;
    v28[3] = v29;
  }

  return result;
}

unint64_t sub_21BC82D34()
{
  result = qword_27CDB8520;
  if (!qword_27CDB8520)
  {
    result = swift_getWitnessTable(byte_21BE3C318, &type metadata for FARUIPersonPickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8520);
  }

  return result;
}

unint64_t sub_21BC82D88()
{
  result = qword_27CDB8530;
  if (!qword_27CDB8530)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8528, &unk_21BE3BE98);
    v4[0] = sub_21BC82E6C(&qword_27CDB8538, type metadata accessor for FARUIPersonPickerOptionElement, byte_21BE3BD44);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27CDB8530);
  }

  return result;
}

uint64_t sub_21BC82E6C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BC82EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BC798EC(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_21BC82F90()
{
  result = qword_27CDB8548;
  if (!qword_27CDB8548)
  {
    result = swift_getWitnessTable(aA, &type metadata for RUIFamilyImageItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8548);
  }

  return result;
}

unint64_t sub_21BC83028()
{
  result = qword_27CDB8570;
  if (!qword_27CDB8570)
  {
    result = swift_getWitnessTable(a1_1, &type metadata for FARUIPersonPickerOptionElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8570);
  }

  return result;
}

unint64_t sub_21BC83080()
{
  result = qword_27CDB8578;
  if (!qword_27CDB8578)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for FARUIPersonPickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8578);
  }

  return result;
}

unint64_t sub_21BC830D8()
{
  result = qword_27CDB8580;
  if (!qword_27CDB8580)
  {
    result = swift_getWitnessTable(aQ_7, &type metadata for RUIFamilyImageItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8580);
  }

  return result;
}

unint64_t sub_21BC83130()
{
  result = qword_27CDB8588;
  if (!qword_27CDB8588)
  {
    result = swift_getWitnessTable(byte_21BE3C1B0, &type metadata for RUIFamilyImageItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8588);
  }

  return result;
}

unint64_t sub_21BC83188()
{
  result = qword_27CDB8590;
  if (!qword_27CDB8590)
  {
    result = swift_getWitnessTable(byte_21BE3C1D8, &type metadata for RUIFamilyImageItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8590);
  }

  return result;
}

unint64_t sub_21BC831E0()
{
  result = qword_27CDB8598;
  if (!qword_27CDB8598)
  {
    result = swift_getWitnessTable(byte_21BE3C0C0, &type metadata for FARUIPersonPickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB8598);
  }

  return result;
}

unint64_t sub_21BC83238()
{
  result = qword_27CDB85A0;
  if (!qword_27CDB85A0)
  {
    result = swift_getWitnessTable(byte_21BE3C0E8, &type metadata for FARUIPersonPickerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB85A0);
  }

  return result;
}

unint64_t sub_21BC83290()
{
  result = qword_27CDB85A8;
  if (!qword_27CDB85A8)
  {
    result = swift_getWitnessTable(byte_21BE3BFD0, &type metadata for FARUIPersonPickerOptionElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB85A8);
  }

  return result;
}

unint64_t sub_21BC832E8()
{
  result = qword_27CDB85B0;
  if (!qword_27CDB85B0)
  {
    result = swift_getWitnessTable(byte_21BE3BFF8, &type metadata for FARUIPersonPickerOptionElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB85B0);
  }

  return result;
}

unint64_t sub_21BC8333C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21BC83388(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE2980C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

id sub_21BC833E4()
{
  result = [objc_allocWithZone(type metadata accessor for FamilyInviteAnalytics()) init];
  qword_27CDB85B8 = result;
  return result;
}

id FamilyInviteAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FamilyInviteAnalytics.shared.getter()
{
  if (qword_27CDB4F20 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDB85B8;

  return v1;
}

double sub_21BC83518()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "Organizer resent invitation event", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v11 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000021BE5A200;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v11, v8);

  return result;
}

double sub_21BC8373C()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "Organizer cancelled invitation event", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v11 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000021BE5A220;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v11, v8);

  return result;
}

id FamilyInviteAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyInviteAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyInviteAnalytics.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyInviteAnalytics();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_21BC83C2C()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "Organizer tapped pending member row event", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v11 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x800000021BE5A410;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v11, v8);

  return result;
}

double sub_21BC83E50()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "Invite recipient tapped family row event", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v11 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x800000021BE5A3F0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v11, v8);

  return result;
}

double sub_21BC842AC(uint64_t a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 40) = 0x800000021BE5A310;
  *(inited + 48) = a1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);

  return result;
}

double sub_21BC843C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v16 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_21BE374D0;
  *(inited + 40) = 0x800000021BE5A330;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a3 & 1;
  *(inited + 88) = 0xD000000000000026;
  *(inited + 96) = 0x800000021BE5A350;
  v13 = MEMORY[0x277D83B88];
  *(inited + 128) = MEMORY[0x277D83B88];
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a1;
  *(inited + 144) = 0xD000000000000022;
  *(inited + 152) = 0x800000021BE5A380;
  *(inited + 184) = v13;
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = a2;
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x800000021BE5A3B0;
  *(inited + 240) = v13;
  *(inited + 248) = &protocol witness table for Int;
  *(inited + 216) = a4;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x800000021BE5A3D0;
  *(inited + 296) = MEMORY[0x277D837D0];
  *(inited + 304) = &protocol witness table for String;
  *(inited + 272) = a5;
  *(inited + 280) = a6;

  v14 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v16, v14);

  return result;
}

double sub_21BC845C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v10 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 0x7254657469766E49;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF74726F70736E61;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v7 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xD000000000000018;
  *(inited + 96) = 0x800000021BE5A310;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v10, v8);

  return result;
}

double sub_21BC84750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v14 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE362A0;
  strcpy((inited + 32), "ActionTapped");
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000021BE5A2F0;
  *(inited + 128) = v11;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = a3;
  *(inited + 112) = a4;
  *(inited + 144) = 0x7265766965636552;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = &protocol witness table for Bool;
  *(inited + 160) = a5 & 1;

  v12 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v14, v12);

  return result;
}

double sub_21BC84918(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v9 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  strcpy((inited + 32), "UpdateStatusTo");
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 47) = -18;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0x73736563637553;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a3 & 1;

  v7 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v9, v7);

  return result;
}

uint64_t sub_21BC84D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v7 = a5;
  v27 = a5;
  v26[1] = a3;
  v26[2] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  MEMORY[0x28223BE20](v12 - 8);
  v30 = v26 - v13;
  v28 = sub_21BE26A1C();
  v14 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v14 + 56);
  v29(v6 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID, 1, 1);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v17 = v6 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_method;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = v7;
  sub_21BC859EC();

  sub_21BE261DC();
  v31 = 0x74736F706E676973;
  v32 = 0xE90000000000002ELL;
  MEMORY[0x21CF03CA0](a1, a2);

  v18 = sub_21BE2945C();
  *(v6 + 32) = v18;
  v19 = v18;
  sub_21BE269FC();
  sub_21BE292FC();
  v20 = *(v6 + 32);
  sub_21BE269EC();

  v21 = v30;
  v22 = v28;
  (*(v14 + 32))(v30, v16, v28);
  v23 = v21;
  (v29)(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID;
  swift_beginAccess();
  sub_21BC8597C(v23, v6 + v24);
  swift_endAccess();
  return v6;
}

uint64_t sub_21BC84FB8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v21[1] = a3;
  v22 = sub_21BE26A4C();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE26A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v21 - v13;
  v15 = OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID;
  swift_beginAccess();
  sub_21BC8590C(v4 + v15, v14);
  LODWORD(v15) = (*(v9 + 48))(v14, 1, v8);
  sub_21BC856BC(v14);
  if (v15 == 1)
  {
    sub_21BE2614C();

    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_21BB3D81C(*(v4 + 16), *(v4 + 24), &v23);
      _os_log_impl(&dword_21BB35000, v16, v17, "Attempt to log event w/o signpost: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x21CF05C50](v19, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    return (*(v5 + 8))(v7, v22);
  }

  else
  {
    sub_21BE2930C();
    sub_21BE26A0C();
    sub_21BE269EC();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_21BC852D8()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = sub_21BE26A1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID;
  swift_beginAccess();
  sub_21BC8590C(v1 + v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21BC856BC(v11);
    sub_21BE2614C();

    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FFC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_21BB3D81C(*(v1 + 16), *(v1 + 24), v22);
      _os_log_impl(&dword_21BB35000, v17, v18, "Attempt to end already ended signpost: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_21BC84FB8("completed", 9, 2u);
    sub_21BE292EC();
    sub_21BE269EC();
    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_21BC8597C(v9, v1 + v16);
    return swift_endAccess();
  }
}

uint64_t FamilySignpost.deinit()
{

  sub_21BC856BC(v0 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID);
  return v0;
}

uint64_t sub_21BC856BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FamilySignpost.__deallocating_deinit()
{

  sub_21BC856BC(v0 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilySignpost(uint64_t a1)
{
  result = qword_280BD7B10;
  if (!qword_280BD7B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC857EC(uint64_t a1)
{
  sub_21BC858B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21BC858B4(uint64_t a1)
{
  if (!qword_280BD6B00)
  {
    sub_21BE26A1C();
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6B00);
    }
  }
}

uint64_t sub_21BC8590C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC8597C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BC859EC()
{
  result = qword_280BD68C0;
  if (!qword_280BD68C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD68C0);
  }

  return result;
}

void *sub_21BC85A38()
{
  v1 = v0;
  v2 = sub_21BE25B9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v63 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v54 - v9;
  v11 = sub_21BBB541C(MEMORY[0x277D84F90]);
  v12 = sub_21BE289CC();
  v13 = [v1 propertiesForDataclass_];
  if (!v13 || (v62 = v10, v14 = v13, v15 = sub_21BE2890C(), v14, v16 = sub_21BD52A2C(v15), , !v16))
  {

    return v11;
  }

  v54[0] = v12;
  v56 = v8;
  v17 = 0;
  v18 = v16 + 64;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 64);
  v22 = (v19 + 63) >> 6;
  v60 = (v3 + 48);
  v61 = (v3 + 56);
  v58 = v16;
  v59 = (v3 + 32);
  v54[1] = (v3 + 40);
  v55 = v2;
  v57 = v3;
  while (v21)
  {
LABEL_14:
    v26 = __clz(__rbit64(v21)) | (v17 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(*(v16 + 56) + 8 * v26);
    v67 = v30;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCast();
    v64 = v30;
    v65 = v29;
    if (v31)
    {

      v32 = v62;
      sub_21BE25B7C();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v32 = v62;
      (*v61)(v62, 1, 1, v2);
    }

    v21 &= v21 - 1;
    if ((*v60)(v32, 1, v2) == 1)
    {
      sub_21BC12FE4(v32);
      v33 = sub_21BBB3108(v28, v65);
      v35 = v34;

      if (v35)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v11;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21BC80A44();
          v11 = v66;
        }

        v24 = v56;
        (*(v3 + 32))(v56, v11[7] + *(v3 + 72) * v33, v2);
        sub_21BC7EB04(v33, v11);
        swift_unknownObjectRelease();

        v23 = 0;
      }

      else
      {
        swift_unknownObjectRelease();

        v23 = 1;
        v24 = v56;
      }

      (*v61)(v24, v23, 1, v2);
      sub_21BC12FE4(v24);
      v16 = v58;
    }

    else
    {
      v37 = *v59;
      (*v59)(v63, v32, v2);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v11;
      v39 = v28;
      v41 = sub_21BBB3108(v28, v65);
      v42 = v11[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_36;
      }

      v45 = v40;
      if (v11[3] >= v44)
      {
        if (v38)
        {
          if ((v40 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_21BC80A44();
          if ((v45 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

LABEL_29:

        v11 = v66;
        v3 = v57;
        v2 = v55;
        (*(v57 + 40))(v66[7] + *(v57 + 72) * v41, v63, v55);
        swift_unknownObjectRelease();

        v16 = v58;
      }

      else
      {
        sub_21BC7B8D8(v44, v38);
        v46 = sub_21BBB3108(v39, v65);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_38;
        }

        v41 = v46;
        if (v45)
        {
          goto LABEL_29;
        }

LABEL_31:
        v48 = v65;
        v11 = v66;
        v66[(v41 >> 6) + 8] |= 1 << v41;
        v49 = (v11[6] + 16 * v41);
        *v49 = v39;
        v49[1] = v48;
        v2 = v55;
        v37((v11[7] + *(v57 + 72) * v41), v63, v55);
        swift_unknownObjectRelease();

        v50 = v11[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_37;
        }

        v11[2] = v52;
        v3 = v57;
        v16 = v58;
      }
    }
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      return v11;
    }

    v21 = *(v18 + 8 * v25);
    ++v17;
    if (v21)
    {
      v17 = v25;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

uint64_t sub_21BC86024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ParentalControlCell(0);
  sub_21BC872D4(a1, a3 + v6[6], type metadata accessor for ParentalControlDataItem);
  sub_21BC1D414(6);
  v7 = *(a1 + *(type metadata accessor for ParentalControlDataItem(0) + 24));
  *a3 = sub_21BD6F92C();
  a3[1] = v8;
  sub_21BC1D414(6);
  a3[2] = sub_21BD6FB28(v7);
  a3[3] = v9;
  *(a3 + v6[7]) = a2;
  type metadata accessor for AgeBasedPresetFlow();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = v7;
  result = sub_21BC1E0A8(a1);
  *(a3 + v6[8]) = v10;
  return result;
}

uint64_t type metadata accessor for ParentalControlCell(uint64_t a1)
{
  result = qword_27CDB85C8;
  if (!qword_27CDB85C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC861B8(uint64_t a1)
{
  result = type metadata accessor for ParentalControlDataItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_21BBC8F58();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AgeBasedPresetFlow();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21BC86280()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + *(type metadata accessor for ParentalControlCell(0) + 24);
  v9 = type metadata accessor for ParentalControlDataItem(0);
  sub_21BBA3854(v8 + *(v9 + 20), v3, &qword_27CDB9720, &unk_21BE39F00);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21BB3A4CC(v3, &qword_27CDB9720, &unk_21BE39F00);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21BE32770;
    v12 = sub_21BC422F8();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_21BBBEFE8();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();

    v17 = [v16 bundleForClass_];
    sub_21BE2599C();

    v18 = sub_21BE289DC();

    (*(v5 + 8))(v7, v4);
    return v18;
  }
}

double sub_21BC86568(void *a1)
{
  v2 = type metadata accessor for ParentalControlCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27[0] = v8;
    v16 = a1;
    v17 = v3;
    v18 = v15;
    *v15 = 0;
    _os_log_impl(&dword_21BB35000, v13, v14, "ParentalControlCell pushing a nav action", v15, 2u);
    v19 = v18;
    v3 = v17;
    a1 = v16;
    v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = v27[0];
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = sub_21BE28DAC();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_21BC872D4(v27[1], v5, type metadata accessor for ParentalControlCell);
  sub_21BE28D7C();
  v21 = a1;
  v22 = sub_21BE28D6C();
  v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_21BC8733C(v5, v24 + v23);
  *(v24 + ((v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_21BBA932C(0, 0, v8, &unk_21BE3C518, v24);

  return result;
}

uint64_t sub_21BC8688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BC86924, v7, v6);
}

uint64_t sub_21BC86924()
{
  v1 = v0[3];
  type metadata accessor for ParentalControlCell(0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  }

  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_21BBDBDA0;

  return sub_21BCE3F54(v2);
}

void *sub_21BC86A04@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ParentalControlCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BC872D4(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BC8733C(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BC873A0;
  a1[3] = v7;
  return result;
}

double sub_21BC86B6C@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ParentalControlCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(MEMORY[0x28223BE20](v6) + 24);
  sub_21BC1D414(6);
  if (*(a2 + v10))
  {
    if (sub_21BC1D414(6))
    {
      if (sub_21BC1D414(6))
      {
        v11 = *a2;
        v61 = a2[1];
        v62 = v11;

        v12 = sub_21BC86280();
        v59 = v13;
        v60 = v12;
        v14 = a2[3];
        v58 = a2[2];
        v15 = *(a2 + *(v6 + 28));
        sub_21BC872D4(a2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
        v16 = *(v7 + 80);
        v63 = a3;
        v17 = (v16 + 16) & ~v16;
        v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
        v19 = swift_allocObject();
        sub_21BC8733C(v9, v19 + v17);
        *(v19 + v18) = a1;
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v21 = objc_opt_self();
        v22 = a1;

        v23 = v15;
        v24 = [v21 bundleForClass_];
        v25 = sub_21BE2599C();
        v27 = v26;

        v68[3] = type metadata accessor for ParentalControlDataItem(0);
        v68[4] = sub_21BC87420();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
        sub_21BC872D4(a2 + v10, boxed_opaque_existential_1, type metadata accessor for ParentalControlDataItem);
        v67[0] = v62;
        v67[1] = v61;
        v67[2] = v60;
        v67[3] = v59;
        v67[4] = v58;
        v67[5] = v14;
        v67[6] = v23;
        v67[7] = sub_21BC879B0;
        v67[8] = v19;
        v67[9] = v25;
        v67[10] = v27;
        sub_21BC8777C(v67, v64);
        v66 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85E0, &unk_21BE3C500);
        sub_21BC87478();
        sub_21BC87504();
        sub_21BE2784C();
        sub_21BC877D8(v67);
      }

      else
      {
        result = 0.0;
        *(a3 + 96) = 0u;
        *(a3 + 112) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 80) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 128) = -256;
      }
    }

    else
    {
      v62 = *a2;
      v63 = a3;
      v46 = a2[1];

      v47 = sub_21BC86280();
      v60 = v48;
      v61 = v47;
      v49 = a2[2];
      v50 = a2[3];
      v58 = *(a2 + *(v6 + 28));
      v59 = v49;
      sub_21BC872D4(a2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
      v51 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v52 = swift_allocObject();
      sub_21BC8733C(v9, v52 + v51);
      *(v52 + ((v8 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
      v80 = type metadata accessor for ParentalControlDataItem(0);
      v81 = sub_21BC87420();
      v53 = __swift_allocate_boxed_opaque_existential_1(v79);
      sub_21BC872D4(a2 + v10, v53, type metadata accessor for ParentalControlDataItem);
      v69 = v62;
      v70 = v46;
      v71 = v61;
      v72 = v60;
      v73 = v59;
      v74 = v50;
      v54 = v58;
      v75 = v58;
      v76 = sub_21BC87558;
      v77 = v52;
      v78 = 0;
      v82 = 0;
      sub_21BBC7A18(&v69, v64);
      v65 = 1;
      sub_21BBC2528();
      sub_21BBC24D4();
      v55 = a1;

      v56 = v54;
      sub_21BE2784C();
      sub_21BBA3854(v67, v64, &qword_27CDB85E0, &unk_21BE3C500);
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85E0, &unk_21BE3C500);
      sub_21BC87478();
      sub_21BC87504();
      sub_21BE2784C();
      sub_21BB3A4CC(v67, &qword_27CDB85E0, &unk_21BE3C500);
      sub_21BBC7A74(&v69);
    }
  }

  else
  {
    v30 = *a2;
    v60 = v10;
    v31 = a2[1];
    v61 = a2[2];
    v62 = v30;
    v32 = a2[3];
    v33 = *(v6 + 28);
    v63 = a3;
    v34 = *(a2 + v33);
    sub_21BC872D4(a2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
    v35 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v36 = swift_allocObject();
    sub_21BC8733C(v9, v36 + v35);
    *(v36 + ((v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    type metadata accessor for ConfirmChildAgeViewModel();
    v37 = swift_getObjCClassFromMetadata();
    v38 = objc_opt_self();
    v39 = a1;

    v40 = v34;
    v41 = [v38 bundleForClass_];
    v42 = sub_21BE2599C();
    v44 = v43;

    v80 = type metadata accessor for ParentalControlDataItem(0);
    v81 = sub_21BC87420();
    v45 = __swift_allocate_boxed_opaque_existential_1(v79);
    sub_21BC872D4(a2 + v60, v45, type metadata accessor for ParentalControlDataItem);
    v69 = v62;
    v70 = v31;
    v71 = v61;
    v72 = v32;
    v73 = v40;
    v74 = sub_21BC879B0;
    v75 = v36;
    v76 = v42;
    v77 = v44;
    v78 = 0;
    v82 = 0;
    sub_21BBC7968(&v69, v64);
    v65 = 0;
    sub_21BBC2528();
    sub_21BBC24D4();
    sub_21BE2784C();
    sub_21BBA3854(v67, v64, &qword_27CDB85E0, &unk_21BE3C500);
    v66 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85E0, &unk_21BE3C500);
    sub_21BC87478();
    sub_21BC87504();
    sub_21BE2784C();
    sub_21BB3A4CC(v67, &qword_27CDB85E0, &unk_21BE3C500);
    sub_21BBC79C4(&v69);
  }

  return result;
}

uint64_t sub_21BC872D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC8733C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParentalControlCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21BC873A0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ParentalControlCell(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BC86B6C(a1, v6, a2);
}

unint64_t sub_21BC87420()
{
  result = qword_27CDB85D8;
  if (!qword_27CDB85D8)
  {
    v3 = type metadata accessor for ParentalControlDataItem(255);
    result = swift_getWitnessTable(byte_21BE37358, v3, v0, v1);
    atomic_store(result, &qword_27CDB85D8);
  }

  return result;
}

unint64_t sub_21BC87478()
{
  result = qword_27CDB85E8;
  if (!qword_27CDB85E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB85E0, &unk_21BE3C500);
    v4[0] = sub_21BBC2528();
    v4[1] = sub_21BBC24D4();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB85E8);
  }

  return result;
}

unint64_t sub_21BC87504()
{
  result = qword_27CDB85F0;
  if (!qword_27CDB85F0)
  {
    result = swift_getWitnessTable(aQF, &type metadata for CheckListNeedsUpdateCell, v0, v1);
    atomic_store(result, &qword_27CDB85F0);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for ParentalControlCell(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v9 = *(*(v1 - 8) + 64);

  v3 = v0 + v2 + *(v1 + 24);
  v4 = type metadata accessor for ParentalControlDataItem(0);
  v5 = *(v4 + 20);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BC8782C(uint64_t a1)
{
  v4 = *(type metadata accessor for ParentalControlCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BC8688C(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_21BC8794C()
{
  result = qword_27CDB85F8;
  if (!qword_27CDB85F8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8600, &unk_21BE3C520);
    result = swift_getWitnessTable(byte_21BE477F8, v3, v0, v1);
    atomic_store(result, &qword_27CDB85F8);
  }

  return result;
}

uint64_t type metadata accessor for CommLimitsView(uint64_t a1)
{
  result = qword_27CDB8608;
  if (!qword_27CDB8608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC87A28(uint64_t a1)
{
  result = type metadata accessor for CommLimitsItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BC87AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommLimitsItem(0);
  sub_21BBA3854(v0 + *(v8 + 20), v3, &qword_27CDB9720, &unk_21BE39F00);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21BB3A4CC(v3, &qword_27CDB9720, &unk_21BE39F00);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21BE32770;
    v11 = sub_21BC422F8();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21BBBEFE8();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();

    v16 = [v15 bundleForClass_];
    sub_21BE2599C();

    v17 = sub_21BE289DC();

    (*(v5 + 8))(v7, v4);
    return v17;
  }
}

uint64_t sub_21BC87D88()
{
  v1 = *(v0 + *(type metadata accessor for CommLimitsItem(0) + 28));
  switch(v1)
  {
    case 0:
      return 1;
    case 2:
      return 0;
    case 1:
      return 2;
  }

  return 3;
}

uint64_t sub_21BC87DDC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CommLimitsManagedCell(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8618, &qword_21BE3C598);
  MEMORY[0x28223BE20](v7);
  v9 = &v107 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8620, &qword_21BE3C5A0);
  MEMORY[0x28223BE20](v118);
  *&v120 = &v107 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8628, &qword_21BE3C5A8);
  MEMORY[0x28223BE20](v11);
  v13 = &v107 - v12;
  v119 = type metadata accessor for CommLimitsNotManagedCell(0);
  MEMORY[0x28223BE20](v119);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + *(type metadata accessor for CommLimitsItem(0) + 28));
  switch(v16)
  {
    case 0:
      v114 = v7;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v113 = v4;
      v109 = v80;
      v81 = swift_allocObject();
      v110 = xmmword_21BE32770;
      *(v81 + 16) = xmmword_21BE32770;
      v117 = a1;
      v82 = sub_21BE2917C();
      v115 = v9;
      v84 = v83;
      *(v81 + 56) = MEMORY[0x277D837D0];
      v85 = sub_21BBBEFE8();
      v116 = v11;
      v86 = v85;
      *(v81 + 64) = v85;
      *(v81 + 32) = v82;
      *(v81 + 40) = v84;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v88 = objc_opt_self();

      v89 = [v88 bundleForClass_];
      v112 = v13;
      v90 = v89;
      sub_21BE2599C();
      v111 = v2;

      v91 = sub_21BE289DC();
      v93 = v92;

      v94 = swift_allocObject();
      *(v94 + 16) = v110;
      v95 = sub_21BE2917C();
      *(v94 + 56) = MEMORY[0x277D837D0];
      *(v94 + 64) = v86;
      *(v94 + 32) = v95;
      *(v94 + 40) = v96;

      v97 = [v88 bundleForClass_];
      sub_21BE2599C();

      v98 = sub_21BE289DC();
      v100 = v99;

      sub_21BC88FB4(v111, &v15[*(v119 + 32)], type metadata accessor for CommLimitsItem);
      type metadata accessor for ChecklistStateVars(0);
      sub_21BC88F6C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
      *v15 = sub_21BE26E9C();
      v15[8] = v101 & 1;
      sub_21BBDAF04();
      sub_21BC88F6C(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
      *(v15 + 2) = sub_21BE2727C();
      *(v15 + 3) = v102;
      *(v15 + 4) = v91;
      *(v15 + 5) = v93;
      *(v15 + 6) = v98;
      *(v15 + 7) = v100;
      sub_21BC88FB4(v15, v120, type metadata accessor for CommLimitsNotManagedCell);
      swift_storeEnumTagMultiPayload();
      sub_21BC88F6C(&qword_27CDB8640, type metadata accessor for CommLimitsNotManagedCell, byte_21BE4069C);
      sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell, byte_21BE3E6E8);
      v103 = v112;
      sub_21BE2784C();
      sub_21BBA3854(v103, v115, &qword_27CDB8628, &qword_21BE3C5A8);
      swift_storeEnumTagMultiPayload();
      sub_21BC88E80();
      v44 = v117;
      sub_21BE2784C();
      sub_21BB3A4CC(v103, &qword_27CDB8628, &qword_21BE3C5A8);
      v45 = type metadata accessor for CommLimitsNotManagedCell;
      v46 = v15;
      goto LABEL_7;
    case 1:
      v115 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v47 = swift_allocObject();
      v113 = v4;
      v48 = v47;
      v120 = xmmword_21BE32770;
      *(v47 + 16) = xmmword_21BE32770;
      v117 = a1;
      v49 = sub_21BE2917C();
      v116 = v11;
      v50 = v49;
      v114 = v7;
      v52 = v51;
      v48[7] = MEMORY[0x277D837D0];
      v53 = sub_21BBBEFE8();
      v48[8] = v53;
      v48[4] = v50;
      v48[5] = v52;
      type metadata accessor for ConfirmChildAgeViewModel();
      v54 = swift_getObjCClassFromMetadata();
      v55 = objc_opt_self();
      v111 = v2;
      v56 = v55;

      v57 = [v56 &selRef:v54 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
      sub_21BE2599C();

      v58 = sub_21BE289DC();
      v118 = v59;
      v119 = v58;

      v60 = swift_allocObject();
      *(v60 + 16) = v120;
      v61 = sub_21BE2917C();
      *(v60 + 56) = MEMORY[0x277D837D0];
      *(v60 + 64) = v53;
      *(v60 + 32) = v61;
      *(v60 + 40) = v62;

      v63 = [v56 bundleForClass_];
      sub_21BE2599C();

      v64 = sub_21BE289DC();
      v112 = v65;

      v66 = swift_allocObject();
      *(v66 + 16) = v120;
      v67 = sub_21BE2917C();
      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = v53;
      *(v66 + 32) = v67;
      *(v66 + 40) = v68;

      v69 = [v56 bundleForClass_];
      sub_21BE2599C();

      v70 = sub_21BE289DC();
      v72 = v71;

      sub_21BC88FB4(v111, &v6[*(v113 + 36)], type metadata accessor for CommLimitsItem);
      sub_21BBDAF04();
      sub_21BC88F6C(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
      *v6 = sub_21BE2727C();
      *(v6 + 1) = v73;
      type metadata accessor for ChecklistStateVars(0);
      sub_21BC88F6C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
      *(v6 + 2) = sub_21BE26E9C();
      v6[24] = v74 & 1;
      v75 = v118;
      *(v6 + 4) = v119;
      *(v6 + 5) = v75;
      v76 = v112;
      *(v6 + 6) = v64;
      *(v6 + 7) = v76;
      *(v6 + 8) = v70;
      *(v6 + 9) = v72;
      sub_21BC88FB4(v6, v115, type metadata accessor for CommLimitsManagedCell);
      swift_storeEnumTagMultiPayload();
      sub_21BC88E80();
      sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell, byte_21BE3E6E8);
      v77 = v117;
      sub_21BE2784C();
      sub_21BC8901C(v6, type metadata accessor for CommLimitsManagedCell);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8630, &qword_21BE3C5B0);
      return (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    case 2:
      v112 = v13;
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v17 = swift_allocObject();
      v114 = v7;
      v18 = v17;
      v107 = xmmword_21BE32770;
      *(v17 + 16) = xmmword_21BE32770;
      v115 = v9;
      v117 = a1;
      v19 = sub_21BE2917C();
      v113 = v4;
      v21 = v20;
      v18[7] = MEMORY[0x277D837D0];
      v22 = sub_21BBBEFE8();
      v18[8] = v22;
      v18[4] = v19;
      v18[5] = v21;
      type metadata accessor for ConfirmChildAgeViewModel();
      v23 = swift_getObjCClassFromMetadata();
      v24 = objc_opt_self();
      v116 = v11;
      v25 = v24;

      v26 = [v25 &selRef:v23 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
      sub_21BE2599C();

      v109 = sub_21BE289DC();
      v111 = v27;

      v28 = v2;
      v29 = sub_21BC87AB0();
      *&v110 = v30;
      v31 = swift_allocObject();
      *(v31 + 16) = v107;
      v32 = sub_21BE2917C();
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = v22;
      *(v31 + 32) = v32;
      *(v31 + 40) = v33;

      v34 = [v25 bundleForClass_];
      sub_21BE2599C();

      v35 = sub_21BE289DC();
      v37 = v36;

      sub_21BC88FB4(v28, &v6[*(v113 + 36)], type metadata accessor for CommLimitsItem);
      sub_21BBDAF04();
      sub_21BC88F6C(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
      *v6 = sub_21BE2727C();
      *(v6 + 1) = v38;
      type metadata accessor for ChecklistStateVars(0);
      sub_21BC88F6C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
      *(v6 + 2) = sub_21BE26E9C();
      v6[24] = v39 & 1;
      v40 = v111;
      *(v6 + 4) = v109;
      *(v6 + 5) = v40;
      v41 = v110;
      *(v6 + 6) = v29;
      *(v6 + 7) = v41;
      *(v6 + 8) = v35;
      *(v6 + 9) = v37;
      sub_21BC88FB4(v6, v120, type metadata accessor for CommLimitsManagedCell);
      swift_storeEnumTagMultiPayload();
      sub_21BC88F6C(&qword_27CDB8640, type metadata accessor for CommLimitsNotManagedCell, byte_21BE4069C);
      sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell, byte_21BE3E6E8);
      v42 = v112;
      sub_21BE2784C();
      v43 = v42;
      sub_21BBA3854(v42, v115, &qword_27CDB8628, &qword_21BE3C5A8);
      swift_storeEnumTagMultiPayload();
      sub_21BC88E80();
      v44 = v117;
      sub_21BE2784C();
      sub_21BB3A4CC(v43, &qword_27CDB8628, &qword_21BE3C5A8);
      v45 = type metadata accessor for CommLimitsManagedCell;
      v46 = v6;
LABEL_7:
      sub_21BC8901C(v46, v45);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8630, &qword_21BE3C5B0);
      return (*(*(v104 - 8) + 56))(v44, 0, 1, v104);
  }

  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8630, &qword_21BE3C5B0);
  v106 = *(*(v105 - 8) + 56);

  return v106(a1, 1, 1, v105);
}

unint64_t sub_21BC88E80()
{
  result = qword_27CDB8638;
  if (!qword_27CDB8638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8628, &qword_21BE3C5A8);
    v4[0] = sub_21BC88F6C(&qword_27CDB8640, type metadata accessor for CommLimitsNotManagedCell, byte_21BE4069C);
    v4[1] = sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell, byte_21BE3E6E8);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB8638);
  }

  return result;
}

uint64_t sub_21BC88F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BC88FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC8901C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BC8907C()
{
  result = qword_27CDB8650;
  if (!qword_27CDB8650)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8658, qword_21BE3C5B8);
    v4[0] = sub_21BC89100();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB8650);
  }

  return result;
}

unint64_t sub_21BC89100()
{
  result = qword_27CDB8660;
  if (!qword_27CDB8660)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8630, &qword_21BE3C5B0);
    v4[0] = sub_21BC88E80();
    v4[1] = sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell, byte_21BE3E6E8);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB8660);
  }

  return result;
}

uint64_t sub_21BC891D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21BC89218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC89264()
{
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  sub_21BE2941C();
  return sub_21BE29B0C();
}

uint64_t sub_21BC892FC(uint64_t a1)
{
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  sub_21BE2941C();
  return sub_21BE29B0C();
}

unint64_t sub_21BC89394()
{
  result = qword_27CDB8668[0];
  if (!qword_27CDB8668[0])
  {
    result = swift_getWitnessTable(byte_21BE3C628, &type metadata for FamilyMemberForDisplay, v0, v1);
    atomic_store(result, qword_27CDB8668);
  }

  return result;
}

unint64_t sub_21BC893E8()
{
  result = qword_27CDB6730;
  if (!qword_27CDB6730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB6730);
  }

  return result;
}

uint64_t sub_21BC89434()
{
  v4 = *v0;
  v5 = *(v0 + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v3, v1);
  return v3;
}

uint64_t sub_21BC894E8(uint64_t a1)
{
  v2 = v1;
  sub_21BE28D7C();
  v4 = *(*(a1 - 8) + 16);
  v4(&v19, v1, a1);
  v5 = sub_21BE28D6C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  v10 = v1[5];
  *(v6 + 112) = v1[4];
  *(v6 + 128) = v10;
  *(v6 + 144) = v1[6];
  v11 = v1[1];
  *(v6 + 48) = *v1;
  *(v6 + 64) = v11;
  v12 = v1[3];
  *(v6 + 80) = v1[2];
  *(v6 + 96) = v12;
  v4(&v19, v1, a1);
  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v7;
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  v15 = v2[5];
  *(v14 + 112) = v2[4];
  *(v14 + 128) = v15;
  *(v14 + 144) = v2[6];
  v16 = v2[1];
  *(v14 + 48) = *v2;
  *(v14 + 64) = v16;
  v17 = v2[3];
  *(v14 + 80) = v2[2];
  *(v14 + 96) = v17;
  sub_21BE2857C();
  return v19;
}

uint64_t sub_21BC8966C(char *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = (*(a4 + 3))(*a1, a2, a3) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  sub_21BE283FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  if (v5 == 1)
  {
    return sub_21BE2840C();
  }

  sub_21BE2840C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

uint64_t sub_21BC897AC()
{
  v3 = v0[5];
  v4 = *(&v3 + 1);
  v5 = v0[5];
  sub_21BC8A054(&v4, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  sub_21BE283FC();
  if (v2 != 2)
  {
    v5 = *v0;
    v6 = *(v0 + 16);
    LOBYTE(v2) = v2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
    v5 = v3;
    LOBYTE(v2) = 2;
    sub_21BE2840C();
  }

  return sub_21BC8A0C4(&v3);
}

uint64_t sub_21BC89894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = sub_21BE284DC();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDF068], v7);
  v38 = v7;
  v39 = WitnessTable;
  v29 = MEMORY[0x277CDEDA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v11 = &v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DF8, &qword_21BE3B850);
  v12 = sub_21BE2719C();
  v31 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v25 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v15;
  sub_21BC894E8(a1);
  sub_21BE284AC();
  v40 = *(v3 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v34 = v6;
  v35 = v5;
  v36 = v3;
  v16 = WitnessTable;
  sub_21BE280DC();

  (*(v32 + 8))(v9, v7);
  [*(v3 + 72) isOrganizer];
  v38 = v7;
  v39 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v25;
  v19 = OpaqueTypeMetadata2;
  sub_21BE2818C();
  (*(v30 + 8))(v11, v19);
  v20 = sub_21BC89FC0();
  v37[0] = OpaqueTypeConformance2;
  v37[1] = v20;
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v12, v37);
  v21 = v28;
  sub_21BD37338();
  v22 = *(v31 + 8);
  v22(v18, v12);
  sub_21BD37338();
  return (v22)(v21, v12);
}

uint64_t (*sub_21BC89C94(_OWORD *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v7;
  *(v6 + 128) = a1[6];
  v8 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  v9 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v9;
  v11 = type metadata accessor for ToggleWithConfirmation(0, a2, a3, v10);
  (*(*(v11 - 8) + 16))(&v13, a1, v11);
  return sub_21BC8A024;
}

uint64_t sub_21BC89DB0(uint64_t a1, uint64_t a2)
{
  sub_21BB41FA4();

  return sub_21BE27DBC();
}

uint64_t sub_21BC89E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21BC89E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21BC89EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21BC89F64()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  v3 = sub_21BC89C94(v1, v0[2], v0[3]);
  v2(v3);

  return result;
}

unint64_t sub_21BC89FC0()
{
  result = qword_27CDBC560;
  if (!qword_27CDBC560)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable(MEMORY[0x277CE08A0], v3, v0, v1);
    atomic_store(result, &qword_27CDBC560);
  }

  return result;
}

uint64_t sub_21BC8A054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB86F0, &unk_21BE3C7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC8A0C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21BC8A12C@<X0>(_BYTE *a1@<X8>)
{
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  result = MEMORY[0x21CF036E0](&v5, v3);
  *a1 = v5;
  return result;
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BC8A28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BC8A2C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21BC8A310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC8A3BC()
{
  v1 = *(v0 + 24);
  v5 = *(v0 + 8);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC360, &qword_21BE4A2E0);
  MEMORY[0x21CF036E0](&v4, v2);
  return v4;
}

double sub_21BC8A468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8798, &qword_21BE3C8D0);
  sub_21BE283FC();
  return v1;
}

uint64_t sub_21BC8A51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v35 = a3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v31 = type metadata accessor for PersonPickerCell(255, v7, v8, a4);
  v36 = v31;
  WitnessTable = swift_getWitnessTable(byte_21BE3C9B8, v31);
  v33 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - v13;
  v14 = sub_21BC8A3BC();
  v16 = v15;
  v17 = (*(v8 + 32))(v7, v8);
  if (v16)
  {
    if (v14 == v17 && v16 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_21BE2995C();
    }
  }

  else
  {
    v20 = 0;
  }

  swift_unknownObjectRetain();
  *&v41 = sub_21BE270CC();
  *(&v41 + 1) = v21;
  *&v42 = 0x4000000000000000;
  BYTE8(v42) = v20 & 1;
  v43 = xmmword_21BE3C7B0;
  v38 = v41;
  v39 = v42;
  v40 = xmmword_21BE3C7B0;
  v22 = swift_allocObject();
  *(v22 + 16) = v7;
  *(v22 + 24) = v8;
  v23 = v4[1];
  *(v22 + 32) = *v4;
  *(v22 + 48) = v23;
  v24 = v4[3];
  *(v22 + 64) = v4[2];
  *(v22 + 80) = v24;
  *(v22 + 96) = a1;
  swift_unknownObjectRetain();
  (*(*(a2 - 8) + 16))(&v36, v4, a2);
  v25 = swift_checkMetadataState();
  v26 = v33;
  sub_21BE27F4C();

  (*(*(v25 - 8) + 8))(&v41, v25);
  v36 = v25;
  WitnessTable = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_21BD37338();
  v28 = *(v34 + 8);
  v28(v12, OpaqueTypeMetadata2);
  sub_21BD37338();
  return (v28)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_21BC8A8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC360, &qword_21BE4A2E0);
  return sub_21BE2854C();
}

uint64_t sub_21BC8A940(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  v6 = v1[1];
  *(v3 + 32) = *v1;
  *(v3 + 48) = v6;
  v7 = v1[3];
  *(v3 + 64) = v1[2];
  *(v3 + 80) = v7;
  (*(*(a1 - 8) + 16))(&v51, v1, a1);
  v8 = sub_21BE28CBC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for PersonPickerCell(255, v4, v5, v10);
  WitnessTable = swift_getWitnessTable(byte_21BE3C9B8, v11);
  *&v51 = v11;
  *(&v51 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = swift_getWitnessTable(MEMORY[0x277D83980], v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v51 = v8;
  *(&v51 + 1) = AssociatedTypeWitness;
  *&v52 = OpaqueTypeMetadata2;
  *(&v52 + 1) = v14;
  *&v53 = AssociatedConformanceWitness;
  v16 = sub_21BE285DC();
  *&v51 = v11;
  *(&v51 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(MEMORY[0x277CE1290], v16, &OpaqueTypeConformance2);
  v17 = sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  v18 = sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  v19 = sub_21BE2719C();
  v44[0] = swift_getWitnessTable(MEMORY[0x277CE1138], v17);
  v44[1] = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0, MEMORY[0x277CE0328]);
  v20 = MEMORY[0x277CDFAD8];
  v43[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v18, v44);
  v43[1] = sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8, MEMORY[0x277CE07C8]);
  swift_getWitnessTable(v20, v19, v43);
  v21 = sub_21BE26E2C();
  v22 = sub_21BE2719C();
  v23 = swift_getWitnessTable(MEMORY[0x277CDD6E0], v21);
  v24 = MEMORY[0x277CDF678];
  v42[0] = v23;
  v42[1] = MEMORY[0x277CDF678];
  v25 = swift_getWitnessTable(v20, v22, v42);
  *&v51 = v22;
  *(&v51 + 1) = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  *&v51 = v22;
  *(&v51 + 1) = v25;
  v27 = swift_getOpaqueTypeConformance2();
  *&v51 = v26;
  *(&v51 + 1) = v27;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_21BE2719C();
  *&v51 = v26;
  *(&v51 + 1) = v27;
  v41[0] = swift_getOpaqueTypeConformance2();
  v41[1] = MEMORY[0x277CDFB28];
  v29 = swift_getWitnessTable(v20, v28, v41);
  *&v51 = v28;
  *(&v51 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  *&v51 = v28;
  *(&v51 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  *&v50[0] = sub_21BE2704C();
  *(&v50[0] + 1) = v30;
  sub_21BC8A468();
  sub_21BE2869C();
  v31 = sub_21BE2705C();
  v32 = swift_getWitnessTable(MEMORY[0x277CDF7D8], v31);
  sub_21BE2811C();

  v50[0] = v51;
  v50[1] = v52;
  v50[2] = v53;
  v50[3] = v54;
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v33 = sub_21BE2719C();
  v36[0] = v32;
  v36[1] = v24;
  swift_getWitnessTable(v20, v33, v36);
  sub_21BD37338();
  v34 = *(*(v33 - 8) + 8);
  v34(v50, v33);
  v51 = v46;
  v52 = v47;
  v53 = v48;
  v54 = v49;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  sub_21BD37338();
  return v34(&v51, v33);
}

uint64_t sub_21BC8AF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a2;
  v43 = a1;
  v44 = a5;
  v7 = sub_21BE28CBC();
  v41 = a4;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for PersonPickerCell(255, a3, a4, v8);
  WitnessTable = swift_getWitnessTable(byte_21BE3C9B8, v9);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = swift_getWitnessTable(MEMORY[0x277D83980], v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_21BE285DC();
  v53 = v9;
  v54 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(MEMORY[0x277CE1290], v11, &OpaqueTypeConformance2);
  v12 = sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  v13 = sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  v14 = sub_21BE2719C();
  v51[0] = swift_getWitnessTable(MEMORY[0x277CE1138], v12);
  v51[1] = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0, MEMORY[0x277CE0328]);
  v15 = MEMORY[0x277CDFAD8];
  v50[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v51);
  v50[1] = sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8, MEMORY[0x277CE07C8]);
  v39 = v14;
  v38 = swift_getWitnessTable(v15, v14, v50);
  v16 = sub_21BE26E2C();
  v40 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v36 - v17;
  v19 = sub_21BE2719C();
  v49[0] = swift_getWitnessTable(MEMORY[0x277CDD6E0], v16);
  v49[1] = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable(v15, v19, v49);
  v53 = v19;
  v54 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v53 = v19;
  v54 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v53 = v21;
  v54 = v22;
  swift_getOpaqueTypeMetadata2();
  v23 = sub_21BE2719C();
  v37 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v36 - v24;
  v53 = v21;
  v54 = v22;
  v48[0] = swift_getOpaqueTypeConformance2();
  v48[1] = MEMORY[0x277CDFB28];
  v26 = swift_getWitnessTable(v15, v23, v48);
  v53 = v23;
  v54 = v26;
  v36[1] = MEMORY[0x277CDEA30];
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v36 - v32;
  sub_21BE27B3C();
  v45 = a3;
  v46 = v41;
  v47 = v42;
  sub_21BE26E3C();
  sub_21BC8A468();
  sub_21BE26F6C();
  sub_21BC8C2F8(v16, v25);
  (*(v40 + 8))(v18, v16);
  sub_21BE2801C();
  (*(v37 + 8))(v25, v23);
  v53 = v23;
  v54 = v26;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338();
  v34 = *(v28 + 8);
  v34(v31, v27);
  sub_21BD37338();
  return (v34)(v33, v27);
}

uint64_t sub_21BC8B618@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_21BE28CBC();
  v37 = a3;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for PersonPickerCell(255, a2, a3, v8);
  WitnessTable = swift_getWitnessTable(byte_21BE3C9B8, v9);
  v45[2] = swift_getOpaqueTypeMetadata2();
  v45[3] = swift_getWitnessTable(MEMORY[0x277D83980], v7);
  v45[4] = swift_getAssociatedConformanceWitness();
  v11 = sub_21BE285DC();
  v45[0] = v9;
  v45[1] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(MEMORY[0x277CE1290], v11, &OpaqueTypeConformance2);
  v12 = sub_21BE2848C();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  v35 = sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  v15 = sub_21BE2719C();
  v38 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = v37;
  v40 = a2;
  v41 = v37;
  v42 = a1;
  sub_21BE275DC();
  sub_21BE2847C();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v21;
  v23 = a1[1];
  *(v22 + 32) = *a1;
  *(v22 + 48) = v23;
  v24 = a1[3];
  *(v22 + 64) = a1[2];
  *(v22 + 80) = v24;
  v26 = type metadata accessor for PersonPickerView(0, a2, v21, v25);
  (*(*(v26 - 8) + 16))(v45, a1, v26);
  v27 = swift_getWitnessTable(MEMORY[0x277CE1138], v12);
  sub_21BC8C064(sub_21BC8E244, v22, v27, v18);

  (*(v36 + 8))(v14, v12);
  v28 = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0, MEMORY[0x277CE0328]);
  v44[0] = v27;
  v44[1] = v28;
  v29 = MEMORY[0x277CDFAD8];
  v30 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v35, v44);
  v31 = sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8, MEMORY[0x277CE07C8]);
  v43[0] = v30;
  v43[1] = v31;
  swift_getWitnessTable(v29, v15, v43);
  sub_21BD37338();
  v32 = *(v38 + 8);
  v32(v18, v15);
  sub_21BD37338();
  return (v32)(v20, v15);
}

uint64_t sub_21BC8BB2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_21BE28CBC();
  v26 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for PersonPickerCell(255, a2, a3, v8);
  WitnessTable = swift_getWitnessTable(byte_21BE3C9B8, v9);
  v30 = MEMORY[0x277CE0CA8];
  v31 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = swift_getWitnessTable(MEMORY[0x277D83980], v7);
  v34 = v7;
  v35 = AssociatedTypeWitness;
  v36 = OpaqueTypeMetadata2;
  v37 = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_21BE285DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v39 = *a1;
  v40 = v39;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *(a1 + 1);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  v20 = *(a1 + 3);
  *(v18 + 64) = *(a1 + 2);
  *(v18 + 80) = v20;
  (*(*(v7 - 8) + 16))(&v34, &v40, v7);
  v22 = type metadata accessor for PersonPickerView(0, a2, a3, v21);
  (*(*(v22 - 8) + 16))(&v34, a1, v22);
  v34 = v9;
  v35 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE285CC();
  v33 = OpaqueTypeConformance2;
  swift_getWitnessTable(MEMORY[0x277CE1290], v11, &v33);
  sub_21BD37338();
  v24 = *(v12 + 8);
  v24(v15, v11);
  sub_21BD37338();
  return (v24)(v17, v11);
}

uint64_t sub_21BC8BE8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a2;
  v24 = a5;
  v8 = type metadata accessor for PersonPickerCell(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(byte_21BE3C9B8, v8, v23, v24);
  v25 = v8;
  v26 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = *a1;
  v19 = type metadata accessor for PersonPickerView(0, a3, a4, v18);
  sub_21BC8A51C(v17, v19, v14, v20);
  v25 = v8;
  v26 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338();
  v21 = *(v11 + 8);
  v21(v14, OpaqueTypeMetadata2);
  sub_21BD37338();
  return (v21)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_21BC8C064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a1;
  v17 = a2;
  v18 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  v6 = sub_21BE2719C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v19[2] = sub_21BC8E2B0;
  v19[3] = 0;
  sub_21BE2869C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB87A8, &unk_21BE3C8E0);
  sub_21BB3B038(&qword_27CDB87B0, &qword_27CDB87A8, &unk_21BE3C8E0, MEMORY[0x277CDF7D8]);
  v10 = a4;
  sub_21BE27E9C();
  v11 = swift_allocObject();
  v12 = v17;
  *(v11 + 16) = v16;
  *(v11 + 24) = v12;
  v13 = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0, MEMORY[0x277CE0328]);
  v19[0] = v10;
  v19[1] = v13;

  swift_getWitnessTable(MEMORY[0x277CDFAD8], v6, v19);
  sub_21BC8E31C();
  sub_21BC8E498(qword_27CDB87C0, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_21BE2800C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21BC8C2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v6 = sub_21BE279FC();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v8 = sub_21BE2719C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v37[0] = swift_getWitnessTable(MEMORY[0x277CDD6E0], a1);
  v37[1] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v37);
  v35 = v8;
  v36 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v26 - v14;
  v35 = v8;
  v36 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeMetadata2;
  v36 = OpaqueTypeConformance2;
  v28 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_21BE2869C();
  sub_21BE2811C();
  v20 = v27;
  sub_21BE27F7C();
  (*(v9 + 8))(v11, v8);
  sub_21BE279EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB87A0, &qword_21BE3C8D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  LOBYTE(v9) = sub_21BE27B5C();
  *(inited + 32) = v9;
  v22 = sub_21BE27B3C();
  *(inited + 33) = v22;
  sub_21BE27B4C();
  sub_21BE27B4C();
  if (sub_21BE27B4C() != v9)
  {
    sub_21BE27B4C();
  }

  sub_21BE27B4C();
  if (sub_21BE27B4C() != v22)
  {
    sub_21BE27B4C();
  }

  v23 = v28;
  sub_21BE27FCC();
  (*(v32 + 8))(v20, v33);
  (*(v31 + 8))(v15, OpaqueTypeMetadata2);
  v35 = OpaqueTypeMetadata2;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_21BE281DC();
  return (*(v29 + 8))(v19, v24);
}

void *sub_21BC8C850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88B8, &qword_21BE3CA48);
  MEMORY[0x28223BE20](v40);
  v6 = (&v38 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_21BE27CEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8898, &qword_21BE3CA30);
  MEMORY[0x28223BE20](v14);
  v16 = (&v38 - v15);
  if ((*(a2 + 64))(a1, a2))
  {
    v17 = [objc_opt_self() secondarySystemFillColor];
    v39 = sub_21BE2826C();
    v18 = sub_21BE2869C();
    v38 = v19;
    v20 = (v16 + *(v14 + 36));
    v21 = sub_21BE2837C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88C0, &qword_21BE3CA50);
    sub_21BE270EC();
    *v20 = v21;
    (*(v11 + 104))(v13, *MEMORY[0x277CE0A50], v10);
    v22 = sub_21BE27C1C();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v23 = sub_21BE27C6C();
    sub_21BB3A4CC(v9, &qword_27CDB8858, &qword_21BE3CA18);
    (*(v11 + 8))(v13, v10);
    KeyPath = swift_getKeyPath();
    v25 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88C8, &qword_21BE3CA88) + 36));
    *v25 = KeyPath;
    v25[1] = v23;
    LOBYTE(v23) = sub_21BE27B7C();
    sub_21BE26E0C();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB88D0, &qword_21BE3CA90) + 36);
    *v34 = v23;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    v35 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88A8, &qword_21BE3CA38) + 36));
    v36 = v38;
    *v35 = v18;
    v35[1] = v36;
    *v16 = v39;
    sub_21BBA3854(v16, v6, &qword_27CDB8898, &qword_21BE3CA30);
    swift_storeEnumTagMultiPayload();
    sub_21BC8E740();
    sub_21BC8E7F8();
    sub_21BE2784C();
    return sub_21BB3A4CC(v16, &qword_27CDB8898, &qword_21BE3CA30);
  }

  else
  {
    *v6 = (*(a2 + 24))(a1, a2);
    swift_storeEnumTagMultiPayload();
    sub_21BC8E740();
    sub_21BC8E7F8();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BC8CCD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21BE2838C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v7 = *v1;
    sub_21BE2836C();
  }

  else
  {
    sub_21BE2837C();
  }

  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v8 = sub_21BE283CC();

  result = (*(v4 + 8))(v6, v3);
  *a1 = v8;
  return result;
}

uint64_t sub_21BC8CE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_21BE276EC();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE27A2C();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v40 = *(a1 + 24);
  type metadata accessor for PersonPickerCell.SelectionView(255, v7, v40, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
  swift_getTupleTypeMetadata2();
  v9 = sub_21BE286EC();
  v10 = MEMORY[0x277CE14C0];
  swift_getWitnessTable(MEMORY[0x277CE14C0], v9);
  sub_21BE2851C();
  v55 = sub_21BE2719C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8850, &qword_21BE3CA10);
  v57 = MEMORY[0x277CE0BD8];
  v58 = v56;
  v59 = MEMORY[0x277CE0BD8];
  swift_getTupleTypeMetadata();
  v11 = sub_21BE286EC();
  WitnessTable = swift_getWitnessTable(v10, v11);
  v12 = sub_21BE284FC();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  v15 = swift_getWitnessTable(MEMORY[0x277CE1198], v12);
  v55 = v12;
  v56 = v15;
  v36[1] = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v36 - v17;
  sub_21BE27AEC();
  v19 = sub_21BE2719C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v37 = v36 - v25;
  MEMORY[0x28223BE20](v24);
  v42 = v36 - v26;
  v51 = v7;
  v52 = v40;
  v27 = v44;
  v53 = v44;
  sub_21BE2770C();
  sub_21BE284EC();
  v28 = v43;
  sub_21BE27A0C();
  sub_21BE2805C();
  (*(v45 + 8))(v28, v46);
  (*(v41 + 8))(v14, v12);
  v55 = v12;
  v56 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE2809C();
  (*(v39 + 8))(v18, OpaqueTypeMetadata2);
  v30 = v47;
  if (*(v27 + 24))
  {
    sub_21BE276BC();
  }

  else
  {
    sub_21BE276CC();
  }

  v31 = v37;
  sub_21BE2718C();
  (*(v48 + 8))(v30, v49);
  v32 = *(v20 + 8);
  v32(v23, v19);
  v33 = sub_21BC8E498(&qword_27CDB6790, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v54[0] = OpaqueTypeConformance2;
  v54[1] = v33;
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v54);
  v34 = v42;
  sub_21BD37338();
  v32(v31, v19);
  sub_21BD37338();
  return (v32)(v34, v19);
}

uint64_t sub_21BC8D4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a2;
  v86 = a1;
  v96 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v73 - v7;
  v99 = sub_21BE27CEC();
  v87 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = a3;
  v98 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2;
  v10 = a3;
  type metadata accessor for PersonPickerCell.SelectionView(255, v9, a3, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
  swift_getTupleTypeMetadata2();
  v12 = sub_21BE286EC();
  swift_getWitnessTable(MEMORY[0x277CE14C0], v12);
  v13 = sub_21BE2851C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - v15;
  v17 = sub_21BE2719C();
  v103 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v73 - v21;
  v105 = v104;
  v106 = v10;
  v22 = v86;
  v107 = v86;
  sub_21BE2869C();
  sub_21BE2850C();
  v23 = v22;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE11A8], v13);
  sub_21BE2815C();
  (*(v14 + 8))(v16, v13);
  v148[0] = WitnessTable;
  v148[1] = MEMORY[0x277CDF918];
  v92 = v17;
  v93 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v17, v148);
  v101 = v20;
  sub_21BD37338();
  v25 = *(v103 + 8);
  v94 = v103 + 8;
  v95 = v25;
  v25(v20, v17);
  sub_21BE2869C();
  sub_21BE26F2C();
  v88 = v148[2];
  v89 = v150;
  v90 = v153;
  v91 = v152;
  v165 = 1;
  v163 = v149;
  v161 = v151;
  v26 = v104;
  v27 = v97;
  type metadata accessor for PersonPickerCell(0, v104, v97, v28);
  v79 = *(v23 + 8);
  v29 = v27;
  v30 = *(v27 + 40);
  swift_unknownObjectRetain();
  v137 = v30(v26, v29);
  v138 = v31;
  v78 = sub_21BB41FA4();
  v83 = sub_21BE27DBC();
  v33 = v32;
  v35 = v34;
  v36 = *MEMORY[0x277CE0A68];
  v37 = v87;
  v77 = *(v87 + 104);
  v38 = v98;
  v39 = v99;
  v77(v98, v36, v99);
  v75 = sub_21BE27C1C();
  v40 = *(v75 - 8);
  v74 = *(v40 + 56);
  v76 = v40 + 56;
  v41 = v100;
  v74(v100, 1, 1, v75);
  sub_21BE27C6C();
  sub_21BB3A4CC(v41, &qword_27CDB8858, &qword_21BE3CA18);
  v73 = *(v37 + 8);
  v73(v38, v39);
  v42 = v83;
  v43 = sub_21BE27D9C();
  v84 = v44;
  v85 = v43;
  LODWORD(v86) = v45;
  v87 = v46;

  sub_21BBC7C7C(v42, v33, v35 & 1);

  sub_21BE2869C();
  sub_21BE26F2C();
  v80 = v154;
  v81 = v156;
  v82 = v159;
  v83 = v158;
  v171 = 1;
  v169 = v155;
  v167 = v157;
  v47 = (*(v97 + 48))(v104);
  v49 = v48;
  swift_unknownObjectRelease();
  v137 = v47;
  v138 = v49;
  v50 = sub_21BE27DBC();
  v52 = v51;
  LOBYTE(v39) = v53;
  v55 = v98;
  v54 = v99;
  v77(v98, *MEMORY[0x277CE0AB0], v99);
  v56 = v100;
  v74(v100, 1, 1, v75);
  sub_21BE27C6C();
  sub_21BB3A4CC(v56, &qword_27CDB8858, &qword_21BE3CA18);
  v73(v55, v54);
  v57 = sub_21BE27D9C();
  v59 = v58;
  LOBYTE(v37) = v60;

  sub_21BBC7C7C(v50, v52, v39 & 1);

  sub_21BE2833C();
  v61 = sub_21BE27D4C();
  v63 = v62;
  LOBYTE(v52) = v64;
  v66 = v65;

  sub_21BBC7C7C(v57, v59, v37 & 1);

  v67 = v101;
  v68 = v92;
  (*(v103 + 16))(v101, v102, v92);
  v137 = 0;
  LOBYTE(v138) = v165;
  *(&v138 + 1) = *v164;
  HIDWORD(v138) = *&v164[3];
  v139 = v88;
  v140 = v163;
  *v141 = *v162;
  *&v141[3] = *&v162[3];
  v142 = v89;
  v143 = v161;
  *v144 = *v160;
  *&v144[3] = *&v160[3];
  v145 = v91;
  v146 = v90;
  v147[0] = v67;
  v147[1] = &v137;
  v70 = v84;
  v69 = v85;
  v133 = v85;
  v134 = v84;
  LOBYTE(v67) = v86 & 1;
  v135 = v86 & 1;
  v136 = v87;
  v122 = 0;
  v123 = v171;
  *v124 = *v170;
  *&v124[3] = *&v170[3];
  v125 = v80;
  v126 = v169;
  *v127 = *v168;
  *&v127[3] = *&v168[3];
  v128 = v81;
  v129 = v167;
  *&v130[3] = *&v166[3];
  *v130 = *v166;
  v131 = v83;
  v132 = v82;
  v147[2] = &v133;
  v147[3] = &v122;
  v118 = v61;
  v119 = v63;
  LOBYTE(v52) = v52 & 1;
  v120 = v52;
  v121 = v66;
  v147[4] = &v118;
  sub_21BBA4A38(v85, v84, v86 & 1);

  sub_21BBA4A38(v61, v63, v52);

  v113 = v68;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8850, &qword_21BE3CA10);
  v115 = MEMORY[0x277CE0BD8];
  v116 = v114;
  v117 = MEMORY[0x277CE0BD8];
  v108 = v93;
  v109 = sub_21BC8E4EC();
  v110 = MEMORY[0x277CE0BC8];
  v111 = v109;
  v112 = MEMORY[0x277CE0BC8];
  sub_21BDFE148(v147, 5uLL, &v113);
  sub_21BBC7C7C(v61, v63, v52);

  sub_21BBC7C7C(v69, v70, v67);

  v71 = v95;
  v95(v102, v68);
  sub_21BBC7C7C(v118, v119, v120);

  sub_21BBC7C7C(v133, v134, v135);

  return v71(v101, v68);
}

uint64_t sub_21BC8DE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8848, &qword_21BE3CA08);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v23 - v11);
  v13 = *(a1 + 24);
  type metadata accessor for PersonPickerCell(0, a2, a3, v14);
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  LOBYTE(v30) = v13;
  *(&v30 + 1) = v15 + 10.0;
  *&v31 = v16;
  v18 = type metadata accessor for PersonPickerCell.SelectionView(0, a2, a3, v17);
  WitnessTable = swift_getWitnessTable(aAiFI, v18, v23[0]);
  sub_21BD37338();
  swift_unknownObjectRetain();
  sub_21BC8C850(a2, a3, v12);
  swift_unknownObjectRelease();
  sub_21BE2869C();
  sub_21BE26F2C();
  v20 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8868, &qword_21BE3CA20) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  *(v12 + *(v7 + 36)) = 256;
  v25 = v28;
  v26 = v29;
  v27[0] = &v25;
  sub_21BBA3854(v12, v10, &qword_27CDB8848, &qword_21BE3CA08);
  v27[1] = v10;
  v24[0] = v18;
  v24[1] = v7;
  v23[1] = WitnessTable;
  v23[2] = sub_21BC8E570();
  sub_21BDFE148(v27, 2uLL, v24);
  sub_21BB3A4CC(v12, &qword_27CDB8848, &qword_21BE3CA08);
  return sub_21BB3A4CC(v10, &qword_27CDB8848, &qword_21BE3CA08);
}

double sub_21BC8E0E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v5 = sub_21BE2829C();
  }

  else
  {
    v5 = sub_21BE282DC();
  }

  v6 = v5;
  sub_21BE26ECC();
  v7 = sub_21BE2869C();
  v9 = v8;
  sub_21BE2869C();
  sub_21BE26F2C();
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v6;
  *(a2 + 48) = 256;
  *(a2 + 56) = v7;
  *(a2 + 64) = v9;
  *(a2 + 72) = v11;
  *(a2 + 88) = v12;
  result = *&v13;
  *(a2 + 104) = v13;
  return result;
}

void sub_21BC8E2B0(uint64_t *a2@<X8>)
{
  v3 = sub_21BE282DC();
  sub_21BE26F6C();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

unint64_t sub_21BC8E31C()
{
  result = qword_27CDB87B8;
  if (!qword_27CDB87B8)
  {
    result = swift_getWitnessTable(byte_21BE3C970, &type metadata for SizePreferenceKey, v0, v1);
    atomic_store(result, &qword_27CDB87B8);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t sub_21BC8E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BC8E498(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BC8E4EC()
{
  result = qword_27CDB8860;
  if (!qword_27CDB8860)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8850, &qword_21BE3CA10);
    v4[0] = MEMORY[0x277CE1170];
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8860);
  }

  return result;
}

unint64_t sub_21BC8E570()
{
  result = qword_27CDB8870;
  if (!qword_27CDB8870)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
    v4[0] = sub_21BC8E628();
    v4[1] = sub_21BB3B038(&qword_280BD6A38, qword_27CDB7740, &qword_21BE3CA40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8870);
  }

  return result;
}

unint64_t sub_21BC8E628()
{
  result = qword_27CDB8878;
  if (!qword_27CDB8878)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8868, &qword_21BE3CA20);
    v4[0] = sub_21BC8E6B4();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8878);
  }

  return result;
}

unint64_t sub_21BC8E6B4()
{
  result = qword_27CDB8880;
  if (!qword_27CDB8880)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8888, &qword_21BE3CA28);
    v4[0] = sub_21BC8E740();
    v4[1] = sub_21BC8E7F8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB8880);
  }

  return result;
}

unint64_t sub_21BC8E740()
{
  result = qword_27CDB8890;
  if (!qword_27CDB8890)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8898, &qword_21BE3CA30);
    v4 = sub_21BB3B038(&qword_27CDB88A0, &qword_27CDB88A8, &qword_21BE3CA38, MEMORY[0x277CDFC88]);
    v5[0] = MEMORY[0x277CE0F70];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDB8890);
  }

  return result;
}

unint64_t sub_21BC8E7F8()
{
  result = qword_27CDB88B0;
  if (!qword_27CDB88B0)
  {
    result = swift_getWitnessTable(byte_21BE3CB28, &type metadata for PersonPickerImageView, v0, v1);
    atomic_store(result, &qword_27CDB88B0);
  }

  return result;
}

uint64_t sub_21BC8E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BC8E898(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BC8E8EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21BC8E990()
{
  result = qword_27CDB8958;
  if (!qword_27CDB8958)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8960, &qword_21BE3CBC8);
    v4[0] = sub_21BB3B038(&qword_27CDB8968, &qword_27CDB8970, &qword_21BE3CBD0, MEMORY[0x277CDFB00]);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8958);
  }

  return result;
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();

  return v4;
}

uint64_t String.rebrand.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BE263EC();
  v10 = v4;
  v11 = sub_21BC8EC98();
  v5 = __swift_allocate_boxed_opaque_existential_1(&v8);
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D08030], v4);
  LOBYTE(v4) = sub_21BE2651C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v8);
  if ((v4 & 1) != 0 && (v8 = a1, v9 = a2, sub_21BB41FA4(), (sub_21BE294AC() & 1) == 0))
  {
    v8 = 0x444E41524245525FLL;
    v9 = 0xE800000000000000;

    v7 = sub_21BE28B8C();
    sub_21BE28AEC();
    return v7;
  }

  else
  {
  }

  return a1;
}

Swift::String __swiftcall String.localized(in:)(NSBundle in)
{
  v1 = sub_21BE2599C();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_21BC8EC98()
{
  result = qword_27CDB8978;
  if (!qword_27CDB8978)
  {
    v3 = sub_21BE263EC();
    result = swift_getWitnessTable(MEMORY[0x277D08038], v3, v0, v1);
    atomic_store(result, &qword_27CDB8978);
  }

  return result;
}

uint64_t String.localizedWith(_:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v6 = sub_21BE289DC();

  return v6;
}

uint64_t sub_21BC8EE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21BBA6A64;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21BC8EFA0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return v7(a1, a2);
}

uint64_t sub_21BC8F0B8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89B0, &qword_21BE3CC78);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC8F190, 0, 0);
}

uint64_t sub_21BC8F190()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_21BE2688C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  swift_beginAccess();
  sub_21BBFD920(v1, v2 + v6, &qword_27CDB89B0, &qword_21BE3CC78);
  swift_endAccess();
  v7 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 24);
  v8 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore), v7);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_21BC8F320;
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];

  return MEMORY[0x2821AC038](v10, v11, v12, v7, v8);
}

uint64_t sub_21BC8F320()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21BC8F530;
  }

  else
  {
    v2 = sub_21BC8F434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC8F434()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = sub_21BE266DC();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBFD920(v1, v2 + v4, &qword_27CDB7AC8, &qword_21BE3CC70);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BC8F530()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC8F59C()
{
  v1[8] = v0;
  v2 = sub_21BE26A4C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89B0, &qword_21BE3CC78);
  v1[13] = swift_task_alloc();
  v3 = sub_21BE2688C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  v1[17] = swift_task_alloc();
  v4 = sub_21BE266DC();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC8F790, 0, 0);
}

uint64_t sub_21BC8F790()
{
  v40 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBA3854(v4 + v5, v3, &qword_27CDB7AC8, &qword_21BE3CC70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21BB3A4CC(v0[17], &qword_27CDB7AC8, &qword_21BE3CC70);
    sub_21BE2614C();
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FDC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21BB3D81C(0x292865766173, 0xE600000000000000, &v39);
      _os_log_impl(&dword_21BB35000, v6, v7, "ParentalControlStore.%s settings is unxpectedly nil", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    goto LABEL_12;
  }

  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[13];
  v17 = v0[8];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v18 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  swift_beginAccess();
  sub_21BBA3854(v17 + v18, v16, &qword_27CDB89B0, &qword_21BE3CC78);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_21BB3A4CC(v0[13], &qword_27CDB89B0, &qword_21BE3CC78);
    sub_21BE2614C();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];
    v25 = v0[12];
    v27 = v0[9];
    v26 = v0[10];
    if (v21)
    {
      v38 = v0[20];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_21BB3D81C(0x292865766173, 0xE600000000000000, &v39);
      _os_log_impl(&dword_21BB35000, v19, v20, "ParentalControlStore.%s user is unxpectedly nil. Like because load() hasn't been called", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x21CF05C50](v29, -1, -1);
      MEMORY[0x21CF05C50](v28, -1, -1);

      (*(v26 + 8))(v25, v27);
      (*(v23 + 8))(v38, v24);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
      (*(v23 + 8))(v22, v24);
    }

LABEL_12:

    v36 = v0[1];

    return v36();
  }

  v30 = v0[8];
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  v31 = *(v30 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 24);
  v32 = *(v30 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v30 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore), v31);
  v33 = swift_task_alloc();
  v0[21] = v33;
  *v33 = v0;
  v33[1] = sub_21BC8FC40;
  v34 = v0[20];
  v35 = v0[16];

  return MEMORY[0x2821AC040](v34, v35, v31, v32);
}

uint64_t sub_21BC8FC40()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21BC8FE34;
  }

  else
  {
    v2 = sub_21BC8FD54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC8FD54()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BC8FE34()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t *sub_21BC8FF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v25 = a2;
  v26 = a3;
  v4 = sub_21BE26A4C();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &qword_21BE3CC70;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_21BE266DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBA3854(v3 + v15, v10, &qword_27CDB7AC8, &qword_21BE3CC70);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21BB3A4CC(v10, &qword_27CDB7AC8, &qword_21BE3CC70);
    sub_21BE2614C();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v7 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v7 = 136315138;
      *(v7 + 4) = sub_21BB3D81C(0xD000000000000022, 0x800000021BE5A710, &v30);
      _os_log_impl(&dword_21BB35000, v16, v17, "ParentalControlStore.%s settings is unxpectedly nil", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x21CF05C50](v18, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);
    }

    (*(v28 + 8))(v6, v29);
    sub_21BC908C4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v21 = v25;
    v22 = v26;
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v22;

    v7 = sub_21BE2671C();

    (*(v12 + 8))(v14, v11);
  }

  return v7;
}

void sub_21BC902FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_21BE266DC();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a1, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
    swift_beginAccess();
    sub_21BBFD920(v11, v13 + v16, &qword_27CDB7AC8, &qword_21BE3CC70);
    v17 = swift_endAccess();
    a3(v17);
  }

  else
  {
    sub_21BE2614C();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(0xD000000000000022, 0x800000021BE5A710, v22);
      _os_log_impl(&dword_21BB35000, v18, v19, "ParentalControlStore.%s dismiss called after self is deallocated", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21BC905F8()
{
  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore__presets, qword_27CDB7AF8, &qword_21BE391D0);
  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings, &qword_27CDB7AC8, &qword_21BE3CC70);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore));
  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user, &qword_27CDB89B0, &qword_21BE3CC78);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ParentalControlStore(uint64_t a1)
{
  result = qword_27CDB8980;
  if (!qword_27CDB8980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC90710(uint64_t a1)
{
  sub_21BC90870(319, &qword_27CDB8990, MEMORY[0x277D4BD50]);
  if (v1 <= 0x3F)
  {
    sub_21BC90870(319, &qword_27CDB8998, MEMORY[0x277D4BCE0]);
    if (v2 <= 0x3F)
    {
      sub_21BC90870(319, &qword_27CDB89A0, MEMORY[0x277D4BD88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21BC90870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE2946C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21BC908C4()
{
  result = qword_27CDB89A8;
  if (!qword_27CDB89A8)
  {
    result = swift_getWitnessTable(byte_21BE3CD04, &type metadata for ParentalControlStoreError, v0, v1);
    atomic_store(result, &qword_27CDB89A8);
  }

  return result;
}

unint64_t sub_21BC90938()
{
  result = qword_27CDB89B8;
  if (!qword_27CDB89B8)
  {
    result = swift_getWitnessTable(byte_21BE3CCDC, &type metadata for ParentalControlStoreError, v0, v1);
    atomic_store(result, &qword_27CDB89B8);
  }

  return result;
}

uint64_t sub_21BC909B8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_21BE26A4C();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE257FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE2590C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  sub_21BE258DC();
  MEMORY[0x21CF00A60](0x646E65697266, 0xE600000000000000);
  v13 = [*v1 appleID];
  if (v13)
  {
    v14 = v13;
    v15 = sub_21BE28A0C();
    v17 = v16;

    sub_21BE257CC();
    sub_21BE257EC();
    v31 = v15;
    v32 = v17;
    sub_21BB41FA4();
    v18 = sub_21BE2949C();
    v20 = v19;

    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    if (!v20)
    {
      v20 = 0xE000000000000000;
    }

    v31 = 47;
    v32 = 0xE100000000000000;
    MEMORY[0x21CF03CA0](v21, v20);

    MEMORY[0x21CF00A70](v31, v32);
    sub_21BE258AC();
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v24 = v29;
    v23 = v30;
    sub_21BE2614C();
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FDC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21BB35000, v25, v26, "Member appleID does not exist", v27, 2u);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    (*(v24 + 8))(v4, v2);
    (*(v10 + 8))(v12, v9);
    v28 = sub_21BE25B9C();
    return (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  }
}

uint64_t sub_21BC90D7C@<X0>(void **a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = v19[0];
  v18 = v19;
  v19[0] = v8;
  v10 = sub_21BC9DAC4(sub_21BC93958, v17, v9);

  sub_21BE2616C();
  sub_21BC9332C(a1, v19);
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  sub_21BC93814(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 67109378;
    *(v13 + 4) = v10 & 1;
    *(v13 + 8) = 2112;
    *(v13 + 10) = v8;
    *v14 = v8;
    v15 = v8;
    _os_log_impl(&dword_21BB35000, v11, v12, "iSharing %{BOOL}d for %@", v13, 0x12u);
    sub_21BB3A4CC(v14, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  *a2 = v10 & 1;
  return result;
}

double sub_21BC90FCC(char *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = *a1;
  v17[0] = a4[2];
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21BE28D7C();
  sub_21BC9332C(a4, v17);
  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = a4[1];
  *(v12 + 32) = *a4;
  *(v12 + 48) = v14;
  v15 = a4[3];
  *(v12 + 64) = a4[2];
  *(v12 + 80) = v15;
  *(v12 + 96) = v9;
  sub_21BBA932C(0, 0, v8, &unk_21BE3CF28, v12);

  return result;
}

uint64_t sub_21BC91144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 507) = a5;
  *(v5 + 392) = a4;
  v6 = sub_21BE26A4C();
  *(v5 + 400) = v6;
  *(v5 + 408) = *(v6 - 8);
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  sub_21BE28D7C();
  *(v5 + 432) = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  *(v5 + 440) = v8;
  *(v5 + 448) = v7;

  return MEMORY[0x2822009F8](sub_21BC91248, v8, v7);
}

uint64_t sub_21BC91248(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 392);
  sub_21BE2616C();
  sub_21BC9332C(v2, v1 + 104);
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v28 = *(v1 + 408);
    v29 = *(v1 + 400);
    v30 = *(v1 + 424);
    v5 = *(v1 + 392);
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v6 = 136315650;
    *(v6 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5A7D0, &v32);
    *(v6 + 12) = 1024;
    v7 = *v5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v8 = *(v1 + 376);
    *(v1 + 384) = v7;
    v9 = swift_task_alloc();
    *(v9 + 16) = v1 + 384;
    v10 = sub_21BC9DAC4(sub_21BC93958, v9, v8);

    *(v6 + 14) = v10 & 1;
    sub_21BC93814(v5);
    *(v6 + 18) = 2112;
    *(v6 + 20) = v7;
    *v26 = v7;
    v11 = v7;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s iSharing %{BOOL}d for %@ before toggle", v6, 0x1Cu);
    sub_21BB3A4CC(v26, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x21CF05C50](v27, -1, -1);
    MEMORY[0x21CF05C50](v6, -1, -1);

    v12 = *(v28 + 8);
    v12(v30, v29);
  }

  else
  {
    v13 = *(v1 + 424);
    v14 = *(v1 + 400);
    v15 = *(v1 + 408);
    sub_21BC93814(*(v1 + 392));

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  *(v1 + 456) = 0;
  *(v1 + 464) = v12;
  v16 = *(v1 + 507);
  v17 = *(v1 + 392);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  if (v16 == 1)
  {
    inited = swift_initStackObject();
    *(v1 + 472) = inited;
    *(inited + 16) = xmmword_21BE34D60;
    v19 = *v17;
    *(inited + 32) = *v17;
    v31 = sub_21BCD7270;
    v20 = v19;
    v21 = swift_task_alloc();
    *(v1 + 480) = v21;
    *v21 = v1;
    v22 = sub_21BC9162C;
  }

  else
  {
    inited = swift_initStackObject();
    *(v1 + 488) = inited;
    *(inited + 16) = xmmword_21BE34D60;
    v23 = *v17;
    *(inited + 32) = *v17;
    v31 = sub_21BCD831C;
    v24 = v23;
    v21 = swift_task_alloc();
    *(v1 + 496) = v21;
    *v21 = v1;
    v22 = sub_21BC91BE8;
  }

  v21[1] = v22;

  return v31(inited);
}

uint64_t sub_21BC9162C(char a1)
{
  v2 = *v1;
  *(*v1 + 508) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();
  v3 = *(v2 + 448);
  v4 = *(v2 + 440);

  return MEMORY[0x2822009F8](sub_21BC91790, v4, v3);
}

uint64_t sub_21BC91790()
{
  v29 = v0;
  v1 = *(v0 + 508);
  v2 = *(v0 + 392);

  *(v0 + 344) = *(v2 + 48);
  *(v0 + 506) = (v1 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  *(v0 + 328) = *(*(v0 + 392) + 32);
  *(v0 + 505) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 507);
  v4 = *(v0 + 392);
  LOBYTE(v28[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001FLL;
  v6 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000021BE5A7B0;
  *(inited + 72) = v6;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v3;

  v7 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v28, v7);

  sub_21BE2616C();
  sub_21BC9332C(v4, v0 + 168);
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FFC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 464);
  if (v10)
  {
    v12 = *(v0 + 392);
    v26 = *(v0 + 400);
    v27 = *(v0 + 416);
    v25 = *(v0 + 464);
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v13 = 136315650;
    *(v13 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5A7D0, v28);
    *(v13 + 12) = 1024;
    v14 = *v12;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v15 = *(v0 + 360);
    *(v0 + 368) = v14;
    v16 = swift_task_alloc();
    *(v16 + 16) = v0 + 368;
    v17 = sub_21BC9DAC4(sub_21BC93844, v16, v15);

    *(v13 + 14) = v17 & 1;
    sub_21BC93814(v12);
    *(v13 + 18) = 2112;
    *(v13 + 20) = v14;
    *v23 = v14;
    v18 = v14;
    _os_log_impl(&dword_21BB35000, v8, v9, "%s iSharing %{BOOL}d for %@ after toggle", v13, 0x1Cu);
    sub_21BB3A4CC(v23, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x21CF05C50](v24, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);

    v25(v27, v26);
  }

  else
  {
    v19 = *(v0 + 416);
    v20 = *(v0 + 400);
    sub_21BC93814(*(v0 + 392));

    v11(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21BC91BE8(char a1)
{
  v2 = *v1;
  *(*v1 + 509) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();
  v3 = *(v2 + 448);
  v4 = *(v2 + 440);

  return MEMORY[0x2822009F8](sub_21BC91D4C, v4, v3);
}

uint64_t sub_21BC91D4C()
{
  v29 = v0;
  v1 = *(v0 + 509);
  v2 = *(v0 + 392);

  *(v0 + 312) = *(v2 + 48);
  *(v0 + 504) = (v1 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  *(v0 + 328) = *(*(v0 + 392) + 32);
  *(v0 + 505) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 507);
  v4 = *(v0 + 392);
  LOBYTE(v28[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001FLL;
  v6 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000021BE5A7B0;
  *(inited + 72) = v6;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v3;

  v7 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v28, v7);

  sub_21BE2616C();
  sub_21BC9332C(v4, v0 + 168);
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FFC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 464);
  if (v10)
  {
    v12 = *(v0 + 392);
    v26 = *(v0 + 400);
    v27 = *(v0 + 416);
    v25 = *(v0 + 464);
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v13 = 136315650;
    *(v13 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5A7D0, v28);
    *(v13 + 12) = 1024;
    v14 = *v12;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v15 = *(v0 + 360);
    *(v0 + 368) = v14;
    v16 = swift_task_alloc();
    *(v16 + 16) = v0 + 368;
    v17 = sub_21BC9DAC4(sub_21BC93844, v16, v15);

    *(v13 + 14) = v17 & 1;
    sub_21BC93814(v12);
    *(v13 + 18) = 2112;
    *(v13 + 20) = v14;
    *v23 = v14;
    v18 = v14;
    _os_log_impl(&dword_21BB35000, v8, v9, "%s iSharing %{BOOL}d for %@ after toggle", v13, 0x1Cu);
    sub_21BB3A4CC(v23, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x21CF05C50](v24, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);

    v25(v27, v26);
  }

  else
  {
    v19 = *(v0 + 416);
    v20 = *(v0 + 400);
    sub_21BC93814(*(v0 + 392));

    v11(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21BC921A4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89C0, &qword_21BE3CE10);
  MEMORY[0x28223BE20](v19);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89C8, &unk_21BE3CE18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_21BC909B8(&v18 - v9);
  v11 = sub_21BE25B9C();
  v12 = 1;
  v13 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  v14 = v10;
  v15 = v20;
  sub_21BB3A4CC(v14, &unk_27CDB57F0, &qword_21BE328A0);
  if (v13 != 1)
  {
    *v3 = sub_21BE275DC();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89D0, &unk_21BE3CE28);
    sub_21BC924B0(v1, &v3[*(v16 + 44)]);
    v21 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2841C();
    sub_21BB3B038(&qword_27CDB89D8, &qword_27CDB89C0, &qword_21BE3CE10, MEMORY[0x277CE1138]);
    sub_21BE280DC();

    sub_21BB3A4CC(v3, &qword_27CDB89C0, &qword_21BE3CE10);
    (*(v5 + 32))(v15, v7, v4);
    v12 = 0;
  }

  return (*(v5 + 56))(v15, v12, 1, v4);
}

void sub_21BC924B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2759C();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7008, &qword_21BE364D0);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89E0, &qword_21BE3CE38);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89E8, &qword_21BE3CE40);
  MEMORY[0x28223BE20](v80);
  v73 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89F0, &unk_21BE3CE48);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820);
  MEMORY[0x28223BE20](v74);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89F8, &qword_21BE3CE58);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v83 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = &v65 - v21;
  v22 = qword_27CDB4E58;
  v81 = *a1;
  if (v22 != -1)
  {
    swift_once();
  }

  v76 = byte_27CDD41B0;
  sub_21BBDAF04();
  sub_21BC9337C(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
  v77 = sub_21BE2727C();
  v75 = v23;
  v79 = sub_21BE2770C();
  LOBYTE(v87) = 1;
  sub_21BC92F74(v94);
  *(v93 + 7) = v94[0];
  *(&v93[1] + 7) = v94[1];
  *(&v93[2] + 7) = v95[0];
  v93[3] = *(v95 + 9);
  v78 = v87;
  v87 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v84 == 1)
  {
    sub_21BE26EEC();
    *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v24 = &v17[*(v74 + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v26 = *MEMORY[0x277CDF440];
    v27 = sub_21BE26E7C();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    sub_21BBA3854(v17, v15, &qword_27CDB5E00, &unk_21BE33820);
    swift_storeEnumTagMultiPayload();
    sub_21BC933C4();
    sub_21BC93534();
    v28 = v82;
    sub_21BE2784C();
    sub_21BB3A4CC(v17, &qword_27CDB5E00, &unk_21BE33820);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_21BE2599C();
    v33 = v32;

    v84 = v31;
    v85 = v33;
    sub_21BE28D7C();
    sub_21BC9332C(a1, &v87);
    v34 = sub_21BE28D6C();
    v35 = swift_allocObject();
    v65 = v13;
    v36 = MEMORY[0x277D85700];
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    v37 = *(a1 + 16);
    *(v35 + 32) = *a1;
    *(v35 + 48) = v37;
    v38 = *(a1 + 48);
    *(v35 + 64) = *(a1 + 32);
    *(v35 + 80) = v38;
    sub_21BC9332C(a1, &v87);
    v39 = sub_21BE28D6C();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v36;
    v41 = *(a1 + 16);
    *(v40 + 32) = *a1;
    *(v40 + 48) = v41;
    v42 = *(a1 + 48);
    *(v40 + 64) = *(a1 + 32);
    *(v40 + 80) = v42;
    sub_21BE2857C();
    sub_21BB41FA4();
    sub_21BE284CC();
    v43 = sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0, MEMORY[0x277CDF068]);
    v44 = v67;
    sub_21BE27F3C();
    (*(v66 + 8))(v8, v44);
    v45 = v70;
    sub_21BE2758C();
    *&v87 = v44;
    *(&v87 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    sub_21BC9337C(&qword_27CDB8A00, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    v46 = v72;
    v47 = v73;
    v48 = v69;
    sub_21BE27F2C();
    (*(v71 + 8))(v45, v46);
    (*(v68 + 8))(v11, v48);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    LOBYTE(v46) = v87;
    KeyPath = swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    v51 = (v47 + *(v80 + 36));
    *v51 = KeyPath;
    v51[1] = sub_21BC0AE98;
    v51[2] = v50;
    sub_21BBA3854(v47, v15, &qword_27CDB89E8, &qword_21BE3CE40);
    swift_storeEnumTagMultiPayload();
    sub_21BC933C4();
    sub_21BC93534();
    v28 = v82;
    sub_21BE2784C();
    sub_21BB3A4CC(v47, &qword_27CDB89E8, &qword_21BE3CE40);
  }

  if (v76)
  {
    v52 = 40.0;
  }

  else
  {
    v52 = 38.0;
  }

  v53 = v83;
  sub_21BBA3854(v28, v83, &qword_27CDB89F8, &qword_21BE3CE58);
  *a2 = v52;
  v54 = v81;
  v55 = v77;
  *(a2 + 8) = v81;
  *(a2 + 16) = v55;
  *(a2 + 24) = v75;
  v56 = v79;
  v84 = v79;
  v85 = 0;
  v57 = v78;
  v86[0] = v78;
  *&v86[1] = v93[0];
  *&v86[49] = v93[3];
  *&v86[33] = v93[2];
  *&v86[17] = v93[1];
  v58 = *v86;
  *(a2 + 32) = v79;
  *(a2 + 48) = v58;
  v59 = *&v86[16];
  v60 = *&v86[32];
  v61 = *&v86[48];
  *(a2 + 112) = v86[64];
  *(a2 + 80) = v60;
  *(a2 + 96) = v61;
  *(a2 + 64) = v59;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A20, &qword_21BE3CED8);
  sub_21BBA3854(v53, a2 + *(v62 + 80), &qword_27CDB89F8, &qword_21BE3CE58);
  v63 = v55;
  v64 = v54;
  sub_21BBA3854(&v84, &v87, &qword_27CDB8A28, &qword_21BE3CEE0);
  sub_21BB3A4CC(v28, &qword_27CDB89F8, &qword_21BE3CE58);
  sub_21BB3A4CC(v53, &qword_27CDB89F8, &qword_21BE3CE58);
  v87 = v56;
  v88 = v57;
  v89 = v93[0];
  v90 = v93[1];
  v91 = v93[2];
  v92 = v93[3];
  sub_21BB3A4CC(&v87, &qword_27CDB8A28, &qword_21BE3CEE0);
}

uint64_t sub_21BC92F74@<X0>(uint64_t a2@<X8>)
{
  sub_21BE2917C();
  sub_21BB41FA4();
  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE2832C();
  v8 = sub_21BE27D4C();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12 & 1;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  sub_21BBA4A38(v8, v10, v12 & 1);

  sub_21BBC7C7C(v8, v10, v12 & 1);
}

uint64_t sub_21BC93098@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v17 = v7;
  v18 = v9;
  sub_21BB41FA4();
  sub_21BE27DBC();
  v10 = [v5 bundleForClass_];
  v11 = sub_21BE2599C();
  v13 = v12;

  v17 = v11;
  v18 = v13;
  sub_21BE27DBC();
  v14 = sub_21BE2825C();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  return sub_21BE2821C();
}

uint64_t sub_21BC9337C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BC933C4()
{
  result = qword_27CDB8A08;
  if (!qword_27CDB8A08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5E00, &unk_21BE33820);
    v4[0] = sub_21BC9347C();
    v4[1] = sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8A08);
  }

  return result;
}

unint64_t sub_21BC9347C()
{
  result = qword_27CDB8A10;
  if (!qword_27CDB8A10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5DF8, &unk_21BE38C60);
    v4[0] = sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
    v4[1] = MEMORY[0x277CDFC48];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB8A10);
  }

  return result;
}

unint64_t sub_21BC93534()
{
  result = qword_27CDB8A18;
  if (!qword_27CDB8A18)
  {
    v6[12] = v0;
    v6[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB89E8, &qword_21BE3CE40);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB89E0, &qword_21BE3CE38);
    v5 = sub_21BE2759C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7008, &qword_21BE364D0);
    sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0, MEMORY[0x277CDF068]);
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_21BC9337C(&qword_27CDB8A00, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v6);
    atomic_store(result, &qword_27CDB8A18);
  }

  return result;
}

uint64_t objectdestroyTm_10(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BC93754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BC91144(a1, v4, v5, v1 + 32, v6);
}

unint64_t sub_21BC93864()
{
  result = qword_27CDB8A30;
  if (!qword_27CDB8A30)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8A38, qword_21BE3CF88);
    v4[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB89C0, &qword_21BE3CE10);
    v4[2] = sub_21BB3B038(&qword_27CDB89D8, &qword_27CDB89C0, &qword_21BE3CE10, MEMORY[0x277CE1138]);
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB8A30);
  }

  return result;
}

uint64_t sub_21BC93974()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC939E8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC93E28();
}

uint64_t sub_21BC93A98(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC93B30, v4, v3);
}

uint64_t sub_21BC93B30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCB554();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BC93C34()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCB554();
}

void sub_21BC93CF8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE3D280, v8);
}

uint64_t sub_21BC93E28()
{
  v2 = v0;
  v1[3] = v0;
  v1[4] = sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v3 = qword_27CDD4268;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_21BC93F00;

  return sub_21BE19D18(v2 + v3);
}

uint64_t sub_21BC93F00(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  v5 = sub_21BE28D0C();
  v3[9] = v5;
  v3[10] = v4;
  if (v1)
  {
    v6 = sub_21BC94694;
  }

  else
  {
    v6 = sub_21BC94064;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BC94064()
{
  v25 = v0;
  v1 = v0[3];
  v2 = qword_27CDB8A48;
  v0[11] = qword_27CDB8A48;
  if (*(v1 + v2))
  {

    v3 = *(v0[3] + v0[11]);
    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = v3;
      sub_21BE26CAC();

      v5 = v0[2];
      if (v5 >> 62)
      {
        if (sub_21BE2951C())
        {
          goto LABEL_5;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v6 = 1;
LABEL_17:
        v17 = v0[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA8, &unk_21BE3D268);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_21BE32770;
        *(v18 + 32) = v6;
        *(v18 + 40) = v5;
        *(v18 + 48) = v17;
        *(v18 + 56) = 4;

        v19 = v0[1];

        return v19(v18);
      }

      v6 = 0;
      v5 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v10 = v0[7];
    MEMORY[0x21CF01210](0xD000000000000024, 0x800000021BE5A820, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v7 = qword_27CDD4290;
    if (qword_27CDD4290)
    {
      v8 = 0;
      v9 = qword_27CDD4290;
    }

    else
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      memset(v23, 0, sizeof(v23));
      v24 = 0;
      v13 = [objc_allocWithZone(type metadata accessor for ScreenTimeConfiguration()) init];
      v14 = objc_allocWithZone(type metadata accessor for LocationViewModel(0));
      v9 = sub_21BDD21D4(v13, &v20, v21, v23, v14);
      v7 = 0;
      v8 = *(v1 + v2);
    }

    v0[12] = v9;
    *(v1 + v2) = v9;
    v15 = v7;
    v9;

    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_21BC9436C;

    return sub_21BCD2AA8();
  }
}

uint64_t sub_21BC9436C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BC944AC, v4, v3);
}

uint64_t sub_21BC944AC()
{

  v1 = *(v0[3] + v0[11]);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_21BE26CAC();

    v3 = v0[2];
    if (v3 >> 62)
    {
      if (sub_21BE2951C())
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v4 = 1;
LABEL_10:
      v8 = v0[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA8, &unk_21BE3D268);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21BE32770;
      *(v9 + 32) = v4;
      *(v9 + 40) = v3;
      *(v9 + 48) = v8;
      *(v9 + 56) = 4;

      v10 = v0[1];

      return v10(v9);
    }

    v4 = 0;
    v3 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v5 = v0[7];
  MEMORY[0x21CF01210](0xD000000000000024, 0x800000021BE5A820, 0xD000000000000010, 0x800000021BE573A0, 500);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BC94694()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BC946F8()
{
  v1 = qword_27CDB8A40;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A98, &unk_21BE3D210);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4268));
  sub_21BC95388(v0 + qword_27CDD4270);
  v3 = *(v0 + qword_27CDB8A48);
}

id sub_21BC9479C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21BC947D4(uint64_t a1)
{
  v2 = qword_27CDB8A40;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A98, &unk_21BE3D210);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4268));
  sub_21BC95388(a1 + qword_27CDD4270);
  v4 = *(a1 + qword_27CDB8A48);
}

uint64_t type metadata accessor for LocationItemProvider(uint64_t a1)
{
  result = qword_27CDB8A50;
  if (!qword_27CDB8A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC948C8(uint64_t a1)
{
  sub_21BC94974(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BC94974(uint64_t a1)
{
  if (!qword_27CDB8A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8A68, &qword_21BE3CFC0);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB8A60);
    }
  }
}

uint64_t sub_21BC949E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21BC94A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC94A7C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BC94AF0()
{
  v1 = *(v0 + 24);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC94B78(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_21BE28ABC();
  sub_21BC5C62C(v2);
  sub_21BE28ABC();
}

uint64_t sub_21BC94BF0(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC94C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = sub_21BC5C62C(*(a1 + 24));
  v5 = v4;
  if (v3 == sub_21BC5C62C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

void sub_21BC94CFC(uint64_t a1@<X8>)
{
  strcpy(a1, "locationItem");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_21BC94D24()
{
  result = qword_27CDB8A70;
  if (!qword_27CDB8A70)
  {
    result = swift_getWitnessTable(asc_21BE3D08C, &type metadata for LocationDataItem, v0, v1);
    atomic_store(result, &qword_27CDB8A70);
  }

  return result;
}

unint64_t sub_21BC94D78(uint64_t a1)
{
  *(a1 + 8) = sub_21BC94DA8();
  result = sub_21BC94DFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BC94DA8()
{
  result = qword_27CDB8A78;
  if (!qword_27CDB8A78)
  {
    result = swift_getWitnessTable(byte_21BE3D0B4, &type metadata for LocationDataItem, v0, v1);
    atomic_store(result, &qword_27CDB8A78);
  }

  return result;
}

unint64_t sub_21BC94DFC()
{
  result = qword_27CDB8A80;
  if (!qword_27CDB8A80)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for LocationDataItem, v0, v1);
    atomic_store(result, &qword_27CDB8A80);
  }

  return result;
}

id sub_21BC94E50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3;

  return v5;
}

id sub_21BC94EA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21BB35000, v13, v14, "LocationDataItem providing a destination", v15, 2u);
    MEMORY[0x21CF05C50](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  type metadata accessor for LocationViewModel(0);
  sub_21BC954F8(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v16 = sub_21BE2727C();
  v18 = v17;
  sub_21BBDAF04();
  sub_21BC954F8(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
  v19 = sub_21BE2727C();
  v21 = v20;
  KeyPath = swift_getKeyPath();
  *(a5 + *(type metadata accessor for CheckListLocationDestination(0) + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *a5 = a1 & 1;
  v23 = v27;
  *(a5 + 8) = a2;
  *(a5 + 16) = v23;
  *(a5 + 24) = a4;
  *(a5 + 32) = v16;
  *(a5 + 40) = v18;
  *(a5 + 48) = v19;
  *(a5 + 56) = v21;

  v24 = v27;

  return v24;
}

unint64_t sub_21BC95130(uint64_t a1)
{
  result = sub_21BC94DA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC95174(uint64_t a1)
{
  result = sub_21BC9519C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC9519C()
{
  result = qword_27CDB8A88;
  if (!qword_27CDB8A88)
  {
    result = swift_getWitnessTable(asc_21BE3D110, &type metadata for LocationDataItem, v0, v1);
    atomic_store(result, &qword_27CDB8A88);
  }

  return result;
}

uint64_t sub_21BC9520C(uint64_t a1)
{
  *(a1 + 8) = sub_21BC954F8(&qword_27CDB8A90, type metadata accessor for LocationItemProvider, byte_21BE34830);
  result = sub_21BC954F8(&qword_27CDB5FF8, type metadata accessor for LocationItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

void sub_21BC95290(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BC95310(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BC95388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA0, &qword_21BE4DC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC953F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BC93C34();
}

unint64_t sub_21BC954A4()
{
  result = qword_27CDB8AB0;
  if (!qword_27CDB8AB0)
  {
    result = swift_getWitnessTable(byte_21BE431F0, &type metadata for ChecklistLocationView, v0, v1);
    atomic_store(result, &qword_27CDB8AB0);
  }

  return result;
}

uint64_t sub_21BC954F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BC95564()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC95680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B38, &qword_21BE3D4E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BE18058;
  v0[13] = &block_descriptor_20;
  v0[14] = v2;
  [v1 fetchMyBeneficiaries_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC95680()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t sub_21BC95770(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8A28;

  return v7(a1, a2);
}

unint64_t sub_21BC95888()
{
  v1 = *(type metadata accessor for BeneficiaryItemDataItem(0) + 28);
  result = 0x6E776F6E6B6E75;
  switch(*(v0 + v1))
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x736143656C707061;
      break;
    case 0xB:
      result = 0x49746361746E6F63;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BC95AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDAED70();
  v8 = v7;
  if (v6 == sub_21BDAED70() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_21BE2995C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a3 + 28);
  v13 = *(a2 + v12);
  v14 = sub_21BC5C62C(*(a1 + v12));
  v16 = v15;
  if (v14 == sub_21BC5C62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BC95BE4(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BDAED70();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC95C78(uint64_t a1, uint64_t a2)
{
  sub_21BDAED70();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();
}

uint64_t sub_21BC95D00(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BDAED70();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC95D90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC95888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_21BC95DB8@<X0>(uint64_t a1@<X8>)
{
  sub_21BC973C0(v1, a1);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC9726C(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  v3 = sub_21BE2727C();
  v5 = v4;
  v6 = type metadata accessor for BeneficiaryView(0);
  v7 = (a1 + *(v6 + 20));
  *v7 = v3;
  v7[1] = v5;
  v8 = *(v6 + 24);
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(a1 + v8) = result;
  return result;
}

uint64_t sub_21BC95E74()
{
  v1 = qword_27CDB8AC0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B28, &unk_21BE507A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4278));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4280));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4288));
}

id sub_21BC95F0C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BeneficiaryItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BC95F84(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for BeneficiaryItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BC96010(uint64_t a1)
{
  v2 = qword_27CDB8AC0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B28, &unk_21BE507A0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4278));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4280));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4288));
}

uint64_t sub_21BC960AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC96120(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC9636C();
}

uint64_t sub_21BC961D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC96268, v4, v3);
}

uint64_t sub_21BC96268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCB7FC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BC9636C()
{
  v1[2] = v0;
  v2 = sub_21BE260AC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_21BC964A4, v4, v3);
}

uint64_t sub_21BC964A4()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v4 = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v5 = qword_27CDD4280;
  v0[11] = v4;
  v0[12] = v5;
  v6 = *(v1 + v5 + 24);
  v7 = *(v1 + v5 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + v5), v6);
  v0[13] = (*(v7 + 8))(v6, v7);
  v8 = *(v1 + qword_27CDD4278 + 24);
  v9 = *(v1 + qword_27CDD4278 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4278), v8);
  v12 = (*(v9 + 8) + **(v9 + 8));
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_21BC96670;

  return v12(v8, v9);
}

uint64_t sub_21BC96670(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21BC96798, v4, v3);
}

uint64_t sub_21BC96798()
{
  v1 = v0[15];

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    v24 = v0[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B30, &unk_21BE3D4C0);
    v25 = (type metadata accessor for BeneficiaryItemDataItem(0) - 8);
    v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21BE32770;
    v27 = (v22 + v26);
    v28 = v25[7];
    v29 = sub_21BE25D1C();
    (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
    *v27 = 0;
    *&v27[v25[8]] = MEMORY[0x277D84F90];
    v27[v25[9]] = 6;

LABEL_14:
    sub_21BC852D8();

    v30 = v0[1];

    return v30(v22);
  }

  if (!sub_21BE2951C())
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = v0[13];
  if (v2)
  {
    v3 = v0[7];
    v4 = (v0[2] + v0[12]);
    v5 = sub_21BE25D1C();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v7 = v4[3];
    v8 = v4[4];
    __swift_project_boxed_opaque_existential_1Tm(v4, v7);
    v9 = (*(v8 + 24))(v2, v7, v8);
    if (v9)
    {
      v10 = v9;
      if ([v9 integerValue])
      {
        v12 = v0[6];
        v11 = v0[7];
        [v10 doubleValue];
        sub_21BE25CCC();

        sub_21BC51500(v11);
        v6(v12, 0, 1, v5);
        sub_21BC1E320(v12, v11);
      }

      else
      {
      }
    }

    v18 = v0[15];
    v19 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B30, &unk_21BE3D4C0);
    v20 = (type metadata accessor for BeneficiaryItemDataItem(0) - 8);
    v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21BE32770;
    v23 = (v22 + v21);
    sub_21BC1E1AC(v19, &v23[v20[7]]);
    *v23 = 1;
    *&v23[v20[8]] = v18;
    v23[v20[9]] = 6;

    sub_21BC51500(v19);
    goto LABEL_14;
  }

  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[3];

  (*(v14 + 104))(v13, *MEMORY[0x277D07F80], v15);
  MEMORY[0x21CF01220](0xD000000000000039, 0x800000021BE5A8A0, v13, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002CLL, 0x800000021BE5A8E0);
  (*(v14 + 8))(v13, v15);
  swift_willThrow();
  sub_21BC852D8();

  v16 = v0[1];

  return v16();
}

uint64_t sub_21BC96C90()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCB7FC();
}

void sub_21BC96D54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE3D4D8, v8);
}

void sub_21BC96EA4(uint64_t a1)
{
  sub_21BC96F40(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BC96F40(uint64_t a1)
{
  if (!qword_27CDB8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8AE0, &qword_21BE3D330);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB8AD8);
    }
  }
}

void sub_21BC96FF4(uint64_t a1)
{
  sub_21BC970F0(319, &qword_27CDB7378, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21BC970F0(319, &qword_27CDB8AF8, sub_21BC97154, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BC970F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21BC97154()
{
  result = qword_27CDB8B00;
  if (!qword_27CDB8B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB8B00);
  }

  return result;
}

uint64_t sub_21BC971E8(uint64_t a1)
{
  *(a1 + 8) = sub_21BC9726C(&qword_27CDB8B10, type metadata accessor for BeneficiaryItemDataItem, byte_21BE3D3A0);
  result = sub_21BC9726C(&qword_27CDB8B18, type metadata accessor for BeneficiaryItemDataItem, aA_6);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC9726C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BC972B4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BC97320(uint64_t a1)
{
  *(a1 + 8) = sub_21BC9726C(&qword_27CDB8B20, type metadata accessor for BeneficiaryItemProvider, byte_21BE34830);
  result = sub_21BC9726C(&qword_27CDB6040, type metadata accessor for BeneficiaryItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC973C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryItemDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21BC97424(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BC974A4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BC9751C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BC96C90();
}

uint64_t type metadata accessor for MemberDetailsScreentimeWrapper(uint64_t a1)
{
  result = qword_27CDB8B50;
  if (!qword_27CDB8B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC97644(uint64_t a1)
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v1 <= 0x3F)
  {
    sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
    if (v2 <= 0x3F)
    {
      sub_21BC977D8(319);
      if (v3 <= 0x3F)
      {
        sub_21BC9783C(319, &qword_27CDB6118, MEMORY[0x277CDE530]);
        if (v4 <= 0x3F)
        {
          sub_21BC9783C(319, &qword_27CDB8B80, MEMORY[0x277D4D7B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BC97780(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_21BB3A2A4(255, a3, a4);
    v5 = sub_21BE2946C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21BC977D8(uint64_t a1)
{
  if (!qword_27CDB8B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8B78, &qword_21BE3D520);
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB8B70);
    }
  }
}

void sub_21BC9783C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BC978AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  sub_21BBA3854(v1 + *(v10 + 32), v9, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BC97AB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B88, &qword_21BE3D578);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *(v1 + 8);
  if (v11)
  {
    v20 = v8;
    sub_21BC99690(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    v15 = sub_21BC996F4(v6, v14 + v12);
    *(v14 + v13) = v11;
    MEMORY[0x28223BE20](v15);
    *(&v19 - 2) = v1;
    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B98, &qword_21BE3D580);
    sub_21BB3B038(&qword_27CDB8BA0, &qword_27CDB8B98, &qword_21BE3D580, MEMORY[0x277CE14C0]);
    sub_21BE2843C();

    (*(v20 + 32))(a1, v10, v7);
    return (*(v20 + 56))(a1, 0, 1, v7);
  }

  else
  {
    v18 = *(v8 + 56);

    return v18(a1, 1, 1, v7);
  }
}

uint64_t sub_21BC97D98(id *a1, uint64_t a2)
{
  v4 = sub_21BE27B0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v8 = *a1;
    v9 = [v8 name];
    if (v9)
    {
      v10 = v9;
      v11 = sub_21BE28A0C();
      v18 = v12;

      if (qword_27CDB4F68 != -1)
      {
        swift_once();
      }

      v19 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21BE32770;
      *(inited + 32) = 0x6976614E77656976;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = &protocol witness table for String;
      *(inited + 40) = 0xEF6F546465746167;
      *(inited + 48) = v11;
      *(inited + 56) = v18;

      v14 = sub_21BBB5E60(inited);
      swift_setDeallocating();
      sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
      sub_21BCA55DC(&v19, v14);
    }
  }

  v15 = sub_21BC978AC(v7);
  MEMORY[0x28223BE20](v15);
  *(&v17 - 2) = a2;
  *(&v17 - 1) = a1;
  sub_21BE27AFC();
  return (*(v5 + 8))(v7, v4);
}

void sub_21BC98008(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (a1)
  {
    v9 = [a1 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      sub_21BC99690(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v13 = swift_allocObject();
      sub_21BC996F4(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
      *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
      aBlock[4] = sub_21BC99C10;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BC98898;
      aBlock[3] = &block_descriptor_21;
      v14 = _Block_copy(aBlock);
      v15 = v10;

      [v11 requestRootViewControllerForDSID:a2 presentingViewController:v15 completionHandler:v14];
      _Block_release(v14);
    }
  }
}

void sub_21BC981E4(void *a1, void *a2)
{
  v41 = a2;
  v3 = sub_21BE26A4C();
  v50 = *(v3 - 1);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE2870C();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21BE2874C();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_21BE2694C();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v39 - v15;
  v16 = sub_21BE288BC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = v52;
    sub_21BD205B8(v19);
    v22 = sub_21BE2887C();
    (*(v17 + 8))(v19, v16);
    if (v22)
    {
      v51 = v20;
      v23 = v53;
      sub_21BE2695C();
      sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
      v50 = sub_21BE2925C();
      sub_21BC99690(v21, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = v42;
      v25 = v43;
      (*(v42 + 16))(v14, v23, v43);
      v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v27 = (v10 + *(v24 + 80) + v26) & ~*(v24 + 80);
      v28 = swift_allocObject();
      sub_21BC996F4(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v26);
      (*(v24 + 32))(v28 + v27, v14, v25);
      aBlock[4] = sub_21BC99CA0;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BB42A18;
      aBlock[3] = &block_descriptor_11;
      v29 = _Block_copy(aBlock);

      v30 = v44;
      sub_21BE2872C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21BC99D6C(&qword_280BD69E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
      sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600, MEMORY[0x277D83970]);
      v31 = v46;
      v32 = v49;
      sub_21BE294DC();
      v33 = v50;
      MEMORY[0x21CF04410](0, v30, v31, v29);
      _Block_release(v29);

      (*(v48 + 8))(v31, v32);
      (*(v45 + 8))(v30, v47);
      (*(v24 + 8))(v53, v25);
    }

    else
    {
      [v41 pushViewController:v20 animated:1];
    }
  }

  else
  {
    v35 = v50;
    v34 = v51;
    sub_21BE2614C();
    v36 = sub_21BE26A2C();
    v37 = sub_21BE28FDC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21BB35000, v36, v37, "Unable to navigate, no view controller provided by FAMemberScreenTimeRootViewControllerProvider", v38, 2u);
      MEMORY[0x21CF05C50](v38, -1, -1);
    }

    (*(v35 + 8))(v5, v34);
  }
}

void sub_21BC98898(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_21BC98904(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8BA8, &qword_21BE3D588);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_5;
  }

  if (*(a1 + 16) != 3)
  {
    v6 = 0;
LABEL_5:
    v28 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_6;
  }

  v28 = *(a1 + 32);
  sub_21BB3A2A4(0, &qword_27CDB8BC0, 0x277CBEBB8);
  v7 = objc_opt_self();
  swift_unknownObjectRetain();
  v8 = [v7 mainRunLoop];
  v9 = sub_21BE2944C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_21BE293BC();

  sub_21BB3A4CC(v5, &qword_27CDB8BA8, &qword_21BE3D588);
  *&v48 = v10;
  sub_21BE293AC();
  sub_21BC99D6C(&qword_27CDB8BC8, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v11 = sub_21BE26C3C();

  v12 = v6;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  swift_unknownObjectRetain();
  v26 = v11;

  v25 = v13;
  v14 = v13;
  v6 = v12;
LABEL_6:
  v15 = sub_21BE275DC();
  v30 = 0;
  sub_21BC98E70(&v48);
  v43 = *&v49[176];
  v44 = *&v49[192];
  v39 = *&v49[112];
  v40 = *&v49[128];
  v41 = *&v49[144];
  v42 = *&v49[160];
  v35 = *&v49[48];
  v36 = *&v49[64];
  v37 = *&v49[80];
  v38 = *&v49[96];
  v31 = v48;
  v32 = *v49;
  v33 = *&v49[16];
  v34 = *&v49[32];
  v46[11] = *&v49[160];
  v46[12] = *&v49[176];
  v46[13] = *&v49[192];
  v46[14] = *&v49[208];
  v46[7] = *&v49[96];
  v46[8] = *&v49[112];
  v46[9] = *&v49[128];
  v46[10] = *&v49[144];
  v46[3] = *&v49[32];
  v46[4] = *&v49[48];
  v46[5] = *&v49[64];
  v46[6] = *&v49[80];
  v45 = *&v49[208];
  v46[0] = v48;
  v46[1] = *v49;
  v46[2] = *&v49[16];
  sub_21BBA3854(&v31, v47, &qword_27CDB8BB0, &qword_21BE3D590);
  sub_21BB3A4CC(v46, &qword_27CDB8BB0, &qword_21BE3D590);
  *&v29[183] = v42;
  *&v29[199] = v43;
  *&v29[215] = v44;
  *&v29[231] = v45;
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[167] = v41;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[7] = v31;
  *&v29[23] = v32;
  *&v29[39] = v33;
  v16 = v30;
  KeyPath = swift_getKeyPath();
  *(&v47[26] + 1) = *&v29[192];
  *(&v47[28] + 1) = *&v29[208];
  *(&v47[30] + 1) = *&v29[224];
  *(&v47[18] + 1) = *&v29[128];
  *(&v47[20] + 1) = *&v29[144];
  *(&v47[22] + 1) = *&v29[160];
  *(&v47[24] + 1) = *&v29[176];
  *(&v47[10] + 1) = *&v29[64];
  *(&v47[12] + 1) = *&v29[80];
  *(&v47[14] + 1) = *&v29[96];
  *(&v47[16] + 1) = *&v29[112];
  *(&v47[2] + 1) = *v29;
  *(&v47[4] + 1) = *&v29[16];
  *(&v47[6] + 1) = *&v29[32];
  v47[0] = v15;
  v47[1] = 0;
  LOBYTE(v47[2]) = v16;
  v47[32] = *&v29[239];
  *(&v47[8] + 1) = *&v29[48];
  LOBYTE(v47[33]) = 1;
  v47[34] = KeyPath;
  LOWORD(v47[35]) = 0;
  v18 = v6;
  v19 = v28;
  v20 = v26;
  v21 = v6;
  v22 = v25;
  sub_21BC997EC(v18, v28, v26, v25);
  sub_21BBA3854(v47, &v48, &qword_27CDB8BB8, &qword_21BE3D5C8);
  sub_21BC99840(v21, v19, v20, v22);
  v23 = v27;
  *v27 = v21;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v22;
  memcpy(v23 + 4, v47, 0x11AuLL);
  *&v49[193] = *&v29[192];
  *&v49[209] = *&v29[208];
  *v50 = *&v29[224];
  *&v49[129] = *&v29[128];
  *&v49[145] = *&v29[144];
  *&v49[161] = *&v29[160];
  *&v49[177] = *&v29[176];
  *&v49[65] = *&v29[64];
  *&v49[81] = *&v29[80];
  *&v49[97] = *&v29[96];
  *&v49[113] = *&v29[112];
  *&v49[1] = *v29;
  *&v49[17] = *&v29[16];
  *&v49[33] = *&v29[32];
  v48 = v15;
  v49[0] = v16;
  *&v50[15] = *&v29[239];
  *&v49[49] = *&v29[48];
  v51 = 1;
  v52 = KeyPath;
  v53 = 0;
  sub_21BB3A4CC(&v48, &qword_27CDB8BB8, &qword_21BE3D5C8);
  sub_21BC99840(v21, v19, v20, v22);
}

uint64_t sub_21BC98E70@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21BE2771C();
  v42 = 1;
  sub_21BC99114(v43);
  *&v41[7] = v43[0];
  *&v41[23] = v43[1];
  *&v41[39] = v43[2];
  *&v41[55] = v43[3];
  sub_21BE286AC();
  sub_21BE2725C();
  v26[0] = v3;
  v26[1] = 0;
  v27[0] = 1;
  *&v27[17] = *&v41[16];
  *&v27[33] = *&v41[32];
  *&v27[49] = *&v41[48];
  *&v27[64] = *&v41[63];
  *&v27[1] = *v41;
  v4 = v22;
  *&v27[136] = v23;
  v5 = v21;
  *&v27[120] = v22;
  v6 = v23;
  *&v27[152] = v24;
  v7 = v24;
  *&v27[168] = v25;
  *&v27[72] = v19;
  *&v27[88] = v20;
  v8 = v19;
  v9 = v20;
  *&v27[104] = v21;
  *(&v18[9] + 7) = *&v27[128];
  *(&v18[10] + 7) = *&v27[144];
  *(&v18[11] + 7) = *&v27[160];
  *(&v18[12] + 7) = *(&v25 + 1);
  *(&v18[5] + 7) = *&v27[64];
  *(&v18[6] + 7) = *&v27[80];
  *(&v18[7] + 7) = *&v27[96];
  *(&v18[8] + 7) = *&v27[112];
  *(&v18[1] + 7) = *v27;
  *(&v18[2] + 7) = *&v27[16];
  *(&v18[3] + 7) = *&v27[32];
  *(&v18[4] + 7) = *&v27[48];
  *(v18 + 7) = v3;
  v10 = v18[8];
  *(a2 + 177) = v18[9];
  v11 = v18[11];
  *(a2 + 193) = v18[10];
  *(a2 + 209) = v11;
  *(a2 + 224) = *(&v18[11] + 15);
  v12 = v18[4];
  *(a2 + 113) = v18[5];
  v13 = v18[7];
  *(a2 + 129) = v18[6];
  *(a2 + 145) = v13;
  *(a2 + 161) = v10;
  v14 = v18[0];
  *(a2 + 49) = v18[1];
  v15 = v18[3];
  *(a2 + 65) = v18[2];
  *(a2 + 81) = v15;
  *(a2 + 97) = v12;
  *(a2 + 33) = v14;
  v31 = *&v41[16];
  v32 = *&v41[32];
  *v33 = *&v41[48];
  v30 = *v41;
  v37 = v4;
  v38 = v6;
  v39 = v7;
  v40 = v25;
  v34 = v8;
  v35 = v9;
  *a2 = 1546;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D86098;
  *(a2 + 24) = &unk_282D860C8;
  *(a2 + 32) = 0;
  v28[0] = v3;
  v28[1] = 0;
  v29 = 1;
  *&v33[15] = *&v41[63];
  v36 = v5;

  sub_21BBA3854(v26, v17, &qword_27CDB6210, &qword_21BE340D0);
  sub_21BB3A4CC(v28, &qword_27CDB6210, &qword_21BE340D0);
}

uint64_t sub_21BC99114@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE2832C();
  v9 = sub_21BE27D4C();
  v32 = v10;
  v33 = v9;
  v31 = v11;
  v34 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BC99894();
  v13 = sub_21BE27DBC();
  v15 = v14;
  v17 = v16;
  sub_21BE27BEC();
  v18 = sub_21BE27D9C();
  v20 = v19;
  v22 = v21;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  sub_21BE2833C();
  v23 = sub_21BE27D4C();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_21BBC7C7C(v18, v20, v22 & 1);

  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27 & 1;
  *(a1 + 56) = v29;
  sub_21BBA4A38(v33, v32, v31 & 1);

  sub_21BBA4A38(v23, v25, v27 & 1);

  sub_21BBC7C7C(v23, v25, v27 & 1);

  sub_21BBC7C7C(v33, v32, v31 & 1);
}

uint64_t sub_21BC993B4(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v16[0] = sub_21BE2754C();
  v3 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = sub_21BE288BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  sub_21BBA3854(a1 + *(v13 + 36), v8, &qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_21BE28FEC();
    v14 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v16[0]);
  }

  sub_21BE2694C();
  sub_21BC99D6C(&qword_27CDB7FA8, MEMORY[0x277D402E0], MEMORY[0x277D402F0]);
  sub_21BE2889C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21BC99690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC996F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC99758()
{
  v1 = *(type metadata accessor for MemberDetailsScreentimeWrapper(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BC97D98((v0 + v2), v3);
}

id sub_21BC997EC(id result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a4;
  }

  return result;
}

void sub_21BC99840(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21BC99894()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  swift_unknownObjectRelease();
  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE27B0C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE288BC();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BC99CA0()
{
  v1 = *(type metadata accessor for MemberDetailsScreentimeWrapper(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21BE2694C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21BC993B4(v0 + v2, v5);
}

uint64_t sub_21BC99D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BC99DB4()
{
  result = qword_27CDB8BD0;
  if (!qword_27CDB8BD0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8BD8, &unk_21BE3D5D0);
    v4[0] = sub_21BB3B038(&qword_27CDB8BE0, &qword_27CDB8B88, &qword_21BE3D578, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDB8BD0);
  }

  return result;
}

void sub_21BC99E6C()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000021BE5AC00;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:-4016 userInfo:v5];

  qword_27CDB8BE8 = v6;
}

void sub_21BC9A004()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000021BE5ABE0;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:-4015 userInfo:v5];

  qword_27CDB8BF0 = v6;
}

void sub_21BC9A19C()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x800000021BE5ABC0;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:-4017 userInfo:v5];

  qword_27CDB8BF8 = v6;
}

void sub_21BC9A334()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x800000021BE5ABA0;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:-4004 userInfo:v5];

  qword_27CDB8C00 = v6;
}

void sub_21BC9A4CC()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD00000000000002ALL;
  *(inited + 56) = 0x800000021BE5AB70;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:-4018 userInfo:v5];

  qword_27CDB8C08 = v6;
}

void sub_21BC9A664()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000025;
  *(inited + 56) = 0x800000021BE5AB40;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:4001 userInfo:v5];

  qword_27CDB8C10 = v6;
}

void sub_21BC9A7FC()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x800000021BE5AB00;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:-4021 userInfo:v5];

  qword_27CDB8C18 = v6;
}

void sub_21BC9A994()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x800000021BE5AAE0;
  v3 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v5 = sub_21BE288EC();

  v6 = [v4 initWithDomain:v3 code:-4022 userInfo:v5];

  qword_27CDB8C20 = v6;
}

id sub_21BC9AB2C(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id AgeRangeOnboardError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AgeRangeOnboardError.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeOnboardError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AgeRangeOnboardError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeOnboardError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static Utility.contactImage(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = [objc_opt_self() configurationWithPointSize:4 weight:40.0];
    v3 = sub_21BE289CC();
    v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_21BBBEE74(a1, a2);
    sub_21BBBEE74(a1, a2);
    v8 = sub_21BE25BCC();
    v9 = [v7 initWithData_];

    sub_21BBBF0B4(a1, a2);
    if (v9)
    {
      v10 = [objc_opt_self() configurationWithPointSize:4 weight:40.0];
      v4 = [v9 imageWithConfiguration_];
      sub_21BBBF0B4(a1, a2);
    }

    else
    {
      sub_21BBBF0B4(a1, a2);
      return 0;
    }
  }

  return v4;
}

uint64_t static Utility.displayName(_:)(void *a1)
{
  v2 = sub_21BE259EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE259DC();
  v6 = [a1 givenName];
  sub_21BE28A0C();

  sub_21BE259AC();
  v7 = [a1 familyName];
  sub_21BE28A0C();

  sub_21BE259BC();
  v8 = objc_opt_self();
  v9 = sub_21BE259CC();
  v10 = [v8 localizedStringFromPersonNameComponents:v9 style:2 options:0];

  v11 = sub_21BE28A0C();
  (*(v3 + 8))(v5, v2);
  return v11;
}

void static Utility.setupHeaderIcons(in:)(void *a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v1 setAxis_];
  [v1 setAlignment_];
  [v1 setSpacing_];
  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = 3;
  v7 = &unk_282D86120;
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    v11 = sub_21BE289CC();
    v12 = [v3 systemImageNamed_];

    [v10 setImage_];
    v13 = v10;
    [v13 setContentMode_];
    v14 = [v4 systemBlueColor];
    [v13 setTintColor_];

    [v13 setAlpha_];
    v15 = [v5 configurationWithPointSize_];
    [v13 setPreferredSymbolConfiguration_];
    [v2 addArrangedSubview_];

    v7 += 2;
    --v6;
  }

  while (v6);
  [a1 addSubview_];
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BE3D5E0;
  v18 = [v2 centerXAnchor];
  v19 = [a1 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [v2 centerYAnchor];

  v22 = [a1 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v17 + 40) = v23;
  sub_21BC47284();
  v25 = sub_21BE28C1C();

  [v16 activateConstraints_];
}

id static Utility.presentAccountPersonalInformation()()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_21BE25B9C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  sub_21BE25B7C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = v1;
    sub_21BB3A4CC(v9, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE261CC();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(0xD000000000000033, 0x800000021BE5A9B0, &v43);
      _os_log_impl(&dword_21BB35000, v18, v19, "Could not create URL from string: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    return (*(v17 + 8))(v4, v0);
  }

  else
  {
    v42 = v0;
    (*(v11 + 32))(v16, v9, v10);
    sub_21BE261CC();
    (*(v11 + 16))(v14, v16, v10);
    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = v25;
      v40 = swift_slowAlloc();
      v43 = v40;
      *v25 = 136315138;
      sub_21BC9B974();
      v26 = sub_21BE2992C();
      v41 = v1;
      v28 = v27;
      v29 = *(v11 + 8);
      v29(v14, v10);
      v30 = sub_21BB3D81C(v26, v28, &v43);

      v31 = v39;
      *(v39 + 1) = v30;
      v32 = v31;
      _os_log_impl(&dword_21BB35000, v23, v24, "AccountPersonalInformationURL: %s", v31, 0xCu);
      v33 = v40;
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x21CF05C50](v33, -1, -1);
      MEMORY[0x21CF05C50](v32, -1, -1);

      v34 = v29;
      (*(v41 + 8))(v6, v42);
    }

    else
    {

      v34 = *(v11 + 8);
      v34(v14, v10);
      (*(v1 + 8))(v6, v42);
    }

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v35 = result;
      v36 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v37 = sub_21BE288EC();

      [v35 openSensitiveURL:v36 withOptions:v37];

      return (v34)(v16, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void static Utility.openInSafari(url:from:)(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CDB700]);
  v4 = sub_21BE25B2C();
  v5 = [v3 initWithURL_];

  [a2 presentViewController:v5 animated:1 completion:0];
}

unint64_t sub_21BC9B974()
{
  result = qword_27CDB8C28;
  if (!qword_27CDB8C28)
  {
    v3 = sub_21BE25B9C();
    result = swift_getWitnessTable(MEMORY[0x277CC9290], v3, v0, v1);
    atomic_store(result, &qword_27CDB8C28);
  }

  return result;
}

id sub_21BC9B9DC(void *a1)
{
  v46 = sub_21BE25E6C();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v41 - v6;
  v47 = sub_21BE25D1C();
  v8 = *(v47 - 8);
  v9 = MEMORY[0x28223BE20](v47);
  v45 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - v11;
  v13 = sub_21BE2595C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v41 - v20;
  result = [a1 birthday];
  if (result)
  {
    v23 = result;
    sub_21BE2591C();

    (*(v14 + 32))(v21, v19, v13);
    sub_21BE25E4C();
    sub_21BE25E2C();
    v26 = *(v2 + 8);
    v25 = v2 + 8;
    v24 = v26;
    v26(v4, v46);
    if ((*(v8 + 48))(v7, 1, v47) == 1)
    {
      (*(v14 + 8))(v21, v13);
      sub_21BB3A4CC(v7, &qword_27CDB9720, &unk_21BE39F00);
      return 0;
    }

    else
    {
      v43 = v8;
      (*(v8 + 32))(v12, v7, v47);
      sub_21BE25E4C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73B8, &qword_21BE374F8);
      v42 = v24;
      v27 = sub_21BE25E5C();
      v28 = *(v27 - 8);
      v41[1] = v25;
      v29 = v28;
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21BE32770;
      (*(v29 + 104))(v31 + v30, *MEMORY[0x277CC9988], v27);
      sub_21BC0961C(v31);
      swift_setDeallocating();
      (*(v29 + 8))(v31 + v30, v27);
      swift_deallocClassInstance();
      v32 = v45;
      sub_21BE25D0C();
      v33 = v44;
      sub_21BE25E0C();

      v34 = *(v43 + 8);
      v43 += 8;
      v35 = v13;
      v36 = v47;
      v34(v32, v47);
      v42(v4, v46);
      v37 = sub_21BE2593C();
      v39 = v38;
      v40 = *(v14 + 8);
      v40(v33, v35);
      v34(v12, v36);
      v40(v21, v35);
      if (v39)
      {
        return 0;
      }

      else
      {
        return v37;
      }
    }
  }

  return result;
}

uint64_t sub_21BC9BF08(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21BC9BFB4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CF047C0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_21BE2951C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t Child.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Child.givenName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Child.imageData.getter()
{
  v1 = *(v0 + 40);
  sub_21BBBF0A0(v1, *(v0 + 48));
  return v1;
}

uint64_t Child.altDSID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

id Child.avatarImage.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_21BC9C1B4(v2);
}

id sub_21BC9C1B4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id GenericImage.uiImage.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ChildInfoService.__allocating_init(altDSIDList:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_21BC9C234()
{
  v1[22] = v0;
  v2 = sub_21BE26A4C();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC9C300, 0, 0);
}

uint64_t sub_21BC9C300()
{
  v0[20] = MEMORY[0x277D84F90];
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BC9C444;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_22;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC9C444()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_21BC9CB28;
  }

  else
  {
    v2 = sub_21BC9C554;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC9C554()
{
  v57 = v0;
  v1 = *(v0 + 168);
  v2 = &selRef_fa_URLByAddingAirdropInviteParams;
  v3 = [v1 members];
  v4 = sub_21BBE66D8();
  v5 = sub_21BE28C3C();

  if (v5 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {

    if (!i)
    {
      v13 = *(v0 + 216);

      goto LABEL_43;
    }

    v49 = v1;
    v7 = [v1 *(v2 + 2632)];
    v2 = sub_21BE28C3C();

    v56[0] = MEMORY[0x277D84F90];
    v51 = v4;
    if (v2 >> 62)
    {
      v1 = sub_21BE2951C();
    }

    else
    {
      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D84F90];
    if (v1)
    {
      v9 = 0;
      do
      {
        v4 = v8;
        v10 = v9;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x21CF047C0](v10, v2);
          }

          else
          {
            if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v11 = *(v2 + 8 * v10 + 32);
          }

          v12 = v11;
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (sub_21BE2916C())
          {
            break;
          }

          ++v10;
          if (v9 == v1)
          {
            v8 = v4;
            goto LABEL_22;
          }
        }

        MEMORY[0x21CF03DB0]();
        if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21BE28C5C();
        }

        sub_21BE28C8C();
        v8 = v56[0];
      }

      while (v9 != v1);
    }

LABEL_22:

    sub_21BE2614C();

    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 208);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v54 = v0;
    v55 = v8;
    if (v16)
    {
      v20 = *(v0 + 176);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v56[0] = v22;
      *v21 = 136315394;

      v23 = MEMORY[0x21CF03DF0](v55, v51);
      v52 = v17;
      v25 = v24;

      v26 = sub_21BB3D81C(v23, v25, v56);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = MEMORY[0x21CF03DF0](*(v20 + 16), MEMORY[0x277D837D0]);
      v29 = sub_21BB3D81C(v27, v28, v56);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_21BB35000, v14, v15, "children: %s, altDSIDList: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v22, -1, -1);
      v30 = v21;
      v8 = v55;
      MEMORY[0x21CF05C50](v30, -1, -1);

      (*(v18 + 8))(v52, v19);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v31 = v49;
    v56[0] = MEMORY[0x277D84F90];
    v2 = v8 >> 62 ? sub_21BE2951C() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = *(v0 + 176);

    if (!v2)
    {
      break;
    }

    v1 = 0;
    v4 = 0;
    v50 = v0 + 144;
    v32 = v8 & 0xC000000000000001;
    v0 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v32)
      {
        v33 = MEMORY[0x21CF047C0](v1, v8);
      }

      else
      {
        if (v1 >= *(v0 + 16))
        {
          goto LABEL_49;
        }

        v33 = *(v8 + 8 * v1 + 32);
      }

      v34 = v33;
      v35 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v36 = [v33 altDSID];
      if (v36)
      {
        v37 = v36;
        v38 = sub_21BE28A0C();
        v40 = v39;

        v41 = *(v53 + 16);
        *(v54 + 144) = v38;
        *(v54 + 152) = v40;
        v42 = swift_task_alloc();
        *(v42 + 16) = v50;
        LOBYTE(v41) = sub_21BC9BF08(sub_21BC5A084, v42, v41);

        if (v41)
        {
          sub_21BE296BC();
          sub_21BE296EC();
          sub_21BE296FC();
          sub_21BE296CC();
        }

        else
        {
        }

        v8 = v55;
      }

      else
      {
      }

      ++v1;
      if (v35 == v2)
      {
        v0 = v54;
        v31 = v49;
        goto LABEL_42;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_42:
  v43 = *(v0 + 216);
  swift_bridgeObjectRelease_n();
  v44 = v31;

  sub_21BC9D6C4(v45, v44, (v0 + 160));

LABEL_43:
  v46 = *(v0 + 160);

  v47 = *(v0 + 8);

  return v47(v46);
}

uint64_t sub_21BC9CB28(uint64_t a1)
{
  v2 = v1[28];
  swift_willThrow();

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[27];
  v8 = v1[24];
  v7 = v1[25];
  v9 = v1[23];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "Failed to fetch cached family circle.", v10, 2u);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v11 = v1[20];

  v12 = v1[1];

  return v12(v11);
}

void sub_21BC9CC6C(void **a1, uint64_t a2, char **a3)
{
  v79 = a3;
  v5 = sub_21BE26A4C();
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - v8;
  v10 = sub_21BE259EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = [v14 contact];
  v16 = [v14 altDSID];
  if (v16)
  {
    v17 = v16;
    v84 = sub_21BE28A0C();
    v88 = v18;
  }

  else
  {
    v84 = 0;
    v88 = 0;
  }

  v78 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  v19 = [v78 profilePictureForFamilyMember:v14 pictureDiameter:40.0];
  v86 = v15;
  if (!v19)
  {
    v87 = 0;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_9:
    v44 = 0x6E776F6E6B6E55;
    v45 = [v14 fullName];
    if (v45)
    {
      v46 = v45;
      v85 = sub_21BE28A0C();
      v33 = v47;
    }

    else
    {
      v33 = 0xE700000000000000;
      v85 = 0x6E776F6E6B6E55;
    }

    v52 = [v14 firstName];
    if (v52)
    {
      v53 = v52;
      v44 = sub_21BE28A0C();
      v76 = v54;
    }

    else
    {
      v76 = 0xE700000000000000;
    }

    v43 = v83;
    v77 = v44;
    v82 = [v14 age];
    goto LABEL_19;
  }

  v20 = v19;
  v21 = sub_21BE25BFC();
  v23 = v22;

  v24 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v25 = sub_21BE25BCC();
  v87 = [v24 initWithData_];

  v15 = v86;
  sub_21BBBEF94(v21, v23);
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_6:
  v26 = v15;
  sub_21BE259DC();
  v27 = [v26 givenName];
  sub_21BE28A0C();

  sub_21BE259AC();
  v28 = [v26 familyName];
  sub_21BE28A0C();

  sub_21BE259BC();
  v29 = objc_opt_self();
  v30 = sub_21BE259CC();
  v31 = [v29 localizedStringFromPersonNameComponents:v30 style:2 options:0];

  v85 = sub_21BE28A0C();
  v33 = v32;

  (*(v11 + 8))(v13, v10);
  v34 = [v26 givenName];
  v35 = sub_21BE28A0C();
  v76 = v36;

  v82 = sub_21BC9B9DC(v26);
  v37 = [v26 thumbnailImageData];
  v77 = v35;
  if (v37)
  {
    v38 = v37;
    v39 = sub_21BE25BFC();
    v41 = v40;

    v42 = v88;
    v43 = v83;
    goto LABEL_20;
  }

  sub_21BE2614C();

  v48 = sub_21BE26A2C();
  v49 = sub_21BE28FFC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v89 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_21BB3D81C(v85, v33, &v89);
    _os_log_impl(&dword_21BB35000, v48, v49, "thumbnailImageData is nil for %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x21CF05C50](v51, -1, -1);
    MEMORY[0x21CF05C50](v50, -1, -1);
  }

  (*(v80 + 8))(v9, v81);
  v43 = v83;
LABEL_19:

  v39 = 0;
  v41 = 0xF000000000000000;
  v42 = v88;
LABEL_20:
  sub_21BBBF0A0(v39, v41);
  v75 = v87;

  sub_21BE2614C();

  v55 = sub_21BE26A2C();
  v56 = sub_21BE28FFC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v89 = v58;
    *v57 = 136315650;
    v59 = sub_21BB3D81C(v85, v33, &v89);

    *(v57 + 4) = v59;
    *(v57 + 12) = 2048;
    *(v57 + 14) = v82;
    *(v57 + 22) = 2080;
    if (v42)
    {
      v60 = v84;
    }

    else
    {
      v60 = 0x6E776F6E6B6E75;
    }

    if (v42)
    {
      v61 = v42;
    }

    else
    {
      v61 = 0xE700000000000000;
    }

    v62 = sub_21BB3D81C(v60, v61, &v89);

    *(v57 + 24) = v62;
    _os_log_impl(&dword_21BB35000, v55, v56, "Child: DisplayName: %s, age: %ld, altDSID: %s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v58, -1, -1);
    MEMORY[0x21CF05C50](v57, -1, -1);

    (*(v80 + 8))(v83, v81);
  }

  else
  {

    (*(v80 + 8))(v43, v81);
  }

  v63 = v79;
  v64 = v86;
  v65 = *v79;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v63 = v65;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v65 = sub_21BBBD7F4(0, *(v65 + 2) + 1, 1, v65);
    *v63 = v65;
  }

  v68 = *(v65 + 2);
  v67 = *(v65 + 3);
  if (v68 >= v67 >> 1)
  {
    *v63 = sub_21BBBD7F4((v67 > 1), v68 + 1, 1, v65);
  }

  sub_21BBBF0B4(v39, v41);
  v69 = *v63;
  *(v69 + 2) = v68 + 1;
  v70 = &v69[80 * v68];
  *(v70 + 4) = v85;
  *(v70 + 5) = v33;
  v71 = v76;
  *(v70 + 6) = v77;
  *(v70 + 7) = v71;
  *(v70 + 8) = v82;
  *(v70 + 9) = v39;
  v72 = v84;
  *(v70 + 10) = v41;
  *(v70 + 11) = v72;
  v73 = v87;
  *(v70 + 12) = v88;
  *(v70 + 13) = v73;
}

uint64_t ChildInfoService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21BC9D4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBDE3D4;

  return sub_21BC9C234();
}

void (*sub_21BC9D564(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF047C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21BC9D5E4;
  }

  __break(1u);
  return result;
}

void (*sub_21BC9D5EC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF047C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21BC9DAE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC9D66C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BE2995C() & 1;
  }
}

void sub_21BC9D6C4(unint64_t a1, uint64_t a2, char **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF047C0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_21BC9CC6C(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_14FamilyCircleUI12GenericImageVSg(unint64_t *a1)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t dispatch thunk of ChildInfoServiceProvider.fetchChildInfo()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBE9D64;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ChildInfoService.fetchChildInfo()()
{
  v4 = (*(*v0 + 96) + **(*v0 + 96));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBB8C3C;

  return v4();
}

uint64_t sub_21BC9DAE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t sub_21BC9DB80(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t ConfirmChildAgeViewModel.__allocating_init(childInfoService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = MEMORY[0x277D84F90];
  sub_21BB3D104(a1, v2 + 16);
  return v2;
}

uint64_t ConfirmChildAgeViewModel.init(childInfoService:)(__int128 *a1)
{
  *(v1 + 56) = MEMORY[0x277D84F90];
  sub_21BB3D104(a1, v1 + 16);
  return v1;
}

uint64_t sub_21BC9DC94()
{
  v1[5] = v0;
  v2 = sub_21BE26A4C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC9DD54, 0, 0);
}

uint64_t sub_21BC9DD54()
{
  v1 = *(v0 + 40);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_21BC9DE7C;

  return v6(v2, v3);
}

uint64_t sub_21BC9DE7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_21BC9E02C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_21BC9DFA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21BC9DFA4()
{
  v1 = v0[11];
  v2 = v0[5];
  swift_beginAccess();
  *(v2 + 56) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BC9E02C(uint64_t a1)
{
  v2 = v1[10];
  sub_21BE2614C();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21BB35000, v4, v5, "Error fetching child info: %@", v8, 0xCu);
    sub_21BC9E984(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[7] + 8))(v1[8], v1[6]);

  v12 = v1[1];

  return v12();
}

uint64_t sub_21BC9E1C8()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t sub_21BC9E29C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  swift_beginAccess();
  v2 = *(*(v0 + 56) + 16);
  v3 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();

  v6 = [v5 bundleForClass_];
  sub_21BE2599C();

  v7 = sub_21BE289DC();

  return v7;
}

uint64_t sub_21BC9E3F8()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t sub_21BC9E4A4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21BE25B7C();
  v5 = sub_21BE25B9C();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC9E5D8()
{
  sub_21BB3A35C(*(v0 + 56), v0 + 16);
  type metadata accessor for ConfirmChildAgeViewModel();
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  *(v1 + 56) = MEMORY[0x277D84F90];
  sub_21BB3D104((v0 + 16), v1 + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_21BC9E6A0;

  return sub_21BC9DC94();
}

uint64_t sub_21BC9E6A0()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 64);

  return v2(v3);
}

uint64_t ConfirmChildAgeViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t ConfirmChildAgeViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_21BC9E984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC9EA14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21BC9EA70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_21BC9EB04()
{
  type metadata accessor for ChecklistStoreCache();
  v0 = swift_allocObject();
  return sub_21BE20540(v0);
}

uint64_t sub_21BC9EB3C()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v11[15] != 1)
  {
    v6 = 0;
    return v6 & 1;
  }

  if (*v0)
  {

    sub_21BE07D30(0);
    v6 = v5;

    sub_21BE261BC();
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v6 & 1;
      _os_log_impl(&dword_21BB35000, v7, v8, "At least 1 provider is ready: %{BOOL}d", v9, 8u);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return v6 & 1;
  }

  type metadata accessor for FamilyChecklistStore();
  sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BC9EDA8(int a1)
{
  HIDWORD(v53) = a1;
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CB0, &unk_21BE3DAE0);
  v7 = *(v3 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21BE33260;
  v10 = v9 + v8;
  v11 = *MEMORY[0x277D07F38];
  v12 = *(v4 + 104);
  v12(v10, v11, v2);
  v12(v10 + v7, *MEMORY[0x277D07F30], v2);
  LOBYTE(v10) = sub_21BE25FBC();

  if (v10)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

LABEL_14:
    v54 = v15;
LABEL_17:
    v55 = v17;
    sub_21BB41FA4();
    return sub_21BE27DBC();
  }

  v12(v6, v11, v2);
  MEMORY[0x21CF01150](v6);
  (*(v4 + 8))(v6, v2);
  if ((v53 & 0x100000000) != 0)
  {
    type metadata accessor for ChecklistStoreCache();
    sub_21BCA11F4(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache, protocol conformance descriptor for SimpleFamilyServerCache);
    sub_21BE26EAC();
    v54 = 0x746E756F63;
    v55 = 0xE500000000000000;
    v18 = sub_21BE20000(&v54);

    if (!v18)
    {
      goto LABEL_7;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_16;
    }

    v54 = 0;
    LOBYTE(v55) = 1;
    sub_21BE28EAC();

    if (v55 == 1)
    {
LABEL_7:

LABEL_16:
      type metadata accessor for ConfirmChildAgeViewModel();
      v42 = swift_getObjCClassFromMetadata();
      v43 = [objc_opt_self() bundleForClass_];
      v44 = sub_21BE2599C();
      v17 = v45;

      v54 = v44;
      goto LABEL_17;
    }

    v47 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v48 = swift_allocObject();
    v49 = MEMORY[0x277D83B88];
    *(v48 + 16) = xmmword_21BE32770;
    v50 = MEMORY[0x277D83C10];
    *(v48 + 56) = v49;
    *(v48 + 64) = v50;
    *(v48 + 32) = v47;
    type metadata accessor for ConfirmChildAgeViewModel();
    v51 = swift_getObjCClassFromMetadata();
    v52 = objc_opt_self();

    v39 = [v52 bundleForClass_];
LABEL_13:
    v40 = v39;
    sub_21BE2599C();

    v15 = sub_21BE289DC();
    v17 = v41;

    goto LABEL_14;
  }

  v19 = *v1;
  if (*v1)
  {
    v20 = v1[5];
    if (v20)
    {
      type metadata accessor for ChecklistStoreCache();
      swift_allocObject();
      v21 = v20;

      v23 = sub_21BE20540(v22);
      v24 = *(v19 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_21BE0476C;
      v25[4] = 0;

      v26 = sub_21BBED570(v25);

      v27 = sub_21BDE5F04(v21, v26);

      v28 = sub_21BE28E8C();
      v29 = sub_21BE1F55C();
      if (v29)
      {
        v30 = v29;
        v31 = v23[3];
        v54 = v23[2];
        v55 = v31;

        MEMORY[0x21CF03CA0](46, 0xE100000000000000);
        MEMORY[0x21CF03CA0](0x746E756F63, 0xE500000000000000);
        v32 = sub_21BE289CC();

        [v30 setValue:v28 forKey:v32];

        v28 = v32;
      }

      v33 = sub_21BE1F55C();
      [v33 synchronize];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v34 = swift_allocObject();
      v35 = MEMORY[0x277D83B88];
      *(v34 + 16) = xmmword_21BE32770;
      v36 = MEMORY[0x277D83C10];
      *(v34 + 56) = v35;
      *(v34 + 64) = v36;
      *(v34 + 32) = v27;
      type metadata accessor for ConfirmChildAgeViewModel();
      v37 = swift_getObjCClassFromMetadata();
      v38 = objc_opt_self();

      v39 = [v38 bundleForClass_];
      goto LABEL_13;
    }
  }

  else
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    sub_21BE2726C();
    __break(1u);
  }

  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BCA1818();

  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BC9F588@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_21BE275DC();
  v33 = 0;
  sub_21BC9F9A4(__src);
  memcpy(__dst, __src, 0x229uLL);
  memcpy(v35, __src, 0x229uLL);
  sub_21BBA3854(__dst, &v30, &qword_27CDB8C30, &qword_21BE3D9F0);
  sub_21BB3A4CC(v35, &qword_27CDB8C30, &qword_21BE3D9F0);
  memcpy(&v32[7], __dst, 0x229uLL);
  v6 = v33;
  v7 = swift_allocObject();
  v8 = v2[3];
  v7[3] = v2[2];
  v7[4] = v8;
  *(v7 + 73) = *(v2 + 57);
  v9 = v2[1];
  v7[1] = *v2;
  v7[2] = v9;
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C38, &qword_21BE3D9F8) + 36);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21BCA1154(v2, __src);
  v12 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v13 = type metadata accessor for ActiveStateChange(0);
  v14 = (v10 + *(v13 + 20));
  *v14 = sub_21BCA114C;
  v14[1] = v7;
  v15 = (v10 + *(v13 + 24));
  *v15 = 0xD000000000000030;
  v15[1] = 0x800000021BE5AD40;
  *a2 = v5;
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = v6;
  memcpy((a2 + 17), v32, 0x230uLL);
  *(a2 + 577) = 0;
  v16 = swift_allocObject();
  v17 = v3[3];
  v16[3] = v3[2];
  v16[4] = v17;
  *(v16 + 73) = *(v3 + 57);
  v18 = v3[1];
  v16[1] = *v3;
  v16[2] = v18;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C40, &qword_21BE3DA00) + 36);
  sub_21BCA1154(v3, __src);
  v20 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD6FB8 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v21 = type metadata accessor for InactiveStateChange(0);
  v22 = (a2 + v19 + *(v21 + 20));
  *v22 = sub_21BCA118C;
  v22[1] = v16;
  v23 = (a2 + v19 + *(v21 + 24));
  *v23 = 0xD000000000000030;
  v23[1] = 0x800000021BE5AD40;
  type metadata accessor for FamilyNetworkMonitor(0);
  sub_21BCA11F4(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
  sub_21BE26EAC();
  swift_beginAccess();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C48, &qword_21BE3DA08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  swift_endAccess();

  v25 = swift_allocObject();
  v26 = v3[3];
  v25[3] = v3[2];
  v25[4] = v26;
  *(v25 + 73) = *(v3 + 57);
  v27 = v3[1];
  v25[1] = *v3;
  v25[2] = v27;
  v28 = (a2 + *(v24 + 56));
  *v28 = sub_21BCA11EC;
  v28[1] = v25;
  return sub_21BCA1154(v3, __src);
}

void sub_21BC9F9A4(uint64_t a2@<X8>)
{
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v4 + 104))(v6, *MEMORY[0x277D07F38], v3);
  v7 = MEMORY[0x21CF01150](v6);
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = 14;
  }

  else
  {
    v8 = 9;
  }

  HIDWORD(v14) = v8;
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_21BE2771C();
  v27 = 1;
  sub_21BC9FD60(v18);
  memcpy(v29, v18, 0x16AuLL);
  memcpy(v30, v18, 0x16AuLL);
  sub_21BBA3854(v29, v17, &qword_27CDB8C50, &qword_21BE3DA20);
  sub_21BB3A4CC(v30, &qword_27CDB8C50, &qword_21BE3DA20);
  memcpy(&v26[7], v29, 0x16AuLL);
  v12 = v27;
  sub_21BE286AC();
  sub_21BE2725C();
  *&v28[54] = v34;
  *&v28[70] = v35;
  *&v28[86] = v36;
  *&v28[102] = v37;
  *&v28[6] = v31;
  *&v28[22] = v32;
  *&v28[38] = v33;
  v17[0] = v11;
  v17[1] = 0;
  LOBYTE(v17[2]) = v12;
  memcpy(&v17[2] + 1, v26, 0x171uLL);
  *(&v17[56] + 2) = *&v28[64];
  *(&v17[58] + 2) = *&v28[80];
  *(&v17[60] + 2) = *&v28[96];
  *(&v17[48] + 2) = *v28;
  *(&v17[50] + 2) = *&v28[16];
  *(&v17[52] + 2) = *&v28[32];
  *(&v17[54] + 2) = *&v28[48];
  v17[62] = *(&v37 + 1);
  memcpy(&v16[7], v17, 0x1F8uLL);
  v15[504] = 1;
  *a2 = BYTE4(v14);
  *(a2 + 8) = v10;
  *(a2 + 16) = &unk_282D86148;
  *(a2 + 24) = &unk_282D86178;
  *(a2 + 32) = 0;
  memcpy((a2 + 33), v16, 0x1FFuLL);
  *(a2 + 544) = 0;
  *(a2 + 552) = 1;
  *v18 = v11;
  *&v18[8] = 0;
  v18[16] = v12;
  memcpy(&v18[17], v26, 0x171uLL);
  v23 = *&v28[64];
  v24 = *&v28[80];
  *v25 = *&v28[96];
  v19 = *v28;
  v20 = *&v28[16];
  v21 = *&v28[32];
  v22 = *&v28[48];
  *&v25[14] = *&v28[110];
  v13 = v10;

  sub_21BBA3854(v17, v15, &qword_27CDB8C58, &qword_21BE3DA28);
  sub_21BB3A4CC(v18, &qword_27CDB8C58, &qword_21BE3DA28);
}

uint64_t sub_21BC9FD60@<X0>(void *a1@<X8>)
{
  *&v150 = sub_21BCA13B0();
  *(&v150 + 1) = v1;
  sub_21BB41FA4();
  v2 = sub_21BE27DBC();
  v4 = v3;
  v6 = v5;
  sub_21BE2832C();
  v7 = sub_21BE27D4C();
  v80 = v8;
  v81 = v7;
  v10 = v9;
  v82 = v11;

  sub_21BBC7C7C(v2, v4, v6 & 1);

  v76 = sub_21BE286AC();
  v77 = v12;
  LOBYTE(v75) = 1;
  LOBYTE(v74) = 1;
  sub_21BE2725C();
  v79 = v10 & 1;
  v171 = v10 & 1;
  if (sub_21BC9EB3C())
  {
    v78 = sub_21BE275BC();
    v109 = 0;
    if (qword_27CDB5028 != -1)
    {
      swift_once();
    }

    sub_21BE07D30(1);
    v14 = sub_21BC9EDA8((v13 & 1) == 0);
    v16 = v15;
    v18 = v17;
    sub_21BE2833C();
    v19 = sub_21BE27D4C();
    v21 = v20;
    v23 = v22;

    sub_21BBC7C7C(v14, v16, v18 & 1);

    sub_21BE27BEC();
    v24 = sub_21BE27D9C();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    sub_21BBC7C7C(v19, v21, v23 & 1);

    sub_21BE286AC();
    sub_21BE26F2C();
    sub_21BE286AC();
    sub_21BE2725C();
    *&v84 = v78;
    *(&v84 + 1) = 0x4010000000000000;
    LOBYTE(v85) = v109;
    *(&v85 + 1) = v24;
    *&v86 = v26;
    BYTE8(v86) = v28 & 1;
    *v87 = v30;
    *&v87[24] = v95[1];
    *&v87[40] = v95[2];
    *&v87[8] = v95[0];
    v110 = v84;
    v111 = v85;
    v114 = *&v87[16];
    v115 = *&v87[32];
    v112 = v86;
    v113 = *v87;
    v118 = v89;
    v119 = v90;
    v116 = *&v87[48];
    v117 = v88;
    *&v122[16] = v94;
    v121 = v92;
    *v122 = v93;
    v120 = v91;
    sub_21BCA1810(&v110);
    v160 = v120;
    v161 = v121;
    v162[0] = *v122;
    *(v162 + 9) = *&v122[9];
    v156 = v116;
    v157 = v117;
    v158 = v118;
    v159 = v119;
    v152 = v112;
    v153 = v113;
    v154 = v114;
    v155 = v115;
    v150 = v110;
    v151 = v111;
    sub_21BBA3854(&v84, &v137, &qword_27CDB8C80, &qword_21BE3DAB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C80, &qword_21BE3DAB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA1608();
    sub_21BCA16C0();
    sub_21BE2784C();
    v147 = v106;
    v148 = v107;
    v149[0] = v108[0];
    *(v149 + 9) = *(v108 + 9);
    v143 = v102;
    v144 = v103;
    v145 = v104;
    v146 = v105;
    v139 = v98;
    v140 = v99;
    v141 = v100;
    v142 = v101;
    v137 = v96;
    v138 = v97;
    sub_21BCA1808(&v137);
    v160 = v147;
    v161 = v148;
    v162[0] = v149[0];
    *(v162 + 10) = *(v149 + 10);
    v156 = v143;
    v157 = v144;
    v158 = v145;
    v159 = v146;
    v152 = v139;
    v153 = v140;
    v154 = v141;
    v155 = v142;
    v150 = v137;
    v151 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C60, &qword_21BE3DAA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C68, &qword_21BE3DAB0);
    sub_21BCA157C();
    sub_21BCA1744();
    sub_21BE2784C();
    sub_21BB3A4CC(&v84, &qword_27CDB8C80, &qword_21BE3DAB8);
    v160 = v134;
    v161 = v135;
    v31 = v136[0];
    goto LABEL_9;
  }

  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v150 == 1)
  {
    v32 = sub_21BC9EDA8(1);
    v34 = v33;
    v36 = v35;
    sub_21BE2833C();
    v37 = sub_21BE27D4C();
    v39 = v38;
    v41 = v40;

    sub_21BBC7C7C(v32, v34, v36 & 1);

    sub_21BE27BEC();
    v42 = sub_21BE27D9C();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_21BBC7C7C(v37, v39, v41 & 1);

    sub_21BE286AC();
    sub_21BE2725C();
    v109 = v46 & 1;
    *&v84 = v42;
    *(&v84 + 1) = v44;
    LOBYTE(v85) = v46 & 1;
    *(&v85 + 1) = v95[0];
    DWORD1(v85) = *(v95 + 3);
    *(&v85 + 1) = v48;
    v112 = v86;
    v113 = *v87;
    v110 = v84;
    v111 = v85;
    v117 = v88;
    v118 = v89;
    v115 = *&v87[32];
    v116 = *&v87[48];
    v114 = *&v87[16];
    sub_21BCA17FC(&v110);
    v160 = v120;
    v161 = v121;
    v162[0] = *v122;
    *(v162 + 9) = *&v122[9];
    v156 = v116;
    v157 = v117;
    v158 = v118;
    v159 = v119;
    v152 = v112;
    v153 = v113;
    v154 = v114;
    v155 = v115;
    v150 = v110;
    v151 = v111;
    sub_21BBA3854(&v84, &v137, &qword_27CDB8C98, &unk_21BE3DAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C80, &qword_21BE3DAB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA1608();
    sub_21BCA16C0();
    sub_21BE2784C();
    v147 = v106;
    v148 = v107;
    v149[0] = v108[0];
    *(v149 + 9) = *(v108 + 9);
    v143 = v102;
    v144 = v103;
    v145 = v104;
    v146 = v105;
    v139 = v98;
    v140 = v99;
    v141 = v100;
    v142 = v101;
    v137 = v96;
    v138 = v97;
    sub_21BCA1808(&v137);
    v160 = v147;
    v161 = v148;
    v162[0] = v149[0];
    *(v162 + 10) = *(v149 + 10);
    v156 = v143;
    v157 = v144;
    v158 = v145;
    v159 = v146;
    v152 = v139;
    v153 = v140;
    v154 = v141;
    v155 = v142;
    v150 = v137;
    v151 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C60, &qword_21BE3DAA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C68, &qword_21BE3DAB0);
    sub_21BCA157C();
    sub_21BCA1744();
    sub_21BE2784C();
    sub_21BB3A4CC(&v84, &qword_27CDB8C98, &unk_21BE3DAC8);
    v160 = v134;
    v161 = v135;
    v31 = v136[0];
LABEL_9:
    v162[0] = v31;
    *(v162 + 10) = *(v136 + 10);
    v156 = v130;
    v157 = v131;
    v158 = v132;
    v159 = v133;
    v152 = v126;
    v153 = v127;
    v154 = v128;
    v155 = v129;
    v150 = v124;
    v151 = v125;
    goto LABEL_13;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = [objc_opt_self() bundleForClass_];
  v51 = sub_21BE2599C();
  v53 = v52;

  *&v150 = v51;
  *(&v150 + 1) = v53;
  v54 = sub_21BE27DBC();
  v56 = v55;
  v58 = v57;
  if (qword_27CDB4FA8 != -1)
  {
    swift_once();
  }

  v59 = sub_21BE27D4C();
  v61 = v60;
  v63 = v62;
  sub_21BBC7C7C(v54, v56, v58 & 1);

  sub_21BE27CCC();
  v64 = sub_21BE27D9C();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  sub_21BBC7C7C(v59, v61, v63 & 1);

  sub_21BE286AC();
  sub_21BE2725C();
  LOBYTE(v96) = v68 & 1;
  KeyPath = swift_getKeyPath();
  v72 = swift_allocObject();
  *(v72 + 16) = 1;
  *&v137 = v64;
  *(&v137 + 1) = v66;
  LOBYTE(v138) = v68 & 1;
  v143 = v114;
  v144 = v115;
  v145 = v116;
  v139 = v110;
  v140 = v111;
  v141 = v112;
  v142 = v113;
  *(&v138 + 1) = v70;
  *&v146 = KeyPath;
  *(&v146 + 1) = sub_21BC0AE98;
  *&v147 = v72;
  sub_21BCA1570(&v137);
  v134 = v147;
  v135 = v148;
  v136[0] = v149[0];
  *(v136 + 10) = *(v149 + 10);
  v130 = v143;
  v131 = v144;
  v132 = v145;
  v133 = v146;
  v126 = v139;
  v127 = v140;
  v128 = v141;
  v129 = v142;
  v124 = v137;
  v125 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C60, &qword_21BE3DAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C68, &qword_21BE3DAB0);
  sub_21BCA157C();
  sub_21BCA1744();
  sub_21BE2784C();
LABEL_13:
  v147 = v160;
  v148 = v161;
  v149[0] = v162[0];
  *(v149 + 10) = *(v162 + 10);
  v143 = v156;
  v144 = v157;
  v145 = v158;
  v146 = v159;
  v139 = v152;
  v140 = v153;
  v141 = v154;
  v142 = v155;
  v137 = v150;
  v138 = v151;
  *&v96 = v81;
  *(&v96 + 1) = v80;
  LOBYTE(v97) = v79;
  *(&v97 + 1) = *v170;
  DWORD1(v97) = *&v170[3];
  *(&v97 + 1) = v82;
  v102 = v167;
  v103 = v168;
  v104 = v169;
  v98 = v163;
  v99 = v164;
  v101 = v166;
  v100 = v165;
  __src[6] = v167;
  __src[7] = v168;
  __src[2] = v163;
  __src[3] = v164;
  __src[4] = v165;
  __src[5] = v166;
  __src[0] = v96;
  __src[1] = v97;
  v134 = v160;
  v135 = v161;
  v136[0] = v162[0];
  *(v136 + 10) = *(v162 + 10);
  v130 = v156;
  v131 = v157;
  v132 = v158;
  v133 = v159;
  v126 = v152;
  v127 = v153;
  v128 = v154;
  v129 = v155;
  v124 = v150;
  v125 = v151;
  *(&__src[21] + 10) = *(v162 + 10);
  __src[20] = v161;
  __src[21] = v162[0];
  __src[16] = v157;
  __src[17] = v158;
  __src[18] = v159;
  __src[19] = v160;
  __src[12] = v153;
  __src[13] = v154;
  __src[14] = v155;
  __src[15] = v156;
  __src[8] = v169;
  __src[9] = v150;
  __src[10] = v151;
  __src[11] = v152;
  memcpy(a1, __src, 0x16AuLL);
  sub_21BBA3854(&v96, &v110, &qword_27CDB8C98, &unk_21BE3DAC8);
  sub_21BBA3854(&v124, &v110, &qword_27CDB8CA8, &qword_21BE3DAD8);
  sub_21BB3A4CC(&v137, &qword_27CDB8CA8, &qword_21BE3DAD8);
  *&v110 = v81;
  *(&v110 + 1) = v80;
  LOBYTE(v111) = v79;
  *(&v111 + 1) = *v170;
  DWORD1(v111) = *&v170[3];
  *(&v111 + 1) = v82;
  v116 = v167;
  v117 = v168;
  v118 = v169;
  v112 = v163;
  v113 = v164;
  v114 = v165;
  v115 = v166;
  return sub_21BB3A4CC(&v110, &qword_27CDB8C98, &unk_21BE3DAC8);
}