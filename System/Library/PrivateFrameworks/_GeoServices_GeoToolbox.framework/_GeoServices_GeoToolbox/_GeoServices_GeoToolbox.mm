uint64_t sub_275273DB0()
{
  v0 = sub_275275E44();
  __swift_allocate_value_buffer(v0, qword_2809B9DE8);
  __swift_project_value_buffer(v0, qword_2809B9DE8);
  return sub_275275E34();
}

id PlaceDescriptor.geoMapItemIdentifier.getter()
{
  sub_275275DF4();
  v1 = v0;
  if (v0)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D0EBA8]);
    v3 = sub_275275E64();

    v1 = [v2 initWithMapsIdentifierString_];
  }

  return v1;
}

void *PlaceDescriptor.geoDescriptorResolutionParameters.getter()
{
  v75 = sub_275275FE4();
  v0 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_275275DA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D0EC60]) init];
  sub_275275DB4();
  if (v10)
  {
    v11 = sub_275275E64();
  }

  else
  {
    v11 = 0;
  }

  [v9 setPlaceNameHint_];

  v12 = sub_275275DC4();
  if ((v14 & 1) == 0)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D0EB80]) initWithLatitude:*&v12 longitude:v13];
    [v9 setLocation_];
  }

  v16 = sub_275275E04();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9D88, &qword_2752762B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_275276290;
    *(v20 + 32) = v18;
    *(v20 + 40) = v19;
    v21 = sub_275275EB4();

    [v9 setFormattedAddress_];
  }

  result = sub_275275DE4();
  v24 = result;
  v85 = result[2];
  if (v85)
  {
    v69 = v9;
    v25 = 0;
    v84 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v86 = v3 + 16;
    v83 = v3 + 88;
    v82 = *MEMORY[0x277CCB110];
    v79 = *MEMORY[0x277CCB100];
    v78 = *MEMORY[0x277CCB108];
    v73 = (v0 + 8);
    v26 = (v3 + 8);
    v27 = MEMORY[0x277D84F90];
    *&v23 = 136446210;
    v68 = v23;
    v80 = (v3 + 8);
    v72 = v2;
    v81 = v3;
    v76 = v6;
    v71 = v8;
    v77 = result;
    while (1)
    {
      if (v25 >= *(v24 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v29 = *(v3 + 16);
      v29(v8, &v84[*(v3 + 72) * v25], v2);
      v29(v6, v8, v2);
      v30 = (*(v3 + 88))(v6, v2);
      if (v30 == v82)
      {
        v31 = *v26;
        v32 = v6;
        (*v26)(v6, v2);
        v33 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_275275058(0, *(v27 + 2) + 1, 1, v27);
        }

        v35 = *(v27 + 2);
        v34 = *(v27 + 3);
        if (v35 >= v34 >> 1)
        {
          v27 = sub_275275058((v34 > 1), v35 + 1, 1, v27);
        }

        v26 = v80;
        result = v31(v8, v2);
        *(v27 + 2) = v35 + 1;
        *&v27[4 * v35 + 32] = 2;
        v24 = v33;
        v6 = v32;
        v3 = v81;
      }

      else
      {
        if (v30 == v79)
        {
          goto LABEL_22;
        }

        if (v30 == v78)
        {
          (*v26)(v6, v2);
LABEL_22:
          v36 = *(v27 + 2);
          v37 = v36;
          v38 = 32;
          while (v37)
          {
            v39 = *&v27[v38];
            v38 += 4;
            --v37;
            if (v39 == 1)
            {
              result = (*v26)(v8, v2);
              goto LABEL_11;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_275275058(0, v36 + 1, 1, v27);
          }

          v41 = *(v27 + 2);
          v40 = *(v27 + 3);
          if (v41 >= v40 >> 1)
          {
            v27 = sub_275275058((v40 > 1), v41 + 1, 1, v27);
          }

          result = (*v26)(v8, v2);
          *(v27 + 2) = v41 + 1;
          *&v27[4 * v41 + 32] = 1;
          goto LABEL_11;
        }

        v87[3] = v2;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v87);
        v29(boxed_opaque_existential_0, v8, v2);
        v43 = v74;
        sub_275275FC4();
        sub_275275FD4();
        (*v73)(v43, v75);
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v44 = sub_275275EF4();
        swift_getObjectType();
        result = sub_275275EF4();
        if (v44 != result)
        {
          goto LABEL_53;
        }

        v45 = sub_275275F04();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v45)
        {

          v2 = v72;
          v3 = v81;
          v6 = v76;
          v24 = v77;
        }

        else
        {
          sub_275275F74();

          v47 = v88[0];
          v46 = v88[1];
          __swift_destroy_boxed_opaque_existential_0(v89);
          v2 = v72;
          v3 = v81;
          v6 = v76;
          v24 = v77;
          if (v46)
          {
            if (qword_2809B9DE0 != -1)
            {
              swift_once();
            }

            v48 = sub_275275E44();
            __swift_project_value_buffer(v48, qword_2809B9DE8);

            v49 = sub_275275E24();
            v50 = sub_275275ED4();

            v51 = os_log_type_enabled(v49, v50);
            v52 = v80;
            v70 = v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            if (v51)
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v88[0] = v54;
              *v53 = v68;
              v55 = sub_275275338(v47, v46, v88);

              *(v53 + 4) = v55;
              _os_log_impl(&dword_275273000, v49, v50, "Unknown place representation type: %{public}s", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v54);
              v56 = v54;
              v6 = v76;
              MEMORY[0x277C71550](v56, -1, -1);
              v57 = v53;
              v3 = v81;
              MEMORY[0x277C71550](v57, -1, -1);
            }

            else
            {
            }

            v63 = *v52;
            v8 = v71;
            (*v52)(v71, v2);
            v26 = v52;
            result = (v63)(v6, v2);
            v24 = v77;
            goto LABEL_11;
          }
        }

        if (qword_2809B9DE0 != -1)
        {
          swift_once();
        }

        v58 = sub_275275E44();
        __swift_project_value_buffer(v58, qword_2809B9DE8);
        v59 = sub_275275E24();
        v60 = sub_275275ED4();
        v61 = os_log_type_enabled(v59, v60);
        v8 = v71;
        if (v61)
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_275273000, v59, v60, "Unknown place representation type", v62, 2u);
          MEMORY[0x277C71550](v62, -1, -1);
        }

        v26 = v80;
        v28 = *v80;
        (*v80)(v8, v2);
        result = (v28)(v6, v2);
      }

LABEL_11:
      if (++v25 == v85)
      {

        v9 = v69;
        v64 = *(v27 + 2);
        if (!v64)
        {
          goto LABEL_50;
        }

LABEL_46:
        v65 = v9;
        v88[0] = MEMORY[0x277D84F90];
        sub_275275F44();
        v66 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
          sub_275275F24();
          sub_275275F54();
          sub_275275F64();
          sub_275275F34();
          v66 += 4;
          --v64;
        }

        while (v64);

        sub_2752749FC();
        v67 = sub_275275EB4();

        v9 = v65;
        [v65 setPreferredTypes_];

        return v9;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
  v64 = *(MEMORY[0x277D84F90] + 16);
  if (v64)
  {
    goto LABEL_46;
  }

LABEL_50:

  return v9;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2752749FC()
{
  result = qword_2809B9D80;
  if (!qword_2809B9D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809B9D80);
  }

  return result;
}

id PlaceDescriptor.init(geoMapItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275275D94();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_275275DA4();
  v7 = *(v6 - 8);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 coordinate];
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9D90, &qword_2752762B8);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v50 = *(v7 + 72);
  v16 = swift_allocObject();
  v46 = xmmword_275276290;
  *(v16 + 16) = xmmword_275276290;
  v17 = (v16 + v15);
  *v17 = v12;
  v17[1] = v14;
  v18 = *(v7 + 104);
  v18();
  v51 = a1;
  result = [a1 geoAddress];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = [result formattedAddressLines];

  if (v21)
  {
    v45 = a2;
    v52 = 0;
    sub_275275EC4();

    if (v52)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DA8, &qword_2752762D0);
      sub_275275BD4();
      v21 = sub_275275E54();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    a2 = v45;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  if (sub_275275E94() >= 1)
  {
    *v10 = v21;
    v10[1] = v23;
    (v18)(v10, *MEMORY[0x277CCB110], v6);
    v24 = *(v16 + 16);
    v25 = *(v16 + 24);

    if (v24 >= v25 >> 1)
    {
      v16 = sub_27527515C((v25 > 1), v24 + 1, 1, v16, &qword_2809B9D90, &qword_2752762B8, MEMORY[0x277CCB118]);
    }

    *(v16 + 16) = v24 + 1;
    (*(v8 + 32))(v16 + v15 + v24 * v50, v10, v6);
  }

  v26 = v51;
  result = [v51 _identifier];
  if (!result)
  {
    goto LABEL_21;
  }

  v27 = result;

  v28 = [v27 mapsIdentifierString];

  if (v28)
  {
    v29 = sub_275275E74();
    v31 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9D98, &qword_2752762C0);
    inited = swift_initStackObject();
    *(inited + 16) = v46;
    *(inited + 32) = 0xD000000000000010;
    v33 = inited + 32;
    *(inited + 40) = 0x80000002752763A0;
    *(inited + 48) = v29;
    *(inited + 56) = v31;
    v34 = sub_275275A58(inited);
    swift_setDeallocating();
    sub_275275B6C(v33);
    v36 = v47;
    v35 = v48;
    *v47 = v34;
    v37 = v49;
    (*(v35 + 104))(v36, *MEMORY[0x277CCB0F0], v49);
    v38 = sub_27527515C(0, 1, 1, MEMORY[0x277D84F90], &qword_2809B9DB8, &qword_2752762E0, MEMORY[0x277CCB0F8]);
    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_27527515C((v39 > 1), v40 + 1, 1, v38, &qword_2809B9DB8, &qword_2752762E0, MEMORY[0x277CCB0F8]);
    }

    v38[2] = v40 + 1;
    (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v36, v37);
  }

  v41 = [v26 name];
  if (v41)
  {
    v42 = v41;
    sub_275275E74();
  }

  sub_275275DD4();
  swift_unknownObjectRelease();
  v43 = sub_275275E14();
  return (*(*(v43 - 8) + 56))(a2, 0, 1, v43);
}

_DWORD *sub_27527503C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *sub_275275058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DC8, &qword_2752762F0);
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

void *sub_27527515C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_275275338(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275275404(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_275275C84(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_275275404(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_275275510(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_275275F14();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_275275510(uint64_t a1, unint64_t a2)
{
  v3 = sub_27527555C(a1, a2);
  sub_27527568C(&unk_288400C20);
  return v3;
}

void *sub_27527555C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_275275778(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_275275F14();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_275275EA4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275275778(v10, 0);
        result = sub_275275EE4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_27527568C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2752757EC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_275275778(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DD0, &qword_2752762F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2752757EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DD0, &qword_2752762F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
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

unint64_t sub_275275928(uint64_t a1, uint64_t a2)
{
  sub_275275FA4();
  sub_275275E84();
  v4 = sub_275275FB4();

  return sub_2752759A0(a1, a2, v4);
}

unint64_t sub_2752759A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_275275F94())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_275275A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DC0, &qword_2752762E8);
    v3 = sub_275275F84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_275275928(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_275275B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DA0, &qword_2752762C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275275BD4()
{
  result = qword_2809B9DB0;
  if (!qword_2809B9DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809B9DA8, &qword_2752762D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B9DB0);
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

uint64_t sub_275275C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void type metadata accessor for GEOPlaceDescriptorResolutionParametersPreferredType()
{
  if (!qword_2809B9DD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809B9DD8);
    }
  }
}