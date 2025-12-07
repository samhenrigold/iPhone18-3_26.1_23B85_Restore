uint64_t sub_224BA1588(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v42 = a4;
  v34 = a2;
  v35 = a1;
  v5 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF48();
  result = MEMORY[0x28223BE20](v8, v9);
  v43 = a3;
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v38 = v11 + 16;
  v39 = v11;
  v36 = 0;
  v37 = (v11 + 8);
  while (v19)
  {
    v45 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v44;
LABEL_11:
    v25 = v43;
    (*(v39 + 16))(v22, v43[6] + *(v39 + 72) * v21, v8);
    v26 = v21;
    v27 = v25[7] + *(v41 + 72) * v21;
    v28 = v8;
    v29 = v40;
    sub_224BA22A0(v27, v40);
    v30 = v46;
    v31 = v42(v22, v29);
    v46 = v30;
    if (v30)
    {
      sub_224BA2304(v29, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      return (*v37)(v22, v28);
    }

    v32 = v31;
    sub_224BA2304(v29, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    result = (*v37)(v22, v28);
    v8 = v28;
    v19 = v45;
    if (v32)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_224B2E464(v35, v34, v36, v43);
      }
    }
  }

  v23 = v13;
  v22 = v44;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_224B2E464(v35, v34, v36, v43);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v45 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_224BA18B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_224BA1954()
{
  v91 = sub_224DAE178();
  v1 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v2);
  v95 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v5 = MEMORY[0x28223BE20](v104, v4);
  v103 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5, v7);
  v102 = (&v87 - v9);
  MEMORY[0x28223BE20](v8, v10);
  v101 = &v87 - v11;
  v106 = sub_224DAE0D8();
  v12 = *(v106 - 8);
  v14 = MEMORY[0x28223BE20](v106, v13);
  v90 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v89 = &v87 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v94 = &v87 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v88 = &v87 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v87 - v26;
  swift_beginAccess();
  v92 = v0;
  v28 = *(v0 + 16);
  v29 = *(v28 + 16);
  v30 = MEMORY[0x277D84F90];
  v105 = v12;
  if (v29)
  {
    v87 = v1;
    v112 = MEMORY[0x277D84F90];

    sub_224ADA0F4(0, v29, 0);
    v30 = v112;
    v31 = v28 + 64;
    result = sub_224DAF798();
    v33 = result;
    v34 = 0;
    v35 = *(v28 + 36);
    v100 = v12 + 32;
    v93 = v28 + 72;
    v96 = v29;
    v97 = v35;
    v98 = v28 + 64;
    v99 = v28;
    while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << *(v28 + 32))
    {
      if ((*(v31 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
      {
        goto LABEL_39;
      }

      if (v35 != *(v28 + 36))
      {
        goto LABEL_40;
      }

      v108 = 1 << v33;
      v109 = v33 >> 6;
      v107 = v34;
      v37 = v104;
      v38 = *(v104 + 48);
      v39 = *(v28 + 56);
      v40 = (*(v28 + 48) + 16 * v33);
      v41 = v27;
      v43 = *v40;
      v42 = v40[1];
      v44 = sub_224DAC5E8();
      v45 = *(v44 - 8);
      v110 = v30;
      v46 = v45;
      v47 = v39 + *(v45 + 72) * v33;
      v48 = v101;
      (*(v45 + 16))(&v101[v38], v47, v44);
      v49 = v102;
      *v102 = v43;
      *(v49 + 8) = v42;
      v27 = v41;
      (*(v46 + 32))(v49 + *(v37 + 48), &v48[v38], v44);
      v50 = v103;
      sub_224BA21A0(v49, v103);

      v51 = *(v37 + 48);
      sub_224DAC598();
      sub_224A3311C(v49, &qword_27D6F38A0, &unk_224DB4630);
      (*(v46 + 8))(v50 + v51, v44);
      v30 = v110;
      v112 = v110;
      v53 = *(v110 + 16);
      v52 = *(v110 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_224ADA0F4((v52 > 1), v53 + 1, 1);
        v30 = v112;
      }

      *(v30 + 16) = v53 + 1;
      v12 = v105;
      result = (*(v105 + 32))(v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v53, v41, v106);
      v28 = v99;
      v36 = 1 << *(v99 + 32);
      if (v33 >= v36)
      {
        goto LABEL_41;
      }

      v31 = v98;
      v54 = *(v98 + 8 * v109);
      if ((v54 & v108) == 0)
      {
        goto LABEL_42;
      }

      LODWORD(v35) = v97;
      if (v97 != *(v99 + 36))
      {
        goto LABEL_43;
      }

      v55 = v54 & (-2 << (v33 & 0x3F));
      if (v55)
      {
        v36 = __clz(__rbit64(v55)) | v33 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v56 = v109 << 6;
        v57 = v109 + 1;
        v58 = (v93 + 8 * v109);
        while (v57 < (v36 + 63) >> 6)
        {
          v60 = *v58++;
          v59 = v60;
          v56 += 64;
          ++v57;
          if (v60)
          {
            result = sub_224A3E204(v33, v97, 0);
            v36 = __clz(__rbit64(v59)) + v56;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v33, v97, 0);
      }

LABEL_4:
      v34 = v107 + 1;
      v33 = v36;
      if (v107 + 1 == v96)
      {

        v1 = v87;
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v61 = sub_224AE8B8C(v30);

    v62 = 0;
    v64 = v61 + 56;
    v63 = *(v61 + 56);
    v109 = v61;
    v65 = 1 << *(v61 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v63;
    v68 = (v65 + 63) >> 6;
    v110 = v12 + 16;
    v107 = (v12 + 8);
    v108 = v12 + 32;
    v103 = (v1 + 8);
    v69 = MEMORY[0x277D84F98];
    v104 = v64;
    while (v67)
    {
      v78 = v95;
LABEL_33:
      v80 = *(v12 + 16);
      v81 = v88;
      v82 = v106;
      v80(v88, *(v109 + 48) + *(v12 + 72) * (__clz(__rbit64(v67)) | (v62 << 6)), v106);
      v83 = *(v12 + 32);
      v84 = v94;
      v83(v94, v81, v82);
      sub_224B9F9B0(v84, v78);
      if (*(v69 + 16) && (v85 = sub_224B0B2F8(v78), (v86 & 1) != 0))
      {
        v112 = *(*(v69 + 56) + 8 * v85);
      }

      else
      {
        v112 = MEMORY[0x277D84FA0];
      }

      v67 &= v67 - 1;
      v70 = v90;
      v71 = v94;
      v72 = v106;
      v80(v90, v94, v106);
      v73 = v89;
      sub_224ADB0B0(v89, v70);
      v74 = *v107;
      (*v107)(v73, v72);
      v75 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v69;
      v77 = v95;
      sub_224B1F170(v75, v95, isUniquelyReferenced_nonNull_native);
      (*v103)(v77, v91);
      result = v74(v71, v72);
      v69 = v111;
      v64 = v104;
      v12 = v105;
    }

    v78 = v95;
    while (1)
    {
      v79 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v79 >= v68)
      {

        return v69;
      }

      v67 = *(v64 + 8 * v79);
      ++v62;
      if (v67)
      {
        v62 = v79;
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_224BA21A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA2230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA22A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA2304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_224BA23CC(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void))
{
  if (a1)
  {
    v13 = qword_281351708;
    v14 = a1;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281365168);

    v16 = sub_224DAB228();
    v17 = sub_224DAF2A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = a7;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = a3;
      v22 = v20;
      v38 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_224A33F74(v21, a4, &v38);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_224A33F74(a5, a6, &v38);
      _os_log_impl(&dword_224A2F000, v16, v17, "Resolved default intent (%{public}s) for extension: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v22, -1, -1);
      v23 = v19;
      a7 = v18;
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    v36 = v14;
    a7(a1);
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281365168);

    v26 = a2;
    v27 = sub_224DAB228();
    v28 = sub_224DAF288();

    if (os_log_type_enabled(v27, v28))
    {
      v35 = a7;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v29 = 136446722;
      *(v29 + 4) = sub_224A33F74(a3, a4, &v38);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_224A33F74(a5, a6, &v38);
      *(v29 + 22) = 2114;
      if (a2)
      {
        v32 = a2;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v29 + 24) = v33;
      *v30 = v34;
      _os_log_impl(&dword_224A2F000, v27, v28, "Unable to resolve default intent (%{public}s) for extension: %{public}s - %{public}@", v29, 0x20u);
      sub_224AD68CC(v30);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v29, -1, -1);

      a7 = v35;
    }

    else
    {
    }

    a7(0);
  }
}

uint64_t sub_224BA27C4(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_224BA27F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224BA283C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_224BA2894()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F4948);
  __swift_project_value_buffer(v0, qword_27D6F4948);
  return sub_224DAB238();
}

uint64_t sub_224BA2914()
{
  v1 = OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startAfter;
  v2 = sub_224DA9878();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startBefore, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalTaskActivityContext(uint64_t a1)
{
  result = qword_27D6F4960;
  if (!qword_27D6F4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BA2A58(uint64_t a1)
{
  result = sub_224DA9878();
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

void sub_224BA2B1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAE918();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v21 - v11;
  sub_224A3317C(a1 + 32, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for LocalTaskActivityContext(0);
  if (swift_dynamicCast())
  {

    v13 = v1[5];
    v14 = __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    v21[0] = v21;
    v15 = *(v13 - 8);
    MEMORY[0x28223BE20](v14, v14);
    v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    sub_224DAD6E8();
    (*(v15 + 8))(v17, v13);
    (*(v5 + 16))(v9, *(a1 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel, v4);
    sub_224BA4058(&qword_281350C30, MEMORY[0x277CE3D70], MEMORY[0x277CE3D78]);
    LOBYTE(v17) = sub_224DAEDB8();
    v18 = *(v5 + 8);
    v18(v9, v4);
    v18(v12, v4);
    if (v17)
    {
      v19 = v2[8];
      v20 = *(v19 + 16);

      os_unfair_lock_lock(v20);
      sub_224BA2E30(v2, a1);
      os_unfair_lock_unlock(*(v19 + 16));
    }

    else
    {
      sub_224BA3710(a1);
    }
  }
}

uint64_t sub_224BA2E30(void *a1, uint64_t a2)
{
  v5 = sub_224DAE918();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D6F2CA0 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_27D6F4948);

  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v13;
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136446466;
    v38 = v11;
    v40 = a2;
    v41[0] = v14;
    v15 = a1[5];
    v16 = __swift_project_boxed_opaque_existential_1(a1 + 2, v15);
    v42 = &v34;
    v17 = *(v15 - 8);
    MEMORY[0x28223BE20](v16, v16);
    v37 = v12;
    v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    sub_224DAD6E8();
    (*(v17 + 8))(v19, v15);
    sub_224BA4058(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
    v20 = sub_224DAFD28();
    v22 = v21;
    v42 = v2;
    v35 = *(v6 + 8);
    v35(v9, v5);
    v23 = sub_224A33F74(v20, v22, v41);
    v24 = v40;

    v25 = v5;
    v26 = v36;
    *(v36 + 1) = v23;
    *(v26 + 6) = 2082;
    (*(v6 + 16))(v9, *(v24 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel, v25);
    v27 = sub_224DAFD28();
    v29 = v28;
    v35(v9, v25);
    v30 = sub_224A33F74(v27, v29, v41);

    *(v26 + 14) = v30;
    v11 = v38;
    _os_log_impl(&dword_224A2F000, v38, v37, "Pending task due to data protection level requirements (current=%{public}s, requires=%{public}s)", v26, 0x16u);
    v31 = v39;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  swift_beginAccess();

  MEMORY[0x22AA5D350](v32);
  if (*((a1[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224BA329C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a4;
  v51 = a3;
  v52 = a5;
  v53 = a2;
  v6 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DA9878();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v48 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v48 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v48 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v48 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v48 - v32;
  sub_224A45A60(a1 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v9);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  if ((*(*(v34 - 8) + 48))(v9, 1, v34) == 1)
  {
    sub_224DA9868();
  }

  else
  {
    v35 = v11[4];
    v35(v22, v9, v10);
    v35(v26, v22, v10);
  }

  sub_224DA9768();
  v36 = v11[4];
  v36(v33, v26, v10);
  v37 = v11[2];
  v37(v18, v33, v10);
  v38 = v49;
  v37(v49, v30, v10);
  v39 = type metadata accessor for LocalTaskActivityContext(0);
  v40 = swift_allocObject();
  v36((v40 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startAfter), v18, v10);
  v36((v40 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startBefore), v38, v10);
  v41 = v53;
  *(v40 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_targetQueue) = v53;
  v42 = (v40 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startHandler);
  v43 = v50;
  *v42 = v51;
  v42[1] = v43;
  v44 = v52;
  v52[3] = v39;
  v44[4] = &off_28382D5D8;
  *v44 = v40;
  v45 = v11[1];
  v46 = v41;

  v45(v30, v10);
  return (v45)(v33, v10);
}

uint64_t sub_224BA3660()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_224BA3710(uint64_t a1)
{
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v75 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB798();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v68 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_224DAB878();
  v72 = *(v77 - 8);
  v13 = MEMORY[0x28223BE20](v77, v12);
  v76 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v71 = &v64 - v16;
  v17 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_224DA9878();
  v21 = *(v79 - 8);
  v23 = MEMORY[0x28223BE20](v79, v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v64 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v64 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v78 = &v64 - v35;
  sub_224A3317C(a1 + 32, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for LocalTaskActivityContext(0);
  if (swift_dynamicCast())
  {
    v65 = v6;
    v64 = v81;
    v36 = *(a1 + 24);
    if (qword_27D6F2CA0 != -1)
    {
      swift_once();
    }

    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_27D6F4948);

    v38 = sub_224DAB228();
    v39 = sub_224DAF2A8();

    v40 = os_log_type_enabled(v38, v39);
    v67 = v2;
    v66 = v3;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_224A33F74(*(v36 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest), *(v36 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8), aBlock);
      _os_log_impl(&dword_224A2F000, v38, v39, "[%{public}s]: scheduled activity with local scheduler", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x22AA5EED0](v42, -1, -1);
      MEMORY[0x22AA5EED0](v41, -1, -1);
    }

    v43 = v76;
    sub_224A45A60(v36 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v20);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    v45 = (*(*(v44 - 8) + 48))(v20, 1, v44);
    v46 = v79;
    if (v45 == 1)
    {
      sub_224DA9868();
    }

    else
    {
      v47 = *(v21 + 32);
      v47(v25, v20, v79);
      v47(v29, v25, v46);
    }

    sub_224DA9768();
    v48 = *(v21 + 8);
    v48(v33, v46);
    (*(v21 + 32))(v78, v29, v46);
    sub_224DA97B8();
    if (v49 > 0.0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0.0;
    }

    sub_224DAB858();
    v51 = v50 * 1000.0;
    if (COERCE__INT64(fabs(v50 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v51 > -9.22337204e18)
    {
      if (v51 < 9.22337204e18)
      {
        v53 = v68;
        v52 = v69;
        *v68 = v51;
        v54 = *MEMORY[0x277D85178];
        v55 = *(v52 + 104);
        v76 = v48;
        v56 = v70;
        v55(v53, v54, v70);
        v57 = v71;
        sub_224DAB868();
        (*(v52 + 8))(v53, v56);
        v72 = *(v72 + 8);
        (v72)(v43, v77);
        v58 = v64;
        v70 = *(v64 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_targetQueue);
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        *(v59 + 24) = v36;
        aBlock[4] = sub_224BA400C;
        aBlock[5] = v59;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224A39F40;
        aBlock[3] = &block_descriptor_18;
        v60 = _Block_copy(aBlock);

        v61 = v73;
        sub_224DAB7E8();
        v81 = MEMORY[0x277D84F90];
        sub_224BA4058(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A4C290();
        v62 = v75;
        v63 = v67;
        sub_224DAF788();
        MEMORY[0x22AA5D6A0](v57, v61, v62, v60);
        _Block_release(v60);
        (*(v66 + 8))(v62, v63);
        (*(v74 + 8))(v61, v65);
        (v72)(v57, v77);
        (v76)(v78, v79);

        return;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_224BA4058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_224BA40C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_224DAEDE8();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEffectiveBundle:v6 delegate:a1 onQueue:a3];
  [v7 startMonitoringSignificantLocationChanges];
  return v7;
}

char *sub_224BA41D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__significantLocationDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  *&v5[v11] = sub_224DAB358();
  v12 = &v5[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__didChangeHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock;
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = v16;
  *&v6[v14] = v15;
  v17 = a3;
  v38 = *&v6[v11];
  sub_224BA4988();
  *&v6[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_significantLocationDidChangePublisher] = sub_224DAB3A8();
  v18 = *v12;
  v19 = v12[1];
  *v12 = a4;
  v12[1] = a5;

  sub_224A3D418(v18, v19);
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v37, sel_init);
  v21 = OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock;
  v22 = *(*&v20[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock] + 16);
  v23 = v20;
  os_unfair_lock_lock(v22);
  v24 = (*(a2 + 8))(v23, &off_28382D660, a3, a1, a2);
  v25 = &v23[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager];
  *v25 = v24;
  v25[1] = v26;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v24)
  {
    swift_unknownObjectRelease();
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v27 = sub_224DAB258();
    __swift_project_value_buffer(v27, qword_281364D60);
    v28 = sub_224DAB228();
    v29 = sub_224DAF2A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_224A33F74(0xD000000000000014, 0x8000000224DC8A80, &v38);
      v32 = "[mon:%{public}s] startMonitoringSignificantLocationChanges";
LABEL_10:
      _os_log_impl(&dword_224A2F000, v28, v29, v32, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v30, -1, -1);
    }
  }

  else
  {
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_281364D60);
    v28 = sub_224DAB228();
    v29 = sub_224DAF288();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_224A33F74(0xD000000000000014, 0x8000000224DC8A80, &v38);
      v32 = "[mon:%{public}s] failed to create";
      goto LABEL_10;
    }
  }

  os_unfair_lock_unlock(*(*&v20[v21] + 16));

  return v23;
}

void sub_224BA45B4()
{
  if (*&v0[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager])
  {
    __break(1u);
  }

  else
  {
    v1.receiver = v0;
    v1.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v1, sel_dealloc);
  }
}

void sub_224BA46DC(uint64_t a1)
{
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364D60);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_224A33F74(0xD000000000000014, 0x8000000224DC8A80, &v11);
    _os_log_impl(&dword_224A2F000, v3, v4, "[mon:%{public}s] didUpdateLocations", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v7 = a1 + OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__didChangeHandler;
  v8 = *(a1 + OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__didChangeHandler);
  if (v8)
  {
    v9 = *(v7 + 8);

    v8(v10);
    sub_224A3D418(v8, v9);
  }
}

void sub_224BA4910()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224BA46DC(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

unint64_t sub_224BA4988()
{
  result = qword_281350EE0;
  if (!qword_281350EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A10, &unk_224DB4000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350EE0);
  }

  return result;
}

uint64_t sub_224BA49EC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v32 = &v27 - v4;
  v33 = sub_224DAC268();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  v13 = *(v0 + 16);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v12;
    v27 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_224ADA5C4(0, v14, 0);
    v15 = v35;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v29 = *(v17 + 56);
    v30 = v18;
    v28 = (v17 - 8);
    do
    {
      v20 = v33;
      v21 = v17;
      v30(v8, v19, v33);
      v22 = sub_224DA9688();
      v23 = v32;
      (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
      sub_224BA4CFC(v8, v23, v16);
      sub_224A3311C(v23, &unk_27D6F4680, &unk_224DB4610);
      (*v28)(v8, v20);
      v35 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_224ADA5C4((v24 > 1), v25 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v25 + 1;
      sub_224BA5788(v16, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
      v19 += v29;
      --v14;
      v17 = v21;
    }

    while (v14);
  }

  return v15;
}

id sub_224BA4CFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v73 = a3;
  v74[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v67 = &v63 - v7;
  v8 = sub_224DAC268();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v69 = &v63 - v17;
  v18 = sub_224DA9688();
  v68 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v63 - v28;
  swift_getObjectType();
  sub_224DAC3F8();
  v63 = v15;
  v64 = a1;
  v65 = v3;
  v30 = v22;
  v31 = v68;
  v32 = *(v68 + 32);
  v32(v29, v26, v18);
  v33 = v69;
  sub_224B330C4(v70, v69);
  v34 = *(v31 + 48);
  v35 = v18;
  if (v34(v33, 1, v18) == 1)
  {
    v36 = v30;
    (*(v31 + 16))(v30, v29, v35);
    if (v34(v33, 1, v35) != 1)
    {
      sub_224A3311C(v33, &unk_27D6F4680, &unk_224DB4610);
    }
  }

  else
  {
    v36 = v30;
    v32(v30, v33, v35);
  }

  if ((sub_224DA9558() & 1) == 0 || (v70 = objc_opt_self(), v37 = [v70 defaultManager], sub_224DA9648(), v38 = sub_224DAEDE8(), , v39 = objc_msgSend(v37, sel_fileExistsAtPath_, v38), v37, v38, (v39 & 1) == 0))
  {
    v41 = v67;
    v42 = v64;
    sub_224BA554C(v67);
    v44 = v71;
    v43 = v72;
    if ((*(v71 + 48))(v41, 1, v72) != 1)
    {
      v47 = v66;
      (*(v44 + 32))(v66, v41, v43);
      v48 = v63;
      (*(v31 + 16))(v63, v36, v35);
      (*(v31 + 56))(v48, 0, 1, v35);
      sub_224BA4CFC(v47, v48, v73);
      sub_224A3311C(v48, &unk_27D6F4680, &unk_224DB4610);
      (*(v44 + 8))(v47, v43);
      v49 = *(v31 + 8);
      v49(v36, v35);
      return (v49)(v29, v35);
    }

    v45 = *(v31 + 8);
    v45(v36, v35);
    v45(v29, v35);
    sub_224A3311C(v41, &qword_27D6F4A18, &qword_224DB9070);
    (*(v44 + 16))(v73, v42, v43);
    type metadata accessor for TimelineFilenameMigrator.Result(0);
    type metadata accessor for TimelineFilenameMigrator.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (sub_224DA9628())
  {
    v40 = *(v31 + 8);
    v40(v36, v35);
    v40(v29, v35);
    (*(v71 + 16))(v73, v64, v72);
    type metadata accessor for TimelineFilenameMigrator.Result(0);
    type metadata accessor for TimelineFilenameMigrator.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

  v50 = v29;
  v51 = [v70 defaultManager];
  v69 = v50;
  v52 = sub_224DA95F8();
  v53 = sub_224DA95F8();
  v74[0] = 0;
  v54 = [v51 moveItemAtURL:v52 toURL:v53 error:v74];

  v55 = v73;
  v70 = v74[0];
  if (!v54)
  {
    v60 = v70;
    v61 = sub_224DA9528();

    swift_willThrow();
    v62 = *(v31 + 8);
    v62(v36, v35);
    v62(v69, v35);
    (*(v71 + 16))(v55, v64, v72);
    *(v55 + *(type metadata accessor for TimelineFilenameMigrator.Result(0) + 20)) = v61;
    type metadata accessor for TimelineFilenameMigrator.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v71 + 16))(v73, v64, v72);
  v56 = v32;
  v57 = v55 + *(type metadata accessor for TimelineFilenameMigrator.Result(0) + 20);
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A20, &qword_224DB9F80) + 48);
  v56(v57, v69, v35);
  v56(v57 + v58, v36, v35);
  type metadata accessor for TimelineFilenameMigrator.Action(0);
  swift_storeEnumTagMultiPayload();
  v59 = v70;

  return v59;
}

uint64_t sub_224BA554C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_224DAC258();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 priorVersionedWidgetMetrics];
  }

  else
  {

    v4 = sub_224DAC258();
    v6 = [v4 currentVersionedWidgetMetrics];
  }

  v7 = v6;

  if (v7)
  {
    v8 = v7;
    sub_224DAC248();
    v9 = v8;
    sub_224DAC218();
    sub_224DAC228();

    v10 = sub_224DAC268();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    v12 = sub_224DAC268();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_224BA5704()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_224BA5788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA5834(uint64_t a1)
{
  result = sub_224DAC268();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimelineFilenameMigrator.Action(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_224BA58B8(uint64_t a1)
{
  sub_224BA592C(319);
  if (v1 <= 0x3F)
  {
    sub_224BA5994(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224BA592C(uint64_t a1)
{
  if (!qword_27D6F4A48)
  {
    sub_224DA9688();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D6F4A48);
    }
  }
}

void sub_224BA5994(uint64_t a1)
{
  if (!qword_2813507C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F5620, &unk_224DB3350);
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_2813507C0);
    }
  }
}

uint64_t sub_224BA5A40@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = sub_224DAA6D8();
  a1[4] = sub_224BA7A58(&qword_2813517C8, MEMORY[0x277D7BB80], MEMORY[0x277D7BB88]);
  *a1 = v3;
}

uint64_t sub_224BA5AC0(uint64_t a1)
{
  result = sub_224BA7A58(&qword_2813517C8, MEMORY[0x277D7BB80], MEMORY[0x277D7BB88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224BA5B18(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224DA9F08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v9(v7, v1 + v8, v3);
  sub_224BA7A58(&qword_2813519D8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F50]);
  v10 = sub_224DAEDD8();
  v11 = *(v4 + 8);
  result = v11(v7, v3);
  if ((v10 & 1) == 0)
  {
    v34 = v11;
    if (qword_281351518 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364E80);

    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v16 = 136446466;
      v35[0] = *(v2 + 16);
      sub_224DAA6D8();
      v33 = v9;
      sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
      v31 = v15;
      v17 = sub_224DAFD28();
      v19 = sub_224A33F74(v17, v18, v36);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      v33(v7, v2 + v8, v3);
      v20 = sub_224DA9EC8();
      v22 = v21;
      v34(v7, v3);
      v23 = sub_224A33F74(v20, v22, v36);
      v9 = v33;

      *(v16 + 14) = v23;
      _os_log_impl(&dword_224A2F000, v14, v31, "[%{public}s] Task priority did change: %{public}s", v16, 0x16u);
      v24 = v32;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v24, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }

    sub_224A3317C(*(v2 + 24) + 16, v36);
    v25 = v37;
    v26 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v9(v7, v2 + v8, v3);
    v27 = *(v2 + 16);
    v35[3] = sub_224DAA6D8();
    v35[4] = sub_224BA7A58(&qword_2813517D0, MEMORY[0x277D7BB80], &unk_224DB9090);
    v35[0] = v27;
    v28 = *(v26 + 8);
    v29 = *(v28 + 8);

    v29(v7, v35, v25, v28);
    v34(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

char *sub_224BA5F64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v32 - v9;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  *(v3 + 4) = v11;
  v13 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  v14 = *MEMORY[0x277CF9F28];
  v15 = sub_224DA9F08();
  (*(*(v15 - 8) + 104))(&v3[v13], v14, v15);
  *&v3[OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession__entry] = 0;
  *(v3 + 2) = a2;
  *(v3 + 3) = a1;
  v16 = qword_281351518;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  v18 = __swift_project_value_buffer(v17, qword_281364E80);

  v32[1] = v18;
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[2] = a1;
    v32[3] = a2;
    v23 = v22;
    v33[0] = v22;
    *v21 = 136446210;
    sub_224DAA6D8();
    v32[0] = v3;
    v24 = v7;
    v25 = v6;
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v26 = sub_224DAFD28();
    v28 = sub_224A33F74(v26, v27, v33);

    *(v21 + 4) = v28;
    v6 = v25;
    v7 = v24;
    v3 = v32[0];
    _os_log_impl(&dword_224A2F000, v19, v20, "[%{public}s] Initialized", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  sub_224A3317C(*(v3 + 3) + 136, v33);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_224DAA698();
  sub_224BD746C(v10, 1);
  v30 = v29;
  (*(v7 + 8))(v10, v6);

  *&v3[OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession__entry] = v30;

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v3;
}

void sub_224BA64D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DABCC8();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB98();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281351518 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364E80);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v43[0] = v16;
    *v15 = 136446466;
    v42 = *(v1 + 16);
    sub_224DAA6D8();
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v17 = sub_224DAFD28();
    v19 = sub_224A33F74(v17, v18, v43);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = NSStringFromWRReloadReason();
    v21 = sub_224DAEE18();
    v23 = v22;

    v24 = sub_224A33F74(v21, v23, v43);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_224A2F000, v12, v13, "[%{public}s] Reload widget for reason: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v16, -1, -1);
    v25 = v15;
    v4 = v37;
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  sub_224A3317C(*(v2 + 24) + 136, v43);
  v26 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v27 = sub_224DAA6C8();
  v29 = v28;
  sub_224A859B0(a1, v10);
  v30 = *v26;
  v31 = v41;
  sub_224BD7040(v27, v29, v41);
  v34 = MEMORY[0x28223BE20](v32, v33);
  *(&v37 - 4) = v30;
  *(&v37 - 3) = v31;
  *(&v37 - 2) = v10;
  LOBYTE(v42) = 1;
  MEMORY[0x28223BE20](v34, v35);
  *(&v37 - 4) = &v42;
  *(&v37 - 3) = sub_224B7A900;
  *(&v37 - 2) = v36;

  sub_224DAC128();

  if (v42)
  {
    __break(1u);
  }

  else
  {

    (*(v38 + 8))(v31, v4);
    (*(v39 + 8))(v10, v40);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }
}

uint64_t sub_224BA6950(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v66 = a3;
  v62 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v59 - v10;
  v65 = sub_224DA9908();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v12);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351518 != -1)
  {
    swift_once();
  }

  v60 = sub_224DAB258();
  __swift_project_value_buffer(v60, qword_281364E80);

  v14 = a1;
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  v17 = os_log_type_enabled(v15, v16);
  v64 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = a4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59 = v11;
    v22 = v21;
    v73[0] = v21;
    *v18 = 136446466;
    v70[0] = *(v5 + 16);
    sub_224DAA6D8();
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v23 = sub_224DAFD28();
    v25 = sub_224A33F74(v23, v24, v73);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2114;
    *(v18 + 14) = v14;
    *v20 = v14;
    v26 = v14;
    _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s] Handle interaction: %{public}@", v18, 0x16u);
    sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
    v27 = v20;
    a4 = v19;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v28 = v22;
    v11 = v59;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  v29 = *(v5 + 16);
  sub_224A3317C(*(v5 + 24) + 176, v73);
  v30 = __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  v31 = sub_224DAA6B8();
  v32 = sub_224DAA6C8();
  v33 = swift_allocObject();
  v33[2] = v66;
  v33[3] = a4;
  v33[4] = v29;
  v34 = *v30;
  v35 = &v31[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  if (!*(v35 + 1))
  {
    v42 = objc_allocWithZone(sub_224DAAA38());

    v43 = sub_224DAAA28();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = sub_224BA7AA0;
    v44[4] = v33;
    v45 = v43;

    sub_224B90424(v31, v62, v64, 0, 0, 1u, sub_224BA7AB0, v44);

    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v62 = v32;
  swift_beginAccess();
  if (*(v34 + 48))
  {
    sub_224A3317C(v34 + 24, &v67);
    if (*(&v68 + 1))
    {
LABEL_8:
      sub_224A39D14(&v67, v70);
      swift_retain_n();
      swift_retain_n();

      sub_224DA9888();

      v36 = v63;
      if ((*(v63 + 48))(v11, 1, v65) == 1)
      {

        sub_224A3311C(v11, &unk_27D6F5630, &unk_224DB34C0);
        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v60, qword_281365120);
        v37 = sub_224DAB228();
        v38 = sub_224DAF288();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_224A2F000, v37, v38, "Unable to send interaction due to bad relationship ID", v39, 2u);
          MEMORY[0x22AA5EED0](v39, -1, -1);
        }

        sub_224B93694();
        v40 = swift_allocError();
        *v41 = xmmword_224DB8520;
        sub_224BA71F8(v40, 1, v66, a4, v29);
      }

      else
      {

        v49 = v61;
        v50 = v65;
        (*(v36 + 32))(v61, v11, v65);
        v51 = v36;
        v52 = objc_allocWithZone(MEMORY[0x277CFA358]);
        v53 = sub_224DAEDE8();
        v54 = sub_224DAEDE8();

        v55 = [v52 initWithExtensionIdentity:v31 kind:v53 family:0 intent:0 activityIdentifier:v54];

        v56 = v71;
        v57 = v72;
        __swift_project_boxed_opaque_existential_1(v70, v71);
        (*(v57 + 48))(v55, v64, v49, sub_224BA7AA0, v33, v56, v57);

        (*(v51 + 8))(v49, v50);
      }

      __swift_destroy_boxed_opaque_existential_1(v70);
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }
  }

  else
  {
    v46 = *(v34 + 40);
    v67 = *(v34 + 24);
    v68 = v46;
    v69 = *(v34 + 56);
    if (*(&v46 + 1))
    {
      goto LABEL_8;
    }
  }

  swift_retain_n();
  swift_retain_n();

  if (*(&v68 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  sub_224B93694();
  v47 = swift_allocError();
  *v48 = 0;
  v48[1] = 0;
  sub_224BA71F8(v47, 1, v66, a4, v29);

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

void sub_224BA71F8(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a3();
    if (qword_281351518 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281364E80);

    sub_224BA7AC0(a1, 1);
    oslog = sub_224DAB228();
    v7 = sub_224DAF288();

    sub_224B92BE0(a1, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v8 = 136446466;
      sub_224DAA6D8();
      sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
      v11 = sub_224DAFD28();
      v13 = sub_224A33F74(v11, v12, &v24);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2114;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v15;
      *v9 = v15;
      _os_log_impl(&dword_224A2F000, oslog, v7, "[%{public}s] Encountered error when handling interaction: %{public}@", v8, 0x16u);
      sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v16 = v10;
LABEL_10:
      MEMORY[0x22AA5EED0](v16, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);

      return;
    }
  }

  else
  {
    (a3)(0);
    if (qword_281351518 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281364E80);

    oslog = sub_224DAB228();
    v18 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v18))
    {
      v8 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v8 = 136446210;
      sub_224DAA6D8();
      sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
      v20 = sub_224DAFD28();
      v22 = sub_224A33F74(v20, v21, &v24);

      *(v8 + 4) = v22;
      _os_log_impl(&dword_224A2F000, oslog, v18, "[%{public}s] Finished handling interaction.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v16 = v19;
      goto LABEL_10;
    }
  }
}

uint64_t sub_224BA75AC()
{
  if (qword_281351518 != -1)
  {
    swift_once();
  }

  v1 = sub_224DAB258();
  __swift_project_value_buffer(v1, qword_281364E80);

  v2 = sub_224DAB228();
  v3 = sub_224DAF2A8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16[0] = v5;
    *v4 = 136446210;
    v15[0] = *(v0 + 16);
    sub_224DAA6D8();
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v6 = sub_224DAFD28();
    v8 = sub_224A33F74(v6, v7, v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_224A2F000, v2, v3, "[%{public}s] Invalidated", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x22AA5EED0](v5, -1, -1);
    MEMORY[0x22AA5EED0](v4, -1, -1);
  }

  sub_224A3317C(*(v0 + 24) + 16, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = *(v0 + 16);
  v15[3] = sub_224DAA6D8();
  v15[4] = sub_224BA7A58(&qword_2813517D0, MEMORY[0x277D7BB80], &unk_224DB9090);
  v15[0] = v11;
  v12 = *(v10 + 8);
  v13 = *(v12 + 16);

  v13(v15, v9, v12);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_224BA7804()
{

  v1 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  v2 = sub_224DA9F08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityRendererSession(uint64_t a1)
{
  result = qword_281356D10;
  if (!qword_281356D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BA791C(uint64_t a1)
{
  result = sub_224DA9F08();
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

unint64_t sub_224BA79C8()
{
  sub_224DAF938();

  v0 = sub_224DAA6A8();
  MEMORY[0x22AA5D210](v0);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_224BA7A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_224BA7AC0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t _s10IconChangeOMa(uint64_t a1)
{
  result = qword_281359498;
  if (!qword_281359498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224BA7B18(uint64_t a1)
{
  sub_224BA7B8C(319);
  if (v1 <= 0x3F)
  {
    sub_224AFCBC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224BA7B8C(uint64_t a1)
{
  if (!qword_2813517D8)
  {
    sub_224DAA618();
    sub_224DA9688();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813517D8);
    }
  }
}

unint64_t sub_224BA7BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v31 - v4;
  v6 = sub_224DA9688();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAA618();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s10IconChangeOMa(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224BA8AAC(v0, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v18, v1);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_224DAF938();

    v35 = 0xD00000000000001ELL;
    v36 = 0x8000000224DC8B90;
    sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA030]);
    v19 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v19);

    v20 = v35;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
    v22 = *(v11 + 32);
    v32 = v10;
    v22(v14, v18, v10);
    v24 = v33;
    v23 = v34;
    (*(v33 + 32))(v9, &v18[v21], v34);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000001CLL, 0x8000000224DC8BB0);
    sub_224DAA5E8();
    sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA030]);
    v25 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v25);

    (*(v2 + 8))(v5, v1);
    MEMORY[0x22AA5D210](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
    v26 = sub_224DAA608();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v26 = 1701736302;
      v28 = 0xE400000000000000;
    }

    MEMORY[0x22AA5D210](v26, v28);

    MEMORY[0x22AA5D210](0x203A6C7275203BLL, 0xE700000000000000);
    sub_224B32DE8();
    v29 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v29);

    v20 = v35;
    (*(v24 + 8))(v9, v23);
    (*(v11 + 8))(v14, v32);
  }

  return v20;
}

uint64_t sub_224BA80E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224BA8170(uint64_t a1)
{
  v2 = sub_224BA8BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224BA81AC(uint64_t a1)
{
  v2 = sub_224BA8BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224BA81E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A68, &qword_224DB9220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BA8BE4();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_224DAFC58();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_224BA8364(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A70, &qword_224DB9228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BA8BE4();
  sub_224DAFF08();
  sub_224DAFCC8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224BA84A0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v55 = &v53 - v5;
  v6 = sub_224DA9688();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v56 = &v53 - v12;
  v59 = sub_224DAA618();
  v13 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s10IconChangeOMa(0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v53 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A50, &qword_224DB9198);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v53 - v28;
  v30 = &v53 + *(v27 + 56) - v28;
  sub_224BA8AAC(a1, &v53 - v28);
  sub_224BA8AAC(v60, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_224BA8AAC(v29, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v57;
      v31 = v58;
      v33 = v55;
      (*(v57 + 32))(v55, v30, v58);
      sub_224A33088(&qword_27D6F4A58, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA028]);
      sub_224DAEFA8();
      sub_224DAEFA8();
      if (v63 == v61 && v64 == v62)
      {
        v34 = *(v32 + 8);
        v34(v33, v31);

        v34(v21, v31);
LABEL_13:
        sub_224BA8B78(v29);
        v47 = 1;
        return v47 & 1;
      }

      v49 = sub_224DAFD88();
      v50 = *(v32 + 8);
      v50(v33, v31);

      v50(v21, v31);
      if (v49)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    (*(v57 + 8))(v21, v58);
LABEL_9:
    sub_224BA8B10(v29);
LABEL_16:
    v47 = 0;
    return v47 & 1;
  }

  sub_224BA8AAC(v29, v24);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 8))(&v24[v35], v6);
    (*(v13 + 8))(v24, v59);
    goto LABEL_9;
  }

  v36 = *(v13 + 32);
  v60 = v13;
  v37 = v59;
  v36(v16, v30, v59);
  v38 = *(v7 + 32);
  v38(v56, &v24[v35], v6);
  v39 = &v30[v35];
  v40 = v37;
  v41 = v60;
  v42 = v54;
  v38(v54, v39, v6);
  v43 = v40;
  v44 = MEMORY[0x22AA58960](v24, v16);
  v45 = *(v41 + 8);
  v45(v24, v43);
  if ((v44 & 1) == 0)
  {
    v51 = *(v7 + 8);
    v51(v42, v6);
    v51(v56, v6);
    v45(v16, v59);
LABEL_15:
    sub_224BA8B78(v29);
    goto LABEL_16;
  }

  v46 = v56;
  v47 = sub_224DA9628();
  v48 = *(v7 + 8);
  v48(v42, v6);
  v48(v46, v6);
  v45(v16, v59);
  sub_224BA8B78(v29);
  return v47 & 1;
}

uint64_t sub_224BA8AAC(uint64_t a1, uint64_t a2)
{
  v4 = _s10IconChangeOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA8B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A50, &qword_224DB9198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BA8B78(uint64_t a1)
{
  v2 = _s10IconChangeOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224BA8BE4()
{
  result = qword_2813593F8[0];
  if (!qword_2813593F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813593F8);
  }

  return result;
}

unint64_t sub_224BA8C4C()
{
  result = qword_27D6F4A78;
  if (!qword_27D6F4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4A78);
  }

  return result;
}

unint64_t sub_224BA8CA4()
{
  result = qword_2813593E8;
  if (!qword_2813593E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593E8);
  }

  return result;
}

unint64_t sub_224BA8CFC()
{
  result = qword_2813593F0;
  if (!qword_2813593F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593F0);
  }

  return result;
}

void sub_224BA8D50()
{
  sub_224DA9E78();
  sub_224DA9E68();
  v0 = sub_224DA9DC8();

  qword_281355000 = v0;
}

void sub_224BA8D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  sub_224BA941C(a2, v11);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  v7 = v11[1];
  *(v6 + 32) = v11[0];
  *(v6 + 48) = v7;
  *(v6 + 64) = v11[2];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_224BA9478;
  *(v8 + 24) = v6;
  v10[4] = sub_224A8A838;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_224A9B6F8;
  v10[3] = &block_descriptor_19;
  v9 = _Block_copy(v10);

  dispatch_sync(v5, v9);
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_224BA8F20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (!*(v1 + 48))
    {
      __break(1u);
      return;
    }

    v11 = sub_224C160B0();
    if (!v11)
    {
      goto LABEL_25;
    }

    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v12)
      {
        goto LABEL_6;
      }

LABEL_25:
      if (qword_2813516D0 != -1)
      {
        swift_once();
      }

      v27 = sub_224DAB258();
      __swift_project_value_buffer(v27, qword_281365138);
      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_30;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Unable to precache placeholders because no metrics specifications exist";
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_224DAF838();

  if (!v26)
  {
    goto LABEL_25;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_224DAF838();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  if (!v13)
  {
    if (qword_2813516D0 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281365138);
    v20 = sub_224DAB228();
    v21 = sub_224DAF2A8();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_30;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No descriptor changes found - nothing to do.";
LABEL_29:
    _os_log_impl(&dword_224A2F000, v20, v21, v23, v22, 2u);
    MEMORY[0x22AA5EED0](v22, -1, -1);
LABEL_30:

    return;
  }

  if (qword_2813516D0 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281365138);

  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = sub_224DAF838();
    }

    else
    {
      v18 = *(a1 + 16);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_224A2F000, v15, v16, "Precaching placeholders for %{public}ld additional descriptors", v17, 0xCu);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v24 = *(v2 + 32);

  sub_224AD698C(a1, v24);
  *(v2 + 32) = v25;

  sub_224BA97CC();
}

uint64_t sub_224BA9338(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);

  *(a1 + 32) = sub_224CE7654(a2, v4);
}

uint64_t sub_224BA93A8()
{

  sub_224A3D418(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

void *sub_224BA94A4()
{
  v17 = sub_224DAF3C8();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_224DAB848();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v15[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v15[4] = "adCount";
  sub_224DAB818();
  v18 = MEMORY[0x277D84F90];
  v15[3] = sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  v8 = *MEMORY[0x277D85260];
  v9 = v0 + 104;
  v10 = *(v0 + 104);
  v15[2] = v9;
  v10(v3, v8, v17);
  v16[2] = sub_224DAF418();
  sub_224DAB818();
  v18 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v10(v3, v8, v17);
  v11 = sub_224DAF418();
  v12 = MEMORY[0x277D84FA0];
  v13 = v16;
  v16[3] = v11;
  v13[4] = v12;
  v13[6] = 0;
  v13[7] = 0;
  v13[5] = 0;
  return v13;
}

void sub_224BA97CC()
{
  v1 = v0;
  v61 = sub_224DAB7B8();
  v2 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v3);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_224DAB848();
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v6);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (v54.n128_u64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v1[2];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    swift_beginAccess();
    v56 = (v2 + 8);
    v57 = v65;
    v55 = (v5 + 8);
    v16.n128_u64[0] = 136446210;
    v54 = v16;
    while (1)
    {
      v24 = v1[4];
      if ((v24 & 0xC000000000000001) != 0)
      {

        v25 = sub_224DAF838();

        if (!v25)
        {
          return;
        }
      }

      else if (!*(v24 + 16))
      {
        return;
      }

      v26 = v1[5];
      if (qword_281354FF8 != -1)
      {
        swift_once();
      }

      if (v26 >= qword_281355000)
      {
        break;
      }

      v27 = v1[5];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v1[5] = v29;
      swift_beginAccess();
      v30 = v1[4];
      v31 = v30 & 0xC000000000000001;
      if ((v30 & 0xC000000000000001) != 0)
      {
        if (!sub_224DAF838())
        {
          goto LABEL_32;
        }

        v32 = sub_224DAF7D8();
        v34 = v33;
      }

      else
      {
        if (!*(v30 + 16))
        {
          goto LABEL_33;
        }

        v35 = 0;
        v36 = (v30 + 56);
        v32 = 1 << *(v30 + 32);
        v37 = (v32 + 63) >> 6;
        while (1)
        {
          v39 = *v36++;
          v38 = v39;
          if (v39)
          {
            break;
          }

          v35 -= 64;
          if (!--v37)
          {
            goto LABEL_21;
          }
        }

        v32 = __clz(__rbit64(v38)) - v35;
LABEL_21:
        v34 = *(v30 + 36);
      }

      sub_224BAA4A8(v32, v34, v31 != 0);
      v41 = v40;
      swift_endAccess();
      sub_224A3E204(v32, v34, v31 != 0);
      if (qword_2813516D0 != -1)
      {
        swift_once();
      }

      v42 = sub_224DAB258();
      __swift_project_value_buffer(v42, qword_281365138);
      v43 = v41;
      v44 = sub_224DAB228();
      v45 = sub_224DAF2A8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = v54.n128_u32[0];
        v48 = [v43 succinctDescription];

        if (!v48)
        {
          goto LABEL_35;
        }

        v49 = sub_224DAEE18();
        v51 = v50;

        v52 = sub_224A33F74(v49, v51, aBlock);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_224A2F000, v44, v45, "Precaching placeholders for %{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x22AA5EED0](v47, -1, -1);
        MEMORY[0x22AA5EED0](v46, -1, -1);
      }

      else
      {
      }

      v53 = v1[6];
      if (v53)
      {
        v17 = v1[7];
        v62 = v1[3];
        v18 = swift_allocObject();
        v18[2] = v53;
        v18[3] = v17;
        v18[4] = v43;
        v18[5] = v1;
        v65[2] = sub_224BAA71C;
        v65[3] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v65[0] = sub_224A39F40;
        v65[1] = &block_descriptor_20;
        v19 = _Block_copy(aBlock);
        sub_224A364AC(v53, v17);
        v20 = v43;
        sub_224A364AC(v53, v17);

        v21 = v58;
        sub_224DAB7E8();
        v63 = MEMORY[0x277D84F90];
        sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v23 = v60;
        v22 = v61;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v21, v23, v19);
        _Block_release(v19);
        sub_224A3D418(v53, v17);

        (*v56)(v23, v22);
        (*v55)(v21, v59);
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

double sub_224BA9ED4(void (*a1)(void *, uint64_t (*)(), uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a3;

  a1(a3, sub_224BAA728, v7);

  return result;
}

double sub_224BA9F70(uint64_t a1, void *a2)
{
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB848();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(a1 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_224BAA770;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_29_0;
  v14 = _Block_copy(aBlock);

  v15 = a2;
  sub_224DAB7E8();
  v19 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);

  return result;
}

void sub_224BAA234(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v2 = a1;
    *(a1 + 40) = v6;
    if (qword_2813516D0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281365138);
  swift_retain_n();
  v8 = v3;
  v9 = sub_224DAB228();
  v10 = sub_224DAF2A8();
  if (!os_log_type_enabled(v9, v10))
  {

LABEL_10:
    sub_224BA97CC();
    return;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v22 = v12;
  *v11 = 136446722;
  v13 = [v8 succinctDescription];
  if (v13)
  {
    v14 = v13;

    v15 = sub_224DAEE18();
    v17 = v16;

    v18 = sub_224A33F74(v15, v17, &v22);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2050;
    v19 = *(v2 + 40);

    *(v11 + 14) = v19;

    *(v11 + 22) = 2050;
    swift_beginAccess();
    v20 = *(v2 + 32);
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = sub_224DAF838();
    }

    else
    {
      v21 = *(v20 + 16);
    }

    *(v11 + 24) = v21;

    _os_log_impl(&dword_224A2F000, v9, v10, "Completed precaching placeholders for %{public}s; %{public}ld active reloads; %{public}ld pending descriptors", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x22AA5EED0](v12, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);

    goto LABEL_10;
  }

  __break(1u);
}

void sub_224BAA4A8(unint64_t a1, void *a2, char a3)
{
  v4 = a1;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA5DBB0](a1, a2, v6);
      sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);

      swift_dynamicCast();
      sub_224B0600C(v6, v16);

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    if (sub_224DAF818() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_224DAF828();
    swift_dynamicCast();
    v7 = v16;
    v3 = v16;
    v12 = sub_224DAF698();
    v13 = -1 << *(v10 + 32);
    v4 = v12 & ~v13;
    if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * v4);
        v3 = sub_224DAF6A8();

        if (v3)
        {
          goto LABEL_19;
        }

        v4 = (v4 + 1) & v14;
      }

      while (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= v4)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (v4 >> 6) + 56) >> v4) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3;
  if (*(v10 + 36) != v7)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224AE4630();
  }

  sub_224B065A0(v4);
  *v11 = v10;
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224BAA780(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_224DAF7D8();
    }

    else
    {
      v3 = sub_224DAF798();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_224CB9ABC(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 kind];
        v14 = sub_224DAEE18();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_224A3DFD8((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_224DAF7F8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A98, &qword_224DBF930);
          v6 = sub_224DAF1E8();
          sub_224DAF8A8();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_224A3E204(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_224A3E204(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_224A3E204(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_224BAAAE8(void *a1, uint64_t a2)
{
  v248 = a1;
  v226 = sub_224DAB258();
  v224 = *(v226 - 8);
  v4 = MEMORY[0x28223BE20](v226 - 8, v3);
  v6 = &v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v216 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v235 = &v216 - v12;
  v250 = sub_224DAE4F8();
  v223 = *(v250 - 8);
  v14 = MEMORY[0x28223BE20](v250, v13);
  v231 = &v216 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v249 = &v216 - v17;
  v253 = sub_224DAC268();
  v239 = *(v253 - 8);
  v19 = MEMORY[0x28223BE20](v253, v18);
  v217 = &v216 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v216 = &v216 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v255 = &v216 - v25;
  v26 = sub_224DA022C(MEMORY[0x277D84F90]);
  v218 = v9;
  v219 = v6;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224B07048();
    sub_224DAF1F8();
    a2 = v259;
    v27 = v260;
    v28 = v261;
    v29 = v262;
    v30 = v263;
  }

  else
  {
    v31 = -1 << *(a2 + 32);
    v27 = (a2 + 56);
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(a2 + 56);

    v29 = 0;
  }

  v247 = v28;
  v34 = (v28 + 64) >> 6;
  v251 = v34;
  v252 = v27;
  while (a2 < 0)
  {
    v42 = sub_224DAF878();
    if (!v42)
    {
      goto LABEL_30;
    }

    v256 = v42;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    swift_dynamicCast();
    v41 = v257;
    v39 = v29;
    v40 = v30;
    if (!v257)
    {
      goto LABEL_30;
    }

LABEL_19:
    v254 = v40;
    v43 = a2;
    v44 = [v41 kind];
    v45 = sub_224DAEE18();
    v47 = v46;

    v48 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v257 = v26;
    v51 = sub_224A3A40C(v45, v47);
    v52 = v26[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_126;
    }

    v55 = v50;
    if (v26[3] >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v50)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_224B256DC();
        if (v55)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_224B0FBD8(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_224A3A40C(v45, v47);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_134;
      }

      v51 = v56;
      if (v55)
      {
LABEL_8:

        v26 = v257;
        v35 = *(v257 + 56);
        v36 = *(v35 + 8 * v51);
        *(v35 + 8 * v51) = v48;

        goto LABEL_9;
      }
    }

    v26 = v257;
    *(v257 + 8 * (v51 >> 6) + 64) |= 1 << v51;
    v58 = (v26[6] + 16 * v51);
    *v58 = v45;
    v58[1] = v47;
    *(v26[7] + 8 * v51) = v48;

    v59 = v26[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_131;
    }

    v26[2] = v61;
LABEL_9:
    v29 = v39;
    v30 = v254;
    a2 = v43;
    v34 = v251;
    v27 = v252;
  }

  v37 = v29;
  v38 = v30;
  v39 = v29;
  if (v30)
  {
LABEL_15:
    v40 = (v38 - 1) & v38;
    v41 = *(*(a2 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
    if (!v41)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v39 >= v34)
    {
      break;
    }

    v38 = v27[v39];
    ++v37;
    if (v38)
    {
      goto LABEL_15;
    }
  }

LABEL_30:
  sub_224A3B7E4(a2);

  v63 = 0;
  v64 = sub_224BAF62C(v62, v26);

  v65 = 0;
  v67 = v64 + 8;
  v66 = v64[8];
  v225 = v64;
  v68 = 1 << *(v64 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & v66;
  v237 = v241 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager;
  v71 = (v68 + 63) >> 6;
  v238 = v239 + 16;
  v232 = (v223 + 48);
  v230 = (v223 + 32);
  v229 = (v223 + 16);
  v228 = (v223 + 8);
  v236 = (v239 + 8);
  v72 = MEMORY[0x277D84F98];
  v73 = MEMORY[0x277D84F98];
  v74 = MEMORY[0x277D84F98];
  v75 = MEMORY[0x277D84F98];
  v76 = MEMORY[0x277D84F98];
  v252 = MEMORY[0x277D84F98];
  v221 = v67;
  v220 = v71;
  if (!v70)
  {
    goto LABEL_33;
  }

LABEL_37:
  while (2)
  {
    v222 = v70;
    v78 = (v65 << 9) | (8 * __clz(__rbit64(v70)));
    v79 = *(v225[7] + v78);
    v80 = *(v79 + 16);
    v240 = *(v225[6] + v78);

    v233 = v80;
    if (v80)
    {
      v248 = v73;
      v81 = 0;
      v82 = v72;
      v73 = v76;
      v254 = v75;
      v227 = v79;
      while (1)
      {
        if (v81 >= *(v79 + 16))
        {
          goto LABEL_125;
        }

        v251 = v82;
        v242 = v73;
        v83 = v79 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
        v84 = *(v239 + 72);
        v246 = v81;
        v85 = *(v239 + 16);
        v85(v255, v83 + v84 * v81, v253);
        swift_getObjectType();
        v86 = sub_224DAC438();
        v234 = v85;
        if (v63)
        {

          v251 = 0;

          v154 = 0;
          v155 = v242 + 8;
          v156 = 1 << *(v242 + 32);
          v157 = -1;
          if (v156 < 64)
          {
            v157 = ~(-1 << v156);
          }

          v158 = v157 & v242[8];
          v159 = (v156 + 63) >> 6;
          v252 = "holderReloadStrategy.swift";
          while (1)
          {
            v160 = v226;
            if (!v158)
            {
              break;
            }

LABEL_97:
            v158 &= v158 - 1;
            swift_getObjectType();
            v257 = 0;
            v258 = 0xE000000000000000;
            swift_unknownObjectRetain();
            sub_224DAF938();
            MEMORY[0x22AA5D210](0xD000000000000046, v252 | 0x8000000000000000);
            sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
            v163 = sub_224DAFD28();
            MEMORY[0x22AA5D210](v163);

            sub_224DABD08();
            swift_unknownObjectRelease();
          }

          v161 = v253;
          while (1)
          {
            v162 = v154 + 1;
            if (__OFADD__(v154, 1))
            {
              goto LABEL_122;
            }

            if (v162 >= v159)
            {

              v164 = v224;
              v165 = v219;
              (*(v224 + 16))(v219, v241 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v160);
              v166 = v217;
              v234(v217, v255, v161);
              v167 = v240;
              v168 = sub_224DAB228();
              v169 = sub_224DAF288();

              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v252 = swift_slowAlloc();
                v257 = v252;
                *v170 = 138543618;
                *(v170 + 4) = v167;
                *v171 = v167;
                *(v170 + 12) = 2082;
                sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
                v172 = v167;
                v173 = v167;
                v174 = sub_224DAFD28();
                v176 = v175;
                v177 = v166;
                v178 = *v236;
                (*v236)(v177, v253);
                v179 = sub_224A33F74(v174, v176, &v257);
                v167 = v172;

                *(v170 + 14) = v179;
                _os_log_impl(&dword_224A2F000, v168, v169, "%{public}@ Failed to get file handle from promise for key: %{public}s", v170, 0x16u);
                sub_224A3311C(v171, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v171, -1, -1);
                v180 = v252;
                __swift_destroy_boxed_opaque_existential_1(v252);
                v161 = v253;
                MEMORY[0x22AA5EED0](v180, -1, -1);
                MEMORY[0x22AA5EED0](v170, -1, -1);

                (*(v164 + 8))(v219, v226);
              }

              else
              {

                v181 = v166;
                v178 = *v236;
                (*v236)(v181, v161);
                (*(v164 + 8))(v165, v160);
              }

              v182 = MEMORY[0x277D84F90];
              v75 = sub_224DA0240(MEMORY[0x277D84F90]);
              sub_224DA0268(v182);
              sub_224DA0290(v182);

              v178(v255, v161);
LABEL_119:

              return v75;
            }

            v158 = v155[v162];
            ++v154;
            if (v158)
            {
              v154 = v162;
              goto LABEL_97;
            }
          }
        }

        v88 = v86;
        v89 = v87;
        swift_getObjectType();
        v90 = sub_224DABCE8();
        v247 = 0;
        v245 = v90;
        v91 = *(v241 + 16);
        if (!v91)
        {

          v97 = v235;
          (*(v223 + 56))(v235, 1, 1, v250);
LABEL_104:
          sub_224A3311C(v97, &qword_27D6F4808, &unk_224DB7990);
          v257 = 0;
          v258 = 0xE000000000000000;
          sub_224DAF938();
          v250 = "der requests for key: ";
          MEMORY[0x22AA5D210](0xD000000000000041, 0x8000000224DC8D80);
          v251 = sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
          v183 = sub_224DAFD28();
          MEMORY[0x22AA5D210](v183);

          sub_224DABD08();

          v184 = 0;
          v185 = v242 + 8;
          v186 = 1 << *(v242 + 32);
          v187 = -1;
          if (v186 < 64)
          {
            v187 = ~(-1 << v186);
          }

          v188 = v187 & v242[8];
          v189 = (v186 + 63) >> 6;
          while (1)
          {
            v190 = v224;
            if (!v188)
            {
              break;
            }

            v191 = v184;
LABEL_114:
            v193 = __clz(__rbit64(v188));
            v188 &= v188 - 1;
            v252 = *(v242[7] + ((v191 << 10) | (16 * v193)) + 8);
            swift_getObjectType();
            v257 = 0;
            v258 = 0xE000000000000000;
            swift_unknownObjectRetain();
            sub_224DAF938();
            MEMORY[0x22AA5D210](0xD000000000000041, v250 | 0x8000000000000000);
            v194 = sub_224DAFD28();
            MEMORY[0x22AA5D210](v194);

            sub_224DABD08();
            swift_unknownObjectRelease();
          }

          v192 = v253;
          while (1)
          {
            v191 = v184 + 1;
            if (__OFADD__(v184, 1))
            {
              goto LABEL_123;
            }

            if (v191 >= v189)
            {

              v195 = v218;
              v196 = v226;
              (*(v190 + 16))(v218, v241 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v226);
              v197 = v216;
              v234(v216, v255, v192);
              v198 = v240;
              v199 = v190;
              v200 = sub_224DAB228();
              v201 = sub_224DAF288();

              if (os_log_type_enabled(v200, v201))
              {
                v202 = swift_slowAlloc();
                v203 = swift_slowAlloc();
                v250 = v203;
                v252 = swift_slowAlloc();
                v257 = v252;
                *v202 = 138543618;
                *(v202 + 4) = v198;
                *v203 = v198;
                *(v202 + 12) = 2082;
                v204 = v198;
                v205 = sub_224DAFD28();
                v207 = v206;
                v208 = *v236;
                (*v236)(v197, v253);
                v209 = sub_224A33F74(v205, v207, &v257);

                *(v202 + 14) = v209;
                v210 = v201;
                v211 = v208;
                _os_log_impl(&dword_224A2F000, v200, v210, "%{public}@ Failed to get environment to start placeholder requests for key: %{public}s", v202, 0x16u);
                v212 = v250;
                sub_224A3311C(v250, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v212, -1, -1);
                v213 = v252;
                __swift_destroy_boxed_opaque_existential_1(v252);
                MEMORY[0x22AA5EED0](v213, -1, -1);
                v192 = v253;
                MEMORY[0x22AA5EED0](v202, -1, -1);

                (*(v199 + 8))(v218, v226);
              }

              else
              {

                v211 = *v236;
                (*v236)(v197, v192);
                (*(v199 + 8))(v195, v196);
              }

              v214 = MEMORY[0x277D84F90];
              v75 = sub_224DA0240(MEMORY[0x277D84F90]);
              sub_224DA0268(v214);
              sub_224DA0290(v214);

              swift_unknownObjectRelease();

              v211(v255, v192);
              goto LABEL_119;
            }

            v188 = v185[v191];
            ++v184;
            if (v188)
            {
              v184 = v191;
              goto LABEL_114;
            }
          }
        }

        v243 = v89;
        v244 = v88;
        v92 = *(v241 + 24);

        v93 = v240;
        v94 = [v240 extensionIdentity];
        v95 = v235;
        v91();

        v96 = v92;
        v97 = v95;
        sub_224A3D418(v91, v96);
        v98 = v250;
        if ((*v232)(v95, 1, v250) == 1)
        {

          goto LABEL_104;
        }

        v99 = v249;
        (*v230)(v249, v97, v98);
        v100 = sub_224DAE8A8();
        v101 = [v93 extensionIdentity];
        v102 = [v93 kind];
        sub_224DAEE18();

        (*v229)(v231, v99, v98);
        v245 = v245;
        v242 = v100;
        v103 = sub_224DAE888();
        v104 = v254;
        v105 = v93;
        if (v254[2] && (v106 = sub_224B0B5D4(v93), (v107 & 1) != 0))
        {
          v257 = *(v104[7] + 8 * v106);
        }

        else
        {
          v257 = MEMORY[0x277D84F90];
        }

        v108 = v103;
        MEMORY[0x22AA5D350]();
        if (*((v257 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v257 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        v109 = v257;
        v110 = v105;
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v256 = v74;
        v113 = sub_224B0B5D4(v110);
        v114 = v74[2];
        v115 = (v112 & 1) == 0;
        v116 = v114 + v115;
        if (__OFADD__(v114, v115))
        {
          goto LABEL_127;
        }

        v117 = v112;
        if (v74[3] >= v116)
        {
          if (v111)
          {
            v120 = v256;
            if (v112)
            {
              goto LABEL_58;
            }
          }

          else
          {
            sub_224B256C8();
            v120 = v256;
            if (v117)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          sub_224B0FBB0(v116, v111);
          v118 = sub_224B0B5D4(v110);
          if ((v117 & 1) != (v119 & 1))
          {
            goto LABEL_133;
          }

          v113 = v118;
          v120 = v256;
          if (v117)
          {
LABEL_58:
            *(v120[7] + 8 * v113) = v109;

            goto LABEL_61;
          }
        }

        sub_224B24624(v113, v110, v109, v120);
LABEL_61:
        v121 = v108;
        v122 = v244;
        swift_unknownObjectRetain();
        v123 = v248;
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v256 = v123;
        v125 = sub_224B0B580(v121);
        v127 = v123[2];
        v128 = (v126 & 1) == 0;
        v60 = __OFADD__(v127, v128);
        v129 = v127 + v128;
        v63 = v247;
        v130 = v252;
        if (v60)
        {
          goto LABEL_128;
        }

        v131 = v126;
        if (v123[3] < v129)
        {
          sub_224B0F93C(v129, v124);
          v125 = sub_224B0B580(v121);
          if ((v131 & 1) != (v132 & 1))
          {
            goto LABEL_132;
          }

LABEL_66:
          v73 = v256;
          if ((v131 & 1) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        if (v124)
        {
          goto LABEL_66;
        }

        v135 = v125;
        sub_224B25550();
        v125 = v135;
        v73 = v256;
        if ((v131 & 1) == 0)
        {
LABEL_69:
          sub_224B245DC(v125, v121, v122, v243, v73);
          goto LABEL_70;
        }

LABEL_67:
        v133 = (v73[7] + 16 * v125);
        v134 = v243;
        *v133 = v122;
        v133[1] = v134;

        swift_unknownObjectRelease();
LABEL_70:
        v136 = sub_224DAC248();
        if ((v251 & 0xC000000000000001) != 0)
        {
          if (v251 < 0)
          {
            v137 = v251;
          }

          else
          {
            v137 = v251 & 0xFFFFFFFFFFFFFF8;
          }

          v138 = sub_224DAF838();
          if (__OFADD__(v138, 1))
          {
            goto LABEL_130;
          }

          v130 = sub_224D2C944(v137, v138 + 1);
        }

        v254 = v120;
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v256 = v130;
        v140 = sub_224B0B580(v121);
        v142 = *(v130 + 16);
        v143 = (v141 & 1) == 0;
        v60 = __OFADD__(v142, v143);
        v144 = v142 + v143;
        if (v60)
        {
          goto LABEL_129;
        }

        v145 = v141;
        if (*(v130 + 24) >= v144)
        {
          if ((v139 & 1) == 0)
          {
            v152 = v140;
            sub_224B2553C();
            v140 = v152;
          }
        }

        else
        {
          sub_224B0F928(v144, v139);
          v140 = sub_224B0B580(v121);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_132;
          }
        }

        v147 = v253;
        v148 = v245;
        v82 = v256;
        if (v145)
        {
          v149 = v256[7];
          v150 = v253;
          v151 = *(v149 + 8 * v140);
          *(v149 + 8 * v140) = v136;

          swift_unknownObjectRelease();
          v147 = v150;
        }

        else
        {
          sub_224B31514();
          swift_unknownObjectRelease();
        }

        v81 = v246 + 1;

        (*v228)(v249, v250);
        (*v236)(v255, v147);
        v75 = v254;
        v74 = v254;
        v248 = v73;
        v252 = v82;
        v76 = v73;
        v72 = v82;
        v79 = v227;
        if (v233 == v81)
        {
          goto LABEL_85;
        }
      }
    }

    v82 = v252;
    v254 = v74;
LABEL_85:
    v153 = (v222 - 1) & v222;

    v70 = v153;
    v252 = v82;
    v74 = v254;
    v67 = v221;
    v71 = v220;
    if (v153)
    {
      continue;
    }

    break;
  }

LABEL_33:
  while (1)
  {
    v77 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v77 >= v71)
    {

      return v75;
    }

    v70 = v67[v77];
    ++v65;
    if (v70)
    {
      v65 = v77;
      goto LABEL_37;
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  sub_224DAFDD8();
  __break(1u);
LABEL_133:
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  sub_224DAFDD8();
  __break(1u);
LABEL_134:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224BAC2D4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v37 = v5;
  v38 = v6;
  v35 = v1;
  while (v4)
  {
LABEL_10:
    v10 = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = sub_224DAF838();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v15 = sub_224DAF838();
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v13;
    v16 = __OFADD__(v15, v13);
    v17 = v15 + v13;
    if (v16)
    {
      goto LABEL_39;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_20:
        sub_224DAF838();
      }

LABEL_21:
      v18 = sub_224DAF968();
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v18 = v8;
    v19 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = v12;
    v40 = v18;
    if (v11)
    {
      v24 = v19;
      v25 = sub_224DAF838();
      v19 = v24;
      v22 = v12;
      v23 = v25;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v41)
      {
        goto LABEL_41;
      }

      v26 = v19 + 8 * v20 + 32;
      v39 = v4;
      v36 = v19;
      v43 = v22;
      if (v11)
      {
        if (v23 < 1)
        {
          goto LABEL_43;
        }

        sub_224BB0D68();
        v27 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A88, &unk_224DB9510);
          v28 = v23;
          v29 = v26;
          v30 = sub_224A6996C(v42, v27, v43);
          v32 = *v31;
          (v30)(v42, 0);
          v26 = v29;
          v23 = v28;
          *(v26 + 8 * v27++) = v32;
        }

        while (v28 != v27);
      }

      else
      {
        sub_224DAE8A8();
        swift_arrayInitWithCopy();
      }

      v8 = v40;
      v5 = v37;
      v6 = v38;
      v1 = v35;
      v4 = v39;
      if (v41 >= 1)
      {
        v33 = *(v36 + 16);
        v16 = __OFADD__(v33, v41);
        v34 = v33 + v41;
        if (v16)
        {
          goto LABEL_42;
        }

        *(v36 + 16) = v34;
      }
    }

    else
    {

      v8 = v40;
      v5 = v37;
      v6 = v38;
      if (v41 > 0)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_224BAC690(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v271 = a8;
  v277 = a7;
  v278 = a6;
  v276 = a5;
  v289 = a4;
  v275 = a3;
  v279 = a2;
  v10 = sub_224DAE6E8();
  v259 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v232 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_224DAC268();
  v288 = *(v258 - 8);
  MEMORY[0x28223BE20](v258, v14);
  v260 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB258();
  v280 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v284 = &v232 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v232 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v285 = &v232 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v264 = &v232 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v261 = &v232 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v232 - v35;
  MEMORY[0x28223BE20](v34, v37);
  v257 = &v232 - v38;
  v283 = sub_224DAE4F8();
  v287 = *(v283 - 8);
  v40 = MEMORY[0x28223BE20](v283, v39);
  v42 = &v232 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v232 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A80, &qword_224DB94A8);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v49 = &v232 - v48;
  v50 = sub_224DAE478();
  v52 = MEMORY[0x28223BE20](v50, v51);
  MEMORY[0x28223BE20](v52, v53);
  v286 = v16;
  v290 = a1;
  if (a1)
  {
    v57 = v275 + 64;
    v58 = 1 << *(v275 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v275 + 64);
    v61 = (v58 + 63) >> 6;
    v288 = 0x8000000224DC8EA0;

    v62 = 0;
    v287 = 0xD00000000000002DLL;
    if (v60)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_91;
      }

      if (v63 >= v61)
      {
        break;
      }

      v60 = *(v57 + 8 * v63);
      ++v62;
      if (v60)
      {
        v62 = v63;
        do
        {
LABEL_10:
          v60 &= v60 - 1;
          swift_getObjectType();
          v295 = 0;
          v296 = 0xE000000000000000;
          swift_unknownObjectRetain();
          sub_224DAF938();

          v295 = v287;
          v296 = v288;
          swift_getErrorValue();
          v64 = sub_224D1680C(v293, v294);
          MEMORY[0x22AA5D210](v64);

          sub_224DABD08();
          swift_unknownObjectRelease();
        }

        while (v60);
        continue;
      }
    }

    v65 = v280;
    v66 = v284;
    v67 = v286;
    (*(v280 + 16))(v284, v289 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v286);
    v68 = v276;
    v69 = v290;
    v70 = v290;
    v71 = sub_224DAB228();
    v72 = sub_224DAF288();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v295 = v75;
      *v73 = 138543618;
      *(v73 + 4) = v68;
      *v74 = v68;
      *(v73 + 12) = 2082;
      swift_getErrorValue();
      v76 = v291;
      v77 = v65;
      v78 = v292;
      v79 = v68;
      v80 = v76;
      v69 = v290;
      v81 = sub_224D1680C(v80, v78);
      v83 = sub_224A33F74(v81, v82, &v295);

      *(v73 + 14) = v83;
      _os_log_impl(&dword_224A2F000, v71, v72, "Reload %{public}@: error from extension: %{public}s", v73, 0x16u);
      sub_224A3311C(v74, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v74, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x22AA5EED0](v75, -1, -1);
      MEMORY[0x22AA5EED0](v73, -1, -1);

      (*(v77 + 8))(v284, v286);
    }

    else
    {

      (*(v65 + 8))(v66, v67);
    }

    v231 = v279;
    v278(v69, 1);
    goto LABEL_89;
  }

  v262 = &v232 - v54;
  v253 = v56;
  v274 = v49;
  v254 = v42;
  v238 = v36;
  v246 = v23;
  v247 = v13;
  v243 = v10;
  v241 = a9;
  v84 = v55;
  v85 = sub_224A60D5C(MEMORY[0x277D84F90]);
  v86 = *(v271 + 64);
  v250 = v271 + 64;
  v87 = 1 << *(v271 + 32);
  v88 = -1;
  v297 = v85;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & v86;
  v282 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v249 = (v87 + 63) >> 6;
  v284 = v287 + 8;
  v265 = (v84 + 16);
  v273 = (v84 + 56);
  v263 = (v84 + 48);
  v252 = (v84 + 32);
  v240 = (v288 + 8);
  v256 = v84;
  v251 = (v84 + 8);
  v239 = "Reload placeholders: ";
  v281 = (v280 + 16);
  v280 += 8;
  v237 = 0x8000000224DC8E70;

  LODWORD(v248) = 0;
  v90 = 0;
  v242 = 0;
  *&v93 = 136446466;
  v255 = v93;
  v91 = "Reload %{public}s: missing widget metrics.";
  v92 = "Reload %{public}s: missing file promise.";
  *&v93 = 136446210;
  v94 = "Reload %{public}s: missing widget.";
  v95 = v283;
  v96 = v45;
  v266 = v45;
  v272 = v50;
LABEL_17:
  v97 = v271;
  v98 = v250;
  v99 = v249;
LABEL_18:
  if (v89)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v100 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v100 >= v99)
    {

      v222 = v246;
      (*v281)(v246, v289 + v282, v16);
      v223 = v276;
      v224 = sub_224DAB228();
      v225 = sub_224DAF2A8();

      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        *v226 = 138543362;
        *(v226 + 4) = v223;
        *v227 = v223;
        v228 = v223;
        _os_log_impl(&dword_224A2F000, v224, v225, "%{public}@ reload: end", v226, 0xCu);
        sub_224A3311C(v227, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v227, -1, -1);
        MEMORY[0x22AA5EED0](v226, -1, -1);
      }

      (*v280)(v222, v16);
      v229 = v247;
      if (v248)
      {
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v259 + 104))(v229, *MEMORY[0x277CE3C40], v243);
        v230 = sub_224DAF638();
        v278(v230, 1);
      }

      else
      {
        v278(v297, 0);
      }

      v231 = v279;
LABEL_89:
      swift_beginAccess();
      *(v231 + 16) = 0;

      return;
    }

    v89 = *(v98 + 8 * v100);
    ++v90;
    if (v89)
    {
      v90 = v100;
LABEL_23:
      v101 = (v90 << 9) | (8 * __clz(__rbit64(v89)));
      v102 = *(*(v97 + 48) + v101);
      v103 = *(*(v97 + 56) + v101);
      if (v103 >> 62)
      {
        v105 = v91;
        v269 = *(*(v97 + 56) + v101);
        v106 = v92;
        v236 = v93;
        v107 = v94;
        v108 = sub_224DAF838();
        v94 = v107;
        v93 = v236;
        v92 = v106;
        v103 = v269;
        v91 = v105;
        v99 = v249;
        v98 = v250;
        v104 = v108;
        v97 = v271;
      }

      else
      {
        v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v89 &= v89 - 1;
      if (v104)
      {
        v236 = v93;
        v268 = v103 & 0xC000000000000001;
        v244 = v103 & 0xFFFFFFFFFFFFFF8;
        v270 = v102;

        v109 = 0;
        v269 = v103;
        v267 = v104;
        while (1)
        {
          v110 = v109;
          while (1)
          {
            if (v268)
            {
              v111 = MEMORY[0x22AA5DCC0](v110, v103);
              v112 = (v110 + 1);
              if (__OFADD__(v110, 1))
              {
                goto LABEL_92;
              }
            }

            else
            {
              if (v110 >= *(v244 + 16))
              {
                goto LABEL_93;
              }

              v111 = *(v103 + 8 * v110 + 32);
              v112 = (v110 + 1);
              if (__OFADD__(v110, 1))
              {
                goto LABEL_92;
              }
            }

            v287 = v110;
            v288 = v112;
            v113 = v16;
            v290 = v111;
            sub_224DAE878();
            swift_getKeyPath();
            v114 = sub_224DAE4A8();

            v115 = *v284;
            (*v284)(v96, v95);
            if (!v114)
            {
              v116 = v274;
              (*v273)(v274, 1, 1, v50);
LABEL_44:
              sub_224A3311C(v116, &qword_27D6F4A80, &qword_224DB94A8);
              v118 = v285;
              v16 = v113;
              (*v281)(v285, v289 + v282, v113);
              v119 = v270;
              v120 = v290;
              v121 = sub_224DAB228();
              v122 = sub_224DAF298();

              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v295 = v124;
                *v123 = v255;
                v125 = [v119 extensionBundleIdentifier];
                v126 = sub_224DAEE18();
                v128 = v127;

                v129 = sub_224A33F74(v126, v128, &v295);

                *(v123 + 4) = v129;
                *(v123 + 12) = 2082;
                v130 = sub_224DAE898();
                v132 = sub_224A33F74(v130, v131, &v295);

                *(v123 + 14) = v132;
                _os_log_impl(&dword_224A2F000, v121, v122, "Reload %{public}s:%{public}s): missing widget family.", v123, 0x16u);
                swift_arrayDestroy();
                v133 = v124;
                v95 = v283;
                MEMORY[0x22AA5EED0](v133, -1, -1);
                v134 = v123;
                v96 = v266;
                v16 = v286;
                MEMORY[0x22AA5EED0](v134, -1, -1);

                (*v280)(v285, v16);
              }

              else
              {

                (*v280)(v118, v16);
              }

              v50 = v272;
              goto LABEL_31;
            }

            v116 = v274;
            if (*(v114 + 16))
            {
              (*(v256 + 16))(v274, v114 + ((*(v256 + 80) + 32) & ~*(v256 + 80)), v50);
              v117 = 0;
            }

            else
            {
              v117 = 1;
            }

            (*v273)(v116, v117, 1, v50);
            if ((*v263)(v116, 1, v50) == 1)
            {
              goto LABEL_44;
            }

            v135 = v262;
            (*v252)(v262, v116, v50);
            v136 = v253;
            (*v265)(v253, v135, v50);
            MEMORY[0x22AA5D620](v136);
            v137 = [v270 extensionBundleIdentifier];
            v138 = sub_224DAEE18();
            v139 = v95;
            v141 = v140;

            v295 = v138;
            v296 = v141;
            MEMORY[0x22AA5D210](58, 0xE100000000000000);
            v142 = sub_224DAE898();
            MEMORY[0x22AA5D210](v142);

            MEMORY[0x22AA5D210](58, 0xE100000000000000);
            v143 = NSStringFromWidgetFamily();
            v144 = sub_224DAEE18();
            v146 = v145;

            MEMORY[0x22AA5D210](v144, v146);

            v147 = v296;
            v245 = v295;
            v148 = v254;
            sub_224DAE878();
            swift_getKeyPath();
            v149 = v148;
            v150 = sub_224DAE4A8();

            v115(v149, v139);
            v16 = v113;
            if (!v150)
            {
              goto LABEL_62;
            }

            if (v150 >> 62)
            {
              v151 = sub_224DAF838();
            }

            else
            {
              v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v152 = v275;
            v96 = v266;
            v153 = v147;
            if (!v151)
            {

LABEL_62:
              v187 = v264;
              (*v281)(v264, v289 + v282, v16);
              v188 = v147;

              v189 = sub_224DAB228();
              v190 = sub_224DAF298();

              if (os_log_type_enabled(v189, v190))
              {
                v191 = swift_slowAlloc();
                v192 = swift_slowAlloc();
                v295 = v192;
                *v191 = v236;
                v193 = sub_224A33F74(v245, v188, &v295);

                *(v191 + 4) = v193;
                v16 = v286;
                _os_log_impl(&dword_224A2F000, v189, v190, "Reload %{public}s: missing widget metrics.", v191, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v192);
                MEMORY[0x22AA5EED0](v192, -1, -1);
                MEMORY[0x22AA5EED0](v191, -1, -1);

                (*v280)(v264, v16);
              }

              else
              {

                (*v280)(v187, v16);
              }

              v50 = v272;
              (*v251)(v262, v272);
              v95 = v283;
              v96 = v266;
              goto LABEL_31;
            }

            if ((v150 & 0xC000000000000001) != 0)
            {
              v154 = MEMORY[0x22AA5DCC0](0, v150);
            }

            else
            {
              if (!*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_94;
              }

              v154 = *(v150 + 32);
            }

            v155 = v154;
            v156 = v260;

            if (!*(v152 + 16) || (v157 = sub_224B0B580(v290), (v158 & 1) == 0))
            {
              v177 = v261;
              (*v281)(v261, v289 + v282, v16);

              v178 = sub_224DAB228();
              v179 = sub_224DAF288();

              if (os_log_type_enabled(v178, v179))
              {
                v180 = swift_slowAlloc();
                v181 = swift_slowAlloc();
                v295 = v181;
                *v180 = v236;
                v182 = sub_224A33F74(v245, v153, &v295);

                *(v180 + 4) = v182;
                _os_log_impl(&dword_224A2F000, v178, v179, "Reload %{public}s: missing file promise.", v180, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v181);
                v183 = v181;
                v96 = v266;
                v16 = v286;
                MEMORY[0x22AA5EED0](v183, -1, -1);
                MEMORY[0x22AA5EED0](v180, -1, -1);

                v184 = *v280;
                v185 = &v292;
                goto LABEL_60;
              }

              v184 = *v280;
              v186 = v177;
LABEL_67:
              v184(v186, v16);
              goto LABEL_68;
            }

            v159 = (*(v152 + 56) + 16 * v157);
            v160 = *v159;
            v161 = v159[1];
            swift_unknownObjectRetain();
            v162 = sub_224D24270(v290, v241);
            if (!v162)
            {
              swift_getObjectType();
              sub_224DABD08();
              v194 = v257;
              (*v281)(v257, v289 + v282, v16);

              v195 = sub_224DAB228();
              v196 = sub_224DAF288();

              if (!os_log_type_enabled(v195, v196))
              {

                swift_unknownObjectRelease();

                (*v280)(v194, v16);
                goto LABEL_68;
              }

              v197 = swift_slowAlloc();
              v235 = v160;
              v198 = v195;
              v199 = v197;
              v200 = swift_slowAlloc();
              v295 = v200;
              *v199 = v236;
              v201 = sub_224A33F74(v245, v153, &v295);

              *(v199 + 4) = v201;
              _os_log_impl(&dword_224A2F000, v198, v196, "Reload %{public}s: missing widget.", v199, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v200);
              v202 = v200;
              v96 = v266;
              v16 = v286;
              MEMORY[0x22AA5EED0](v202, -1, -1);
              MEMORY[0x22AA5EED0](v199, -1, -1);

              swift_unknownObjectRelease();
              v184 = *v280;
              v185 = &v289;
LABEL_60:
              v186 = *(v185 - 32);
              goto LABEL_67;
            }

            v163 = v162;
            v164 = v155;
            v165 = v161;
            v166 = v163;
            v167 = v164;
            v168 = sub_224DAC238();
            v169 = MEMORY[0x22AA5E4C0](v168);
            v170 = v153;
            v171 = v156;
            v172 = v169;
            v235 = v160;
            v173 = v160;
            v233 = v165;
            v174 = v165;
            v175 = v245;
            v234 = v170;
            v176 = v242;
            sub_224BAE2F0(v173, v174, v289, v245, v170, &v297, v171, &v295);
            if (v176)
            {
              break;
            }

            v242 = 0;

            objc_autoreleasePoolPop(v172);

            swift_unknownObjectRelease();
            (*v240)(v171, v258);
LABEL_68:
            v50 = v272;
            (*v251)(v262, v272);
            v95 = v283;
LABEL_31:
            v103 = v269;
            v110 = (v287 + 1);
            if (v288 == v267)
            {
              v221 = v242;
              goto LABEL_80;
            }
          }

          v248 = v166;
          v287 = v167;
          v242 = v295;
          objc_autoreleasePoolPop(v172);
          swift_getObjectType();
          v295 = 0;
          v296 = 0xE000000000000000;
          sub_224DAF938();

          v295 = 0xD000000000000029;
          v296 = v237;
          v203 = v234;
          MEMORY[0x22AA5D210](v175, v234);
          sub_224DABD08();

          v204 = v238;
          (*v281)(v238, v289 + v282, v16);

          v205 = v242;
          v206 = v242;
          v207 = sub_224DAB228();
          v208 = sub_224DAF288();

          v209 = v205;

          if (os_log_type_enabled(v207, v208))
          {
            v210 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v233 = v207;
            v212 = v211;
            v213 = swift_slowAlloc();
            v295 = v213;
            *v210 = v255;
            v214 = sub_224A33F74(v245, v203, &v295);

            *(v210 + 4) = v214;
            v96 = v266;
            v215 = v286;
            *(v210 + 12) = 2114;
            v216 = v209;
            v217 = _swift_stdlib_bridgeErrorToNSError();
            *(v210 + 14) = v217;
            *v212 = v217;
            v218 = v208;
            v219 = v233;
            _os_log_impl(&dword_224A2F000, v233, v218, "Reload %{public}s: failed with error %{public}@)", v210, 0x16u);
            sub_224A3311C(v212, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v212, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v213);
            v220 = v213;
            v16 = v215;
            MEMORY[0x22AA5EED0](v220, -1, -1);
            MEMORY[0x22AA5EED0](v210, -1, -1);
            swift_unknownObjectRelease();

            (*v280)(v238, v215);
          }

          else
          {
            swift_unknownObjectRelease();

            (*v280)(v204, v16);
          }

          (*v240)(v260, v258);
          v50 = v272;
          (*v251)(v262, v272);
          v95 = v283;
          v103 = v269;
          v242 = 0;
          v221 = 0;
          LODWORD(v248) = 1;
          v109 = v288;
          if (v288 == v267)
          {
LABEL_80:

            v242 = v221;
            v91 = "Reload %{public}s: missing widget metrics.";
            v92 = "Reload %{public}s: missing file promise.";
            v93 = v236;
            v94 = "Reload %{public}s: missing widget.";
            goto LABEL_17;
          }
        }
      }

      goto LABEL_18;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
}

void sub_224BAE2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v164 = a8;
  v150 = a7;
  v151 = a6;
  v156 = a5;
  v155 = a4;
  v157 = a3;
  v165 = a2;
  v170[5] = *MEMORY[0x277D85DE8];
  v149 = sub_224DAC268();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v8);
  v148 = &v133[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = sub_224DAE6E8();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v10);
  v154 = &v133[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_224DAB258();
  v13 = *(v12 - 8);
  v159 = v12;
  v160 = v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v133[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v133[-v20];
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v133[-v24];
  MEMORY[0x28223BE20](v23, v26);
  v162 = &v133[-v27];
  v28 = sub_224DA9688();
  v163 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v32 = &v133[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = &v133[-v35];
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v133[-v39];
  v42 = MEMORY[0x28223BE20](v38, v41);
  v161 = &v133[-v43];
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v133[-v45];
  swift_getObjectType();
  v47 = v166;
  sub_224DABCF8();
  if (v47)
  {
    goto LABEL_19;
  }

  v143 = v36;
  v166 = v40;
  v146 = v32;
  v137 = v25;
  v136 = v17;
  v139 = v21;
  v165 = 0;
  v48 = v160;
  v49 = *(v160 + 16);
  v140 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v50 = v159;
  v142 = v160 + 16;
  v141 = v49;
  (v49)(v162, v157 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v159);
  v51 = v163;
  v52 = *(v163 + 16);
  v145 = v163 + 16;
  v144 = v52;
  v52(v161, v46, v28);
  v53 = v156;

  v54 = sub_224DAB228();
  v55 = sub_224DAF278();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v48;
  v58 = v51;
  v158 = v28;
  if (v56)
  {
    v59 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v170[0] = v135;
    *v59 = 136446466;
    *(v59 + 4) = sub_224A33F74(v155, v53, v170);
    *(v59 + 12) = 2082;
    v134 = v55;
    v60 = v143;
    v61 = v161;
    v62 = v46;
    v63 = v54;
    sub_224DA9548();
    v64 = v166;
    sub_224DA9568();
    v138 = v62;
    v65 = *(v58 + 8);
    v65(v60, v158);
    sub_224A79F60(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v66 = sub_224DAFD28();
    v68 = v67;
    v65(v64, v158);
    v166 = v65;
    v65(v61, v158);
    v50 = v159;
    v69 = v138;
    v70 = sub_224A33F74(v66, v68, v170);

    *(v59 + 14) = v70;
    _os_log_impl(&dword_224A2F000, v63, v134, "%{public}s: %{public}s", v59, 0x16u);
    v71 = v135;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v71, -1, -1);
    v72 = v59;
    v57 = v160;
    MEMORY[0x22AA5EED0](v72, -1, -1);

    v46 = v69;
  }

  else
  {

    v166 = *(v51 + 8);
    v166(v161, v28);
  }

  v73 = *(v57 + 8);
  v73(v162, v50);
  v74 = [objc_opt_self() defaultManager];
  sub_224DA9658();
  v75 = sub_224DAEDE8();

  v170[0] = 0;
  v76 = [v74 attributesOfItemAtPath:v75 error:v170];

  v77 = v170[0];
  if (!v76)
  {
    v104 = v170[0];
    v101 = sub_224DA9528();

    swift_willThrow();
    v102 = v46;
    v103 = v158;
    goto LABEL_17;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_224A79F60(&qword_281350A08, type metadata accessor for FileAttributeKey, &unk_224DB3068);
  v78 = sub_224DAECE8();
  v79 = v77;

  if (!*(v78 + 16) || (v80 = sub_224B0BA4C(*MEMORY[0x277CCA1C0]), (v81 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_224A33E0C(*(v78 + 56) + 32 * v80, v170);

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v84 = v158;
    goto LABEL_14;
  }

  v82 = v169[0];
  v83 = [v169[0] unsignedLongLongValue];
  v84 = v158;
  if (v83 > 0xA00000)
  {
    v85 = v137;
    (v141)(v137, v157 + v140, v50);
    v86 = v156;

    v87 = v82;
    v88 = sub_224DAB228();
    v89 = sub_224DAF288();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v138 = v46;
      v92 = v91;
      v93 = swift_slowAlloc();
      v170[0] = v93;
      *v90 = 136446466;
      *(v90 + 4) = sub_224A33F74(v155, v86, v170);
      *(v90 + 12) = 2114;
      *(v90 + 14) = v87;
      *v92 = v87;
      v94 = v87;
      _os_log_impl(&dword_224A2F000, v88, v89, "Reload %{public}s: failed with too large archive %{public}@", v90, 0x16u);
      sub_224A3311C(v92, &unk_27D6F69F0, &unk_224DB3900);
      v95 = v92;
      v46 = v138;
      MEMORY[0x22AA5EED0](v95, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x22AA5EED0](v93, -1, -1);
      MEMORY[0x22AA5EED0](v90, -1, -1);

      v73(v85, v159);
    }

    else
    {

      v73(v85, v50);
    }

    v96 = v153;
    v97 = v152;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v97 + 104))(v154, *MEMORY[0x277CE3C40], v96);
    v129 = sub_224DAF638();
    swift_willThrow();

    v166(v46, v158);
    v47 = v129;
    goto LABEL_19;
  }

LABEL_14:
  v98 = v146;
  sub_224A3B79C(0, &qword_281350B08, 0x277CCA9F8);
  v144(v98, v46, v84);
  v99 = v165;
  v100 = sub_224B83FBC(v98);
  v101 = v99;
  if (v99)
  {
    v102 = v46;
    v103 = v84;
LABEL_17:
    v166(v102, v103);
LABEL_18:
    v47 = v101;
LABEL_19:
    *v164 = v47;
    return;
  }

  v105 = v100;
  sub_224DAE6A8();
  v106 = sub_224DAE698();
  v165 = 0;
  v107 = v50;

  v162 = v106;
  v167 = v106;
  sub_224DAEC88();
  sub_224DAEAB8();
  __swift_project_boxed_opaque_existential_1(v170, v170[3]);
  v108 = *(sub_224DAEAC8() + 16);

  if (!v108)
  {
    v118 = v136;
    v141();
    v119 = v156;

    v120 = sub_224DAB228();
    v121 = sub_224DAF288();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = v46;
      v123 = swift_slowAlloc();
      v124 = v50;
      v125 = swift_slowAlloc();
      v169[0] = v125;
      *v123 = 136446210;
      *(v123 + 4) = sub_224A33F74(v155, v119, v169);
      _os_log_impl(&dword_224A2F000, v120, v121, "Reload %{public}s: failed with bad archive", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x22AA5EED0](v125, -1, -1);
      v126 = v123;
      v46 = v122;
      MEMORY[0x22AA5EED0](v126, -1, -1);

      v127 = v136;
      v128 = v124;
    }

    else
    {

      v127 = v118;
      v128 = v50;
    }

    v73(v127, v128);
    v130 = v154;
    v131 = v153;
    v132 = v152;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v132 + 104))(v130, *MEMORY[0x277CE3C40], v131);
    v101 = sub_224DAF638();
    swift_willThrow();

    v166(v46, v158);
    __swift_destroy_boxed_opaque_existential_1(v170);
    goto LABEL_18;
  }

  v109 = v148;
  (*(v147 + 16))(v148, v150, v149);
  sub_224A3317C(v170, v169);
  sub_224A61F30(v169, v109);
  v110 = v139;
  v141();
  sub_224A3317C(v170, v169);
  v111 = v156;

  v112 = sub_224DAB228();
  v113 = sub_224DAF2A8();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v168 = v164;
    *v114 = 136446466;
    *(v114 + 4) = sub_224A33F74(v155, v111, &v168);
    *(v114 + 12) = 2050;
    __swift_project_boxed_opaque_existential_1(v169, v169[3]);
    v115 = *(sub_224DAEAC8() + 16);

    __swift_destroy_boxed_opaque_existential_1(v169);
    *(v114 + 14) = v115;
    _os_log_impl(&dword_224A2F000, v112, v113, "Reload %{public}s: succeeded with %{public}ld entries", v114, 0x16u);
    v116 = v164;
    __swift_destroy_boxed_opaque_existential_1(v164);
    MEMORY[0x22AA5EED0](v116, -1, -1);
    MEMORY[0x22AA5EED0](v114, -1, -1);

    v117 = v139;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v169);

    v117 = v110;
  }

  v73(v117, v107);

  v166(v46, v158);
  __swift_destroy_boxed_opaque_existential_1(v170);
}

uint64_t sub_224BAF38C()
{
  sub_224A3D418(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaceholderReloadStrategy(uint64_t a1)
{
  result = qword_2813557B0;
  if (!qword_2813557B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BAF4A4(uint64_t a1)
{
  result = sub_224DAB258();
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

void *sub_224BAF62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v62 = &v50 - v10;
  v11 = MEMORY[0x277D84F98];
  v63 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v52 = *(v13 + 64);
  v15 = *(v13 + 56);
  v57 = (v52 + 32) & ~v52;
  v58 = v14;
  v16 = a1 + v57;
  v61 = (v13 + 16);
  v51 = xmmword_224DB3100;
  v53 = v13;
  v54 = v4;
  v56 = a2;
  v60 = v15;
  v14(v62, a1 + v57, v4);
  while (1)
  {
    v20 = sub_224DAC248();
    v21 = [v20 kind];

    v22 = sub_224DAEE18();
    v24 = v23;
    if (!*(a2 + 16))
    {
      break;
    }

    v25 = v22;

    v26 = sub_224A3A40C(v25, v24);
    LOBYTE(v25) = v27;

    if ((v25 & 1) == 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

    v28 = *(*(a2 + 56) + 8 * v26);
    v30 = sub_224B0B5D4(v28);
    v31 = v11[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_21;
    }

    v34 = v29;
    if (v11[3] < v33)
    {
      sub_224B0FBC4(v33, 1);
      v11 = v63;
      v35 = sub_224B0B5D4(v28);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_24;
      }

      v30 = v35;
    }

    if (v34)
    {

      v37 = v11[7];
      v38 = *v61;
      (*v61)(v59, v62, v4);
      v39 = *(v37 + 8 * v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v30) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_224AD93E4(0, v39[2] + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v39 = sub_224AD93E4((v41 > 1), v42 + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      a2 = v56;
      v17 = v57;
      v39[2] = v42 + 1;
      v18 = v60;
      v19 = v39 + v17 + v42 * v60;
      v4 = v54;
      v38(v19, v59, v54);
      v13 = v53;
    }

    else
    {
      v55 = v16;
      v43 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3580, &qword_224DB94A0);
      v44 = v57;
      v45 = swift_allocObject();
      *(v45 + 16) = v51;
      (*v61)((v45 + v44), v62, v4);
      v11[(v30 >> 6) + 8] |= 1 << v30;
      *(v11[6] + 8 * v30) = v28;
      *(v11[7] + 8 * v30) = v45;
      v46 = v11[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_22;
      }

      v11[2] = v48;
      v18 = v60;
      v13 = v43;
      v16 = v55;
      a2 = v56;
    }

    v16 += v18;
    if (!--v12)
    {
      return v11;
    }

    v58(v62, v16, v4);
  }

  __break(1u);
LABEL_24:

  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224BAFA30(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v161 = a5;
  v150 = a3;
  v169 = a2;
  v13 = a9;
  v153 = sub_224DAE6E8();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v14);
  v154 = v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_224DAC268();
  v173 = *(v168 - 8);
  v17 = MEMORY[0x28223BE20](v168, v16);
  v165 = v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v142 - v20;
  v22 = sub_224DAB258();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v147 = v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v148 = v142 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v172 = v142 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v171 = v142 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v38 = v142 - v37;
  v39 = swift_allocObject();
  v39[2] = a7;
  v39[3] = a8;
  v160 = a8;
  v39[4] = a9;
  v40 = *(v23 + 16);
  v163 = a6;
  v155 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v166 = v22;
  v157 = v23 + 16;
  v156 = v40;
  v40(v38, a6 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v22);
  v149 = a7;

  v41 = a1;
  v42 = sub_224DAB228();
  v43 = sub_224DAF2A8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138543362;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&dword_224A2F000, v42, v43, "Reload %{public}@: begin", v44, 0xCu);
    sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    v47 = v44;
    v13 = a9;
    MEMORY[0x22AA5EED0](v47, -1, -1);
  }

  v48 = *(v23 + 8);
  v158 = v23 + 8;
  v48(v38, v166);
  v49 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v175 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000015;
  v175 = 0x8000000224DC8E30;
  v159 = v41;
  v50 = [v41 description];
  v51 = sub_224DAEE18();
  v53 = v52;

  MEMORY[0x22AA5D210](v51, v53);

  *(v49 + 16) = sub_224DAD188();
  v54 = v161;
  v55 = v161 & 0xC000000000000001;
  if ((v161 & 0xC000000000000001) != 0)
  {
    if (sub_224DAF838() >= 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v64 = v48;
    v65 = v171;
    v156(v171, v163 + v155, v166);
    v66 = v159;
    v67 = sub_224DAB228();
    v68 = sub_224DAF288();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138543362;
      *(v69 + 4) = v66;
      *v70 = v66;
      v71 = v66;
      _os_log_impl(&dword_224A2F000, v67, v68, "Reload %{public}@: No descriptors available", v69, 0xCu);
      sub_224A3311C(v70, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v70, -1, -1);
      MEMORY[0x22AA5EED0](v69, -1, -1);
    }

    v64(v65, v166);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v152 + 104))(v154, *MEMORY[0x277CE3C40], v153);
    goto LABEL_15;
  }

  if (*(v161 + 16) < 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!*(v163 + 16))
  {
    v156(v172, v163 + v155, v166);
    v72 = v159;
    v73 = sub_224DAB228();
    v74 = sub_224DAF288();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138543362;
      *(v75 + 4) = v72;
      *v76 = v72;
      v77 = v72;
      _os_log_impl(&dword_224A2F000, v73, v74, "Reload %{public}@: Failed to find widgetEnvironment provider", v75, 0xCu);
      sub_224A3311C(v76, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v76, -1, -1);
      MEMORY[0x22AA5EED0](v75, -1, -1);
    }

    v48(v172, v166);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v152 + 104))(v154, *MEMORY[0x277CE3C40], v153);
LABEL_15:
    v78 = sub_224DAF638();
    v160();

    goto LABEL_16;
  }

  v143 = v48;
  v144 = v49;
  v145 = v13;
  v146 = v39;
  sub_224BAA780(v54);
  v142[1] = 0;
  v57 = v54;
  v58 = sub_224AE8AF4(v56);

  if (v55)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224B07048();
    sub_224DAF1F8();
    v59 = v181;
    v60 = v182;
    v61 = v183;
    v62 = v184;
    v63 = v185;
  }

  else
  {
    v79 = -1 << *(v57 + 32);
    v60 = v57 + 56;
    v61 = ~v79;
    v80 = -v79;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v63 = v81 & *(v57 + 56);

    v62 = 0;
    v59 = v57;
  }

  v167 = 0;
  v172 = v61;
  v82 = (v61 + 64) >> 6;
  if (v59 < 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v83 = v62;
    v84 = v63;
    v85 = v62;
    if (!v63)
    {
      break;
    }

LABEL_26:
    v86 = (v84 - 1) & v84;
    v87 = *(*(v59 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v84)))));
    if (!v87)
    {
LABEL_32:
      sub_224A3B7E4(v59);
      v171 = *(v169 + 16);
      if (v171)
      {
        v90 = 0;
        v170 = *(v173 + 16);
        v151 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v169 += v151;
        v172 = *(v173 + 72);
        v173 += 16;
        v91 = v58 + 56;
        v92 = (v173 - 8);
        v162 = (v173 + 16);
        v164 = MEMORY[0x277D84F90];
        v93 = v168;
        v170(v21, v169, v168);
        while (1)
        {
          v94 = sub_224DAC248();
          v95 = [v94 kind];

          v96 = sub_224DAEE18();
          v98 = v97;

          if (!*(v58 + 16))
          {

            (*v92)(v21, v93);
            goto LABEL_35;
          }

          sub_224DAFE68();
          sub_224DAEE78();
          v99 = sub_224DAFEA8();
          v100 = -1 << *(v58 + 32);
          v101 = v99 & ~v100;
          if (((*(v91 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
          {
            break;
          }

          v102 = ~v100;
          while (1)
          {
            v103 = (*(v58 + 48) + 16 * v101);
            v104 = *v103 == v96 && v103[1] == v98;
            if (v104 || (sub_224DAFD88() & 1) != 0)
            {
              break;
            }

            v101 = (v101 + 1) & v102;
            if (((*(v91 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          v105 = sub_224DAC248();
          [v105 family];

          if ((CHSWidgetFamilyMaskFromWidgetFamily() & ~v167) != 0)
          {
            goto LABEL_53;
          }

          v106 = *v162;
          v93 = v168;
          (*v162)(v165, v21, v168);
          v107 = v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v107;
          v180 = v107;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA224(0, v107[2] + 1, 1);
            v93 = v168;
            v109 = v180;
          }

          v111 = v109[2];
          v110 = v109[3];
          if (v111 >= v110 >> 1)
          {
            sub_224ADA224((v110 > 1), v111 + 1, 1);
            v93 = v168;
            v109 = v180;
          }

          v109[2] = v111 + 1;
          v164 = v109;
          v106(v109 + v151 + v111 * v172, v165, v93);
LABEL_35:
          if (++v90 == v171)
          {
            goto LABEL_55;
          }

          v170(v21, v169 + v172 * v90, v93);
        }

LABEL_46:

LABEL_53:
        v93 = v168;
        (*v92)(v21, v168);
        goto LABEL_35;
      }

      v164 = MEMORY[0x277D84F90];
LABEL_55:

      if (!v164[2])
      {

        v124 = v148;
        v156(v148, v163 + v155, v166);
        v125 = v159;
        v126 = sub_224DAB228();
        v127 = sub_224DAF288();

        v128 = os_log_type_enabled(v126, v127);
        v129 = v160;
        if (v128)
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          *v130 = 138543362;
          *(v130 + 4) = v125;
          *v131 = v125;
          v132 = v125;
          _os_log_impl(&dword_224A2F000, v126, v127, "Reload %{public}@: No keys to reload", v130, 0xCu);
          sub_224A3311C(v131, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v131, -1, -1);
          MEMORY[0x22AA5EED0](v130, -1, -1);
        }

        v143(v124, v166);
        v133 = sub_224A60D5C(MEMORY[0x277D84F90]);
        v134 = v149;
        swift_beginAccess();
        *(v134 + 16) = v133;

        (v129)(0);

        return;
      }

      v112 = v163;
      v113 = sub_224BAAAE8(v164, v161);
      v115 = v114;
      v117 = v116;

      v118 = v160;
      v119 = v146;
      v120 = v159;
      if (*(v117 + 16))
      {
        sub_224BAC2D4(v113);
        sub_224DAE8A8();
        v78 = sub_224DAEFF8();

        v121 = swift_allocObject();
        v121[2] = v144;
        v121[3] = v117;
        v121[4] = v112;
        v121[5] = v120;
        v121[6] = sub_224B819F8;
        v121[7] = v119;
        v121[8] = v113;
        v121[9] = v115;
        v178 = sub_224BB0D34;
        v179 = v121;
        aBlock = MEMORY[0x277D85DD0];
        v175 = 1107296256;
        v176 = sub_224BC6D2C;
        v177 = &block_descriptor_20;
        v122 = _Block_copy(&aBlock);
        v123 = v120;

        [v150 getPlaceholdersWithRequests:v78 completion:v122];
        _Block_release(v122);
      }

      else
      {

        v135 = v147;
        v156(v147, v112 + v155, v166);
        v136 = v120;
        v137 = sub_224DAB228();
        v138 = sub_224DAF288();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          *v139 = 138543362;
          *(v139 + 4) = v136;
          *v140 = v136;
          v141 = v136;
          _os_log_impl(&dword_224A2F000, v137, v138, "Reload %{public}@: Failed to create any archive file promises", v139, 0xCu);
          sub_224A3311C(v140, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v140, -1, -1);
          MEMORY[0x22AA5EED0](v139, -1, -1);
        }

        v143(v135, v166);
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v152 + 104))(v154, *MEMORY[0x277CE3C40], v153);
        v78 = sub_224DAF638();
        v118();
      }

LABEL_16:

      return;
    }

    while (1)
    {
      v89 = [v87 supportedFamilies];

      v167 |= v89;
      v62 = v85;
      v63 = v86;
      if ((v59 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_28:
      v88 = sub_224DAF878();
      if (v88)
      {
        v180 = v88;
        sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
        swift_dynamicCast();
        v87 = aBlock;
        v85 = v62;
        v86 = v63;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    v85 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

    if (v85 >= v82)
    {
      goto LABEL_32;
    }

    v84 = *(v60 + 8 * v85);
    ++v83;
    if (v84)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

unint64_t sub_224BB0D68()
{
  result = qword_27D6F4A90;
  if (!qword_27D6F4A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A88, &unk_224DB9510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4A90);
  }

  return result;
}

uint64_t sub_224BB0DCC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  __swift_destroy_boxed_opaque_existential_1(v0 + 41);
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  __swift_destroy_boxed_opaque_existential_1(v0 + 51);

  return swift_deallocClassInstance();
}

uint64_t sub_224BB0E70(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  sub_224A8FA54(a3, v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_224A3311C(v8, &qword_27D6F3AE8, &unk_224DB9600);
  }

  return a4(a1, a2 & 1);
}

uint64_t sub_224BB0F28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService));
  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService));
}

uint64_t sub_224BB0F6C()
{
  sub_224A3D418(v0[2], v0[3]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService;

  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileTimelineReloadStrategy(uint64_t a1)
{
  result = qword_281353F80;
  if (!qword_281353F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BB1100()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  __swift_allocate_value_buffer(v2, qword_281365198);
  __swift_project_value_buffer(v2, qword_281365198);
  sub_224DA9FF8();
  return sub_224DAA228();
}

unint64_t sub_224BB11E8()
{
  result = qword_281351860;
  if (!qword_281351860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351860);
  }

  return result;
}

uint64_t sub_224BB125C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_224B44674(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  result = swift_dynamicCast();
  if (result)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281365120);
    v9 = sub_224DAB228();
    v10 = sub_224DAF2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_224A2F000, v9, v10, "Discovering descriptors for remote host", v11, 2u);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }

    sub_224A3317C(v4 + 56, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_224DAF938();

    MEMORY[0x22AA5D210]();

    MEMORY[0x22AA5D210](0x4965636976656420, 0xEB00000000203A44);
    MEMORY[0x22AA5D210](a2, a3);
    MEMORY[0x22AA5D210](0x7473657571657220, 0xEA00000000006465);
    sub_224DACA98();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

unint64_t sub_224BB1500()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v13 - v2;
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DABBB8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_224BB1770(v3);
    v9 = 0xE600000000000000;
    v10 = 0x3E656E6F6E3CLL;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_224B558C8();
    v10 = sub_224DAFD28();
    v9 = v11;
    (*(v5 + 8))(v8, v4);
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_224DAF938();

  v13 = 0xD000000000000013;
  v14 = 0x8000000224DC9060;
  MEMORY[0x22AA5D210](v10, v9);

  return v13;
}

uint64_t sub_224BB1770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BB17D8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281351540);
  __swift_project_value_buffer(v0, qword_281351540);
  return sub_224DAB238();
}

uint64_t sub_224BB185C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5960, &unk_224DB97B0);
    sub_224BB5920(&qword_281350F18, &unk_27D6F5960, &unk_224DB97B0);
    v1 = sub_224DAB3A8();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_224BB190C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AB8, &unk_224DB97C0);
    sub_224BB5920(&qword_281350F20, &qword_27D6F4AB8, &unk_224DB97C0);
    v1 = sub_224DAB3A8();
    *(v0 + 40) = v1;
  }

  return v1;
}

void *sub_224BB19BC()
{
  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v1 = sub_224DAD888();
  if (*(v1 + 16))
  {
    v2 = sub_224BB1A6C(v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
    sub_224DAB348();
  }

  return v2;
}

void *sub_224BB1A6C(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3520, &qword_224DB3AB8);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v3);
  v48 = v40 - v4;
  v54 = sub_224DACE38();
  v5 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v6);
  v53 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAD3A8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v46 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v49 = v40 - v14;
  v55 = v1;
  v15 = *(v1 + 96);
  v61 = a1;

  os_unfair_lock_lock((v15 + 24));
  sub_224BB58BC((v15 + 16), &v62);
  os_unfair_lock_unlock((v15 + 24));
  v16 = v62;

  v18 = *(v16 + 16);
  if (v18)
  {
    v21 = *(v9 + 16);
    v19 = v9 + 16;
    v20 = v21;
    v22 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v40[1] = v16;
    v23 = v16 + v22;
    v52 = (v5 + 8);
    v24 = *(v19 + 56);
    v50 = (v19 - 8);
    v51 = v24;
    v44 = *MEMORY[0x277CF99E8];
    v43 = (v45 + 104);
    v42 = v45 + 32;
    v56 = MEMORY[0x277D84F90];
    *&v17 = 136446466;
    v41 = v17;
    v25 = v49;
    v57 = v19;
    v58 = v21;
    do
    {
      v59 = v23;
      v60 = v18;
      v20(v25);
      v26 = v20;
      __swift_project_boxed_opaque_existential_1((v55 + 48), *(v55 + 72));
      v27 = v8;
      v28 = v53;
      sub_224DAD388();
      sub_224DAD4B8();
      (*v52)(v28, v54);
      v29 = v48;
      v26(v48, v25, v27);
      (*v43)(v29, v44, v47);
      v30 = v56;
      v8 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_224AD9448(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v56 = v30;
      v20 = v58;
      if (v32 >= v31 >> 1)
      {
        v56 = sub_224AD9448((v31 > 1), v32 + 1, 1, v56);
      }

      (*v50)(v25, v8);
      v33 = v56;
      v56[2] = v32 + 1;
      (*(v45 + 32))(v33 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v32, v48, v47);
      v23 = v59 + v51;
      v18 = v60 - 1;
    }

    while (v60 != 1);

    v34 = v56;
    v62 = v56;

    sub_224DAB348();
  }

  else
  {

    if (qword_281351538 != -1)
    {
      swift_once();
    }

    v35 = sub_224DAB258();
    __swift_project_value_buffer(v35, qword_281351540);
    v36 = sub_224DAB228();
    v37 = sub_224DAF278();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224A2F000, v36, v37, "No extensions added or updated, no changes to publish", v38, 2u);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v34;
}

double sub_224BB2284(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD5A8();
  v2 = sub_224DACF78();

  v3 = sub_224BB543C(v2, sub_224B2D9F8, sub_224B2D9F8);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD5B8();
  v4 = sub_224DACF78();

  v5 = sub_224BB543C(v4, sub_224B2D9E4, sub_224B2D9E4);

  if (qword_281351538 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281351540);

    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();
    v61 = v5;

    v9 = v3;
    v60 = v3;
    if (!os_log_type_enabled(v7, v8))
    {
      break;
    }

    v56 = v8;
    log = v7;
    v10 = MEMORY[0x277D84F90];
    v11 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v63[0] = v55;
    *v11 = 136446466;
    v62 = v10;
    v3 += 64;
    v12 = 1 << *(v9 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v9 + 64);
    v5 = (v12 + 63) >> 6;

    v15 = 0;
    v16 = v10;
    if (v14)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v5)
      {
        v9 = v60;

        v54 = sub_224DAF538();
        v19 = MEMORY[0x22AA5D380](v16);
        v21 = v20;

        v22 = sub_224A33F74(v19, v21, v63);

        *(v11 + 4) = v22;
        *(v11 + 12) = 2082;
        v62 = v10;
        v3 = v61 + 64;
        v23 = 1 << *(v61 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        v25 = v24 & *(v61 + 64);
        v5 = (v23 + 63) >> 6;

        v26 = 0;
        if (v25)
        {
          goto LABEL_23;
        }

        while (1)
        {
          do
          {
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_57;
            }

            if (v27 >= v5)
            {

              v29 = MEMORY[0x22AA5D380](v10, v54);
              v31 = v30;

              v32 = sub_224A33F74(v29, v31, v63);

              *(v11 + 14) = v32;
              _os_log_impl(&dword_224A2F000, log, v56, "Attempting to load remote widget descriptors: %{public}s,  remote control descriptors: %{public}s", v11, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA5EED0](v55, -1, -1);
              MEMORY[0x22AA5EED0](v11, -1, -1);

              goto LABEL_28;
            }

            v25 = *(v3 + 8 * v27);
            ++v26;
          }

          while (!v25);
          v26 = v27;
          do
          {
LABEL_23:
            v28 = *(*(v61 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
            MEMORY[0x22AA5D350]();
            if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_224DAF038();
              v9 = v60;
            }

            v25 &= v25 - 1;
            sub_224DAF078();
            v10 = v62;
          }

          while (v25);
        }
      }

      v14 = *(v3 + 8 * v17);
      ++v15;
      if (v14)
      {
        v15 = v17;
        do
        {
LABEL_11:
          v18 = *(*(v60 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
          MEMORY[0x22AA5D350]();
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          v14 &= v14 - 1;
          sub_224DAF078();
          v16 = v62;
        }

        while (v14);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_28:

  v33 = sub_224AEA20C();

  v34 = sub_224AEA20C();
  sub_224A5B11C(v34, v33);
  if ((v35 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224BB58D8(&unk_2813509A0, 255, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    v9 = v60;
    sub_224DAF1F8();
    v35 = v63[0];
    v36 = v63[1];
    v37 = v63[2];
    v5 = v63[3];
    v38 = v63[4];
  }

  else
  {
    v5 = 0;
    v39 = -1 << *(v35 + 32);
    v36 = v35 + 56;
    v37 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v38 = v41 & *(v35 + 56);
  }

  v3 = (v37 + 64) >> 6;
  loga = v35;
  while (2)
  {
    if ((v35 & 0x8000000000000000) == 0)
    {
      v42 = v5;
      v43 = v38;
      v44 = v5;
      if (!v38)
      {
        while (1)
        {
          v44 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v44 >= v3)
          {
            goto LABEL_54;
          }

          v43 = *(v36 + 8 * v44);
          ++v42;
          if (v43)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
        goto LABEL_56;
      }

LABEL_41:
      v45 = (v43 - 1) & v43;
      v46 = *(*(v35 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
      if (!v46)
      {
        break;
      }

      goto LABEL_45;
    }

    if (sub_224DAF878())
    {
      sub_224DAF538();
      swift_dynamicCast();
      v46 = v62;
      v44 = v5;
      v45 = v38;
      if (v62)
      {
LABEL_45:
        if (*(v9 + 16))
        {
          sub_224A3E7EC(v46);
          v47 = v57;
          if (v48)
          {
          }
        }

        else
        {
          v47 = v57;
        }

        if (*(v61 + 16))
        {
          sub_224A3E7EC(v46);
          if (v49)
          {
          }
        }

        sub_224DAE9F8();
        v50 = sub_224DAE9A8();
        v51 = *(v47 + 96);

        os_unfair_lock_lock((v51 + 24));
        sub_224BB4ED8((v51 + 16), v46, &v62);
        os_unfair_lock_unlock((v51 + 24));
        v52 = v62;

        if (v52[2])
        {
          v62 = v52;
          sub_224DAB348();
        }

        v5 = v44;
        v38 = v45;
        v35 = loga;
        v9 = v60;
        continue;
      }
    }

    break;
  }

LABEL_54:
  sub_224A3B7E4(loga);

  return result;
}

uint64_t sub_224BB2A3C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 96);

  os_unfair_lock_lock((v4 + 24));
  sub_224BB4ED8((v4 + 16), a2, &v7);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v7;

  if (*(v5 + 16))
  {
    v7 = v5;
    sub_224DAB348();
  }

  else
  {
  }
}

uint64_t sub_224BB2AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v104 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v110 = &v103 - v7;
  v8 = sub_224DA9908();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v113 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAD3A8();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v112 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v122 = &v103 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v111 = &v103 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v131 = &v103 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v107 = &v103 - v26;
  v27 = sub_224DACE38();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v117 = &v103 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v115 = &v103 - v36;
  result = MEMORY[0x28223BE20](v35, v37);
  v42 = &v103 - v39;
  v103 = a1;
  v132 = *a1;
  v43 = *(a2 + 16);
  if (v43)
  {
    v105 = v40;
    v45 = *(v28 + 16);
    v44 = v28 + 16;
    v46 = a2 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
    v47 = v45;
    v130 = (v44 - 8);
    v133 = (v12 + 16);
    v114 = *(v44 + 56);
    v127 = (v12 + 8);
    v116 = v12;
    v109 = v12 + 32;
    v123 = MEMORY[0x277D84F90];
    *&v41 = 138543362;
    v108 = v41;
    *&v41 = 136446210;
    v106 = v41;
    v124 = v44;
    v125 = v11;
    v48 = v115;
    v118 = &v103 - v39;
    v128 = v45;
    while (1)
    {
      v126 = v46;
      v47(v42);
      if (qword_281351538 != -1)
      {
        swift_once();
      }

      v50 = sub_224DAB258();
      __swift_project_value_buffer(v50, qword_281351540);
      (v47)(v48, v42, v27);
      v51 = v27;
      v52 = sub_224DAB228();
      v53 = sub_224DAF2A8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = v108;
        v56 = sub_224DACDC8();
        v129 = *v130;
        v129(v48, v51);
        *(v54 + 4) = v56;
        *v55 = v56;
        _os_log_impl(&dword_224A2F000, v52, v53, "Attempting to add extension: %{public}@", v54, 0xCu);
        sub_224A3311C(v55, &unk_27D6F69F0, &unk_224DB3900);
        v57 = v55;
        v11 = v125;
        MEMORY[0x22AA5EED0](v57, -1, -1);
        v58 = v54;
        v42 = v118;
        MEMORY[0x22AA5EED0](v58, -1, -1);
      }

      else
      {

        v129 = *v130;
        v129(v48, v51);
      }

      v27 = v51;
      v59 = sub_224DACDC8();
      v60 = v59;
      v61 = v132;
      if (!*(v132 + 16))
      {
        break;
      }

      v62 = sub_224A3E7EC(v59);
      if ((v63 & 1) == 0)
      {
        break;
      }

      v64 = v107;
      (*(v116 + 16))(v107, *(v61 + 56) + *(v116 + 72) * v62, v11);

      v65 = v117;
      sub_224DAD388();
      v66 = sub_224DACDF8();
      v129(v65, v27);
      if ((v66 & 1) == 0)
      {
        v121 = v43;
        (*v127)(v64, v11);
        goto LABEL_17;
      }

      v67 = v105;
      v128(v105, v42, v27);
      v68 = sub_224DAB228();
      v69 = sub_224DAF2A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = v108;
        v121 = v68;
        v72 = sub_224DACDC8();
        v73 = v129;
        v129(v67, v27);
        *(v70 + 4) = v72;
        *v71 = v72;
        v74 = v121;
        _os_log_impl(&dword_224A2F000, v121, v69, "Skipping - Extension already exists and did not change: %{public}@", v70, 0xCu);
        sub_224A3311C(v71, &unk_27D6F69F0, &unk_224DB3900);
        v75 = v71;
        v11 = v125;
        MEMORY[0x22AA5EED0](v75, -1, -1);
        v76 = v70;
        v42 = v118;
        MEMORY[0x22AA5EED0](v76, -1, -1);

        (*v127)(v107, v11);
        result = v73(v42, v27);
      }

      else
      {

        v49 = v129;
        v129(v67, v27);
        (*v127)(v107, v11);
        result = v49(v42, v27);
      }

      v48 = v115;
LABEL_5:
      v46 = v126 + v114;
      v43 = (v43 - 1);
      v47 = v128;
      if (!v43)
      {
        goto LABEL_27;
      }
    }

    v121 = v43;

LABEL_17:
    sub_224DADC18();
    sub_224DA98F8();
    sub_224DACDC8();
    sub_224DACD78();
    v77 = sub_224DADBF8();
    v128(v117, v42, v27);

    v78 = v131;
    v120 = v77;
    sub_224DAD378();
    v79 = *v133;
    v80 = v111;
    (*v133)(v111, v78, v11);
    v81 = sub_224DAB228();
    v82 = sub_224DAF2A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v134 = v84;
      *v83 = v106;
      sub_224BB58D8(&qword_27D6F4AB0, 255, MEMORY[0x277CF9CA8], MEMORY[0x277CF9CB0]);
      v85 = sub_224DAFD28();
      v87 = v86;
      v119 = *v127;
      v119(v80, v125);
      v88 = sub_224A33F74(v85, v87, &v134);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_224A2F000, v81, v82, "Added extension: %{public}s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v89 = v84;
      v11 = v125;
      MEMORY[0x22AA5EED0](v89, -1, -1);
      MEMORY[0x22AA5EED0](v83, -1, -1);
    }

    else
    {

      v119 = *v127;
      v119(v80, v11);
    }

    v90 = v79;
    v79(v122, v131, v11);
    v91 = v123;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v115;
    v43 = v121;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v91 = sub_224AD9780(0, v91[2] + 1, 1, v91);
    }

    v94 = v91[2];
    v93 = v91[3];
    v95 = v116;
    if (v94 >= v93 >> 1)
    {
      v102 = sub_224AD9780((v93 > 1), v94 + 1, 1, v91);
      v95 = v116;
      v91 = v102;
    }

    v91[2] = v94 + 1;
    v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v123 = v91;
    (*(v95 + 32))(v91 + v96 + *(v95 + 72) * v94, v122, v11);
    sub_224BB58D8(&qword_27D6F4AA8, 255, MEMORY[0x277CF9CA8], MEMORY[0x277CF9CA0]);
    v97 = v131;
    v98 = sub_224DAE3D8();
    v99 = v112;
    v90(v112, v97, v11);
    v100 = v132;
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v100;
    sub_224B20F3C(v99, v98, v101);

    v119(v97, v11);
    v42 = v118;
    result = (v129)(v118, v27);
    v132 = v134;
    goto LABEL_5;
  }

  v123 = MEMORY[0x277D84F90];
LABEL_27:
  *v103 = v132;
  *v104 = v123;
  return result;
}

uint64_t sub_224BB36A8(uint64_t a1)
{
  v148 = *MEMORY[0x277D85DE8];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3520, &qword_224DB3AB8);
  v118 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v3);
  v126 = &v114 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v141 = &v114 - v7;
  v8 = sub_224DA9688();
  v9 = *(v8 - 1);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v117 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v114 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v114 - v18;
  v20 = sub_224DAD3A8();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v124 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v128 = &v114 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v122 = &v114 - v29;
  v142 = v1;
  v30 = *(v1 + 96);
  v145 = a1;

  os_unfair_lock_lock((v30 + 24));
  sub_224BB5974((v30 + 16), v146);
  v143 = 0;
  os_unfair_lock_unlock((v30 + 24));
  v31 = v146[0];

  v144 = v31[2];
  if (v144)
  {
    v116 = v16;
    swift_beginAccess();
    v32 = 0;
    v130 = (v9 + 48);
    v121 = (v9 + 32);
    v120 = (v9 + 16);
    v123 = (v9 + 8);
    v140 = (v21 + 8);
    *&v33 = 136446210;
    v114 = v33;
    *&v33 = 136446466;
    v119 = v33;
    v133 = v20;
    v34 = v122;
    v35 = v20;
    v132 = v31;
    v136 = v21 + 16;
    v135 = v8;
    v125 = v19;
    v131 = v21;
    do
    {
      if (v32 >= v31[2])
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v129 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v139 = *(v21 + 72);
      v36 = *(v21 + 16);
      v36(v34, v31 + v129 + v139 * v32, v35);
      sub_224BB5990(v142 + 104, v146);
      if (!v147)
      {
        goto LABEL_39;
      }

      __swift_project_boxed_opaque_existential_1(v146, v147);
      v138 = sub_224BB58D8(&qword_27D6F4AA8, 255, MEMORY[0x277CF9CA8], MEMORY[0x277CF9CA0]);
      v37 = sub_224DAE3D8();
      v38 = v141;
      sub_224DAD408();

      v39 = v135;
      if ((*v130)(v38, 1, v135) == 1)
      {
        v137 = *v140;
        v137(v34, v35);
        sub_224A3311C(v141, &unk_27D6F4680, &unk_224DB4610);
        __swift_destroy_boxed_opaque_existential_1(v146);
        v21 = v131;
      }

      else
      {
        v40 = v125;
        (*v121)(v125, v141, v39);
        __swift_destroy_boxed_opaque_existential_1(v146);
        v41 = [objc_opt_self() defaultManager];
        v42 = sub_224DA95F8();
        v146[0] = 0;
        v43 = [v41 removeItemAtURL:v42 error:v146];

        if (v43)
        {
          v44 = qword_281351538;
          v45 = v146[0];
          v46 = v116;
          if (v44 != -1)
          {
            swift_once();
          }

          v47 = sub_224DAB258();
          __swift_project_value_buffer(v47, qword_281351540);
          (*v120)(v46, v40, v39);
          v48 = sub_224DAB228();
          v49 = sub_224DAF2A8();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = v46;
            v52 = swift_slowAlloc();
            v146[0] = v52;
            *v50 = v114;
            v53 = sub_224DA9658();
            v55 = v54;
            v56 = *v123;
            (*v123)(v51, v135);
            v57 = v53;
            v58 = v125;
            v59 = sub_224A33F74(v57, v55, v146);

            *(v50 + 4) = v59;
            _os_log_impl(&dword_224A2F000, v48, v49, "Removed remote extension data directory: %{public}s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v52);
            MEMORY[0x22AA5EED0](v52, -1, -1);
            v60 = v50;
            v61 = v135;
            MEMORY[0x22AA5EED0](v60, -1, -1);

            v56(v58, v61);
          }

          else
          {

            v82 = *v123;
            (*v123)(v46, v39);
            v82(v40, v39);
          }

          v34 = v122;
          v35 = v133;
          v137 = *v140;
          v137(v122, v133);
        }

        else
        {
          v134 = v36;
          v62 = v146[0];
          v63 = sub_224DA9528();

          swift_willThrow();
          if (qword_281351538 != -1)
          {
            swift_once();
          }

          v143 = 0;
          v64 = sub_224DAB258();
          __swift_project_value_buffer(v64, qword_281351540);
          v65 = v117;
          (*v120)(v117, v40, v39);
          v66 = v63;
          v67 = sub_224DAB228();
          v68 = sub_224DAF288();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = v65;
            v70 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v146[0] = v137;
            *v70 = v119;
            v71 = sub_224DA9658();
            v73 = v72;
            v74 = *v123;
            (*v123)(v69, v135);
            v75 = sub_224A33F74(v71, v73, v146);
            v76 = v125;

            *(v70 + 4) = v75;
            *(v70 + 12) = 2114;
            v77 = v63;
            v78 = _swift_stdlib_bridgeErrorToNSError();
            *(v70 + 14) = v78;
            v79 = v115;
            *v115 = v78;
            _os_log_impl(&dword_224A2F000, v67, v68, "Failed to remove remote extension data directory %{public}s: %{public}@", v70, 0x16u);
            sub_224A3311C(v79, &unk_27D6F69F0, &unk_224DB3900);
            v80 = v135;
            MEMORY[0x22AA5EED0](v79, -1, -1);
            v81 = v137;
            __swift_destroy_boxed_opaque_existential_1(v137);
            MEMORY[0x22AA5EED0](v81, -1, -1);
            MEMORY[0x22AA5EED0](v70, -1, -1);

            v74(v76, v80);
          }

          else
          {

            v83 = *v123;
            (*v123)(v65, v39);
            v83(v40, v39);
          }

          v34 = v122;
          v35 = v133;
          v137 = *v140;
          v137(v122, v133);
          v36 = v134;
        }

        v21 = v131;
      }

      ++v32;
      v31 = v132;
    }

    while (v144 != v32);
    LODWORD(v131) = *MEMORY[0x277CF99F0];
    v130 = (v118 + 104);
    v125 = (v118 + 32);
    v135 = MEMORY[0x277D84F90];
    v84 = v132 + v129;
    v85 = v128;
    v134 = v36;
    do
    {
      v141 = v84;
      v36(v85, v84, v35);
      __swift_project_boxed_opaque_existential_1((v142 + 48), *(v142 + 72));
      v88 = sub_224DAE3D8();
      v89 = v85;
      v90 = v36;
      v91 = v143;
      sub_224DAD4A8();
      v92 = v91;
      if (v91)
      {

        if (qword_281351538 != -1)
        {
          swift_once();
        }

        v93 = sub_224DAB258();
        __swift_project_value_buffer(v93, qword_281351540);
        v94 = v124;
        v85 = v128;
        v36 = v134;
        v134(v124, v128, v35);
        v95 = v92;
        v96 = sub_224DAB228();
        v97 = sub_224DAF288();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = v94;
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v146[0] = v143;
          *v99 = v119;
          sub_224BB58D8(&qword_27D6F4AB0, 255, MEMORY[0x277CF9CA8], MEMORY[0x277CF9CB0]);
          v101 = sub_224DAFD28();
          v103 = v102;
          v104 = v137;
          v137(v98, v133);
          v105 = sub_224A33F74(v101, v103, v146);
          v35 = v133;

          *(v99 + 4) = v105;
          *(v99 + 12) = 2114;
          v106 = v92;
          v107 = _swift_stdlib_bridgeErrorToNSError();
          *(v99 + 14) = v107;
          *v100 = v107;
          _os_log_impl(&dword_224A2F000, v96, v97, "Failed to remove remote extension from store: %{public}s - %{public}@", v99, 0x16u);
          sub_224A3311C(v100, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v100, -1, -1);
          v108 = v143;
          __swift_destroy_boxed_opaque_existential_1(v143);
          MEMORY[0x22AA5EED0](v108, -1, -1);
          MEMORY[0x22AA5EED0](v99, -1, -1);

          v85 = v128;
          v104(v85, v35);
          v36 = v134;
        }

        else
        {

          v86 = v137;
          v137(v94, v35);
          v86(v85, v35);
        }

        v143 = 0;
        v87 = v141;
      }

      else
      {

        v109 = v126;
        v90(v126, v89, v35);
        (*v130)(v109, v131, v127);
        v36 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_224AD9448(0, v135[2] + 1, 1, v135);
        }

        v87 = v141;
        v111 = v135[2];
        v110 = v135[3];
        if (v111 >= v110 >> 1)
        {
          v135 = sub_224AD9448((v110 > 1), v111 + 1, 1, v135);
        }

        v143 = 0;
        v85 = v89;
        v137(v89, v35);
        v112 = v135;
        v135[2] = v111 + 1;
        (*(v118 + 32))(v112 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v111, v126, v127);
      }

      v84 = v87 + v139;
      --v144;
    }

    while (v144);

    v146[0] = v135;
    sub_224DAB348();
  }
}

void sub_224BB46E8(void **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AC0, qword_224DB97D8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v74 = &v67 - v7;
  v8 = sub_224DAD3A8();
  v79 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v73 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v77 = &v67 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v18 = &v67 - v17;
  v68 = a1;
  v19 = *a1;
  if (!(a2 >> 62))
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_32:
    v86 = MEMORY[0x277D84F90];
LABEL_33:
    *v68 = v19;
    *v69 = v86;
    return;
  }

  v20 = sub_224DAF838();
  if (!v20)
  {
    goto LABEL_32;
  }

LABEL_3:
  if (v20 >= 1)
  {
    v87 = v18;
    v21 = 0;
    v85 = a2 & 0xC000000000000001;
    v83 = v79 + 16;
    v75 = (v79 + 32);
    v71 = (v79 + 8);
    v72 = (v79 + 56);
    v86 = MEMORY[0x277D84F90];
    *&v16 = 138543362;
    v81 = v16;
    *&v16 = 136446210;
    v70 = v16;
    v78 = a2;
    v84 = v8;
    v80 = v20;
    do
    {
      if (v85)
      {
        v26 = MEMORY[0x22AA5DCC0](v21, a2);
      }

      else
      {
        v26 = *(a2 + 8 * v21 + 32);
      }

      v27 = v26;
      if (qword_281351538 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281351540);
      v29 = v27;
      v30 = sub_224DAB228();
      v31 = sub_224DAF2A8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = v81;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&dword_224A2F000, v30, v31, "Removing extension: %{public}@", v32, 0xCu);
        sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
        v35 = v33;
        v8 = v84;
        MEMORY[0x22AA5EED0](v35, -1, -1);
        v36 = v32;
        v20 = v80;
        MEMORY[0x22AA5EED0](v36, -1, -1);
      }

      if (v19[2] && (v37 = sub_224A3E7EC(v29), (v38 & 1) != 0))
      {
        v39 = *(v79 + 72);
        v40 = *(v79 + 16);
        v40(v87, v19[7] + v39 * v37, v8);
        v82 = v29;
        v41 = sub_224A3E7EC(v82);
        if (v42)
        {
          v43 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v19;
          v45 = v74;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_224B277CC();
            v19 = v88;
          }

          (*v75)(v45, v19[7] + v43 * v39, v8);
          sub_224B1C95C(v43, v19);
          v46 = 0;
        }

        else
        {
          v46 = 1;
          v45 = v74;
        }

        (*v72)(v45, v46, 1, v8);

        sub_224A3311C(v45, &qword_27D6F4AC0, qword_224DB97D8);
        v40(v77, v87, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_224AD9780(0, v86[2] + 1, 1, v86);
        }

        v51 = v86[2];
        v50 = v86[3];
        v76 = v19;
        if (v51 >= v50 >> 1)
        {
          v86 = sub_224AD9780((v50 > 1), v51 + 1, 1, v86);
        }

        v52 = v86;
        v86[2] = v51 + 1;
        (*(v79 + 32))(v52 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + v51 * v39, v77, v8);
        v53 = v73;
        v54 = v87;
        v40(v73, v87, v8);
        v55 = sub_224DAB228();
        v56 = sub_224DAF2A8();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v88 = v58;
          *v57 = v70;
          sub_224BB58D8(&qword_27D6F4AB0, 255, MEMORY[0x277CF9CA8], MEMORY[0x277CF9CB0]);
          v59 = sub_224DAFD28();
          v61 = v60;
          v62 = *v71;
          (*v71)(v53, v84);
          v63 = sub_224A33F74(v59, v61, &v88);

          *(v57 + 4) = v63;
          _os_log_impl(&dword_224A2F000, v55, v56, "Removed extension: %{public}s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v58);
          v64 = v58;
          v8 = v84;
          MEMORY[0x22AA5EED0](v64, -1, -1);
          MEMORY[0x22AA5EED0](v57, -1, -1);

          v62(v87, v8);
        }

        else
        {

          v65 = v53;
          v66 = *v71;
          (*v71)(v65, v8);
          v66(v54, v8);
        }

        a2 = v78;
        v19 = v76;
        v20 = v80;
      }

      else
      {
        v47 = v29;
        v48 = sub_224DAB228();
        v49 = sub_224DAF288();

        if (os_log_type_enabled(v48, v49))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = v81;
          *(v22 + 4) = v47;
          *v23 = v47;
          v24 = v47;
          _os_log_impl(&dword_224A2F000, v48, v49, "Unable to find extension: %{public}@", v22, 0xCu);
          sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
          v25 = v23;
          a2 = v78;
          MEMORY[0x22AA5EED0](v25, -1, -1);
          MEMORY[0x22AA5EED0](v22, -1, -1);
        }

        else
        {
        }
      }

      ++v21;
    }

    while (v20 != v21);
    goto LABEL_33;
  }

  __break(1u);
}

void sub_224BB4ED8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v5 = v4;
  v43 = a1;
  v8 = sub_224DAD3A8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v38 = &v37 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - v17;
  if (qword_281351538 != -1)
  {
    swift_once();
  }

  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281351540);
  v20 = sub_224DAB228();
  v21 = sub_224DAF2A8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = a2;
    v23 = v22;
    *v22 = 0;
    _os_log_impl(&dword_224A2F000, v20, v21, "Updating descriptors", v22, 2u);
    v24 = v23;
    v5 = v4;
    a2 = v37;
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  v25 = *v43;
  if (*(*v43 + 16) && (v26 = sub_224A3E7EC(a2), (v27 & 1) != 0))
  {
    v37 = v5;
    v28 = *(v25 + 56) + *(v9 + 72) * v26;
    v29 = *(v9 + 16);
    v30 = v38;
    v29(v38, v28, v8);
    (*(v9 + 32))(v18, v30, v8);
    sub_224DAD398();
    sub_224DADC08();

    v29(v39, v18, v8);
    v31 = sub_224A5C040(0, 1, 1, MEMORY[0x277D84F90]);
    v33 = v31[2];
    v32 = v31[3];
    v43 = (v33 + 1);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_224A5C040((v32 > 1), v43, 1, v31);
    }

    v34 = *(v9 + 8);
    v34(v18, v8);
    v41 = v8;
    v42 = sub_224BB58D8(&qword_27D6F4AA8, 255, MEMORY[0x277CF9CA8], MEMORY[0x277CF9CA0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    v36 = v39;
    v29(boxed_opaque_existential_1, v39, v8);
    v31[2] = v43;
    sub_224A36F98(&v40, &v31[5 * v33 + 4]);
    v34(v36, v8);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  *a4 = v31;
}

uint64_t sub_224BB528C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  sub_224A3311C(v0 + 104, &unk_27D6F5370, &qword_224DB97D0);

  return swift_deallocClassInstance();
}

uint64_t sub_224BB53B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_224BB58D8(qword_281353CC0, a2, type metadata accessor for RemoteWidgetExtensionService, &unk_224DB9760);
  result = sub_224BB58D8(&qword_281353CB8, v3, type metadata accessor for RemoteWidgetExtensionService, &unk_224DB9730);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224BB543C(uint64_t a1, int64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v31 = ((1 << v6) + 63) >> 6;
  v7 = 8 * v31;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = a2;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x28223BE20](a1, v7);
    v32 = v28 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v8);
    v33 = 0;
    v34 = v5;
    a2 = 0;
    v9 = v5 + 64;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v5 = v14 | (a2 << 6);
      v17 = *(*(v34 + 48) + 8 * v5);
      swift_beginAccess();

      v18 = v17;

      v19 = sub_224DAA048();

      if (v19)
      {
        *&v32[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
          return v29(v32, v31, v33, v34);
        }
      }
    }

    v15 = a2;
    while (1)
    {
      a2 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (a2 >= v13)
      {
        return v29(v32, v31, v33, v34);
      }

      v16 = *(v9 + 8 * a2);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v22 = v3;
    v23 = a3;
    v24 = v7;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v7 = v24;
    v3 = v22;
  }

  v25 = swift_slowAlloc();
  sub_224BB56F0(v25, v31, v5, v23);
  v27 = v26;
  MEMORY[0x22AA5EED0](v25, -1, -1);
  return v27;
}

void sub_224BB56F0(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v21 = 0;
    v19 = a2;
    v6 = 0;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a3 + 48) + 8 * v14);
      swift_beginAccess();

      v16 = v15;

      v17 = sub_224DAA048();

      if (v17)
      {
        *&a1[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_18:
          a4(a1, v19, v21, a3);

          return;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_18;
      }

      v13 = *(a3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_224BB58D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_224BB5920(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_224BB5990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5370, &qword_224DB97D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224BB5AC4()
{
  result = qword_27D6F4AC8;
  if (!qword_27D6F4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4AC8);
  }

  return result;
}

uint64_t sub_224BB5B18()
{
  v1 = v0;
  v2 = v0[4];
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  (*(v5 + 40))(v1, &off_28382DBB8, v4, v5);
  os_unfair_lock_unlock(*(v2 + 16));

  __swift_destroy_boxed_opaque_existential_1(v1 + 5);

  return swift_deallocClassInstance();
}

uint64_t sub_224BB5C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EE0, MEMORY[0x277CBCE20]);
  return sub_224DAB3A8();
}

uint64_t sub_224BB5CC0@<X0>(void *a1@<X8>)
{
  v3 = [*v1 widget];
  a1[3] = sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  result = sub_224A3B758(&unk_281350820, &qword_281350830, 0x277CFA358, MEMORY[0x277D85378]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_224BB5D58(uint64_t a1)
{
  result = sub_224A3B758(&qword_2813508E0, &qword_2813508E8, 0x277D7BC20, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

double sub_224BB5DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v125 = a4;
  v123 = a3;
  v114 = a2;
  v113 = sub_224DAB7B8();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v7);
  v110 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_224DAB848();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v9);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_224DAB878();
  v126 = *(v119 - 8);
  v12 = MEMORY[0x28223BE20](v119, v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v90 - v16;
  v121 = sub_224DA9878();
  v124 = *(v121 - 8);
  v19 = MEMORY[0x28223BE20](v121, v18);
  v120 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v128 = &v90 - v22;
  v118 = sub_224DAC268();
  v122 = *(v118 - 8);
  v23 = *(v122 + 64);
  v25 = MEMORY[0x28223BE20](v118, v24);
  v127 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v90 - v27;
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281364EB0);

  v30 = a1;
  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();
  v115 = v30;

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543618;
    v35 = v28;
    v36 = *(v5 + 24);
    *(v33 + 4) = v36;
    *(v33 + 12) = 2114;
    v37 = v115;
    *(v33 + 14) = v115;
    *v34 = v36;
    v34[1] = v37;
    v38 = v37;
    v39 = v36;
    v28 = v35;
    _os_log_impl(&dword_224A2F000, v31, v32, "[%{public}@] Handle interaction: %{public}@", v33, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v34, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  v40 = *(v5 + 40);
  v41 = *(v5 + 32);
  v42 = v40;
  sub_224DAC238();
  if (!*(v5 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
  {
    sub_224B44674(*(v5 + 16) + 280, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v130);
    sub_224DAC7B8();
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  v43 = v128;
  sub_224DA9808();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v93 = sub_224DAF3D8();
  sub_224DAB858();
  sub_224DAB8E8();
  v92 = v17;
  v44 = v126[1];
  ++v126;
  v94 = v44;
  v44(v14, v119);
  v45 = v124;
  v46 = *(v124 + 16);
  v106 = v124 + 16;
  v107 = v46;
  v47 = v121;
  v46(v120, v43, v121);
  v48 = v122;
  v49 = *(v122 + 16);
  v104 = v122 + 16;
  v105 = v49;
  v50 = v118;
  v49(v127, v28, v118);
  v97 = *(v45 + 80);
  v51 = (v97 + 32) & ~v97;
  v102 = *(v48 + 80);
  v103 = &v117[v102];
  v52 = &v117[v102 + v51] & ~v102;
  v99 = v97 | v102;
  v101 = v23 + 7;
  v53 = v5;
  v91 = v5;
  v54 = (v23 + 7 + v52) & 0xFFFFFFFFFFFFFFF8;
  v117 = v28;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  *(v56 + 24) = v116;
  v57 = *(v45 + 32);
  v98 = v45 + 32;
  v100 = v57;
  v58 = v56 + v51;
  v59 = v120;
  v57(v58, v120, v47);
  v60 = *(v48 + 32);
  v95 = v48 + 32;
  v96 = v60;
  v61 = v127;
  v60((v56 + v52), v127, v50);
  v62 = (v56 + v54);
  v63 = v125;
  *v62 = v123;
  v62[1] = v63;
  v64 = v115;
  *(v56 + v55) = v115;
  v131 = sub_224BB9200;
  v132 = v56;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v130 = &block_descriptor_21;
  v65 = _Block_copy(aBlock);
  v66 = v91;

  v115 = v64;

  v67 = v108;
  sub_224DAB7E8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_224A80F48(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  v68 = v110;
  v69 = v113;
  sub_224DAF788();
  v70 = v92;
  v71 = v93;
  MEMORY[0x22AA5D6A0](v92, v67, v68, v65);
  _Block_release(v65);

  (*(v112 + 8))(v68, v69);
  (*(v109 + 8))(v67, v111);
  v94(v70, v119);
  sub_224A3317C(*(v66 + 16) + 328, aBlock);
  v126 = __swift_project_boxed_opaque_existential_1(aBlock, v130);
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = v59;
  v74 = v121;
  v107(v59, v128, v121);
  v75 = v118;
  v105(v61, v117, v118);
  v76 = (v97 + 48) & ~v97;
  v77 = &v103[v76] & ~v102;
  v78 = (v101 + v77) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v116;
  *(v79 + 2) = v72;
  *(v79 + 3) = v80;
  v81 = v125;
  *(v79 + 4) = v123;
  *(v79 + 5) = v81;
  v82 = v73;
  v83 = v74;
  v100(&v79[v76], v82, v74);
  v84 = &v79[v77];
  v85 = v75;
  v96(v84, v127, v75);
  v86 = v115;
  *&v79[v78] = v115;
  v87 = v86;

  v88 = v117;
  sub_224B91034(v117, v114, v87, 0, 0, sub_224BB930C, v79);

  (*(v124 + 8))(v128, v83);
  (*(v122 + 8))(v88, v85);

  __swift_destroy_boxed_opaque_existential_1(aBlock);

  return result;
}

void sub_224BB68A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v43 = a6;
  v44 = a5;
  v42 = a4;
  v11 = sub_224DA9878();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v38 - v18;
  v20 = a1[6];
  v21 = *(v20 + 16);

  os_unfair_lock_lock(v21);
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_281351528 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281364EB0);
    v23 = *(v12 + 16);
    v41 = a3;
    v23(v19, a3, v11);

    v24 = sub_224DAB228();
    v25 = sub_224DAF288();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = a7;
      v27 = v26;
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 138543618;
      v29 = a1[3];
      *(v27 + 4) = v29;
      *v28 = v29;
      *(v27 + 12) = 2050;
      v30 = v29;
      sub_224DA9808();
      sub_224DA9758();
      v32 = v31;
      v33 = *(v12 + 8);
      v33(v16, v11);
      v33(v19, v11);
      *(v27 + 14) = v32;
      _os_log_impl(&dword_224A2F000, v24, v25, "[%{public}@] Interaction timed out after %{public}fs", v27, 0x16u);
      v34 = v39;
      sub_224A3311C(v39, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      v35 = v27;
      a7 = v40;
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }

    v36 = v41;
    if (!*(a1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
    {
      sub_224B44674(a1[2] + 280, v45);
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      sub_224DAC7C8();
      __swift_destroy_boxed_opaque_existential_1(v45);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v37 = sub_224CBC42C(21, 0, 0);
    v44();

    sub_224BB6C60(v36, a7);
  }

  os_unfair_lock_unlock(*(v20 + 16));
}

uint64_t sub_224BB6C60(uint64_t a1, void *a2)
{
  v3 = v2;
  v41 = a1;
  v42 = a2;
  v4 = sub_224DA9878();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v39 - v13;
  v15 = sub_224DAD7D8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAD828();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277CF9D30], v15);
  sub_224DAD838();
  if (sub_224DAD818())
  {
    v25 = [*(v3 + 32) extensionIdentity];
    v26 = [v25 isRemote];

    if ((v26 & 1) == 0)
    {
      v27 = [*(v3 + 32) extensionIdentity];
      sub_224DAF4E8();

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v14, 1, v28) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4B00, &unk_224DB9AB0);
        v30 = [*(v3 + 32) extensionIdentity];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        v31 = sub_224DA9FE8();
        v33 = v32;
        swift_endAccess();
      }

      else
      {
        sub_224DAA268();
        (*(v29 + 8))(v14, v28);
        v31 = sub_224DA9FE8();
        v33 = v34;
        (*(v40 + 1))(v10, v7);
      }

      v40 = "\n\nRenderer Session: ";
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_224DAF938();

      v46 = 0xD00000000000001FLL;
      v47 = 0x8000000224DC95D0;
      MEMORY[0x22AA5D210](v31, v33);

      v46 = 0;
      v47 = 0xE000000000000000;
      sub_224DAF938();
      MEMORY[0x22AA5D210](0xD000000000000086, 0x8000000224DC95F0);
      v35 = sub_224BB8A1C(v41, v42, 0);
      MEMORY[0x22AA5D210](v35);

      v36 = *(v3 + 32);
      v37 = v43;
      sub_224DA9808();
      sub_224DAD7F8();

      (*(v44 + 8))(v37, v45);
    }
  }

  return (*(v21 + 8))(v24, v20);
}

double sub_224BB71FC(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 48);

    os_unfair_lock_lock(*(v18 + 16));
    sub_224BB7300((a4 + 16), a1, a2 & 1, a5, a3, a7, a8, &v19, a9);
    os_unfair_lock_unlock(*(v18 + 16));
  }

  return result;
}

void sub_224BB7300(_BYTE *a1@<X0>, void *a2@<X1>, char a3@<W2>, void (*a4)(void *)@<X3>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, void *a9)
{
  v48 = a7;
  v49 = a6;
  v50 = a5;
  v51 = a8;
  v13 = sub_224DA9878();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v48 - v20;
  swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    if (a3)
    {
      a4(a2);
      swift_beginAccess();
      *a1 = 1;
      if (qword_281351528 != -1)
      {
        swift_once();
      }

      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281364EB0);

      sub_224BA7AC0(a2, 1);
      v23 = sub_224DAB228();
      v24 = sub_224DAF288();

      sub_224B92BE0(a2, 1);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543618;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v28 = *(Strong + 24);

          v29 = v28;
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }

        *(v25 + 4) = v28;
        *v26 = v29;
        *(v25 + 12) = 2114;
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v38;
        v26[1] = v38;
        _os_log_impl(&dword_224A2F000, v23, v24, "[%{public}@] Encountered error when handling interaction: %{public}@", v25, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v26, -1, -1);
        MEMORY[0x22AA5EED0](v25, -1, -1);
      }

      swift_beginAccess();
      v39 = swift_weakLoadStrong();
      if (v39)
      {
        if (*(v39 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
        {
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
        }

        else
        {
          sub_224B44674(*(v39 + 16) + 280, &v52);
        }

        if (*(&v53 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          sub_224DAC7C8();
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          sub_224A3311C(&v52, &qword_27D6F4AF8, &unk_224DB9AA0);
        }
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_224BB7AB4(v49, a9, a2);
      }
    }

    else
    {
      a4(0);
      swift_beginAccess();
      *a1 = 1;
      if (qword_281351528 != -1)
      {
        swift_once();
      }

      v30 = sub_224DAB258();
      __swift_project_value_buffer(v30, qword_281364EB0);
      (*(v14 + 16))(v21, v49, v13);

      v31 = sub_224DAB228();
      v32 = sub_224DAF2A8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v33 = 138543618;
        swift_beginAccess();
        v34 = swift_weakLoadStrong();
        if (v34)
        {
          v35 = *(v34 + 24);

          v36 = v35;
        }

        else
        {
          v35 = 0;
          v36 = 0;
        }

        *(v33 + 4) = v35;
        v40 = v49;
        *v49 = v36;
        *(v33 + 12) = 2050;
        sub_224DA9808();
        sub_224DA9758();
        v42 = v41;
        v43 = *(v14 + 8);
        v43(v18, v13);
        v43(v21, v13);
        *(v33 + 14) = v42;
        _os_log_impl(&dword_224A2F000, v31, v32, "[%{public}@] Finished handling interaction. Elapsed: %{public}f", v33, 0x16u);
        sub_224A3311C(v40, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v40, -1, -1);
        MEMORY[0x22AA5EED0](v33, -1, -1);
      }

      else
      {

        (*(v14 + 8))(v21, v13);
      }

      swift_beginAccess();
      v44 = swift_weakLoadStrong();
      if (v44)
      {
        if (*(v44 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
        {
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
        }

        else
        {
          sub_224B44674(*(v44 + 16) + 280, &v52);
        }

        if (*(&v53 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          sub_224DAC7C8();
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          sub_224A3311C(&v52, &qword_27D6F4AF8, &unk_224DB9AA0);
        }
      }

      swift_beginAccess();
      v45 = swift_weakLoadStrong();
      if (v45)
      {
        if (*(v45 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType))
        {
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
        }

        else
        {
          sub_224B44674(*(v45 + 16) + 280, &v52);
        }

        v46 = *(&v53 + 1);
        if (*(&v53 + 1))
        {
          v47 = v54;
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          (*(v47 + 24))(v48, 1, v46, v47);
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          sub_224A3311C(&v52, &qword_27D6F4AF8, &unk_224DB9AA0);
        }
      }
    }
  }

  *v51 = 0;
}

uint64_t sub_224BB7AB4(uint64_t a1, void *a2, void *a3)
{
  v39 = a2;
  v40 = a3;
  v38 = a1;
  v3 = sub_224DA9878();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v37 - v13;
  v15 = sub_224DAD7D8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAD828();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277CF9D28], v15);
  sub_224DAD838();
  if (sub_224DAD818())
  {
    v25 = [*(v43 + 32) extensionIdentity];
    sub_224DAF4E8();

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      sub_224A3311C(v14, &qword_27D6F4B00, &unk_224DB9AB0);
      v28 = [*(v43 + 32) extensionIdentity];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v29 = sub_224DA9FE8();
      v31 = v30;
      swift_endAccess();
    }

    else
    {
      sub_224DAA268();
      (*(v27 + 8))(v14, v26);
      v29 = sub_224DA9FE8();
      v31 = v32;
      (*(v37 + 1))(v10, v7);
    }

    v37 = ", environmentModifiers=";
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_224DAF938();

    v44 = 0xD00000000000001CLL;
    v45 = 0x8000000224DC9400;
    MEMORY[0x22AA5D210](v29, v31);

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000074, 0x8000000224DC9420);
    v33 = v43;
    v34 = sub_224BB8A1C(v38, v39, v40);
    MEMORY[0x22AA5D210](v34);

    v35 = *(v33 + 32);
    sub_224DA9808();
    sub_224DAD7F8();

    (*(v41 + 8))(v6, v42);
  }

  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_224BB8028()
{
  v1 = v0;
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364EB0);

  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = *(v1 + 24);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_224A2F000, v3, v4, "[%{public}@] Invalidated", v5, 0xCu);
    sub_224A3311C(v6, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion) = 0;

  v9 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion;
  swift_beginAccess();
  sub_224A8FA54(v1 + v9, v20);
  if (v21)
  {
    sub_224A3317C(v20, v17);
    sub_224A3311C(v20, &qword_27D6F3AE8, &unk_224DB9600);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_224A3311C(v20, &qword_27D6F3AE8, &unk_224DB9600);
  }

  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion))
  {

    sub_224DADCC8();
  }

  sub_224A3317C(*(v1 + 16) + 16, v20);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = *(v1 + 24);
  v18 = sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
  v19 = sub_224A3B758(&unk_2813508F0, &qword_2813508E8, 0x277D7BC20, &unk_224DB99AC);
  v17[0] = v12;
  v13 = *(v11 + 8);
  v14 = *(v13 + 16);
  v15 = v12;
  v14(v17, v10, v13);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_224BB82F8()
{
  v1 = v0;
  v2 = sub_224DAD158();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_224DA9F08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_224DAF938();
  v30 = v28;
  v31 = v29;
  MEMORY[0x22AA5D210](0xD000000000000023, 0x8000000224DC9380);
  v12 = [*(v0 + 24) identifier];
  v13 = sub_224DAEE18();
  v15 = v14;

  MEMORY[0x22AA5D210](v13, v15);

  MEMORY[0x22AA5D210](0x746567646977202CLL, 0xE90000000000003DLL);
  v16 = [*(v1 + 32) _loggingIdentifierWithMetrics_];
  v17 = sub_224DAEE18();
  v19 = v18;

  MEMORY[0x22AA5D210](v17, v19);

  MEMORY[0x22AA5D210](0x6E65746E6F63202CLL, 0xEE003D6570795474);
  v28 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType);
  type metadata accessor for CHSWidgetContentType(0);
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0x69726F697270202CLL, 0xEB000000003D7974);
  v20 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v20, v7);
  sub_224A80F48(&qword_27D6F3E78, MEMORY[0x277CF9F40], MEMORY[0x277CF9F60]);
  v21 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v21);

  (*(v8 + 8))(v11, v7);
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DC6160);
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x22AA5D210](v22, v23);

  MEMORY[0x22AA5D210](0xD000000000000017, 0x8000000224DC93B0);
  v24 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v24, v2);
  sub_224A80F48(&qword_27D6F3E80, MEMORY[0x277CF9C60], MEMORY[0x277CF9C70]);
  v25 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v25);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return v30;
}

id *sub_224BB8778()
{

  v1 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  v2 = sub_224DA9F08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion, &qword_27D6F3AE8, &unk_224DB9600);

  v3 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  v4 = sub_224DAD158();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_224BB8880()
{
  sub_224BB8778();

  return swift_deallocClassInstance();
}

uint64_t sub_224BB88E0(uint64_t a1)
{
  result = sub_224DA9F08();
  if (v2 <= 0x3F)
  {
    result = sub_224DAD158();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_224BB8A1C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v76 = a1;
  v77 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v6);
  v63 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v78 = &v62 - v10;
  v75 = sub_224DA96F8();
  v11 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_224DA9718();
  v15 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DA9878();
  v67 = *(v19 - 8);
  v68 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    v23 = a3;
    MEMORY[0x22AA5D210](0x203A726F727245, 0xE700000000000000);
    v79 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    sub_224DAFA48();
    MEMORY[0x22AA5D210](10, 0xE100000000000000);

    v24 = v84;
    v71 = v83;
  }

  else
  {
    v71 = 0;
    v24 = 0xE000000000000000;
  }

  v72 = v24;
  v25 = [*(v3 + 32) extensionIdentity];
  v26 = &v25[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v27 = *v26;
  v69 = *(v26 + 1);
  v70 = v27;

  v79 = 0;
  v80 = 0xE000000000000000;
  sub_224DAF938();
  v81 = v79;
  v82 = v80;
  MEMORY[0x22AA5D210](0xD00000000000004DLL, 0x8000000224DC94A0);
  sub_224DA9808();
  sub_224DA9708();
  sub_224DA96E8();
  v28 = v22;
  v29 = sub_224DA9848();
  v31 = v30;
  v74 = v4;
  v66 = *(v11 + 8);
  v32 = v75;
  v66(v14, v75);
  v33 = *(v15 + 8);
  v34 = v73;
  v33(v18, v73);
  (*(v67 + 8))(v28, v68);
  MEMORY[0x22AA5D210](v29, v31);

  MEMORY[0x22AA5D210](0xD000000000000016, 0x8000000224DC94F0);
  sub_224DA9708();
  sub_224DA96E8();
  v35 = sub_224DA9848();
  v37 = v36;
  v66(v14, v32);
  v38 = v74;
  v33(v18, v34);
  MEMORY[0x22AA5D210](v35, v37);

  MEMORY[0x22AA5D210](0xD000000000000014, 0x8000000224DC9510);
  v39 = [v77 identifier];
  v40 = sub_224DAEE18();
  v42 = v41;

  MEMORY[0x22AA5D210](v40, v42);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  MEMORY[0x22AA5D210](v71, v72);

  MEMORY[0x22AA5D210](0xD00000000000001ALL, 0x8000000224DC9530);
  v43 = sub_224DAA038();
  v45 = v44;

  MEMORY[0x22AA5D210](v43, v45);

  MEMORY[0x22AA5D210](0x6E7562207070410ALL, 0xED0000203A656C64);
  v46 = [*(v38 + 32) extensionIdentity];
  v47 = v78;
  sub_224DAF4E8();

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_224A3311C(v47, &qword_27D6F4B00, &unk_224DB9AB0);
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v52 = v63;
    sub_224DAA268();
    (*(v49 + 8))(v47, v48);
    v53 = v65;
    v54 = sub_224DA9FE8();
    v51 = v55;
    (*(v64 + 8))(v52, v53);
    v50 = v54;
  }

  MEMORY[0x22AA5D210](v50, v51);

  MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DC9550);
  v56 = [*(v38 + 32) extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v57 = sub_224DA9FE8();
  v59 = v58;
  swift_endAccess();

  MEMORY[0x22AA5D210](v57, v59);

  MEMORY[0x22AA5D210](0xD000000000000014, 0x8000000224DC9570);
  v60 = sub_224BB82F8();
  MEMORY[0x22AA5D210](v60);

  return v81;
}

void sub_224BB9200()
{
  v1 = *(sub_224DA9878() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_224DAC268() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v0 + v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v0 + v7);

  sub_224BB68A8(v8, v9, v0 + v2, v0 + v5, v11, v12, v13);
}

double sub_224BB930C(void *a1, char a2)
{
  v5 = *(sub_224DA9878() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_224DAC268() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_224BB71FC(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), (v2 + v6), v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t getEnumTagSinglePayload for TaskPredicate(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TaskPredicate(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_224BB9594()
{
  sub_224DAFE68();
  sub_224DAFE88();
  sub_224DAFE88();
  return sub_224DAFEA8();
}

uint64_t sub_224BB9634(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAFE88();
  sub_224DAFE88();
  return sub_224DAFEA8();
}

unint64_t sub_224BB96BC()
{
  result = qword_28135B9E0;
  if (!qword_28135B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B9E0);
  }

  return result;
}

uint64_t sub_224BB9710()
{
  v0 = sub_224DAB0F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAAB88();
  __swift_allocate_value_buffer(v5, qword_27D6F4B18);
  __swift_project_value_buffer(v5, qword_27D6F4B18);
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v6 = qword_2813652C8;
  if (*(qword_2813652C8 + 16))
  {

    v7 = sub_224B0B668(8);
    if (v8)
    {
      (*(v1 + 16))(v4, *(v6 + 56) + *(v1 + 72) * v7, v0);

      sub_224DAB0C8();
      return (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224BB989C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_224BB9908()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365120);
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224A2F000, v7, v8, "Observing changes made to activity subscriptions for host device", v9, 2u);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  v10 = sub_224DAF128();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_224D8E744(0, 0, v5, &unk_224DB9C18, v11);

  sub_224BBB398();
  return sub_224BBB7C4();
}

uint64_t sub_224BB9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224DA9908();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_224DAD9C8();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B60, &qword_224DBB460);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B68, &unk_224DB9C40);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224BB9D0C, 0, 0);
}

uint64_t sub_224BB9D0C()
{
  v2 = v0[12];
  v1 = v0[13];
  v13 = v0[11];
  v3 = v0[2];
  v4 = *(v3 + 96);
  v5 = __swift_project_boxed_opaque_existential_1((v3 + 72), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = off_283831820;
  type metadata accessor for RemoteActivitySubscriptionCache();
  v8();
  (*(v6 + 8))(v7, v4);
  sub_224DAF158();
  (*(v2 + 8))(v1, v13);

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_224BB9EE4;
  v10 = v0[14];
  v11 = v0[10];

  return MEMORY[0x2822003E8](v11, 0, 0, v10);
}

uint64_t sub_224BB9EE4()
{

  return MEMORY[0x2822009F8](sub_224BB9FE0, 0, 0);
}

uint64_t sub_224BB9FE0()
{
  v35 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];
    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_281365120);
    (*(v9 + 16))(v6, v7, v8);
    v11 = sub_224DAB228();
    v12 = sub_224DAF2A8();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    if (v13)
    {
      v17 = v0[4];
      v18 = v0[5];
      v19 = v0[3];
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v20 = 136446210;
      v32 = v16;
      sub_224DAD988();
      sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_224DAFD28();
      v31 = v12;
      v23 = v22;
      (*(v17 + 8))(v18, v19);
      v24 = *(v15 + 8);
      v24(v14, v32);
      v25 = sub_224A33F74(v21, v23, &v34);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_224A2F000, v11, v31, "Local subscription to remote activity has changed: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    else
    {

      v24 = *(v15 + 8);
      v24(v14, v16);
    }

    v26 = v0[9];
    v27 = v0[6];
    sub_224BBA3A8(v26);
    v24(v26, v27);
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_224BB9EE4;
    v29 = v0[14];
    v30 = v0[10];

    return MEMORY[0x2822003E8](v30, 0, 0, v29);
  }
}

uint64_t sub_224BBA3A8(void (*a1)(char *, void *))
{
  v142 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v135 = *(v2 - 8);
  v136 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v133 = &v125 - v4;
  v5 = sub_224DA9908();
  v6 = *(v5 - 1);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v134 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v125 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v125 - v15;
  v17 = sub_224DAD9C8();
  v141 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v130 = (&v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19, v21);
  v137 = &v125 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v132 = &v125 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v131 = &v125 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v125 - v31;
  v138 = v1;
  sub_224BBF304(v1 + 72, v144);
  v34 = v145;
  v33 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  sub_224DAD988();
  v35 = v33;
  v36 = v141;
  sub_224D2F410(v12, v34, v35, v16);
  v39 = *(v6 + 8);
  v37 = v6 + 8;
  v38 = v39;
  v139 = v12;
  v140 = v5;
  v39(v12, v5);
  if ((*(v36 + 48))(v16, 1, v17) == 1)
  {
    sub_224A3311C(v16, &qword_27D6F3BD8, &qword_224DB9C20);
    __swift_destroy_boxed_opaque_existential_1(v144);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    v41 = __swift_project_value_buffer(v40, qword_281365120);
    v42 = *(v36 + 16);
    v43 = v132;
    v133 = (v36 + 16);
    v131 = v42;
    (v42)(v132, v142, v17);
    v135 = v41;
    v44 = sub_224DAB228();
    v45 = sub_224DAF2A8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v127 = v46;
      v130 = swift_slowAlloc();
      v144[0] = v130;
      *v46 = 136446210;
      v47 = v139;
      LODWORD(v129) = v45;
      sub_224DAD988();
      sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = v140;
      v49 = sub_224DAFD28();
      v50 = v43;
      v52 = v51;
      v38(v47, v48);
      v136 = *(v36 + 8);
      v136(v50, v17);
      v53 = sub_224A33F74(v49, v52, v144);

      v54 = v127;
      *(v127 + 4) = v53;
      v55 = v54;
      _os_log_impl(&dword_224A2F000, v44, v129, "Replicating deletion of activity subscription with ID: %{public}s", v54, 0xCu);
      v56 = v130;
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x22AA5EED0](v56, -1, -1);
      MEMORY[0x22AA5EED0](v55, -1, -1);
    }

    else
    {

      v136 = *(v36 + 8);
      v136(v43, v17);
    }

    v78 = v134;
    sub_224DAD988();
    v79 = *(v138 + 5);
    v80 = *(v138 + 8);
    v81 = __swift_project_boxed_opaque_existential_1(v138 + 2, v79);
    v145 = v79;
    v146 = v80;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v144);
    (*(*(v79 - 8) + 16))(boxed_opaque_existential_1, v81, v79);
    sub_224BBEDC0(v78, v144);
    v38(v78, v140);
    return __swift_destroy_boxed_opaque_existential_1(v144);
  }

  v142 = v38;
  (*(v36 + 32))(v32, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v144);
  v57 = v17;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v58 = sub_224DAB258();
  v59 = __swift_project_value_buffer(v58, qword_281365120);
  v60 = *(v36 + 16);
  v61 = v131;
  v129 = v32;
  v134 = (v36 + 16);
  v132 = v60;
  (v60)(v131, v32, v17);
  v137 = v59;
  v62 = sub_224DAB228();
  v63 = sub_224DAF2A8();
  v64 = os_log_type_enabled(v62, v63);
  v128 = v37;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v126 = v65;
    v127 = swift_slowAlloc();
    v144[0] = v127;
    *v65 = 136446210;
    v66 = v139;
    sub_224DAD988();
    sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v67 = v57;
    v68 = v36;
    v69 = v140;
    v70 = sub_224DAFD28();
    v71 = v61;
    v73 = v72;
    v142(v66, v69);
    v74 = *(v68 + 8);
    v57 = v67;
    v74(v71, v67);
    v75 = sub_224A33F74(v70, v73, v144);

    v76 = v126;
    *(v126 + 1) = v75;
    _os_log_impl(&dword_224A2F000, v62, v63, "Replicating activity subscription with ID: %{public}s", v76, 0xCu);
    v77 = v127;
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x22AA5EED0](v77, -1, -1);
    MEMORY[0x22AA5EED0](v76, -1, -1);
  }

  else
  {

    v74 = *(v36 + 8);
    v74(v61, v57);
  }

  v83 = v133;
  v84 = v129;
  sub_224DAD958();
  v85 = v136;
  sub_224DAA1F8();
  (*(v135 + 8))(v83, v85);
  v86 = sub_224DAA048();

  if ((v86 & 1) == 0)
  {
    v93 = v138;
    v94 = *(v138 + 5);
    v95 = *(v138 + 8);
    v96 = __swift_project_boxed_opaque_existential_1(v138 + 2, v94);
    v145 = v94;
    v146 = v95;
    v97 = __swift_allocate_boxed_opaque_existential_1(v144);
    (*(*(v94 - 8) + 16))(v97, v96, v94);
    v98 = *(v93 + 5);
    v99 = *(v93 + 7);
    v100 = __swift_project_boxed_opaque_existential_1(v93 + 2, v98);
    v143[3] = v98;
    v143[4] = *(v99 + 16);
    v101 = __swift_allocate_boxed_opaque_existential_1(v143);
    (*(*(v98 - 8) + 16))(v101, v100, v98);
    sub_224BBF370(v84, v144, v143);
    v74(v84, v57);
    __swift_destroy_boxed_opaque_existential_1(v143);
    return __swift_destroy_boxed_opaque_existential_1(v144);
  }

  v87 = sub_224DAB228();
  v88 = sub_224DAF2A8();
  v89 = os_log_type_enabled(v87, v88);
  v90 = v140;
  if (v89)
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_224A2F000, v87, v88, "Can't send remotely-owned data to other devices", v91, 2u);
    MEMORY[0x22AA5EED0](v91, -1, -1);
  }

  type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError(0);
  sub_224BC03E8(&qword_27D6F4B40, type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError, &unk_224DB9C9C);
  v92 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v102 = v130;
  (v132)(v130, v84, v57);
  v103 = v92;
  v104 = sub_224DAB228();
  v105 = sub_224DAF288();

  if (os_log_type_enabled(v104, v105))
  {
    v107 = swift_slowAlloc();
    v138 = v74;
    v108 = v102;
    v109 = v107;
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v137 = v57;
    v140 = v111;
    v144[0] = v111;
    *v109 = 136446466;
    v112 = v90;
    v113 = v139;
    sub_224DAD988();
    sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v114 = sub_224DAFD28();
    v116 = v115;
    v142(v113, v112);
    v117 = v108;
    v119 = v137;
    v118 = v138;
    v138(v117, v137);
    v120 = sub_224A33F74(v114, v116, v144);

    *(v109 + 4) = v120;
    *(v109 + 12) = 2114;
    v121 = v92;
    v122 = _swift_stdlib_bridgeErrorToNSError();
    *(v109 + 14) = v122;
    *v110 = v122;
    _os_log_impl(&dword_224A2F000, v104, v105, "Failed to replicate activity subscription with ID: %{public}s; error: %{public}@", v109, 0x16u);
    sub_224A3311C(v110, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v110, -1, -1);
    v123 = v140;
    __swift_destroy_boxed_opaque_existential_1(v140);
    MEMORY[0x22AA5EED0](v123, -1, -1);
    MEMORY[0x22AA5EED0](v109, -1, -1);

    return v118(v129, v119);
  }

  else
  {

    v74(v102, v57);
    return (v74)(v84, v57);
  }
}