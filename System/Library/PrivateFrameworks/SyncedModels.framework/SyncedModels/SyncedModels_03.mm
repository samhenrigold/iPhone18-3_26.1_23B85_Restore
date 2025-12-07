void sub_26C42A780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C46C474();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26C42A808(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_26C46BAE4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_26C46BB54();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_26C42A990(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for OwnershipChangeRequestMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_26C46BAE4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_26C46BB54();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_26C42AB24(uint64_t a1)
{
  result = type metadata accessor for OwnershipChangeRequestMessage(319);
  if (v2 <= 0x3F)
  {
    result = sub_26C42ABD8();
    if (v3 <= 0x3F)
    {
      result = sub_26C46BAE4();
      if (v4 <= 0x3F)
      {
        result = sub_26C46BB54();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_26C42ABD8()
{
  result = qword_280497B60;
  if (!qword_280497B60)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280497B60);
  }

  return result;
}

uint64_t sub_26C42AC28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C42AC74(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t sub_26C42ACD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C46BAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26C42AD98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26C46BAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_26C42AE3C(uint64_t a1)
{
  result = sub_26C42ABD8();
  if (v2 <= 0x3F)
  {
    result = sub_26C46BAE4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26C42AEC0(char *a1, uint64_t a2)
{
  v88 = a1;
  v3 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  MEMORY[0x28223BE20](v3);
  v87 = (&v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v73 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v73 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - v14;
  v16 = type metadata accessor for PBUUID(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v78 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v73 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = (&v73 - v23);
  v86 = sub_26C46BB54();
  v89 = *(v86 - 8);
  v25 = MEMORY[0x28223BE20](v86);
  v77 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v73 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v73 - v30;
  v32 = type metadata accessor for OwnershipChangeRequestMessage(0);
  MEMORY[0x28223BE20](v32 - 8);
  v83 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_26C46BCD4();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = v3;
  v81 = (&v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v3 + 36);
  v85 = a2;
  sub_26C3DDD48(a2 + v35, v15, &qword_280497458, &unk_26C46D3F0);
  v36 = *(v17 + 48);
  if (v36(v15, 1, v16) == 1)
  {
    *v24 = 0;
    v24[1] = 0;
    sub_26C46BD14();
    if (v36(v15, 1, v16) != 1)
    {
      sub_26C3DE270(v15, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v15, v24, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v24, type metadata accessor for PBUUID);
  v37 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingHandoffReply;
  v38 = v88;
  swift_beginAccess();
  v39 = *&v38[v37];
  if (*(v39 + 16))
  {

    v40 = sub_26C42C210(v31);
    if (v41)
    {
      sub_26C3DDD48(*(v39 + 56) + *(v73 + 72) * v40, v8, &qword_280497330, &unk_26C46D120);
      v42 = *(v89 + 8);
      v43 = v31;
      v44 = v86;
      v89 += 8;
      v87 = v42;
      (v42)(v43, v86);

      v45 = *(v74 + 48);
      (*(v82 + 32))(v81, v8, v84);
      sub_26C42B9BC(&v8[v45], v83, type metadata accessor for OwnershipChangeRequestMessage);
      v46 = v75;
      sub_26C3DDD48(v85 + v35, v75, &qword_280497458, &unk_26C46D3F0);
      if (v36(v46, 1, v16) == 1)
      {
        *v22 = 0;
        v22[1] = 0;
        sub_26C46BD14();
        if (v36(v46, 1, v16) != 1)
        {
          sub_26C3DE270(v46, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        sub_26C42B9BC(v46, v22, type metadata accessor for PBUUID);
      }

      sub_26C40F3CC();
      sub_26C42BA24(v22, type metadata accessor for PBUUID);
      swift_beginAccess();
      v66 = v76;
      sub_26C42CAFC(v29, v76);
      (v87)(v29, v44);
      sub_26C3DE270(v66, &qword_280497328, &qword_26C46E550);
      swift_endAccess();
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v67 = sub_26C46BFA4();
      __swift_project_value_buffer(v67, qword_280498530);
      v68 = sub_26C46BF84();
      v69 = sub_26C46C404();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_26C3D6000, v68, v69, "SyncedModel: Ownership handoff request timed out", v70, 2u);
        MEMORY[0x26D6A18D0](v70, -1, -1);
      }

      v71 = v83;
      v72 = v81;
      sub_26C41AC88(v83, v81, 5, 1);
      sub_26C42BA24(v71, type metadata accessor for OwnershipChangeRequestMessage);
      (*(v82 + 8))(v72, v84);
      return;
    }
  }

  v48 = v89 + 8;
  v47 = *(v89 + 8);
  v49 = v31;
  v50 = v86;
  (v47)(v49, v86);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v51 = sub_26C46BFA4();
  __swift_project_value_buffer(v51, qword_280498530);
  v52 = v87;
  sub_26C42C130(v85, v87, type metadata accessor for OwnershipHandoffRequestMessage);
  v53 = sub_26C46BF84();
  v54 = sub_26C46C404();
  if (os_log_type_enabled(v53, v54))
  {
    v88 = v47;
    v89 = v48;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v52;
    v58 = v56;
    v90[0] = v56;
    *v55 = 136315138;
    v59 = v79;
    sub_26C3DDD48(v57 + *(v80 + 36), v79, &qword_280497458, &unk_26C46D3F0);
    if (v36(v59, 1, v16) == 1)
    {
      v60 = v78;
      *v78 = 0;
      v60[1] = 0;
      sub_26C46BD14();
      if (v36(v59, 1, v16) != 1)
      {
        sub_26C3DE270(v59, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v60 = v78;
      sub_26C42B9BC(v59, v78, type metadata accessor for PBUUID);
    }

    v61 = v77;
    sub_26C40F3CC();
    sub_26C42BA24(v60, type metadata accessor for PBUUID);
    v62 = sub_26C46BB04();
    v64 = v63;
    (v88)(v61, v50);
    sub_26C42BA24(v87, type metadata accessor for OwnershipHandoffRequestMessage);
    v65 = sub_26C3E80A8(v62, v64, v90);

    *(v55 + 4) = v65;
    _os_log_impl(&dword_26C3D6000, v53, v54, "SyncedModel: Ownership request has been handled or failed to find ownership request for handoff timeout: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x26D6A18D0](v58, -1, -1);
    MEMORY[0x26D6A18D0](v55, -1, -1);
  }

  else
  {

    sub_26C42BA24(v52, type metadata accessor for OwnershipHandoffRequestMessage);
  }
}

uint64_t sub_26C42B9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C42BA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_26C42BA84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BE0, &unk_26C46E5C8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C42BB90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497C08, &qword_26C46E608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_26C42BCE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BF8, &qword_26C46E5E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_26C42BE38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_26C42C014(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26C42C110(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26C42C130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C42C198@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26C42C1C8(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x26D6A1200](*(v1 + 40), a1, 4);

  return sub_26C42C364(v2, v3);
}

unint64_t sub_26C42C210(uint64_t a1)
{
  sub_26C46BB54();
  sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_26C46C1A4();

  return sub_26C42C3D0(a1, v2);
}

unint64_t sub_26C42C2A8(uint64_t a1, uint64_t a2)
{
  sub_26C46C814();
  sub_26C46C1E4();
  v4 = sub_26C46C844();

  return sub_26C42C590(a1, a2, v4);
}

unint64_t sub_26C42C320(uint64_t a1)
{
  v2 = sub_26C46C804();

  return sub_26C42C648(a1, v2);
}

unint64_t sub_26C42C364(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26C42C3D0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26C46BB54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_26C46C1C4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_26C42C590(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26C46C764())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26C42C648(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double sub_26C42C6B4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_26C42C210(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42E470();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_26C46BB54();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_26C42CFE0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_26C46E260;
  }

  return result;
}

uint64_t sub_26C42C790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26C42C210(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42E878();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26C46BB54();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_26C46BCD4();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_26C42D7B0(v7, v9, MEMORY[0x277CCB248]);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_26C46BCD4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_26C42C948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26C42C210(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42F240();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26C46BB54();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for CachedOwnershipRequest(0);
    v20 = *(v13 - 8);
    sub_26C42B9BC(v12 + *(v20 + 72) * v7, a2, type metadata accessor for CachedOwnershipRequest);
    sub_26C42D7B0(v7, v9, type metadata accessor for CachedOwnershipRequest);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CachedOwnershipRequest(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_26C42CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26C42C210(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42F56C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26C46BB54();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
    v20 = *(v13 - 8);
    sub_26C3DDC70(v12 + *(v20 + 72) * v7, a2);
    sub_26C42DB00(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_26C42CC9C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C46C4A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x26D6A1200](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C42CE30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C46C4A4() + 1) & ~v5;
    do
    {
      sub_26C46C814();

      sub_26C46C1E4();
      v9 = sub_26C46C844();

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

unint64_t sub_26C42CFE0(int64_t a1, uint64_t a2)
{
  v40 = sub_26C46BB54();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_26C46C4A4();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_26C46C1A4();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_26C42D300(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C46C4A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_26C46C804();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 8 * v3;
      if (v3 < v6 || result >= v15 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C42D490(int64_t a1, uint64_t a2)
{
  v40 = sub_26C46BB54();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_26C46C4A4();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_26C46C1A4();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_26C42D7B0(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_26C46BB54();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_26C46C4A4();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_26C46C1A4();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C42DB00(int64_t a1, uint64_t a2)
{
  v4 = sub_26C46BB54();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_26C46C4A4();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_26C46C1A4();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C42DE50(int64_t a1, uint64_t a2)
{
  v41 = sub_26C46BB54();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_26C46C4A4();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = (v12 + 1) & v11;
    v39 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v39(v40, *(v6 + 48) + v17 * v10, v13);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_26C46C1A4();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 24 * a1;
          v30 = (v28 + 24 * v10);
          if (a1 != v10 || v29 >= v30 + 24)
          {
            v31 = *v30;
            *(v29 + 16) = *(v30 + 2);
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

void *sub_26C42E174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497380, &unk_26C46D170);
  v2 = *v0;
  v3 = sub_26C46C604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 4 * v17);
        sub_26C3DE190(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 4 * v17) = v18;
        result = sub_26C3DE0D8(v19, *(v4 + 56) + 16 * v17);
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

  return result;
}

void *sub_26C42E2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497388, &qword_26C46D740);
  v2 = *v0;
  v3 = sub_26C46C604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

  return result;
}

char *sub_26C42E470()
{
  v1 = v0;
  v2 = sub_26C46BB54();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497360, &unk_26C46D150);
  v5 = *v0;
  v6 = sub_26C46C604();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        result = sub_26C3DDDB0(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_26C42E6FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497370, &unk_26C46D160);
  v2 = *v0;
  v3 = sub_26C46C604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_26C3DDFB4(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_26C3DDEFC(v19, *(v4 + 56) + v17);
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

  return result;
}

char *sub_26C42E878()
{
  v1 = v0;
  v41 = sub_26C46BCD4();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_26C46BB54();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497320, &unk_26C46D110);
  v4 = *v0;
  v5 = sub_26C46C604();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_26C42EBCC()
{
  v1 = v0;
  v33 = sub_26C46BB54();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497350, &unk_26C46D140);
  v3 = *v0;
  v4 = sub_26C46C604();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_26C42EE4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  v2 = *v0;
  v3 = sub_26C46C604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_26C3DDDB0(v18, *(&v18 + 1));
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

  return result;
}

char *sub_26C42EFB4()
{
  v1 = v0;
  v35 = sub_26C46BB54();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
  v3 = *v0;
  v4 = sub_26C46C604();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_26C42F240()
{
  v1 = v0;
  v2 = type metadata accessor for CachedOwnershipRequest(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_26C46BB54();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497310, &qword_26C46E540);
  v5 = *v0;
  v6 = sub_26C46C604();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_26C42C130(*(v5 + 56) + v26, v35, type metadata accessor for CachedOwnershipRequest);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_26C42B9BC(v25, *(v27 + 56) + v26, type metadata accessor for CachedOwnershipRequest);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_26C42F56C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_26C46BB54();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497338, &unk_26C46D700);
  v5 = *v0;
  v6 = sub_26C46C604();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_26C3DDD48(*(v5 + 56) + v26, v35, &qword_280497330, &unk_26C46D120);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_26C3DDC70(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_26C42F888()
{
  v1 = v0;
  v39 = sub_26C46BB54();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497358, &unk_26C46E5F0);
  v3 = *v0;
  v4 = sub_26C46C604();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v22 = v38;
        v21 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v23 = 24 * v18;
        v24 = (*(v3 + 56) + 24 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v40;
        (*(v19 + 32))(*(v40 + 48) + v20, v22, v21);
        v29 = *(v28 + 56);
        v3 = v37;
        v30 = (v29 + v23);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v27;

        v14 = v36;
        v13 = v42;
      }

      while (v42);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_26C42FB34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497BA8, &unk_26C46E580, type metadata accessor for ModelData.PropertyDataMap);
  *v3 = result;
  return result;
}

void *sub_26C42FB78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497BC0, &unk_26C46E5A0, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
  *v3 = result;
  return result;
}

void *sub_26C42FBBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C42FCA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26C42FBDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C42FDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26C42FBFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497BE8, &qword_26C46E5D8, type metadata accessor for LamportTimestamp);
  *v3 = result;
  return result;
}

char *sub_26C42FC40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C42FFDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26C42FC60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497668, &unk_26C46E530, MEMORY[0x277CCB248]);
  *v3 = result;
  return result;
}

void *sub_26C42FCA4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BB0, &qword_26C46E590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BB8, &qword_26C46E598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C42FDEC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BA0, &unk_26C46E570);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010) - 8);
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

char *sub_26C42FFDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BE0, &unk_26C46E5C8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C430110(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26C4302EC(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v16 = sub_26C46C874();
  v15 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = swift_getObjectType();
  *&v24 = a1;
  swift_unknownObjectRetain();
  sub_26C46C854();
  v14 = v4;
  sub_26C46C864();
  sub_26C46C5A4();

  v17 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  sub_26C46C644();
  if (!v26)
  {
LABEL_8:

    *&v24 = *(v18 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status);
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497C10, &qword_26C46E610);
    sub_26C3FBC1C(&qword_280497C18, &qword_280497C10, &qword_26C46E610, MEMORY[0x277CBCE48]);
    sub_26C46C094();

    swift_beginAccess();
    sub_26C46BFC4();
    swift_endAccess();

    return (*(v15 + 8))(v14, v16);
  }

  v5 = 1;
  while (1)
  {
    v22 = v24;
    sub_26C413118(&v25, &v23);
    sub_26C3DDD48(&v22, v21, &qword_280497C20, &qword_26C46E618);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AE0, "|8");
    if (swift_dynamicCast())
    {
      break;
    }

    sub_26C3DE270(&v22, &qword_280497C20, &qword_26C46E618);
LABEL_4:
    sub_26C46C644();
    if (!v26)
    {
      goto LABEL_8;
    }
  }

  v6 = v19;
  v7 = v20;
  v8 = *v19;
  v9 = *(*v19 + 152);

  v9(v10);

  (*(*v6 + 200))(v5);
  v20 = v7;
  swift_weakInit();
  swift_beginAccess();
  sub_26C3D888C(&v19, v5);
  swift_endAccess();
  (*(v7 + 32))(v8, v7);

  result = sub_26C3DE270(&v22, &qword_280497C20, &qword_26C46E618);
  v12 = __CFADD__(v5, 1);
  v5 = (v5 + 1);
  if (!v12)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C43076C(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  sub_26C46BB44();
  v3 = a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  v5 = MEMORY[0x277D84F90];
  *(a2 + v4) = sub_26C3E8650(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
  v7 = type metadata accessor for SyncTransactionMessage(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock;
  sub_26C46BBB4();
  swift_allocObject();
  *(a2 + v8) = sub_26C46BBA4();
  sub_26C46BB44();
  v9 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  *(a2 + v9) = sub_26C3E876C(v5);
  v10 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
  v11 = sub_26C46BCD4();
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  v13 = sub_26C46BB54();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = (a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
  *v14 = 0;
  v14[1] = 0;
  *(a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = 0;
  if (v5 >> 62 && sub_26C46C5F4())
  {
    v15 = sub_26C3FCD9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_cancellables) = v15;
  v16 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
  v17 = type metadata accessor for PendingOwnershipRequest(0);
  (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
  v19 = MEMORY[0x277D84F90];
  *(a2 + v18) = sub_26C3E898C(MEMORY[0x277D84F90]);
  v20 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingHandoffReply;
  *(a2 + v20) = sub_26C3E8BA8(v19);
  v21 = (a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497C10, &qword_26C46E610);
  swift_allocObject();
  *(a2 + v22) = sub_26C46C044();
  v23 = swift_unknownObjectRetain();
  sub_26C4302EC(v23, a2);
  swift_unknownObjectRelease();
  return a2;
}

unint64_t sub_26C430A54(unint64_t result, int64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v12 > v8[3] >> 1)
  {
    if (v9 <= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v9;
    }

    v8 = sub_26C42BE38(isUniquelyReferenced_nonNull_native, v18, 1, v8, a3, a4, a5);
    *v6 = v8;
  }

  result = sub_26C430B44(v10, a2, 0, a6);
  *v6 = v8;
  return result;
}

unint64_t sub_26C430B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26C430C90()
{
  v1 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  v14 = v0;
  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = v1[7];
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 8);
  v6(v3 + v4, v5);
  v7 = v3 + v1[8];
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v7, 1, v8))
  {
    v6(v7 + *(v8 + 24), v5);
  }

  v10 = v3 + v1[9];
  if (!v9(v10, 1, v8))
  {
    v6(v10 + *(v8 + 24), v5);
  }

  v11 = v3 + v1[10];
  if (!v9(v11, 1, v8))
  {
    v6(v11 + *(v8 + 24), v5);
  }

  return MEMORY[0x2821FE8E8](v14, ((v2 + 24) & ~v2) + v13, v2 | 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C430EC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C430EFC()
{
  v1 = *(v0 + 16);
  v3 = 0;
  return v1(&v3);
}

uint64_t sub_26C430F34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C430F74()
{
  v1 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  v14 = v0;
  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = v1[6];
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 8);
  v6(v3 + v4, v5);
  v7 = v3 + v1[7];
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v7, 1, v8))
  {
    v6(v7 + *(v8 + 24), v5);
  }

  v10 = v3 + v1[8];
  if (!v9(v10, 1, v8))
  {
    v6(v10 + *(v8 + 24), v5);
  }

  v11 = v3 + v1[9];
  if (!v9(v11, 1, v8))
  {
    v6(v11 + *(v8 + 24), v5);
  }

  return MEMORY[0x2821FE8E8](v14, ((v2 + 24) & ~v2) + v13, v2 | 7);
}

uint64_t sub_26C431190(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_26C431280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s12SyncedModels15SyncedModelTypeOwet_0(uint64_t a1, int a2)
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

uint64_t _s12SyncedModels15SyncedModelTypeOwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_26C4313F4(uint64_t a1)
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

uint64_t sub_26C431410(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_26C431454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C431598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C4316E8(uint64_t a1)
{
  sub_26C431884(319, &qword_280497C70, type metadata accessor for PropertyChangedMessage, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C78, type metadata accessor for SetChangedMessage, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497C80, type metadata accessor for DictionaryChangedMessage, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26C46BD24();
        if (v4 <= 0x3F)
        {
          sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C431884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26C43195C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C431AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C431BD0(uint64_t a1)
{
  sub_26C431D48(319, &qword_280497C98, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_26C431D48(319, &qword_280497CA0, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26C46BD24();
        if (v4 <= 0x3F)
        {
          sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C431D48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26C46C2E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26C431E04(uint64_t a1)
{
  sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26C46BD24();
    if (v2 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C431F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26C46BD24();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26C432054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26C43217C(uint64_t a1)
{
  sub_26C431884(319, &qword_280497CD0, type metadata accessor for SyncMessage.OneOf_Contents, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26C46BD24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C4322A0(uint64_t a1)
{
  result = type metadata accessor for SyncTransactionMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CatchupRequestMessage(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CatchupResponseMessage(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for OwnershipChangeRequestMessage(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for OwnershipChangeReplyMessage(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for OwnershipChangeBroadcastMessage(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for OwnershipHandoffRequestMessage(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for OwnershipHandoffReplyMessage(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C432460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_26C46BD24();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_26C4325A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v8 = sub_26C46BD24();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26C4326F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26C432804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

void sub_26C43291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26C46BD24();
  if (v4 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C4329FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_26C46BD24();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_26C432B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C432C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26C46BD24();
  if (v5 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

void sub_26C432F88(uint64_t a1)
{
  sub_26C46BD24();
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C433088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_26C46BD24();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26C433148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v7 = sub_26C46BD24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C4331E8(uint64_t a1)
{
  result = sub_26C46BD24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C43328C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BD24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26C43330C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BD24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26C43337C(uint64_t a1)
{
  result = sub_26C46BD24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26C433438(uint64_t a1)
{
  sub_26C46BD24();
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C433510(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26C46BD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_26C433678(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26C46BD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_26C4337D8(uint64_t a1)
{
  sub_26C46BD24();
  if (v1 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497D68, type metadata accessor for ValueData, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C4338F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_26C46BD24();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_26C433984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_26C46BD24();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_26C433A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26C433B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

unint64_t sub_26C433C88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_26C433CA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26C433CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4554DC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_26C433D3C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26C433D54()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_26C433D70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_26C433D8C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_26C433DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C455530();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_26C433DF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

void sub_26C433E44(uint64_t a1@<X8>)
{
  sub_26C4555D8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_26C433E78(uint64_t a2@<X8>)
{
  sub_26C4555D8();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_26C433EB0(uint64_t a1, uint64_t a2)
{
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

uint64_t sub_26C433F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C455584();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26C433F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

unint64_t sub_26C433FF0()
{
  result = qword_280497D90;
  if (!qword_280497D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497D90);
  }

  return result;
}

unint64_t sub_26C434048()
{
  result = qword_280497D98;
  if (!qword_280497D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497D98);
  }

  return result;
}

unint64_t sub_26C4340A0()
{
  result = qword_280497DA0;
  if (!qword_280497DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DA0);
  }

  return result;
}

unint64_t sub_26C43410C()
{
  result = qword_280497DA8;
  if (!qword_280497DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DA8);
  }

  return result;
}

unint64_t sub_26C434164()
{
  result = qword_280497DB0;
  if (!qword_280497DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DB0);
  }

  return result;
}

unint64_t sub_26C4341BC()
{
  result = qword_280497DB8;
  if (!qword_280497DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DB8);
  }

  return result;
}

unint64_t sub_26C434214()
{
  result = qword_280497DC0;
  if (!qword_280497DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DC0);
  }

  return result;
}

unint64_t sub_26C43426C()
{
  result = qword_280497DC8;
  if (!qword_280497DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DC8);
  }

  return result;
}

unint64_t sub_26C4342C4()
{
  result = qword_280497DD0;
  if (!qword_280497DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DD0);
  }

  return result;
}

uint64_t sub_26C434318()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498658);
  __swift_project_value_buffer(v0, qword_280498658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E620;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unregistered";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Dynamic";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43454C()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498670);
  __swift_project_value_buffer(v0, qword_280498670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Release";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C434738()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498688);
  __swift_project_value_buffer(v0, qword_280498688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26C46E640;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "Invalid";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26C46BF44();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RequestSuccessfulWasUnowned";
  *(v9 + 8) = 27;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RequestSuccessfulOwnerHandedOff";
  *(v11 + 1) = 31;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RequestFailedOwnerRefusedHandoff";
  *(v13 + 1) = 32;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "RequestFailedUnknownOwner";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "RequestFailedHandoffTimedOut";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ReleaseSuccessful";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ReleaseFailedNotOwner";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "NotAuthority";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  return sub_26C46BF54();
}

uint64_t sub_26C434ADC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986A0);
  __swift_project_value_buffer(v0, qword_2804986A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "high";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "low";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C434CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_26C46BE24();
    }
  }

  return result;
}

uint64_t sub_26C434D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_26C46BF24(), !v4))
  {
    if (!v3[1] || (result = sub_26C46BF24(), !v4))
    {
      type metadata accessor for PBUUID(0);
      return sub_26C46BD04();
    }
  }

  return result;
}

uint64_t sub_26C434DC8@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  return sub_26C46BD14();
}

uint64_t sub_26C434E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804980A8, type metadata accessor for PBUUID, &unk_26C4709D4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C434EF4(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C434F60(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);

  return sub_26C46BE84();
}

uint64_t sub_26C434FDC(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C43508C()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986B8);
  __swift_project_value_buffer(v0, qword_2804986B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sourcePB";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C435254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C445DEC(a1, v5, a2, a3, type metadata accessor for LamportTimestamp);
    }

    else if (result == 2)
    {
      sub_26C46BE04();
    }
  }

  return result;
}

uint64_t sub_26C4352F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PBUUID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for LamportTimestamp(0) + 24);
  v15 = v3;
  sub_26C3DDD48(v3 + v11, v6, &qword_280497458, &unk_26C46D3F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26C3DE270(v6, &qword_280497458, &unk_26C46D3F0);
    v12 = v18;
  }

  else
  {
    sub_26C453E5C(v6, v10, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v12 = v18;
    sub_26C46BF34();
    result = sub_26C453DFC(v10, type metadata accessor for PBUUID);
    if (v12)
    {
      return result;
    }
  }

  if (!*v15)
  {
    return sub_26C46BD04();
  }

  result = sub_26C46BF04();
  if (!v12)
  {
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C435568@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_26C46BD14();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PBUUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_26C435664(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804980B8, type metadata accessor for LamportTimestamp, &unk_26C47086C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C435708(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C435778(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);

  return sub_26C46BE84();
}

uint64_t sub_26C4357FC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986D0);
  __swift_project_value_buffer(v0, qword_2804986D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E650;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "syncTransaction";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "catchupRequest";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "catchupResponse";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ownershipChangeRequest";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ownershipChangeReply";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ownershipChangeBroadcast";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ownershipHandoffRequest";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ownershipHandoffReply";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C435B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_26C437D24(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_26C438288(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_26C43725C(v5, a1, a2, a3);
      }

      else
      {
        sub_26C4377C0(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_26C436794(v5, a1, a2, a3);
      }

      else
      {
        sub_26C436CF8(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_26C435CD0(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_26C436230(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_26C435CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for SyncTransactionMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_280497B90, &qword_26C46E548);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }

    else
    {
      sub_26C3DE270(v24, &qword_280497B90, &qword_26C46E548);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for SyncTransactionMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for SyncTransactionMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }
  }

  sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage, &unk_26C4705D4);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_280497B90, &qword_26C46E548);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for SyncTransactionMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for SyncTransactionMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_280497B90, &qword_26C46E548);
}

uint64_t sub_26C436230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for CatchupRequestMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980D0, &qword_26C470BE0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_2804980D0, &qword_26C470BE0);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26C3DE270(v24, &qword_2804980D0, &qword_26C470BE0);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for CatchupRequestMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for CatchupRequestMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }

    else
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }
  }

  sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage, &unk_26C47046C);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_2804980D0, &qword_26C470BE0);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for CatchupRequestMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for CatchupRequestMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_2804980D0, &qword_26C470BE0);
}

uint64_t sub_26C436794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for CatchupResponseMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980D8, &qword_26C470BE8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_2804980D8, &qword_26C470BE8);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26C3DE270(v24, &qword_2804980D8, &qword_26C470BE8);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for CatchupResponseMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for CatchupResponseMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }

    else
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }
  }

  sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage, &unk_26C470304);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_2804980D8, &qword_26C470BE8);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for CatchupResponseMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for CatchupResponseMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_2804980D8, &qword_26C470BE8);
}

uint64_t sub_26C436CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980E0, &qword_26C470BF0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_2804980E0, &qword_26C470BF0);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26C3DE270(v24, &qword_2804980E0, &qword_26C470BF0);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for OwnershipChangeRequestMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for OwnershipChangeRequestMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }

    else
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }
  }

  sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage, &unk_26C47019C);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_2804980E0, &qword_26C470BF0);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for OwnershipChangeRequestMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for OwnershipChangeRequestMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_2804980E0, &qword_26C470BF0);
}

uint64_t sub_26C43725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980E8, &qword_26C470BF8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_2804980E8, &qword_26C470BF8);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26C3DE270(v24, &qword_2804980E8, &qword_26C470BF8);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for OwnershipChangeReplyMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for OwnershipChangeReplyMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }

    else
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }
  }

  sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage, &unk_26C470034);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_2804980E8, &qword_26C470BF8);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for OwnershipChangeReplyMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for OwnershipChangeReplyMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_2804980E8, &qword_26C470BF8);
}

uint64_t sub_26C4377C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980F0, &qword_26C470C00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_2804980F0, &qword_26C470C00);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26C3DE270(v24, &qword_2804980F0, &qword_26C470C00);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for OwnershipChangeBroadcastMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for OwnershipChangeBroadcastMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }

    else
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }
  }

  sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage, &unk_26C46FECC);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_2804980F0, &qword_26C470C00);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for OwnershipChangeBroadcastMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for OwnershipChangeBroadcastMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_2804980F0, &qword_26C470C00);
}

uint64_t sub_26C437D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980F8, &qword_26C470C08);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_2804980F8, &qword_26C470C08);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26C3DE270(v24, &qword_2804980F8, &qword_26C470C08);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for OwnershipHandoffRequestMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for OwnershipHandoffRequestMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }

    else
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }
  }

  sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage, &unk_26C46FD64);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_2804980F8, &qword_26C470C08);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for OwnershipHandoffRequestMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for OwnershipHandoffRequestMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_2804980F8, &qword_26C470C08);
}

uint64_t sub_26C438288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a2;
  v5 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498100, &qword_26C470C10);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v42 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v36 = v25;
  v25(&v36 - v23, 1, 1, v5);
  v40 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497650, &unk_26C46D930);
  v38 = v14;
  v26 = *(v14 + 48);
  v43 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497650, &unk_26C46D930);
    v27 = v44;
    v28 = v46;
  }

  else
  {
    sub_26C453E5C(v12, v19, type metadata accessor for SyncMessage.OneOf_Contents);
    v34 = v46;
    sub_26C46BD94();
    v28 = v34;
    if (v34)
    {
      sub_26C453DFC(v19, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v24, &qword_280498100, &qword_26C470C10);
    }

    sub_26C453E5C(v19, v17, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26C3DE270(v24, &qword_280498100, &qword_26C470C10);
      v35 = v37;
      sub_26C453E5C(v17, v37, type metadata accessor for OwnershipHandoffReplyMessage);
      sub_26C453E5C(v35, v24, type metadata accessor for OwnershipHandoffReplyMessage);
      v27 = v44;
      v36(v24, 0, 1, v44);
    }

    else
    {
      sub_26C453DFC(v17, type metadata accessor for SyncMessage.OneOf_Contents);
      v27 = v44;
    }
  }

  sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage, &unk_26C46FBFC);
  sub_26C46BE34();
  if (!v28)
  {
    v29 = v24;
    v24 = v41;
    sub_26C3E9F28(v29, v41, &qword_280498100, &qword_26C470C10);
    if ((*(v42 + 48))(v24, 1, v27) != 1)
    {
      v30 = v39;
      sub_26C453E5C(v24, v39, type metadata accessor for OwnershipHandoffReplyMessage);
      v31 = v40;
      sub_26C3DE270(v40, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v30, v31, type metadata accessor for OwnershipHandoffReplyMessage);
      v32 = v43;
      swift_storeEnumTagMultiPayload();
      return (*(v38 + 56))(v31, 0, 1, v32);
    }
  }

  return sub_26C3DE270(v24, &qword_280498100, &qword_26C470C10);
}

uint64_t sub_26C4387EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_26C3DDD48(v3, &v14 - v9, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_26C43979C(v3, a1, a2, a3);
      }

      else
      {
        sub_26C4399D4(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_26C43932C(v3, a1, a2, a3);
    }

    else
    {
      sub_26C439564(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C438EBC(v3, a1, a2, a3);
    }

    else
    {
      sub_26C4390F4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_26C438C84(v3, a1, a2, a3);
  }

  else
  {
    sub_26C438A50(v3, a1, a2, a3);
  }

  result = sub_26C453DFC(v10, type metadata accessor for SyncMessage.OneOf_Contents);
  if (!v4)
  {
LABEL_18:
    type metadata accessor for SyncMessage(0);
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C438A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for SyncTransactionMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_26C453E5C(v7, v10, type metadata accessor for SyncTransactionMessage);
    sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage, &unk_26C4705D4);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for SyncTransactionMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C438C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CatchupRequestMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C453E5C(v7, v10, type metadata accessor for CatchupRequestMessage);
    sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage, &unk_26C47046C);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for CatchupRequestMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C438EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CatchupResponseMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C453E5C(v7, v10, type metadata accessor for CatchupResponseMessage);
    sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage, &unk_26C470304);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for CatchupResponseMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C4390F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for OwnershipChangeRequestMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_26C453E5C(v7, v10, type metadata accessor for OwnershipChangeRequestMessage);
    sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage, &unk_26C47019C);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for OwnershipChangeRequestMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C43932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for OwnershipChangeReplyMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_26C453E5C(v7, v10, type metadata accessor for OwnershipChangeReplyMessage);
    sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage, &unk_26C470034);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for OwnershipChangeReplyMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C439564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_26C453E5C(v7, v10, type metadata accessor for OwnershipChangeBroadcastMessage);
    sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage, &unk_26C46FECC);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for OwnershipChangeBroadcastMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C43979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_26C453E5C(v7, v10, type metadata accessor for OwnershipHandoffRequestMessage);
    sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage, &unk_26C46FD64);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for OwnershipHandoffRequestMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C4399D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v7, &qword_280497650, &unk_26C46D930);
  v11 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_26C3DE270(v7, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_26C453E5C(v7, v10, type metadata accessor for OwnershipHandoffReplyMessage);
    sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage, &unk_26C46FBFC);
    sub_26C46BF34();
    return sub_26C453DFC(v10, type metadata accessor for OwnershipHandoffReplyMessage);
  }

  result = sub_26C453DFC(v7, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C439C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_26C46BD14();
}

uint64_t sub_26C439CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804980C8, type metadata accessor for SyncMessage, &unk_26C470704);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C439D74(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C439DE0(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);

  return sub_26C46BE84();
}

uint64_t sub_26C439E60()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986E8);
  __swift_project_value_buffer(v0, qword_2804986E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "propertyMessages";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "setMessages";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "dictionaryMessages";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 2)
        {
          sub_26C4554DC();
          sub_26C46BDB4();
        }

        else if (result == 3)
        {
          sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for SyncTransactionMessage);
        }
      }

      else
      {
        if (result == 4)
        {
          type metadata accessor for PropertyChangedMessage(0);
          sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage, &unk_26C46FA94);
        }

        else
        {
          if (result == 5)
          {
            v11 = v4;
            type metadata accessor for SetChangedMessage(0);
            sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage, &unk_26C46F92C);
          }

          else
          {
            if (result != 6)
            {
              goto LABEL_5;
            }

            v11 = v4;
            type metadata accessor for DictionaryChangedMessage(0);
            sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage, &unk_26C46F7C4);
          }

          v4 = v11;
        }

        sub_26C46BE14();
      }

LABEL_5:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43A310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v3 || (v12 = *(v3 + 8), v14 = *v3, v15 = v12, sub_26C4554DC(), result = sub_26C46BEC4(), !v4))
  {
    v16 = type metadata accessor for SyncTransactionMessage(0);
    sub_26C3DDD48(v3 + *(v16 + 36), v7, &qword_280497458, &unk_26C46D3F0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_26C3DE270(v7, &qword_280497458, &unk_26C46D3F0);
    }

    else
    {
      sub_26C453E5C(v7, v11, type metadata accessor for PBUUID);
      sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
      sub_26C46BF34();
      result = sub_26C453DFC(v11, type metadata accessor for PBUUID);
      if (v4)
      {
        return result;
      }
    }

    if (!*(v3[2] + 16) || (type metadata accessor for PropertyChangedMessage(0), sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage, &unk_26C46FA94), result = sub_26C46BF14(), !v4))
    {
      if (!*(v3[3] + 16) || (type metadata accessor for SetChangedMessage(0), sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage, &unk_26C46F92C), result = sub_26C46BF14(), !v4))
      {
        if (!*(v3[4] + 16))
        {
          return sub_26C46BD04();
        }

        type metadata accessor for DictionaryChangedMessage(0);
        sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage, &unk_26C46F7C4);
        result = sub_26C46BF14();
        if (!v4)
        {
          return sub_26C46BD04();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C43A710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  sub_26C46BD14();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for PBUUID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_26C43A81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498128, type metadata accessor for SyncTransactionMessage, &unk_26C47059C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43A8BC(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage, &unk_26C4705D4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43A928(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage, &unk_26C4705D4);

  return sub_26C46BE84();
}

uint64_t sub_26C43A9A8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498700);
  __swift_project_value_buffer(v0, qword_280498700);
  return sub_26C46BF64();
}

uint64_t sub_26C43A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_26C46BD84();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_26C43AAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498138, type metadata accessor for CatchupRequestMessage, &unk_26C470434);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43AB60(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage, &unk_26C47046C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43ABCC(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage, &unk_26C47046C);

  return sub_26C46BE84();
}

uint64_t sub_26C43AC48(uint64_t a1, uint64_t a2)
{
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C43ACD0()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498718);
  __swift_project_value_buffer(v0, qword_280498718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "chunkData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunkIndex";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "chunkTotal";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "senderIsAuthority";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_26C46BDA4();
      }
    }

    else if (result == 1)
    {
      sub_26C46BDD4();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_26C46BE04();
    }
  }
}

uint64_t sub_26C43AFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
LABEL_8:
    if (v8 == v9)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_26C46BEE4();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v7)
  {
    v8 = v5;
    v9 = v5 >> 32;
    goto LABEL_8;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3 + 16) || (result = sub_26C46BF04(), !v4))
  {
    if (!*(v3 + 20) || (result = sub_26C46BF04(), !v4))
    {
      if (*(v3 + 24) != 1 || (result = sub_26C46BEB4(), !v4))
      {
        type metadata accessor for CatchupResponseMessage(0);
        return sub_26C46BD04();
      }
    }
  }

  return result;
}

uint64_t sub_26C43B108@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_26C46D3C0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return sub_26C46BD14();
}

uint64_t sub_26C43B190(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498140, type metadata accessor for CatchupResponseMessage, &unk_26C4702CC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43B230(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage, &unk_26C470304);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43B29C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage, &unk_26C470304);

  return sub_26C46BE84();
}

uint64_t sub_26C43B31C()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498730);
  __swift_project_value_buffer(v0, qword_280498730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "prospectiveOwnerUUIDPB";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "changeType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ownershipCounter";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "requestUUIDPB";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43B5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        switch(result)
        {
          case 5:
            v11 = v4;
            sub_26C455530();
            goto LABEL_18;
          case 6:
            sub_26C46BE04();
            break;
          case 7:
            sub_26C43D024(a1, v5, a2, a3, type metadata accessor for OwnershipChangeRequestMessage);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 2:
            v11 = v4;
            sub_26C4554DC();
LABEL_18:
            v4 = v11;
            sub_26C46BDB4();
            break;
          case 3:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipChangeRequestMessage);
            break;
          case 4:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipChangeRequestMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43B784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v51 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for PBUUID(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v46 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  if (*v5)
  {
    v21 = *(v5 + 8);
    v49 = *v5;
    v50 = v21;
    sub_26C4554DC();
    result = sub_26C46BEC4();
    if (v4)
    {
      return result;
    }

    v48 = 0;
  }

  else
  {
    v48 = v4;
  }

  v23 = type metadata accessor for OwnershipChangeRequestMessage(0);
  sub_26C3DDD48(v5 + *(v23 + 32), v12, &qword_280497458, &unk_26C46D3F0);
  v26 = *(v14 + 48);
  v25 = v14 + 48;
  v24 = v26;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v42 = v5;
    v43 = v24;
    v41 = v25;
    sub_26C453E5C(v12, v20, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v27 = v48;
    sub_26C46BF34();
    result = sub_26C453DFC(v20, type metadata accessor for PBUUID);
    if (v27)
    {
      return result;
    }

    v48 = 0;
    v5 = v42;
    v24 = v43;
  }

  v42 = v23;
  v28 = v5 + *(v23 + 36);
  v29 = v47;
  sub_26C3DDD48(v28, v47, &qword_280497458, &unk_26C46D3F0);
  if (v24(v29, 1, v13) == 1)
  {
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
    v30 = *(v5 + 16);
    if (!v30)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v43 = v24;
    v31 = v5;
    v32 = v46;
    sub_26C453E5C(v29, v46, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v33 = v48;
    sub_26C46BF34();
    result = sub_26C453DFC(v32, type metadata accessor for PBUUID);
    if (v33)
    {
      return result;
    }

    v48 = 0;
    v5 = v31;
    v24 = v43;
    v30 = *(v31 + 16);
    if (!v30)
    {
      goto LABEL_16;
    }
  }

  v34 = *(v5 + 24);
  v49 = v30;
  v50 = v34;
  sub_26C455530();
  v35 = v48;
  result = sub_26C46BEC4();
  if (v35)
  {
    return result;
  }

  v48 = 0;
LABEL_16:
  v36 = v13;
  if (*(v5 + 28))
  {
    v37 = v48;
    result = sub_26C46BF04();
    if (v37)
    {
      return result;
    }

    v48 = 0;
  }

  v38 = v45;
  sub_26C3DDD48(v5 + *(v42 + 40), v45, &qword_280497458, &unk_26C46D3F0);
  if (v24(v38, 1, v36) == 1)
  {
    sub_26C3DE270(v38, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v39 = v44;
    sub_26C453E5C(v38, v44, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v40 = v48;
    sub_26C46BF34();
    result = sub_26C453DFC(v39, type metadata accessor for PBUUID);
    if (v40)
    {
      return result;
    }

    v48 = 0;
  }

  return sub_26C46BD04();
}

uint64_t sub_26C43BDD0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 28) = 0;
  sub_26C46BD14();
  v4 = a1[8];
  v5 = type metadata accessor for PBUUID(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[9], 1, 1, v5);
  v6 = a2 + a1[10];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_26C43BF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498148, type metadata accessor for OwnershipChangeRequestMessage, &unk_26C470164);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43BFDC(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage, &unk_26C47019C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43C048(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage, &unk_26C47019C);

  return sub_26C46BE84();
}

uint64_t sub_26C43C0C8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498748);
  __swift_project_value_buffer(v0, qword_280498748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "requestUUIDPB";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "result";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "ownershipCounter";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43C358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 2)
        {
          v11 = v4;
          sub_26C4554DC();
          goto LABEL_17;
        }

        if (result == 3)
        {
          sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipChangeReplyMessage);
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipChangeReplyMessage);
            break;
          case 5:
            v11 = v4;
            sub_26C455584();
LABEL_17:
            v4 = v11;
            sub_26C46BDB4();
            break;
          case 6:
            sub_26C46BE04();
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for PBUUID(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v29 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  if (*v3)
  {
    v18 = *(v3 + 8);
    v31 = *v3;
    v32 = v18;
    sub_26C4554DC();
    v19 = v33;
    result = sub_26C46BEC4();
    if (v19)
    {
      return result;
    }

    v30 = a3;
    v33 = 0;
  }

  else
  {
    v30 = a3;
  }

  v28 = type metadata accessor for OwnershipChangeReplyMessage(0);
  sub_26C3DDD48(v3 + *(v28 + 32), v11, &qword_280497458, &unk_26C46D3F0);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v27 = v3;
    sub_26C453E5C(v11, v17, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v22 = v33;
    sub_26C46BF34();
    result = sub_26C453DFC(v17, type metadata accessor for PBUUID);
    if (v22)
    {
      return result;
    }

    v33 = 0;
    v4 = v27;
  }

  sub_26C3DDD48(v4 + *(v28 + 36), v9, &qword_280497458, &unk_26C46D3F0);
  if (v21(v9, 1, v12) == 1)
  {
    sub_26C3DE270(v9, &qword_280497458, &unk_26C46D3F0);
    v23 = v33;
  }

  else
  {
    v24 = v9;
    v25 = v29;
    sub_26C453E5C(v24, v29, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v23 = v33;
    sub_26C46BF34();
    result = sub_26C453DFC(v25, type metadata accessor for PBUUID);
    if (v23)
    {
      return result;
    }
  }

  if (!v4[2] || (v26 = *(v4 + 24), v31 = v4[2], v32 = v26, sub_26C455584(), result = sub_26C46BEC4(), !v23))
  {
    if (!*(v4 + 7))
    {
      return sub_26C46BD04();
    }

    result = sub_26C46BF04();
    if (!v23)
    {
      return sub_26C46BD04();
    }
  }

  return result;
}

uint64_t sub_26C43C914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 28) = 0;
  sub_26C46BD14();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for PBUUID(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 36);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_26C43CA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498158, type metadata accessor for OwnershipChangeReplyMessage, &unk_26C46FFFC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43CAE0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage, &unk_26C470034);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43CB4C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage, &unk_26C470034);

  return sub_26C46BE84();
}

uint64_t sub_26C43CBCC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498760);
  __swift_project_value_buffer(v0, qword_280498760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "senderOwnerUUIDPB";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "newOwnerUUIDPB";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ownershipCounter";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "autoAcceptsOwnershipRequests";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        switch(result)
        {
          case 5:
            sub_26C43D024(a1, v5, a2, a3, type metadata accessor for OwnershipChangeBroadcastMessage);
            break;
          case 6:
            sub_26C46BE04();
            break;
          case 7:
            sub_26C46BDA4();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 2:
            sub_26C4554DC();
            sub_26C46BDB4();
            break;
          case 3:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipChangeBroadcastMessage);
            break;
          case 4:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipChangeBroadcastMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
  return sub_26C46BE34();
}

uint64_t sub_26C43D0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for PBUUID(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v38 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v39 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  if (*v3)
  {
    v22 = *(v3 + 8);
    v43 = *v3;
    v44 = v22;
    sub_26C4554DC();
    v23 = v45;
    result = sub_26C46BEC4();
    if (v23)
    {
      return result;
    }

    v41 = a3;
    v45 = 0;
  }

  else
  {
    v41 = a3;
  }

  v25 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  sub_26C3DDD48(v4 + v25[8], v13, &qword_280497458, &unk_26C46D3F0);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v36 = v4;
    v37 = v25;
    sub_26C453E5C(v13, v21, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v27 = v45;
    sub_26C46BF34();
    result = sub_26C453DFC(v21, type metadata accessor for PBUUID);
    if (v27)
    {
      return result;
    }

    v45 = 0;
    v4 = v36;
    v25 = v37;
  }

  sub_26C3DDD48(v4 + v25[9], v11, &qword_280497458, &unk_26C46D3F0);
  if (v26(v11, 1, v14) == 1)
  {
    sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v37 = v25;
    v28 = v11;
    v29 = v39;
    sub_26C453E5C(v28, v39, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v30 = v45;
    sub_26C46BF34();
    result = sub_26C453DFC(v29, type metadata accessor for PBUUID);
    if (v30)
    {
      return result;
    }

    v45 = 0;
    v25 = v37;
  }

  v31 = v40;
  sub_26C3DDD48(v4 + v25[10], v40, &qword_280497458, &unk_26C46D3F0);
  if (v26(v31, 1, v14) != 1)
  {
    v33 = v4;
    v34 = v38;
    sub_26C453E5C(v31, v38, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v32 = v45;
    sub_26C46BF34();
    result = sub_26C453DFC(v34, type metadata accessor for PBUUID);
    if (v32)
    {
      return result;
    }

    v4 = v33;
    if (!*(v33 + 3))
    {
      goto LABEL_19;
    }

LABEL_18:
    result = sub_26C46BF04();
    if (v32)
    {
      return result;
    }

    goto LABEL_19;
  }

  sub_26C3DE270(v31, &qword_280497458, &unk_26C46D3F0);
  v32 = v45;
  if (*(v4 + 3))
  {
    goto LABEL_18;
  }

LABEL_19:
  if (*(v4 + 16) != 1)
  {
    return sub_26C46BD04();
  }

  result = sub_26C46BEB4();
  if (!v32)
  {
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C43D694@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  sub_26C46BD14();
  v4 = a1[8];
  v5 = type metadata accessor for PBUUID(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[9], 1, 1, v5);
  v6 = a2 + a1[10];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_26C43D7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498168, type metadata accessor for OwnershipChangeBroadcastMessage, &unk_26C46FE94);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43D878(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage, &unk_26C46FECC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43D8E4(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage, &unk_26C46FECC);

  return sub_26C46BE84();
}

uint64_t sub_26C43D964()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498778);
  __swift_project_value_buffer(v0, qword_280498778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "prospectiveOwnerUUIDPB";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "ownershipCounter";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "requestUUIDPB";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43DBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 2)
        {
          sub_26C4554DC();
          sub_26C46BDB4();
        }

        else if (result == 3)
        {
          sub_26C445EA4(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffRequestMessage);
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffRequestMessage);
            break;
          case 5:
            sub_26C46BE04();
            break;
          case 6:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffRequestMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43DD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = type metadata accessor for PBUUID(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v36 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v38 = v34 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v34 - v19;
  if (*v4)
  {
    v21 = *(v4 + 8);
    v41 = *v4;
    v42 = v21;
    sub_26C4554DC();
    v22 = v43;
    result = sub_26C46BEC4();
    if (v22)
    {
      return result;
    }

    v43 = 0;
  }

  v24 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  sub_26C3DDD48(v4 + v24[7], v12, &qword_280497458, &unk_26C46D3F0);
  v26 = *(v14 + 48);
  v25 = v14 + 48;
  v37 = v26;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v34[1] = v25;
    v35 = v4;
    sub_26C453E5C(v12, v20, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v27 = v43;
    sub_26C46BF34();
    result = sub_26C453DFC(v20, type metadata accessor for PBUUID);
    if (v27)
    {
      return result;
    }

    v43 = 0;
    v4 = v35;
  }

  sub_26C3DDD48(v4 + v24[8], v10, &qword_280497458, &unk_26C46D3F0);
  if (v37(v10, 1, v13) != 1)
  {
    v30 = v4;
    v31 = v38;
    sub_26C453E5C(v10, v38, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v28 = v43;
    sub_26C46BF34();
    result = sub_26C453DFC(v31, type metadata accessor for PBUUID);
    if (v28)
    {
      return result;
    }

    v4 = v30;
    v29 = v39;
    if (*(v4 + 3))
    {
      goto LABEL_10;
    }

LABEL_14:
    v43 = v28;
    goto LABEL_15;
  }

  sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
  v28 = v43;
  v29 = v39;
  if (!*(v4 + 3))
  {
    goto LABEL_14;
  }

LABEL_10:
  result = sub_26C46BF04();
  if (v28)
  {
    return result;
  }

  v43 = 0;
LABEL_15:
  sub_26C3DDD48(v4 + v24[9], v29, &qword_280497458, &unk_26C46D3F0);
  if (v37(v29, 1, v13) == 1)
  {
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v32 = v36;
    sub_26C453E5C(v29, v36, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v33 = v43;
    sub_26C46BF34();
    result = sub_26C453DFC(v32, type metadata accessor for PBUUID);
    if (v33)
    {
      return result;
    }
  }

  return sub_26C46BD04();
}

uint64_t sub_26C43E324@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  sub_26C46BD14();
  v4 = a1[7];
  v5 = type metadata accessor for PBUUID(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[8], 1, 1, v5);
  v6 = a2 + a1[9];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_26C43E46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498170, type metadata accessor for OwnershipHandoffRequestMessage, &unk_26C46FD2C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43E50C(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage, &unk_26C46FD64);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43E578(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage, &unk_26C46FD64);

  return sub_26C46BE84();
}

uint64_t sub_26C43E5F8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498790);
  __swift_project_value_buffer(v0, qword_280498790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "prospectiveOwnerUUIDPB";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "handoffAllowed";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "requestUUIDPB";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43E88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 2)
        {
          sub_26C4554DC();
          sub_26C46BDB4();
        }

        else if (result == 3)
        {
          sub_26C445EA4(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffReplyMessage);
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffReplyMessage);
            break;
          case 5:
            sub_26C46BDA4();
            break;
          case 6:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipHandoffReplyMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43E9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = type metadata accessor for PBUUID(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v36 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v37 = v34 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v34 - v19;
  if (*v4)
  {
    v21 = *(v4 + 8);
    v41 = *v4;
    v42 = v21;
    sub_26C4554DC();
    v22 = v43;
    result = sub_26C46BEC4();
    if (v22)
    {
      return result;
    }

    v43 = 0;
  }

  v24 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  sub_26C3DDD48(v4 + v24[7], v12, &qword_280497458, &unk_26C46D3F0);
  v26 = *(v14 + 48);
  v25 = v14 + 48;
  v38 = v26;
  if (v26(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v34[1] = v25;
    v35 = v4;
    sub_26C453E5C(v12, v20, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v27 = v43;
    sub_26C46BF34();
    result = sub_26C453DFC(v20, type metadata accessor for PBUUID);
    if (v27)
    {
      return result;
    }

    v43 = 0;
    v4 = v35;
  }

  sub_26C3DDD48(v4 + v24[8], v10, &qword_280497458, &unk_26C46D3F0);
  if (v38(v10, 1, v13) == 1)
  {
    sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
    v28 = v43;
    v29 = v39;
  }

  else
  {
    v30 = v4;
    v31 = v37;
    sub_26C453E5C(v10, v37, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v28 = v43;
    sub_26C46BF34();
    result = sub_26C453DFC(v31, type metadata accessor for PBUUID);
    if (v28)
    {
      return result;
    }

    v4 = v30;
    v29 = v39;
  }

  if (*(v4 + 9) == 1)
  {
    result = sub_26C46BEB4();
    if (v28)
    {
      return result;
    }

    v43 = 0;
  }

  else
  {
    v43 = v28;
  }

  sub_26C3DDD48(v4 + v24[9], v29, &qword_280497458, &unk_26C46D3F0);
  if (v38(v29, 1, v13) == 1)
  {
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v32 = v36;
    sub_26C453E5C(v29, v36, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v33 = v43;
    sub_26C46BF34();
    result = sub_26C453DFC(v32, type metadata accessor for PBUUID);
    if (v33)
    {
      return result;
    }
  }

  return sub_26C46BD04();
}

uint64_t sub_26C43EFBC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_26C46BD14();
  v4 = a1[7];
  v5 = type metadata accessor for PBUUID(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[8], 1, 1, v5);
  v6 = a2 + a1[9];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_26C43F0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498178, type metadata accessor for OwnershipHandoffReplyMessage, &unk_26C46FBC4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43F198(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage, &unk_26C46FBFC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43F204(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage, &unk_26C46FBFC);

  return sub_26C46BE84();
}

uint64_t sub_26C43F284()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987A8);
  __swift_project_value_buffer(v0, qword_2804987A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E620;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyID";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "newValueData";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43F498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26C43F600(a1, v5, a2, a3);
        break;
      case 2:
        sub_26C46BE04();
        break;
      case 1:
        sub_26C43F54C(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_26C43F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PropertyChangedMessage(0);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
  return sub_26C46BE34();
}

uint64_t sub_26C43F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PropertyChangedMessage(0);
  type metadata accessor for ValueData(0);
  sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
  return sub_26C46BE34();
}

uint64_t sub_26C43F6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = &v22 - v6;
  v7 = type metadata accessor for ValueData(0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for LamportTimestamp(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PropertyChangedMessage(0);
  sub_26C3DDD48(v4 + *(v16 + 24), v11, &qword_280497468, &unk_26C46D400);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26C3DE270(v11, &qword_280497468, &unk_26C46D400);
    v17 = v30;
  }

  else
  {
    sub_26C453E5C(v11, v15, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
    v17 = v30;
    sub_26C46BF34();
    result = sub_26C453DFC(v15, type metadata accessor for LamportTimestamp);
    if (v17)
    {
      return result;
    }
  }

  v19 = v26;
  if (!*v4 || (result = sub_26C46BF04(), !v17))
  {
    sub_26C3DDD48(v4 + *(v16 + 28), v19, &qword_280497470, &unk_26C46E870);
    if ((*(v24 + 48))(v19, 1, v25) == 1)
    {
      sub_26C3DE270(v19, &qword_280497470, &unk_26C46E870);
    }

    else
    {
      v20 = v19;
      v21 = v23;
      sub_26C453E5C(v20, v23, type metadata accessor for ValueData);
      sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
      sub_26C46BF34();
      result = sub_26C453DFC(v21, type metadata accessor for ValueData);
      if (v17)
      {
        return result;
      }
    }

    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C43FB04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_26C46BD14();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for LamportTimestamp(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for ValueData(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_26C43FC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498180, type metadata accessor for PropertyChangedMessage, &unk_26C46FA5C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43FCC0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage, &unk_26C46FA94);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43FD2C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage, &unk_26C46FA94);

  return sub_26C46BE84();
}

uint64_t sub_26C43FDAC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987C0);
  __swift_project_value_buffer(v0, qword_2804987C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyID";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "addedData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "removedData";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43FFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for ValueData(0);
          sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
          sub_26C46BE14();
        }
      }

      else if (result == 1)
      {
        sub_26C440170(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_26C46BE04();
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C440170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetChangedMessage(0);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
  return sub_26C46BE34();
}

uint64_t sub_26C440224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for LamportTimestamp(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SetChangedMessage(0);
  v16 = v3;
  sub_26C3DDD48(v3 + *(v15 + 32), v6, &qword_280497468, &unk_26C46D400);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26C3DE270(v6, &qword_280497468, &unk_26C46D400);
    v11 = v18;
  }

  else
  {
    sub_26C453E5C(v6, v10, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
    v11 = v18;
    sub_26C46BF34();
    result = sub_26C453DFC(v10, type metadata accessor for LamportTimestamp);
    if (v11)
    {
      return result;
    }
  }

  v13 = v16;
  if (!*v16 || (result = sub_26C46BF04(), !v11))
  {
    if (!*(*(v13 + 1) + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84), result = sub_26C46BF14(), !v11))
    {
      if (!*(*(v13 + 2) + 16))
      {
        return sub_26C46BD04();
      }

      type metadata accessor for ValueData(0);
      sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
      result = sub_26C46BF14();
      if (!v11)
      {
        return sub_26C46BD04();
      }
    }
  }

  return result;
}

uint64_t sub_26C440590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  sub_26C46BD14();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for LamportTimestamp(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_26C44066C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498188, type metadata accessor for SetChangedMessage, &unk_26C46F8F4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C44070C(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage, &unk_26C46F92C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C440778(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage, &unk_26C46F92C);

  return sub_26C46BE84();
}

uint64_t sub_26C4407F8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987D8);
  __swift_project_value_buffer(v0, qword_2804987D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26C46E690;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "ownershipUUIDPB";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26C46BF44();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "propertyID";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "removedKeys";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "removedTimestamps";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "changedKeys";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "changedValues";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "changedTimestamps";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "addedKeys";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "addedValues";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "addedTimestamps";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  return sub_26C46BF54();
}

uint64_t sub_26C440BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (result == 8)
          {
LABEL_4:
            sub_26C46BDC4();
            goto LABEL_5;
          }

          if (result != 9)
          {
            if (result != 10)
            {
              goto LABEL_5;
            }

            goto LABEL_24;
          }
        }

        type metadata accessor for ValueData(0);
        sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
        sub_26C46BE14();
      }

      else
      {
        if (result > 2)
        {
          if (result != 4)
          {
            goto LABEL_4;
          }

LABEL_24:
          sub_26C46BDE4();
          goto LABEL_5;
        }

        if (result == 1)
        {
          sub_26C440DC0(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          sub_26C46BE04();
        }
      }

LABEL_5:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C440DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DictionaryChangedMessage(0);
  type metadata accessor for PBUUID(0);
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
  return sub_26C46BE34();
}

uint64_t sub_26C440E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PBUUID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DictionaryChangedMessage(0);
  v16 = v3;
  sub_26C3DDD48(v3 + *(v15 + 56), v6, &qword_280497458, &unk_26C46D3F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26C3DE270(v6, &qword_280497458, &unk_26C46D3F0);
    v11 = v18;
  }

  else
  {
    sub_26C453E5C(v6, v10, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID, &unk_26C470A0C);
    v11 = v18;
    sub_26C46BF34();
    result = sub_26C453DFC(v10, type metadata accessor for PBUUID);
    if (v11)
    {
      return result;
    }
  }

  v13 = v16;
  if (!*v16 || (result = sub_26C46BF04(), !v11))
  {
    if (!*(v13[1] + 16) || (result = sub_26C46BED4(), !v11))
    {
      if (!*(v13[2] + 16) || (result = sub_26C46BEA4(), !v11))
      {
        if (!*(v13[3] + 16) || (result = sub_26C46BED4(), !v11))
        {
          if (!*(v13[4] + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84), result = sub_26C46BF14(), !v11))
          {
            if (!*(v13[5] + 16) || (result = sub_26C46BEA4(), !v11))
            {
              if (!*(v13[6] + 16) || (result = sub_26C46BED4(), !v11))
              {
                if (!*(v13[7] + 16) || (type metadata accessor for ValueData(0), sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84), result = sub_26C46BF14(), !v11))
                {
                  if (!*(v13[8] + 16))
                  {
                    return sub_26C46BD04();
                  }

                  result = sub_26C46BEA4();
                  if (!v11)
                  {
                    return sub_26C46BD04();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C4412C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  *(a2 + 40) = v4;
  *(a2 + 48) = v4;
  *(a2 + 56) = v4;
  *(a2 + 64) = v4;
  sub_26C46BD14();
  v5 = *(a1 + 56);
  v6 = type metadata accessor for PBUUID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_26C44137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26C4413F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_26C46BD24();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26C4414B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498190, type metadata accessor for DictionaryChangedMessage, &unk_26C46F78C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C441558(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage, &unk_26C46F7C4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C4415C4(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage, &unk_26C46F7C4);

  return sub_26C46BE84();
}

uint64_t sub_26C441640()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804987F0);
  __swift_project_value_buffer(v0, qword_2804987F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "valueData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C441808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C44189C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_26C441950(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_26C44189C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PropertyCatchupData(0);
  type metadata accessor for ValueData(0);
  sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
  return sub_26C46BE34();
}

uint64_t sub_26C441950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PropertyCatchupData(0);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
  return sub_26C46BE34();
}

uint64_t sub_26C441A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LamportTimestamp(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ValueData(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PropertyCatchupData(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_26C3DDD48(v4 + v18, v12, &qword_280497470, &unk_26C46E870);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26C3DE270(v12, &qword_280497470, &unk_26C46E870);
  }

  else
  {
    sub_26C453E5C(v12, v16, type metadata accessor for ValueData);
    sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
    v19 = v31;
    sub_26C46BF34();
    result = sub_26C453DFC(v16, type metadata accessor for ValueData);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_26C3DDD48(v27 + *(v17 + 24), v7, &qword_280497468, &unk_26C46D400);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_26C3DE270(v7, &qword_280497468, &unk_26C46D400);
  }

  else
  {
    v21 = v24;
    sub_26C453E5C(v7, v24, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
    v22 = v31;
    sub_26C46BF34();
    result = sub_26C453DFC(v21, type metadata accessor for LamportTimestamp);
    if (v22)
    {
      return result;
    }
  }

  return sub_26C46BD04();
}

uint64_t sub_26C441E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26C46BD14();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ValueData(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for LamportTimestamp(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_26C441F08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C46BD24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26C441F74(uint64_t a1)
{
  v3 = sub_26C46BD24();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26C44200C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498198, type metadata accessor for PropertyCatchupData, &unk_26C46F624);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C4420AC(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_2804975A0, type metadata accessor for PropertyCatchupData, &unk_26C46F65C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C442118(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_2804975A0, type metadata accessor for PropertyCatchupData, &unk_26C46F65C);

  return sub_26C46BE84();
}

uint64_t sub_26C442198()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498808);
  __swift_project_value_buffer(v0, qword_280498808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dictionaryKeysData";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dictionaryValueData";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dictionaryTimestamps";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tombstoneTimestamps";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C4423E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C46BD84();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          type metadata accessor for LamportTimestamp(0);
          sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
LABEL_5:
          v3 = v6;
          sub_26C46BE14();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
          sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp, &unk_26C46F38C);
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        sub_26C46BDC4();
      }

      else if (result == 2)
      {
        v6 = v3;
        type metadata accessor for ValueData(0);
        sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C4425A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_26C46BED4(), !v4))
  {
    v6 = v4;
    if (*(v3[1] + 16))
    {
      type metadata accessor for ValueData(0);
      sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
      result = sub_26C46BF14();
      if (v4)
      {
        return result;
      }

      v6 = 0;
    }

    if (*(v3[2] + 16))
    {
      type metadata accessor for LamportTimestamp(0);
      sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
      v7 = v6;
      result = sub_26C46BF14();
      if (v6)
      {
        return result;
      }
    }

    else
    {
      v7 = v6;
    }

    if (!*(v3[3] + 16) || (type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0), sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp, &unk_26C46F38C), result = sub_26C46BF14(), !v7))
    {
      type metadata accessor for DictionaryCatchupData(0);
      return sub_26C46BD04();
    }
  }

  return result;
}

uint64_t sub_26C4427A4@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  return sub_26C46BD14();
}

uint64_t sub_26C442820(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981A0, type metadata accessor for DictionaryCatchupData, &unk_26C46F4BC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C4428C0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E90, type metadata accessor for DictionaryCatchupData, &unk_26C46F4F4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C44292C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497E90, type metadata accessor for DictionaryCatchupData, &unk_26C46F4F4);

  return sub_26C46BE84();
}

uint64_t sub_26C4429AC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498820);
  __swift_project_value_buffer(v0, qword_280498820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C442B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C46BDD4();
    }

    else if (result == 2)
    {
      sub_26C442C04(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_26C442C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
  return sub_26C46BE34();
}

uint64_t sub_26C442CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for LamportTimestamp(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = v3[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_12;
    }

    v15 = *(v11 + 16);
    v16 = *(v11 + 24);
LABEL_8:
    v14 = v21;
    if (v15 == v16)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v13)
  {
    v15 = v11;
    v16 = v11 >> 32;
    goto LABEL_8;
  }

  v14 = v21;
  if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = sub_26C46BEE4();
  if (v14)
  {
    return result;
  }

  v21 = 0;
LABEL_12:
  v18 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  sub_26C3DDD48(v3 + *(v18 + 24), v6, &qword_280497468, &unk_26C46D400);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26C3DE270(v6, &qword_280497468, &unk_26C46D400);
  }

  else
  {
    sub_26C453E5C(v6, v10, type metadata accessor for LamportTimestamp);
    sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
    v19 = v21;
    sub_26C46BF34();
    result = sub_26C453DFC(v10, type metadata accessor for LamportTimestamp);
    if (v19)
    {
      return result;
    }
  }

  return sub_26C46BD04();
}

uint64_t sub_26C442F68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_26C46D3C0;
  sub_26C46BD14();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for LamportTimestamp(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_26C443040(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804981A8, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp, &unk_26C46F354);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C4430E0(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp, &unk_26C46F38C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C44314C(uint64_t a1, uint64_t a2)
{
  sub_26C4468DC(&qword_280497E70, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp, &unk_26C46F38C);

  return sub_26C46BE84();
}

uint64_t sub_26C4431CC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498838);
  __swift_project_value_buffer(v0, qword_280498838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "setElementValueData";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "setTimestamps";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tombstoneElementValueData";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "tombstoneTimestamps";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C443460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_26C44366C(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
LABEL_15:
            v11 = v4;
            type metadata accessor for ValueData(0);
            sub_26C4468DC(&qword_280497DE0, type metadata accessor for ValueData, &unk_26C46EC84);
            goto LABEL_5;
          case 5:
LABEL_4:
            v11 = v4;
            type metadata accessor for LamportTimestamp(0);
            sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
LABEL_5:
            v4 = v11;
            sub_26C46BE14();
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C44366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetCatchupData(0);
  type metadata accessor for LamportTimestamp(0);
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp, &unk_26C4708A4);
  return sub_26C46BE34();
}