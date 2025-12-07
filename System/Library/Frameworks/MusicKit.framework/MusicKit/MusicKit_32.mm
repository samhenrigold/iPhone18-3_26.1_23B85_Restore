uint64_t sub_2174DB980(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 464))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2174DB9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_2174DBAD0(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudCreditArtist.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudCreditArtist.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2174DBD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288F0;
  if (!qword_27CB288F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288F0);
  }

  return result;
}

unint64_t sub_2174DBDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB288F8;
  if (!qword_27CB288F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288F8);
  }

  return result;
}

unint64_t sub_2174DBE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28900;
  if (!qword_27CB28900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28900);
  }

  return result;
}

unint64_t sub_2174DBE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28908;
  if (!qword_27CB28908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28908);
  }

  return result;
}

unint64_t sub_2174DBEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28910;
  if (!qword_27CB28910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28910);
  }

  return result;
}

unint64_t sub_2174DBF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28918;
  if (!qword_27CB28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28918);
  }

  return result;
}

unint64_t sub_2174DBF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28920;
  if (!qword_27CB28920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28920);
  }

  return result;
}

unint64_t sub_2174DBFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28928;
  if (!qword_27CB28928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28928);
  }

  return result;
}

unint64_t sub_2174DC014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28930;
  if (!qword_27CB28930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28930);
  }

  return result;
}

unint64_t sub_2174DC06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28938;
  if (!qword_27CB28938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28938);
  }

  return result;
}

void *OUTLINED_FUNCTION_18_29(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

void *OUTLINED_FUNCTION_22_27(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x1D0uLL);
}

void LegacySectionedCollectionBackedPropertyProvider.__allocating_init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_44();
  OUTLINED_FUNCTION_5_48();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  OUTLINED_FUNCTION_13();
}

void LegacySectionedCollectionBackedPropertyProvider.__allocating_init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_44();
  OUTLINED_FUNCTION_5_48();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
  OUTLINED_FUNCTION_13();
}

void LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v63 = v2;
  v60 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28940, &unk_21776F700);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  memcpy(v97, v15, 0x161uLL);
  sub_217751968();
  OUTLINED_FUNCTION_43();
  (*(v20 + 32))(v19, v13);
  v21 = *(v17 + 56);
  v61 = v19;
  v22 = &v19[v21];
  *v22 = v11;
  *(v22 + 1) = v9;
  v62 = *v5;
  v23 = *(v5 + 2);
  v24 = *(v5 + 3);
  v25 = *v60;
  *(v1 + 369) = 0;
  v26 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  type metadata accessor for UnfairLock();
  v27 = swift_allocObject();
  v28 = swift_slowAlloc();
  *(v27 + 16) = v28;
  *v28 = 0;
  *(v1 + v26) = v27;
  v29 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0;
  sub_21736C814(v7, v94);
  v30 = v95;
  if (v95)
  {
    v31 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    MusicItem.identifierSet.getter(v30, v31, v93);
    __swift_destroy_boxed_opaque_existential_1(v94);
    memcpy(v65, v97, sizeof(v65));
    memcpy(v64, v93, sizeof(v64));
    MusicIdentifierSet.union(_:)();
    sub_217269F50(v93);
    sub_217269F50(v97);
    v32 = v66;
    v33 = v67;
    v34 = v68;
    v35 = v69;
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v39 = v73;
    v40 = v74;
    v41 = v75;
    v42 = v76;
    v43 = v77;
    v44 = v78;
    v45 = v79;
    v46 = v80;
    v47 = v81;
    v48 = v82;
    v49 = v83;
    v50 = v84;
    v51 = v85;
    v52 = v86;
    v53 = v87;
    v54 = v88;
    v55 = v89;
    v56 = v90;
    v57 = v91;
    v58 = v92;
  }

  else
  {
    sub_2171F0738(v94, &qword_27CB27590, &qword_21776ADF0);
    OUTLINED_FUNCTION_2_66();
    v35 = v97[4];
    v32 = v97[0];
    v33 = v97[1];
  }

  *(v1 + 16) = v32;
  *(v1 + 24) = v33;
  *(v1 + 32) = v34;
  *(v1 + 48) = v35;
  *(v1 + 56) = v36;
  *(v1 + 72) = v37;
  *(v1 + 88) = v38;
  *(v1 + 104) = v39;
  *(v1 + 120) = v40;
  *(v1 + 136) = v41;
  *(v1 + 152) = v42;
  *(v1 + 168) = v43;
  *(v1 + 184) = v44;
  *(v1 + 200) = v45;
  *(v1 + 216) = v46;
  *(v1 + 232) = v47;
  *(v1 + 248) = v48;
  *(v1 + 264) = v49;
  *(v1 + 280) = v50;
  *(v1 + 288) = v51;
  *(v1 + 296) = v52;
  *(v1 + 304) = v53;
  *(v1 + 320) = v54;
  *(v1 + 328) = v55;
  *(v1 + 336) = v56;
  *(v1 + 352) = v57;
  *(v1 + 368) = v58;
  sub_2174DE758(v61, v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state);
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_34(v29, v93);
  sub_2174DE7E8(v7, v29);
  swift_endAccess();
  v59 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue;
  *v59 = v62;
  *(v59 + 16) = v23;
  *(v59 + 24) = v24;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_source) = v25;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships) = v63;
  OUTLINED_FUNCTION_13();
}

__n128 LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v61 = v12;
  v62 = v13;
  memcpy(__dst, v14, 0x161uLL);
  v63 = *v7;
  v15 = *(v7 + 2);
  v16 = *(v7 + 3);
  v17 = *v5;
  *(v1 + 369) = 0;
  v18 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *v20 = 0;
  *(v1 + v18) = v19;
  v21 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  sub_21736C814(v9, v94);
  v22 = v95;
  if (v95)
  {
    v23 = v9;
    v24 = v11;
    v25 = v16;
    v26 = v15;
    v27 = v17;
    v28 = v3;
    v29 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v30 = v29;
    v3 = v28;
    v17 = v27;
    v15 = v26;
    v16 = v25;
    v11 = v24;
    v9 = v23;
    MusicItem.identifierSet.getter(v22, v30, __src);
    __swift_destroy_boxed_opaque_existential_1(v94);
    memcpy(v65, __dst, sizeof(v65));
    memcpy(v64, __src, sizeof(v64));
    MusicIdentifierSet.union(_:)();
    sub_217269F50(__src);
    sub_217269F50(__dst);
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v38 = v73;
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    v43 = v78;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    v47 = v82;
    v48 = v83;
    v49 = v84;
    v50 = v85;
    v51 = v86;
    v52 = v87;
    v53 = v88;
    v54 = v89;
    v55 = v90;
    v56 = v91;
    v57 = v92;
  }

  else
  {
    sub_2171F0738(v94, &qword_27CB27590, &qword_21776ADF0);
    OUTLINED_FUNCTION_2_66();
    v34 = __dst[4];
    v31 = __dst[0];
    v32 = __dst[1];
  }

  *(v1 + 16) = v31;
  *(v1 + 24) = v32;
  *(v1 + 32) = v33;
  *(v1 + 48) = v34;
  *(v1 + 56) = v35;
  *(v1 + 72) = v36;
  *(v1 + 88) = v37;
  *(v1 + 104) = v38;
  *(v1 + 120) = v39;
  *(v1 + 136) = v40;
  *(v1 + 152) = v41;
  *(v1 + 168) = v42;
  *(v1 + 184) = v43;
  *(v1 + 200) = v44;
  *(v1 + 216) = v45;
  *(v1 + 232) = v46;
  *(v1 + 248) = v47;
  *(v1 + 264) = v48;
  *(v1 + 280) = v49;
  *(v1 + 288) = v50;
  *(v1 + 296) = v51;
  *(v1 + 304) = v52;
  *(v1 + 320) = v53;
  *(v1 + 328) = v54;
  *(v1 + 336) = v55;
  *(v1 + 352) = v56;
  *(v1 + 368) = v57;
  v58 = (v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state);
  *v58 = v61;
  v58[1] = v62;
  v58[2] = v11;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_34(v21, __src);
  sub_2174DE7E8(v9, v21);
  swift_endAccess();
  v59 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue;
  *v59 = v63;
  *(v59 + 16) = v15;
  *(v59 + 24) = v16;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_source) = v17;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships) = v3;
  OUTLINED_FUNCTION_13();
  return result;
}

uint64_t sub_2174DC88C()
{
  v1 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  os_unfair_lock_assert_not_owner(*(*(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  sub_2174DC914();
  os_unfair_lock_unlock(*(v2 + 16));
}

void sub_2174DC914()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_217751968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v15 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  OUTLINED_FUNCTION_138(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state, &v90);
  sub_2174DEF5C(v1 + v15, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v52 = *(v14 + 1);
      *v3 = *v14;
      *(v3 + 16) = v52;
      *(v3 + 32) = *(v14 + 4);
      goto LABEL_15;
    }

    v17 = v11;
    v75 = v3;
    v18 = *v14;
    v19 = *(v14 + 1);
    v71 = *(v14 + 2);
    v19(v89, v18);
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v20 = sub_217753048();
    __swift_destroy_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_138(v1 + 16, v87);
    OUTLINED_FUNCTION_14_30(v88);
    OUTLINED_FUNCTION_10_35();
    sub_217269EF4(v88, v89);
    v70 = v20;
    static LegacyModel.sanitizeLegacyModelObject(for:identifierSet:)();
    memcpy(v89, v86, 0x161uLL);
    sub_217269F50(v89);
    v21 = *&v82[0];
    v22 = BYTE8(v82[0]);
    v23 = [objc_opt_self() identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_4_62();
    v69 = v23;
    sub_2174FE570();
    swift_endAccess();
    if (v22 == 1)
    {
      v82[0] = xmmword_21776F6F0;
      OUTLINED_FUNCTION_4_62();
      MusicItemDataSourceCollection.append(_:)(v82);
      swift_endAccess();
    }

    v72 = v15;
    v73 = v8;
    v74 = v17;
    v68 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue);
    v24 = dynamic_cast_existential_1_conditional(v68, v68, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
    if (v24)
    {
      v26 = v24;
      v27 = v25;
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_14_30(v82);
      v28 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
      OUTLINED_FUNCTION_138(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem, v78);
      sub_21736C814(v1 + v28, &v79);
      v29 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships);
      v31 = v27 + 16;
      v30 = *(v27 + 16);
      v84 = v26;
      v85 = v27;
      __swift_allocate_boxed_opaque_existential_0(v83);
      sub_217269EF4(v86, v76);
      swift_unknownObjectRetain();
      sub_217751DE8();
      (v30)(v82, v21, &v79, v29, v26, v27);
      sub_2171FF30C(v83, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
      if (OUTLINED_FUNCTION_16_35(v32))
      {
        v33 = OUTLINED_FUNCTION_9_36();
        v34(v33);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_13:
        v77 = 0;
        memset(v76, 0, sizeof(v76));
        OUTLINED_FUNCTION_15_34(v1 + v28, &v79);
        sub_2174DE7E8(v76, v1 + v28);
        swift_endAccess();
        v50 = v74;
        sub_21729C5E8(v31, v74);
        swift_storeEnumTagMultiPayload();
        v51 = v72;
        OUTLINED_FUNCTION_15_34(v1 + v72, v76);
        sub_2174DEFC0(v50, v1 + v51);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(v82);
        __swift_destroy_boxed_opaque_existential_1(v83);
LABEL_15:
        OUTLINED_FUNCTION_13();
        return;
      }

      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      sub_2171F0738(&v79, &qword_27CB24B68, &qword_217759430);
      OUTLINED_FUNCTION_25_32();
      sub_217752AA8();
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_22_28();
      MEMORY[0x21CEA23B0](0xD000000000000011);
      v56 = sub_217753348();
      MEMORY[0x21CEA23B0](v56);

      MEMORY[0x21CEA23B0](v30 | 0x6C, 0x80000002177AEF10, v57);
      OUTLINED_FUNCTION_169_0();
      v55 = 120;
    }

    else
    {
      OUTLINED_FUNCTION_24_27();
      sub_217752AA8();
      OUTLINED_FUNCTION_23_30();
      OUTLINED_FUNCTION_22_28();
      MEMORY[0x21CEA23B0](0xD000000000000011);
      v53 = sub_217753348();
      MEMORY[0x21CEA23B0](v53);

      MEMORY[0x21CEA23B0](v22 + 109, 0x80000002177AEE90, v54);
      OUTLINED_FUNCTION_169_0();
      v55 = 116;
    }
  }

  else
  {
    v74 = v11;
    v75 = v3;
    v72 = v15;
    v35 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28940, &unk_21776F700) + 48)];
    v37 = *v35;
    v36 = *(v35 + 1);
    (*(v5 + 32))(v7, v14, v4);
    v67 = v7;
    v69 = v36;
    v37(v89, v7);
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v38 = sub_217753048();
    __swift_destroy_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_138(v1 + 16, v87);
    OUTLINED_FUNCTION_14_30(v88);
    OUTLINED_FUNCTION_10_35();
    sub_217269EF4(v88, v89);
    v68 = v38;
    static LegacyModel.sanitizeLegacyModelObject(for:identifierSet:)();
    memcpy(v89, v86, 0x161uLL);
    sub_217269F50(v89);
    v39 = *&v82[0];
    LODWORD(v37) = BYTE8(v82[0]);
    v40 = [objc_opt_self() identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_4_62();
    v66 = v40;
    sub_2174FE570();
    swift_endAccess();
    if (v37 == 1)
    {
      v82[0] = xmmword_21776F6F0;
      OUTLINED_FUNCTION_4_62();
      MusicItemDataSourceCollection.append(_:)(v82);
      swift_endAccess();
    }

    v41 = v39;
    v70 = v5;
    v71 = v4;
    v73 = v8;
    v65 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue);
    v42 = dynamic_cast_existential_1_conditional(v65, v65, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
    if (v42)
    {
      v44 = v42;
      v31 = v43;
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_14_30(v82);
      v28 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
      OUTLINED_FUNCTION_138(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem, v78);
      sub_21736C814(v1 + v28, &v79);
      v45 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships);
      v46 = *(v31 + 16);
      v84 = v44;
      v85 = v31;
      __swift_allocate_boxed_opaque_existential_0(v83);
      sub_217269EF4(v86, v76);
      swift_unknownObjectRetain();
      sub_217751DE8();
      v46(v82, v41, &v79, v45, v44, v31);
      sub_2171FF30C(v83, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
      if (OUTLINED_FUNCTION_16_35(v47))
      {
        v48 = OUTLINED_FUNCTION_9_36();
        v49(v48);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v70 + 8))(v67, v71);
        goto LABEL_13;
      }

      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      sub_2171F0738(&v79, &qword_27CB24B68, &qword_217759430);
      OUTLINED_FUNCTION_25_32();
      sub_217752AA8();
      OUTLINED_FUNCTION_20_28();
      v61 = OUTLINED_FUNCTION_8();
      MEMORY[0x21CEA23B0](v61);
      v62 = sub_217753348();
      MEMORY[0x21CEA23B0](v62);

      MEMORY[0x21CEA23B0](0xD00000000000007DLL, 0x80000002177AEF10, v63);
      OUTLINED_FUNCTION_169_0();
      v55 = 99;
    }

    else
    {
      OUTLINED_FUNCTION_24_27();
      sub_217752AA8();
      OUTLINED_FUNCTION_23_30();
      v58 = OUTLINED_FUNCTION_8();
      MEMORY[0x21CEA23B0](v58);
      v59 = sub_217753348();
      MEMORY[0x21CEA23B0](v59);

      MEMORY[0x21CEA23B0](0xD00000000000007ELL, 0x80000002177AEE90, v60);
      OUTLINED_FUNCTION_169_0();
      v55 = 95;
    }
  }

  v64 = v55;
  sub_217752D08();
  __break(1u);
}

BOOL sub_2174DD25C()
{
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v4 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  OUTLINED_FUNCTION_138(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state, v8);
  sub_2174DEF5C(v0 + v4, v3);
  v5 = swift_getEnumCaseMultiPayload() > 1;
  sub_2174DE858(v3);
  return v5;
}

uint64_t static LegacySectionedCollectionBackedPropertyProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v23 = v2;
  v24 = v3;
  OUTLINED_FUNCTION_138(a1 + 16, v18);
  OUTLINED_FUNCTION_26_27(v19);
  OUTLINED_FUNCTION_26_27(v17);
  OUTLINED_FUNCTION_138(a2 + 16, v16);
  memcpy(__dst, (a2 + 16), 0x161uLL);
  memcpy(__src, (a2 + 16), sizeof(__src));
  sub_217269EF4(v19, v14);
  sub_217269EF4(__dst, v14);
  static MusicIdentifierSet.== infix(_:_:)();
  v7 = v6;
  v8 = v6 & 1;
  memcpy(v21, __src, 0x161uLL);
  sub_217269F50(v21);
  memcpy(v22, v17, 0x161uLL);
  sub_217269F50(v22);
  v17[0] = v8;
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = *(a2 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  sub_2174DD4D8(a1, a2, v17);
  os_unfair_lock_unlock(*(v11 + 16));

  os_unfair_lock_unlock(*(v9 + 16));

  return v17[0];
}

uint64_t sub_2174DD4D8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28968, &unk_21776F910);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  swift_beginAccess();
  sub_2174DEF5C(a1 + v15, v14);
  v16 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  swift_beginAccess();
  v17 = &v8[*(v6 + 56)];
  sub_2174DF024(v14, v8);
  sub_2174DEF5C(a2 + v16, v17);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2174DEF5C(v8, v11);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v18 = *(v11 + 1);
      v43 = *v11;
      v44 = v18;
      v45 = *(v11 + 4);
      v19 = v45;
      v20 = *(v17 + 16);
      v41[0] = *v17;
      v41[1] = v20;
      v42 = *(v17 + 32);
      v21 = *(&v18 + 1);
      __swift_project_boxed_opaque_existential_1(&v43, *(&v18 + 1));
      v22 = *(v19 + 104);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v24 = v22(v41, v23, v21, v19);
      sub_21729C644(v41);
      sub_21729C644(&v43);
      *v40 = v24 & 1;
      return sub_2174DE858(v8);
    }

    sub_21729C644(v11);
  }

  v26 = dynamic_cast_existential_1_conditional(*(a1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue), *(a1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue), &protocol descriptor for PropertyProviderBackedItem);
  if (v26)
  {
    v28 = v26;
    v29 = v27;
    v30 = dynamic_cast_existential_1_conditional(*(a2 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue), *(a2 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue), &protocol descriptor for PropertyProviderBackedItem);
    if (v30)
    {
      v32 = v30;
      v33 = v31;
      if ((*(v29 + 16))(v28, v29) & 1) != 0 && ((*(v33 + 16))(v32, v33))
      {
        sub_2174DC914();
        sub_2174DC914();
        v34 = *(&v44 + 1);
        v35 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        v36 = *(v35 + 104);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v38 = v36(v41, v37, v34, v35);
        sub_21729C644(v41);
        sub_21729C644(&v43);
        *v40 = v38 & 1;
      }
    }
  }

  return sub_2171F0738(v8, &qword_27CB28968, &unk_21776F910);
}

uint64_t sub_2174DD84C(void *a1)
{
  OUTLINED_FUNCTION_138(v1 + 16, v10);
  OUTLINED_FUNCTION_26_27(v7);
  MusicIdentifierSet.hash(into:)(a1);
  result = dynamic_cast_existential_1_conditional(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue), *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue), &protocol descriptor for PropertyProviderBackedItem);
  if (result)
  {
    result = (*(v4 + 16))();
    if (result)
    {
      sub_2174DC88C();
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 112))(a1, v5, v6);
      return sub_21729C644(v7);
    }
  }

  return result;
}

uint64_t sub_2174DD92C(uint64_t *a1, uint64_t a2)
{
  sub_2174DC88C();
  AnyPropertyProvider.subscript.getter(a1, a2);
  return sub_21729C644(v5);
}

uint64_t sub_2174DD988()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v14[3];
  OUTLINED_FUNCTION_15_1(v14);
  v3 = OUTLINED_FUNCTION_44_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_19_22(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t sub_2174DDA58(void *__src)
{
  memcpy(__dst, __src, 0x161uLL);
  sub_217269EF4(__dst, &v3);
  return sub_2174DDCFC(__src);
}

uint64_t sub_2174DDAB4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  os_unfair_lock_assert_not_owner(*(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_2174DDB4C(v1, a1);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_2174DDB4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 369))
  {
    goto LABEL_2;
  }

  if (*(a1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_source) <= 1u)
  {
    if (sub_2174DD25C())
    {
      goto LABEL_8;
    }

LABEL_2:
    swift_beginAccess();
    memcpy(__dst, (a1 + 16), 0x161uLL);
    memcpy(a2, (a1 + 16), 0x161uLL);
    return sub_217269EF4(__dst, &v9);
  }

  swift_beginAccess();
  v9 = *(a1 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28960, &qword_21776F900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_destroy_boxed_opaque_existential_1(__dst);
LABEL_8:
  sub_2174DC914();
  v5 = __dst[3];
  v6 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  (*(v6 + 96))(&v9, v5, v6);
  sub_21729C644(__dst);
  v8 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, v10);
  (*(*(v7 + 8) + 24))(v8);
  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

uint64_t sub_2174DDCFC(void *__src)
{
  memcpy(__dst, __src, 0x161uLL);
  v2 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  os_unfair_lock_assert_not_owner(*(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  sub_217269EF4(__dst, v6);

  os_unfair_lock_lock(v4);
  sub_2174DDDB0(v1, __dst);
  os_unfair_lock_unlock(*(v3 + 16));

  sub_217269F50(__dst);
  sub_217269F50(__dst);
}

uint64_t sub_2174DDDB0(uint64_t a1, const void *a2)
{
  swift_beginAccess();
  memcpy(__dst, (a1 + 16), 0x161uLL);
  memcpy((a1 + 16), a2, 0x161uLL);
  sub_217269EF4(a2, v5);
  result = sub_217269F50(__dst);
  *(a1 + 369) = 1;
  return result;
}

void (*sub_2174DDE44(void *a1))(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v3 = __swift_coroFrameAllocStub(0x5A8uLL);
  *a1 = v3;
  v3[180] = v1;
  sub_2174DDAB4(v3);
  return sub_2174DDEA8;
}

void sub_2174DDEA8(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a1;
  if (a2)
  {
    v9 = OUTLINED_FUNCTION_13_32((v8 + 720));
    OUTLINED_FUNCTION_11_39(v9, v10, v11, v12, v13, v14, v15, v16, v17);
    sub_217269EF4(v8 + 720, v8 + 1080);
    sub_2174DDCFC(__src);
    OUTLINED_FUNCTION_13_32((v8 + 360));
    sub_217269F50(v8 + 360);
  }

  else
  {
    OUTLINED_FUNCTION_11_39(a1, a2, a3, a4, a5, a6, a7, a8, v17);
    sub_2174DDCFC(__src);
  }

  free(v8);
}

uint64_t sub_2174DDF38()
{
  sub_2174DC88C();
  v0 = v9;
  v1 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v1 + 96))(v5, v0, v1);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(*(v2 + 8) + 48))(v3);
  sub_21729C644(v8);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2174DDFE8()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  OUTLINED_FUNCTION_15_1(v6);
  v2 = OUTLINED_FUNCTION_44_1();
  v4 = v3(v2);
  sub_21729C644(v7);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_2174DE07C()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v14[3];
  OUTLINED_FUNCTION_15_1(v14);
  v3 = OUTLINED_FUNCTION_44_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_19_22(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t sub_2174DE100()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v14[3];
  OUTLINED_FUNCTION_15_1(v14);
  v3 = OUTLINED_FUNCTION_44_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_19_22(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t sub_2174DE184()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v14[3];
  OUTLINED_FUNCTION_15_1(v14);
  v3 = OUTLINED_FUNCTION_44_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_19_22(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t sub_2174DE208()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v14[3];
  OUTLINED_FUNCTION_15_1(v14);
  v3 = OUTLINED_FUNCTION_44_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_19_22(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t sub_2174DE28C()
{
  sub_2174DC88C();
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 96))(v0, v1);
  return sub_21729C644(v3);
}

uint64_t LegacySectionedCollectionBackedPropertyProvider.deinit()
{
  OUTLINED_FUNCTION_26_27(v2);
  sub_217269F50(v2);
  sub_2174DE858(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state);

  sub_2171F0738(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem, &qword_27CB27590, &qword_21776ADF0);

  return v0;
}

uint64_t LegacySectionedCollectionBackedPropertyProvider.__deallocating_deinit()
{
  LegacySectionedCollectionBackedPropertyProvider.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2174DE3F4()
{
  sub_2177531E8();
  sub_2174DD84C(v1);
  return sub_217753238();
}

uint64_t sub_2174DE4A0(uint64_t a1)
{
  sub_2177531E8();
  sub_2174DD84C(v2);
  return sub_217753238();
}

void (*sub_2174DE574(void *a1))(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v3 = __swift_coroFrameAllocStub(0x5A8uLL);
  *a1 = v3;
  v3[180] = *v1;
  sub_2174DDAB4(v3);
  return sub_2174DDEA8;
}

uint64_t LegacySectionedCollectionBackedPropertyProvider.Source.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_2174DE758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28940, &unk_21776F700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DE7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27590, &qword_21776ADF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DE858(uint64_t a1)
{
  v2 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2174DE8B8()
{
  result = qword_27CB28948;
  if (!qword_27CB28948)
  {
    type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28948);
  }

  return result;
}

unint64_t sub_2174DE934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28950;
  if (!qword_27CB28950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28950);
  }

  return result;
}

uint64_t sub_2174DE990(uint64_t a1)
{
  result = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(319);
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

_BYTE *storeEnumTagSinglePayload for LegacySectionedCollectionBackedPropertyProvider.Source(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_2174DEDF0(uint64_t a1)
{
  sub_2174DEE6C(319);
  if (v1 <= 0x3F)
  {
    sub_2174DEEE8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2174DEE6C(uint64_t a1)
{
  if (!qword_280BE8360)
  {
    sub_217751968();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28958, &unk_21776F8F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280BE8360);
    }
  }
}

void sub_2174DEEE8(uint64_t a1)
{
  if (!qword_280BE7520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28958, &unk_21776F8F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280BE7520);
    }
  }
}

uint64_t sub_2174DEF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DEFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DF024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_11_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0x161uLL);
}

void *OUTLINED_FUNCTION_14_30(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_15_34(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_35(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_20_28()
{
  v1 = *(v0 + 536);
  *(v0 + 528) = *(v0 + 528);
  *(v0 + 536) = v1;
}

void *OUTLINED_FUNCTION_26_27(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x161uLL);
}

void PlaylistEntryPropertyProvider.init(item:position:identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:extendedStorage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_12();
  v52 = v24;
  v53 = v25;
  v51 = v26;
  v28 = v27;
  v56 = v29;
  v54 = v30;
  v55 = v31;
  v33 = v32;
  memcpy(__dst, v34, sizeof(__dst));
  v49 = v28[1];
  v50 = *v28;
  v35 = *(v28 + 16);
  sub_2172A497C(__src);
  memcpy(v33, __src, 0x221uLL);
  *(v33 + 552) = 0;
  *(v33 + 560) = 1;
  v36 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  *(v33 + 568) = 0u;
  *(v33 + 584) = 0u;
  v37 = v36[8];
  sub_2177517D8();
  OUTLINED_FUNCTION_15_10(v33 + v37);
  OUTLINED_FUNCTION_15_10(v33 + v36[9]);
  v38 = v33 + v36[10];
  *(v38 + 48) = 0;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *v38 = 0u;
  *(v38 + 56) = -1;
  v39 = v33 + v36[11];
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 0;
  v40 = v33 + v36[12];
  *(v40 + 112) = 0;
  *(v40 + 80) = 0u;
  *(v40 + 96) = 0u;
  *(v40 + 48) = 0u;
  *(v40 + 64) = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *v40 = 0u;
  v41 = (v33 + v36[14]);
  *v41 = 0;
  v41[1] = 0;
  OUTLINED_FUNCTION_15_10(v33 + v36[15]);
  v42 = (v33 + v36[16]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v33 + v36[17];
  *(v43 + 32) = 0;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  if (qword_280BE3168 != -1)
  {
    swift_once();
  }

  v44 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v48 = sub_217752D28();

    v44 = v48;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v45 = v33 + v36[13];
  *(v33 + v36[18]) = v44;
  v46 = (v33 + v36[21]);
  memcpy((v33 + v36[19]), __dst, 0x161uLL);
  v47 = v33 + v36[20];
  *v47 = v50;
  *(v47 + 8) = v49;
  *(v47 + 16) = v35;
  *v46 = v51;
  v46[1] = v52;
  *(v33 + v36[22]) = v53;
  *(v33 + v36[23]) = a21;
  *(v33 + v36[24]) = a22;
  *(v33 + v36[25]) = a23;
  sub_21733BBDC(v54, v38, &qword_27CB27D20, &qword_217758B80);
  *v45 = v55;
  *(v45 + 8) = v56 & 1;
  sub_21733BBDC(a24, v43, &qword_27CB24BA8, &unk_217772FF0);
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for PlaylistEntryPropertyProvider(uint64_t a1)
{
  result = qword_280BE3158;
  if (!qword_280BE3158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaylistEntryPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *PlaylistEntryPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t PlaylistEntryPropertyProvider.duration.setter(uint64_t result, char a2)
{
  *(v2 + 552) = result;
  *(v2 + 560) = a2 & 1;
  return result;
}

uint64_t PlaylistEntryPropertyProvider.itemType.getter()
{
  v0 = OUTLINED_FUNCTION_45_20();
  OUTLINED_FUNCTION_160_0(*(v0 + 44));

  return sub_217751DE8();
}

void PlaylistEntryPropertyProvider.itemType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t PlaylistEntryPropertyProvider.title.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void PlaylistEntryPropertyProvider.title.setter()
{
  OUTLINED_FUNCTION_143();
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  v1[1] = v0;
}

void PlaylistEntryPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47_17();
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28970, &qword_21776F930);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AEFC0);
    v74[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_55_12();
    v70 = 62;
    goto LABEL_97;
  }

  v17 = v16;
  v18 = qword_280BE66C8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_9_37(&qword_280BE66C8);
  }

  if (static AnyMusicProperty.== infix(_:_:)(qword_280C02048, v17))
  {
    memcpy(v74, v2, 0x221uLL);
    memcpy(v75, v2, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v75) != 1)
    {
      v15 = swift_allocObject();
      memcpy(v73, v74, 0x221uLL);
      sub_217284028(v73, &v72);

      memcpy((v15 + 16), v75, 0x221uLL);
      v19 = &type metadata for Artwork;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v20 = qword_280BE66C0;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_8_41(&qword_280BE66C0);
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02040, v17);
  OUTLINED_FUNCTION_61_11();
  if (v20)
  {
    if (*(v2 + 560))
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v22 = *(v2 + 552);
      v21 = MEMORY[0x277D839F8];
    }

    *v6 = v22;
LABEL_23:
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v21;
    goto LABEL_51;
  }

  v23 = qword_280BE66F8;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_6_45(&qword_280BE66F8);
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02060, v17);
  OUTLINED_FUNCTION_61_11();
  if (v23)
  {
    v24 = *(v2 + 576);
    if (v24)
    {
      v25 = *(v2 + 568);
LABEL_29:
      sub_217751DE8();
      v27 = &type metadata for MusicItemID;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v26 = qword_280BE6720;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_21_28(&qword_280BE6720);
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02070, v17);
  OUTLINED_FUNCTION_61_11();
  if (v26)
  {
    v24 = *(v2 + 592);
    if (v24)
    {
      v25 = *(v2 + 584);
      goto LABEL_29;
    }

LABEL_30:
    v27 = 0;
    v25 = 0;
    goto LABEL_31;
  }

  v28 = qword_280BE6738;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_20_29(&qword_280BE6738);
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02080, v17);
  OUTLINED_FUNCTION_61_11();
  if (v28)
  {
    v29 = type metadata accessor for PlaylistEntryPropertyProvider(0);
    sub_21726A630(v2 + *(v29 + 32), v14, &qword_27CB241C0, &qword_217759480);
    v30 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v14);
    if (!v31)
    {
LABEL_80:
      *(&v75[1] + 1) = v30;
      __swift_allocate_boxed_opaque_existential_0(v75);
      OUTLINED_FUNCTION_58();
      (*(v65 + 32))();

      goto LABEL_50;
    }

    v32 = v14;
LABEL_44:
    sub_2171F0738(v32, &qword_27CB241C0, &qword_217759480);
    memset(v75, 0, 32);
LABEL_50:
    v41 = v75[1];
    *v6 = v75[0];
    *(v6 + 1) = v41;
    goto LABEL_51;
  }

  v33 = qword_280BE6700;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_19_23(&qword_280BE6700);
  }

  v34 = static AnyMusicProperty.== infix(_:_:)(qword_280C02068, v17);

  if (v34)
  {
    v35 = type metadata accessor for PlaylistEntryPropertyProvider(0);
    sub_21726A630(v2 + *(v35 + 36), v1, &qword_27CB241C0, &qword_217759480);
    v30 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v1);
    if (!v31)
    {
      goto LABEL_80;
    }

    v32 = v1;
    goto LABEL_44;
  }

  v36 = qword_280BE66D8;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_2_67(&qword_280BE66D8);
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280BE66E0, v17);
  OUTLINED_FUNCTION_43_13();
  if (v36)
  {
    v37 = type metadata accessor for PlaylistEntryPropertyProvider(0);
    sub_21726A630(v2 + *(v37 + 40), v75, &qword_27CB27D20, &qword_217758B80);
    if (BYTE8(v75[3]) != 255)
    {
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_49_19(v38);
      *(v40 + 48) = *(v39 + 32);
      *(v40 + 57) = *(v39 + 41);

      v19 = &type metadata for Playlist.Entry.Item;
      goto LABEL_14;
    }

    sub_2171F0738(v75, &qword_27CB27D20, &qword_217758B80);
    goto LABEL_7;
  }

  v42 = qword_280BE66B8;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_17_27(&qword_280BE66B8);
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02038, v17);
  OUTLINED_FUNCTION_43_13();
  if ((v42 & 1) == 0)
  {
    v49 = qword_280BE6730;

    if (v49 != -1)
    {
      OUTLINED_FUNCTION_16_36(&qword_280BE6730);
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02078, v17);
    OUTLINED_FUNCTION_43_13();
    if (v49)
    {
      v50 = (v2 + *(type metadata accessor for PlaylistEntryPropertyProvider(0) + 48));
      v52 = *v50;
      v51 = v50[1];
      memcpy(v73, v50 + 2, 0x68uLL);
      if (v51)
      {
        v15 = swift_allocObject();
        *&v75[0] = v52;
        *(&v75[0] + 1) = v51;
        memcpy(&v75[1], v50 + 2, 0x68uLL);
        sub_2172DF5A4(v75, v74);

        *(v15 + 16) = v52;
        *(v15 + 24) = v51;
        memcpy((v15 + 32), v73, 0x68uLL);
        v19 = &type metadata for PlayParameters;
        goto LABEL_14;
      }

LABEL_6:

LABEL_7:
      v19 = 0;
      v15 = 0;
LABEL_14:
      *v6 = v15;
      v6[1] = 0;
LABEL_15:
      v6[2] = 0;
      v6[3] = v19;
      goto LABEL_51;
    }

    v53 = qword_280BE66A8;

    if (v53 != -1)
    {
      OUTLINED_FUNCTION_15_35(&qword_280BE66A8);
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02030, v17);
    OUTLINED_FUNCTION_43_13();
    if (v53)
    {
      v54 = 0;
      v21 = 0;
      v55 = v2 + *(type metadata accessor for PlaylistEntryPropertyProvider(0) + 52);
      if ((*(v55 + 8) & 1) == 0)
      {
        v54 = *v55;
        v21 = MEMORY[0x277D83B88];
      }

      *v6 = v54;
      goto LABEL_23;
    }

    v56 = qword_280BE66F0;

    if (v56 != -1)
    {
      OUTLINED_FUNCTION_14_31(&qword_280BE66F0);
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02058, v17);
    OUTLINED_FUNCTION_43_13();
    if (v56)
    {
      v57 = (v2 + *(type metadata accessor for PlaylistEntryPropertyProvider(0) + 56));
      v58 = *(v57 + 1);
      if (v58)
      {
        v59 = *v57;
        swift_unknownObjectRetain();

        v19 = &type metadata for LegacyModelObjectWrapper;
      }

      else
      {

        v19 = 0;
        v59 = 0;
      }

      *v6 = v59;
      v6[1] = v58;
      goto LABEL_15;
    }

    v60 = qword_280BE6748;

    if (v60 != -1)
    {
      OUTLINED_FUNCTION_13_33(&qword_280BE6748);
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02088, v17);
    OUTLINED_FUNCTION_43_13();
    if ((v60 & 1) == 0)
    {
      v62 = qword_280BE66D0;

      if (v62 != -1)
      {
        OUTLINED_FUNCTION_12_28(&qword_280BE66D0);
      }

      v63 = static AnyMusicProperty.== infix(_:_:)(qword_280C02050, v17);

      if ((v63 & 1) == 0)
      {
        v66 = qword_280BE6710;

        if (v66 != -1)
        {
          OUTLINED_FUNCTION_1_60(&qword_280BE6710);
        }

        v15 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6718, v17);

        if ((v15 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_52_17();
            sub_217752AA8();
            OUTLINED_FUNCTION_49_16();
            MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
            v74[0] = v4;
            type metadata accessor for AnyMusicProperty();
            sub_217752C78();
            MEMORY[0x21CEA23B0](46, 0xE100000000000000);
            OUTLINED_FUNCTION_55_12();
            v70 = 97;
LABEL_97:
            v71 = v70;
            OUTLINED_FUNCTION_7_24("Fatal error");
            __break(1u);
          }
        }

        v67 = type metadata accessor for PlaylistEntryPropertyProvider(0);
        sub_21726A630(v2 + *(v67 + 68), v75, &qword_27CB24BA8, &unk_217772FF0);
        if (*(&v75[1] + 1))
        {
          v68 = swift_allocObject();
          OUTLINED_FUNCTION_49_19(v68);
          *(v69 + 48) = *&v75[2];

          v19 = &type metadata for AnyPropertyProviderExtendedStorage;
        }

        else
        {

          sub_2171F0738(v75, &qword_27CB24BA8, &unk_217772FF0);
          v15 = 0;
          v19 = 0;
        }

        goto LABEL_14;
      }

      v64 = (v2 + *(type metadata accessor for PlaylistEntryPropertyProvider(0) + 64));
      v24 = v64[1];
      if (v24)
      {
        v25 = *v64;
        sub_217751DE8();
        v27 = MEMORY[0x277D837D0];
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

LABEL_31:

      *v6 = v25;
      v6[1] = v24;
      v6[2] = 0;
      v6[3] = v27;
      goto LABEL_51;
    }

    v61 = type metadata accessor for PlaylistEntryPropertyProvider(0);
    sub_21726A630(v2 + *(v61 + 60), v10, &qword_27CB241C0, &qword_217759480);
    v30 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v10);
    if (!v31)
    {
      goto LABEL_80;
    }

    v32 = v10;
    goto LABEL_44;
  }

  v43 = v2 + *(type metadata accessor for PlaylistEntryPropertyProvider(0) + 44);
  v44 = *(v43 + 8);
  if (v44)
  {
    v45 = *(v43 + 16);
    v46 = *v43;
    sub_217751DE8();

    v47 = v45 & 1;
    v48 = &type metadata for ResourceType;
  }

  else
  {

    v47 = 0;
    v48 = 0;
    v46 = 0;
  }

  *v6 = v46;
  v6[1] = v44;
  v6[2] = v47;
  v6[3] = v48;
LABEL_51:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174E0438(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_21726A630(a1, &v4, &qword_27CB2AD40, &qword_2177583F0);

  return PlaylistEntryPropertyProvider.subscript.setter();
}

uint64_t PlaylistEntryPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28970, &qword_21776F930);
  OUTLINED_FUNCTION_93();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = qword_280BE66D8;
    swift_retain_n();
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_2_67(&qword_280BE66D8);
    }

    v4 = static AnyMusicProperty.== infix(_:_:)(qword_280BE66E0, v2);

    if (v4)
    {
      swift_getKeyPath("(o=e");
      sub_217349FE4();
LABEL_10:

      return sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
    }

    v5 = qword_280BE6710;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_1_60(&qword_280BE6710);
    }

    v6 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6718, v2);

    if (v6)
    {
      swift_getKeyPath("Ho=e");
      sub_21734A07C();
      goto LABEL_10;
    }

    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_17_1();
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AEFC0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_17_1();
  }

  result = OUTLINED_FUNCTION_7_24("Fatal error");
  __break(1u);
  return result;
}

void (*PlaylistEntryPropertyProvider.subscript.modify())(void **a1, char a2)
{
  OUTLINED_FUNCTION_143();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  PlaylistEntryPropertyProvider.subscript.getter();
  return sub_2174E076C;
}

void sub_2174E076C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    PlaylistEntryPropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    PlaylistEntryPropertyProvider.subscript.setter();
  }

  free(v2);
}

uint64_t sub_2174E080C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21776F920;
  if (qword_280BE66C8 != -1)
  {
    OUTLINED_FUNCTION_9_37(&qword_280BE66C8);
  }

  *(v0 + 32) = qword_280C02048;
  v1 = qword_280BE66F8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_6_45(&qword_280BE66F8);
  }

  *(v0 + 40) = qword_280C02060;
  v2 = qword_280BE6720;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_21_28(&qword_280BE6720);
  }

  *(v0 + 48) = qword_280C02070;
  v3 = qword_280BE66C0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_8_41(&qword_280BE66C0);
  }

  *(v0 + 56) = qword_280C02040;
  v4 = qword_280BE6738;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_20_29(&qword_280BE6738);
  }

  *(v0 + 64) = qword_280C02080;
  v5 = qword_280BE6700;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_19_23(&qword_280BE6700);
  }

  *(v0 + 72) = qword_280C02068;
  v6 = qword_280BE66D8;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_2_67(&qword_280BE66D8);
  }

  *(v0 + 80) = qword_280BE66E0;
  v7 = qword_280BE66B8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_17_27(&qword_280BE66B8);
  }

  *(v0 + 88) = qword_280C02038;
  v8 = qword_280BE6730;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_16_36(&qword_280BE6730);
  }

  *(v0 + 96) = qword_280C02078;
  v9 = qword_280BE66A8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_15_35(&qword_280BE66A8);
  }

  *(v0 + 104) = qword_280C02030;
  v10 = qword_280BE66F0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_14_31(&qword_280BE66F0);
  }

  *(v0 + 112) = qword_280C02058;
  v11 = qword_280BE6748;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_13_33(&qword_280BE6748);
  }

  *(v0 + 120) = qword_280C02088;
  v12 = qword_280BE66D0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_28(&qword_280BE66D0);
  }

  *(v0 + 128) = qword_280C02050;
  v13 = qword_280BE6710;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_1_60(&qword_280BE6710);
  }

  *(v0 + 136) = qword_280BE6718;
  qword_280C01FB0 = v0;
}

uint64_t PlaylistEntryPropertyProvider.knownProperties.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);

  return sub_217751DE8();
}

void PlaylistEntryPropertyProvider.merge<A>(_:with:)(void *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279A8, &qword_21776B560);
  if (swift_dynamicCastClass())
  {

    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AF030);
    sub_217752C78();
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AEFF0);
    type metadata accessor for PartialMusicAsyncProperty(0, *(v1 + 216), v2, v3);
    sub_217753018();
  }

  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_7_24("Fatal error");
  __break(1u);
}

uint64_t PlaylistEntryPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_45_20() + 76);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *PlaylistEntryPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_31_22() + 76);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t PlaylistEntryPropertyProvider.type.getter()
{
  v0 = OUTLINED_FUNCTION_45_20();
  OUTLINED_FUNCTION_160_0(*(v0 + 80));

  return sub_217751DE8();
}

void PlaylistEntryPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t PlaylistEntryPropertyProvider.href.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void PlaylistEntryPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_143();
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  v1[1] = v0;
}

uint64_t PlaylistEntryPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);

  return sub_217751DE8();
}

void static PlaylistEntryPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v4 = v3;
  v6 = v5;
  sub_2177517D8();
  OUTLINED_FUNCTION_41();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v242 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_6_1();
  v240 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v236 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v236 - v18;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v241 = (v21 - v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47_17();
  MEMORY[0x28223BE20](v24);
  v26 = (&v236 - v25);
  v27 = OUTLINED_FUNCTION_36_20();
  memcpy(v27, v6, 0x221uLL);
  v28 = OUTLINED_FUNCTION_37_19();
  memcpy(v28, v4, 0x221uLL);
  v29 = OUTLINED_FUNCTION_152();
  memcpy(v29, v6, 0x221uLL);
  memcpy(v257, v4, sizeof(v257));
  memcpy(v258, v6, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v258) == 1)
  {
    memcpy(v250, v257, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v250) == 1)
    {
      v238 = v8;
      v239 = v0;
      OUTLINED_FUNCTION_4_63();
      memcpy(v30, v31, 0x221uLL);
      OUTLINED_FUNCTION_36_20();
      OUTLINED_FUNCTION_22_29();
      sub_21726A630(v32, v33, v34, &unk_21775E9A0);
      OUTLINED_FUNCTION_37_19();
      OUTLINED_FUNCTION_22_29();
      sub_21726A630(v35, v36, v37, &unk_21775E9A0);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v38, v39, v40);
      goto LABEL_11;
    }

    v49 = OUTLINED_FUNCTION_36_20();
    OUTLINED_FUNCTION_157(v49, v251);
    v50 = OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_157(v50, v251);
LABEL_7:
    OUTLINED_FUNCTION_4_63();
    memcpy(v51, v52, 0x449uLL);
    v53 = &unk_27CB25C18;
    v54 = &unk_21775ECE0;
    v55 = v250;
LABEL_8:
    sub_2171F0738(v55, v53, v54);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_4_63();
  memcpy(v41, v42, 0x221uLL);
  OUTLINED_FUNCTION_4_63();
  memcpy(v43, v44, 0x221uLL);
  memcpy(v250, v257, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v250) == 1)
  {
    OUTLINED_FUNCTION_4_63();
    memcpy(v45, v46, 0x221uLL);
    v47 = OUTLINED_FUNCTION_36_20();
    OUTLINED_FUNCTION_157(v47, v245);
    v48 = OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_157(v48, v245);
    OUTLINED_FUNCTION_157(v251, v245);
    sub_217284084(v246);
    goto LABEL_7;
  }

  v238 = v8;
  v239 = v0;
  memcpy(v246, v257, 0x221uLL);
  v56 = OUTLINED_FUNCTION_36_20();
  OUTLINED_FUNCTION_195_3(v56, v245);
  v57 = OUTLINED_FUNCTION_37_19();
  OUTLINED_FUNCTION_195_3(v57, v245);
  OUTLINED_FUNCTION_195_3(v251, v245);
  v58 = static Artwork.== infix(_:_:)(v249, v246);
  memcpy(v244, v246, 0x221uLL);
  sub_217284084(v244);
  memcpy(v245, v249, 0x221uLL);
  sub_217284084(v245);
  OUTLINED_FUNCTION_4_63();
  memcpy(v59, v60, 0x221uLL);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v61, v62, v63);
  if ((v58 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v64 = *(v4 + 560);
  if (*(v6 + 560))
  {
    if (!*(v4 + 560))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*(v6 + 552) != *(v4 + 552))
    {
      v64 = 1;
    }

    if (v64)
    {
      goto LABEL_9;
    }
  }

  v65 = *(v6 + 576);
  v66 = *(v4 + 576);
  if (v65)
  {
    if (!v66)
    {
      goto LABEL_9;
    }

    v67 = *(v6 + 568) == *(v4 + 568) && v65 == v66;
    if (!v67 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v66)
  {
    goto LABEL_9;
  }

  v68 = *(v6 + 592);
  v69 = *(v4 + 592);
  if (v68)
  {
    if (!v69)
    {
      goto LABEL_9;
    }

    v70 = *(v6 + 584) == *(v4 + 584) && v68 == v69;
    if (!v70 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v69)
  {
    goto LABEL_9;
  }

  v236 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  v71 = v236[8];
  v72 = *(v243 + 48);
  sub_21726A630(v6 + v71, v26, &qword_27CB241C0, &qword_217759480);
  v237 = v72;
  sub_21726A630(v4 + v71, v26 + v72, &qword_27CB241C0, &qword_217759480);
  v73 = v239;
  OUTLINED_FUNCTION_133(v26, 1, v239);
  if (v67)
  {
    OUTLINED_FUNCTION_73(v26 + v237);
    if (v67)
    {
      sub_2171F0738(v26, &qword_27CB241C0, &qword_217759480);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  sub_21726A630(v26, v19, &qword_27CB241C0, &qword_217759480);
  v74 = v237;
  OUTLINED_FUNCTION_73(v26 + v237);
  if (v75)
  {
    (*(v238 + 8))(v19, v73);
LABEL_43:
    v53 = &qword_27CB25C10;
    v54 = &unk_217765A50;
    v55 = v26;
    goto LABEL_8;
  }

  v76 = v238;
  (*(v238 + 32))(v242, v26 + v74, v73);
  OUTLINED_FUNCTION_0_62();
  sub_2174E2DF8(v77, v78, MEMORY[0x277CC9598]);
  OUTLINED_FUNCTION_91();
  LODWORD(v237) = sub_217751F08();
  v79 = *(v76 + 8);
  v79(v242, v73);
  v80 = OUTLINED_FUNCTION_91();
  (v79)(v80);
  sub_2171F0738(v26, &qword_27CB241C0, &qword_217759480);
  if ((v237 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_45:
  v239 = v73;
  v81 = v236[9];
  v82 = *(v243 + 48);
  OUTLINED_FUNCTION_195_3(v6 + v81, v1);
  v83 = v239;
  sub_21726A630(v4 + v81, v1 + v82, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v1, 1, v83);
  if (v67)
  {
    OUTLINED_FUNCTION_133(v1 + v82, 1, v83);
    if (v67)
    {
      sub_2171F0738(v1, &qword_27CB241C0, &qword_217759480);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  sub_21726A630(v1, v16, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v1 + v82, 1, v83);
  if (v84)
  {
    (*(v238 + 8))(v16, v83);
LABEL_53:
    v53 = &qword_27CB25C10;
    v54 = &unk_217765A50;
    v55 = v1;
    goto LABEL_8;
  }

  v85 = v238;
  (*(v238 + 32))(v242, v1 + v82, v83);
  OUTLINED_FUNCTION_0_62();
  sub_2174E2DF8(v86, v87, MEMORY[0x277CC9598]);
  v88 = sub_217751F08();
  v89 = *(v85 + 8);
  v90 = OUTLINED_FUNCTION_91();
  v89(v90);
  (v89)(v16, v83);
  sub_2171F0738(v1, &qword_27CB241C0, &qword_217759480);
  if ((v88 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_55:
  v91 = v236[10];
  OUTLINED_FUNCTION_4_63();
  OUTLINED_FUNCTION_195_3(v92, v93);
  OUTLINED_FUNCTION_195_3(v4 + v91, &v254[48]);
  if (v254[40] == 255)
  {
    if (v254[104] == 255)
    {
      v101 = OUTLINED_FUNCTION_152();
      sub_2171F0738(v101, v102, v103);
      goto LABEL_61;
    }

LABEL_70:
    v55 = OUTLINED_FUNCTION_152();
    goto LABEL_8;
  }

  v94 = OUTLINED_FUNCTION_152();
  sub_21726A630(v94, v250, v95, v96);
  if (v254[104] == 255)
  {
    sub_21729C7F8(v250);
    goto LABEL_70;
  }

  v251[0] = *&v254[48];
  v251[1] = *&v254[64];
  v251[2] = *&v254[80];
  *(&v251[2] + 9) = *&v254[89];
  v97 = static Playlist.Entry.Item.== infix(_:_:)(v250, v251);
  sub_21729C7F8(v251);
  sub_21729C7F8(v250);
  v98 = OUTLINED_FUNCTION_152();
  sub_2171F0738(v98, v99, v100);
  if ((v97 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_61:
  OUTLINED_FUNCTION_24_3();
  if (v106)
  {
    if (!v104)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_59_0(v105);
    v109 = v67 && v107 == v108;
    if (!v109 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v104)
    {
      goto LABEL_9;
    }
  }

  v110 = v6 + v236[12];
  memcpy(v247, v110, sizeof(v247));
  v111 = v4 + v236[12];
  memcpy(v248, v111, sizeof(v248));
  v112 = v247[0];
  v113 = v247[1];
  memcpy(v245, (v110 + 16), 0x68uLL);
  v114 = v248[0];
  v115 = v248[1];
  memcpy(v244, (v111 + 16), 0x68uLL);
  if (!v247[1])
  {
    if (!v248[1])
    {
      v252 = v247[0];
      v253 = 0;
      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_195_3(v247, v250);
      OUTLINED_FUNCTION_195_3(v248, v250);
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v144, v145, v146);
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_157(v129, v130);
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_157(v131, v132);
    goto LABEL_80;
  }

  v252 = v247[0];
  v253 = v247[1];
  OUTLINED_FUNCTION_42_17();
  OUTLINED_FUNCTION_4_63();
  memcpy(v116, v117, 0x78uLL);
  if (!v115)
  {
    OUTLINED_FUNCTION_4_63();
    memcpy(v133, v134, 0x78uLL);
    OUTLINED_FUNCTION_22_29();
    sub_21726A630(v135, v136, v137, &unk_21775D620);
    OUTLINED_FUNCTION_22_29();
    sub_21726A630(v138, v139, v140, &unk_21775D620);
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_22_29();
    sub_21726A630(v141, v142, v143, &unk_21775D620);
    sub_2172848C0(v251);
LABEL_80:
    v252 = v112;
    v253 = v113;
    memcpy(v254, v245, 0x68uLL);
    *&v254[104] = v114;
    v255 = v115;
    memcpy(v256, v244, sizeof(v256));
    goto LABEL_70;
  }

  memcpy(&v251[1], (v111 + 16), 0x68uLL);
  *&v251[0] = v114;
  *(&v251[0] + 1) = v115;
  OUTLINED_FUNCTION_22_29();
  sub_21726A630(v118, v119, v120, &unk_21775D620);
  OUTLINED_FUNCTION_22_29();
  sub_21726A630(v121, v122, v123, &unk_21775D620);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_22_29();
  sub_21726A630(v124, v125, v126, &unk_21775D620);
  static PlayParameters.== infix(_:_:)(v250, v251);
  v128 = v127;
  memcpy(v246, v251, 0x78uLL);
  sub_2172848C0(v246);
  memcpy(v249, v250, 0x78uLL);
  sub_2172848C0(v249);
  *&v251[0] = v112;
  *(&v251[0] + 1) = v113;
  memcpy(&v251[1], v245, 0x68uLL);
  sub_2171F0738(v251, &qword_27CB244D0, &unk_21775D620);
  if ((v128 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_82:
  v147 = v236[13];
  v148 = (v6 + v147);
  v149 = *(v6 + v147 + 8);
  v150 = (v4 + v147);
  v151 = *(v4 + v147 + 8);
  if (v149)
  {
    if (!v151)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*v148 != *v150)
    {
      LOBYTE(v151) = 1;
    }

    if (v151)
    {
      goto LABEL_9;
    }
  }

  v152 = v236[14];
  v153 = *(v6 + v152 + 8);
  v154 = *(v4 + v152 + 8);
  if (!v153)
  {
    if (!v154)
    {
      goto LABEL_93;
    }

LABEL_98:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (!v154)
  {
    goto LABEL_98;
  }

  *&v254[8] = swift_getObjectType();
  v252 = v153;
  v155 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v156 = OUTLINED_FUNCTION_152();
  v157 = sub_2174E2D44(v156);
  *&v254[8] = swift_getObjectType();
  v252 = v154;
  v158 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v159 = OUTLINED_FUNCTION_152();
  v160 = sub_2174E2D44(v159);
  v161 = [v157 isEqual_];
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();

  if ((v161 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_93:
  v162 = v236[15];
  v163 = *(v243 + 48);
  v164 = v241;
  OUTLINED_FUNCTION_195_3(v6 + v162, v241);
  OUTLINED_FUNCTION_195_3(v4 + v162, v164 + v163);
  OUTLINED_FUNCTION_133(v164, 1, v239);
  if (v67)
  {
    OUTLINED_FUNCTION_133(v241 + v163, 1, v239);
    if (v67)
    {
      sub_2171F0738(v241, &qword_27CB241C0, &qword_217759480);
      goto LABEL_104;
    }

LABEL_102:
    v53 = &qword_27CB25C10;
    v54 = &unk_217765A50;
    v55 = v241;
    goto LABEL_8;
  }

  v165 = v241;
  sub_21726A630(v241, v240, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v165 + v163, 1, v239);
  if (v166)
  {
    (*(v238 + 8))(v240, v239);
    goto LABEL_102;
  }

  v167 = v238;
  v169 = v241;
  v168 = v242;
  v170 = v241 + v163;
  v171 = v239;
  (*(v238 + 32))(v242, v170, v239);
  OUTLINED_FUNCTION_0_62();
  sub_2174E2DF8(v172, v173, MEMORY[0x277CC9598]);
  v174 = v240;
  v175 = sub_217751F08();
  v176 = *(v167 + 8);
  v176(v168, v171);
  v176(v174, v171);
  sub_2171F0738(v169, &qword_27CB241C0, &qword_217759480);
  if ((v175 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_104:
  OUTLINED_FUNCTION_24_3();
  if (v179)
  {
    if (!v177)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_59_0(v178);
    v182 = v67 && v180 == v181;
    if (!v182 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v177)
  {
    goto LABEL_9;
  }

  v183 = v236[17];
  OUTLINED_FUNCTION_4_63();
  OUTLINED_FUNCTION_195_3(v184, v185);
  OUTLINED_FUNCTION_195_3(v4 + v183, &v254[24]);
  if (!*&v254[8])
  {
    if (!*&v254[48])
    {
      v197 = OUTLINED_FUNCTION_152();
      sub_2171F0738(v197, v198, v199);
      goto LABEL_119;
    }

    goto LABEL_70;
  }

  v186 = OUTLINED_FUNCTION_152();
  sub_21726A630(v186, v250, v187, v188);
  if (!*&v254[48])
  {
    sub_217350E74(v250);
    goto LABEL_70;
  }

  v251[0] = *&v254[24];
  v251[1] = *&v254[40];
  *&v251[2] = *&v254[56];
  v189 = v250[3];
  v190 = v250[4];
  __swift_project_boxed_opaque_existential_1(v250, v250[3]);
  v191 = *(v190 + 80);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
  v193 = v191(v251, v192, v189, v190);
  sub_217350E74(v251);
  sub_217350E74(v250);
  v194 = OUTLINED_FUNCTION_152();
  sub_2171F0738(v194, v195, v196);
  if ((v193 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_119:
  v200 = OUTLINED_FUNCTION_136(v236[18]);
  sub_217270140(v200, v201, v202, v203, v204, v205, v206, v207, v236, v237, v238, v239);
  if (v208)
  {
    v209 = v236[19];
    memcpy(v249, (v6 + v209), 0x161uLL);
    memcpy(v246, (v6 + v209), 0x161uLL);
    v210 = v236[19];
    memcpy(v251, (v4 + v210), 0x161uLL);
    memcpy(v245, (v4 + v210), 0x161uLL);
    sub_217269EF4(v249, v244);
    sub_217269EF4(v251, v244);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v210) = v211;
    memcpy(v250, v245, 0x161uLL);
    sub_217269F50(v250);
    v212 = OUTLINED_FUNCTION_152();
    memcpy(v212, v246, 0x161uLL);
    v213 = OUTLINED_FUNCTION_152();
    sub_217269F50(v213);
    if (v210)
    {
      v214 = v236[20];
      v215 = *(v6 + v214);
      v216 = *(v6 + v214 + 8);
      v217 = (v4 + v214);
      v218 = v215 == *v217 && v216 == v217[1];
      if (v218 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_24_3();
        if (!v221)
        {
          if (v219)
          {
            goto LABEL_9;
          }

          goto LABEL_137;
        }

        if (v219)
        {
          OUTLINED_FUNCTION_59_0(v220);
          v224 = v67 && v222 == v223;
          if (v224 || (sub_217753058() & 1) != 0)
          {
LABEL_137:
            v225 = OUTLINED_FUNCTION_136(v236[22]);
            sub_217261FB0(v225, v226);
            if (v227)
            {
              v228 = OUTLINED_FUNCTION_136(v236[23]);
              sub_217261FB0(v228, v229);
              if (v230)
              {
                v231 = OUTLINED_FUNCTION_136(v236[24]);
                sub_217261FB0(v231, v232);
                if (v233)
                {
                  v234 = OUTLINED_FUNCTION_136(v236[25]);
                  sub_217261FB0(v234, v235);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_13();
}

void PlaylistEntryPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  sub_2177517D8();
  OUTLINED_FUNCTION_41();
  v59[1] = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_6_1();
  v59[0] = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v59 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v59 - v16;
  OUTLINED_FUNCTION_225_3(v64);
  OUTLINED_FUNCTION_225_3(v65);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v65) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v61, v64, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v62, v64, 0x221uLL);
    sub_217284028(v62, v63);
    Artwork.hash(into:)(v4);
    memcpy(v63, v61, sizeof(v63));
    sub_217284084(v63);
  }

  if (*(v0 + 560) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v18 = *(v0 + 552);
    OUTLINED_FUNCTION_119();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x21CEA3580](v19);
  }

  if (*(v0 + 576))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 592))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v20 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  sub_21726A630(v0 + v20[8], v17, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v17, 1, v1);
  if (v21)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_18_30();
    v23(v22, v17, v1);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_62();
    v26 = sub_2174E2DF8(v24, v25, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_147(v26);
    v27 = OUTLINED_FUNCTION_55_15();
    v28(v27);
  }

  sub_21726A630(v0 + v20[9], v14, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v14, 1, v1);
  if (v21)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v29 = OUTLINED_FUNCTION_18_30();
    v30(v29, v14, v1);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_62();
    v33 = sub_2174E2DF8(v31, v32, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_147(v33);
    v34 = OUTLINED_FUNCTION_55_15();
    v35(v34);
  }

  sub_21726A630(v0 + v20[10], v63, &qword_27CB27D20, &qword_217758B80);
  if (v63[56] == 255)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v62[0] = *v63;
    v62[1] = *&v63[16];
    v62[2] = *&v63[32];
    *(&v62[2] + 9) = *&v63[41];
    OUTLINED_FUNCTION_119();
    Playlist.Entry.Item.hash(into:)(v4);
    sub_21729C7F8(v62);
  }

  if (*(v0 + v20[11] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v36 = v0 + v20[12];
  v37 = *v36;
  v38 = *(v36 + 8);
  memcpy(v60, (v36 + 16), sizeof(v60));
  if (v38)
  {
    memcpy(&v61[2], (v36 + 16), 0x68uLL);
    v61[0] = v37;
    v61[1] = v38;
    OUTLINED_FUNCTION_119();
    *&v62[0] = v37;
    *(&v62[0] + 1) = v38;
    memcpy(&v62[1], v60, 0x68uLL);
    sub_2172DF5A4(v62, v63);
    PlayParameters.hash(into:)(v4);
    memcpy(v63, v61, 0x78uLL);
    sub_2172848C0(v63);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v39 = v2 + v20[13];
  if (*(v39 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v37 = *v39;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v37);
  }

  v40 = *(v2 + v20[14] + 8);
  if (v40)
  {
    OUTLINED_FUNCTION_119();
    *&v63[24] = swift_getObjectType();
    *v63 = v40;
    v41 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
    swift_unknownObjectRetain_n();
    v37 = sub_2174E2D44(v63);
    MEMORY[0x21CEA3550]([v37 hash]);
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v42 = v59[0];
  sub_21726A630(v2 + v20[15], v59[0], &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v42, 1, v1);
  if (v21)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_103_3();
    v43();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_62();
    v46 = sub_2174E2DF8(v44, v45, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_147(v46);
    (*(v37 + 1))(v8, v1);
  }

  if (*(v2 + v20[16] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v20[17], v62, &qword_27CB24BA8, &unk_217772FF0);
  if (*(&v62[1] + 1))
  {
    *v63 = v62[0];
    *&v63[16] = v62[1];
    *&v63[32] = *&v62[2];
    OUTLINED_FUNCTION_119();
    v47 = *&v63[24];
    v48 = *&v63[32];
    __swift_project_boxed_opaque_existential_1(v63, *&v63[24]);
    (*(v48 + 88))(v4, v47, v48);
    sub_217350E74(v63);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v49 = OUTLINED_FUNCTION_201();
  sub_217281970(v49, v50);
  memcpy(v63, (v2 + v20[19]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v4);
  sub_217751FF8();
  if (*(v2 + v20[21] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v51 = OUTLINED_FUNCTION_201();
  sub_217265A08(v51, v52);
  v53 = OUTLINED_FUNCTION_201();
  sub_217265A08(v53, v54);
  v55 = OUTLINED_FUNCTION_201();
  sub_217265A08(v55, v56);
  v57 = OUTLINED_FUNCTION_201();
  sub_217265A08(v57, v58);
  OUTLINED_FUNCTION_13();
}

uint64_t PlaylistEntryPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  PlaylistEntryPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_2174E28D0(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  PlaylistEntryPropertyProvider.subscript.getter();
  return sub_2174E076C;
}

uint64_t sub_2174E2954(uint64_t a1)
{
  sub_2177531E8();
  PlaylistEntryPropertyProvider.hash(into:)();
  return sub_217753238();
}

void MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)(uint64_t a1@<X8>)
{
  v17 = v1[1];
  v18 = *v1;
  v3 = v1[3];
  v37 = v1[2];
  v36 = *(v1 + 32);
  v35 = v1[5];
  v45 = v1[6];
  v34 = v1[7];
  v44 = v1[8];
  v33 = v1[9];
  v43 = v1[10];
  v32 = v1[11];
  v42 = v1[12];
  v30 = v1[13];
  v41 = v1[14];
  v25 = v1[15];
  v46 = v1[18];
  v47 = v1[17];
  v39 = v1[19];
  v40 = v1[20];
  v48 = v1[22];
  v49 = v1[21];
  v5 = v1[23];
  v4 = v1[24];
  v6 = v1[28];
  v24 = v1[27];
  v16 = v1[30];
  v7 = v1[32];
  v21 = v1[31];
  v22 = v1[29];
  v8 = v1[33];
  v20 = *(v1 + 272);
  v9 = v1[35];
  v28 = v1[37];
  v29 = v1[36];
  v26 = v1[16];
  v27 = v1[38];
  v10 = v1[39];
  v31 = *(v1 + 352);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172A5428(v47, v46, v39, v40);
  v38 = v5;
  sub_2172A5428(v49, v48, v5, v4);
  v23 = v7;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v11 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v11);

  sub_217751DE8();
  v12 = OUTLINED_FUNCTION_91();
  MEMORY[0x21CEA23B0](v12);

  v13 = v18;
  if (qword_280BE90D0 != -1)
  {
    swift_once();
  }

  v15 = qword_280BE90E8;
  v14 = unk_280BE90F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 4;
  *a1 = v18;
  *(a1 + 8) = v17;
  sub_217751DE8();
  sub_217751DE8();
  v19 = xmmword_280BE90D8;

  *(a1 + 16) = v37;
  *(a1 + 24) = v3;
  *(a1 + 32) = v36;
  *(a1 + 40) = v35;
  *(a1 + 48) = v45;
  *(a1 + 56) = v34;
  *(a1 + 64) = v44;
  *(a1 + 72) = v33;
  *(a1 + 80) = v43;
  *(a1 + 88) = v32;
  *(a1 + 96) = v42;
  *(a1 + 104) = v30;
  *(a1 + 112) = v41;
  *(a1 + 120) = v25;
  *(a1 + 128) = v26;
  sub_2172B8404(*(a1 + 136), *(a1 + 144));
  *(a1 + 136) = v47;
  *(a1 + 144) = v46;
  *(a1 + 152) = v39;
  *(a1 + 160) = v40;
  *(a1 + 200) = v13;
  *(a1 + 208) = v17;
  sub_2172B8404(*(a1 + 168), *(a1 + 176));
  *(a1 + 168) = v49;
  *(a1 + 176) = v48;
  *(a1 + 184) = v38;
  *(a1 + 192) = v4;
  *(a1 + 216) = v24;
  *(a1 + 224) = v6;
  *(a1 + 232) = v22;
  *(a1 + 240) = v16;
  *(a1 + 248) = v21;
  *(a1 + 256) = v23;
  *(a1 + 264) = v8;
  *(a1 + 272) = v20;
  *(a1 + 288) = v19;
  *(a1 + 304) = v15;
  *(a1 + 312) = v14;
  sub_2172AC65C(*(a1 + 320));
  *(a1 + 320) = v29;
  *(a1 + 328) = v28;
  *(a1 + 336) = v27;
  *(a1 + 344) = v10;
  *(a1 + 280) = v9;
  *(a1 + 352) = v31;
}

id sub_2174E2D44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithUnderlyingModelObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2174E2DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2174E2E68(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7538, MEMORY[0x277D839F8]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE5928, &type metadata for MusicItemID);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2174E3144(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2172E2E58(319, &qword_280BE2668, &type metadata for Playlist.Entry.Item);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E58(319, &qword_280BE49B8, &type metadata for ResourceType);
          if (v12 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
          if (v13 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
          if (v14 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E58(319, qword_280BE3640, &type metadata for LegacyModelObjectWrapper);
          if (v15 > 0x3F)
          {
            return v10;
          }

          sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
          v2 = v16;
          if (v17 > 0x3F)
          {
            return v2;
          }

          sub_2172E2E58(319, &qword_280BE77D0, &type metadata for AnyPropertyProviderExtendedStorage);
          if (v18 > 0x3F)
          {
            return v10;
          }

          sub_2174E3144(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
          if (v19 > 0x3F)
          {
            return v10;
          }

          sub_217351BFC();
          v2 = v20;
          if (v21 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_2174E3144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_28(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_42_17()
{

  return memcpy((v0 + 4184), (v1 + 16), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_43_13()
{
}

uint64_t OUTLINED_FUNCTION_45_20()
{

  return type metadata accessor for PlaylistEntryPropertyProvider(0);
}

__n128 OUTLINED_FUNCTION_49_19(uint64_t a1)
{
  result = *(v1 + 1664);
  v3 = *(v1 + 1680);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_11()
{
}

uint64_t sub_2174E3318(uint64_t result, int a2, int a3)
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

uint64_t SharedRelatedItemStore.__allocating_init()()
{
  v0 = swift_allocObject();
  SharedRelatedItemStore.init()(v0, v1, v2);
  return v0;
}

void JSONDecoder.sharedRelatedItemStore.setter(uint64_t a1)
{
  v2 = sub_217752CA8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_217751318();
  if (qword_280BE2200 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_280BE2200);
  }

  v10 = __swift_project_value_buffer(v2, qword_280C01F70);
  (*(v4 + 16))(v8, v10, v2);
  if (a1)
  {
    *(&v26 + 1) = type metadata accessor for SharedRelatedItemStore();
    *&v25 = a1;
    sub_2172124CC(&v25, &v23);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v9;
    v12 = *(&v24 + 1);
    __swift_mutable_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    OUTLINED_FUNCTION_0();
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_1();
    v16 = v15 - v14;
    (*(v17 + 16))(v15 - v14);
    sub_2174E473C(v16, v8, isUniquelyReferenced_nonNull_native, &v22, v12);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    sub_2171F06D8(&v25, &qword_27CB26E00, &unk_217767590);
    v18 = sub_217632604(v8);
    if (v19)
    {
      v20 = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v22 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E20, &qword_217767718);
      sub_217752CB8();
      v21 = *(v4 + 8);
      v21(*(v9 + 48) + *(v4 + 72) * v20, v2);
      sub_2172124CC((*(v9 + 56) + 32 * v20), &v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E08, &unk_21776FB50);
      sub_217752CD8();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = *(v4 + 8);
    }

    v21(v8, v2);
    sub_2171F06D8(&v23, &qword_27CB26E00, &unk_217767590);
  }

  sub_217751328();

  OUTLINED_FUNCTION_13();
}

uint64_t Decoder.sharedRelatedItemStore.getter()
{
  sub_2177532B8();
  if (qword_280BE2200 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_280BE2200);
  }

  v0 = sub_217752CA8();
  __swift_project_value_buffer(v0, qword_280C01F70);
  sub_2173B0718();

  if (v4)
  {
    type metadata accessor for SharedRelatedItemStore();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2171F06D8(v3, &qword_27CB2AD40, &qword_2177583F0);
    return 0;
  }
}

uint64_t SharedRelatedItemStore.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2172A4EFC(a1, a2, a3);
  *(v3 + 16) = sub_217751DC8();
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(v3 + 24) = v4;
  return v3;
}

void sub_2174E3820(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v20 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_217751DE8();
  sub_2174E3B48(a1, a2, a3, a3);
  v16 = *(v6 + 24);

  sub_217751DE8();
  sub_217751DE8();
  sub_217586664(v16, v6, v24);
  sub_2174E4BCC(v24, v21);
  if (v21[3])
  {
    sub_2171FF30C(v21, v22);
    sub_21729C698(v21);
  }

  else
  {
    sub_2171F06D8(v21, &qword_27CB24B50, &qword_2177595A0);
    memset(v22, 0, sizeof(v22));
    v23 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27590, &qword_21776ADF0);
  if (swift_dynamicCast())
  {
    sub_2171F06D8(v24, &qword_27CB24B50, &qword_2177595A0);

    __swift_storeEnumTagSinglePayload(v15, 0, 1, a3);
    (*(*(a3 - 8) + 32))(a5, v15, a3);
    OUTLINED_FUNCTION_13();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a3);
    (*(v20 + 8))(v15, v11);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6F2065737573694DLL, 0xEA00000000002066);
    v17 = sub_217753348();
    MEMORY[0x21CEA23B0](v17);

    MEMORY[0x21CEA23B0](0xD000000000000035, 0x80000002177AB110, v18);
    sub_217752D08();
    __break(1u);
  }
}

void sub_2174E3B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a4;
  v33 = a3;
  OUTLINED_FUNCTION_0();
  v35 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  sub_217751DE8();
  v30 = a1;
  v34 = a6;
  v17 = sub_2174E3B48(a1, a2, a5, a5);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v7 + 24);
  v25 = *(v24 + 16);

  sub_217751DE8();
  sub_217751DE8();
  os_unfair_lock_lock(v25);
  v31 = v21;
  sub_2174E3DC8(v7, v17, v19, v21, v23, &v36);
  os_unfair_lock_unlock(*(v24 + 16));

  if (v36)
  {

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v27 = v33(v30, a2);
    MEMORY[0x28223BE20](v27);
    v28 = v34;
    *(&v30 - 8) = a5;
    *(&v30 - 7) = v28;
    *(&v30 - 6) = v16;
    *(&v30 - 5) = v7;
    *(&v30 - 4) = v17;
    *(&v30 - 3) = v19;
    *(&v30 - 2) = v31;
    *(&v30 - 1) = v23;
    sub_21720BA7C();

    (*(v35 + 8))(v16, a5, v29);
    OUTLINED_FUNCTION_13();
  }
}

void sub_2174E3DC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_6;
  }

  sub_217751DE8();
  v13 = sub_217632668();
  if ((v14 & 1) == 0)
  {

LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  sub_21733B548(*(v12 + 56) + 48 * v13, v17);

  v19[0] = v17[0];
  v19[1] = v17[1];
  v20 = v18;
  sub_2171FF30C(v19, v17);
  if (!__OFADD__(*(&v20 + 1), 1))
  {
    *(&v18 + 1) = *(&v20 + 1) + 1;
    sub_21733B548(v17, v16);
    swift_beginAccess();
    sub_217751DE8();
    sub_217751DE8();
    sub_21729CCC4(v16, a2, a3, a4, a5);
    swift_endAccess();
    sub_21729C698(v17);
    sub_21729C698(v19);
    v15 = 1;
LABEL_7:
    *a6 = v15;
    return;
  }

  __break(1u);
}

uint64_t sub_2174E3F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[3] = a7;
  v17[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a1, a7);
  v17[5] = 1;
  sub_21733B548(v17, v16);
  swift_beginAccess();
  sub_217751DE8();
  sub_217751DE8();
  sub_21729CCC4(v16, a3, a4, a5, a6);
  swift_endAccess();
  return sub_21729C698(v17);
}

uint64_t sub_2174E4038()
{
  sub_21720BA7C();
  if (!*(&v2 + 1))
  {
    return sub_2171F06D8(&v1, &qword_27CB24B50, &qword_2177595A0);
  }

  v4[0] = v1;
  v4[1] = v2;
  v4[2] = v3;
  return sub_21729C698(v4);
}

uint64_t sub_2174E40D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  sub_217751DE8();
  v10 = sub_2174E3B48(a1, a2, a4, a4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  swift_beginAccess();
  v17 = *(a3 + 16);
  sub_217751DE8();
  sub_2173ACC08(v17, &v20);

  if (*(&v21 + 1))
  {
    v23[0] = v20;
    v23[1] = v21;
    v24 = v22;
    result = sub_2171FF30C(v23, &v20);
    if (__OFSUB__(*(&v24 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v22 + 1) = *(&v24 + 1) - 1;
      if (*(&v24 + 1) - 1 < 1)
      {
        sub_2171F06D8(a5, &qword_27CB24B50, &qword_2177595A0);
        sub_21733B548(v23, a5);
        memset(v19, 0, sizeof(v19));
      }

      else
      {
        sub_21733B548(&v20, v19);
      }

      swift_beginAccess();
      sub_21729CCC4(v19, v10, v12, v14, v16);
      swift_endAccess();
      sub_21729C698(&v20);
      return sub_21729C698(v23);
    }
  }

  else
  {

    return sub_2171F06D8(&v20, &qword_27CB24B50, &qword_2177595A0);
  }

  return result;
}

uint64_t sub_2174E42B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_217753058(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_217753058();
    }
  }

  return result;
}

uint64_t sub_2174E4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217751FF8();

  return sub_217751FF8();
}

uint64_t sub_2174E43A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2174E444C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_2177531E8();
  sub_2174E4358(v7, v2, v3, v5, v4);
  return sub_217753238();
}

uint64_t SharedRelatedItemStore.deinit()
{

  return v0;
}

uint64_t SharedRelatedItemStore.__deallocating_deinit()
{
  SharedRelatedItemStore.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2174E4504()
{
  v0 = sub_217752CA8();
  __swift_allocate_value_buffer(v0, qword_280C01F70);
  v1 = __swift_project_value_buffer(v0, qword_280C01F70);
  return CodingUserInfoKey.init(label:)(0xD00000000000001FLL, 0x80000002177AF090, v1);
}

uint64_t JSONDecoder.sharedRelatedItemStore.getter()
{
  if (qword_280BE2200 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_280BE2200);
  }

  v0 = sub_217752CA8();
  __swift_project_value_buffer(v0, qword_280C01F70);
  sub_217751318();
  sub_2173B0718();

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E08, &unk_21776FB50);
    type metadata accessor for SharedRelatedItemStore();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2171F06D8(v3, &qword_27CB26E00, &unk_217767590);
    return 0;
  }
}

void (*JSONDecoder.sharedRelatedItemStore.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = JSONDecoder.sharedRelatedItemStore.getter();
  return sub_2174E46C0;
}

void sub_2174E46C0(uint64_t *a1, char a2)
{
  if (a2)
  {

    JSONDecoder.sharedRelatedItemStore.setter(v2);
  }

  else
  {
    JSONDecoder.sharedRelatedItemStore.setter(*a1);
  }
}

_OWORD *sub_2174E473C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_217752CA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v14 = *a4;
  v15 = sub_217632604(a2);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E20, &qword_217767718);
  if ((sub_217752CB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_217632604(a2);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_10:
    result = sub_217753178();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *a4;
  if (v18)
  {
    v22 = (v21[7] + 32 * v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return sub_2172124CC(&v29, v22);
  }

  else
  {
    (*(v10 + 16))(v12, a2, v9);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
    v25 = MEMORY[0x28223BE20](v24);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, v25);
    sub_2174E4C3C(v17, v12, v27, v21, a5);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }
}

uint64_t sub_2174E49FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2174E4A3C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2174E4A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2174E4AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2174E4B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE37F8;
  if (!qword_280BE37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE37F8);
  }

  return result;
}

uint64_t sub_2174E4BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B50, &qword_2177595A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2174E4C3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = sub_217752CA8();
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  result = sub_2172124CC(&v17, (a4[7] + 32 * a1));
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_2174E4D44()
{
  OUTLINED_FUNCTION_30_0();
  v0[3] = v1;
  v0[4] = v2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  v0[5] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_68(v3);

  return v6(v5);
}

uint64_t sub_2174E4DD4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v6 = sub_217752498();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    return MEMORY[0x2822009F8](sub_2174E4F30, v6, v8);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v9();
  }
}

uint64_t sub_2174E4F30()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2174E4FB8()
{
  OUTLINED_FUNCTION_30_0();
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 24) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_68(v2);

  return v5(v4);
}

uint64_t sub_2174E5048()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  if (v0)
  {

    v4 = OUTLINED_FUNCTION_6_34();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }
}

uint64_t sub_2174E5164()
{
  v1 = *(v0 + 16);
  *(v1 + 2) = 0;
  *v1 = 2;
  return OUTLINED_FUNCTION_1_61();
}

uint64_t sub_2174E5178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_217752498();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](sub_2174E5214, v5, v7);
}

uint64_t sub_2174E5214()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_2174E52A8;

  return sub_2174E5EEC();
}

uint64_t sub_2174E52A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2174E538C()
{
  OUTLINED_FUNCTION_30_0();
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 24) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_68(v2);

  return v5(v4);
}

uint64_t sub_2174E541C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  if (v0)
  {

    v4 = OUTLINED_FUNCTION_6_34();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }
}

uint64_t sub_2174E5548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28990, &qword_21776FDB8);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v28 - v3;
  *(v0 + 24) = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  v4 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator;
  v28 = sub_217752888();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v28);
  v5 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationCenter;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  v6 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationName;
  *(v0 + v6) = sub_217751F18();
  v7 = (v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_underlyingNotificationKey);
  *v7 = 0xD000000000000016;
  v7[1] = 0x80000002177AF1E0;
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
  }

  v8 = qword_280C029A0;
  [qword_280C029A0 beginObservingCloudServiceStatus];
  swift_weakInit();
  swift_weakAssign();
  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x277D7F8F0];
  sub_217202078(v37, v30, &qword_27CB289A0, &qword_21776FDD8);
  v11 = swift_allocObject();
  sub_2174E6CCC(v30, v11 + 16);
  v35 = sub_2174E6E34;
  v36 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_217586F94;
  v34 = &block_descriptor_7;
  v12 = _Block_copy(&aBlock);

  v13 = [v9 addObserverForName:v10 object:v8 queue:0 usingBlock:v12];
  _Block_release(v12);
  OUTLINED_FUNCTION_14_32();
  v14 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v14);
  OUTLINED_FUNCTION_13_34();
  sub_217752378();
  swift_endAccess();
  v15 = *MEMORY[0x277D7F8F8];
  sub_217202078(v37, v30, &qword_27CB289A0, &qword_21776FDD8);
  v16 = swift_allocObject();
  sub_2174E6CCC(v30, v16 + 16);
  v35 = sub_2174E6D44;
  v36 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_217586F94;
  v34 = &block_descriptor_29;
  v17 = _Block_copy(&aBlock);

  v18 = [v9 addObserverForName:v15 object:v8 queue:0 usingBlock:v17];
  _Block_release(v17);
  OUTLINED_FUNCTION_14_32();
  v19 = swift_unknownObjectRetain();
  MEMORY[0x21CEA25D0](v19);
  OUTLINED_FUNCTION_13_34();
  sub_217752378();
  swift_endAccess();
  v20 = *(v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationName);
  v21 = *(v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationCenter);
  v22 = v20;
  v23 = sub_217752898();

  swift_beginAccess();
  *(v1 + 32) = v23;

  swift_beginAccess();
  if (*(v1 + 32))
  {
    swift_endAccess();

    v24 = v29;
    sub_217752868();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_2171F06D8(v37, &qword_27CB289A0, &qword_21776FDD8);
    v25 = 0;
  }

  else
  {
    sub_2171F06D8(v37, &qword_27CB289A0, &qword_21776FDD8);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v25 = 1;
    v24 = v29;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v28);
  v26 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator;
  swift_beginAccess();
  sub_2174E6D60(v24, v1 + v26);
  swift_endAccess();
  return v1;
}

uint64_t sub_2174E5A68(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2174E5DBC(a1);
  }

  return result;
}

uint64_t sub_2174E5AB0()
{
  v1 = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = sub_217204DD0(v2);
  sub_217751DE8();
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEA2E30](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    [v1 removeObserver_];
    swift_unknownObjectRelease();
  }

  if (qword_280BEAE60 == -1)
  {
    goto LABEL_10;
  }

LABEL_13:
  OUTLINED_FUNCTION_3_3(&qword_280BEAE60);
LABEL_10:
  [qword_280C029A0 endObservingCloudServiceStatus];

  sub_2171F06D8(v0 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator, &qword_27CB28990, &qword_21776FDB8);

  return v0;
}

uint64_t sub_2174E5C68()
{
  sub_2174E5AB0();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_2174E5CE8(uint64_t a1)
{
  sub_2174E6848(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2174E5DBC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationCenter);
  v4 = *(v1 + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationName);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28998, &unk_217780360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  sub_217751DE8();
  sub_217752A48();
  v6 = sub_2177513E8();
  *(inited + 96) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, a1, v6);
  v8 = sub_217751DC8();
  sub_2174E6C30(v4, 0, v8, v3);
}

uint64_t sub_2174E5EEC()
{
  OUTLINED_FUNCTION_10();
  v1[16] = v2;
  v1[17] = v0;
  v3 = sub_217752888();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28990, &qword_21776FDB8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB282D0, &qword_21776C3D0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = sub_2177513E8();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2174E6084()
{
  v1 = v0[17];
  updated = _s13UpdateTriggerOMa(0);
  v0[28] = updated;
  OUTLINED_FUNCTION_7_41();
  if ((*(v1 + 16) & 1) == 0)
  {
    v7 = v0[16];
    sub_2171F06D8(v7, &qword_27CB27230, &qword_217769A30);
    *(v1 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, updated);
    goto LABEL_5;
  }

  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_internalNotificationsIterator;
  swift_beginAccess();
  sub_217202078(v5 + v6, v3, &qword_27CB28990, &qword_21776FDB8);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    sub_2171F06D8(v0[21], &qword_27CB28990, &qword_21776FDB8);
    OUTLINED_FUNCTION_7_41();
    sub_2171F06D8(v0[23], &unk_27CB282D0, &qword_21776C3D0);
LABEL_5:

    OUTLINED_FUNCTION_20_0();

    return v8();
  }

  v10 = v0[21];
  (*(v0[19] + 16))(v0[20], v10, v0[18]);
  sub_2171F06D8(v10, &qword_27CB28990, &qword_21776FDB8);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[29] = v11;
  *v11 = v12;
  v11[1] = sub_2174E62C4;
  v13 = v0[23];

  return MEMORY[0x28211EE50](v13);
}

uint64_t sub_2174E62C4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174E6404()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v2;
LABEL_11:
    sub_2171F06D8(v3, &unk_27CB282D0, &qword_21776C3D0);
    goto LABEL_12;
  }

  v4 = *(*(v0 + 200) + 32);
  v4(*(v0 + 216), v2, v1);
  if (!sub_2177513D8())
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_9:
    sub_2171F06D8(v0 + 56, &qword_27CB2AD40, &qword_2177583F0);
    OUTLINED_FUNCTION_7_41();
    goto LABEL_10;
  }

  v5 = (*(v0 + 136) + OBJC_IVAR____TtCVV8MusicKit17MusicSubscription14UpdateTriggers8Iterator_underlyingNotificationKey);
  v6 = v5[1];
  *(v0 + 112) = *v5;
  *(v0 + 120) = v6;
  sub_217751DE8();
  sub_217752A48();
  sub_2173AC9A0();

  sub_2174E6BDC(v0 + 16);
  if (!*(v0 + 80))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    goto LABEL_9;
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v9 ^ 1u, 1, v7);
  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
LABEL_10:
    v3 = *(v0 + 176);
    goto LABEL_11;
  }

  v4(*(v0 + 208), *(v0 + 176), *(v0 + 192));
  v12 = sub_2177513C8();
  v13 = sub_217751F48();
  v15 = v14;
  v16 = sub_217751F48();
  if (v13 == v16 && v15 == v17)
  {

    goto LABEL_26;
  }

  v19 = OUTLINED_FUNCTION_12_29(v16);

  if (v19)
  {
LABEL_26:

    v27 = *(v0 + 224);
    v28 = *(v0 + 208);
    v29 = *(v0 + 192);
    v30 = *(v0 + 128);
    (*(*(v0 + 200) + 8))(*(v0 + 216), v29);
    sub_2171F06D8(v30, &qword_27CB27230, &qword_217769A30);
    v4(v30, v28, v29);
LABEL_27:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v27);
    goto LABEL_12;
  }

  v20 = sub_217751F48();
  v22 = v21;
  v23 = sub_217751F48();
  if (v20 == v23 && v22 == v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_12_29(v23);
  }

  v31 = *(v0 + 216);
  v32 = *(v0 + 192);
  v33 = *(v0 + 200);

  v35 = *(v33 + 8);
  v35(v31, v32, v34);
  if (v26)
  {
    v27 = *(v0 + 224);
    v36 = *(v0 + 208);
    v37 = *(v0 + 192);
    v30 = *(v0 + 128);
    sub_2171F06D8(v30, &qword_27CB27230, &qword_217769A30);
    v4(v30, v36, v37);
    goto LABEL_27;
  }

  (v35)(*(v0 + 208), *(v0 + 192));
LABEL_12:

  OUTLINED_FUNCTION_20_0();

  return v10();
}

void sub_2174E6848(uint64_t a1)
{
  if (!qword_280BE22F8)
  {
    sub_217752888();
    v1 = sub_2177528F8();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE22F8);
    }
  }
}

unint64_t sub_2174E68B4()
{
  result = qword_27CB28988;
  if (!qword_27CB28988)
  {
    _s14UpdateTriggersV8IteratorCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28988);
  }

  return result;
}

uint64_t sub_2174E690C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2172AFE20;

  return sub_2174E5EEC();
}

uint64_t sub_2174E69A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2174E6A74;

  return (sub_2174E5178)(a1, a2, a3, v3 + 16);
}

uint64_t sub_2174E6A74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2174E6B5C()
{
  _s14UpdateTriggersV8IteratorCMa(0);
  swift_allocObject();
  return sub_2174E5548();
}

uint64_t sub_2174E6B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2174E6B5C();
  *a1 = result;
  return result;
}

void sub_2174E6C30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_217751D88();
  [a4 postNotificationName:a1 object:a2 userInfo:{v7, }];
}

uint64_t sub_2174E6CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB289A0, &qword_21776FDD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174E6D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28990, &qword_21776FDB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174E6DD0(uint64_t a1)
{
  result = sub_2177513E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return swift_beginAccess();
}

void *CloudResource.init(item:type:href:customMetadata:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 16);
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  v20 = type metadata accessor for CloudResource(0, a11, a12, v19);
  v21 = a9 + v20[9];
  *v21 = v16;
  *(v21 + 8) = v17;
  *(v21 + 16) = v18;
  v22 = (a9 + v20[10]);
  *v22 = a3;
  v22[1] = a4;
  result = memcpy((a9 + v20[11]), a5, 0x180uLL);
  *(a9 + v20[12]) = a6;
  *(a9 + v20[13]) = a7;
  *(a9 + v20[14]) = a8;
  *(a9 + v20[15]) = a10;
  return result;
}

uint64_t CloudResource.equivalentResource<A>(with:)@<X0>(int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a1[10];
  v13 = v4 + a1[9];
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v13) = *(v13 + 16);
  v22[0] = v14;
  v22[1] = v15;
  v23 = v13;
  v16 = *(v4 + v12 + 8);
  v19 = *(v4 + v12);
  v17 = a1[11];
  memcpy(v24, (v4 + v17), 0x180uLL);
  CloudResource.init(item:type:href:customMetadata:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)(v10, v22, v19, v16, (v4 + v17), *(v4 + a1[12]), *(v4 + a1[13]), *(v4 + a1[14]), a4, *(v4 + a1[15]), a2, a3);
  sub_217751DE8();
  sub_217751DE8();
  sub_2174E712C(v24, v22);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2174E712C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25620, &qword_21776A5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174E719C(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_21_29(v4);
  v6(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!OUTLINED_FUNCTION_29_25(v7))
  {
    return (*(*(a1 + 24) + 152))(v2);
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2174E72D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_21_29(v4);
  v6(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!OUTLINED_FUNCTION_29_25(v7))
  {
    return (*(*(a1 + 24) + 168))(v2);
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t CloudResource.type.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return sub_217751DE8();
}

uint64_t CloudResource.href.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  sub_217751DE8();
  return v2;
}

uint64_t CloudResource.customMetadata.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 44);
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(a2, (v2 + v4), 0x180uLL);
  return sub_2174E712C(__dst, &v6);
}

unint64_t sub_2174E7574(uint64_t a1)
{
  v1 = sub_217752DC8();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2174E75CC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 1717924456;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    case 4:
      result = 0x6E6F6974616C6572;
      break;
    case 5:
      result = 0x7377656976;
      break;
    case 6:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174E7684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174E76F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v6);
}

uint64_t sub_2174E7764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174E77D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_2174E7844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2174E7574(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2174E7880@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2174E75CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2174E78C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2174E75C0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2174E7920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2174E75C4();
  *a1 = result;
  return result;
}

uint64_t sub_2174E7954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2174E79A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CloudResource<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a4;
  v98 = a6;
  swift_getAssociatedTypeWitness();
  v96 = sub_2177528F8();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_150();
  v95 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_150();
  v99 = v14;
  *&v118[0] = a2;
  *(&v118[0] + 1) = a3;
  *&v118[1] = a4;
  *(&v118[1] + 1) = a5;
  _s10CodingKeysOMa_1(255, v118);
  OUTLINED_FUNCTION_10_36();
  WitnessTable = swift_getWitnessTable();
  sub_217752ED8();
  OUTLINED_FUNCTION_0_0();
  v101 = v16;
  v102 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_150();
  v105 = v18;
  OUTLINED_FUNCTION_0();
  v104 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v88 - v24;
  v27 = type metadata accessor for CloudResource(0, a2, a3, v26);
  OUTLINED_FUNCTION_0_0();
  v97 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = &v88 - v30;
  sub_2171FF30C(a1, v118);
  v32 = v107;
  sub_217752608();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v92 = a3;
  v93 = v22;
  v90 = v27;
  v91 = v31;
  v106 = a2;
  v107 = v25;
  v33 = a1[3];
  v94 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_2177532C8();
  sub_217751DC8();

  v120 = 3;
  sub_217752E08();
  v34 = v104;
  OUTLINED_FUNCTION_154();
  WitnessTable = sub_217751DC8();
  OUTLINED_FUNCTION_154();
  v36 = sub_217751DC8();
  OUTLINED_FUNCTION_154();
  v89 = sub_217751DC8();
  sub_21733BE70(v118);
  v37 = v93;
  v39 = v106;
  v38 = v107;
  v88 = *(v34 + 16);
  v88(v93, v107, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (swift_dynamicCast())
  {
    sub_21726B918(v113, v114);
    OUTLINED_FUNCTION_18_31();
    v41 = (*(v40 + 16))(v119, v38, v37);
    v42 = v94;
    v99 = v36;
    AssociatedTypeWitness = v41;
    if (OUTLINED_FUNCTION_17_28())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      OUTLINED_FUNCTION_18_31();
      v44 = OUTLINED_FUNCTION_41_18();
      WitnessTable = v45(v44);
      __swift_destroy_boxed_opaque_existential_1(v113);
    }

    if (OUTLINED_FUNCTION_17_28())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      OUTLINED_FUNCTION_18_31();
      v61 = OUTLINED_FUNCTION_41_18();
      v99 = v62(v61);
      __swift_destroy_boxed_opaque_existential_1(v113);
    }

    v112[0] = 6;
    if (sub_217752EC8())
    {

      v112[0] = 6;
      OUTLINED_FUNCTION_24_28();
      sub_217752E08();
      sub_2171FF30C(v111, v109);
      CloudResourceCustomMetadata.init(from:)(v109, v112);
      memcpy(v110, v112, sizeof(v110));
      v84 = v115;
      v85 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v86 = sub_217383B34(&unk_28295F078);
      v89 = (*(v85 + 40))(v111, v86, v84, v85);
      __swift_destroy_boxed_opaque_existential_1(v111);

      memcpy(v108, v110, sizeof(v108));
      nullsub_1();
      memcpy(v113, v108, sizeof(v113));
      v39 = v106;
    }

    else
    {
      memcpy(v113, v118, sizeof(v113));
    }

    __swift_destroy_boxed_opaque_existential_1(v114);
    v87 = v113;
  }

  else
  {
    memset(v113, 0, 40);
    sub_2171F0738(v113, &qword_27CB25588, &unk_21775D380);
    sub_2171FF30C(v119, v113);
    v43 = v99;
    (*(v92 + 144))(v39);
    AssociatedTypeWitness = Dictionary<>.init<A>(from:skippingValuesFoundIn:)(v113, v43, AssociatedTypeWitness);
    LOBYTE(v113[0]) = 4;
    if (sub_217752EC8())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      sub_2171FF30C(v113, v112);
      (*(v92 + 160))(v39, v92);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
      OUTLINED_FUNCTION_154();
      sub_217752C68();

      v46 = OUTLINED_FUNCTION_24_28();
      v53 = Dictionary<>.init(from:skippingValuesFor:)(v46, v47, v48, v49, v50, v51, v52);
      v42 = v94;
      WitnessTable = v53;
      v99 = v36;
      __swift_destroy_boxed_opaque_existential_1(v113);
    }

    else
    {
      v99 = v36;
      v42 = v94;
    }

    if (OUTLINED_FUNCTION_17_28())
    {

      OUTLINED_FUNCTION_16_37();
      sub_217752E08();
      sub_2171FF30C(v113, v112);
      (*(v92 + 176))(v39, v92);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
      OUTLINED_FUNCTION_154();
      sub_217752C68();

      v54 = OUTLINED_FUNCTION_24_28();
      v99 = Dictionary<>.init(from:skippingValuesFor:)(v54, v55, v56, v57, v58, v59, v60);
      __swift_destroy_boxed_opaque_existential_1(v113);
    }

    LOBYTE(v113[0]) = 6;
    if (sub_217752EC8())
    {

      LOBYTE(v113[0]) = 6;
      sub_217752E08();
      sub_2171FF30C(v108, v114);
      CloudResourceCustomMetadata.init(from:)(v114, v113);
      memcpy(v112, v113, sizeof(v112));
      sub_2171FF30C(v108, v111);
      v82 = v95;
      (*(v92 + 184))(v39);
      v83 = sub_217383B34(&unk_28295F078);
      v89 = Dictionary<>.init<A>(from:skippingValuesFoundIn:and:)(v111, v82, v83, v96);
      __swift_destroy_boxed_opaque_existential_1(v108);
      memcpy(v110, v112, sizeof(v110));
      nullsub_1();
      v87 = v110;
    }

    else
    {
      v87 = v118;
    }
  }

  memcpy(v117, v87, sizeof(v117));
  v63 = v91;
  LOBYTE(v113[0]) = 2;
  if (sub_217752EC8())
  {
    LOBYTE(v113[0]) = 2;
    v64 = sub_217752E68();
    v66 = v65;
    v106 = v64;
  }

  else
  {
    v106 = 0;
    v66 = 0;
  }

  v67 = (v88)(v63, v107, v39);
  v112[0] = 1;
  sub_21733BE84(v67, v68, v69);
  v70 = v102;
  sub_217752EA8();
  v71 = OUTLINED_FUNCTION_2_69();
  v72(v71, v70);
  v73 = OUTLINED_FUNCTION_27_27();
  v74(v73, v39);
  v75 = *(&v113[0] + 1);
  v76 = v113[1];
  v77 = v90;
  v78 = &v63[v90[9]];
  *v78 = *&v113[0];
  *(v78 + 1) = v75;
  v78[16] = v76;
  v79 = &v63[v77[10]];
  *v79 = v106;
  v79[1] = v66;
  memcpy(&v63[v77[11]], v117, 0x180uLL);
  *&v63[v77[12]] = AssociatedTypeWitness;
  *&v63[v77[13]] = WitnessTable;
  v80 = v98;
  *&v63[v77[14]] = v99;
  *&v63[v77[15]] = v89;
  v81 = v97;
  (*(v97 + 16))(v80, v63, v77);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v81 + 8))(v63, v77);
}

void CloudResource<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v227 = a2;
  v10 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_23(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0_0();
  v202 = v13;
  v203 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  v204 = v15;
  v207 = v4;
  OUTLINED_FUNCTION_25_33();
  v206 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_150();
  v205 = v18;
  v19 = OUTLINED_FUNCTION_30_24(255);
  OUTLINED_FUNCTION_31_23(v19);
  OUTLINED_FUNCTION_0_0();
  v208 = v21;
  v209 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_150();
  v211 = v23;
  v213 = v4;
  OUTLINED_FUNCTION_25_33();
  v212 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_150();
  v210 = v26;
  v27 = OUTLINED_FUNCTION_30_24(255);
  OUTLINED_FUNCTION_31_23(v27);
  OUTLINED_FUNCTION_0_0();
  v216 = v29;
  v217 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_150();
  v215 = v31;
  v219 = v4;
  OUTLINED_FUNCTION_25_33();
  v218 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_150();
  v214 = v34;
  v230 = v9;
  OUTLINED_FUNCTION_30_24(0);
  OUTLINED_FUNCTION_0_0();
  v222 = v36;
  v223 = v35;
  MEMORY[0x28223BE20](v35);
  v221 = &v200 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v220 = &v200 - v39;
  v239 = v10;
  OUTLINED_FUNCTION_0();
  v225 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v226 = v43 - v42;
  v235[0] = v10;
  v235[1] = v9;
  v235[2] = a3;
  v235[3] = a4;
  _s10CodingKeysOMa_1(255, v235);
  OUTLINED_FUNCTION_10_36();
  swift_getWitnessTable();
  v44 = sub_217752F98();
  OUTLINED_FUNCTION_0_0();
  v46 = v45;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  v49 = &v200 - v48;
  v50 = a1[3];
  v224 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  v51 = v229;
  sub_2177532F8();
  v52 = OUTLINED_FUNCTION_37_20();
  v235[0] = v53(v52);
  v235[1] = v54;
  LOBYTE(v231[0]) = 0;
  sub_2172E1B18(v235[0], v54, v55);
  v56 = v228;
  sub_217752F88();
  if (v56)
  {

    (*(v46 + 8))(v49, v44, v57);
    return;
  }

  v228 = v46;

  v60 = v227;
  v61 = *(v51 + *(v227 + 40) + 8);
  if (v61)
  {
    LOBYTE(v235[0]) = 2;
    v62 = v44;
    v58 = sub_217752F48();
  }

  else
  {
    v62 = v44;
  }

  v63 = (v51 + v60[9]);
  v64 = *v63;
  v65 = v63[1];
  LOBYTE(v63) = *(v63 + 16);
  v237[0] = v64;
  v237[1] = v65;
  v238 = v63;
  v236 = 1;
  v66 = sub_21733ABF0(v58, v61, v59);
  sub_217751DE8();
  OUTLINED_FUNCTION_22_30(v237, &v236, v62, &type metadata for ResourceType, v66);
  if (v66)
  {

    v67 = OUTLINED_FUNCTION_9_38();
    v68(v67);
    return;
  }

  v69 = sub_217751DC8();
  memcpy(v235, (v51 + v60[11]), sizeof(v235));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v235) == 1)
  {
    v70 = v51;
    v201 = v69;
  }

  else
  {
    v74 = v49;

    sub_217751378();
    swift_allocObject();
    sub_217751368();
    v75 = memcpy(v231, v235, sizeof(v231));
    sub_21733AC98(v75, v76, v77);
    v83 = sub_217751358();
    v85 = v84;
    v200 = v62;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();
    v92 = v85;
    v70 = v51;

    sub_217275694(v83, v92);

    v201 = v231[0];
    v62 = v200;
    v49 = v74;
    v60 = v227;
  }

  (*(v225 + 16))(v226, v70, v239);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    v234 = 0;
    memset(v233, 0, sizeof(v233));
    sub_2171F0738(v233, &qword_27CB25588, &unk_21775D380);
    v78 = *(v70 + v60[12]);
    v79 = *(v230 + 144);
    if (*(v78 + 16))
    {
      v80 = v221;
      v79(v239, v230);
      v81 = v223;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v93 = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v80, v224, v78, v81, AssociatedConformanceWitness);
      v94 = v229;
      v95 = OUTLINED_FUNCTION_14_18();
      v96(v95, v81);
      v231[0] = v93;
      LOBYTE(v233[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v97, v98, v99, MEMORY[0x277D83508]);
      OUTLINED_FUNCTION_1_62();
      sub_217752F88();
    }

    else
    {
      v89 = v220;
      v79(v239, v230);
      LOBYTE(v231[0]) = 3;
      v90 = v223;
      v91 = swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_22_30(v89, v231, v62, v90, v91);
      v102 = OUTLINED_FUNCTION_27_27();
      v103(v102, v90);
      v94 = v229;
    }

    v104 = v215;
    v105 = OUTLINED_FUNCTION_37_20();
    v106(v105);
    v107 = v219;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v104, 1, v219);
    v109 = v227;
    if (EnumTagSinglePayload == 1)
    {
      v110 = OUTLINED_FUNCTION_14_18();
      v111(v110);
      v112 = *(v94 + v109[13]);
      if (*(v112 + 16))
      {
        v231[0] = v112;
        LOBYTE(v233[0]) = 4;
        sub_217751DE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        OUTLINED_FUNCTION_0_21();
        sub_21733ACEC(v113, v114, v115, MEMORY[0x277D83508]);
        OUTLINED_FUNCTION_1_62();
        sub_217752F88();
        v116 = v213;

        v109 = v227;
        goto LABEL_29;
      }
    }

    else
    {
      v117 = v104;
      v118 = v214;
      (*(v218 + 32))(v214, v117, v107);
      v119 = *(v94 + v109[13]);
      if (!*(v119 + 16))
      {
        LOBYTE(v231[0]) = 4;
        OUTLINED_FUNCTION_35_18();
        v130 = swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_22_30(v118, v231, v62, v107, v130);
        v131 = OUTLINED_FUNCTION_14_18();
        v132(v131, v107);
LABEL_28:
        v116 = v213;
LABEL_29:
        v135 = v211;
        v136 = OUTLINED_FUNCTION_37_20();
        v137(v136);
        v138 = v135;
        if (__swift_getEnumTagSinglePayload(v135, 1, v116) == 1)
        {
          (*(v208 + 8))(v135, v209);
          v139 = *(v94 + v109[14]);
          if (!*(v139 + 16))
          {
LABEL_36:
            v109 = v227;
LABEL_37:
            v154 = v230;
            v155 = v204;
            v156 = OUTLINED_FUNCTION_37_20();
            v157(v156, v154);
            v158 = v155;
            v159 = v155;
            v160 = v207;
            if (__swift_getEnumTagSinglePayload(v159, 1, v207) == 1)
            {
              v161 = v62;
              (*(v202 + 8))(v158, v203);
              v162 = *(v94 + v109[15]);
              v163 = v228;
              if (!*(v162 + 16))
              {
                if (*(v201 + 16))
                {
                  v231[0] = v201;
                  OUTLINED_FUNCTION_38_18();
                  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
                  OUTLINED_FUNCTION_0_21();
                  sub_21733ACEC(v176, v177, v178, MEMORY[0x277D83508]);
                  v179 = OUTLINED_FUNCTION_7_42();
                  OUTLINED_FUNCTION_22_30(v179, v180, v161, v175, v181);

                  (*(v163 + 8))(v49, v161, v182);
                }

                else
                {
                  (*(v228 + 8))(v49, v161);
                }

                return;
              }

              sub_217751DE8();
              v231[0] = sub_2174EA164(v201, v162);
              OUTLINED_FUNCTION_38_18();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              OUTLINED_FUNCTION_0_21();
              sub_21733ACEC(v164, v165, v166, MEMORY[0x277D83508]);
              OUTLINED_FUNCTION_7_42();
              sub_217752F88();
              v167 = OUTLINED_FUNCTION_86();
              v168(v167);
            }

            else
            {
              (*(v206 + 32))(v205, v158, v160);
              v169 = *(v94 + v109[15]);
              v170 = *(v169 + 16);
              v171 = swift_getAssociatedConformanceWitness();
              if (v170)
              {
                v172 = v49;
                v173 = Dictionary<>.merging<A>(withValuesFoundIn:and:for:)(v205, v201, v224, v169, v160, v171);
                v174 = v228;
                v183 = v173;

                v231[0] = v183;
                OUTLINED_FUNCTION_38_18();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
                OUTLINED_FUNCTION_0_21();
                sub_21733ACEC(v184, v185, v186, MEMORY[0x277D83508]);
                OUTLINED_FUNCTION_7_42();
                sub_217752F88();
                v187 = OUTLINED_FUNCTION_27_27();
                v188(v187);
                (*(v174 + 8))(v172, v62);
              }

              else
              {
                v189 = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v205, v224, v201, v160, v171);

                v231[0] = v189;
                OUTLINED_FUNCTION_38_18();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
                OUTLINED_FUNCTION_0_21();
                sub_21733ACEC(v190, v191, v192, MEMORY[0x277D83508]);
                OUTLINED_FUNCTION_1_62();
                sub_217752F88();
                v193 = OUTLINED_FUNCTION_86();
                v194(v193);
                v149 = OUTLINED_FUNCTION_9_38();
                v150(v149);
              }
            }

            return;
          }

          v231[0] = v139;
          LOBYTE(v233[0]) = 5;
          sub_217751DE8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          OUTLINED_FUNCTION_0_21();
          sub_21733ACEC(v140, v141, v142, MEMORY[0x277D83508]);
          OUTLINED_FUNCTION_1_62();
          sub_217752F88();
        }

        else
        {
          v143 = v210;
          (*(v212 + 32))(v210, v138, v116);
          v144 = *(v94 + v109[14]);
          if (!*(v144 + 16))
          {
            LOBYTE(v231[0]) = 5;
            OUTLINED_FUNCTION_35_18();
            v151 = swift_getAssociatedConformanceWitness();
            OUTLINED_FUNCTION_22_30(v143, v231, v62, v116, v151);
            OUTLINED_FUNCTION_33_21();
            v152(v143, v116);
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_35_18();
          v145 = swift_getAssociatedConformanceWitness();
          v231[0] = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v143, v224, v144, v116, v145);
          LOBYTE(v233[0]) = 5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          OUTLINED_FUNCTION_0_21();
          sub_21733ACEC(v146, v147, v148, MEMORY[0x277D83508]);
          OUTLINED_FUNCTION_1_62();
          sub_217752F88();
          OUTLINED_FUNCTION_33_21();
          v153(v210, v116);
        }

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_35_18();
      v120 = swift_getAssociatedConformanceWitness();
      v231[0] = Dictionary<>.merging<A>(withValuesFoundIn:for:)(v118, v224, v119, v107, v120);
      LOBYTE(v233[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v121, v122, v123, MEMORY[0x277D83508]);
      OUTLINED_FUNCTION_1_62();
      sub_217752F88();
      v133 = OUTLINED_FUNCTION_34_20();
      v134(v133);
    }

    v109 = v227;
    goto LABEL_28;
  }

  v239 = v49;
  v200 = v62;
  sub_21726B918(v233, v231);
  v71 = v60;
  v72 = v231[3];
  v73 = v231[4];
  __swift_project_boxed_opaque_existential_1(v231, v231[3]);
  *&v233[0] = (*(v73 + 48))(*(v70 + v71[12]), v224, v72, v73);
  v232 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_0_21();
  sub_21733ACEC(v86, v87, v88, MEMORY[0x277D83508]);
  OUTLINED_FUNCTION_8_42();
  sub_217752F88();

  __swift_project_boxed_opaque_existential_1(v231, v231[3]);
  OUTLINED_FUNCTION_40_19();
  v101 = v100();
  if (v101)
  {
    *&v233[0] = v101;
    v232 = 4;
    OUTLINED_FUNCTION_8_42();
    sub_217752F88();
  }

  __swift_project_boxed_opaque_existential_1(v231, v231[3]);
  OUTLINED_FUNCTION_40_19();
  v125 = v124();
  if (v125)
  {
    *&v233[0] = v125;
    v232 = 5;
    OUTLINED_FUNCTION_8_42();
    sub_217752F88();
  }

  v126 = *(v229 + *(v227 + 60));
  sub_217751DE8();
  v127 = sub_2174EA164(v201, v126);
  v128 = v231[3];
  v129 = v231[4];
  __swift_project_boxed_opaque_existential_1(v231, v231[3]);
  v195 = (*(v129 + 72))(v127, v224, v128, v129);

  if (v195)
  {
    *&v233[0] = v195;
    v232 = 6;
    sub_217752F88();
    OUTLINED_FUNCTION_12_30();
    v196 = OUTLINED_FUNCTION_28_26();
    v197(v196);
  }

  else
  {
    OUTLINED_FUNCTION_12_30();
    v198 = OUTLINED_FUNCTION_28_26();
    v199(v198);
  }

  __swift_destroy_boxed_opaque_existential_1(v231);
}

uint64_t sub_2174EA164(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2174EA73C(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t static CloudResource<>.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((sub_217751F08() & 1) == 0)
  {
    goto LABEL_28;
  }

  v10 = type metadata accessor for CloudResource(0, v4, v2, v9);
  v11 = v10[9];
  v12 = *(v8 + v11);
  v13 = *(v8 + v11 + 8);
  v14 = (v6 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_28;
  }

  v16 = v10[10];
  v17 = (v8 + v16);
  v18 = *(v8 + v16 + 8);
  v19 = (v6 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v20)
  {
    goto LABEL_28;
  }

  v22 = v10[11];
  memcpy(__dst, (v8 + v22), sizeof(__dst));
  v23 = v10[11];
  memcpy(v38, (v6 + v23), sizeof(v38));
  memcpy(__src, (v8 + v22), 0x180uLL);
  memcpy(&__src[384], (v6 + v23), 0x180uLL);
  memcpy(v39, (v8 + v22), sizeof(v39));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v39) != 1)
  {
    OUTLINED_FUNCTION_32_23(v35);
    OUTLINED_FUNCTION_32_23(v33);
    memcpy(v34, &__src[384], 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v34) == 1)
    {
      OUTLINED_FUNCTION_32_23(v32);
      sub_2174E712C(__dst, v31);
      sub_2174E712C(v38, v31);
      sub_2174E712C(v35, v31);
      sub_21733BED8(v32);
LABEL_22:
      memcpy(v34, __src, sizeof(v34));
      sub_2171F0738(v34, &qword_27CB289A8, &qword_217790120);
      goto LABEL_28;
    }

    memcpy(v32, &__src[384], sizeof(v32));
    sub_2174E712C(__dst, v31);
    sub_2174E712C(v38, v31);
    sub_2174E712C(v35, v31);
    v24 = static CloudResourceCustomMetadata.== infix(_:_:)(v33);
    memcpy(v30, v32, sizeof(v30));
    sub_21733BED8(v30);
    memcpy(v31, v33, sizeof(v31));
    sub_21733BED8(v31);
    OUTLINED_FUNCTION_32_23(v32);
    sub_2171F0738(v32, &qword_27CB25620, &qword_21776A5F0);
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_28:
    v28 = 0;
    return v28 & 1;
  }

  memcpy(v34, &__src[384], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v34) != 1)
  {
    sub_2174E712C(__dst, v35);
    sub_2174E712C(v38, v35);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_32_23(v35);
  sub_2174E712C(__dst, v33);
  sub_2174E712C(v38, v33);
  sub_2171F0738(v35, &qword_27CB25620, &qword_21776A5F0);
LABEL_24:
  OUTLINED_FUNCTION_42_18(v10[12]);
  if ((v25 & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_42_18(v10[13]);
  if ((v26 & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_42_18(v10[14]);
  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_42_18(v10[15]);
  return v28 & 1;
}

uint64_t CloudResource<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217751EB8();
  sub_217751FF8();
  if (*(v3 + *(a2 + 40) + 8))
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  memcpy(v15, (v3 + *(a2 + 44)), sizeof(v15));
  sub_2172638E8(a1);
  v6 = OUTLINED_FUNCTION_39_15();
  sub_217265A08(v6, v7);
  v8 = OUTLINED_FUNCTION_39_15();
  sub_217265A08(v8, v9);
  v10 = OUTLINED_FUNCTION_39_15();
  sub_217265A08(v10, v11);
  v12 = OUTLINED_FUNCTION_39_15();

  return sub_217265A08(v12, v13);
}

uint64_t CloudResource<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  CloudResource<>.hash(into:)(v5, a1, a2);
  return sub_217753238();
}

uint64_t sub_2174EA6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  CloudResource<>.hash(into:)(v6, a2, v4);
  return sub_217753238();
}

uint64_t sub_2174EA73C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v75 = a5;
  sub_217747F44();
  v5 = v70;
  v6 = v72;
  v7 = v73;
  v55 = v74;
  v56 = v69;
  v8 = (v71 + 64) >> 6;
  sub_217751DE8();

  v53 = v8;
  v54 = v70;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v56 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(v56 + 56) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v60[0] = *v13;
    v60[1] = v14;
    v61 = v17;
    v62 = v16;
    v63 = v18;
    sub_217751DE8();
    sub_21726A5E0(v17, v16, v18);
    v55(&v64, v60);
    v19 = v61;
    v20 = v62;
    v21 = v63;

    sub_21726A608(v19, v20, v21);
    v22 = v65;
    if (!v65)
    {
LABEL_19:
      sub_2172303F0(v56);
    }

    v23 = v64;
    v25 = v66;
    v24 = v67;
    v58 = v68;
    v26 = *v75;
    v28 = sub_21763246C(v64, v65);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217747120(v31, a4 & 1);
      v33 = sub_21763246C(v23, v22);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_23;
      }

      v28 = v33;
    }

    v57 = (v9 - 1) & v9;
    v35 = *v75;
    if (v32)
    {
      v36 = 3 * v28;
      v37 = v35[7] + 8 * v36;
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      sub_21726A5E0(*v37, v39, v40);
      v41 = OUTLINED_FUNCTION_86();
      sub_21726A608(v41, v42, v58);

      v43 = v35[7] + 8 * v36;
      v44 = *v43;
      v45 = *(v43 + 8);
      *v43 = v38;
      *(v43 + 8) = v39;
      v46 = *(v43 + 16);
      *(v43 + 16) = v40;
      sub_21726A608(v44, v45, v46);
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v47 = (v35[6] + 16 * v28);
      *v47 = v23;
      v47[1] = v22;
      v48 = v35[7] + 24 * v28;
      *v48 = v25;
      *(v48 + 8) = v24;
      *(v48 + 16) = v58;
      v49 = v35[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_22;
      }

      v35[2] = v51;
    }

    a4 = 1;
    v6 = v10;
    v8 = v53;
    v5 = v54;
    v7 = v57;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

void sub_2174EAAB8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE77E8, &type metadata for CloudResourceCustomMetadata);
      if (v3 <= 0x3F)
      {
        sub_217351BFC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2174EAB9C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 391) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2174EAD00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 391) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((v9 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 391) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 16) = 0;
              *v17 = a2 & 0x7FFFFFFF;
              *(v17 + 8) = 0;
            }

            else
            {
              *(v17 + 8) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v9 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 391) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((v9 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 391) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 391) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_2174EAF04(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752F88();
}

uint64_t OUTLINED_FUNCTION_29_25(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_42_18(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v1 + a1);

  sub_217261FB0(v4, v5);
}

void *sub_2174EB138@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (!result)
  {
    LOBYTE(v4) = 6;
    goto LABEL_5;
  }

  v3 = [result musicKit_nowPlayingInfoAudioFormat_badging];
  if (v3 < 7)
  {
    v4 = 0x5030201000406uLL >> (8 * v3);
    result = swift_unknownObjectRelease();
LABEL_5:
    *a2 = v4;
    return result;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AF310);
  type metadata accessor for MusicKit_SoftLinking_MPNowPlayingAudioFormatBadging(0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.init(duration:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t static MusicPlayer.Transition.CrossfadeOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return sub_217753208();
  }

  v2 = *v0;
  sub_217753208();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x21CEA3580](v3);
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2177531E8();
  if (v2 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x21CEA3580](v3);
  }

  return sub_217753238();
}

uint64_t sub_2174EB37C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2177531E8();
  if (v3 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x21CEA3580](v4);
  }

  return sub_217753238();
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.description.getter()
{
  OUTLINED_FUNCTION_0_64();

  OUTLINED_FUNCTION_1_63();
  if (v1)
  {
    v0 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    sub_2177525E8();
    v2 = 0;
  }

  MEMORY[0x21CEA23B0](v2, v0);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v3);
  return v5;
}

uint64_t MusicPlayer.Transition.CrossfadeOptions.debugDescription.getter()
{
  OUTLINED_FUNCTION_0_64();

  OUTLINED_FUNCTION_1_63();
  if (v1)
  {
    v0 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    sub_2177525E8();
    v2 = 0;
  }

  MEMORY[0x21CEA23B0](v2, v0);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v3);
  return v5;
}

unint64_t sub_2174EB550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289B0;
  if (!qword_27CB289B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289B0);
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

uint64_t _s16CrossfadeOptionsVwet(uint64_t a1, int a2)
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

uint64_t _s16CrossfadeOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t CloudCatalogAssetProviding<>.hasSubscriptionOrRedownloadOffer.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))(a1, a3);
  if (result)
  {
    v4 = result;
    v5 = (result + 40);
    v6 = -*(result + 16);
    v7 = -1;
    while (1)
    {
      v8 = v6 + v7 != -1;
      if (v6 + v7 == -1)
      {
LABEL_15:

        return v8;
      }

      if (++v7 >= *(v4 + 16))
      {
        break;
      }

      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = v9 == 0x7069726373627573 && v10 == 0xEC0000006E6F6974;
      if (!v11 && (sub_217753058() & 1) == 0 && (v9 != 0x6F6C6E776F646572 || v10 != 0xEA00000000006461))
      {
        v5 += 2;
        result = sub_217753058();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

MusicKit::CatalogAsset_optional __swiftcall CloudCatalogAssetProviding.extractCatalogAsset()()
{
  v3 = v1;
  v4 = v0;
  v5 = v2;
  v6 = *(v1 + 8);
  v7 = v6();
  v8 = (v6)(v4, v3);
  v9 = (*(v3 + 24))(v4, v3);
  v10 = (*(v3 + 32))(v4, v3);
  v11 = 3;
  if ((v7 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 256;
  if ((v8 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = v12 | v11;
  v14 = 0x10000;
  if ((v9 & 1) == 0)
  {
    v14 = 0;
  }

  *v5 = v13 | v14;
  *(v5 + 4) = (v10 & 1) != 0;
  return v10;
}

uint64_t LegacyModelObjectWrapper.init(legacyModelObject:type:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *(a3 + 8) = result;
  *a3 = v3;
  return result;
}

id static LegacyModelObjectWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  v10[0] = v2;
  v4 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v5 = sub_2174E2D44(v10);
  ObjectType = swift_getObjectType();
  v10[0] = v3;
  v6 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v7 = sub_2174E2D44(v10);
  v8 = [v5 isEqual_];

  return v8;
}

void LegacyModelObjectWrapper.hash(into:)()
{
  v1 = *(v0 + 8);
  v3[3] = swift_getObjectType();
  v3[0] = v1;
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v2 = sub_2174E2D44(v3);
  MEMORY[0x21CEA3550]([v2 hash]);
}

uint64_t LegacyModelObjectWrapper.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2177531E8();
  v5[3] = swift_getObjectType();
  v5[0] = v1;
  v2 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  swift_unknownObjectRetain();
  v3 = sub_2174E2D44(v5);
  MEMORY[0x21CEA3550]([v3 hash]);

  return sub_217753238();
}

uint64_t sub_2174EBAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002177AF370 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2174EBB94(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2174EBBD4(uint64_t a1)
{
  sub_2177531E8();
  LegacyModelObjectWrapper.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2174EBC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174EBAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174EBC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174EC214(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174EBC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174EC214(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LegacyModelObjectWrapper.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB289B8, &qword_2177701F0);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174EC214(v11, v12, v13);
  v14 = sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  sub_2174EC268(v14, v15, v16);
  OUTLINED_FUNCTION_2_70();
  sub_217752EA8();
  v30 = a2;
  v18 = v33[0];
  v19 = v33[1];
  v20 = objc_opt_self();
  v31 = v18;
  v21 = sub_217751738();
  v33[0] = 0;
  v22 = [v20 unarchiveUnderlyingModelObjectWithData:v21 error:v33];

  v26 = v33[0];
  if (!v22)
  {
    v28 = v33[0];
    sub_217751638();

    swift_willThrow();
    sub_217275694(v31, v19);
    (*(v7 + 8))(v10, v5);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 1;
  sub_2174EC2BC(v23, v24, v25);
  v27 = v26;
  OUTLINED_FUNCTION_2_70();
  sub_217752EA8();
  (*(v7 + 8))(v10, v5);
  sub_217275694(v31, v19);
  v29 = v30;
  *v30 = v33[0];
  *(v29 + 1) = v22;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return swift_unknownObjectRelease();
}

uint64_t LegacyModelObjectWrapper.encode(to:)(void *a1)
{
  v3 = v2;
  v35[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB289D8, &qword_2177701F8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v33 = *v1;
  v11 = *(v1 + 1);
  v12 = objc_opt_self();
  v35[0] = 0;
  swift_unknownObjectRetain();
  v13 = [v12 archivedDataWithUnderlyingModelObject:v11 error:v35];
  v14 = v35[0];
  if (v13)
  {
    v31 = sub_217751768();
    v32 = v15;

    v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2174EC214(v16, v17, v18);
    v19 = sub_2177532F8();
    LOBYTE(v35[0]) = v33;
    v34 = 1;
    sub_2174EC310(v19, v20, v21);
    OUTLINED_FUNCTION_0_66();
    v22 = sub_217752F88();
    if (v3)
    {
      (*(v7 + 8))(v10, v5);
      swift_unknownObjectRelease();
      v25 = v31;
      v26 = v32;
    }

    else
    {
      v30 = v31;
      v29 = v32;
      v35[0] = v31;
      v35[1] = v32;
      v34 = 0;
      sub_2174EC364(v22, v23, v24);
      OUTLINED_FUNCTION_0_66();
      sub_217752F88();
      (*(v7 + 8))(v10, v5);
      swift_unknownObjectRelease();
      v25 = v30;
      v26 = v29;
    }

    return sub_217275694(v25, v26);
  }

  else
  {
    v27 = v14;
    sub_217751638();

    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

unint64_t sub_2174EC214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289C0;
  if (!qword_27CB289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289C0);
  }

  return result;
}

unint64_t sub_2174EC268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289C8;
  if (!qword_27CB289C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289C8);
  }

  return result;
}

unint64_t sub_2174EC2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289D0;
  if (!qword_27CB289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289D0);
  }

  return result;
}

unint64_t sub_2174EC310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289E0;
  if (!qword_27CB289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289E0);
  }

  return result;
}

unint64_t sub_2174EC364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289E8;
  if (!qword_27CB289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289E8);
  }

  return result;
}

unint64_t sub_2174EC3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289F0;
  if (!qword_27CB289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelObjectWrapper.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_2174EC500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB289F8;
  if (!qword_27CB289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB289F8);
  }

  return result;
}

unint64_t sub_2174EC558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28A00;
  if (!qword_27CB28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28A00);
  }

  return result;
}

unint64_t sub_2174EC5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28A08;
  if (!qword_27CB28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28A08);
  }

  return result;
}

uint64_t sub_2174EC604(uint64_t a1)
{
  result = sub_2174EC744(&unk_280BE8380, type metadata accessor for MusicKit_SoftLinking_MPModelPlaylistVariants, &unk_2177579A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2174EC65C(uint64_t a1)
{
  result = sub_2174EC744(&qword_280BE83C8, type metadata accessor for MusicKit_SoftLinking_MPModelPlaylistOptions, &unk_21775796C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2174EC744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2174EC78C@<D0>(uint64_t a1@<X8>)
{
  if (qword_280BE8C28 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE8C30;
  v3 = objc_opt_self();

  v4 = [v3 mainBundle];
  v5 = NSBundle.isMusicApp.getter();

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 64) = MEMORY[0x277D84F90];
  *(a1 + 72) = v7;
  *(a1 + 80) = v7;
  *(a1 + 88) = v7;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = v7;
  *(a1 + 112) = v5;
  return result;
}

uint64_t sub_2174EC864(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2174EC884, 0, 0);
}

uint64_t sub_2174EC884()
{
  v15 = v0;
  static MusicAuthorization.currentStatus.getter(v14);
  v1 = 0x7265746544746F6ELL;
  switch(v14[0])
  {
    case 1:
      v1 = OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      v1 = OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:

      goto LABEL_7;
    default:
LABEL_4:
      v2 = OUTLINED_FUNCTION_655(v1);

      if (v2)
      {
LABEL_7:
        if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for MusicLibrarySectionExtendedRequestable))
        {
          OUTLINED_FUNCTION_10_37();
          v8();
        }

        else
        {
          sub_2174F0CC0(*(v0[3] + 64), *(v0[3] + 80), v7);
        }

        v0[4] = 0;
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        v0[5] = v11;
        *v11 = v12;
        v11[1] = sub_2174ECA7C;
        v13 = v0[2];

        return sub_2174ED4F4(v13);
      }

      else
      {
        sub_21728FC9C(v3, v4, v5);
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_20_0();

        return v9();
      }
  }
}

uint64_t sub_2174ECA7C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174ECB74()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2174ECBCC()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2174ECC28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2174ECC48, 0, 0);
}

uint64_t sub_2174ECC48()
{
  v14 = v0;
  static MusicAuthorization.currentStatus.getter(v13);
  v1 = 0x7265746544746F6ELL;
  switch(v13[0])
  {
    case 1:
      v1 = OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      v1 = OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:

      goto LABEL_9;
    default:
LABEL_4:
      v2 = OUTLINED_FUNCTION_655(v1);

      if (v2)
      {
LABEL_9:
        if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for MusicLibrarySectionExtendedRequestable))
        {
          OUTLINED_FUNCTION_10_37();
          v9();
        }

        v0[4] = 0;
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        v0[5] = v10;
        *v10 = v11;
        v10[1] = sub_2174ECA7C;
        v12 = v0[2];

        return sub_2174ECE0C(v12);
      }

      else
      {
        sub_21728FC9C(v3, v4, v5);
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_20_0();

        return v7();
      }
  }
}

uint64_t sub_2174ECE0C(uint64_t a1)
{
  *(v2 + 416) = a1;
  *(v2 + 424) = v1;
  return MEMORY[0x2822009F8](sub_2174ECE2C, 0, 0);
}

uint64_t sub_2174ECE2C()
{
  OUTLINED_FUNCTION_23_31();
  v4 = sub_2174EDC48(sub_2173EA470, sub_21749A82C);
  v1[54] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2174ECF44;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_7_43(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_6_47();
  [v4 performWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2174ECF44()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2174ED4F4(uint64_t a1)
{
  *(v2 + 416) = a1;
  *(v2 + 424) = v1;
  return MEMORY[0x2822009F8](sub_2174ED514, 0, 0);
}

uint64_t sub_2174ED514()
{
  OUTLINED_FUNCTION_23_31();
  v4 = sub_2174EDC48(sub_2173EA3F0, sub_21749A82C);
  v1[54] = v4;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2174ED62C;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_7_43(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_6_47();
  [v4 performWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2174ED62C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2174ED728()
{
  OUTLINED_FUNCTION_31_24(MEMORY[0x277D84F90]);
  v3 = v2;
  v4 = [v2 results];
  v5 = v4;
  if (v0)
  {
    v6 = [v4 numberOfSections];

    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_30_25();
      do
      {
        v7 = [v3 results];
        v8 = [v7 numberOfItemsInSection_];

        if (v8 > 0 || dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for MusicLibrarySectionExtendedRequestable) && ((*(v26 + 16))() & 1) != 0)
        {
          v9 = [v3 results];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27670, &unk_21776B0C0);
          OUTLINED_FUNCTION_953();
          swift_allocObject();
          v10 = OUTLINED_FUNCTION_29_26();
          v13 = sub_217491978(v10, v11, v12, &unk_28295BC78, 1);
          OUTLINED_FUNCTION_35_19(v13);
          sub_217751DC8();
          sub_217751DC8();

          v22 = [v3 results];
          OUTLINED_FUNCTION_27_28();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A80, &qword_217770518);
          swift_allocObject();
          v1[23] = OUTLINED_FUNCTION_28_27();
          sub_217202078((v1 + 10), (v1 + 24), &unk_27CB28A70, &qword_21775A158);
          v23 = v1[51];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1[51] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_21_3();
            sub_2172B31A0();
            OUTLINED_FUNCTION_8_43(v27, v28, v29, v30, v31, v32, v33, v34, v56);
          }

          v25 = *(v23 + 24);
          if (*(v23 + 16) >= v25 >> 1)
          {
            OUTLINED_FUNCTION_57(v25);
            sub_2172B31A0();
            OUTLINED_FUNCTION_8_43(v35, v36, v37, v38, v39, v40, v41, v42, v56);
          }

          sub_2171F06D8((v1 + 10), &unk_27CB28A70, &qword_21775A158);
          sub_2171F06D8((v1 + 38), &qword_27CB240D0, &unk_21775D400);
          OUTLINED_FUNCTION_17_29();
          v6 = v57;
        }

        ++v5;
      }

      while (v6 != v5);
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_953();
  v43 = swift_allocObject();
  *(v43 + 16) = v3;
  *(v43 + 24) = &type metadata for Track;
  *(v43 + 32) = &protocol witness table for Track;
  *(v43 + 40) = &type metadata for Track;
  *(v43 + 48) = &protocol witness table for Track;
  *(v43 + 56) = 28;
  OUTLINED_FUNCTION_19_24(v43, &protocol witness table for Playlist);
  v44 = swift_allocObject();
  v45 = sub_2174F0D90;
  *(v44 + 16) = sub_2174F0D90;
  *(v44 + 24) = v43;
  v1[14] = sub_2174F0DA8;
  v1[15] = v44;
  v1[10] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_5_49(COERCE_DOUBLE(1107296256));
  v1[12] = v46;
  v1[13] = &block_descriptor_29_0;
  v47 = _Block_copy(v1 + 10);
  v48 = v3;

  [v5 enumerateSectionIdentifiersUsingBlock_];

  _Block_release(v47);
  LOBYTE(v47) = OUTLINED_FUNCTION_25_34(v49, "");

  if (v47)
  {
    __break(1u);
LABEL_18:
    v45 = 0;
    v43 = 0;
  }

  v50 = v1[54];
  v51 = v1[51];
  v52 = v1[52];
  sub_217751DE8();
  v53 = [v3 results];
  v54 = [v53 totalItemCount];

  *v52 = v51;
  v52[1] = v54;

  sub_2171FF138(v45, v43);
  OUTLINED_FUNCTION_0_2();

  v55();
}

uint64_t sub_2174EDBDC(uint64_t a1)
{
  v2 = *(v1 + 432);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2174EDC48(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, void), uint64_t (*a2)(_BYTE *, uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 8);
  v26 = *v2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v11 = *(v2 + 64);
  v10 = *(v2 + 72);
  v13 = *(v2 + 80);
  v12 = *(v2 + 88);
  v14 = *(v2 + 98);
  v15 = *(v2 + 99);
  v16 = 256;
  if ((*(v2 + 96) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFELL | *(v2 + 24) & 1;
  v18 = 0x10000;
  if ((*(v2 + 97) & 1) == 0)
  {
    v18 = 0;
  }

  v19 = 0x1000000;
  if ((*(v2 + 100) & 1) == 0)
  {
    v19 = 0;
  }

  v20 = v17 | v18 | v19;
  v21 = 0x1000000000000;
  if ((v14 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 0x100000000000000;
  if ((v15 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = v21 | v22;
  sub_2173EA430(v10, v12, v6, v7, v20 | v21 | v22, 0, &v30);
  LOBYTE(__src[10]) = v38;
  *&__src[1] = v31;
  *&__src[3] = v32;
  __src[0] = v30;
  __src[5] = v33;
  __src[6] = v34;
  LOBYTE(__src[7]) = v35;
  __src[8] = v36;
  __src[9] = v37;
  *&__src[11] = v39;
  __src[13] = v40;
  a1(&v30, v11, v13, v8, v9, v20 | v23, 0);
  memcpy(__dst, __src, sizeof(__dst));
  sub_2172147A0(__src, v28);
  v24 = a2(__dst, &v30, v4, v5, v26);
  sub_21721D674(__src);
  sub_21721D674(__src);
  sub_21721D674(&v30);
  return v24;
}

uint64_t sub_2174EDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_2174EDE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, _BYTE *))
{
  v19 = MEMORY[0x21CEA3980](a1, a2, a3);
  a16(a4, a1, a5, a6, a7, a8, a9, a2, a10, a11, a12, a13, a14, a15, v25);
  objc_autoreleasePoolPop(v19);
}

void sub_2174EDF38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t *a14)
{
  v50 = MEMORY[0x277D84F90];
  v21 = [a1 results];
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a1;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = &v50;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2174F0E70;
  *(v23 + 24) = v22;
  *&v47 = sub_2174F0EF8;
  *(&v47 + 1) = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_2174EDE10;
  *(&v46 + 1) = &block_descriptor_87;
  v24 = _Block_copy(&aBlock);
  v25 = a1;

  [v21 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    v26 = *(a10 + 8);
    swift_unknownObjectRetain();
    v26(__src, a9, a10);
    v40 = __src[0];
    v41 = __src[1];
    *&v39[0] = &unk_28295BDB8;
    LOBYTE(v44[0]) = 4;
    sub_2172B6904(a8, &v40, v39, v44, &aBlock);
    v27 = [v25 results];
    v28 = [v27 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v28;
    memset(__src, 0, 40);
    v26(&v40, a9, a10);
    v39[0] = v40;
    v39[1] = v41;
    LOBYTE(v44[0]) = 1;
    v29 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
    *(&v46 + 1) = v29;
    *&v47 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    v44[4] = a12;
    *&aBlock = v30;
    LOBYTE(__src[0]) = a13;
    v31 = *(a12 + 24);
    v44[3] = a11;
    __swift_allocate_boxed_opaque_existential_0(v44);

    v31(&aBlock, __src, a11, a12);
    sub_2171FF30C(v44, __src);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (swift_dynamicCast())
    {
      v40 = aBlock;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      if (*(v50 + 16))
      {
        goto LABEL_10;
      }

      sub_21726B8C4(&v40);
    }

    else
    {
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
    }

    sub_2171FF30C(v44, __src);
    if (!swift_dynamicCast())
    {

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
      goto LABEL_13;
    }

    v40 = aBlock;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    if (!dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for MusicLibrarySectionExtendedRequestable) || ((*(v32 + 16))() & 1) == 0)
    {
      sub_21726B8C4(&v40);

      goto LABEL_13;
    }

LABEL_10:
    sub_2172757C0(&v40, __src);
    v33 = sub_217751DE8();
    sub_2174AA4C0(v33);
    sub_2172757C0(__src, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AD0, qword_2177705E0);
    swift_allocObject();
    v34 = sub_2174EF438(v39);
    sub_21726B8C4(__src);
    v49 = v34;
    sub_217202078(&aBlock, __src, &qword_27CB28A40, &qword_21775A168);
    sub_21770B84C();
    v35 = *(*a14 + 16);
    sub_21770BB7C(v35);

    sub_2171F06D8(&aBlock, &qword_27CB28A40, &qword_21775A168);
    sub_21726B8C4(&v40);
    v36 = *a14;
    *(v36 + 16) = v35 + 1;
    memcpy((v36 + 112 * v35 + 32), __src, 0x70uLL);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v44);

    return;
  }

  __break(1u);
}

void sub_2174EE534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t *a14)
{
  v50 = MEMORY[0x277D84F90];
  v21 = [a1 results];
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a1;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = &v50;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2174F0DE8;
  *(v23 + 24) = v22;
  *&v47 = sub_2174F0EF8;
  *(&v47 + 1) = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_2174EDE10;
  *(&v46 + 1) = &block_descriptor_40;
  v24 = _Block_copy(&aBlock);
  v25 = a1;

  [v21 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    v26 = *(a10 + 8);
    swift_unknownObjectRetain();
    v26(__src, a9, a10);
    v40 = __src[0];
    v41 = __src[1];
    *&v39[0] = &unk_28295BDF8;
    LOBYTE(v44[0]) = 4;
    sub_2172B6904(a8, &v40, v39, v44, &aBlock);
    v27 = [v25 results];
    v28 = [v27 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v28;
    memset(__src, 0, 40);
    v26(&v40, a9, a10);
    v39[0] = v40;
    v39[1] = v41;
    LOBYTE(v44[0]) = 1;
    v29 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
    *(&v46 + 1) = v29;
    *&v47 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    v44[4] = a12;
    *&aBlock = v30;
    LOBYTE(__src[0]) = a13;
    v31 = *(a12 + 24);
    v44[3] = a11;
    __swift_allocate_boxed_opaque_existential_0(v44);

    v31(&aBlock, __src, a11, a12);
    sub_2171FF30C(v44, __src);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (swift_dynamicCast())
    {
      v40 = aBlock;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      if (*(v50 + 16))
      {
        goto LABEL_10;
      }

      sub_21726B8C4(&v40);
    }

    else
    {
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
    }

    sub_2171FF30C(v44, __src);
    if (!swift_dynamicCast())
    {

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      aBlock = 0u;
      sub_2171F06D8(&aBlock, &unk_27CB28A90, &qword_217758F90);
      goto LABEL_13;
    }

    v40 = aBlock;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    if (!dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for MusicLibrarySectionExtendedRequestable) || ((*(v32 + 16))() & 1) == 0)
    {
      sub_21726B8C4(&v40);

      goto LABEL_13;
    }

LABEL_10:
    sub_2172757C0(&v40, __src);
    v33 = sub_217751DE8();
    sub_2174AA1D8(v33);
    sub_2172757C0(__src, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A80, &qword_217770518);
    swift_allocObject();
    v34 = sub_2174EF438(v39);
    sub_21726B8C4(__src);
    v49 = v34;
    sub_217202078(&aBlock, __src, &unk_27CB28A70, &qword_21775A158);
    sub_21770B864();
    v35 = *(*a14 + 16);
    sub_21770BB94(v35);

    sub_2171F06D8(&aBlock, &unk_27CB28A70, &qword_21775A158);
    sub_21726B8C4(&v40);
    v36 = *a14;
    *(v36 + 16) = v35 + 1;
    memcpy((v36 + 112 * v35 + 32), __src, 0x70uLL);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v44);

    return;
  }

  __break(1u);
}

void sub_2174EEB30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11)
{
  v42 = a8;
  v39 = a7;
  v41 = a9;
  v40 = a10;
  v16 = sub_217751968();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v38 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v45 = MEMORY[0x21CEA3980](v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_217759200;
  *(v23 + 32) = a4;
  *(v23 + 40) = a1;
  MEMORY[0x21CEA1CB0]();
  v24 = *(a6 + 8);
  swift_unknownObjectRetain();
  v24(&v46, a5, a6);
  v51 = v46;
  v52 = v47;
  *&v50[0] = &unk_28295BE78;
  v58[0] = 4;
  sub_2172B6904(a2, &v51, v50, v58, &v54);
  v43 = v17;
  v44 = v16;
  (*(v17 + 16))(v38, v22, v16);
  v25 = [v39 results];
  v26 = [v25 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v26;
  *&v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v24(&v51, a5, a6);
  v50[0] = v51;
  v50[1] = v52;
  v58[0] = 1;
  v27 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v55 + 1) = v27;
  *&v56 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v54 = v28;
  LOBYTE(v46) = v40;
  v30 = v41;
  v29 = v42;
  v31 = *(v41 + 24);
  *(&v52 + 1) = v42;
  v53 = v41;
  __swift_allocate_boxed_opaque_existential_0(&v51);

  v31(&v54, &v46, v29, v30);
  sub_2171FF30C(&v51, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v54 = v46;
    v55 = v47;
    v56 = v48;
    v57 = v49;
    sub_217275858(&v54, &v46);
    sub_21770B81C();
    v32 = *(*a11 + 16);
    sub_21770BB4C(v32);

    sub_2172758B4(&v54);
    (*(v43 + 8))(v22, v44);
    v33 = *a11;
    *(v33 + 16) = v32 + 1;
    v34 = v33 + 56 * v32;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    *(v34 + 80) = v49;
    *(v34 + 48) = v36;
    *(v34 + 64) = v37;
    *(v34 + 32) = v35;
  }

  else
  {
    (*(v43 + 8))(v22, v44);

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    sub_2171F06D8(&v46, &unk_27CB2ACC0, &qword_217758AA8);
  }

  __swift_destroy_boxed_opaque_existential_1(&v51);
  objc_autoreleasePoolPop(v45);
}

void sub_2174EEF80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11)
{
  v42 = a8;
  v39 = a7;
  v41 = a9;
  v40 = a10;
  v16 = sub_217751968();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v38 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v45 = MEMORY[0x21CEA3980](v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_217759200;
  *(v23 + 32) = a4;
  *(v23 + 40) = a1;
  MEMORY[0x21CEA1CB0]();
  v24 = *(a6 + 8);
  swift_unknownObjectRetain();
  v24(&v46, a5, a6);
  v50 = v46;
  v51 = v47;
  *&v49[0] = &unk_28295BEB8;
  v56[0] = 4;
  sub_2172B6904(a2, &v50, v49, v56, &v53);
  v43 = v17;
  v44 = v16;
  (*(v17 + 16))(v38, v22, v16);
  v25 = [v39 results];
  v26 = [v25 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v26;
  *&v48[0] = 0;
  v46 = 0u;
  v47 = 0u;
  v24(&v50, a5, a6);
  v49[0] = v50;
  v49[1] = v51;
  v56[0] = 1;
  v27 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v54 + 1) = v27;
  *&v55[0] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v53 = v28;
  LOBYTE(v46) = v40;
  v30 = v41;
  v29 = v42;
  v31 = *(v41 + 24);
  *(&v51 + 1) = v42;
  v52 = v41;
  __swift_allocate_boxed_opaque_existential_0(&v50);

  v31(&v53, &v46, v29, v30);
  sub_2171FF30C(&v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v53 = v46;
    v54 = v47;
    v55[0] = v48[0];
    *(v55 + 9) = *(v48 + 9);
    sub_217275710(&v53, &v46);
    sub_21770B78C();
    v32 = *(*a11 + 16);
    sub_21770BABC(v32);

    sub_21727576C(&v53);
    (*(v43 + 8))(v22, v44);
    v33 = *a11;
    *(v33 + 16) = v32 + 1;
    v34 = (v33 + (v32 << 6));
    v35 = v46;
    v36 = v47;
    v37 = v48[0];
    *(v34 + 73) = *(v48 + 9);
    v34[3] = v36;
    v34[4] = v37;
    v34[2] = v35;
  }

  else
  {
    (*(v43 + 8))(v22, v44);

    v47 = 0u;
    memset(v48, 0, 24);
    v46 = 0u;
    BYTE8(v48[1]) = -1;
    sub_2171F06D8(&v46, &unk_27CB28AA0, &qword_21775A020);
  }

  __swift_destroy_boxed_opaque_existential_1(&v50);
  objc_autoreleasePoolPop(v45);
}

uint64_t sub_2174EF3D8(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a2, a1);
  sub_2177529C8();

  return swift_unknownObjectRelease();
}

uint64_t sub_2174EF438(uint64_t a1)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  v5 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v3 + 16) = v4;
  *v4 = 0;
  *(v1 + 16) = v3;
  *(v1 + 40) = v5;
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 72) = *(a1 + 48);
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 513;
  return v1;
}

uint64_t sub_2174EF4C4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = a2;
  *(v3 + 96) = 0;
  *(v3 + 97) = a3 & 1;
  return v3;
}

uint64_t sub_2174EF54C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21775E030;
  KeyPath = swift_getKeyPath(byte_217770488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AB8, &qword_2177705A0);
  swift_allocObject();
  *(v0 + 32) = sub_217383700(KeyPath);
  v2 = swift_getKeyPath(byte_2177705A8);
  v3 = sub_2173827A4(v2, 25);

  *(v0 + 40) = v3;
  qword_280C01F90 = v0;
  return result;
}

uint64_t sub_2174EF614@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_2174EF66C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217770410;
  swift_getKeyPath(byte_217770520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28AB0, &qword_217770548);
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_12_5();
  *(v0 + 32) = sub_2173834C8(v1, 23);
  swift_getKeyPath(byte_217770550);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_12_5();
  *(v0 + 40) = sub_2173834C8(v2, 24);
  swift_getKeyPath(byte_217770578);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_12_5();
  result = sub_2173834C8(v3, 25);
  *(v0 + 48) = result;
  qword_280C02588 = v0;
  return result;
}

uint64_t sub_2174EF758(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2174EF7B0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_2174EF808@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_2174EF860(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    v4 = a2 | 4;
  }

  else
  {
    v4 = a2;
  }

  v5 = objc_allocWithZone(MusicKit_SoftLinking_MPModelPlaylistKind);

  return [v5 initWithVariants:a1 options:v4];
}

unint64_t sub_2174EF8BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177ABDA0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = qword_280BE93B8;

  if (v4 != -1)
  {
    swift_once();
  }

  if ((static AnyMusicProperty.== infix(_:_:)(qword_280C026D0, v3) & 1) == 0)
  {
    v5 = qword_280BE9390;

    if (v5 != -1)
    {
      swift_once();
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C026B0, v3);
    OUTLINED_FUNCTION_15_2();
    if ((v1 & 1) == 0)
    {
      v6 = qword_280BE9330;

      if (v6 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28220, &unk_21775E9E0);
      v7 = OUTLINED_FUNCTION_12_5();
      v9 = v8;
      static AnyMusicProperty.== infix(_:_:)(v7, v3);
      OUTLINED_FUNCTION_15_2();
      if ((v9 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177ABD70);
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_14:
          OUTLINED_FUNCTION_37_21("Fatal error");
          __break(1u);
        }
      }
    }
  }

  v10 = Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter();

  return v10;
}

uint64_t sub_2174EFB70(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 2424) = v4;
  *(v5 + 2416) = a4;
  *(v5 + 2408) = a2;
  *(v5 + 2400) = a1;
  *(v5 + 369) = *a3;
  OUTLINED_FUNCTION_35_1();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2174EFBB0()
{
  v1 = v0[301];
  v0[304] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
  v2 = swift_dynamicCastClass();
  v0[305] = v2;
  if (v2)
  {
    v3 = v0[300];
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[306] = v4;
    *v4 = v5;
    v4[1] = sub_2174EFD74;

    return sub_2176267F4((v0 + 266), 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    v0[293] = v7;
    v0[294] = v8;
    MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
    v0[299] = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177AF390);
    return OUTLINED_FUNCTION_37_21("Fatal error");
  }
}

uint64_t sub_2174EFD74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 2456) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174EFE6C()
{
  v47 = v0;
  v1 = qword_280BE91F0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 2432);
  static AnyMusicProperty.== infix(_:_:)(qword_280BE91F8, *(v0 + 2440));
  OUTLINED_FUNCTION_15_2();
  if (v2)
  {
    v3 = sub_2174EC78C(v0 + 1336);
    swift_getKeyPath(byte_217770488, v3);
    *(v0 + 2288) = &type metadata for Playlist;
    *(v0 + 2296) = &protocol witness table for Playlist;
    v4 = swift_allocObject();
    *(v0 + 2264) = v4;
    sub_2172757C0(v0 + 2128, v4 + 16);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 2264), &type metadata for Playlist);
    sub_21729C5E8((v5 + 2), v0 + 2304);
    __swift_project_boxed_opaque_existential_1((v0 + 2304), *(v0 + 2328));
    v6 = OUTLINED_FUNCTION_180_0();
    v7(v6);
    sub_21729C644(v0 + 2304);
    memcpy((v0 + 376), __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2264));
    v8 = *(v0 + 424);
    sub_217751DE8();
    sub_217269F50(v0 + 376);
    if (!v8)
    {
      sub_217751DE8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_968(v9);

    MEMORY[0x21CEA25D0](v10);
    v11 = *((*(v0 + 1408) & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((*(v0 + 1408) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
    {
      OUTLINED_FUNCTION_57(v11);
      sub_2177522F8();
    }

    v12 = *(v0 + 2416);
    sub_217752378();

    *(v0 + 1448) = 1;

    *(v0 + 1336) = v12;
    memcpy((v0 + 856), (v0 + 1336), 0x71uLL);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 2464) = v13;
    *v13 = v14;
    v13[1] = sub_2174F0508;
    v15 = v0 + 2376;
LABEL_23:

    return v45(v15);
  }

  v16 = qword_280BE91C0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 2432);
  static AnyMusicProperty.== infix(_:_:)(qword_280BE91C8, *(v0 + 2440));
  OUTLINED_FUNCTION_15_2();
  if (v17)
  {
    v18 = *(v0 + 369);
    v19 = sub_2174EC78C(v0 + 976);
    *(v0 + 1000) = v18;
    swift_getKeyPath(byte_217770488, v19);
    *(v0 + 2208) = &type metadata for Playlist;
    *(v0 + 2216) = &protocol witness table for Playlist;
    v20 = swift_allocObject();
    *(v0 + 2184) = v20;
    sub_2172757C0(v0 + 2128, v20 + 16);
    v21 = __swift_project_boxed_opaque_existential_1((v0 + 2184), &type metadata for Playlist);
    sub_21729C5E8((v21 + 2), v0 + 2224);
    __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
    v22 = OUTLINED_FUNCTION_180_0();
    v23(v22);
    sub_21729C644(v0 + 2224);
    memcpy((v0 + 16), __src, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2184));
    v24 = *(v0 + 64);
    sub_217751DE8();
    sub_217269F50(v0 + 16);
    if (!v24)
    {
      sub_217751DE8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_968(v25);

    MEMORY[0x21CEA25D0](v26);
    v27 = *((*(v0 + 1048) & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((*(v0 + 1048) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v27 >> 1)
    {
      OUTLINED_FUNCTION_57(v27);
      sub_2177522F8();
    }

    sub_217752378();

    *(v0 + 1088) = 1;
    if (qword_280BE91A0 != -1)
    {
      swift_once();
    }

    sub_2176CA4DC(qword_280C025B8, v28, v29, v30, v31, v32, v33, v34, v44, v45, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17]);
    if (LOBYTE(__src[0]) == 3)
    {
      KeyPath = swift_getKeyPath("Ph=e");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28A48, &qword_2177704F0);
      v36 = swift_allocObject();
      *(v36 + 16) = KeyPath;
      *(v36 + 24) = 0;

      MEMORY[0x21CEA25D0](v37);
      v38 = *((*(v0 + 1056) & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*(v0 + 1056) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
      {
        OUTLINED_FUNCTION_57(v38);
        sub_2177522F8();
      }

      sub_217752378();
    }

    v39 = *(v0 + 2416);

    *(v0 + 976) = v39;
    memcpy((v0 + 736), (v0 + 976), 0x71uLL);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 2480) = v40;
    *v40 = v41;
    v40[1] = sub_2174F07B4;
    v15 = v0 + 2360;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_40_20();
  sub_21726B8C4(v0 + 2128);
  sub_2171F06D8(v17, &unk_27CB28A10, &qword_21776B0A0);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  OUTLINED_FUNCTION_0_2();

  return v43();
}

uint64_t sub_2174F0498()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_40_20();
  sub_2171F06D8(v0, &unk_27CB28A10, &qword_21776B0A0);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2174F0508()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 2472) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174F0600()
{
  v16 = v0;
  sub_2172CED78(*(v0 + 2376), (v0 + 1808));

  if (*(v0 + 1896))
  {
    sub_217202078(v0 + 1808, v0 + 2024, &qword_27CB240D0, &unk_21775D400);
    sub_2171F06D8(v0 + 1808, &unk_27CB28A70, &qword_21775A158);
    memcpy(__dst, (v0 + 2024), sizeof(__dst));
  }

  else
  {
    sub_2171F06D8(v0 + 1808, &qword_27CB28A58, &qword_217770508);
    OUTLINED_FUNCTION_22_31();
    sub_2174AA1D8(MEMORY[0x277D84F90]);
    if (*(v0 + 2112))
    {
      sub_2171F06D8(v0 + 2024, &unk_27CB28A60, &qword_217770B60);
    }
  }

  v2 = *(v0 + 2400);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D0, &unk_21775D400);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_34_21(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  sub_21726B8C4(v0 + 2128);
  sub_2171F06D8(v2, &unk_27CB28A10, &qword_21776B0A0);
  *v2 = v1;
  v2[3] = v3;
  v2[4] = &protocol witness table for MusicItemCollection<A>;
  memcpy((v0 + 1576), (v0 + 1336), 0x71uLL);
  sub_2171F06D8(v0 + 1576, &qword_27CB28A50, &qword_217770500);
  OUTLINED_FUNCTION_0_2();

  return v12();
}

uint64_t sub_2174F07B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 2488) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174F08AC()
{
  v16 = v0;
  sub_2172CEDB0(*(v0 + 2360), (v0 + 1696));

  if (*(v0 + 1784))
  {
    sub_217202078(v0 + 1696, v0 + 1920, &unk_27CB2ACA0, &unk_217759C60);
    sub_2171F06D8(v0 + 1696, &qword_27CB28A40, &qword_21775A168);
    memcpy(__dst, (v0 + 1920), sizeof(__dst));
  }

  else
  {
    sub_2171F06D8(v0 + 1696, &qword_27CB28A28, &qword_2177704C0);
    OUTLINED_FUNCTION_22_31();
    sub_2174AA4C0(MEMORY[0x277D84F90]);
    if (*(v0 + 2008))
    {
      sub_2171F06D8(v0 + 1920, &unk_27CB28A30, &unk_21775E9C0);
    }
  }

  v2 = *(v0 + 2400);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_34_21(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  sub_21726B8C4(v0 + 2128);
  sub_2171F06D8(v2, &unk_27CB28A10, &qword_21776B0A0);
  *v2 = v1;
  v2[3] = v3;
  v2[4] = &protocol witness table for MusicItemCollection<A>;
  memcpy((v0 + 1216), (v0 + 976), 0x71uLL);
  sub_2171F06D8(v0 + 1216, &qword_27CB28A20, &qword_2177704B8);
  OUTLINED_FUNCTION_0_2();

  return v12();
}

uint64_t sub_2174F0A60()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_40_20();
  sub_21726B8C4(v1 + 2128);
  sub_2171F06D8(v0, &unk_27CB28A10, &qword_21776B0A0);
  memcpy((v1 + 1456), (v1 + 1336), 0x71uLL);
  sub_2171F06D8(v1 + 1456, &qword_27CB28A50, &qword_217770500);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2174F0B00()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_40_20();
  sub_21726B8C4(v1 + 2128);
  sub_2171F06D8(v0, &unk_27CB28A10, &qword_21776B0A0);
  memcpy((v1 + 1096), (v1 + 976), 0x71uLL);
  sub_2171F06D8(v1 + 1096, &qword_27CB28A20, &qword_2177704B8);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2174F0C04(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v4 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_217282D8C;

  return sub_2174EFB70(a1, a2, a3, a4);
}

uint64_t sub_2174F0CC0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    result = sub_217752D38();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      v5 = 2;
      goto LABEL_8;
    }
  }

  if (a2 >> 62)
  {
    result = sub_217752D38();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v5 = 3;
LABEL_8:
  sub_2173546F8(result, a2, a3);
  swift_allocError();
  *v6 = v5;
  return swift_willThrow();
}

uint64_t block_copy_helper_27_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double OUTLINED_FUNCTION_11_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _OWORD *a11)
{
  *(v12 + 304) = v11;
  *(v12 + 312) = 1;
  result = 0.0;
  *a11 = 0u;
  a11[1] = 0u;
  *(v12 + 392) = v14;
  *(v12 + 400) = v13;
  return result;
}

double OUTLINED_FUNCTION_22_31()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

void *OUTLINED_FUNCTION_34_21(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v10 = (a1 + 16);

  return memcpy(v10, __srca, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_40_20()
{
}

uint64_t sub_2174F0F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_217270790();
  if (v12)
  {
    sub_217270790();
    if (v13)
    {
      if (a4)
      {
        if (a8)
        {
          v14 = a3 == a7 && a4 == a8;
          if (v14 || (sub_217753058() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2174F1020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217281100();
  sub_217281100();
  if (!a5)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2174F10A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2177531E8();
  sub_217281100();
  sub_217281100();
  sub_217753208();
  if (a4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_2174F116C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_2177531E8();
  sub_2174F1020(v7, v2, v3, v5, v4);
  return sub_217753238();
}

uint64_t sub_2174F11C8()
{
  v1 = [v0 preferredLocalizations];
  v2 = sub_217752298();

  v3 = [v0 localizations];
  sub_217752298();

  sub_2174F1424(v0);
  return v2;
}