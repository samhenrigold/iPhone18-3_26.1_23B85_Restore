void sub_2657B6768(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2657B67E8(int a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2657F2414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + 16);
    *v7 = v10;
    v11 = *MEMORY[0x277D85200];
    v12 = *(v5 + 104);
    v12(v7, v11, v4);
    v13 = v10;
    LOBYTE(v10) = sub_2657F2434();
    v14 = *(v5 + 8);
    result = v14(v7, v4);
    if (v10)
    {
      if (a1)
      {
      }

      v15 = *(v9 + 16);
      *v7 = v15;
      v12(v7, v11, v4);
      v16 = v15;
      LOBYTE(v15) = sub_2657F2434();
      result = v14(v7, v4);
      if (v15)
      {
        *(v9 + 32) = 1;
        v17[7] = 1;
        sub_2657F2354();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2657B69B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*(*v1 + 216) + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v3 + 232);
  v6 = *(v3 + 240);
  *a1 = *(v3 + 224);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_2657B6A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2657B6A88()
{
  if (*(*v0 + 208))
  {
    v1 = *(*v0 + 200);
  }

  else
  {
    v2 = IDSCopyLocalDeviceUniqueID();
    if (v2)
    {
      v3 = v2;
      v1 = sub_2657F2484();
    }

    else
    {
      v1 = 0xD000000000000017;
    }
  }

  return v1;
}

uint64_t sub_2657B6B20(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2657F2314();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657B6C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = sub_2657F22A4();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2657F2414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 120);
  *v11 = v12;
  v13 = *(v9 + 104);
  v51 = *MEMORY[0x277D85200];
  v50 = v13;
  v13(v11);
  v14 = v12;
  v15 = sub_2657F2434();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v14;
  sub_2657F2284();
  v18 = *(v3 + 64);
  v17 = *(v3 + 72);
  __swift_project_boxed_opaque_existential_1((v3 + 40), v18);
  (*(v17 + 48))(v7, a2, v18, v17);
  v19 = *(v3 + 64);
  v20 = *(v3 + 72);
  __swift_project_boxed_opaque_existential_1((v3 + 40), v19);
  v21 = *(v20 + 40);
  v52 = v7;
  v21(v7, v55, v19, v20);
  if ((~*(v3 + 248) & 3) == 0)
  {
    v23 = v49;
    v22 = v50;
    *v11 = v49;
    v22(v11, v51, v8);
    v24 = v23;
    LOBYTE(v23) = sub_2657F2434();
    v16(v11, v8);
    if (v23)
    {
      v25 = *(v3 + 136);
      ObjectType = swift_getObjectType();
      (*(v25 + 24))(ObjectType, v25);
      v27 = *(*(v3 + 216) + 16);

      os_unfair_lock_lock(v27);
      v28 = *(v3 + 224);
      v29 = *(v3 + 232);

      os_unfair_lock_unlock(v27);

      if (v29)
      {
      }

      else
      {
        v28 = 0;
      }

      v39 = *(*(v3 + 216) + 16);

      os_unfair_lock_lock(v39);
      v40 = *(v3 + 232);
      v41 = *(v3 + 241);

      os_unfair_lock_unlock(v39);

      v42 = v41 & 1;
      if (!v40)
      {
        v42 = 2;
      }

      v56 = v42;
      sub_2657B8A48(v28, v29, &v56);

      return (*(v53 + 8))(v52, v54);
    }

    goto LABEL_20;
  }

  if (qword_281446408 != -1)
  {
LABEL_21:
    swift_once();
  }

  v30 = sub_2657F2344();
  __swift_project_value_buffer(v30, qword_281446410);

  v31 = sub_2657F2334();
  v32 = sub_2657F2584();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v52;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v57 = v36;
    *v35 = 136380675;
    if (*(v3 + 208))
    {
      v37 = *(v3 + 200);
      v38 = *(v3 + 208);
    }

    else
    {
      v44 = IDSCopyLocalDeviceUniqueID();
      if (v44)
      {
        v45 = v44;
        v37 = sub_2657F2484();
        v38 = v46;
      }

      else
      {
        v38 = 0x80000002657F8510;
        v37 = 0xD000000000000017;
      }
    }

    v47 = sub_2657B7F9C(v37, v38, &v57);

    *(v35 + 4) = v47;
    _os_log_impl(&dword_2657B5000, v31, v32, "(%{private}s) Not syncing altered records as the sync engine is disabled", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x266760A30](v36, -1, -1);
    MEMORY[0x266760A30](v35, -1, -1);
  }

  return (*(v53 + 8))(v34, v54);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t MetadataStore.set(deletedDate:for:)(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v73 = type metadata accessor for RecordMetadata(0);
  v71 = *(v73 - 8);
  v3 = MEMORY[0x28223BE20](v73);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v61 - v6);
  v8 = sub_2657F22A4();
  result = MEMORY[0x28223BE20](v8);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (!v13)
  {
    return result;
  }

  v76 = (v10 + 16);
  v69 = (v10 + 8);
  v14 = (a2 + 56);
  *&v11 = 136446466;
  v63 = v11;
  v70 = v5;
  v68 = v7;
  v62 = v8;
  while (1)
  {
    v74 = v14;
    v75 = v13;
    v17 = *(v14 - 3);
    v18 = *(v14 - 2);
    v19 = *(v14 - 1);
    v20 = *v14;
    v21 = qword_281446408;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_2657F2344();
    __swift_project_value_buffer(v22, qword_281446410);
    v23 = *v76;
    v24 = v72;
    (*v76)(v72, v78, v8);

    v25 = v8;
    v26 = sub_2657F2334();
    v27 = sub_2657F2584();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v67 = v23;
      v29 = v28;
      v66 = swift_slowAlloc();
      v79 = v66;
      v80[0] = 0;
      *v29 = v63;
      v80[1] = 0xE000000000000000;

      sub_2657F2704();

      strcpy(v80, "identifier: ");
      BYTE5(v80[1]) = 0;
      HIWORD(v80[1]) = -5120;
      MEMORY[0x26675FFF0](v17, v18);
      MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x26675FFF0](v19, v20);

      v30 = sub_2657B7F9C(v80[0], v80[1], &v79);
      v65 = v27;
      v31 = v19;
      v32 = v17;
      v33 = v30;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      sub_2657B8264(&unk_281446F40, MEMORY[0x277CC95B8]);
      v64 = v26;
      v34 = v62;
      v35 = sub_2657F2854();
      v37 = v36;
      (*v69)(v24, v34);
      v38 = sub_2657B7F9C(v35, v37, &v79);

      *(v29 + 14) = v38;
      v39 = v64;
      _os_log_impl(&dword_2657B5000, v64, v65, "Updating deletedDate for record %{public}s to %{public}s", v29, 0x16u);
      v40 = v66;
      swift_arrayDestroy();
      MEMORY[0x266760A30](v40, -1, -1);
      v41 = v29;
      v23 = v67;
      MEMORY[0x266760A30](v41, -1, -1);

      v42 = v34;
    }

    else
    {

      (*v69)(v24, v25);
      v42 = v25;
      v31 = v19;
      v32 = v17;
    }

    v43 = v73;
    v44 = v42;
    (v23)(v7 + *(v73 + 20), v78);
    *v7 = v32;
    v7[1] = v18;
    v7[2] = v31;
    v7[3] = v20;
    *(v7 + *(v43 + 24)) = 1;
    v45 = v77;
    swift_beginAccess();
    v46 = v70;
    sub_2657B82A8(v7, v70);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v45 + 40);
    v48 = v79;
    *(v45 + 40) = 0x8000000000000000;
    v49 = sub_2657B830C(v32, v18, v31, v20);
    v51 = *(v48 + 16);
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      break;
    }

    v55 = v50;
    if (*(v48 + 24) < v54)
    {
      sub_2657B83AC(v54, isUniquelyReferenced_nonNull_native);
      v49 = sub_2657B830C(v32, v18, v31, v20);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_23;
      }

LABEL_15:
      v8 = v44;
      if (v55)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v60 = v49;
    sub_2657CA0DC();
    v49 = v60;
    v8 = v44;
    if (v55)
    {
LABEL_3:
      v15 = v49;

      v16 = v79;
      sub_2657B9770(v46, v79[7] + *(v71 + 72) * v15);
      goto LABEL_4;
    }

LABEL_16:
    v16 = v79;
    v79[(v49 >> 6) + 8] |= 1 << v49;
    v57 = (v16[6] + 32 * v49);
    *v57 = v32;
    v57[1] = v18;
    v57[2] = v31;
    v57[3] = v20;
    sub_2657B881C(v46, v16[7] + *(v71 + 72) * v49);
    v58 = v16[2];
    v53 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v53)
    {
      goto LABEL_22;
    }

    v16[2] = v59;
LABEL_4:
    *(v77 + 40) = v16;

    swift_endAccess();
    v7 = v68;
    result = sub_2657B8880(v68);
    v14 = v74 + 4;
    v13 = v75 - 1;
    if (v75 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t MetadataStore.set(lastModifiedDate:for:)(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v3 = type metadata accessor for RecordMetadata(0);
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = (&v63 - v7);
  v8 = sub_2657F22A4();
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = *(a2 + 16);
  if (!v15)
  {
    return result;
  }

  v75 = (v12 + 16);
  v67 = (v12 + 8);
  v16 = (a2 + 56);
  *&v14 = 136446722;
  v63 = v14;
  v80 = v8;
  v68 = v6;
  v76 = &v63 - v13;
  while (1)
  {
    v72 = v16;
    v73 = v15;
    v20 = *(v16 - 3);
    v19 = *(v16 - 2);
    v22 = *(v16 - 1);
    v21 = *v16;
    v23 = qword_281446408;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_2657F2344();
    __swift_project_value_buffer(v24, qword_281446410);
    v25 = *v75;
    v26 = v79;
    (*v75)(v76, v79, v8);
    v27 = v71;
    v74 = v25;
    v25(v71, v26, v8);

    v28 = sub_2657F2334();
    v29 = sub_2657F2584();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v81 = v66;
      v82[0] = 0;
      *v30 = v63;
      v82[1] = 0xE000000000000000;

      v65 = v28;
      sub_2657F2704();

      strcpy(v82, "identifier: ");
      BYTE5(v82[1]) = 0;
      HIWORD(v82[1]) = -5120;
      MEMORY[0x26675FFF0](v20, v19);
      MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x26675FFF0](v22, v21);

      v31 = sub_2657B7F9C(v82[0], v82[1], &v81);
      v64 = v29;
      v32 = v31;

      *(v30 + 4) = v32;
      *(v30 + 12) = 2082;
      sub_2657B8264(&unk_281446F40, MEMORY[0x277CC95B8]);
      v33 = v76;
      v34 = sub_2657F2854();
      v36 = v35;
      v37 = *v67;
      (*v67)(v33, v80);
      v38 = sub_2657B7F9C(v34, v36, &v81);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2050;
      v39 = v71;
      sub_2657F2264();
      v41 = v40;
      v37(v39, v80);
      v8 = v80;
      *(v30 + 24) = v41;
      v42 = v65;
      _os_log_impl(&dword_2657B5000, v65, v64, "Updating lastModifiedDate for record %{public}s to %{public}s (%{public}f)", v30, 0x20u);
      v43 = v66;
      swift_arrayDestroy();
      MEMORY[0x266760A30](v43, -1, -1);
      MEMORY[0x266760A30](v30, -1, -1);
    }

    else
    {

      v44 = *v67;
      (*v67)(v27, v8);
      v44(v76, v8);
    }

    v45 = v70;
    v46 = v78;
    v74(v78 + *(v70 + 20), v79, v8);
    *v46 = v20;
    v46[1] = v19;
    v46[2] = v22;
    v46[3] = v21;
    *(v46 + *(v45 + 24)) = 0;
    v47 = v77;
    swift_beginAccess();
    v48 = v68;
    sub_2657B82A8(v46, v68);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v47 + 40);
    v50 = v81;
    *(v47 + 40) = 0x8000000000000000;
    v51 = sub_2657B830C(v20, v19, v22, v21);
    v53 = *(v50 + 16);
    v54 = (v52 & 1) == 0;
    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
      break;
    }

    v57 = v52;
    if (*(v50 + 24) < v56)
    {
      sub_2657B83AC(v56, isUniquelyReferenced_nonNull_native);
      v51 = sub_2657B830C(v20, v19, v22, v21);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_23;
      }

LABEL_15:
      v8 = v80;
      if (v57)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v62 = v51;
    sub_2657CA0DC();
    v51 = v62;
    v8 = v80;
    if (v57)
    {
LABEL_3:
      v17 = v51;

      v18 = v81;
      sub_2657B9770(v48, v81[7] + *(v69 + 72) * v17);
      goto LABEL_4;
    }

LABEL_16:
    v18 = v81;
    v81[(v51 >> 6) + 8] |= 1 << v51;
    v59 = (v18[6] + 32 * v51);
    *v59 = v20;
    v59[1] = v19;
    v59[2] = v22;
    v59[3] = v21;
    sub_2657B881C(v48, v18[7] + *(v69 + 72) * v51);
    v60 = v18[2];
    v55 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v55)
    {
      goto LABEL_22;
    }

    v18[2] = v61;
LABEL_4:
    *(v77 + 40) = v18;

    swift_endAccess();
    result = sub_2657B8880(v78);
    v16 = v72 + 4;
    v15 = v73 - 1;
    if (v73 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t sub_2657B7F2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2657B7F9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2657B8068(v11, 0, 0, 1, a1, a2);
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
    sub_2657B8174(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2657B8068(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2657C5B60(a5, a6);
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
    result = sub_2657F2744();
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

uint64_t sub_2657B8174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_2657B821C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2657B8264(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2657F22A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2657B82A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2657B830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  v8 = sub_2657F2904();

  return sub_2657B871C(a1, a2, a3, a4, v8);
}

uint64_t sub_2657B83AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RecordMetadata(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023840, &unk_2657F41F0);
  v41 = v4;
  result = sub_2657F2794();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
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
      v19 = __clz(__rbit64(v14));
      v42 = (v14 - 1) & v14;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 32 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v43 = *(v40 + 72);
      v29 = v23 + v43 * v22;
      if (v41)
      {
        sub_2657B881C(v29, v44);
      }

      else
      {
        sub_2657B82A8(v29, v44);
      }

      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 32 * v17);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      v18[3] = v28;
      result = sub_2657B881C(v44, *(v9 + 56) + v43 * v17);
      ++*(v9 + 16);
      v7 = v39;
      v14 = v42;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_2657B871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_2657F2864() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_2657F2864() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_2657B881C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657B8880(uint64_t a1)
{
  v2 = type metadata accessor for RecordMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2657B88F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(*(v3 + 48) + 16);

  os_unfair_lock_lock(v5);
  a3();
  os_unfair_lock_unlock(v5);
}

void sub_2657B8958()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 48) + 16));
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v2 = sub_2657F2344();
  __swift_project_value_buffer(v2, qword_281446410);
  v3 = sub_2657F2334();
  v4 = sub_2657F2584();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2657B5000, v3, v4, "Resetting retry timer", v5, 2u);
    MEMORY[0x266760A30](v5, -1, -1);
  }

  *(v1 + 32) = *(v1 + 16);
}

void sub_2657B8A48(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_2657F22A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2657F2414();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = *a3;
  v16 = *(v4 + 120);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_2657F2434();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = *(v4 + 104);
    v19 = *(v4 + 112);
    __swift_project_boxed_opaque_existential_1((v4 + 80), v18);
    if (((*(v19 + 16))(v18, v19) & 1) == 0)
    {
      if (qword_281446408 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_73;
    }

    if ((~*(v4 + 248) & 3) != 0)
    {
      if (qword_281446408 != -1)
      {
LABEL_76:
        swift_once();
      }

      v32 = sub_2657F2344();
      __swift_project_value_buffer(v32, qword_281446410);

      v21 = sub_2657F2334();
      v22 = sub_2657F2584();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_70;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v119[0] = v24;
      *v23 = 136380675;
      v33 = *(v4 + 208);
      if (v33)
      {
        v34 = *(v4 + 200);
        v35 = v33;
      }

      else
      {
        v95 = IDSCopyLocalDeviceUniqueID();
        if (v95)
        {
          v96 = v95;
          v34 = sub_2657F2484();
          v35 = v97;
        }

        else
        {
          v34 = 0xD000000000000017;
          v35 = 0x80000002657F8510;
        }
      }

      v103 = sub_2657B7F9C(v34, v35, v119);

      *(v23 + 4) = v103;
      v99 = "(%{private}s) Will not sync because sync is inactive";
    }

    else
    {
      if (a2)
      {
        if (v118 == 2)
        {
          if (qword_281446408 != -1)
          {
            swift_once();
          }

          v20 = sub_2657F2344();
          __swift_project_value_buffer(v20, qword_281446410);

          v21 = sub_2657F2334();
          v22 = sub_2657F2584();

          if (!os_log_type_enabled(v21, v22))
          {
            goto LABEL_70;
          }

          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v119[0] = v24;
          *v23 = 136380675;
          v25 = *(v4 + 208);
          if (v25)
          {
            v26 = *(v4 + 200);
            v27 = v25;
          }

          else
          {
            v104 = IDSCopyLocalDeviceUniqueID();
            if (v104)
            {
              v105 = v104;
              v26 = sub_2657F2484();
              v27 = v106;
            }

            else
            {
              v26 = 0xD000000000000017;
              v27 = 0x80000002657F8510;
            }
          }

          v108 = sub_2657B7F9C(v26, v27, v119);

          *(v23 + 4) = v108;
          v99 = "(%{private}s) Will not sync because version is nil";
          goto LABEL_69;
        }

        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v109 = v8;
        v110 = a1;
        v111 = a2;
        v43 = sub_2657F2344();
        __swift_project_value_buffer(v43, qword_281446410);
        v44 = sub_2657F2334();
        v45 = sub_2657F2584();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_2657B5000, v44, v45, "Performing sync for all data sources", v46, 2u);
          MEMORY[0x266760A30](v46, -1, -1);
        }

        swift_beginAccess();
        v47 = *(v4 + 144);
        v50 = *(v47 + 64);
        v49 = v47 + 64;
        v48 = v50;
        v51 = 1 << *(*(v4 + 144) + 32);
        v52 = -1;
        if (v51 < 64)
        {
          v52 = ~(-1 << v51);
        }

        v53 = v52 & v48;
        v54 = (v51 + 63) >> 6;
        v116 = *(v4 + 144);

        v55 = 0;
        v56 = MEMORY[0x277D84F90];
        v112 = v9;
        v113 = v49;
        v114 = v11;
        while (v53)
        {
LABEL_39:
          v58 = *(*(v116 + 56) + ((v55 << 9) | (8 * __clz(__rbit64(v53)))));
          v119[3] = type metadata accessor for SyncEngine();
          v119[4] = &protocol witness table for SyncEngine;
          v119[0] = v4;
          Strong = swift_unknownObjectWeakLoadStrong();
          v117 = v58;
          if (Strong)
          {
            v60 = *(v58 + 24);
            ObjectType = swift_getObjectType();
            v115 = v56;
            v62 = *(v60 + 32);

            v63 = v62(v119, ObjectType, v60);
            v56 = v115;
            v64 = v63;
            swift_unknownObjectRelease();
          }

          else
          {

            v64 = MEMORY[0x277D84F90];
          }

          __swift_destroy_boxed_opaque_existential_1(v119);
          v65 = *(v64 + 16);
          v66 = *(v56 + 2);
          v67 = v66 + v65;
          if (__OFADD__(v66, v65))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v69 = *(v56 + 3) >> 1, v69 < v67))
          {
            if (v66 <= v67)
            {
              v70 = v66 + v65;
            }

            else
            {
              v70 = v66;
            }

            v56 = sub_2657CFFDC(isUniquelyReferenced_nonNull_native, v70, 1, v56);
            v69 = *(v56 + 3) >> 1;
          }

          v11 = v114;
          if (*(v64 + 16))
          {
            if (v69 - *(v56 + 2) < v65)
            {
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            swift_arrayInitWithCopy();

            v49 = v113;
            if (v65)
            {
              v71 = *(v56 + 2);
              v72 = __OFADD__(v71, v65);
              v73 = v71 + v65;
              if (v72)
              {
                goto LABEL_78;
              }

              *(v56 + 2) = v73;
            }
          }

          else
          {

            v49 = v113;
            if (v65)
            {
              goto LABEL_75;
            }
          }

          v53 &= v53 - 1;

          v9 = v112;
        }

        while (1)
        {
          v57 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v57 >= v54)
          {

            v74 = *(v4 + 64);
            v75 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v74);
            v76 = (*(v75 + 24))(v110, v111, v74, v75);
            v77 = v9;
            v78 = *(v4 + 64);
            v79 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v78);
            v80 = (*(v79 + 8))(v56, v78, v79);
            v81 = v11;
            v82 = *(v4 + 64);
            v83 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v82);
            sub_2657F2284();
            (*(v83 + 40))(v81, v80, v82, v83);
            v116 = *(v77 + 8);
            v84 = v109;
            (v116)(v81, v109);
            v119[0] = v80;
            sub_2657E526C(v76);
            v117 = v119[0];
            v85 = *(v4 + 64);
            v86 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v85);
            v87 = v110;
            v88 = (*(v86 + 32))(v110, v111, v85, v86);
            v89 = *(v4 + 64);
            v90 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v89);
            v91 = (*(v90 + 16))(v56, v89, v90);

            v92 = *(v4 + 64);
            v93 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v92);
            sub_2657F2284();
            (*(v93 + 48))(v81, v91, v92, v93);
            (v116)(v81, v84);
            v119[0] = v88;
            sub_2657E526C(v91);
            v94 = v119[0];
            LOBYTE(v119[0]) = v118 & 1;
            sub_2657E5360(v117, v94, v87, v111, v119);

            return;
          }

          v53 = *(v49 + 8 * v57);
          ++v55;
          if (v53)
          {
            v55 = v57;
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_72;
      }

      if (qword_281446408 != -1)
      {
LABEL_79:
        swift_once();
      }

      v36 = sub_2657F2344();
      __swift_project_value_buffer(v36, qword_281446410);

      v21 = sub_2657F2334();
      v22 = sub_2657F2584();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_70;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v119[0] = v24;
      *v23 = 136380675;
      v37 = *(v4 + 208);
      if (v37)
      {
        v38 = *(v4 + 200);
        v39 = v37;
      }

      else
      {
        v100 = IDSCopyLocalDeviceUniqueID();
        if (v100)
        {
          v101 = v100;
          v38 = sub_2657F2484();
          v39 = v102;
        }

        else
        {
          v38 = 0xD000000000000017;
          v39 = 0x80000002657F8510;
        }
      }

      v107 = sub_2657B7F9C(v38, v39, v119);

      *(v23 + 4) = v107;
      v99 = "(%{private}s) Will not sync because pairedDeviceIdentifier is nil";
    }

LABEL_69:
    _os_log_impl(&dword_2657B5000, v21, v22, v99, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x266760A30](v24, -1, -1);
    MEMORY[0x266760A30](v23, -1, -1);
    goto LABEL_70;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_12:
  v28 = sub_2657F2344();
  __swift_project_value_buffer(v28, qword_281446410);

  v21 = sub_2657F2334();
  v22 = sub_2657F2584();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v119[0] = v24;
    *v23 = 136380675;
    v29 = *(v4 + 208);
    if (v29)
    {
      v30 = *(v4 + 200);
      v31 = v29;
    }

    else
    {
      v40 = IDSCopyLocalDeviceUniqueID();
      if (v40)
      {
        v41 = v40;
        v30 = sub_2657F2484();
        v31 = v42;
      }

      else
      {
        v30 = 0xD000000000000017;
        v31 = 0x80000002657F8510;
      }
    }

    v98 = sub_2657B7F9C(v30, v31, v119);

    *(v23 + 4) = v98;
    v99 = "(%{private}s) Will not sync because keybag is locked";
    goto LABEL_69;
  }

LABEL_70:
}

uint64_t objectdestroy_210Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657B9770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657B9800(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2657F22A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2657B98AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2657F22A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2657B9950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecordMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2657B9A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RecordMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2657B9B10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9B4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657B9B9C()
{
  MEMORY[0x266760AB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9BDC()
{
  if (*v0)
  {
    return 0x6563616C706572;
  }

  else
  {
    return 0x657461647075;
  }
}

uint64_t sub_2657B9C14@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2657B9C50()
{
  if (*v0)
  {
    return 0x4D646574656C6564;
  }

  else
  {
    return 0x6465696669646F6DLL;
  }
}

uint64_t sub_2657B9CB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9CE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2657B9D40()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2657B9D78()
{

  swift_unknownObjectRelease();

  sub_2657BB314(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2657B9DD0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2657B9F70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9FA8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2657B9FF0()
{

  sub_2657D1110(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2657BA128()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657BA19C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2657BA1AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t default argument 3 of SyncEngine.init(syncService:metadataStore:keybag:retryTimer:)()
{
  type metadata accessor for ExponentialBackoffRetryTimer();
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

uint64_t sub_2657BA36C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2657BA38C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2814463A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814463A0);
    }
  }
}

unint64_t sub_2657BA404()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[3];
    v6 = v4 > 0x40;
    if (v4 >= 0x40)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1 << v4;
    }

    if (v6)
    {
      v7 = 0;
    }

    if (is_mul_ok(v5, v7))
    {
      return v5 * v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t ExponentialBackoffRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = xmmword_2657F3400;
  return v0;
}

uint64_t ExponentialBackoffRetryTimer.init()()
{
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

void *ExponentialBackoffRetryTimer.__allocating_init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v4[6] = v5;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  return v4;
}

void *ExponentialBackoffRetryTimer.init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[6] = v5;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t ExponentialBackoffRetryTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ExponentialBackoffRetryTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t PairedDevice.PairedDeviceClass.description.getter()
{
  v1 = 0x64696C61766E69;
  v2 = 6513005;
  if (*v0 != 2)
  {
    v2 = 0x6863746177;
  }

  if (*v0)
  {
    v1 = 0x656E6F6870;
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

uint64_t PairedDevice.PairedDeviceClass.hashValue.getter()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t sub_2657BA90C()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t sub_2657BA954(uint64_t a1)
{
  v2 = *v1;
  sub_2657F28D4();
  MEMORY[0x266760400](v2);
  return sub_2657F2904();
}

uint64_t sub_2657BA998()
{
  v1 = 0x64696C61766E69;
  v2 = 6513005;
  if (*v0 != 2)
  {
    v2 = 0x6863746177;
  }

  if (*v0)
  {
    v1 = 0x656E6F6870;
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

uint64_t PairedDevice.identifier.getter()
{
  v1 = *v0;

  return v1;
}

SessionSyncEngine::PairedDevice __swiftcall PairedDevice.init(identifier:deviceClass:protocolVersion:)(SessionSyncEngine::PairedDevice identifier, SessionSyncEngine::PairedDevice::PairedDeviceClass deviceClass, SessionSyncEngine::SyncProtocolVersion protocolVersion)
{
  v4 = *deviceClass;
  v5 = *protocolVersion;
  *v3 = identifier.identifier;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  identifier.deviceClass = deviceClass;
  return identifier;
}

uint64_t PairedDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2657F2704();
  MEMORY[0x26675FFF0](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x656369766564203BLL, 0xEF203A7373616C43);
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0xD000000000000013, 0x80000002657F7FD0);
  sub_2657F2754();
  return 0;
}

uint64_t _s17SessionSyncEngine12PairedDeviceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_2657F2864();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

unint64_t sub_2657BAC04()
{
  result = qword_280023680;
  if (!qword_280023680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023680);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2657BAC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairedDevice.PairedDeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairedDevice.PairedDeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Message.init(messageType:version:encodedBody:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a3;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2657BAE38()
{
  v1 = 0x546567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x426465646F636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2657BAEA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2657BB9D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2657BAEE4(uint64_t a1)
{
  v2 = sub_2657BB1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BAF20(uint64_t a1)
{
  v2 = sub_2657BB1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Message.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023688, &qword_2657F3600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v9;
  v10 = *(v1 + 3);
  v14 = *(v1 + 4);
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BB1C4();
  sub_2657F2924();
  LOBYTE(v18) = v8;
  v20 = 0;
  sub_2657BB218();
  sub_2657F2844();
  if (!v2)
  {
    v13 = v14;
    v12 = v15;
    LOBYTE(v18) = 1;
    sub_2657F2824();
    v18 = v12;
    v19 = v13;
    v20 = 2;
    sub_2657BB26C(v12, v13);
    sub_2657BB2C0();
    sub_2657F2844();
    sub_2657BB314(v18, v19);
  }

  return (*(v5 + 8))(v7, v4);
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

unint64_t sub_2657BB1C4()
{
  result = qword_280023690;
  if (!qword_280023690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023690);
  }

  return result;
}

unint64_t sub_2657BB218()
{
  result = qword_280023698;
  if (!qword_280023698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023698);
  }

  return result;
}

uint64_t sub_2657BB26C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2657BB2C0()
{
  result = qword_2800236A0;
  if (!qword_2800236A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236A0);
  }

  return result;
}

uint64_t sub_2657BB314(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236A8, &qword_2657F3608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BB1C4();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_2657BB5D0();
  sub_2657F27F4();
  v9 = v18;
  LOBYTE(v18) = 1;
  v10 = sub_2657F27D4();
  v12 = v11;
  v17 = v10;
  v20 = 2;
  sub_2657BB624();
  sub_2657F27F4();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;
  *a2 = v9;
  *(a2 + 8) = v17;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  sub_2657BB26C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2657BB314(v13, v14);
}

unint64_t sub_2657BB5D0()
{
  result = qword_2800236B0;
  if (!qword_2800236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236B0);
  }

  return result;
}

unint64_t sub_2657BB624()
{
  result = qword_2800236B8;
  if (!qword_2800236B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_2657BB6D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2657BB720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Message.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Message.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2657BB8CC()
{
  result = qword_2800236C0;
  if (!qword_2800236C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236C0);
  }

  return result;
}

unint64_t sub_2657BB924()
{
  result = qword_2800236C8;
  if (!qword_2800236C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236C8);
  }

  return result;
}

unint64_t sub_2657BB97C()
{
  result = qword_2800236D0;
  if (!qword_2800236D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236D0);
  }

  return result;
}

uint64_t sub_2657BB9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_2657F2864() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079 || (sub_2657F2864() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x426465646F636E65 && a2 == 0xEB0000000079646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2657F2864();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static Keybag.shared.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281446540 != -1)
  {
    swift_once();
  }

  v2 = qword_281446548;
  a1[3] = _s9IOSKeybagCMa();
  a1[4] = &off_28771A510;
  *a1 = v2;
}

void sub_2657BBB74()
{
  _s9IOSKeybagCMa();
  swift_allocObject();
  sub_2657D4EB0();
  qword_281446548 = v0;
}

uint64_t getEnumTagSinglePayload for Keybag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Keybag(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t RecordID.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecordID.zone.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RecordID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2657F2704();

  strcpy(v6, "identifier: ");
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x26675FFF0](v3, v4);
  return v6[0];
}

SessionSyncEngine::RecordID __swiftcall RecordID.init(identifier:zone:)(Swift::String identifier, Swift::String zone)
{
  *v2 = identifier;
  v2[1] = zone;
  result.zone = zone;
  result.identifier = identifier;
  return result;
}

uint64_t static RecordID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2657F2864(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2657F2864();
    }
  }

  return result;
}

uint64_t sub_2657BBE5C()
{
  if (*v0)
  {
    return 1701736314;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2657BBE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736314 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657BBF78(uint64_t a1)
{
  v2 = sub_2657BC184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BBFB4(uint64_t a1)
{
  v2 = sub_2657BC184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecordID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236D8, &qword_2657F3850);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BC184();
  sub_2657F2924();
  v12 = 0;
  v8 = v10[3];
  sub_2657F2824();
  if (!v8)
  {
    v11 = 1;
    sub_2657F2824();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2657BC184()
{
  result = qword_2800236E0;
  if (!qword_2800236E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236E0);
  }

  return result;
}

uint64_t RecordID.hash(into:)(uint64_t a1)
{
  sub_2657F24C4();

  return sub_2657F24C4();
}

uint64_t RecordID.hashValue.getter()
{
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  return sub_2657F2904();
}

uint64_t RecordID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236E8, &qword_2657F3858);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BC184();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_2657F27D4();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_2657F27D4();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2657BC4C0()
{
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  return sub_2657F2904();
}

uint64_t sub_2657BC528(uint64_t a1)
{
  sub_2657F24C4();

  return sub_2657F24C4();
}

uint64_t sub_2657BC578(uint64_t a1)
{
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  return sub_2657F2904();
}

uint64_t sub_2657BC5DC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2657F2864(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2657F2864();
    }
  }

  return result;
}

uint64_t sub_2657BC680()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2657F2704();

  strcpy(v6, "identifier: ");
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x26675FFF0](v3, v4);
  return v6[0];
}

uint64_t RecordMetadata.recordID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t RecordMetadata.lastModified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordMetadata(0) + 20);
  v4 = sub_2657F22A4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecordMetadata.description.getter()
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2657F2704();
  MEMORY[0x26675FFF0](0x444964726F636572, 0xEA0000000000203ALL);
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2657F2704();

  strcpy(v10, "identifier: ");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x26675FFF0](v3, v4);
  MEMORY[0x26675FFF0](v10[0], v10[1]);

  MEMORY[0x26675FFF0](0xD000000000000010, 0x80000002657F7FF0);
  v5 = type metadata accessor for RecordMetadata(0);
  sub_2657F22A4();
  sub_2657B821C(&unk_281446F40, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v6 = sub_2657F2854();
  MEMORY[0x26675FFF0](v6);

  MEMORY[0x26675FFF0](10272, 0xE200000000000000);
  sub_2657F2204();
  sub_2657F2534();
  MEMORY[0x26675FFF0](0x6C65447369203B29, 0xEE00203A64657465);
  if (*(v0 + *(v5 + 24)))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + *(v5 + 24)))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26675FFF0](v7, v8);

  return v11;
}

uint64_t RecordMetadata.init(recordID:lastModified:isDeleted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  v9 = type metadata accessor for RecordMetadata(0);
  v10 = *(v9 + 20);
  v11 = sub_2657F22A4();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_2657BCB00()
{
  v1 = 0x69646F4D7473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C65447369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444964726F636572;
  }
}

uint64_t sub_2657BCB68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2657BEEA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2657BCB90(uint64_t a1)
{
  v2 = sub_2657BE55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BCBCC(uint64_t a1)
{
  v2 = sub_2657BE55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecordMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236F0, &qword_2657F3860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BE55C();
  sub_2657F2924();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v14 = *v3;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v13[15] = 0;
  sub_2657BE5B0();

  sub_2657F2844();

  if (!v2)
  {
    type metadata accessor for RecordMetadata(0);
    LOBYTE(v14) = 1;
    sub_2657F22A4();
    sub_2657B821C(&qword_280023708, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2657F2844();
    LOBYTE(v14) = 2;
    sub_2657F2834();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RecordMetadata.hash(into:)(uint64_t a1)
{
  sub_2657F24C4();
  sub_2657F24C4();
  type metadata accessor for RecordMetadata(0);
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2657F2464();
  return sub_2657F28F4();
}

uint64_t RecordMetadata.hashValue.getter()
{
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  type metadata accessor for RecordMetadata(0);
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2657F2464();
  sub_2657F28F4();
  return sub_2657F2904();
}

uint64_t RecordMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_2657F22A4();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023710, &qword_2657F3868);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RecordMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2657BE55C();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v14 = v12;
  v29 = 0;
  sub_2657BE604();
  v15 = v24;
  sub_2657F27F4();
  v16 = v27;
  v17 = v28;
  *v14 = v26;
  *(v14 + 16) = v16;
  *(v14 + 24) = v17;
  LOBYTE(v26) = 1;
  sub_2657B821C(&qword_280023720, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2657F27F4();
  (*(v22 + 32))(v14 + *(v10 + 20), v6, v4);
  LOBYTE(v26) = 2;
  v18 = sub_2657F27E4();
  (*(v23 + 8))(v9, v15);
  *(v14 + *(v10 + 24)) = v18 & 1;
  sub_2657BE6CC(v14, v21, type metadata accessor for RecordMetadata);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_2657BE734(v14, type metadata accessor for RecordMetadata);
}

uint64_t sub_2657BD410(uint64_t a1)
{
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2657F2464();
  sub_2657F28F4();
  return sub_2657F2904();
}

uint64_t sub_2657BD4E4(uint64_t a1, uint64_t a2)
{
  sub_2657F24C4();
  sub_2657F24C4();
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2657F2464();
  return sub_2657F28F4();
}

uint64_t sub_2657BD5A4(uint64_t a1, uint64_t a2)
{
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2657F2464();
  sub_2657F28F4();
  return sub_2657F2904();
}

uint64_t Record.data.getter()
{
  v1 = v0 + *(type metadata accessor for Record(0) + 20);
  v2 = *v1;
  sub_2657BB26C(*v1, *(v1 + 8));
  return v2;
}

uint64_t Record.init(metadata:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2657B881C(a1, a4);
  result = type metadata accessor for Record(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

BOOL static Record.== infix(_:_:)(void *a1, void *a2)
{
  if ((_s17SessionSyncEngine14RecordMetadataV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Record(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *v7;
  v9 = v7[1];

  return sub_2657BE32C(v5, v6, v8, v9);
}

uint64_t sub_2657BD7A4()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_2657BD7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657BD8B4(uint64_t a1)
{
  v2 = sub_2657BE678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BD8F0(uint64_t a1)
{
  v2 = sub_2657BE678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Record.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023728, &qword_2657F3870);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BE678();
  sub_2657F2924();
  LOBYTE(v13) = 0;
  type metadata accessor for RecordMetadata(0);
  sub_2657B821C(&qword_280023738, type metadata accessor for RecordMetadata, &protocol conformance descriptor for RecordMetadata);
  sub_2657F2844();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for Record(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_2657BB26C(v13, v10);
    sub_2657BB2C0();
    sub_2657F2844();
    sub_2657BB314(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Record.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for RecordMetadata(0);
  MEMORY[0x28223BE20](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023740, &qword_2657F3878);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Record(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BE678();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v17;
  LOBYTE(v20) = 0;
  sub_2657B821C(&qword_280023748, type metadata accessor for RecordMetadata, &protocol conformance descriptor for RecordMetadata);
  v14 = v18;
  sub_2657F27F4();
  sub_2657B881C(v19, v12);
  v21 = 1;
  sub_2657BB624();
  sub_2657F27F4();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v20;
  sub_2657BE6CC(v12, v16, type metadata accessor for Record);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2657BE734(v12, type metadata accessor for Record);
}

BOOL sub_2657BDE44(void *a1, void *a2, uint64_t a3)
{
  if ((_s17SessionSyncEngine14RecordMetadataV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_2657BE32C(v7, v8, v10, v11);
}

uint64_t sub_2657BDEB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2657F2164();
    if (v10)
    {
      v11 = sub_2657F2184();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2657F2174();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2657F2164();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2657F2184();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2657F2174();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2657BE0E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2657BE274(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2657BB314(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2657BDEB4(v13, a3, a4, &v12);
  v10 = v4;
  sub_2657BB314(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2657BE274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2657F2164();
  v11 = result;
  if (result)
  {
    result = sub_2657F2184();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2657F2174();
  sub_2657BDEB4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2657BE32C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2657BB26C(a3, a4);
          return sub_2657BE0E4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s17SessionSyncEngine14RecordMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_2657F2864()) && (v4 == v6 ? (v9 = v5 == v7) : (v9 = 0), (v9 || (sub_2657F2864()) && (v10 = type metadata accessor for RecordMetadata(0), (sub_2657F2274())))
  {
    v11 = *(a1 + *(v10 + 24)) ^ *(a2 + *(v10 + 24)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_2657BE55C()
{
  result = qword_2800236F8;
  if (!qword_2800236F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236F8);
  }

  return result;
}

unint64_t sub_2657BE5B0()
{
  result = qword_280023700;
  if (!qword_280023700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023700);
  }

  return result;
}

unint64_t sub_2657BE604()
{
  result = qword_280023718;
  if (!qword_280023718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023718);
  }

  return result;
}

unint64_t sub_2657BE678()
{
  result = qword_280023730;
  if (!qword_280023730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023730);
  }

  return result;
}

uint64_t sub_2657BE6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2657BE734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2657BE798()
{
  result = qword_281446428[0];
  if (!qword_281446428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281446428);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2657BE840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2657BE888(uint64_t result, int a2, int a3)
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

uint64_t sub_2657BE900(uint64_t a1)
{
  result = sub_2657F22A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2657BE9AC(uint64_t a1)
{
  result = type metadata accessor for RecordMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncProtocolVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncProtocolVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2657BEB94()
{
  result = qword_280023768;
  if (!qword_280023768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023768);
  }

  return result;
}

unint64_t sub_2657BEBEC()
{
  result = qword_280023770;
  if (!qword_280023770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023770);
  }

  return result;
}

unint64_t sub_2657BEC44()
{
  result = qword_280023778;
  if (!qword_280023778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023778);
  }

  return result;
}

unint64_t sub_2657BEC9C()
{
  result = qword_280023780;
  if (!qword_280023780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023780);
  }

  return result;
}

unint64_t sub_2657BECF4()
{
  result = qword_280023788;
  if (!qword_280023788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023788);
  }

  return result;
}

unint64_t sub_2657BED4C()
{
  result = qword_280023790;
  if (!qword_280023790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023790);
  }

  return result;
}

unint64_t sub_2657BEDA4()
{
  result = qword_280023798;
  if (!qword_280023798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023798);
  }

  return result;
}

unint64_t sub_2657BEDFC()
{
  result = qword_2800237A0;
  if (!qword_2800237A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237A0);
  }

  return result;
}

unint64_t sub_2657BEE54()
{
  result = qword_2800237A8;
  if (!qword_2800237A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237A8);
  }

  return result;
}

uint64_t sub_2657BEEA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_2657F2864() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646F4D7473616CLL && a2 == 0xEC00000064656966 || (sub_2657F2864() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C65447369 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_2657F2864();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2657BF018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SyncState.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x26675FFF0](0xD000000000000010, 0x80000002657F8030);
  }

  if ((v1 & 2) != 0)
  {
    MEMORY[0x26675FFF0](0xD000000000000012, 0x80000002657F8010);
  }

  return 0;
}

BOOL sub_2657BF158(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2657BF188@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2657BF1B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2657BF28C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2657BF2C0()
{
  result = qword_2800237B0;
  if (!qword_2800237B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237B0);
  }

  return result;
}

unint64_t sub_2657BF318()
{
  result = qword_2800237B8;
  if (!qword_2800237B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237B8);
  }

  return result;
}

unint64_t sub_2657BF370()
{
  result = qword_2800237C0;
  if (!qword_2800237C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237C0);
  }

  return result;
}

unint64_t sub_2657BF3C8()
{
  result = qword_2800237C8;
  if (!qword_2800237C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t MetadataStore.__allocating_init(persistentStore:)(void *a1)
{
  sub_2657BF854(a1, v11);
  type metadata accessor for MetadataStore();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F98];
  v4 = MEMORY[0x277D84FA0];
  *(v2 + 48) = MEMORY[0x277D84F98];
  *(v2 + 56) = v4;
  *(v2 + 16) = xmmword_2657F40C0;
  *(v2 + 32) = 10;
  *(v2 + 40) = v3;
  sub_2657CC364(v11, v8, &qword_2800237D0, &qword_2657F40F0);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v6 + 32))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2657CC304(v8, &qword_2800237D0, &qword_2657F40F0);
  }

  sub_2657BF97C();
  sub_2657BFE88();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2657CC304(v11, &qword_2800237D0, &qword_2657F40F0);
  return v2;
}

uint64_t MetadataStore.__allocating_init(deviceObsoletionDuration:tombstoneObsoletionDuration:maximumUnsyncedRecordCount:persistentStore:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F98];
  v10 = MEMORY[0x277D84FA0];
  *(v8 + 48) = MEMORY[0x277D84F98];
  *(v8 + 56) = v10;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = v9;
  sub_2657CC364(a2, v14, &qword_2800237D0, &qword_2657F40F0);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v12 + 32))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_2657CC304(v14, &qword_2800237D0, &qword_2657F40F0);
  }

  sub_2657BF97C();
  sub_2657BFE88();
  sub_2657CC304(a2, &qword_2800237D0, &qword_2657F40F0);
  return v8;
}

uint64_t MetadataStore.init(deviceObsoletionDuration:tombstoneObsoletionDuration:maximumUnsyncedRecordCount:persistentStore:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 16) = a3;
  v6 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84FA0];
  *(v4 + 48) = MEMORY[0x277D84F98];
  *(v4 + 56) = v7;
  *(v4 + 24) = a4;
  *(v4 + 32) = a1;
  *(v4 + 40) = v6;
  sub_2657CC364(a2, v11, &qword_2800237D0, &qword_2657F40F0);
  v8 = v12;
  if (v12)
  {
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_2657CC304(v11, &qword_2800237D0, &qword_2657F40F0);
  }

  sub_2657BF97C();
  sub_2657BFE88();
  sub_2657CC304(a2, &qword_2800237D0, &qword_2657F40F0);
  return v4;
}

uint64_t sub_2657BF854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall MetadataStore.garbageCollect()()
{
  sub_2657BF97C();

  sub_2657BFE88();
}

void *MetadataStore.deinit()
{

  return v0;
}

uint64_t MetadataStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2657BF97C()
{
  v1 = v0;
  v2 = sub_2657C43F4(sub_2657C4C44);
  v3 = sub_2657C43F4(sub_2657C4770);
  sub_2657C4548();
  v5 = v4;
  if (qword_281446408 != -1)
  {
LABEL_23:
    swift_once();
  }

  v6 = sub_2657F2344();
  __swift_project_value_buffer(v6, qword_281446410);

  v7 = sub_2657F2334();
  v8 = sub_2657F2584();

  v42 = v2;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43[0] = v10;
    *v9 = 136446210;
    v11 = sub_2657F2554();
    v13 = sub_2657B7F9C(v11, v12, v43);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2657B5000, v7, v8, "Removing obsolete device identifiers: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266760A30](v10, -1, -1);
    MEMORY[0x266760A30](v9, -1, -1);
  }

  v14 = sub_2657F2334();
  v15 = sub_2657F2584();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v43[0] = v17;
    *v16 = 136446210;
    v18 = sub_2657F2554();
    v20 = sub_2657B7F9C(v18, v19, v43);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2657B5000, v14, v15, "Removing bloated device identifiers: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x266760A30](v17, -1, -1);
    MEMORY[0x266760A30](v16, -1, -1);
  }

  v21 = sub_2657F2334();
  v22 = sub_2657F2584();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43[0] = v24;
    *v23 = 136446210;
    v25 = sub_2657F2554();
    v27 = sub_2657B7F9C(v25, v26, v43);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2657B5000, v21, v22, "Removing unsynced device identifiers: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x266760A30](v24, -1, -1);
    MEMORY[0x266760A30](v23, -1, -1);
  }

  v28 = sub_2657D5414(v3, v42);
  v29 = sub_2657D5414(v5, v28);
  v2 = v29;
  v30 = 0;
  v31 = v29 + 56;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v3 = v33 & *(v29 + 56);
  v5 = (v32 + 63) >> 6;
  while (v3)
  {
LABEL_18:
    v35 = (*(v2 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v3)))));
    v37 = *v35;
    v36 = v35[1];
    swift_beginAccess();

    sub_2657C8374(v37, v36);
    if (v38)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v1 + 48);
      *(v1 + 48) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2657CA760(&qword_280023820, &qword_2657F41D0);
      }

      sub_2657F0700();
      *(v1 + 48) = v40;
    }

    v3 &= v3 - 1;
    swift_endAccess();
    swift_beginAccess();
    sub_2657C65BC(v37, v36);
    swift_endAccess();
  }

  while (1)
  {
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v34 >= v5)
    {
    }

    v3 = *(v31 + 8 * v34);
    ++v30;
    if (v3)
    {
      v30 = v34;
      goto LABEL_18;
    }
  }
}

uint64_t sub_2657BFE88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v58 - v2;
  v3 = type metadata accessor for RecordMetadata(0);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023848, &qword_2657F4200);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v58 - v9);
  v72 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v11 = *(v0 + 40);
  v12 = *(v11 + 64);
  v60 = v11 + 64;
  v61 = v0;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v64 = v11;

  v18 = 0;
  v19 = &qword_280023818;
  v67 = v8;
  v62 = v10;
  while (v15)
  {
    v20 = v18;
LABEL_14:
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v24 = v23 | (v20 << 6);
    v25 = v63;
    v26 = (*(v64 + 48) + 32 * v24);
    v28 = *v26;
    v27 = v26[1];
    v30 = v26[2];
    v29 = v26[3];
    sub_2657B82A8(*(v64 + 56) + *(v65 + 72) * v24, v63);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
    v32 = *(v31 + 48);
    v33 = v67;
    *v67 = v28;
    *(v33 + 1) = v27;
    *(v33 + 2) = v30;
    *(v33 + 3) = v29;
    v8 = v33;
    v19 = &qword_280023818;
    sub_2657B881C(v25, &v33[v32]);
    (*(*(v31 - 8) + 56))(v8, 0, 1, v31);

    v22 = v20;
    v10 = v62;
LABEL_15:
    sub_2657CC3D8(v8, v10);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, &qword_2657F41C8);
    if ((*(*(v34 - 8) + 48))(v10, 1, v34) == 1)
    {

      v44 = 0;
      v67 = v72;
      v45 = 1 << *(v72 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v72 + 56;
      v48 = v46 & *(v72 + 56);
      v49 = (v45 + 63) >> 6;
      v65 += 56;
      for (i = v59; v48; result = )
      {
        v51 = v44;
LABEL_28:
        v52 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v53 = (*(v67 + 6) + ((v51 << 11) | (32 * v52)));
        v55 = v53[1];
        v56 = v53[2];
        v57 = v53[3];
        v68 = *v53;
        v54 = v68;
        v69 = v55;
        v70 = v56;
        v71 = v57;

        sub_2657C309C(&v68);
        (*v65)(i, 1, 1, v66);
        swift_beginAccess();

        sub_2657C1304(i, v54, v55, v56, v57);
        swift_endAccess();
      }

      while (1)
      {
        v51 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_32;
        }

        if (v51 >= v49)
        {
        }

        v48 = *(v47 + 8 * v51);
        ++v44;
        if (v48)
        {
          v44 = v51;
          goto LABEL_28;
        }
      }
    }

    v35 = v19;
    v37 = *v10;
    v36 = v10[1];
    v39 = v10[2];
    v38 = v10[3];
    v40 = v10 + *(v34 + 48);
    v41 = *(v40 + *(v66 + 24));
    sub_2657B8880(v40);
    if (v41)
    {
      v68 = v37;
      v69 = v36;
      v70 = v39;
      v71 = v38;
      sub_2657C5340(&v68);
      if (v42)
      {
        sub_2657C60E0(&v68, v37, v36, v39, v38);
      }
    }

    v18 = v22;
    v19 = v35;
    v8 = v67;
  }

  if (v16 <= v18 + 1)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v16;
  }

  v22 = v21 - 1;
  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, &qword_2657F41C8);
      (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
      v15 = 0;
      goto LABEL_15;
    }

    v15 = *(v60 + 8 * v20);
    ++v18;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t MetadataStore.unknownRecordIDs(in:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v27 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  v26 = v2;
  while (2)
  {
    v29 = v5;
LABEL_4:
    if (v4 >= v2)
    {
LABEL_36:
      __break(1u);
    }

    else if (!__OFADD__(v4, 1))
    {
      v6 = 0;
      v7 = (v27 + 32 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v31 = v4 + 1;
      v32 = v7[2];
      v11 = *(v28 + 40);
      v12 = 1 << *(v11 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v11 + 64);
      v30 = v4 + 1;
      v15 = (v12 + 63) >> 6;
      while (v14)
      {
LABEL_15:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = (*(v11 + 48) + ((v6 << 11) | (32 * v17)));
        result = *v18;
        v19 = v18[2];
        v20 = v18[3];
        if (*v18 != v8 || v18[1] != v9)
        {
          result = sub_2657F2864();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        if (v19 != v32 || v20 != v10)
        {
          result = sub_2657F2864();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v2 = v26;
        v5 = v29;
        v4 = v31;
        if (v30 != v26)
        {
          goto LABEL_4;
        }

        return v5;
      }

      while (1)
      {
        v16 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v16 >= v15)
        {
          break;
        }

        v14 = *(v11 + 64 + 8 * v16);
        ++v6;
        if (v14)
        {
          v6 = v16;
          goto LABEL_15;
        }
      }

      v5 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2657CB07C(0, *(v29 + 16) + 1, 1);
        v5 = v29;
      }

      v2 = v26;
      v4 = v31;
      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_2657CB07C((v23 > 1), v24 + 1, 1);
        v5 = v29;
      }

      *(v5 + 16) = v24 + 1;
      v25 = (v5 + 32 * v24);
      v25[4] = v8;
      v25[5] = v9;
      v25[6] = v32;
      v25[7] = v10;
      if (v30 != v26)
      {
        continue;
      }

      return v5;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C066C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v29 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  MEMORY[0x28223BE20](v27);
  v26 = &v26 - v6;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v30 = a3;

  v13 = 0;
  while (v10)
  {
    v32 = v4;
LABEL_10:
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = *(v30 + 56);
    v17 = (*(v30 + 48) + 32 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[3];
    v31 = v17[2];
    v21 = v16 + *(*(type metadata accessor for RecordMetadata(0) - 8) + 72) * v15;
    v22 = v26;
    sub_2657B82A8(v21, &v26[*(v27 + 48)]);
    *v22 = v18;
    v22[1] = v19;
    v22[2] = v31;
    v22[3] = v20;

    v23 = v29;
    v24 = v32;
    v25 = v28(v22);
    v4 = v24;
    result = sub_2657CC304(v22, &qword_280023818, &qword_2657F41C8);
    if (v24)
    {
      goto LABEL_14;
    }

    v10 &= v10 - 1;
    if (v25)
    {
      v23 = 1;
LABEL_14:

      return v23 & 1;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v23 = 0;
      goto LABEL_14;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v32 = v4;
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C0864(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023810, &qword_2657F41C0);
  MEMORY[0x28223BE20](v29);
  v28 = &v28 - v6;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v32 = a3;

  v13 = 0;
  while (v10)
  {
    v34 = v4;
LABEL_10:
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = *(v32 + 56);
    v17 = (*(v32 + 48) + 32 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[3];
    v33 = v17[2];
    v21 = sub_2657F22A4();
    v22 = *(v21 - 8);
    v23 = v16 + *(v22 + 72) * v15;
    v24 = v28;
    (*(v22 + 16))(&v28[*(v29 + 48)], v23, v21);
    *v24 = v18;
    v24[1] = v19;
    v24[2] = v33;
    v24[3] = v20;

    v25 = v31;
    v26 = v34;
    v27 = v30(v24);
    v4 = v26;
    result = sub_2657CC304(v24, &qword_280023810, &qword_2657F41C0);
    if (v26)
    {
      goto LABEL_14;
    }

    v10 &= v10 - 1;
    if (v27)
    {
      v25 = 1;
LABEL_14:

      return v25 & 1;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v25 = 0;
      goto LABEL_14;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v34 = v4;
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MetadataStore.recordIDs(minus:)(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_2657CB6D4(v2, a1, v3);

  v5 = sub_2657C0B04(v4);

  return v5;
}

uint64_t sub_2657C0B04(uint64_t a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  v3 = MEMORY[0x28223BE20](v55);
  v54 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v53 = (&v46 - v6);
  MEMORY[0x28223BE20](v5);
  v52 = (&v46 - v7);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v46 = v1;
  v62 = MEMORY[0x277D84F90];
  sub_2657CB07C(0, v8, 0);
  v9 = v62;
  v10 = a1 + 64;
  result = sub_2657F2674();
  v12 = result;
  v13 = 0;
  v14 = *(a1 + 36);
  v47 = a1 + 72;
  v48 = v8;
  v49 = v14;
  v50 = a1 + 64;
  v51 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v56 = v13;
    v61 = v9;
    v17 = v55;
    v18 = *(v55 + 48);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = (v19 + 32 * v12);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v52;
    *v52 = *v21;
    v25[1] = v22;
    v25[2] = v23;
    v25[3] = v24;
    v26 = type metadata accessor for RecordMetadata(0);
    sub_2657B82A8(v20 + *(*(v26 - 8) + 72) * v12, v25 + v18);
    v27 = v25[2];
    v28 = v25[3];
    v29 = v53;
    *v53 = *v25;
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    sub_2657B881C(v25 + v18, v29 + *(v17 + 48));
    v30 = v54;
    sub_2657CC364(v29, v54, &qword_280023818, &qword_2657F41C8);
    v31 = *v30;
    v59 = v30[1];
    v60 = v31;
    v32 = v30[2];
    v57 = v30[3];
    v58 = v32;
    v33 = *(v17 + 48);
    v9 = v61;

    sub_2657B8880(v30 + v33);
    result = sub_2657CC304(v29, &qword_280023818, &qword_2657F41C8);
    v62 = v9;
    v35 = *(v9 + 16);
    v34 = *(v9 + 24);
    if (v35 >= v34 >> 1)
    {
      result = sub_2657CB07C((v34 > 1), v35 + 1, 1);
      v9 = v62;
    }

    *(v9 + 16) = v35 + 1;
    v36 = (v9 + 32 * v35);
    v37 = v59;
    v36[4] = v60;
    v36[5] = v37;
    v38 = v57;
    v36[6] = v58;
    v36[7] = v38;
    a1 = v51;
    v15 = 1 << *(v51 + 32);
    if (v12 >= v15)
    {
      goto LABEL_24;
    }

    v10 = v50;
    v39 = *(v50 + 8 * v16);
    if ((v39 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v14) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_26;
    }

    v40 = v39 & (-2 << (v12 & 0x3F));
    if (v40)
    {
      v15 = __clz(__rbit64(v40)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v16 << 6;
      v42 = v16 + 1;
      v43 = (v47 + 8 * v16);
      while (v42 < (v15 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_2657CC3CC(v12, v49, 0);
          v15 = __clz(__rbit64(v44)) + v41;
          goto LABEL_4;
        }
      }

      result = sub_2657CC3CC(v12, v49, 0);
    }

LABEL_4:
    v13 = v56 + 1;
    v12 = v15;
    if (v56 + 1 == v48)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2657C0EE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2657F22A4();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v36 - v11;
  v36 = type metadata accessor for RecordMetadata(0);
  v41 = *(v36 - 8);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  swift_beginAccess();
  v21 = *(v4 + 48);
  if (!*(v21 + 16))
  {
    goto LABEL_12;
  }

  v22 = sub_2657C8374(a2, a3);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  swift_beginAccess();
  v25 = *(v4 + 40);
  if (!*(v25 + 16))
  {
    goto LABEL_10;
  }

  v26 = sub_2657B830C(v17, v18, v19, v20);
  if ((v27 & 1) == 0)
  {

LABEL_10:

LABEL_12:
    v34 = 0;
    return v34 & 1;
  }

  sub_2657B82A8(*(v25 + 56) + *(v41 + 72) * v26, v14);

  sub_2657B881C(v14, v16);
  if (!*(v24 + 16) || (v28 = sub_2657B830C(v17, v18, v19, v20), (v29 & 1) == 0))
  {

    sub_2657B8880(v16);
    goto LABEL_12;
  }

  v31 = v39;
  v30 = v40;
  v32 = v37;
  (*(v39 + 16))(v37, *(v24 + 56) + *(v39 + 72) * v28, v40);

  v33 = v38;
  (*(v31 + 32))(v38, v32, v30);
  v34 = sub_2657F2234();
  (*(v31 + 8))(v33, v30);
  sub_2657B8880(v16);
  return v34 & 1;
}

uint64_t sub_2657C1244(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();

  v8 = sub_2657CBD54(v7, v3, a1, a2, a3, a3);

  v9 = sub_2657C0B04(v8);

  return v9;
}

uint64_t sub_2657C1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for RecordMetadata(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_2657CC304(a1, &unk_280023C10, &qword_2657F4100);
    sub_2657EBF08(a2, a3, a4, a5, v13);

    return sub_2657CC304(v13, &unk_280023C10, &qword_2657F4100);
  }

  else
  {
    sub_2657B881C(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_2657C936C(v16, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v21;
  }

  return result;
}

uint64_t sub_2657C151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    sub_2657C97E4(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v6 = v21;
  }

  else
  {
    v16 = sub_2657C8374(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v9;
      v22 = *v9;
      if (!v19)
      {
        sub_2657CA760(a4, a5);
        v20 = v22;
      }

      result = a6(v16, v20);
      *v9 = v20;
    }
  }

  return result;
}

uint64_t sub_2657C163C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_2657F22A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2657CC304(a1, &qword_2800237F8, &qword_2657F41A8);
    sub_2657EC094(a2, a3, v9);

    return sub_2657CC304(v9, &qword_2800237F8, &qword_2657F41A8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2657C9650(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_2657C1814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2657C9984(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2657C8374(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2657CA8C0();
        v14 = v16;
      }

      result = sub_2657EC628(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t MetadataStore.set(syncDate:for:pairedDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a1;
  v9 = sub_2657F22A4();
  v50 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (!v13)
  {
    return result;
  }

  swift_beginAccess();
  v14 = *(v4 + 48);
  v15 = *(v14 + 16);
  v41 = a4;
  v42 = v5;
  v40 = a3;
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_2657C8374(a3, a4);
  if ((v17 & 1) == 0)
  {

LABEL_6:
    v18 = sub_2657CBFA0(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v18 = *(*(v14 + 56) + 8 * v16);

LABEL_7:
  v47 = *(v50 + 16);
  v48 = v50 + 16;
  v43 = v50 + 40;
  v44 = v50 + 32;
  v19 = (a2 + 56);
  v45 = v12;
  v46 = v9;
  while (v13)
  {
    v51 = v13;
    v20 = *(v19 - 3);
    v21 = *(v19 - 2);
    v22 = *(v19 - 1);
    v23 = *v19;
    v47(v12, v49, v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v18;
    v26 = sub_2657B830C(v20, v21, v22, v23);
    v27 = v18[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v18[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v46;
        if (v25)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_2657C9E48();
        v9 = v46;
        if (v30)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_2657C8430(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_2657B830C(v20, v21, v22, v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
      v9 = v46;
      if (v30)
      {
LABEL_8:

        v18 = v53;
        v12 = v45;
        (*(v50 + 40))(v53[7] + *(v50 + 72) * v26, v45, v9);
        goto LABEL_9;
      }
    }

    v18 = v53;
    v53[(v26 >> 6) + 8] |= 1 << v26;
    v33 = (v18[6] + 32 * v26);
    *v33 = v20;
    v33[1] = v21;
    v33[2] = v22;
    v33[3] = v23;
    v12 = v45;
    (*(v50 + 32))(v18[7] + *(v50 + 72) * v26, v45, v9);
    v34 = v18[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_26;
    }

    v18[2] = v36;
LABEL_9:
    v19 += 4;
    v13 = v51 - 1;
    if (v51 == 1)
    {
      v37 = v42;
      swift_beginAccess();
      v38 = v41;

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v37 + 48);
      *(v37 + 48) = 0x8000000000000000;
      sub_2657C97E4(v18, v40, v38, v39, &qword_280023820, &qword_2657F41D0);

      *(v37 + 48) = v52;
      swift_endAccess();
      sub_2657BF97C();
      return sub_2657BFE88();
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t MetadataStore.set(syncDate:forRecordsMatching:pairedDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = a3;
  v83 = a1;
  v7 = sub_2657F22A4();
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237D8, &qword_2657F40F8);
  MEMORY[0x28223BE20](v95);
  v90 = v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v89 = (v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v81 - v14;
  MEMORY[0x28223BE20](v13);
  v100 = v81 - v16;
  v17 = type metadata accessor for RecordMetadata(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  result = MEMORY[0x28223BE20](v19);
  v23 = (v81 - v22);
  v24 = *(a2 + 16);
  if (!v24)
  {
    return result;
  }

  v85 = v21;
  v97 = v15;
  swift_beginAccess();
  v25 = *(v4 + 48);
  v26 = *(v25 + 16);
  v86 = v7;
  if (!v26)
  {
    goto LABEL_6;
  }

  v27 = sub_2657C8374(v99, a4);
  if ((v28 & 1) == 0)
  {

LABEL_6:
    v88 = sub_2657CBFA0(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v88 = *(*(v25 + 56) + 8 * v27);

LABEL_7:
  v29 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  swift_beginAccess();
  v92 = (v18 + 48);
  v93 = (v18 + 56);
  v98 = *(v18 + 72);
  v82 = (v84 + 16);
  v81[2] = v84 + 32;
  v81[1] = v84 + 40;
  v30 = v90;
  v31 = v97;
  v94 = v17;
  v99 = v23;
  v96 = v4;
  while (1)
  {
    sub_2657B82A8(v29, v23);
    v35 = *(v4 + 40);
    if (*(v35 + 16))
    {
      v37 = v23[2];
      v36 = v23[3];
      v39 = *v23;
      v38 = v23[1];

      v40 = sub_2657B830C(v39, v38, v37, v36);
      if (v41)
      {
        sub_2657B82A8(*(v35 + 56) + v40 * v98, v100);
        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v30 = v90;
      v31 = v97;
    }

    else
    {
      v42 = 1;
    }

    v43 = v94;
    v44 = *v93;
    v45 = v100;
    (*v93)(v100, v42, 1, v94);
    sub_2657B82A8(v99, v31);
    v44(v31, 0, 1, v43);
    v46 = *(v95 + 48);
    sub_2657CC364(v31, v30, &unk_280023C10, &qword_2657F4100);
    sub_2657CC364(v45, v30 + v46, &unk_280023C10, &qword_2657F4100);
    v47 = *v92;
    if ((*v92)(v30, 1, v43) == 1)
    {
      sub_2657CC304(v31, &unk_280023C10, &qword_2657F4100);
      if (v47(v30 + v46, 1, v43) != 1)
      {
        sub_2657CC304(v100, &unk_280023C10, &qword_2657F4100);
        v23 = v99;
        v4 = v96;
        goto LABEL_9;
      }

      sub_2657CC304(v30, &unk_280023C10, &qword_2657F4100);
      v23 = v99;
    }

    else
    {
      v91 = v24;
      v62 = v89;
      sub_2657CC364(v30, v89, &unk_280023C10, &qword_2657F4100);
      if (v47(v30 + v46, 1, v43) == 1)
      {
        sub_2657CC304(v31, &unk_280023C10, &qword_2657F4100);
        sub_2657CC304(v100, &unk_280023C10, &qword_2657F4100);
        sub_2657B8880(v62);
        v23 = v99;
        v4 = v96;
        v24 = v91;
LABEL_9:
        v32 = v30;
        v33 = &qword_2800237D8;
        v34 = &qword_2657F40F8;
        goto LABEL_10;
      }

      v63 = v85;
      sub_2657B881C(v30 + v46, v85);
      v64 = v62[2];
      v65 = v62[3];
      v66 = v63[2];
      v67 = v63[3];
      if ((*v62 != *v63 || v62[1] != v63[1]) && (sub_2657F2864() & 1) == 0 || (v64 != v66 || v65 != v67) && (sub_2657F2864() & 1) == 0)
      {
        sub_2657B8880(v85);
        v31 = v97;
        sub_2657CC304(v97, &unk_280023C10, &qword_2657F4100);
        v68 = v89;
LABEL_45:
        v24 = v91;
        sub_2657B8880(v68);
        sub_2657CC304(v30, &unk_280023C10, &qword_2657F4100);
        v23 = v99;
        v4 = v96;
LABEL_46:
        v32 = v100;
        v33 = &unk_280023C10;
        v34 = &qword_2657F4100;
LABEL_10:
        sub_2657CC304(v32, v33, v34);
        sub_2657B8880(v23);
        goto LABEL_11;
      }

      v68 = v89;
      v69 = v85;
      v70 = sub_2657F2274();
      v31 = v97;
      sub_2657CC304(v97, &unk_280023C10, &qword_2657F4100);
      if ((v70 & 1) == 0)
      {
        sub_2657B8880(v69);
        goto LABEL_45;
      }

      v71 = *(v43 + 24);
      v72 = *(v68 + v71);
      v73 = v68;
      v74 = *(v69 + v71);
      sub_2657B8880(v69);
      sub_2657B8880(v73);
      sub_2657CC304(v30, &unk_280023C10, &qword_2657F4100);
      v75 = v72 == v74;
      v23 = v99;
      v4 = v96;
      v24 = v91;
      if (!v75)
      {
        goto LABEL_46;
      }
    }

    v48 = *v23;
    v49 = v23[1];
    v50 = v23[2];
    v51 = v23[3];
    (*v82)(v87, v83, v86);
    v52 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v52;
    v55 = sub_2657B830C(v48, v49, v50, v51);
    v56 = *(v52 + 16);
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      break;
    }

    v59 = v54;
    if (*(v52 + 24) >= v58)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2657C9E48();
      }
    }

    else
    {
      sub_2657C8430(v58, isUniquelyReferenced_nonNull_native);
      v60 = sub_2657B830C(v48, v49, v50, v51);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_51;
      }

      v55 = v60;
    }

    v23 = v99;
    v76 = v101;
    v88 = v101;
    if (v59)
    {
      (*(v84 + 40))(v101[7] + *(v84 + 72) * v55, v87, v86);
      sub_2657CC304(v100, &unk_280023C10, &qword_2657F4100);
    }

    else
    {
      v101[(v55 >> 6) + 8] |= 1 << v55;
      v77 = (v76[6] + 32 * v55);
      *v77 = v48;
      v77[1] = v49;
      v77[2] = v50;
      v77[3] = v51;
      (*(v84 + 32))(v76[7] + *(v84 + 72) * v55, v87, v86);

      sub_2657CC304(v100, &unk_280023C10, &qword_2657F4100);
      v78 = v76[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_50;
      }

      v76[2] = v80;
    }

    sub_2657B8880(v23);
    v4 = v96;
    v31 = v97;
    v30 = v90;
LABEL_11:
    v29 += v98;
    if (!--v24)
    {

      sub_2657BF97C();
      return sub_2657BFE88();
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t MetadataStore.recordMetadata(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  swift_beginAccess();
  v8 = *(v2 + 40);
  if (*(v8 + 16))
  {

    v9 = sub_2657B830C(v4, v5, v6, v7);
    if (v10)
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = type metadata accessor for RecordMetadata(0);
      v14 = *(v13 - 8);
      sub_2657B82A8(v12 + *(v14 + 72) * v11, a2);

      return (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  v16 = type metadata accessor for RecordMetadata(0);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

Swift::Void __swiftcall MetadataStore.purge()()
{
  v1 = v0;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v2 = sub_2657F2344();
  __swift_project_value_buffer(v2, qword_281446410);
  v3 = sub_2657F2334();
  v4 = sub_2657F2584();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2657B5000, v3, v4, "Purging metadata store records", v5, 2u);
    MEMORY[0x266760A30](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = MEMORY[0x277D84F98];
  v1[5] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v1[6] = v6;

  swift_beginAccess();
  v1[7] = MEMORY[0x277D84FA0];
}

Swift::Void __swiftcall MetadataStore.update(metadata:)(Swift::OpaquePointer metadata)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237D8, &qword_2657F40F8);
  MEMORY[0x28223BE20](v83);
  v3 = &v79 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v86 = (&v79 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v79 - v10;
  MEMORY[0x28223BE20](v9);
  v94 = &v79 - v11;
  v12 = type metadata accessor for RecordMetadata(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = (&v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v79 - v19);
  v92 = *(metadata._rawValue + 2);
  if (v92)
  {
    v21 = metadata._rawValue + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    swift_beginAccess();
    v22 = v21;
    v85 = *(v13 + 72);
    v88 = (v13 + 56);
    v23 = (v13 + 48);
    *&v24 = 136446210;
    v79 = v24;
    v90 = v12;
    v82 = v18;
    v84 = (v13 + 48);
    do
    {
      v91 = v22;
      sub_2657B82A8(v22, v20);
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v26 = sub_2657F2344();
      __swift_project_value_buffer(v26, qword_281446410);
      sub_2657B82A8(v20, v18);
      v27 = sub_2657F2334();
      v28 = sub_2657F2584();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v18;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v95[0] = v31;
        *v30 = v79;
        v32 = RecordMetadata.description.getter();
        v34 = v33;
        sub_2657B8880(v29);
        v35 = v32;
        v23 = v84;
        v36 = sub_2657B7F9C(v35, v34, v95);

        *(v30 + 4) = v36;
        _os_log_impl(&dword_2657B5000, v27, v28, "Updating record metadata: %{public}s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        v37 = v31;
        v12 = v90;
        MEMORY[0x266760A30](v37, -1, -1);
        MEMORY[0x266760A30](v30, -1, -1);
      }

      else
      {

        sub_2657B8880(v18);
      }

      v38 = *(v89 + 40);
      if (*(v38 + 16))
      {
        v40 = v20[2];
        v39 = v20[3];
        v42 = *v20;
        v41 = v20[1];

        v43 = sub_2657B830C(v42, v41, v40, v39);
        if (v44)
        {
          sub_2657B82A8(*(v38 + 56) + v43 * v85, v94);
          v45 = 0;
        }

        else
        {
          v45 = 1;
        }
      }

      else
      {
        v45 = 1;
      }

      v46 = *v88;
      v47 = v94;
      (*v88)(v94, v45, 1, v12);
      v48 = v93;
      sub_2657B82A8(v20, v93);
      v87 = v46;
      v46(v48, 0, 1, v12);
      v49 = *(v83 + 48);
      sub_2657CC364(v47, v3, &unk_280023C10, &qword_2657F4100);
      sub_2657CC364(v48, &v3[v49], &unk_280023C10, &qword_2657F4100);
      v50 = *v23;
      if ((*v23)(v3, 1, v12) == 1)
      {
        sub_2657CC304(v93, &unk_280023C10, &qword_2657F4100);
        if (v50(&v3[v49], 1, v12) != 1)
        {
          goto LABEL_21;
        }

        sub_2657CC304(v94, &unk_280023C10, &qword_2657F4100);
        v25 = v3;
      }

      else
      {
        sub_2657CC364(v3, v86, &unk_280023C10, &qword_2657F4100);
        if (v50(&v3[v49], 1, v12) == 1)
        {
          sub_2657CC304(v93, &unk_280023C10, &qword_2657F4100);
          sub_2657B8880(v86);
LABEL_21:
          v51 = v3;
          v52 = &qword_2800237D8;
          v53 = &qword_2657F40F8;
          goto LABEL_34;
        }

        v54 = &v3[v49];
        v55 = v80;
        sub_2657B881C(v54, v80);
        v56 = v86[2];
        v57 = v86[3];
        v58 = *v55;
        v59 = v55[1];
        v61 = v55[2];
        v60 = v55[3];
        if ((*v86 != v58 || v86[1] != v59) && (sub_2657F2864() & 1) == 0 || (v56 != v61 || v57 != v60) && (sub_2657F2864() & 1) == 0)
        {
          sub_2657B8880(v80);
          sub_2657CC304(v93, &unk_280023C10, &qword_2657F4100);
          goto LABEL_33;
        }

        v62 = v80;
        v63 = sub_2657F2274();
        sub_2657CC304(v93, &unk_280023C10, &qword_2657F4100);
        if ((v63 & 1) == 0)
        {
          sub_2657B8880(v62);
LABEL_33:
          sub_2657B8880(v86);
          v51 = v3;
          v52 = &unk_280023C10;
          v53 = &qword_2657F4100;
LABEL_34:
          sub_2657CC304(v51, v52, v53);
LABEL_35:
          v69 = v20[1];
          v70 = v20[2];
          v71 = v20[3];
          v95[0] = *v20;
          v95[1] = v69;
          v95[2] = v70;
          v95[3] = v71;

          sub_2657C309C(v95);

          v72 = *v20;
          v73 = v20[1];
          v74 = v20[2];
          v75 = v20[3];
          v76 = v3;
          v77 = v81;
          sub_2657B82A8(v20, v81);
          v87(v77, 0, 1, v90);
          swift_beginAccess();

          v78 = v77;
          v3 = v76;
          v23 = v84;
          v12 = v90;
          sub_2657C1304(v78, v72, v73, v74, v75);
          swift_endAccess();
          v25 = v94;
          goto LABEL_4;
        }

        v64 = *(v12 + 24);
        v65 = v86;
        v66 = *(v86 + v64);
        v67 = v62;
        v68 = *(v62 + v64);
        sub_2657B8880(v67);
        sub_2657B8880(v65);
        sub_2657CC304(v3, &unk_280023C10, &qword_2657F4100);
        v25 = v94;
        if (v66 != v68)
        {
          goto LABEL_35;
        }
      }

LABEL_4:
      sub_2657CC304(v25, &unk_280023C10, &qword_2657F4100);
      sub_2657B8880(v20);
      v22 = v91 + v85;
      --v92;
      v18 = v82;
    }

    while (v92);
  }
}

uint64_t sub_2657C309C(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v54 - v5;
  v6 = *a1;
  v57 = a1[1];
  v58 = v6;
  v7 = a1[2];
  v55 = a1[3];
  v56 = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(v2 + 48) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v61 = *(v2 + 48);

  v16 = 0;
  v60 = v2;
  if (v14)
  {
    while (1)
    {
LABEL_8:
      v18 = __clz(__rbit64(v14)) | (v16 << 6);
      v19 = *(v61 + 56);
      v20 = (*(v61 + 48) + 16 * v18);
      v21 = v20[1];
      v62 = *v20;
      v22 = *(v19 + 8 * v18);

      v23 = sub_2657B830C(v58, v57, v56, v55);
      if (v24)
      {
        v25 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v22;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2657C9E48();
          v22 = v64;
        }

        v27 = *(v22 + 56);
        v28 = sub_2657F22A4();
        v29 = *(v28 - 8);
        v30 = v27 + *(v29 + 72) * v25;
        v31 = v59;
        (*(v29 + 32))(v59, v30, v28);
        sub_2657EC204(v25, v22);
        v32 = v28;
        v33 = v31;
        (*(v29 + 56))(v31, 0, 1, v32);
        v2 = v60;
      }

      else
      {
        v34 = sub_2657F22A4();
        v33 = v59;
        (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
      }

      v14 &= v14 - 1;
      sub_2657CC304(v33, &qword_2800237F8, &qword_2657F41A8);
      if (*(v22 + 16))
      {
        break;
      }

      swift_beginAccess();
      sub_2657C8374(v62, v21);
      v51 = v50;

      if (v51)
      {
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v2 + 48);
        v63 = v45;
        *(v2 + 48) = 0x8000000000000000;
        if (!v52)
        {
          sub_2657CA760(&qword_280023820, &qword_2657F41D0);
          v45 = v63;
        }

        sub_2657F0700();
        goto LABEL_28;
      }

LABEL_29:
      swift_endAccess();
      if (!v14)
      {
        goto LABEL_4;
      }
    }

    swift_beginAccess();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v2 + 48);
    v36 = v63;
    *(v2 + 48) = 0x8000000000000000;
    v38 = sub_2657C8374(v62, v21);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_35;
    }

    v42 = v37;
    if (v36[3] < v41)
    {
      sub_2657C8E24(v41, v35, &qword_280023820, &qword_2657F41D0);
      v43 = sub_2657C8374(v62, v21);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_37;
      }

      v38 = v43;
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:

      v45 = v63;
      *(v63[7] + 8 * v38) = v22;

LABEL_27:
      v2 = v60;
LABEL_28:
      *(v2 + 48) = v45;
      goto LABEL_29;
    }

    if (v35)
    {
      if (v37)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_2657CA760(&qword_280023820, &qword_2657F41D0);
      if (v42)
      {
        goto LABEL_26;
      }
    }

LABEL_18:
    v45 = v63;
    v63[(v38 >> 6) + 8] |= 1 << v38;
    v46 = (v45[6] + 16 * v38);
    *v46 = v62;
    v46[1] = v21;
    *(v45[7] + 8 * v38) = v22;
    v47 = v45[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_36;
    }

    v45[2] = v49;
    goto LABEL_27;
  }

LABEL_4:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
    }

    v14 = *(v10 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall MetadataStore.hasMetadata(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  if (*(*(v1 + 48) + 16))
  {

    sub_2657C8374(countAndFlagsBits, object);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MetadataStore.isValid(at:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v7[2] = a1;

  v4 = sub_2657C066C(sub_2657CC198, v7, v3);

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2657C36A0(a1);
  }

  return v5 & 1;
}

uint64_t sub_2657C36A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
    MEMORY[0x28223BE20](result);
    v15[2] = a1;

    v13 = sub_2657C0864(sub_2657CC2A8, v15, v12);

    if (v13)
    {
      v14 = 0;
LABEL_13:

      return v14;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v14 = 1;
      goto LABEL_13;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MetadataStore.remove(pairedDeviceIdentifier:)(Swift::String pairedDeviceIdentifier)
{
  object = pairedDeviceIdentifier._object;
  countAndFlagsBits = pairedDeviceIdentifier._countAndFlagsBits;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v3 = sub_2657F2344();
  __swift_project_value_buffer(v3, qword_281446410);

  v4 = sub_2657F2334();
  v5 = sub_2657F2584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2657B7F9C(countAndFlagsBits, object, v8);
    _os_log_impl(&dword_2657B5000, v4, v5, "Removing paired device identifier: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x266760A30](v7, -1, -1);
    MEMORY[0x266760A30](v6, -1, -1);
  }

  swift_beginAccess();
  sub_2657C65BC(countAndFlagsBits, object);
  swift_endAccess();

  swift_beginAccess();

  sub_2657C151C(0, countAndFlagsBits, object, &qword_280023820, &qword_2657F41D0, sub_2657F0700);
  swift_endAccess();
}

Swift::Bool __swiftcall MetadataStore.hasPerformedInitialSync(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 56);

  LOBYTE(object) = sub_2657C3A68(countAndFlagsBits, object, v4);

  return object & 1;
}

uint64_t sub_2657C3A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2657F28D4();
  sub_2657F24C4();
  v6 = sub_2657F2904();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2657F2864() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Void __swiftcall MetadataStore.setPerformedInitialSync(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 56);

  v5 = sub_2657C3A68(countAndFlagsBits, object, v4);

  if ((v5 & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v6 = sub_2657F2344();
    __swift_project_value_buffer(v6, qword_281446410);

    v7 = sub_2657F2334();
    v8 = sub_2657F2584();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2657B7F9C(countAndFlagsBits, object, v11);
      _os_log_impl(&dword_2657B5000, v7, v8, "Adding paired device identifier: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x266760A30](v10, -1, -1);
      MEMORY[0x266760A30](v9, -1, -1);
    }

    swift_beginAccess();

    sub_2657C5F90(&v12, countAndFlagsBits, object);
    swift_endAccess();
  }
}

Swift::Void __swiftcall MetadataStore.forget(recordID:)(SessionSyncEngine::RecordID recordID)
{
  countAndFlagsBits = recordID.identifier._countAndFlagsBits;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  v5 = *countAndFlagsBits;
  v6 = countAndFlagsBits[1];
  v7 = countAndFlagsBits[2];
  v8 = countAndFlagsBits[3];
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_2657C309C(v10);
  v9 = type metadata accessor for RecordMetadata(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  swift_beginAccess();

  sub_2657C1304(v4, v5, v6, v7, v8);
  swift_endAccess();
}

uint64_t sub_2657C3E80(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_2657CB6D4(v2, a1, v3);

  v5 = sub_2657C0B04(v4);

  return v5;
}

uint64_t sub_2657C3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v5;
  swift_beginAccess();

  v11 = sub_2657CBD54(v10, v9, a1, a2, a5, a5);

  v12 = sub_2657C0B04(v11);

  return v12;
}

uint64_t sub_2657C40BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  if (*(*(v5 + 48) + 16))
  {

    sub_2657C8374(a1, a2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2657C416C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v8[2] = a1;

  v5 = sub_2657C066C(sub_2657CC448, v8, v4);

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_2657C36A0(a1);
  }

  return v6 & 1;
}

uint64_t sub_2657C4230(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_2657C309C(v11);
  v9 = type metadata accessor for RecordMetadata(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  swift_beginAccess();

  sub_2657C1304(v4, v5, v6, v7, v8);
  return swift_endAccess();
}

uint64_t sub_2657C4358(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 56);

  LOBYTE(a2) = sub_2657C3A68(a1, a2, v6);

  return a2 & 1;
}

uint64_t sub_2657C43F4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v16 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v3 + 48) + ((v10 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    if (a1(v14, v13))
    {
      sub_2657C5F90(&v15, v14, v13);
    }

    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v16;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_2657C4548()
{
  v22 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 63) >> 6;
  v20 = v1;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(v1 + 48) + ((v6 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v0 + 56);
      if (*(v13 + 16))
      {
        break;
      }

LABEL_7:
      sub_2657C5F90(&v21, v12, v11);

      if (!v5)
      {
        goto LABEL_8;
      }
    }

    sub_2657F28D4();

    sub_2657F24C4();
    v14 = sub_2657F2904();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
LABEL_21:

      v1 = v20;
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_2657F2864() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v1 = v20;
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v6;
    if (v5)
    {
      v6 = v8;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2657C4770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v53 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  v8 = MEMORY[0x28223BE20](v58);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = (&v53 - v10);
  swift_beginAccess();
  v11 = *(v3 + 48);
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = sub_2657C8374(a1, a2);
  if (v13)
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    swift_beginAccess();
    v53 = v3;
    v15 = *(v3 + 40);
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v56 = v15;
    result = swift_bridgeObjectRetain_n();
    v22 = 0;
    v54 = 0;
    v55 = v16;
    while (2)
    {
      v23 = v22;
      if (!v19)
      {
        goto LABEL_8;
      }

      while (1)
      {
        v22 = v23;
LABEL_11:
        v24 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v25 = v24 | (v22 << 6);
        v26 = *(v56 + 56);
        v27 = (*(v56 + 48) + 32 * v25);
        v29 = *v27;
        v28 = v27[1];
        v30 = v27[2];
        v31 = v27[3];
        v32 = v26 + *(*(type metadata accessor for RecordMetadata(0) - 8) + 72) * v25;
        v33 = v58;
        v34 = v60;
        sub_2657B82A8(v32, v60 + *(v58 + 48));
        *v34 = v29;
        v34[1] = v28;
        v34[2] = v30;
        v34[3] = v31;
        v35 = v57;
        sub_2657CC364(v34, v57, &qword_280023818, &qword_2657F41C8);

        v36 = (v35 + *(v33 + 48));
        v37 = *v36;
        v38 = v36[1];
        v39 = v36[2];
        v40 = v36[3];

        sub_2657B8880(v36);
        if (!*(v14 + 16))
        {
          break;
        }

        v41 = sub_2657B830C(v37, v38, v39, v40);
        v43 = v42;

        if ((v43 & 1) == 0)
        {
          goto LABEL_16;
        }

        v44 = *(v14 + 56);
        v45 = sub_2657F22A4();
        v46 = *(v45 - 8);
        v47 = v46;
        v48 = v44 + *(v46 + 72) * v41;
        v49 = v59;
        (*(v46 + 16))(v59, v48, v45);
        sub_2657CC304(v60, &qword_280023818, &qword_2657F41C8);
        (*(v47 + 56))(v49, 0, 1, v45);
        result = sub_2657CC304(v49, &qword_2800237F8, &qword_2657F41A8);
        v23 = v22;
        v16 = v55;
        if (!v19)
        {
LABEL_8:
          while (1)
          {
            v22 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v22 >= v20)
            {

              return *(v53 + 32) < v54;
            }

            v19 = *(v16 + 8 * v22);
            ++v23;
            if (v19)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          return result;
        }
      }

LABEL_16:
      sub_2657CC304(v60, &qword_280023818, &qword_2657F41C8);
      v50 = sub_2657F22A4();
      v51 = v59;
      (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
      result = sub_2657CC304(v51, &qword_2800237F8, &qword_2657F41A8);
      v16 = v55;
      if (!__OFADD__(v54++, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
    return 0;
  }

  return 0;
}

uint64_t sub_2657C4C44(uint64_t a1, uint64_t a2)
{
  v79 = sub_2657F22A4();
  v67 = *(v79 - 8);
  v5 = MEMORY[0x28223BE20](v79);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v8 - 8);
  v78 = &v64 - v9;
  v69 = type metadata accessor for RecordMetadata(0);
  v75 = *(v69 - 8);
  v10 = MEMORY[0x28223BE20](v69);
  v82 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023848, &qword_2657F4200);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v80 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v64 - v16);
  swift_beginAccess();
  v72 = v2;
  v18 = *(v2 + 48);
  if (!*(v18 + 16))
  {
    return 0;
  }

  v19 = sub_2657C8374(a1, a2);
  if ((v20 & 1) == 0)
  {

    return 0;
  }

  v77 = v17;
  v81 = *(*(v18 + 56) + 8 * v19);

  v21 = v72;
  swift_beginAccess();
  v22 = *(v21 + 40);
  v23 = *(v22 + 64);
  v66 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v65 = (v24 + 63) >> 6;
  v64 = v67 + 16;
  v76 = (v67 + 56);
  v68 = (v67 + 8);
  v73 = v22;

  v28 = 0;
  while (v26)
  {
    v33 = v28;
    v34 = v77;
LABEL_17:
    v38 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v39 = v38 | (v33 << 6);
    v40 = v74;
    v41 = (*(v73 + 48) + 32 * v39);
    v43 = *v41;
    v42 = v41[1];
    v45 = v41[2];
    v44 = v41[3];
    sub_2657B82A8(*(v73 + 56) + *(v75 + 72) * v39, v74);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
    v47 = *(v46 + 48);
    v48 = v80;
    *v80 = v43;
    v48[1] = v42;
    v48[2] = v45;
    v48[3] = v44;
    v37 = v48;
    sub_2657B881C(v40, v48 + v47);
    (*(*(v46 - 8) + 56))(v37, 0, 1, v46);

LABEL_18:
    sub_2657CC3D8(v37, v34);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
    if ((*(*(v49 - 8) + 48))(v34, 1, v49) == 1)
    {

      return 0;
    }

    v51 = *v34;
    v50 = v34[1];
    v52 = v34[2];
    v53 = v34[3];
    sub_2657B881C(v34 + *(v49 + 48), v82);
    if (*(v81 + 16))
    {
      v54 = sub_2657B830C(v51, v50, v52, v53);
      v56 = v55;

      if ((v56 & 1) == 0)
      {
        goto LABEL_23;
      }

      v29 = v67;
      v30 = *(v81 + 56) + *(v67 + 72) * v54;
      v32 = v78;
      v31 = v79;
      (*(v67 + 16))(v78, v30, v79);
      (*(v29 + 56))(v32, 0, 1, v31);
      sub_2657B8880(v82);
      result = sub_2657CC304(v32, &qword_2800237F8, &qword_2657F41A8);
    }

    else
    {

LABEL_23:
      v57 = v78;
      v58 = v79;
      (*v76)(v78, 1, 1, v79);
      sub_2657CC304(v57, &qword_2800237F8, &qword_2657F41A8);
      v59 = v70;
      v60 = v82;
      sub_2657F2224();
      v61 = v71;
      sub_2657F2284();
      LOBYTE(v57) = sub_2657F2244();
      v62 = *v68;
      (*v68)(v61, v58);
      v62(v59, v58);
      result = sub_2657B8880(v60);
      if (v57)
      {

        return 1;
      }
    }
  }

  if (v65 <= v28 + 1)
  {
    v35 = v28 + 1;
  }

  else
  {
    v35 = v65;
  }

  v36 = v35 - 1;
  v37 = v80;
  v34 = v77;
  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v33 >= v65)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
      (*(*(v63 - 8) + 56))(v37, 1, 1, v63);
      v26 = 0;
      v28 = v36;
      goto LABEL_18;
    }

    v26 = *(v66 + 8 * v33);
    ++v28;
    if (v26)
    {
      v28 = v33;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_2657C5340(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v62 - v5;
  v6 = sub_2657F22A4();
  v7 = *(v6 - 8);
  v72 = v6;
  v73 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v74 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v62 - v10;
  v12 = type metadata accessor for RecordMetadata(0);
  v70 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = v62 - v16;
  v18 = *a1;
  v17 = a1[1];
  v20 = a1[2];
  v19 = a1[3];
  swift_beginAccess();
  v21 = *(v2 + 40);
  if (*(v21 + 16))
  {
    v22 = v2;

    v68 = v18;
    v23 = sub_2657B830C(v18, v17, v20, v19);
    if (v24)
    {
      v25 = v20;
      v66 = v19;
      v67 = v17;
      sub_2657B82A8(*(v21 + 56) + *(v70 + 72) * v23, v15);

      v26 = v71;
      sub_2657B881C(v15, v71);
      sub_2657F2284();
      v27 = v22;
      v28 = v74;
      sub_2657F2224();
      if (sub_2657F2234())
      {
        v63 = v25;
        v65 = v11;
        swift_beginAccess();
        v29 = *(v22 + 56);
        v32 = *(v29 + 56);
        v31 = v29 + 56;
        v30 = v32;
        v33 = 1 << *(*(v22 + 56) + 32);
        v34 = -1;
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        v35 = v34 & v30;
        v70 = *(v22 + 56);

        swift_beginAccess();
        v36 = 0;
        v37 = (v33 + 63) >> 6;
        v62[1] = v73 + 16;
        v64 = v73 + 56;
        while (v35)
        {
          v38 = v35;
LABEL_16:
          v35 = (v38 - 1) & v38;
          v41 = *(v27 + 48);
          if (*(v41 + 16))
          {
            v42 = (*(v70 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v38)))));
            v43 = *v42;
            v44 = v42[1];

            v45 = sub_2657C8374(v43, v44);
            v47 = v46;

            if (v47)
            {
              v48 = *(*(v41 + 56) + 8 * v45);

              if (!*(v48 + 16) || (v49 = sub_2657B830C(v68, v67, v63, v66), (v50 & 1) == 0))
              {

                v58 = v72;
                v59 = v73;
                v60 = v69;
                (*(v73 + 56))(v69, 1, 1, v72);
                v61 = *(v59 + 8);
                v61(v74, v58);
                v61(v65, v58);
                sub_2657B8880(v26);
                sub_2657CC304(v60, &qword_2800237F8, &qword_2657F41A8);
                return;
              }

              v51 = v72;
              v52 = v73;
              v53 = v69;
              (*(v73 + 16))(v69, *(v48 + 56) + *(v73 + 72) * v49, v72);

              (*(v52 + 56))(v53, 0, 1, v51);
              sub_2657CC304(v53, &qword_2800237F8, &qword_2657F41A8);
              v28 = v74;
            }

            else
            {

              v28 = v74;
            }
          }
        }

        v39 = v65;
        while (1)
        {
          v40 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v40 >= v37)
          {

            v56 = v72;
            v57 = *(v73 + 8);
            v57(v28, v72);
            v57(v39, v56);
            sub_2657B8880(v26);
            return;
          }

          v38 = *(v31 + 8 * v40);
          ++v36;
          if (v38)
          {
            v36 = v40;
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
        v54 = v72;
        v55 = *(v73 + 8);
        v55(v28, v72);
        v55(v11, v54);
        sub_2657B8880(v26);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2657C58D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2657F22A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_2657CC364(a1, &v15 - v9, &qword_280023818, &qword_2657F41C8);

  v11 = &v10[*(v8 + 56)];
  v12 = type metadata accessor for RecordMetadata(0);
  (*(v4 + 16))(v6, v11 + *(v12 + 20), v3);
  sub_2657B8880(v11);
  v13 = sub_2657F2234();
  (*(v4 + 8))(v6, v3);
  return v13 & 1;
}

uint64_t sub_2657C5A80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_2657C5ACC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2657C5B04(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2657B7F9C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_2657C5B60(uint64_t a1, unint64_t a2)
{
  v3 = sub_2657C5BAC(a1, a2);
  sub_2657C5CDC(&unk_287719650);
  return v3;
}

void *sub_2657C5BAC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2657C5DC8(v5, 0);
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

  result = sub_2657F2744();
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
        v10 = sub_2657F24E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2657C5DC8(v10, 0);
        result = sub_2657F26F4();
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

uint64_t sub_2657C5CDC(uint64_t result)
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

  result = sub_2657C5E3C(result, v11, 1, v3);
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

void *sub_2657C5DC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023838, &qword_2657F41E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2657C5E3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023838, &qword_2657F41E8);
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

void sub_2657C5F58(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_2657C5F90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2657F28D4();
  sub_2657F24C4();
  v8 = sub_2657F2904();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2657F2864() & 1) != 0)
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

    sub_2657CAA30(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2657C60E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  v11 = sub_2657F2904();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_2657F2864() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_2657F2864() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_2657CABB0(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_2657C62B8(uint64_t a1, void *a2)
{
  v34 = a1;
  v4 = type metadata accessor for RecordMetadata(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v32 = (&v32 - v9);
  v33 = v2;
  v10 = *v2;
  sub_2657F28D4();
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  sub_2657F24C4();
  v40 = v14;
  v41 = v13;
  sub_2657F24C4();
  v15 = *(v4 + 20);
  sub_2657F22A4();
  sub_2657B8264(&unk_280023C20, MEMORY[0x277CC9588]);
  v36 = v15;
  sub_2657F2464();
  v37 = a2;
  v38 = v4;
  v35 = *(a2 + *(v4 + 24));
  sub_2657F28F4();
  v16 = sub_2657F2904();
  v17 = v10 + 56;
  v39 = v10;
  v18 = -1 << *(v10 + 32);
  v19 = v16 & ~v18;
  if ((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v21 = *(v5 + 72);
    do
    {
      sub_2657B82A8(*(v39 + 48) + v21 * v19, v8);
      v22 = v8[2];
      v23 = v8[3];
      v24 = *v8 == v11 && v8[1] == v12;
      if (v24 || (sub_2657F2864()) && (v22 == v41 ? (v25 = v23 == v40) : (v25 = 0), (v25 || (sub_2657F2864()) && (sub_2657F2274()))
      {
        v26 = *(v8 + *(v38 + 24));
        sub_2657B8880(v8);
        if (v35 == v26)
        {
          sub_2657B8880(v37);
          sub_2657B82A8(*(v39 + 48) + v21 * v19, v34);
          return 0;
        }
      }

      else
      {
        sub_2657B8880(v8);
      }

      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  v28 = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v37;
  v31 = v32;
  sub_2657B82A8(v37, v32);
  v42 = *v28;
  sub_2657CAD7C(v31, v19, isUniquelyReferenced_nonNull_native);
  *v28 = v42;
  sub_2657B881C(v30, v34);
  return 1;
}

uint64_t sub_2657C65BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2657F28D4();
  sub_2657F24C4();
  v6 = sub_2657F2904();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2657F2864() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2657C69E8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2657C7E98(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_2657C66F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for RecordMetadata(0);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = v2;
  v7 = *v2;
  sub_2657F28D4();
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  sub_2657F24C4();
  v37 = v11;
  v38 = v10;
  sub_2657F24C4();
  v12 = *(v4 + 20);
  sub_2657F22A4();
  sub_2657B8264(&unk_280023C20, MEMORY[0x277CC9588]);
  v33 = v12;
  sub_2657F2464();
  v34 = a1;
  v35 = v4;
  v32 = *(a1 + *(v4 + 24));
  sub_2657F28F4();
  v13 = sub_2657F2904();
  v14 = v7 + 56;
  v36 = v7;
  v15 = -1 << *(v7 + 32);
  v16 = v13 & ~v15;
  if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
    return (*(v31 + 56))(v30, 1, 1, v35);
  }

  v17 = ~v15;
  v18 = *(v31 + 72);
  while (1)
  {
    sub_2657B82A8(*(v36 + 48) + v18 * v16, v6);
    v19 = v6[2];
    v20 = v6[3];
    v21 = *v6 == v8 && v6[1] == v9;
    if (v21 || (sub_2657F2864() & 1) != 0)
    {
      v22 = v19 == v38 && v20 == v37;
      if (v22 || (sub_2657F2864()) && (sub_2657F2274())
      {
        break;
      }
    }

    sub_2657B8880(v6);
LABEL_4:
    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return (*(v31 + 56))(v30, 1, 1, v35);
    }
  }

  v23 = *(v6 + *(v35 + 24));
  sub_2657B8880(v6);
  if (v32 != v23)
  {
    goto LABEL_4;
  }

  v24 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v24;
  v39 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2657C6CB0();
    v26 = v39;
  }

  v27 = v30;
  sub_2657B881C(*(v26 + 48) + v18 * v16, v30);
  sub_2657C805C(v16);
  *v24 = v39;
  return (*(v31 + 56))(v27, 0, 1, v35);
}

void *sub_2657C69E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023808, &qword_2657F41B8);
  v2 = *v0;
  v3 = sub_2657F26C4();
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

void *sub_2657C6B44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023850, &qword_2657F4208);
  v2 = *v0;
  v3 = sub_2657F26C4();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

void *sub_2657C6CB0()
{
  v1 = v0;
  v2 = type metadata accessor for RecordMetadata(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  v6 = *v0;
  v7 = sub_2657F26C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_2657B82A8(*(v6 + 48) + v21, v5);
        result = sub_2657B881C(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_2657C6E94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023808, &qword_2657F41B8);
  result = sub_2657F26D4();
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
      sub_2657F28D4();

      sub_2657F24C4();
      result = sub_2657F2904();
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

uint64_t sub_2657C70CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023850, &qword_2657F4208);
  result = sub_2657F26D4();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_2657F28D4();

      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_2657C7330(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RecordMetadata(0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  result = sub_2657F26D4();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v29 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v32 = *(v30 + 72);
      sub_2657B82A8(v20 + v32 * (v17 | (v9 << 6)), v5);
      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      sub_2657F22A4();
      sub_2657B8264(&unk_280023C20, MEMORY[0x277CC9588]);
      sub_2657F2464();
      sub_2657F28F4();
      result = sub_2657F2904();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v6 = v29;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v6 = v29;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2657B881C(v5, *(v8 + 48) + v16 * v32);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_2657C765C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023808, &qword_2657F41B8);
  result = sub_2657F26D4();
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
      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
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

uint64_t sub_2657C78BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023850, &qword_2657F4208);
  result = sub_2657F26D4();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2657C7B40(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RecordMetadata(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  result = sub_2657F26D4();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v33 = *(v31 + 72);
      sub_2657B881C(v20 + v33 * (v17 | (v9 << 6)), v5);
      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      sub_2657F22A4();
      sub_2657B8264(&unk_280023C20, MEMORY[0x277CC9588]);
      sub_2657F2464();
      sub_2657F28F4();
      result = sub_2657F2904();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2657B881C(v5, *(v8 + 48) + v16 * v33);
      ++*(v8 + 16);
      v6 = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero(v10, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v29;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_2657C7E98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2657F2684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2657F28D4();

        sub_2657F24C4();
        v10 = sub_2657F2904();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2657C805C(unint64_t a1)
{
  v27 = type metadata accessor for RecordMetadata(0);
  v3 = *(v27 - 8);
  result = MEMORY[0x28223BE20](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = a1;
    v13 = sub_2657F2684();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v14 = (v13 + 1) & v11;
      v15 = *(v3 + 72);
      v16 = v11;
      v25 = v15;
      v26 = v8;
      do
      {
        v17 = v15 * v10;
        sub_2657B82A8(*(v7 + 48) + v15 * v10, v6);
        sub_2657F28D4();
        v18 = v16;
        sub_2657F24C4();
        sub_2657F24C4();
        sub_2657F22A4();
        sub_2657B8264(&unk_280023C20, MEMORY[0x277CC9588]);
        sub_2657F2464();
        sub_2657F28F4();
        v19 = sub_2657F2904();
        sub_2657B8880(v6);
        v20 = v19 & v18;
        v16 = v18;
        if (v12 >= v14)
        {
          if (v20 < v14)
          {
            v15 = v25;
            goto LABEL_5;
          }

          v15 = v25;
          if (v12 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = v25;
          if (v20 < v14 && v12 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v15 * v12;
        if (v15 * v12 < v17 || *(v7 + 48) + v15 * v12 >= (*(v7 + 48) + v17 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v12 = v10;
        if (v21 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v12 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v16;
        v8 = v26;
      }

      while (((*(v26 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v12) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }

  return result;
}