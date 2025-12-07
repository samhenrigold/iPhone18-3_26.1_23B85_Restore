uint64_t type metadata accessor for SceneDebugRepresentationProvider(uint64_t a1)
{
  result = qword_27FEC9270;
  if (!qword_27FEC9270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2619C4A8C(uint64_t a1)
{
  result = sub_2619D9748();
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

uint64_t sub_2619C4B1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2619C4B78(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2619C4BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2619C4C88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2619C4CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2619C4D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2619C4DB8(void *a1)
{
  v2 = sub_2619D9DF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9078, &qword_2619DA7E8);
  v6 = MEMORY[0x28223BE20](v5);
  v66 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9080, &qword_2619DA7F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v57 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v69 = &v54[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v54[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v54[-v24];
  v26 = sub_2619D9E28();
  v67 = *(v26 - 8);
  v68 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v54[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = a1;
  sub_2619C4B1C(a1, &v75);
  sub_2619D9DD8();
  v71 = v28;
  sub_2619D9E08();
  v29 = *MEMORY[0x277D84C18];
  v30 = v3[13];
  v64 = v3 + 13;
  v62 = v30;
  v30(v23, v29, v2);
  v31 = v3[7];
  v63 = v3 + 7;
  v61 = v31;
  v31(v23, 0, 1, v2);
  v60 = v5;
  v32 = *(v5 + 48);
  sub_2619C5790(v25, v9);
  sub_2619C5790(v23, &v9[v32]);
  v70 = v3;
  v33 = v3[6];
  v34 = v33(v9, 1, v2);
  v65 = v33;
  if (v34 != 1)
  {
    sub_2619C5790(v9, v69);
    if (v33(&v9[v32], 1, v2) != 1)
    {
      v42 = v70[4];
      v56 = v18;
      v43 = v59;
      v42(v59, &v9[v32], v2);
      v35 = v69;
      v55 = sub_2619D9938();
      v44 = v70[1];
      v45 = v43;
      v18 = v56;
      v44(v45, v2);
      sub_2619B62D0(v23, &qword_27FEC9080, &qword_2619DA7F0);
      sub_2619B62D0(v25, &qword_27FEC9080, &qword_2619DA7F0);
      v44(v35, v2);
      sub_2619B62D0(v9, &qword_27FEC9080, &qword_2619DA7F0);
      v36 = v71;
      if (v55)
      {
        goto LABEL_15;
      }

LABEL_7:
      sub_2619D9E08();
      v62(v15, *MEMORY[0x277D84BF0], v2);
      v61(v15, 0, 1, v2);
      v37 = *(v60 + 48);
      ObjectType = v66;
      sub_2619C5790(v18, v66);
      sub_2619C5790(v15, &ObjectType[v37]);
      v39 = v65;
      if (v65(ObjectType, 1, v2) == 1)
      {
        sub_2619B62D0(v15, &qword_27FEC9080, &qword_2619DA7F0);
        sub_2619B62D0(v18, &qword_27FEC9080, &qword_2619DA7F0);
        if (v39(&ObjectType[v37], 1, v2) == 1)
        {
          sub_2619B62D0(ObjectType, &qword_27FEC9080, &qword_2619DA7F0);
          goto LABEL_18;
        }
      }

      else
      {
        v35 = v15;
        v15 = v57;
        sub_2619C5790(ObjectType, v57);
        if (v39(&ObjectType[v37], 1, v2) != 1)
        {
          goto LABEL_17;
        }

        sub_2619B62D0(v35, &qword_27FEC9080, &qword_2619DA7F0);
        sub_2619B62D0(v18, &qword_27FEC9080, &qword_2619DA7F0);
        (v70[1])(v15, v2);
      }

      sub_2619B62D0(ObjectType, &qword_27FEC9078, &qword_2619DA7E8);
LABEL_13:
      __swift_project_boxed_opaque_existential_1Tm(v58, v58[3]);
      DynamicType = swift_getDynamicType();
      v41 = sub_2619C5800(DynamicType);
      (*(v67 + 8))(v36, v68);
      return v41 & 1;
    }

    sub_2619B62D0(v23, &qword_27FEC9080, &qword_2619DA7F0);
    sub_2619B62D0(v25, &qword_27FEC9080, &qword_2619DA7F0);
    (v70[1])(v69, v2);
LABEL_6:
    sub_2619B62D0(v9, &qword_27FEC9078, &qword_2619DA7E8);
    v36 = v71;
    goto LABEL_7;
  }

  v35 = &qword_27FEC9080;
  sub_2619B62D0(v23, &qword_27FEC9080, &qword_2619DA7F0);
  sub_2619B62D0(v25, &qword_27FEC9080, &qword_2619DA7F0);
  if (v33(&v9[v32], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_2619B62D0(v9, &qword_27FEC9080, &qword_2619DA7F0);
LABEL_15:
  v46 = sub_2619D9E18();
  v37 = v46[3];
  v2 = v46[4];
  v36 = v46[5];
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_2619D9BA8();
  swift_getObjectType();
  if (v18 == sub_2619D9BA8())
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_17:
  v56 = v18;
  v47 = v70;
  v48 = v59;
  (v70[4])(v59, &ObjectType[v37], v2);
  v49 = sub_2619D9938();
  v50 = v47[1];
  v50(v48, v2);
  sub_2619B62D0(v35, &qword_27FEC9080, &qword_2619DA7F0);
  sub_2619B62D0(v56, &qword_27FEC9080, &qword_2619DA7F0);
  v50(v15, v2);
  sub_2619B62D0(ObjectType, &qword_27FEC9080, &qword_2619DA7F0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_18:
  sub_2619D9E18();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v51 = sub_2619D9BA8();
  swift_getObjectType();
  result = sub_2619D9BA8();
  if (v51 == result)
  {
LABEL_19:
    v53 = sub_2619D9BB8();
    swift_unknownObjectRelease();
    if (v53)
    {
      swift_unknownObjectRelease();

      (*(v67 + 8))(v71, v68);
      v41 = 0;
    }

    else
    {
      sub_2619D9C78();
      swift_unknownObjectRelease();

      v75 = v72;
      v76[0] = v73;
      v76[1] = v74;
      v41 = sub_2619C4DB8(v76);
      sub_2619B62D0(&v75, &qword_27FEC90E8, &qword_2619DA840);
      (*(v67 + 8))(v71, v68);
    }

    return v41 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2619C5790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9080, &qword_2619DA7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

const char *sub_2619C5800(const void *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = sub_2619D9858();
  v55 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v53 = &v48[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9160, &qword_2619DA8B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48[-v8];
  v10 = sub_2619D9888();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v48[-v15];
  if (qword_27FEC9280 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_27FEC9288;
  if (*(qword_27FEC9288 + 16))
  {
    v18 = sub_2619C5F4C(a1);
    if (v19)
    {
      v20 = *(*(v17 + 56) + v18);
      swift_endAccess();
      return (v20 & 1);
    }
  }

  swift_endAccess();
  memset(&v58, 0, sizeof(v58));
  if (!dladdr(a1, &v58))
  {
    v22 = 1;
LABEL_10:
    v54 = v2;
    (*(v11 + 56))(v9, v22, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_2619B62D0(v9, &qword_27FEC9160, &qword_2619DA8B0);
      sub_2619D97E8();
      v23 = sub_2619D9848();
      v24 = sub_2619D9AC8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v58.dli_fname = v26;
        *v25 = 136315138;
        v56 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v27 = sub_2619D9958();
        v29 = sub_2619C2E88(v27, v28, &v58);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_2619AE000, v23, v24, "Type %s unable to determine source - isInternal=unknown", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x266714FB0](v26, -1, -1);
        MEMORY[0x266714FB0](v25, -1, -1);
      }

      (*(v55 + 8))(v5, v54);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = qword_27FEC9288;
      qword_27FEC9288 = 0x8000000000000000;
      sub_2619C61F4(0, a1, isUniquelyReferenced_nonNull_native);
      qword_27FEC9288 = v56;
      swift_endAccess();
      v20 = 0;
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      v58.dli_fname = sub_2619D9878();
      v58.dli_fbase = v31;
      v56 = 0xD000000000000010;
      v57 = 0x80000002619DBB70;
      sub_2619B7480();
      v20 = sub_2619D9B38();

      swift_beginAccess();
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v56 = qword_27FEC9288;
      qword_27FEC9288 = 0x8000000000000000;
      sub_2619C61F4(v20 & 1, a1, v32);
      qword_27FEC9288 = v56;
      swift_endAccess();
      v33 = v53;
      sub_2619D97E8();
      (*(v11 + 16))(v14, v16, v10);
      v34 = sub_2619D9848();
      v35 = sub_2619D9AC8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v51 = v20 & 1;
        v37 = v36;
        v52 = swift_slowAlloc();
        v58.dli_fname = v52;
        *v37 = 136315650;
        v56 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v38 = sub_2619D9958();
        v49 = v35;
        v40 = sub_2619C2E88(v38, v39, &v58);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;
        v41 = sub_2619D9878();
        v43 = v42;
        v50 = v16;
        v44 = *(v11 + 8);
        v44(v14, v10);
        v45 = sub_2619C2E88(v41, v43, &v58);

        *(v37 + 14) = v45;
        *(v37 + 22) = 1024;
        *(v37 + 24) = v51;
        _os_log_impl(&dword_2619AE000, v34, v49, "Type %s source: %s, isInternal=%{BOOL}d", v37, 0x1Cu);
        v46 = v52;
        swift_arrayDestroy();
        MEMORY[0x266714FB0](v46, -1, -1);
        MEMORY[0x266714FB0](v37, -1, -1);

        (*(v55 + 8))(v33, v54);
        v44(v50, v10);
      }

      else
      {

        v47 = *(v11 + 8);
        v47(v14, v10);
        (*(v55 + 8))(v33, v54);
        v47(v16, v10);
      }
    }

    return (v20 & 1);
  }

  result = v58.dli_fname;
  if (v58.dli_fname)
  {
    MEMORY[0x266714580]();
    v22 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_2619C5F4C(uint64_t a1)
{
  v2 = sub_2619D9D98();

  return sub_2619C6320(a1, v2);
}

uint64_t sub_2619C5F90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9168, &qword_2619DA8B8);
  result = sub_2619D9CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = sub_2619D9D98();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_2619C61F4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2619C5F4C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2619C638C();
    result = v17;
    goto LABEL_8;
  }

  sub_2619C5F90(v14, a3 & 1);
  result = sub_2619C5F4C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

unint64_t sub_2619C6320(uint64_t a1, uint64_t a2)
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

void *sub_2619C638C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9168, &qword_2619DA8B8);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2619C64DC()
{
  v0 = sub_2619D9428();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v31 - v2;
  v4 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v35 = sub_2619D94A8();
  sub_2619D9068();
  sub_2619D9408();
  sub_2619D9418();
  v5 = v40[0];
  if (!v40[0])
  {
LABEL_37:
    (*(v32 + 8))(v3, v1);
    return v4;
  }

  v33 = v3;
  v34 = v1;
  while (1)
  {

    MEMORY[0x266714720](v8);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2619D9A28();
    }

    sub_2619D9A38();
    v9 = v41;
    v10 = sub_2619C64DC();
    v11 = v10;
    v12 = v10 >> 62;
    if (v10 >> 62)
    {
      v13 = sub_2619D9CA8();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v9 >> 62;
    v39 = v13;
    if (v9 >> 62)
    {
      v30 = sub_2619D9CA8();
      v4 = v30 + v39;
      if (__OFADD__(v30, v39))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_17:
      sub_2619D9CA8();
      goto LABEL_18;
    }

    if (v14)
    {
      goto LABEL_17;
    }

    v16 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v4 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = v9;
      goto LABEL_19;
    }

LABEL_18:
    result = sub_2619D9BD8();
    v38 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v37 = v5;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v12)
    {
      break;
    }

    v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v39;
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v18 >> 1) - v17) < v20)
    {
      goto LABEL_39;
    }

    v21 = v16 + 8 * v17 + 32;
    if (v12)
    {
      if (v19 < 1)
      {
        goto LABEL_41;
      }

      v36 = v16;
      sub_2619B63E4();
      for (i = 0; i != v19; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F70, &unk_2619DB1E0);
        v24 = sub_2619B3098(v40, i, v11);
        v26 = *v25;

        (v24)(v40, 0);
        *(v21 + 8 * i) = v26;
      }

      v3 = v33;
      v1 = v34;
      v22 = v39;
      v16 = v36;
    }

    else
    {
      v22 = v20;
      swift_arrayInitWithCopy();
    }

    v4 = v38;
    if (v22 > 0)
    {
      v27 = *(v16 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (v28)
      {
        goto LABEL_40;
      }

      *(v16 + 16) = v29;
    }

LABEL_4:
    v41 = v4;
    sub_2619D9418();
    v5 = v40[0];
    if (!v40[0])
    {
      goto LABEL_37;
    }
  }

  result = sub_2619D9CA8();
  v19 = result;
  v20 = v39;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = v20;

  v4 = v38;
  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_2619C6920()
{
  v0 = sub_2619D9428();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v39 = sub_2619D94A8();
  sub_2619D9068();
  sub_2619D9408();
  while (1)
  {
    sub_2619D9418();
    if (!v45[0])
    {
      break;
    }

    MEMORY[0x266714720](v8);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2619D9A28();
    }

    sub_2619D9A38();

    v7 = v46;
  }

  v37[0] = *(v2 + 8);
  v37[1] = v2 + 8;
  (v37[0])(v6, v1);
  sub_2619D9068();
  v9 = v38;
  sub_2619D9408();
  sub_2619D9418();
  v10 = v45[0];
  if (!v45[0])
  {
LABEL_39:
    (v37[0])(v9, v1);
    return v7;
  }

  v11 = &qword_27FEC8F70;
  v12 = &unk_2619DB1E0;
  v42 = v1;
  while (1)
  {
    v44 = v10;
    v14 = sub_2619C6920();
    v15 = v14;
    v16 = v14 >> 62;
    if (v14 >> 62)
    {
      v17 = sub_2619D9CA8();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v7 >> 62;
    if (v7 >> 62)
    {
      v36 = sub_2619D9CA8();
      v20 = v36 + v17;
      if (__OFADD__(v36, v17))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        goto LABEL_38;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v18)
      {
        v21 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_2619D9CA8();
      goto LABEL_20;
    }

    if (v18)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_2619D9BD8();
    v7 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v16)
    {
      break;
    }

    v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_8;
    }

LABEL_25:
    if (((v23 >> 1) - v22) < v17)
    {
      goto LABEL_41;
    }

    v26 = v21 + 8 * v22 + 32;
    v43 = v21;
    if (v16)
    {
      if (v24 < 1)
      {
        goto LABEL_43;
      }

      v40 = v17;
      v41 = v7;
      sub_2619B63E4();
      for (i = 0; i != v24; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
        v28 = sub_2619B3098(v45, i, v15);
        v29 = v12;
        v30 = v11;
        v32 = *v31;

        (v28)(v45, 0);
        *(v26 + 8 * i) = v32;
        v11 = v30;
        v12 = v29;
      }

      v9 = v38;
      v17 = v40;
      v7 = v41;
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    v1 = v42;
    if (v17 > 0)
    {
      v33 = *(v43 + 16);
      v34 = __OFADD__(v33, v17);
      v35 = v33 + v17;
      if (v34)
      {
        goto LABEL_42;
      }

      *(v43 + 16) = v35;
    }

LABEL_9:
    sub_2619D9418();
    v10 = v45[0];
    if (!v45[0])
    {
      goto LABEL_39;
    }
  }

  v25 = v21;
  result = sub_2619D9CA8();
  v21 = v25;
  v24 = result;
  if (result)
  {
    goto LABEL_25;
  }

LABEL_8:

  v1 = v42;
  if (v17 <= 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t Array.appending<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  v10 = a2;
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2619D9A58();

  sub_2619D9A48();
  return v10;
}

uint64_t Array<A>.removingDuplicates()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2619D9898();
  sub_2619D9A58();

  swift_getWitnessTable();
  v3 = sub_2619D9BF8();

  return v3;
}

BOOL sub_2619C6FAC(uint64_t a1)
{
  sub_2619D98F8();
  sub_2619D98B8();
  return v2 == 2;
}

uint64_t Array<A>.removeDuplicates()(uint64_t a1, uint64_t a2)
{
  v3 = Array<A>.removingDuplicates()(*v2, *(a1 + 16), a2);

  *v2 = v3;
  return result;
}

uint64_t sub_2619C7064(uint64_t a1)
{
  sub_2619D9158();
  sub_2619D9148();
  sub_2619D9138();

  sub_2619D9118();
  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

uint64_t sub_2619C70DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v70 = a2;
  v2 = sub_2619D90A8();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9170, &qword_2619DA8D0);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = v53 - v5;
  v6 = sub_2619D9088();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2619D90F8();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2619D9858();
  v69 = *(v56 - 8);
  v10 = MEMORY[0x28223BE20](v56);
  v53[1] = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v53 - v12;
  v14 = sub_2619D8FB8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v54 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v53 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v53 - v21;
  v23 = sub_2619D9018();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9008();
  v27 = sub_2619D8FF8();
  v29 = v28;
  (*(v24 + 8))(v26, v23);
  v30 = v14;
  v31 = [objc_opt_self() defaultManager];
  v32 = [v31 temporaryDirectory];

  sub_2619D8F98();
  v72[0] = v27;
  v72[1] = v29;
  MEMORY[0x2667146C0](0x6C6165722E736F2DLL, 0xEB00000000797469);
  sub_2619D8F88();

  v33 = *(v15 + 8);
  v33(v20, v30);
  sub_2619D97D8();
  v68 = v15;
  v34 = v22;
  v35 = v54;
  v36 = *(v15 + 16);
  v71 = v34;
  v36(v54);
  v55 = v13;
  v37 = sub_2619D9848();
  v38 = sub_2619D9AC8();
  v39 = os_log_type_enabled(v37, v38);
  v53[0] = v15 + 8;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v72[0] = v41;
    *v40 = 136315138;
    sub_2619C87E4(&qword_27FEC9180, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v42 = sub_2619D9D18();
    v43 = v35;
    v44 = v33;
    v46 = v45;
    v44(v43, v30);
    v47 = sub_2619C2E88(v42, v46, v72);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_2619AE000, v37, v38, "writing to %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x266714FB0](v41, -1, -1);
    MEMORY[0x266714FB0](v40, -1, -1);
  }

  else
  {

    v33(v35, v30);
  }

  (*(v69 + 8))(v55, v56);
  (*(v58 + 104))(v57, *MEMORY[0x277CDACA8], v59);
  v48 = v60;
  sub_2619D9098();
  sub_2619D90D8();
  (*(v65 + 104))(v63, *MEMORY[0x277CDACB0], v66);
  v49 = v64;
  sub_2619D90B8();
  v50 = sub_2619D90C8();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  sub_2619D90E8();
  sub_2619D9108();
  (*(v61 + 8))(v48, v62);
  v51 = v68;
  (*(v68 + 32))(v70, v71, v30);
  return (*(v51 + 56))(v70, 0, 1, v30);
}

uint64_t sub_2619C79E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2619D8FB8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x277D65330];
  v6 = sub_2619D97C8();
  return (*(*(v6 - 8) + 104))(a2, v5, v6);
}

void *sub_2619C7AA0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91B8, &qword_2619DA948);
  v10 = *(sub_2619D8FB8() - 8);
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
  v15 = *(sub_2619D8FB8() - 8);
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

void *sub_2619C7C78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2619C7D00(a1, a2, a3, *v3, &qword_27FEC91B0, &qword_2619DA940, MEMORY[0x277D65338]);
  *v3 = result;
  return result;
}

void *sub_2619C7CBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2619C7D00(a1, a2, a3, *v3, &qword_27FEC91C0, qword_2619DA950, MEMORY[0x277CDACF0]);
  *v3 = result;
  return result;
}

void *sub_2619C7D00(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2619C7EDC(unint64_t a1)
{
  v2 = sub_2619D97C8();
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9038, &qword_2619DA738);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v48 - v5;
  v6 = sub_2619D8FB8();
  v61 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - v9;
  v10 = sub_2619D9128();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2619D9CA8())
  {
    v49 = v2;
    v2 = MEMORY[0x277D84F90];
    v59 = v6;
    if (i)
    {
      v18 = a1;
      v62 = MEMORY[0x277D84F90];
      a1 = &v62;
      result = sub_2619C7CBC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      v2 = v62;
      v20 = v18;
      v60 = (v18 & 0xC000000000000001);
      v51 = v18 & 0xFFFFFFFFFFFFFF8;
      v54 = v11 + 32;
      v55 = i;
      v56 = v18;
      do
      {
        if (v60)
        {
          a1 = MEMORY[0x2667148E0](v6, v20);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          if (v6 >= *(v51 + 16))
          {
            goto LABEL_39;
          }

          a1 = *(v20 + 8 * v6 + 32);
        }

        Entity.augmentedWithPersistentIDs<A>(_:)(sub_2619C7064);

        v62 = v2;
        v22 = *(v2 + 16);
        v21 = *(v2 + 24);
        if (v22 >= v21 >> 1)
        {
          a1 = &v62;
          sub_2619C7CBC((v21 > 1), v22 + 1, 1);
          v2 = v62;
        }

        ++v6;
        *(v2 + 16) = v22 + 1;
        (*(v11 + 32))(v2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v14, v10);
        v20 = v56;
      }

      while (v55 != v6);
      v6 = v59;
    }

    v50 = 0;
    v23 = *(v2 + 16);
    v14 = v53;
    if (!v23)
    {
      break;
    }

    v24 = 0;
    v55 = (v61 + 48);
    v56 = v11 + 8;
    a1 = v61 + 32;
    v60 = MEMORY[0x277D84F90];
    v54 = v23;
    v51 = v11 + 16;
    while (v24 < *(v2 + 16))
    {
      (*(v11 + 16))(v16, v2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v10);
      sub_2619C70DC(v16, v14);
      (*(v11 + 8))(v16, v10);
      if ((*v55)(v14, 1, v6) == 1)
      {
        sub_2619B62D0(v14, &qword_27FEC9038, &qword_2619DA738);
      }

      else
      {
        v25 = v10;
        v26 = v16;
        v27 = *a1;
        v28 = v52;
        (*a1)(v52, v14, v6);
        v27(v57, v28, v6);
        v29 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2619C7AA0(0, v29[2] + 1, 1, v29);
        }

        v31 = v29[2];
        v30 = v29[3];
        v60 = v29;
        v16 = v26;
        if (v31 >= v30 >> 1)
        {
          v60 = sub_2619C7AA0((v30 > 1), v31 + 1, 1, v60);
        }

        v10 = v25;
        v33 = v60;
        v32 = v61;
        v60[2] = v31 + 1;
        v6 = v59;
        v27(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v57, v59);
        v14 = v53;
        v23 = v54;
      }

      if (v23 == ++v24)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_27:

  v34 = v60;
  v35 = v60[2];
  if (v35)
  {
    v62 = MEMORY[0x277D84F90];
    sub_2619C7C78(0, v35, 0);
    v36 = v62;
    v37 = *(v61 + 16);
    v38 = v34 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v61 += 16;
    v56 = *(v61 + 56);
    v57 = v37;
    v39 = *MEMORY[0x277D65330];
    v40 = (v58 + 104);
    v42 = v48;
    v41 = v49;
    do
    {
      (v57)(v42, v38, v59);
      (*v40)(v42, v39, v41);
      v62 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2619C7C78((v43 > 1), v44 + 1, 1);
        v41 = v49;
        v36 = v62;
      }

      *(v36 + 16) = v44 + 1;
      (*(v58 + 32))(v36 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44, v42, v41);
      v38 += v56;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  sub_2619D8F68();
  swift_allocObject();
  sub_2619D8F58();
  v62 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9188, &qword_2619DA930);
  sub_2619C86AC();
  v45 = v50;
  v46 = sub_2619D8F48();
  if (v45)
  {
    MEMORY[0x266714E00](v45);

    return 0;
  }

  else
  {
    v47 = v46;

    return v47;
  }
}

unint64_t sub_2619C86AC()
{
  result = qword_27FEC9190;
  if (!qword_27FEC9190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC9188, &qword_2619DA930);
    sub_2619C8730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9190);
  }

  return result;
}

unint64_t sub_2619C8730()
{
  result = qword_27FEC9198;
  if (!qword_27FEC9198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC91A0, &qword_2619DA938);
    sub_2619C87E4(&qword_27FEC91A8, MEMORY[0x277D65338], MEMORY[0x277D65340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9198);
  }

  return result;
}

uint64_t sub_2619C87E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2619C88B4(char a1)
{
  result = swift_beginAccess();
  byte_27FEC94E8 = a1;
  return result;
}

uint64_t sub_2619C8954@<X0>(uint64_t a1@<X8>)
{
  v20[0] = 1;
  LOBYTE(v29) = 1;
  LOBYTE(v27) = 1;
  LOBYTE(v25) = 1;
  v13[0] = 1;
  v2[0] = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v33) = 1;
  LOBYTE(v31) = 1;
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 5) = v35;
  *(a1 + 7) = v36;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 13) = v33;
  *(a1 + 15) = v34;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 23) = v32;
  *(a1 + 21) = v31;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 31) = v30;
  *(a1 + 29) = v29;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 39) = v28;
  *(a1 + 37) = v27;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 55) = v26;
  *(a1 + 53) = v25;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 63) = v24;
  *(a1 + 61) = v23;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 71) = v22;
  *(a1 + 69) = v21;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 84) = *&v20[3];
  *(a1 + 81) = *v20;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 111) = v19;
  *(a1 + 109) = v18;
  *(a1 + 112) = 0;
  *(a1 + 116) = 1;
  *(a1 + 119) = v17;
  *(a1 + 117) = v16;
  *(a1 + 120) = 0;
  *(a1 + 124) = 1;
  *(a1 + 127) = v15;
  *(a1 + 125) = v14;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  result = *&v13[3];
  *(a1 + 140) = *&v13[3];
  *(a1 + 137) = *v13;
  *(a1 + 148) = 1;
  *(a1 + 152) = 0;
  *(a1 + 156) = 1;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = 0;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = 0;
  *(a1 + 212) = 1;
  *(a1 + 215) = v12;
  *(a1 + 213) = v11;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 1;
  *(a1 + 231) = v10;
  *(a1 + 229) = v9;
  *(a1 + 232) = 0;
  *(a1 + 236) = 1;
  *(a1 + 237) = v7;
  *(a1 + 239) = v8;
  *(a1 + 240) = 0;
  *(a1 + 244) = 1;
  *(a1 + 245) = v5;
  *(a1 + 247) = v6;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 260) = 1;
  *(a1 + 261) = v3;
  *(a1 + 263) = v4;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 284) = *&v2[3];
  *(a1 + 281) = *v2;
  *(a1 + 288) = 0;
  return result;
}

uint64_t sub_2619C8C1C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v8 = *(*(a4 + 8) + 24);
  v40 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38 = &v33 - v9;
  v10 = sub_2619D9B08();
  v42 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = MEMORY[0x28223BE20](*(a3 - 8));
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v43 = &v33 - v20;
  v44 = v19;
  v21 = *(v19 + 48);
  if (v21(a1, 1, a3) == 1 && v21(a2, 1, a3) == 1)
  {
    v22 = *(v44 + 56);
    v23 = v41;

    return v22(v23, 1, 1, a3);
  }

  else
  {
    v36 = a2;
    v37 = v8;
    v25 = *(v42 + 16);
    v25(v15, a1, v10);
    if (v21(v15, 1, a3) == 1)
    {
      v35 = v10;
      swift_getAssociatedConformanceWitness();
      v34 = v13;
      sub_2619D9D58();
      v13 = v34;
      v10 = v35;
      sub_2619D9D28();
      v26 = v21(v15, 1, a3);
      v27 = v36;
      if (v26 != 1)
      {
        v28 = v36;
        (*(v42 + 8))(v15, v10);
        v27 = v28;
      }
    }

    else
    {
      (*(v44 + 32))(v43, v15, a3);
      v27 = v36;
    }

    v25(v13, v27, v10);
    if (v21(v13, 1, a3) == 1)
    {
      swift_getAssociatedConformanceWitness();
      sub_2619D9D58();
      sub_2619D9D28();
      v29 = v21(v13, 1, a3);
      v30 = v41;
      if (v29 != 1)
      {
        (*(v42 + 8))(v13, v10);
      }
    }

    else
    {
      (*(v44 + 32))(v18, v13, a3);
      v30 = v41;
    }

    v31 = v43;
    sub_2619D9C88();
    v32 = *(v44 + 8);
    v32(v18, a3);
    v32(v31, a3);
    return (*(v44 + 56))(v30, 0, 1, a3);
  }
}

uint64_t sub_2619C9134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v30 = a4;
  v32 = a2;
  v34 = a5;
  v7 = sub_2619D9B08();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v31 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v29 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v33 = &v27 - v17;
  v18 = *(v8 + 16);
  v18(v13, a1, v7);
  v19 = *(v14 + 48);
  if (v19(v13, 1, a3) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v20 = 1;
    v21 = v34;
  }

  else
  {
    v28 = *(v14 + 32);
    v28(v33, v13, a3);
    v22 = v31;
    v18(v31, v32, v7);
    if (v19(v22, 1, a3) == 1)
    {
      (*(v8 + 8))(v22, v7);
      v21 = v34;
      v28(v34, v33, a3);
    }

    else
    {
      v23 = v29;
      v28(v29, v22, a3);
      v24 = v33;
      v21 = v34;
      sub_2619D9C98();
      v25 = *(v14 + 8);
      v25(v23, a3);
      v25(v24, a3);
    }

    v20 = 0;
  }

  return (*(v14 + 56))(v21, v20, 1, a3);
}

uint64_t sub_2619C9454(uint64_t a1, uint64_t a2)
{
  if (!a2 || !a1)
  {
  }

  MEMORY[0x28223BE20](a1);
  sub_2619D98F8();

  sub_2619D98D8();
  return a1;
}

uint64_t sub_2619C952C(uint64_t result)
{
  if (result)
  {
    MEMORY[0x28223BE20](result);

    return sub_2619D98E8();
  }

  return result;
}

uint64_t sub_2619C95DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = v18 - v13;
  (*(*(a4 - 8) + 16))(v18 - v13, a1, a4);
  (*(*(a5 - 8) + 16))(&v14[*(TupleTypeMetadata2 + 48)], a2, a5);
  if (a3)
  {
    v18[1] = a3;
    sub_2619D98C8();
    swift_getWitnessTable();
    v15 = sub_2619D99E8();
    (*(v12 + 8))(v14, TupleTypeMetadata2);
    v16 = v15 ^ 1;
  }

  else
  {
    (*(v12 + 8))(v14, TupleTypeMetadata2);
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t sub_2619C97C4(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_2619C97F4(unint64_t result, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((result & 0x100000000) != 0)
    {
      v3 = 1;
      return result | (v3 << 32);
    }

    LODWORD(a2) = 0;
  }

  else if ((result & 0x100000000) != 0)
  {
    LODWORD(result) = 0;
  }

  v2 = __OFADD__(a2, result);
  result = (a2 + result);
  if (!v2)
  {
    v3 = 0;
    return result | (v3 << 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_2619C9858(unint64_t result, unint64_t a2)
{
  if (((a2 | result) & 0x100000000) != 0)
  {
    v2 = HIDWORD(a2) & 1;
    return a2 | (v2 << 32);
  }

  v3 = __OFSUB__(a2, result);
  LODWORD(a2) = a2 - result;
  if (!v3)
  {
    LOBYTE(v2) = 0;
    return a2 | (v2 << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_2619C98F0(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2619C9940(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2619C9990(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2619C99C0(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

int *sub_2619C9A0C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if (*(v2 + 4))
  {
    if (result[1])
    {
      v5 = 1;
      goto LABEL_9;
    }

    v6 = 0;
  }

  else
  {
    v6 = *v2;
    if (result[1])
    {
      v4 = 0;
    }
  }

  v7 = __OFADD__(v6, v4);
  v4 += v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_40;
  }

  v5 = 0;
LABEL_9:
  v8 = result[2];
  if (*(v2 + 12))
  {
    if (result[3])
    {
      v9 = 1;
      goto LABEL_17;
    }

    v10 = 0;
  }

  else
  {
    v10 = *(v2 + 8);
    if (result[3])
    {
      v8 = 0;
    }
  }

  v7 = __OFADD__(v10, v8);
  v8 += v10;
  if (v7)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = 0;
LABEL_17:
  v11 = result[4];
  if (*(v2 + 20))
  {
    if (result[5])
    {
      v12 = 1;
      goto LABEL_25;
    }

    v13 = 0;
  }

  else
  {
    v13 = *(v2 + 16);
    if (result[5])
    {
      v11 = 0;
    }
  }

  v7 = __OFADD__(v13, v11);
  v11 += v13;
  if (v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = 0;
LABEL_25:
  v14 = result[6];
  if ((*(v2 + 28) & 1) == 0)
  {
    v16 = *(v2 + 24);
    if (result[7])
    {
      v14 = 0;
    }

LABEL_31:
    v7 = __OFADD__(v16, v14);
    v14 += v16;
    if (!v7)
    {
      v15 = 0;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
    return result;
  }

  if ((result[7] & 1) == 0)
  {
    v16 = 0;
    goto LABEL_31;
  }

  v15 = 1;
LABEL_33:
  v17 = *(v2 + 32);
  v29 = v17;
  v18 = *(result + 4);
  v23 = v8;
  v24 = v11;
  if (v18)
  {
    if (v17)
    {
      v22 = v4;
      v19 = result;
      sub_2619D2588(v2, v25);
      sub_2619D2588(v19, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v17;
      sub_2619D2644(v18, sub_2619D4240, 0, isUniquelyReferenced_nonNull_native, v25, &qword_27FEC8F40, &qword_2619DB1F0);
      v21 = v19;
      v4 = v22;
      result = sub_2619B61F8(v21);
      v17 = v25[0];
    }

    else
    {

      v17 = v18;
    }
  }

  else
  {
    result = sub_2619C4D24(&v29, v25, &qword_27FEC91C8, &qword_2619DA9B8);
  }

  LOBYTE(v25[0]) = v5;
  v28 = v9;
  v27 = v12;
  v26 = v15;
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v23;
  *(a2 + 12) = v9;
  *(a2 + 16) = v24;
  *(a2 + 20) = v12;
  *(a2 + 24) = v14;
  *(a2 + 28) = v15;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_2619C9C4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 12) = BYTE4(a2) & 1;
  *(a6 + 16) = a3;
  *(a6 + 20) = BYTE4(a3) & 1;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2619C9CAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 4);
  if ((v5 & 1) == 0 && (*(result + 4) & 1) == 0)
  {
    v6 = __OFSUB__(v4, *result);
    v4 -= *result;
    if (v6)
    {
      __break(1u);
      goto LABEL_21;
    }

    v5 = 0;
  }

  v7 = v2[2];
  v8 = *(v2 + 12);
  if ((v8 & 1) == 0 && (*(result + 12) & 1) == 0)
  {
    v9 = *(result + 8);
    v6 = __OFSUB__(v7, v9);
    v7 -= v9;
    if (!v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_9:
  v10 = v2[4];
  v11 = *(v2 + 20);
  if ((v11 & 1) == 0 && (*(result + 20) & 1) == 0)
  {
    v12 = *(result + 16);
    v6 = __OFSUB__(v10, v12);
    v10 -= v12;
    if (!v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_13:
  v13 = v2[6];
  v14 = *(v2 + 28);
  if ((v14 & 1) == 0 && (*(result + 28) & 1) == 0)
  {
    v15 = *(result + 24);
    v6 = __OFSUB__(v13, v15);
    v13 -= v15;
    if (!v6)
    {
      v14 = 0;
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_17:
  v16 = *(v2 + 4);
  if (v16)
  {
    v17 = *(result + 32);
    v18 = result;
    v19 = v7;
    v20 = v4;
    sub_2619D2588(result, v21);
    v16 = sub_2619D38AC(v16, v17, &qword_27FEC8F40, &qword_2619DB1F0);
    result = sub_2619B61F8(v18);
    v7 = v19;
    v4 = v20;
  }

  v21[0] = v5;
  v21[52] = v8;
  v21[48] = v11;
  v21[44] = v14;
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  *(a2 + 16) = v10;
  *(a2 + 20) = v11;
  *(a2 + 24) = v13;
  *(a2 + 28) = v14;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_2619C9E14@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 sub_2619C9E2C(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

unint64_t sub_2619C9E68()
{
  if (*(v0 + 4) & 1) != 0 || (*(v0 + 12) & 1) != 0 || (*(v0 + 20))
  {
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 32);
  }

  v4 = *(v0 + 8);
  v5 = *v0 + v4;
  if (__OFADD__(*v0, v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = __OFADD__(v5, v6);
    v1 = v5 + v6;
    if (!v7)
    {
      v2 = 0;
      return v1 | (v2 << 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2619C9EDC(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_2619C9EF4(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_2619C9F48(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

int *sub_2619C9F94@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if (v2[1])
  {
    if (result[1])
    {
      v5 = 1;
      goto LABEL_9;
    }

    v6 = 0;
  }

  else
  {
    v6 = *v2;
    if (result[1])
    {
      v4 = 0;
    }
  }

  v7 = __OFADD__(v6, v4);
  v4 += v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_40;
  }

  v5 = 0;
LABEL_9:
  v8 = result[2];
  if (v2[3])
  {
    if (result[3])
    {
      v9 = 1;
      goto LABEL_17;
    }

    v10 = 0;
  }

  else
  {
    v10 = v2[2];
    if (result[3])
    {
      v8 = 0;
    }
  }

  v7 = __OFADD__(v10, v8);
  v8 += v10;
  if (v7)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = 0;
LABEL_17:
  v11 = result[4];
  if (v2[5])
  {
    if (result[5])
    {
      v12 = 1;
      goto LABEL_25;
    }

    v13 = 0;
  }

  else
  {
    v13 = v2[4];
    if (result[5])
    {
      v11 = 0;
    }
  }

  v7 = __OFADD__(v13, v11);
  v11 += v13;
  if (v7)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = 0;
LABEL_25:
  v14 = *(result + 3);
  if ((v2[8] & 1) == 0)
  {
    v16 = *(v2 + 3);
    if (result[8])
    {
      v14 = 0;
    }

LABEL_31:
    v17 = __CFADD__(v16, v14);
    v14 += v16;
    if (!v17)
    {
      v15 = 0;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
    return result;
  }

  if ((result[8] & 1) == 0)
  {
    v16 = 0;
    goto LABEL_31;
  }

  v15 = 1;
LABEL_33:
  v18 = *(v2 + 6);
  v23 = v18;
  v19 = *(result + 6);
  v21 = v11;
  if (v19)
  {
    if (v18)
    {
      sub_2619C4D24(&v23, &v22, &qword_27FEC8FF8, &qword_2619DA9C0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v18;
      sub_2619D2644(v19, sub_2619D4240, 0, isUniquelyReferenced_nonNull_native, &v22, &qword_27FEC8F20, &qword_2619DA468);

      v18 = v22;
    }

    else
    {

      v18 = v19;
    }
  }

  else
  {
    result = sub_2619C4D24(&v23, &v22, &qword_27FEC8FF8, &qword_2619DA9C0);
  }

  LOBYTE(v22) = v5;
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 16) = v21;
  *(a2 + 20) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = 0;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_2619CA1DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 4) = BYTE4(result) & 1;
  *(a8 + 8) = a2;
  *(a8 + 12) = BYTE4(a2) & 1;
  *(a8 + 16) = a3;
  *(a8 + 20) = BYTE4(a3) & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_2619CA238@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 4);
  if ((v5 & 1) == 0 && (*(result + 4) & 1) == 0)
  {
    v6 = __OFSUB__(v4, *result);
    v4 -= *result;
    if (v6)
    {
      __break(1u);
      goto LABEL_22;
    }

    v5 = 0;
  }

  v7 = v2[2];
  v8 = *(v2 + 12);
  if ((v8 & 1) == 0 && (*(result + 12) & 1) == 0)
  {
    v9 = *(result + 8);
    v6 = __OFSUB__(v7, v9);
    v7 -= v9;
    if (!v6)
    {
      v8 = 0;
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  v10 = v2[4];
  v11 = *(v2 + 20);
  if ((v11 & 1) == 0 && (*(result + 20) & 1) == 0)
  {
    v12 = *(result + 16);
    v6 = __OFSUB__(v10, v12);
    v10 -= v12;
    if (!v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

LABEL_13:
  v13 = *(v2 + 3);
  v14 = *(v2 + 32);
  if ((v14 & 1) == 0 && (*(result + 32) & 1) == 0)
  {
    v15 = *(result + 24);
    v16 = v13 >= v15;
    v13 -= v15;
    if (!v16)
    {
      goto LABEL_24;
    }

    v14 = 0;
  }

  v17 = *(v2 + 6);
  if (v17)
  {
    v18 = *(result + 48);
    v19 = v7;
    v20 = v4;

    v17 = sub_2619D38AC(v17, v18, &qword_27FEC8F20, &qword_2619DA468);

    v7 = v19;
    v4 = v20;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  *(a2 + 16) = v10;
  *(a2 + 20) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_2619CA39C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
}

__n128 sub_2619CA3E8(uint64_t a1)
{

  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  result = *(a1 + 32);
  *(v1 + 80) = result;
  *(v1 + 96) = *(a1 + 48);
  return result;
}

int *sub_2619CA430@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (v2[1])
  {
    if (result[1])
    {
      v4 = 1;
      goto LABEL_9;
    }

    v5 = 0;
  }

  else
  {
    v5 = *v2;
    if (result[1])
    {
      v3 = 0;
    }
  }

  v6 = __OFADD__(v5, v3);
  v3 += v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_35;
  }

  v4 = 0;
LABEL_9:
  v7 = result[2];
  if (v2[3])
  {
    if (result[3])
    {
      v8 = 1;
      goto LABEL_17;
    }

    v9 = 0;
  }

  else
  {
    v9 = v2[2];
    if (result[3])
    {
      v7 = 0;
    }
  }

  v6 = __OFADD__(v9, v7);
  v7 += v9;
  if (v6)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = 0;
LABEL_17:
  v10 = result[4];
  if ((v2[5] & 1) == 0)
  {
    v12 = v2[4];
    if (result[5])
    {
      v10 = 0;
    }

LABEL_23:
    v6 = __OFADD__(v12, v10);
    v10 += v12;
    if (!v6)
    {
      v11 = 0;
      goto LABEL_25;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((result[5] & 1) == 0)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v11 = 1;
LABEL_25:
  v13 = *(result + 3);
  if (v2[8])
  {
    if (result[8])
    {
      v14 = 1;
LABEL_33:
      *a2 = v3;
      *(a2 + 4) = v4;
      *(a2 + 8) = v7;
      *(a2 + 12) = v8;
      *(a2 + 16) = v10;
      *(a2 + 20) = v11;
      *(a2 + 24) = v13;
      *(a2 + 32) = v14;
      return result;
    }

    v15 = 0;
  }

  else
  {
    v15 = *(v2 + 3);
    if (result[8])
    {
      v13 = 0;
    }
  }

  v16 = __CFADD__(v15, v13);
  v13 += v15;
  if (!v16)
  {
    v14 = 0;
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2619CA56C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 12) = BYTE4(a2) & 1;
  *(a6 + 16) = a3;
  *(a6 + 20) = BYTE4(a3) & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_2619CA5C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 4);
  if ((v4 & 1) == 0 && (*(result + 4) & 1) == 0)
  {
    v5 = __OFSUB__(v3, *result);
    v3 -= *result;
    if (v5)
    {
      __break(1u);
      goto LABEL_20;
    }

    v4 = 0;
  }

  v6 = v2[2];
  v7 = *(v2 + 12);
  if (v7 & 1) != 0 || (*(result + 12))
  {
    goto LABEL_9;
  }

  v8 = *(result + 8);
  v5 = __OFSUB__(v6, v8);
  v6 -= v8;
  if (v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = 0;
LABEL_9:
  v9 = v2[4];
  v10 = *(v2 + 20);
  if (v10 & 1) != 0 || (*(result + 20))
  {
LABEL_13:
    v12 = *(v2 + 3);
    v13 = *(v2 + 32);
    if ((v13 & 1) == 0 && (*(result + 32) & 1) == 0)
    {
      v14 = *(result + 24);
      v15 = v12 >= v14;
      v12 -= v14;
      if (!v15)
      {
        goto LABEL_22;
      }

      v13 = 0;
    }

    *a2 = v3;
    *(a2 + 4) = v4;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
    *(a2 + 16) = v9;
    *(a2 + 20) = v10;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    return result;
  }

  v11 = *(result + 16);
  v5 = __OFSUB__(v9, v11);
  v9 -= v11;
  if (!v5)
  {
    v10 = 0;
    goto LABEL_13;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

__n128 sub_2619CA6A0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 136);
  return result;
}

__n128 sub_2619CA6B8(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v3;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

uint64_t sub_2619CA710(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_2619CA720()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 16);
  if (v2 >> 31)
  {
    __break(1u);
LABEL_4:
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 32);
}

uint64_t sub_2619CA77C(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2619CA7AC(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2619CA7FC(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2619CA82C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 40);
  v7 = *(a1 + 5);
  if (v7)
  {
    sub_2619B619C(v3, v34);
    if (v6)
    {
      sub_2619B619C(a1, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v6;
      sub_2619D28D0(v7, sub_2619D25C4, 0, isUniquelyReferenced_nonNull_native, v34);
      result = sub_2619B6148(a1);
      v6 = v34[0];
    }

    else
    {
      result = sub_2619B619C(a1, v34);
      v6 = v7;
    }
  }

  else
  {
    result = sub_2619B619C(v3, v34);
  }

  v10 = *a1;
  if (*(v3 + 4))
  {
    if (a1[1])
    {
      v11 = 1;
      goto LABEL_14;
    }

    v12 = 0;
  }

  else
  {
    v12 = *v3;
    if (a1[1])
    {
      v10 = 0;
    }
  }

  v13 = __OFADD__(v12, v10);
  v10 += v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_72;
  }

  v11 = 0;
LABEL_14:
  v14 = a1[2];
  if (*(v3 + 12))
  {
    if (a1[3])
    {
      v15 = 1;
      goto LABEL_22;
    }

    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 8);
    if (a1[3])
    {
      v14 = 0;
    }
  }

  v13 = __OFADD__(v16, v14);
  v14 += v16;
  if (v13)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v15 = 0;
LABEL_22:
  v17 = a1[4];
  if (*(v3 + 20))
  {
    if (a1[5])
    {
      v18 = 1;
      goto LABEL_30;
    }

    v19 = 0;
  }

  else
  {
    v19 = *(v3 + 16);
    if (a1[5])
    {
      v17 = 0;
    }
  }

  v13 = __OFADD__(v19, v17);
  v17 += v19;
  if (v13)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v18 = 0;
LABEL_30:
  v20 = a1[6];
  if (*(v3 + 28))
  {
    if (a1[7])
    {
      v21 = 1;
      goto LABEL_38;
    }

    v22 = 0;
  }

  else
  {
    v22 = *(v3 + 24);
    if (a1[7])
    {
      v20 = 0;
    }
  }

  v13 = __OFADD__(v22, v20);
  v20 += v22;
  if (v13)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v21 = 0;
LABEL_38:
  v23 = a1[8];
  result = *(a1 + 36);
  if (*(v3 + 36))
  {
    if (result)
    {
      v24 = 1;
      goto LABEL_46;
    }

    v25 = 0;
  }

  else
  {
    v25 = *(v3 + 32);
    if (result)
    {
      v23 = 0;
    }
  }

  v13 = __OFADD__(v25, v23);
  v23 += v25;
  if (v13)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v24 = 0;
LABEL_46:
  result = a1[12];
  if (*(v3 + 52))
  {
    if (a1[13])
    {
      v26 = 1;
      goto LABEL_54;
    }

    v27 = 0;
  }

  else
  {
    v27 = *(v3 + 48);
    if (a1[13])
    {
      LODWORD(result) = 0;
    }
  }

  v13 = __OFADD__(v27, result);
  result = (v27 + result);
  if (v13)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v26 = 0;
LABEL_54:
  v28 = a1[14];
  if ((*(v3 + 60) & 1) == 0)
  {
    v30 = *(v3 + 56);
    if (a1[15])
    {
      v28 = 0;
    }

LABEL_60:
    v13 = __OFADD__(v30, v28);
    v28 += v30;
    if (!v13)
    {
      v29 = 0;
      goto LABEL_62;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if ((a1[15] & 1) == 0)
  {
    v30 = 0;
    goto LABEL_60;
  }

  v29 = 1;
LABEL_62:
  v31 = a1[16];
  if (*(v3 + 68))
  {
    if (a1[17])
    {
      v32 = 1;
LABEL_70:
      LOBYTE(v34[0]) = v11;
      *a2 = v10;
      *(a2 + 4) = v11;
      *(a2 + 8) = v14;
      *(a2 + 12) = v15;
      *(a2 + 16) = v17;
      *(a2 + 20) = v18;
      *(a2 + 24) = v20;
      *(a2 + 28) = v21;
      *(a2 + 32) = v23;
      *(a2 + 36) = v24;
      *(a2 + 40) = v6;
      *(a2 + 48) = result;
      *(a2 + 52) = v26;
      *(a2 + 56) = v28;
      *(a2 + 60) = v29;
      *(a2 + 64) = v31;
      *(a2 + 68) = v32;
      return result;
    }

    v33 = 0;
  }

  else
  {
    v33 = *(v3 + 64);
    if (a1[17])
    {
      v31 = 0;
    }
  }

  v13 = __OFADD__(v33, v31);
  v31 += v33;
  if (!v13)
  {
    v32 = 0;
    goto LABEL_70;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_2619CAB70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11)
{
  *a9 = result;
  *(a9 + 4) = BYTE4(result) & 1;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 60) = BYTE4(a8) & 1;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return result;
}

uint64_t sub_2619CAC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 4);
  if ((v6 & 1) == 0 && (*(a1 + 4) & 1) == 0)
  {
    v7 = __OFSUB__(v5, *a1);
    v5 -= *a1;
    if (v7)
    {
      goto LABEL_87;
    }

    v6 = 0;
  }

  v8 = *(v2 + 8);
  v9 = *(v2 + 12);
  if ((v9 & 1) == 0 && (*(a1 + 12) & 1) == 0)
  {
    v10 = *(a1 + 8);
    v7 = __OFSUB__(v8, v10);
    v8 -= v10;
    if (v7)
    {
      goto LABEL_88;
    }

    v9 = 0;
  }

  v96 = *(v2 + 16);
  v11 = *(v2 + 20);
  if ((v11 & 1) == 0 && (*(a1 + 20) & 1) == 0)
  {
    v12 = *(a1 + 16);
    v7 = __OFSUB__(v96, v12);
    v13 = v96 - v12;
    if (v7)
    {
      goto LABEL_89;
    }

    v96 = v13;
    v11 = 0;
  }

  v14 = *(v2 + 24);
  v15 = *(v2 + 28);
  if ((v15 & 1) == 0 && (*(a1 + 28) & 1) == 0)
  {
    v16 = *(a1 + 24);
    v7 = __OFSUB__(v14, v16);
    v14 -= v16;
    if (v7)
    {
      goto LABEL_90;
    }

    v15 = 0;
  }

  v17 = *(v2 + 32);
  v18 = *(v2 + 36);
  if ((v18 & 1) == 0 && (*(a1 + 36) & 1) == 0)
  {
    v19 = *(a1 + 32);
    v7 = __OFSUB__(v17, v19);
    v17 -= v19;
    if (v7)
    {
      goto LABEL_91;
    }

    v18 = 0;
  }

  v92 = v18;
  v93 = v15;
  v86 = v17;
  v87 = v14;
  v94 = v11;
  v85 = sub_2619D2BD8(MEMORY[0x277D84F90]);
  v20 = *(v2 + 48);
  v21 = *(v2 + 52);
  if (v21)
  {
    v23 = v93;
    v22 = v94;
    v24 = v92;
  }

  else
  {
    v23 = v93;
    v22 = v94;
    v24 = v92;
    if ((*(a1 + 52) & 1) == 0)
    {
      v25 = *(a1 + 48);
      v7 = __OFSUB__(v20, v25);
      v20 -= v25;
      if (v7)
      {
        goto LABEL_92;
      }

      v21 = 0;
    }
  }

  v26 = *(v2 + 56);
  v27 = *(v2 + 60);
  if ((v27 & 1) == 0 && (*(a1 + 60) & 1) == 0)
  {
    v28 = *(a1 + 56);
    v7 = __OFSUB__(v26, v28);
    v26 -= v28;
    if (v7)
    {
      goto LABEL_93;
    }

    v27 = 0;
  }

  v29 = *(v2 + 64);
  v30 = *(v2 + 68);
  if ((v30 & 1) == 0 && (*(a1 + 68) & 1) == 0)
  {
    v31 = *(a1 + 64);
    v7 = __OFSUB__(v29, v31);
    v29 -= v31;
    if (v7)
    {
      goto LABEL_94;
    }

    v30 = 0;
  }

  v145 = v6;
  v144 = v9;
  v143 = v22;
  v142 = v23;
  v141 = v24;
  v140 = v21;
  v139 = v27;
  v138 = v30;
  v32 = *(v2 + 40);
  if (!v32)
  {
    v72 = v85;
LABEL_83:
    LODWORD(v106) = v5;
    BYTE4(v106) = v6;
    *(&v106 + 5) = v158;
    BYTE7(v106) = v159;
    DWORD2(v106) = v8;
    BYTE12(v106) = v9;
    *(&v106 + 13) = v156;
    HIBYTE(v106) = v157;
    LODWORD(v107) = v96;
    BYTE4(v107) = v22;
    *(&v107 + 5) = v154;
    BYTE7(v107) = v155;
    DWORD2(v107) = v87;
    BYTE12(v107) = v23;
    *(&v107 + 13) = v152;
    HIBYTE(v107) = v153;
    LODWORD(v108) = v86;
    BYTE4(v108) = v24;
    *(&v108 + 5) = v150;
    BYTE7(v108) = v151;
    *(&v108 + 1) = v72;
    *v109 = v20;
    v109[4] = v21;
    *&v109[5] = v148;
    v109[7] = v149;
    *&v109[8] = v26;
    v109[12] = v27;
    v109[15] = v147;
    *&v109[13] = v146;
    *&v109[16] = v29;
    v109[20] = v30;
    LODWORD(v110) = v5;
    BYTE4(v110) = v6;
    HIBYTE(v110) = v159;
    *(&v110 + 5) = v158;
    v111 = v8;
    v112 = v9;
    v114 = v157;
    v113 = v156;
    v115 = v96;
    v116 = v22;
    v118 = v155;
    v117 = v154;
    v119 = v87;
    v120 = v23;
    v122 = v153;
    v121 = v152;
    v123 = v86;
    v124 = v24;
    v126 = v151;
    v125 = v150;
    v127 = v72;
    v128 = v20;
    v129 = v21;
    v131 = v149;
    v130 = v148;
    v132 = v26;
    v133 = v27;
    v135 = v147;
    v134 = v146;
    v136 = v29;
    v137 = v30;
    sub_2619B619C(&v106, &v105);
    result = sub_2619B6148(&v110);
    v74 = *v109;
    *(a2 + 32) = v108;
    *(a2 + 48) = v74;
    *(a2 + 61) = *&v109[13];
    v75 = v107;
    *a2 = v106;
    *(a2 + 16) = v75;
    return result;
  }

  v77 = v30;
  v78 = v29;
  v79 = v27;
  v80 = v26;
  v81 = v21;
  v82 = v20;
  v83 = a2;
  v33 = v32;
  v84 = sub_2619D2BD8(MEMORY[0x277D84F90]);
  v99 = v33;
  v100 = a1;
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v102 = v36 & *(v33 + 64);
  sub_2619B619C(v2, &v110);
  v37 = 0;
  v38 = v100;
  v39 = (v35 + 63) >> 6;
  v97 = v39;
  v98 = v33 + 64;
  v90 = v6;
  v91 = v5;
  v88 = v9;
  v89 = v8;
LABEL_38:
  v40 = v37;
  v41 = v102;
  if (!v102)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v42 = v40;
LABEL_43:
    v101 = v42;
    v102 = (v41 - 1) & v41;
    v43 = __clz(__rbit64(v41)) | (v42 << 6);
    v44 = *(*(v99 + 48) + 4 * v43);
    v45 = *(*(v99 + 56) + 8 * v43);
    v46 = *(v38 + 40);
    v103 = v45;
    v95 = v44;
    if (!v46 || !*(v46 + 16) || (v47 = sub_2619D0ED4(v44), (v48 & 1) == 0))
    {
      swift_bridgeObjectRetain_n();
      v59 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v59;
      v61 = sub_2619D0ED4(v44);
      v63 = v59[2];
      v64 = (v62 & 1) == 0;
      v7 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v7)
      {
        goto LABEL_95;
      }

      v66 = v62;
      if (v59[3] >= v65)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = v61;
          sub_2619D0F88();
          v61 = v71;
          v45 = v103;
        }
      }

      else
      {
        sub_2619D071C(v65, isUniquelyReferenced_nonNull_native);
        v61 = sub_2619D0ED4(v95);
        if ((v66 & 1) != (v67 & 1))
        {
          goto LABEL_97;
        }
      }

      v68 = v110;
      v84 = v110;
      if (v66)
      {
        *(v110[7] + 8 * v61) = v45;

        v38 = v100;
        v39 = v97;
        v34 = v98;
      }

      else
      {
        v110[(v61 >> 6) + 8] |= 1 << v61;
        *(v68[6] + 4 * v61) = v95;
        *(v68[7] + 8 * v61) = v45;
        v69 = v68[2];
        v7 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v7)
        {
          goto LABEL_96;
        }

        v68[2] = v70;
        v38 = v100;
        v39 = v97;
        v34 = v98;
      }

      v37 = v101;
      goto LABEL_38;
    }

    v104 = *(*(v46 + 56) + 8 * v47);
    v110 = MEMORY[0x277D84F90];
    v49 = v45 >> 62 ? sub_2619D9CA8() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v49)
    {
      break;
    }

    v56 = MEMORY[0x277D84F90];
LABEL_62:

    if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
    {
      if (sub_2619D9CA8() > 0)
      {
LABEL_69:
        v57 = v84;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v110 = v57;
        sub_2619D1B78(v56, v95, v58);

        v84 = v110;
        v38 = v100;
        v37 = v101;
        v39 = v97;
        v34 = v98;
        goto LABEL_38;
      }
    }

    else if (*(v56 + 16) > 0)
    {
      goto LABEL_69;
    }

    v38 = v100;
    v40 = v101;
    v39 = v97;
    v34 = v98;
    v41 = v102;
    if (!v102)
    {
LABEL_40:
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_86;
        }

        if (v42 >= v39)
        {

          a2 = v83;
          v72 = v84;
          v23 = v93;
          v22 = v94;
          v24 = v92;
          LOBYTE(v21) = v81;
          v20 = v82;
          LOBYTE(v27) = v79;
          v26 = v80;
          LOBYTE(v30) = v77;
          v29 = v78;
          goto LABEL_83;
        }

        v41 = *(v34 + 8 * v42);
        ++v40;
        if (v41)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v50 = 0;
  v51 = v45 & 0xC000000000000001;
  v52 = v45 & 0xFFFFFFFFFFFFFF8;
  while (v51)
  {
    v54 = MEMORY[0x2667148E0](v50, v45);
    v53 = v54;
    v55 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_84;
    }

LABEL_55:
    *&v106 = v53;
    MEMORY[0x28223BE20](v54);
    v76[2] = &v106;
    if (sub_2619B2F5C(sub_2619B63C4, v76, v104))
    {
    }

    else
    {
      sub_2619D9C08();
      sub_2619D9C38();
      v45 = v103;
      sub_2619D9C48();
      sub_2619D9C18();
    }

    ++v50;
    if (v55 == v49)
    {
      v56 = v110;
      LOBYTE(v6) = v90;
      v5 = v91;
      LOBYTE(v9) = v88;
      v8 = v89;
      goto LABEL_62;
    }
  }

  if (v50 >= *(v52 + 16))
  {
    goto LABEL_85;
  }

  v53 = *(v45 + 8 * v50 + 32);

  v55 = v50 + 1;
  if (!__OFADD__(v50, 1))
  {
    goto LABEL_55;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

unint64_t sub_2619CB450(unint64_t result)
{
  if (result)
  {
    v1 = 0;
    LODWORD(v2) = 0;
    v3 = 1 << *(result + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(result + 64);
    v6 = (v3 + 63) >> 6;
    while (v5)
    {
      v7 = v1;
LABEL_11:
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = *(*(result + 56) + ((v7 << 8) | (4 * v8)));
      v10 = __OFADD__(v2, v9);
      LODWORD(v2) = v2 + v9;
      if (v10)
      {
        __break(1u);
LABEL_14:
        v2 = v2;
        return v2 | ((result == 0) << 32);
      }
    }

    while (1)
    {
      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v7 >= v6)
      {
        goto LABEL_14;
      }

      v5 = *(result + 64 + 8 * v7);
      ++v1;
      if (v5)
      {
        v1 = v7;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v2 = 0;
    return v2 | ((result == 0) << 32);
  }

  return result;
}

uint64_t sub_2619CB518(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t sub_2619CB544(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v1 = *(a1 + 16);
  if (v1 >> 31)
  {
    __break(1u);
LABEL_4:
    v1 = 0;
  }

  return v1 | ((a1 == 0) << 32);
}

uint64_t sub_2619CB57C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    if (a2)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v2;
      sub_2619D021C(a1, sub_2619D25D8, 0, isUniquelyReferenced_nonNull_native, &v6);
      return v6;
    }

    else
    {
    }
  }

  else
  {
  }

  return v2;
}

void *sub_2619CB620(uint64_t a1, uint64_t a2)
{
  v4 = sub_2619D2CE8(MEMORY[0x277D84F90]);
  if (!a2)
  {
    return v4;
  }

  v4 = sub_2619D2CE8(MEMORY[0x277D84F90]);
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a2 + 48) + 8 * v12);
    v14 = *(*(a2 + 56) + 4 * v12);
    if (a1 && *(a1 + 16) && (v15 = sub_2619D0F1C(v13), (v16 & 1) != 0))
    {
      v17 = *(*(a1 + 56) + 4 * v15);
      v18 = __OFSUB__(v14, v17);
      v14 -= v17;
      if (v18)
      {
        goto LABEL_40;
      }

      if (v14 >= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v4;
        v19 = sub_2619D0F1C(v13);
        v21 = v4[2];
        v22 = (v20 & 1) == 0;
        v18 = __OFADD__(v21, v22);
        v23 = v21 + v22;
        if (v18)
        {
          goto LABEL_43;
        }

        if (v4[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v20 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v46 = v19;
            v38 = v20;
            sub_2619D10E4();
            v39 = v38;
            v19 = v46;
            v4 = v47;
            if ((v39 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_31:
          *(v4[7] + 4 * v19) = v14;
        }

        else
        {
          v24 = v20;
          sub_2619D0990(v23, isUniquelyReferenced_nonNull_native);
          v19 = sub_2619D0F1C(v13);
          if ((v24 & 1) != (v25 & 1))
          {
            goto LABEL_45;
          }

          v26 = v24;
          v4 = v47;
          if (v26)
          {
            goto LABEL_31;
          }

LABEL_35:
          v4[(v19 >> 6) + 8] |= 1 << v19;
          *(v4[6] + 8 * v19) = v13;
          *(v4[7] + 4 * v19) = v14;
          v40 = v4[2];
          v18 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v18)
          {
            goto LABEL_44;
          }

          v4[2] = v41;
        }
      }
    }

    else
    {
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v4;
      v19 = sub_2619D0F1C(v13);
      v28 = v4[2];
      v29 = (v27 & 1) == 0;
      v18 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v18)
      {
        goto LABEL_41;
      }

      if (v4[3] >= v30)
      {
        if (v44)
        {
          if (v27)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v45 = v19;
          v36 = v27;
          sub_2619D10E4();
          v37 = v36;
          v19 = v45;
          v4 = v48;
          if (v37)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v31 = v27;
        sub_2619D0990(v30, v44);
        v19 = sub_2619D0F1C(v13);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_45;
        }

        v33 = v31;
        v4 = v48;
        if (v33)
        {
          goto LABEL_31;
        }
      }

      v4[(v19 >> 6) + 8] |= 1 << v19;
      *(v4[6] + 8 * v19) = v13;
      *(v4[7] + 4 * v19) = v14;
      v34 = v4[2];
      v18 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v18)
      {
        goto LABEL_42;
      }

      v4[2] = v35;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v4;
    }

    v7 = *(a2 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

uint64_t sub_2619CB970(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

uint64_t sub_2619CB9F4(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_2619CBA20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v11 = a2;
  v12 = result;
  if ((a5 & 0x100000000) == 0)
  {
    if ((result & 0x100000000) != 0)
    {
      v12 = 0;
    }

LABEL_6:
    v13 = __OFADD__(a5, v12);
    v12 += a5;
    if (v13)
    {
      __break(1u);
      goto LABEL_28;
    }

    v14 = 0;
    if ((a6 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if ((result & 0x100000000) == 0)
  {
    LODWORD(a5) = 0;
    goto LABEL_6;
  }

  v14 = 1;
  if ((a6 & 0x100000000) == 0)
  {
LABEL_8:
    if ((a2 & 0x100000000) != 0)
    {
      v11 = 0;
    }

LABEL_13:
    if (!__OFADD__(a6, v11))
    {
      v15 = 0;
      if ((a7 & 0x100000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_18:
      if ((a3 & 0x100000000) != 0)
      {
        v16 = 1;
        if (!a4)
        {
          goto LABEL_25;
        }

LABEL_22:
        if (a8)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = a8;
          sub_2619D2DC8(a4, sub_2619D25EC, 0, isUniquelyReferenced_nonNull_native, &v18);

LABEL_26:
          LOBYTE(v18) = v14;
          v20 = v15;
          v19 = v16;
          return v12 | (v14 << 32);
        }

LABEL_25:

        goto LABEL_26;
      }

      LODWORD(a7) = 0;
      goto LABEL_20;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_11:
  if ((a2 & 0x100000000) == 0)
  {
    LODWORD(a6) = 0;
    goto LABEL_13;
  }

  v15 = 1;
  if ((a7 & 0x100000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((a3 & 0x100000000) != 0)
  {
    v10 = 0;
  }

LABEL_20:
  if (!__OFADD__(a7, v10))
  {
    v16 = 0;
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2619CBBE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  if (((a5 | result) & 0x100000000) != 0)
  {
    v11 = HIDWORD(a5) & 1;
    if (((a6 | a2) & 0x100000000) != 0)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v9 = a5 - result;
  if (__OFSUB__(a5, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v11) = 0;
  if (((a6 | a2) & 0x100000000) == 0)
  {
LABEL_9:
    if (!__OFSUB__(a6, a2))
    {
      if (((a7 | a3) & 0x100000000) != 0)
      {
LABEL_4:
        if (!a8)
        {
          return v9 | (v11 << 32);
        }

LABEL_5:

        sub_2619D3188(a8, a4);

        return v9 | (v11 << 32);
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_3:
  if (((a7 | a3) & 0x100000000) != 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  if (!__OFSUB__(a7, a3))
  {
    if (!a8)
    {
      return v9 | (v11 << 32);
    }

    goto LABEL_5;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_2619CBD00()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 228);

  return v1 | (v2 << 32);
}

uint64_t sub_2619CBD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 224) = a1;
  *(v4 + 228) = BYTE4(a1) & 1;
  *(v4 + 232) = a2;
  *(v4 + 236) = BYTE4(a2) & 1;
  *(v4 + 240) = a3;
  *(v4 + 244) = BYTE4(a3) & 1;
  *(v4 + 248) = a4;
  return result;
}

uint64_t sub_2619CBE14(uint64_t result)
{
  v2 = *(v1 + 248);
  v13 = v2;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
LABEL_5:
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      if (*(*(v2 + 56) + ((v3 << 8) | (4 * v9))) == result && __OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_14:
        sub_2619C4D24(&v13, &v12, &qword_27FEC91D0, &qword_2619DA9C8);

        if (v4 >= 0xFFFFFFFF80000000)
        {
          if (v4 <= 0x7FFFFFFF)
          {
            return v4;
          }

          __break(1u);
          return 0;
        }

LABEL_20:
        __break(1u);
        return result;
      }
    }

    while (1)
    {
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_14;
      }

      v7 = *(v2 + 64 + 8 * v10);
      ++v3;
      if (v7)
      {
        v3 = v10;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

double sub_2619CBFD4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_2619D3348(a2, a3, v6);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

double sub_2619CC018@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v16 = v5;
  v6 = *(a1 + 8);
  if (v6)
  {
    if (v5)
    {
      sub_2619C4D24(&v16, v13, &qword_27FEC9000, &qword_2619DA660);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[0] = v5;
      sub_2619D2644(v6, sub_2619D4240, 0, isUniquelyReferenced_nonNull_native, v13, &qword_27FEC8ED8, &unk_2619DB1B0);

      v5 = *&v13[0];
    }

    else
    {

      v5 = v6;
    }
  }

  else
  {
    sub_2619C4D24(&v16, v13, &qword_27FEC9000, &qword_2619DA660);
  }

  v8 = *(v2 + 32);
  v15 = v8;
  v9 = *(a1 + 32);
  if (v9)
  {
    if (v8)
    {
      sub_2619C4D24(&v15, v13, &qword_27FEC9008, &qword_2619DA668);

      v10 = swift_isUniquelyReferenced_nonNull_native();
      *&v13[0] = v8;
      sub_2619D2644(v9, sub_2619D4240, 0, v10, v13, &qword_27FEC8ED0, &qword_2619DA3B8);

      v8 = *&v13[0];
    }

    else
    {

      v8 = v9;
    }
  }

  else
  {
    sub_2619C4D24(&v15, v13, &qword_27FEC9008, &qword_2619DA668);
  }

  sub_2619D3348(v5, v8, v13);
  result = *v13;
  v12 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v12;
  *(a2 + 32) = v14;
  return result;
}

double sub_2619CC1EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  if (!v5)
  {
    v7 = 0;
    v8 = *(v2 + 32);
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *(a1 + 8);

  v7 = sub_2619D38AC(v5, v6, &qword_27FEC8ED8, &unk_2619DB1B0);

  v8 = *(v2 + 32);
  if (v8)
  {
LABEL_3:
    v9 = *(a1 + 32);

    v8 = sub_2619D38AC(v8, v9, &qword_27FEC8ED0, &qword_2619DA3B8);
  }

LABEL_4:
  sub_2619D3348(v7, v8, v12);
  result = *v12;
  v11 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v11;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_2619CC2D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 260);
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  *a1 = *(v1 + 256);
  *(a1 + 4) = v2;
  *(a1 + 8) = *(v1 + 264);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

__n128 sub_2619CC33C(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v4;
  *(v1 + 288) = *(a1 + 32);
  return result;
}

void sub_2619CC3DC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
}

void sub_2619CC424(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void sub_2619CC468(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
}

void sub_2619CC488(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void sub_2619CC4CC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
}

void *sub_2619CC540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 *a10, __int128 *a11, uint64_t a12)
{
  v23[0] = 1;
  __dst[0] = 1;
  v20[0] = 1;
  v20[316] = 1;
  v20[312] = 1;
  v20[308] = 1;
  v20[304] = 1;
  v20[300] = 1;
  *&__src[144] = 0;
  __src[148] = 1;
  *&__src[152] = 0;
  __src[156] = 1;
  *&__src[160] = 0;
  __src[164] = 1;
  *&__src[168] = 0;
  __src[172] = 1;
  *&__src[176] = 0;
  __src[180] = 1;
  *&__src[184] = 0;
  *&__src[192] = 0;
  __src[196] = 1;
  *&__src[200] = 0;
  __src[204] = 1;
  *&__src[208] = 0;
  __src[212] = 1;
  *__src = a1;
  __src[4] = BYTE4(a1) & 1;
  *&__src[224] = a2;
  __src[228] = BYTE4(a2) & 1;
  *&__src[232] = a3;
  __src[236] = BYTE4(a3) & 1;
  *&__src[240] = a4;
  __src[244] = BYTE4(a4) & 1;
  *&__src[248] = a5;
  v13 = *(a6 + 16);
  *&__src[8] = *a6;
  *&__src[24] = v13;
  *&__src[40] = *(a6 + 32);
  v14 = *a7;
  v15 = a7[1];
  v16 = a7[2];
  *&__src[96] = *(a7 + 6);
  *&__src[80] = v16;
  *&__src[64] = v15;
  *&__src[48] = v14;
  *&__src[216] = a8;
  *&__src[288] = *(a10 + 4);
  v17 = *a10;
  *&__src[272] = a10[1];
  *&__src[256] = v17;
  __src[136] = *(a11 + 32);
  v18 = *a11;
  *&__src[120] = a11[1];
  *&__src[104] = v18;
  sub_2619B952C(a12, &__src[144]);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v23, __src, sizeof(v23));
  sub_2619B624C(__dst, v20);
  sub_2619B3420(v23);
  return memcpy(a9, __dst, 0x128uLL);
}

unsigned int *sub_2619CC6D0@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = result;
  v5 = *result;
  if (v2[1])
  {
    if (result[1])
    {
      v40 = 1;
      v41 = *result;
      goto LABEL_9;
    }

    v6 = 0;
  }

  else
  {
    v6 = *v2;
    if (result[1])
    {
      v5 = 0;
    }
  }

  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
    return result;
  }

  v40 = 0;
  v41 = v8;
LABEL_9:
  v9 = v2[56];
  v10 = v2[58];
  v11 = *(v2 + 236);
  v12 = v2[60];
  v13 = *(v2 + 244);
  v14 = *(v2 + 31);
  v15 = result[56];
  v16 = *(result + 228);
  v17 = result[58];
  v18 = *(result + 236);
  v19 = result[60] | (*(result + 244) << 32);
  LOBYTE(v46[0]) = *(v2 + 228);
  __dst[0] = v11;
  __src[0] = v13;
  v20 = sub_2619CBA20(v15 | (v16 << 32), v17 | (v18 << 32), v19, *(result + 31), v9 | (LOBYTE(v46[0]) << 32), v10 | (v11 << 32), v12 | (v13 << 32), v14);
  v22 = v21;
  v38 = v23;
  v39 = v24;
  v25 = *(v2 + 6);
  v63 = *(v2 + 2);
  v64 = v25;
  v65 = *(v2 + 5);
  v26 = *(v4 + 6);
  v61[0] = *(v4 + 2);
  v61[1] = v26;
  v62 = *(v4 + 5);
  sub_2619C9A0C(v61, v47);
  sub_2619C9F94(v4 + 12, v49);
  v37 = sub_2619CB57C(*(v4 + 27), *(v2 + 27));
  v27 = *(v2 + 33);
  v28 = *(v2 + 36);
  v29 = *(v4 + 33);
  v30 = *(v4 + 36);
  v60 = *(v3 + 33);
  if (v29)
  {
    if (v27)
    {
      sub_2619C4D24(&v60, v46, &qword_27FEC9000, &qword_2619DA660);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v27;
      sub_2619D2644(v29, sub_2619D4240, 0, isUniquelyReferenced_nonNull_native, v46, &qword_27FEC8ED8, &unk_2619DB1B0);

      v27 = v46[0];
    }

    else
    {

      v27 = v29;
    }
  }

  else
  {
    sub_2619C4D24(&v60, v46, &qword_27FEC9000, &qword_2619DA660);
  }

  v59 = v28;
  if (v30)
  {
    if (v28)
    {
      sub_2619C4D24(&v59, v46, &qword_27FEC9008, &qword_2619DA668);

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v28;
      sub_2619D2644(v30, sub_2619D4240, 0, v32, v46, &qword_27FEC8ED0, &qword_2619DA3B8);

      v28 = v46[0];
    }

    else
    {

      v28 = v30;
    }
  }

  else
  {
    sub_2619C4D24(&v59, v46, &qword_27FEC9008, &qword_2619DA668);
  }

  sub_2619D3348(v27, v28, v51);
  sub_2619CA430(v4 + 26, v53);
  v33 = *(v3 + 12);
  v57[4] = *(v3 + 11);
  v58[0] = v33;
  v34 = *(v3 + 10);
  v57[2] = *(v3 + 9);
  v57[3] = v34;
  v35 = *(v4 + 9);
  v56[1] = *(v4 + 10);
  v36 = *(v4 + 12);
  v56[2] = *(v4 + 11);
  v57[0] = v36;
  *(v58 + 13) = *(v3 + 205);
  *(v57 + 13) = *(v4 + 205);
  v56[0] = v35;
  sub_2619CA82C(v56, v55);
  LOBYTE(v46[0]) = 1;
  __dst[0] = 1;
  v43[0] = 1;
  v43[316] = 1;
  v43[312] = 1;
  v43[308] = 1;
  v43[304] = 1;
  v43[300] = 1;
  *&__src[144] = 0;
  __src[148] = 1;
  *&__src[152] = 0;
  __src[156] = 1;
  *&__src[160] = 0;
  __src[164] = 1;
  *&__src[168] = 0;
  __src[172] = 1;
  *&__src[176] = 0;
  __src[180] = 1;
  *&__src[184] = 0;
  *&__src[192] = 0;
  __src[196] = 1;
  *&__src[200] = 0;
  __src[204] = 1;
  *&__src[208] = 0;
  __src[212] = 1;
  *__src = v41;
  __src[4] = v40;
  *&__src[224] = v20;
  __src[228] = BYTE4(v20) & 1;
  *&__src[232] = v22;
  __src[236] = BYTE4(v22) & 1;
  *&__src[240] = v38;
  __src[244] = BYTE4(v38) & 1;
  *&__src[8] = v47[0];
  *&__src[24] = v47[1];
  *&__src[40] = v48;
  *&__src[96] = v50;
  *&__src[64] = v49[1];
  *&__src[80] = v49[2];
  *&__src[48] = v49[0];
  *&__src[216] = v37;
  *&__src[248] = v39;
  *&__src[288] = v52;
  *&__src[256] = v51[0];
  *&__src[272] = v51[1];
  __src[136] = v54;
  *&__src[120] = v53[1];
  *&__src[104] = v53[0];
  sub_2619B952C(v55, &__src[144]);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v46, __src, sizeof(v46));
  sub_2619B624C(__dst, v43);
  sub_2619B3420(v46);
  return memcpy(a2, __dst, 0x128uLL);
}

_BYTE *sub_2619CCBB8@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = result;
  v6 = *v2;
  v7 = *(v2 + 4);
  if ((v7 & 1) == 0 && (result[4] & 1) == 0)
  {
    v8 = __OFSUB__(v6, *result);
    v6 -= *result;
    if (v8)
    {
      __break(1u);
      goto LABEL_46;
    }

    v7 = 0;
  }

  v9 = v2[56];
  v10 = v2[58];
  v11 = *(v2 + 236);
  v12 = v2[60];
  v13 = *(v2 + 244);
  v14 = *(v2 + 31);
  v15 = *(result + 15);
  v79 = *(result + 14);
  v80 = v15;
  v16 = *(v3 + 228);
  if ((v16 & 1) == 0 && (BYTE4(v79) & 1) == 0)
  {
    v8 = __OFSUB__(v9, v79);
    v9 -= v79;
    if (!v8)
    {
      v16 = 0;
      goto LABEL_9;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_9:
  if ((v11 & 1) == 0 && (BYTE12(v79) & 1) == 0)
  {
    v8 = __OFSUB__(v10, DWORD2(v79));
    v10 -= DWORD2(v79);
    if (!v8)
    {
      v11 = 0;
      goto LABEL_13;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_13:
  if (v13 & 1) != 0 || (BYTE4(v80))
  {
    goto LABEL_17;
  }

  v8 = __OFSUB__(v12, v80);
  v12 -= v80;
  if (v8)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v13 = 0;
LABEL_17:
  v47 = v7;
  v48 = v6;
  v45 = v10;
  v46 = v12;
  v43 = v13;
  v44 = v9;
  v41 = v16;
  v42 = v11;
  if (v14)
  {

    v40 = sub_2619D3188(v14, *(&v80 + 1));
    result = sub_2619B9484(&v79);
  }

  else
  {
    v40 = 0;
  }

  v17 = v3[2];
  v18 = v3[4];
  v19 = *(v3 + 20);
  v20 = v3[6];
  v21 = *(v3 + 28);
  v22 = v3[8];
  v23 = *(v3 + 36);
  v24 = *(v3 + 5);
  v25 = *(v4 + 24);
  v76 = *(v4 + 8);
  v77 = v25;
  v78 = *(v4 + 5);
  v26 = *(v3 + 12);
  if ((v26 & 1) == 0 && (BYTE4(v76) & 1) == 0)
  {
    v8 = __OFSUB__(v17, v76);
    v17 -= v76;
    if (!v8)
    {
      v26 = 0;
      goto LABEL_24;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_24:
  if ((v19 & 1) == 0 && (BYTE12(v76) & 1) == 0)
  {
    v8 = __OFSUB__(v18, DWORD2(v76));
    v18 -= DWORD2(v76);
    if (!v8)
    {
      v19 = 0;
      goto LABEL_28;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_28:
  if ((v21 & 1) == 0 && (BYTE4(v77) & 1) == 0)
  {
    v8 = __OFSUB__(v20, v77);
    v20 -= v77;
    if (!v8)
    {
      v21 = 0;
      goto LABEL_32;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_32:
  if ((v23 & 1) == 0 && (BYTE12(v77) & 1) == 0)
  {
    v8 = __OFSUB__(v22, DWORD2(v77));
    v22 -= DWORD2(v77);
    if (!v8)
    {
      v23 = 0;
      goto LABEL_36;
    }

LABEL_52:
    __break(1u);
    return result;
  }

LABEL_36:
  v36 = v18;
  v37 = v20;
  v38 = v22;
  v39 = a2;
  if (v24)
  {

    v27 = sub_2619D38AC(v24, v78, &qword_27FEC8F40, &qword_2619DB1F0);
    sub_2619B61F8(&v76);
  }

  else
  {
    v27 = 0;
  }

  v64 = v26 & 1;
  v61 = v19 & 1;
  v58 = v21 & 1;
  v55 = v23 & 1;
  sub_2619CA238((v4 + 48), v65);
  v28 = sub_2619CB620(*(v4 + 27), *(v3 + 27));
  v29 = *(v3 + 33);
  v30 = *(v3 + 36);
  v31 = *(v4 + 36);
  if (v29)
  {
    v32 = *(v4 + 33);

    v29 = sub_2619D38AC(v29, v32, &qword_27FEC8ED8, &unk_2619DB1B0);
  }

  if (v30)
  {

    v33 = sub_2619D38AC(v30, v31, &qword_27FEC8ED0, &qword_2619DA3B8);
  }

  else
  {
    v33 = 0;
  }

  sub_2619D3348(v29, v33, v67);
  sub_2619CA5C4((v4 + 104), v69);
  v34 = *(v3 + 12);
  v74 = *(v3 + 11);
  v75[0] = v34;
  *(v75 + 13) = *(v3 + 205);
  v35 = *(v3 + 10);
  v72 = *(v3 + 9);
  v73 = v35;
  sub_2619CAC24((v4 + 144), v71);
  v52[0] = 1;
  __dst[0] = 1;
  v49[0] = 1;
  LOBYTE(v62) = 1;
  LOBYTE(v59) = 1;
  LOBYTE(v56) = 1;
  LOBYTE(v53) = 1;
  v49[300] = 1;
  *&__src[144] = 0;
  __src[148] = 1;
  *&__src[152] = 0;
  __src[156] = 1;
  *&__src[160] = 0;
  __src[164] = 1;
  *&__src[168] = 0;
  __src[172] = 1;
  *&__src[176] = 0;
  __src[180] = 1;
  *&__src[184] = 0;
  *&__src[192] = 0;
  __src[196] = 1;
  *&__src[200] = 0;
  __src[204] = 1;
  *&__src[208] = 0;
  __src[212] = 1;
  *__src = v48;
  __src[4] = v47 & 1;
  *&__src[224] = v44;
  __src[228] = v41 & 1;
  *&__src[232] = v45;
  __src[236] = v42 & 1;
  *&__src[240] = v46;
  __src[244] = v43 & 1;
  *&__src[8] = v17;
  __src[12] = v64;
  *&__src[13] = v62;
  __src[15] = v63;
  *&__src[16] = v36;
  __src[20] = v61;
  __src[23] = v60;
  *&__src[21] = v59;
  *&__src[24] = v37;
  __src[28] = v58;
  __src[31] = v57;
  *&__src[29] = v56;
  *&__src[32] = v38;
  __src[36] = v55;
  __src[39] = v54;
  *&__src[37] = v53;
  *&__src[40] = v27;
  *&__src[96] = v66;
  *&__src[64] = v65[1];
  *&__src[80] = v65[2];
  *&__src[48] = v65[0];
  *&__src[216] = v28;
  *&__src[248] = v40;
  *&__src[288] = v68;
  *&__src[256] = v67[0];
  *&__src[272] = v67[1];
  __src[136] = v70;
  *&__src[120] = v69[1];
  *&__src[104] = v69[0];
  sub_2619B952C(v71, &__src[144]);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v52, __src, sizeof(v52));
  sub_2619B624C(__dst, v49);
  sub_2619B3420(v52);
  return memcpy(v39, __dst, 0x128uLL);
}

uint64_t sub_2619CD0FC()
{
  result = swift_getKeyPath();
  qword_27FEC94F0 = result;
  return result;
}

uint64_t *sub_2619CD124()
{
  if (qword_27FEC9290 != -1)
  {
    swift_once();
  }

  return &qword_27FEC94F0;
}

uint64_t (*sub_2619CD1BC(uint64_t a1))()
{
  if (qword_27FEC9290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CD244()
{
  result = swift_getKeyPath();
  qword_27FEC94F8 = result;
  return result;
}

uint64_t *sub_2619CD26C()
{
  if (qword_27FEC9298 != -1)
  {
    swift_once();
  }

  return &qword_27FEC94F8;
}

uint64_t (*sub_2619CD304(uint64_t a1))()
{
  if (qword_27FEC9298 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CD38C()
{
  result = swift_getKeyPath();
  qword_27FEC9500 = result;
  return result;
}

uint64_t *sub_2619CD3B4()
{
  if (qword_27FEC92A0 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9500;
}

uint64_t (*sub_2619CD44C(uint64_t a1))()
{
  if (qword_27FEC92A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CD4D4()
{
  result = swift_getKeyPath();
  qword_27FEC9508 = result;
  return result;
}

uint64_t *sub_2619CD4FC()
{
  if (qword_27FEC92A8 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9508;
}

uint64_t (*sub_2619CD594(uint64_t a1))()
{
  if (qword_27FEC92A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CD61C()
{
  result = swift_getKeyPath();
  qword_27FEC9510 = result;
  return result;
}

uint64_t *sub_2619CD644()
{
  if (qword_27FEC92B0 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9510;
}

uint64_t (*sub_2619CD6DC(uint64_t a1))()
{
  if (qword_27FEC92B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CD764()
{
  result = swift_getKeyPath();
  qword_27FEC9518 = result;
  return result;
}

uint64_t *sub_2619CD78C()
{
  if (qword_27FEC92B8 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9518;
}

uint64_t (*sub_2619CD824(uint64_t a1))()
{
  if (qword_27FEC92B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CD8AC()
{
  result = swift_getKeyPath();
  qword_27FEC9520 = result;
  return result;
}

uint64_t *sub_2619CD8D4()
{
  if (qword_27FEC92C0 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9520;
}

uint64_t (*sub_2619CD96C(uint64_t a1))()
{
  if (qword_27FEC92C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CD9F4()
{
  result = swift_getKeyPath();
  qword_27FEC9528 = result;
  return result;
}

uint64_t *sub_2619CDA1C()
{
  if (qword_27FEC92C8 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9528;
}

uint64_t (*sub_2619CDAB4(uint64_t a1))()
{
  if (qword_27FEC92C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CDB3C()
{
  result = swift_getKeyPath();
  qword_27FEC9530 = result;
  return result;
}

uint64_t *sub_2619CDB64()
{
  if (qword_27FEC92D0 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9530;
}

uint64_t (*sub_2619CDBFC(uint64_t a1))()
{
  if (qword_27FEC92D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CDC84()
{
  result = swift_getKeyPath();
  qword_27FEC9538 = result;
  return result;
}

uint64_t *sub_2619CDCAC()
{
  if (qword_27FEC92D8 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9538;
}

uint64_t (*sub_2619CDD44(uint64_t a1))()
{
  if (qword_27FEC92D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CDDCC()
{
  result = swift_getKeyPath();
  qword_27FEC9540 = result;
  return result;
}

uint64_t sub_2619CDDF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 4))
  {
    v2 = 0;
    v3 = 1;
LABEL_8:
    *a2 = v2;
    *(a2 + 4) = v3;
    return result;
  }

  v2 = 0;
  v3 = 1;
  if (*(result + 12) & 1) != 0 || (*(result + 20))
  {
    goto LABEL_8;
  }

  v4 = *(result + 8);
  v5 = *result + v4;
  if (__OFADD__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *(result + 16);
    v7 = __OFADD__(v5, v6);
    v2 = v5 + v6;
    if (!v7)
    {
      v3 = 0;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2619CDE54()
{
  if (qword_27FEC92E0 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9540;
}

uint64_t (*sub_2619CDEEC(uint64_t a1))()
{
  if (qword_27FEC92E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CDF74()
{
  result = swift_getKeyPath();
  qword_27FEC9548 = result;
  return result;
}

uint64_t *sub_2619CDF9C()
{
  if (qword_27FEC92E8 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9548;
}

uint64_t (*sub_2619CE034(uint64_t a1))()
{
  if (qword_27FEC92E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CE0BC()
{
  result = swift_getKeyPath();
  qword_27FEC9550 = result;
  return result;
}

uint64_t *sub_2619CE0E4()
{
  if (qword_27FEC92F0 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9550;
}

uint64_t (*sub_2619CE17C(uint64_t a1))()
{
  if (qword_27FEC92F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CE204()
{
  result = swift_getKeyPath();
  qword_27FEC9558 = result;
  return result;
}

uint64_t *sub_2619CE22C()
{
  if (qword_27FEC92F8 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9558;
}

uint64_t (*sub_2619CE2C4(uint64_t a1))()
{
  if (qword_27FEC92F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CE34C()
{
  result = swift_getKeyPath();
  qword_27FEC9560 = result;
  return result;
}

uint64_t *sub_2619CE374()
{
  if (qword_27FEC9300 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9560;
}

uint64_t (*sub_2619CE40C(uint64_t a1))()
{
  if (qword_27FEC9300 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CE494()
{
  result = swift_getKeyPath();
  qword_27FEC9568 = result;
  return result;
}

uint64_t *sub_2619CE4BC()
{
  if (qword_27FEC9308 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9568;
}

uint64_t (*sub_2619CE554(uint64_t a1))()
{
  if (qword_27FEC9308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CE5DC()
{
  result = swift_getKeyPath();
  qword_27FEC9570 = result;
  return result;
}

unint64_t sub_2619CE604@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2619CB450(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t *sub_2619CE638()
{
  if (qword_27FEC9310 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9570;
}

uint64_t (*sub_2619CE6D0(uint64_t a1))()
{
  if (qword_27FEC9310 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CE758()
{
  result = swift_getKeyPath();
  qword_27FEC9578 = result;
  return result;
}

uint64_t *sub_2619CE780()
{
  if (qword_27FEC9318 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9578;
}

uint64_t (*sub_2619CE818(uint64_t a1))()
{
  if (qword_27FEC9318 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CE8A0()
{
  result = swift_getKeyPath();
  qword_27FEC9580 = result;
  return result;
}

uint64_t *sub_2619CE8C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (!*result)
  {
    goto LABEL_4;
  }

  v3 = *(v2 + 16);
  if (v3 >> 31)
  {
    __break(1u);
LABEL_4:
    LODWORD(v3) = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v2 == 0;
  return result;
}

uint64_t *sub_2619CE8F8()
{
  if (qword_27FEC9320 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9580;
}

uint64_t (*sub_2619CE990(uint64_t a1))()
{
  if (qword_27FEC9320 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CEA18()
{
  result = swift_getKeyPath();
  qword_27FEC9588 = result;
  return result;
}

uint64_t *sub_2619CEA40()
{
  if (qword_27FEC9328 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9588;
}

uint64_t (*sub_2619CEAD8(uint64_t a1))()
{
  if (qword_27FEC9328 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CEB60()
{
  result = swift_getKeyPath();
  qword_27FEC9590 = result;
  return result;
}

uint64_t *sub_2619CEB88()
{
  if (qword_27FEC9330 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9590;
}

uint64_t (*sub_2619CEC20(uint64_t a1))()
{
  if (qword_27FEC9330 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CECA8()
{
  result = swift_getKeyPath();
  qword_27FEC9598 = result;
  return result;
}

uint64_t *sub_2619CECD0()
{
  if (qword_27FEC9338 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9598;
}

uint64_t (*sub_2619CED68(uint64_t a1))()
{
  if (qword_27FEC9338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CEDF0()
{
  result = swift_getKeyPath();
  qword_27FEC95A0 = result;
  return result;
}

uint64_t *sub_2619CEE18()
{
  if (qword_27FEC9340 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95A0;
}

uint64_t (*sub_2619CEEB0(uint64_t a1))()
{
  if (qword_27FEC9340 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CEF38()
{
  result = swift_getKeyPath();
  qword_27FEC95A8 = result;
  return result;
}

uint64_t *sub_2619CEF60()
{
  if (qword_27FEC9348 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95A8;
}

uint64_t (*sub_2619CEFF8(uint64_t a1))()
{
  if (qword_27FEC9348 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF080()
{
  result = swift_getKeyPath();
  qword_27FEC95B0 = result;
  return result;
}

uint64_t *sub_2619CF0A8()
{
  if (qword_27FEC9350 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95B0;
}

uint64_t (*sub_2619CF140(uint64_t a1))()
{
  if (qword_27FEC9350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF1C8()
{
  result = swift_getKeyPath();
  qword_27FEC95B8 = result;
  return result;
}

uint64_t *sub_2619CF1F0()
{
  if (qword_27FEC9358 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95B8;
}

uint64_t (*sub_2619CF288(uint64_t a1))()
{
  if (qword_27FEC9358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF310()
{
  result = swift_getKeyPath();
  qword_27FEC95C0 = result;
  return result;
}

uint64_t *sub_2619CF338()
{
  if (qword_27FEC9360 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95C0;
}

uint64_t (*sub_2619CF3D0(uint64_t a1))()
{
  if (qword_27FEC9360 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF458()
{
  result = swift_getKeyPath();
  qword_27FEC95C8 = result;
  return result;
}

uint64_t *sub_2619CF480()
{
  if (qword_27FEC9368 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95C8;
}

uint64_t (*sub_2619CF518(uint64_t a1))()
{
  if (qword_27FEC9368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF5A0()
{
  result = swift_getKeyPath();
  qword_27FEC95D0 = result;
  return result;
}

uint64_t *sub_2619CF5C8()
{
  if (qword_27FEC9370 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95D0;
}

uint64_t (*sub_2619CF660(uint64_t a1))()
{
  if (qword_27FEC9370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF6E8()
{
  result = swift_getKeyPath();
  qword_27FEC95D8 = result;
  return result;
}

uint64_t *sub_2619CF710()
{
  if (qword_27FEC9378 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95D8;
}

uint64_t (*sub_2619CF7A8(uint64_t a1))()
{
  if (qword_27FEC9378 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF830()
{
  result = swift_getKeyPath();
  qword_27FEC95E0 = result;
  return result;
}

uint64_t *sub_2619CF858()
{
  if (qword_27FEC9380 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95E0;
}

uint64_t (*sub_2619CF8F0(uint64_t a1))()
{
  if (qword_27FEC9380 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CF978()
{
  result = swift_getKeyPath();
  qword_27FEC95E8 = result;
  return result;
}

uint64_t *sub_2619CF9A0()
{
  if (qword_27FEC9388 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95E8;
}

uint64_t (*sub_2619CFA38(uint64_t a1))()
{
  if (qword_27FEC9388 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CFAC0()
{
  result = swift_getKeyPath();
  qword_27FEC95F0 = result;
  return result;
}

uint64_t sub_2619CFAE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(v2 + 16);
  if (v3 >> 31)
  {
    __break(1u);
LABEL_4:
    LODWORD(v3) = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v2 == 0;
  return result;
}

uint64_t *sub_2619CFB18()
{
  if (qword_27FEC9390 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95F0;
}

uint64_t (*sub_2619CFBB0(uint64_t a1))()
{
  if (qword_27FEC9390 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CFC38()
{
  result = swift_getKeyPath();
  qword_27FEC95F8 = result;
  return result;
}

uint64_t *sub_2619CFC60()
{
  if (qword_27FEC9398 != -1)
  {
    swift_once();
  }

  return &qword_27FEC95F8;
}

uint64_t (*sub_2619CFCF8(uint64_t a1))()
{
  if (qword_27FEC9398 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CFD80()
{
  result = swift_getKeyPath();
  qword_27FEC9600 = result;
  return result;
}

uint64_t *sub_2619CFDA8()
{
  if (qword_27FEC93A0 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9600;
}

uint64_t (*sub_2619CFE40(uint64_t a1))()
{
  if (qword_27FEC93A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619CFEC8()
{
  result = swift_getKeyPath();
  qword_27FEC9608 = result;
  return result;
}

uint64_t *sub_2619CFEF0()
{
  if (qword_27FEC93A8 != -1)
  {
    swift_once();
  }

  return &qword_27FEC9608;
}

uint64_t (*sub_2619CFF88(uint64_t a1))()
{
  if (qword_27FEC93A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619D0010()
{
  result = swift_getKeyPath();
  qword_27FEC9610 = result;
  return result;
}

uint64_t *sub_2619D0038()
{
  if (qword_27FEC93B0[0] != -1)
  {
    swift_once();
  }

  return &qword_27FEC9610;
}

uint64_t sub_2619D00AC(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2619D012C(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*sub_2619D0194(uint64_t a1))()
{
  if (qword_27FEC93B0[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2619D021C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v40 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v16 = v11;
LABEL_12:
    v17 = __clz(__rbit64(v9)) | (v16 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    LODWORD(v17) = *(*(a1 + 56) + 4 * v17);
    v38 = v18;
    v39 = v17;
    a2(&v36, &v38);
    v19 = v36;
    v20 = v37;
    v21 = *v40;
    v22 = sub_2619D0F1C(v36);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v14 = __OFADD__(v24, v25);
    v26 = v24 + v25;
    if (v14)
    {
      goto LABEL_23;
    }

    v27 = v23;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        v33 = v22;
        sub_2619D10E4();
        v22 = v33;
      }
    }

    else
    {
      sub_2619D0990(v26, a4 & 1);
      v22 = sub_2619D0F1C(v19);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 &= v9 - 1;
    v29 = *v40;
    if (v27)
    {
      v12 = v29[7];
      v13 = *(v12 + 4 * v22);
      v14 = __OFADD__(v13, v20);
      v15 = v13 + v20;
      if (v14)
      {
        goto LABEL_24;
      }

      *(v12 + 4 * v22) = v15;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + 8 * v22) = v19;
      *(v29[7] + 4 * v22) = v20;
      v30 = v29[2];
      v14 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      v29[2] = v31;
    }

    a4 = 1;
    v11 = v16;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
    }

    v9 = *(v6 + 8 * v16);
    ++v11;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

uint64_t sub_2619D0454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v33 = v6;
  result = sub_2619D9CC8();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_2619D94A8();
      sub_2619B9588(&qword_27FEC8F50, MEMORY[0x277CDB1D0]);
      result = sub_2619D9918();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
      v7 = v32;
      v14 = v34;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero(v11, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2619D071C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91E8, &qword_2619DB1D8);
  result = sub_2619D9CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x266714AA0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2619D0990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91E0, &qword_2619DB1D0);
  result = sub_2619D9CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      sub_2619D9DA8();
      MEMORY[0x266714AD0](v20);
      result = sub_2619D9DC8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_2619D0C10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F00, &qword_2619DA3E0);
  v31 = v4;
  result = sub_2619D9CC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v32 = *(v20 + 4 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_2619D94A8();
      sub_2619B9588(&qword_27FEC8F50, MEMORY[0x277CDB1D0]);
      result = sub_2619D9918();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 4 * v15) = v32;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2619D0ED4(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x266714AA0](*(v1 + 40), a1, 4);

  return sub_2619D14E0(v2, v3);
}

unint64_t sub_2619D0F1C(uint64_t a1)
{
  sub_2619D9DA8();
  MEMORY[0x266714AD0](a1);
  v2 = sub_2619D9DC8();

  return sub_2619C6320(a1, v2);
}

void *sub_2619D0F88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91E8, &qword_2619DB1D8);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_2619D10E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91E0, &qword_2619DB1D0);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2619D1230()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F00, &qword_2619DA3E0);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
        v18 = *(*(v2 + 56) + 4 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_2619D138C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2619D9CB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_2619D14E0(int a1, uint64_t a2)
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

unint64_t *sub_2619D154C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_2619D3730(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t *sub_2619D1600(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2619D302C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_2619D169C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_2619D9CD8();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 64;
  v30 = v6;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v31 = (v11 - 1) & v11;
LABEL_16:
    v17 = v14 | (v12 << 6);
    v18 = *(*(v6 + 48) + 8 * v17);
    v19 = *(*(v6 + 56) + 8 * v17);
    sub_2619D94A8();
    sub_2619B9588(&qword_27FEC8F50, MEMORY[0x277CDB1D0]);

    result = sub_2619D9918();
    v20 = -1 << *(v10 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v13 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v10 + 48) + 8 * v23) = v18;
    *(*(v10 + 56) + 8 * v23) = v19;
    ++*(v10 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v30;
    v11 = v31;
    if (!v7)
    {
      return v10;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v10;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v31 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2619D190C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F00, &qword_2619DA3E0);
  result = sub_2619D9CD8();
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
  v12 = result + 64;
  v27 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v28 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v29 = *(*(v4 + 56) + 4 * v16);
    sub_2619D94A8();
    sub_2619B9588(&qword_27FEC8F50, MEMORY[0x277CDB1D0]);

    result = sub_2619D9918();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + 4 * v21) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v27;
    v10 = v28;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v28 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2619D1B78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2619D0ED4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2619D071C(v14, a3 & 1);
      result = sub_2619D0ED4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2619D9D78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2619D0F88();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_2619D1CC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2619D9DA8();
  sub_2619D9998();
  v8 = sub_2619D9DC8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2619D9D38() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2619D2074(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2619D1E14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91D8, &unk_2619DB1C0);
  result = sub_2619D9B88();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2619D2074(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2619D1E14(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2619D21F4();
      goto LABEL_16;
    }

    sub_2619D2350(v8 + 1);
  }

  v10 = *v4;
  sub_2619D9DA8();
  sub_2619D9998();
  result = sub_2619D9DC8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2619D9D38();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2619D9D68();
  __break(1u);
  return result;
}

void *sub_2619D21F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91D8, &unk_2619DB1C0);
  v2 = *v0;
  v3 = sub_2619D9B78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2619D2350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91D8, &unk_2619DB1C0);
  result = sub_2619D9B88();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2619D9DA8();

      sub_2619D9998();
      result = sub_2619D9DC8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2619D25C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;
}

uint64_t sub_2619D25D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_2619D25EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_2619D2604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_2619D2644(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v42 = a5;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (63 - v9) >> 6;

  v13 = 0;
  v37 = v8;
  while (v11)
  {
    v15 = v13;
LABEL_13:
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v11)));
    v18 = *(*(a1 + 56) + v17);
    v41[0] = *(*(a1 + 48) + v17);
    v41[1] = v18;

    a2(v40, v41);

    v20 = v40[0];
    v19 = v40[1];
    v21 = *v42;
    v23 = sub_2619B0D08(v40[0]);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        sub_2619D138C(a6, a7);
      }
    }

    else
    {
      sub_2619D0454(v26, a4 & 1, a6, a7);
      v28 = sub_2619B0D08(v20);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }

      v23 = v28;
    }

    v11 &= v11 - 1;
    v30 = *v42;
    if (v27)
    {
      v14 = *(v30[7] + 8 * v23);

      *(v30[7] + 8 * v23) = v14;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      *(v30[6] + 8 * v23) = v20;
      *(v30[7] + 8 * v23) = v19;
      v31 = v30[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v30[2] = v33;
    }

    a4 = 1;
    v13 = v15;
    v8 = v37;
  }

  v16 = v13;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      sub_2619D41B4(a1);
    }

    v11 = *(v8 + 8 * v15);
    ++v16;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2619D94A8();
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

uint64_t sub_2619D28D0(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v43 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v40 = a4;
    v17 = v11;
LABEL_14:
    v19 = __clz(__rbit64(v9)) | (v17 << 6);
    v20 = *(*(a1 + 56) + 8 * v19);
    LODWORD(v42[0]) = *(*(a1 + 48) + 4 * v19);
    v42[1] = v20;

    a2(v41, v42);

    v21 = LODWORD(v41[0]);
    v22 = v41[1];
    v23 = *v43;
    v25 = sub_2619D0ED4(LODWORD(v41[0]));
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v40 & 1) == 0)
      {
        sub_2619D0F88();
      }
    }

    else
    {
      sub_2619D071C(v28, v40 & 1);
      v30 = sub_2619D0ED4(v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    if (v29)
    {
      v39 = *v43;
      v12 = *(*(*v43 + 56) + 8 * v25);
      v42[0] = v22;
      v13 = sub_2619D94A8();

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F70, &unk_2619DB1E0);
      v15 = sub_2619D41BC();
      v42[0] = Array.appending<A>(contentsOf:)(v42, v12, v13, v14, v15);
      v16 = sub_2619B9588(&qword_27FEC8F50, MEMORY[0x277CDB1D0]);
      Array<A>.removeDuplicates()(v14, v16);

      *(*(v39 + 56) + 8 * v25) = v42[0];
    }

    else
    {
      v32 = *v43;
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + 4 * v25) = v21;
      *(v32[7] + 8 * v25) = v22;
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v32[2] = v35;
    }

    a4 = 1;
    v11 = v17;
  }

  v18 = v11;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v10)
    {
      sub_2619D41B4(a1);
    }

    v9 = *(v6 + 8 * v17);
    ++v18;
    if (v9)
    {
      v40 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

void *sub_2619D2BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91E8, &qword_2619DB1D8);
  v3 = sub_2619D9CD8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2619D0ED4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_2619D0ED4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2619D2CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91E0, &qword_2619DB1D0);
    v3 = sub_2619D9CD8();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2619D0F1C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_2619D2DC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v40 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v35 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    LODWORD(v15) = *(*(a1 + 56) + 4 * v15);
    v38 = v16;
    v39 = v15;

    a2(&v36, &v38);

    v17 = v36;
    v18 = v37;
    v19 = *v40;
    v21 = sub_2619B0D08(v36);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v35 & 1) == 0)
      {
        sub_2619D1230();
      }
    }

    else
    {
      sub_2619D0C10(v24, v35 & 1);
      v26 = sub_2619B0D08(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v40;
    if (v25)
    {
      v12 = *(v28[7] + 4 * v21);

      *(v28[7] + 4 * v21) = v12;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 4 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_2619D41B4(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v35 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_2619D94A8();
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

unint64_t *sub_2619D302C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  do
  {
    do
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v13 = v12 | (v6 << 6);
        if (!a4)
        {
          break;
        }
      }

      else
      {
        v14 = v6;
        do
        {
          v6 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            return result;
          }

          if (v6 >= v11)
          {
            return sub_2619D190C(v21, a2, v22, a3);
          }

          v15 = *(v7 + 8 * v6);
          ++v14;
        }

        while (!v15);
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v6 << 6);
        if (!a4)
        {
          break;
        }
      }

      if (!*(a4 + 16))
      {
        break;
      }

      sub_2619B0D08(v16);
      v18 = v17;
    }

    while ((v18 & 1) != 0);
    *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  }

  while (!__OFADD__(v22++, 1));
  __break(1u);
  return sub_2619D190C(v21, a2, v22, a3);
}

unint64_t *sub_2619D3188(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_2619D1600(v12, v7, a1, a2);
      MEMORY[0x266714FB0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2619D302C((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_2619D3348@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = result;
  v5 = a3;
  if (a2)
  {
    v51 = result;
    v57[2] = MEMORY[0x277D84FA0];
    v6 = a2 + 64;
    v7 = 1 << *(a2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a2 + 64);
    v10 = (v7 + 63) >> 6;

    v49 = 0;
    v50 = 0;
    v48 = 0;
    v11 = 0;
    v52 = v10;
    v53 = v3 + 64;
    v55 = v3;
LABEL_7:
    if (v9)
    {
      v12 = v11;
LABEL_12:
      v13 = *(*(v3 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v9 &= v9 - 1;
      v14 = v13 + 64;
      v15 = 1 << *(v13 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v3 = v16 & *(v13 + 64);
      v17 = (v15 + 63) >> 6;
      v56 = v13;

      v18 = 0;
      while (v3)
      {
LABEL_16:
        v19 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v20 = (*(v56 + 56) + 24 * (v19 | (v18 << 6)));
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        swift_bridgeObjectRetain_n();
        v24 = sub_2619D1CC4(v57, v21, v22);

        if (v24)
        {
          v26 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_58;
          }

          LODWORD(v50) = v50 + 1;
          HIDWORD(v50) = v26;
          v27 = __CFADD__(v48, v23);
          v48 += v23;
          v49 = v48;
          if (v27)
          {
            __break(1u);
            goto LABEL_26;
          }
        }
      }

      while (1)
      {
        v25 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v25 >= v17)
        {

          v11 = v12;
          v6 = v53;
          v3 = v55;
          v10 = v52;
          goto LABEL_7;
        }

        v3 = *(v14 + 8 * v25);
        ++v18;
        if (v3)
        {
          v18 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {
LABEL_26:

          v4 = v51;
          if (!v51)
          {
LABEL_52:
            v5 = a3;
            v45 = v49;

            v46 = HIDWORD(v50);
            goto LABEL_53;
          }

          v28 = v51 + 64;
          v29 = 1 << *(v51 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(v51 + 64);
          v32 = (v29 + 63) >> 6;

          v33 = 0;
          v54 = v32;
LABEL_32:
          if (v31)
          {
            v34 = v33;
LABEL_37:
            v4 = *(*(v4 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v31)))));
            v31 &= v31 - 1;
            v35 = 1 << *(v4 + 32);
            if (v35 < 64)
            {
              v36 = ~(-1 << v35);
            }

            else
            {
              v36 = -1;
            }

            v3 = v36 & *(v4 + 64);
            v37 = (v35 + 63) >> 6;

            v38 = 0;
            while (v3)
            {
LABEL_41:
              v39 = __clz(__rbit64(v3));
              v3 &= v3 - 1;
              v40 = (*(v4 + 56) + 24 * (v39 | (v38 << 6)));
              v41 = *v40;
              v42 = v40[1];

              v5 = sub_2619D1CC4(v57, v41, v42);

              if (v5)
              {
                v44 = __OFADD__(v50, 1);
                LODWORD(v50) = v50 + 1;
                HIDWORD(v50) = v50;
                if (v44)
                {
                  __break(1u);
                  goto LABEL_50;
                }
              }
            }

            while (1)
            {
              v43 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_55;
              }

              if (v43 >= v37)
              {

                v33 = v34;
                v4 = v51;
                v28 = v51 + 64;
                v32 = v54;
                goto LABEL_32;
              }

              v3 = *(v4 + 64 + 8 * v43);
              ++v38;
              if (v3)
              {
                v38 = v43;
                goto LABEL_41;
              }
            }
          }

          while (1)
          {
            v34 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_57;
            }

            if (v34 >= v32)
            {

              v3 = v55;
              goto LABEL_52;
            }

            v31 = *(v28 + 8 * v34);
            ++v33;
            if (v31)
            {
              goto LABEL_37;
            }
          }
        }

        v9 = *(v6 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
LABEL_50:
    v45 = 0;
    v46 = 0;
LABEL_53:
    *v5 = v46;
    *(v5 + 4) = v3 == 0;
    *(v5 + 8) = v4;
    *(v5 + 16) = v45;
    *(v5 + 24) = v3 == 0;
    *(v5 + 32) = v3;
  }

  return result;
}

unint64_t *sub_2619D3730(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v24 = result;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  do
  {
    do
    {
      if (v11)
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v14 = v13 | (v7 << 6);
        if (!a4)
        {
          break;
        }
      }

      else
      {
        v15 = v7;
        do
        {
          v7 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            return result;
          }

          if (v7 >= v12)
          {
            return sub_2619D169C(v24, a2, v25, a3, a5, a6);
          }

          v16 = *(v8 + 8 * v7);
          ++v15;
        }

        while (!v16);
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v7 << 6);
        if (!a4)
        {
          break;
        }
      }

      if (!*(a4 + 16))
      {
        break;
      }

      v17 = *(*(a3 + 48) + 8 * v14);

      sub_2619B0D08(v17);
      v19 = v18;
    }

    while ((v19 & 1) != 0);
    *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
  }

  while (!__OFADD__(v25++, 1));
  __break(1u);
  return sub_2619D169C(v24, a2, v25, a3, a5, a6);
}

unint64_t *sub_2619D38AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_2619D154C(v16, v11, a1, a2, a3, a4);
      MEMORY[0x266714FB0](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  MEMORY[0x28223BE20](v13);
  bzero(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = sub_2619D3730((v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a2, a3, a4);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_2619D3A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 296))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_2619D3AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Metrics.EntityTree(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Metrics.EntityTree(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2619D3C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2619D3C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2619D3D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_2619D3D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
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

uint64_t sub_2619D3DEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2619D3E0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2619D3E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 69))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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