uint64_t sub_214F2E764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214F2E18C(&qword_27CA41998, type metadata accessor for SummarizationClientError, &unk_2150C1D20);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_214F2E7E8()
{
  v0 = sub_2150A4AD0();
  v1 = MEMORY[0x2160618B0](v0);

  return v1;
}

uint64_t sub_214F2E824(uint64_t a1)
{
  sub_2150A4AD0();
  sub_2150A4BB0();
}

uint64_t sub_214F2E878()
{
  sub_2150A4AD0();
  sub_2150A64B0();
  sub_2150A4BB0();
  v0 = sub_2150A64E0();

  return v0;
}

uint64_t sub_214F2E8EC(void *a1, uint64_t *a2)
{
  v2 = sub_2150A4AD0();
  v4 = v3;
  if (v2 == sub_2150A4AD0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2150A6270();
  }

  return v7 & 1;
}

unint64_t sub_214F2ECE8()
{
  result = qword_27CA41988;
  if (!qword_27CA41988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41988);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
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

unint64_t sub_214F2F170()
{
  result = qword_280C24550;
  if (!qword_280C24550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA41A28, &qword_2150C2960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C24550);
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_214F2F2C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214F2F2E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

Swift::Void __swiftcall ICFolder.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10[-v4 - 8];
  sub_214F2F904(v10);
  sub_214D6DEC0(v10[0], v11, v12, v5);
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_214F302D4(v5, &qword_27CA41D40, &unk_2150C7230);
  }

  else
  {
    sub_2150A3650();
    (*(v7 + 8))(v5, v6);
  }

  v8 = [v1 title];
  sub_2150A4AD0();

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5700();
}

uint64_t sub_214F2F904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3F30();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v70 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v61[-v9];
  v11 = [v1 objectID];
  if (![v11 ic_isModernType])
  {
    [v11 ic_isLegacyType];
  }

  v65 = v61;
  MEMORY[0x28223BE20](v12, v13);
  v68 = v14;
  v61[-16] = v14;
  v15 = qword_280C245E0;
  v16 = v1;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_280C24890);
  v66 = *(v4 + 16);
  v67 = v17;
  v66(v10);
  v18 = swift_allocObject();
  *(v18 + 16) = 2;
  v19 = sub_214D6DCAC(v18, sub_214D6DCB0, &v61[-32]);
  v69 = v4;
  if (v19)
  {
  }

  else
  {
    v20 = sub_2150A5570();
    v21 = sub_2150A3F10();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v62 = v20;
      v23 = v22;
      v63 = swift_slowAlloc();
      v73 = v63;
      *v23 = 136315650;
      v24 = sub_2150A5B70();
      v26 = sub_214F7723C(v24, v25, &v73);
      v64 = a1;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = 50;
      *(v23 + 22) = 2080;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000034, 0x80000002150E1D10);
      v28 = [v16 ic_loggingDescription];
      v29 = sub_2150A4AD0();
      v31 = v30;

      v32 = v29;
      a1 = v64;
      MEMORY[0x2160617E0](v32, v31);

      v33 = sub_214F7723C(v71, v72, &v73);

      *(v23 + 24) = v33;
      _os_log_impl(&dword_214D51000, v21, v62, "Failed assertion at %s:%lu: %s", v23, 0x20u);
      v34 = v63;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v34, -1, -1);
      MEMORY[0x216064AF0](v23, -1, -1);
    }

    v4 = v69;
  }

  v35 = *(v4 + 8);
  v35(v10, v3);

  v36 = v70;
  v37 = [v16 identifierURIPathComponent];
  if (v37)
  {
    v39 = v37;
    v40 = sub_2150A4AD0();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
  }

  v65 = v61;
  MEMORY[0x28223BE20](v37, v38);
  *&v61[-16] = v40;
  *&v61[-8] = v42;
  (v66)(v36, v67, v3);
  v43 = swift_allocObject();
  *(v43 + 16) = 2;
  v44 = v16;
  if (sub_214D6DCAC(v43, sub_214D6DD3C, &v61[-32]))
  {

LABEL_18:
    v35(v36, v3);
    goto LABEL_19;
  }

  v45 = sub_2150A5570();
  v46 = sub_2150A3F10();
  if (!os_log_type_enabled(v46, v45))
  {

    goto LABEL_18;
  }

  v47 = swift_slowAlloc();
  LODWORD(v66) = v45;
  v48 = v47;
  v67 = swift_slowAlloc();
  v73 = v67;
  *v48 = 136315650;
  v49 = sub_2150A5B70();
  v51 = sub_214F7723C(v49, v50, &v73);
  v64 = a1;
  v52 = v51;

  *(v48 + 4) = v52;
  *(v48 + 12) = 2048;
  *(v48 + 14) = 52;
  *(v48 + 22) = 2080;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_2150A5B20();

  v71 = 0xD000000000000028;
  v72 = 0x80000002150E1CE0;
  v53 = [v44 ic_loggingDescription];
  v54 = sub_2150A4AD0();
  v63 = v35;
  v56 = v55;

  v57 = v54;
  a1 = v64;
  MEMORY[0x2160617E0](v57, v56);

  v58 = sub_214F7723C(v71, v72, &v73);

  *(v48 + 24) = v58;
  _os_log_impl(&dword_214D51000, v46, v66, "Failed assertion at %s:%lu: %s", v48, 0x20u);
  v59 = v67;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v59, -1, -1);
  MEMORY[0x216064AF0](v48, -1, -1);

  v63(v70, v3);
LABEL_19:

  *a1 = v68;
  *(a1 + 8) = v40;
  *(a1 + 16) = v42;
  return result;
}

unint64_t sub_214F30094(uint64_t a1, uint64_t a2)
{
  sub_2150A64B0();
  sub_2150A4BB0();
  v4 = sub_2150A64E0();

  return sub_214F3010C(a1, a2, v4);
}

unint64_t sub_214F3010C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2150A6270())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_214F301C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10, &unk_2150C7D60);
    v3 = sub_2150A5EA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_214F30334(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_214F30094(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_214D72488(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_214F302D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_214F30334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D60, &unk_2150C5450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ICTTAttachment __swiftcall ICTTAttachment.init(identifier:universalTypeIdentifier:)(Swift::String_optional identifier, Swift::String_optional universalTypeIdentifier)
{
  object = universalTypeIdentifier.value._object;
  v3 = identifier.value._object;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  if (v3)
  {
    v6 = sub_2150A4A90();
  }

  else
  {
    v6 = 0;
  }

  [v4 setAttachmentIdentifier_];

  if (object)
  {
    v7 = sub_2150A4A90();
  }

  else
  {
    v7 = 0;
  }

  [v4 setAttachmentUTI_];

  v10 = v4;
  result._attachmentUTI = v9;
  result._attachmentIdentifier = v8;
  result.super.isa = v10;
  return result;
}

uint64_t sub_214F30684(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotesVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214F306C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E08, &qword_2150C2958);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = sub_2150A3E80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_214F302D4(a1, &qword_27CA41E08, &qword_2150C2958);
    v15 = sub_214FB1920(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_214FED1C4();
        v19 = v23;
      }

      (*(v11 + 32))(v9, *(v19 + 56) + *(v11 + 72) * v17, v10);
      sub_214F40F74(v17, v19);
      *v3 = v19;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_214F302D4(v9, &qword_27CA41E08, &qword_2150C2958);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_214FEBD18(v14, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_214F30918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_214FEC4D8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_2150A3750();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_214FB1B98(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_214FEDFEC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_2150A3750();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_214F41634(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_2150A3750();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_214F30AD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 255)
  {
    sub_214F302D4(a1, &qword_27CA41E10, &unk_2150C2970);
    sub_214FE8AA4(a2, v10);
    v8 = sub_2150A3750();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_214F302D4(v10, &qword_27CA41E10, &unk_2150C2970);
  }

  else
  {
    v4 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v4;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_214FEC308(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_2150A3750();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  return result;
}

uint64_t sub_214F30C24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_214F30E30@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = sub_2150A3960();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v19, v10, &qword_27CA41DD0, &unk_2150C2740);
  v20 = v12[6];
  if (v20(v10, 1, v11) == 1)
  {
    v21 = v10;
  }

  else
  {
    v28 = v12[4];
    v28(v18, v10, v11);
    v22 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(a1 + v22, v7, &qword_27CA41DD0, &unk_2150C2740);
    if (v20(v7, 1, v11) != 1)
    {
      v25 = v29;
      v28(v29, v7, v11);
      sub_2150A3870();
      v24 = v26;
      v27 = v12[1];
      v27(v25, v11);
      result = (v27)(v18, v11);
      goto LABEL_7;
    }

    (v12[1])(v18, v11);
    v21 = v7;
  }

  result = sub_214F302D4(v21, &qword_27CA41DD0, &unk_2150C2740);
  v24 = 0;
LABEL_7:
  *v30 = v24;
  return result;
}

uint64_t sub_214F31138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D90, &qword_2150C2710);
  sub_2150A55B0();
  return v1;
}

uint64_t sub_214F311B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

uint64_t sub_214F3121C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_214F31280(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CloudSessionChanges(a1, a2);
  sub_2150A55B0();
  return v3;
}

id sub_214F312F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
  v5 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);
  v7 = *(a1 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges);
  v6 = *(a1 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 8);
  v8 = *(a1 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 16);
  v9 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8);
  v17 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges);
  v10 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16);
  v11 = type metadata accessor for CloudSessionChanges(a1, a2);
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___CloudSessionChanges_recordZonesChanges];
  *v13 = v3;
  *(v13 + 1) = v4;
  *(v13 + 2) = v5;
  v14 = &v12[OBJC_IVAR___CloudSessionChanges_fetchedRecordChanges];
  *v14 = v7;
  *(v14 + 1) = v6;
  *(v14 + 2) = v8;
  v15 = &v12[OBJC_IVAR___CloudSessionChanges_pushedRecordChanges];
  *v15 = v17;
  *(v15 + 1) = v9;
  *(v15 + 2) = v10;
  v19.receiver = v12;
  v19.super_class = v11;

  result = objc_msgSendSuper2(&v19, sel_init);
  *a3 = result;
  return result;
}

uint64_t sub_214F31480@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges);
  v3 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16);
  if (v2 >> 62)
  {
    v7 = a2;
    result = sub_2150A59D0();
    a2 = v7;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_5:
      v6 = 1;
      goto LABEL_6;
    }
  }

  if (v3 >> 62)
  {
    v8 = a2;
    result = sub_2150A59D0();
    a2 = v8;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  if (v4 >> 62)
  {
    v9 = a2;
    result = sub_2150A59D0();
    a2 = v9;
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = result != 0;
LABEL_6:
  *a2 = v6;
  return result;
}

uint64_t sub_214F31660(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  sub_214F33518(sub_214F3177C, v3);
}

uint64_t sub_214F316E0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v3;
  sub_214F33518(sub_214F43F4C, v4);
}

uint64_t (*sub_214F31794(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_2150A55B0();
  *(a1 + 8) = *(a1 + 9);
  return sub_214F3182C;
}

uint64_t sub_214F3182C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v3;
  sub_214F33518(sub_214F43F4C, v4);
}

uint64_t sub_214F31908@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR___ICCloudSession_endDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v8, v7, &qword_27CA41DD0, &unk_2150C2740);
  v9 = sub_2150A3960();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9);
  result = sub_214F302D4(v7, &qword_27CA41DD0, &unk_2150C2740);
  if (v8 == 1 || *(a1 + OBJC_IVAR___ICCloudSession__error) || *(a1 + OBJC_IVAR___ICCloudSession__hasCompletedInitialSync) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR___ICCloudSession__wasCancelled) ^ 1;
  }

  *a2 = v11 & 1;
  return result;
}

uint64_t sub_214F31B30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D98, &qword_2150C2718);
  sub_2150A55B0();
  return v1;
}

void sub_214F31C60(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = a1;
  sub_214F33518(sub_214F33854, v3);
}

void *sub_214F31CEC@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D98, &qword_2150C2718);
  result = sub_2150A55B0();
  *a2 = v4;
  return result;
}

uint64_t sub_214F31D74(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v3;
  v6 = v2;
  sub_214F33518(sub_214F43EE4, v4);
}

void (*sub_214F31DFC(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D98, &qword_2150C2718);
  sub_2150A55B0();
  *a1 = a1[1];
  return sub_214F31EA4;
}

void sub_214F31EA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = v2;
    v6 = v3;
    v7 = v2;
    sub_214F33518(sub_214F43EE4, v4);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v2;
    v9 = v3;
    v10 = v2;
    sub_214F33518(sub_214F43EE4, v8);
  }
}

uint64_t sub_214F32014(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_2150A55B0();

  return v5;
}

uint64_t sub_214F320F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_214F43C14(a1 + v10, v9, &qword_27CA41DD0, &unk_2150C2740);
  v11 = sub_2150A3960();
  LOBYTE(v10) = (*(*(v11 - 8) + 48))(v9, 1, v11) != 1;
  result = sub_214F302D4(v9, &qword_27CA41DD0, &unk_2150C2740);
  *a3 = v10;
  return result;
}

uint64_t sub_214F3233C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v4 = sub_2150A3A00();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_214F324D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v5 = sub_2150A3A00();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_214F32564(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_214F326F8()
{
  v1 = (v0 + OBJC_IVAR___ICCloudSession_reason);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_214F327BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___ICCloudSession_reason);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_214F32928(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_214F32988(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICCloudSession_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_214F32A20;
}

void sub_214F32A20(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_214F32AA0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E08, &qword_2150C2958);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR___ICCloudSession____lazy_storage___sessionSignpostID;
  swift_beginAccess();
  sub_214F43C14(v1 + v11, v10, &qword_27CA41E08, &qword_2150C2958);
  v12 = sub_2150A3E80();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_214F302D4(v10, &qword_27CA41E08, &qword_2150C2958);
  sub_2150A3EA0();
  sub_2150A3E60();
  (*(v13 + 16))(v7, a1, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_214F43C7C(v7, v1 + v11, &qword_27CA41E08, &qword_2150C2958);
  return swift_endAccess();
}

id CloudSession.init(reason:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = sub_2150A55A0();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2150A5590();
  MEMORY[0x28223BE20](v59, v7);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A4490();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A3F30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2150A3EB0();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v16);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2150A3A00();
  v51 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___ICCloudSession__metrics] = MEMORY[0x277D84F98];
  v3[OBJC_IVAR___ICCloudSession__hasCompletedInitialSync] = 0;
  *&v3[OBJC_IVAR___ICCloudSession__error] = 0;
  v3[OBJC_IVAR___ICCloudSession__wasCancelled] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v3[OBJC_IVAR___ICCloudSession_zoneChanges];
  v23 = MEMORY[0x277D84F90];
  *v22 = MEMORY[0x277D84F90];
  v22[1] = v23;
  v22[2] = v23;
  v24 = &v3[OBJC_IVAR___ICCloudSession_fetchedRecordChanges];
  *v24 = v23;
  v24[1] = v23;
  v24[2] = v23;
  v25 = &v3[OBJC_IVAR___ICCloudSession_pushedRecordChanges];
  *v25 = v23;
  v25[1] = v23;
  v25[2] = v23;
  *&v3[OBJC_IVAR___ICCloudSession_recordTypesToIdentifiers] = v21;
  v26 = OBJC_IVAR___ICCloudSession_startDate;
  v27 = sub_2150A3960();
  v28 = *(*(v27 - 8) + 56);
  v28(&v3[v26], 1, 1, v27);
  v28(&v3[OBJC_IVAR___ICCloudSession_endDate], 1, 1, v27);
  v29 = &v3[OBJC_IVAR___ICCloudSession_unknownRecordType];
  *v29 = 0xD000000000000011;
  v29[1] = 0x80000002150E1D80;
  v30 = OBJC_IVAR___ICCloudSession_preferredLoggingOrder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2150C26D0;
  *(v31 + 32) = sub_2150A4AD0();
  *(v31 + 40) = v32;
  *(v31 + 48) = sub_2150A4AD0();
  *(v31 + 56) = v33;
  *(v31 + 64) = sub_2150A4AD0();
  *(v31 + 72) = v34;
  *(v31 + 80) = sub_2150A4AD0();
  *(v31 + 88) = v35;
  *(v31 + 96) = sub_2150A4AD0();
  *(v31 + 104) = v36;
  *(v31 + 112) = sub_2150A5750();
  *(v31 + 120) = v37;
  *&v3[v30] = v31;
  v38 = OBJC_IVAR___ICCloudSession____lazy_storage___sessionSignpostID;
  v39 = sub_2150A3E80();
  (*(*(v39 - 8) + 56))(&v3[v38], 1, 1, v39);
  *&v3[OBJC_IVAR___ICCloudSession_sessionSignpostState] = 0;
  *&v3[OBJC_IVAR___ICCloudSession_signpostIDForPhase] = v21;
  *&v3[OBJC_IVAR___ICCloudSession_signpostStateForPhase] = v21;
  v40 = &v3[OBJC_IVAR___ICCloudSession_sessionSignpostName];
  *v40 = "CloudSession";
  *(v40 + 1) = 12;
  v40[16] = 2;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  if (qword_280C245C0 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v12, qword_280C245C8);
  v42 = v51;
  (*(v51 + 16))(&v3[OBJC_IVAR___ICCloudSession_identifier], v20, v64);
  v43 = *(v13 + 16);
  v43(&v3[OBJC_IVAR___ICCloudSession_logger], v41, v12);
  v43(v54, v41, v12);
  v44 = v52;
  sub_2150A3E90();
  (*(v53 + 32))(&v3[OBJC_IVAR___ICCloudSession_signPoster], v44, v55);
  v45 = &v3[OBJC_IVAR___ICCloudSession_reason];
  v46 = v57;
  *v45 = v56;
  v45[1] = v46;
  v57 = sub_214D55670(0, &qword_280C24508, 0x277D85C78);
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_2150A5B20();

  v66 = 0xD00000000000001DLL;
  v67 = 0x80000002150E1DA0;
  v47 = sub_2150A3990();
  MEMORY[0x2160617E0](v47);

  sub_2150A4440();
  v66 = v23;
  sub_214F43DFC(&qword_280C24510, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC8, &qword_2150C3730);
  sub_214F43BCC(&unk_280C24530, &qword_27CA41DC8, &qword_2150C3730, MEMORY[0x277D83970]);
  sub_2150A5930();
  (*(v62 + 104))(v61, *MEMORY[0x277D85260], v63);
  v48 = sub_2150A55D0();
  (*(v42 + 8))(v20, v64);
  *&v3[OBJC_IVAR___ICCloudSession_queue] = v48;
  v49 = type metadata accessor for CloudSession(0);
  v65.receiver = v3;
  v65.super_class = v49;
  return objc_msgSendSuper2(&v65, sel_init);
}

uint64_t sub_214F33518(uint64_t a1, uint64_t a2)
{
  v5 = sub_2150A4400();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2150A4490();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___ICCloudSession_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_214F43E94;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F44018;
  aBlock[3] = &block_descriptor_402;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_2150A4440();
  v20 = MEMORY[0x277D84F90];
  sub_214F43DFC(&qword_280C24570, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28, &qword_2150C2960);
  sub_214F43BCC(&qword_280C24550, &unk_27CA41A28, &qword_2150C2960, MEMORY[0x277D83970]);
  sub_2150A5930();
  MEMORY[0x216062180](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

id sub_214F33818@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___ICCloudSession__error);
  *a1 = v2;
  return v2;
}

uint64_t sub_214F338B8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v11, v10, &qword_27CA41DD0, &unk_2150C2740);
  v12 = sub_2150A3960();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  result = sub_214F302D4(v10, &qword_27CA41DD0, &unk_2150C2740);
  if (v14 != 1)
  {
    v16 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(a1 + v16, v7, &qword_27CA41DD0, &unk_2150C2740);
    v17 = v13(v7, 1, v12);
    result = sub_214F302D4(v7, &qword_27CA41DD0, &unk_2150C2740);
    if (v17 == 1)
    {
      return v19(result);
    }
  }

  return result;
}

uint64_t sub_214F33A7C(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_2150A4400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A4490();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A4420();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_214D55670(0, &qword_280C24508, 0x277D85C78);
    (*(v13 + 104))(v16, *MEMORY[0x277D851C8], v12);
    v22 = sub_2150A55E0();
    (*(v13 + 8))(v16, v12);
    v19 = swift_allocObject();
    v19[2] = v23;
    v19[3] = a2;
    v19[4] = v18;
    aBlock[4] = sub_214F43B9C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F44018;
    aBlock[3] = &block_descriptor_287;
    v20 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_2150A4440();
    v26 = MEMORY[0x277D84F90];
    sub_214F43DFC(&qword_280C24570, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28, &qword_2150C2960);
    sub_214F43BCC(&qword_280C24550, &unk_27CA41A28, &qword_2150C2960, MEMORY[0x277D83970]);
    sub_2150A5930();
    v21 = v22;
    MEMORY[0x216062180](0, v11, v7, v20);
    _Block_release(v20);
    swift_unknownObjectRelease();

    (*(v4 + 8))(v7, v3);
    (*(v24 + 8))(v11, v25);
  }

  return result;
}

uint64_t sub_214F33E6C()
{
  v1 = *&v0[OBJC_IVAR___ICCloudSession_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_214F3FBC8;
  *(v3 + 24) = v2;
  v8[4] = sub_214F3FBD0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_214F34100;
  v8[3] = &block_descriptor_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F33FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v6, v5, &qword_27CA41DD0, &unk_2150C2740);
  v7 = sub_2150A3960();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_214F302D4(v5, &qword_27CA41DD0, &unk_2150C2740);
  if (v6 == 1)
  {
    sub_214F3428C();
  }
}

void sub_214F3428C()
{
  v1 = sub_2150A3A00();
  v95 = *(v1 - 8);
  v96 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v94 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2150A3E80();
  v90 = *(v91 - 8);
  v5 = MEMORY[0x28223BE20](v91, v4);
  v89 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v93 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v92 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v87 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v87 - v18;
  v20 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(&v0[v20], v19, &qword_27CA41DD0, &unk_2150C2740);
  v21 = sub_2150A3960();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v19, 1, v21);
  sub_214F302D4(v19, &qword_27CA41DD0, &unk_2150C2740);
  if (v24 == 1)
  {
    v25 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(&v0[v25], v16, &qword_27CA41DD0, &unk_2150C2740);
    LODWORD(v25) = v23(v16, 1, v21);
    sub_214F302D4(v16, &qword_27CA41DD0, &unk_2150C2740);
    if (v25 == 1)
    {
      v26 = v92;
      sub_2150A3950();
      (*(v22 + 56))(v26, 0, 1, v21);
      swift_beginAccess();
      sub_214F43C7C(v26, &v0[v20], &qword_27CA41DD0, &unk_2150C2740);
      swift_endAccess();
      v27 = *&v0[OBJC_IVAR___ICCloudSession_sessionSignpostName];
      v28 = v0[OBJC_IVAR___ICCloudSession_sessionSignpostName + 16];
      v29 = v93;
      sub_214F32AA0(v93);
      v30 = v0;
      v31 = sub_2150A3EA0();
      v32 = sub_2150A5610();
      if ((sub_2150A57D0() & 1) == 0)
      {

LABEL_16:
        v65 = v90;
        v66 = v91;
        (*(v90 + 16))(v89, v29, v91);
        sub_2150A3EF0();
        swift_allocObject();
        v67 = sub_2150A3EE0();
        (*(v65 + 8))(v29, v66);
        *&v30[OBJC_IVAR___ICCloudSession_sessionSignpostState] = v67;

        v68 = v30;
        v69 = sub_2150A3F10();
        v70 = sub_2150A5580();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v98 = v72;
          *v71 = 136315394;
          v73 = OBJC_IVAR___ICCloudSession_identifier;
          swift_beginAccess();
          v75 = v95;
          v74 = v96;
          v76 = v94;
          (*(v95 + 16))(v94, &v68[v73], v96);
          sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v77 = sub_2150A6100();
          v79 = v78;
          (*(v75 + 8))(v76, v74);
          v80 = sub_214F7723C(v77, v79, &v98);

          *(v71 + 4) = v80;
          *(v71 + 12) = 2080;
          v81 = &v68[OBJC_IVAR___ICCloudSession_reason];
          swift_beginAccess();
          v83 = *v81;
          v82 = v81[1];

          v84 = sub_214F7723C(v83, v82, &v98);

          *(v71 + 14) = v84;
          _os_log_impl(&dword_214D51000, v69, v70, "Session began %s %s", v71, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x216064AF0](v72, -1, -1);
          MEMORY[0x216064AF0](v71, -1, -1);
        }

        v85 = swift_allocObject();
        *(v85 + 16) = v68;
        v86 = v68;
        sub_214F33A7C(sub_214F43B8C, v85);

        return;
      }

      LODWORD(v92) = v32;
      if (v28)
      {
        if (!(v27 >> 32))
        {
          if ((v27 & 0xFFFFF800) == 0xD800)
          {
LABEL_23:
            __break(1u);
            return;
          }

          if (v27 >> 16 <= 0x10)
          {

            v88 = v99;
            goto LABEL_15;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {

        if (v27)
        {
          v88 = v27;
LABEL_15:
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v99[0] = v51;
          *v50 = 136315394;
          v52 = OBJC_IVAR___ICCloudSession_identifier;
          swift_beginAccess();
          v54 = v95;
          v53 = v96;
          v55 = v94;
          (*(v95 + 16))(v94, &v30[v52], v96);
          sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v56 = sub_2150A6100();
          v58 = v57;
          (*(v54 + 8))(v55, v53);
          v59 = sub_214F7723C(v56, v58, v99);

          *(v50 + 4) = v59;
          *(v50 + 12) = 2080;
          v60 = &v30[OBJC_IVAR___ICCloudSession_reason];
          swift_beginAccess();
          v62 = *v60;
          v61 = v60[1];

          v63 = sub_214F7723C(v62, v61, v99);

          *(v50 + 14) = v63;
          v64 = sub_2150A3E70();
          _os_signpost_emit_with_name_impl(&dword_214D51000, v31, v92, v64, v88, "Session began %s %s", v50, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x216064AF0](v51, -1, -1);
          MEMORY[0x216064AF0](v50, -1, -1);
          goto LABEL_16;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  v33 = v0;
  v34 = sub_2150A3F10();
  v35 = sub_2150A5560();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v97[0] = v37;
    *v36 = 136315394;
    v38 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v40 = v95;
    v39 = v96;
    v41 = v94;
    (*(v95 + 16))(v94, &v33[v38], v96);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v42 = sub_2150A6100();
    v44 = v43;
    (*(v40 + 8))(v41, v39);
    v45 = sub_214F7723C(v42, v44, v97);

    *(v36 + 4) = v45;
    *(v36 + 12) = 2080;
    v46 = &v33[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v48 = *v46;
    v47 = v46[1];

    v49 = sub_214F7723C(v48, v47, v97);

    *(v36 + 14) = v49;
    _os_log_impl(&dword_214D51000, v34, v35, "Session has already begun, but attempted to mark beginning again. session %s %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v37, -1, -1);
    MEMORY[0x216064AF0](v36, -1, -1);
  }
}

uint64_t sub_214F34D64(void *a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F3FBF8;
  *(v5 + 24) = v4;
  v11[4] = sub_214F43F50;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_214F34100;
  v11[3] = &block_descriptor_37;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F34F24(void *a1)
{
  v3 = sub_2150A3A00();
  v121 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v120 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2150A3EC0();
  v7 = *(v6 - 1);
  v118 = v6;
  v119 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A3E80();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v111 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v111 - v26;
  if (sub_214F426EC(a1))
  {
    v28 = OBJC_IVAR___ICCloudSession_startDate;
    swift_beginAccess();
    sub_214F43C14(v1 + v28, v20, &qword_27CA41DD0, &unk_2150C2740);
    v29 = sub_2150A3960();
    v30 = (*(*(v29 - 8) + 48))(v20, 1, v29);
    sub_214F302D4(v20, &qword_27CA41DD0, &unk_2150C2740);
    v31 = v1;
    v32 = sub_2150A3F10();
    if (v30 == 1)
    {
      v33 = sub_2150A5550();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = v3;
        v36 = swift_slowAlloc();
        v123 = v36;
        *v34 = 136315394;
        v37 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v39 = v120;
        v38 = v121;
        (*(v121 + 16))(v120, &v31[v37], v35);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v40 = sub_2150A6100();
        v42 = v41;
        (*(v38 + 8))(v39, v35);
        v43 = sub_214F7723C(v40, v42, &v123);

        *(v34 + 4) = v43;
        *(v34 + 12) = 2080;
        v44 = &v31[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v46 = *v44;
        v45 = v44[1];

        v47 = sub_214F7723C(v46, v45, &v123);

        *(v34 + 14) = v47;
        _os_log_impl(&dword_214D51000, v32, v33, "Ignoring session end for syncing disabled, we never started this session %s %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v36, -1, -1);
        v48 = v34;
LABEL_15:
        MEMORY[0x216064AF0](v48, -1, -1);
      }
    }

    else
    {
      v65 = sub_2150A5560();

      if (os_log_type_enabled(v32, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v122[0] = v67;
        *v66 = 136315138;
        v68 = &v31[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v70 = *v68;
        v69 = v68[1];

        v71 = sub_214F7723C(v70, v69, v122);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_214D51000, v32, v65, "Syncing is disabled, but this session was marked as started. %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x216064AF0](v67, -1, -1);
        v48 = v66;
        goto LABEL_15;
      }
    }

LABEL_16:

    return;
  }

  v116 = v15;
  v117 = a1;
  v113 = v12;
  v114 = v11;
  v115 = v3;
  v49 = OBJC_IVAR___ICCloudSession_endDate;
  swift_beginAccess();
  sub_214F43C14(v1 + v49, v27, &qword_27CA41DD0, &unk_2150C2740);
  v50 = sub_2150A3960();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 48))(v27, 1, v50);
  sub_214F302D4(v27, &qword_27CA41DD0, &unk_2150C2740);
  if (v52 != 1)
  {
    v72 = v1;
    v32 = sub_2150A3F10();
    v73 = sub_2150A5560();

    if (os_log_type_enabled(v32, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v123 = v75;
      *v74 = 136315394;
      v76 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v78 = v120;
      v77 = v121;
      v79 = v115;
      (*(v121 + 16))(v120, &v72[v76], v115);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v80 = sub_2150A6100();
      v82 = v81;
      (*(v77 + 8))(v78, v79);
      v83 = sub_214F7723C(v80, v82, &v123);

      *(v74 + 4) = v83;
      *(v74 + 12) = 2080;
      v84 = &v72[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v86 = *v84;
      v85 = v84[1];

      v87 = sub_214F7723C(v86, v85, &v123);

      *(v74 + 14) = v87;
      _os_log_impl(&dword_214D51000, v32, v73, "Session has already ended, but attempted to mark end again, session %s %s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v75, -1, -1);
      v48 = v74;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v53 = swift_allocObject();
  v54 = v117;
  *(v53 + 16) = v1;
  *(v53 + 24) = v54;
  v55 = v1;
  v56 = v54;
  sub_214F33518(sub_214F43EE4, v53);

  sub_2150A3950();
  (*(v51 + 56))(v24, 0, 1, v50);
  swift_beginAccess();
  sub_214F43C7C(v24, v1 + v49, &qword_27CA41DD0, &unk_2150C2740);
  swift_endAccess();
  if (!*&v55[OBJC_IVAR___ICCloudSession_sessionSignpostState])
  {
    goto LABEL_26;
  }

  v57 = *&v55[OBJC_IVAR___ICCloudSession_sessionSignpostName];
  v58 = v55[OBJC_IVAR___ICCloudSession_sessionSignpostName + 16];
  v59 = v55;

  v60 = sub_2150A3EA0();
  v61 = v116;
  sub_2150A3ED0();
  v112 = sub_2150A5600();
  if (sub_2150A57D0())
  {
    v62 = v59;
    if (v58)
    {
      v63 = v119;
      if (!(v57 >> 32))
      {
        v64 = v118;
        if ((v57 & 0xFFFFF800) == 0xD800)
        {
LABEL_31:
          __break(1u);
          return;
        }

        if (v57 >> 16 <= 0x10)
        {

          v57 = &v124;
          goto LABEL_22;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {

      v63 = v119;
      if (v57)
      {
        v64 = v118;
LABEL_22:

        sub_2150A3F00();

        v88 = (*(v63 + 11))(v10, v64);
        v89 = *MEMORY[0x277D85B00];
        v111 = v60;
        v119 = v57;
        if (v88 == v89)
        {
          v90 = 0;
          v118 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 1))(v10, v64);
          v118 = "Ended sync session %s %s";
          v90 = 2;
        }

        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v123 = v92;
        *v91 = v90;
        *(v91 + 1) = v90;
        *(v91 + 2) = 2080;
        v93 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v95 = v120;
        v94 = v121;
        v96 = v115;
        (*(v121 + 16))(v120, &v62[v93], v115);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v97 = sub_2150A6100();
        v99 = v98;
        (*(v94 + 8))(v95, v96);
        v100 = sub_214F7723C(v97, v99, &v123);

        *(v91 + 4) = v100;
        *(v91 + 12) = 2080;
        v101 = &v62[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v103 = *v101;
        v102 = v101[1];

        v104 = sub_214F7723C(v103, v102, &v123);

        *(v91 + 14) = v104;
        v105 = v116;
        v106 = sub_2150A3E70();
        v107 = v111;
        _os_signpost_emit_with_name_impl(&dword_214D51000, v111, v112, v106, v119, v118, v91, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v92, -1, -1);
        MEMORY[0x216064AF0](v91, -1, -1);

        (*(v113 + 8))(v105, v114);
        v54 = v117;
        goto LABEL_26;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  (*(v113 + 8))(v61, v114);
LABEL_26:
  sub_214F3BC9C();
  sub_214F3CFBC();
  v108 = swift_allocObject();
  *(v108 + 16) = v55;
  *(v108 + 24) = v54;
  v109 = v55;
  v110 = v54;
  sub_214F33A7C(sub_214F43B84, v108);
}

void sub_214F35BF0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    v5 = sub_2150A35C0();
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [a1 sessionDidEnd:a2 with:?];
}

uint64_t sub_214F35C60()
{
  v1 = *&v0[OBJC_IVAR___ICCloudSession_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_214F3FC20;
  *(v3 + 24) = v2;
  v8[4] = sub_214F43F50;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_214F34100;
  v8[3] = &block_descriptor_47;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F35F18()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v40[-v9];
  v11 = OBJC_IVAR___ICCloudSession__wasCancelled;
  if ((v0[OBJC_IVAR___ICCloudSession__wasCancelled] & 1) == 0)
  {
    v12 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(&v0[v12], v10, &qword_27CA41DD0, &unk_2150C2740);
    v13 = sub_2150A3960();
    LODWORD(v12) = (*(*(v13 - 8) + 48))(v10, 1, v13);
    sub_214F302D4(v10, &qword_27CA41DD0, &unk_2150C2740);
    v14 = v0;
    v15 = sub_2150A3F10();
    if (v12 == 1)
    {
      v16 = sub_2150A5550();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v42;
        *v17 = 136315394;
        v41 = v16;
        v18 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        (*(v3 + 16))(v6, &v14[v18], v2);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v19 = sub_2150A6100();
        v21 = v20;
        (*(v3 + 8))(v6, v2);
        v22 = sub_214F7723C(v19, v21, &v43);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2080;
        v23 = &v14[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v25 = *v23;
        v24 = v23[1];

        v26 = sub_214F7723C(v25, v24, &v43);

        *(v17 + 14) = v26;
        _os_log_impl(&dword_214D51000, v15, v41, "Marking session as cancelled  %s %s", v17, 0x16u);
        v27 = v42;
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v27, -1, -1);
        MEMORY[0x216064AF0](v17, -1, -1);
      }

      v1[v11] = 1;
      v15 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CBBF50] code:20 userInfo:0];
      sub_214F34F24(v15);
    }

    else
    {
      v28 = sub_2150A5560();

      if (os_log_type_enabled(v15, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v43 = v30;
        *v29 = 136315394;
        v31 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        (*(v3 + 16))(v6, &v14[v31], v2);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v32 = sub_2150A6100();
        v34 = v33;
        (*(v3 + 8))(v6, v2);
        v35 = sub_214F7723C(v32, v34, &v43);

        *(v29 + 4) = v35;
        *(v29 + 12) = 2080;
        v36 = &v14[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v38 = *v36;
        v37 = v36[1];

        v39 = sub_214F7723C(v38, v37, &v43);

        *(v29 + 14) = v39;
        _os_log_impl(&dword_214D51000, v15, v28, "Session has already ended, but attempted to mark end again. session %s %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v30, -1, -1);
        MEMORY[0x216064AF0](v29, -1, -1);
      }
    }
  }
}

uint64_t sub_214F364BC(unint64_t a1)
{
  v3 = sub_2150A3A00();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E08, &qword_2150C2958);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v50 - v8;
  v10 = sub_2150A3E80();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v50 - v17;
  sub_2150A3EA0();
  sub_2150A3E60();
  v59 = *(v11 + 16);
  v59(v9, v18, v10);
  v19 = *(v11 + 56);
  v58 = v10;
  v19(v9, 0, 1, v10);
  swift_beginAccess();
  sub_214F306C8(v9, a1);
  swift_endAccess();
  v60 = a1;
  if (a1 > 3)
  {
    v20 = "";
  }

  else
  {
    v20 = off_27819A810[a1];
  }

  v21 = v1;
  v22 = sub_2150A3EA0();
  v23 = sub_2150A5610();
  v24 = sub_2150A57D0();

  if (v24)
  {
    v54 = v15;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v61 = v26;
    v62 = 0;
    *v25 = 136315650;
    v63 = 0xE000000000000000;
    v52 = v20;
    v53 = v22;
    v51 = v23;
    v50 = v26;
    v27 = sub_2150A5B70();
    MEMORY[0x2160617E0](v27);

    v28 = sub_214F7723C(v62, v63, &v61);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v31 = v56;
    v30 = v57;
    v32 = &v21[v29];
    v33 = v55;
    (*(v56 + 16))(v55, v32, v57);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_2150A6100();
    v36 = v35;
    (*(v31 + 8))(v33, v30);
    v37 = sub_214F7723C(v34, v36, &v61);

    *(v25 + 14) = v37;
    *(v25 + 22) = 2080;
    v38 = &v21[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v40 = *v38;
    v39 = v38[1];

    v41 = sub_214F7723C(v40, v39, &v61);

    *(v25 + 24) = v41;
    v42 = sub_2150A3E70();
    v43 = v53;
    _os_signpost_emit_with_name_impl(&dword_214D51000, v53, v51, v42, v52, "Began sync phase %s for %s %s", v25, 0x20u);
    v44 = v50;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v44, -1, -1);
    MEMORY[0x216064AF0](v25, -1, -1);

    v15 = v54;
  }

  else
  {
  }

  v45 = v58;
  v59(v15, v18, v58);
  sub_2150A3EF0();
  swift_allocObject();
  v46 = sub_2150A3EE0();
  v47 = OBJC_IVAR___ICCloudSession_signpostStateForPhase;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *&v21[v47];
  *&v21[v47] = 0x8000000000000000;
  sub_214FEBD04(v46, v60, isUniquelyReferenced_nonNull_native);
  *&v21[v47] = v61;
  swift_endAccess();

  return (*(v11 + 8))(v18, v45);
}

void sub_214F36AB4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A3EC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2150A3E80();
  v75 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR___ICCloudSession_signpostStateForPhase;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (*(v18 + 16) && (v19 = sub_214FB1920(a1), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    v73 = v13;
    v74 = v21;
    v70 = v4;
    if (a1 > 3)
    {
      v22 = "";
    }

    else
    {
      v22 = off_27819A810[a1];
    }

    v72 = v22;
    v28 = v2;

    v29 = sub_2150A3EA0();
    sub_2150A3ED0();
    v71 = sub_2150A5600();
    if (sub_2150A57D0())
    {
      v69 = v29;

      v30 = v28;

      sub_2150A3F00();

      if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D85B00])
      {
        v31 = 0;
        v32 = 0;
        v33 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v12, v8);
        v33 = "Ended sync phase %s for %s %s";
        v32 = 2;
        v31 = 3;
      }

      v34 = v70;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v79 = v36;
      *v35 = v32;
      *(v35 + 1) = v31;
      *(v35 + 2) = 2080;
      v77 = 0;
      v78 = 0xE000000000000000;
      v67 = v36;
      v68 = v33;
      v51 = v75;
      v50 = v76;
      v52 = sub_2150A5B70();
      MEMORY[0x2160617E0](v52);

      v53 = sub_214F7723C(v77, v78, &v79);

      *(v35 + 4) = v53;
      *(v35 + 12) = 2080;
      v54 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      (*(v50 + 16))(v7, &v30[v54], v34);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = sub_2150A6100();
      v57 = v56;
      (*(v50 + 8))(v7, v34);
      v58 = sub_214F7723C(v55, v57, &v79);

      *(v35 + 14) = v58;
      *(v35 + 22) = 2080;
      v59 = &v30[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v61 = *v59;
      v60 = v59[1];

      v62 = sub_214F7723C(v61, v60, &v79);

      *(v35 + 24) = v62;
      v63 = sub_2150A3E70();
      v64 = v69;
      _os_signpost_emit_with_name_impl(&dword_214D51000, v69, v71, v63, v72, v68, v35, 0x20u);
      v65 = v67;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v65, -1, -1);
      MEMORY[0x216064AF0](v35, -1, -1);

      (*(v51 + 8))(v16, v73);
    }

    else
    {

      (*(v75 + 8))(v16, v73);
    }
  }

  else
  {
    v23 = v2;
    v24 = sub_2150A3F10();
    v25 = sub_2150A5560();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v79 = v27;
      *v26 = 136315650;
      v77 = 0;
      v78 = 0xE000000000000000;
      v75 = v27;
      v37 = sub_2150A5B70();
      MEMORY[0x2160617E0](v37);

      v38 = sub_214F7723C(v77, v78, &v79);

      *(v26 + 4) = v38;
      *(v26 + 12) = 2080;
      v39 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v40 = v76;
      (*(v76 + 16))(v7, &v23[v39], v4);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v41 = sub_2150A6100();
      v43 = v42;
      (*(v40 + 8))(v7, v4);
      v44 = sub_214F7723C(v41, v43, &v79);

      *(v26 + 14) = v44;
      *(v26 + 22) = 2080;
      v45 = &v23[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v47 = *v45;
      v46 = v45[1];

      v48 = sub_214F7723C(v47, v46, &v79);

      *(v26 + 24) = v48;
      _os_log_impl(&dword_214D51000, v24, v25, "Attempted to end phase that never began. phase = %s, session = %s %s", v26, 0x20u);
      v49 = v75;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v49, -1, -1);
      MEMORY[0x216064AF0](v26, -1, -1);
    }
  }
}

uint64_t sub_214F37320(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F3FC44;
  *(v5 + 24) = v4;
  v10[4] = sub_214F43F50;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_214F34100;
  v10[3] = &block_descriptor_57;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F37478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v8, v7, &qword_27CA41DD0, &unk_2150C2740);
  v9 = sub_2150A3960();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_214F302D4(v7, &qword_27CA41DD0, &unk_2150C2740);
  if (v8 != 1)
  {
    v10 = OBJC_IVAR___ICCloudSession__metrics;
    swift_beginAccess();
    if (!*(*(a1 + v10) + 16) || (sub_214FB1920(a2), (v11 & 1) == 0))
    {
      sub_214F37738(a2);
    }
  }
}

void sub_214F37738(int64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v66 - v6;
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  if (!*(*&v1[v13] + 16) || (sub_214FB1920(a1), (v14 & 1) == 0))
  {
    sub_214F364BC(a1);
    v21 = v1;
    v22 = sub_2150A3F10();
    v23 = sub_2150A5540();

    v24 = os_log_type_enabled(v22, v23);
    v70 = v7;
    if (!v24)
    {

      v27 = v21;
LABEL_18:
      type metadata accessor for CloudSession.PhaseMetrics(0);
      v43 = swift_allocObject();
      v44 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
      v45 = sub_2150A3960();
      v46 = *(*(v45 - 8) + 56);
      v46(v43 + v44, 1, 1, v45);
      v46(v43 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate, 1, 1, v45);
      v47 = MEMORY[0x277D84F90];
      *(v43 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors) = MEMORY[0x277D84F90];
      *(v43 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics) = v47;
      *(v43 + 16) = a1;
      v48 = v70;
      sub_2150A3950();
      v46(v48, 0, 1, v45);
      v49 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
      swift_beginAccess();
      sub_214F43C7C(v48, v43 + v49, &qword_27CA41DD0, &unk_2150C2740);
      swift_endAccess();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *&v2[v13];
      *&v2[v13] = 0x8000000000000000;
      sub_214FEBE80(v43, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v13] = v72;
      swift_endAccess();
      v51 = swift_allocObject();
      *(v51 + 16) = a1;
      *(v51 + 24) = v27;
      v52 = v27;
      sub_214F33A7C(sub_214F43B74, v51);

      return;
    }

    v68 = v23;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v72 = v26;
    v73 = 0;
    *v25 = 136315650;
    v74 = 0xE000000000000000;
    v69 = v22;
    v67 = v26;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v27 = v21;
        goto LABEL_17;
      }

      if (a1 == 3)
      {
        v27 = v21;
        goto LABEL_17;
      }
    }

    else
    {
      if (!a1)
      {
        v27 = v21;
        goto LABEL_17;
      }

      if (a1 == 1)
      {
        v27 = v21;
LABEL_17:
        v28 = sub_2150A5B70();
        MEMORY[0x2160617E0](v28);

        v29 = sub_214F7723C(v73, v74, &v72);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v30 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v31 = &v27[v30];
        v32 = v12;
        (*(v9 + 16))(v12, v31, v8);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v33 = sub_2150A6100();
        v35 = v34;
        (*(v9 + 8))(v32, v8);
        v36 = sub_214F7723C(v33, v35, &v72);

        *(v25 + 14) = v36;
        *(v25 + 22) = 2080;
        v37 = &v27[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v39 = *v37;
        v38 = v37[1];

        v40 = sub_214F7723C(v39, v38, &v72);

        *(v25 + 24) = v40;
        v41 = v69;
        _os_log_impl(&dword_214D51000, v69, v68, "Sync phase %s began for session %s %s", v25, 0x20u);
        v42 = v67;
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v42, -1, -1);
        MEMORY[0x216064AF0](v25, -1, -1);

        goto LABEL_18;
      }
    }

    v27 = v21;
    goto LABEL_17;
  }

  v15 = v8;
  v16 = v1;
  v17 = sub_2150A3F10();
  v18 = sub_2150A5560();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 136315650;
    v73 = 0;
    v74 = 0xE000000000000000;
    v70 = v20;
    v71[0] = v20;
    v53 = sub_2150A5B70();
    MEMORY[0x2160617E0](v53);

    v54 = sub_214F7723C(v73, v74, v71);

    *(v19 + 4) = v54;
    *(v19 + 12) = 2080;
    v55 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v56 = v12;
    (*(v9 + 16))(v12, &v16[v55], v15);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v57 = sub_2150A6100();
    v59 = v58;
    (*(v9 + 8))(v56, v15);
    v60 = sub_214F7723C(v57, v59, v71);

    *(v19 + 14) = v60;
    *(v19 + 22) = 2080;
    v61 = &v16[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v63 = *v61;
    v62 = v61[1];

    v64 = sub_214F7723C(v63, v62, v71);

    *(v19 + 24) = v64;
    _os_log_impl(&dword_214D51000, v17, v18, "Tried to start phase %s multiple times for session %s %s, ignoring", v19, 0x20u);
    v65 = v70;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v65, -1, -1);
    MEMORY[0x216064AF0](v19, -1, -1);
  }
}

uint64_t sub_214F37FAC(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  sub_214F33518(sub_214F3FC4C, v3);
}

void sub_214F380C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v98 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v93 - v14;
  v16 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  v17 = *&v1[v16];
  if (!*(v17 + 16) || (v18 = sub_214FB1920(a1), (v19 & 1) == 0))
  {
    v31 = v2;
    v32 = sub_2150A3F10();
    v33 = sub_2150A5560();

    if (!os_log_type_enabled(v32, v33))
    {
LABEL_20:

      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v99[0] = v35;
    *v34 = 136315650;
    v103 = 0;
    v104 = 0xE000000000000000;
    v97 = v35;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v36 = v5;
        goto LABEL_19;
      }

      if (a1 == 3)
      {
        v36 = v5;
        goto LABEL_19;
      }
    }

    else
    {
      if (!a1)
      {
        v36 = v5;
        goto LABEL_19;
      }

      if (a1 == 1)
      {
        v36 = v5;
LABEL_19:
        v43 = sub_2150A5B70();
        MEMORY[0x2160617E0](v43);

        v44 = sub_214F7723C(v103, v104, v99);

        *(v34 + 4) = v44;
        *(v34 + 12) = 2080;
        v45 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v46 = &v31[v45];
        v47 = v98;
        (*(v36 + 16))(v98, v46, v4);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v48 = sub_2150A6100();
        v50 = v49;
        (*(v36 + 8))(v47, v4);
        v51 = sub_214F7723C(v48, v50, v99);

        *(v34 + 14) = v51;
        *(v34 + 22) = 2080;
        v52 = &v31[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v54 = *v52;
        v53 = v52[1];

        v55 = sub_214F7723C(v54, v53, v99);

        *(v34 + 24) = v55;
        _os_log_impl(&dword_214D51000, v32, v33, "Phase %s marked as ended, but never marked as began for session %s %s", v34, 0x20u);
        v56 = v97;
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v56, -1, -1);
        MEMORY[0x216064AF0](v34, -1, -1);
        goto LABEL_20;
      }
    }

    v36 = v5;
    goto LABEL_19;
  }

  v96 = v4;
  v97 = a1;
  v95 = v5;
  v20 = *(*(v17 + 56) + 8 * v18);
  v21 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate;
  swift_beginAccess();
  sub_214F43C14(v20 + v21, v15, &qword_27CA41DD0, &unk_2150C2740);
  v22 = sub_2150A3960();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v15, 1, v22);

  sub_214F302D4(v15, &qword_27CA41DD0, &unk_2150C2740);
  if (v24 == 1)
  {
    sub_214F36AB4(v97);
    sub_2150A3950();
    (*(v23 + 56))(v12, 0, 1, v22);
    swift_beginAccess();
    sub_214F43C7C(v12, v20 + v21, &qword_27CA41DD0, &unk_2150C2740);
    swift_endAccess();

    v25 = v2;
    v26 = sub_2150A3F10();
    v27 = sub_2150A5540();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v100 = v29;
      v101 = 0;
      *v28 = 136315906;
      v102 = 0xE000000000000000;
      v93 = v29;
      v94 = v20;
      v30 = v96;
      v57 = sub_2150A5B70();
      MEMORY[0x2160617E0](v57);

      v58 = sub_214F7723C(v101, v102, &v100);

      *(v28 + 4) = v58;
      *(v28 + 12) = 2080;
      v59 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v60 = v95;
      v61 = &v25[v59];
      v62 = v98;
      (*(v95 + 16))(v98, v61, v30);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v63 = sub_2150A6100();
      v65 = v64;
      (*(v60 + 8))(v62, v30);
      v66 = sub_214F7723C(v63, v65, &v100);

      *(v28 + 14) = v66;
      *(v28 + 22) = 2080;
      v67 = &v25[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v69 = *v67;
      v68 = v67[1];

      v70 = sub_214F7723C(v69, v68, &v100);

      *(v28 + 24) = v70;
      *(v28 + 32) = 2080;

      v71 = sub_214F3ECBC(0, 0, 0);
      v73 = v72;

      v74 = sub_214F7723C(v71, v73, &v100);

      *(v28 + 34) = v74;
      _os_log_impl(&dword_214D51000, v26, v27, "Sync phase %s ended for session %s %s: %s", v28, 0x2Au);
      v75 = v93;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v75, -1, -1);
      MEMORY[0x216064AF0](v28, -1, -1);
    }

    v76 = swift_allocObject();
    *(v76 + 16) = v97;
    *(v76 + 24) = v25;
    v77 = v25;
    sub_214F33A7C(sub_214F43B64, v76);
  }

  else
  {
    v94 = v20;
    v37 = v2;
    v38 = sub_2150A3F10();
    v39 = sub_2150A5560();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v100 = v41;
      v101 = 0;
      *v40 = 136315650;
      v102 = 0xE000000000000000;
      v93 = v41;
      v42 = v96;
      v78 = sub_2150A5B70();
      MEMORY[0x2160617E0](v78);

      v79 = sub_214F7723C(v101, v102, &v100);

      *(v40 + 4) = v79;
      *(v40 + 12) = 2080;
      v80 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v81 = v95;
      v82 = &v37[v80];
      v83 = v98;
      (*(v95 + 16))(v98, v82, v42);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v84 = sub_2150A6100();
      v86 = v85;
      (*(v81 + 8))(v83, v42);
      v87 = sub_214F7723C(v84, v86, &v100);

      *(v40 + 14) = v87;
      *(v40 + 22) = 2080;
      v88 = &v37[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v90 = *v88;
      v89 = v88[1];

      v91 = sub_214F7723C(v90, v89, &v100);

      *(v40 + 24) = v91;
      _os_log_impl(&dword_214D51000, v38, v39, "Phase %s has already ended for session %s %s", v40, 0x20u);
      v92 = v93;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v92, -1, -1);
      MEMORY[0x216064AF0](v40, -1, -1);
    }
  }
}

uint64_t sub_214F38C3C(uint64_t a1, void *a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = v3;
  v9 = a2;
  v10 = a3;
  sub_214F33518(sub_214F3FC74, v7);
}

void sub_214F38DB0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  v14 = *&v3[v13];
  if (*(v14 + 16) && (v15 = sub_214FB1920(a1), (v16 & 1) != 0))
  {
    v62 = v9;
    v17 = *(*(v14 + 56) + 8 * v15);
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = v4;
    v18[4] = a2;
    v18[5] = a3;

    v19 = v4;
    v64 = a2;
    v20 = a3;
    sub_214F33A7C(sub_214F43B58, v18);

    if (a3)
    {
      v61 = v8;
      v21 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors;
      swift_beginAccess();
      v22 = *(v17 + v21);
      v23 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v17;
      *(v17 + v21) = v22;
      v26 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_21505F5F0(0, v22[2] + 1, 1, v22);
        *(v25 + v21) = v22;
      }

      v28 = v22[2];
      v27 = v22[3];
      if (v28 >= v27 >> 1)
      {
        v22 = sub_21505F5F0((v27 > 1), v28 + 1, 1, v22);
      }

      v22[2] = v28 + 1;
      v22[v28 + 4] = a3;
      *(v25 + v21) = v22;
      swift_endAccess();
      a2 = v26;
      v17 = v25;
      v8 = v61;
    }

    if (a2)
    {
      v29 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics;
      swift_beginAccess();
      v30 = v64;
      MEMORY[0x216061A60]();
      if (*((*(v17 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2150A4F10();
      }

      sub_2150A4F70();
      swift_endAccess();
    }

    v63 = a2;
    v31 = v19;
    v32 = v64;
    v33 = sub_2150A3F10();
    v34 = sub_2150A5550();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v68 = v37;
      *v35 = 136315906;
      v66 = 0;
      v67 = 0xE000000000000000;
      LODWORD(v64) = v34;
      v60 = v36;
      v61 = v37;
      v44 = sub_2150A5B70();
      MEMORY[0x2160617E0](v44);

      v45 = sub_214F7723C(v66, v67, &v68);

      *(v35 + 4) = v45;
      *(v35 + 12) = 2080;
      v46 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v47 = v62;
      (*(v62 + 16))(v12, &v31[v46], v8);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = sub_2150A6100();
      v50 = v49;
      (*(v47 + 8))(v12, v8);
      v51 = sub_214F7723C(v48, v50, &v68);

      *(v35 + 14) = v51;
      *(v35 + 22) = 2080;
      v52 = &v31[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v54 = *v52;
      v53 = v52[1];

      v55 = sub_214F7723C(v54, v53, &v68);

      *(v35 + 24) = v55;
      *(v35 + 32) = 2112;
      *(v35 + 34) = v32;
      v56 = v60;
      *v60 = v63;
      v57 = v32;
      _os_log_impl(&dword_214D51000, v33, v64, "Operation ended for phase %s for session %s %s: %@", v35, 0x2Au);
      sub_214F302D4(v56, &qword_27CA41DF0, &qword_2150C2940);
      MEMORY[0x216064AF0](v56, -1, -1);
      v58 = v61;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v58, -1, -1);
      MEMORY[0x216064AF0](v35, -1, -1);
    }
  }

  else
  {
    v38 = sub_2150A3F10();
    v39 = sub_2150A5560();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v65[0] = v41;
      *v40 = 136315138;
      v66 = 0;
      v67 = 0xE000000000000000;
      v42 = sub_2150A5B70();
      MEMORY[0x2160617E0](v42);

      v43 = sub_214F7723C(v66, v67, v65);

      *(v40 + 4) = v43;
      _os_log_impl(&dword_214D51000, v38, v39, "Operation ended, but phase never marked as began: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x216064AF0](v41, -1, -1);
      MEMORY[0x216064AF0](v40, -1, -1);
    }
  }
}

void sub_214F394FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = a1;
    v9 = sub_2150A35C0();
    a1 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [a1 operationEndedFor:a2 in:a3 metrics:a4 error:?];
}

uint64_t sub_214F39584(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___ICCloudSession_queue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_214F44014;
  *(v7 + 24) = v6;
  v12[4] = sub_214F43F50;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F34100;
  v12[3] = &block_descriptor_396;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F396F4(char *a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v89 = a2;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v85 = &v81 - v10;
  v91 = sub_2150A3A00();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v11);
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v93 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v94 = &v81 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v92 = &v81 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v97 = &v81 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v81 - v31;
  v33 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(&a1[v33], v32, &qword_27CA41DD0, &unk_2150C2740);
  v95 = v5;
  v34 = *(v5 + 48);
  v35 = v34(v32, 1, v4);
  sub_214F302D4(v32, &qword_27CA41DD0, &unk_2150C2740);
  if (v35 == 1 || (v36 = OBJC_IVAR___ICCloudSession_endDate, swift_beginAccess(), sub_214F43C14(&a1[v36], v29, &qword_27CA41DD0, &unk_2150C2740), LODWORD(v36) = v34(v29, 1, v4), sub_214F302D4(v29, &qword_27CA41DD0, &unk_2150C2740), v36 != 1))
  {
    v87 = v34;
    v84 = v4;
    v37 = a1;
    v38 = v96;

    v39 = sub_2150A3F10();
    v40 = sub_2150A5560();

    if (os_log_type_enabled(v39, v40))
    {
      v82 = v40;
      v83 = v39;
      v41 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v98 = v81;
      *v41 = 136316162;
      *(v41 + 4) = sub_214F7723C(v89, v38, &v98);
      *(v41 + 12) = 2080;
      v42 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v43 = v90;
      v44 = v88;
      v45 = v91;
      (*(v90 + 16))(v88, &v37[v42], v91);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = sub_2150A6100();
      v48 = v47;
      (*(v43 + 8))(v44, v45);
      v49 = sub_214F7723C(v46, v48, &v98);

      *(v41 + 14) = v49;
      *(v41 + 22) = 2080;
      v50 = &v37[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v52 = *v50;
      v51 = v50[1];

      v53 = sub_214F7723C(v52, v51, &v98);

      *(v41 + 24) = v53;
      *(v41 + 32) = 2080;
      v54 = &a1[v33];
      v55 = v97;
      sub_214F43C14(v54, v97, &qword_27CA41DD0, &unk_2150C2740);
      v56 = v55;
      v57 = v92;
      sub_214F43C14(v56, v92, &qword_27CA41DD0, &unk_2150C2740);
      v58 = v84;
      v59 = v87;
      if (v87(v57, 1, v84) == 1)
      {
        sub_214F302D4(v57, &qword_27CA41DD0, &unk_2150C2740);
        v60 = 0xE300000000000000;
        v61 = 7104878;
      }

      else
      {
        v62 = v85;
        (*(v95 + 32))(v85, v57, v58);
        if (qword_280C24840 != -1)
        {
          swift_once();
        }

        v63 = qword_280C24848;
        v64 = sub_2150A38F0();
        v65 = [v63 stringFromDate_];

        v61 = sub_2150A4AD0();
        v60 = v66;

        (*(v95 + 8))(v62, v58);
        v59 = v87;
      }

      sub_214F302D4(v97, &qword_27CA41DD0, &unk_2150C2740);
      v67 = sub_214F7723C(v61, v60, &v98);

      *(v41 + 34) = v67;
      *(v41 + 42) = 2080;
      v68 = OBJC_IVAR___ICCloudSession_endDate;
      swift_beginAccess();
      v69 = v94;
      sub_214F43C14(&v37[v68], v94, &qword_27CA41DD0, &unk_2150C2740);
      v70 = v93;
      sub_214F43C14(v69, v93, &qword_27CA41DD0, &unk_2150C2740);
      if (v59(v70, 1, v58) == 1)
      {
        sub_214F302D4(v70, &qword_27CA41DD0, &unk_2150C2740);
        v71 = 0xE300000000000000;
        v72 = 7104878;
      }

      else
      {
        v73 = v95;
        v74 = v86;
        (*(v95 + 32))(v86, v70, v58);
        if (qword_280C24840 != -1)
        {
          swift_once();
        }

        v75 = qword_280C24848;
        v76 = sub_2150A38F0();
        v77 = [v75 stringFromDate_];

        v72 = sub_2150A4AD0();
        v71 = v78;

        (*(v73 + 8))(v74, v58);
      }

      sub_214F302D4(v69, &qword_27CA41DD0, &unk_2150C2740);
      v79 = sub_214F7723C(v72, v71, &v98);

      *(v41 + 44) = v79;
      v39 = v83;
      _os_log_impl(&dword_214D51000, v83, v82, "Attempted call to %s while session is inactive. session = %s %s. start = %s, end = %s", v41, 0x34u);
      v80 = v81;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v80, -1, -1);
      MEMORY[0x216064AF0](v41, -1, -1);
    }
  }
}

uint64_t sub_214F3A018(void *a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = 0xD000000000000012;
  v4[4] = 0x80000002150E1DC0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F3FCA0;
  *(v5 + 24) = v4;
  v12[4] = sub_214F43F50;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F34100;
  v12[3] = &block_descriptor_73;
  v6 = _Block_copy(v12);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = a1;
    v10 = v7;
    v11 = a1;
    sub_214F33518(sub_214F3FCAC, v9);
  }

  return result;
}

uint64_t sub_214F3A1E4(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v5 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
  v6 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;

  v8 = a2;
  sub_2150685DC(inited);
  *v3 = v5;
  v3[1] = v4;
  v3[2] = v6;
}

uint64_t sub_214F3A380(void *a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = 0xD000000000000012;
  v4[4] = 0x80000002150E1DE0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F44014;
  *(v5 + 24) = v4;
  v12[4] = sub_214F43F50;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F34100;
  v12[3] = &block_descriptor_87;
  v6 = _Block_copy(v12);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = a1;
    v10 = v7;
    v11 = a1;
    sub_214F33518(sub_214F3FCB4, v9);
  }

  return result;
}

uint64_t sub_214F3A54C(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v5 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
  v6 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;

  v8 = a2;
  sub_2150685DC(inited);
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
}

uint64_t sub_214F3A6E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD00000000000001ELL;
  v8[4] = 0x80000002150E1E00;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_101;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FCBC, v13);
  }

  return result;
}

uint64_t sub_214F3A9CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1E20;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_115;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FCE4, v13);
  }

  return result;
}

uint64_t sub_214F3ACB0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1E50;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_129;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD0C, v13);
  }

  return result;
}

uint64_t sub_214F3AF94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1E80;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_143;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD34, v13);
  }

  return result;
}

uint64_t sub_214F3B17C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (a1 + *a5);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;
  v15 = v9;

  v13 = a2;
  sub_2150685F4(inited);
  *v8 = v15;
  v8[1] = v10;
  v8[2] = v11;

  return sub_214F3BB40(v13, a3, a4);
}

uint64_t sub_214F3B378(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000024;
  v8[4] = 0x80000002150E1EB0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_157;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD5C, v13);
  }

  return result;
}

uint64_t sub_214F3B560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (a1 + *a5);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;
  v15 = v10;

  v13 = a2;
  sub_2150685F4(inited);
  *v8 = v9;
  v8[1] = v15;
  v8[2] = v11;

  return sub_214F3BB40(v13, a3, a4);
}

uint64_t sub_214F3B75C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1EE0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_171;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD84, v13);
  }

  return result;
}

uint64_t sub_214F3B944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (a1 + *a5);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;
  v15 = v11;

  v13 = a2;
  sub_2150685F4(inited);
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v15;

  return sub_214F3BB40(v13, a3, a4);
}

uint64_t sub_214F3BB40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    a2 = *(v3 + OBJC_IVAR___ICCloudSession_unknownRecordType);
    v7 = *(v3 + OBJC_IVAR___ICCloudSession_unknownRecordType + 8);
  }

  v8 = OBJC_IVAR___ICCloudSession_recordTypesToIdentifiers;
  swift_beginAccess();
  v9 = *(v3 + v8);
  v10 = *(v9 + 16);

  if (v10 && (v11 = sub_214F30094(a2, v7), (v12 & 1) != 0))
  {
    v13 = *(*(v9 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v19 = v13;
  sub_214FBFC2C(v18, a1);

  v14 = v19;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_214FEC004(v14, a2, v7, isUniquelyReferenced_nonNull_native);

  *(v4 + v8) = v17;
  return swift_endAccess();
}

void sub_214F3BC9C()
{
  v1 = v0;
  v176 = sub_2150A3A00();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176, v2);
  v174 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v179 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v178 = (&v170 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v177 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v182 = (&v170 - v17);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v181 = &v170 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v170 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v192 = (&v170 - v27);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v170 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v191 = &v170 - v33;
  v34 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  if (*(*(v0 + v34) + 16) && (sub_214FB1920(0), (v35 & 1) != 0))
  {

    v36 = sub_214F3ECBC(0, 0, 0);
    v189 = v37;
  }

  else
  {
    v36 = 0;
    v189 = 0;
  }

  v38 = *(*(v0 + v34) + 16);
  v185 = v24;
  v184 = v31;
  if (v38 && (sub_214FB1920(1), (v39 & 1) != 0))
  {
    v40 = *(v0 + OBJC_IVAR___ICCloudSession_zoneChanges);
    v41 = *(v0 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
    v42 = *(v0 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);

    v188 = sub_214F3ECBC(v40, v41, v42);
    v187 = v43;
  }

  else
  {
    v188 = 0;
    v187 = 0;
  }

  v44 = *(*(v0 + v34) + 16);
  v186 = v5;
  if (v44 && (sub_214FB1920(2), (v45 & 1) != 0))
  {
    v47 = *(v0 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges);
    v46 = *(v0 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 8);
    v48 = *(v0 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 16);

    v49 = sub_214F3ECBC(v47, v46, v48);
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = *(*(v0 + v34) + 16);
  v190 = v4;
  if (v52 && (sub_214FB1920(3), (v53 & 1) != 0))
  {
    v54 = *(v0 + OBJC_IVAR___ICCloudSession_pushedRecordChanges);
    v55 = *(v0 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8);
    v183 = v0;
    v56 = v34;
    v57 = v36;
    v58 = *(v0 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16);

    v59 = sub_214F3ECBC(v54, v55, v58);
    v61 = v60;
    v36 = v57;
    v34 = v56;
    v1 = v183;

    v4 = v190;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v62 = 0;
  v63 = v195;
  v196 = v36;
  v197 = v189;
  v198 = v188;
  v199 = v187;
  v200 = v49;
  v201 = v51;
  v202 = v59;
  v203 = v61;
  v64 = 4;
  v65 = MEMORY[0x277D84F90];
LABEL_18:
  if (v62 <= 4)
  {
    v66 = 4;
  }

  else
  {
    v66 = v62;
  }

  v67 = v66 + 1;
  v68 = 16 * v62 + 40;
  while (v62 != 4)
  {
    if (v67 == ++v62)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_once();
      goto LABEL_33;
    }

    v69 = v68 + 16;
    v59 = *&v195[v68];
    v68 += 16;
    if (v59)
    {
      v70 = *(v195 + v69 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_21505F4D0(0, *(v65 + 2) + 1, 1, v65);
      }

      v72 = *(v65 + 2);
      v71 = *(v65 + 3);
      v49 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        v65 = sub_21505F4D0((v71 > 1), v72 + 1, 1, v65);
      }

      *(v65 + 2) = v49;
      v73 = &v65[16 * v72];
      *(v73 + 4) = v70;
      *(v73 + 5) = v59;
      v4 = v190;
      goto LABEL_18;
    }
  }

  v183 = 7104878;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0, &unk_2150C2DE0);
  swift_arrayDestroy();
  v194 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v173 = sub_2150A4A20();
  v188 = v74;

  v75 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  v180 = v75;
  v76 = &v1[v75];
  v77 = v191;
  sub_214F43C14(v76, v191, &qword_27CA41DD0, &unk_2150C2740);
  v78 = v184;
  sub_214F43C14(v77, v184, &qword_27CA41DD0, &unk_2150C2740);
  v79 = v186;
  v63 = (v186 + 48);
  v189 = *(v186 + 48);
  v64 = &unk_280C24000;
  if (v189(v78, 1, v4) == 1)
  {
    sub_214F302D4(v78, &qword_27CA41DD0, &unk_2150C2740);
    v187 = 0xE300000000000000;
    v184 = 7104878;
    goto LABEL_34;
  }

  v59 = v178;
  (*(v79 + 32))(v178, v78, v4);
  v49 = v79;
  if (qword_280C24840 != -1)
  {
    goto LABEL_79;
  }

LABEL_33:
  v80 = *(v64 + 2120);
  v81 = v64;
  v82 = v59;
  v83 = sub_2150A38F0();
  v84 = [v80 stringFromDate_];

  v184 = sub_2150A4AD0();
  v187 = v85;

  v86 = v82;
  v64 = v81;
  (*(v49 + 8))(v86, v4);
  v79 = v49;
LABEL_34:
  v59 = &qword_27CA41DD0;
  sub_214F302D4(v191, &qword_27CA41DD0, &unk_2150C2740);
  v87 = OBJC_IVAR___ICCloudSession_endDate;
  swift_beginAccess();
  v186 = v87;
  v88 = &v1[v87];
  v89 = v192;
  sub_214F43C14(v88, v192, &qword_27CA41DD0, &unk_2150C2740);
  v90 = v89;
  v49 = v185;
  sub_214F43C14(v90, v185, &qword_27CA41DD0, &unk_2150C2740);
  v91 = v189(v49, 1, v4);
  v172 = v63;
  if (v91 == 1)
  {
    sub_214F302D4(v49, &qword_27CA41DD0, &unk_2150C2740);
    v191 = 0xE300000000000000;
  }

  else
  {
    v92 = v179;
    (*(v79 + 32))(v179, v49, v4);
    v93 = v79;
    if (qword_280C24840 != -1)
    {
      swift_once();
    }

    v94 = *(v64 + 2120);
    v95 = v92;
    v59 = sub_2150A38F0();
    v96 = [v94 stringFromDate_];

    v183 = sub_2150A4AD0();
    v191 = v97;

    v98 = *(v93 + 8);
    v49 = v93 + 8;
    v98(v95, v4);
  }

  sub_214F302D4(v192, &qword_27CA41DD0, &unk_2150C2740);
  v99 = *&v1[v34];
  v63 = (v99 + 64);
  v100 = 1 << *(v99 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & *(v99 + 64);
  v64 = (v100 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v4 = 0;
  v103 = 0;
  do
  {
    if (!v102)
    {
      while (1)
      {
        v104 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v104 >= v64)
        {
          goto LABEL_51;
        }

        v102 = *&v63[8 * v104];
        ++v4;
        if (v102)
        {
          v4 = v104;
          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_77;
    }

    v104 = v4;
LABEL_48:
    v105 = __clz(__rbit64(v102));
    v102 &= v102 - 1;
    v59 = *(*(v99 + 56) + ((v104 << 9) | (8 * v105)));

    v49 = sub_214F3E884();

    v106 = __OFADD__(v103, v49);
    v103 += v49;
  }

  while (!v106);
  __break(1u);
LABEL_51:

  v49 = *&v1[v34];
  v63 = (v49 + 64);
  v107 = 1 << *(v49 + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  v34 = v108 & *(v49 + 64);
  v109 = (v107 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v4 = 0;
  v110 = 0;
  do
  {
    if (!v34)
    {
      while (1)
      {
        v111 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_78;
        }

        if (v111 >= v109)
        {
          goto LABEL_63;
        }

        v34 = *&v63[8 * v111];
        ++v4;
        if (v34)
        {
          v4 = v111;
          goto LABEL_60;
        }
      }
    }

    v111 = v4;
LABEL_60:
    v112 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v59 = *(*(v49 + 56) + ((v111 << 9) | (8 * v112)));

    v64 = sub_214F3E890();

    v106 = __OFADD__(v110, v64);
    v110 += v64;
  }

  while (!v106);
  __break(1u);
LABEL_63:

  v113 = objc_opt_self();
  v114 = [v113 stringFromByteCount:v103 countStyle:3];
  v185 = sub_2150A4AD0();
  v116 = v115;

  v117 = [v113 stringFromByteCount:v110 countStyle:3];
  v179 = sub_2150A4AD0();
  v119 = v118;

  v120 = v181;
  sub_214F43C14(&v1[v180], v181, &qword_27CA41DD0, &unk_2150C2740);
  v121 = v182;
  sub_214F43C14(&v1[v186], v182, &qword_27CA41DD0, &unk_2150C2740);
  v180 = sub_214F42438(v120, v121);
  v123 = v122;
  sub_214F302D4(v121, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F302D4(v120, &qword_27CA41DD0, &unk_2150C2740);
  v124 = v1;

  v125 = sub_2150A3F10();
  v126 = sub_2150A5580();

  if (!os_log_type_enabled(v125, v126))
  {

    return;
  }

  v171 = v116;
  LODWORD(v181) = v126;
  v182 = v125;
  v127 = swift_slowAlloc();
  v192 = swift_slowAlloc();
  v178 = swift_slowAlloc();
  v193 = v178;
  *v127 = 136449026;
  v128 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v129 = v175;
  v130 = &v124[v128];
  v131 = v174;
  v132 = v176;
  (*(v175 + 16))(v174, v130, v176);
  sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v133 = sub_2150A6100();
  v135 = v134;
  (*(v129 + 8))(v131, v132);
  v136 = sub_214F7723C(v133, v135, &v193);

  *(v127 + 4) = v136;
  *(v127 + 12) = 2082;
  v137 = &v124[OBJC_IVAR___ICCloudSession_reason];
  swift_beginAccess();
  v139 = *v137;
  v138 = v137[1];

  v140 = sub_214F7723C(v139, v138, &v193);

  *(v127 + 14) = v140;
  *(v127 + 22) = 2082;
  v141 = sub_214F7723C(v180, v123, &v193);

  *(v127 + 24) = v141;
  *(v127 + 32) = 2114;
  v142 = OBJC_IVAR___ICCloudSession__error;
  v143 = *&v124[OBJC_IVAR___ICCloudSession__error];
  if (v143)
  {
    v144 = v143;
    v145 = _swift_stdlib_bridgeErrorToNSError();
    v146 = v145;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  *(v127 + 34) = v145;
  *v192 = v146;
  *(v127 + 42) = 1024;
  v147 = OBJC_IVAR___ICCloudSession__wasCancelled;
  v148 = v124[OBJC_IVAR___ICCloudSession__wasCancelled];

  *(v127 + 44) = v148;
  *(v127 + 48) = 2082;
  v149 = sub_214F7723C(v185, v171, &v193);

  *(v127 + 50) = v149;
  *(v127 + 58) = 2082;
  v150 = sub_214F7723C(v179, v119, &v193);

  *(v127 + 60) = v150;
  *(v127 + 68) = 1024;
  v151 = v177;
  sub_214F43C14(&v1[v186], v177, &qword_27CA41DD0, &unk_2150C2740);
  v152 = v189(v151, 1, v190);
  sub_214F302D4(v151, &qword_27CA41DD0, &unk_2150C2740);
  if (v152 == 1 || *&v124[v142] || (v124[OBJC_IVAR___ICCloudSession__hasCompletedInitialSync] & 1) != 0)
  {

    v153 = v188;
    v154 = v187;
    v155 = v181;
  }

  else
  {
    v169 = v124[v147];

    v153 = v188;
    v154 = v187;
    v155 = v181;
    if ((v169 & 1) == 0)
    {
      v156 = 1;
      goto LABEL_73;
    }
  }

  v156 = 0;
LABEL_73:
  v157 = v191;
  *(v127 + 70) = v156;

  *(v127 + 74) = 1024;
  v158 = v124[OBJC_IVAR___ICCloudSession__hasCompletedInitialSync];

  *(v127 + 76) = v158;
  *(v127 + 80) = 2082;
  v159 = sub_214F7723C(v184, v154, &v193);

  *(v127 + 82) = v159;
  *(v127 + 90) = 2082;
  v160 = sub_214F7723C(v183, v157, &v193);

  *(v127 + 92) = v160;
  *(v127 + 100) = 2082;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_2150C25D0;
  *(v161 + 32) = v173;
  *(v161 + 40) = v153;
  v162 = MEMORY[0x216061AA0]();
  v164 = v163;

  v165 = sub_214F7723C(v162, v164, &v193);

  *(v127 + 102) = v165;
  v166 = v182;
  _os_log_impl(&dword_214D51000, v182, v155, "Session completed %{public}s %{public}s, duration: %{public}s, error: %{public}@, cancelled?: %{BOOL}d, downloaded: %{public}s, uploaded: %{public}s, sessionCompletedInitialSync?: %{BOOL}d hasCompletedInitialSync?: %{BOOL}d, start: %{public}s, end: %{public}s, %{public}s", v127, 0x6Eu);
  v167 = v192;
  sub_214F302D4(v192, &qword_27CA41DF0, &qword_2150C2940);
  MEMORY[0x216064AF0](v167, -1, -1);
  v168 = v178;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v168, -1, -1);
  MEMORY[0x216064AF0](v127, -1, -1);
}

uint64_t sub_214F3CFBC()
{
  v1 = v0;
  v71 = sub_2150A3A00();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v2);
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = OBJC_IVAR___ICCloudSession_recordTypesToIdentifiers;
  swift_beginAccess();
  v6 = *&v0[v5];
  v7 = *(v6 + 16);
  v72 = v4;
  if (v7)
  {
    v8 = sub_214F40C44(v7, 0);
    v68 = sub_214F41F78(&v74, v8 + 4, v7, v6);
    v9 = v74;
    swift_bridgeObjectRetain_n();

    v10 = v1;
    sub_214F420F4(v9);
    if (v68 != v7)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v4 = v72;
  }

  else
  {

    v11 = v1;

    v8 = MEMORY[0x277D84F90];
  }

  v74 = v8;

  sub_214F437CC(&v74, sub_214F40DE0, v4);

  v12 = v74;
  v13 = sub_215067B5C(v74);
  v14 = *&v1[OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 8];
  v15 = *&v1[OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 16];
  v74 = *&v1[OBJC_IVAR___ICCloudSession_fetchedRecordChanges];
  v75 = v14;
  v76 = v15;

  v16 = sub_214F43880(v13, &v74);
  v18 = v17;

  v19 = sub_215067B5C(v12);

  v20 = *&v1[OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8];
  v21 = *&v1[OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16];
  v74 = *&v1[OBJC_IVAR___ICCloudSession_pushedRecordChanges];
  v75 = v20;
  v76 = v21;

  v66 = sub_214F43880(v19, &v74);
  v23 = v22;

  v24 = OBJC_IVAR___ICCloudSession_logger;
  v25 = v1;

  v67 = v24;
  v26 = sub_2150A3F10();
  LODWORD(v24) = sub_2150A5540();

  v65 = v24;
  v27 = os_log_type_enabled(v26, v24);
  v68 = v23;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v63 = v16;
    v29 = v28;
    v64 = swift_slowAlloc();
    v74 = v64;
    *v29 = 136446722;
    v30 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v31 = v70;
    v32 = v69;
    v33 = v71;
    (*(v70 + 16))(v69, &v25[v30], v71);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_2150A6100();
    v36 = v35;
    (*(v31 + 8))(v32, v33);
    v37 = sub_214F7723C(v34, v36, &v74);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v38 = &v25[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v40 = *v38;
    v39 = v38[1];

    v41 = sub_214F7723C(v40, v39, &v74);

    *(v29 + 14) = v41;
    *(v29 + 22) = 2082;
    v42 = sub_214F7723C(v63, v18, &v74);

    *(v29 + 24) = v42;
    _os_log_impl(&dword_214D51000, v26, v65, "Session %{public}s %{public}s fetched changes: %{public}s", v29, 0x20u);
    v43 = v64;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v43, -1, -1);
    MEMORY[0x216064AF0](v29, -1, -1);
  }

  else
  {
  }

  v44 = v25;

  v45 = sub_2150A3F10();
  v46 = sub_2150A5540();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v73[0] = v48;
    *v47 = 136446722;
    v49 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v50 = v70;
    v51 = v69;
    v52 = v71;
    (*(v70 + 16))(v69, &v44[v49], v71);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v53 = sub_2150A6100();
    v55 = v54;
    (*(v50 + 8))(v51, v52);
    v56 = sub_214F7723C(v53, v55, v73);

    *(v47 + 4) = v56;
    *(v47 + 12) = 2082;
    v57 = &v44[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v59 = *v57;
    v58 = v57[1];

    v60 = sub_214F7723C(v59, v58, v73);

    *(v47 + 14) = v60;
    *(v47 + 22) = 2082;
    v61 = sub_214F7723C(v66, v68, v73);

    *(v47 + 24) = v61;
    _os_log_impl(&dword_214D51000, v45, v46, "Session %{public}s %{public}s pushed changes: %{public}s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v48, -1, -1);
    MEMORY[0x216064AF0](v47, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_214F3D798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + OBJC_IVAR___ICCloudSession_preferredLoggingOrder);
  v10 = *(v9 + 16);
  v11 = v10 == 0;
  v12 = 0;
  if (v10)
  {
    v13 = (v9 + 40);
    while (1)
    {
      v14 = *(v13 - 1) == a1 && *v13 == a2;
      if (v14 || (sub_2150A6270() & 1) != 0)
      {
        break;
      }

      ++v12;
      v13 += 2;
      v11 = v10 == v12;
      if (v10 == v12)
      {
        v12 = 0;
        break;
      }
    }
  }

  v15 = v10 == 0;
  if (v10)
  {
    v16 = 0;
    v17 = (v9 + 40);
    while (1)
    {
      v18 = *(v17 - 1) == a3 && *v17 == a4;
      if (v18 || (sub_2150A6270() & 1) != 0)
      {
        break;
      }

      ++v16;
      v17 += 2;
      v15 = v10 == v16;
      if (v10 == v16)
      {
        goto LABEL_18;
      }
    }

    if (v11)
    {
      return 0;
    }

    return v15 || v12 < v16;
  }

LABEL_18:
  if (!v11)
  {
    v16 = 0;
    return v15 || v12 < v16;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  return sub_2150A6270();
}

uint64_t sub_214F3D904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v53 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v4, 0);
    v7 = v53;
    v8 = a1 + 40;
    do
    {
      v9 = sub_2150A4A90();
      v10 = [v9 ic_loggingDescription];
      v11 = sub_2150A4AD0();
      v13 = v12;

      v15 = *(v53 + 16);
      v14 = *(v53 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_214F86A20((v14 > 1), v15 + 1, 1);
      }

      *(v53 + 16) = v15 + 1;
      v16 = v53 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += 16;
      --v4;
    }

    while (v4);
    v17 = a2;
    v18 = *(a2 + 16);
    if (!v18)
    {
      v19 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

LABEL_10:
    sub_214F86A20(0, v18, 0);
    v19 = v5;
    v20 = v17 + 40;
    do
    {
      v21 = sub_2150A4A90();
      v22 = [v21 ic_loggingDescription];
      v23 = sub_2150A4AD0();
      v25 = v24;

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_214F86A20((v26 > 1), v27 + 1, 1);
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 16;
      --v18;
    }

    while (v18);
    goto LABEL_17;
  }

  v17 = a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
LABEL_17:
  v29 = *(a3 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v54 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v29, 0);
    v31 = v54;
    v32 = a3 + 40;
    do
    {
      v33 = sub_2150A4A90();
      v34 = [v33 ic_loggingDescription];
      v35 = sub_2150A4AD0();
      v37 = v36;

      v39 = *(v54 + 16);
      v38 = *(v54 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_214F86A20((v38 > 1), v39 + 1, 1);
      }

      *(v54 + 16) = v39 + 1;
      v40 = v54 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v32 += 16;
      --v29;
    }

    while (v29);
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v60 = 0x6465646441;
  v61 = 0xE500000000000000;
  v62[0] = v7;
  v62[1] = 0x6465696669646F4DLL;
  v62[2] = 0xE800000000000000;
  v62[3] = v19;
  v62[4] = 0x646574656C6544;
  v62[5] = 0xE700000000000000;
  v62[6] = v31;
  v58 = v30;
  sub_214F86A20(0, 3, 0);
  v41 = 0;
  v42 = MEMORY[0x277D837D0];
  do
  {
    v43 = v62[v41];
    v55 = *&v59[v41 * 8 + 32];
    v57 = v62[v41 - 1];
    swift_bridgeObjectRetain_n();

    MEMORY[0x2160617E0](8250, 0xE200000000000000);
    v44 = MEMORY[0x216061AA0](v43, v42);
    MEMORY[0x2160617E0](v44);

    v46 = *(v58 + 16);
    v45 = *(v58 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_214F86A20((v45 > 1), v46 + 1, 1);
    }

    *(v58 + 16) = v46 + 1;
    v47 = v58 + 16 * v46;
    *(v47 + 32) = v55;
    *(v47 + 40) = v57;
    v41 += 3;
  }

  while (v41 != 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA425A0, &qword_2150C2918);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v48 = sub_2150A4A20();
  v50 = v49;

  v56 = sub_214F3F8A0();
  MEMORY[0x2160617E0](2108704, 0xE300000000000000);
  MEMORY[0x2160617E0](v48, v50);

  return v56;
}

id CloudSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_214F3DE84(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ICCloudSessionPhase.description.getter(uint64_t a1)
{
  v1 = sub_2150A5B70();
  MEMORY[0x2160617E0](v1);

  return 0;
}

uint64_t sub_214F3E1FC()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F3E270()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F3E2D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  sub_214F43C14(a1, &v15 - v10, &qword_27CA41DD0, &unk_2150C2740);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  sub_214F43C7C(v11, v12 + v13, &qword_27CA41DD0, &unk_2150C2740);
  return swift_endAccess();
}

uint64_t sub_214F3E3BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_214F43C14(v2 + v4, a2, &qword_27CA41DD0, &unk_2150C2740);
}

uint64_t sub_214F3E420()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v24 - v7;
  v9 = sub_2150A3960();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
  swift_beginAccess();
  sub_214F43C14(v0 + v18, v8, &qword_27CA41DD0, &unk_2150C2740);
  v19 = *(v10 + 48);
  if (v19(v8, 1, v9) == 1)
  {
    v20 = v8;
    return sub_214F302D4(v20, &qword_27CA41DD0, &unk_2150C2740);
  }

  v25 = *(v10 + 32);
  v25(v17, v8, v9);
  v21 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate;
  swift_beginAccess();
  sub_214F43C14(v0 + v21, v5, &qword_27CA41DD0, &unk_2150C2740);
  if (v19(v5, 1, v9) == 1)
  {
    (*(v10 + 8))(v17, v9);
    v20 = v5;
    return sub_214F302D4(v20, &qword_27CA41DD0, &unk_2150C2740);
  }

  v25(v14, v5, v9);
  sub_2150A3870();
  v23 = *(v10 + 8);
  v23(v14, v9);
  return (v23)(v17, v9);
}

id sub_214F3E708()
{
  v1 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    return 0;
  }

  v2 = objc_opt_self();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  v3 = sub_2150A4EB0();

  v4 = [v2 errorFromErrors_];

  return v4;
}

uint64_t sub_214F3E7D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

char *sub_214F3E89C(SEL *a1)
{
  v3 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_2150A59D0();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x216062780](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v4 + 8 * v6 + 32);
    }

    v12 = v11;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = [v11 cloudKitMetrics];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 *a1];

      v16 = &v15[v7];
      if (__OFADD__(v7, v15))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = v7;
    }

    v17 = [v12 MMCSMetrics];
    if (v17)
    {
      v8 = v17;
      v9 = [v17 *a1];
    }

    else
    {
      v9 = 0;
    }

    ++v6;
    v10 = __OFADD__(v16, v9);
    v7 = &v9[v16];
    if (v10)
    {
      goto LABEL_23;
    }
  }

  return v7;
}

BOOL sub_214F3EA2C()
{
  v1 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_2150A59D0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {

      return v3 != v5;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216062780](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v6 cloudKitMetrics];
    if (v8)
    {
      break;
    }

    v9 = [v7 MMCSMetrics];

    v4 = v5 + 1;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  v9 = v8;

LABEL_15:

  return v3 != v5;
}

uint64_t sub_214F3EBB0(uint64_t (*a1)(void))
{
  if (!sub_214F3EA2C())
  {
    return 0;
  }

  v2 = a1();
  v3 = [objc_opt_self() stringFromByteCount:v2 countStyle:3];
  v4 = sub_2150A4AD0();

  return v4;
}

char *sub_214F3EC3C()
{
  v0 = sub_214F3E884();
  result = sub_214F3E890();
  if (!__OFADD__(v0, result))
  {
    return sub_214F3E420();
  }

  __break(1u);
  return result;
}

char *sub_214F3ECBC(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v104 = sub_2150A3960();
  v106 = *(v104 - 8);
  v9 = MEMORY[0x28223BE20](v104, v8);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v99 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v102 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v103 = &v99 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v99 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v105 = &v99 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v99 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v99 - v33;
  v110 = 0x7972616D6D7573;
  v111 = 0xE700000000000000;
  v100 = v11;
  if (a1)
  {
    v35 = sub_214F3F72C(a1, a2, a3);
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v112 = v35;
  v113 = v36;
  v114 = 0x6E6F697461727564;
  v115 = 0xE800000000000000;
  v37 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
  swift_beginAccess();
  sub_214F43C14(v4 + v37, v34, &qword_27CA41DD0, &unk_2150C2740);
  v38 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate;
  swift_beginAccess();
  v101 = v38;
  sub_214F43C14(v4 + v38, v31, &qword_27CA41DD0, &unk_2150C2740);
  v39 = sub_214F42438(v34, v31);
  v41 = v40;
  sub_214F302D4(v31, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F302D4(v34, &qword_27CA41DD0, &unk_2150C2740);
  v116 = v39;
  v117 = v41;
  v118 = 0x64616F6C6E776F64;
  v119 = 0xEA00000000006465;
  v42 = 0;
  v43 = 0;
  if (sub_214F3EA2C())
  {
    v44 = sub_214F3E884();
    v45 = [objc_opt_self() stringFromByteCount:v44 countStyle:3];
    v42 = sub_2150A4AD0();
    v43 = v46;
  }

  v120 = v42;
  v121 = v43;
  v122 = 0x646564616F6C7075;
  v123 = 0xE800000000000000;
  if (sub_214F3EA2C())
  {
    v47 = sub_214F3E890();
    v48 = [objc_opt_self() stringFromByteCount:v47 countStyle:3];
    v49 = sub_2150A4AD0();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v124 = v49;
  v125 = v51;
  v126 = 0x726F727265;
  v127 = 0xE500000000000000;
  v52 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors;
  swift_beginAccess();
  if (*(*(v4 + v52) + 16) && (v53 = objc_opt_self(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90), v54 = sub_2150A4EB0(), , v55 = [v53 errorFromErrors_], v54, v55))
  {
    swift_getErrorValue();
    v56 = sub_2150A6440();
    v58 = v57;
  }

  else
  {
    v58 = 0xE300000000000000;
    v56 = 7104878;
  }

  v128 = v56;
  v129 = v58;
  v130 = 0x7472617473;
  v131 = 0xE500000000000000;
  v59 = v105;
  sub_214F43C14(v4 + v37, v105, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F43C14(v59, v24, &qword_27CA41DD0, &unk_2150C2740);
  v60 = v106;
  v61 = *(v106 + 48);
  v62 = v104;
  if ((v61)(v24, 1, v104) == 1)
  {
    sub_214F302D4(v24, &qword_27CA41DD0, &unk_2150C2740);
    sub_214F302D4(v59, &qword_27CA41DD0, &unk_2150C2740);
    v63 = 0xE300000000000000;
    v64 = 7104878;
  }

  else
  {
    v65 = v99;
    (*(v60 + 32))(v99, v24, v62);
    v66 = v62;
    if (qword_280C24840 != -1)
    {
LABEL_37:
      swift_once();
    }

    v67 = qword_280C24848;
    v68 = v65;
    v69 = sub_2150A38F0();
    v70 = [v67 stringFromDate_];

    v64 = sub_2150A4AD0();
    v63 = v71;

    (*(v106 + 8))(v68, v66);
    sub_214F302D4(v105, &qword_27CA41DD0, &unk_2150C2740);
    v62 = v66;
  }

  v132 = v64;
  v133 = v63;
  v134 = 6581861;
  v135 = 0xE300000000000000;
  v72 = v103;
  sub_214F43C14(v4 + v101, v103, &qword_27CA41DD0, &unk_2150C2740);
  v73 = v102;
  sub_214F43C14(v72, v102, &qword_27CA41DD0, &unk_2150C2740);
  if ((v61)(v73, 1, v62) == 1)
  {
    sub_214F302D4(v73, &qword_27CA41DD0, &unk_2150C2740);
    sub_214F302D4(v72, &qword_27CA41DD0, &unk_2150C2740);
    v65 = 0xE300000000000000;
    v74 = 7104878;
  }

  else
  {
    v75 = v106;
    v76 = v100;
    (*(v106 + 32))(v100, v73, v62);
    if (qword_280C24840 != -1)
    {
      swift_once();
    }

    v77 = qword_280C24848;
    v78 = sub_2150A38F0();
    v79 = [v77 stringFromDate_];

    v74 = sub_2150A4AD0();
    v65 = v80;

    (*(v75 + 8))(v76, v62);
    sub_214F302D4(v72, &qword_27CA41DD0, &unk_2150C2740);
  }

  v61 = 0;
  v136 = v74;
  v137 = v65;
  v66 = 7;
  v81 = MEMORY[0x277D84F90];
LABEL_23:
  if (v61 <= 7)
  {
    v82 = 7;
  }

  else
  {
    v82 = v61;
  }

  v83 = v82 + 1;
  v84 = &v109[2 * v61];
  while (v61 != 7)
  {
    if (v83 == ++v61)
    {
      __break(1u);
      goto LABEL_37;
    }

    v85 = (v84 + 2);
    v86 = *(v84 + 7);
    v84 += 2;
    if (v86)
    {
      v88 = v85[1];
      v87 = v85[2];
      v107 = *v85;
      v108 = v88;
      swift_bridgeObjectRetain_n();

      MEMORY[0x2160617E0](2112800, 0xE300000000000000);
      MEMORY[0x2160617E0](v87, v86);

      v89 = v107;
      v90 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_21505F4D0(0, *(v81 + 2) + 1, 1, v81);
      }

      v92 = *(v81 + 2);
      v91 = *(v81 + 3);
      v65 = v92 + 1;
      if (v92 >= v91 >> 1)
      {
        v81 = sub_21505F4D0((v91 > 1), v92 + 1, 1, v81);
      }

      *(v81 + 2) = v65;
      v93 = &v81[16 * v92];
      *(v93 + 4) = v89;
      *(v93 + 5) = v90;
      goto LABEL_23;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DF8, &qword_2150C2948);
  swift_arrayDestroy();
  v107 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v94 = sub_2150A4A20();
  v96 = v95;

  v107 = 0;
  v108 = 0xE000000000000000;
  v97 = sub_2150A5B70();
  MEMORY[0x2160617E0](v97);

  MEMORY[0x2160617E0](8250, 0xE200000000000000);
  MEMORY[0x2160617E0](v94, v96);

  return v107;
}

uint64_t sub_214F3F72C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >> 62)
  {
    sub_2150A59D0();
  }

  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  MEMORY[0x2160617E0](2760748, 0xE300000000000000);
  if (a2 >> 62)
  {
    sub_2150A59D0();
  }

  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  MEMORY[0x2160617E0](2957356, 0xE300000000000000);
  if (a3 >> 62)
  {
    sub_2150A59D0();
  }

  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  return 43;
}

uint64_t sub_214F3F8A0()
{
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  MEMORY[0x2160617E0](2760748, 0xE300000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  MEMORY[0x2160617E0](2957356, 0xE300000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  return 43;
}

uint64_t CloudSession.PhaseMetrics.deinit()
{
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate, &qword_27CA41DD0, &unk_2150C2740);

  return v0;
}

uint64_t CloudSession.PhaseMetrics.__deallocating_deinit()
{
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate, &qword_27CA41DD0, &unk_2150C2740);

  return swift_deallocClassInstance();
}

void sub_214F3FB28()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_2150A4A90();
  [v0 setDateFormat_];

  qword_280C24848 = v0;
}

uint64_t keypath_get_183Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_214F43C14(v4 + v5, a3, &qword_27CA41DD0, &unk_2150C2740);
}

uint64_t keypath_get_187Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_214F3FED4(uint64_t a1)
{
  sub_2150A3A00();
  if (v1 <= 0x3F)
  {
    sub_214F408F0(319, &qword_280C24858, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_2150A3F30();
      if (v3 <= 0x3F)
      {
        sub_2150A3EB0();
        if (v4 <= 0x3F)
        {
          sub_214F408F0(319, &qword_280C245E8, MEMORY[0x277D85AD8]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_214F408F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2150A57E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_214F4096C(uint64_t a1)
{
  sub_214F408F0(319, &qword_280C24858, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_214F40C44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42670, &unk_2150C2930);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_214F40CD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_214F40D5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720, &qword_2150C2968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_214F40DE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2150A5950() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2150A5770();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_214F40F74(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2150A5950() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_2150A64B0();
      MEMORY[0x216063080](v9);
      result = sub_2150A64E0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_2150A3E80() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_214F41144(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2150A5950() + 1) & ~v5;
    do
    {
      sub_2150A64B0();

      sub_2150A4BB0();
      v9 = sub_2150A64E0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_214F412F4(int64_t a1, uint64_t a2)
{
  v43 = sub_2150A3750();
  v4 = *(v43 - 8);
  result = MEMORY[0x28223BE20](v43, v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2150A5950();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      sub_214F43DFC(&qword_280C241C8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v24 = sub_2150A49A0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v41)
      {
        if (v25 >= v41 && a1 >= v25)
        {
LABEL_15:
          v7 = v44;
          v28 = *(v44 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = v29 + 40 * a1;
          v31 = (v29 + 40 * v11);
          if (40 * a1 < (40 * v11) || v30 >= v31 + 40 || a1 != v11)
          {
            v32 = *v31;
            v33 = v31[1];
            *(v30 + 32) = *(v31 + 4);
            *v30 = v32;
            *(v30 + 16) = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v41 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_214F41634(int64_t a1, uint64_t a2)
{
  v41 = sub_2150A3750();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = sub_2150A5950();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_214F43DFC(&qword_280C241C8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v24 = sub_2150A49A0();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_214F41954(int64_t a1, uint64_t a2)
{
  v41 = sub_2150A3A00();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = sub_2150A5950();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_214F43DFC(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v24 = sub_2150A49A0();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_214F41C74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_214F41D00(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_214F41D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE8, &qword_2150CD0E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_214F41E18(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v24 = a4;
  ICAttachmentGalleryModel.SubAttachments.makeIterator()(&v22);

  if (!a2 || !a3)
  {
LABEL_18:
    v20 = v23;
    goto LABEL_20;
  }

  if (a3 < 0)
  {
    __break(1u);
    return;
  }

  v7 = 1;
  while (2)
  {
    v8 = v23;
    if (!v23)
    {
LABEL_19:

      v20 = 0uLL;
      goto LABEL_20;
    }

    v9 = *(&v23 + 1);
LABEL_7:
    v10 = v22;
    v11 = (v8 + 16 * v9 + 40);
    do
    {
      v12 = *(v8 + 16);
      if (v9 == v12)
      {
        goto LABEL_19;
      }

      if (v9 >= v12)
      {
        __break(1u);
        goto LABEL_22;
      }

      v14 = *(v11 - 1);
      v13 = *v11;
      *(&v23 + 1) = ++v9;
      v11 += 2;
    }

    while (!*(v22 + 16));

    v15 = sub_214F30094(v14, v13);
    v17 = v16;

    if (v17)
    {
      v9 = *(*(v10 + 56) + 8 * v15);
      *a2 = v9;
      if (v7 != a3)
      {
        ++a2;
        v18 = v9;
        if (!__OFADD__(v7++, 1))
        {
          continue;
        }

        __break(1u);
        goto LABEL_18;
      }

LABEL_22:
      v21 = v9;
      goto LABEL_18;
    }

    break;
  }

  v9 = *(&v23 + 1);
  v8 = v23;
  if (v23)
  {
    goto LABEL_7;
  }

  v20 = __PAIR128__(*(&v23 + 1), 0);
LABEL_20:
  *a1 = v22;
  *(a1 + 8) = v20;
}

void *sub_214F41F78(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_214F420FC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v21 = v18[2];
      v20 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v21;
      v11[3] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_214F42308(uint64_t a1)
{
  sub_2150A3870();
  v2 = v1;
  if (v1 >= 1.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D839F8];
    *(v4 + 16) = xmmword_2150C25D0;
    v6 = MEMORY[0x277D83A80];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v2;
    sub_2150A4B00();
    return;
  }

  v3 = v1 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v3 > -9.22337204e18)
  {
    if (v3 < 9.22337204e18)
    {
      sub_2150A6100();
      MEMORY[0x2160617E0](29549, 0xE200000000000000);
      return;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_214F42438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v12 = sub_2150A3960();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29 - v19;
  sub_214F43C14(a1, v11, &qword_27CA41DD0, &unk_2150C2740);
  v21 = v13[6];
  if (v21(v11, 1, v12) == 1)
  {
    v22 = 6369134;
    v23 = v11;
  }

  else
  {
    v24 = v11;
    v25 = v13[4];
    v25(v20, v24, v12);
    sub_214F43C14(a2, v8, &qword_27CA41DD0, &unk_2150C2740);
    if (v21(v8, 1, v12) != 1)
    {
      v25(v17, v8, v12);
      sub_214F42308(v20);
      v22 = v26;
      v27 = v13[1];
      v27(v17, v12);
      v27(v20, v12);
      return v22;
    }

    v22 = 6369134;
    (v13[1])(v20, v12);
    v23 = v8;
  }

  sub_214F302D4(v23, &qword_27CA41DD0, &unk_2150C2740);
  return v22;
}

void *sub_214F426EC(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
    sub_214D55670(0, &qword_280C244D0, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v10 domain];
    v3 = sub_2150A4AD0();
    v5 = v4;

    if (v3 == sub_2150A4AD0() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_2150A6270();

      if ((v8 & 1) == 0)
      {

        return 0;
      }
    }

    v9 = [v10 code];

    return (v9 == 1);
  }

  return result;
}

uint64_t sub_214F4283C(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 24;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 24;
  if (v8 >= v10)
  {
    v13 = a4;
    if (a4 != __src || &__src[24 * v10] <= a4)
    {
      memmove(a4, __src, 24 * v10);
    }

    v39 = &v13[3 * v10];
    if (v9 >= 24 && v6 > __dst)
    {
      v35 = v13;
LABEL_23:
      v37 = v6;
      v33 = (v6 - 3);
      v21 = v5 - 24;
      v22 = v39;
      do
      {
        v24 = *(v22 - 3);
        v23 = *(v22 - 2);
        v22 -= 24;
        v25 = v21;
        v26 = (v21 + 24);
        v27 = *(v37 - 3);
        v28 = *(v37 - 2);

        LOBYTE(v27) = a5(v24, v23, v27, v28);

        if (v27)
        {
          v5 = v25;
          if (v26 != v37)
          {
            v30 = *v33;
            *(v25 + 16) = *(v33 + 16);
            *v25 = v30;
          }

          v13 = v35;
          if (v39 <= v35 || (v6 = v33, v33 <= __dst))
          {
            v6 = v33;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        if (v26 != v39)
        {
          v29 = *v22;
          *(v25 + 16) = *(v22 + 2);
          *v25 = v29;
        }

        v21 = v25 - 24;
        v39 = v22;
        v13 = v35;
      }

      while (v22 > v35);
      v39 = v22;
      v6 = v37;
    }
  }

  else
  {
    v11 = __dst;
    if (a4 != __dst || &__dst[24 * v8] <= a4)
    {
      v12 = a4;
      memmove(a4, __dst, 24 * v8);
      a4 = v12;
    }

    v39 = &a4[24 * v8];
    v13 = a4;
    if (v7 >= 24 && v6 < v5)
    {
      v36 = v5;
      while (1)
      {
        v14 = *v6;
        v15 = v6[1];
        v16 = *v13;
        v17 = v13[1];

        LOBYTE(v16) = a5(v14, v15, v16, v17);

        if ((v16 & 1) == 0)
        {
          break;
        }

        v18 = v6;
        v19 = v11 == v6;
        v6 += 3;
        if (!v19)
        {
          goto LABEL_13;
        }

LABEL_14:
        v11 += 24;
        if (v13 >= v39 || v6 >= v36)
        {
          goto LABEL_16;
        }
      }

      v18 = v13;
      v19 = v11 == v13;
      v13 += 3;
      if (v19)
      {
        goto LABEL_14;
      }

LABEL_13:
      v20 = *v18;
      *(v11 + 2) = v18[2];
      *v11 = v20;
      goto LABEL_14;
    }

LABEL_16:
    v6 = v11;
  }

LABEL_34:
  v31 = (v39 - v13) / 24;
  if (v6 != v13 || v6 >= &v13[3 * v31])
  {
    memmove(v6, v13, 24 * v31);
  }

  return 1;
}

uint64_t sub_214F42BBC(uint64_t *a1, char *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_214F41D00(v26);
  }

  v22 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v26;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v26[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 24 * *v13);
      v18 = (v11 + 24 * *v16);
      v7 = (v11 + 24 * v17);

      sub_214F4283C(__dst, v18, v7, a2, a4);
      v6 = v12;

      if (v12)
      {
        *v22 = v26;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v26;
    __break(1u);
  }

  return result;
}

uint64_t sub_214F42D68(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v126 = MEMORY[0x277D84F90];
  v10 = a3[1];
  swift_retain_n();
  if (v10 >= 1)
  {
    v106 = a4;
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v124 = a6;
    while (1)
    {
      v13 = v11;
      v14 = v11 + 1;
      if (v14 >= v10)
      {
        v24 = v14;
      }

      else
      {
        v118 = v10;
        v107 = v7;
        v15 = (*a3 + 24 * v14);
        v16 = *v15;
        v17 = v15[1];
        v110 = v13;
        v18 = 24 * v13;
        v19 = (*a3 + 24 * v13);
        v21 = *v19;
        v20 = v19[1];

        v121 = a5(v16, v17, v21, v20);

        v22 = v13 + 2;
        v23 = v19 + 8;
        while (1)
        {
          v24 = v118;
          if (v118 == v22)
          {
            break;
          }

          v25 = *(v23 - 1);
          v26 = *(v23 - 5);
          v27 = *(v23 - 4);
          v28 = *(v23 - 2);

          LODWORD(v28) = a5(v28, v25, v26, v27) & 1;

          ++v22;
          v23 += 3;
          if ((v121 & 1) != v28)
          {
            v24 = v22 - 1;
            break;
          }
        }

        v7 = v107;
        a6 = v124;
        if (v121)
        {
          v29 = v110;
          if (v24 < v110)
          {
            goto LABEL_117;
          }

          if (v110 < v24)
          {
            v30 = 0;
            v31 = 24 * v24;
            while (1)
            {
              if (v29 != v24 + v30 - 1)
              {
                v37 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v32 = v37 + v18;
                v33 = v37 + v31;
                v34 = *v32;
                v35 = *(v32 + 8);
                v36 = *(v33 - 24);
                *(v32 + 16) = *(v33 - 8);
                *v32 = v36;
                *(v33 - 24) = v34;
                *(v33 - 16) = v35;
              }

              ++v29;
              --v30;
              v31 -= 24;
              v18 += 24;
              if (v29 >= v24 + v30)
              {
                goto LABEL_19;
              }
            }
          }

          v13 = v110;
        }

        else
        {
LABEL_19:
          v13 = v110;
        }
      }

      v38 = a3[1];
      if (v24 >= v38)
      {
        goto LABEL_30;
      }

      if (__OFSUB__(v24, v13))
      {
        goto LABEL_116;
      }

      if (v24 - v13 >= v106)
      {
        goto LABEL_30;
      }

      if (__OFADD__(v13, v106))
      {
        goto LABEL_118;
      }

      if (v13 + v106 >= v38)
      {
        v39 = a3[1];
      }

      else
      {
        v39 = v13 + v106;
      }

      if (v39 < v13)
      {
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
        return result;
      }

      if (v24 == v39)
      {
LABEL_30:
        v40 = v24;
        if (v24 < v13)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v108 = v7;
        v123 = *a3;
        v95 = (*a3 + 24 * v24);
        v111 = v13;
        v113 = v39;
        v96 = v13 - v24;
        do
        {
          v120 = v24;
          v97 = &v123[24 * v24];
          v98 = *v97;
          v99 = v97[1];
          v114 = v96;
          v115 = v95;
          do
          {
            v100 = *(v95 - 3);
            v101 = *(v95 - 2);

            LOBYTE(v100) = a5(v98, v99, v100, v101);

            if ((v100 & 1) == 0)
            {
              break;
            }

            if (!v123)
            {
              goto LABEL_120;
            }

            v98 = *v95;
            v99 = v95[1];
            v102 = v95[2];
            *v95 = *(v95 - 3);
            v95[2] = *(v95 - 1);
            *(v95 - 2) = v99;
            *(v95 - 1) = v102;
            *(v95 - 3) = v98;
            v95 -= 3;
          }

          while (!__CFADD__(v96++, 1));
          v24 = v120 + 1;
          v95 = v115 + 3;
          v96 = v114 - 1;
          v40 = v113;
        }

        while (v120 + 1 != v113);
        v7 = v108;
        a6 = v124;
        v13 = v111;
        if (v113 < v111)
        {
          goto LABEL_115;
        }
      }

      v112 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_21505F5DC(0, *(v12 + 2) + 1, 1, v12);
      }

      v42 = *(v12 + 2);
      v41 = *(v12 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v12 = sub_21505F5DC((v41 > 1), v42 + 1, 1, v12);
      }

      *(v12 + 2) = v43;
      v44 = v12 + 32;
      v45 = &v12[16 * v42 + 32];
      *v45 = v13;
      *(v45 + 1) = v112;
      v122 = *a1;
      if (!*a1)
      {
        goto LABEL_123;
      }

      if (v42)
      {
        v119 = v12 + 32;
        v116 = v12;
        while (1)
        {
          v46 = v43 - 1;
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v47 = *(v12 + 4);
            v48 = *(v12 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_51:
            if (v50)
            {
              goto LABEL_105;
            }

            v63 = &v12[16 * v43];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_107;
            }

            v69 = &v44[16 * v46];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_112;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v46 = v43 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          if (v43 < 2)
          {
            goto LABEL_113;
          }

          v73 = &v12[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_66:
          if (v68)
          {
            goto LABEL_109;
          }

          v76 = &v44[16 * v46];
          v78 = *v76;
          v77 = *(v76 + 1);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_111;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_73:
          if (v46 - 1 >= v43)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          v84 = *a3;
          if (!*a3)
          {
            goto LABEL_121;
          }

          v85 = v7;
          v86 = &v44[16 * v46 - 16];
          v87 = *v86;
          v88 = v46;
          v89 = &v44[16 * v46];
          v90 = *(v89 + 1);
          v91 = (v84 + 24 * *v86);
          v92 = (v84 + 24 * *v89);
          v93 = v84 + 24 * v90;
          a6 = v124;

          sub_214F4283C(v91, v92, v93, v122, a5);
          v7 = v85;
          if (v85)
          {

            goto LABEL_96;
          }

          v12 = v116;
          if (v90 < v87)
          {
            goto LABEL_100;
          }

          v94 = *(v116 + 2);
          if (v88 > v94)
          {
            goto LABEL_101;
          }

          *v86 = v87;
          *(v86 + 1) = v90;
          if (v88 >= v94)
          {
            goto LABEL_102;
          }

          v43 = v94 - 1;
          memmove(v89, v89 + 16, 16 * (v94 - 1 - v88));
          *(v116 + 2) = v94 - 1;
          v44 = v119;
          if (v94 <= 2)
          {
            goto LABEL_3;
          }
        }

        v51 = &v44[16 * v43];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_103;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_104;
        }

        v58 = &v12[16 * v43];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_106;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v62 >= v54)
        {
          v80 = &v44[16 * v46];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_114;
          }

          if (v49 < v83)
          {
            v46 = v43 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_51;
      }

LABEL_3:
      v10 = a3[1];
      v11 = v112;
      if (v112 >= v10)
      {
        v126 = v12;
        break;
      }
    }
  }

  v104 = *a1;
  if (!*a1)
  {
    goto LABEL_124;
  }

  sub_214F42BBC(&v126, v104, a3, a5, a6);
  if (v7)
  {

LABEL_96:
  }

  else
  {
  }
}

uint64_t sub_214F43510(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 != a2)
  {
    v19 = *a4;
    v5 = (*a4 + 24 * a3);
    v6 = result - a3;
LABEL_5:
    v16 = v5;
    v17 = a3;
    v7 = (v19 + 24 * a3);
    v8 = *v7;
    v9 = v7[1];
    v15 = v6;
    while (1)
    {
      v10 = *(v5 - 3);
      v11 = *(v5 - 2);

      LOBYTE(v10) = a5(v8, v9, v10, v11);

      if ((v10 & 1) == 0)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 = v16 + 3;
        v6 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v8 = *v5;
      v9 = v5[1];
      v12 = v5[2];
      *v5 = *(v5 - 3);
      v5[2] = *(v5 - 1);
      *(v5 - 2) = v9;
      *(v5 - 1) = v12;
      *(v5 - 3) = v8;
      v5 -= 3;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214F43660(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_2150A60E0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B50, &unk_2150C2920);
        v10 = sub_2150A4F50();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      sub_214F42D68(v11, v12, a1, v8, a2, a3);

      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_214F43510(0, v6, 1, a1, a2);
  }
}

uint64_t sub_214F437CC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_214F4227C(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;

  sub_214F43660(v9, a2, a3);

  *a1 = v6;
}

uint64_t sub_214F43880(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v27 = a2[1];
    v28 = *a2;
    v26 = a2[2];
    v4 = result + 48;
    v5 = MEMORY[0x277D84F90];
    v29 = *(result + 16);
    v23 = result + 48;
    do
    {
      v24 = v5;
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_24;
        }

        v30 = v7 + 1;
        v8 = *(v6 - 1);
        v9 = *v6;
        v25 = *(v6 - 2);
        swift_bridgeObjectRetain_n();

        sub_214F8558C(v28, v27, v26, v9, &v31);
        v10 = sub_214F3D904(v31, v32, v33);
        v12 = v11;

        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          break;
        }

        ++v7;
        v6 += 3;
        v2 = v29;
        if (v30 == v29)
        {
          v5 = v24;
          goto LABEL_18;
        }
      }

      v31 = v25;
      v32 = v8;

      MEMORY[0x2160617E0](8250, 0xE200000000000000);
      MEMORY[0x2160617E0](v10, v12);

      v14 = v31;
      v15 = v32;
      v5 = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21505F4D0(0, *(v24 + 16) + 1, 1, v24);
        v5 = result;
      }

      v2 = v29;
      v3 = v30;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_21505F4D0((v16 > 1), v17 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v4 = v23;
    }

    while (v30 != v29);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v31 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v19 = sub_2150A4A20();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    return 1701736302;
  }

  return v19;
}

uint64_t sub_214F43BCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_214F43C14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_214F43C7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_103Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_214F43DB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR___ICCloudSession__error);
  *(v2 + OBJC_IVAR___ICCloudSession__error) = v1;
  v4 = v1;
}

uint64_t sub_214F43DFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_65Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_214F44018(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_214F4405C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA41E18);
  v1 = __swift_project_value_buffer(v0, qword_27CA41E18);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICAttachmentAudioModel.needsTranscription.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 supportsGeneralASR];

  if (!v4)
  {
    return 0;
  }

  result = [v2 audioDocument];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = result;
  v7 = [result isCallRecording];

  if (v7)
  {
    return 0;
  }

  v8 = v2;
  result = [v2 audioDocument];
  if (!result)
  {
    goto LABEL_26;
  }

  v9 = result;
  v10 = ICTTAudioDocument.orderedFragments.getter();

  if (v10 >> 62)
  {
LABEL_24:
    v11 = sub_2150A59D0();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v21 = v8;
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x216062780](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v13 = v10[v12 + 4];
    }

    v8 = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v14 = [v13 transcript];
    v15 = [v14 allObjects];

    type metadata accessor for ICTTTranscriptSegment(0, v16);
    v17 = sub_2150A4ED0();

    if (v17 >> 62)
    {
      v18 = sub_2150A59D0();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v12;
    if (!v18)
    {

      return 1;
    }
  }

  result = [v21 attachment];
  if (result)
  {
    v19 = result;

    v20 = [v19 needsTranscription];

    return v20;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ICAttachmentAudioModel.transformNewlyAddedMediaAttachment()()
{
  v1 = v0;
  v2 = sub_2150A3960();
  v136 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v128[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360, &qword_2150C2988);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v128[-v8];
  v10 = sub_2150A3A00();
  v11 = *(v10 - 8);
  v139 = v10;
  v140 = v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v128[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v137 = &v128[-v18];
  MEMORY[0x28223BE20](v17, v19);
  v138 = &v128[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v25 = &v128[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v128[-v27];
  v29 = sub_2150A3750();
  v142 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v141 = &v128[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = [v1 audioDocument];
  if (!v32)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v33 = v32;
  v34 = [v32 isCallRecording];

  if (v34)
  {
    return;
  }

  v35 = [v1 attachment];
  if (!v35)
  {
    goto LABEL_54;
  }

  v36 = v35;
  v37 = [v35 media];

  if (v37)
  {
    v38 = [v37 mediaURL];

    if (v38)
    {
      sub_2150A36F0();

      v39 = v142;
      (*(v142 + 56))(v25, 0, 1, v29);
    }

    else
    {
      v39 = v142;
      (*(v142 + 56))(v25, 1, 1, v29);
    }

    sub_214F48094(v25, v28);
    if ((*(v39 + 48))(v28, 1, v29) == 1)
    {
      goto LABEL_10;
    }

    v47 = v141;
    (*(v39 + 32))(v141, v28, v29);
    v48 = [v1 attachment];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 note];

      if (!v50)
      {
        (*(v39 + 8))(v47, v29);
        goto LABEL_12;
      }

      v135 = v50;
      v51 = [v1 attachment];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 identifier];

        if (!v53)
        {
          (*(v39 + 8))(v47, v29);

          goto LABEL_12;
        }

        sub_2150A4AD0();
        v55 = v54;

        sub_2150A3980();
        v57 = v139;
        v56 = v140;
        if ((*(v140 + 48))(v9, 1, v139) == 1)
        {
          (*(v39 + 8))(v141, v29);

          v40 = &unk_27CA42360;
          v41 = &qword_2150C2988;
          v42 = v9;
          goto LABEL_11;
        }

        v134 = v55;
        (*(v56 + 32))(v138, v9, v57);
        v58 = [v1 attachment];
        if (v58)
        {
          v59 = v58;
          v60 = [v58 managedObjectContext];

          v133 = v60;
          v61 = v141;
          if (!v60)
          {

            (*(v140 + 8))(v138, v57);
            (*(v39 + 8))(v61, v29);
            goto LABEL_12;
          }

          v62 = sub_2150A39A0();
          v63 = [v1 bitFlippeddUUIDWithUuid_];

          sub_2150A39C0();
          sub_2150A3990();
          v64 = sub_2150A4A90();

          v65 = [v135 addAudioAttachmentWithIdentifier_];

          v66 = v65;
          v67 = [v1 attachment];
          [v66 setParentAttachment_];

          if (qword_27CA41468 != -1)
          {
            swift_once();
          }

          v68 = sub_2150A3F30();
          v69 = __swift_project_value_buffer(v68, qword_27CA41E18);
          v70 = v66;
          v131 = v69;
          v71 = sub_2150A3F10();
          v72 = sub_2150A5550();

          v73 = os_log_type_enabled(v71, v72);
          v132 = v70;
          if (v73)
          {
            v74 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            aBlock[0] = v130;
            *v74 = 136315138;
            v75 = [v70 shortLoggingDescription];
            v76 = sub_2150A4AD0();
            v129 = v72;
            v78 = v77;

            v79 = sub_214F7723C(v76, v78, aBlock);

            *(v74 + 4) = v79;
            _os_log_impl(&dword_214D51000, v71, v129, "Created subattachment %s", v74, 0xCu);
            v80 = v130;
            __swift_destroy_boxed_opaque_existential_0(v130);
            MEMORY[0x216064AF0](v80, -1, -1);
            MEMORY[0x216064AF0](v74, -1, -1);
          }

          v81 = [v1 audioDocument];
          if (v81)
          {
            v83 = v81;
            type metadata accessor for ICTTAudioRecording.Fragment(0, v82);
            v84 = [v83 document];

            v85 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v86 = sub_2150A39A0();
            v87 = [v85 initWithDocument:v84 identity:v86];

            _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
            v88 = sub_2150A38F0();
            v136[1](v5, v2);
            [v87 setCreatedDate_];

            v89 = sub_2150A5350();
            v136 = v87;
            [v87 setTranscriptVersion_];

            v90 = [v1 audioDocument];
            if (v90)
            {
              v91 = v90;
              v92 = [v90 document];
              v93 = [v92 rootObject];

              if (v93)
              {
                objc_opt_self();
                v94 = swift_dynamicCastObjCClass();
                if (v94)
                {
                  v95 = [v94 fragments];
                  swift_unknownObjectRelease();
                  [v95 addObject_];
                }

                else
                {

                  swift_unknownObjectRelease();
                }
              }

              else
              {
              }

              v97 = v139;
              v96 = v140;
              (*(v140 + 16))(v15, v137, v139);
              v98 = sub_2150A3F10();
              v99 = sub_2150A5550();
              if (os_log_type_enabled(v98, v99))
              {
                v100 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                aBlock[0] = v131;
                *v100 = 136315138;
                v101 = sub_2150A3990();
                v103 = v102;
                v104 = v97;
                v105 = *(v96 + 8);
                v105(v15, v104);
                v106 = sub_214F7723C(v101, v103, aBlock);

                *(v100 + 4) = v106;
                _os_log_impl(&dword_214D51000, v98, v99, "Appended fragment %s", v100, 0xCu);
                v107 = v131;
                __swift_destroy_boxed_opaque_existential_0(v131);
                MEMORY[0x216064AF0](v107, -1, -1);
                MEMORY[0x216064AF0](v100, -1, -1);
              }

              else
              {

                v108 = v97;
                v105 = *(v96 + 8);
                v105(v15, v108);
              }

              v109 = v142;
              v110 = v133;
              v111 = sub_2150A36B0();
              v112 = v132;

              [v1 setMergeableDataDirty_];
              v113 = [v1 attachment];
              if (v113)
              {
                v114 = v113;
                v115 = sub_2150A4A90();
                [v114 updateChangeCountWithReason_];

                v116 = sub_2150A4A90();
                [v112 updateChangeCountWithReason_];

                [v110 ic_save];
                if (![v1 needsTranscription])
                {

                  v127 = v139;
LABEL_52:

                  v105(v137, v127);
                  v105(v138, v127);
                  (*(v109 + 8))(v141, v29);
                  return;
                }

                if (qword_27CA417A0 != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                v117 = qword_27CA444E0;
                v118 = [v1 attachment];
                if (v118)
                {
                  v119 = v118;

                  v120 = [v119 objectID];

                  v121 = *&v117[OBJC_IVAR___ICTranscription_workerContext];
                  if (v121)
                  {
                    v122 = swift_allocObject();
                    *(v122 + 16) = v120;
                    aBlock[4] = sub_214F48104;
                    aBlock[5] = v122;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_214F44018;
                    aBlock[3] = &block_descriptor_1;
                    v123 = _Block_copy(aBlock);
                    v124 = v121;
                    v125 = v120;

                    [v124 performBlock_];

                    _Block_release(v123);
                    v126 = v139;
                    v105(v137, v139);
                    v105(v138, v126);
                    (*(v142 + 8))(v141, v29);
                    return;
                  }

                  v127 = v139;
                  v109 = v142;
                  goto LABEL_52;
                }

LABEL_61:
                __break(1u);
                return;
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  (*(v142 + 56))(v28, 1, 1, v29);
LABEL_10:
  v40 = &qword_27CA41D40;
  v41 = &unk_2150C7230;
  v42 = v28;
LABEL_11:
  sub_214F302D4(v42, v40, v41);
LABEL_12:
  if (qword_27CA41468 != -1)
  {
    swift_once();
  }

  v43 = sub_2150A3F30();
  __swift_project_value_buffer(v43, qword_27CA41E18);
  v44 = sub_2150A3F10();
  v45 = sub_2150A5560();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_214D51000, v44, v45, "no media URL on imported attachment", v46, 2u);
    MEMORY[0x216064AF0](v46, -1, -1);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.createSubattachmentForRecording()(ICAttachment *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_2150A3960();
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v89 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360, &qword_2150C2988);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v93 = v85 - v8;
  v94 = sub_2150A3A00();
  v92 = *(v94 - 8);
  v10 = MEMORY[0x28223BE20](v94, v9);
  v88 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v85 - v13;
  v15 = sub_2150A3E50();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v2 attachment];
  if (!v20)
  {
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  v22 = [v20 note];

  v95 = v22;
  if (!v22)
  {
LABEL_14:
    sub_214F4810C();
    swift_allocError();
    *v50 = 8;
    swift_willThrow();
    return;
  }

  v23 = [v2 attachment];
  if (!v23)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 managedObjectContext];

  if (!v25)
  {

    goto LABEL_14;
  }

  v87 = v14;
  sub_2150A3E40();
  sub_2150A3E30();
  (*(v16 + 8))(v19, v15);
  v26 = sub_2150A4A90();

  v27 = sub_2150A3790();
  v28 = sub_2150A4A90();
  v29 = [v95 addAttachmentWithUTI:v26 data:v27 filename:v28 updateFileBasedAttributes:1 analytics:1 regulatoryLogging:0];

  v30 = v29;
  v31 = [v2 attachment];
  [v30 setParentAttachment_];

  if (qword_27CA41468 != -1)
  {
    swift_once();
  }

  v32 = sub_2150A3F30();
  v33 = __swift_project_value_buffer(v32, qword_27CA41E18);
  v34 = v30;
  v85[1] = v33;
  v35 = sub_2150A3F10();
  v36 = sub_2150A5550();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v85[0] = swift_slowAlloc();
    v96 = v85[0];
    *v37 = 136315138;
    v38 = [v34 shortLoggingDescription];
    v39 = sub_2150A4AD0();
    v86 = v34;
    v41 = v40;

    v42 = sub_214F7723C(v39, v41, &v96);
    v34 = v86;

    *(v37 + 4) = v42;
    _os_log_impl(&dword_214D51000, v35, v36, "Created subattachment %s", v37, 0xCu);
    v43 = v85[0];
    __swift_destroy_boxed_opaque_existential_0(v85[0]);
    MEMORY[0x216064AF0](v43, -1, -1);
    MEMORY[0x216064AF0](v37, -1, -1);
  }

  v44 = v87;
  v45 = v93;
  v46 = [v34 identifier];
  if (!v46)
  {
    goto LABEL_12;
  }

  v47 = v46;
  sub_2150A4AD0();

  sub_2150A3980();
  v48 = v92;
  if ((*(v92 + 48))(v45, 1, v94) == 1)
  {

    sub_214F302D4(v45, &unk_27CA42360, &qword_2150C2988);
LABEL_12:
    sub_214F4810C();
    swift_allocError();
    *v49 = 8;
    swift_willThrow();

    return;
  }

  v86 = v34;
  (*(v48 + 32))(v44, v45, v94);
  v51 = [v2 audioDocument];
  if (!v51)
  {
    goto LABEL_28;
  }

  v53 = v51;
  type metadata accessor for ICTTAudioRecording.Fragment(0, v52);
  v54 = [v53 document];

  v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v56 = sub_2150A39A0();
  v57 = [v55 initWithDocument:v54 identity:v56];

  v58 = v89;
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v59 = sub_2150A38F0();
  v90[1](v58, v91);
  [v57 setCreatedDate_];

  v60 = sub_2150A5350();
  v93 = v57;
  [v57 setTranscriptVersion_];

  v61 = [v2 audioDocument];
  if (!v61)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v62 = v61;

  v63 = [v62 document];
  v64 = [v63 rootObject];

  v65 = v88;
  if (v64)
  {
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    v67 = v87;
    if (v66)
    {
      v68 = [v66 fragments];
      swift_unknownObjectRelease();
      [v68 addObject_];
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {

    v67 = v87;
  }

  v69 = v92;
  (*(v92 + 16))(v65, v67, v94);
  v70 = sub_2150A3F10();
  v71 = sub_2150A5550();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v91 = v2;
    v73 = v72;
    v74 = swift_slowAlloc();
    v90 = v25;
    v75 = v74;
    v96 = v74;
    *v73 = 136315138;
    sub_214F481AC(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v76 = sub_2150A6100();
    v77 = v69;
    v78 = v76;
    v80 = v79;
    v81 = *(v77 + 8);
    v81(v65, v94);
    v82 = sub_214F7723C(v78, v80, &v96);

    *(v73 + 4) = v82;
    _os_log_impl(&dword_214D51000, v70, v71, "Appended fragment %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    v83 = v75;
    v25 = v90;
    MEMORY[0x216064AF0](v83, -1, -1);
    v84 = v73;
    v2 = v91;
    MEMORY[0x216064AF0](v84, -1, -1);
  }

  else
  {

    v81 = *(v69 + 8);
    v81(v65, v94);
  }

  [v2 setMergeableDataDirty_];
  [v25 ic_save];

  v81(v87, v94);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveSummaryToAttachment(summarizationResult:)(NotesShared::SummarizationResult *summarizationResult)
{
  v2 = v1;
  v74[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = summarizationResult->modelVersion.value._countAndFlagsBits;
  object = summarizationResult->modelVersion.value._object;
  v11 = summarizationResult->attributionIcon.value._countAndFlagsBits;
  v12 = summarizationResult->attributionIcon.value._object;
  v13 = summarizationResult->attributionProvider.value._object;
  v70 = summarizationResult->attributionProvider.value._countAndFlagsBits;
  v71 = countAndFlagsBits;
  v72 = v13;
  v73 = object;
  if (sub_2150A4BC0() < 1)
  {
    sub_214F4810C();
    swift_allocError();
    *v26 = 9;
LABEL_49:
    swift_willThrow();
    return;
  }

  v69 = v12;
  v14 = [v2 audioDocument];
  if (!v14)
  {
    __break(1u);
    goto LABEL_51;
  }

  v15 = v14;
  v68[1] = v11;
  v16 = [v2 attachment];
  if (!v16)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v17 = v16;
  v18 = [v16 currentReplicaID];

  sub_2150A39C0();
  v19 = objc_allocWithZone(ICTTMergeableAttributedString);
  v20 = sub_2150A39A0();
  (*(v5 + 8))(v8, v4);
  v21 = [v19 initWithReplicaID_];

  v22 = [v15 document];
  v23 = [v22 rootObject];

  if (v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v25 = &selRef_unregisterObserver_;
    if (!v24)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v24 = 0;
    v25 = &selRef_unregisterObserver_;
  }

  [v24 setSummary_];

  v27 = [v2 v25[458]];
  if (!v27)
  {
    goto LABEL_52;
  }

  v28 = v27;
  v29 = [v27 document];
  v30 = [v29 rootObject];

  if (v30)
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = [v31 summary];

  if (v32)
  {
    v33 = [v32 length];
    v34 = sub_2150A4A90();
    [v32 replaceCharactersInRange:0 withString:{v33, v34}];
  }

  v35 = [v2 v25[458]];
  v36 = v69;
  if (!v35)
  {
    goto LABEL_53;
  }

  v37 = v35;
  v38 = sub_2150A5350();
  v39 = [v37 document];
  v40 = [v39 rootObject];

  if (v40)
  {
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v41 = 0;
  }

  [v41 setSummaryVersion_];

  v42 = [v2 v25[458]];
  if (!v42)
  {
    goto LABEL_54;
  }

  v43 = v42;
  if (v73)
  {
    v44 = sub_2150A4A90();
  }

  else
  {
    v44 = 0;
  }

  v45 = [v43 document];
  v46 = [v45 rootObject];

  if (v46)
  {
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (!v47)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v47 = 0;
  }

  [v47 setLongformSummaryModelVersionInfo_];

  v48 = [v2 v25[458]];
  if (!v48)
  {
    goto LABEL_55;
  }

  v49 = v48;
  if (v72)
  {
    v50 = sub_2150A4A90();
  }

  else
  {
    v50 = 0;
  }

  [v49 setExternalModelAttributionProviderName_];

  v51 = [v2 v25[458]];
  if (!v51)
  {
    goto LABEL_56;
  }

  v52 = v51;
  if (v36)
  {
    v53 = sub_2150A4A90();
  }

  else
  {
    v53 = 0;
  }

  [v52 setExternalModelAttributionSymbolName_];

  if (qword_27CA41468 != -1)
  {
    swift_once();
  }

  v54 = sub_2150A3F30();
  __swift_project_value_buffer(v54, qword_27CA41E18);
  v55 = v2;
  v56 = sub_2150A3F10();
  v57 = sub_2150A5550();
  if (!os_log_type_enabled(v56, v57))
  {

LABEL_46:
    v74[0] = 0;
    if ([v55 saveAttachmentAndReturnError_])
    {
      v66 = v74[0];
      return;
    }

    v67 = v74[0];
    sub_2150A35D0();

    goto LABEL_49;
  }

  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v74[0] = v59;
  *v58 = 136315138;
  v60 = [v55 attachment];

  if (v60)
  {
    v61 = [v60 identifier];

    if (v61)
    {
      v62 = sub_2150A4AD0();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0xE000000000000000;
    }

    v65 = sub_214F7723C(v62, v64, v74);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_214D51000, v56, v57, "Wrote summary to attachment %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x216064AF0](v59, -1, -1);
    MEMORY[0x216064AF0](v58, -1, -1);
    goto LABEL_46;
  }

LABEL_57:
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.deleteSummary()()
{
  v1 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 audioDocument];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v1 attachment];
  if (!v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v10 = v9;
  v11 = [v9 currentReplicaID];

  sub_2150A39C0();
  v12 = objc_allocWithZone(ICTTMergeableAttributedString);
  v13 = sub_2150A39A0();
  (*(v3 + 8))(v6, v2);
  v14 = [v12 initWithReplicaID_];

  v15 = [v8 document];
  v16 = [v15 rootObject];

  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v17 = 0;
  }

  [v17 setSummary_];

  v18 = [v1 audioDocument];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v18 setExternalModelAttributionProviderName_];

  v20 = [v1 audioDocument];
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  [v20 setExternalModelAttributionSymbolName_];

  v24[0] = 0;
  if ([v1 saveAttachmentAndReturnError_])
  {
    v22 = v24[0];
  }

  else
  {
    v23 = v24[0];
    sub_2150A35D0();

    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveTopLineSummaryToAttachment(summarizationResult:)(NotesShared::SummarizationResult *summarizationResult)
{
  v3 = v1;
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = summarizationResult->text._countAndFlagsBits;
  object = summarizationResult->text._object;
  v13 = summarizationResult->modelVersion.value._countAndFlagsBits;
  v12 = summarizationResult->modelVersion.value._object;
  if (sub_2150A4BC0() < 1)
  {
    sub_214F4810C();
    swift_allocError();
    *v27 = 9;
    swift_willThrow();
    return;
  }

  v14 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v14 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v66 = v12;
    v65[1] = v13;
    v15 = [v3 audioDocument];
    if (v15)
    {
      v16 = v15;
      v65[2] = v2;
      v17 = [v3 attachment];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 currentReplicaID];

        sub_2150A39C0();
        v20 = objc_allocWithZone(ICTTMergeableAttributedString);
        v21 = sub_2150A39A0();
        (*(v6 + 8))(v9, v5);
        v22 = [v20 initWithReplicaID_];

        v23 = [v16 document];
        v24 = [v23 rootObject];

        if (v24)
        {
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          v26 = &selRef_unregisterObserver_;
          if (!v25)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v25 = 0;
          v26 = &selRef_unregisterObserver_;
        }

        [v25 setTopLineSummary_];

        v28 = [v3 v26[458]];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 document];
          v31 = [v30 rootObject];

          if (v31)
          {
            objc_opt_self();
            v32 = swift_dynamicCastObjCClass();
            v33 = v66;
            if (!v32)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v32 = 0;
            v33 = v66;
          }

          v34 = [v32 topLineSummary];

          if (v34)
          {
            v35 = [v34 length];
            v36 = sub_2150A4A90();
            v37 = v35;
            v33 = v66;
            [v34 replaceCharactersInRange:0 withString:{v37, v36}];
          }

          v38 = [v3 v26[458]];
          if (v38)
          {
            v39 = v38;
            if (v33)
            {
              v40 = sub_2150A4A90();
            }

            else
            {
              v40 = 0;
            }

            v41 = [v39 document];
            v42 = [v41 rootObject];

            if (v42)
            {
              objc_opt_self();
              v43 = swift_dynamicCastObjCClass();
              if (!v43)
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v43 = 0;
            }

            [v43 setToplineSummaryModelVersionInfo_];

            v44 = [v3 attachment];
            if (v44)
            {
              v45 = v44;
              v46 = sub_2150A4A90();
              [v45 updateChangeCountWithReason_];

              if (qword_27CA41468 != -1)
              {
                swift_once();
              }

              v47 = sub_2150A3F30();
              __swift_project_value_buffer(v47, qword_27CA41E18);
              v48 = v3;
              v49 = sub_2150A3F10();
              v50 = sub_2150A5550();
              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                v67 = v52;
                *v51 = 136315138;
                v53 = [v48 attachment];

                if (!v53)
                {
LABEL_50:
                  __break(1u);
                  return;
                }

                v54 = [v53 identifier];

                if (v54)
                {
                  v55 = sub_2150A4AD0();
                  v57 = v56;
                }

                else
                {
                  v55 = 0;
                  v57 = 0xE000000000000000;
                }

                v58 = sub_214F7723C(v55, v57, &v67);

                *(v51 + 4) = v58;
                _os_log_impl(&dword_214D51000, v49, v50, "Wrote top line summary to attachment %s", v51, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v52);
                MEMORY[0x216064AF0](v52, -1, -1);
                MEMORY[0x216064AF0](v51, -1, -1);
              }

              else
              {
              }

              v59 = [v48 attachment];
              if (v59)
              {
                v60 = v59;
                v61 = [v59 audioModel];

                if (v61)
                {
                  [v61 setMergeableDataDirty_];
                }

                v62 = [v48 attachment];
                if (v62)
                {
                  v63 = v62;
                  v64 = [v62 managedObjectContext];

                  [v64 ic_save];
                  return;
                }

                goto LABEL_49;
              }

LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveModelDataToSubattachment(transcriptSegments:fragmentUUID:retranscription:)(Swift::OpaquePointer transcriptSegments, Swift::String fragmentUUID, Swift::Bool retranscription)
{
  countAndFlagsBits = fragmentUUID._countAndFlagsBits;
  v4 = v3;
  object = fragmentUUID._object;
  v97[6] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360, &qword_2150C2988);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v84 - v10;
  v12 = sub_2150A3A00();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v93 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v4 attachment];
  if (!v16)
  {
    goto LABEL_63;
  }

  v17 = v16;
  v18 = [v16 identifier];

  if (!v18)
  {
LABEL_16:
    sub_214F4810C();
    v36 = swift_allocError();
    *v37 = 7;
    v95 = v36;
    swift_willThrow();
    return;
  }

  v91 = sub_2150A4AD0();
  v20 = v19;

  sub_2150A3980();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_214F302D4(v11, &unk_27CA42360, &qword_2150C2988);
    goto LABEL_16;
  }

  v92 = v20;
  v21 = v93;
  (*(v13 + 32))(v93, v11, v12);
  v22 = [v4 audioDocument];
  if (v22)
  {
    v23 = v22;
    v24 = ICTTAudioDocument.fragment(for:)(v21);

    if (!v24)
    {
      (*(v13 + 8))(v21, v12);

      goto LABEL_16;
    }

    v85 = v13;
    v90 = v12;
    if (!retranscription)
    {
      goto LABEL_11;
    }

    v25 = [v24 transcript];
    v26 = [v25 count];

    if ((v26 & 0x8000000000000000) == 0)
    {
      for (; v26; --v26)
      {
        v27 = [v24 transcript];
        [v27 removeObjectAtIndex_];
      }

LABEL_11:
      v86 = object;
      v28 = *(transcriptSegments._rawValue + 2);
      if (v28)
      {
        v29 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
        v30 = transcriptSegments._rawValue + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v31 = *(v29 + 72);
        v32 = v28;
        v33 = v95;
        v34 = v92;
        do
        {
          sub_214F47980(v30, v4, v24);
          v30 += v31;
          --v32;
        }

        while (v32);
        v95 = v33;
        v35 = sub_2150A5350();
        [v24 setTranscriptVersion_];
      }

      else
      {
        v34 = v92;
      }

      if (qword_27CA41468 != -1)
      {
        goto LABEL_61;
      }

      while (1)
      {
        v38 = sub_2150A3F30();
        __swift_project_value_buffer(v38, qword_27CA41E18);

        v39 = sub_2150A3F10();
        v40 = sub_2150A5550();

        v41 = os_log_type_enabled(v39, v40);
        v42 = v90;
        if (v41)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v97[0] = v44;
          *v43 = 134218242;
          *(v43 + 4) = v28;

          *(v43 + 12) = 2080;
          *(v43 + 14) = sub_214F7723C(v91, v34, v97);
          _os_log_impl(&dword_214D51000, v39, v40, "Wrote %ld transcript segments to attachment %s", v43, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v44);
          v45 = v44;
          v42 = v90;
          MEMORY[0x216064AF0](v45, -1, -1);
          MEMORY[0x216064AF0](v43, -1, -1);
        }

        else
        {
        }

        v46 = [v4 attachment];
        if (!v46)
        {
          goto LABEL_65;
        }

        v47 = v46;
        v48 = [v46 subAttachments];

        if (!v48)
        {
LABEL_51:
          v74 = [v4 attachment];
          if (!v74)
          {
            goto LABEL_66;
          }

          v75 = v74;
          v76 = [v4 audioDocument];
          if (v76)
          {
            v77 = v76;

            v78 = [v77 transcriptAsPlainText];

            if (!v78)
            {
              sub_2150A4AD0();
              v78 = sub_2150A4A90();
            }

            [v75 setAdditionalIndexableText_];

            v97[0] = 0;
            if ([v4 saveAttachmentAndReturnError_])
            {
              v79 = *(v85 + 8);
              v80 = v97[0];
              v79(v93, v42);
            }

            else
            {
              v81 = v97[0];
              v82 = sub_2150A35D0();

              v95 = v82;
              swift_willThrow();

              (*(v85 + 8))(v93, v42);
            }

            return;
          }

          goto LABEL_67;
        }

        v50 = sub_214F48160(0, v49);
        sub_214F481AC(&qword_27CA41E30, sub_214F48160, MEMORY[0x277D85378]);
        v51 = sub_2150A52E0();

        v89 = v4;
        v84[2] = v51;
        v84[3] = v50;
        if ((v51 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_2150A5980();
          sub_2150A5320();
          v51 = v97[1];
          v52 = v97[2];
          v53 = v97[3];
          v28 = v97[4];
          v54 = v97[5];
        }

        else
        {
          v55 = -1 << *(v51 + 32);
          v52 = (v51 + 56);
          v53 = ~v55;
          v56 = -v55;
          v57 = v56 < 64 ? ~(-1 << v56) : -1;
          v54 = (v57 & *(v51 + 56));

          v28 = 0;
        }

        v84[1] = v53;
        v34 = (v53 + 64) >> 6;
        while (v51 < 0)
        {
          v63 = sub_2150A5A10();
          if (!v63 || (v96 = v63, swift_dynamicCast(), v62 = v97[0], v60 = v28, v61 = v54, !v97[0]))
          {
LABEL_49:
            v4 = v89;
LABEL_50:
            sub_214F420F4(v51);

            v42 = v90;
            goto LABEL_51;
          }

LABEL_41:
          v87 = v28;
          v88 = v54;
          v64 = [v62 identifier];
          if (v64)
          {
            v65 = v64;
            v91 = v62;
            v66 = v52;
            v67 = v24;
            v68 = v51;
            v69 = sub_2150A4AD0();
            v71 = v70;

            if (v69 == countAndFlagsBits && v71 == v86)
            {

              v51 = v68;
              v24 = v67;
              v62 = v91;
LABEL_59:
              sub_214F420F4(v51);

              v83 = sub_2150A4A90();
              [v62 updateChangeCountWithReason_];

              v4 = v89;
              v42 = v90;
              goto LABEL_51;
            }

            v73 = sub_2150A6270();

            v51 = v68;
            v24 = v67;
            v52 = v66;
            v62 = v91;
            if (v73)
            {
              goto LABEL_59;
            }
          }

          v28 = v60;
          v54 = v61;
        }

        v58 = v28;
        v59 = v54;
        v60 = v28;
        v4 = v89;
        if (v54)
        {
          break;
        }

        while (1)
        {
          v60 = (v58 + 1);
          if (__OFADD__(v58, 1))
          {
            break;
          }

          if (v60 >= v34)
          {
            goto LABEL_50;
          }

          v59 = v52[v60];
          ++v58;
          if (v59)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_61:
        swift_once();
      }

LABEL_37:
      v61 = (v59 - 1) & v59;
      v62 = *(*(v51 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v59)))));
      if (!v62)
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_63:
    __break(1u);
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void sub_214F47980(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 audioDocument];
  if (v11)
  {
    v13 = v11;
    type metadata accessor for ICTTTranscriptSegment(0, v12);
    v14 = [v13 document];

    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = sub_2150A39A0();
    v17 = [v15 initWithDocument:v14 identity:v16];

    (*(v7 + 8))(v10, v6);
    v18 = type metadata accessor for TranscriptViewModelSegment(0);
    v19 = sub_2150A4A90();
    [v17 setText_];

    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v17 setTimestamp_];

    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v17 setDuration_];

    if (*(a1 + v18[9] + 8))
    {
      v22 = sub_2150A4A90();
      [v17 setSpeaker_];
    }

    v23 = [a3 transcript];
    [v23 addObject_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveAttachment()()
{
  v1 = [v0 attachment];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 managedObjectContext];

    if (!v3)
    {
      sub_214F4810C();
      swift_allocError();
      *v7 = 7;
      swift_willThrow();
      return;
    }

    v4 = [v0 attachment];
    if (v4)
    {
      v5 = v4;
      v6 = sub_2150A4A90();
      [v5 updateChangeCountWithReason_];

      [v0 setMergeableDataDirty_];
      [v3 ic_save];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_214F47D60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void (*sub_214F47F8C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](a2, a3);
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
    return sub_214F481F4;
  }

  __break(1u);
  return result;
}

void (*sub_214F4800C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](a2, a3);
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
    return sub_214F4808C;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F48094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214F4810C()
{
  result = qword_27CA42340;
  if (!qword_27CA42340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42340);
  }

  return result;
}

unint64_t sub_214F48160(uint64_t a1, uint64_t a2)
{
  result = qword_27CA44A30;
  if (!qword_27CA44A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA44A30);
  }

  return result;
}