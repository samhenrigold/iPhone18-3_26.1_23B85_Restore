BOOL sub_22CFC3464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;

  LOBYTE(a2) = sub_22CF24034(a1, a2, v6);

  return (a2 & 1) == 0;
}

uint64_t sub_22CFC34C0()
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = MEMORY[0x28223BE20](v70, v1);
  v69 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v68 = (&v59 - v6);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v67 = (&v59 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v66 = (&v59 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v59 - v14;
  v59 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v59);
  swift_beginAccess();
  v15 = *(v0 + 112);
  v16 = *(v15 + 16);
  v78 = MEMORY[0x277D84F90];
  if (v16)
  {
    v79 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v16, 0);
    v78 = v79;
    v17 = v15 + 64;
    v18 = sub_22D016AEC();
    v19 = 0;
    v20 = *(v15 + 36);
    v60 = v15 + 72;
    v61 = v16;
    v63 = v15 + 64;
    v62 = v20;
    v64 = v15;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v15 + 32))
    {
      if ((*(v17 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v20 != *(v15 + 36))
      {
        goto LABEL_27;
      }

      v72 = 1 << v18;
      v73 = v18 >> 6;
      v71 = v19;
      v22 = v70;
      v23 = *(v70 + 48);
      v24 = *(v15 + 56);
      v25 = (*(v15 + 48) + 16 * v18);
      v27 = *v25;
      v26 = v25[1];
      v28 = type metadata accessor for Activity(0);
      v29 = v65;
      sub_22CF0CCBC(v24 + *(*(v28 - 8) + 72) * v18, &v65[v23], type metadata accessor for Activity);
      v30 = v66;
      *v66 = v27;
      *(v30 + 8) = v26;
      v31 = *(v22 + 48);
      sub_22CF0A72C(&v29[v23], v30 + v31, type metadata accessor for Activity);
      v32 = v67;
      *v67 = v27;
      *(v32 + 8) = v26;
      sub_22CF0CCBC(v30 + v31, v32 + *(v22 + 48), type metadata accessor for Activity);
      v33 = v68;
      sub_22CEEB6DC(v32, v68, &unk_27D9F3840, &unk_22D01A2B0);
      v34 = *v33;
      v76 = v33[1];
      v77 = v34;
      v74 = *(v22 + 48);
      v35 = v69;
      sub_22CEEB6DC(v32, v69, &unk_27D9F3840, &unk_22D01A2B0);
      swift_bridgeObjectRetain_n();

      v36 = *(v22 + 48);
      v75 = sub_22CF0B174();
      v38 = v37;
      v39 = v32;
      v40 = v78;
      sub_22CEEC3D8(v39, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v35 + v36, type metadata accessor for Activity);
      sub_22CF0F640(v33 + v74, type metadata accessor for Activity);
      sub_22CEEC3D8(v30, &unk_27D9F3840, &unk_22D01A2B0);
      v79 = v40;
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      v78 = v40;
      if (v42 >= v41 >> 1)
      {
        sub_22CF4414C((v41 > 1), v42 + 1, 1);
        v78 = v79;
      }

      v44 = v77;
      v43 = v78;
      *(v78 + 16) = v42 + 1;
      v45 = (v43 + 48 * v42);
      v46 = v75;
      v47 = v76;
      v45[4] = v44;
      v45[5] = v47;
      v45[6] = v46;
      v45[7] = v38;
      v45[9] = MEMORY[0x277D837D0];
      v15 = v64;
      v21 = 1 << *(v64 + 32);
      if (v18 >= v21)
      {
        goto LABEL_28;
      }

      v17 = v63;
      v48 = *(v63 + 8 * v73);
      if ((v48 & v72) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v20) = v62;
      if (v62 != *(v64 + 36))
      {
        goto LABEL_30;
      }

      v49 = v48 & (-2 << (v18 & 0x3F));
      if (v49)
      {
        v21 = __clz(__rbit64(v49)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = v73 << 6;
        v51 = v73 + 1;
        v52 = (v60 + 8 * v73);
        while (v51 < (v21 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_22CF44CF8(v18, v62, 0);
            v21 = __clz(__rbit64(v53)) + v50;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v18, v62, 0);
      }

LABEL_4:
      v19 = v71 + 1;
      v18 = v21;
      if (v71 + 1 == v61)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v78 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v55 = sub_22D016D3C();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v79 = v55;

    sub_22CF623EC(v56, 1, &v79);

    v57 = v79;
    os_unfair_lock_unlock(v59);
    return v57;
  }

  return result;
}

void *sub_22CFC3A88(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22CFC3B18(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22CFC3B18(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, __n128))
{
  v27 = a2;
  v32 = a4;
  v28 = a1;
  v5 = type metadata accessor for Activity(0);
  v31 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8, v6);
  v29 = 0;
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v33 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v17 = v30;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v34 = (v15 - 1) & v15;
LABEL_11:
    v21 = v18 | (v9 << 6);
    v22 = (v33[6] + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = v21;
    sub_22CF0CCBC(v33[7] + *(v31 + 72) * v21, v17, type metadata accessor for Activity);

    LOBYTE(v23) = (v32)(v23, v24, v17);
    sub_22CF0F640(v17, type metadata accessor for Activity);

    v15 = v34;
    if (v23)
    {
      *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v28, v27, v29, v33);
      }
    }
  }

  v19 = v9;
  while (1)
  {
    v9 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_22CEE4A40(v28, v27, v29, v33);
    }

    v20 = v11[v9];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v34 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CFC3D3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, __n128))
{
  v3 = v2;
  v5 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    MEMORY[0x28223BE20](a1, v10);
    v12 = v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_22CFC3B18(v12, v9, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_22CFC3A88(v15, v9, v5, a2);
  result = MEMORY[0x2318C6860](v15, -1, -1);
  if (!v16)
  {
    return v17;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityCountLimits(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityCountLimits(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void *sub_22CFC3F28()
{
  type metadata accessor for Singleton();
  swift_allocObject();
  result = sub_22CFC3F8C();
  off_281441820 = result;
  return result;
}

uint64_t sub_22CFC3F8C()
{
  v1 = v0;
  sub_22D0166AC();
  v2 = sub_22D0163CC();

  v3 = sub_22D01638C();
  if (v2)
  {
    if (v3 && v2 == v3)
    {
LABEL_4:
      if (qword_28143FB20 != -1)
      {
        swift_once();
      }

      v4 = sub_22D01637C();
      __swift_project_value_buffer(v4, qword_281444408);
      v5 = sub_22D01636C();
      v6 = sub_22D01690C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_22CEE1000, v5, v6, "Detected first launch", v7, 2u);
        MEMORY[0x2318C6860](v7, -1, -1);
      }

      *(v0 + 16) = 1;
      sub_22D0163AC();
      sub_22D0166AC();
      v8 = sub_22D0163BC();

      v9 = sub_22D01638C();
      if (v8)
      {
        if (v9 && v8 == v9)
        {
          goto LABEL_11;
        }
      }

      else if (!v9)
      {
LABEL_11:
        v10 = sub_22D01636C();
        v11 = sub_22D0168EC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 67240192;
          *(v12 + 4) = MEMORY[0x2318C5500]();
          _os_log_impl(&dword_22CEE1000, v10, v11, "Failed to create semaphore for first launch detector: %{public}d", v12, 8u);
          MEMORY[0x2318C6860](v12, -1, -1);
        }

        return v1;
      }

      sem_close(v8);
      return v1;
    }
  }

  else if (!v3)
  {
    goto LABEL_4;
  }

  if (qword_28143FB20 != -1)
  {
    swift_once();
  }

  v13 = sub_22D01637C();
  __swift_project_value_buffer(v13, qword_281444408);
  v14 = sub_22D01636C();
  v15 = sub_22D01690C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22CEE1000, v14, v15, "Detected subsequent launch", v16, 2u);
    MEMORY[0x2318C6860](v16, -1, -1);
  }

  sem_close(v2);
  *(v1 + 16) = 0;
  return v1;
}

void sub_22CFC4330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22CF4412C(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_22D016AEC();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = *(a1 + 48) + 40 * v4;
      v9 = *(v8 + 24);
      v22 = *(v8 + 16);
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_22CF4412C((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_22CF44CF8(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_22CFC455C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22CF4412C(0, v2, 0);
    v4 = v33;
    v5 = v1 + 56;
    result = sub_22D016AEC();
    v6 = result;
    v7 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      v29 = v7;
      v30 = *(v1 + 36);
      v10 = *(v1 + 48) + 40 * v6;
      v11 = *(v10 + 32);
      v31 = *v10;
      v32 = *(v10 + 8);
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318C5860](10272, 0xE200000000000000);
      if (v11)
      {
        v12 = 2037278052;
      }

      else
      {
        v12 = 0x776F6C6C61;
      }

      if (v11)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      MEMORY[0x2318C5860](v12, v13);

      MEMORY[0x2318C5860](41, 0xE100000000000000);

      v14 = v4;
      v34 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_22CF4412C((v16 > 1), v17 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v31;
      *(v18 + 40) = v32;
      v8 = 1 << *(v15 + 32);
      if (v6 >= v8)
      {
        goto LABEL_29;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_31;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_22CF44CF8(v6, v30, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v6, v30, 0);
      }

LABEL_4:
      v7 = v29 + 1;
      v6 = v8;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_22CFC4814(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22CF4412C(0, v2, 0);
    v4 = v32;
    v5 = v1 + 56;
    result = sub_22D016AEC();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      v10 = (*(v1 + 48) + 40 * v6);
      v12 = v10[2];
      v11 = v10[3];
      v30 = *v10;
      v31 = v10[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318C5860](10272, 0xE200000000000000);
      MEMORY[0x2318C5860](v12, v11);
      MEMORY[0x2318C5860](41, 0xE100000000000000);

      v13 = v4;
      v33 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_22CF4412C((v15 > 1), v16 + 1, 1);
        v13 = v33;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v30;
      *(v17 + 40) = v31;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_22CF44CF8(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
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
  }

  return result;
}

uint64_t sub_22CFC4AC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3480, &qword_22D01B598);
    sub_22CEE8394(&qword_28143FA98, &unk_27D9F3480, &qword_22D01B598, MEMORY[0x277CBCE20]);
    v4 = sub_22D01646C();
    *(v1 + v2) = v4;
  }

  return v4;
}

uint64_t sub_22CFC4B98()
{
  v1 = OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher;
  if (*(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
    sub_22CEE8394(&qword_28143D998, &unk_27D9F3470, &qword_22D018BA0, MEMORY[0x277CBCE20]);
    v2 = sub_22D01646C();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_22CFC4DB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_restrictionProviders);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v4);
      v9 = v8;
      (*(v4 + 8))(ObjectType, v4);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v7;
      v11[4] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3490, &qword_22D01B5A0);
      sub_22CEE8394(&qword_28143D9C8, &qword_27D9F3490, &qword_22D01B5A0, MEMORY[0x277CBCD90]);
      sub_22D0164AC();

      swift_beginAccess();
      sub_22D0163EC();
      swift_endAccess();

      (*(v4 + 24))(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_22CFC4FB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock);
    v8 = MEMORY[0x28223BE20](Strong, v3);
    MEMORY[0x28223BE20](v8, v6);

    os_unfair_lock_lock(v5 + 4);
    sub_22CFC8C0C(&v9);
    os_unfair_lock_unlock(v5 + 4);
    v7 = v9;

    if (v7 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
      sub_22CEE8394(&qword_28143D9A0, &unk_27D9F3470, &qword_22D018BA0, MEMORY[0x277CBCE18]);
      sub_22D01645C();
    }
  }
}

void sub_22CFC5124(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock_restrictions;

  v12 = sub_22CFC88F4(v11, a2, a3);

  if (sub_22CF75CFC(v12, a4))
  {

    *a5 = 0;
  }

  else
  {
    v35 = v10;
    if (*(v12 + 16) <= *(a4 + 16) >> 3)
    {
      v37 = a4;

      sub_22CF628D4(v12);
      v13 = a4;
    }

    else
    {

      v13 = sub_22CF631C0(v12, a4);
    }

    v14 = sub_22CFC455C(v13);

    if (*(a4 + 16) <= *(v12 + 16) >> 3)
    {
      v37 = v12;

      sub_22CF628D4(a4);
      v15 = v12;
    }

    else
    {

      v15 = sub_22CF631C0(a4, v12);
    }

    v36 = a1;
    v16 = sub_22CFC455C(v15);

    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v17 = sub_22D01637C();
    __swift_project_value_buffer(v17, qword_281444308);

    v18 = sub_22D01636C();
    v19 = sub_22D01690C();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = a5;
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v20 = 136446723;
      *(v20 + 4) = sub_22CEEE31C(a2, a3, &v37);
      *(v20 + 12) = 2081;
      v21 = MEMORY[0x2318C5950](v14, MEMORY[0x277D837D0]);
      v23 = v22;

      v24 = sub_22CEEE31C(v21, v23, &v37);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2081;
      v25 = MEMORY[0x2318C5950](v16, MEMORY[0x277D837D0]);
      v27 = v26;

      v28 = sub_22CEEE31C(v25, v27, &v37);

      *(v20 + 24) = v28;
      _os_log_impl(&dword_22CEE1000, v18, v19, "Restrictions changed by %{public}s.  Added: %{private}s; removed: %{private}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v33, -1, -1);
      v29 = v20;
      a5 = v34;
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    else
    {
    }

    v30 = *(v36 + v35);
    if (*(v12 + 16) <= *(v30 + 16) >> 3)
    {
      v37 = *(v36 + v35);

      sub_22CF628D4(v12);

      v31 = v37;
    }

    else
    {

      v31 = sub_22CF631C0(v12, v30);
    }

    v37 = v31;

    sub_22CFC5524(v32);
    *(v36 + v35) = v37;

    *a5 = 1;
  }
}

void sub_22CFC5524(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(a1 + 48) + 40 * (v9 | (v8 << 6));
    v14 = *(v10 + 32);
    v11 = *(v10 + 16);
    v13[0] = *v10;
    v13[1] = v11;
    v15 = v13[0];
    v16 = v11;
    sub_22CF655EC(&v15, v12);
    sub_22CF655EC(&v16, v12);
    sub_22CF768E4(v12, v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22CFC56AC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22D016CBC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22CEEE3E8(i, v5);
    sub_22CFC8B94();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22D016C9C();
    sub_22D016CCC();
    sub_22D016CDC();
    sub_22D016CAC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

unint64_t sub_22CFC57B0(unint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_22CFC56AC(result);
    if (result)
    {
      v4 = result;
      v5 = result & 0xFFFFFFFFFFFFFF8;
      if (result >> 62)
      {
LABEL_23:
        v6 = sub_22D016B7C();
        v23 = v2;
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v2 = MEMORY[0x277D84F90];
          do
          {
            v8 = v7;
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v9 = MEMORY[0x2318C5DE0](v8, v4);
              }

              else
              {
                if (v8 >= *(v5 + 16))
                {
                  goto LABEL_22;
                }

                v9 = *(v4 + 8 * v8 + 32);
              }

              v10 = v9;
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

              v11 = [v9 bundleIdentifier];
              if (v11)
              {
                break;
              }

              ++v8;
              if (v7 == v6)
              {
                goto LABEL_25;
              }
            }

            v22 = a2;
            v12 = v11;
            v13 = sub_22D01667C();
            v21 = v14;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_22CFCE000(0, *(v2 + 2) + 1, 1, v2);
            }

            v16 = *(v2 + 2);
            v15 = *(v2 + 3);
            if (v16 >= v15 >> 1)
            {
              v2 = sub_22CFCE000((v15 > 1), v16 + 1, 1, v2);
            }

            *(v2 + 2) = v16 + 1;
            v17 = &v2[16 * v16];
            a2 = v22;
            *(v17 + 4) = v13;
            *(v17 + 5) = v21;
          }

          while (v7 != v6);
          goto LABEL_25;
        }
      }

      else
      {
        v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        v23 = v2;
        if (v6)
        {
          goto LABEL_5;
        }
      }

      v2 = MEMORY[0x277D84F90];
LABEL_25:

      v18 = __swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR____TtC11SessionCore16AppEventObserver_knownClientStore], *&v23[OBJC_IVAR____TtC11SessionCore16AppEventObserver_knownClientStore + 24]);
      v19 = *v18;
      v20 = *(*(*v18 + 40) + 16);
      os_unfair_lock_lock(v20);
      sub_22CFCC038(v2, v19);
      os_unfair_lock_unlock(v20);
      sub_22D01641C();
    }
  }

  return result;
}

uint64_t sub_22CFC59CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = sub_22D0167DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  sub_22CFC57B0(v6, a4);
}

uint64_t sub_22CFC5A48()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_22CF052E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_22CFC5AD4@<X0>(unint64_t *a2@<X8>)
{

  v4 = sub_22CFC75FC(v3);
  v5 = sub_22CFC4814(v4);

  v7 = sub_22CFC7828(v6);
  v8 = sub_22CFC4814(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0x73694C776F6C6C61;
  *(inited + 40) = 0xE900000000000074;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
  *(inited + 48) = v8;
  *(inited + 72) = v10;
  *(inited + 80) = 0x7473694C796E6564;
  *(inited + 120) = v10;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v5;
  v11 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  result = swift_arrayDestroy();
  *a2 = v11;
  return result;
}

uint64_t sub_22CFC5C50()
{
  if (*v0)
  {
    return 2037278052;
  }

  else
  {
    return 0x776F6C6C61;
  }
}

uint64_t sub_22CFC5C80()
{
  v1 = *(v0 + 32);
  sub_22D016EAC();
  sub_22D0166DC();
  sub_22D0166DC();
  MEMORY[0x2318C6020](v1);
  return sub_22D016ECC();
}

uint64_t sub_22CFC5D00(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22D0166DC();
  sub_22D0166DC();
  return MEMORY[0x2318C6020](v2);
}

uint64_t sub_22CFC5D54(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22D016EAC();
  sub_22D0166DC();
  sub_22D0166DC();
  MEMORY[0x2318C6020](v2);
  return sub_22D016ECC();
}

uint64_t sub_22CFC5DD0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_22D016DFC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22D016DFC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

id sub_22CFC5E84()
{
  *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider____lazy_storage___restrictionsPublisher] = 0;
  v1 = OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider__restrictionsPublisher;
  v5 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3468, &unk_22D01B588);
  swift_allocObject();
  *&v0[v1] = sub_22D01644C();
  v2 = &v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name];
  strcpy(&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name], "ManagedConfig");
  *(v2 + 7) = -4864;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_profileConnection] = result;
    v4.receiver = v0;
    v4.super_class = type metadata accessor for ManagedConfigRestrictionProvider();
    return objc_msgSendSuper2(&v4, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22CFC5FA8()
{
  v1 = *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_profileConnection];
  [v1 registerObserver_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_22CFC872C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22CF217E0;
  v5[3] = &block_descriptor_21;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 checkInWithCompletion_];
  _Block_release(v3);
}

void sub_22CFC609C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v3 = sub_22D01637C();
    __swift_project_value_buffer(v3, qword_281444308);
    v4 = a1;
    oslog = sub_22D01636C();
    v5 = sub_22D0168EC();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22CEE1000, oslog, v5, "Failed to check in profile connection: %{public}@", v6, 0xCu);
      sub_22CFC8734(v7);
      MEMORY[0x2318C6860](v7, -1, -1);
      MEMORY[0x2318C6860](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }

  else
  {
    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_281444308);
    v12 = sub_22D01636C();
    v13 = sub_22D01690C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22CEE1000, v12, v13, "Checked in profile connection", v14, 2u);
      MEMORY[0x2318C6860](v14, -1, -1);
    }

    sub_22CFC6344();
  }
}

void sub_22CFC6344()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_profileConnection);
  v3 = [v2 effectiveWhitelistedAppBundleIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D01685C();

    sub_22CFC663C(v5);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 effectiveBlockedAppBundleIDs];
  if (v8)
  {
    v9 = v8;
    v10 = sub_22D01685C();

    sub_22CFC663C(v10);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v40 = MEMORY[0x277D84FA0];
  if (v7)
  {
    v13 = 0;
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name);
    v18 = (v14 + 63) >> 6;
    while (v16)
    {
      v19 = v13;
LABEL_16:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = (*(v7 + 48) + ((v19 << 10) | (16 * v20)));
      v23 = *v21;
      v22 = v21[1];
      v24 = *v17;
      v25 = v17[1];
      v41[0] = v23;
      v41[1] = v22;
      v41[2] = v24;
      v41[3] = v25;
      v42 = 0;

      sub_22CF768E4(v43, v41);
    }

    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19 >= v18)
      {

        goto LABEL_19;
      }

      v16 = *(v7 + 56 + 8 * v19);
      ++v13;
      if (v16)
      {
        v13 = v19;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (!v12)
    {
LABEL_31:
      v39 = v40;
      sub_22D01643C();

      return;
    }

    v26 = 0;
    v27 = 1 << *(v12 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v12 + 56);
    v30 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name);
    v31 = (v27 + 63) >> 6;
    while (v29)
    {
      v32 = v26;
LABEL_28:
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v34 = (*(v12 + 48) + ((v32 << 10) | (16 * v33)));
      v36 = *v34;
      v35 = v34[1];
      v37 = *v30;
      v38 = v30[1];
      v43[0] = v36;
      v43[1] = v35;
      v43[2] = v37;
      v43[3] = v38;
      v44 = 1;

      sub_22CF768E4(&v39, v43);
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        goto LABEL_31;
      }

      v29 = *(v12 + 56 + 8 * v32);
      ++v26;
      if (v29)
      {
        v26 = v32;
        goto LABEL_28;
      }
    }
  }

  __break(1u);
}

void sub_22CFC663C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
    v2 = sub_22D016C3C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v12 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_11:
      sub_22CFC088C(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v8 << 6)), &v11);
      if ((swift_dynamicCast() & 1) == 0 || !v10)
      {
        break;
      }

      v5 &= v5 - 1;
      sub_22CFDAE24(v9, v10);
      v7 = v8;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        return;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

id sub_22CFC680C(void *a1, SEL *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  [*&v4[*a1] *a2];
  v8.receiver = v4;
  v8.super_class = a4(a3);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_22CFC68A0(char *a1, uint64_t a2, void *a3, SEL *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9 = *&a1[*a3];
  v10 = a1;
  [v9 *a4];
  v12.receiver = v10;
  v12.super_class = a6(a5);
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t sub_22CFC69B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332ManagedConfigRestrictionProvider_name);

  return v1;
}

uint64_t sub_22CFC6A0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3468, &unk_22D01B588);
    sub_22CEE8394(&qword_28143D990, &qword_27D9F3468, &unk_22D01B588, MEMORY[0x277CBCE48]);
    v4 = sub_22D01646C();
    *(v1 + v2) = v4;
  }

  return v4;
}

id sub_22CFC6BB8()
{
  v1 = *&v0[OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_subjectMonitorSubscription];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppProtectionRestrictionProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_22CFC6D10()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 lockedApplications];
  sub_22D0168BC();
  v4 = sub_22D0167DC();

  if (v4 >> 62)
  {
    v5 = sub_22D016B7C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  v40 = v1;
  if (v5)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_22CF4412C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v39 = v2;
    v8 = 0;
    v9 = v41;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318C5DE0](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 bundleIdentifier];
      v13 = sub_22D01667C();
      v15 = v14;

      v17 = *(v41 + 16);
      v16 = *(v41 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22CF4412C((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v41 + 16) = v17 + 1;
      v18 = v41 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v5 != v8);

    v2 = v39;
    v6 = MEMORY[0x277D84F90];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v19 = sub_22CF7BDC4(v9);

  v20 = [v2 hiddenApplications];
  v21 = sub_22D0167DC();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_27:

    v24 = MEMORY[0x277D84F90];
LABEL_28:
    v34 = sub_22CF7BDC4(v24);

    v35 = sub_22CFC72E8(v34, v19);
    v36 = v40;
    sub_22CFC7C84(v35, v36);
    v38 = v37;

    sub_22CF7C1FC(v38);

    sub_22D01643C();
  }

  v22 = sub_22D016B7C();
  if (!v22)
  {
    goto LABEL_27;
  }

LABEL_16:
  result = sub_22CF4412C(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v6;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2318C5DE0](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v25 bundleIdentifier];
      v28 = sub_22D01667C();
      v30 = v29;

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22CF4412C((v31 > 1), v32 + 1, 1);
      }

      ++v23;
      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v22 != v23);

    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22CFC70AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name);

  return v1;
}

char *sub_22CFC70E8()
{
  v1 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_subjectMonitorSubscription) = v1;
  swift_unknownObjectRelease();

  return sub_22CFC6D10();
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

uint64_t sub_22CFC71D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22CFC7220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22CFC7278()
{
  result = qword_28143F3F8;
  if (!qword_28143F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F3F8);
  }

  return result;
}

uint64_t sub_22CFC72E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22CEE54CC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC73EC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_22CFC744C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_22CFC74C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
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

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void *sub_22CFC7574(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_22CFC75FC(uint64_t a1)
{
  v1 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = 8 * v3;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1, v4);
    v6 = v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v13 = v12 | (v8 << 6);
LABEL_12:
      if (*(*(v1 + 48) + 40 * v13 + 32) == 1)
      {
        *&v6[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_22CF64D2C(v6, v3, v7, v1);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= ((v9 + 63) >> 6))
      {
        return sub_22CF64D2C(v6, v3, v7, v1);
      }

      v15 = *(v1 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    v18 = v4;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v4 = v18;
  }

  v19 = swift_slowAlloc();
  v20 = sub_22CFC7574(v19, v3, v1, sub_22CFC7B68);

  MEMORY[0x2318C6860](v19, -1, -1);
  return v20;
}

void *sub_22CFC7828(uint64_t a1)
{
  v1 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = 8 * v3;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1, v4);
    v6 = v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v13 = v12 | (v8 << 6);
LABEL_12:
      if ((*(*(v1 + 48) + 40 * v13 + 32) & 1) == 0)
      {
        *&v6[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_22CF64D2C(v6, v3, v7, v1);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= ((v9 + 63) >> 6))
      {
        return sub_22CF64D2C(v6, v3, v7, v1);
      }

      v15 = *(v1 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    v18 = v4;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v4 = v18;
  }

  v19 = swift_slowAlloc();
  v20 = sub_22CFC7574(v19, v3, v1, sub_22CFC7A50);

  MEMORY[0x2318C6860](v19, -1, -1);
  return v20;
}

unint64_t *sub_22CFC7A50(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 40 * v12 + 32) & 1) == 0)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22CF64D2C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22CFC7B68(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 40 * v12 + 32) == 1)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22CF64D2C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22CFC7C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22CF44304(0, v2, 0);
    v5 = a1 + 56;
    v6 = sub_22D016AEC();
    v7 = 0;
    v23 = *(a2 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name + 8);
    v24 = *(a2 + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name);
    v22 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      v25 = v7;
      v26 = *(a1 + 36);
      v10 = (*(a1 + 48) + 16 * v6);
      v11 = v10[1];
      v27 = *v10;
      v12 = *(v28 + 16);
      v13 = *(v28 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_22CF44304((v13 > 1), v12 + 1, 1);
      }

      *(v28 + 16) = v12 + 1;
      v14 = v28 + 40 * v12;
      *(v14 + 32) = v27;
      *(v14 + 40) = v11;
      *(v14 + 48) = v24;
      *(v14 + 56) = v23;
      *(v14 + 64) = 1;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_22;
      }

      v5 = a1 + 56;
      v15 = *(a1 + 56 + 8 * v9);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (a1 + 64 + 8 * v9);
        while (v18 < (v8 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_22CF44CF8(v6, v26, 0);
            v8 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v6, v26, 0);
      }

LABEL_4:
      v7 = v25 + 1;
      v6 = v8;
      if (v25 + 1 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_22CFC7EDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v24 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 48) + 40 * v17;
    result = *v18;
    v19 = *(v18 + 32);
    if (*v18 == a4 && *(v18 + 8) == a5)
    {
      if ((*(v18 + 32) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = sub_22D016DFC();
      if (!(v19 & 1 | ((result & 1) == 0)))
      {
LABEL_18:
        *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_22CF64D2C(v23, a2, v24, a3);
        }
      }
    }
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
      goto LABEL_21;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC8050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v28 = v10;
    v29 = v4;
    v27 = &v27;
    MEMORY[0x28223BE20](v12, v13);
    v30 = &v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v11);
    v31 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v11 = v15 & *(a1 + 56);
    v16 = (v14 + 63) >> 6;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v10 = v17 | (v4 << 6);
      v20 = *(a1 + 48) + 40 * v10;
      if (*v20 == a2 && *(v20 + 8) == a3)
      {
        if ((*(v20 + 32) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = *(v20 + 32);
        if (!(v21 & 1 | ((sub_22D016DFC() & 1) == 0)))
        {
LABEL_19:
          *&v30[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          if (__OFADD__(v31++, 1))
          {
            __break(1u);
LABEL_22:
            v24 = sub_22CF64D2C(v30, v28, v31, a1);

            return v24;
          }
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v26 = swift_slowAlloc();

  v24 = sub_22CFC74C0(v26, v10, a1, a2, a3, sub_22CFC7EDC);

  MEMORY[0x2318C6860](v26, -1, -1);

  return v24;
}

unint64_t *sub_22CFC8304(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v24 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 48) + 40 * v17;
    result = *v18;
    v19 = *(v18 + 32);
    if (*v18 == a4 && *(v18 + 8) == a5)
    {
      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = sub_22D016DFC();
      if (result & v19)
      {
LABEL_18:
        *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_22CF64D2C(v23, a2, v24, a3);
        }
      }
    }
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
      goto LABEL_21;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC8478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v28 = v10;
    v29 = v4;
    v27 = &v27;
    MEMORY[0x28223BE20](v12, v13);
    v30 = &v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v11);
    v31 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v11 = v15 & *(a1 + 56);
    v16 = (v14 + 63) >> 6;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v10 = v17 | (v4 << 6);
      v20 = *(a1 + 48) + 40 * v10;
      v21 = *(v20 + 32);
      if (*v20 == a2 && *(v20 + 8) == a3)
      {
        if (v21)
        {
          goto LABEL_19;
        }
      }

      else if (sub_22D016DFC() & v21)
      {
LABEL_19:
        *&v30[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_22:
          v24 = sub_22CF64D2C(v30, v28, v31, a1);

          return v24;
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v26 = swift_slowAlloc();

  v24 = sub_22CFC74C0(v26, v10, a1, a2, a3, sub_22CFC8304);

  MEMORY[0x2318C6860](v26, -1, -1);

  return v24;
}

uint64_t sub_22CFC8734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2380, &unk_22D019C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CFC879C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(a3 + 48) + 40 * v18;
    result = *(v19 + 16);
    if (result != a4 || *(v19 + 24) != a5)
    {
      result = sub_22D016DFC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22CF64D2C(v23, a2, v8, a3);
    }
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
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFC88F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();

      v24 = sub_22CFC74C0(v26, v10, a1, a2, a3, sub_22CFC879C);

      MEMORY[0x2318C6860](v26, -1, -1);

      return v24;
    }
  }

  v28 = v10;
  v29 = v4;
  v27[1] = v27;
  MEMORY[0x28223BE20](v12, v13);
  v14 = v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v11);
  v15 = 0;
  v4 = 0;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v10 = v17 & *(a1 + 56);
  v18 = (v16 + 63) >> 6;
  while (2)
  {
    v30 = v15;
    do
    {
      if (!v10)
      {
        v20 = v4;
        while (1)
        {
          v4 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v4 >= v18)
          {
            goto LABEL_21;
          }

          v21 = *(a1 + 56 + 8 * v4);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v10 = (v21 - 1) & v21;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v11 = v19 | (v4 << 6);
      v22 = *(a1 + 48) + 40 * v11;
      v23 = *(v22 + 16) == a2 && *(v22 + 24) == a3;
    }

    while (!v23 && (sub_22D016DFC() & 1) == 0);
    *&v14[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
    v15 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v24 = sub_22CF64D2C(v14, v28, v30, a1);

  return v24;
}

unint64_t sub_22CFC8B94()
{
  result = qword_28143F9F8;
  if (!qword_28143F9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143F9F8);
  }

  return result;
}

void *sub_22CFC8C0C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_22CFC8C64()
{
  result = qword_27D9F3498;
  if (!qword_27D9F3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3498);
  }

  return result;
}

uint64_t sub_22CFC8CB8(void *a1)
{
  v2 = v1;
  v4 = sub_22D015E7C();
  v53 = *(v4 - 8);
  v54 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v47 - v9;
  v57 = sub_22D01697C();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01691C();
  MEMORY[0x28223BE20](v14, v15);
  v16 = sub_22D01653C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  sub_22D015B0C();
  *(v1 + 16) = sub_22D015AFC();
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  *(v2 + 32) = v18;
  v56 = sub_22CEEC38C();
  sub_22D0164FC();
  v58 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  v20 = v2;
  sub_22D016ADC();
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v57);
  v21 = a1;
  *(v20 + 24) = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v22 = qword_2814444F8;
  *(v20 + 40) = qword_2814444F8;
  if (v22)
  {

    v23 = sub_22CF51040();
    v48 = v21;
    v49 = v20;

    v24 = *(v23 + 2);
    v52 = v23;
    v25 = 0;
    if (v24)
    {
      v26 = v54;
      v27 = *(v53 + 16);
      v28 = &v23[(*(v53 + 80) + 32) & ~*(v53 + 80)];
      v55 = *(v53 + 72);
      v56 = v27;
      v29 = v50;
      v57 = v53 + 16;
      v30 = (v53 + 8);
      v31 = 0xE000000000000000;
      v32 = v24;
      do
      {
        v56(v29, v28, v26);
        v58 = v25;
        v59 = v31;

        MEMORY[0x2318C5860](8236, 0xE200000000000000);
        v33 = sub_22D015E4C();
        MEMORY[0x2318C5860](v33);

        v25 = v58;
        v31 = v59;
        (*v30)(v29, v26);
        v28 += v55;
        --v32;
      }

      while (v32);
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v34 = sub_22D01637C();
    __swift_project_value_buffer(v34, qword_2814443C0);

    v35 = sub_22D01636C();
    v36 = sub_22D01690C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v58 = v38;
      *v37 = 136446210;
      v39 = sub_22CEEE31C(v25, v31, &v58);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_22CEE1000, v35, v36, "Restored push tokens with identifiers: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x2318C6860](v38, -1, -1);
      MEMORY[0x2318C6860](v37, -1, -1);
    }

    else
    {
    }

    v20 = v49;
    v40 = v54;
    v41 = v51;
    if (v24)
    {
      v42 = *(v53 + 16);
      v43 = &v52[(*(v53 + 80) + 32) & ~*(v53 + 80)];
      v44 = *(v53 + 72);
      v45 = (v53 + 8);
      do
      {
        v42(v41, v43, v40);
        sub_22D015ADC();
        (*v45)(v41, v40);
        v43 += v44;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
  }

  return v20;
}

uint64_t sub_22CFC936C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D015E7C();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v13 = *(a3 + 40);
  if (v13)
  {
    v20[3] = a2;
    v21 = a1;
    v20[1] = v12;
    v20[2] = v20;
    MEMORY[0x28223BE20](v10, v11);
    v20[0] = a4;
    v20[-2] = a4;
    v14 = *(v13 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v15 = sub_22CF3D558(v14);
    v16 = *(*(v13 + 96) + 16);

    os_unfair_lock_lock(v16);
    MEMORY[0x28223BE20](v17, v18);
    v20[-4] = sub_22CFCBB30;
    v20[-3] = &v20[-4];
    v20[-2] = v15;
    sub_22D0143FC();
    os_unfair_lock_unlock(v16);

    sub_22CF3DC24();

    a1 = v21;
  }

  return a1(v10);
}

void sub_22CFC97C0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_22D015E7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = *(*(v4 + 32) + 16);
  os_unfair_lock_lock(v11);
  a2(a1);
  sub_22D01566C();
  (*(v8 + 16))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  (*(v8 + 32))(v13 + v12, v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v11);
}

uint64_t sub_22CFC9960(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D015E7C();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v13 = *(a3 + 40);
  if (v13)
  {
    v20[3] = a2;
    v21 = a1;
    v20[1] = v12;
    v20[2] = v20;
    MEMORY[0x28223BE20](v10, v11);
    v20[0] = a4;
    v20[-2] = a4;
    v14 = *(v13 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v15 = sub_22CF3D558(v14);
    v16 = *(*(v13 + 96) + 16);

    os_unfair_lock_lock(v16);
    MEMORY[0x28223BE20](v17, v18);
    v20[-4] = sub_22CFCB9A0;
    v20[-3] = &v20[-4];
    v20[-2] = v15;
    sub_22D0143FC();
    os_unfair_lock_unlock(v16);

    sub_22CF3DC24();

    a1 = v21;
  }

  return a1(v10);
}

uint64_t sub_22CFC9D80(uint64_t a1)
{
  v1 = sub_22D015E4C();
  sub_22CF51A64(v1, v2);
}

double sub_22CFC9DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D0161DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  sub_22D015AAC();
  sub_22D015A9C();

  v15[1] = sub_22D01566C();
  (*(v9 + 16))(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  (*(v9 + 32))(&v13[v12], v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_22D01565C();
  sub_22D01564C();

  return result;
}

uint64_t sub_22CFC9F90(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22D0161DC();
  v25 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = *(a3 + 40);
  if (v16)
  {
    v23[4] = a2;
    v24 = a1;
    v23[2] = v14;
    v23[3] = v23;
    MEMORY[0x28223BE20](v14, v15);
    v23[0] = a4;
    v23[1] = a5;
    v23[-4] = a4;
    v23[-3] = a5;
    v23[-2] = a6;
    v17 = *(v16 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v18 = sub_22CF3D558(v17);
    v19 = *(*(v16 + 96) + 16);

    os_unfair_lock_lock(v19);
    MEMORY[0x28223BE20](v20, v21);
    v23[-4] = sub_22CFCB958;
    v23[-3] = &v23[-6];
    v23[-2] = v18;
    sub_22D0143FC();
    os_unfair_lock_unlock(v19);

    sub_22CF3DC24();

    a1 = v24;
  }

  return a1(v14);
}

void sub_22CFCA3E0(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock(v5);
  sub_22D015A8C();
  sub_22D01566C();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v5);
}

uint64_t sub_22CFCA4D4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1(a1);
}

void sub_22CFCA800(uint64_t a1)
{
  v3 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v3);
  sub_22D015A9C();
  sub_22D01566C();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_22CFCA8E0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

void sub_22CFCABF4(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock(v5);
  v6 = sub_22D015ABC();
  sub_22D015A9C();
  sub_22D01566C();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v6;
  v7[4] = a1;
  v7[5] = a2;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v5);
}

uint64_t sub_22CFCACF0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1(a1);
}

uint64_t sub_22CFCB01C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_22D015E7C();
  result = MEMORY[0x28223BE20](v4, v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v18 = *(v11 + 56);
    v19 = (v11 - 8);
    v20 = v12;
    while (1)
    {
      v14 = v11;
      v20(v9, v13, v4);
      v15 = sub_22D015E4C();
      sub_22CF51A64(v15, v16);
      if (v2)
      {
        break;
      }

      (*v19)(v9, v4);

      v13 += v18;
      --v10;
      v11 = v14;
      if (!v10)
      {
        return result;
      }
    }

    (*v19)(v9, v4);
  }

  return result;
}

void sub_22CFCB1BC()
{
  v1 = *(*(v0 + 32) + 16);
  os_unfair_lock_lock(v1);
  sub_22D015AEC();
  sub_22D01566C();

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v1);
}

uint64_t sub_22CFCB268(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (v4)
  {
    v5 = *(v4 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v5);
    v6 = *(*(v4 + 96) + 16);

    os_unfair_lock_lock(v6);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v6);

    sub_22CF3DC24();
  }

  return a1();
}

void sub_22CFCB5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*(v7 + 32) + 16);
  os_unfair_lock_lock(v8);
  sub_22CFC9DD4(v7, a1, a2, a3);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_22CFCB6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*v3 + 32) + 16);
  os_unfair_lock_lock(v4);
  v5 = sub_22D015AAC();
  os_unfair_lock_unlock(v4);
  return v5;
}

uint64_t sub_22CFCB75C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 32) + 16);
  os_unfair_lock_lock(v3);
  v4 = sub_22D015ABC();
  os_unfair_lock_unlock(v3);
  return v4;
}

void sub_22CFCB7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 32) + 16);
  os_unfair_lock_lock(v3);
  sub_22D015A7C();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_22CFCB838@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22CFCB8D0(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D0161DC() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_22CFC9F90(a1, a2, v6, v7, v8, v9);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_22D015E7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CFCBA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_22D015E7C() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

unint64_t sub_22CFCBB74(char a1)
{
  sub_22D016C6C();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2318C5860](v2, v3);

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return 0xD000000000000020;
}

uint64_t sub_22CFCBC54(uint64_t a1)
{
  result = sub_22D01502C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterTargetResolver.Permissions(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22CFCBD78()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
    sub_22CFCBFE8(&qword_28143D998, MEMORY[0x277CBCE20]);
    v1 = sub_22D01646C();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_22CFCBE2C(char a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  swift_allocObject();
  *(v1 + 24) = sub_22D01642C();
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(v2 + 40) = v4;
  *(v2 + 32) = a1;
  if ((a1 & 1) != 0 && (v6 = [objc_opt_self() standardUserDefaults], v7 = sub_22D01666C(), v8 = objc_msgSend(v6, sel_stringArrayForKey_, v7), v6, v7, v8))
  {
    v9 = sub_22D0167DC();

    v10 = sub_22CF7BDC4(v9);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  *(v2 + 48) = v10;
  return v2;
}

uint64_t sub_22CFCBF74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22CFCBFE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F3470, &qword_22D018BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22CFCC038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 40;
LABEL_3:
    v7 = (v6 + 16 * v5);
    v8 = v5;
    do
    {
      if (v8 >= v3)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_29;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      swift_beginAccess();

      sub_22CF3C4B0(v10, v9);
      v12 = v11;
      swift_endAccess();
      if (v12)
      {

        if (qword_28143DAD0 != -1)
        {
          swift_once();
        }

        v13 = sub_22D01637C();
        __swift_project_value_buffer(v13, qword_281444368);

        v14 = sub_22D01636C();
        v15 = sub_22D01690C();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v27 = v17;
          *v16 = 136380675;
          v18 = sub_22CEEE31C(v10, v9, &v27);

          *(v16 + 4) = v18;
          _os_log_impl(&dword_22CEE1000, v14, v15, "%{private}s is no longer a known client", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
          MEMORY[0x2318C6860](v17, -1, -1);
          MEMORY[0x2318C6860](v16, -1, -1);
        }

        else
        {
        }

        v4 = 1;
        if (v5 != v3)
        {
          goto LABEL_3;
        }

        if (*(a2 + 32))
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      ++v8;
      v7 += 2;
    }

    while (v5 != v3);
    if (*(a2 + 32))
    {
      goto LABEL_21;
    }

    if (v4)
    {
      goto LABEL_24;
    }
  }

  else if (*(a2 + 32))
  {
    v4 = 0;
LABEL_21:
    swift_beginAccess();
    v19 = *(a2 + 48);
    v20 = *(v19 + 16);
    if (v20 && (v21 = sub_22CEE561C(v20, 0), v22 = sub_22CEE56A4(&v27, v21 + 4, v20, v19), v23 = v27, , sub_22CEE57FC(v23), v22 != v20))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      v24 = [objc_opt_self() standardUserDefaults];
      v25 = sub_22D0167CC();

      v26 = sub_22D01666C();
      [v24 setObject:v25 forKey:v26];

      if (v4)
      {
LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
        sub_22CFCBFE8(&qword_28143D9A0, MEMORY[0x277CBCE18]);
        sub_22D01645C();
      }
    }
  }
}

uint64_t sub_22CFCC3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x277D84F90];
  sub_22CF440C8(0, v1, 0);
  v2 = v32;
  v4 = a1 + 64;
  result = sub_22D016AEC();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v1;
  v28 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v12 = v11[1];
    v31 = *v11;
    v13 = *(*(a1 + 56) + 8 * v6);
    swift_bridgeObjectRetain_n();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34B0, &unk_22D01B8E8);
    v30 = MEMORY[0x2318C5950](v13, v14);
    v16 = v15;

    v18 = *(v32 + 16);
    v17 = *(v32 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_22CF440C8((v17 > 1), v18 + 1, 1);
    }

    *(v32 + 16) = v18 + 1;
    v19 = (v32 + 32 * v18);
    v19[4] = v31;
    v19[5] = v12;
    v19[6] = v30;
    v19[7] = v16;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v20 = *(a1 + 64 + 8 * v10);
    if ((v20 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (a1 + 72 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_22CF44CF8(v6, v28, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v6, v28, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v27)
    {
      return v2;
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

void *sub_22CFCC674()
{
  v14 = sub_22D01697C();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v10;
  v0[4] = v10;
  v11 = sub_22CEEC38C();
  v13[0] = "hedule-start-jitter-seconds";
  v13[1] = v11;
  sub_22D0164EC();
  v15 = v9;
  sub_22CEF88D4(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v14);
  v0[5] = sub_22D0169BC();
  if (qword_28143EEA0 != -1)
  {
    swift_once();
  }

  return v0;
}

uint64_t sub_22CFCC908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_22CFCE85C(0, 0, a1, a2);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_22CF1B8BC(0, v7[2] + 1, 1, v7, &qword_27D9F3518, &qword_22D01B988, &qword_27D9F3510, &qword_22D01B980);
      *(a3 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_22CF1B8BC((v9 > 1), v10 + 1, 1, v7, &qword_27D9F3518, &qword_22D01B988, &qword_27D9F3510, &qword_22D01B980);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = a1;
    v11[5] = a2;
    *(a3 + 16) = v7;
    swift_endAccess();
    return swift_unknownObjectRetain();
  }
}

void sub_22CFCCA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 40);
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22CFCE6E8;
  *(v12 + 24) = v11;
  v14[4] = sub_22CEF4034;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22CEF3C20;
  v14[3] = &block_descriptor_47_3;
  v13 = _Block_copy(v14);

  swift_unknownObjectRetain();

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

void sub_22CFCCC14()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityParticipantEvent(0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3508, &qword_22D01B978);
  v31 = v11;
  sub_22D01699C();
  v12 = aBlock[0];
  v35 = MEMORY[0x277D84F90];
  v13 = *(aBlock[0] + 16);
  if (v13)
  {
    v14 = 32;
    do
    {
      v15 = *(v12 + v14);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        swift_unknownObjectRetain();
        sub_22CFFD8AC();
        sub_22CFA1538(v17);
        swift_unknownObjectRelease();
      }

      v14 += 16;
      --v13;
    }

    while (v13);

    v18 = v35;
    v19 = *(v35 + 16);
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (!v19)
    {
LABEL_15:

      return;
    }
  }

  v20 = *(v3 + 80);
  v21 = v18 + ((v20 + 32) & ~v20);
  v22 = *(v3 + 72);
  v27 = v18;
  v28 = v22;
  v23 = (v20 + 24) & ~v20;
  v29 = v34;
  v30 = v20;
  while (1)
  {
    sub_22CEFEA98(v21, v10, type metadata accessor for ActivityParticipantEvent);
    sub_22CEFEA98(v10, v7, type metadata accessor for ActivityParticipantEvent);
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    sub_22CF0A72C(v7, v24 + v23, type metadata accessor for ActivityParticipantEvent);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_22CFCE9C4;
    *(v25 + 24) = v24;
    v34[2] = sub_22CEF4034;
    v34[3] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v34[0] = sub_22CEF3C20;
    v34[1] = &block_descriptor_58;
    v26 = _Block_copy(aBlock);

    dispatch_sync(v31, v26);
    _Block_release(v26);
    sub_22CF0A5FC(v10, type metadata accessor for ActivityParticipantEvent);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      break;
    }

    v21 += v28;
    if (!--v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22CFCCFC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22CFCD03C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v7 = MEMORY[0x28223BE20](v68, v6);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v66 = (&v60 - v11);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v65 = (&v60 - v14);
  MEMORY[0x28223BE20](v13, v15);
  v64 = &v60 - v16;
  swift_beginAccess();
  v17 = *(a1 + 32);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v60 = a1;
    v61 = v2;
    v62 = a2;
    v77 = MEMORY[0x277D84F90];

    sub_22CF440C8(0, v18, 0);
    v19 = v77;
    v20 = sub_22D016AEC();
    v21 = 0;
    v22 = *(v17 + 36);
    v63 = v17;
    do
    {
      v73 = v21;
      v74 = v20;
      v76 = v18;
      v23 = v68;
      v24 = *(v68 + 48);
      v25 = v64;
      v75 = v22;
      v26 = sub_22CFA3598(&v64[v24], v20, v22, v21 & 1, v17);
      v27 = v65;
      *v65 = v26;
      *(v27 + 8) = v28;
      sub_22CF0A72C(&v25[v24], v27 + *(v23 + 48), type metadata accessor for Activity);
      v29 = v66;
      sub_22CEEB6DC(v27, v66, &unk_27D9F3840, &unk_22D01A2B0);
      v30 = v29[1];
      v72 = *v29;
      v71 = v30;
      v69 = *(v23 + 48);
      v31 = v67;
      sub_22CEEB6DC(v27, v67, &unk_27D9F3840, &unk_22D01A2B0);

      v32 = *(v23 + 48);
      v33 = sub_22CF0B174();
      v70 = v34;
      sub_22CEEC3D8(v27, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0A5FC(v31 + v32, type metadata accessor for Activity);
      sub_22CF0A5FC(v29 + v69, type metadata accessor for Activity);
      v77 = v19;
      v36 = *(v19 + 16);
      v35 = *(v19 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22CF440C8((v35 > 1), v36 + 1, 1);
        v19 = v77;
      }

      *(v19 + 16) = v36 + 1;
      v37 = (v19 + 32 * v36);
      v38 = v71;
      v37[4] = v72;
      v37[5] = v38;
      v39 = v70;
      v37[6] = v33;
      v37[7] = v39;
      v40 = v73;
      v41 = v74;
      v42 = v75;
      v17 = v63;
      v43 = sub_22CFA3518(v74, v75, v73 & 1, v63);
      v45 = v44;
      v47 = v46;
      sub_22CF44CF8(v41, v42, v40 & 1);
      v20 = v43;
      v22 = v45;
      v21 = v47;
      v18 = v76 - 1;
    }

    while (v76 != 1);
    sub_22CF44CF8(v43, v45, v47 & 1);

    a2 = v62;
    v3 = v61;
  }

  swift_beginAccess();

  v49 = sub_22CFCC3E4(v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000022D0215A0;
  if (*(v49 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v51 = sub_22D016D3C();
  }

  else
  {
    v51 = MEMORY[0x277D84F98];
  }

  v78 = v51;

  sub_22CF43CD4(v52, 1, &v78);
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v53 = v78;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
    *(inited + 48) = v53;
    *(inited + 72) = v54;
    *(inited + 80) = 0x6974697669746361;
    *(inited + 88) = 0xEA00000000007365;
    if (*(v19 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v55 = sub_22D016D3C();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v78 = v55;

    sub_22CF43CD4(v56, 1, &v78);

    v57 = v78;
    *(inited + 120) = v54;
    *(inited + 96) = v57;
    v58 = sub_22CF11C44(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    result = swift_arrayDestroy();
    *a2 = v58;
  }

  return result;
}

uint64_t sub_22CFCD64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v1;
}

void *sub_22CFCD748()
{
  type metadata accessor for IDSBagValueServer();
  swift_allocObject();
  result = sub_22CFCD788();
  off_28143EEA8 = result;
  return result;
}

void *sub_22CFCD788()
{
  v1 = v0;
  v15 = sub_22D01697C();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22D01653C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_22CEEC38C();
  v14[0] = "lock_startDateJitter";
  v14[1] = v10;
  sub_22D0164EC();
  v16 = MEMORY[0x277D84F90];
  sub_22CEF88D4(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v15);
  *(v0 + 16) = sub_22D0169BC();
  *(v0 + 24) = 0x4066800000000000;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  *(v1 + 32) = v11;
  sub_22CFCDA1C();
  return v1;
}

double sub_22CFCDA1C()
{
  v1 = sub_22D0164CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01653C();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_22CFCE6E0;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_22;
  v10 = _Block_copy(aBlock);

  sub_22D0164EC();
  v14 = MEMORY[0x277D84F90];
  sub_22CEF88D4(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);

  return result;
}

void sub_22CFCDCBC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstanceForBagType_];
  v3 = sub_22D01666C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v5 = sub_22D01637C();
      __swift_project_value_buffer(v5, qword_281444498);
      v6 = sub_22D01636C();
      v7 = sub_22D01690C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134349056;
        *(v8 + 4) = v14;
        _os_log_impl(&dword_22CEE1000, v6, v7, "Fetched IDS bag values; start jitter: %{public}ld;", v8, 0xCu);
        MEMORY[0x2318C6860](v8, -1, -1);
      }

      v9 = *(*(a1 + 32) + 16);
      os_unfair_lock_lock(v9);
      *(a1 + 24) = v14;
      os_unfair_lock_unlock(v9);
      goto LABEL_17;
    }
  }

  else
  {
    sub_22CEEC3D8(v17, &qword_27D9F2B10, &unk_22D01B930);
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v10 = sub_22D01637C();
  __swift_project_value_buffer(v10, qword_281444498);
  v11 = sub_22D01636C();
  v12 = sub_22D0168EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22CEE1000, v11, v12, "Could not load start jitter bag value", v13, 2u);
    MEMORY[0x2318C6860](v13, -1, -1);
  }

LABEL_17:
}

uint64_t sub_22CFCDF74()
{

  return swift_deallocClassInstance();
}

char *sub_22CFCE000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
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

char *sub_22CFCE10C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34C0, &unk_22D01B900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22CFCE308(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34E8, &unk_22D01B950);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26D8, &qword_22D018F78) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26D8, &qword_22D018F78) - 8);
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

unint64_t sub_22CFCE638(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2318C6880](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2318C6880](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_22CFCE718@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);

  return result;
}

unint64_t sub_22CFCE768(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3510, &qword_22D01B980);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_22CFCE85C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_22CF1B8BC(isUniquelyReferenced_nonNull_native, v16, 1, v6, &qword_27D9F3518, &qword_22D01B988, &qword_27D9F3510, &qword_22D01B980);
    *v4 = v6;
  }

  result = sub_22CFCE768(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_22CFCE96C()
{
  result = qword_27D9F3520;
  if (!qword_27D9F3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3520);
  }

  return result;
}

uint64_t sub_22CFCE9D0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  sub_22CEEC3D8(v0 + 80, &qword_27D9F3278, &unk_22D01B2C0);

  sub_22CF460CC(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFCEA64(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 136) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

void sub_22CFCEACC(uint64_t a1@<X8>)
{
  v60 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v3 = MEMORY[0x28223BE20](v69, v2);
  v68 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v67 = &v58 - v6;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v64 = &v58 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v63 = &v58 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v58 - v23;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  swift_beginAccess();
  v70 = v1;
  v25 = *(v1 + 120);

  sub_22D01423C();
  v27 = *(v8 + 16);
  v26 = v8 + 16;
  v74 = v21;
  v75 = v7;
  v59 = v24;
  v62 = v27;
  v27(v21, v24, v7);
  v28 = *(v25 + 64);
  v61 = v25 + 64;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v66 = v26;
  v71 = (v26 - 8);
  v72 = (v26 + 16);
  v73 = v25;

  v33 = 0;
  while (v31)
  {
    v34 = v33;
LABEL_9:
    v35 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v36 = v35 | (v34 << 6);
    v37 = *(v73 + 56);
    v38 = (*(v73 + 48) + 16 * v36);
    v40 = *v38;
    v39 = v38[1];
    v41 = (type metadata accessor for Activity(0) - 8);
    v42 = v69;
    v43 = v67;
    sub_22CF0CCBC(v37 + *(*v41 + 72) * v36, &v67[*(v69 + 48)], type metadata accessor for Activity);
    *v43 = v40;
    v43[1] = v39;
    v44 = v68;
    sub_22CEEB6DC(v43, v68, &unk_27D9F3840, &unk_22D01A2B0);

    v45 = v44 + *(v42 + 48);
    v46 = v45 + v41[12];
    v47 = v65;
    v48 = v75;
    v62(v65, v46, v75);
    sub_22CF0F640(v45, type metadata accessor for Activity);
    v49 = v64;
    sub_22D01425C();
    v50 = *v71;
    (*v71)(v47, v48);
    sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v51 = v74;
    v52 = sub_22D01663C();
    sub_22CEEC3D8(v43, &unk_27D9F3840, &unk_22D01A2B0);
    if (v52)
    {
      v53 = v49;
    }

    else
    {
      v53 = v51;
    }

    if (v52)
    {
      v54 = v51;
    }

    else
    {
      v54 = v49;
    }

    v50(v53, v48);
    v55 = *v72;
    v56 = v63;
    (*v72)(v63, v54, v48);
    v55(v51, v56, v48);
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {
      v57 = v75;
      (*v71)(v59, v75);

      (*v72)(v60, v74, v57);

      return;
    }

    v31 = *(v61 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22CFCEFBC(void *a1)
{
  v2 = sub_22D01559C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0155CC();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01430C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 10), &v35, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v36 + 1))
  {
    sub_22CEE3A84(&v35, v34);
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v35, (a1 + 10));
  swift_endAccess();
  sub_22CFCEACC(v18);
  sub_22D01423C();
  v19 = sub_22D01428C();
  v20 = *(v11 + 8);
  v20(v15, v10);
  if (v19)
  {
    (*(v11 + 16))(v15, v18, v10);
    (*(v30 + 104))(v5, *MEMORY[0x277D4D518], v31);
    sub_22D01558C();
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v32 + 8))(v9, v33);
    v20(v18, v10);

    sub_22CEF44D4(&v35, v34);
    swift_beginAccess();
    sub_22CF1B3B4(v34, (a1 + 10));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_281444438);
    v23 = sub_22D01636C();
    v24 = sub_22D01690C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v10;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22CEE1000, v23, v24, "No more activities to forcibly end", v26, 2u);
      MEMORY[0x2318C6860](v26, -1, -1);

      v27 = v18;
      v28 = v25;
    }

    else
    {

      v27 = v18;
      v28 = v10;
    }

    return (v20)(v27, v28);
  }
}

double sub_22CFCF4D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + 16) + 16);
    v4 = Strong;
    os_unfair_lock_lock(v3);
    sub_22CFCF564(v4);
    os_unfair_lock_unlock(v3);
    v5 = *(v4[2] + 16);
    os_unfair_lock_lock(v5);
    sub_22CFCEFBC(v4);
    os_unfair_lock_unlock(v5);
  }

  return result;
}

void sub_22CFCF564(uint64_t a1)
{
  v2 = type metadata accessor for Activity(0);
  v50 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v7);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v46 - v15);
  v54 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v17 = *(a1 + 120);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(a1 + 120) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v51 = *(a1 + 120);
  v52 = a1;

  v25 = 0;
  v47 = v13;
  v48 = v6;
  v46 = v16;
  while (v23)
  {
    v26 = v25;
LABEL_15:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v26 << 6);
    v31 = (*(v51 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = v49;
    sub_22CF0CCBC(*(v51 + 56) + *(v50 + 72) * v30, v49, type metadata accessor for Activity);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v36 = *(v35 + 48);
    v13 = v47;
    *v47 = v33;
    *(v13 + 1) = v32;
    sub_22CF0A72C(v34, &v13[v36], type metadata accessor for Activity);
    (*(*(v35 - 8) + 56))(v13, 0, 1, v35);

    v28 = v26;
    v6 = v48;
    v16 = v46;
LABEL_16:
    sub_22CF82724(v13, v16);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v37 - 8) + 48))(v16, 1, v37) == 1)
    {

      v42 = v52;
      MEMORY[0x28223BE20](v41, v43);
      *(&v46 - 2) = &v54;

      v45 = sub_22CFC3D3C(v44, sub_22CFC3A80);

      *(v42 + 120) = v45;

      return;
    }

    v38 = *v16;
    v39 = v16[1];
    sub_22CF0A72C(v16 + *(v37 + 48), v6, type metadata accessor for Activity);
    if (sub_22CFCFA20(v6))
    {
      sub_22CEE54CC(&v53, v38, v39);

      sub_22CF0F640(v6, type metadata accessor for Activity);
    }

    else
    {
      sub_22CF0F640(v6, type metadata accessor for Activity);
    }

    v25 = v28;
  }

  if (v24 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
      v23 = 0;
      goto LABEL_16;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22CFCFA20(uint64_t *a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v106 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22D01653C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v7);
  v104 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ActivityParticipantEvent(0);
  v99 = *(v98 - 8);
  v10 = MEMORY[0x28223BE20](v98, v9);
  v101 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v103 = &v88 - v13;
  v14 = sub_22D01495C();
  v110 = *(v14 - 8);
  v111 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v97 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v112 = &v88 - v19;
  v20 = sub_22D01483C();
  v108 = *(v20 - 8);
  v109 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v113 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Activity(0);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v96 = (&v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25, v27);
  v29 = (&v88 - v28);
  v117 = sub_22D01430C();
  v30 = *(v117 - 8);
  v32 = MEMORY[0x28223BE20](v117, v31);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v88 - v36;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = *(v1 + 136);
    v102 = v1;
    v116 = a1;
    sub_22D01425C();
    sub_22D0142DC();
    v39 = sub_22D01428C();
    v42 = *(v30 + 8);
    v41 = v30 + 8;
    v40 = v42;
    v42(v34, v117);
    v115 = v39;
    if (v39)
    {
      v94 = v40;
      v95 = v41;
      if (qword_28143FB30 != -1)
      {
        swift_once();
      }

      v43 = sub_22D01637C();
      v44 = __swift_project_value_buffer(v43, qword_281444438);
      sub_22CF0CCBC(v116, v29, type metadata accessor for Activity);
      v90 = v44;
      v45 = sub_22D01636C();
      v46 = sub_22D01690C();
      v47 = os_log_type_enabled(v45, v46);
      v93 = v3;
      v92 = v4;
      v91 = v38;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v48 = 136446210;
        v50 = v37;
        v51 = *v29;
        v52 = v29[1];

        sub_22CF0F640(v29, type metadata accessor for Activity);
        v53 = sub_22CEEE31C(v51, v52, aBlock);
        v37 = v50;

        *(v48 + 4) = v53;
        _os_log_impl(&dword_22CEE1000, v45, v46, "Ending overdue activity: %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x2318C6860](v49, -1, -1);
        MEMORY[0x2318C6860](v48, -1, -1);
      }

      else
      {

        sub_22CF0F640(v29, type metadata accessor for Activity);
      }

      v54 = v112;
      v55 = *(v116 + v23[9]);
      if (*(v55 + 16))
      {
        v56 = *(v108 + 16);
        v56(v113, v55 + ((*(v108 + 80) + 32) & ~*(v108 + 80)), v109);
        sub_22CF37A40();
        v89 = v37;
        if (v57)
        {
          sub_22D01494C();
        }

        else
        {
          sub_22D01493C();
        }

        v66 = v116;
        v67 = v116[1];
        v96 = *v116;
        v68 = (v116 + v23[13]);
        v69 = v68[1];
        v90 = *v68;
        v70 = v98;
        (*(v110 + 16))(v97, v54, v111);

        v71 = v103;
        sub_22D01485C();
        type metadata accessor for ActivityParticipantEvent.EventType(0);
        swift_storeEnumTagMultiPayload();
        v72 = v109;
        v56(&v71[v70[7]], v113, v109);
        v73 = v70[9];
        v74 = v23[14];
        v75 = sub_22D0146BC();
        v76 = *(v75 - 8);
        (*(v76 + 16))(&v71[v73], v66 + v74, v75);
        (*(v76 + 56))(&v71[v73], 0, 1, v75);
        *v71 = v96;
        *(v71 + 1) = v67;
        *(v71 + 2) = v90;
        *(v71 + 3) = v69;
        v77 = &v71[v70[8]];
        v78 = v102;
        *v77 = v102;
        *(v77 + 1) = &off_28402C560;
        v71[v70[10]] = 0;
        v116 = *(v78 + 72);
        v79 = v101;
        sub_22CF0CCBC(v71, v101, type metadata accessor for ActivityParticipantEvent);
        v80 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v81 = swift_allocObject();
        v82 = v91;
        *(v81 + 16) = Strong;
        *(v81 + 24) = v82;
        sub_22CF0A72C(v79, v81 + v80, type metadata accessor for ActivityParticipantEvent);
        aBlock[4] = sub_22CFA5C9C;
        aBlock[5] = v81;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CEF8B58;
        aBlock[3] = &block_descriptor_23;
        v83 = _Block_copy(aBlock);

        swift_unknownObjectRetain();
        v84 = v104;
        sub_22D0164EC();
        v118 = MEMORY[0x277D84F90];
        sub_22CEF888C(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CF0EDA8();
        v85 = v106;
        v86 = v93;
        sub_22D016ADC();
        MEMORY[0x2318C5B10](0, v84, v85, v83);
        _Block_release(v83);
        swift_unknownObjectRelease();
        (*(v92 + 8))(v85, v86);
        (*(v105 + 8))(v84, v107);
        sub_22CF0F640(v71, type metadata accessor for ActivityParticipantEvent);
        (*(v110 + 8))(v112, v111);
        (*(v108 + 8))(v113, v72);
        v94(v89, v117);
      }

      else
      {
        v58 = v96;
        sub_22CF0CCBC(v116, v96, type metadata accessor for Activity);
        v59 = sub_22D01636C();
        v60 = sub_22D0168EC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          aBlock[0] = v62;
          *v61 = 136446210;
          v63 = *v58;
          v64 = v58[1];

          sub_22CF0F640(v58, type metadata accessor for Activity);
          v65 = sub_22CEEE31C(v63, v64, aBlock);

          *(v61 + 4) = v65;
          _os_log_impl(&dword_22CEE1000, v59, v60, "No content sources exist for overdue activity: %{public}s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          MEMORY[0x2318C6860](v62, -1, -1);
          MEMORY[0x2318C6860](v61, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_22CF0F640(v58, type metadata accessor for Activity);
        }

        v94(v37, v117);
      }
    }

    else
    {
      v40(v37, v117);
      swift_unknownObjectRelease();
    }

    return v115 & 1;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CFD0684()
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = MEMORY[0x28223BE20](v70, v1);
  v69 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v68 = (&v59 - v6);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v67 = (&v59 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v66 = (&v59 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v59 - v14;
  v59 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v59);
  swift_beginAccess();
  v15 = *(v0 + 120);
  v16 = *(v15 + 16);
  v78 = MEMORY[0x277D84F90];
  if (v16)
  {
    v79 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v16, 0);
    v78 = v79;
    v17 = v15 + 64;
    v18 = sub_22D016AEC();
    v19 = 0;
    v20 = *(v15 + 36);
    v60 = v15 + 72;
    v61 = v16;
    v63 = v15 + 64;
    v62 = v20;
    v64 = v15;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v15 + 32))
    {
      if ((*(v17 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v20 != *(v15 + 36))
      {
        goto LABEL_27;
      }

      v72 = 1 << v18;
      v73 = v18 >> 6;
      v71 = v19;
      v22 = v70;
      v23 = *(v70 + 48);
      v24 = *(v15 + 56);
      v25 = (*(v15 + 48) + 16 * v18);
      v27 = *v25;
      v26 = v25[1];
      v28 = type metadata accessor for Activity(0);
      v29 = v65;
      sub_22CF0CCBC(v24 + *(*(v28 - 8) + 72) * v18, &v65[v23], type metadata accessor for Activity);
      v30 = v66;
      *v66 = v27;
      *(v30 + 8) = v26;
      v31 = *(v22 + 48);
      sub_22CF0A72C(&v29[v23], v30 + v31, type metadata accessor for Activity);
      v32 = v67;
      *v67 = v27;
      *(v32 + 8) = v26;
      sub_22CF0CCBC(v30 + v31, v32 + *(v22 + 48), type metadata accessor for Activity);
      v33 = v68;
      sub_22CEEB6DC(v32, v68, &unk_27D9F3840, &unk_22D01A2B0);
      v34 = *v33;
      v76 = v33[1];
      v77 = v34;
      v74 = *(v22 + 48);
      v35 = v69;
      sub_22CEEB6DC(v32, v69, &unk_27D9F3840, &unk_22D01A2B0);
      swift_bridgeObjectRetain_n();

      v36 = *(v22 + 48);
      v75 = sub_22CF0B174();
      v38 = v37;
      v39 = v32;
      v40 = v78;
      sub_22CEEC3D8(v39, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v35 + v36, type metadata accessor for Activity);
      sub_22CF0F640(v33 + v74, type metadata accessor for Activity);
      sub_22CEEC3D8(v30, &unk_27D9F3840, &unk_22D01A2B0);
      v79 = v40;
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      v78 = v40;
      if (v42 >= v41 >> 1)
      {
        sub_22CF4414C((v41 > 1), v42 + 1, 1);
        v78 = v79;
      }

      v44 = v77;
      v43 = v78;
      *(v78 + 16) = v42 + 1;
      v45 = (v43 + 48 * v42);
      v46 = v75;
      v47 = v76;
      v45[4] = v44;
      v45[5] = v47;
      v45[6] = v46;
      v45[7] = v38;
      v45[9] = MEMORY[0x277D837D0];
      v15 = v64;
      v21 = 1 << *(v64 + 32);
      if (v18 >= v21)
      {
        goto LABEL_28;
      }

      v17 = v63;
      v48 = *(v63 + 8 * v73);
      if ((v48 & v72) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v20) = v62;
      if (v62 != *(v64 + 36))
      {
        goto LABEL_30;
      }

      v49 = v48 & (-2 << (v18 & 0x3F));
      if (v49)
      {
        v21 = __clz(__rbit64(v49)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = v73 << 6;
        v51 = v73 + 1;
        v52 = (v60 + 8 * v73);
        while (v51 < (v21 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_22CF44CF8(v18, v62, 0);
            v21 = __clz(__rbit64(v53)) + v50;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v18, v62, 0);
      }

LABEL_4:
      v19 = v71 + 1;
      v18 = v21;
      if (v71 + 1 == v61)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v78 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v55 = sub_22D016D3C();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v79 = v55;

    sub_22CF623EC(v56, 1, &v79);

    v57 = v79;
    os_unfair_lock_unlock(v59);
    return v57;
  }

  return result;
}

uint64_t sub_22CFD0C44()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = MEMORY[0x28223BE20](v65, v1);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v63 = (&v54 - v6);
  MEMORY[0x28223BE20](v5, v7);
  v62 = &v54 - v8;
  v9 = type metadata accessor for Activity(0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v56 = (&v54 - v16);
  v17 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v17);
  swift_beginAccess();
  v57 = v0;
  v18 = *(v0 + 24);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v55 = v17;
    v71 = MEMORY[0x277D84F90];

    sub_22CF44324(0, v19, 0);
    v20 = v71;
    v21 = v18 + 64;
    result = sub_22D016AEC();
    v23 = result;
    v24 = 0;
    v58 = v18 + 72;
    v59 = v19;
    v60 = v18 + 64;
    v61 = v18;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(v18 + 32))
    {
      if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_26;
      }

      v68 = 1 << v23;
      v69 = v23 >> 6;
      v26 = *(v18 + 36);
      v66 = v24;
      v67 = v26;
      v27 = v65;
      v28 = *(v65 + 48);
      v29 = *(v18 + 56);
      v30 = (*(v18 + 48) + 16 * v23);
      v32 = *v30;
      v31 = v30[1];
      v70 = *(v10 + 72);
      v33 = v20;
      v34 = v62;
      sub_22CF0CC54(v29 + v70 * v23, &v62[v28], type metadata accessor for Activity);
      v35 = v14;
      v36 = v63;
      *v63 = v32;
      v36[1] = v31;
      v37 = &v34[v28];
      v20 = v33;
      sub_22CFA8FC0(v37, v36 + *(v27 + 48));
      v38 = v36;
      v14 = v35;
      v39 = v64;
      sub_22CFD1F4C(v38, v64);

      sub_22CFA8FC0(v39 + *(v27 + 48), v35);
      v71 = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_22CF44324((v40 > 1), v41 + 1, 1);
        v20 = v71;
      }

      *(v20 + 16) = v41 + 1;
      result = sub_22CFA8FC0(v35, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v41 * v70);
      v18 = v61;
      v25 = 1 << *(v61 + 32);
      if (v23 >= v25)
      {
        goto LABEL_27;
      }

      v21 = v60;
      v42 = *(v60 + 8 * v69);
      if ((v42 & v68) == 0)
      {
        goto LABEL_28;
      }

      if (v67 != *(v61 + 36))
      {
        goto LABEL_29;
      }

      v43 = v42 & (-2 << (v23 & 0x3F));
      if (v43)
      {
        v25 = __clz(__rbit64(v43)) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = v69 << 6;
        v45 = v69 + 1;
        v46 = (v58 + 8 * v69);
        while (v45 < (v25 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            result = sub_22CF44CF8(v23, v67, 0);
            v25 = __clz(__rbit64(v47)) + v44;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v23, v67, 0);
      }

LABEL_4:
      v24 = v66 + 1;
      v23 = v25;
      if (v66 + 1 == v59)
      {

        v49 = v57;
        v17 = v55;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v49 = v57;
LABEL_21:
    *(v49 + 24) = MEMORY[0x277D84F98];

    os_unfair_lock_unlock(v17);
    v50 = *(v20 + 16);
    if (v50)
    {
      v51 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v52 = *(v10 + 72);
      v53 = v56;
      do
      {
        sub_22CF0CC54(v51, v53, type metadata accessor for Activity);
        sub_22CFD120C(v53);
        sub_22CF0F640(v53, type metadata accessor for Activity);
        v51 += v52;
        --v50;
      }

      while (v50);
    }
  }

  return result;
}

uint64_t sub_22CFD1130()
{

  sub_22CF460CC(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFD11A4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

void sub_22CFD120C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22D01495C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v79, v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01483C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v83 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Activity(0);
  v16 = MEMORY[0x28223BE20](v81, v15);
  v76 = (&v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v71 - v19);
  v21 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v21);
  Strong = swift_unknownObjectWeakLoadStrong();
  v23 = *(v2 + 48);
  os_unfair_lock_unlock(v21);
  if (Strong)
  {
    v77 = v23;
    v78 = v7;
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v24 = sub_22D01637C();
    v25 = __swift_project_value_buffer(v24, qword_281444450);
    sub_22CF0CC54(a1, v20, type metadata accessor for Activity);
    v75 = v25;
    v26 = sub_22D01636C();
    v27 = sub_22D01690C();
    v28 = os_log_type_enabled(v26, v27);
    v82 = Strong;
    v80 = v2;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v72 = a1;
      v30 = v29;
      v31 = swift_slowAlloc();
      v84 = v31;
      *v30 = 136446210;
      v32 = v12;
      v33 = v11;
      v35 = *v20;
      v34 = v20[1];

      sub_22CF0F640(v20, type metadata accessor for Activity);
      v36 = v35;
      v11 = v33;
      v12 = v32;
      v37 = sub_22CEEE31C(v36, v34, &v84);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_22CEE1000, v26, v27, "Dismissing momentary activity: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2318C6860](v31, -1, -1);
      v38 = v30;
      a1 = v72;
      MEMORY[0x2318C6860](v38, -1, -1);
    }

    else
    {

      sub_22CF0F640(v20, type metadata accessor for Activity);
    }

    v39 = v81;
    v40 = *(a1 + *(v81 + 36));
    if (*(v40 + 16))
    {
      v41 = v12;
      v74 = v12;
      v42 = *(v12 + 80);
      v43 = a1;
      v44 = *(v41 + 16);
      v45 = v83;
      v44(v83, v40 + ((v42 + 32) & ~v42), v11);
      v46 = *v43;
      v47 = v43[1];
      v48 = (v43 + *(v39 + 52));
      v49 = v11;
      v73 = v11;
      v50 = v48[1];
      v75 = *v48;
      v76 = v46;
      v71 = v47;
      v72 = v50;
      v51 = v79;

      sub_22D01494C();
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v44(&v10[v51[7]], v45, v49);
      v52 = v51[9];
      v53 = *(v39 + 56);
      v54 = sub_22D0146BC();
      v55 = *(v54 - 8);
      (*(v55 + 16))(&v10[v52], v43 + v53, v54);
      (*(v55 + 56))(&v10[v52], 0, 1, v54);
      v56 = v71;
      *v10 = v76;
      *(v10 + 1) = v56;
      v57 = v74;
      v58 = v72;
      *(v10 + 2) = v75;
      *(v10 + 3) = v58;
      v59 = &v10[v51[8]];
      *v59 = v80;
      *(v59 + 1) = &off_28402C648;
      v10[v51[10]] = 0;
      ObjectType = swift_getObjectType();
      v61 = v77;
      v62 = *(v77 + 24);

      v62(v10, ObjectType, v61);
      swift_unknownObjectRelease();
      sub_22CF0F640(v10, type metadata accessor for ActivityParticipantEvent);
      (*(v57 + 8))(v83, v73);
    }

    else
    {
      v63 = v76;
      sub_22CF0CC54(a1, v76, type metadata accessor for Activity);
      v64 = sub_22D01636C();
      v65 = sub_22D0168EC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v84 = v67;
        *v66 = 136446210;
        v68 = *v63;
        v69 = v63[1];

        sub_22CF0F640(v63, type metadata accessor for Activity);
        v70 = sub_22CEEE31C(v68, v69, &v84);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_22CEE1000, v64, v65, "No content sources exist for dismissed activity: %{public}s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x2318C6860](v67, -1, -1);
        MEMORY[0x2318C6860](v66, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_22CF0F640(v63, type metadata accessor for Activity);
      }
    }
  }

  else
  {
    sub_22D016CFC();
    __break(1u);
  }
}

uint64_t sub_22CFD1930()
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = MEMORY[0x28223BE20](v69, v1);
  v68 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v67 = (&v58 - v6);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v66 = (&v58 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v65 = (&v58 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v64 = &v58 - v14;
  v58 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v58);
  swift_beginAccess();
  v15 = *(v0 + 24);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v76 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v16, 0);
    v17 = v76;
    v18 = v15 + 64;
    v19 = sub_22D016AEC();
    v20 = 0;
    v21 = *(v15 + 36);
    v59 = v15 + 72;
    v60 = v16;
    v61 = v21;
    v62 = v15 + 64;
    v63 = v15;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v15 + 32))
    {
      if ((*(v18 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_26;
      }

      if (v21 != *(v15 + 36))
      {
        goto LABEL_27;
      }

      v71 = 1 << v19;
      v72 = v19 >> 6;
      v70 = v20;
      v23 = v69;
      v24 = *(v69 + 48);
      v25 = *(v15 + 56);
      v26 = (*(v15 + 48) + 16 * v19);
      v28 = *v26;
      v27 = v26[1];
      v29 = type metadata accessor for Activity(0);
      v30 = v64;
      sub_22CF0CC54(v25 + *(*(v29 - 8) + 72) * v19, &v64[v24], type metadata accessor for Activity);
      v31 = v65;
      *v65 = v28;
      *(v31 + 8) = v27;
      v32 = *(v23 + 48);
      sub_22CFA8FC0(&v30[v24], v31 + v32);
      v75 = v17;
      v33 = v66;
      *v66 = v28;
      *(v33 + 8) = v27;
      sub_22CF0CC54(v31 + v32, v33 + *(v23 + 48), type metadata accessor for Activity);
      v34 = v67;
      sub_22CFD1E74(v33, v67);
      v35 = *v34;
      v73 = v34[1];
      v74 = v35;
      v36 = *(v23 + 48);
      v37 = v68;
      sub_22CFD1E74(v33, v68);
      swift_bridgeObjectRetain_n();

      v38 = *(v23 + 48);
      v39 = sub_22CF0B174();
      v41 = v40;
      v42 = v33;
      v17 = v75;
      sub_22CFD1EE4(v42);
      sub_22CF0F640(v37 + v38, type metadata accessor for Activity);
      sub_22CF0F640(v34 + v36, type metadata accessor for Activity);
      sub_22CFD1EE4(v31);
      v76 = v17;
      v44 = *(v17 + 16);
      v43 = *(v17 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22CF4414C((v43 > 1), v44 + 1, 1);
        v17 = v76;
      }

      *(v17 + 16) = v44 + 1;
      v45 = (v17 + 48 * v44);
      v46 = v73;
      v45[4] = v74;
      v45[5] = v46;
      v45[6] = v39;
      v45[7] = v41;
      v45[9] = MEMORY[0x277D837D0];
      v15 = v63;
      v22 = 1 << *(v63 + 32);
      if (v19 >= v22)
      {
        goto LABEL_28;
      }

      v18 = v62;
      v47 = *(v62 + 8 * v72);
      if ((v47 & v71) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v21) = v61;
      if (v61 != *(v63 + 36))
      {
        goto LABEL_30;
      }

      v48 = v47 & (-2 << (v19 & 0x3F));
      if (v48)
      {
        v22 = __clz(__rbit64(v48)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v72 << 6;
        v50 = v72 + 1;
        v51 = (v59 + 8 * v72);
        while (v50 < (v22 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            sub_22CF44CF8(v19, v61, 0);
            v22 = __clz(__rbit64(v52)) + v49;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v19, v61, 0);
      }

LABEL_4:
      v20 = v70 + 1;
      v19 = v22;
      if (v70 + 1 == v60)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v17 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v54 = sub_22D016D3C();
    }

    else
    {
      v54 = MEMORY[0x277D84F98];
    }

    v76 = v54;

    sub_22CF623EC(v55, 1, &v76);

    v56 = v76;
    os_unfair_lock_unlock(v58);
    return v56;
  }

  return result;
}

uint64_t sub_22CFD1E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFD1EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CFD1F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22CFD1FBC(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B3C();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014B2C();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFD20E8(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444390);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, a4, v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    v12 = *(*&v7[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock] + 16);
    os_unfair_lock_lock(v12);
    swift_beginAccess();
    v13 = sub_22CF60F9C(a3);
    swift_endAccess();

    os_unfair_lock_unlock(v12);
  }
}

void sub_22CFD2258()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4060, &unk_22D01D5C0);
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v63 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3660, &qword_22D01BBC8);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v66 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3668, &qword_22D01BBD0);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v69 = &v50 - v9;
  v76 = sub_22D01696C();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v10);
  v75 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v50 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3678, &qword_22D01BBD8);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v16);
  v18 = &v50 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3680, &qword_22D01BBE0);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v19);
  v57 = &v50 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3688, &qword_22D01BBE8);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v21);
  v60 = &v50 - v22;
  v23 = *(v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener);
  if (v23)
  {
    [v23 activate];
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer), *(v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer + 24));
    v72 = v0;
    v79 = sub_22D015F3C();
    v80 = *(v0 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue);
    v24 = v80;
    v74 = sub_22D01693C();
    v25 = *(v74 - 8);
    v26 = *(v25 + 56);
    v77 = v25 + 56;
    v26(v15, 1, 1, v74);
    v51 = v26;
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3690, &qword_22D01BBF0);
    v28 = sub_22CEEC38C();
    v54 = MEMORY[0x277CBCD90];
    sub_22CEE8394(&qword_28143D9D0, &unk_27D9F3690, &qword_22D01BBF0, MEMORY[0x277CBCD90]);
    v29 = sub_22CEEC438(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
    v52 = v28;
    v73 = v29;
    sub_22D01647C();
    sub_22CEEC3D8(v15, &qword_27D9F3670, &qword_22D01BF00);

    v53 = MEMORY[0x277CBCD60];
    sub_22CEE8394(&qword_28143DA10, &qword_27D9F3678, &qword_22D01BBD8, MEMORY[0x277CBCD60]);
    sub_22CFD5F5C();
    v30 = v57;
    v31 = v56;
    sub_22D01649C();
    v55[1](v18, v31);
    v32 = v75;
    sub_22D01695C();
    v79 = v27;
    v26(v15, 1, 1, v74);
    v56 = MEMORY[0x277CBCBE0];
    sub_22CEE8394(&unk_28143DA60, &qword_27D9F3680, &qword_22D01BBE0, MEMORY[0x277CBCBE0]);
    v33 = v27;
    v34 = v60;
    v35 = v59;
    sub_22D01648C();
    sub_22CEEC3D8(v15, &qword_27D9F3670, &qword_22D01BF00);

    v36 = *(v78 + 8);
    v78 += 8;
    v55 = v36;
    (v36)(v32, v76);
    (*(v58 + 8))(v30, v35);
    swift_allocObject();
    v37 = v72;
    swift_unknownObjectWeakInit();
    v59 = MEMORY[0x277CBCCF8];
    sub_22CEE8394(&unk_28143DA48, &qword_27D9F3688, &qword_22D01BBE8, MEMORY[0x277CBCCF8]);
    v38 = v62;
    sub_22D0164AC();

    (*(v61 + 8))(v34, v38);
    v62 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_subscriptions;
    swift_beginAccess();
    sub_22D0163EC();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager), *(v37 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager + 24));
    v79 = sub_22CF464B0();
    v39 = v33;
    v80 = v33;
    v40 = v74;
    v41 = v51;
    v51(v15, 1, 1, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F36B0, &unk_22D01D5E0);
    sub_22CEE8394(&unk_28143D9E8, &unk_27D9F36B0, &unk_22D01D5E0, v54);
    v42 = v63;
    sub_22D01647C();
    sub_22CEEC3D8(v15, &qword_27D9F3670, &qword_22D01BF00);

    sub_22CEE8394(&qword_28143DA30, &unk_27D9F4060, &unk_22D01D5C0, v53);
    sub_22CFD6018();
    v44 = v65;
    v43 = v66;
    sub_22D01649C();
    (*(v64 + 8))(v42, v44);
    v45 = v75;
    sub_22D01694C();
    v79 = v39;
    v41(v15, 1, 1, v40);
    sub_22CEE8394(&qword_28143DA70, &qword_27D9F3660, &qword_22D01BBC8, v56);
    v46 = v69;
    v47 = v45;
    v48 = v68;
    sub_22D01648C();
    sub_22CEEC3D8(v15, &qword_27D9F3670, &qword_22D01BF00);

    (v55)(v47, v76);
    (*(v67 + 8))(v43, v48);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22CEE8394(&qword_28143DA58, &qword_27D9F3668, &qword_22D01BBD0, v59);
    v49 = v71;
    sub_22D0164AC();

    (*(v70 + 8))(v46, v49);
    swift_beginAccess();
    sub_22D0163EC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_22CFD2DCC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_22D01659C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue);
    *v7 = v11;
    (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
    v12 = v11;
    LOBYTE(v11) = sub_22D0165BC();
    (*(v4 + 8))(v7, v3);
    if (v11)
    {
      v13 = *(*&v10[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock] + 16);
      os_unfair_lock_lock(v13);
      sub_22CFD371C(v10, v8);
      os_unfair_lock_unlock(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_22CFD2F40(uint64_t *a1, uint64_t a2)
{
  v3 = sub_22D01659C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue);
    *v7 = v11;
    (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
    v12 = v11;
    LOBYTE(v11) = sub_22D0165BC();
    (*(v4 + 8))(v7, v3);
    if (v11)
    {
      v13 = *(*&v10[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock] + 16);
      os_unfair_lock_lock(v13);
      sub_22CFD30B4(v8, v10);
      os_unfair_lock_unlock(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_22CFD30B4(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_clients;

  v59 = v7;
  swift_beginAccess();
  v8 = 0;
  v55 = 0;
  v9 = (63 - v4) >> 6;
  v10 = &off_278748000;
  *&v11 = 67240192;
  v54 = v11;
  v56 = v9;
  v57 = v3;
  v58 = a2;
LABEL_5:
  while (v6)
  {
LABEL_10:
    v13 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v14 = v13[1];
    v62 = *v13;
    v15 = *(a2 + v59);
    if ((v15 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();

      sub_22D016B3C();
      _s11SessionCore6ClientCMa_1();
      sub_22CEEC438(&unk_27D9F36D0, _s11SessionCore6ClientCMa_1, MEMORY[0x277D85378]);
      sub_22D01689C();
      v17 = v68;
      v16 = v69;
      v18 = v70;
      v19 = v71;
      v20 = v72;
    }

    else
    {
      v21 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v22 = ~v21;
      v23 = -v21;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v17 = v15;
      v20 = v24 & *(v15 + 56);
      swift_bridgeObjectRetain_n();

      v18 = v22;
      v19 = 0;
    }

    v6 &= v6 - 1;
    v25 = (v18 + 64) >> 6;
    v64 = v25;
    v65 = v14;
    v61 = v16;
    v63 = v17;
    while (1)
    {
      if (v17 < 0)
      {
        if (!sub_22D016BAC())
        {
          goto LABEL_49;
        }

        _s11SessionCore6ClientCMa_1();
        swift_dynamicCast();
        v27 = v67;
        v30 = v20;
        v16 = v61;
        if (!v67)
        {
LABEL_50:
          v14 = v65;
LABEL_49:
          sub_22CEE57FC(v17);

          a2 = v58;
          sub_22CFD4BD8(v62, v14);

          v9 = v56;
          v3 = v57;
          goto LABEL_5;
        }
      }

      else
      {
        v28 = v19;
        v29 = v20;
        if (!v20)
        {
          while (1)
          {
            v19 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v19 >= v25)
            {
              goto LABEL_49;
            }

            v29 = *(v16 + 8 * v19);
            ++v28;
            if (v29)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
        }

LABEL_26:
        v30 = (v29 - 1) & v29;
        v27 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v27)
        {
          goto LABEL_50;
        }
      }

      v66 = v30;
      v31 = [*(&v27->isa + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection) remoteProcess];
      v32 = [v31 bundleIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = sub_22D01667C();
        v36 = v35;
      }

      else
      {
        v39 = [objc_opt_self() identifierWithPid_];
        if (!v39)
        {
          if (qword_28143FB00 != -1)
          {
            swift_once();
          }

          v47 = sub_22D01637C();
          __swift_project_value_buffer(v47, qword_2814443C0);
          v31 = v31;
          v26 = sub_22D01636C();
          v48 = sub_22D0168EC();
          v14 = v65;
          if (os_log_type_enabled(v26, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = v54;
            *(v49 + 4) = [v31 v10[417]];

            _os_log_impl(&dword_22CEE1000, v26, v48, "Couldn't fetch an identifier for pid: %{public}d", v49, 8u);
            v50 = v49;
            v17 = v63;
            MEMORY[0x2318C6860](v50, -1, -1);
          }

          else
          {

            v26 = v31;
          }

          [v31 v10[417]];
          goto LABEL_19;
        }

        v40 = v39;
        v41 = objc_opt_self();
        v67 = 0;
        v42 = v40;
        v43 = [v41 handleForIdentifier:v42 error:&v67];
        if (!v43)
        {
          v51 = v67;
          v52 = sub_22D01416C();

          swift_willThrow();
          v55 = 0;
          goto LABEL_48;
        }

        v44 = v43;
        v45 = v67;

        v33 = [v44 name];
        if (!v33)
        {

          v27 = v31;
          v31 = v42;
LABEL_48:
          v14 = v65;
          v17 = v63;
LABEL_19:

          v27 = v31;
          v16 = v61;
          goto LABEL_20;
        }

        v34 = sub_22D01667C();
        v36 = v46;

        v31 = v42;
        v16 = v61;
      }

      v14 = v65;
      if (v34 == v62 && v36 == v65)
      {
        break;
      }

      v38 = sub_22D016DFC();

      if (v38)
      {
        goto LABEL_52;
      }

      v10 = &off_278748000;
      v17 = v63;
LABEL_20:

      v20 = v66;
      v25 = v64;
    }

LABEL_52:
    sub_22CEE57FC(v63);

    sub_22CEE90A4();

    v3 = v57;
    a2 = v58;
    v9 = v56;
    v10 = &off_278748000;
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_56;
    }

    if (v12 >= v9)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_10;
    }
  }

  return result;
}

double sub_22CFD371C(uint64_t a1, uint64_t a2)
{
  v127[5] = *MEMORY[0x277D85DE8];
  v109 = sub_22D0161DC();
  v3 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v4);
  *&v108 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v121 = &v106 - v8;
  v119 = type metadata accessor for Activity(0);
  v9 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v10);
  v118 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22D015E7C();
  v120 = *(v123 - 8);
  v13 = MEMORY[0x28223BE20](v123, v12);
  v122 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v117 = &v106 - v16;
  v17 = *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager), *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager + 24));
  v18 = *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer + 24);
  v19 = *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer), v18);
  sub_22CFD43F8(v18, v19);
  (*(*(v17 + 8) + 8))();

  v21 = sub_22CF7C338(v20);

  v22 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens;
  v116 = a1;
  v23 = *(a1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens);
  v24 = *(v23 + 16);
  v25 = *(v21 + 16);
  v107 = v3;
  v26 = v9;
  if (v24 > v25 >> 3)
  {

    v27 = sub_22CF63900(v23, v21);
  }

  else
  {
    v127[0] = v21;

    sub_22CF62A34(v23);

    v27 = v127[0];
  }

  v28 = v116;
  *(v116 + v22) = v21;

  v29 = 0;
  v126 = MEMORY[0x277D84FA0];
  v30 = v27 + 56;
  v31 = 1 << *(v27 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v27 + 56);
  v114 = (v28 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_activityStore);
  v34 = (v31 + 63) >> 6;
  v113 = v120 + 16;
  v112 = (v120 + 32);
  v111 = (v26 + 48);
  v110 = (v120 + 8);
  ++v107;
  v36 = v122;
  v35 = v123;
  v115 = v27;
  while (v33)
  {
    v42 = v121;
LABEL_16:
    v44 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v45 = v120;
    v46 = v117;
    (*(v120 + 2))(v117, *(v27 + 48) + *(v120 + 9) * (v44 | (v29 << 6)), v35);
    v45[4](v36, v46, v35);
    v47 = v114[4];
    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    v48 = sub_22D015E4C();
    (*(v47 + 16))(v48);

    v49 = v119;
    if ((*v111)(v42, 1, v119) == 1)
    {
      sub_22CEEC3D8(v42, &qword_27D9F3810, &unk_22D018FA0);
      v37 = v108;
      v38 = v122;
      sub_22D015E6C();
      v39 = sub_22D01619C();
      v41 = v40;
      (*v107)(v37, v109);
      sub_22CEE54CC(v127, v39, v41);

      v35 = v123;
      (*v110)(v38, v123);
      v36 = v38;
    }

    else
    {
      v50 = v118;
      sub_22CFA8FC0(v42, v118);
      v51 = sub_22CFD46CC(*(v50 + *(v49 + 36)));
      v52 = *(v51 + 2);
      if (v52)
      {
        v53 = (v51 + 40);
        do
        {
          v54 = *(v53 - 1);
          v55 = *v53;

          sub_22CEE54CC(v127, v54, v55);

          v53 += 2;
          --v52;
        }

        while (v52);
      }

      v36 = v122;
      v35 = v123;
      (*v110)(v122, v123);
      sub_22CF0C71C(v118);
    }

    v27 = v115;
  }

  v42 = v121;
  while (1)
  {
    v43 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    if (v43 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v43);
    ++v29;
    if (v33)
    {
      v29 = v43;
      goto LABEL_16;
    }
  }

  v57 = (v126 + 56);
  v56 = *(v126 + 7);
  v113 = v126;
  v58 = -1 << v126[32];
  if (-v58 < 64)
  {
    v59 = ~(-1 << -v58);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & v56;
  v112 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_clients;
  swift_beginAccess();
  v61 = 0;
  v109 = 0;
  v62 = (63 - v58) >> 6;
  v63 = &off_278748000;
  *&v64 = 67240192;
  v108 = v64;
  v110 = v62;
  v111 = v57;
LABEL_25:
  if (v60)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v65 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_75;
    }

    if (v65 >= v62)
    {
      break;
    }

    v60 = v57[v65];
    ++v61;
    if (v60)
    {
      v61 = v65;
LABEL_30:
      v66 = (*(v113 + 6) + ((v61 << 10) | (16 * __clz(__rbit64(v60)))));
      v67 = v66[1];
      v117 = *v66;
      v115 = *(v116 + v112);
      if ((v115 & 0xC000000000000001) != 0)
      {
        swift_bridgeObjectRetain_n();

        sub_22D016B3C();
        _s11SessionCore6ClientCMa_1();
        sub_22CEEC438(&unk_27D9F36D0, _s11SessionCore6ClientCMa_1, MEMORY[0x277D85378]);
        sub_22D01689C();
        v68 = v127[0];
        v69 = v127[1];
        v70 = v127[2];
        v71 = v127[3];
        v72 = v127[4];
      }

      else
      {
        v73 = -1 << *(v115 + 32);
        v69 = v115 + 56;
        v74 = ~v73;
        v75 = -v73;
        if (v75 < 64)
        {
          v76 = ~(-1 << v75);
        }

        else
        {
          v76 = -1;
        }

        v68 = v115;
        v72 = v76 & *(v115 + 56);
        swift_bridgeObjectRetain_n();

        v70 = v74;
        v71 = 0;
      }

      v60 &= v60 - 1;
      v114 = v70;
      v77 = (v70 + 8) >> 6;
      v120 = v67;
      v121 = v68;
      v118 = v77;
      v119 = v69;
      while (2)
      {
        v122 = v71;
        if (v68 < 0)
        {
          v82 = sub_22D016BAC();
          if (!v82 || (v124 = v82, _s11SessionCore6ClientCMa_1(), swift_dynamicCast(), v79 = v125, v123 = v72, !v125))
          {
LABEL_69:
            sub_22CEE57FC(v68);

            sub_22CFD4BD8(v117, v67);

            v57 = v111;
            v62 = v110;
            goto LABEL_25;
          }
        }

        else
        {
          v80 = v71;
          v81 = v72;
          if (!v72)
          {
            while (1)
            {
              v71 = v80 + 1;
              if (__OFADD__(v80, 1))
              {
                break;
              }

              if (v71 >= v77)
              {
                goto LABEL_69;
              }

              v81 = *(v69 + 8 * v71);
              ++v80;
              if (v81)
              {
                goto LABEL_46;
              }
            }

            __break(1u);
            goto LABEL_74;
          }

LABEL_46:
          v123 = (v81 - 1) & v81;
          v79 = *(*(v68 + 48) + ((v71 << 9) | (8 * __clz(__rbit64(v81)))));
          if (!v79)
          {
            goto LABEL_69;
          }
        }

        v83 = [*(&v79->isa + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection) remoteProcess];
        v84 = [v83 bundleIdentifier];
        if (v84)
        {
          v85 = v84;
          v86 = sub_22D01667C();
          v88 = v87;
          goto LABEL_52;
        }

        v91 = [objc_opt_self() identifierWithPid_];
        if (v91)
        {
          v92 = v91;
          v93 = objc_opt_self();
          v125 = 0;
          v94 = v92;
          v95 = [v93 handleForIdentifier:v94 error:&v125];
          if (v95)
          {
            v96 = v95;
            v97 = v125;

            v85 = [v96 name];
            if (v85)
            {
              v86 = sub_22D01667C();
              v88 = v98;

              v83 = v94;
LABEL_52:

              v67 = v120;
              if (v86 == v117 && v88 == v120)
              {

LABEL_71:
                sub_22CEE57FC(v121);

                sub_22CEE90A4();

                v57 = v111;
                v62 = v110;
                v63 = &off_278748000;
                goto LABEL_25;
              }

              v90 = sub_22D016DFC();

              v69 = v119;
              if (v90)
              {
                goto LABEL_71;
              }

              v63 = &off_278748000;
              v68 = v121;
              v72 = v123;
LABEL_40:

              v77 = v118;
              continue;
            }

            v79 = v83;
            v83 = v94;
          }

          else
          {
            v103 = v125;
            v104 = sub_22D01416C();

            swift_willThrow();
            v109 = 0;
          }

          v69 = v119;
          v72 = v123;
        }

        else
        {
          if (qword_28143FB00 != -1)
          {
            swift_once();
          }

          v99 = sub_22D01637C();
          __swift_project_value_buffer(v99, qword_2814443C0);
          v83 = v83;
          v78 = sub_22D01636C();
          v100 = sub_22D0168EC();
          v101 = os_log_type_enabled(v78, v100);
          v69 = v119;
          if (v101)
          {
            v102 = swift_slowAlloc();
            *v102 = v108;
            *(v102 + 4) = [v83 v63[417]];

            _os_log_impl(&dword_22CEE1000, v78, v100, "Couldn't fetch an identifier for pid: %{public}d", v102, 8u);
            MEMORY[0x2318C6860](v102, -1, -1);
          }

          else
          {

            v78 = v83;
          }

          v72 = v123;

          [v83 v63[417]];
        }

        break;
      }

      v79 = v83;
      v67 = v120;
      v68 = v121;
      goto LABEL_40;
    }
  }

  return result;
}

uint64_t sub_22CFD43F8(uint64_t a1, uint64_t a2)
{
  v35 = sub_22D0161DC();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v3);
  v34 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D015C8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D015F2C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v17 = (v12 - 8);
    v29[1] = v10;
    v30 = (v2 + 8);
    v18 = MEMORY[0x277D84F90];
    v31 = v16;
    v32 = v14;
    v33 = v12;
    v14(v9, v15, v5);
    while (1)
    {
      sub_22D015C6C();
      if (v19)
      {

        (*v17)(v9, v5);
      }

      else
      {
        v20 = v34;
        sub_22D015C5C();
        v21 = sub_22D01619C();
        v23 = v22;
        (*v30)(v20, v35);
        (*v17)(v9, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_22CFCE000(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        if (v25 >= v24 >> 1)
        {
          v18 = sub_22CFCE000((v24 > 1), v25 + 1, 1, v18);
        }

        *(v18 + 2) = v25 + 1;
        v26 = &v18[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
        v13 = v32;
        v16 = v31;
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v13(v9, v15, v5);
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v27 = sub_22CF7BDC4(v18);

  return v27;
}

char *sub_22CFD46CC(uint64_t a1)
{
  v46 = sub_22D0145EC();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22D01502C();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01483C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v55 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v39 - v13;
  v54 = a1;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = 0;
  v17 = v8 + 16;
  v53 = (v8 + 88);
  v52 = *MEMORY[0x277CB9320];
  v50 = *MEMORY[0x277CB9348];
  v49 = *MEMORY[0x277CB9328];
  v51 = (v8 + 8);
  v47 = (v8 + 96);
  v39 = (v4 + 8);
  v40 = (v4 + 32);
  v41 = v48 + 8;
  v42 = v48 + 32;
  v48 = MEMORY[0x277D84F90];
  do
  {
    for (i = v16; ; ++i)
    {
      if (i >= v15)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        result = sub_22D016CFC();
        __break(1u);
        return result;
      }

      v19 = *(v8 + 16);
      v20 = v17;
      v19(v14, v54 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i, v7);
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      v21 = v55;
      v22 = v20;
      v19(v55, v14, v7);
      v23 = (*v53)(v21, v7);
      if (v23 == v52)
      {
        v24 = v55;
        (*v47)(v55, v7);
        v25 = v45;
        v26 = v46;
        (*v42)(v45, v24, v46);
        v27 = sub_22D0145BC();
        v29 = v28;
        v30 = v41;
        goto LABEL_13;
      }

      if (v23 == v50)
      {
        break;
      }

      if (v23 != v49)
      {
        goto LABEL_24;
      }

      (*v51)(v14, v7);
      v17 = v20;
      if (v16 == v15)
      {
        return v48;
      }
    }

    v31 = v55;
    (*v47)(v55, v7);
    v25 = v43;
    v26 = v44;
    (*v40)(v43, v31, v44);
    v27 = sub_22D014F9C();
    v29 = v32;
    v30 = v39;
LABEL_13:
    (*v30)(v25, v26);
    (*v51)(v14, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_22CFCE000(0, *(v48 + 2) + 1, 1, v48);
    }

    v34 = *(v48 + 2);
    v33 = *(v48 + 3);
    if (v34 >= v33 >> 1)
    {
      v37 = sub_22CFCE000((v33 > 1), v34 + 1, 1, v48);
      v17 = v22;
      v48 = v37;
    }

    else
    {
      v17 = v22;
    }

    v35 = v48;
    *(v48 + 2) = v34 + 1;
    v36 = &v35[16 * v34];
    *(v36 + 4) = v27;
    *(v36 + 5) = v29;
  }

  while (v16 != v15);
  return v48;
}

uint64_t sub_22CFD4BD8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_28143FAE8 != -1)
  {
    swift_once();
  }

  v6 = sub_22D01637C();
  __swift_project_value_buffer(v6, qword_281444390);

  v7 = sub_22D01636C();
  v8 = sub_22D01690C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_22CEEE31C(a1, a2, &v21);
    _os_log_impl(&dword_22CEE1000, v7, v8, "Launching process to deliver push token for: %{private}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x2318C6860](v10, -1, -1);
    MEMORY[0x2318C6860](v9, -1, -1);
  }

  sub_22D01566C();
  v11 = sub_22D01563C();
  v12 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager), *(v3 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager + 24));
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = a2;
  v14 = *v12;
  v15 = *(*v12 + 40);
  v16 = *(*v12 + 48);
  __swift_project_boxed_opaque_existential_1((*v12 + 16), v15);
  v17 = *(v16 + 32);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v18 = v17(a1, a2, v15, v16);
  if (v18)
  {
    v19 = v18;

    sub_22CF7DFE8(v19, 0xD000000000000013, 0x800000022D0218F0, 2, v14, v11, a1, a2, 10.0);

    return swift_bridgeObjectRelease_n();
  }

  else
  {

    sub_22CF7D8CC(a1, a2, v14, v14, 0xD000000000000013, 0x800000022D0218F0, 2, sub_22CFD5F08, 10.0, v13);
  }
}

void sub_22CFD4EEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22D01562C();
  if (a1)
  {
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v7 = sub_22D01637C();
    __swift_project_value_buffer(v7, qword_281444390);

    oslog = sub_22D01636C();
    v8 = sub_22D0168EC();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136380675;
      *(v9 + 4) = sub_22CEEE31C(a3, a4, &v12);
      _os_log_impl(&dword_22CEE1000, oslog, v8, "Did not launch process for push token delivery: %{private}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    else
    {
    }
  }
}

id sub_22CFD5208(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22CFD52B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v69 = a3;
  v70 = a4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3640, &qword_22D01BBC0);
  MEMORY[0x28223BE20](v64, v7);
  v68 = &v57 - v8;
  v9 = sub_22D0149CC();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D014E2C();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D014AFC();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v58 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v57 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = (&v57 - v30);
  v32 = *a1;
  v33 = a1[1];
  *v31 = v32;
  v31[1] = v33;
  sub_22CF0F9C8(a2, &v57 + *(v29 + 48) - v30);
  sub_22CEEB6DC(v31, v27, &unk_27D9F3840, &unk_22D01A2B0);

  v34 = &v27[*(v19 + 48)];
  v35 = type metadata accessor for Activity(0);
  v36 = *(v34 + v35[9]);

  sub_22CF0C71C(v34);
  LOBYTE(v34) = sub_22CFD5880(v69, v70, v36);

  if ((v34 & 1) == 0)
  {
    sub_22CEEC3D8(v31, &unk_27D9F3840, &unk_22D01A2B0);
    return 0;
  }

  sub_22CEEB6DC(v31, v23, &unk_27D9F3840, &unk_22D01A2B0);

  v37 = &v23[*(v19 + 48)];
  if (*(v37 + v35[12]) == 1)
  {

    sub_22CF0C71C(v37);
  }

  else
  {
    v38 = sub_22D016DFC();

    sub_22CF0C71C(v37);
    if ((v38 & 1) == 0)
    {
      v54 = &unk_27D9F3840;
      v55 = &unk_22D01A2B0;
      v56 = v31;
      goto LABEL_16;
    }
  }

  sub_22CEEB6DC(v31, v27, &unk_27D9F3840, &unk_22D01A2B0);

  v39 = &v27[*(v19 + 48)];
  v40 = v35[5];
  v42 = v59;
  v41 = v60;
  (*(v59 + 16))(v15, v39 + v40, v60);
  sub_22CF0C71C(v39);
  v43 = v61;
  sub_22D014DBC();
  (*(v42 + 8))(v15, v41);
  v44 = v58;
  sub_22D01497C();
  (*(v62 + 8))(v43, v63);
  sub_22CEEC3D8(v31, &unk_27D9F3840, &unk_22D01A2B0);
  v45 = v65;
  v46 = *(v64 + 48);
  v47 = v68;
  v48 = v66;
  (*(v65 + 16))(v68, v67, v66);
  (*(v45 + 32))(&v47[v46], v44, v48);
  v49 = *(v45 + 88);
  v50 = v49(v47, v48);
  v51 = *MEMORY[0x277CB9580];
  if (v50 == *MEMORY[0x277CB9580])
  {
    v52 = v49(&v47[v46], v48);
    goto LABEL_8;
  }

  if (v50 == *MEMORY[0x277CB9578])
  {
    v52 = v49(&v47[v46], v48);
    if (v52 == v51)
    {
LABEL_12:
      (*(v45 + 8))(v47, v48);
      return 0;
    }

LABEL_8:
    if (v52 != *MEMORY[0x277CB9588])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
  v54 = &unk_27D9F3640;
  v55 = &qword_22D01BBC0;
  v56 = v47;
LABEL_16:
  sub_22CEEC3D8(v56, v54, v55);
  return 1;
}

uint64_t sub_22CFD5880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a1;
  v42 = sub_22D0145EC();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v5);
  v41 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22D01502C();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v8);
  v35 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01483C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return 0;
  }

  v22 = *(v11 + 16);
  v20 = v11 + 16;
  v21 = v22;
  v23 = (a3 + ((*(v20 + 64) + 32) & ~*(v20 + 64)));
  v38 = *(v20 + 56);
  v39 = *MEMORY[0x277CB9320];
  v34 = *MEMORY[0x277CB9348];
  v40 = (v20 - 8);
  v37 = (v20 + 80);
  v30 = *MEMORY[0x277CB9328];
  v29 = (v7 + 32);
  v31 = (v7 + 8);
  v32 = (v4 + 32);
  v33 = (v4 + 8);
  v22(v18, v23, v10);
  while (1)
  {
    v21(v15, v18, v10);
    v25 = (*(v20 + 72))(v15, v10);
    if (v25 != v39)
    {
      break;
    }

    (*v37)(v15, v10);
    (*v32)(v41, v15, v42);
    if (sub_22D0145BC() == v44 && v26 == v43)
    {

      (*v33)(v41, v42);
LABEL_19:
      (*v40)(v18, v10);
      return 1;
    }

    v24 = sub_22D016DFC();

    (*v33)(v41, v42);
LABEL_4:
    (*v40)(v18, v10);
    if (v24)
    {
      return 1;
    }

LABEL_5:
    v23 += v38;
    if (!--v19)
    {
      return 0;
    }

    v21(v18, v23, v10);
  }

  if (v25 == v34)
  {
    (*v37)(v15, v10);
    (*v29)(v35, v15, v36);
    if (sub_22D014F9C() == v44 && v27 == v43)
    {

      (*v31)(v35, v36);
      goto LABEL_19;
    }

    v24 = sub_22D016DFC();

    (*v31)(v35, v36);
    goto LABEL_4;
  }

  if (v25 == v30)
  {
    (*v40)(v18, v10);
    goto LABEL_5;
  }

  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CFD5D70()
{
  v0 = sub_22D014E3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01637C();
  __swift_allocate_value_buffer(v5, qword_281444390);
  __swift_project_value_buffer(v5, qword_281444390);
  (*(v1 + 104))(v4, *MEMORY[0x277CB9778], v0);
  return sub_22D01634C();
}

uint64_t sub_22CFD5E98(uint64_t a1)
{
  sub_22D015C3C();
  sub_22D015F5C();
}

unint64_t sub_22CFD5F5C()
{
  result = qword_28143D948;
  if (!qword_28143D948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F36A0, &qword_22D01BBF8);
    sub_22CEEC438(&qword_28143FB80, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D948);
  }

  return result;
}

unint64_t sub_22CFD6018()
{
  result = qword_28143D968;
  if (!qword_28143D968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F36C0, &qword_22D01BC00);
    sub_22CEEC438(&unk_28143F668, MEMORY[0x277CB9590], MEMORY[0x277CB9598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D968);
  }

  return result;
}

uint64_t sub_22CFD6104(uint64_t a1)
{
  v31 = sub_22D014CBC();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v30 = v6;
  v25[1] = v1;
  v34 = MEMORY[0x277D84F90];
  sub_22CF443AC(0, v7, 0);
  v8 = v34;
  v32 = a1 + 64;
  result = sub_22D016AEC();
  v10 = result;
  v11 = 0;
  v33 = *(a1 + 36);
  v28 = v3 + 32;
  v29 = v3;
  v26 = a1 + 72;
  v27 = v7;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v32 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v15 = v30;
    sub_22D014C9C();
    v34 = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_22CF443AC((v16 > 1), v17 + 1, 1);
      v8 = v34;
    }

    *(v8 + 16) = v17 + 1;
    result = (*(v29 + 32))(v8 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v17, v15, v31);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    v18 = *(v32 + 8 * v14);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v13 = v27;
    }

    else
    {
      v20 = v14 << 6;
      v21 = v14 + 1;
      v13 = v27;
      v22 = (v26 + 8 * v14);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22CF44CF8(v10, v33, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22CF44CF8(v10, v33, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    if (v11 == v13)
    {
      return v8;
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

uint64_t sub_22CFD6420(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  v40 = sub_22D014CBC();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v34 = v2;
    v44 = MEMORY[0x277D84F90];
    sub_22CF443AC(0, v8, 0);
    v43 = v44;
    v10 = a1 + 64;
    result = sub_22D016AEC();
    v11 = v4;
    v12 = result;
    v13 = 0;
    v38 = v11;
    v36 = v8;
    v37 = v11 + 32;
    v35 = a1 + 72;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (!*(*v41 + 16))
      {
        goto LABEL_25;
      }

      v42 = v13;
      v16 = *(a1 + 36);
      v17 = a1;
      v18 = (*(a1 + 48) + 16 * v12);
      v19 = *v18;
      v20 = v18[1];
      swift_bridgeObjectRetain_n();
      result = sub_22CEEC698(v19, v20);
      if ((v21 & 1) == 0)
      {
        goto LABEL_26;
      }

      v22 = v39;
      sub_22D014C9C();

      v23 = v43;
      v44 = v43;
      v25 = *(v43 + 16);
      v24 = *(v43 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22CF443AC((v24 > 1), v25 + 1, 1);
        v22 = v39;
        v23 = v44;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v43 = v23;
      result = (*(v38 + 32))(v23 + v26 + *(v38 + 72) * v25, v22, v40);
      a1 = v17;
      v14 = 1 << *(v17 + 32);
      if (v12 >= v14)
      {
        goto LABEL_27;
      }

      v27 = *(v10 + 8 * v15);
      if ((v27 & (1 << v12)) == 0)
      {
        goto LABEL_28;
      }

      if (v16 != *(v17 + 36))
      {
        goto LABEL_29;
      }

      v28 = v27 & (-2 << (v12 & 0x3F));
      if (v28)
      {
        v14 = __clz(__rbit64(v28)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v15 << 6;
        v30 = v15 + 1;
        v31 = (v35 + 8 * v15);
        while (v30 < (v14 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_22CF44CF8(v12, v16, 0);
            v14 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_22CF44CF8(v12, v16, 0);
      }

LABEL_4:
      v13 = v42 + 1;
      v12 = v14;
      if (v42 + 1 == v36)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

id sub_22CFD6774(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014ADC();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014ACC();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

double sub_22CFD68A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_28143FB78 != -1)
    {
      swift_once();
    }

    v9 = sub_22D01637C();
    __swift_project_value_buffer(v9, qword_2814444E0);
    v10 = sub_22D01636C();
    v11 = sub_22D01690C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22CEE1000, v10, v11, a4, v12, 2u);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    v13 = *(*&v8[OBJC_IVAR____TtC11SessionCore12OutputServer_lock] + 16);

    os_unfair_lock_lock(v13);
    swift_beginAccess();
    sub_22CFB3670(0, a3);
    swift_endAccess();
    os_unfair_lock_unlock(v13);
  }

  return result;
}

uint64_t sub_22CFD6B24()
{
  if (*v0)
  {
    return 0x7974697669746341;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22CFD6B70(void *a1)
{
  v1 = (*a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier);
  v2 = *v1;
  v3 = v1[1];
  type metadata accessor for Activity(0);
  if (v2 == sub_22D014F9C() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_22D016DFC();
  }

  return v6 & 1;
}

uint64_t sub_22CFD6C08(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for Activity(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v46 - v12;
  if (a1)
  {
    v14 = a1;
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v15 = sub_22D01637C();
    __swift_project_value_buffer(v15, qword_2814444B0);
    sub_22CF1C294(a3, v13, type metadata accessor for Activity);
    v16 = a1;
    v17 = sub_22D01636C();
    v18 = sub_22D01690C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47 = v20;
      *v19 = 136315651;
      if (a2)
      {
        v21 = 0x7974697669746341;
      }

      else
      {
        v21 = 0xD000000000000010;
      }

      if (a2)
      {
        v22 = 0xEE006465646E6520;
      }

      else
      {
        v22 = 0x800000022D021B30;
      }

      v23 = sub_22CEEE31C(v21, v22, &v47);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2081;
      v24 = sub_22D014F9C();
      v26 = v25;
      sub_22CF0C71C(v13);
      v27 = sub_22CEEE31C(v24, v26, &v47);

      *(v19 + 14) = v27;
      *(v19 + 22) = 2082;
      v46 = a1;
      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v29 = sub_22D01669C();
      v31 = sub_22CEEE31C(v29, v30, &v47);

      *(v19 + 24) = v31;
      _os_log_impl(&dword_22CEE1000, v17, v18, "Did not launch process for reason %s: %{private}s: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v20, -1, -1);
      MEMORY[0x2318C6860](v19, -1, -1);

      return sub_22D01562C();
    }

    v44 = v13;
LABEL_24:
    sub_22CF0C71C(v44);
    return sub_22D01562C();
  }

  if (qword_28143FB60 != -1)
  {
    swift_once();
  }

  v32 = sub_22D01637C();
  __swift_project_value_buffer(v32, qword_2814444B0);
  sub_22CF1C294(a3, v10, type metadata accessor for Activity);
  v33 = sub_22D01636C();
  v34 = sub_22D01690C();
  if (!os_log_type_enabled(v33, v34))
  {

    v44 = v10;
    goto LABEL_24;
  }

  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v47 = v36;
  *v35 = 136315395;
  if (a2)
  {
    v37 = 0x7974697669746341;
  }

  else
  {
    v37 = 0xD000000000000010;
  }

  if (a2)
  {
    v38 = 0xEE006465646E6520;
  }

  else
  {
    v38 = 0x800000022D021B30;
  }

  v39 = sub_22CEEE31C(v37, v38, &v47);

  *(v35 + 4) = v39;
  *(v35 + 12) = 2081;
  v40 = sub_22D014F9C();
  v42 = v41;
  sub_22CF0C71C(v10);
  v43 = sub_22CEEE31C(v40, v42, &v47);

  *(v35 + 14) = v43;
  _os_log_impl(&dword_22CEE1000, v33, v34, "Launched process for reason %s: %{private}s", v35, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2318C6860](v36, -1, -1);
  MEMORY[0x2318C6860](v35, -1, -1);

  return sub_22D01562C();
}

void sub_22CFD70EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(v3 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_22CEEC698(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v16 = type metadata accessor for Activity(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for Activity(0);
  v15 = *(v14 - 8);
  sub_22CF1C294(v13 + *(v15 + 72) * v12, a3, type metadata accessor for Activity);

  (*(v15 + 56))(a3, 0, 1, v14);
LABEL_6:
  os_unfair_lock_unlock(v7);
}

id sub_22CFD7330(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_22CFD745C(uint64_t a1)
{
  sub_22CFD7578(319);
  if (v1 <= 0x3F)
  {
    sub_22CFD75DC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22CFD7578(uint64_t a1)
{
  if (!qword_28143DAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F37A0, &qword_22D01BC68);
    v1 = sub_22D01568C();
    if (!v2)
    {
      atomic_store(v1, &qword_28143DAE8);
    }
  }
}

void sub_22CFD75DC(uint64_t a1)
{
  if (!qword_2814439B8)
  {
    sub_22D014A1C();
    v1 = sub_22D016A8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814439B8);
    }
  }
}

uint64_t sub_22CFD7634@<X0>(uint64_t a1@<X0>, size_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a4;
  v37 = a3;
  v39 = a2;
  v5 = sub_22D014C8C();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = sub_22D014A1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
  swift_beginAccess();
  sub_22CEEB6DC(a1 + v18, v12, &qword_27D9F3820, &qword_22D01BD08);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22CEEC3D8(v12, &qword_27D9F3820, &qword_22D01BD08);
LABEL_10:
    v21 = v37;
    goto LABEL_11;
  }

  (*(v14 + 32))(v17, v12, v13);
  if ((sub_22D014A0C() & 1) == 0)
  {
    (*(v14 + 8))(v17, v13);
    goto LABEL_10;
  }

  v19 = *(type metadata accessor for Activity(0) + 56);
  v20 = sub_22D0146BC();
  v21 = v37;
  (*(*(v20 - 8) + 16))(v8, v37 + v19, v20);
  (*(v35 + 104))(v8, *MEMORY[0x277CB9638], v36);
  v22 = v39;
  v23 = *v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_22CF0D6DC(0, v23[2] + 1, 1, v23);
    *v39 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v34 = sub_22CF0D6DC((v25 > 1), v26 + 1, 1, v23);
    *v39 = v34;
  }

  (*(v14 + 8))(v17, v13);
  v27 = *v39;
  *(v27 + 16) = v26 + 1;
  (*(v35 + 32))(v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26, v8, v36);
LABEL_11:
  *(a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 1;
  v29 = *v21;
  v28 = v21[1];

  sub_22CFD7A04(v30, v29, v28);
  v32 = v31;

  *v38 = v32;
  return result;
}

void sub_22CFD7A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v6 = sub_22D014C8C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v63 = &v46 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v62 = &v46 - v15;
  os_unfair_lock_assert_owner(*(*(v3 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16));
  v16 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges;
  swift_beginAccess();
  v51 = v3;
  if (*(v3 + v16))
  {
    v17 = *(v3 + v16);
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v18 = *(v17 + 16);

  if (v18 && (sub_22CEEC698(a2, a3), (v19 & 1) != 0))
  {
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v47 = v17;
  v49 = a2;
  v50 = a3;
  v61 = *(v20 + 16);
  if (v61)
  {
    v21 = 0;
    v60 = v7 + 16;
    v58 = v7 + 88;
    v57 = *MEMORY[0x277CB9630];
    v22 = *MEMORY[0x277CB9628];
    v53 = *MEMORY[0x277CB9638];
    v54 = v22;
    v23 = (v7 + 8);
    v52 = (v7 + 32);
    v56 = MEMORY[0x277D84F90];
    v59 = v20;
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        return;
      }

      v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v26 = *(v7 + 72);
      v27 = *(v7 + 16);
      v28 = v62;
      v27(v62, v20 + v25 + v26 * v21, v6);
      v29 = v63;
      v27(v63, v28, v6);
      v30 = (*(v7 + 88))(v29, v6);
      if (v30 == v57)
      {
        v24 = *v23;
      }

      else
      {
        v24 = *v23;
        if (v30 == v54 || v30 == v53)
        {
          v24(v63, v6);
          v32 = *v52;
          (*v52)(v55, v62, v6);
          v33 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64[0] = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22CF443F0(0, *(v33 + 16) + 1, 1);
            v33 = v64[0];
          }

          v36 = *(v33 + 16);
          v35 = *(v33 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_22CF443F0((v35 > 1), v36 + 1, 1);
            v33 = v64[0];
          }

          *(v33 + 16) = v36 + 1;
          v56 = v33;
          v32((v33 + v25 + v36 * v26), v55, v6);
          goto LABEL_12;
        }
      }

      v24(v63, v6);
      v24(v62, v6);
LABEL_12:
      v20 = v59;
      if (v61 == ++v21)
      {
        goto LABEL_26;
      }
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_26:

  v66 = v56;

  sub_22CFA1564(v37);
  v38 = v66;
  v39 = v50;

  v40 = v47;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v64[0] = v40;
  sub_22CFC00E0(v38, v49, v39, v41);

  v65 = v64[0];
  v43 = sub_22CFD7280(v64);
  if (*v42)
  {
    v44 = v42;

    *v44 = MEMORY[0x277D84F98];
  }

  (v43)(v64, 0);

  sub_22CFD6420(v45, &v65);
}

uint64_t sub_22CFD7EB0@<X0>(uint64_t a1@<X8>)
{
  v70 = sub_22D01430C();
  v4 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v5);
  v69 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0149CC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v87 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22D01502C();
  v10 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v11);
  v86 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01488C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v85 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v17 = MEMORY[0x28223BE20](v67, v16);
  v66 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v65 = (v57 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v64 = v57 - v23;
  v63 = sub_22D01471C();
  v71 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v24);
  v26 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v28 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    return sub_22D01452C();
  }

  v84 = v4;
  v29 = *(*(Strong + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  v30 = Strong;
  os_unfair_lock_lock(v29);
  v31 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v32 = *(v30 + v31);

  os_unfair_lock_unlock(v29);
  swift_unknownObjectRelease();
  v33 = v1;
  v34 = sub_22CEE4290(v32, v33);

  v35 = *(v34 + 16);
  if (!v35)
  {
LABEL_11:

    return sub_22D01452C();
  }

  v57[0] = a1;
  v57[1] = v2;
  v88 = v28;
  sub_22CF44434(0, v35, 0);
  v36 = v88;
  v37 = sub_22D016AEC();
  v59 = (v10 + 16);
  v58 = (v84 + 16);
  v57[2] = v71 + 32;
  v62 = v26;
  v61 = v34;
  v60 = v34 + 64;
  while (1)
  {
    v72 = v35;
    v84 = v36;
    v38 = *(v34 + 36);
    v39 = v67;
    v40 = *(v67 + 48);
    v41 = v64;
    v83 = v37;
    v73 = v38;
    v42 = sub_22CFA3598(&v64[v40], v37, v38, 0, v34);
    v43 = v65;
    *v65 = v42;
    *(v43 + 8) = v44;
    sub_22CF0A794(&v41[v40], v43 + *(v39 + 48), type metadata accessor for Activity);
    v45 = v66;
    sub_22CEEB6DC(v43, v66, &unk_27D9F3840, &unk_22D01A2B0);

    v46 = (v45 + *(v39 + 48));
    v47 = *v46;
    v81 = *(v46 + 1);
    v82 = v47;
    v48 = type metadata accessor for Activity(0);

    sub_22D014D7C();
    v49 = sub_22D014D4C();
    v79 = v50;
    v80 = v49;
    v51 = v48[6];
    v52 = *&v46[v48[7]];
    v77 = *&v46[v48[8]];
    v78 = v52;
    (*v59)(v86, &v46[v51], v68);

    sub_22D014DBC();

    v76 = sub_22D014CFC();
    v75 = sub_22D014D1C();
    v74 = sub_22D014D0C();
    (*v58)(v69, &v46[v48[11]], v70);

    v36 = v84;
    sub_22D014D8C();

    v53 = v62;
    sub_22D0146FC();
    sub_22CEEC3D8(v43, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0C71C(v46);
    v88 = v36;
    v55 = *(v36 + 16);
    v54 = *(v36 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_22CF44434((v54 > 1), v55 + 1, 1);
      v36 = v88;
    }

    *(v36 + 16) = v55 + 1;
    (*(v71 + 32))(v36 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v55, v53, v63);
    v34 = v61;
    result = v83;
    if (v83 < 0 || v83 >= -(-1 << *(v61 + 32)))
    {
      break;
    }

    if (((*(v60 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v73 != *(v61 + 36))
    {
      goto LABEL_15;
    }

    v37 = sub_22D016B0C();
    v35 = v72 - 1;
    if (v72 == 1)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22CFD881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22D01430C();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v49 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D0149CC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v53 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01502C();
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v52 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01488C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v51 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = v39 - v20;
  v22 = type metadata accessor for Activity(0);
  v23 = *(v22 - 1);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = a3;
    sub_22CFD70EC(a1, a2, v21);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      swift_unknownObjectRelease();
      sub_22CEEC3D8(v21, &qword_27D9F3810, &unk_22D018FA0);
    }

    else
    {
      sub_22CF0A794(v21, v26, type metadata accessor for Activity);
      sub_22CF16990(v26);
      if (v30)
      {
        v31 = *v26;
        v44 = *(v26 + 1);
        v45 = v31;

        sub_22D014D7C();
        v32 = sub_22D014D4C();
        v42 = v33;
        v43 = v32;
        v34 = v22[6];
        v35 = *&v26[v22[7]];
        v40 = *&v26[v22[8]];
        v41 = v35;
        (*(v46 + 16))(v52, &v26[v34], v12);

        sub_22D014DBC();

        LODWORD(v46) = sub_22D014CFC();
        v39[3] = sub_22D014D1C();
        sub_22D014D0C();
        (*(v47 + 16))(v49, &v26[v22[11]], v48);

        sub_22D014D8C();

        v36 = v50;
        sub_22D0146FC();
        swift_unknownObjectRelease();
        sub_22CF0C71C(v26);
        v37 = sub_22D01471C();
        return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      }

      sub_22CF0C71C(v26);
      swift_unknownObjectRelease();
    }

    v38 = sub_22D01471C();
    return (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  }

  else
  {
    v27 = sub_22D01471C();
    v28 = *(*(v27 - 8) + 56);

    return v28(a3, 1, 1, v27);
  }
}

unint64_t *sub_22CFD9114(unint64_t *result, uint64_t a2, void *a3, void *a4)
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

    v8 = a4;
    v9 = sub_22CEE443C(v7, a2, a3);

    return v9;
  }

  return result;
}

uint64_t sub_22CFD91CC(void *a1)
{
  v3 = *(type metadata accessor for Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_22CFD6C08(a1, v4, v5);
}

uint64_t getEnumTagSinglePayload for OutputServer.LaunchEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OutputServer.LaunchEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22CFD9374()
{
  result = qword_27D9F3868;
  if (!qword_27D9F3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3868);
  }

  return result;
}

char *sub_22CFD93D8(char *a1)
{
  v64 = a1;
  v2 = type metadata accessor for Activity(0);
  v65 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v61 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v61 - v11);
  v13 = sub_22D01697C();
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01691C();
  MEMORY[0x28223BE20](v16, v17);
  v18 = sub_22D01653C();
  MEMORY[0x28223BE20](v18 - 8, v19);
  type metadata accessor for CachingActivityStore();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84F98];
  v66 = v1;
  *(v1 + 2) = v20;
  type metadata accessor for UnfairLock();
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *(v21 + 16) = v22;
  *v22 = 0;
  *(v1 + 4) = v21;
  sub_22CEEC38C();
  sub_22D0164FC();
  v69 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v62 + 13))(v61, *MEMORY[0x277D85268], v63);
  v62 = v64;
  v23 = v66;
  *(v23 + 3) = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v24 = qword_2814444F8;
    *(v23 + 5) = qword_2814444F8;
    if (!v24)
    {

      return v23;
    }

    v25 = sub_22CF5391C();

    v26 = *(v25 + 2);
    v63 = v26;
    v64 = v25;
    v27 = 0;
    if (v26)
    {
      v28 = &v25[(*(v65 + 80) + 32) & ~*(v65 + 80)];
      v29 = *(v65 + 72);
      v30 = 0xE000000000000000;
      do
      {
        sub_22CF0F9C8(v28, v12);
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v69 = v27;
          v70 = v30;

          MEMORY[0x2318C5860](8236, 0xE200000000000000);
          MEMORY[0x2318C5860](*v12, v12[1]);

          v27 = v69;
          v30 = v70;
        }

        else
        {
          v27 = *v12;
          v32 = v12[1];

          v30 = v32;
        }

        sub_22CF0C71C(v12);
        v28 += v29;
        --v26;
      }

      while (v26);
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_2814443C0);

    v34 = sub_22D01636C();
    v35 = sub_22D01690C();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v63;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v69 = v39;
      *v38 = 136446210;
      v12 = sub_22CEEE31C(v27, v30, &v69);

      *(v38 + 4) = v12;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Restored activities: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318C6860](v39, -1, -1);
      MEMORY[0x2318C6860](v38, -1, -1);
    }

    else
    {
    }

    v40 = v64;
    if (!v37)
    {
      break;
    }

    v41 = 0;
    v23 = &v64[(*(v65 + 80) + 32) & ~*(v65 + 80)];
    while (v41 < *(v40 + 2))
    {
      v42 = *(v65 + 72);
      sub_22CF0F9C8(&v23[v42 * v41], v9);
      v43 = *(v66 + 2);
      v12 = *v9;
      v44 = *(v9 + 1);
      swift_beginAccess();
      sub_22CF0F9C8(v9, v67);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v43 + 16);
      v46 = v68;
      *(v43 + 16) = 0x8000000000000000;
      v47 = sub_22CEEC698(v12, v44);
      v49 = v46[2];
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_37;
      }

      v53 = v48;
      if (v46[3] < v52)
      {
        sub_22CFB8AC8(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_22CEEC698(v12, v44);
        if ((v53 & 1) != (v54 & 1))
        {
          sub_22D016E1C();
          __break(1u);

          result = sub_22D016CFC();
          __break(1u);
          return result;
        }

LABEL_28:
        v55 = v68;
        if (v53)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v59 = v47;
      sub_22CFB6320();
      v47 = v59;
      v55 = v68;
      if (v53)
      {
LABEL_20:
        sub_22CFDA02C(v67, v55[7] + v47 * v42);
        goto LABEL_21;
      }

LABEL_29:
      v55[(v47 >> 6) + 8] |= 1 << v47;
      v56 = (v55[6] + 16 * v47);
      *v56 = v12;
      v56[1] = v44;
      sub_22CFA8FC0(v67, v55[7] + v47 * v42);
      v57 = v55[2];
      v51 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v51)
      {
        goto LABEL_38;
      }

      v55[2] = v58;

LABEL_21:
      ++v41;
      *(v43 + 16) = v55;

      swift_endAccess();
      sub_22CF0C71C(v9);
      v40 = v64;
      if (v63 == v41)
      {

        return v66;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  return v23;
}

uint64_t sub_22CFD9BD0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Activity(0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = *(a3 + 40);
  if (v12)
  {
    v19[1] = a2;
    v20 = a1;
    v19[0] = v19;
    MEMORY[0x28223BE20](v10, v11);
    v19[-2] = a4;
    v13 = *(v12 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v14 = sub_22CF3D558(v13);
    v15 = *(*(v12 + 96) + 16);

    os_unfair_lock_lock(v15);
    MEMORY[0x28223BE20](v16, v17);
    v19[-4] = sub_22CFDA000;
    v19[-3] = &v19[-4];
    v19[-2] = v14;
    sub_22D0143FC();
    os_unfair_lock_unlock(v15);

    sub_22CF3DC24();

    a1 = v20;
  }

  return a1(v10);
}

uint64_t sub_22CFD9F7C(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for Activity(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22CFD9BD0(a1, a2, v6, v7);
}

uint64_t sub_22CFDA02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22CFDA090(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v29 = sub_22D01697C();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22D01653C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener] = 0;
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_serverStartupToken] = -1;
  v12 = OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  *&v3[v12] = v13;
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_clients] = MEMORY[0x277D84FA0];
  v27 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CEEC480(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v5 + 104))(v28, *MEMORY[0x277D85268], v29);
  v15 = v30;
  *&v3[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_requestProcessingQueue] = sub_22D0169BC();
  v16 = v31;
  v17 = v32;
  *&v4[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_pushServer] = v31;
  *&v4[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_authorizationManager] = v17;
  v18 = type metadata accessor for PushFrequentUpdatesObservationServer();
  v36.receiver = v4;
  v36.super_class = v18;
  v19 = v16;

  v20 = objc_msgSendSuper2(&v36, sel_init);
  v34 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22CFDAFF8;
  *(v21 + 24) = &v33;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_46_1;
  v22 = _Block_copy(aBlock);
  v23 = objc_opt_self();
  v24 = v20;

  v25 = [v23 listenerWithConfigurator_];

  _Block_release(v22);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v26 = *&v24[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener];
    *&v24[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener] = v25;
  }
}