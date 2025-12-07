uint64_t ICTTTextEditFilter.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ICTTTextEditFilter.Model(0);
  v13 = *(v12 + 32);
  v14 = sub_2150A3960();
  v15 = *(*(v14 - 8) + 56);
  v15(a2 + v13, 1, 1, v14);
  v30 = *(v12 + 36);
  v15(a2 + v30, 1, 1, v14);
  v16 = [a1 allowedUserIDs];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2150A52E0();
  }

  else
  {
    v18 = 0;
  }

  *a2 = v18;
  v19 = [a1 allowedAttachmentIDs];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2150A52E0();
  }

  else
  {
    v21 = 0;
  }

  *(a2 + 8) = v21;
  *(a2 + 16) = [a1 allowsMissingTimestamps];
  *(a2 + 17) = [a1 allowsMissingUsers];
  v22 = [a1 fromDate];
  if (v22)
  {
    v23 = v22;
    sub_2150A3930();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  v15(v11, v24, 1, v14);
  sub_214FCD4B8(v11, a2 + v13);
  v26 = [a1 toDate];
  if (v26)
  {
    v27 = v26;
    sub_2150A3930();

    v25 = 0;
    a1 = v27;
  }

  v15(v8, v25, 1, v14);
  return sub_214FCD4B8(v8, a2 + v30);
}

{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v37 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433E0, &qword_2150C69A8);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for ICTTTextEditFilter.Model(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14, v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 40);
  v20 = sub_2150A3960();
  v21 = *(*(v20 - 8) + 56);
  v44 = v19;
  v21(&v18[v19], 1, 1, v20);
  v43 = *(v15 + 44);
  v41 = v18;
  v21(&v18[v43], 1, 1, v20);
  v22 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_214FCD528();
  v23 = v40;
  sub_2150A6590();
  if (v23)
  {
    v25 = v44;
    v26 = v41;
    __swift_destroy_boxed_opaque_existential_0(v42);

    sub_214F5D43C(v26 + v25);
    return sub_214F5D43C(v26 + v43);
  }

  else
  {
    v40 = v9;
    v24 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433D0, &qword_2150C69A0);
    v45 = 0;
    sub_214FCD57C(&qword_27CA433E8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_2150A5F60();
    v27 = v41;
    *v41 = v46;
    v45 = 1;
    sub_2150A5F60();
    *(v27 + 8) = v46;
    LOBYTE(v46) = 2;
    v28 = sub_2150A5F90();
    v29 = v44;
    *(v27 + 16) = v28 & 1;
    LOBYTE(v46) = 3;
    *(v27 + 17) = sub_2150A5F90() & 1;
    LOBYTE(v46) = 4;
    v30 = sub_214FCD5E8(&qword_27CA424D0, MEMORY[0x277CC95A0]);
    v31 = v40;
    v35[1] = v30;
    sub_2150A5F60();
    sub_214FCD4B8(v31, v27 + v29);
    LOBYTE(v46) = 5;
    v32 = v24;
    v33 = v39;
    sub_2150A5F60();
    (*(v38 + 8))(v13, v33);
    sub_214FCD4B8(v32, v27 + v43);
    sub_214FCD62C(v27, v36, type metadata accessor for ICTTTextEditFilter.Model);
    __swift_destroy_boxed_opaque_existential_0(v42);
    return sub_214FCD694(v27, type metadata accessor for ICTTTextEditFilter.Model);
  }
}

id ICTTTextEditFilter.Model.filter.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v32 - v8;
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v32 - v15;
  v18 = *v0;
  v17 = v0[1];
  v19 = *(v0 + 16);
  v20 = *(v0 + 17);
  v21 = type metadata accessor for ICTTTextEditFilter.Model(0);
  sub_214F5D4A4(v0 + *(v21 + 32), v16);
  sub_214F5D4A4(v0 + *(v21 + 36), v13);
  v22 = [objc_allocWithZone(ICTTTextEditFilter) init];
  v23 = v22;
  if (v18)
  {
    v24 = sub_2150A52D0();
  }

  else
  {
    v24 = 0;
  }

  [v22 setAllowedUserIDs_];

  if (v17)
  {
    v25 = sub_2150A52D0();
  }

  else
  {
    v25 = 0;
  }

  [v22 setAllowedAttachmentIDs_];

  [v22 setAllowsMissingTimestamps_];
  [v22 setAllowsMissingUsers_];
  sub_214F5D4A4(v16, v9);
  v26 = sub_2150A3960();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = 0;
  if (v28(v9, 1, v26) != 1)
  {
    v29 = sub_2150A38F0();
    (*(v27 + 8))(v9, v26);
  }

  [v22 setFromDate_];

  sub_214F5D4A4(v13, v5);
  if (v28(v5, 1, v26) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_2150A38F0();
    (*(v27 + 8))(v5, v26);
  }

  [v22 setToDate_];

  sub_214F5D43C(v13);
  sub_214F5D43C(v16);
  return v22;
}

unint64_t sub_214FCCAE4()
{
  v1 = *v0;
  v2 = 0x556465776F6C6C61;
  v3 = 0x657461446D6F7266;
  if (v1 != 4)
  {
    v3 = 0x657461446F74;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000017;
  if (v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_214FCCBB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214FCD928(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214FCCBD8(uint64_t a1)
{
  v2 = sub_214FCD528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FCCC14(uint64_t a1)
{
  v2 = sub_214FCD528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICTTTextEditFilter.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433C0, &qword_2150C6998);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCD528();
  sub_2150A65B0();
  v13 = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433D0, &qword_2150C69A0);
  sub_214FCD57C(&qword_27CA433D8, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_2150A6050();
  if (!v2)
  {
    v13 = v3[1];
    v12 = 1;
    sub_2150A6050();
    LOBYTE(v13) = 2;
    sub_2150A6070();
    LOBYTE(v13) = 3;
    sub_2150A6070();
    type metadata accessor for ICTTTextEditFilter.Model(0);
    LOBYTE(v13) = 4;
    sub_2150A3960();
    sub_214FCD5E8(&qword_27CA424A0, MEMORY[0x277CC9580]);
    sub_2150A6050();
    LOBYTE(v13) = 5;
    sub_2150A6050();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t type metadata accessor for ICTTTextEditFilter.Model(uint64_t a1)
{
  result = qword_27CA433F0;
  if (!qword_27CA433F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214FCD4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_214FCD528()
{
  result = qword_27CA433C8;
  if (!qword_27CA433C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA433C8);
  }

  return result;
}

uint64_t sub_214FCD57C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA433D0, &qword_2150C69A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214FCD5E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2150A3960();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214FCD62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FCD694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_214FCD71C(uint64_t a1)
{
  sub_214FCD7AC(319);
  if (v1 <= 0x3F)
  {
    sub_214F938E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214FCD7AC(uint64_t a1)
{
  if (!qword_27CA43400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA433D0, &qword_2150C69A0);
    v1 = sub_2150A57E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA43400);
    }
  }
}

unint64_t sub_214FCD824()
{
  result = qword_27CA43408;
  if (!qword_27CA43408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43408);
  }

  return result;
}

unint64_t sub_214FCD87C()
{
  result = qword_27CA43410;
  if (!qword_27CA43410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43410);
  }

  return result;
}

unint64_t sub_214FCD8D4()
{
  result = qword_27CA43418;
  if (!qword_27CA43418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43418);
  }

  return result;
}

uint64_t sub_214FCD928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x556465776F6C6C61 && a2 == 0xEE00734449726573;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002150E6120 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002150E6140 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002150E6160 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657461446D6F7266 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657461446F74 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static ActivityEventObject.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1 == 0;
  if (*a1)
  {
    v7 = 1702129518;
  }

  else
  {
    v7 = 0x7265646C6F66;
  }

  if (v6)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = 1702129518;
  }

  else
  {
    v9 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_2150A6270();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v5)
  {
    return 1;
  }

LABEL_24:

  return sub_2150A6270();
}

NotesShared::ActivityEventObject_optional __swiftcall ActivityEventObject.init(cloudSyncingObject:)(ICCloudSyncingObject *cloudSyncingObject)
{
  v3 = v1;
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      if (qword_27CA41670 != -1)
      {
        swift_once();
      }

      v28 = sub_2150A3F30();
      __swift_project_value_buffer(v28, qword_27CA43420);
      v21 = cloudSyncingObject;
      v22 = sub_2150A3F10();
      v23 = sub_2150A5550();

      if (os_log_type_enabled(&v22->super.super, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v29 = [(ICCloudSyncingObject *)v21 objectID];
        *(v24 + 4) = v29;
        *v25 = v29;
        v27 = "Object type is not supported — returning nil {objectID: %@}";
        goto LABEL_17;
      }

LABEL_18:
      cloudSyncingObject = v22;
      goto LABEL_19;
    }
  }

  v10 = [(ICCloudSyncingObject *)cloudSyncingObject identifier];
  if (!v10)
  {
LABEL_9:
    if (qword_27CA41670 != -1)
    {
      swift_once();
    }

    v20 = sub_2150A3F30();
    __swift_project_value_buffer(v20, qword_27CA43420);
    v21 = cloudSyncingObject;
    v22 = sub_2150A3F10();
    v23 = sub_2150A5550();

    if (os_log_type_enabled(&v22->super.super, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = [(ICCloudSyncingObject *)v21 objectID];
      *(v24 + 4) = v26;
      *v25 = v26;
      v27 = "Object must have an identifier — returning nil {objectID: %@}";
LABEL_17:
      _os_log_impl(&dword_214D51000, &v22->super.super, v23, v27, v24, 0xCu);
      sub_214FA9D98(v25);
      MEMORY[0x216064AF0](v25, -1, -1);
      MEMORY[0x216064AF0](v24, -1, -1);
      v21 = v22;
LABEL_19:

      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v11 = v10;
  v12 = sub_2150A4AD0();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_9;
  }

  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();

  (*(v5 + 8))(v8, v4);

  *v3 = v9 == 0;
  v3[1] = v12;
  v3[2] = v14;
LABEL_20:
  result.value.recordName._object = v18;
  result.value.recordName._countAndFlagsBits = v17;
  result.is_nil = v19;
  result.value.type = v16;
  return result;
}

uint64_t sub_214FCDFD8()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43420);
  v1 = __swift_project_value_buffer(v0, qword_27CA43420);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NotesShared::ActivityEventObject::Types_optional __swiftcall ActivityEventObject.Types.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

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

uint64_t ActivityEventObject.Types.rawValue.getter()
{
  if (*v0)
  {
    return 1702129518;
  }

  else
  {
    return 0x7265646C6F66;
  }
}

uint64_t sub_214FCE134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1702129518;
  }

  else
  {
    v3 = 0x7265646C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1702129518;
  }

  else
  {
    v5 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2150A6270();
  }

  return v8 & 1;
}

uint64_t sub_214FCE1D0()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

double sub_214FCE248(uint64_t a1)
{
  sub_2150A4BB0();

  return result;
}

uint64_t sub_214FCE2AC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_214FCE320(char *a2@<X8>)
{
  v3 = sub_2150A5EE0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_214FCE380(uint64_t *a1@<X8>)
{
  v2 = 1702129518;
  if (!*v1)
  {
    v2 = 0x7265646C6F66;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ActivityEventObject.recordName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void ActivityEventObject.recordName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

NotesShared::ActivityEventObject __swiftcall ActivityEventObject.init(type:recordName:)(NotesShared::ActivityEventObject::Types type, Swift::String recordName)
{
  object = recordName._object;
  countAndFlagsBits = recordName._countAndFlagsBits;
  v5 = type;
  v6 = v2;
  v7 = sub_2150A3A00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v8 + 8))(v11, v7);

  *v6 = v12;
  *(v6 + 8) = countAndFlagsBits;
  *(v6 + 16) = object;
  result.recordName._object = v15;
  result.recordName._countAndFlagsBits = v14;
  result.type = v13;
  return result;
}

uint64_t sub_214FCE624()
{
  if (*v0)
  {
    return 0x614E64726F636572;
  }

  else
  {
    return 1701869940;
  }
}

void sub_214FCE65C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2150A6270() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2150A6270();

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

uint64_t sub_214FCE740(uint64_t a1)
{
  v2 = sub_214FCF080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FCE77C(uint64_t a1)
{
  v2 = sub_214FCF080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityEventObject.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43438, &qword_2150C6B28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCF080();
  sub_2150A65B0();
  v15 = v9;
  v14 = 0;
  sub_214FCF0D4();
  sub_2150A60A0();
  if (!v2)
  {
    v13 = 1;
    sub_2150A6060();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityEventObject.hash(into:)(uint64_t a1)
{
  sub_2150A4BB0();

  return sub_2150A4BB0();
}

uint64_t ActivityEventObject.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  return sub_2150A64E0();
}

void ActivityEventObject.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43450, &qword_2150C6B30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - v7;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v10 + 8))(v13, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCF080();
  sub_2150A6590();
  if (!v2)
  {
    v14 = v19;
    v22 = 0;
    sub_214FCF128();
    sub_2150A5FC0();
    v20 = v23;
    v21 = 1;
    v15 = sub_2150A5F80();
    v17 = v16;
    (*(v5 + 8))(v8, v4);

    *v14 = v20;
    *(v14 + 8) = v15;
    *(v14 + 16) = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_214FCED38()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FCEDCC(uint64_t a1)
{
  sub_2150A4BB0();

  return sub_2150A4BB0();
}

uint64_t sub_214FCEE50()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FCEEE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1 == 0;
  if (*a1)
  {
    v7 = 1702129518;
  }

  else
  {
    v7 = 0x7265646C6F66;
  }

  if (v6)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = 1702129518;
  }

  else
  {
    v9 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_2150A6270();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v5)
  {
    return 1;
  }

LABEL_24:

  return sub_2150A6270();
}

NotesShared::ActivityEventObject::Types_optional __swiftcall ActivityEventObject.Types.init(cloudSyncingObject:)(ICCloudSyncingObject *cloudSyncingObject)
{
  v3 = v1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
  }

  else
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();

    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  *v3 = v5;
  return result;
}

unint64_t sub_214FCF080()
{
  result = qword_27CA43440;
  if (!qword_27CA43440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43440);
  }

  return result;
}

unint64_t sub_214FCF0D4()
{
  result = qword_27CA43448;
  if (!qword_27CA43448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43448);
  }

  return result;
}

unint64_t sub_214FCF128()
{
  result = qword_27CA43458;
  if (!qword_27CA43458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43458);
  }

  return result;
}

unint64_t sub_214FCF180()
{
  result = qword_27CA43460;
  if (!qword_27CA43460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43460);
  }

  return result;
}

unint64_t sub_214FCF1D8()
{
  result = qword_280C23B88[0];
  if (!qword_280C23B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C23B88);
  }

  return result;
}

unint64_t sub_214FCF260()
{
  result = qword_27CA43468;
  if (!qword_27CA43468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43468);
  }

  return result;
}

unint64_t sub_214FCF2B8()
{
  result = qword_27CA43470;
  if (!qword_27CA43470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43470);
  }

  return result;
}

unint64_t sub_214FCF310()
{
  result = qword_27CA43478;
  if (!qword_27CA43478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43478);
  }

  return result;
}

unint64_t sub_214FCF364()
{
  result = qword_27CA43480;
  if (!qword_27CA43480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43480);
  }

  return result;
}

uint64_t RetryingLazy.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  result = type metadata accessor for RetryingLazy(0, a3, v8, v9);
  v11 = (a4 + *(result + 28));
  *v11 = a1;
  v11[1] = a2;
  return result;
}

uint64_t RetryingLazy.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v5 = *(a1 + 16);
  v6 = sub_2150A57E0();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20 - v13;
  v15 = *(v7 + 16);
  v15(&v20 - v13, v3, v6);
  v16 = *(v5 - 8);
  if ((*(v16 + 48))(v14, 1, v5) == 1)
  {
    v17 = (*(v7 + 8))(v14, v6);
    (*(v3 + *(a1 + 28)))(v17);
    (*(v7 + 40))(v3, v11, v6);
    return (v15)(v21, v3, v6);
  }

  else
  {
    v19 = v21;
    (*(v16 + 32))(v21, v14, v5);
    return (*(v16 + 56))(v19, 0, 1, v5);
  }
}

unint64_t sub_214FCF670(uint64_t a1)
{
  result = sub_2150A57E0();
  if (v2 <= 0x3F)
  {
    result = sub_214F590B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_214FCF6F8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_214FCF868(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void AccountID.Authority.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isLocalAccount])
  {
    swift_unknownObjectRelease();
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [a1 emailAddress];
    if (v6)
    {
      v7 = v6;
      v4 = sub_2150A4AD0();
      v5 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v4 = 0;
      v5 = 0xE000000000000000;
    }
  }

  *a2 = v4;
  a2[1] = v5;
}

{
  if ([a1 isLocalAccount])
  {

    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [a1 userRecordName];
    v4 = sub_2150A4AD0();
    v5 = v7;
  }

  *a2 = v4;
  a2[1] = v5;
}

__n128 AccountID.init(authority:contextType:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  return result;
}

uint64_t AccountID.Authority.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isLocalAccount])
  {
    result = swift_unknownObjectRelease();
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = [objc_opt_self() emailAddressForAccount_];
    v5 = sub_2150A4AD0();
    v6 = v8;

    result = swift_unknownObjectRelease();
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t AccountID.authority.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void AccountID.authority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
}

double AccountID.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();

  return result;
}

uint64_t AccountID.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();

  return sub_2150A64E0();
}

double sub_214FCFE48(uint64_t a1)
{
  if (*(v1 + 8))
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();

  return result;
}

uint64_t sub_214FCFEFC()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();

  return sub_2150A64E0();
}

unint64_t AccountID.debugDescription.getter()
{

  sub_2150A5B20();

  v0 = sub_2150A4B50();
  MEMORY[0x2160617E0](v0);

  MEMORY[0x2160617E0](0x7865746E6F63202CLL, 0xEF203A6570795474);
  v1 = sub_2150A4B50();
  MEMORY[0x2160617E0](v1);

  return 0xD000000000000015;
}

void static AccountID.entityIdentifier(for:)(uint64_t *a3@<X8>)
{
  v140 = a3;
  v3 = sub_2150A3050();
  v126 = *(v3 - 8);
  v127 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v125 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2150A3120();
  v128 = *(v122 - 8);
  v7 = MEMORY[0x28223BE20](v122, v6);
  v130 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v121 = &v114 - v10;
  v134 = sub_2150A42C0();
  v139 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v11);
  v133 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2150A4340();
  v132 = *(v129 - 8);
  v14 = MEMORY[0x28223BE20](v129, v13);
  v123 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v114 - v17;
  v19 = sub_2150A42D0();
  v131 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  MEMORY[0x28223BE20](v23, v24);
  v135 = &v114 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v114 - v28;
  v30 = sub_2150A4360();
  v137 = *(v30 - 8);
  v138 = v30;
  v32 = MEMORY[0x28223BE20](v30, v31);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v35);
  v136 = &v114 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA420B0, &qword_2150C3180);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v114 - v39;
  v41 = sub_2150A3240();
  v43 = MEMORY[0x28223BE20](v41, v42);
  v124 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v114 - v46;
  v49 = v48;
  v51 = v50;
  sub_2150A3210();
  if ((*(v51 + 48))(v40, 1, v49) == 1)
  {
    sub_214F302D4(v40, &qword_27CA420B0, &qword_2150C3180);
LABEL_10:
    v64 = 0;
    v65 = 0;
    v66 = 1;
    goto LABEL_11;
  }

  (*(v51 + 32))(v47, v40, v49);
  sub_2150A31F0();
  if (!v52)
  {
    (*(v51 + 8))(v47, v49);
    goto LABEL_10;
  }

  v120 = v47;
  v118 = v49;
  v119 = v51;
  v53 = sub_2150A4A90();
  v54 = ICIsNotesURLScheme(v53);

  if ((v54 & 1) == 0)
  {
    (*(v119 + 8))(v120, v118);

    goto LABEL_10;
  }

  v55 = sub_2150A3190();
  v56 = v136;
  MEMORY[0x216060F30](v55);
  v57 = sub_2150A42E0();
  (*(*(v57 - 8) + 56))(v29, 1, 1, v57);
  sub_2150A4300();
  (*(v137 + 16))(v34, v56, v138);
  sub_2150A42B0();
  v58 = v131;
  v59 = v135;
  (*(v131 + 16))(v135, v22, v19);
  sub_214F5E6FC(&qword_280C24258, MEMORY[0x277D854A8], MEMORY[0x277D854B8]);
  sub_2150A53D0();
  (*(v58 + 8))(v22, v19);
  v60 = v133;
  sub_2150A5400();
  v61 = sub_214F5E6FC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
  v62 = v134;
  v131 = v61;
  LOBYTE(v56) = sub_2150A4A80();
  v63 = v139 + 8;
  v117 = *(v139 + 8);
  v117(v60, v62);
  if (v56)
  {
LABEL_6:

    sub_214F302D4(v59, qword_27CA41F78, &qword_2150C2C70);
    (*(v137 + 8))(v136, v138);
    (*(v119 + 8))(v120, v118);
    goto LABEL_10;
  }

  v139 = v63;
  v68 = sub_2150A5470();
  v69 = v132;
  v70 = *(v132 + 16);
  v71 = v129;
  v116 = v132 + 16;
  v115 = v70;
  v70(v18);
  v68(&v143, 0);
  sub_2150A5410();
  v72 = sub_2150A4330();
  v74 = v73;
  v75 = *(v69 + 8);
  v132 = v69 + 8;
  v75(v18, v71);
  v76 = v75;
  if (v72 == 0x746E756F636361 && v74 == 0xE700000000000000)
  {

    v59 = v135;
  }

  else
  {
    v77 = sub_2150A6270();

    v59 = v135;
    if ((v77 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v78 = v120;
  v79 = sub_2150A3170();
  if (!v80)
  {

    v94 = v133;
    sub_2150A5400();
    v95 = v134;
    v96 = sub_2150A4A80();
    v117(v94, v95);
    if ((v96 & 1) == 0)
    {
      v105 = sub_2150A5470();
      v106 = v123;
      v107 = v129;
      v115(v123);
      v105(&v143, 0);
      sub_2150A5410();
      v64 = sub_2150A4330();
      v66 = v108;
      v76(v106, v107);
      sub_214F302D4(v59, qword_27CA41F78, &qword_2150C2C70);
      (*(v137 + 8))(v136, v138);
      (*(v119 + 8))(v78, v118);
      v65 = 0;
      goto LABEL_11;
    }

    sub_214F302D4(v59, qword_27CA41F78, &qword_2150C2C70);
    (*(v137 + 8))(v136, v138);
    (*(v119 + 8))(v78, v118);
    goto LABEL_10;
  }

  v81 = v80;
  v82 = v79;
  v143 = v79;
  v144 = v80;
  v141 = sub_2150A4AD0();
  v142 = v83;
  sub_214D6E6C4();
  v84 = sub_2150A58B0();

  if (!v84)
  {

    v97 = sub_2150A3150();
    if (v97)
    {
      v98 = v97;
      v99 = *(v97 + 16);
      v100 = v122;
      if (v99)
      {
        v101 = 0;
        v102 = (v128 + 8);
        while (1)
        {
          if (v101 >= *(v98 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          (*(v128 + 16))(v130, v98 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v101, v100);
          if (sub_2150A3100() == 1701869940 && v103 == 0xE400000000000000)
          {
            break;
          }

          v104 = sub_2150A6270();

          if (v104)
          {
            goto LABEL_33;
          }

          ++v101;
          (*v102)(v130, v100);
          if (v99 == v101)
          {
            goto LABEL_30;
          }
        }

LABEL_33:

        v109 = v128 + 32;
        v110 = v121;
        (*(v128 + 32))(v121, v130, v100);
        sub_2150A3110();
        v112 = v111;
        (*(v109 - 24))(v110, v100);
        v59 = v135;
        v78 = v120;
        if (!v112)
        {
          goto LABEL_35;
        }

        v113 = sub_2150A5EE0();

        sub_214F302D4(v59, qword_27CA41F78, &qword_2150C2C70);
        (*(v137 + 8))(v136, v138);
        (*(v119 + 8))(v78, v118);
        v64 = 0;
        v66 = 0;
        v65 = v113 == 1;
        goto LABEL_11;
      }

LABEL_30:

      v59 = v135;
      v78 = v120;
    }

LABEL_35:
    sub_214F302D4(v59, qword_27CA41F78, &qword_2150C2C70);
    (*(v137 + 8))(v136, v138);
    (*(v119 + 8))(v78, v118);
    v64 = 0;
    v66 = 0;
    v65 = 0;
LABEL_11:
    v67 = v140;
    *v140 = v64;
    v67[1] = v66;
    *(v67 + 16) = v65;
    return;
  }

  v85 = v124;
  sub_2150A3230();

  MEMORY[0x21605FD40](v82, v81);
  sub_2150A31B0();
  sub_2150A31C0();
  sub_2150A31D0();
  sub_2150A31E0();
  v86 = sub_2150A3220();
  if (v87)
  {
    v88 = v86;
    v89 = v87;

    v143 = v88;
    v144 = v89;
    v90 = v125;
    sub_2150A3000();
    v64 = sub_2150A5880();
    v66 = v91;
    (*(v126 + 8))(v90, v127);

    v92 = *(v119 + 8);
    v93 = v118;
    v92(v85, v118);
    sub_214F302D4(v59, qword_27CA41F78, &qword_2150C2C70);
    (*(v137 + 8))(v136, v138);
    v92(v78, v93);
    v65 = 1;
    goto LABEL_11;
  }

LABEL_37:
  __break(1u);
}

uint64_t AccountID.Authority.description.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = sub_2150A4AD0();
  }

  return v1;
}

unint64_t AccountID.Authority.debugDescription.getter()
{
  v1 = 0xD000000000000019;
  if (*(v0 + 8))
  {

    sub_2150A5B20();

    v2 = sub_2150A4B50();
    MEMORY[0x2160617E0](v2);

    return 0xD00000000000001BLL;
  }

  return v1;
}

uint64_t AccountID.Authority.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x216063080](0);
  }

  MEMORY[0x216063080](1);

  return sub_2150A4BB0();
}

uint64_t AccountID.Authority.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  return sub_2150A64E0();
}

uint64_t sub_214FD125C()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  return sub_2150A64E0();
}

uint64_t sub_214FD12CC(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x216063080](0);
  }

  MEMORY[0x216063080](1);

  return sub_2150A4BB0();
}

uint64_t sub_214FD1344()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  return sub_2150A64E0();
}

uint64_t sub_214FD13B0()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = sub_2150A4AD0();
  }

  return v1;
}

uint64_t _s11NotesShared9AccountIDV9AuthorityO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_2150A6270();
}

uint64_t _s11NotesShared9AccountIDV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (!v5)
    {

      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v5)
    {
      return 0;
    }
  }

  if (v4)
  {
    v9 = 1819112552;
  }

  else
  {
    v9 = 0x6E7265646F6DLL;
  }

  if (v4)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6)
  {
    v11 = 1819112552;
  }

  else
  {
    v11 = 0x6E7265646F6DLL;
  }

  if (v6)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {

    return 1;
  }

  else
  {
    v14 = sub_2150A6270();

    return v14 & 1;
  }
}

unint64_t sub_214FD1624(void *a1)
{
  a1[1] = sub_214FD165C();
  a1[2] = sub_214FD16B0();
  result = sub_214FD1704();
  a1[3] = result;
  return result;
}

unint64_t sub_214FD165C()
{
  result = qword_27CA43488;
  if (!qword_27CA43488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43488);
  }

  return result;
}

unint64_t sub_214FD16B0()
{
  result = qword_27CA43490;
  if (!qword_27CA43490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43490);
  }

  return result;
}

unint64_t sub_214FD1704()
{
  result = qword_27CA43498;
  if (!qword_27CA43498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43498);
  }

  return result;
}

unint64_t sub_214FD175C()
{
  result = qword_27CA434A0;
  if (!qword_27CA434A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434A0);
  }

  return result;
}

unint64_t sub_214FD17B4()
{
  result = qword_27CA434A8;
  if (!qword_27CA434A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434A8);
  }

  return result;
}

uint64_t sub_214FD1808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_214FD1864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214FD18B8(uint64_t a1, unsigned int a2)
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

uint64_t sub_214FD1908(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_214FD195C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_214FD1974(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static GroupSessionProvider<>.sharedGroupSessionProvider(for:share:container:)(uint64_t *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for EditNoteActivity(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  sub_214FD1A98(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434B0, &qword_2150C70A0);
  swift_allocObject();

  v9 = a2;
  v10 = a3;
  return sub_2150A3C40();
}

uint64_t sub_214FD1A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditNoteActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GroupSessionProvider<>.personalGroupSessionProvider(for:)(uint64_t *a1)
{
  v2 = type metadata accessor for EditNoteActivity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_214FD1A98(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434B8, &qword_2150C70A8);
  swift_allocObject();

  return sub_2150A3C50();
}

NotesShared::NoteID __swiftcall NoteID.init(contextType:managedIdentifier:)(NotesShared::ManagedEntityContextType_optional contextType, Swift::String managedIdentifier)
{
  *v2 = *contextType.value;
  *(v2 + 8) = managedIdentifier;
  result.managedIdentifier = managedIdentifier;
  result.contextType = contextType;
  return result;
}

uint64_t NoteID.managedIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void NoteID.managedIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t NoteID.hash(into:)(uint64_t a1)
{
  if (*v1 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t NoteID.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

unint64_t sub_214FD1E2C(uint64_t a1)
{
  *(a1 + 8) = sub_214FD1E5C();
  result = sub_214FD1EB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214FD1E5C()
{
  result = qword_27CA434C0;
  if (!qword_27CA434C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434C0);
  }

  return result;
}

unint64_t sub_214FD1EB0()
{
  result = qword_27CA434C8;
  if (!qword_27CA434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434C8);
  }

  return result;
}

unint64_t sub_214FD1F04(void *a1)
{
  a1[1] = sub_214FD1F3C();
  a1[2] = sub_214FD1F90();
  result = sub_214FD1FE4();
  a1[3] = result;
  return result;
}

unint64_t sub_214FD1F3C()
{
  result = qword_27CA434D0;
  if (!qword_27CA434D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434D0);
  }

  return result;
}

unint64_t sub_214FD1F90()
{
  result = qword_27CA434D8;
  if (!qword_27CA434D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434D8);
  }

  return result;
}

unint64_t sub_214FD1FE4()
{
  result = qword_27CA434E0;
  if (!qword_27CA434E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434E0);
  }

  return result;
}

unint64_t sub_214FD203C()
{
  result = qword_280C233B8[0];
  if (!qword_280C233B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C233B8);
  }

  return result;
}

void *sub_214FD2090(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436D0, &unk_2150C7690);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v25 - v7;
  v33 = type metadata accessor for NoteEditActivityEvent(0);
  v28 = *(v33 - 8);
  v10 = MEMORY[0x28223BE20](v33, v9);
  v32 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v27 = &v25 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v15 = 0;
    v30 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = a3 & 0xC000000000000001;
    v16 = (v28 + 48);
    v17 = MEMORY[0x277D84F90];
    v26 = a3;
    v29 = i;
    while (1)
    {
      if (v31)
      {
        v18 = MEMORY[0x216062780](v15, a3);
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(a3 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v35 = v18;
      v34(&v35);
      if (v3)
      {

        return v17;
      }

      if ((*v16)(v8, 1, v33) == 1)
      {
        sub_214F302D4(v8, &qword_27CA436D0, &unk_2150C7690);
      }

      else
      {
        v21 = v27;
        sub_214FE3258(v8, v27, type metadata accessor for NoteEditActivityEvent);
        sub_214FE3258(v21, v32, type metadata accessor for NoteEditActivityEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21505FBF0(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_21505FBF0((v22 > 1), v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        sub_214FE3258(v32, v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for NoteEditActivityEvent);
        a3 = v26;
      }

      ++v15;
      if (v20 == v29)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_214FD23D8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28 - v8;
  v10 = sub_2150A3750();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v35 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v32 = &v28 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(v15 + 72);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a3 + v29;
  v33 = (v15 + 32);
  v34 = (v15 + 48);
  v20 = MEMORY[0x277D84F90];
  v30 = v10;
  v31 = a1;
  v28 = v18;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v34)(v9, 1, v10) == 1)
    {
      sub_214F302D4(v9, &qword_27CA41D40, &unk_2150C7230);
    }

    else
    {
      v21 = v32;
      v22 = *v33;
      (*v33)(v32, v9, v10);
      v22(v35, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_215060348(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_215060348((v23 > 1), v24 + 1, 1, v20);
      }

      v20[2] = v24 + 1;
      v25 = v28;
      v26 = v20 + v29 + v24 * v28;
      v10 = v30;
      v22(v26, v35, v30);
      v18 = v25;
      a1 = v31;
    }

    v19 += v18;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_214FD26AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_214F43C14(a3, v26 - v11, &qword_27CA41E50, &qword_2150C3710);
  v13 = sub_2150A5120();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_214F302D4(v12, &qword_27CA41E50, &qword_2150C3710);
  }

  else
  {
    sub_2150A5110();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2150A5010();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2150A4B60() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_214F302D4(a3, &qword_27CA41E50, &qword_2150C3710);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_214F302D4(a3, &qword_27CA41E50, &qword_2150C3710);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_214FD29AC()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C242C0);
  v1 = __swift_project_value_buffer(v0, qword_280C242C0);
  if (qword_280C24298 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C242A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_214FD2A74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435B8, &qword_2150C7580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v1 = *MEMORY[0x277CD9418];
  *(inited + 32) = *MEMORY[0x277CD9418];
  sub_214D55670(0, &qword_280C230E8, 0x277CCABB0);
  v2 = v1;
  *(inited + 40) = sub_2150A5760();
  v3 = sub_214FA5624(inited);
  swift_setDeallocating();
  result = sub_214F302D4(inited + 32, &qword_27CA435C0, &qword_2150C7588);
  qword_27CA434E8 = v3;
  return result;
}

uint64_t sub_214FD2B70(uint64_t a1, uint64_t a2)
{
  sub_2150A64B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_214FD2BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214FE2C40();

  return MEMORY[0x28211C010](a1, a2, v4);
}

void *sub_214FD2C20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_214FD2C38(uint64_t a1)
{
  v2 = sub_214FE2C40();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_214FD2C74(uint64_t a1)
{
  v2 = sub_214FE2C40();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_214FD2CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214FE2C40();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t SystemPaperSyncArchive.databaseArchive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive;
  v4 = sub_2150A3750();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SystemPaperSyncArchive.__allocating_init(databaseArchive:assetArchives:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive;
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id SystemPaperSyncArchive.init(databaseArchive:assetArchives:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive;
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SystemPaperSyncArchive(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for SystemPaperSyncArchive(uint64_t a1)
{
  result = qword_280C23848;
  if (!qword_280C23848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214FD32EC()
{
  sub_2150A5B20();

  v1 = sub_2150A3750();
  sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  MEMORY[0x2160617E0](0x3A7374657373410ALL, 0xE900000000000020);
  v3 = MEMORY[0x216061AA0](*(v0 + OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives), v1);
  MEMORY[0x2160617E0](v3);

  return 0x6573616261746144;
}

id SystemPaperSyncArchive.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemPaperSyncArchive(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static ICSystemPaperDocument.paperFastPath.getter()
{
  swift_beginAccess();
  v0 = off_280C239B0;
  sub_214D748C8(off_280C239B0, qword_280C239B8);
  return v0;
}

uint64_t sub_214FD35D4@<X0>(uint64_t (**a1)()@<X8>)
{
  swift_beginAccess();
  v2 = off_280C239B0;
  v3 = qword_280C239B8;
  if (off_280C239B0)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_214FE2C14;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_214D748C8(v2, v3);
}

uint64_t sub_214FD366C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_214FE2BDC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_beginAccess();
  v5 = off_280C239B0;
  v6 = qword_280C239B8;
  off_280C239B0 = v4;
  qword_280C239B8 = v3;
  sub_214D748C8(v1, v2);
  return sub_214D6AB7C(v5, v6);
}

uint64_t static ICSystemPaperDocument.activePaper(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = off_280C239B0;
  if (off_280C239B0)
  {
    v5 = qword_280C239B8;

    v4(a1);
    return sub_214D6AB7C(v4, v5);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

id ICSystemPaperDocument.coherenceContext.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  if (result)
  {
    v3 = result;
    MEMORY[0x28223BE20](result, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500, &qword_2150C94E0);
    sub_2150A56D0();

    return v4;
  }

  return result;
}

void sub_214FD39C8(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v40 - v7;
  v9 = sub_2150A3750();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v14 = [v13 note];
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = v14;
  if (([v14 isPasswordProtectedAndLocked] & 1) == 0)
  {
    v17 = [v13 attachmentModel];
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v41 = ObjectType;
      v42 = v17;
      v43 = a2;
      v20 = [objc_opt_self() sharedContext];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 hasContextOptions_];

        if (v22)
        {
          if ([objc_opt_self() isMainThread])
          {
            v23 = [v19 paperCoherenceContextURL];
            sub_2150A36F0();

            if ([v15 isPasswordProtected])
            {
              v25 = sub_214FE300C(&qword_27CA43518, v24, type metadata accessor for ICSystemPaperDocument, &protocol conformance descriptor for ICSystemPaperDocument);
              v26 = a1;
              a2 = v43;
              v27 = v41;
            }

            else
            {
              v27 = 0;
              v25 = 0;
              a1 = 0;
              v46 = 0;
              v47 = 0;
              a2 = v43;
            }

            v37 = v44;
            v48 = v27;
            v49 = v25;
            v45 = a1;
            sub_2150A4890();
            (*(v37 + 56))(v8, 1, 1, v9);
            v38 = v50;
            v39 = sub_2150A4860();
            if (v38)
            {

              sub_214F302D4(v8, &qword_27CA41D40, &unk_2150C7230);
              (*(v37 + 8))(v12, v9);
              sub_214F302D4(&v45, &qword_27CA43510, &unk_2150C7240);
              v16 = 0;
              goto LABEL_21;
            }

            v16 = v39;

            sub_214F302D4(v8, &qword_27CA41D40, &unk_2150C7230);
            (*(v37 + 8))(v12, v9);
            goto LABEL_20;
          }
        }
      }

      v28 = [v15 isPasswordProtected];
      a2 = v43;
      if (v28)
      {
        v30 = sub_214FE300C(&qword_27CA43518, v29, type metadata accessor for ICSystemPaperDocument, &protocol conformance descriptor for ICSystemPaperDocument);
        v31 = a1;
        v32 = v41;
      }

      else
      {
        v32 = 0;
        v30 = 0;
        a1 = 0;
        v46 = 0;
        v47 = 0;
      }

      v36 = v42;
      v48 = v32;
      v49 = v30;
      v45 = a1;
      sub_2150A4890();
      v16 = MEMORY[0x216061410](1, &v45);
    }

    else
    {

      if ([v15 isPasswordProtected])
      {
        v34 = sub_214FE300C(&qword_27CA43518, v33, type metadata accessor for ICSystemPaperDocument, &protocol conformance descriptor for ICSystemPaperDocument);
        v35 = a1;
      }

      else
      {
        ObjectType = 0;
        v34 = 0;
        a1 = 0;
        v46 = 0;
        v47 = 0;
      }

      v48 = ObjectType;
      v49 = v34;
      v45 = a1;
      sub_2150A4890();
      v16 = MEMORY[0x216061410](1, &v45);
    }

LABEL_20:
    sub_214F302D4(&v45, &qword_27CA43510, &unk_2150C7240);
    goto LABEL_21;
  }

LABEL_4:
  v16 = 0;
LABEL_21:
  *a2 = v16;
}

id ICSystemPaperDocument.__allocating_init(paperAttachment:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ICSystemPaperDocument.init(paperAttachment:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_214FD3FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B0, &qword_2150C7668);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v50 - v7;
  v57 = sub_2150A3750();
  v55 = *(v57 - 8);
  v10 = MEMORY[0x28223BE20](v57, v9);
  v54 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v58 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520, &unk_2150C7250);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = v50 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = v50 - v24;
  v26 = [*(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
  v28 = *(v27 - 8);
  v31 = *(v28 + 56);
  v30 = v28 + 56;
  v29 = v31;
  if (v26)
  {
    v53 = a1;
    v56 = a2;
    v32 = v25;
    v50[5] = v30;
    v51 = v29;
    v33 = (v29)(v25, 1, 1, v27);
    MEMORY[0x28223BE20](v33, v34);
    v50[-2] = v2;
    sub_2150A56D0();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8, &unk_2150C7670);
    if ((*(*(v35 - 1) + 48))(v8, 1, v35) == 1)
    {

      sub_214F302D4(v8, &qword_27CA436B0, &qword_2150C7668);
    }

    else
    {
      v52 = v26;
      v38 = &v8[v35[12]];
      v39 = *v38;
      v50[3] = *(v38 + 1);
      v40 = v8[v35[16]];
      v41 = &v8[v35[20]];
      v42 = *v41;
      v43 = *(v41 + 1);
      v50[1] = v39;
      v50[2] = v42;
      v44 = v55;
      v45 = v58;
      v46 = v8;
      v47 = v57;
      (*(v55 + 32))(v58, v46, v57);
      v50[4] = v43;
      if ((v40 & 1) == 0)
      {
        if (qword_280C239A8 != -1)
        {
          swift_once();
        }

        v48 = v58;
        sub_214FD52BC(v53, v58, v18);
        v36 = v56;
        v49 = v52;

        (*(v44 + 8))(v48, v47);
        sub_214F302D4(v32, &qword_27CA43520, &unk_2150C7250);
        sub_214FB6CE4(v18, v32, &qword_27CA43520, &unk_2150C7250);
        return sub_214FB6CE4(v32, v36, &qword_27CA43520, &unk_2150C7250);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0, &qword_2150C4DE0);
      sub_2150A4740();

      (*(v44 + 8))(v45, v47);
      sub_214F302D4(v32, &qword_27CA43520, &unk_2150C7250);
      v51(v22, 0, 1, v27);
      sub_214FB6CE4(v22, v32, &qword_27CA43520, &unk_2150C7250);
    }

    v36 = v56;
    return sub_214FB6CE4(v32, v36, &qword_27CA43520, &unk_2150C7250);
  }

  return (v29)(a2, 1, 1, v27);
}

uint64_t _s11NotesShared21ICSystemPaperDocumentC05paperE04with9Coherence7CapsuleVy0D3Kit0dE0VGSgAF9CRContextC_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B0, &qword_2150C7668);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v50 - v7;
  v57 = sub_2150A3750();
  v55 = *(v57 - 8);
  v10 = MEMORY[0x28223BE20](v57, v9);
  v54 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v58 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43540, &qword_2150C7278);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = v50 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = v50 - v24;
  v26 = [*(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280);
  v28 = *(v27 - 8);
  v31 = *(v28 + 56);
  v30 = v28 + 56;
  v29 = v31;
  if (v26)
  {
    v53 = a1;
    v56 = a2;
    v32 = v25;
    v50[5] = v30;
    v51 = v29;
    v33 = (v29)(v25, 1, 1, v27);
    MEMORY[0x28223BE20](v33, v34);
    v50[-2] = v2;
    sub_2150A56D0();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8, &unk_2150C7670);
    if ((*(*(v35 - 1) + 48))(v8, 1, v35) == 1)
    {

      sub_214F302D4(v8, &qword_27CA436B0, &qword_2150C7668);
    }

    else
    {
      v52 = v26;
      v38 = &v8[v35[12]];
      v39 = *v38;
      v50[3] = *(v38 + 1);
      v40 = v8[v35[16]];
      v41 = &v8[v35[20]];
      v42 = *v41;
      v43 = *(v41 + 1);
      v50[1] = v39;
      v50[2] = v42;
      v44 = v55;
      v45 = v58;
      v46 = v8;
      v47 = v57;
      (*(v55 + 32))(v58, v46, v57);
      v50[4] = v43;
      if ((v40 & 1) == 0)
      {
        if (qword_280C239A8 != -1)
        {
          swift_once();
        }

        v48 = v58;
        sub_214FD54EC(v53, v58, v18);
        v36 = v56;
        v49 = v52;

        (*(v44 + 8))(v48, v47);
        sub_214F302D4(v32, &qword_27CA43540, &qword_2150C7278);
        sub_214FB6CE4(v18, v32, &qword_27CA43540, &qword_2150C7278);
        return sub_214FB6CE4(v32, v36, &qword_27CA43540, &qword_2150C7278);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A8, &qword_2150C7660);
      sub_2150A4740();

      (*(v44 + 8))(v45, v47);
      sub_214F302D4(v32, &qword_27CA43540, &qword_2150C7278);
      v51(v22, 0, 1, v27);
      sub_214FB6CE4(v22, v32, &qword_27CA43540, &qword_2150C7278);
    }

    v36 = v56;
    return sub_214FB6CE4(v32, v36, &qword_27CA43540, &qword_2150C7278);
  }

  return (v29)(a2, 1, 1, v27);
}

uint64_t sub_214FD508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v4 = [v3 paperBundleModel];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v3 note];
  if (!v6)
  {
    v7 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  if ([v7 isPasswordProtectedAndLocked])
  {

LABEL_6:
LABEL_7:
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8, &unk_2150C7670);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8, &unk_2150C7670);
  v20 = (a2 + v10[12]);
  v21 = v10[16];
  v22 = (a2 + v10[20]);
  v11 = [v5 paperBundleURL];
  sub_2150A36F0();

  v12 = [v7 loggingDescription];
  v13 = sub_2150A4AD0();
  v15 = v14;

  *v20 = v13;
  v20[1] = v15;
  *(a2 + v21) = [v3 isPasswordProtected];
  v16 = [v3 loggingDescription];
  v17 = sub_2150A4AD0();
  v19 = v18;

  *v22 = v17;
  v22[1] = v19;
  return (*(*(v10 - 1) + 56))(a2, 0, 1, v10);
}

void sub_214FD52BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v14 = *(v5 + 16);
  v20 = a2;
  v21 = v5;
  v22 = a1;
  v23 = v13;
  os_unfair_lock_lock((v14 + 32));
  sub_214FE3054((v14 + 16));
  if (!v4)
  {
    os_unfair_lock_unlock((v14 + 32));
    v15 = *(v5 + 24);
    aBlock[4] = google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F34100;
    aBlock[3] = &block_descriptor_77;
    v16 = _Block_copy(aBlock);

    dispatch_sync(v15, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      MEMORY[0x28223BE20](isEscapingClosureAtFileLocation, v18);
      *&v19[-16] = a2;
      *&v19[-8] = v13;
      os_unfair_lock_lock((v14 + 32));
      sub_214FE3098((v14 + 16), a3);
      os_unfair_lock_unlock((v14 + 32));
      (*(v10 + 8))(v13, v9);
      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v14 + 32));
  __break(1u);
}

void sub_214FD54EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v14 = *(v5 + 16);
  v20 = a2;
  v21 = v5;
  v22 = a1;
  v23 = v13;
  os_unfair_lock_lock((v14 + 32));
  sub_214FE2F18((v14 + 16));
  if (!v4)
  {
    os_unfair_lock_unlock((v14 + 32));
    v15 = *(v5 + 24);
    aBlock[4] = google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F34100;
    aBlock[3] = &block_descriptor_67;
    v16 = _Block_copy(aBlock);

    dispatch_sync(v15, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      MEMORY[0x28223BE20](isEscapingClosureAtFileLocation, v18);
      *&v19[-16] = a2;
      *&v19[-8] = v13;
      os_unfair_lock_lock((v14 + 32));
      sub_214FE2F5C((v14 + 16), a3);
      os_unfair_lock_unlock((v14 + 32));
      (*(v10 + 8))(v13, v9);
      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v14 + 32));
  __break(1u);
}

uint64_t sub_214FD571C()
{
  type metadata accessor for ICSystemPaperDocument.PaperBundleReader();
  v0 = swift_allocObject();
  result = sub_214FD6510();
  qword_280C26CC8 = v0;
  return result;
}

void sub_214FD5758(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a7;
  v54 = a8;
  v52 = a6;
  v63 = a5;
  v55 = a4;
  v51 = a3;
  v64 = a2;
  v60 = sub_2150A3A00();
  v9 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60, v10);
  v62 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v61 = &v46 - v14;
  v15 = sub_2150A4400();
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v56 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2150A4490();
  v18 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2150A3750();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v26 = *a1;
  if (!*(*a1 + 16) || (v27 = sub_214FB1B98(v64), (v28 & 1) == 0))
  {
    v67 = MEMORY[0x277D84FA0];
LABEL_6:
    v30 = v51;
    v48 = *(v51 + 24);
    (*(v23 + 16))(&v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v64, v22);
    v31 = *(v23 + 80);
    v50 = v9;
    v49 = v18;
    v47 = v21;
    v32 = v30;
    v33 = (v31 + 24) & ~v31;
    v34 = swift_allocObject();
    v35 = v55;
    *(v34 + 16) = v55;
    (*(v23 + 32))(v34 + v33, &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    *(v34 + ((v24 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
    aBlock[4] = v53;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F44018;
    aBlock[3] = v54;
    v36 = _Block_copy(aBlock);
    v37 = v35;

    v38 = v47;
    sub_2150A4440();
    v65 = MEMORY[0x277D84F90];
    sub_214FE300C(&qword_280C24570, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28, &qword_2150C2960);
    sub_214F43BCC(&qword_280C24550, &unk_27CA41A28, &qword_2150C2960, MEMORY[0x277D83970]);
    v39 = v56;
    v40 = v59;
    sub_2150A5930();
    MEMORY[0x216062180](0, v38, v39, v36);
    v9 = v50;
    _Block_release(v36);
    (*(v58 + 8))(v39, v40);
    (*(v49 + 8))(v38, v57);

    goto LABEL_7;
  }

  v67 = *(*(v26 + 56) + 8 * v27);
  v29 = *(v67 + 16);

  if (!v29)
  {
    goto LABEL_6;
  }

LABEL_7:
  v41 = v62;
  v42 = v60;
  (*(v9 + 16))(v62, v63, v60);
  v43 = v61;
  sub_214FBFE64(v61, v41);
  (*(v9 + 8))(v43, v42);
  v44 = v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a1;
  sub_214FEC4D8(v44, v64, isUniquelyReferenced_nonNull_native);
  *a1 = aBlock[0];
}

uint64_t sub_214FD5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0, &qword_2150C4DE0);
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
  __swift_allocate_boxed_opaque_existential_1(v8);
  v4 = sub_2150A4740();
  v9 = 0;
  v5 = *(a3 + 16);
  MEMORY[0x28223BE20](v4, v6);
  os_unfair_lock_lock(v5 + 8);
  sub_214FE3334(&v5[4]);
  os_unfair_lock_unlock(v5 + 8);
  return sub_214F302D4(v8, &qword_27CA436C0, &unk_2150C7D80);
}

uint64_t sub_214FD5E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A8, &qword_2150C7660);
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280);
  __swift_allocate_boxed_opaque_existential_1(v8);
  v4 = sub_2150A4740();
  v9 = 0;
  v5 = *(a3 + 16);
  MEMORY[0x28223BE20](v4, v6);
  os_unfair_lock_lock(v5 + 8);
  sub_214FE2FF0(&v5[4]);
  os_unfair_lock_unlock(v5 + 8);
  return sub_214F302D4(v8, &qword_27CA436C0, &unk_2150C7D80);
}

uint64_t sub_214FD5F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2150A3750();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8, a2);
  sub_214F43C14(a3, v12, &qword_27CA436C0, &unk_2150C7D80);
  return sub_214F30AD8(v12, v8);
}

uint64_t sub_214FD605C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v33 = a4;
  v35 = a6;
  v9 = sub_2150A3750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360, &qword_2150C2988);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v32 - v16;
  v18 = a1[1];
  if (*(v18 + 16) && (v19 = sub_214FB1B98(a2), (v20 & 1) != 0))
  {
    sub_214F43C14(*(v18 + 56) + 40 * v19, v42, &qword_27CA436C0, &unk_2150C7D80);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
    v43 = -1;
  }

  v21 = *a1;
  if (*(*a1 + 16))
  {
    v22 = sub_214FB1B98(a2);
    if (v23)
    {
      *&v37[0] = *(*(v21 + 56) + 8 * v22);

      sub_214FE1400(a3, v17);
      sub_214F302D4(v17, &unk_27CA42360, &qword_2150C2988);
      v24 = *&v37[0];
      if (*(*&v37[0] + 16))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v39 = *a1;
        sub_214FEC4D8(v24, a2, isUniquelyReferenced_nonNull_native);
        *a1 = v39;
      }

      else
      {

        v26 = *(v10 + 16);
        v26(v13, a2, v9);
        sub_214F30918(0, v13);
        v26(v13, a2, v9);
        v39 = 0u;
        v40 = 0u;
        v41 = -1;
        sub_214F30AD8(&v39, v13);
      }
    }
  }

  sub_214F43C14(v42, v37, &qword_27CA41E10, &unk_2150C2970);
  if (v38 == 255)
  {
    sub_214F302D4(v42, &qword_27CA41E10, &unk_2150C2970);
    sub_214F302D4(v37, &qword_27CA41E10, &unk_2150C2970);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    return (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  }

  else
  {
    v39 = v37[0];
    v40 = v37[1];
    v41 = v38;
    sub_214F43C14(&v39, v37, &qword_27CA436C0, &unk_2150C7D80);
    if (v38)
    {
      v44 = *&v37[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
      swift_willThrowTypedImpl();
      sub_214F302D4(&v39, &qword_27CA436C0, &unk_2150C7D80);
      return sub_214F302D4(v42, &qword_27CA41E10, &unk_2150C2970);
    }

    else
    {
      sub_214F302D4(&v39, &qword_27CA436C0, &unk_2150C7D80);
      sub_214F302D4(v42, &qword_27CA41E10, &unk_2150C2970);
      sub_214D72488(v37, &v36);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
      v30 = v35;
      v31 = swift_dynamicCast();
      return (*(*(v29 - 8) + 56))(v30, v31 ^ 1u, 1, v29);
    }
  }
}

uint64_t sub_214FD64D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_214FD6510()
{
  v1 = sub_2150A55A0();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2150A5590();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_2150A4490();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = MEMORY[0x277D84F90];
  v10 = sub_214FA571C(MEMORY[0x277D84F90]);
  v11 = sub_214FA5904(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436C8, &unk_2150C7680);
  v12 = swift_allocObject();
  *(v12 + 32) = 0;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v0 + 16) = v12;
  v16[1] = sub_214D55670(0, &qword_280C24508, 0x277D85C78);
  sub_2150A4440();
  v20 = v9;
  sub_214FE300C(&qword_280C24510, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC8, &qword_2150C3730);
  sub_214F43BCC(&unk_280C24530, &qword_27CA41DC8, &qword_2150C3730, MEMORY[0x277D83970]);
  sub_2150A5930();
  (*(v18 + 104))(v4, *MEMORY[0x277D85260], v19);
  v13 = sub_2150A55D0();
  v14 = v17;
  *(v17 + 24) = v13;
  return v14;
}

uint64_t (*ICSystemPaperDocument.archiveBundleForSync()())()
{
  v192 = *MEMORY[0x277D85DE8];
  v171 = sub_2150A3A00();
  v170 = *(v171 - 1);
  MEMORY[0x28223BE20](v171, v1);
  v169 = v163 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x28223BE20](v3, v6);
  v173 = v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v172 = v163 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v175 = v163 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = v163 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v168 = v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v176 = v163 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v180 = (v163 - v26);
  MEMORY[0x28223BE20](v25, v27);
  v29 = v163 - v28;
  v179 = v4[7];
  v179(v163 - v28, 1, 1, v3);
  v185 = MEMORY[0x277D84F90];
  v30 = *(v0 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v31 = [v30 ic_loggingIdentifier];
  v182 = sub_2150A4AD0();
  v183 = v32;

  v33 = [v30 paperBundleModel];
  if (!v33)
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v48 = sub_2150A3F30();
    __swift_project_value_buffer(v48, qword_280C242C0);
    v49 = v183;

    v50 = sub_2150A3F10();
    v51 = sub_2150A5560();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock = v53;
      *v52 = 136315138;
      v54 = sub_214F7723C(v182, v49, &aBlock);

      *(v52 + 4) = v54;
      _os_log_impl(&dword_214D51000, v50, v51, "Cannot archive paper bundle %s because attachment model is missing", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x216064AF0](v53, -1, -1);
      MEMORY[0x216064AF0](v52, -1, -1);
    }

    else
    {
    }

    sub_214FD7DE0();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v34 = v33;
  v181 = v29;
  v165 = objc_opt_self();
  v35 = [v165 defaultManager];
  v178 = v34;
  v36 = [v34 paperBundleURL];
  sub_2150A36F0();

  sub_2150A3700();
  v167 = v4;
  v37 = v4[1];
  v164 = v16;
  v177 = v3;
  v38 = v3;
  v39 = (v4 + 1);
  v166 = v37;
  v37(v16, v38);
  v40 = sub_2150A4A90();

  LODWORD(v34) = [v35 fileExistsAtPath_];

  if (!v34)
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v55 = sub_2150A3F30();
    __swift_project_value_buffer(v55, qword_280C242C0);
    v56 = v183;

    v57 = sub_2150A3F10();
    v58 = sub_2150A5560();

    v59 = os_log_type_enabled(v57, v58);
    v29 = v181;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v60 = 136315138;
      v62 = sub_214F7723C(v182, v56, &aBlock);

      *(v60 + 4) = v62;
      v63 = "Cannot archive paper bundle %s because the paper bundle does not exist";
LABEL_23:
      _os_log_impl(&dword_214D51000, v57, v58, v63, v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x216064AF0](v61, -1, -1);
      MEMORY[0x216064AF0](v60, -1, -1);
LABEL_25:

      sub_214FD7DE0();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();

LABEL_26:
      v72 = 0;
      v73 = 0;
LABEL_27:

      sub_214F302D4(v29, &qword_27CA41D40, &unk_2150C7230);
      sub_214D6AB7C(v72, v73);
      return v72;
    }

LABEL_24:

    goto LABEL_25;
  }

  v41 = [v30 cloudAccount];
  if (!v41)
  {
    v65 = v180;
    v179(v180, 1, 1, v177);
LABEL_19:
    sub_214F302D4(v65, &qword_27CA41D40, &unk_2150C7230);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v67 = sub_2150A3F30();
    __swift_project_value_buffer(v67, qword_280C242C0);
    v68 = v183;

    v57 = sub_2150A3F10();
    v58 = sub_2150A5560();

    v69 = os_log_type_enabled(v57, v58);
    v29 = v181;
    if (v69)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v60 = 136315138;
      v70 = sub_214F7723C(v182, v68, &aBlock);

      *(v60 + 4) = v70;
      v63 = "Cannot archive paper bundle %s because we cannot determine an appropriate temporary directory";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v42 = v41;
  v43 = [v41 temporaryDirectoryURL];

  v44 = v177;
  if (v43)
  {
    v45 = v176;
    sub_2150A36F0();

    v46 = 0;
    v47 = v167;
  }

  else
  {
    v46 = 1;
    v47 = v167;
    v45 = v176;
  }

  v179(v45, v46, 1, v44);
  v65 = v180;
  sub_214FB6CE4(v45, v180, &qword_27CA41D40, &unk_2150C7230);
  v66 = v47[6];
  if (v66(v65, 1, v44) == 1)
  {
    goto LABEL_19;
  }

  v75 = v47 + 4;
  v76 = v175;
  v180 = v47[4];
  (v180)(v175, v65, v44);
  v77 = [v165 defaultManager];
  v78 = v174;
  NSFileManager.createDirectory(at:withIntermediateDirectories:)(v76, 1);
  if (v78)
  {

    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v79 = sub_2150A3F30();
    __swift_project_value_buffer(v79, qword_280C242C0);
    v80 = v183;

    v81 = sub_2150A3F10();
    v82 = sub_2150A5560();

    v83 = os_log_type_enabled(v81, v82);
    v29 = v181;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v179 = v39;
      v86 = v85;
      aBlock = v85;
      *v84 = 136315138;
      v87 = sub_214F7723C(v182, v80, &aBlock);

      *(v84 + 4) = v87;
      v76 = v175;
      _os_log_impl(&dword_214D51000, v81, v82, "Cannot archive paper bundle %s because we cannot create a temporary directory", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x216064AF0](v86, -1, -1);
      MEMORY[0x216064AF0](v84, -1, -1);
    }

    else
    {
    }

    v126 = v166;
    sub_214FD7DE0();
    swift_allocError();
    *v127 = 0;
    swift_willThrow();

    v126(v76, v177);
    v72 = 0;
    v73 = 0;
    goto LABEL_27;
  }

  v163[0] = v66;
  v165 = v47 + 6;

  v88 = v169;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v89 = v47;
  v90 = sub_2150A3990();
  v92 = v91;
  (v170)[1](v88, v171);
  aBlock = v90;
  v187 = v92;
  MEMORY[0x2160617E0](95, 0xE100000000000000);
  v171 = aBlock;
  v170 = v187;
  v176 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v93 = [v178 paperBundleURL];
  v94 = v164;
  sub_2150A36F0();

  v174 = sub_2150A36B0();
  v95 = v177;
  v179 = v39;
  v166(v94, v177);
  v169 = v89[2];
  (v169)(v94, v76, v95);
  v167 = v89 + 2;
  v96 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v97 = (v5 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v99 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v163[1] = v75;
  (v180)(v73 + v96, v94, v177);
  v101 = (v73 + v97);
  v102 = v170;
  *v101 = v171;
  v101[1] = v102;
  v103 = v182;
  *(v73 + v98) = v181;
  v104 = (v73 + v99);
  v105 = v183;
  *v104 = v103;
  v104[1] = v105;
  *(v73 + v100) = &v185;
  v106 = swift_allocObject();
  *(v106 + 16) = sub_214FE1060;
  *(v106 + 24) = v73;
  v190 = sub_214FE1128;
  v191 = v106;
  aBlock = MEMORY[0x277D85DD0];
  v187 = 1107296256;
  v188 = sub_214FAA924;
  v189 = &block_descriptor_10;
  v107 = _Block_copy(&aBlock);

  aBlock = 0;
  v108 = v174;
  [v176 coordinateReadingItemAtURL:v174 options:0 error:&aBlock byAccessor:v107];
  _Block_release(v107);

  v109 = aBlock;
  LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

  if (v108)
  {
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_37;
  }

  v110 = v173;
  v96 = v168;
  v111 = v180;
  v174 = v109;
  if (!v109)
  {
    goto LABEL_42;
  }

  if (qword_280C242B8 != -1)
  {
    goto LABEL_56;
  }

LABEL_37:
  v112 = sub_2150A3F30();
  __swift_project_value_buffer(v112, qword_280C242C0);
  v113 = v183;

  v114 = v109;
  v115 = sub_2150A3F10();
  v116 = sub_2150A5560();
  v117 = v114;

  if (os_log_type_enabled(v115, v116))
  {
    v118 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    aBlock = v170;
    *v118 = 136315394;
    *(v118 + 4) = sub_214F7723C(v182, v113, &aBlock);
    *(v118 + 12) = 2080;
    v171 = v117;
    v119 = [v117 localizedDescription];
    v120 = sub_2150A4AD0();
    v122 = v121;

    v123 = sub_214F7723C(v120, v122, &aBlock);

    *(v118 + 14) = v123;
    _os_log_impl(&dword_214D51000, v115, v116, "Failed to archive paper bundle %s to disk for sync due to file coordination error: %s", v118, 0x16u);
    v124 = v170;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v124, -1, -1);
    v125 = v118;
    v110 = v173;
    MEMORY[0x216064AF0](v125, -1, -1);

    v111 = v180;
  }

  else
  {

    v111 = v180;
    v110 = v173;
  }

LABEL_42:
  sub_214F43C14(v181, v96, &qword_27CA41D40, &unk_2150C7230);
  if ((v163[0])(v96, 1, v177) == 1)
  {
    sub_214F302D4(v96, &qword_27CA41D40, &unk_2150C7230);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v128 = sub_2150A3F30();
    __swift_project_value_buffer(v128, qword_280C242C0);
    v129 = v183;

    v130 = sub_2150A3F10();
    v131 = sub_2150A5560();

    v132 = os_log_type_enabled(v130, v131);
    v29 = v181;
    if (v132)
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      aBlock = v134;
      *v133 = 136315138;
      v135 = sub_214F7723C(v182, v129, &aBlock);

      *(v133 + 4) = v135;
      _os_log_impl(&dword_214D51000, v130, v131, "No database archive was produced when archiving a paper bundle %s for sync", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v134);
      MEMORY[0x216064AF0](v134, -1, -1);
      MEMORY[0x216064AF0](v133, -1, -1);
    }

    else
    {
    }

    v153 = v175;
    v154 = v166;
    sub_214FD7DE0();
    swift_allocError();
    *v155 = 0;
    swift_willThrow();

    v154(v153, v177);
    v72 = sub_214FE1060;
    goto LABEL_27;
  }

  v136 = v172;
  v111(v172, v96, v177);
  if (qword_280C242B8 != -1)
  {
    swift_once();
  }

  v137 = sub_2150A3F30();
  __swift_project_value_buffer(v137, qword_280C242C0);
  (v169)(v110, v136, v177);
  v138 = v183;

  v139 = sub_2150A3F10();
  v140 = sub_2150A5550();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    aBlock = v180;
    *v141 = 136315650;
    v142 = sub_214F7723C(v182, v138, &aBlock);

    *(v141 + 4) = v142;
    *(v141 + 12) = 2080;
    sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v143 = sub_2150A6100();
    v145 = v144;
    v166(v110, v177);
    v146 = sub_214F7723C(v143, v145, &aBlock);

    *(v141 + 14) = v146;
    *(v141 + 22) = 2080;
    swift_beginAccess();

    v148 = MEMORY[0x216061AA0](v147, v177);
    v150 = v149;

    v151 = sub_214F7723C(v148, v150, &aBlock);

    *(v141 + 24) = v151;
    _os_log_impl(&dword_214D51000, v139, v140, "Successfully archived paper bundle %s:\nDatabase: %s\nAssets: %s", v141, 0x20u);
    v152 = v180;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v152, -1, -1);
    MEMORY[0x216064AF0](v141, -1, -1);
  }

  else
  {

    v166(v110, v177);
  }

  v156 = v164;
  v157 = v177;
  v158 = v169;
  (v169)(v164, v172, v177);
  swift_beginAccess();
  v159 = v185;
  v160 = type metadata accessor for SystemPaperSyncArchive(0);
  v161 = objc_allocWithZone(v160);
  v158(&v161[OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive], v156, v157);
  *&v161[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives] = v159;
  v184.receiver = v161;
  v184.super_class = v160;

  v72 = objc_msgSendSuper2(&v184, sel_init);

  v162 = v166;
  v166(v156, v157);
  v162(v172, v157);
  v162(v175, v157);

  sub_214F302D4(v181, &qword_27CA41D40, &unk_2150C7230);

  return v72;
}

unint64_t sub_214FD7DE0()
{
  result = qword_27CA43508;
  if (!qword_27CA43508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43508);
  }

  return result;
}

void sub_214FD7E34(uint64_t a1, void (*a2)(char *, void, uint64_t, uint64_t), void *a3, uint64_t (*a4)(void, void, void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = a8;
  v82 = a6;
  v85 = a7;
  v86 = a2;
  v77 = a5;
  v87 = a3;
  v90[2] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v75 - v12;
  v14 = sub_2150A3750();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v79 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v75 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v75 - v28;
  v78 = a1;
  sub_2150A36C0();
  v30 = sub_2150A3690();
  v32 = v31;
  v90[0] = v87;
  v90[1] = a4;
  v80 = a4;

  MEMORY[0x2160617E0](v30, v32);

  sub_2150A36C0();

  sub_2150A36D0();
  v33 = *(v15 + 8);
  v76 = v22;
  v88 = v33;
  v89 = v15 + 8;
  v33(v22, v14);
  v34 = *(v15 + 16);
  v83 = v29;
  v35 = v29;
  v36 = v34;
  v34(v13, v35, v14);
  v75 = *(v15 + 56);
  v75(v13, 0, 1, v14);
  v84 = v26;
  v37 = v14;
  v38 = sub_2150A36B0();
  v39 = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v39 = sub_2150A36B0();
    v88(v13, v14);
  }

  v40 = [objc_allocWithZone(MEMORY[0x277D36190]) initWithDestinationURL:v38 baseURL:v39];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B0, &qword_2150C3E78);
  v41 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2150C25D0;
  v43 = v83;
  v36(v42 + v41, v83, v37);
  v44 = sub_2150A4EB0();

  v90[0] = 0;
  v45 = [v40 writeURLs:v44 error:v90];

  if (v45)
  {
    v46 = v90[0];
    v47 = v88;
    v88(v43, v37);

    v48 = v77;
    sub_214F302D4(v77, &qword_27CA41D40, &unk_2150C7230);
    (*(v15 + 32))(v48, v84, v37);
    v75(v48, 0, 1, v37);
    v49 = v76;
    sub_2150A36C0();
    v50 = v79;
    sub_2150A36D0();
    v47(v49, v37);
    v51 = [objc_opt_self() defaultManager];
    v52 = sub_2150A5520();

    if (!v52 || (v53 = [v52 allObjects], v54 = sub_2150A4ED0(), v53, v55 = sub_21502DE5C(v54), v56 = , !v55))
    {

      v55 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v56, v57);
    v58 = v87;
    *(&v75 - 6) = v86;
    *(&v75 - 5) = v58;
    v59 = v82;
    *(&v75 - 4) = v80;
    *(&v75 - 3) = v59;
    *(&v75 - 2) = v60;
    v61 = sub_214FD23D8(sub_214FE2ED8, (&v75 - 8), v55);

    sub_215068C0C(v61);

    v88(v50, v37);
  }

  else
  {
    v62 = v90[0];
    v63 = sub_2150A35D0();

    swift_willThrow();
    v64 = v88;
    v88(v84, v37);
    v64(v43, v37);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v65 = sub_2150A3F30();
    __swift_project_value_buffer(v65, qword_280C242C0);
    v66 = v85;

    v67 = v63;
    v68 = sub_2150A3F10();
    v69 = sub_2150A5560();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90[0] = v71;
      *v70 = 136315394;
      *(v70 + 4) = sub_214F7723C(v82, v66, v90);
      *(v70 + 12) = 2080;
      swift_getErrorValue();
      v72 = sub_2150A6440();
      v74 = sub_214F7723C(v72, v73, v90);

      *(v70 + 14) = v74;
      _os_log_impl(&dword_214D51000, v68, v69, "Failed archiving the database directory for paper bundle %s: %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v71, -1, -1);
      MEMORY[0x216064AF0](v70, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static ICSystemPaperDocument.assetsDirectory(at:)()
{
  v0 = sub_2150A3750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36C0();
  sub_2150A36D0();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_214FD8754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a6;
  v53 = a5;
  v57 = a3;
  v58 = a2;
  v59 = a7;
  v60[2] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v52 - v11;
  v13 = sub_2150A3750();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v52 - v20;
  v22 = sub_2150A3690();
  v24 = v23;
  v60[0] = v57;
  v60[1] = a4;

  MEMORY[0x2160617E0](v22, v24);

  sub_2150A36C0();

  sub_2150A36D0();
  v25 = v18;
  v26 = v13;
  v55 = *(v14 + 8);
  v55(v25, v13);
  sub_2150A36E0();
  v57 = *(v14 + 56);
  v58 = v14 + 56;
  (v57)(v12, 0, 1, v13);
  v56 = v21;
  v27 = sub_2150A36B0();
  v28 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v28 = sub_2150A36B0();
    v55(v12, v13);
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D36190]) initWithDestinationURL:v27 baseURL:v28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B0, &qword_2150C3E78);
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2150C25D0;
  (*(v14 + 16))(v31 + v30, a1, v13);
  v32 = sub_2150A4EB0();

  v60[0] = 0;
  v33 = [v29 writeURLs:v32 error:v60];

  if (v33)
  {
    v34 = v60[0];

    v35 = v59;
    (*(v14 + 32))(v59, v56, v26);
    v36 = 0;
  }

  else
  {
    v37 = v60[0];
    v38 = v26;
    v39 = sub_2150A35D0();

    swift_willThrow();
    v40 = v38;
    v55(v56, v38);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v41 = sub_2150A3F30();
    __swift_project_value_buffer(v41, qword_280C242C0);
    v42 = v54;

    v43 = v39;
    v44 = sub_2150A3F10();
    v45 = sub_2150A5560();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60[0] = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_214F7723C(v53, v42, v60);
      *(v46 + 12) = 2080;
      swift_getErrorValue();
      v48 = sub_2150A6440();
      v50 = sub_214F7723C(v48, v49, v60);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_214D51000, v44, v45, "Failed archiving a paper bundle %s asset: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v47, -1, -1);
      MEMORY[0x216064AF0](v46, -1, -1);
    }

    else
    {
    }

    v36 = 1;
    v35 = v59;
    v26 = v40;
  }

  return (v57)(v35, v36, 1, v26);
}

void ICSystemPaperDocument.writeNewVersionFromSyncArchive(_:)(void *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_2150A3A00();
  v208 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v207 = v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_2150A3750();
  v210 = *(v217 - 8);
  v7 = MEMORY[0x28223BE20](v217, v6);
  v204 = v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v214 = v196 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v196 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v209 = v196 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v205 = v196 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v206 = v196 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = v196 - v27;
  v200 = v29;
  MEMORY[0x28223BE20](v26, v30);
  v32 = v196 - v31;
  v33 = *(v1 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v34 = [v33 ic_loggingIdentifier];
  v213 = sub_2150A4AD0();
  v36 = v35;

  if (qword_280C242B8 != -1)
  {
    swift_once();
  }

  v37 = sub_2150A3F30();
  v38 = __swift_project_value_buffer(v37, qword_280C242C0);

  v39 = a1;
  v215 = v38;
  v40 = sub_2150A3F10();
  v41 = sub_2150A5550();

  v42 = os_log_type_enabled(v40, v41);
  v216 = v36;
  *&v201 = v15;
  v203 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v211 = v32;
    v202 = v3;
    v44 = v43;
    v45 = v39;
    v46 = swift_slowAlloc();
    v47 = v28;
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v44 = 136315394;
    *(v44 + 4) = sub_214F7723C(v213, v36, aBlock);
    *(v44 + 12) = 2112;
    *(v44 + 14) = v45;
    *v46 = v45;
    v49 = v45;
    _os_log_impl(&dword_214D51000, v40, v41, "Writing new version of paper bundle %s from archive: %@", v44, 0x16u);
    sub_214F302D4(v46, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v50 = v48;
    v28 = v47;
    MEMORY[0x216064AF0](v50, -1, -1);
    v51 = v44;
    v3 = v202;
    v32 = v211;
    MEMORY[0x216064AF0](v51, -1, -1);
  }

  v52 = [v33 paperBundleURL];
  if (v52)
  {
    v53 = v52;
    sub_2150A36F0();

    v54 = [v33 cloudAccount];
    v55 = v216;
    if (v54)
    {
      v211 = v32;
      v56 = v54;
      v57 = [v54 systemPaperTemporaryDirectoryURL];

      v58 = v209;
      sub_2150A36F0();

      v59 = v207;
      _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
      sub_2150A3990();
      (*(v208 + 8))(v59, v3);
      v60 = v205;
      sub_2150A36C0();

      v61 = v210;
      v62 = v210 + 8;
      v63 = *(v210 + 8);
      v64 = v58;
      v65 = v217;
      v63(v64, v217);
      v66 = v206;
      sub_2150A36D0();
      v63(v60, v65);
      v68 = v61 + 32;
      v67 = *(v61 + 32);
      v67(v28, v66, v65);
      v69 = objc_opt_self();
      v70 = [v69 defaultManager];
      v71 = v212;
      NSFileManager.createDirectory(at:withIntermediateDirectories:)(v28, 1);
      v202 = v62;
      v205 = v63;
      v212 = v71;
      if (v71)
      {

        v72 = sub_2150A3F10();
        v73 = sub_2150A5560();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = v55;
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          aBlock[0] = v76;
          *v75 = 136315138;
          v77 = sub_214F7723C(v213, v74, aBlock);

          *(v75 + 4) = v77;
          v63 = v205;
          _os_log_impl(&dword_214D51000, v72, v73, "Cannot write new paper bundle %s version because we cannot create a temporary bundle", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x216064AF0](v76, -1, -1);
          MEMORY[0x216064AF0](v75, -1, -1);
        }

        else
        {
        }

        v102 = v211;
        sub_214FD7DE0();
        swift_allocError();
        *v103 = 0;
        swift_willThrow();

        v104 = v217;
        v63(v28, v217);
        v63(v102, v104);
      }

      else
      {
        v199 = v69;
        v198 = v67;

        v91 = v201;
        sub_2150A36C0();
        v92 = objc_allocWithZone(MEMORY[0x277D36188]);
        v93 = sub_2150A36B0();
        v94 = sub_2150A36B0();
        v95 = [v92 initWithSourceURL:v93 destinationURL:v94];

        [v95 setOverwrite_];
        [v95 setSkipsInvisibleHeaders_];
        [v95 setWritesTemporaryFilesInsideDestination_];
        aBlock[0] = 0;
        if ([v95 unarchiveResultURLs:0 error:aBlock])
        {
          v196[1] = v68;
          v96 = aBlock[0];
          v97 = [v199 defaultManager];
          v98 = sub_2150A36B0();
          aBlock[0] = 0;
          v99 = [v97 removeItemAtURL:v98 error:aBlock];

          if (v99)
          {
            v100 = aBlock[0];
            v101 = v205;
            (v205)(v91, v217);
          }

          else
          {
            v125 = aBlock[0];
            v126 = sub_2150A35D0();

            swift_willThrow();
            v101 = v205;
            (v205)(v91, v217);
            v212 = 0;
          }

          v127 = v204;
          v197 = v28;
          sub_2150A36C0();
          sub_2150A36D0();
          v101(v209, v217);
          v129 = *&v203[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives];
          v130 = *(v129 + 16);
          v131 = &selRef_bundleWithIdentifier_;
          if (v130)
          {
            v207 = *(v210 + 16);
            v132 = v129 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
            v208 = v210 + 16;
            v206 = *(v210 + 72);
            *&v128 = 136315394;
            v201 = v128;
            (v207)(v127, v132, v217);
            while (1)
            {
              v134 = objc_allocWithZone(MEMORY[0x277D36188]);
              v135 = sub_2150A36B0();
              v136 = sub_2150A36B0();
              v137 = [v134 initWithSourceURL:v135 destinationURL:v136];

              [v137 setOverwrite_];
              [v137 setSkipsInvisibleHeaders_];
              [v137 setWritesTemporaryFilesInsideDestination_];
              aBlock[0] = 0;
              if ([v137 unarchiveResultURLs:0 error:aBlock])
              {
                v138 = aBlock[0];
                v139 = [v199 v131[433]];
                v140 = sub_2150A36B0();
                aBlock[0] = 0;
                v141 = [v139 removeItemAtURL:v140 error:aBlock];

                if (v141)
                {
                  v133 = aBlock[0];
                  v101(v127, v217);
                }

                else
                {
                  v142 = aBlock[0];
                  v143 = sub_2150A35D0();

                  swift_willThrow();
                  v101(v127, v217);
                  v212 = 0;
                }
              }

              else
              {
                v144 = aBlock[0];
                v145 = sub_2150A35D0();

                swift_willThrow();
                v212 = 0;

                v146 = v216;

                v147 = v145;
                v148 = sub_2150A3F10();
                v149 = sub_2150A5560();

                if (os_log_type_enabled(v148, v149))
                {
                  v150 = swift_slowAlloc();
                  v203 = swift_slowAlloc();
                  aBlock[0] = v203;
                  *v150 = v201;
                  *(v150 + 4) = sub_214F7723C(v213, v146, aBlock);
                  *(v150 + 12) = 2080;
                  swift_getErrorValue();
                  v151 = sub_2150A6440();
                  v153 = sub_214F7723C(v151, v152, aBlock);

                  *(v150 + 14) = v153;
                  v154 = v217;
                  _os_log_impl(&dword_214D51000, v148, v149, "Failed to write new paper bundle %s asset version: %s", v150, 0x16u);
                  v155 = v203;
                  swift_arrayDestroy();
                  MEMORY[0x216064AF0](v155, -1, -1);
                  v156 = v150;
                  v127 = v204;
                  MEMORY[0x216064AF0](v156, -1, -1);

                  v157 = v127;
                  v158 = v154;
                }

                else
                {

                  v157 = v127;
                  v158 = v217;
                }

                v101 = v205;
                (v205)(v157, v158);
              }

              v132 += v206;
              --v130;
              v131 = &selRef_bundleWithIdentifier_;
              if (!v130)
              {
                break;
              }

              (v207)(v127, v132, v217);
            }
          }

          v159 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
          v160 = v211;
          v161 = sub_2150A36B0();
          v162 = v210 + 16;
          v163 = v209;
          v164 = v197;
          v165 = v217;
          (*(v210 + 16))(v209, v197, v217);
          v166 = (*(v162 + 64) + 16) & ~*(v162 + 64);
          v167 = (v200 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
          v168 = swift_allocObject();
          v169 = v165;
          v170 = v159;
          v198(v168 + v166, v163, v169);
          v171 = (v168 + v167);
          v172 = v216;
          *v171 = v213;
          v171[1] = v172;
          v173 = swift_allocObject();
          v173[2] = sub_214FE1130;
          v173[3] = v168;
          aBlock[4] = sub_214FE334C;
          aBlock[5] = v173;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_214FAA924;
          aBlock[3] = &block_descriptor_13;
          v174 = _Block_copy(aBlock);

          aBlock[0] = 0;
          [v159 coordinateWritingItemAtURL:v161 options:0 error:aBlock byAccessor:v174];
          _Block_release(v174);

          v175 = aBlock[0];
          LOBYTE(v174) = swift_isEscapingClosureAtFileLocation();

          if (v174)
          {
            __break(1u);
          }

          if (v175)
          {
            v176 = v216;

            v177 = v175;
            v178 = sub_2150A3F10();
            v179 = sub_2150A5560();

            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              v215 = swift_slowAlloc();
              aBlock[0] = v215;
              *v180 = 136315394;
              v181 = sub_214F7723C(v213, v176, aBlock);

              *(v180 + 4) = v181;
              *(v180 + 12) = 2080;
              v182 = [v177 localizedDescription];
              v183 = sub_2150A4AD0();
              v185 = v184;

              v186 = sub_214F7723C(v183, v185, aBlock);

              *(v180 + 14) = v186;
              _os_log_impl(&dword_214D51000, v178, v179, "Failed to archive paper bundle %s to disk for sync due to file coordination error: %s", v180, 0x16u);
              v187 = v215;
              swift_arrayDestroy();
              MEMORY[0x216064AF0](v187, -1, -1);
              MEMORY[0x216064AF0](v180, -1, -1);

              v188 = v217;
              v189 = v205;
              (v205)(v214, v217);
              v189(v197, v188);
              v189(v211, v188);
            }

            else
            {

              v194 = v217;
              v195 = v205;
              (v205)(v214, v217);
              v195(v164, v194);
              v195(v160, v194);
            }
          }

          else
          {

            v192 = v217;
            v193 = v205;
            (v205)(v214, v217);
            v193(v164, v192);
            v193(v160, v192);
          }
        }

        else
        {
          v107 = aBlock[0];
          v108 = sub_2150A35D0();

          swift_willThrow();
          v109 = v205;
          (v205)(v91, v217);
          v110 = v216;

          v111 = v108;
          v112 = sub_2150A3F10();
          v113 = sub_2150A5560();

          v114 = os_log_type_enabled(v112, v113);
          v115 = v211;
          if (v114)
          {
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            aBlock[0] = v117;
            *v116 = 136315394;
            v118 = sub_214F7723C(v213, v110, aBlock);

            *(v116 + 4) = v118;
            *(v116 + 12) = 2080;
            swift_getErrorValue();
            v119 = sub_2150A6440();
            v121 = v28;
            v122 = sub_214F7723C(v119, v120, aBlock);

            *(v116 + 14) = v122;
            v28 = v121;
            _os_log_impl(&dword_214D51000, v112, v113, "Cannot write new paper bundle %s version we failed to extract the database: %s", v116, 0x16u);
            swift_arrayDestroy();
            v123 = v117;
            v115 = v211;
            MEMORY[0x216064AF0](v123, -1, -1);
            v124 = v116;
            v109 = v205;
            MEMORY[0x216064AF0](v124, -1, -1);
          }

          else
          {
          }

          sub_214FD7DE0();
          swift_allocError();
          *v190 = 0;
          swift_willThrow();

          v191 = v217;
          v109(v28, v217);
          v109(v115, v191);
        }
      }
    }

    else
    {

      v84 = sub_2150A3F10();
      v85 = sub_2150A5560();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = v55;
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        aBlock[0] = v88;
        *v87 = 136315138;
        v89 = sub_214F7723C(v213, v86, aBlock);

        *(v87 + 4) = v89;
        _os_log_impl(&dword_214D51000, v84, v85, "Cannot write new paper bundle %s version because we cannot determine an appropriate temporary bundle", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x216064AF0](v88, -1, -1);
        MEMORY[0x216064AF0](v87, -1, -1);
      }

      else
      {
      }

      v105 = v210;
      sub_214FD7DE0();
      swift_allocError();
      *v106 = 0;
      swift_willThrow();
      (*(v105 + 8))(v32, v217);
    }
  }

  else
  {
    v78 = v216;

    v79 = sub_2150A3F10();
    v80 = sub_2150A5560();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      aBlock[0] = v82;
      *v81 = 136315138;
      v83 = sub_214F7723C(v213, v78, aBlock);

      *(v81 + 4) = v83;
      _os_log_impl(&dword_214D51000, v79, v80, "Cannot write new paper bundle %s version because attachment paper bundle url is nil", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x216064AF0](v82, -1, -1);
      MEMORY[0x216064AF0](v81, -1, -1);
    }

    else
    {
    }

    sub_214FD7DE0();
    swift_allocError();
    *v90 = 0;
    swift_willThrow();
  }
}

void sub_214FDA430(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v61 = a4;
  v62 = a2;
  v63[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = &selRef_bundleWithIdentifier_;
  v11 = [v9 defaultManager];
  sub_2150A3700();
  v12 = sub_2150A4A90();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    v14 = [v9 defaultManager];
    v15 = sub_2150A36B0();
    type metadata accessor for URLResourceKey(0);
    v16 = sub_2150A4EB0();
    v63[0] = 0;
    v17 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:v16 options:0 error:v63];

    v18 = v63[0];
    if (v17)
    {
      v19 = sub_2150A4ED0();
      v20 = v18;

      v21 = *(v19 + 16);

      v10 = &selRef_bundleWithIdentifier_;
      if (v21)
      {
        v22 = objc_opt_self();
        v23 = sub_2150A36B0();
        v63[0] = 0;
        v24 = [v22 removeOtherVersionsOfItemAtURL:v23 error:v63];

        v25 = v61;
        if (v24)
        {
          v26 = v63[0];
        }

        else
        {
          v54 = v63[0];
          v55 = sub_2150A35D0();

          swift_willThrow();
        }

        v56 = sub_2150A36B0();
        v57 = sub_2150A36B0();
        v63[0] = 0;
        v58 = [v22 ic:v56 addVersionOfItemAtURL:v57 withContentsOfURL:1 options:v63 error:?];

        v41 = v63[0];
        if (v58)
        {
          v59 = v63[0];

          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v27 = v63[0];
      v28 = sub_2150A35D0();

      swift_willThrow();
      v10 = &selRef_bundleWithIdentifier_;
    }
  }

  v29 = [v9 v10[433]];
  sub_2150A36E0();
  NSFileManager.createDirectory(at:withIntermediateDirectories:)(v8, 1);
  (*(v5 + 8))(v8, v4);

  v30 = v10;
  v31 = [v9 v10[433]];
  v32 = sub_2150A36B0();
  v63[0] = 0;
  v33 = [v31 removeItemAtURL:v32 error:v63];

  if (v33)
  {
    v34 = v63[0];
  }

  else
  {
    v35 = v63[0];
    v36 = sub_2150A35D0();

    swift_willThrow();
  }

  v37 = [v9 v30 + 1595];
  v38 = sub_2150A36B0();
  v39 = sub_2150A36B0();
  v63[0] = 0;
  v40 = [v37 moveItemAtURL:v38 toURL:v39 error:v63];

  v41 = v63[0];
  if (!v40)
  {
    v25 = v61;
LABEL_15:
    v62 = v41;
    v43 = v41;
    v44 = sub_2150A35D0();

    swift_willThrow();
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v45 = sub_2150A3F30();
    __swift_project_value_buffer(v45, qword_280C242C0);

    v46 = v44;
    v47 = sub_2150A3F10();
    v48 = sub_2150A5560();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_214F7723C(v60, v25, v63);
      *(v49 + 12) = 2080;
      swift_getErrorValue();
      v51 = sub_2150A6440();
      v53 = sub_214F7723C(v51, v52, v63);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_214D51000, v47, v48, "Failed to write new paper bundle %s version: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v50, -1, -1);
      MEMORY[0x216064AF0](v49, -1, -1);
    }

    else
    {
    }

    return;
  }

  v42 = v41;
}

void ICSystemPaperDocument.copyAndArchivePaperBundle(to:)(uint64_t a1)
{
  v3 = v1;
  v149 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v123 - v7;
  v9 = sub_2150A3A00();
  v134 = *(v9 - 8);
  v135 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2150A3750();
  v139 = *(v13 - 8);
  v140 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v133 = &v123 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v130 = &v123 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v138 = &v123 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v123 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v123 - v32;
  v132 = v3;
  v34 = *&v3[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v35 = [v34 paperBundleModel];
  if (v35)
  {
    v36 = v35;
    v125 = v8;
    v124 = v17;
    v136 = v2;
    v137 = v33;
    v37 = objc_opt_self();
    v38 = [v37 defaultManager];
    v126 = a1;
    v39 = sub_2150A36B0();
    v40 = [v38 ic:v39 temporaryDirectoryAppropriateForDestination:?];

    if (v40)
    {
      v41 = v36;
      v42 = v137;
      sub_2150A36F0();

      v43 = [v37 defaultManager];
      v127 = v41;
      v44 = [v41 paperBundleURL];
      sub_2150A36F0();

      sub_2150A3700();
      v45 = *(v139 + 8);
      v129 = v139 + 8;
      v128 = v45;
      v45(v30, v140);
      v46 = sub_2150A4A90();

      v47 = [v43 fileExistsAtPath_];

      if (v47)
      {
        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        sub_2150A3990();
        (*(v134 + 8))(v12, v135);
        v48 = v138;
        sub_2150A36C0();

        v49 = [v34 attachmentType];
        v50 = v136;
        v51 = v42;
        if ((v49 - 14) >= 2)
        {
          v52 = v127;
          if (v49 != 13)
          {
            sub_2150A5E10();
            __break(1u);
            return;
          }

          v77 = [v127 paperBundleURL];
          v54 = v130;
          sub_2150A36F0();

          if ([v34 isPasswordProtected])
          {
            v79 = sub_214FE300C(&qword_27CA43518, v78, type metadata accessor for ICSystemPaperDocument, &protocol conformance descriptor for ICSystemPaperDocument);
            v80 = v132;
            v81 = v132;
            v82 = ObjectType;
          }

          else
          {
            v82 = 0;
            v79 = 0;
            v80 = 0;
            v145 = 0;
            v146 = 0;
          }

          v147 = v82;
          v148 = v79;
          v143 = 0;
          v144 = v80;
          v141 = 0u;
          v142 = 0u;
          v75 = &qword_27CA42DF0;
          v76 = &qword_2150C4DE0;
        }

        else
        {
          v52 = v127;
          v53 = [v127 paperBundleURL];
          v54 = v133;
          sub_2150A36F0();

          if ([v34 isPasswordProtected])
          {
            v56 = sub_214FE300C(&qword_27CA43518, v55, type metadata accessor for ICSystemPaperDocument, &protocol conformance descriptor for ICSystemPaperDocument);
            v57 = v132;
            v58 = v132;
            v59 = ObjectType;
          }

          else
          {
            v59 = 0;
            v56 = 0;
            v57 = 0;
            v145 = 0;
            v146 = 0;
          }

          v147 = v59;
          v148 = v56;
          v143 = 0;
          v144 = v57;
          v141 = 0u;
          v142 = 0u;
          v75 = &qword_27CA436A8;
          v76 = &qword_2150C7660;
        }

        sub_214FDB994(v54, &v144, v48, &v141, v75, v76);
        if (v50)
        {

          sub_214F302D4(&v141, &qword_27CA43510, &unk_2150C7240);
          v83 = v140;
          v84 = v128;
          v128(v54, v140);
          v84(v48, v83);
          v84(v51, v83);
          sub_214F302D4(&v144, &qword_27CA43510, &unk_2150C7240);
        }

        else
        {
          v136 = v37;
          sub_214F302D4(&v141, &qword_27CA43510, &unk_2150C7240);
          v85 = v54;
          v86 = v140;
          v128(v85, v140);
          sub_214F302D4(&v144, &qword_27CA43510, &unk_2150C7240);
          v87 = v139;
          v88 = *(v139 + 16);
          v89 = v125;
          v88(v125, v138, v86);
          (*(v87 + 56))(v89, 0, 1, v86);
          v90 = sub_2150A36B0();
          if ((*(v87 + 48))(v89, 1, v86) == 1)
          {
            v91 = 0;
          }

          else
          {
            v91 = sub_2150A36B0();
            v128(v89, v86);
          }

          v92 = [objc_allocWithZone(MEMORY[0x277D36190]) initWithDestinationURL:v90 baseURL:v91];

          [v92 setUsesCompression_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B0, &qword_2150C3E78);
          v93 = (*(v139 + 80) + 32) & ~*(v139 + 80);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_2150C25D0;
          v95 = v138;
          v88((v94 + v93), v138, v86);
          v96 = sub_2150A4EB0();

          v144 = 0;
          v97 = [v92 writeURLs:v96 error:&v144];

          if (v97)
          {
            v140 = v92;
            v98 = qword_280C242B8;
            v99 = v144;
            if (v98 != -1)
            {
              swift_once();
            }

            v100 = sub_2150A3F30();
            __swift_project_value_buffer(v100, qword_280C242C0);
            v101 = v124;
            v88(v124, v126, v86);
            v102 = sub_2150A3F10();
            v103 = sub_2150A5550();
            v104 = os_log_type_enabled(v102, v103);
            v105 = v127;
            if (v104)
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v144 = v107;
              *v106 = 136315138;
              sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v108 = sub_2150A6100();
              v110 = v109;
              v128(v101, v86);
              v111 = sub_214F7723C(v108, v110, &v144);
              v105 = v127;

              *(v106 + 4) = v111;
              _os_log_impl(&dword_214D51000, v102, v103, "Successfully archived paper bundle to %s", v106, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v107);
              MEMORY[0x216064AF0](v107, -1, -1);
              MEMORY[0x216064AF0](v106, -1, -1);
            }

            else
            {

              v128(v101, v86);
            }

            v114 = [v136 defaultManager];
            v115 = v138;
            v116 = sub_2150A36B0();
            v144 = 0;
            v117 = [v114 removeItemAtURL:v116 error:&v144];

            v118 = v140;
            if (v117)
            {
              v119 = v144;
            }

            else
            {
              v120 = v144;
              v121 = sub_2150A35D0();

              swift_willThrow();
            }

            v113 = v115;
          }

          else
          {
            v112 = v144;
            sub_2150A35D0();

            swift_willThrow();
            v113 = v95;
          }

          v122 = v128;
          v128(v113, v86);
          v122(v137, v86);
        }
      }

      else
      {
        if (qword_280C242B8 != -1)
        {
          swift_once();
        }

        v68 = sub_2150A3F30();
        __swift_project_value_buffer(v68, qword_280C242C0);
        v69 = sub_2150A3F10();
        v70 = sub_2150A5560();
        v71 = os_log_type_enabled(v69, v70);
        v72 = v140;
        v73 = v127;
        if (v71)
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_214D51000, v69, v70, "Cannot archive paper bundle because the paper bundle does not exist", v74, 2u);
          MEMORY[0x216064AF0](v74, -1, -1);
        }

        v128(v137, v72);
      }
    }

    else
    {
      if (qword_280C242B8 != -1)
      {
        swift_once();
      }

      v64 = sub_2150A3F30();
      __swift_project_value_buffer(v64, qword_280C242C0);
      v65 = sub_2150A3F10();
      v66 = sub_2150A5560();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_214D51000, v65, v66, "Cannot archive paper bundle because we cannot create a temporary directory", v67, 2u);
        MEMORY[0x216064AF0](v67, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v60 = sub_2150A3F30();
    __swift_project_value_buffer(v60, qword_280C242C0);
    v61 = sub_2150A3F10();
    v62 = sub_2150A5560();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_214D51000, v61, v62, "Cannot archive paper bundle because attachment model is missing", v63, 2u);
      MEMORY[0x216064AF0](v63, -1, -1);
    }
  }
}

void sub_214FDB994(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v34 = a6;
  v35 = a3;
  v9 = sub_2150A3750();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 sharedState];
  [v14 beginBlockingDeauthentication];

  sub_2150A4890();
  v15 = MEMORY[0x216061410](1, a2);
  v16 = MEMORY[0x216061410](1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, v34);
  v18 = v35;
  v17 = v36;
  sub_2150A4730();
  if (v17)
  {

    v19 = [v13 sharedState];
  }

  else
  {
    v34 = 0;
    v20 = v33;
    v36 = v13;
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v21 = sub_2150A3F30();
    __swift_project_value_buffer(v21, qword_280C242C0);
    v22 = v12;
    (*(v20 + 16))(v12, v18, v9);
    v23 = sub_2150A3F10();
    v24 = sub_2150A5550();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v25 = 136315138;
      sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v26 = sub_2150A6100();
      v27 = v22;
      v29 = v28;
      (*(v20 + 8))(v27, v9);
      v30 = sub_214F7723C(v26, v29, &v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_214D51000, v23, v24, "Wrote copied PaperKit bundle to: %s", v25, 0xCu);
      v31 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x216064AF0](v31, -1, -1);
      MEMORY[0x216064AF0](v25, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v22, v9);
    }

    v19 = [v36 sharedState];
  }

  v32 = v19;
  [v32 endBlockingDeauthentication];
}

void ICSystemPaperDocument.restorePaperBundle(from:)()
{
  v2 = v0;
  v107 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2150A3750();
  v8 = *(v96 - 8);
  v10 = MEMORY[0x28223BE20](v96, v9);
  v93 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v90 = &v86 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v86 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v97 = &v86 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v86 - v23;
  v92 = *&v2[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v98 = [v92 paperBundleModel];
  if (v98)
  {
    v94 = v24;
    v95 = v8;
    v89 = v1;
    v88 = objc_opt_self();
    v25 = [v88 defaultManager];
    v26 = sub_2150A36B0();
    v27 = [v25 ic:v26 temporaryDirectoryAppropriateForDestination:?];

    if (v27)
    {
      v28 = v94;
      sub_2150A36F0();

      _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
      sub_2150A3990();
      (*(v4 + 8))(v7, v3);
      v29 = v97;
      sub_2150A36C0();

      v30 = objc_allocWithZone(MEMORY[0x277D36188]);
      v31 = v29;
      v32 = sub_2150A36B0();
      v33 = sub_2150A36B0();
      v34 = [v30 initWithSourceURL:v32 destinationURL:v33];

      [v34 setWritesTemporaryFilesInsideDestination_];
      [v34 setOverwrite_];
      [v34 setSkipsInvisibleHeaders_];
      *&v104 = 0;
      if (![v34 unarchiveResultURLs:0 error:&v104])
      {
        v59 = v104;
        sub_2150A35D0();

        swift_willThrow();
        v60 = v96;
        v61 = *(v95 + 8);
        v61(v31, v96);
        v61(v28, v60);
        return;
      }

      v87 = v34;
      v35 = qword_280C242B8;
      v36 = v104;
      v37 = v96;
      if (v35 != -1)
      {
        swift_once();
      }

      v38 = sub_2150A3F30();
      __swift_project_value_buffer(v38, qword_280C242C0);
      v39 = v95;
      (*(v95 + 16))(v18, v31, v37);
      v40 = sub_2150A3F10();
      v41 = sub_2150A5550();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v104 = v86;
        *v42 = 136315138;
        sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v43 = sub_2150A6100();
        v45 = v44;
        v46 = *(v39 + 8);
        v46(v18, v37);
        v47 = sub_214F7723C(v43, v45, &v104);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_214D51000, v40, v41, "Unarchived paper bundle to temporary directory: %s", v42, 0xCu);
        v48 = v86;
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x216064AF0](v48, -1, -1);
        MEMORY[0x216064AF0](v42, -1, -1);
      }

      else
      {

        v46 = *(v39 + 8);
        v46(v18, v37);
      }

      v62 = v89;
      v64 = v92;
      v63 = v93;
      v65 = [v92 attachmentType];
      v66 = v97;
      v67 = v98;
      if ((v65 - 14) >= 2)
      {
        if (v65 != 13)
        {
          sub_2150A5E10();
          __break(1u);
          return;
        }

        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        v75 = [v98 paperBundleURL];
        v63 = v90;
        sub_2150A36F0();

        if ([v64 isPasswordProtected])
        {
          v77 = sub_214FE300C(&qword_27CA43518, v76, type metadata accessor for ICSystemPaperDocument, &protocol conformance descriptor for ICSystemPaperDocument);
          v78 = v2;
          v79 = ObjectType;
        }

        else
        {
          v79 = 0;
          v77 = 0;
          v2 = 0;
          v100 = 0;
          v101 = 0;
        }

        v102 = v79;
        v103 = v77;
        v99 = v2;
        v73 = &qword_27CA42DF0;
        v74 = &qword_2150C4DE0;
      }

      else
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        v68 = [v98 paperBundleURL];
        sub_2150A36F0();

        if ([v64 isPasswordProtected])
        {
          v70 = sub_214FE300C(&qword_27CA43518, v69, type metadata accessor for ICSystemPaperDocument, &protocol conformance descriptor for ICSystemPaperDocument);
          v71 = v2;
          v72 = ObjectType;
        }

        else
        {
          v72 = 0;
          v70 = 0;
          v2 = 0;
          v100 = 0;
          v101 = 0;
        }

        v102 = v72;
        v103 = v70;
        v99 = v2;
        v73 = &qword_27CA436A8;
        v74 = &qword_2150C7660;
      }

      sub_214FDB994(v66, &v104, v63, &v99, v73, v74);
      if (v62)
      {

        v46(v63, v37);
        sub_214F302D4(&v104, &qword_27CA43510, &unk_2150C7240);
        v46(v66, v37);
        v46(v94, v37);
        sub_214F302D4(&v99, &qword_27CA43510, &unk_2150C7240);
      }

      else
      {
        v46(v63, v37);
        sub_214F302D4(&v104, &qword_27CA43510, &unk_2150C7240);
        sub_214F302D4(&v99, &qword_27CA43510, &unk_2150C7240);
        v80 = [v88 defaultManager];
        v81 = sub_2150A36B0();
        *&v104 = 0;
        v82 = [v80 removeItemAtURL:v81 error:&v104];

        if (v82)
        {
          v83 = v104;
        }

        else
        {
          v84 = v104;
          v85 = sub_2150A35D0();

          swift_willThrow();
        }

        v46(v66, v37);
        v46(v94, v37);
      }
    }

    else
    {
      if (qword_280C242B8 != -1)
      {
        swift_once();
      }

      v53 = sub_2150A3F30();
      __swift_project_value_buffer(v53, qword_280C242C0);
      v54 = sub_2150A3F10();
      v55 = sub_2150A5560();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v98;
      if (v56)
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_214D51000, v54, v55, "Cannot archive paper bundle because we cannot create a temporary directory", v58, 2u);
        MEMORY[0x216064AF0](v58, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v49 = sub_2150A3F30();
    __swift_project_value_buffer(v49, qword_280C242C0);
    v50 = sub_2150A3F10();
    v51 = sub_2150A5560();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_214D51000, v50, v51, "Cannot restore paper bundle because attachment model is missing", v52, 2u);
      MEMORY[0x216064AF0](v52, -1, -1);
    }
  }
}

uint64_t sub_214FDC898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v12 = a1;
  a5(v11);
  (*(v8 + 8))(v11, v7);

  return 1;
}

void static ICSystemPaperDocument.writePaperBundle<A>(_:model:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_opt_self();
  v6 = [v5 sharedState];
  [v6 beginBlockingDeauthentication];

  sub_2150A4770();
  sub_2150A4750();
  v7 = [v5 sharedState];
  [v7 endBlockingDeauthentication];
}

uint64_t ICSystemPaperDocument.encrypt(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v12 = xmmword_2150C7210;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = &v12;
  sub_214FE3D14(v5, sub_214FE11F4, v11);
  v6 = v12;
  v7 = *(&v12 + 1);
  v8 = v12;
  v9 = v12;
  if (*(&v12 + 1) >> 60 == 15)
  {
    sub_214FCA120(a1, a2);
    v7 = *(&v12 + 1);
    v8 = v12;
    v9 = a1;
  }

  sub_214FE1214(v6, *(&v6 + 1));
  sub_214FE1228(v8, v7);
  return v9;
}

uint64_t ICSystemPaperDocument.encrypt(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18[-v11];
  v13 = *(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v14 = sub_2150A3750();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v12, 1, 1, v14);
  v19 = a1;
  v20 = v12;
  sub_214FE3D14(v13, sub_214FE123C, v18);
  sub_214F43C14(v12, v9, &qword_27CA41D40, &unk_2150C7230);
  v16 = *(v15 + 48);
  if (v16(v9, 1, v14) == 1)
  {
    (*(v15 + 16))(a2, a1, v14);
    if (v16(v9, 1, v14) != 1)
    {
      sub_214F302D4(v9, &qword_27CA41D40, &unk_2150C7230);
    }
  }

  else
  {
    (*(v15 + 32))(a2, v9, v14);
  }

  return sub_214F302D4(v12, &qword_27CA41D40, &unk_2150C7230);
}

void ICSystemPaperDocument.updateGraphDestinations(usingInlineAttachmentIdentifierMap:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520, &unk_2150C7250);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v38 - v10;
  v12 = sub_2150A3750();
  v41 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v38 - v18;
  v20 = *&v3[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v21 = [v20 managedObjectContext];
  if (v21)
  {
    v23 = v21;
    v39 = a1;
    v40 = v12;
    MEMORY[0x28223BE20](v21, v22);
    *(&v38 - 2) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500, &qword_2150C94E0);
    sub_2150A56D0();

    v24 = v42;
    if (v42)
    {
      v25 = [v20 paperBundleModel];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 paperBundleURL];

        sub_2150A36F0();
        v28 = v41;
        v29 = v16;
        v30 = v40;
        (*(v41 + 32))(v19, v29, v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0, &qword_2150C4DE0);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
        (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
        v32 = sub_2150A4720();
        sub_214F302D4(v11, &qword_27CA43520, &unk_2150C7250);
        v33 = swift_allocObject();
        v33[2] = a2;
        v33[3] = a3;
        v34 = v39;
        v33[4] = v4;
        v33[5] = v34;
        v33[6] = v32;
        sub_214D748C8(a2, a3);
        v35 = v4;

        sub_2150A4760();

        (*(v28 + 8))(v19, v30);
        return;
      }
    }
  }

  if (a2)
  {
    sub_214FD7DE0();
    v36 = swift_allocError();
    *v37 = 0;
    a2();
  }
}

void sub_214FDD4B8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = a6;
  v27 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520, &unk_2150C7250);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v26 - v17;
  sub_214F43C14(a1, v13, &qword_27CA43520, &unk_2150C7250);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_214F302D4(v13, &qword_27CA43520, &unk_2150C7250);
    v19 = v27;
    if (v27)
    {
      sub_214FD7DE0();
      v20 = swift_allocError();
      *v21 = 0;
      v19();
    }
  }

  else
  {
    v22 = (*(v15 + 32))(v18, v13, v14);
    MEMORY[0x28223BE20](v22, v23);
    v26[-2] = a4;
    v26[-1] = a5;
    sub_2150A47D0();
    v24 = swift_allocObject();
    v25 = v27;
    *(v24 + 16) = v27;
    *(v24 + 24) = a3;
    sub_214D748C8(v25, a3);
    sub_2150A46D0();

    (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_214FDD764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v74 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43640, &qword_2150C7608);
  v78 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v4);
  v70 = &v58 - v5;
  v69 = sub_2150A4580();
  v77 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v6);
  v68 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43648, &qword_2150C7610);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v84 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43650, &qword_2150C7618);
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v67 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43658, &qword_2150C7620);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v75 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43660, &qword_2150C7628);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v76 = &v58 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43668, &qword_2150C7630);
  v83 = *(v81 - 1);
  MEMORY[0x28223BE20](v81, v21);
  v23 = &v58 - v22;
  v80 = sub_2150A44D0();
  v24 = *(v80 - 1);
  MEMORY[0x28223BE20](v80, v25);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43670, &qword_2150C7638);
  v58 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v58 - v30;
  v72 = a1;
  sub_2150A4800();
  sub_2150A44A0();
  v32 = v27;
  v33 = v28;
  (*(v24 + 8))(v32, v80);
  v34 = v76;
  v35 = v81;
  sub_2150A4630();
  (*(v83 + 1))(v23, v35);
  v83 = v31;
  sub_2150A4660();
  v36 = v15 + 48;
  v81 = *(v15 + 48);
  if ((v81)(v34, 1, v14) != 1)
  {
    v39 = *(v15 + 32);
    v38 = v15 + 32;
    v80 = v39;
    v79 = (v59 + 6);
    v62 = (v59 + 4);
    v61 = (v77 + 8);
    v60 = v78 + 1;
    ++v59;
    v78 = (v38 - 24);
    v40 = v75;
    v66 = v14;
    v65 = v38;
    v64 = v33;
    v63 = v36;
    v39(v75, v34, v14);
    while (1)
    {
      v41 = v84;
      sub_2150A46B0();
      if ((*v79)(v41, 1, v11) == 1)
      {
        (*v78)(v40, v14);
        sub_214F302D4(v84, &qword_27CA43648, &qword_2150C7610);
      }

      else
      {
        v42 = v67;
        (*v62)(v67, v84, v11);
        v43 = v68;
        v44 = v72;
        sub_2150A47A0();
        v45 = v70;
        sub_2150A4570();
        v46 = (*v61)(v43, v69);
        MEMORY[0x28223BE20](v46, v47);
        v49 = v73;
        v48 = v74;
        *(&v58 - 4) = v44;
        *(&v58 - 3) = v49;
        *(&v58 - 2) = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43678, &qword_2150C7640);
        v50 = v11;
        v51 = v71;
        v52 = v82;
        v53 = sub_2150A4640();
        v77 = v53;
        v82 = v52;
        (*v60)(v45, v51);
        v54 = sub_2150A4790();
        v55 = sub_2150A4560();
        sub_2150A4670();
        v55(v85, 0);
        v54(v86, 0);
        v87 = v53;
        v56 = sub_2150A4790();
        v57 = sub_2150A4560();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43680, &qword_2150C7648);
        sub_214F43BCC(&qword_27CA43688, &qword_27CA43680, &qword_2150C7648, MEMORY[0x277D83970]);
        v11 = v50;
        v40 = v75;
        v34 = v76;
        sub_2150A4650();
        v57(v85, 0);
        v14 = v66;
        v56(v86, 0);
        (*v59)(v42, v11);
        (*v78)(v40, v14);
        v33 = v64;
      }

      sub_2150A4660();
      if ((v81)(v34, 1, v14) == 1)
      {
        break;
      }

      v80(v40, v34, v14);
    }
  }

  return (*(v58 + 8))(v83, v33);
}

uint64_t sub_214FDE0B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43690, &qword_2150C7650);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v21 - v7;
  v9 = sub_2150A4600();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v21 - v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43678, &qword_2150C7640);
  sub_2150A47A0();
  sub_214FDE2E8(a2, v17);
  (*(v10 + 8))(v14, v9);
  v18 = sub_2150A48B0();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = sub_214FE300C(&qword_27CA43698, 255, MEMORY[0x277CD9590], MEMORY[0x277CD9588]);
  return MEMORY[0x216061340](a1, v17, v8, v9, v19);
}

uint64_t sub_214FDE2E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A0, &qword_2150C7658);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_2150A45D0();
  v10 = sub_2150A45E0();
  if (!*(a1 + 16))
  {

    goto LABEL_5;
  }

  sub_214F30094(v10, v11);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    sub_2150A3990();
    (*(v6 + 8))(v9, v5);
    goto LABEL_6;
  }

LABEL_6:
  sub_2150A45F0();
  return sub_2150A45C0();
}

Swift::Void __swiftcall ICSystemPaperDocument.removeStrokesFromStyleInventory()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43528, &qword_2150C7260);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v86 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43530, &qword_2150C7268);
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v98 = &v86 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43538, &qword_2150C7270);
  MEMORY[0x28223BE20](v101, v9);
  v11 = &v86 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43540, &qword_2150C7278);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v102 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280);
  v16 = *(v15 - 8);
  v103 = v15;
  v104 = v16;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v97 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v86 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550, &unk_2150C94D0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v93 = &v86 - v25;
  v26 = sub_2150A44D0();
  v90 = *(v26 - 8);
  v91 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v30);
  v89 = &v86 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520, &unk_2150C7250);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
  v95 = *(v36 - 8);
  v96 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v86 - v38;
  v40 = *&v0[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v41 = [v40 managedObjectContext];
  if (v41)
  {
    v43 = v41;
    v87 = v11;
    v88 = v22;
    v86 = v5;
    MEMORY[0x28223BE20](v41, v42);
    *(&v86 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500, &qword_2150C94E0);
    sub_2150A56D0();

    v44 = v105;
    if (v105)
    {
      v45 = [v40 attachmentType];
      if ((v45 - 14) >= 2)
      {
        if (v45 == 13)
        {
          sub_214FD3FE0(v44, v35);
          v50 = v95;
          v51 = v96;
          if ((*(v95 + 48))(v35, 1, v96) == 1)
          {

            sub_214F302D4(v35, &qword_27CA43520, &unk_2150C7250);
          }

          else
          {
            (*(v50 + 32))(v39, v35, v51);
            sub_2150A4810();
            v79 = v93;
            sub_2150A44B0();
            (*(v90 + 8))(v29, v91);
            v80 = v92;
            v81 = v94;
            if ((*(v92 + 48))(v79, 1, v94) == 1)
            {
              (*(v50 + 8))(v39, v51);

              sub_214F302D4(v79, &qword_27CA43550, &unk_2150C94D0);
            }

            else
            {
              v82 = v50;
              v83 = v89;
              (*(v80 + 32))(v89, v79, v81);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43570, &unk_2150C72D8);
              v84 = (*(v80 + 80) + 32) & ~*(v80 + 80);
              v85 = swift_allocObject();
              *(v85 + 16) = xmmword_2150C25D0;
              (*(v80 + 16))(v85 + v84, v83, v81);
              sub_214FE19BC(v39, v85);

              (*(v80 + 8))(v83, v81);
              (*(v82 + 8))(v39, v51);
            }
          }
        }

        else
        {
          if (qword_280C242B8 != -1)
          {
            swift_once();
          }

          v68 = sub_2150A3F30();
          __swift_project_value_buffer(v68, qword_280C242C0);
          v69 = v1;
          v70 = sub_2150A3F10();
          v71 = sub_2150A5560();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v105 = v73;
            *v72 = 136315138;
            v74 = [v40 shortLoggingDescription];
            v75 = sub_2150A4AD0();
            v77 = v76;

            v78 = sub_214F7723C(v75, v77, &v105);

            *(v72 + 4) = v78;
            _os_log_impl(&dword_214D51000, v70, v71, "Can't remove strokes from style inventory - unsupported attachment type: %s", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v73);
            MEMORY[0x216064AF0](v73, -1, -1);
            MEMORY[0x216064AF0](v72, -1, -1);
          }
        }
      }

      else
      {
        v46 = v102;
        _s11NotesShared21ICSystemPaperDocumentC05paperE04with9Coherence7CapsuleVy0D3Kit0dE0VGSgAF9CRContextC_tF_0(v44, v102);
        v47 = v44;
        v49 = v103;
        v48 = v104;
        if ((*(v104 + 48))(v46, 1, v103) == 1)
        {

          sub_214F302D4(v46, &qword_27CA43540, &qword_2150C7278);
        }

        else
        {
          v96 = *(v48 + 32);
          v52 = v88;
          v96(v88, v46, v49);
          swift_getKeyPath();
          v53 = v98;
          v102 = v47;
          sub_2150A47C0();

          v54 = v100;
          v55 = *(v99 + 32);
          v56 = v86;
          v55(v86, v53, v100);
          v57 = v104;
          v58 = v97;
          v59 = v52;
          v60 = v103;
          (*(v104 + 16))(v97, v59, v103);
          v61 = (*(v57 + 80) + 16) & ~*(v57 + 80);
          v62 = swift_allocObject();
          v96(v62 + v61, v58, v60);
          v63 = v87;
          v55(v87, v56, v54);
          v64 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43560, &qword_2150C72C8) + 44));
          *v64 = sub_214FE2754;
          v64[1] = v62;
          v65 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43568, &qword_2150C72D0) + 36));
          *v65 = sub_214FE1268;
          v65[1] = 0;
          v66 = (v63 + *(v101 + 44));
          *v66 = sub_214FE12D8;
          v66[1] = 0;
          v67 = v88;
          sub_214FE1DF4(v88, v63);

          sub_214F302D4(v63, &qword_27CA43538, &qword_2150C7270);
          (*(v104 + 8))(v67, v60);
        }
      }
    }
  }
}

uint64_t sub_214FDF068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43530, &qword_2150C7268);
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_2150A4530();
}

uint64_t sub_214FDF138@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = a1;
  v2 = sub_2150A44D0();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v55 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43610, &qword_2150C75D8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v62 = &v55 - v7;
  v8 = sub_2150A4620();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43618, &qword_2150C75E0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v55 - v13;
  v15 = sub_2150A44F0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43620, &qword_2150C75E8);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550, &unk_2150C94D0);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v61 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v55 - v29;
  sub_2150A4680();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43628, &qword_2150C75F0);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v23, 1, v31) == 1)
  {
    sub_214F302D4(v23, &qword_27CA43620, &qword_2150C75E8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    v34 = v30;
  }

  else
  {
    sub_2150A4550();
    sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0], MEMORY[0x277CD94C8]);
    sub_2150A47B0();
    (*(v32 + 8))(v23, v31);
    sub_2150A44E0();
    (*(v16 + 8))(v19, v15);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
    v36 = *(v35 - 8);
    v34 = v30;
    if ((*(v36 + 48))(v30, 1, v35) != 1)
    {
      v51 = v63;
      (*(v36 + 32))(v63, v30, v35);
      return (*(v36 + 56))(v51, 0, 1, v35);
    }
  }

  sub_2150A4690();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43630, &qword_2150C75F8);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v14, 1, v37) == 1)
  {
    sub_214F302D4(v14, &qword_27CA43618, &qword_2150C75E0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
    v40 = v61;
    (*(*(v39 - 8) + 56))(v61, 1, 1, v39);
    v41 = v62;
LABEL_7:
    sub_2150A46A0();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43638, &qword_2150C7600);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v41, 1, v46) == 1)
    {
      sub_214F302D4(v41, &qword_27CA43610, &qword_2150C75D8);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
      (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
    }

    else
    {
      sub_2150A4550();
      sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0], MEMORY[0x277CD94C8]);
      v49 = v55;
      sub_2150A47B0();
      (*(v47 + 8))(v41, v46);
      sub_2150A44B0();
      (*(v56 + 8))(v49, v57);
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
    if ((*(*(v50 - 8) + 48))(v40, 1, v50) != 1)
    {
      sub_214F302D4(v40, &qword_27CA43550, &unk_2150C94D0);
    }

    goto LABEL_14;
  }

  sub_2150A4550();
  sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0], MEMORY[0x277CD94C8]);
  v42 = v58;
  sub_2150A47B0();
  (*(v38 + 8))(v14, v37);
  v40 = v61;
  sub_2150A4610();
  (*(v59 + 8))(v42, v60);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v40, 1, v43);
  v41 = v62;
  if (v45 == 1)
  {
    goto LABEL_7;
  }

  v53 = v63;
  (*(v44 + 32))(v63, v40, v43);
  (*(v44 + 56))(v53, 0, 1, v43);
LABEL_14:
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
  result = (*(*(v54 - 8) + 48))(v34, 1, v54);
  if (result != 1)
  {
    return sub_214F302D4(v34, &qword_27CA43550, &unk_2150C94D0);
  }

  return result;
}

uint64_t ICSystemPaperDocument.toFallbackPDFData()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v52 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43540, &qword_2150C7278);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v52 - v16;
  v18 = [*(v0 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  if (!v18 || (v20 = v18, v56 = v17, v57 = v10, MEMORY[0x28223BE20](v18, v19), *(&v52 - 2) = v0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500, &qword_2150C94E0), sub_2150A56D0(), v20, (v21 = v58) == 0))
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v27 = sub_2150A3F30();
    __swift_project_value_buffer(v27, qword_280C242C0);
    v28 = sub_2150A3F10();
    v29 = sub_2150A5560();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_214D51000, v28, v29, "ICSystemPaperDocument.toFallbackPDFData: Failed to create coherence context.", v30, 2u);
      MEMORY[0x216064AF0](v30, -1, -1);
    }

    return 0;
  }

  _s11NotesShared21ICSystemPaperDocumentC05paperE04with9Coherence7CapsuleVy0D3Kit0dE0VGSgAF9CRContextC_tF_0(v58, v8);
  v22 = v57;
  if ((*(v57 + 48))(v8, 1, v9) == 1)
  {
    sub_214F302D4(v8, &qword_27CA43540, &qword_2150C7278);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v23 = sub_2150A3F30();
    __swift_project_value_buffer(v23, qword_280C242C0);
    v24 = sub_2150A3F10();
    v25 = sub_2150A5560();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_214D51000, v24, v25, "ICSystemPaperDocument.toFallbackPDFData: Failed to create paper document.", v26, 2u);
      MEMORY[0x216064AF0](v26, -1, -1);
    }

    return 0;
  }

  v55 = *(v22 + 32);
  v32 = v56;
  v55(v56, v8, v9);
  v53 = dispatch_semaphore_create(0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v54 = (v33 + 16);
  sub_2150A50C0();
  v34 = sub_2150A5120();
  (*(*(v34 - 8) + 56))(v4, 0, 1, v34);
  (*(v22 + 16))(v14, v32, v9);
  v35 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 4) = v33;
  v55(&v38[v35], v14, v9);
  *&v38[v36] = v21;
  v39 = v53;
  *&v38[v37] = v53;
  v55 = v33;

  v40 = v39;
  v41 = v21;
  sub_214FD26AC(0, 0, v4, &unk_2150C72F0, v38);

  sub_2150A5690();
  v42 = objc_autoreleasePoolPush();
  v43 = v54;
  swift_beginAccess();
  v44 = *v43;
  if (*v43)
  {
    v45 = qword_27CA41680;
    v46 = v44;
    if (v45 != -1)
    {
      swift_once();
    }

    sub_214FE0678(qword_27CA434E8);
    v47 = sub_2150A4910();

    v48 = [v46 dataRepresentationWithOptions_];

    v49 = v57;
    if (v48)
    {
      v50 = sub_2150A37B0();
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
    v49 = v57;
  }

  v51 = v56;
  objc_autoreleasePoolPop(v42);

  (*(v49 + 8))(v51, v9);

  return v50;
}

uint64_t sub_214FE01F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435C8, &qword_2150C75A8);
  v7[9] = swift_task_alloc();
  v8 = sub_2150A4550();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FE02F4, 0, 0);
}

uint64_t sub_214FE02F4()
{
  v1 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280);
  sub_2150A4810();
  v2 = sub_2150A4500();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0], MEMORY[0x277CD94C8]);
  *v3 = v0;
  v3[1] = sub_214FE0440;
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[6];
  v7 = v0[7];

  return MEMORY[0x282128208](v7, v8, v5, v6, v4);
}

uint64_t sub_214FE0440(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 112) = a1;

  sub_214F302D4(v5, &qword_27CA435C8, &qword_2150C75A8);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_214FE05CC, 0, 0);
}

uint64_t sub_214FE05CC()
{
  v1 = v0[14];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  sub_2150A56A0();

  v4 = v0[1];

  return v4();
}

uint64_t sub_214FE0678(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435B0, &qword_2150C7578);
    v2 = sub_2150A5EA0();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v15 = *(*(a1 + 56) + v13);
    *&v32[0] = *(*(a1 + 48) + v13);
    v14 = *&v32[0];
    type metadata accessor for PDFDocumentWriteOption(0);
    v16 = v14;
    v15;
    swift_dynamicCast();
    sub_214D55670(0, &qword_280C230E8, 0x277CCABB0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_214D72488(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_214D72488(v31, v32);
    result = sub_2150A5A50();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_214D72488(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_214FE0954(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435A0, &qword_2150C7568);
  v3 = MEMORY[0x28223BE20](v44, v2);
  v43 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3, v5);
  v42 = &v40 - v6;
  v45 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435A8, &qword_2150C7570);
    v7 = sub_2150A5EA0();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v8 = v45 + 64;
  v9 = 1 << *(v45 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v45 + 64);
  v12 = (v9 + 63) >> 6;
  v40 = v7 + 8;

  v14 = 0;
  v41 = v8;
  while (v11)
  {
    v18 = v14;
LABEL_14:
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(v45 + 56);
    v22 = (*(v45 + 48) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = type metadata accessor for PersistedActivityEvent(0);
    v26 = v21 + *(*(v25 - 8) + 72) * v20;
    v27 = v44;
    v28 = v42;
    sub_214FE2C94(v26, &v42[*(v44 + 48)]);
    *v28 = v23;
    v28[1] = v24;
    v29 = v28;
    v30 = v43;
    sub_214FB6CE4(v29, v43, &qword_27CA435A0, &qword_2150C7568);
    v31 = *(v27 + 48);
    v32 = *v30;
    v33 = v30[1];
    v47 = v25;
    v48 = &protocol witness table for PersistedActivityEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
    sub_214FE3258(v30 + v31, boxed_opaque_existential_1, type metadata accessor for PersistedActivityEvent);
    sub_214D7A458(&v46, v50);
    sub_214D7A458(v50, v51);
    sub_214D7A458(v51, &v49);

    result = sub_214F30094(v32, v33);
    if (v35)
    {
      v15 = (v7[6] + 16 * result);
      *v15 = v32;
      v15[1] = v33;
      v16 = result;

      v17 = (v7[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = sub_214D7A458(&v49, v17);
    }

    else
    {
      if (v7[2] >= v7[3])
      {
        goto LABEL_20;
      }

      *(v40 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v36 = (v7[6] + 16 * result);
      *v36 = v32;
      v36[1] = v33;
      result = sub_214D7A458(&v49, v7[7] + 40 * result);
      v37 = v7[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_21;
      }

      v7[2] = v39;
    }

    v14 = v18;
    v8 = v41;
  }

  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v18 >= v12)
    {

      return v7;
    }

    v11 = *(v8 + 8 * v18);
    ++v14;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id ICSystemPaperDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSystemPaperDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214FE0E28(uint64_t a1, unint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v12 = xmmword_2150C7210;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = &v12;
  sub_214FE3D14(v5, sub_214FE3304, v11);
  v6 = v12;
  v7 = *(&v12 + 1);
  v8 = v12;
  v9 = v12;
  if (*(&v12 + 1) >> 60 == 15)
  {
    sub_214FCA120(a1, a2);
    v7 = *(&v12 + 1);
    v8 = v12;
    v9 = a1;
  }

  sub_214FE1214(v6, *(&v6 + 1));
  sub_214FE1228(v8, v7);
  return v9;
}

uint64_t sub_214FE0F68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214FBE7E4;

  return v6(a1);
}

void sub_214FE1060(uint64_t a1)
{
  v3 = *(sub_2150A3750() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_214FD7E34(a1, (v1 + v4), v9, v10, v11, v12, v13, v14);
}

void sub_214FE1130(uint64_t a1)
{
  v3 = *(sub_2150A3750() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_214FDA430(a1, (v1 + v4), v6, v7);
}

uint64_t sub_214FE1214(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_214FCA120(result, a2);
  }

  return result;
}

uint64_t sub_214FE1228(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_214F7EDE4(result, a2);
  }

  return result;
}

uint64_t sub_214FE12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550, &unk_2150C94D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_214F43C14(a1, &v11 - v6, &qword_27CA43550, &unk_2150C94D0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_214FE1400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_214FE300C(&qword_280C241B0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v32 = a1;
  v11 = sub_2150A49A0();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_214FE300C(&qword_280C241A8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_2150A4A80();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_215078FB4();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_214FE16B0(v14);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_214FE16B0(int64_t a1)
{
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_2150A5950();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = v13;
      v16 = (v14 + 1) & v13;
      v36 = *(v4 + 16);
      v37 = v4 + 16;
      v17 = *(v4 + 72);
      v34 = (v4 + 8);
      v35 = v10;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v12;
        v36(v8, *(v9 + 48) + v18 * v12, v3);
        v21 = v9;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        sub_214FE300C(&qword_280C241B0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v25 = sub_2150A49A0();
        (*v34)(v8, v3);
        v26 = v25 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v26 >= v22 && a1 >= v26)
          {
LABEL_16:
            v9 = v24;
            v29 = *(v24 + 48);
            v18 = v19;
            v30 = v19 * a1;
            if (v19 * a1 < v20 || v29 + v19 * a1 >= (v29 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v30 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v26 >= v22 || a1 >= v26)
        {
          goto LABEL_16;
        }

        v9 = v24;
        v18 = v19;
LABEL_5:
        v12 = (v12 + 1) & v15;
        v10 = v35;
      }

      while (((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v9 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v33;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_214FE19BC(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435D8, &qword_2150C75B0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550, &unk_2150C94D0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435E0, &qword_2150C75B8);
  v32[3] = v14;
  v32[4] = sub_214F43BCC(&qword_280C23170, &qword_27CA435E0, &qword_2150C75B8, MEMORY[0x277D83970]);
  v32[0] = a2;
  v15 = __swift_project_boxed_opaque_existential_1(v32, v14);
  MEMORY[0x28223BE20](v15, v15);
  v17 = (&v27 - v16);
  (*(v18 + 16))(&v27 - v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  *boxed_opaque_existential_1 = *v17;
  boxed_opaque_existential_1[1] = 0;
  v20 = (v6 + 48);
  v21 = (v6 + 32);
  v22 = (v6 + 8);

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
    sub_2150A5850();
    if ((*v20)(v13, 1, v5) == 1)
    {
      break;
    }

    (*v21)(v9, v13, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
    sub_214F43BCC(&qword_280C23190, &qword_27CA43558, &qword_2150C7290, MEMORY[0x277CFB6C0]);
    sub_2150A47E0();
    v23 = objc_allocWithZone(sub_2150A45B0());
    v24 = sub_2150A45A0();
    v25 = [v24 strokes];
    if (!v25)
    {
      sub_2150A48C0();
      sub_2150A4ED0();
      v25 = sub_2150A4EB0();
    }

    [objc_opt_self() removeStrokesFromStyleInventory_];

    (*v22)(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_0(v29);
  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_214FE1DF4(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435D8, &qword_2150C75B0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558, &qword_2150C7290);
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550, &unk_2150C94D0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43530, &qword_2150C7268);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v15);
  v39 = &v38 - v16;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43560, &qword_2150C72C8) - 8;
  MEMORY[0x28223BE20](v41, v17);
  v19 = &v38 - v18;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43568, &qword_2150C72D0) - 8;
  MEMORY[0x28223BE20](v40, v20);
  v22 = &v38 - v21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43538, &qword_2150C7270);
  v50 = v38;
  v51 = sub_214F43BCC(&qword_27CA435E8, &qword_27CA43538, &qword_2150C7270, MEMORY[0x277D842F0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  sub_214F43C14(a2, boxed_opaque_existential_1, &qword_27CA43538, &qword_2150C7270);
  v24 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x28223BE20](v24, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = __swift_allocate_boxed_opaque_existential_1(v46);
  sub_214FB6CE4(v26, v22, &qword_27CA43568, &qword_2150C72D0);
  sub_214FB6CE4(v22, v19, &qword_27CA43560, &qword_2150C72C8);
  (*(v14 + 32))(v39, v19, v42);
  sub_214F43BCC(&qword_27CA435F0, &qword_27CA43530, &qword_2150C7268, MEMORY[0x277CFB588]);
  sub_2150A4D60();
  v29 = *(v41 + 52);
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435F8, &qword_2150C75C0) + 44)) = *&v19[v29];
  v30 = *(v40 + 44);
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43600, &qword_2150C75C8) + 36)) = *&v22[v30];
  v31 = *(v38 + 44);
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43608, &qword_2150C75D0) + 44)) = *&v26[v31];
  v32 = (v43 + 6);
  v33 = (v43 + 4);
  for (++v43; ; (*v43)(v9, v6))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v46, AssociatedTypeWitness);
    sub_2150A5850();
    if ((*v32)(v13, 1, v6) == 1)
    {
      break;
    }

    (*v33)(v9, v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280);
    sub_214F43BCC(&qword_280C23190, &qword_27CA43558, &qword_2150C7290, MEMORY[0x277CFB6C0]);
    sub_2150A47E0();
    v34 = objc_allocWithZone(sub_2150A45B0());
    v35 = sub_2150A45A0();
    v36 = [v35 strokes];
    if (!v36)
    {
      sub_2150A48C0();
      sub_2150A4ED0();
      v36 = sub_2150A4EB0();
    }

    [objc_opt_self() removeStrokesFromStyleInventory_];
  }

  __swift_destroy_boxed_opaque_existential_0(v46);
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

void _s11NotesShared21ICSystemPaperDocumentC12closeContext3forySo6ICNoteC_tFZ_0(void *a1)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 paperCoherenceContextURL];
  if (v7)
  {
    v8 = v7;
    sub_2150A36F0();

    sub_2150A4890();
    v9 = sub_2150A4870();
    if (v9)
    {
      v10 = v9;
      sub_2150A4880();
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v11 = sub_2150A3F30();
    __swift_project_value_buffer(v11, qword_280C242C0);
    v12 = a1;
    v22 = sub_2150A3F10();
    v13 = sub_2150A5560();

    if (os_log_type_enabled(v22, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = [v12 loggingDescription];
      v17 = sub_2150A4AD0();
      v19 = v18;

      v20 = sub_214F7723C(v17, v19, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_214D51000, v22, v13, "No paperCoherenceContextURL available {attachment: %s}", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x216064AF0](v15, -1, -1);
      MEMORY[0x216064AF0](v14, -1, -1);
    }

    else
    {
      v21 = v22;
    }
  }
}

uint64_t sub_214FE2754@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_214FDF138(v4, a1);
}

uint64_t sub_214FE27E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_214F53FB0;

  return sub_214FE01F8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

unint64_t sub_214FE2934()
{
  result = qword_27CA43578;
  if (!qword_27CA43578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43578);
  }

  return result;
}

unint64_t sub_214FE298C()
{
  result = qword_27CA43580;
  if (!qword_27CA43580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43580);
  }

  return result;
}

unint64_t sub_214FE29E4()
{
  result = qword_27CA43588;
  if (!qword_27CA43588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43588);
  }

  return result;
}

unint64_t sub_214FE2A3C()
{
  result = qword_27CA43590;
  if (!qword_27CA43590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43590);
  }

  return result;
}

uint64_t sub_214FE2AAC(uint64_t a1)
{
  result = sub_2150A3750();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_214FE2BDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_214FE2C40()
{
  result = qword_27CA43598;
  if (!qword_27CA43598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43598);
  }

  return result;
}

uint64_t sub_214FE2C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FE2CF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F557A8;

  return sub_214FE0F68(a1, v4);
}

uint64_t sub_214FE2DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return sub_214FE0F68(a1, v4);
}

uint64_t sub_214FE2E84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x216064AF0);
  }

  return result;
}

uint64_t sub_214FE300C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t objectdestroy_69Tm()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_214FE31B4(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_2150A3750() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_214FE3258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void __swiftcall ICQuery.filterSelection(_:accountObjectID:)(ICFilterSelection *__return_ptr retstr, NSManagedObjectContext _, NSManagedObjectID accountObjectID)
{
  swift_beginAccess();

  ICQueryType.filterSelection(managedObjectContext:accountObjectID:)(v5, _, accountObjectID);
}

void __swiftcall ICQuery.tagSelection(_:)(ICTagSelection *__return_ptr retstr, NSManagedObjectContext_optional a2)
{
  isa = a2.value.super.isa;
  swift_beginAccess();

  v4.value.super.isa = isa;
  ICQueryType.tagSelection(managedObjectContext:)(v3, v4);
}

uint64_t static ICEncryptionDelegateSupport.encrypt(attachment:data:)(void *a1, uint64_t a2, unint64_t a3)
{
  v11 = xmmword_2150C7210;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = &v11;
  sub_214FE3D14(a1, sub_214FE3CE4, v10);
  v5 = v11;
  v6 = *(&v11 + 1);
  v7 = v11;
  v8 = v11;
  if (*(&v11 + 1) >> 60 == 15)
  {
    sub_214FCA120(a2, a3);
    v6 = *(&v11 + 1);
    v7 = v11;
    v8 = a2;
  }

  sub_214FE1214(v5, *(&v5 + 1));
  sub_214FE1228(v7, v6);
  return v8;
}

void *static ICEncryptionDelegateSupport.decrypt(attachment:data:)(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v25 = xmmword_2150C7210;
  if (([a1 ic_isDeallocating] & 1) == 0)
  {
    v6 = [v5 managedObjectContext];
    if (v6)
    {
      v7 = v6;
      if (([v6 ic_isDeallocating] & 1) != 0 || (v8 = objc_msgSend(v7, sel_persistentStoreCoordinator)) == 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
        v10 = [v8 persistentStores];
        sub_214FE4C20();
        v11 = sub_2150A4ED0();

        if (v11 >> 62)
        {
          v12 = sub_2150A59D0();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12)
        {
          MEMORY[0x28223BE20](v13, v14);
          v24[2] = a2;
          v24[3] = a3;
          v24[4] = &v25;
          sub_214FE3D14(v5, sub_214FE4C6C, v24);

          v15 = v25;
          v16 = *(&v25 + 1);
          v17 = v25;
          v5 = v25;
          if (*(&v25 + 1) >> 60 == 15)
          {
            sub_214FCA120(a2, a3);
            v16 = *(&v25 + 1);
            v17 = v25;
            v5 = a2;
          }

          sub_214FE1214(v15, *(&v15 + 1));
          sub_214FE1228(v17, v16);
          return v5;
        }
      }
    }
  }

  if (qword_27CA41690 != -1)
  {
    swift_once();
  }

  v18 = sub_2150A3F30();
  __swift_project_value_buffer(v18, qword_27CA436D8);
  v19 = sub_2150A3F10();
  v20 = sub_2150A5560();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_214D51000, v19, v20, "Failed decrypting because attachment is transitioning", v21, 2u);
    MEMORY[0x216064AF0](v21, -1, -1);
  }

  sub_214FE3FD4();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();
  sub_214FE1228(v25, *(&v25 + 1));
  return v5;
}

uint64_t static ICEncryptionDelegateSupport.encrypt(attachment:url:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18[-v12];
  v14 = sub_2150A3750();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  v19 = a2;
  v20 = v13;
  sub_214FE3D14(a1, sub_214FE123C, v18);
  sub_214FE4C9C(v13, v10);
  v16 = *(v15 + 48);
  if (v16(v10, 1, v14) == 1)
  {
    (*(v15 + 16))(a3, a2, v14);
    if (v16(v10, 1, v14) != 1)
    {
      sub_214F5C454(v10);
    }
  }

  else
  {
    (*(v15 + 32))(a3, v10, v14);
  }

  return sub_214F5C454(v13);
}

uint64_t sub_214FE3B7C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA436D8);
  v1 = __swift_project_value_buffer(v0, qword_27CA436D8);
  if (qword_27CA414D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_214FE3C4C()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 workerManagedObjectContext];
  }

  else
  {
    v2 = 0;
  }

  qword_27CA436F0 = v2;
}

void sub_214FE3D14(void *a1, void *a2, void *a3)
{
  if (([objc_opt_self() isMainThread] & 1) == 0 && (v4 = objc_msgSend(a1, sel_managedObjectContext)) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_concurrencyType), v5, v6 == 2))
  {
    v7 = [a1 managedObjectContext];
    if (v7)
    {
      v9 = v7;
      MEMORY[0x28223BE20](v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43710, &qword_2150C7778);
      sub_2150A56D0();
    }
  }

  else
  {
    v10 = [a1 managedObjectContext];
    if (v10)
    {
      v12 = v10;
      MEMORY[0x28223BE20](v10, v11);
      sub_2150A56D0();
    }
  }
}

unint64_t sub_214FE3FD4()
{
  result = qword_27CA436F8;
  if (!qword_27CA436F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA436F8);
  }

  return result;
}

void sub_214FE4028(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5, const char *a6, ...)
{
  if ([a1 isAuthenticated])
  {
    v10 = [a1 cryptoStrategy];
    if (v10 && (v11 = v10, v12 = sub_2150A3790(), v13 = [v11 *a5], v12, swift_unknownObjectRelease(), v13))
    {
      v14 = sub_2150A37B0();
      v16 = v15;

      v17 = *a4;
      v18 = a4[1];
      *a4 = v14;
      a4[1] = v16;
      sub_214FE1228(v17, v18);
    }

    else
    {
      if (qword_27CA41690 != -1)
      {
        swift_once();
      }

      v19 = sub_2150A3F30();
      __swift_project_value_buffer(v19, qword_27CA436D8);
      v20 = a1;
      v21 = sub_2150A3F10();
      v22 = sub_2150A5560();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136315138;
        v25 = [v20 loggingDescription];
        v26 = sub_2150A4AD0();
        v28 = v27;

        v29 = sub_214F7723C(v26, v28, &v30);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_214D51000, v21, v22, a6, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x216064AF0](v24, -1, -1);
        MEMORY[0x216064AF0](v23, -1, -1);
      }
    }
  }
}

void sub_214FE4254(void *a1, void *a2, uint64_t a3)
{
  v74 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v67 - v12;
  v14 = sub_2150A3750();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v67 - v21;
  if (![a1 isAuthenticated])
  {
    return;
  }

  v23 = [a1 cloudAccount];
  if (!v23)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_8:
    sub_214F5C454(v13);
LABEL_9:
    if (qword_27CA41690 != -1)
    {
      swift_once();
    }

    v27 = sub_2150A3F30();
    __swift_project_value_buffer(v27, qword_27CA436D8);
    v28 = a1;
    v29 = sub_2150A3F10();
    v30 = sub_2150A5560();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136315138;
      v33 = [v28 loggingDescription];
      v34 = sub_2150A4AD0();
      v36 = v35;

      v37 = sub_214F7723C(v34, v36, &v75);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_214D51000, v29, v30, "Failed creating temporary file for encrypting sidecar file for PaperKit attachment: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x216064AF0](v32, -1, -1);
      MEMORY[0x216064AF0](v31, -1, -1);
    }

    return;
  }

  v72 = a3;
  v73 = v3;
  v24 = v23;
  v25 = [v23 temporaryDirectoryURL];

  if (v25)
  {
    sub_2150A36F0();

    v26 = *(v15 + 56);
    v26(v10, 0, 1, v14);
  }

  else
  {
    v26 = *(v15 + 56);
    v26(v10, 1, 1, v14);
  }

  sub_214F48094(v10, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_8;
  }

  v38 = *(v15 + 32);
  v69 = v15 + 32;
  v70 = v26;
  v68 = v38;
  v38(v22, v13, v14);
  v71 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2150C29C0;
  *(v39 + 32) = sub_2150A3700();
  *(v39 + 40) = v40;
  v41 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v42 = [v41 UUIDString];

  v43 = sub_2150A4AD0();
  v45 = v44;

  *(v39 + 48) = v43;
  *(v39 + 56) = v45;
  v46 = sub_2150A4EB0();

  v47 = [v71 fileURLWithPathComponents_];

  if (!v47)
  {
    (*(v15 + 8))(v22, v14);
    goto LABEL_9;
  }

  sub_2150A36F0();

  v48 = [a1 cryptoStrategy];
  if (v48 && (v49 = v48, v50 = sub_2150A36B0(), v51 = sub_2150A36B0(), v52 = [v49 encryptSidecarFileFromURL:v50 toURL:v51], swift_unknownObjectRelease(), v50, v51, (v52 & 1) != 0))
  {
    (*(v15 + 8))(v22, v14);
    v53 = v72;
    sub_214F5C454(v72);
    v68(v53, v19, v14);
    v70(v53, 0, 1, v14);
  }

  else
  {
    if (qword_27CA41690 != -1)
    {
      swift_once();
    }

    v54 = sub_2150A3F30();
    __swift_project_value_buffer(v54, qword_27CA436D8);
    v55 = a1;
    v56 = sub_2150A3F10();
    v57 = sub_2150A5560();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v58 = 136315138;
      v59 = [v55 loggingDescription];
      LODWORD(v72) = v57;
      v60 = v59;
      v61 = sub_2150A4AD0();
      v63 = v62;

      v64 = sub_214F7723C(v61, v63, &v75);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_214D51000, v56, v72, "Failed encrypting sidecar file for PaperKit attachment: %s", v58, 0xCu);
      v65 = v74;
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x216064AF0](v65, -1, -1);
      MEMORY[0x216064AF0](v58, -1, -1);
    }

    v66 = *(v15 + 8);
    v66(v19, v14);
    v66(v22, v14);
  }
}

void sub_214FE498C(void *a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  if ([a1 ic_obtainPermanentObjectIDIfNecessary])
  {
    v6 = [a1 objectID];
    v7 = *a2;
    *a2 = v6;
  }

  else
  {
    if (qword_27CA41690 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA436D8);
    v9 = a1;
    v10 = sub_2150A3F10();
    v11 = sub_2150A5560();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = [v9 loggingDescription];
      v15 = sub_2150A4AD0();
      v17 = v16;

      v18 = sub_214F7723C(v15, v17, &v19);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_214D51000, v10, v11, "Cannot obtain permanent object ID for PaperKit attachment: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x216064AF0](v13, -1, -1);
      MEMORY[0x216064AF0](v12, -1, -1);
    }
  }

  *a3 = 0;
}

void sub_214FE4B5C(uint64_t a1, void (*a2)(void))
{
  if (qword_27CA41698 != -1)
  {
    swift_once();
  }

  if (qword_27CA436F0)
  {
    v4 = [qword_27CA436F0 objectWithID_];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        a2();
      }
    }
  }
}

unint64_t sub_214FE4C20()
{
  result = qword_27CA43700;
  if (!qword_27CA43700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA43700);
  }

  return result;
}

uint64_t sub_214FE4C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214FE4D30()
{
  result = qword_27CA43708;
  if (!qword_27CA43708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43708);
  }

  return result;
}

uint64_t sub_214FE4DD4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_214FE4E3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43960, &qword_2150C7D70);
  v50 = *(v6 - 8);
  v51 = v6;
  v8 = MEMORY[0x28223BE20](v6, v7);
  v55 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v54 = &v39 - v11;
  v49 = sub_2150A3A00();
  v12 = *(v49 - 8);
  result = MEMORY[0x28223BE20](v49, v13);
  v52 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
    goto LABEL_43;
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_12;
    }

    v19 = *(v53 + 16);
    v18 = *(v53 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(a2);
LABEL_12:
    v21 = ceil(v17 / a3);
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v21 <= -9.22337204e18)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v21 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v22 = v21;
    if (v21 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43968, &qword_2150C7D78);
      v23 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2150C25D0;
      v25 = (v24 + v23);
      v26 = v53;
      *v25 = v53;
      v25[1] = a2;
      swift_storeEnumTagMultiPayload();
      sub_214FCA120(v26, a2);
      return v24;
    }

    v41 = v3;
    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    v40 = v12;
    if (v22 < 1)
    {
      v24 = MEMORY[0x277D84F90];
LABEL_38:
      (*(v40 + 8))(v52, v49);
      return v24;
    }

    v27 = 0;
    v42 = v53 >> 32;
    v43 = BYTE6(a2);
    v44 = (v12 + 16);
    v24 = MEMORY[0x277D84F90];
    v46 = a2 >> 62;
    v47 = a2;
    v45 = a3;
    v48 = v22;
    while (1)
    {
      result = v27 * a3;
      if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
      {
        break;
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v28 = *(v53 + 24);
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = v43;
        if (v16)
        {
          v28 = v42;
        }
      }

      if (__OFADD__(result, a3))
      {
        goto LABEL_41;
      }

      if (result + a3 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = result + a3;
      }

      if (v29 < result)
      {
        goto LABEL_42;
      }

      v30 = sub_2150A37D0();
      v32 = v31;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718, &unk_2150C7780);
      v34 = v33[12];
      v35 = v33[16];
      v36 = v54;
      v37 = (v54 + v33[20]);
      (*v44)(v54, v52, v49);
      *(v36 + v34) = v27;
      *(v36 + v35) = v22;
      *v37 = v30;
      v37[1] = v32;
      swift_storeEnumTagMultiPayload();
      sub_214F43C14(v36, v55, &qword_27CA43960, &qword_2150C7D70);
      sub_214FCA120(v30, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_215060474(0, *(v24 + 16) + 1, 1, v24);
      }

      v16 = *(v24 + 16);
      v38 = *(v24 + 24);
      a3 = v45;
      if (v16 >= v38 >> 1)
      {
        v24 = sub_215060474((v38 > 1), v16 + 1, 1, v24);
      }

      v22 = v48;
      sub_214F7EDE4(v30, v32);
      sub_214FEF108(v54);
      *(v24 + 16) = v16 + 1;
      sub_214FEF170(v55, v24 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v16);
      ++v27;
      LODWORD(v16) = v46;
      if (v22 == v27)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  LODWORD(v17) = HIDWORD(v53) - v53;
  if (!__OFSUB__(HIDWORD(v53), v53))
  {
    v17 = v17;
    goto LABEL_12;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_214FE5310(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a1;
  v57 = type metadata accessor for MessageChunking.Message(0, a5, a6, a7);
  v9 = *(v57 - 8);
  v11 = MEMORY[0x28223BE20](v57, v10);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v53 = &v45 - v14;
  v55 = sub_2150A3A00();
  result = MEMORY[0x28223BE20](v55, v15);
  v56 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v19 != 2)
  {
    v20 = 0;
    goto LABEL_12;
  }

  v22 = *(v58 + 16);
  v21 = *(v58 + 24);
  v23 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v23)
  {
    __break(1u);
LABEL_9:
    LODWORD(v20) = HIDWORD(v58) - v58;
    if (__OFSUB__(HIDWORD(v58), v58))
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v20 = v20;
  }

LABEL_12:
  v24 = ceil(v20 / a3);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = v24;
  if (v24 == 1)
  {
    v26 = v57;
    sub_2150A6110();
    swift_allocObject();
    v27 = sub_2150A4EF0();
    v28 = v58;
    *v29 = v58;
    v29[1] = a2;
    swift_storeEnumTagMultiPayload();
    sub_214F59104(v27, v26);
    v31 = v30;
    sub_214FCA120(v28, a2);
    return v31;
  }

  v46 = v17;
  v52 = a2;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v60 = sub_2150A4F40();
  if (v25 >= 1)
  {
    v32 = 0;
    v47 = v58 >> 32;
    v48 = BYTE6(v52);
    v50 = (v9 + 16);
    v51 = (v46 + 16);
    v49 = (v9 + 8);
    while (1)
    {
      result = v32 * a3;
      if ((v32 * a3) >> 64 != (v32 * a3) >> 63)
      {
        break;
      }

      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v33 = *(v58 + 24);
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = v48;
        if (v19)
        {
          v33 = v47;
        }
      }

      if (__OFADD__(result, a3))
      {
        goto LABEL_35;
      }

      if (result + a3 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = result + a3;
      }

      if (v34 < result)
      {
        goto LABEL_36;
      }

      v59 = sub_2150A37D0();
      v36 = v35;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718, &unk_2150C7780);
      v38 = v37[12];
      v39 = a3;
      v40 = v37[16];
      v41 = v19;
      v42 = v53;
      v43 = &v53[v37[20]];
      (*v51)(v53, v56, v55);
      *&v42[v38] = v32;
      *&v42[v40] = v25;
      a3 = v39;
      *v43 = v59;
      v43[1] = v36;
      v19 = v41;
      v44 = v57;
      swift_storeEnumTagMultiPayload();
      (*v50)(v54, v42, v44);
      sub_2150A4FD0();
      sub_2150A4F90();
      (*v49)(v42, v44);
      if (v25 == ++v32)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_32:
  (*(v46 + 8))(v56, v55);
  return v60;
}

uint64_t static MessageChunking.encodeAndChunk<A>(_:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2150A3530();
  swift_allocObject();
  sub_2150A3520();
  v10 = sub_2150A3510();
  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v12 = sub_214FE5310(v10, v11, a2, a3, a3, a4, a5);
    sub_214F7EDE4(v13, v14);
  }

  return v12;
}

uint64_t sub_214FE5874(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214FE58C8(char a1)
{
  if (a1)
  {
    return 1953653104;
  }

  else
  {
    return 1886220131;
  }
}

BOOL sub_214FE58E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  return v2 != 0;
}

unint64_t sub_214FE5930(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214FE5998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5A0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_214FE5A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214FE5874(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_214FE5B88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214FE58C8(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_214FE5BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214FE5874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214FE5C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214F7F128();
  *a1 = result;
  return result;
}

uint64_t sub_214FE5C34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214FE5C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_214FE5CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5D50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_214FE5DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_214FE5E9C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214FE58E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_214FE5EF4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214FE58E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214FE5F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214F94834();
  *a1 = result & 1;
  return result;
}

uint64_t sub_214FE5F58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214FE5FAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_214FE6000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE6074(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_214FE60E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE6150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_214FE61C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214FE5930(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_214FE61F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214FE5980(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_214FE6240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214FE597C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214FE6268@<X0>(_BYTE *a2@<X8>)
{
  result = sub_214FEF0B4();
  *a2 = result;
  return result;
}

uint64_t sub_214FE629C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214FE62F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

BOOL static MessageChunking.Message.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2150A3A00();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageChunking.Message(0, a3, a4, a5);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = (&v59 - v20);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x28223BE20](TupleTypeMetadata2, v23);
  v26 = &v59 - v25;
  v27 = (&v59 + *(v24 + 48) - v25);
  v68 = v14;
  v28 = *(v14 + 16);
  v28(&v59 - v25, a1, v13);
  v28(v27, a2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28(v18, v26, v13);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718, &unk_2150C7780);
    v30 = v29[12];
    v31 = *&v18[v30];
    v32 = v29[16];
    v62 = *&v18[v32];
    v63 = v31;
    v33 = v29[20];
    v34 = *&v18[v33];
    v35 = *&v18[v33 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = v35;
      v60 = *(v27 + v30);
      v61 = v34;
      v59 = *(v27 + v32);
      v37 = *(v27 + v33);
      v36 = *(v27 + v33 + 8);
      v39 = v66;
      v38 = v67;
      v40 = v64;
      (*(v66 + 32))(v64, v27, v67);
      v41 = sub_2150A39B0();
      v42 = *(v39 + 8);
      v42(v18, v38);
      if (v41)
      {
        v43 = v37;
        v44 = v61;
        if (v63 == v60)
        {
          v45 = v36;
          v46 = v65;
          if (v62 == v59)
          {
            v47 = v43;
            v48 = v43;
            v49 = v45;
            v50 = sub_214FEEB80(v61, v65, v48, v45);
            sub_214F7EDE4(v47, v49);
            sub_214F7EDE4(v44, v46);
            v42(v64, v38);
LABEL_16:
            v53 = v68;
            goto LABEL_17;
          }

          v42(v64, v38);
          sub_214F7EDE4(v43, v36);
          v56 = v44;
          v57 = v46;
LABEL_15:
          sub_214F7EDE4(v56, v57);
          v50 = 0;
          goto LABEL_16;
        }

        v42(v64, v38);
        sub_214F7EDE4(v43, v36);
        v56 = v44;
      }

      else
      {
        v42(v40, v38);
        sub_214F7EDE4(v37, v36);
        v56 = v61;
      }

      v57 = v65;
      goto LABEL_15;
    }

    sub_214F7EDE4(v34, v35);
    (*(v66 + 8))(v18, v67);
  }

  else
  {
    v28(v21, v26, v13);
    v51 = *v21;
    v52 = v21[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v54 = *v27;
      v55 = v27[1];
      v50 = sub_214FEEB80(v51, v52, *v27, v55);
      sub_214F7EDE4(v54, v55);
      sub_214F7EDE4(v51, v52);
      goto LABEL_16;
    }

    sub_214F7EDE4(v51, v52);
  }

  v50 = 0;
  v53 = v65;
  v13 = TupleTypeMetadata2;
LABEL_17:
  (*(v53 + 8))(v26, v13);
  return v50;
}

uint64_t MessageChunking.Message.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v53 = type metadata accessor for MessageChunking.Message.PartialCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v62 = sub_2150A60C0();
  v54 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v7);
  v61 = v47 - v8;
  v52 = sub_2150A3A00();
  v59 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v9);
  v57 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MessageChunking.Message.CompleteCodingKeys(255, v4, v5, v6);
  v47[1] = swift_getWitnessTable();
  v47[2] = v11;
  v12 = sub_2150A60C0();
  v49 = *(v12 - 8);
  v50 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v48 = v47 - v15;
  v16 = *(a2 - 1);
  MEMORY[0x28223BE20](v14, v17);
  v19 = (v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MessageChunking.Message.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v55 = sub_2150A60C0();
  v60 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v20);
  v22 = v47 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A65B0();
  (*(v16 + 16))(v19, v56, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718, &unk_2150C7780);
    v56 = *(v19 + v23[12]);
    v24 = *(v19 + v23[16]);
    v25 = (v19 + v23[20]);
    v27 = *v25;
    v26 = v25[1];
    v28 = v19;
    v29 = v52;
    (*(v59 + 32))(v57, v28, v52);
    LOBYTE(v63) = 1;
    v30 = v55;
    sub_2150A6010();
    LOBYTE(v63) = 0;
    sub_214FEF250(&qword_280C241B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v31 = v58;
    sub_2150A60A0();
    if (v31)
    {
      sub_214F7EDE4(v27, v26);
      (*(v54 + 8))(v61, v62);
      (*(v59 + 8))(v57, v29);
      return (*(v60 + 8))(v22, v30);
    }

    v53 = v24;
    v39 = v27;
    v58 = v22;
    v40 = v57;
    LOBYTE(v63) = 1;
    sub_2150A6090();
    v42 = v30;
    LOBYTE(v63) = 2;
    sub_2150A6090();
    v43 = v26;
    v44 = v39;
    v63 = v39;
    v64 = v43;
    v65 = 3;
    sub_214FEED30();
    sub_2150A60A0();
    v46 = v58;
    v45 = v59;
    (*(v54 + 8))(v61, v62);
    (*(v45 + 8))(v40, v29);
    (*(v60 + 8))(v46, v42);
    v37 = v44;
    v38 = v43;
  }

  else
  {
    v32 = *v19;
    v33 = v19[1];
    LOBYTE(v63) = 0;
    v34 = v48;
    v35 = v55;
    sub_2150A6010();
    v63 = v32;
    v64 = v33;
    sub_214FEED30();
    v36 = v50;
    sub_2150A60A0();
    (*(v49 + 8))(v34, v36);
    (*(v60 + 8))(v22, v35);
    v37 = v32;
    v38 = v33;
  }

  return sub_214F7EDE4(v37, v38);
}

uint64_t MessageChunking.Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v78 = a5;
  v9 = type metadata accessor for MessageChunking.Message.PartialCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v76 = v9;
  v70 = sub_2150A5FE0();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v10);
  v80 = &v64 - v11;
  v12 = type metadata accessor for MessageChunking.Message.CompleteCodingKeys(255, a2, a3, a4);
  v72 = swift_getWitnessTable();
  v73 = v12;
  v69 = sub_2150A5FE0();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v13);
  v74 = &v64 - v14;
  type metadata accessor for MessageChunking.Message.CodingKeys(255, a2, a3, a4);
  v82 = swift_getWitnessTable();
  v81 = sub_2150A5FE0();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for MessageChunking.Message(0, a2, a3, a4);
  v77 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v64 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v64 - v28;
  v30 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = v83;
  sub_2150A6590();
  if (!v31)
  {
    v65 = v26;
    v67 = v22;
    v66 = v29;
    v32 = v81;
    v82 = v18;
    v83 = v17;
    *&v84 = sub_2150A5FD0();
    sub_2150A4FD0();
    swift_getWitnessTable();
    *&v86 = sub_2150A5920();
    *(&v86 + 1) = v33;
    *&v87 = v34;
    *(&v87 + 1) = v35;
    sub_2150A5910();
    swift_getWitnessTable();
    sub_2150A5420();
    v36 = v84;
    if (v84 == 2 || (v64 = v86, v84 = v86, v85 = v87, (sub_2150A5450() & 1) == 0))
    {
      v38 = sub_2150A5C20();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0);
      v41 = v83;
      *v40 = v82;
      sub_2150A5F20();
      sub_2150A5BF0();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v79 + 8))(v41, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36)
      {
        LOBYTE(v84) = 1;
        v37 = v83;
        sub_2150A5F10();
        sub_2150A3A00();
        LOBYTE(v84) = 0;
        sub_214FEF250(&qword_27CA43008, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v46 = v70;
        sub_2150A5FC0();
        v47 = v79;
        LOBYTE(v84) = 1;
        v50 = sub_2150A5FB0();
        v51 = v71;
        v53 = v50;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718, &unk_2150C7780);
        *&v67[*(v54 + 48)] = v53;
        LOBYTE(v84) = 2;
        v55 = sub_2150A5FB0();
        v56 = *(v54 + 64);
        v57 = v67;
        *&v67[v56] = v55;
        LOBYTE(v84) = 3;
        sub_214FEED84();
        v58 = v80;
        sub_2150A5FC0();
        (*(v51 + 8))(v58, v46);
        (*(v47 + 8))(v37, v81);
        swift_unknownObjectRelease();
        v59 = v57;
        v60 = v82;
        swift_storeEnumTagMultiPayload();
        v61 = *(v77 + 32);
        v62 = v66;
        v61(v66, v59, v60);
        v63 = v78;
      }

      else
      {
        LOBYTE(v84) = 0;
        v42 = v74;
        v43 = v83;
        sub_2150A5F10();
        v44 = v77;
        v63 = v78;
        sub_214FEED84();
        v48 = v69;
        sub_2150A5FC0();
        v49 = v79;
        (*(v68 + 8))(v42, v48);
        (*(v49 + 8))(v43, v32);
        swift_unknownObjectRelease();
        v52 = v65;
        *v65 = v84;
        v60 = v82;
        swift_storeEnumTagMultiPayload();
        v61 = *(v44 + 32);
        v62 = v66;
        v61(v66, v52, v60);
      }

      v61(v63, v62, v60);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v88);
}