uint64_t sub_2143ABCD4(_BOOL8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912338, &qword_2147357C0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!sub_214466780(*a1, a1[1], *a2, a2[1]))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_213FB2E54(a1 + v14, v13, &qword_27C912330, &qword_2147357B8);
  sub_213FB2E54(a2 + v14, &v13[v15], &qword_27C912330, &qword_2147357B8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C912330, &qword_2147357B8);
LABEL_11:
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_2146D9578();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_213FB2E54(v13, v10, &qword_27C912330, &qword_2147357B8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Member);
LABEL_7:
    sub_213FB2DF4(v13, &qword_27C912338, &qword_2147357C0);
    goto LABEL_8;
  }

  v19 = v21;
  sub_2143AC89C(&v13[v15], v21, type metadata accessor for NearbyGroup_Member);
  v20 = sub_2143AC70C(v10, v19);
  sub_2143AC83C(v19, type metadata accessor for NearbyGroup_Member);
  sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Member);
  sub_213FB2DF4(v13, &qword_27C912330, &qword_2147357B8);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2143AC050(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v45 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  MEMORY[0x28223BE20](v44);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v43 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v43 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912328, &qword_2147357B0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v43 - v25;
  v27 = *(v24 + 56);
  sub_2143AC904(a1, &v43 - v25);
  sub_2143AC904(v48, &v26[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2143AC904(v26, v14);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v29 = type metadata accessor for NearbyGroup_Group.MemberLeft;
        v30 = v14;
        goto LABEL_19;
      }

      v34 = &v26[v27];
      v35 = v47;
      sub_2143AC89C(v34, v47, type metadata accessor for NearbyGroup_Group.MemberLeft);
      if (sub_214466780(*v14, *(v14 + 1), *v35, *(v35 + 8)) && v14[16] == *(v35 + 16))
      {
        sub_2146D8DF8();
        sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_2146D9578())
        {
          v36 = type metadata accessor for NearbyGroup_Group.MemberLeft;
          sub_2143AC83C(v35, type metadata accessor for NearbyGroup_Group.MemberLeft);
          v37 = v14;
LABEL_25:
          sub_2143AC83C(v37, v36);
          sub_2143AC83C(v26, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v31 = 1;
          return v31 & 1;
        }
      }

      v38 = type metadata accessor for NearbyGroup_Group.MemberLeft;
      sub_2143AC83C(v35, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v39 = v14;
LABEL_27:
      sub_2143AC83C(v39, v38);
      sub_2143AC83C(v26, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      goto LABEL_28;
    }

    sub_2143AC904(v26, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v29 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
      v30 = v17;
      goto LABEL_19;
    }

    sub_2143AC89C(&v26[v27], v6, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v31 = sub_2143ABCD4(v17, v6);
    v32 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
    sub_2143AC83C(v6, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v33 = v17;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2143AC904(v26, v22);
      if (swift_getEnumCaseMultiPayload())
      {
        v29 = type metadata accessor for NearbyGroup_Group.Initialization;
        v30 = v22;
LABEL_19:
        sub_2143AC83C(v30, v29);
        sub_213FB2DF4(v26, &qword_27C912328, &qword_2147357B0);
LABEL_28:
        v31 = 0;
        return v31 & 1;
      }

      v40 = &v26[v27];
      v41 = v46;
      sub_2143AC89C(v40, v46, type metadata accessor for NearbyGroup_Group.Initialization);
      if (sub_214466780(*v22, *(v22 + 1), *v41, *(v41 + 8)) && (sub_2143D84A0(*(v22 + 2), *(v41 + 16)) & 1) != 0)
      {
        sub_2146D8DF8();
        sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_2146D9578())
        {
          v36 = type metadata accessor for NearbyGroup_Group.Initialization;
          sub_2143AC83C(v41, type metadata accessor for NearbyGroup_Group.Initialization);
          v37 = v22;
          goto LABEL_25;
        }
      }

      v38 = type metadata accessor for NearbyGroup_Group.Initialization;
      sub_2143AC83C(v41, type metadata accessor for NearbyGroup_Group.Initialization);
      v39 = v22;
      goto LABEL_27;
    }

    sub_2143AC904(v26, v20);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = type metadata accessor for NearbyGroup_Group.MemberAdded;
      v30 = v20;
      goto LABEL_19;
    }

    sub_2143AC89C(&v26[v27], v9, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v31 = sub_2143AC968(v20, v9);
    v32 = type metadata accessor for NearbyGroup_Group.MemberAdded;
    sub_2143AC83C(v9, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v33 = v20;
  }

  sub_2143AC83C(v33, v32);
  sub_2143AC83C(v26, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  return v31 & 1;
}

uint64_t sub_2143AC70C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {
    v5 = *(type metadata accessor for NearbyGroup_Member(0) + 24);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        v10 = *v6 == *v8 && v7 == v9;
        if (v10 || (sub_2146DA6A8() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v9)
    {
LABEL_13:
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_2146D9578() & 1;
    }
  }

  return 0;
}

uint64_t sub_2143AC83C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2143AC89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143AC904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143AC968(_BOOL8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912338, &qword_2147357C0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!sub_214466780(*a1, a1[1], *a2, a2[1]))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_213FB2E54(a1 + v14, v13, &qword_27C912330, &qword_2147357B8);
  sub_213FB2E54(a2 + v14, &v13[v15], &qword_27C912330, &qword_2147357B8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C912330, &qword_2147357B8);
LABEL_11:
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_2146D9578();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_213FB2E54(v13, v10, &qword_27C912330, &qword_2147357B8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Member);
LABEL_7:
    sub_213FB2DF4(v13, &qword_27C912338, &qword_2147357C0);
    goto LABEL_8;
  }

  v19 = v21;
  sub_2143AC89C(&v13[v15], v21, type metadata accessor for NearbyGroup_Member);
  v20 = sub_2143AC70C(v10, v19);
  sub_2143AC83C(v19, type metadata accessor for NearbyGroup_Member);
  sub_2143AC83C(v10, type metadata accessor for NearbyGroup_Member);
  sub_213FB2DF4(v13, &qword_27C912330, &qword_2147357B8);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2143ACCE4(uint64_t a1)
{
  result = type metadata accessor for NearbyGroup_Group.Initialization(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NearbyGroup_Group.MemberAdded(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NearbyGroup_Group.MemberRemoved(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NearbyGroup_Group.MemberLeft(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_2143ACDA8(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143ACE3C()
{
  if (!qword_280B34BE0)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B34BE0);
    }
  }
}

void sub_2143ACEB4(uint64_t a1)
{
  sub_2143AD054(319, &qword_27C912390, type metadata accessor for NearbyGroup_Group.OneOf_Event, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143ACF90(uint64_t a1)
{
  sub_2143AD054(319, &qword_27C9123A8, type metadata accessor for NearbyGroup_Member, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143AD054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_33Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_34Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2143AD37C(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_2143AD054(319, &qword_27C9123C0, type metadata accessor for NearbyGroup_Member, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2143AD468(uint64_t a1)
{
  result = sub_2146D8DF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2143AD550(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_2143AD59C(uint64_t a1)
{
  *(a1 + 8) = sub_214322790();
  result = sub_21432255C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143AD5DC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = sub_2146D8B08();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = v1[3];
  v47 = v1[2];
  v48 = v11;
  v52 = v1[5];
  type metadata accessor for ClientConnection(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_2146D9588();
  v15 = sub_2146D9588();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    return 0;
  }

  sub_2146D88E8();

  (*(v5 + 32))(v10, v8, v4);
  v17 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v18 = sub_2146D8898();
  v19 = [v17 initWithURL_];

  if (!v19)
  {
LABEL_10:
    (*(v5 + 8))(v10, v4);
    return 0;
  }

  [v19 load];
  if (![v19 principalClass] || (ObjCClassMetadata = swift_getObjCClassMetadata(), (v21 = swift_conformsToProtocol2()) == 0) || !ObjCClassMetadata)
  {

    goto LABEL_10;
  }

  v46 = v4;
  if (v52 < 0)
  {
    v45 = v5;
    v30 = v21;
    memcpy(v55, ((v52 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x27FAuLL);
    memcpy(v54, ((v52 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x27FAuLL);
    v31 = *(v30 + 16);
    sub_214320F9C(v55, &v53);
    v32 = v31(v54, ObjCClassMetadata, v30);
    v34 = v33;
    blastdoor_AVTAvatarRecordGetClass();
    v52 = v32;
    v44 = v34;
    v35 = sub_2146D8A38();
    if (v48)
    {
      v36 = v35;
      swift_getObjCClassMetadata();
      v37 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v38 = sub_2146D9588();

      v39 = v49;
      sub_2146D8AF8();
      v40 = sub_2146D8AD8();
      (*(v50 + 8))(v39, v51);
      v41 = [v37 initWithAvatarData:v36 identifier:v38 orderDate:v40];

      blastdoor_AVTAvatarRecordSerializerGetClass();
      swift_getObjCClassMetadata();
      v42 = [swift_getObjCClassFromMetadata() dataFromAvatarRecord_];
      v43 = sub_2146D8A58();

      sub_213FB54FC(v52, v44);
      sub_21432104C(v55);
      swift_unknownObjectRelease();
      (*(v45 + 8))(v10, v46);
      return v43;
    }
  }

  else
  {
    v22 = v5;
    v23 = *(v52 + 40);

    blastdoor_AVTAvatarPuppetRecordGetClass();
    if (v23)
    {
      swift_getObjCClassMetadata();
      v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v25 = sub_2146D9588();

      v26 = [v24 initWithPuppetName_];

      blastdoor_AVTAvatarRecordSerializerGetClass();
      swift_getObjCClassMetadata();
      v27 = [swift_getObjCClassFromMetadata() dataFromAvatarRecord_];
      v28 = sub_2146D8A58();
      swift_unknownObjectRelease();

      (*(v22 + 8))(v10, v46);
      return v28;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t PosterArchive.bridgedToObjectiveC.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  v2 = type metadata accessor for PosterArchive(0);
  v3 = MEMORY[0x28223BE20](v2);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v5 = sub_2143AE014();
  v7 = v6;
  v8 = sub_2146D8A38();
  sub_213FB54FC(v5, v7);
  return v8;
}

void *sub_2143AE014()
{
  v170 = *MEMORY[0x277D85DE8];
  v0 = sub_2146D8858();
  v146 = *(v0 - 1);
  v147 = v0;
  MEMORY[0x28223BE20](v0);
  v143 = v133 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2146D8958();
  v2 = *(v152 - 8);
  v3 = MEMORY[0x28223BE20](v152);
  v135 = v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v136 = v133 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v141 = (v133 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v145 = v133 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v133 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v151 = v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v133 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v133 - v19;
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = [v22 temporaryDirectory];

  sub_2146D88E8();
  v144 = v21;
  v24 = [v21 defaultManager];
  v25 = sub_2146D8898();
  *&v156 = 0;
  v26 = [v24 URLForDirectory:99 inDomain:1 appropriateForURL:v25 create:1 error:&v156];

  v27 = v156;
  if (!v26)
  {
    v31 = v156;
    sub_2146D8838();

    swift_willThrow();
    v33 = *(v2 + 8);
    v32 = (v2 + 8);
    v33(v20, v152);
    return v32;
  }

  v150 = v2;
  sub_2146D88E8();
  v28 = v27;

  sub_214323660((v153 + 14), &v156);
  v148 = v18;
  v142 = v13;
  v138 = v20;
  if (v169 > 2u)
  {
    if (v169 == 3)
    {
      v29 = "tsUI.MonogramPosterExtension";
      v30 = 0xD000000000000030;
    }

    else if (v169 == 4)
    {
      sub_2143B9F60(&v156);
      v29 = "tPosterExtension";
      v30 = 0xD000000000000036;
    }

    else
    {
      v29 = "ster.GradientExtension";
      v30 = 0xD000000000000035;
    }
  }

  else if (v169)
  {
    if (v169 == 1)
    {
      sub_2143B9F60(&v156);
      v29 = "UIPrivate.PhotosPosterProvider";
      v30 = 0xD000000000000028;
    }

    else
    {
      sub_2143B9F60(&v156);
      v29 = "UI.AvatarPosterExtension";
      v30 = 0xD00000000000002CLL;
    }
  }

  else
  {
    sub_2143B9F60(&v156);
    v29 = "latn";
    v30 = 0xD00000000000002ELL;
  }

  *&v156 = v30;
  *(&v156 + 1) = v29 | 0x8000000000000000;
  v34 = *MEMORY[0x277CC91C0];
  v36 = v146;
  v35 = v147;
  v149 = *(v146 + 13);
  v37 = v143;
  (v149)(v143, v34, v147);
  v140 = sub_214069AD8();
  sub_2146D8948();
  v139 = *(v36 + 1);
  (v139)(v37, v35);

  strcpy(&v156, "configurations");
  HIBYTE(v156) = -18;
  LODWORD(v146) = *MEMORY[0x277CC91D8];
  v149(v37);
  v38 = v145;
  sub_2146D8948();
  v39 = v139;
  (v139)(v37, v35);
  v40 = type metadata accessor for PosterArchive(0);
  v133[1] = *(v40 + 24);
  v134 = v40;
  *&v156 = sub_2146D8B28();
  *(&v156 + 1) = v41;
  (v149)(v37, v146, v35);
  v42 = v142;
  sub_2146D8948();
  (v39)(v37, v35);

  v43 = v150 + 2;
  v44 = *(v150 + 1);
  v45 = v152;
  (v44)(v38, v152);
  v46 = [v144 defaultManager];
  v47 = sub_2146D8898();
  *&v156 = 0;
  v32 = [v46 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:&v156];

  v48 = v156;
  if (!v32)
  {
    v52 = v156;
    sub_2146D8838();

    swift_willThrow();
    (v44)(v42, v45);
    (v44)(v151, v45);
    (v44)(v148, v45);
    (v44)(v138, v45);
    return v32;
  }

  sub_214323660((v153 + 14), &v156);
  v146 = v43;
  v149 = v44;
  if (v169 <= 2u)
  {
    v49 = v141;
    v50 = v150;
LABEL_17:
    v51 = v48;
    sub_2143B9F60(&v156);
    goto LABEL_21;
  }

  v49 = v141;
  v50 = v150;
  if (v169 == 4)
  {
    goto LABEL_17;
  }

  v53 = v48;
LABEL_21:
  v54 = sub_2146D9588();

  v55 = v153;
  v56 = sub_2146D8B38();
  v57 = *(v55 + v134[7]);
  v58 = *(v55 + v134[8]);
  v59 = *(v55 + v134[9]);
  v60 = objc_opt_self();
  v61 = [v60 configurationIdentityWithProvider:v54 identifier:0 posterUUID:v56 version:v57 supplement:v58 role:v59];

  v62 = v151;
  v63 = sub_2146D8898();
  v64 = [v60 serverPathWithProviderURL:v63 identity:v61];

  v144 = v60;
  v147 = v64;
  v65 = [v60 configurationWithPath:v64];
  if (qword_27C902F58 != -1)
  {
    swift_once();
  }

  v66 = sub_2146D9208();
  v67 = __swift_project_value_buffer(v66, qword_27C904728);
  v68 = v49;
  v69 = v49;
  v70 = v152;
  v140 = *(v50 + 2);
  v140(v69, v62, v152);
  v71 = v61;
  v141 = v67;
  v72 = sub_2146D91E8();
  v73 = sub_2146D9BC8();

  v74 = os_log_type_enabled(v72, v73);
  v145 = v65;
  v150 = v50 + 4;
  v143 = v71;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = v68;
    v77 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *&v156 = v139;
    *v75 = 136315394;
    sub_2143B9F18(&qword_27C912630, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v78 = sub_2146DA428();
    v80 = v79;
    (v149)(v76, v152);
    v81 = sub_2144AEA38(v78, v80, &v156);

    *(v75 + 4) = v81;
    *(v75 + 12) = 2112;
    *(v75 + 14) = v71;
    *v77 = v71;
    v82 = v71;
    _os_log_impl(&dword_213FAF000, v72, v73, "Creating data from poster archive using provider URL: %s identity: %@", v75, 0x16u);
    sub_213FB2DF4(v77, &qword_27C9041E0, &qword_214736EF0);
    v70 = v152;
    MEMORY[0x216056AC0](v77, -1, -1);
    v83 = v139;
    __swift_destroy_boxed_opaque_existential_1(v139);
    v84 = v151;
    MEMORY[0x216056AC0](v83, -1, -1);
    MEMORY[0x216056AC0](v75, -1, -1);

    v85 = v153;
  }

  else
  {

    (v149)(v68, v70);
    v85 = v153;
    v84 = v151;
  }

  v86 = v85[11];
  v166 = v85[10];
  v167 = v86;
  v168[0] = v85[12];
  *(v168 + 9) = *(v85 + 201);
  v87 = v85[7];
  v162 = v85[6];
  v163 = v87;
  v88 = v85[9];
  v164 = v85[8];
  v165 = v88;
  v89 = v85[3];
  v158 = v85[2];
  v159 = v89;
  v90 = v85[5];
  v160 = v85[4];
  v161 = v90;
  v91 = v85[1];
  v156 = *v85;
  v157 = v91;
  v92 = *(v85 + 217);
  v93 = sub_2143B9F00(&v156);
  v94 = v147;
  v95 = v144;
  if (v93 == 1)
  {
    v96 = 0;
  }

  else
  {
    v154[10] = v166;
    v154[11] = v167;
    v155[0] = v168[0];
    *(v155 + 9) = *(v168 + 9);
    v154[6] = v162;
    v154[7] = v163;
    v154[8] = v164;
    v154[9] = v165;
    v154[2] = v158;
    v154[3] = v159;
    v154[4] = v160;
    v154[5] = v161;
    v154[0] = v156;
    v154[1] = v157;
    v96 = sub_2143AF6CC();
  }

  if (v92 == 2)
  {
    v97 = 0;
  }

  else
  {
    v97 = [v95 renderingConfigurationWithDepthEffectDisabled:v92 & 1 motionEffectsDisabled:(v92 >> 8) & 1];
  }

  v98 = [v95 configuredPropertiesWithTitleStyleConfiguration:v96 renderingConfiguration:v97];

  *&v154[0] = 0;
  v99 = [v95 storeConfiguredPropertiesForPath:v94 configuredProperties:v98 error:v154];

  if (!v99)
  {
    v32 = v94;
    v102 = *&v154[0];
    sub_2146D8838();

    swift_willThrow();
    goto LABEL_36;
  }

  v100 = *&v154[0];
  v32 = v145;
  v101 = v137;
  sub_2143B7DF8(v145);
  if (v101)
  {

LABEL_36:
    v103 = v149;
    (v149)(v142, v70);
    v103(v84, v70);
    v103(v148, v70);
    v103(v138, v70);
    return v32;
  }

  v105 = [v95 archiver];
  *&v154[0] = 0;
  v106 = [v105 archiveConfiguration:v32 error:v154];
  v107 = *&v154[0];
  if (!v106)
  {
    v111 = *&v154[0];
    sub_2146D8838();

    swift_willThrow();
    v112 = v149;
    (v149)(v142, v70);
    v112(v84, v70);
    v112(v148, v70);
    v112(v138, v70);
    return v32;
  }

  v108 = v136;
  v109 = v106;
  sub_2146D88E8();
  v110 = v107;

  v32 = sub_2146D8978();
  v114 = v113;
  v140(v135, v108, v70);
  sub_21402D9F8(v32, v114);
  sub_21402D9F8(v32, v114);
  v115 = sub_2146D91E8();
  LODWORD(v153) = sub_2146D9BC8();
  if (!os_log_type_enabled(v115, v153))
  {
    sub_213FB54FC(v32, v114);

    sub_213FB54FC(v32, v114);
    v126 = v149;
    (v149)(v135, v70);
    v126(v108, v70);
    v126(v142, v70);
    v126(v84, v70);
    v126(v148, v70);
    v126(v138, v70);
    return v32;
  }

  v144 = v115;
  v116 = swift_slowAlloc();
  v150 = v116;
  v141 = swift_slowAlloc();
  *&v154[0] = v141;
  *v116 = 136315394;
  sub_2143B9F18(&qword_27C912630, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v117 = v135;
  v118 = sub_2146DA428();
  v120 = v119;
  (v149)(v117, v70);
  v121 = v118;
  v122 = v150;
  v123 = sub_2144AEA38(v121, v120, v154);

  *(v122 + 1) = v123;
  *(v122 + 6) = 2048;
  v124 = v114 >> 62;
  if ((v114 >> 62) > 1)
  {
    if (v124 != 2)
    {
      sub_213FB54FC(v32, v114);
      v125 = 0;
      goto LABEL_53;
    }

    v128 = v32[2];
    v127 = v32[3];
    sub_213FB54FC(v32, v114);
    v125 = v127 - v128;
    if (!__OFSUB__(v127, v128))
    {
      goto LABEL_53;
    }

    __break(1u);
  }

  else if (!v124)
  {
    sub_213FB54FC(v32, v114);
    v125 = BYTE6(v114);
LABEL_53:
    v129 = v152;
    goto LABEL_54;
  }

  result = sub_213FB54FC(v32, v114);
  LODWORD(v125) = HIDWORD(v32) - v32;
  v129 = v152;
  if (!__OFSUB__(HIDWORD(v32), v32))
  {
    v125 = v125;
LABEL_54:
    *(v122 + 14) = v125;
    sub_213FB54FC(v32, v114);
    v130 = v144;
    _os_log_impl(&dword_213FAF000, v144, v153, "Successfully re-archived poster configuration to URL: %s data: (%ld bytes)", v122, 0x16u);
    v131 = v141;
    __swift_destroy_boxed_opaque_existential_1(v141);
    MEMORY[0x216056AC0](v131, -1, -1);
    MEMORY[0x216056AC0](v122, -1, -1);

    v132 = v149;
    (v149)(v136, v129);
    v132(v142, v129);
    v132(v151, v129);
    v132(v148, v129);
    v132(v138, v129);
    return v32;
  }

  __break(1u);
  return result;
}

CGColorRef sub_2143AF200()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v18 = [objc_opt_self() vibrantMaterialContentStyle];
    }

    else
    {
      v18 = [objc_opt_self() vibrantMonochromeContentStyle];
    }

    return v18;
  }

  v5 = *(v0 + 1);
  if (!*v0)
  {
    if (v5)
    {
      v6 = *(v0 + 2);
      if (v6 != 2)
      {
        v7 = *(v0 + 3);
        v8 = *(v5 + 16);
        if (!v8)
        {
LABEL_37:
          v35 = objc_opt_self();
          v36 = sub_2146D98E8();

          v37 = [v35 discreteColorsContentStyleForColors:v36 vibrant:v6 & 1 supportsVariation:(v6 >> 8) & 1 variation:v7];

          return v37;
        }

        v38 = *(v0 + 2);
        v43[0] = MEMORY[0x277D84F90];
        v9 = v43;
        sub_21409FD48(0, v8, 0);
        v10 = v43[0];
        if (qword_27C903248 != -1)
        {
          swift_once();
        }

        v11 = 0;
        v12 = qword_27C9179D8;
        v13 = (v5 + 48);
        while (v8 != v11)
        {
          if (v11 >= *(v5 + 16))
          {
            goto LABEL_41;
          }

          v14 = *v13;
          v39[0] = *(v13 - 1);
          v39[1] = v14;
          result = CGColorCreate(v12, v39);
          if (!result)
          {
            goto LABEL_44;
          }

          v9 = result;
          type metadata accessor for CGColor(0);
          v42 = v16;
          *&v41 = v9;
          v43[0] = v10;
          v1 = *(v10 + 16);
          v17 = *(v10 + 24);
          if (v1 >= v17 >> 1)
          {
            v9 = v43;
            sub_21409FD48((v17 > 1), v1 + 1, 1);
            v10 = v43[0];
          }

          ++v11;
          *(v10 + 16) = v1 + 1;
          sub_213FDC730(&v41, (v10 + 32 * v1 + 32));
          v13 += 2;
          if (v8 == v11)
          {
            v6 = v38;
            goto LABEL_37;
          }
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v1 = *(v0 + 5);
  if (!v1)
  {
    return 0;
  }

  v19 = v0[32];
  v7 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v8 = *(v5 + 16);
  if (!v8)
  {
LABEL_33:
    v28 = sub_2146D98E8();

    v29 = *(v1 + 16);
    if (v29)
    {
      *&v41 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v30 = (v1 + 32);
      do
      {
        v31 = *v30++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        --v29;
      }

      while (v29);
    }

    v32 = objc_opt_self();
    sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
    v33 = sub_2146D98E8();

    v34 = [v32 gradientContentStyleForColors:v28 gradientType:v19 locations:v33 startPoint:v7 endPoint:{v2, v3, v4}];

    return v34;
  }

  v38 = v0[32];
  v43[0] = MEMORY[0x277D84F90];
  sub_21409FD48(0, v8, 0);
  v9 = v43[0];
  if (qword_27C903248 != -1)
  {
    goto LABEL_42;
  }

LABEL_22:
  v20 = 0;
  v21 = qword_27C9179D8;
  v22 = (v5 + 48);
  while (1)
  {
    if (v8 == v20)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v20 >= *(v5 + 16))
    {
      goto LABEL_39;
    }

    v23 = *v22;
    v40[0] = *(v22 - 1);
    v40[1] = v23;
    result = CGColorCreate(v21, v40);
    if (!result)
    {
      break;
    }

    v24 = result;
    type metadata accessor for CGColor(0);
    v42 = v25;
    *&v41 = v24;
    v43[0] = v9;
    v27 = *(v9 + 2);
    v26 = *(v9 + 3);
    if (v27 >= v26 >> 1)
    {
      sub_21409FD48((v26 > 1), v27 + 1, 1);
      v9 = v43[0];
    }

    ++v20;
    *(v9 + 2) = v27 + 1;
    sub_213FDC730(&v41, v9 + 2 * v27 + 2);
    v22 += 2;
    if (v8 == v20)
    {
      v19 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

id sub_2143AF6CC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v20 = *(v0 + 17);
  v19 = *(v0 + 18);
  v3 = *(v0 + 88);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v17 = *(v0 + 176);
  v18 = *(v0 + 161);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = objc_opt_self();
  if (v2 == 2)
  {
    v9 = 0;
    if (v3 != 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    if (v4 <= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.rawValue.getter();
  v11 = sub_2146D9588();

  v9 = [v8 systemTimeFontConfigurationWithTimeFontIdentifier:v11 weight:v2 & 1 systemItem:v1];

  if (v3 == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = sub_2143AF200();
  if (v4 <= 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v4 != 3 && v4 != 4)
  {
    v12 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_9:
  v12 = sub_2146D9588();

  if (!v6)
  {
LABEL_10:
    v13 = 0;
LABEL_14:
    LOBYTE(v16) = v17;
    v14 = [v8 titleStyleConfigurationWithTimeFontConfiguration:v9 preferredTitleAlignment:v20 preferredTitleLayout:v19 titleContentStyle:v10 timeNumberingSystem:v12 userConfigured:v18 contentsLuminance:v5 alternateDateEnabled:v16 groupName:v13];
    swift_unknownObjectRelease();

    return v14;
  }

LABEL_12:
  if (v6 != 1)
  {

    v13 = sub_2146D9588();
    sub_213FDC6D0(v7, v6);
    goto LABEL_14;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2143AF930(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2143AF98C()
{
  v1 = 0x616C50726F467369;
  v2 = 0x7365636166;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69676572;
  }

  if (*v0)
  {
    v1 = 0x736E6F69676572;
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

uint64_t sub_2143AFA18()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143AFAE0(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143AFB94(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143AFC64(uint64_t *a1@<X8>)
{
  v2 = 0xEF646E756F726779;
  v3 = 0x616C50726F467369;
  v4 = 0xE500000000000000;
  v5 = 0x7365636166;
  if (*v1 != 2)
  {
    v5 = 0x6E6F69676572;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x736E6F69676572;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_2143AFCE8()
{
  v43 = *(v0 + 8);
  v44 = *v0;
  v41 = *(v0 + 24);
  v42 = *(v0 + 16);
  v39 = *(v0 + 40);
  v40 = *(v0 + 32);
  v37 = *(v0 + 56);
  v38 = *(v0 + 48);
  v35 = *(v0 + 72);
  v36 = *(v0 + 64);
  v33 = *(v0 + 88);
  v34 = *(v0 + 80);
  v31 = *(v0 + 104);
  v32 = *(v0 + 96);
  v29 = *(v0 + 120);
  v30 = *(v0 + 112);
  v27 = *(v0 + 128);
  v25 = *(v0 + 136);
  v1 = *(v0 + 145);
  v2 = *(v0 + 146);
  v3 = *(v0 + 147);
  v28 = *(v0 + 152);
  v26 = *(v0 + 160);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v15 = *(v0 + 240);
  v16 = *(v0 + 232);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  if (*(v0 + 144) == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2146D9588();
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D3B4B0]) initWithImageSize:v12 deviceResolution:v1 parallaxPadding:v2 visibleFrame:v3 adaptiveVisibleFrame:0 inactiveFrame:v44 adaptiveInactiveTopFrame:v43 spatialVisibleFrame:v42 spatialAdaptiveFrame:v41 timeFrame:v40 adaptiveTimeFrame:v39 salientContentFrame:v38 clockLayerOrder:v37 clockIntersection:v36 layoutVariant:v35 hasTopEdgeContact:v9 maxClockShift:v8 debugLayouts:{v10, v11, v34, v33, v32, v31, v9, v8, v10, v11, v28, v26, v24, v23, v22, v21, v20, v19, v30, v29, v27, v25, v18, v17, v16, v15, v5, v4, v6, v7, 0}];

  return v13;
}

void sub_2143AFF20(void *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  if (qword_27C902F58 != -1)
  {
    swift_once();
  }

  v6 = sub_2146D9208();
  __swift_project_value_buffer(v6, qword_27C904728);
  sub_2143B9FD0(a2, v32);
  sub_2143B9FD0(a2, v29);
  v7 = a1;
  v8 = sub_2146D91E8();
  v9 = sub_2146D9BC8();
  if (os_log_type_enabled(v8, v9))
  {
    v27 = a3;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 134218754;
    *(v10 + 4) = CVPixelBufferGetWidth(v7);
    *(v10 + 12) = 2048;
    *(v10 + 14) = CVPixelBufferGetHeight(v7);

    *(v10 + 22) = 2080;
    type metadata accessor for CGRect(0);
    v12 = sub_2146D9618();
    v14 = v13;
    sub_214310270(v32);
    v15 = sub_2144AEA38(v12, v14, &v28);

    *(v10 + 24) = v15;
    *(v10 + 32) = 2080;
    v16 = v31;
    if (!v31)
    {
      goto LABEL_9;
    }

    v17 = v30;

    sub_214310270(v29);
    v18 = sub_2144AEA38(v17, v16, &v28);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_213FAF000, v8, v9, "Creating parallax image layer from image: (width: %ld, height: %ld) frame: %s identifier: %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v11, -1, -1);
    MEMORY[0x216056AC0](v10, -1, -1);

    a3 = v27;
  }

  else
  {

    sub_214310270(v32);
    sub_214310270(v29);
  }

  if (*(a2 + 63))
  {
    v20 = a2[58];
    v19 = a2[59];
    v22 = a2[56];
    v21 = a2[57];
    v23 = a2[55];
    v24 = objc_allocWithZone(MEMORY[0x277D3B460]);

    v25 = sub_2146D9588();

    v26 = [v24 initWithImage:v7 frame:v25 zPosition:v23 identifier:{v22, v21, v20, v19}];

    *a3 = v26;
    return;
  }

LABEL_9:
  sub_2146DA018();
  __break(1u);
}

void sub_2143B024C(uint64_t a1)
{
  v3 = v2;
  v81[65] = *MEMORY[0x277D85DE8];
  v5 = sub_2146D8958();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *v1;
  memcpy(v61, v1 + 1, sizeof(v61));
  v9 = *(v1 + 288);
  v49 = *(v1 + 289);
  v50 = v9;
  v10 = *(v1 + 37);
  v11 = *(v1 + 304);
  v47 = *(v1 + 305);
  v48 = v11;
  if (qword_27C902F58 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = sub_2146D9208();
    __swift_project_value_buffer(v12, qword_27C904728);
    v13 = *(v6 + 16);
    v51 = a1;
    v13(v8, a1, v5);
    v14 = sub_2146D91E8();
    v15 = sub_2146D9BC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v55 = v16;
      v56 = swift_slowAlloc();
      v81[0] = v56;
      *v16 = 136315138;
      sub_2143B9F18(&qword_27C912630, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v17 = sub_2146DA428();
      v19 = v18;
      (*(v6 + 8))(v8, v5);
      v20 = sub_2144AEA38(v17, v19, v81);

      v21 = v55;
      *(v55 + 4) = v20;
      v22 = v21;
      _os_log_impl(&dword_213FAF000, v14, v15, "Saving unpacked layer stack to wallpaper URL: %s", v21, 0xCu);
      v23 = v56;
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x216056AC0](v23, -1, -1);
      MEMORY[0x216056AC0](v22, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v8 = v53;
    a1 = *(v53 + 2);
    v6 = MEMORY[0x277D84F90];
    if (!a1)
    {
      break;
    }

    v5 = v79;
    v60 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v24 = 0;
    v25 = (v8 + 32);
    v52 = a1;
    while (v24 < *(v8 + 2))
    {
      v56 = v3;
      v54 = v25;
      sub_2143B9FD0(v25, v81);
      sub_213FB2E54(v81, &v63, &qword_27C904858, &qword_214736F00);
      if (!*(&v64 + 1))
      {
        __break(1u);
      }

      v79[12] = v75;
      v79[13] = v76;
      v79[14] = v77;
      v80 = v78;
      v79[8] = v71;
      v79[9] = v72;
      v79[10] = v73;
      v79[11] = v74;
      v79[4] = v67;
      v79[5] = v68;
      v79[6] = v69;
      v79[7] = v70;
      v79[0] = v63;
      v79[1] = v64;
      v79[2] = v65;
      v79[3] = v66;
      sub_214053840(v79, &v63);
      sub_21406D2CC(v79);
      v27 = *(&v64 + 1);
      v26 = v65;
      v28 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      v55 = &v46;
      MEMORY[0x28223BE20](v28);
      *(&v46 - 2) = v81;
      v29 = *(v26 + 24);
      v30 = sub_21404A8B8(0, &qword_27C912648, 0x277D3B460);
      v31 = v56;
      v29(&v62, sub_2143BA02C, &v46 - 4, v30, v27, v26);
      v3 = v31;
      if (v31)
      {
        goto LABEL_16;
      }

      if (!v62)
      {
        v58 = 0xD000000000000066;
        v59 = 0x8000000214799830;
        MEMORY[0x2160545D0](58, 0xE100000000000000);
        v57 = 289;
        v42 = sub_2146DA428();
        MEMORY[0x2160545D0](v42);

        MEMORY[0x2160545D0](58, 0xE100000000000000);
        MEMORY[0x2160545D0](0x726579616CLL, 0xE500000000000000);
        v43 = v58;
        v44 = v59;
        sub_21404A6EC();
        swift_allocError();
        *v45 = 0xD00000000000002ELL;
        *(v45 + 8) = 0x80000002147998A0;
        strcpy((v45 + 16), "Expected Value");
        *(v45 + 31) = -18;
        *(v45 + 32) = v43;
        *(v45 + 40) = v44;
        swift_willThrow();
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1(&v63);
        sub_214310270(v81);

        return;
      }

      ++v24;
      __swift_destroy_boxed_opaque_existential_1(&v63);
      sub_214310270(v81);
      sub_2146D9F98();
      v6 = *(v60 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v8 = v53;
      v25 = v54 + 520;
      a1 = v52;
      if (v52 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

LABEL_12:
  v32 = sub_2143AFCE8();
  v33 = objc_allocWithZone(MEMORY[0x277D3B478]);
  sub_21404A8B8(0, &qword_27C912650, 0x277D3B470);
  v34 = sub_2146D98E8();

  v35 = [v33 initWithLayers:v34 layout:v32 depthEnabled:v50 parallaxDisabled:v49 clockAreaLuminance:v48 settlingEffectEnabled:v47 spatialPhotoEnabled:v10];

  v36 = [objc_allocWithZone(MEMORY[0x277D3B538]) initWithPortraitLayerStack:v35 landscapeLayerStack:0];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = sub_2146D8898();
  v81[0] = 0;
  LOBYTE(v37) = [v37 saveCompoundLayerStack:v38 toWallpaperURL:v39 error:v81];

  if (v37)
  {
    v40 = v81[0];
  }

  else
  {
    v41 = v81[0];
    sub_2146D8838();

    swift_willThrow();
  }
}

id sub_2143B09C0()
{
  v1 = v0[4];
  v2 = v0[9];
  v3 = v0[11];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    v5 = v0[3];

    v4 = sub_2146D9588();
    sub_213FDC6D0(v5, v1);
  }

  else
  {
    v4 = 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D3B4A0]) initWithAssetUUID_];

  if (v2)
  {

    v7 = sub_2146D9588();

    [v6 setSubpath_];

    [v6 setVersion_];
    return v6;
  }

LABEL_7:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2143B0AF0(void *a1)
{
  v166 = *MEMORY[0x277D85DE8];
  v3 = sub_2146D8858();
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x28223BE20](v3);
  v119 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2146D8958();
  v123 = *(v5 - 8);
  v124 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v129 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v112 - v8;
  v10 = *v1;
  DWORD2(v118) = v1[1];
  v11 = *(v1 + 4);
  v139[0] = *(v1 + 3);
  v139[1] = v11;
  v12 = *(v1 + 6);
  v139[2] = *(v1 + 5);
  v139[3] = v12;
  v14 = *(v1 + 14);
  v13 = *(v1 + 15);
  v139[5] = *(v1 + 8);
  memcpy(v133, v1 + 144, 0x132uLL);
  v15 = *(v1 + 632);
  v162 = *(v1 + 616);
  v163 = v15;
  v164 = *(v1 + 648);
  v165 = *(v1 + 332);
  v16 = *(v1 + 568);
  v158 = *(v1 + 552);
  v159 = v16;
  v17 = *(v1 + 600);
  v160 = *(v1 + 584);
  v161 = v17;
  v18 = *(v1 + 504);
  v154 = *(v1 + 488);
  v155 = v18;
  v19 = *(v1 + 536);
  v156 = *(v1 + 520);
  v157 = v19;
  v20 = *(v1 + 472);
  v152 = *(v1 + 456);
  v153 = v20;
  v127 = v1[666];
  v21 = *(v1 + 86);
  v116 = a1;
  v117 = v21;
  v128 = *(v1 + 87);
  v115 = v1[705];
  v22 = *(v1 + 90);
  v125 = *(v1 + 89);
  v126 = v22;
  v23 = [a1 assetDirectory];
  v130 = v9;
  sub_2146D88E8();

  v24 = [objc_allocWithZone(MEMORY[0x277D3B490]) initWithConfigurationType_];
  v25 = v24;
  v26 = 32;
  if (!v10)
  {
    v26 = 0;
  }

  if (DWORD2(v118))
  {
    v27 = v26 | 0x10;
  }

  else
  {
    v27 = v26;
  }

  [v24 setOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E9BF0;
  *&v118 = v14;
  *(&v118 + 1) = v13;
  *&v139[4] = v14;
  *(&v139[4] + 1) = v13;
  *(v28 + 32) = sub_2143B09C0();
  sub_21404A8B8(0, &qword_27C912638, 0x277D3B4A0);
  v29 = sub_2146D98E8();

  [v25 setMedia_];

  v149 = v162;
  v150[0] = v163;
  v150[1] = v164;
  v151 = v165;
  v145 = v158;
  v146 = v159;
  v147 = v160;
  v148 = v161;
  v142 = v154;
  v143[0] = v155;
  v143[1] = v156;
  v144 = v157;
  v140 = v152;
  v141 = v153;
  v30 = 0;
  if (sub_2143B9FB4(&v140) != 1)
  {
    v31 = *(&v140 + 1);
    *&v114 = v140;
    v32 = v141;
    v33 = v142;
    v34 = *v143;
    v35 = *(&v143[1] + 1);
    v112 = v144;
    v113 = *(v143 + 8);
    v36 = v145;
    v37 = objc_allocWithZone(MEMORY[0x277D3B488]);
    v38 = [v37 initWithScreenSize:v114 screenScale:v31 timeRect:v32 inactiveTimeRect:v33 parallaxPadding:{v34, v113, v35, v112, v36}];
    if (v151)
    {
      v39 = 0;
    }

    else
    {
      v40 = *(&v150[1] + 1);
      v112 = v149;
      v113 = *(v150 + 8);
      v41 = *&v150[0];
      v114 = *(&v148 + 1);
      v42 = *&v148;
      v43 = *(&v147 + 1);
      v44 = *&v147;
      v45 = *(&v146 + 1);
      v46 = *&v146;
      v47 = *(&v145 + 1);
      v48 = objc_allocWithZone(MEMORY[0x277D3B488]);
      v39 = [v48 initWithScreenSize:v47 screenScale:v46 timeRect:v45 inactiveTimeRect:v44 parallaxPadding:{v43, v42, v114, v112, v41, v113, v40}];
    }

    v30 = [objc_allocWithZone(MEMORY[0x277D3B530]) initWithPortraitConfiguration:v38 landscapeConfiguration:v39];
  }

  [v25 setLayoutConfiguration_];

  sub_214045DA4(MEMORY[0x277D84F90]);
  v49 = sub_2146D9468();

  [v25 setUserInfo_];

  v50 = &off_27817C000;
  v52 = v129;
  v51 = v130;
  v53 = v128;
  if (v127 != 2)
  {
    v54 = [v25 userInfo];
    if (v54)
    {
      v55 = v54;
      v56 = sub_2146D9488();

      *&v138[0] = sub_2146D95B8();
      *(&v138[0] + 1) = v57;
      sub_2146D9E98();
      *(&v138[1] + 1) = MEMORY[0x277D839B0];
      LOBYTE(v138[0]) = v127 & 1;
      sub_213FDC730(v138, &v136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v56;
      sub_2140528AC(&v136, v139, isUniquelyReferenced_nonNull_native);
      sub_21408DE3C(v139);
      if (v134)
      {
        v59 = sub_2146D9468();
      }

      else
      {
        v59 = 0;
      }

      [v25 setUserInfo_];

      v50 = &off_27817C000;
      v53 = v128;
      if (!v128)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    [v25 setUserInfo_];
  }

  if (!v53)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v53 == 1)
  {
LABEL_77:
    sub_2146DA018();
    __break(1u);
    return;
  }

  v60 = [v25 userInfo];
  if (v60)
  {
    v61 = v60;
    v62 = sub_2146D9488();

    *&v138[0] = sub_2146D95B8();
    *(&v138[0] + 1) = v63;
    v64 = MEMORY[0x277D837D0];
    sub_2146D9E98();
    *(&v138[1] + 1) = v64;
    *&v138[0] = v117;
    *(&v138[0] + 1) = v53;
    sub_213FDC730(v138, &v136);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *&v134 = v62;
    sub_2140528AC(&v136, v139, v65);
    sub_21408DE3C(v139);
    if (v134)
    {
      v66 = sub_2146D9468();
    }

    else
    {
      v66 = 0;
    }

    [v25 setUserInfo_];

    v50 = &off_27817C000;
    v52 = v129;
    v51 = v130;
  }

  else
  {
    sub_213FDC6D0(v117, v53);
    [v25 setUserInfo_];
  }

LABEL_27:
  if (!v125)
  {
    goto LABEL_46;
  }

  v67 = sub_2140463E0(MEMORY[0x277D84F90]);
  v68 = [v25 userInfo];
  if (v68)
  {
    v69 = v68;
    v70 = sub_2146D9488();

    *&v136 = 0x736E6F69676572;
    *(&v136 + 1) = 0xE700000000000000;
    sub_2146D9E98();
    if (*(v70 + 16) && (v71 = sub_21408C378(v139), (v72 & 1) != 0))
    {
      sub_2140537E4(*(v70 + 56) + 32 * v71, &v136);
    }

    else
    {
      v136 = 0u;
      v137 = 0u;
    }

    v50 = &off_27817C000;
    v134 = v136;
    v135 = v137;
    if (*(&v137 + 1))
    {

      sub_21408DE3C(v139);
      sub_213FDC730(&v134, v138);
    }

    else
    {
      *(&v138[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
      *&v138[0] = v67;

      sub_21408DE3C(v139);
      sub_213FB2DF4(&v134, &qword_27C913170, &qword_2146EAB20);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
    if (swift_dynamicCast())
    {
      if (*&v139[0])
      {
        v73 = *(v125 + 16);
        v74 = MEMORY[0x277D84F90];
        if (v73)
        {
          *&v138[0] = MEMORY[0x277D84F90];
          v75 = v125;
          sub_2146D9FB8();
          v76 = v75 + 56;
          do
          {
            CGRectCreateDictionaryRepresentation(*(v76 - 24));
            sub_2146D9F98();
            sub_2146D9FC8();
            sub_2146D9FD8();
            sub_2146D9FA8();
            v76 += 32;
            --v73;
          }

          while (v73);
          v74 = *&v138[0];
          v51 = v130;
          v50 = &off_27817C000;
        }

        v77 = swift_isUniquelyReferenced_nonNull_native();
        *&v138[0] = *&v139[0];
        *&v139[0] = 0x8000000000000000;
        sub_214052EEC(v74, 0x7365636166, 0xE500000000000000, v77);
        *&v139[0] = *&v138[0];
      }

      goto LABEL_45;
    }
  }

  else
  {

    memset(v138, 0, 32);
    sub_213FB2DF4(v138, &qword_27C913170, &qword_2146EAB20);
  }

  *&v139[0] = 0;
LABEL_45:

LABEL_46:
  if (!v126)
  {
    goto LABEL_65;
  }

  v78 = sub_2140463E0(MEMORY[0x277D84F90]);
  v79 = [v25 v50[68]];
  if (v79)
  {
    v80 = v79;
    v81 = sub_2146D9488();

    *&v136 = 0x736E6F69676572;
    *(&v136 + 1) = 0xE700000000000000;
    sub_2146D9E98();
    if (*(v81 + 16) && (v82 = sub_21408C378(v139), (v83 & 1) != 0))
    {
      sub_2140537E4(*(v81 + 56) + 32 * v82, &v136);
    }

    else
    {
      v136 = 0u;
      v137 = 0u;
    }

    v134 = v136;
    v135 = v137;
    if (*(&v137 + 1))
    {

      sub_21408DE3C(v139);
      sub_213FDC730(&v134, v138);
    }

    else
    {
      *(&v138[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
      *&v138[0] = v78;

      sub_21408DE3C(v139);
      sub_213FB2DF4(&v134, &qword_27C913170, &qword_2146EAB20);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
    if (swift_dynamicCast())
    {
      if (*&v139[0])
      {
        v84 = *(v126 + 16);
        v85 = MEMORY[0x277D84F90];
        if (v84)
        {
          *&v138[0] = MEMORY[0x277D84F90];
          v86 = v126;
          sub_2146D9FB8();
          v87 = v86 + 56;
          do
          {
            CGRectCreateDictionaryRepresentation(*(v87 - 24));
            sub_2146D9F98();
            sub_2146D9FC8();
            sub_2146D9FD8();
            sub_2146D9FA8();
            v87 += 32;
            --v84;
          }

          while (v84);
          v85 = *&v138[0];
          v51 = v130;
        }

        v88 = swift_isUniquelyReferenced_nonNull_native();
        *&v138[0] = *&v139[0];
        *&v139[0] = 0x8000000000000000;
        sub_214052EEC(v85, 0x6E6F69676572, 0xE600000000000000, v88);
        *&v139[0] = *&v138[0];
      }

      goto LABEL_64;
    }
  }

  else
  {

    memset(v138, 0, 32);
    sub_213FB2DF4(v138, &qword_27C913170, &qword_2146EAB20);
  }

  *&v139[0] = 0;
LABEL_64:

LABEL_65:
  memcpy(v139, v133, 0x132uLL);
  if (!*(&v118 + 1))
  {
    goto LABEL_77;
  }

  v136 = v118;
  v90 = v119;
  v89 = v120;
  v91 = v121;
  (*(v120 + 104))(v119, *MEMORY[0x277CC91D8], v121);
  sub_2142FC7E4(v133, v138);
  sub_214069AD8();

  sub_2146D8938();
  (*(v89 + 8))(v90, v91);

  v92 = v122;
  sub_2143B024C(v52);
  v94 = v123;
  v93 = v124;
  if (v92)
  {

    v95 = *(v94 + 8);
    v95(v52, v93);
    memcpy(v138, v139, 0x132uLL);
    sub_2142FC4F8(v138);
    v95(v51, v93);
    return;
  }

  v96 = v52;
  v97 = *(v123 + 8);
  v97(v96, v124);
  memcpy(v138, v139, 0x132uLL);
  sub_2142FC4F8(v138);
  v98 = sub_2146D8898();
  *&v136 = 0;
  v99 = [v25 saveToURL:v98 error:&v136];

  if (v99)
  {
    v100 = v136;
    v101 = sub_2140457C0(MEMORY[0x277D84F90]);
    v132 = v101;
    if (v115 == 2)
    {
      sub_2144AEF6C(0x616C50726F467369, 0xEF646E756F726779, &v136);
      sub_213FB2DF4(&v136, &qword_27C913170, &qword_2146EAB20);
      v102 = v132;
    }

    else
    {
      v105 = v101;
      *(&v137 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v136) = v115 & 1;
      sub_213FDC730(&v136, &v134);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v105;
      sub_2140524DC(&v134, 0x616C50726F467369, 0xEF646E756F726779, v106);
      v102 = v131;
      v132 = v131;
    }

    v107 = [v116 _path];
    sub_214641CCC(v102);

    v108 = sub_2146D9468();

    *&v136 = 0;
    v109 = [v107 storeUserInfo:v108 error:&v136];

    if (v109)
    {
      v110 = v136;
      v97(v130, v93);

      return;
    }

    v111 = v136;
    sub_2146D8838();

    swift_willThrow();
    v104 = v130;
  }

  else
  {
    v103 = v136;
    sub_2146D8838();

    swift_willThrow();
    v104 = v51;
  }

  v97(v104, v93);
}

unint64_t sub_2143B1B9C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_2143B1C68()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_2143B1C9C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2143B1CF4()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2143B1D28(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_2143B1D80()
{
  v1 = 0x79646F42736168;
  v2 = 0x6D49726174617661;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_2143B1E10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143B9A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2143B1E38(uint64_t a1)
{
  v2 = sub_2143B81F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B1E74(uint64_t a1)
{
  v2 = sub_2143B81F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B1EB0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123E8, &qword_214735920);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v21 = *(v1 + 8);
  v9 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v9;
  v10 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B81F4();

  sub_2146DAA28();
  v19 = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  sub_2143B8248(&qword_27C912400, sub_214311334, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2146DA388();
  if (v2)
  {
  }

  else
  {
    v11 = v17;
    v12 = v18;
    v13 = v16;

    LOBYTE(v19) = 1;
    sub_2146DA338();
    v19 = v12;
    v20 = v11;
    v22 = 2;
    sub_213FDCA18(v12, v11);
    sub_214061684();
    sub_2146DA308();
    sub_213FDC6BC(v19, v20);
    v19 = v13;
    v20 = v15;
    v22 = 3;
    sub_213FDCA18(v13, v15);
    sub_2146DA308();
    sub_213FDC6BC(v19, v20);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2143B215C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912408, &qword_214735930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B81F4();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_213FDC6BC(0, 0xF000000000000000);
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    v22 = 0;
    sub_2143B8248(&qword_27C912410, sub_2143112E0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2146DA1C8();
    v18 = v19;
    LOBYTE(v19) = 1;
    v21 = sub_2146DA178();
    v22 = 2;
    sub_21406116C();
    sub_2146DA148();
    v10 = v19;
    v11 = v20;
    sub_213FDC6BC(0, 0xF000000000000000);
    v22 = 3;
    sub_2146DA148();
    (*(v6 + 8))(v8, v5);
    v12 = v21 & 1;
    v13 = v19;
    v14 = v20;
    sub_213FDC6BC(0, 0xF000000000000000);
    *a2 = v18;
    *(a2 + 8) = v12;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;

    sub_213FDCA18(v10, v11);
    sub_213FDCA18(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_213FDC6BC(v10, v11);
    v15 = v13;
    v16 = v14;
  }

  return sub_213FDC6BC(v15, v16);
}

void sub_2143B24E4(void *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  if (*(v1 + 472))
  {
    v5 = *(v1 + 504);
    v4 = *(v1 + 512);
    v6 = *(v1 + 480);
    *&v67 = *(v1 + 472);
    *(&v67 + 1) = v6;
    v68 = *(v1 + 488);
    LOBYTE(v69) = v5;
    *(&v69 + 1) = v4;
    v7 = sub_2143AD5DC(a1);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912658, &qword_214736F08);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146E68F0;
  v11 = *(v1 + 8);
  *(v10 + 48) = *v1;
  *(v10 + 72) = v11;
  v12 = *(v1 + 24);
  *(v10 + 96) = *(v1 + 16);
  *(v10 + 32) = 6579570;
  *(v10 + 40) = 0xE300000000000000;
  *(v10 + 56) = 0x6E65657267;
  *(v10 + 64) = 0xE500000000000000;
  *(v10 + 80) = 1702194274;
  *(v10 + 88) = 0xE400000000000000;
  *(v10 + 104) = 0x6168706C61;
  *(v10 + 112) = 0xE500000000000000;
  *(v10 + 120) = v12;
  v13 = sub_2140464E4(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912660, &qword_214736F10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = *(v1 + 520);
  sub_213FB2E54(v1 + 32, &v51, &qword_27C904858, &qword_214736F00);
  if (!*(&v52 + 1))
  {
    __break(1u);
  }

  v79 = v63;
  v80 = v64;
  v81 = v65;
  v82 = v66;
  v75 = v59;
  v76 = v60;
  v77 = v61;
  v78 = v62;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v74 = v58;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v70 = v54;
  LOWORD(v50[0]) = 0;
  sub_2140615D0(v50);
  v46 = v50[8];
  v47 = v50[9];
  v48 = v50[10];
  v49 = v50[11];
  v42 = v50[4];
  v43 = v50[5];
  v44 = v50[6];
  v45 = v50[7];
  v38 = v50[0];
  v39 = v50[1];
  v40 = v50[2];
  v41 = v50[3];
  v15 = sub_21463C734(&v38);
  if (v2)
  {
    sub_21406D2CC(&v67);
    sub_213FDC6BC(v7, v9);
  }

  else
  {
    v17 = v15;
    v36 = a1;
    v37 = v16;
    sub_21406D2CC(&v67);
    sub_2146D87D8();
    swift_allocObject();
    sub_213FDCA18(v7, v9);
    sub_2146D87C8();
    *&v38 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    sub_2143B8248(&qword_27C912400, sub_214311334, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v18 = sub_2146D87B8();
    v34 = v19;
    v35 = v18;

    swift_allocObject();
    sub_2146D87C8();
    *&v38 = v13;
    BYTE8(v38) = v14;
    *&v39 = v17;
    *(&v39 + 1) = v37;
    *&v40 = v7;
    *(&v40 + 1) = v9;
    sub_2143BA048();
    v20 = sub_2146D87B8();
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912670, &qword_214736F18);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2146E6910;
    *(v23 + 32) = 0xD00000000000001ALL;
    *(v23 + 40) = 0x8000000214787660;
    *(v23 + 48) = v35;
    *(v23 + 56) = v34;
    *(v23 + 64) = 0xD000000000000012;
    *(v23 + 72) = 0x8000000214787680;
    *(v23 + 80) = v20;
    *(v23 + 88) = v22;
    sub_21402D9F8(v35, v34);
    v32 = v20;
    v33 = v22;
    sub_21402D9F8(v20, v22);
    v24 = sub_2140465E8(v23);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912678, &qword_214736F20);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v25 = [v36 _path];
    sub_214641F94(v24);

    v26 = sub_2146D9468();

    *&v38 = 0;
    v27 = v25;
    LOBYTE(v25) = [v25 storeUserInfo:v26 error:&v38];

    if (v25)
    {
      v28 = v38;
      sub_213FB54FC(v32, v33);
      sub_213FB54FC(v35, v34);

      sub_213FDC6BC(v17, v37);
      v29 = v7;
      v30 = v9;
    }

    else
    {
      v31 = v38;
      sub_2146D8838();

      swift_willThrow();
      sub_213FDC6BC(v7, v9);
      sub_213FB54FC(v35, v34);
      sub_213FB54FC(v32, v33);

      v29 = v17;
      v30 = v37;
    }

    sub_213FDC6BC(v29, v30);
    sub_213FDC6BC(v7, v9);
  }
}

uint64_t sub_2143B2B18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "gions";
  }

  else
  {
    v4 = "backgroundColorDescription";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "backgroundColorDescription";
  }

  else
  {
    v7 = "gions";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2143B2BC4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143B2C44(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143B2CB0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143B2D58()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_2143B2DC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143B9BE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2143B2DE8(uint64_t a1)
{
  v2 = sub_2143B82CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B2E24(uint64_t a1)
{
  v2 = sub_2143B82CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B2E60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912418, &qword_214735938);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B82CC();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA348();
  if (!v1)
  {
    v8[14] = 1;
    sub_2146DA348();
    v8[13] = 2;
    sub_2146DA348();
    v8[12] = 3;
    sub_2146DA348();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2143B3034@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912428, &qword_214735940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B82CC();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_2146DA188();
    v10 = v9;
    v21 = 1;
    sub_2146DA188();
    v12 = v11;
    v20 = 2;
    sub_2146DA188();
    v15 = v14;
    v19 = 3;
    sub_2146DA188();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143B32E8(uint64_t a1)
{
  v2 = sub_2143B8320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B3324(uint64_t a1)
{
  v2 = sub_2143B8320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B3360(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912430, &qword_214735948);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8320();
  sub_2146DAA28();
  v14 = v9;
  v13 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v14 = v8;
    v13 = 1;
    sub_2146DA388();
    v14 = v10;
    v13 = 2;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2143B354C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912440, &qword_214735950);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8320();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v9 = v15;
    v14 = 1;
    sub_2146DA1C8();
    v11 = v15;
    v14 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_2143B37C8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_2143B37D8(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_2143B3868(uint64_t a1)
{
  v2 = sub_2143B8374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B38A4(uint64_t a1)
{
  v2 = sub_2143B8374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B38E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912448, &qword_214735958);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v13 = *(v1 + 3);
  v14 = v9;
  v11 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8374();
  sub_2146DAA28();
  *&v15 = v8;
  v17 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 1;
    sub_2143B83C8();
    sub_2146DA388();
    *&v15 = v11;
    v17 = 2;
    sub_2146DA388();
    *&v15 = v10;
    v17 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2143B3B04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912460, &qword_214735960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8374();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v9 = v16;
    v18 = 1;
    sub_2143B841C();
    sub_2146DA1C8();
    v14 = v17;
    v15 = v16;
    v18 = 2;
    sub_2146DA1C8();
    v11 = v16;
    v18 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    *a2 = v9;
    v13 = v15;
    *(a2 + 24) = v14;
    *(a2 + 8) = v13;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_2143B3E00@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_2143B3E10(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_2143B3F30(uint64_t a1)
{
  v2 = sub_2143B8470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B3F6C(uint64_t a1)
{
  v2 = sub_2143B8470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B3FA8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912470, &qword_214735968);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v17 = *(v1 + 40);
  v18 = v10;
  v12 = *(v1 + 56);
  v11 = *(v1 + 64);
  v14 = *(v1 + 72);
  v13 = *(v1 + 80);
  v15 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8470();
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  sub_2146DA338();
  if (!v2)
  {
    *&v19 = v8;
    *(&v19 + 1) = v9;
    v21 = 1;
    type metadata accessor for CGPoint(0);
    sub_2143B9F18(&qword_27C9058D0, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
    sub_2146DA388();
    v20 = v17;
    v19 = v18;
    v21 = 2;
    sub_2143B83C8();
    sub_2146DA388();
    *&v19 = v12;
    v21 = 3;
    sub_214311334();
    sub_2146DA388();
    *&v19 = v11;
    v21 = 4;
    sub_2146DA388();
    *&v19 = v14;
    v21 = 5;
    sub_2146DA388();
    *&v19 = v13;
    v21 = 6;
    sub_2146DA388();
    *&v19 = v15;
    v21 = 7;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2143B4300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912480, &qword_214735970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8470();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    v9 = sub_2146DA178();
    type metadata accessor for CGPoint(0);
    v22 = 1;
    sub_2143B9F18(&qword_27C9058B8, type metadata accessor for CGPoint, MEMORY[0x277CBF2B8]);
    sub_2146DA1C8();
    v10 = v20;
    v22 = 2;
    sub_2143B841C();
    sub_2146DA1C8();
    v18 = v20;
    v19 = v21;
    v22 = 3;
    sub_2143112E0();
    sub_2146DA1C8();
    v11 = v20;
    v22 = 4;
    sub_2146DA1C8();
    v12 = v20;
    v22 = 5;
    sub_2146DA1C8();
    v13 = v20;
    v22 = 6;
    sub_2146DA1C8();
    v15 = v20;
    v22 = 7;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v16 = v20;
    *a2 = v9 & 1;
    *(a2 + 8) = v10;
    v17 = v19;
    *(a2 + 24) = v18;
    *(a2 + 40) = v17;
    *(a2 + 56) = v11;
    *(a2 + 64) = v12;
    *(a2 + 72) = v13;
    *(a2 + 80) = v15;
    *(a2 + 88) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_2143B4788@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_2143B47A4(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

__n128 sub_2143B47E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 88);
  result = *(v1 + 97);
  *(a1 + 41) = result;
  return result;
}

__n128 sub_2143B4800(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

uint64_t sub_2143B4840(uint64_t a1)
{
  v2 = sub_2143B84C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B487C(uint64_t a1)
{
  v2 = sub_2143B84C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B48B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912488, &qword_214735978);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  v22 = *(v3 + 16);
  v23 = v9;
  v11 = *(v3 + 40);
  v20 = *(v3 + 32);
  v21 = v10;
  v19 = v11;
  v27 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B84C4();
  v12 = v5;
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  sub_2146DA368();
  if (!v2)
  {
    v13 = v21;
    v14 = v22;
    v15 = v20;
    LOBYTE(v24) = 1;
    sub_2146DA368();
    *&v24 = v14;
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912498, &qword_214735980);
    sub_2143B8614(&qword_27C9124A0, sub_2143B8518, MEMORY[0x277D83948]);
    sub_2146DA388();
    *&v24 = v13;
    *(&v24 + 1) = v15;
    *&v25 = v19;
    BYTE8(v25) = v27;
    v28 = 3;
    sub_2143B856C();
    sub_2146DA308();
    v16 = *(v3 + 72);
    v24 = *(v3 + 56);
    v25 = v16;
    v26[0] = *(v3 + 88);
    *(v26 + 9) = *(v3 + 97);
    v28 = 4;
    sub_2143B85C0();
    sub_2146DA308();
  }

  return (*(v6 + 8))(v8, v12);
}

void sub_2143B4B70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9124C0, &qword_214735988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v62 = 1;
  v9 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2143B84C4();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v10 = v6;
    LOBYTE(v42) = 0;
    v11 = v5;
    v12 = sub_2146DA1A8();
    LOBYTE(v42) = 1;
    v32 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912498, &qword_214735980);
    LOBYTE(v34) = 2;
    sub_2143B8614(&qword_27C9124C8, sub_2143B868C, MEMORY[0x277D83978]);
    sub_2146DA1C8();
    v13 = v42;
    LOBYTE(v34) = 3;
    sub_2143B86E0();
    sub_2146DA148();
    v29 = v43;
    v30 = v42;
    v31 = v44;
    v62 = v45;
    v63 = 4;
    sub_2143B8734();
    sub_2146DA148();
    (*(v10 + 8))(v8, v11);
    v27 = v58;
    v28 = v57;
    v24 = v59;
    v25 = *(&v58 + 1);
    v22 = v60;
    v23 = *(&v59 + 1);
    v21 = *(&v60 + 1);
    v14 = v32;
    *&v34 = v12;
    *(&v34 + 1) = v32;
    v15 = v29;
    v16 = v30;
    *&v35 = v13;
    *(&v35 + 1) = v30;
    *&v36 = v29;
    *(&v36 + 1) = v31;
    v26 = v62;
    LOBYTE(v37) = v62;
    *(&v37 + 1) = v57;
    v38 = v58;
    LOBYTE(v11) = v61;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    *(a2 + 112) = v61;
    v17 = v34;
    v18 = v35;
    v19 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v19;
    *a2 = v17;
    *(a2 + 16) = v18;
    v20 = v39;
    *(a2 + 64) = v38;
    *(a2 + 80) = v20;
    *(a2 + 96) = v40;
    sub_2143B8788(&v34, &v42);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v42 = v12;
    v43 = v14;
    v44 = v13;
    v45 = v16;
    v46 = v15;
    v47 = v31;
    v48 = v26;
    v49 = v28;
    v50 = v27;
    v51 = v25;
    v52 = v24;
    v53 = v23;
    v54 = v22;
    v55 = v21;
    v56 = v11;
    sub_2143B87C0(&v42);
  }
}

uint64_t sub_2143B4F94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_213FB2E54(v11, v10, &qword_27C9124E8, &qword_214735990);
}

__n128 sub_2143B5014(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C9124E8, &qword_214735990);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t sub_2143B516C()
{
  v1 = *(v0 + 136);

  return v1;
}

void sub_2143B519C(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

unint64_t sub_2143B5224()
{
  v1 = *v0;
  v2 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2143B52CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143B9D48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2143B52F4(uint64_t a1)
{
  v2 = sub_2143B87F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B5330(uint64_t a1)
{
  v2 = sub_2143B87F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B536C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9124F0, &qword_214735998);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = v1[5];
  v42 = v1[4];
  v43 = v7;
  v44 = v1[6];
  v45 = *(v1 + 112);
  v8 = v1[1];
  v38 = *v1;
  v39 = v8;
  v9 = v1[3];
  v40 = v1[2];
  v41 = v9;
  v10 = *(v1 + 15);
  v17 = *(v1 + 16);
  v18 = v10;
  v11 = *(v1 + 17);
  v15 = *(v1 + 18);
  v16 = v11;
  v14[3] = *(v1 + 152);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v38, &v30, &qword_27C9124E8, &qword_214735990);
  sub_2143B87F0();
  sub_2146DAA28();
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v29 = 0;
  sub_2143B8844();
  v12 = v46;
  sub_2146DA308();
  if (v12)
  {
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    sub_213FB2DF4(&v21, &qword_27C9124E8, &qword_214735990);
  }

  else
  {
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    sub_213FB2DF4(&v21, &qword_27C9124E8, &qword_214735990);
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    sub_2143B8248(&qword_27C912400, sub_214311334, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_2146DA388();
    v20 = v17;
    v19 = 2;
    sub_2146DA388();
    LOBYTE(v20) = 3;
    sub_2146DA328();
    LOBYTE(v20) = 4;
    sub_2146DA2C8();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_2143B56E8(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912508, &qword_2147359A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2143B87F0();
  sub_2146DAA08();
  if (v2)
  {
    v44 = v2;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    LODWORD(v39) = 0;
    v94 = 0;
    LODWORD(v38) = 0;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v58 = v48;
    v59 = v47;
    v60 = v46;
    v61 = v45;
    v62 = v43;
    v63 = v40;
    v64 = v41;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    sub_213FB2DF4(&v58, &qword_27C9124E8, &qword_214735990);
    if (v39)
    {
    }

    if (v94)
    {
    }

    if (v38)
    {
    }
  }

  else
  {
    v96 = 0;
    sub_2143B8898();
    sub_2146DA148();
    v39 = a2;
    v47 = v80;
    v48 = v79;
    v45 = v82;
    v46 = v81;
    v10 = v84;
    v43 = v83;
    v41 = v85;
    v33 = v87;
    v34 = v86;
    v31 = v89;
    v32 = v88;
    v29 = v91;
    v30 = v90;
    v28 = v92;
    HIDWORD(v27) = v93;
    memset(v78, 0, 113);
    sub_213FB2DF4(v78, &qword_27C9124E8, &qword_214735990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    LOBYTE(v49) = 1;
    sub_2143B8248(&qword_27C912410, sub_2143112E0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2146DA1C8();
    v40 = v10;
    v37 = v58;
    LOBYTE(v49) = 2;
    sub_2146DA1C8();
    v36 = v58;
    LOBYTE(v58) = 3;
    v11 = sub_2146DA168();
    v35 = v12;
    v95 = 4;
    v13 = sub_2146DA108();
    v44 = 0;
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v16 = v47;
    v15 = v48;
    *&v49 = v48;
    *(&v49 + 1) = v47;
    v17 = v46;
    v18 = v11;
    v38 = v11;
    v19 = v45;
    *&v50 = v46;
    *(&v50 + 1) = v45;
    v20 = v43;
    *&v51 = v43;
    *(&v51 + 1) = v10;
    v21 = v41;
    *&v52 = v41;
    *(&v52 + 1) = v34;
    *&v53 = v33;
    *(&v53 + 1) = v32;
    *&v54 = v31;
    *(&v54 + 1) = v30;
    *&v55 = v29;
    *(&v55 + 1) = v28;
    LOBYTE(v56) = BYTE4(v27);
    *(&v56 + 1) = v37;
    *&v57[0] = v36;
    *(&v57[0] + 1) = v18;
    *&v57[1] = v35;
    BYTE8(v57[1]) = v14;
    v22 = v54;
    v23 = v39;
    v39[4] = v53;
    v23[5] = v22;
    v24 = v50;
    *v23 = v49;
    v23[1] = v24;
    *(v23 + 137) = *(v57 + 9);
    v25 = v57[0];
    v23[7] = v56;
    v23[8] = v25;
    v23[6] = v55;
    v26 = v52;
    v23[2] = v51;
    v23[3] = v26;
    sub_2143B88EC(&v49, &v58);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v58 = v15;
    v59 = v16;
    v60 = v17;
    v61 = v19;
    v62 = v20;
    v63 = v10;
    v64 = v21;
    v65 = v34;
    v66 = v33;
    v67 = v32;
    v68 = v31;
    v69 = v30;
    v70 = v29;
    v71 = v28;
    v72 = BYTE4(v27);
    v73 = v37;
    v74 = v36;
    v75 = v38;
    v76 = v35;
    v77 = v14;
    sub_2143B8924(&v58);
  }
}

void sub_2143B5CD8(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

void sub_2143B5D4C(void *a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v72 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 48);
  v73 = *(v1 + 9);
  v75 = *(v1 + 7);
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1[13];
  v12 = *(v1 + 112);
  v14 = v1[19];
  v13 = v1[20];
  v16 = v1[21];
  v15 = v1[22];
  v69 = v1[23];
  v70 = v1[24];
  v68 = *(v1 + 200);
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  sub_2146D8798();
  v57 = a1;
  if (v5)
  {
    if (v8)
    {
      v17 = 0;
    }

    else
    {
      v17 = v4;
    }

    if (v8)
    {
      v18 = 0;
    }

    else
    {
      v18 = v6;
    }

    if (v8)
    {
      v19 = 0;
    }

    else
    {
      v19 = v7;
    }

    v64 = v19;
    v65 = v18;
    if (v12)
    {
      v20 = 0uLL;
      v9 = 0;
      v21 = 1;
      v10 = 0;
      v11 = 0;
      v22 = 0uLL;
    }

    else
    {
      v21 = 0;
      v22 = v73;
      v20 = v75;
    }

    v63 = v21;
    v66 = v17;
    v67 = v3;
    v24 = *(v5 + 16);
    v23 = MEMORY[0x277D84F90];
    v74 = v22;
    v76 = v20;
    if (v24)
    {
      *&v79 = MEMORY[0x277D84F90];
      sub_21409FE4C(0, v24, 0);
      v25 = 0;
      v23 = v79;
      v26 = *(v79 + 16);
      v27 = 96 * v26;
      do
      {
        v28 = *(v5 + v25 + 32);
        v29 = *(v5 + v25 + 40);
        v30 = *(v5 + v25 + 56);
        v31 = *(v5 + v25 + 72);
        v32 = *(v5 + v25 + 88);
        v33 = *(v5 + v25 + 104);
        v34 = *(v5 + v25 + 120);
        *&v79 = v23;
        v35 = *(v23 + 24);
        v36 = v26 + 1;
        if (v26 >= v35 >> 1)
        {
          v59 = v30;
          v62 = v29;
          v58 = v31;
          v55 = v33;
          v56 = v32;
          sub_21409FE4C((v35 > 1), v26 + 1, 1);
          v33 = v55;
          v32 = v56;
          v31 = v58;
          v30 = v59;
          v29 = v62;
          v23 = v79;
        }

        *(v23 + 16) = v36;
        v37 = v23 + v27 + v25;
        *(v37 + 32) = v28;
        v38 = v77[0];
        *(v37 + 36) = *(v77 + 3);
        *(v37 + 33) = v38;
        *(v37 + 40) = v29;
        *(v37 + 56) = v30;
        *(v37 + 72) = v31;
        *(v37 + 88) = v32;
        *(v37 + 104) = v33;
        *(v37 + 120) = v34;
        v25 += 96;
        v26 = v36;
        --v24;
      }

      while (v24);
    }

    v61 = v8 & 1;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v72 = 0;
    v23 = 0;
    v64 = 0;
    v65 = 0;
    v61 = 0;
    v63 = 0;
    v74 = 0u;
    v76 = 0u;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912658, &qword_214736F08);
  v39 = swift_allocObject();
  *(v39 + 32) = 6579570;
  *(v39 + 16) = xmmword_2146E68F0;
  *(v39 + 40) = 0xE300000000000000;
  *(v39 + 48) = v14;
  *(v39 + 56) = 0x6E65657267;
  *(v39 + 64) = 0xE500000000000000;
  *(v39 + 72) = v13;
  *(v39 + 80) = 1702194274;
  *(v39 + 88) = 0xE400000000000000;
  *(v39 + 96) = v16;
  *(v39 + 104) = 0x6168706C61;
  *(v39 + 112) = 0xE500000000000000;
  *(v39 + 120) = v15;
  v60 = sub_2140464E4(v39);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912660, &qword_214736F10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = swift_allocObject();
  *(v40 + 32) = 6579570;
  *(v40 + 16) = xmmword_2146E68F0;
  *(v40 + 40) = 0xE300000000000000;
  *(v40 + 48) = v14;
  *(v40 + 56) = 0x6E65657267;
  *(v40 + 64) = 0xE500000000000000;
  *(v40 + 72) = v13;
  *(v40 + 80) = 1702194274;
  *(v40 + 88) = 0xE400000000000000;
  *(v40 + 96) = v16;
  *(v40 + 104) = 0x6168706C61;
  *(v40 + 112) = 0xE500000000000000;
  *(v40 + 120) = v15;
  v41 = sub_2140464E4(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v79 = v67;
  *(&v79 + 1) = v72;
  *&v80 = v23;
  *(&v80 + 1) = v66;
  *&v81 = v65;
  *(&v81 + 1) = v64;
  v82[0] = v61;
  v82[7] = 0;
  *&v82[5] = 0;
  *&v82[1] = 0;
  *&v82[8] = v76;
  *&v82[24] = v74;
  *&v82[40] = v9;
  *&v83 = v10;
  *(&v83 + 1) = v11;
  LOBYTE(v84) = v63;
  *(&v84 + 1) = v60;
  *v85 = v41;
  *&v85[8] = v69;
  *&v85[16] = v70;
  v85[24] = v68;
  swift_allocObject();

  sub_2146D87C8();
  *&v77[0] = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  sub_2143B8248(&qword_27C912400, sub_214311334, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v42 = sub_2146D87B8();
  if (v71)
  {

    sub_2143B8924(&v79);
  }

  else
  {
    v44 = v42;
    v45 = v43;

    swift_allocObject();
    sub_2146D87C8();
    v77[7] = v84;
    v78[0] = *v85;
    *(v78 + 9) = *&v85[9];
    v77[2] = v81;
    v77[3] = *v82;
    v77[4] = *&v82[16];
    v77[5] = *&v82[32];
    v77[6] = v83;
    v77[0] = v79;
    v77[1] = v80;
    sub_2143BA09C();
    v46 = sub_2146D87B8();
    v48 = v47;

    sub_2143B8924(&v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912670, &qword_214736F18);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_2146E6910;
    *(v49 + 32) = 0xD00000000000001ALL;
    *(v49 + 40) = 0x8000000214787660;
    *(v49 + 48) = v44;
    *(v49 + 56) = v45;
    *(v49 + 64) = 0xD000000000000012;
    *(v49 + 72) = 0x8000000214787680;
    *(v49 + 80) = v46;
    *(v49 + 88) = v48;
    sub_21402D9F8(v44, v45);
    sub_21402D9F8(v46, v48);
    v50 = sub_2140465E8(v49);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912678, &qword_214736F20);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v51 = [v57 _path];
    sub_214641F94(v50);

    v52 = sub_2146D9468();

    *&v77[0] = 0;
    LOBYTE(v49) = [v51 storeUserInfo:v52 error:v77];

    if (v49)
    {
      v53 = *&v77[0];
    }

    else
    {
      v54 = *&v77[0];
      sub_2146D8838();

      swift_willThrow();
    }

    sub_213FB54FC(v44, v45);
    sub_213FB54FC(v46, v48);
  }
}

id sub_2143B652C(void *a1)
{
  v16[40] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912658, &qword_214736F08);
  inited = swift_initStackObject();
  *(inited + 32) = 6579570;
  *(inited + 16) = xmmword_2146E68F0;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = 0x6E65657267;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v4;
  *(inited + 80) = 1702194274;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v5;
  *(inited + 104) = 0x6168706C61;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v6;
  v9 = sub_2140464E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912660, &qword_214736F10);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912688, &qword_214736F28);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E6910;
  v11 = MEMORY[0x277D837D0];
  sub_2146D9E98();
  *(v10 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  *(v10 + 72) = v9;
  v16[1] = 0xE700000000000000;
  sub_2146D9E98();
  *(v10 + 168) = v11;
  *(v10 + 144) = (v7 << 48) + 0x31746573657270;
  *(v10 + 152) = 0xE700000000000000;
  sub_214045DA4(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041B0, &unk_2146EAB10);
  swift_arrayDestroy();
  v12 = [a1 _path];
  v13 = sub_2146D9468();

  v16[0] = 0;
  LODWORD(a1) = [v12 storeUserInfo:v13 error:v16];

  if (a1)
  {
    return v16[0];
  }

  v15 = v16[0];
  sub_2146D8838();

  return swift_willThrow();
}

uint64_t sub_2143B6824()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_2143B6884()
{
  if (*v0)
  {
    return 0x6F6C6F4365736162;
  }

  else
  {
    return 0x746E6169726176;
  }
}

id sub_2143B68C4(void *a1)
{
  v31[15] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  v5 = *(v1 + 40);
  v6 = *(v1 + 44);
  v7 = *(v1 + 64);
  v8 = *(v1 + 68);
  v9 = *(v1 + 88);
  v10 = *(v1 + 92);
  v11 = *(v1 + 112);
  v12 = *(v1 + 116);
  v13 = *(v1 + 136);
  v14 = *(v1 + 140);
  v15 = *(v1 + 160);
  v16 = *(v1 + 164);
  v17 = *(v1 + 184);
  v18 = *(v1 + 188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E68E0;
  if (v4 & 1) != 0 || (v20 = MEMORY[0x277D83A90], v21 = MEMORY[0x277D83B08], *(v19 + 56) = MEMORY[0x277D83A90], *(v19 + 64) = v21, *(v19 + 32) = v3, (v6) || (*(v19 + 96) = v20, *(v19 + 104) = v21, *(v19 + 72) = v5, (v8) || (*(v19 + 136) = v20, *(v19 + 144) = v21, *(v19 + 112) = v7, (v10) || (*(v19 + 176) = v20, *(v19 + 184) = v21, *(v19 + 152) = v9, (v12) || (*(v19 + 216) = v20, *(v19 + 224) = v21, *(v19 + 192) = v11, (v14) || (*(v19 + 256) = v20, *(v19 + 264) = v21, *(v19 + 232) = v13, (v16) || (*(v19 + 296) = v20, *(v19 + 304) = v21, *(v19 + 272) = v15, (v18))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(v19 + 336) = v20;
    *(v19 + 344) = v21;
    *(v19 + 312) = v17;
    v22 = sub_2146D95D8();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912688, &qword_214736F28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v31[1] = 0xE600000000000000;
    v26 = MEMORY[0x277D837D0];
    sub_2146D9E98();
    *(inited + 96) = v26;
    *(inited + 72) = v22;
    *(inited + 80) = v24;
    sub_214045DA4(inited);
    swift_setDeallocating();
    sub_213FB2DF4(inited + 32, &qword_27C9041B0, &unk_2146EAB10);
    v27 = [a1 _path];
    v28 = sub_2146D9468();

    v31[0] = 0;
    LODWORD(inited) = [v27 storeUserInfo:v28 error:v31];

    if (inited)
    {
      return v31[0];
    }

    else
    {
      v30 = v31[0];
      sub_2146D8838();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2143B6C14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6C6F4365736162;
  }

  else
  {
    v3 = 0x746E6169726176;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x6F6C6F4365736162;
  }

  else
  {
    v5 = 0x746E6169726176;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2143B6CC0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143B6D48(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143B6DBC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143B6E4C(uint64_t *a1@<X8>)
{
  v2 = 0x746E6169726176;
  if (*v1)
  {
    v2 = 0x6F6C6F4365736162;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2143B6EE4()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_2143B6F14(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_2143B6F6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2143B6F78(uint64_t a1)
{
  v2 = sub_2143B8954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B6FB4(uint64_t a1)
{
  v2 = sub_2143B8954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B6FF0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912518, &qword_2147359A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8954();

  sub_2146DAA28();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  sub_2143B8248(&qword_27C912400, sub_214311334, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2146DA388();

  if (!v2)
  {
    v12 = 1;
    sub_2146DA328();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2143B71D8(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912528, &qword_2147359B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8954();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    v13[15] = 0;
    sub_2143B8248(&qword_27C912410, sub_2143112E0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2146DA1C8();
    v9 = v14;
    v13[14] = 1;
    v10 = sub_2146DA168();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_2143B7464(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2143B74C0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143B7568(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143B75FC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143B76AC(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_2143B7704()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2143B7768(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_2143B77B4(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

uint64_t sub_2143B782C()
{
  if (*v0)
  {
    return 0x6F436D6F74737563;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2143B7874(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F436D6F74737563;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEB00000000726F6CLL;
  }

  if (*a2)
  {
    v5 = 0x6F436D6F74737563;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xEB00000000726F6CLL;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2143B7928()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143B79B8(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143B7A34(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143B7ACC(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x6F436D6F74737563;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEB00000000726F6CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_2143B7B18(void *a1)
{
  v30[18] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v7 = *(v1 + 3);
  v6 = *(v1 + 4);
  v8 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912688, &qword_214736F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  v30[0] = 0x696669746E656469;
  v30[1] = 0xEA00000000007265;
  v10 = MEMORY[0x277D837D0];
  sub_2146D9E98();
  LOBYTE(v30[0]) = v3;
  v11 = DynamicPoster.DynamicPosterType.rawValue.getter();
  *(inited + 96) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = sub_214045DA4(inited);
  swift_setDeallocating();
  sub_213FB2DF4(inited + 32, &qword_27C9041B0, &unk_2146EAB10);
  if ((v8 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2146E68F0;
    v15 = MEMORY[0x277D839F8];
    v16 = MEMORY[0x277D83A80];
    *(v14 + 56) = MEMORY[0x277D839F8];
    *(v14 + 64) = v16;
    *(v14 + 32) = v5;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = v4;
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 112) = v7;
    *(v14 + 176) = v15;
    *(v14 + 184) = v16;
    *(v14 + 152) = v6;
    v17 = sub_2146D95D8();
    v19 = v18;
    sub_2146D9E98();
    v29 = v10;
    *&v28 = v17;
    *(&v28 + 1) = v19;
    sub_213FDC730(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v13;
    sub_2140528AC(v27, v30, isUniquelyReferenced_nonNull_native);
    sub_21408DE3C(v30);
  }

  v21 = [a1 _path];
  v22 = sub_2146D9468();

  v30[0] = 0;
  v23 = [v21 storeUserInfo:v22 error:v30];

  if (v23)
  {
    return v30[0];
  }

  v25 = v30[0];
  sub_2146D8838();

  return swift_willThrow();
}

id sub_2143B7DF8(void *a1)
{
  sub_214323660(v1, __src);
  if (v7 > 2u)
  {
    if (v7 == 3)
    {
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      LOBYTE(__dst[2]) = __src[32];
      return sub_2143B652C(a1);
    }

    else if (v7 == 4)
    {
      __dst[8] = *&__src[128];
      __dst[9] = *&__src[144];
      __dst[10] = *&__src[160];
      *(&__dst[10] + 14) = *&__src[174];
      __dst[4] = *&__src[64];
      __dst[5] = *&__src[80];
      __dst[6] = *&__src[96];
      __dst[7] = *&__src[112];
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      __dst[2] = *&__src[32];
      __dst[3] = *&__src[48];
      v4[8] = *&__src[128];
      v4[9] = *&__src[144];
      v4[10] = *&__src[160];
      *(&v4[10] + 14) = *&__src[174];
      v4[4] = *&__src[64];
      v4[5] = *&__src[80];
      v4[6] = *&__src[96];
      v4[7] = *&__src[112];
      v4[0] = *__src;
      v4[1] = *&__src[16];
      v4[2] = *&__src[32];
      v4[3] = *&__src[48];
      sub_2143B68C4(a1);
      return sub_2142FD404(__dst);
    }

    else
    {
      return sub_2143B7B18(a1);
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      memcpy(__dst, __src, 0x209uLL);
      sub_2143B24E4(a1);
      return sub_2143238B4(__dst);
    }

    else
    {
      __dst[10] = *&__src[160];
      __dst[11] = *&__src[176];
      *(&__dst[11] + 9) = *&__src[185];
      __dst[6] = *&__src[96];
      __dst[7] = *&__src[112];
      __dst[8] = *&__src[128];
      __dst[9] = *&__src[144];
      __dst[2] = *&__src[32];
      __dst[3] = *&__src[48];
      __dst[4] = *&__src[64];
      __dst[5] = *&__src[80];
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      v4[10] = *&__src[160];
      v4[11] = *&__src[176];
      *(&v4[11] + 9) = *&__src[185];
      v4[6] = *&__src[96];
      v4[7] = *&__src[112];
      v4[8] = *&__src[128];
      v4[9] = *&__src[144];
      v4[2] = *&__src[32];
      v4[3] = *&__src[48];
      v4[4] = *&__src[64];
      v4[5] = *&__src[80];
      v4[0] = *__src;
      v4[1] = *&__src[16];
      sub_2143B5D4C(a1);
      return sub_21432380C(__dst);
    }
  }

  else
  {
    memcpy(__dst, __src, 0x2D8uLL);
    memcpy(v4, __src, 0x2D8uLL);
    sub_2143B0AF0(a1);
    return sub_2142FC228(__dst);
  }
}

uint64_t sub_2143B80D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterArchive(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143B8134(uint64_t a1)
{
  v2 = type metadata accessor for PosterArchive(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143B8190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterArchive(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2143B81F4()
{
  result = qword_27C9123F0;
  if (!qword_27C9123F0)
  {
    result = swift_getWitnessTable(byte_214736EA0, &type metadata for AvatarPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9123F0);
  }

  return result;
}

uint64_t sub_2143B8248(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9123F8, &qword_214735928);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143B82CC()
{
  result = qword_27C912420;
  if (!qword_27C912420)
  {
    result = swift_getWitnessTable(byte_214736E50, &type metadata for MonogramPosterConfiguration.GradientDefinition.GradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912420);
  }

  return result;
}

unint64_t sub_2143B8320()
{
  result = qword_27C912438;
  if (!qword_27C912438)
  {
    result = swift_getWitnessTable(aH_3, &type metadata for MonogramPosterConfiguration.GradientDefinition.CenterMovementConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912438);
  }

  return result;
}

unint64_t sub_2143B8374()
{
  result = qword_27C912450;
  if (!qword_27C912450)
  {
    result = swift_getWitnessTable(aYh, &type metadata for MonogramPosterConfiguration.GradientDefinition.TextPlatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912450);
  }

  return result;
}

unint64_t sub_2143B83C8()
{
  result = qword_27C912458;
  if (!qword_27C912458)
  {
    result = swift_getWitnessTable(byte_214735C2C, &type metadata for MonogramPosterConfiguration.GradientDefinition.GradientColor, v0, v1);
    atomic_store(result, &qword_27C912458);
  }

  return result;
}

unint64_t sub_2143B841C()
{
  result = qword_27C912468;
  if (!qword_27C912468)
  {
    result = swift_getWitnessTable(byte_214735C04, &type metadata for MonogramPosterConfiguration.GradientDefinition.GradientColor, v0, v1);
    atomic_store(result, &qword_27C912468);
  }

  return result;
}

unint64_t sub_2143B8470()
{
  result = qword_27C912478;
  if (!qword_27C912478)
  {
    result = swift_getWitnessTable(byte_214736D60, &type metadata for MonogramPosterConfiguration.GradientDefinition.MeshGradientPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912478);
  }

  return result;
}

unint64_t sub_2143B84C4()
{
  result = qword_27C912490;
  if (!qword_27C912490)
  {
    result = swift_getWitnessTable(byte_214736D10, &type metadata for MonogramPosterConfiguration.GradientDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912490);
  }

  return result;
}

unint64_t sub_2143B8518()
{
  result = qword_27C9124A8;
  if (!qword_27C9124A8)
  {
    result = swift_getWitnessTable(byte_214735D1C, &type metadata for MonogramPosterConfiguration.GradientDefinition.MeshGradientPoint, v0, v1);
    atomic_store(result, &qword_27C9124A8);
  }

  return result;
}

unint64_t sub_2143B856C()
{
  result = qword_27C9124B0;
  if (!qword_27C9124B0)
  {
    result = swift_getWitnessTable(aA_9, &type metadata for MonogramPosterConfiguration.GradientDefinition.CenterMovementConfiguration, v0, v1);
    atomic_store(result, &qword_27C9124B0);
  }

  return result;
}

unint64_t sub_2143B85C0()
{
  result = qword_27C9124B8;
  if (!qword_27C9124B8)
  {
    result = swift_getWitnessTable(aA_10, &type metadata for MonogramPosterConfiguration.GradientDefinition.TextPlatterConfiguration, v0, v1);
    atomic_store(result, &qword_27C9124B8);
  }

  return result;
}

uint64_t sub_2143B8614(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912498, &qword_214735980);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143B868C()
{
  result = qword_27C9124D0;
  if (!qword_27C9124D0)
  {
    result = swift_getWitnessTable(byte_214735CF4, &type metadata for MonogramPosterConfiguration.GradientDefinition.MeshGradientPoint, v0, v1);
    atomic_store(result, &qword_27C9124D0);
  }

  return result;
}

unint64_t sub_2143B86E0()
{
  result = qword_27C9124D8;
  if (!qword_27C9124D8)
  {
    result = swift_getWitnessTable(byte_214735C54, &type metadata for MonogramPosterConfiguration.GradientDefinition.CenterMovementConfiguration, v0, v1);
    atomic_store(result, &qword_27C9124D8);
  }

  return result;
}

unint64_t sub_2143B8734()
{
  result = qword_27C9124E0;
  if (!qword_27C9124E0)
  {
    result = swift_getWitnessTable(aEe_0, &type metadata for MonogramPosterConfiguration.GradientDefinition.TextPlatterConfiguration, v0, v1);
    atomic_store(result, &qword_27C9124E0);
  }

  return result;
}

unint64_t sub_2143B87F0()
{
  result = qword_27C9124F8;
  if (!qword_27C9124F8)
  {
    result = swift_getWitnessTable(aIi, &type metadata for MonogramPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9124F8);
  }

  return result;
}

unint64_t sub_2143B8844()
{
  result = qword_27C912500;
  if (!qword_27C912500)
  {
    result = swift_getWitnessTable(aQ_9, &type metadata for MonogramPosterConfiguration.GradientDefinition, v0, v1);
    atomic_store(result, &qword_27C912500);
  }

  return result;
}

unint64_t sub_2143B8898()
{
  result = qword_27C912510;
  if (!qword_27C912510)
  {
    result = swift_getWitnessTable(byte_214735D60, &type metadata for MonogramPosterConfiguration.GradientDefinition, v0, v1);
    atomic_store(result, &qword_27C912510);
  }

  return result;
}

unint64_t sub_2143B8954()
{
  result = qword_27C912520;
  if (!qword_27C912520)
  {
    result = swift_getWitnessTable(byte_214736C70, &type metadata for GradientPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912520);
  }

  return result;
}

unint64_t sub_2143B89AC()
{
  result = qword_27C912530;
  if (!qword_27C912530)
  {
    result = swift_getWitnessTable(byte_2147359B8, &type metadata for PhotoPosterUserInfoKey, v0, v1);
    atomic_store(result, &qword_27C912530);
  }

  return result;
}

unint64_t sub_2143B8A04()
{
  result = qword_27C912538;
  if (!qword_27C912538)
  {
    result = swift_getWitnessTable(aQf, &type metadata for AvatarPosterUserInfoKey, v0, v1);
    atomic_store(result, &qword_27C912538);
  }

  return result;
}

unint64_t sub_2143B8A5C()
{
  result = qword_27C912540;
  if (!qword_27C912540)
  {
    result = swift_getWitnessTable(byte_214735B48, &type metadata for MonogramPosterUserInfoKey, v0, v1);
    atomic_store(result, &qword_27C912540);
  }

  return result;
}

uint64_t sub_2143B8B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143B8B48()
{
  result = qword_27C912548;
  if (!qword_27C912548)
  {
    result = swift_getWitnessTable(byte_214735E00, &type metadata for MonogramPosterColorDescriptionKey, v0, v1);
    atomic_store(result, &qword_27C912548);
  }

  return result;
}

unint64_t sub_2143B8BA0()
{
  result = qword_27C912550;
  if (!qword_27C912550)
  {
    result = swift_getWitnessTable(aB_4, &type metadata for GradientPosterUserInfoKey, v0, v1);
    atomic_store(result, &qword_27C912550);
  }

  return result;
}

unint64_t sub_2143B8BF8()
{
  result = qword_27C912558;
  if (!qword_27C912558)
  {
    result = swift_getWitnessTable(a9a, &type metadata for GradientPosterColorDescriptionKey, v0, v1);
    atomic_store(result, &qword_27C912558);
  }

  return result;
}

unint64_t sub_2143B8C50()
{
  result = qword_27C912560;
  if (!qword_27C912560)
  {
    result = swift_getWitnessTable(byte_214736030, &type metadata for GradientVFXPosterKey, v0, v1);
    atomic_store(result, &qword_27C912560);
  }

  return result;
}

unint64_t sub_2143B8CA8()
{
  result = qword_27C912568;
  if (!qword_27C912568)
  {
    result = swift_getWitnessTable(byte_2147360D0, &type metadata for DynamicPosterUserInfoKey, v0, v1);
    atomic_store(result, &qword_27C912568);
  }

  return result;
}

uint64_t dispatch thunk of static BlastDoorAVTBridging.dataFor(descriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2143B8D58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2143B8DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143B8E0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143B8E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2143B8EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_2143B8F40(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2143B8FFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
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

uint64_t sub_2143B9050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2143B90DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2143B9124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143B9228()
{
  result = qword_27C912570;
  if (!qword_27C912570)
  {
    result = swift_getWitnessTable(byte_214736740, &type metadata for AvatarPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912570);
  }

  return result;
}

unint64_t sub_2143B9280()
{
  result = qword_27C912578;
  if (!qword_27C912578)
  {
    result = swift_getWitnessTable(byte_2147367F8, &type metadata for MonogramPosterConfiguration.GradientDefinition.GradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912578);
  }

  return result;
}

unint64_t sub_2143B92D8()
{
  result = qword_27C912580;
  if (!qword_27C912580)
  {
    result = swift_getWitnessTable(byte_2147368B0, &type metadata for MonogramPosterConfiguration.GradientDefinition.CenterMovementConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912580);
  }

  return result;
}

unint64_t sub_2143B9330()
{
  result = qword_27C912588;
  if (!qword_27C912588)
  {
    result = swift_getWitnessTable(aA7, &type metadata for MonogramPosterConfiguration.GradientDefinition.TextPlatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912588);
  }

  return result;
}

unint64_t sub_2143B9388()
{
  result = qword_27C912590;
  if (!qword_27C912590)
  {
    result = swift_getWitnessTable(byte_214736A20, &type metadata for MonogramPosterConfiguration.GradientDefinition.MeshGradientPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912590);
  }

  return result;
}

unint64_t sub_2143B93E0()
{
  result = qword_27C912598;
  if (!qword_27C912598)
  {
    result = swift_getWitnessTable(byte_214736AD8, &type metadata for MonogramPosterConfiguration.GradientDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912598);
  }

  return result;
}

unint64_t sub_2143B9438()
{
  result = qword_27C9125A0;
  if (!qword_27C9125A0)
  {
    result = swift_getWitnessTable(a95, &type metadata for MonogramPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125A0);
  }

  return result;
}

unint64_t sub_2143B9490()
{
  result = qword_27C9125A8;
  if (!qword_27C9125A8)
  {
    result = swift_getWitnessTable(byte_214736C48, &type metadata for GradientPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125A8);
  }

  return result;
}

unint64_t sub_2143B94E8()
{
  result = qword_27C9125B0;
  if (!qword_27C9125B0)
  {
    result = swift_getWitnessTable(byte_214736BB8, &type metadata for GradientPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125B0);
  }

  return result;
}

unint64_t sub_2143B9540()
{
  result = qword_27C9125B8;
  if (!qword_27C9125B8)
  {
    result = swift_getWitnessTable(byte_214736BE0, &type metadata for GradientPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125B8);
  }

  return result;
}

unint64_t sub_2143B9598()
{
  result = qword_27C9125C0;
  if (!qword_27C9125C0)
  {
    result = swift_getWitnessTable(byte_214736B00, &type metadata for MonogramPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125C0);
  }

  return result;
}

unint64_t sub_2143B95F0()
{
  result = qword_27C9125C8;
  if (!qword_27C9125C8)
  {
    result = swift_getWitnessTable(byte_214736B28, &type metadata for MonogramPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125C8);
  }

  return result;
}

unint64_t sub_2143B9648()
{
  result = qword_27C9125D0;
  if (!qword_27C9125D0)
  {
    result = swift_getWitnessTable(aYe, &type metadata for MonogramPosterConfiguration.GradientDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125D0);
  }

  return result;
}

unint64_t sub_2143B96A0()
{
  result = qword_27C9125D8;
  if (!qword_27C9125D8)
  {
    result = swift_getWitnessTable(aIa, &type metadata for MonogramPosterConfiguration.GradientDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125D8);
  }

  return result;
}

unint64_t sub_2143B96F8()
{
  result = qword_27C9125E0;
  if (!qword_27C9125E0)
  {
    result = swift_getWitnessTable(byte_214736990, &type metadata for MonogramPosterConfiguration.GradientDefinition.MeshGradientPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125E0);
  }

  return result;
}

unint64_t sub_2143B9750()
{
  result = qword_27C9125E8;
  if (!qword_27C9125E8)
  {
    result = swift_getWitnessTable(aB_5, &type metadata for MonogramPosterConfiguration.GradientDefinition.MeshGradientPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125E8);
  }

  return result;
}

unint64_t sub_2143B97A8()
{
  result = qword_27C9125F0;
  if (!qword_27C9125F0)
  {
    result = swift_getWitnessTable(byte_2147368D8, &type metadata for MonogramPosterConfiguration.GradientDefinition.TextPlatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125F0);
  }

  return result;
}

unint64_t sub_2143B9800()
{
  result = qword_27C9125F8;
  if (!qword_27C9125F8)
  {
    result = swift_getWitnessTable(byte_214736900, &type metadata for MonogramPosterConfiguration.GradientDefinition.TextPlatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9125F8);
  }

  return result;
}

unint64_t sub_2143B9858()
{
  result = qword_27C912600;
  if (!qword_27C912600)
  {
    result = swift_getWitnessTable(byte_214736820, &type metadata for MonogramPosterConfiguration.GradientDefinition.CenterMovementConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912600);
  }

  return result;
}

unint64_t sub_2143B98B0()
{
  result = qword_27C912608;
  if (!qword_27C912608)
  {
    result = swift_getWitnessTable(byte_214736848, &type metadata for MonogramPosterConfiguration.GradientDefinition.CenterMovementConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912608);
  }

  return result;
}

unint64_t sub_2143B9908()
{
  result = qword_27C912610;
  if (!qword_27C912610)
  {
    result = swift_getWitnessTable(a9h, &type metadata for MonogramPosterConfiguration.GradientDefinition.GradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912610);
  }

  return result;
}

unint64_t sub_2143B9960()
{
  result = qword_27C912618;
  if (!qword_27C912618)
  {
    result = swift_getWitnessTable(aId_7, &type metadata for MonogramPosterConfiguration.GradientDefinition.GradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912618);
  }

  return result;
}

unint64_t sub_2143B99B8()
{
  result = qword_27C912620;
  if (!qword_27C912620)
  {
    result = swift_getWitnessTable(byte_2147366B0, &type metadata for AvatarPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912620);
  }

  return result;
}

unint64_t sub_2143B9A10()
{
  result = qword_27C912628;
  if (!qword_27C912628)
  {
    result = swift_getWitnessTable(byte_2147366D8, &type metadata for AvatarPosterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C912628);
  }

  return result;
}

uint64_t sub_2143B9A64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000214787660 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79646F42736168 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002147997D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2143B9BE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2143B9D48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000214795480 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002147997F0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000214787660 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000214799810 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2143B9F00(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2143B9F18(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2143B9FB4(uint64_t a1)
{
  if (*(a1 + 209))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2143BA048()
{
  result = qword_27C912668;
  if (!qword_27C912668)
  {
    result = swift_getWitnessTable(byte_214735B20, &type metadata for AvatarPosterConfiguration, v0, v1);
    atomic_store(result, &qword_27C912668);
  }

  return result;
}

unint64_t sub_2143BA09C()
{
  result = qword_27C912680;
  if (!qword_27C912680)
  {
    result = swift_getWitnessTable(byte_214735DD8, &type metadata for MonogramPosterConfiguration, v0, v1);
    atomic_store(result, &qword_27C912680);
  }

  return result;
}

void sub_2143BA150(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F43646573756E75 && a2 == 0xED0000747865746ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_2143BA1E0(uint64_t a1)
{
  v2 = sub_2143BA390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143BA21C(uint64_t a1)
{
  v2 = sub_2143BA390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewAudio.Constraints.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912690, &qword_214736F30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BA390();
  sub_2146DAA28();
  sub_2146DA3B8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2143BA390()
{
  result = qword_280B30A30;
  if (!qword_280B30A30)
  {
    result = swift_getWitnessTable(byte_214737270, &type metadata for PreviewAudio.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30A30);
  }

  return result;
}

uint64_t PreviewAudio.Constraints.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912698, &qword_214736F38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BA390();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = sub_2146DA1F8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143BA550(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912690, &qword_214736F30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BA390();
  sub_2146DAA28();
  sub_2146DA3B8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2143BA70C()
{
  if (*v0)
  {
    return 0x76654C7265776F70;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

void sub_2143BA750(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x76654C7265776F70 && a2 == 0xEB00000000736C65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
}

uint64_t sub_2143BA830(uint64_t a1)
{
  v2 = sub_2143BAA6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143BA86C(uint64_t a1)
{
  v2 = sub_2143BAA6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewAudio.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126A0, &qword_214736F40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BAA6C();
  sub_2146DAA28();
  v12 = 0;
  sub_2146DA348();
  if (!v2)
  {
    v11 = v8;
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126A8, &qword_214736F48);
    sub_2143BACC0(&qword_280B2E3B8, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2143BAA6C()
{
  result = qword_280B30A48;
  if (!qword_280B30A48)
  {
    result = swift_getWitnessTable(aD_3, &type metadata for PreviewAudio.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30A48);
  }

  return result;
}

uint64_t PreviewAudio.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126B0, &qword_214736F50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BAA6C();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = 0;
    sub_2146DA188();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9126A8, &qword_214736F48);
    v13[15] = 1;
    sub_2143BACC0(&qword_280B2E3B0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v10;
    *(a2 + 1) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143BACC0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9126A8, &qword_214736F48);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

BlastDoor::PreviewAudio __swiftcall PreviewAudio.init(durationValue:powerLevelValues:)(Swift::Double durationValue, Swift::OpaquePointer powerLevelValues)
{
  *v2 = durationValue;
  *(v2 + 8) = powerLevelValues;
  result.duration = durationValue;
  result.powerLevels = powerLevelValues;
  return result;
}

unint64_t sub_2143BAD74()
{
  result = qword_280B30A10;
  if (!qword_280B30A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewAudio.Constraints, &type metadata for PreviewAudio.Constraints, v0, v1);
    atomic_store(result, &qword_280B30A10);
  }

  return result;
}

unint64_t sub_2143BADCC()
{
  result = qword_280B30A18;
  if (!qword_280B30A18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewAudio.Constraints, &type metadata for PreviewAudio.Constraints, v0, v1);
    atomic_store(result, &qword_280B30A18);
  }

  return result;
}

unint64_t sub_2143BAE20(uint64_t a1)
{
  result = sub_2143BAE48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2143BAE48()
{
  result = qword_280B309F8;
  if (!qword_280B309F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewAudio, &type metadata for PreviewAudio, v0, v1);
    atomic_store(result, &qword_280B309F8);
  }

  return result;
}

unint64_t sub_2143BAE9C(uint64_t a1)
{
  *(a1 + 8) = sub_2143BAECC();
  result = sub_2143BAF20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143BAECC()
{
  result = qword_280B30A00;
  if (!qword_280B30A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewAudio, &type metadata for PreviewAudio, v0, v1);
    atomic_store(result, &qword_280B30A00);
  }

  return result;
}

unint64_t sub_2143BAF20()
{
  result = qword_280B30A08;
  if (!qword_280B30A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewAudio, &type metadata for PreviewAudio, v0, v1);
    atomic_store(result, &qword_280B30A08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAudio.Constraints(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for PreviewAudio.Constraints(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_2143BB0BC()
{
  result = qword_27C9126B8;
  if (!qword_27C9126B8)
  {
    result = swift_getWitnessTable(byte_214737140, &type metadata for PreviewAudio.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9126B8);
  }

  return result;
}

unint64_t sub_2143BB114()
{
  result = qword_27C9126C0;
  if (!qword_27C9126C0)
  {
    result = swift_getWitnessTable(byte_2147371F8, &type metadata for PreviewAudio.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9126C0);
  }

  return result;
}

unint64_t sub_2143BB16C()
{
  result = qword_280B30A38;
  if (!qword_280B30A38)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for PreviewAudio.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30A38);
  }

  return result;
}

unint64_t sub_2143BB1C4()
{
  result = qword_280B30A40;
  if (!qword_280B30A40)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for PreviewAudio.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30A40);
  }

  return result;
}

unint64_t sub_2143BB21C()
{
  result = qword_280B30A20;
  if (!qword_280B30A20)
  {
    result = swift_getWitnessTable(byte_2147370B0, &type metadata for PreviewAudio.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30A20);
  }

  return result;
}

unint64_t sub_2143BB274()
{
  result = qword_280B30A28;
  if (!qword_280B30A28)
  {
    result = swift_getWitnessTable(byte_2147370D8, &type metadata for PreviewAudio.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B30A28);
  }

  return result;
}

unint64_t sub_2143BB2C8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_213FB7994;
  v5[3] = 0;
  v5[4] = 3072;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2143BB430@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143BB488(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2143BB4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 136);
  v3 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2143BB53C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2143BB598@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2143BB5E4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143BB640()
{
  v1 = *(v0 + 80);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 72);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143BB6C8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 136);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BB744()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 176);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BB7C0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2143BB90C(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2143BB9FC()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2143BBA30(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2143BBAB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 72);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2143BBB2C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2143BBBDC(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143BBCA8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 80);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 72);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143BBD48;
  }

  return result;
}

uint64_t sub_2143BBD48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143BBE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143BBEDC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  return result;
}

void (*sub_2143BBF64(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143BC004;
}

void sub_2143BC004(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  free(v2);
}

uint64_t sub_2143BC114()
{
  v1 = *(v0 + 96);
  sub_213FDCA18(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_2143BC148(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 96), *(v2 + 104));
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_2143BC1D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 144);
  if (v4)
  {
    *a2 = *(a1 + 136);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_2143BC240(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2143BC2F0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 120);
  v8 = *(v2 + 152);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143BC438(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 144);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 136);
    a1[1] = v3;

    return sub_2143BC4D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143BC4D4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 120);
    v10 = *(v3 + 152);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 136) = v4;
      *(v3 + 144) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 120);
  v10 = *(v3 + 152);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 136) = v4;
  *(v3 + 144) = v2;
}

void sub_2143BC6F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v6;
  *(a2 + 144) = v5;
  *(a2 + 152) = v7;
}

void (*sub_2143BC76C(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v7 = *(v1 + 136);
  v6 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143BC804;
}

void sub_2143BC804(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  else
  {

    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  free(v2);
}

uint64_t sub_2143BC904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 184);
  if (v4)
  {
    *a2 = *(a1 + 176);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_2143BC974(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2143BCA24(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 160);
  v8 = *(v2 + 192);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 176) = a1;
    *(v2 + 184) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143BCB6C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 184);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 176);
    a1[1] = v3;

    return sub_2143BCC08;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143BCC08(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 160);
    v10 = *(v3 + 192);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 176) = v4;
      *(v3 + 184) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 160);
  v10 = *(v3 + 192);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 176) = v4;
  *(v3 + 184) = v2;
}

void sub_2143BCE28(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 160) = v4;
  *(a2 + 168) = v3;
  *(a2 + 176) = v6;
  *(a2 + 184) = v5;
  *(a2 + 192) = v7;
}

void (*sub_2143BCEA0(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 168);
  v7 = *(v1 + 176);
  v6 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143BCF38;
}

void sub_2143BCF38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
  }

  else
  {

    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
  }

  free(v2);
}

unint64_t sub_2143BD06C()
{
  result = qword_27C9126C8;
  if (!qword_27C9126C8)
  {
    result = swift_getWitnessTable(asc_2147372C0, &type metadata for IDSSessionInvitation.TransportType, v0, v1);
    atomic_store(result, &qword_27C9126C8);
  }

  return result;
}

uint64_t sub_2143BD118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy195_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 191) = *(a2 + 191);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_2143BD198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 195))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143BD1E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 194) = 0;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 195) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 195) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143BD278()
{
  result = qword_27C9126D0;
  if (!qword_27C9126D0)
  {
    result = swift_getWitnessTable(aY_10, &type metadata for IDSSessionInvitation.TransportType, v0, v1);
    atomic_store(result, &qword_27C9126D0);
  }

  return result;
}

unint64_t sub_2143BD2CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_2143BDD00(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_2143BDC9C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_2146D8A18();
    v16 = v15;
    result = sub_213FB54FC(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t sub_2143BD420(uint64_t a1, unint64_t a2, char *a3, char a4)
{
  v6 = *a3;
  sub_2143BD9C8(a4 & 1, &v25);
  if (!v26)
  {
    sub_213FB2DF4(&v25, &qword_27C9126E8, &qword_2147377C8);
LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  sub_214047B54(&v25, v27);
  v7 = sub_2146D96A8();
  v8 = v28;
  v9 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v9 + 8))(v8, v9);
  v10 = sub_2146D96A8();

  if (v10 >= v7)
  {
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v19 = sub_2146D9208();
    __swift_project_value_buffer(v19, qword_280B34D98);

    v20 = sub_2146D91E8();
    v21 = sub_2146D9BA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v25 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2144AEA38(a1, a2, &v25);
      _os_log_impl(&dword_213FAF000, v20, v21, "Destination URI is not valid: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x216056AC0](v23, -1, -1);
      MEMORY[0x216056AC0](v22, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
    goto LABEL_16;
  }

  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  LOBYTE(v25) = v6;
  v13 = (*(v12 + 16))(a1, a2, &v25, v11, v12);
  if ((v13 & 1) == 0)
  {
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v14 = sub_2146D9208();
    __swift_project_value_buffer(v14, qword_280B34D98);

    v15 = sub_2146D91E8();
    v16 = sub_2146D9BA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v25 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2144AEA38(a1, a2, &v25);
      _os_log_impl(&dword_213FAF000, v15, v16, "Destination URI is not valid: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216056AC0](v18, -1, -1);
      MEMORY[0x216056AC0](v17, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v13 & 1;
}

uint64_t sub_2143BD77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912700, &unk_2147377E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68F0;
  *(inited + 32) = 0x3A6F746C69616DLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for EmailValidator;
  *(inited + 80) = &off_282680E48;
  *(inited + 88) = 980182388;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 128) = &type metadata for PhoneNumberValidator;
  *(inited + 136) = &off_282680E30;
  *(inited + 144) = 0x3A6E656B6F74;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 184) = &type metadata for TokenValidator;
  *(inited + 192) = &off_282680E18;
  *(inited + 200) = 0x3A7A69623A6E7275;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 240) = &type metadata for BusinessIdentifierValidator;
  *(inited + 248) = &off_282680DE8;
  v1 = sub_214046700(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904030, &qword_2146EA978);
  result = swift_arrayDestroy();
  off_27C9126D8 = v1;
  return result;
}

uint64_t sub_2143BD8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912700, &unk_2147377E0);
  inited = swift_initStackObject();
  *(inited + 32) = 980445555;
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 72) = &type metadata for SIPAddressValidator;
  *(inited + 80) = &off_282680E00;
  *(inited + 88) = 0x3A6F746C69616DLL;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 128) = &type metadata for EmailValidator;
  *(inited + 136) = &off_282680E48;
  *(inited + 144) = 980182388;
  *(inited + 152) = 0xE400000000000000;
  *(inited + 184) = &type metadata for PhoneNumberValidator;
  *(inited + 192) = &off_282680E30;
  v1 = sub_214046700(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904030, &qword_2146EA978);
  result = swift_arrayDestroy();
  qword_27C9126E0 = v1;
  return result;
}

uint64_t sub_2143BD9C8@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    if (qword_27C902F90 != -1)
    {
      swift_once();
    }

    v4 = &off_27C9126D8;
    goto LABEL_7;
  }

  if (qword_27C902F98 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v4 = &qword_27C9126E0;
LABEL_7:
    v5 = *v4;
    v6 = (*v4 + 64);
    v7 = 1 << *(*v4 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *v6;
    v10 = (v7 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v11 = 0;
    if (v9)
    {
      break;
    }

LABEL_11:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0;

        goto LABEL_18;
      }

      v9 = v6[v12];
      ++v11;
      if (v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v12 = v11;
LABEL_14:
    v13 = __clz(__rbit64(v9)) | (v12 << 6);
    v14 = (*(v5 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_214053840(*(v5 + 56) + 40 * v13, v24);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    v19 = v23;
    v20 = v24[0];
    v21 = v24[1];
    v22 = v25;

    if (sub_2146D9778())
    {
      break;
    }

    v9 &= v9 - 1;
    sub_213FB2DF4(&v19, &qword_27C9126F0, &qword_2147377D0);
    v11 = v12;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;

  if (*(&v26 + 1))
  {

    return sub_214047B54(&v27, a4);
  }

  else
  {
LABEL_18:
    result = sub_213FB2DF4(&v26, &qword_27C9126F8, &qword_2147377D8);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2143BDC9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2143BDD00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_2143BDDB4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2146D96C8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2146D97B8();
}

uint64_t sub_2143BDE64(uint64_t a1, unint64_t a2)
{
  v4 = sub_2146D86D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2146D9778() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = sub_2146D96A8();
  v9 = sub_2143BDDB4(v8, a1, a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if ((v9 ^ v11) < 0x4000 || sub_2146D9D78() > 63 || (v16 = MEMORY[0x216054530](v9, v11, v13, v15), v18 = v17, , v25[0] = v16, v25[1] = v18, sub_2146D8678(), sub_214069AD8(), v19 = sub_2146D9DF8(), v21 = v20, (*(v5 + 8))(v7, v4), !v21))
  {

LABEL_11:
    v23 = 0;
    return v23 & 1;
  }

  if (v19 == v16 && v21 == v18)
  {

    v23 = 1;
  }

  else
  {
    v23 = sub_2146DA6A8();
  }

  return v23 & 1;
}

BOOL sub_2143BE088(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = *a3;
  if (v9 == 2 || (v9 & 1) == 0 || (sub_2146D9778() & 1) == 0)
  {
    return 0;
  }

  v10 = sub_2146D96A8();
  v11 = sub_2143BDDB4(v10, a1, a2);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  MEMORY[0x216054530](v11, v13, v15, v17);

  sub_2146D8B18();

  v18 = sub_2146D8B88();
  v19 = (*(*(v18 - 8) + 48))(v8, 1, v18) != 1;
  sub_213FB2DF4(v8, &unk_27C904F30, &unk_2146EFA20);
  return v19;
}

void sub_2143BE224(uint64_t a1, unint64_t a2, char *a3)
{
  v5 = *a3;
  if ((sub_2146D9778() & 1) == 0)
  {
    return;
  }

  v44 = v5;

  v6 = sub_2146D96A8();
  v7 = sub_2143BDDB4(v6, a1, a2);
  v9 = v8;

  v10 = v9 >> 14;
  if (v7 >> 14 == v9 >> 14)
  {
LABEL_18:

    return;
  }

  v11 = v7 >> 14;
  while (sub_2146D9D88() != 47 || v12 != 0xE100000000000000)
  {
    v13 = sub_2146DA6A8();

    if (v13)
    {
      goto LABEL_10;
    }

    v11 = sub_2146D9D48() >> 14;
    if (v11 == v10)
    {
      goto LABEL_18;
    }
  }

LABEL_10:
  if (v11 < v7 >> 14)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = sub_2146D9D98();
  v43 = v17;
  if (v10 < v11)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  sub_2146D9D98();
  v22 = v21;

  v23 = sub_2146D9D58();
  if (v24)
  {
    v23 = v22;
  }

  if (v22 >> 14 < v23 >> 14)
  {
    goto LABEL_32;
  }

  v25 = sub_2146D9D98();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if ((v18 ^ v19) < 0x4000 || (v25 ^ v27) < 0x4000 || (v32 = sub_2146D9D78(), v33 = MEMORY[0x216054530](v18, v19, v43, v20), v35 = v34, , v32 < sub_2146D96A8()))
  {

    goto LABEL_18;
  }

  v36 = HIBYTE(v35) & 0xF;
  v45[0] = v33;
  v45[1] = v35;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  v45[2] = 0;
  v45[3] = v36;

  while (1)
  {
    sub_2146D96F8();
    if (!v37)
    {
      break;
    }

    sub_2146D9508();
    v39 = v38;

    if (v39)
    {

      goto LABEL_18;
    }
  }

  v40 = MEMORY[0x216054530](v25, v27, v29, v31);
  v42 = v41;

  LOBYTE(v45[0]) = v44;
  if ((sub_2143BD420(v40, v42, v45, 0) & 1) == 0)
  {
    LOBYTE(v45[0]) = v44;
    sub_2143BDE64(v40, v42);
  }
}

unint64_t sub_2143BE654()
{
  result = qword_27C912708;
  if (!qword_27C912708)
  {
    result = swift_getWitnessTable(byte_214737944, &type metadata for DestinationIdentifierValidator.DestinationType, v0, v1);
    atomic_store(result, &qword_27C912708);
  }

  return result;
}

uint64_t sub_2143BE6A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  v3 = *(v0 + 56);
  v4 = *(v0 + 57);
  v5 = *(v0 + 88);
  v6 = *(v0 + 128);
  v26 = *(v0 + 80);
  v27 = *(v0 + 120);
  v7 = *(v0 + 168);
  v28 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214737980;
  *(inited + 32) = 0x656475746974616CLL;
  *(inited + 40) = 0xE800000000000000;
  if ((v2 & 1) == 0)
  {
    v9 = inited;
    if (v1)
    {
      v10 = 0;
      v11 = 0;
      v9[7] = 0;
      v9[8] = 0;
    }

    else
    {
      v10 = sub_2146D9AE8();
      v11 = sub_21403EBDC();
    }

    v9[6] = v10;
    v9[9] = v11;
    v9[10] = 0x64757469676E6F6CLL;
    v9[11] = 0xE900000000000065;
    if ((v4 & 1) == 0)
    {
      if (v3)
      {
        v12 = 0;
        v13 = 0;
        v9[13] = 0;
        v9[14] = 0;
      }

      else
      {
        v12 = sub_2146D9AE8();
        v13 = sub_21403EBDC();
      }

      v9[12] = v12;
      v9[15] = v13;
      v9[16] = 0x7972657571;
      v9[17] = 0xE500000000000000;
      if (v5 != 1)
      {
        if (v5)
        {
          v14 = MEMORY[0x277D837D0];
          v15 = v26;
          v16 = v5;
        }

        else
        {
          v15 = 0;
          v16 = 0;
          v14 = 0;
          v9[20] = 0;
        }

        v9[18] = v15;
        v9[19] = v16;
        v9[21] = v14;
        v9[22] = 0x6C6562616CLL;
        v9[23] = 0xE500000000000000;
        if (v6 != 1)
        {
          if (v6)
          {
            v17 = MEMORY[0x277D837D0];
            v18 = v27;
            v19 = v6;
          }

          else
          {
            v18 = 0;
            v19 = 0;
            v17 = 0;
            v9[26] = 0;
          }

          v9[24] = v18;
          v9[25] = v19;
          v9[27] = v17;
          v9[28] = 0x6B6361626C6C6166;
          v9[29] = 0xEB000000006C7255;
          if (!v7)
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v9[32] = 0;
LABEL_21:
            v9[30] = v20;
            v9[31] = v21;
            v9[33] = v22;
            sub_213FDC9D0(v26, v5);
            sub_213FDC9D0(v27, v6);
            sub_213FDC9D0(v28, v7);
            v23 = sub_214045690(v9);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
            swift_arrayDestroy();
            v24 = sub_2140418B8(v23);

            return v24;
          }

          if (v7 != 1)
          {
            v22 = MEMORY[0x277D837D0];
            v20 = v28;
            v21 = v7;
            goto LABEL_21;
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143BE9A8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143BEA90(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143BEB64(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2143BEC48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2143BF650(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2143BEC78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656475746974616CLL;
  v5 = 0xE500000000000000;
  v6 = 0x7972657571;
  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64757469676E6F6CLL;
    v3 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2143BED1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143BF650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2143BED44(uint64_t a1)
{
  v2 = sub_2143BF46C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143BED80(uint64_t a1)
{
  v2 = sub_2143BF46C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143BEDBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912710, &qword_214737990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BF46C();
  sub_2146DAA08();
  if (!v2)
  {
    v34 = 0;
    v9 = sub_2146DA118();
    v11 = v10;
    v12 = v9;
    v34 = 1;
    v13 = sub_2146DA118();
    v33 = v14;
    v30 = v13;
    v34 = 2;
    v15 = sub_2146DA0F8();
    v18 = v17;
    v29 = v15;
    v34 = 3;
    v27 = sub_2146DA0F8();
    v28 = v19;
    v34 = 4;
    v20 = sub_2146DA0F8();
    sub_2141004D0(v12, v11 & 1, v30, v33 & 1, v29, v18, v27, v28, v31, v20, v21);
    (*(v6 + 8))(v8, v5);
    v22 = v31[9];
    *(a2 + 128) = v31[8];
    *(a2 + 144) = v22;
    *(a2 + 160) = v31[10];
    *(a2 + 176) = v32;
    v23 = v31[5];
    *(a2 + 64) = v31[4];
    *(a2 + 80) = v23;
    v24 = v31[7];
    *(a2 + 96) = v31[6];
    *(a2 + 112) = v24;
    v25 = v31[1];
    *a2 = v31[0];
    *(a2 + 16) = v25;
    v26 = v31[3];
    *(a2 + 32) = v31[2];
    *(a2 + 48) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143BF0B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912720, &qword_214737998);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v21 = *(v1 + 48);
  v26 = *(v1 + 56);
  v20 = *(v1 + 57);
  v9 = *(v1 + 80);
  v18 = *(v1 + 88);
  v19 = v9;
  v10 = *(v1 + 120);
  v16 = *(v1 + 128);
  v17 = v10;
  v11 = *(v1 + 160);
  v14 = *(v1 + 168);
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143BF46C();
  sub_2146DAA28();
  if (v8)
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v24 = v6;
  LOBYTE(v25) = v7 & 1;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2143BF4C0(&qword_280B2E3A8, &qword_27C9058A0, &unk_2147379A0, MEMORY[0x277D83A08]);
  v12 = v22;
  sub_2146DA388();
  if (!v12)
  {
    if ((v20 & 1) == 0)
    {
      v24 = v21;
      LOBYTE(v25) = v26 & 1;
      v27 = 1;
      sub_2146DA388();
      if (v18 != 1)
      {
        v24 = v19;
        v25 = v18;
        v27 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_2143BF4C0(&qword_280B30BA8, &qword_27C904008, &qword_2146EC050, MEMORY[0x277D837D8]);
        sub_2146DA388();
        if (v16 != 1)
        {
          v24 = v17;
          v25 = v16;
          v27 = 3;
          sub_2146DA388();
          if (v14 != 1)
          {
            v24 = v15;
            v25 = v14;
            v27 = 4;
            sub_2146DA388();
            return (*(v23 + 8))(v5, v3);
          }
        }
      }
    }

    goto LABEL_13;
  }

  return (*(v23 + 8))(v5, v3);
}

unint64_t sub_2143BF46C()
{
  result = qword_27C912718;
  if (!qword_27C912718)
  {
    result = swift_getWitnessTable(byte_214737B40, &_s19CodingConfigurationV10CodingKeysON_3, v0, v1);
    atomic_store(result, &qword_27C912718);
  }

  return result;
}

uint64_t sub_2143BF4C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4;
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143BF54C()
{
  result = qword_27C912728;
  if (!qword_27C912728)
  {
    result = swift_getWitnessTable(byte_214737B18, &_s19CodingConfigurationV10CodingKeysON_3, v0, v1);
    atomic_store(result, &qword_27C912728);
  }

  return result;
}

unint64_t sub_2143BF5A4()
{
  result = qword_27C912730;
  if (!qword_27C912730)
  {
    result = swift_getWitnessTable(aQ5, &_s19CodingConfigurationV10CodingKeysON_3, v0, v1);
    atomic_store(result, &qword_27C912730);
  }

  return result;
}

unint64_t sub_2143BF5FC()
{
  result = qword_27C912738;
  if (!qword_27C912738)
  {
    result = swift_getWitnessTable(aA1, &_s19CodingConfigurationV10CodingKeysON_3, v0, v1);
    atomic_store(result, &qword_27C912738);
  }

  return result;
}

unint64_t sub_2143BF650(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2143BF69C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_2143BF800@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2143BF84C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2143BF8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2143BF8F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2143BF94C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BF9C8()
{
  if (*(v0 + 112))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143BFA38@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 3006)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 2006)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2143BFA54()
{
  if (*v0)
  {
    return 3006;
  }

  else
  {
    return 2006;
  }
}

uint64_t sub_2143BFA6C()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 3006;
  }

  else
  {
    v2 = 2006;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143BFAC0()
{
  if (*v0)
  {
    v1 = 3006;
  }

  else
  {
    v1 = 2006;
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_2143BFAFC(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  if (v2)
  {
    v3 = 3006;
  }

  else
  {
    v3 = 2006;
  }

  MEMORY[0x216055860](v3);
  return sub_2146DA9B8();
}

void *sub_2143BFB4C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 3006)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 2006)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2143BFB6C(uint64_t *a1@<X8>)
{
  v2 = 2006;
  if (*v1)
  {
    v2 = 3006;
  }

  *a1 = v2;
}

uint64_t sub_2143BFC70()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_2143BFCA0(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_2143BFCF8()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_2143BFD28(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2143BFD88(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2143BFDB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    *a2 = *(a1 + 72);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_2143BFE20(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2143BFED0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 56);
  v8 = *(v2 + 88);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143C0018(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143C00B4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 56);
    v10 = *(v3 + 88);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 72) = v4;
      *(v3 + 80) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 56);
  v10 = *(v3 + 88);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 72) = v4;
  *(v3 + 80) = v2;
}

void sub_2143C02D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v6;
  *(a2 + 80) = v5;
  *(a2 + 88) = v7;
}

void (*sub_2143C034C(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

void sub_2143C03E4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  else
  {

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  free(v2);
}

uint64_t sub_2143C04B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_2143C051C(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2143C05C4(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 96);
  v6 = *(v1 + 120);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 112) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143C0700(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 112);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C0798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143C0798(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v7 = *a1;
    v5 = *(v3 + 96);
    v8 = *(v3 + 120);
    v9 = 0x6E776F6E6B6E753CLL;
    v10 = 0xE90000000000003ELL;
    v11 = 0xD00000000000001CLL;
    v12 = 0x800000021478A360;
    if (v5(&v7, &v8, &v9))
    {

      *(v3 + 112) = v2;
      return;
    }

    goto LABEL_8;
  }

  v7 = *a1;
  v4 = *(v3 + 96);
  v8 = *(v3 + 120);
  v9 = 0x6E776F6E6B6E753CLL;
  v10 = 0xE90000000000003ELL;
  v11 = 0xD00000000000001CLL;
  v12 = 0x800000021478A360;

  if ((v4(&v7, &v8, &v9) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 112) = v2;
}

void sub_2143C0978(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v5;
  *(a2 + 120) = v6;
}

void (*sub_2143C09EC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C0A84;
}

void sub_2143C0A84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v6;
    *(v3 + 120) = v7;
  }

  else
  {

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v6;
    *(v3 + 120) = v7;
  }

  free(v2);
}

uint64_t sub_2143C0B44@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2142E597C(v2, v3, v4);
}

__n128 sub_2143C0B58(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_2142E58B8(v1[16], v1[17], v1[18]);
  result = v4;
  *(v1 + 8) = v4;
  v1[18] = v2;
  return result;
}

uint64_t sub_2143C0BC0()
{
  v1 = *(v0 + 152);

  return v1;
}

void sub_2143C0BF0(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t sub_2143C0C48()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000011, 0x8000000214737B70);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v1, v2);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2143C0D5C()
{
  result = qword_27C912740;
  if (!qword_27C912740)
  {
    result = swift_getWitnessTable(asc_214737BA4, &type metadata for BasicEmojiTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C912740);
  }

  return result;
}

uint64_t sub_2143C0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2143C0E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2143C0ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143C0F54()
{
  result = qword_27C912748;
  if (!qword_27C912748)
  {
    result = swift_getWitnessTable(byte_214737C0C, &type metadata for BasicEmojiTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C912748);
  }

  return result;
}

unint64_t sub_2143C0FA8(uint64_t a1)
{
  *(a1 + 8) = sub_2142EA230();
  result = sub_2142EA38C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143C0FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143C1034(uint64_t a1, uint64_t a2)
{
  v3 = sub_2146D95B8();
  if (*(a2 + 16))
  {
    sub_21408C300(v3, v4);
    v6 = v5;

    if (v6)
    {
      return swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2143C10A0()
{
  v1 = CGImageSourceGetType(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2146D95B8();

  return v3;
}

uint64_t sub_2143C1108()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2143C1158()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2143C1190(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = 0.0;
  while (1)
  {
    *&result = COERCE_DOUBLE(a3(a1));
    if (v3)
    {
      break;
    }

    if (v9)
    {
      v7 = v7 + 0.1;
      if (a2 == a1)
      {
        return result;
      }
    }

    else
    {
      v7 = v7 + *&result;
      if (a2 == a1)
      {
        return result;
      }
    }

    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_2143C122C(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  v5 = *MEMORY[0x277CD3618];
  *(inited + 32) = *MEMORY[0x277CD3618];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  v6 = v5;
  sub_214045EE0(inited);
  swift_setDeallocating();
  sub_2143C2394(inited + 32);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageSourceCopyPropertiesAtIndex(v2, 0, v7);

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v40 = 0;
      sub_2146D9478();
    }
  }

  v9 = sub_2146D9B18();
  v10 = sub_2146D9B18();
  v11 = sub_2146D9588();
  v12 = sub_2146D9588();
  v38 = v11;
  v39 = CFStringCompare(v11, v12, 1uLL);

  v13 = sub_2146D9B18();
  LODWORD(v12) = sub_2146DA9D8();

  v37 = v12;
  if ((v12 - 5) > 3)
  {
    v17 = v9;
    v36 = sub_2146D9B08();

    v18 = v10;
    v35 = sub_2146D9B08();
  }

  else
  {
    v14 = v10;
    v15 = v9;
    v36 = sub_2146D9B08();
    v16 = v15;
    v35 = sub_2146D9B08();
  }

  Count = CGImageSourceGetCount(v2);
  if (Count < 2)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_2143C19C0();
  }

  v20 = v2;
  v21 = CGImageSourceCopyMetadataAtIndex(v2, 0, 0);
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v23 = sub_2146D9588();
  v24 = CGImageMetadataCopyTagWithPath(v22, 0, v23);

  if (!v24)
  {
    v26 = v10;

    goto LABEL_19;
  }

  v25 = CGImageMetadataTagCopyValue(v24);

  if (v25)
  {
    v26 = v10;
    if (swift_dynamicCast())
    {
      v27 = v40;
      v28 = v41;
      goto LABEL_20;
    }
  }

  else
  {
LABEL_17:
    v26 = v10;
  }

LABEL_19:
  v27 = 0;
  v28 = 0;
LABEL_20:
  v29 = CGImageSourceGetType(v20);
  if (v29)
  {
    v30 = v29;
    v31 = sub_2146D95B8();
    v33 = v32;
  }

  else
  {

    v31 = 0;
    v33 = 0;
  }

  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 24) = v35;
  *(a1 + 32) = Count;
  *(a1 + 40) = v37;
  *(a1 + 44) = v39 == kCFCompareEqualTo;
  *(a1 + 48) = v27;
  *(a1 + 56) = v28;
  *(a1 + 64) = v34 & 1;
}