void sub_22D6EF890(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22D72DBE0();
    __swift_project_value_buffer(v11, qword_2814580E8);
    sub_22D6F37E4(a4, v10);
    v12 = a1;
    v13 = sub_22D72DBB0();
    v14 = sub_22D72E580();
    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v15 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_22D72E960();
      v20 = v19;
      sub_22D6F3848(v10);
      v21 = sub_22D72891C(v18, v20, &v25);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2114;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v23;
      *v16 = v23;
      _os_log_impl(&dword_22D6B4000, v13, v14, "%{public}s: Failed to update activity: %{public}@", v15, 0x16u);
      sub_22D6D5984(v16, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2318D0420](v17, -1, -1);
      MEMORY[0x2318D0420](v15, -1, -1);
    }

    else
    {

      sub_22D6F3848(v10);
    }
  }
}

void sub_22D6EFB24(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_22D72D730();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_project_boxed_opaque_existential_1((a1 + 176), *(a1 + 200));
  v10 = *v9;
  v11 = *(*v9 + 56);
  v20 = sub_22D6F5AF8;
  v21 = v10;
  os_unfair_lock_lock(v11 + 4);
  sub_22D6F5A78(v24);
  if (v2)
  {
    os_unfair_lock_unlock(v11 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v11 + 4);
    v12 = v24[0];
    swift_beginAccess();
    sub_22D6D5A4C(a1 + 16, &v22, &qword_27D9FF500, &qword_22D730530);
    if (v23)
    {
      sub_22D6D5D34(&v22, v24);
      v13 = sub_22D72D710();
      MEMORY[0x28223BE20](v13);
      *&v19[-16] = v24;
      *&v19[-8] = v8;
      v14 = sub_22D6E0460(MEMORY[0x277D84F98], sub_22D6F4734, &v19[-32], v12);

      *a2 = v14;
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    else
    {

      sub_22D6D5984(&v22, &qword_27D9FF500, &qword_22D730530);
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v15 = sub_22D72DBE0();
      __swift_project_value_buffer(v15, qword_2814580E8);
      v16 = sub_22D72DBB0();
      v17 = sub_22D72E580();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22D6B4000, v16, v17, "Schedule resolver is not set", v18, 2u);
        MEMORY[0x2318D0420](v18, -1, -1);
      }

      *a2 = sub_22D6D4390(MEMORY[0x277D84F90]);
    }
  }
}

uint64_t sub_22D6EFE08(uint64_t a1, uint64_t a2, char *a3, int *a4)
{
  v62 = a4;
  v57 = a3;
  v66 = a2;
  v61 = a1;
  v4 = sub_22D72D7A0();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72DD20();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v48 - v12;
  v13 = sub_22D72D730();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v63 = v8;
  sub_22D6D42A8(v57, v65);
  sub_22D713738(v65, v62, v22);
  sub_22D6D5984(v65, &qword_27D9FF500, &qword_22D730530);
  v57 = v22;
  sub_22D6D5A4C(v22, v20, &qword_27D9FFDD0, &qword_22D730140);
  if ((*(v14 + 48))(v20, 1, v13) == 1)
  {
    sub_22D6D5984(v20, &qword_27D9FFDD0, &qword_22D730140);
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    (*(v14 + 32))(v16, v20, v13);
    v49 = sub_22D72D670();
    v50 = v23;
    (*(v14 + 8))(v16, v13);
  }

  v24 = v66;
  v25 = v64;
  v26 = sub_22D6D5A4C(v66, v64, &unk_27D9FF4A0, &qword_22D730510);
  v27 = v63;
  v53 = *(v63 + 48);
  v28 = MEMORY[0x2318CE8F0](v26);
  v51 = v29;
  v52 = v28;
  v30 = v58;
  v48 = *(v58 + 8);
  v31 = v59;
  v48(v25, v59);
  v65[0] = 0;
  v65[1] = 0xE000000000000000;
  sub_22D6D5A4C(v24, v11, &unk_27D9FF4A0, &qword_22D730510);
  v32 = &v11[*(v27 + 48)];
  v62 = type metadata accessor for Alarm(0);
  v34 = v54;
  v33 = v55;
  v35 = v56;
  (*(v55 + 16))(v54, v32 + v62[11], v56);
  sub_22D6F3848(v32);
  sub_22D72E850();
  (*(v33 + 8))(v34, v35);
  v36 = v48;
  v48(v11, v31);
  MEMORY[0x2318CF680](58, 0xE100000000000000);
  MEMORY[0x2318CF680](v49, v50);

  MEMORY[0x2318CF680](10272, 0xE200000000000000);
  v37 = v66;
  sub_22D6D5A4C(v66, v11, &unk_27D9FF4A0, &qword_22D730510);
  v38 = v63;
  v39 = &v11[*(v63 + 48)];
  v40 = v60;
  (*(v30 + 16))(v60, v39 + v62[5], v31);
  sub_22D6F3848(v39);
  sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v41 = sub_22D72E960();
  MEMORY[0x2318CF680](v41);

  v36(v40, v31);
  v36(v11, v31);
  v42 = v36;
  MEMORY[0x2318CF680](58, 0xE100000000000000);
  sub_22D6D5A4C(v37, v11, &unk_27D9FF4A0, &qword_22D730510);
  v43 = &v11[*(v38 + 48)];
  v44 = (v43 + v62[6]);
  v45 = *v44;
  v46 = v44[1];

  sub_22D6F3848(v43);
  MEMORY[0x2318CF680](v45, v46);

  v42(v11, v31);
  MEMORY[0x2318CF680](41, 0xE100000000000000);
  v65[3] = MEMORY[0x277D837D0];
  sub_22D6BBBA4(v65, v52, v51);
  sub_22D6D5984(v57, &qword_27D9FFDD0, &qword_22D730140);
  return sub_22D6F3848(v64 + v53);
}

uint64_t sub_22D6F04F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
  sub_22D72E600();
  return v1;
}

void sub_22D6F0580(uint64_t *a1, uint64_t a2)
{
  v75 = type metadata accessor for Alarm(0);
  v72 = *(v75 - 8);
  v2 = MEMORY[0x28223BE20](v75);
  v4 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v71 = v64 - v5;
  v80 = sub_22D72D7A0();
  v6 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v74 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v64 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;

  v16 = v6;
  v17 = sub_22D6F38C4(v15);

  v18 = *(v14 + 200);
  v64[1] = v14;
  v19 = __swift_project_boxed_opaque_existential_1((v14 + 176), v18);
  v20 = *(*v19 + 56);
  MEMORY[0x28223BE20](v19);
  v64[-2] = sub_22D6F5AF8;
  v64[-1] = v21;
  os_unfair_lock_lock(v20 + 4);
  sub_22D6F5A78(v83);
  v65 = 0;
  os_unfair_lock_unlock(v20 + 4);
  v22 = 0;
  v24 = v83[0] + 64;
  v23 = *(v83[0] + 64);
  v73 = v83[0];
  v25 = 1 << *(v83[0] + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v67 = v16 + 16;
  v66 = v16 + 32;
  v82 = v17;
  v29 = (v17 + 56);
  v69 = v16;
  v78 = (v16 + 8);
  v81 = v4;
  v68 = v12;
  v30 = v74;
  v76 = v28;
  v77 = v83[0] + 64;
  v79 = v29;
  while (1)
  {
    if (!v27)
    {
      if (v28 <= v22 + 1)
      {
        v32 = v22 + 1;
      }

      else
      {
        v32 = v28;
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
          (*(*(v55 - 8) + 56))(v30, 1, 1, v55);
          v27 = 0;
          v22 = v33;
          goto LABEL_18;
        }

        v27 = *(v24 + 8 * v31);
        ++v22;
        if (v27)
        {
          v22 = v31;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v31 = v22;
LABEL_17:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v73;
    v37 = v69;
    v38 = v70;
    v39 = v80;
    (*(v69 + 16))(v70, *(v73 + 48) + *(v69 + 72) * v35, v80);
    v40 = v71;
    sub_22D6F37E4(*(v36 + 56) + *(v72 + 72) * v35, v71);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v42 = *(v41 + 48);
    v43 = *(v37 + 32);
    v30 = v74;
    v43(v74, v38, v39);
    sub_22D6D3C4C(v40, v30 + v42);
    (*(*(v41 - 8) + 56))(v30, 0, 1, v41);
    v12 = v68;
    v4 = v81;
    v29 = v79;
LABEL_18:
    sub_22D6D591C(v30, v12, &qword_27D9FF9E0, &qword_22D730298);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v44 - 8) + 48))(v12, 1, v44) == 1)
    {

      sub_22D6DAC98();
      sub_22D6D7C3C();

      return;
    }

    sub_22D6D3C4C(&v12[*(v44 + 48)], v4);
    v45 = v82;
    if (*(v82 + 16))
    {
      v46 = &v4[*(v75 + 24)];
      v48 = *v46;
      v47 = v46[1];
      sub_22D72EA20();
      sub_22D72E4E0();
      v49 = sub_22D72EA40();
      v50 = -1 << *(v45 + 32);
      v51 = v49 & ~v50;
      if ((*&v29[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51))
      {
        break;
      }
    }

LABEL_6:
    v4 = v81;
    sub_22D6F3848(v81);
    (*v78)(v12, v80);
    v28 = v76;
    v24 = v77;
  }

  v52 = ~v50;
  while (1)
  {
    v53 = (*(v82 + 48) + 16 * v51);
    v54 = *v53 == v48 && v53[1] == v47;
    if (v54 || (sub_22D72E980() & 1) != 0)
    {
      break;
    }

    v51 = (v51 + 1) & v52;
    if (((*&v29[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v29 = v65;
  sub_22D6E63E4(&v81[*(v75 + 20)], v48, v47);
  if (!v29)
  {
    v65 = 0;
    v29 = v79;
    goto LABEL_6;
  }

  sub_22D6F3848(v81);
  (*v78)(v12, v80);
  if (qword_2814572C8 == -1)
  {
    goto LABEL_35;
  }

LABEL_39:
  swift_once();
LABEL_35:
  v56 = sub_22D72DBE0();
  __swift_project_value_buffer(v56, qword_2814580E8);
  v57 = v29;
  v58 = sub_22D72DBB0();
  v59 = sub_22D72E580();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138543362;
    v62 = v29;
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 4) = v63;
    *v61 = v63;
    _os_log_impl(&dword_22D6B4000, v58, v59, "Failed to remove alarms for uninstalled apps from store: %{public}@", v60, 0xCu);
    sub_22D6D5984(v61, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v61, -1, -1);
    MEMORY[0x2318D0420](v60, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22D6F0DDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D6EBFFC();
  }

  return result;
}

uint64_t sub_22D6F0E34(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D72E380();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22D72D7A0();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = sub_22D72DD20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Alarm(0);
  v15 = *(v14 - 1);
  v16 = MEMORY[0x28223BE20](v14);
  v52 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = a1;
    v57 = result;
    sub_22D6EB8F4();
    v25 = v24;
    if (!*(v24 + 16) || (v26 = sub_22D6CC49C(v56), (v27 & 1) == 0))
    {
    }

    sub_22D6F37E4(*(v25 + 56) + *(v15 + 72) * v26, v20);

    sub_22D6D3C4C(v20, v22);
    (*(v11 + 16))(v13, &v22[v14[11]], v10);
    v28 = (*(v11 + 88))(v13, v10);
    if (v28 == *MEMORY[0x277CB9920] || v28 == *MEMORY[0x277CB9918] || v28 == *MEMORY[0x277CB9908])
    {
      goto LABEL_16;
    }

    if (v28 == *MEMORY[0x277CB9910])
    {
      v29 = v59;
      v30 = v60;
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v31 = sub_22D72DBE0();
      __swift_project_value_buffer(v31, qword_2814580E8);
      (*(v29 + 16))(v9, v56, v30);
      v32 = sub_22D72DBB0();
      v33 = sub_22D72E580();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v61 = v51;
        *v34 = 136446210;
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v35 = sub_22D72E960();
        v37 = v36;
        (*(v29 + 8))(v9, v60);
        v38 = sub_22D72891C(v35, v37, &v61);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_22D6B4000, v32, v33, "%{public}s: Stopping alerting alarm for cancelled activity", v34, 0xCu);
        v39 = v51;
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x2318D0420](v39, -1, -1);
        MEMORY[0x2318D0420](v34, -1, -1);
      }

      else
      {

        (*(v29 + 8))(v9, v30);
      }

      v40 = v14[6];
      v60 = v14[5];
      v41 = &v22[v40];
      v42 = *v41;
      v43 = v41[1];
      v44 = *(v57 + 216);
      v45 = v53;
      v46 = v54;
      *v53 = v44;
      v47 = v55;
      (*(v46 + 104))(v45, *MEMORY[0x277D85200], v55);
      v48 = v44;
      LOBYTE(v44) = sub_22D72E390();
      (*(v46 + 8))(v45, v47);
      if (v44)
      {
        v49 = v52;
        sub_22D6E81BC(&v22[v60], v42, v43, v52);
        sub_22D6E6C18(v49);
        sub_22D6F3848(v49);
        sub_22D6DAC98();
        sub_22D6D7C3C();
LABEL_16:

        return sub_22D6F3848(v22);
      }

      __break(1u);
    }

    result = sub_22D72E970();
    __break(1u);
  }

  return result;
}

unint64_t *sub_22D6F16D0(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22D6F3EA4(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22D6F1774(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_22D6F1818(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22D72EA20();
  sub_22D72E4E0();
  v8 = sub_22D72EA40();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22D72E980() & 1) != 0)
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

    sub_22D6F2768(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22D6F1968(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D72E740();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D72E730();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22D71B614(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22D6F22A0(v20 + 1, &qword_27D9FF548, &unk_22D730550);
    }

    v18 = v8;
    sub_22D71E1A8();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v11 = sub_22D72E6A0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22D6F28E8(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9FF548, &unk_22D730550, type metadata accessor for Client);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D72E6B0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22D6F1BB4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D72E740();

    if (v9)
    {

      _s12AlarmKitCore6ClientCMa_0(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D72E730();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22D71B650(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22D6F22A0(v20 + 1, &qword_27D9FF540, &unk_22D731770);
    }

    v18 = v8;
    sub_22D71E1A8();

    *v3 = v19;
    goto LABEL_16;
  }

  _s12AlarmKitCore6ClientCMa_0(0);
  v11 = sub_22D72E6A0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22D6F28E8(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9FF540, &unk_22D731770, _s12AlarmKitCore6ClientCMa_0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D72E6B0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22D6F1E00(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 32);
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *v2;
  sub_22D72EA20();
  sub_22D72E4E0();
  v32 = v6;
  sub_22D72E4E0();
  v31 = v3;
  MEMORY[0x2318CFBC0](v3);
  v9 = sub_22D72EA40();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    do
    {
      v14 = v13 + 40 * v11;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = *(v14 + 32);
      v18 = *v14 == v5 && *(v14 + 8) == v4;
      if (v18 || (sub_22D72E980() & 1) != 0)
      {
        if (v16 == v7 && v15 == v32)
        {
          if (v31 == v17)
          {
            goto LABEL_16;
          }
        }

        else if ((sub_22D72E980() & 1) != 0 && ((v31 ^ v17) & 1) == 0)
        {
LABEL_16:

          v20 = *(v8 + 48) + 40 * v11;
          v22 = *v20;
          v21 = *(v20 + 8);
          v23 = *(v20 + 16);
          v24 = *(v20 + 24);
          LOBYTE(v20) = *(v20 + 32);
          *a1 = v22;
          *(a1 + 8) = v21;
          *(a1 + 16) = v23;
          *(a1 + 24) = v24;
          *(a1 + 32) = v20;

          return 0;
        }
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v28;

  sub_22D6F2A6C(a2, v11, isUniquelyReferenced_nonNull_native);
  *v28 = v33;
  v27 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 16) = v27;
  *(a1 + 32) = *(a2 + 32);
  return 1;
}

uint64_t sub_22D6F2018(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF510, &qword_22D730538);
  result = sub_22D72E780();
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
      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
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

uint64_t sub_22D6F22A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22D72E780();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_22D72E6A0();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_22D6F24C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  result = sub_22D72E780();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_22D72EA20();
      sub_22D72E4E0();
      sub_22D72E4E0();
      MEMORY[0x2318CFBC0](v23);
      result = sub_22D72EA40();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
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
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22D6F2768(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22D6F2018(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22D6F2C7C();
      goto LABEL_16;
    }

    sub_22D6F30B8(v8 + 1);
  }

  v10 = *v4;
  sub_22D72EA20();
  sub_22D72E4E0();
  result = sub_22D72EA40();
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

      result = sub_22D72E980();
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
  result = sub_22D72E990();
  __break(1u);
  return result;
}

void sub_22D6F28E8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_22D6F22A0(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22D6F2E00(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_22D6F32F0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_22D72E6A0();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_22D72E6B0();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22D72E990();
  __break(1u);
}

uint64_t sub_22D6F2A6C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v31 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_22D6F24C0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22D6F2F40();
      goto LABEL_24;
    }

    sub_22D6F34FC(v6 + 1);
  }

  v8 = *(v5 + 32);
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *v3;
  sub_22D72EA20();
  sub_22D72E4E0();
  v33 = v11;
  sub_22D72E4E0();
  v32 = v8;
  MEMORY[0x2318CFBC0](v8);
  result = sub_22D72EA40();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a2 = result & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = v17 + 40 * a2;
      result = *v18;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      v22 = *v18 == v9 && *(v18 + 8) == v10;
      if (v22 || (result = sub_22D72E980(), (result & 1) != 0))
      {
        if (v19 == v33 && v20 == v12)
        {
          if (v32 == v21)
          {
            goto LABEL_23;
          }
        }

        else
        {
          result = sub_22D72E980();
          if ((result & 1) != 0 && ((v32 ^ v21) & 1) == 0)
          {
LABEL_23:
            result = sub_22D72E990();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = *(v24 + 48) + 40 * a2;
  v26 = *(v31 + 16);
  *v25 = *v31;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(v31 + 32);
  v27 = *(v24 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v29;
  }

  return result;
}

void *sub_22D6F2C7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF510, &qword_22D730538);
  v2 = *v0;
  v3 = sub_22D72E770();
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

id sub_22D6F2E00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D72E770();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_22D6F2F40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  v2 = *v0;
  v3 = sub_22D72E770();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

uint64_t sub_22D6F30B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF510, &qword_22D730538);
  result = sub_22D72E780();
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
      sub_22D72EA20();

      sub_22D72E4E0();
      result = sub_22D72EA40();
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

uint64_t sub_22D6F32F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22D72E780();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22D72E6A0();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_22D6F34FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  result = sub_22D72E780();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
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
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_22D72EA20();

      sub_22D72E4E0();
      sub_22D72E4E0();
      MEMORY[0x2318CFBC0](v23);
      result = sub_22D72EA40();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v32;
      v10 = v33;
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

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
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

void *sub_22D6F3788@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22D6F37E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D6F3848(uint64_t a1)
{
  v2 = type metadata accessor for Alarm(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D6F38C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318CF6E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22D6F1818(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22D6F395C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v56 = a2;
  v57 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = MEMORY[0x28223BE20](v65);
  v74 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v55 - v8;
  v9 = type metadata accessor for Alarm(0);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22D72D7A0();
  result = MEMORY[0x28223BE20](v71);
  v70 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v14 = 0;
  v68 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v61 = v12 + 16;
  v62 = v12;
  v66 = (v12 + 8);
  v60 = a4;
  v59 = a4 + 56;
  while (v20)
  {
    v24 = __clz(__rbit64(v20));
    v69 = (v20 - 1) & v20;
LABEL_13:
    v27 = v24 | (v14 << 6);
    v28 = v68;
    v29 = *(v62 + 16);
    v30 = v70;
    v31 = v71;
    v29(v70, v68[6] + *(v62 + 72) * v27, v71);
    v32 = v28[7];
    v33 = *(v63 + 72);
    v67 = v27;
    v34 = v32 + v33 * v27;
    v35 = v72;
    sub_22D6F37E4(v34, v72);
    v36 = v73;
    v29(v73, v30, v31);
    v37 = v65;
    sub_22D6F37E4(v35, v36 + *(v65 + 48));
    v38 = v36;
    v39 = v74;
    sub_22D6D5A4C(v38, v74, &unk_27D9FF4A0, &qword_22D730510);
    v40 = v39 + *(v37 + 48);
    v41 = (v40 + *(v64 + 24));
    v43 = *v41;
    v42 = v41[1];

    sub_22D6F3848(v40);
    v44 = v60;
    v45 = v59;
    if (*(v60 + 16) && (sub_22D72EA20(), sub_22D72E4E0(), v46 = sub_22D72EA40(), v47 = -1 << *(v44 + 32), v48 = v46 & ~v47, ((*(v45 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
    {
      v49 = ~v47;
      while (1)
      {
        v50 = (*(v44 + 48) + 16 * v48);
        v51 = *v50 == v43 && v50[1] == v42;
        if (v51 || (sub_22D72E980() & 1) != 0)
        {
          break;
        }

        v48 = (v48 + 1) & v49;
        if (((*(v45 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_22D6D5984(v73, &unk_27D9FF4A0, &qword_22D730510);
      v52 = *v66;
      v53 = v71;
      (*v66)(v74, v71);
      sub_22D6F3848(v72);
      result = (v52)(v70, v53);
      *(v57 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v54 = __OFADD__(v58++, 1);
      v20 = v69;
      if (v54)
      {
        __break(1u);
        return sub_22D6D2B38(v57, v56, v58, v68);
      }
    }

    else
    {
LABEL_5:

      sub_22D6D5984(v73, &unk_27D9FF4A0, &qword_22D730510);
      v22 = *v66;
      v23 = v71;
      (*v66)(v74, v71);
      sub_22D6F3848(v72);
      result = (v22)(v70, v23);
      v20 = v69;
    }
  }

  v25 = v14;
  while (1)
  {
    v14 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_22D6D2B38(v57, v56, v58, v68);
    }

    v26 = v16[v14];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v69 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6F3EA4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v57 = a4;
  v58 = a5;
  v45 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = MEMORY[0x28223BE20](v56);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Alarm(0);
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72D7A0();
  result = MEMORY[0x28223BE20](v13);
  v17 = 0;
  v59 = a3;
  v18 = a3;
  v19 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v18[8];
  v48 = v18 + 8;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v46 = 0;
  v47 = (v21 + 63) >> 6;
  v52 = v15 + 16;
  v53 = v15;
  v51 = (v15 + 8);
  while (v23)
  {
    v24 = __clz(__rbit64(v23));
    v60 = (v23 - 1) & v23;
LABEL_11:
    v27 = v24 | (v17 << 6);
    v28 = v59;
    v29 = *(v53 + 16);
    v29(v19, v59[6] + *(v53 + 72) * v27, v13);
    v30 = v28[7];
    v31 = *(v54 + 72);
    v49 = v27;
    sub_22D6F37E4(v30 + v31 * v27, v12);
    v29(v9, v19, v13);
    v32 = v56;
    sub_22D6F37E4(v12, &v9[*(v56 + 48)]);
    v33 = v50;
    sub_22D6D5A4C(v9, v50, &unk_27D9FF4A0, &qword_22D730510);
    v34 = v33 + *(v32 + 48);
    v35 = (v34 + *(v55 + 24));
    v37 = *v35;
    v36 = v35[1];

    sub_22D6F3848(v34);
    if (v37 == v57 && v36 == v58)
    {

      sub_22D6D5984(v9, &unk_27D9FF4A0, &qword_22D730510);
      v41 = *v51;
      (*v51)(v33, v13);
      sub_22D6F3848(v12);
      result = (v41)(v19, v13);
      v23 = v60;
LABEL_18:
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
        return sub_22D6D2B38(v45, v44, v46, v59);
      }
    }

    else
    {
      v39 = sub_22D72E980();

      sub_22D6D5984(v9, &unk_27D9FF4A0, &qword_22D730510);
      v40 = *v51;
      (*v51)(v33, v13);
      sub_22D6F3848(v12);
      result = (v40)(v19, v13);
      v23 = v60;
      if (v39)
      {
        goto LABEL_18;
      }
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v47)
    {
      return sub_22D6D2B38(v45, v44, v46, v59);
    }

    v26 = v48[v17];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v60 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6F4304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_22D6F16D0(v14, v9, a1, a2, a3);
      MEMORY[0x2318D0420](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_22D6F3EA4((v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_22D6F4548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6F45E8()
{
  result = qword_27D9FF508;
  if (!qword_27D9FF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF508);
  }

  return result;
}

id sub_22D6F468C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_22D6F4750(char *a1, char a2)
{
  v5 = *(sub_22D72DDD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22D72D7A0() - 8);
  v9 = *(v2 + v7);
  v10 = *(v2 + v7 + 8);
  v11 = (v2 + ((v7 + *(v8 + 80) + 16) & ~*(v8 + 80)));

  sub_22D6E9E94(a1, a2 & 1, v2 + v6, v9, v10, v11);
}

uint64_t sub_22D6F4888(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_22D6F48F0(void *a1, uint64_t a2, char a3)
{
  v7 = *(sub_22D72D7A0() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_22D6E56DC(a1, a2, a3 & 1, v8);
}

uint64_t sub_22D6F4998(uint64_t a1)
{
  v3 = *(sub_22D72E190() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_22D72D7A0() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_22D6D9040(a1, v8, v1 + v4, v9, v10, v1 + v7, v12, v13);
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_22D72E190();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_22D6F4C50()
{
  v1 = *(sub_22D72E190() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_22D72D7A0() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_22D6D9EF0(v6, (v0 + v2), v7, v8, v0 + v5, v10, v11);
}

uint64_t sub_22D6F4D70()
{
  v1 = *(sub_22D72DDC0() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_22D6DA74C(v2, v3, v4);
}

void sub_22D6F4DD4(char *a1, char a2)
{
  v5 = *(sub_22D72D7A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Alarm(0) - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_22D6DDD7C(a1, a2 & 1, v2 + v6, v9, v10);
}

uint64_t sub_22D6F4F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D6F4F64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v54 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = MEMORY[0x28223BE20](v62);
  v70 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v51 - v8;
  v9 = type metadata accessor for Alarm(0);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22D72D7A0();
  result = MEMORY[0x28223BE20](v67);
  v66 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v15 = 0;
  v64 = a3;
  v16 = *(a3 + 64);
  v53 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v57 = v13 + 16;
  v21 = a4 + 56;
  v59 = v13;
  v56 = (v13 + 8);
  v58 = v20;
  v68 = v11;
  while (v19)
  {
    v24 = __clz(__rbit64(v19));
    v65 = (v19 - 1) & v19;
LABEL_13:
    v27 = v24 | (v15 << 6);
    v28 = v64;
    v29 = *(v59 + 16);
    v31 = v66;
    v30 = v67;
    v29(v66, v64[6] + *(v59 + 72) * v27, v67);
    v32 = v28[7];
    v33 = *(v60 + 72);
    v63 = v27;
    v34 = v68;
    sub_22D6F37E4(v32 + v33 * v27, v68);
    v35 = v69;
    v29(v69, v31, v30);
    v36 = v62;
    sub_22D6F37E4(v34, v35 + *(v62 + 48));
    v37 = v70;
    sub_22D6D5A4C(v35, v70, &unk_27D9FF4A0, &qword_22D730510);
    v38 = v37 + *(v36 + 48);
    v39 = (v38 + *(v61 + 24));
    v41 = *v39;
    v40 = v39[1];

    sub_22D6F3848(v38);
    if (*(a4 + 16) && (sub_22D72EA20(), sub_22D72E4E0(), v42 = sub_22D72EA40(), v43 = -1 << *(a4 + 32), v44 = v42 & ~v43, ((*(v21 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0))
    {
      v45 = ~v43;
      while (1)
      {
        v46 = (*(a4 + 48) + 16 * v44);
        v47 = *v46 == v41 && v46[1] == v40;
        if (v47 || (sub_22D72E980() & 1) != 0)
        {
          break;
        }

        v44 = (v44 + 1) & v45;
        if (((*(v21 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      sub_22D6D5984(v69, &unk_27D9FF4A0, &qword_22D730510);
      v22 = *v56;
      v23 = v67;
      (*v56)(v70, v67);
      sub_22D6F3848(v68);
      result = (v22)(v66, v23);
      v20 = v58;
      v19 = v65;
    }

    else
    {
LABEL_22:

      sub_22D6D5984(v69, &unk_27D9FF4A0, &qword_22D730510);
      v48 = *v56;
      v49 = v67;
      (*v56)(v70, v67);
      sub_22D6F3848(v68);
      result = (v48)(v66, v49);
      *(v54 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v50 = __OFADD__(v55++, 1);
      v20 = v58;
      v19 = v65;
      if (v50)
      {
        __break(1u);
        return sub_22D6D2B38(v54, v52, v55, v64);
      }
    }
  }

  v25 = v15;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return sub_22D6D2B38(v54, v52, v55, v64);
    }

    v26 = *(v53 + 8 * v15);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v65 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D6F54A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
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

      v14 = sub_22D6F1774(v16, v11, a1, a2, a4);
      MEMORY[0x2318D0420](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  MEMORY[0x28223BE20](v13);
  bzero(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t objectdestroy_65Tm()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_22D72D7A0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);

  v8 = v1[8];
  v9 = sub_22D72DDB0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[9];
  v12 = sub_22D72DCF0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[11];
  v15 = sub_22D72DD20();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[12];
  v17 = sub_22D72DBA0();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = v1[13];
  v19 = sub_22D72D730();
  v20 = *(*(v19 - 8) + 8);
  v20(v5 + v18, v19);
  v20(v5 + v1[14], v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_22D6F59F4@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22D6F5D3C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF630, &unk_22D730700);
    sub_22D6D58D4(&qword_281457218, &qword_27D9FF630, &unk_22D730700, MEMORY[0x277CBCE20]);
    v1 = sub_22D72DC70();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_22D6F5E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF628, &qword_22D7306F8);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_27D9FF5E8 = result;
  return result;
}

void sub_22D6F5E44()
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  v2 = MEMORY[0x28223BE20](v53);
  v52 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x28223BE20](v2);
  v51 = (&v45 - v5);
  MEMORY[0x28223BE20](v4);
  v50 = &v45 - v6;
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v8 = *v7;
  v9 = *(*v7 + 56);
  v59 = sub_22D6F5AF8;
  v60 = v8;
  os_unfair_lock_lock(v9 + 4);
  sub_22D6F5A78(&v61);
  if (!v1)
  {
    os_unfair_lock_unlock(v9 + 4);
    v10 = sub_22D6F8FFC(v61);

    v11 = *(v10 + 2);
    if (!v11)
    {
LABEL_20:

      return;
    }

    v45 = 0;
    v61 = MEMORY[0x277D84F90];
    sub_22D6D3340(0, v11, 0);
    v12 = v61;
    v9 = (v10 + 64);
    v13 = sub_22D72E6F0();
    v14 = 0;
    v46 = v10 + 72;
    v47 = v11;
    v48 = (v10 + 64);
    v49 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << v10[32])
    {
      if ((*&v9[2 * (v13 >> 6)]._os_unfair_lock_opaque & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v56 = 1 << v13;
      v57 = v13 >> 6;
      v18 = *(v10 + 9);
      v54 = v14;
      v55 = v18;
      v19 = v53;
      v20 = *(v53 + 48);
      v21 = *(v10 + 6);
      v22 = *(v10 + 7);
      v23 = (v21 + 16 * v13);
      v58 = v12;
      v24 = *v23;
      v25 = v23[1];
      v26 = sub_22D72E100();
      v27 = *(v26 - 8);
      v28 = v50;
      (*(v27 + 16))(&v50[v20], v22 + *(v27 + 72) * v13, v26);
      v29 = v51;
      *v51 = v24;
      *(v29 + 8) = v25;
      (*(v27 + 32))(v29 + *(v19 + 48), &v28[v20], v26);
      v30 = v52;
      sub_22D6F9CC8(v29, v52);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(v19 + 48);
      v34 = *(v27 + 8);
      v9 = (v27 + 8);

      v34(v30 + v33, v26);
      v12 = v58;
      v61 = v58;
      v36 = *(v58 + 16);
      v35 = *(v58 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22D6D3340((v35 > 1), v36 + 1, 1);
        v12 = v61;
      }

      *(v12 + 16) = v36 + 1;
      v37 = v12 + 16 * v36;
      *(v37 + 32) = v31;
      *(v37 + 40) = v32;
      v10 = v49;
      v15 = 1 << v49[32];
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v9 = v48;
      v38 = *&v48[2 * v57]._os_unfair_lock_opaque;
      if ((v38 & v56) == 0)
      {
        goto LABEL_24;
      }

      if (v55 != *(v49 + 9))
      {
        goto LABEL_25;
      }

      v39 = v38 & (-2 << (v13 & 0x3F));
      if (v39)
      {
        v15 = __clz(__rbit64(v39)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v47;
        v17 = v54;
      }

      else
      {
        v40 = v57 << 6;
        v41 = v57 + 1;
        v16 = v47;
        v42 = &v46[8 * v57];
        v17 = v54;
        while (v41 < (v15 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_22D6D5264(v13, v55, 0);
            v15 = __clz(__rbit64(v43)) + v40;
            goto LABEL_5;
          }
        }

        sub_22D6D5264(v13, v55, 0);
      }

LABEL_5:
      v14 = v17 + 1;
      v13 = v15;
      if (v14 == v16)
      {
        goto LABEL_20;
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

  os_unfair_lock_unlock(v9 + 4);
  __break(1u);
}

void sub_22D6F6298(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v2 + 40;
      while (v6 < *(v2 + 16))
      {
        v8 = __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
        v9 = *(*v8 + 56);
        v10 = MEMORY[0x28223BE20](v8);
        MEMORY[0x28223BE20](v10);

        os_unfair_lock_lock(v9 + 4);
        sub_22D6F5B28(v11);
        ++v6;
        os_unfair_lock_unlock(v9 + 4);

        v7 += 16;
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      swift_once();
      v12 = sub_22D72DBE0();
      __swift_project_value_buffer(v12, qword_27DA016E8);
      v13 = 0;
      v14 = sub_22D72DBB0();
      v15 = sub_22D72E580();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138543362;
        v18 = 0;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_22D6B4000, v14, v15, "Failed to remove authorization for uninstalled apps from store: %{public}@", v16, 0xCu);
        sub_22D6D5984(v17, &unk_27D9FF4D0, &qword_22D730180);
        MEMORY[0x2318D0420](v17, -1, -1);
        MEMORY[0x2318D0420](v16, -1, -1);
      }

      else
      {
      }
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t sub_22D6F6544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22D72E300();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72E370();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_38;
  v12 = _Block_copy(aBlock);

  sub_22D72E330();
  v17 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

void sub_22D6F67EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22D72E100();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  v14 = *v13;
  v15 = *(*v13 + 56);
  v20 = sub_22D6D562C;
  v21 = v14;
  os_unfair_lock_lock(v15 + 4);
  sub_22D6F37CC(&v22);
  if (v4)
  {
    os_unfair_lock_unlock(v15 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v15 + 4);
    v16 = v22;
    if (*(v22 + 16) && (v17 = sub_22D6CC714(a2, a3), (v18 & 1) != 0))
    {
      (*(v10 + 16))(v12, *(v16 + 56) + *(v10 + 72) * v17, v9);

      (*(v10 + 32))(a4, v12, v9);
    }

    else
    {

      (*(v10 + 104))(a4, *MEMORY[0x277CB9AB8], v9);
    }
  }
}

void sub_22D6F69B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D72E300();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E370();
  v19 = *(v10 - 8);
  v20 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_1(a1 + 6, a1[9]);
  v14 = *(*v13 + 56);
  v25 = *v13;
  v26 = a2;
  v27 = a3;
  v22 = sub_22D6F8EE4;
  v23 = &v24;
  os_unfair_lock_lock(v14 + 4);
  sub_22D6F5B28(v15);
  os_unfair_lock_unlock(v14 + 4);
  if (!v3)
  {
    v18 = a1[3];
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    aBlock[4] = sub_22D6F8F04;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6C0FD8;
    aBlock[3] = &block_descriptor_1;
    v17 = _Block_copy(aBlock);

    sub_22D72E330();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_22D6F8F28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v12, v9, v17);
    _Block_release(v17);
    (*(v21 + 8))(v9, v7);
    (*(v19 + 8))(v12, v20);
  }
}

uint64_t sub_22D6F6CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AuthorizationBundleIDState(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 28);
  v10 = *MEMORY[0x277CB9AB8];
  v11 = sub_22D72E100();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  *v8 = a2;
  *(v8 + 1) = a3;

  sub_22D72DC10();
  return sub_22D6F8F80(v8);
}

void sub_22D6F6DB4(uint64_t a1)
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72)) + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_22D6F4510(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_22D6F6E50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v161 = a5;
  v162 = a6;
  v149 = a3;
  v150 = a4;
  v166 = *MEMORY[0x277D85DE8];
  v144 = *v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  MEMORY[0x28223BE20](v159);
  v160 = (&v136 - v10);
  v11 = sub_22D72D7D0();
  MEMORY[0x28223BE20](v11 - 8);
  v151 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E470();
  MEMORY[0x28223BE20](v13 - 8);
  v148 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72E450();
  MEMORY[0x28223BE20](v15 - 8);
  v145 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D72D5F0();
  MEMORY[0x28223BE20](v17 - 8);
  v147 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22D72D5E0();
  v153 = *(v156 - 1);
  v19 = MEMORY[0x28223BE20](v156);
  v146 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v152 = (&v136 - v21);
  v22 = sub_22D72E100();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v155 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v157 = &v136 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v136 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v136 - v31;
  if (qword_27D9FF120 != -1)
  {
    swift_once();
  }

  v33 = sub_22D72DBE0();
  v34 = __swift_project_value_buffer(v33, qword_27DA016E8);

  v163 = v34;
  v35 = sub_22D72DBB0();
  v36 = sub_22D72E5A0();

  v37 = os_log_type_enabled(v35, v36);
  v158 = v23;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v154 = v32;
    v39 = v22;
    v40 = v38;
    v41 = swift_slowAlloc();
    error = v41;
    *v40 = 136380675;
    *(v40 + 4) = sub_22D72891C(a1, a2, &error);
    _os_log_impl(&dword_22D6B4000, v35, v36, "Requesting permission to use AlarmKit: %{private}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x2318D0420](v41, -1, -1);
    v42 = v40;
    v22 = v39;
    v32 = v154;
    MEMORY[0x2318D0420](v42, -1, -1);
  }

  MEMORY[0x28223BE20](v43);
  *(&v136 - 4) = v7;
  *(&v136 - 3) = a1;
  *(&v136 - 2) = a2;
  sub_22D72E600();
  v142 = a1;
  v143 = a2;
  v44 = v158;
  (v158)[4](v32, v30, v22);
  v45 = v157;
  (v44)[13](v157, *MEMORY[0x277CB9AB8], v22);
  v46 = sub_22D72E0E0();
  v47 = v44 + 1;
  v48 = v44[1];
  v48(v45, v22);
  if ((v46 & 1) == 0)
  {
    v56 = v44[2];
    v158 = v44 + 2;
    v57 = v155;
    v156 = v56;
    v56(v155, v32, v22);
    v58 = v143;

    v59 = sub_22D72DBB0();
    v60 = sub_22D72E5A0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v141 = v47;
      v163 = v62;
      error = v62;
      *v61 = 136380931;
      *(v61 + 4) = sub_22D72891C(v142, v58, &error);
      *(v61 + 12) = 2082;
      v156(v157, v57, v22);
      v63 = sub_22D72E4C0();
      v64 = v57;
      v66 = v65;
      v48(v64, v22);
      v67 = sub_22D72891C(v63, v66, &error);

      *(v61 + 14) = v67;
      _os_log_impl(&dword_22D6B4000, v59, v60, "State is already known: %{private}s: %{public}s", v61, 0x16u);
      v68 = v163;
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v68, -1, -1);
      MEMORY[0x2318D0420](v61, -1, -1);
    }

    else
    {

      v48(v57, v22);
    }

    v55 = v160;
    v156(v160, v32, v22);
    goto LABEL_17;
  }

  if (qword_27D9FF100 != -1)
  {
    swift_once();
  }

  v49 = off_27D9FF5E8;

  os_unfair_lock_lock(v49 + 5);
  if (v49[4]._os_unfair_lock_opaque)
  {
    os_unfair_lock_unlock(v49 + 5);

    v50 = sub_22D72DBB0();
    v51 = sub_22D72E580();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22D6B4000, v50, v51, "Auth request is already in progress", v52, 2u);
      MEMORY[0x2318D0420](v52, -1, -1);
    }

    sub_22D6F9BB4();
    v53 = swift_allocError();
    *v54 = 1;
    v55 = v160;
    *v160 = v53;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v161(v55);
    sub_22D6D5984(v55, &unk_27D9FFAC0, &qword_22D7306F0);
    return (v48)(v32, v22);
  }

  v137 = v7;
  v154 = v32;
  LOBYTE(v49[4]._os_unfair_lock_opaque) = 1;
  os_unfair_lock_unlock(v49 + 5);

  v69 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v70 = v143;

  v71 = sub_22D72868C(v142, v70, 0);
  v139 = v22;
  v140 = v48;
  v141 = v44 + 1;
  v73 = v71;
  v74 = [v71 localizedName];
  sub_22D72E490();

  v75 = type metadata accessor for AuthorizationManager();
  v77 = v152;
  v76 = v153;
  *v152 = v75;
  v78 = v156;
  (*(v76 + 104))(v77, *MEMORY[0x277CC9120]);
  sub_22D72E440();
  sub_22D72E430();
  sub_22D72E420();

  sub_22D72E430();
  sub_22D72E460();
  v79 = *(v76 + 16);
  v80 = v146;
  v79(v146, v77, v78);
  sub_22D72D7C0();
  sub_22D72D600();
  v81 = sub_22D72E4B0();
  v157 = v82;
  v158 = v81;
  sub_22D72E410();
  v79(v80, v77, v78);
  sub_22D72D7C0();
  sub_22D72D600();
  error = sub_22D72E4B0();
  v165 = v83;
  v138 = v83;

  MEMORY[0x2318CF680](2570, 0xE200000000000000);
  MEMORY[0x2318CF680](v149, v150);
  v155 = error;
  v150 = v165;
  sub_22D72E410();
  v84 = v156;
  v79(v80, v77, v156);
  sub_22D72D7C0();
  sub_22D72D600();
  v145 = sub_22D72E4B0();
  v149 = v85;
  sub_22D72E410();
  v79(v80, v77, v84);
  sub_22D72D7C0();
  sub_22D72D600();
  v86 = sub_22D72E4B0();
  v88 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF338, &qword_22D7301E0);
  inited = swift_initStackObject();
  v90 = inited;
  *(inited + 16) = xmmword_22D730640;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_33;
  }

  v90[4] = sub_22D72E490();
  v90[5] = v91;
  v92 = MEMORY[0x277D837D0];
  v90[9] = MEMORY[0x277D837D0];
  v93 = v157;
  v90[6] = v158;
  v90[7] = v93;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v90[10] = sub_22D72E490();
  v90[11] = v94;
  v90[15] = v92;
  v95 = v150;
  v90[12] = v155;
  v90[13] = v95;
  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_22D72E490();
  v90[16] = result;
  v90[17] = v96;
  v90[21] = v92;
  v97 = v149;
  v90[18] = v145;
  v90[19] = v97;
  v98 = v140;
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v90[22] = sub_22D72E490();
  v90[23] = v99;
  v90[27] = v92;
  v90[24] = v86;
  v90[25] = v88;
  sub_22D6D4390(v90);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF348, &unk_22D7301F0);
  swift_arrayDestroy();
  v100 = sub_22D72E3A0();

  LODWORD(error) = 0;
  v158 = v100;
  v101 = CFUserNotificationCreate(0, 0.0, 0, &error, v100);
  if (v101)
  {
    v102 = v101;
    v103 = *MEMORY[0x277CBECE8];
    v104 = v101;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v103, v104, sub_22D6F82DC, 0);
    if (RunLoopSource)
    {
      v106 = RunLoopSource;
      v107 = swift_allocObject();
      v108 = v143;
      v107[2] = v142;
      v107[3] = v108;
      v109 = v161;
      v110 = v162;
      v107[4] = v137;
      v107[5] = v109;
      v111 = v144;
      v107[6] = v110;
      v107[7] = v111;
      v112 = xmmword_27D9FF5F0;
      v163 = qword_27D9FF600;
      v161 = unk_27D9FF608;
      *&xmmword_27D9FF5F0 = v106;
      *(&xmmword_27D9FF5F0 + 1) = v102;
      qword_27D9FF600 = sub_22D6F9C08;
      unk_27D9FF608 = v107;
      v113 = v106;
      v114 = v104;
      v115 = v113;

      v116 = v114;
      v117 = v115;

      sub_22D6F9C18(v112, *(&v112 + 1), v163, v161);
      v118 = CFRunLoopGetMain();
      CFRunLoopAddSource(v118, v117, *MEMORY[0x277CBF048]);

      (*(v153 + 8))(v152, v156);
      return (v140)(v154, v139);
    }

    v129 = sub_22D72DBB0();
    v130 = sub_22D72E580();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_22D6B4000, v129, v130, "Could not create user notification", v131, 2u);
      MEMORY[0x2318D0420](v131, -1, -1);
    }

    v132 = off_27D9FF5E8;

    os_unfair_lock_lock(v132 + 5);
    LOBYTE(v132[4]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v132 + 5);

    sub_22D6F9BB4();
    v133 = swift_allocError();
    *v134 = 0;
    v135 = v160;
    *v160 = v133;
    swift_storeEnumTagMultiPayload();
    v161(v135);

    sub_22D6D5984(v135, &unk_27D9FFAC0, &qword_22D7306F0);
    (*(v153 + 8))(v152, v156);
    v128 = v154;
  }

  else
  {
    v119 = sub_22D72DBB0();
    v120 = sub_22D72E580();
    v121 = os_log_type_enabled(v119, v120);
    v122 = v154;
    if (v121)
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_22D6B4000, v119, v120, "Could not create user notification", v123, 2u);
      MEMORY[0x2318D0420](v123, -1, -1);
    }

    v124 = off_27D9FF5E8;

    os_unfair_lock_lock(v124 + 5);
    LOBYTE(v124[4]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v124 + 5);

    sub_22D6F9BB4();
    v125 = swift_allocError();
    *v126 = 0;
    v127 = v160;
    *v160 = v125;
    swift_storeEnumTagMultiPayload();
    v161(v127);

    sub_22D6D5984(v127, &unk_27D9FFAC0, &qword_22D7306F0);
    (*(v153 + 8))(v152, v156);
    v128 = v122;
  }

  return v98(v128, v139);
}

void sub_22D6F82DC(uint64_t a1, char a2)
{
  if (xmmword_27D9FF5F0)
  {
    v3 = qword_27D9FF600;

    v3(a2 & 3);
  }
}

uint64_t sub_22D6F8348(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v65 = a6;
  v66 = a5;
  v10 = sub_22D72E300();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22D72E370();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  MEMORY[0x28223BE20](v64);
  v14 = &v54 - v13;
  v68 = sub_22D72E100();
  v15 = *(v68 - 8);
  v16 = MEMORY[0x28223BE20](v68);
  v56 = v17;
  v57 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v67 = a2;
  if (a1)
  {
    if (qword_27D9FF120 != -1)
    {
      swift_once();
    }

    v20 = sub_22D72DBE0();
    __swift_project_value_buffer(v20, qword_27DA016E8);

    v21 = sub_22D72DBB0();
    v22 = sub_22D72E5A0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_22D72891C(v67, a3, aBlock);
      _os_log_impl(&dword_22D6B4000, v21, v22, "Denial for %{private}s to use AlarmKit", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2318D0420](v24, -1, -1);
      MEMORY[0x2318D0420](v23, -1, -1);
    }

    v25 = MEMORY[0x277CB9AC0];
  }

  else
  {
    if (qword_27D9FF120 != -1)
    {
      swift_once();
    }

    v26 = sub_22D72DBE0();
    __swift_project_value_buffer(v26, qword_27DA016E8);

    v27 = sub_22D72DBB0();
    v28 = sub_22D72E5A0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136380675;
      *(v29 + 4) = sub_22D72891C(v67, a3, aBlock);
      _os_log_impl(&dword_22D6B4000, v27, v28, "Approval for %{private}s to use AlarmKit", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x2318D0420](v30, -1, -1);
      MEMORY[0x2318D0420](v29, -1, -1);
    }

    v25 = MEMORY[0x277CB9AB0];
  }

  (*(v15 + 104))(v19, *v25, v68);
  v31 = xmmword_27D9FF5F0;
  v32 = qword_27D9FF600;
  v33 = unk_27D9FF608;
  xmmword_27D9FF5F0 = 0u;
  *&qword_27D9FF600 = 0u;
  sub_22D6F9C18(v31, *(&v31 + 1), v32, v33);
  if (qword_27D9FF100 != -1)
  {
    swift_once();
  }

  v34 = off_27D9FF5E8;

  os_unfair_lock_lock(v34 + 5);
  LOBYTE(v34[4]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v34 + 5);

  v35 = __swift_project_boxed_opaque_existential_1(a4 + 6, a4[9]);
  v36 = *(*v35 + 56);
  v37 = MEMORY[0x28223BE20](v35);
  v38 = v67;
  *(&v54 - 4) = v39;
  *(&v54 - 3) = v38;
  *(&v54 - 2) = a3;
  *(&v54 - 1) = v19;
  MEMORY[0x28223BE20](v37);
  *(&v54 - 2) = sub_22D6F9EE8;
  *(&v54 - 1) = v40;
  os_unfair_lock_lock(v36 + 4);
  sub_22D6F5B28(v41);
  os_unfair_lock_unlock(v36 + 4);
  v42 = *(v15 + 16);
  v43 = v19;
  v44 = v19;
  v55 = v19;
  v45 = v68;
  v42(v14, v43, v68);
  swift_storeEnumTagMultiPayload();
  v66(v14);
  sub_22D6D5984(v14, &unk_27D9FFAC0, &qword_22D7306F0);
  v66 = a4[3];
  v46 = v57;
  v42(v57, v44, v45);
  v47 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = a4;
  *(v48 + 3) = v38;
  *(v48 + 4) = a3;
  (*(v15 + 32))(&v48[v47], v46, v45);
  aBlock[4] = sub_22D6F9C60;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_30;
  v49 = _Block_copy(aBlock);

  v50 = v58;
  sub_22D72E330();
  v69 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  v51 = v60;
  v52 = v63;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v50, v51, v49);
  _Block_release(v49);
  (*(v62 + 8))(v51, v52);
  (*(v59 + 8))(v50, v61);
  (*(v15 + 8))(v55, v45);
}

uint64_t sub_22D6F8BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AuthorizationBundleIDState(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 28);
  v12 = sub_22D72E100();
  (*(*(v12 - 8) + 16))(&v10[v11], a4, v12);
  *v10 = a2;
  *(v10 + 1) = a3;

  sub_22D72DC10();
  return sub_22D6F8F80(v10);
}

uint64_t sub_22D6F8C8C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6F8F28()
{
  result = qword_2814571D0;
  if (!qword_2814571D0)
  {
    sub_22D72E300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814571D0);
  }

  return result;
}

uint64_t sub_22D6F8F80(uint64_t a1)
{
  v2 = type metadata accessor for AuthorizationBundleIDState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_22D6F8FFC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_22D6F915C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_22D6F94AC(v8, v4, v2);
  result = MEMORY[0x2318D0420](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_22D6F915C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  MEMORY[0x28223BE20](v47);
  v46 = &v32 - v4;
  v45 = sub_22D72E100();
  v5 = MEMORY[0x28223BE20](v45);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v42 = &v32 - v9;
  v10 = 0;
  v48 = a3;
  v11 = *(a3 + 64);
  v36 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v34 = 0;
  v35 = (v12 + 63) >> 6;
  v41 = v8 + 16;
  v40 = *MEMORY[0x277CB9AB0];
  v44 = v8;
  v38 = v8 + 8;
  v39 = v8 + 104;
  v15 = v46;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v49 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = v48[7];
    v21 = (v48[6] + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v25 = v44;
    v24 = v45;
    v26 = *(v44 + 72);
    v37 = v19;
    v27 = *(v44 + 16);
    v28 = v42;
    v27(v42, v20 + v26 * v19, v45);
    *v15 = v23;
    *(v15 + 1) = v22;
    v27(&v15[*(v47 + 48)], v28, v24);
    v29 = v43;
    (*(v25 + 104))(v43, v40, v24);
    swift_bridgeObjectRetain_n();
    LOBYTE(v23) = sub_22D72E0E0();
    v30 = *(v25 + 8);
    v30(v29, v24);
    sub_22D6D5984(v15, &qword_27D9FF610, &unk_22D7306E0);
    v30(v28, v24);

    v14 = v49;
    if (v23)
    {
      *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_22D6D2FA0(v33, v32, v34, v48);
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v35)
    {
      return sub_22D6D2FA0(v33, v32, v34, v48);
    }

    v18 = *(v36 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v49 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D6F94AC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22D6F915C(result, a2, a3);

    return v6;
  }

  return result;
}

BOOL sub_22D6F9524(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v6 = sub_22D72868C(a1, a2, 0);
  v7 = [v6 infoDictionary];
  v8 = sub_22D72E480();
  sub_22D6F9B68();
  v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

  if (v9)
  {
    sub_22D72E6D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = [v11 length];

      return v10 > 0;
    }
  }

  else
  {

    sub_22D6D5984(v14, &qword_27D9FF9F0, &unk_22D730240);
  }

  return 0;
}

void *sub_22D6F96C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  v2 = MEMORY[0x28223BE20](v1);
  v49 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v50 = &v43 - v4;
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v6 = *v5;
  v7 = *(*v5 + 56);
  v51 = sub_22D6F5AF8;
  v52 = v6;
  os_unfair_lock_lock(v7 + 4);
  sub_22D6F5A78(&v55);
  os_unfair_lock_unlock(v7 + 4);
  v8 = v55 + 64;
  v9 = 1 << *(v55 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v55 + 64);
  v12 = (v9 + 63) >> 6;
  v47 = v55;

  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v45 = v8;
  v44 = v12;
  v46 = v1;
  v15 = v50;
  while (v11)
  {
LABEL_11:
    v18 = __clz(__rbit64(v11)) | (v13 << 6);
    v19 = *(v47 + 56);
    v20 = (*(v47 + 48) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = sub_22D72E100();
    v24 = v19 + *(*(v23 - 8) + 72) * v18;
    v25 = *(v1 + 48);
    v48 = *(v23 - 8);
    (*(v48 + 16))(&v15[v25], v24, v23);
    *v15 = v22;
    *(v15 + 1) = v21;
    v26 = v49;
    sub_22D6F9AF8(v15, v49);
    v28 = *v26;
    v27 = v26[1];
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;

    sub_22D72E850();
    v56 = MEMORY[0x277D837D0];
    sub_22D6D5254(&v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v14;
    v31 = sub_22D6CC714(v28, v27);
    v32 = v14[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_24;
    }

    v35 = v30;
    if (v14[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v30)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_22D6D0100();
        if (v35)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_22D6CD59C(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_22D6CC714(v28, v27);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_26;
      }

      v31 = v36;
      if (v35)
      {
LABEL_4:

        v14 = v53;
        v16 = (v53[7] + 32 * v31);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        sub_22D6D5254(v54, v16);
        sub_22D6D5984(v50, &qword_27D9FF610, &unk_22D7306E0);
        goto LABEL_5;
      }
    }

    v14 = v53;
    v53[(v31 >> 6) + 8] |= 1 << v31;
    v38 = (v14[6] + 16 * v31);
    *v38 = v28;
    v38[1] = v27;
    sub_22D6D5254(v54, (v14[7] + 32 * v31));
    sub_22D6D5984(v50, &qword_27D9FF610, &unk_22D7306E0);
    v39 = v14[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_25;
    }

    v14[2] = v41;
LABEL_5:
    v11 &= v11 - 1;
    v1 = v46;
    (*(v48 + 8))(v49 + *(v46 + 48), v23);
    v8 = v45;
    v12 = v44;
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      return v14;
    }

    v11 = *(v8 + 8 * v17);
    ++v13;
    if (v11)
    {
      v13 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22D72E9A0();
  __break(1u);
  return result;
}

uint64_t sub_22D6F9AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D6F9B68()
{
  result = qword_27D9FF618;
  if (!qword_27D9FF618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9FF618);
  }

  return result;
}

unint64_t sub_22D6F9BB4()
{
  result = qword_27D9FF620;
  if (!qword_27D9FF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF620);
  }

  return result;
}

void *sub_22D6F9C18(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22D6F9C60()
{
  v1 = *(sub_22D72E100() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_22D6F8BA8(v2, v3, v4, v5);
}

uint64_t sub_22D6F9CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AuthorizationManager.AuthorizationManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuthorizationManager.AuthorizationManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D6F9E8C()
{
  result = qword_27D9FF638;
  if (!qword_27D9FF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF638);
  }

  return result;
}

uint64_t type metadata accessor for AuthorizationBundleIDState(uint64_t a1)
{
  result = qword_281457560;
  if (!qword_281457560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D6FA088(uint64_t a1)
{
  result = sub_22D72E100();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D6FA12C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FA19C()
{
  v8 = sub_22D72E5F0();
  v1 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22D72E370();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D6D5838();
  sub_22D72E340();
  v10 = MEMORY[0x277D84F90];
  sub_22D6FA68C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v8);
  *(v0 + 16) = sub_22D72E620();
  *(v0 + 24) = 0;
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF640, qword_22D730950);
  swift_allocObject();
  *(v0 + 32) = sub_22D72DC40();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = MKBDeviceUnlockedSinceBoot() == 1;
  *(v0 + 48) = sub_22D6FA474();
  return v0;
}

uint64_t sub_22D6FA400()
{
  MKBEventsUnregister();

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FA474()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_22D6B5EB8;
  v8[5] = v0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22D6B5E40;
  v8[3] = &block_descriptor_2;
  v1 = _Block_copy(v8);

  v2 = MKBEventsRegister();
  _Block_release(v1);
  if (!v2)
  {
    if (qword_27D9FF140 != -1)
    {
      swift_once();
    }

    v3 = sub_22D72DBE0();
    __swift_project_value_buffer(v3, qword_27DA01748);
    v4 = sub_22D72DBB0();
    v5 = sub_22D72E580();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22D6B4000, v4, v5, "Failed to begin observing keybag: nil pointer", v6, 2u);
      MEMORY[0x2318D0420](v6, -1, -1);
    }
  }

  return v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6FA68C()
{
  result = qword_281457190;
  if (!qword_281457190)
  {
    sub_22D72E5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281457190);
  }

  return result;
}

unint64_t sub_22D6FA6E4()
{
  result = qword_2814571B0;
  if (!qword_2814571B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9FF740, &unk_22D730C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814571B0);
  }

  return result;
}

uint64_t sub_22D6FA7D8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FA84C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 64);
}

uint64_t sub_22D6FA8A8(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_22D72D7A0();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  swift_beginAccess();
  v15 = a1[8];
  if (*(v15 + 16))
  {
    v26[1] = v3;

    v16 = sub_22D6CC49C(a2);
    if (v17)
    {
      v18 = v16;
      v26[0] = *(v15 + 56);
      v19 = type metadata accessor for Alarm(0);
      v20 = *(v19 - 8);
      sub_22D6F37E4(v26[0] + *(v20 + 72) * v18, v14);

      (*(v20 + 56))(v14, 0, 1, v19);
      sub_22D6D5984(v14, &qword_27D9FF550, &qword_22D730130);
      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
      v21.n128_f64[0] = sub_22D72BF64(a2, sub_22D6FB7A4, 0);
LABEL_7:
      v23 = v29;
      (*(v27 + 16))(v29, a2, v28, v21);
      sub_22D6F37E4(a2, v12);
      type metadata accessor for Alarm(0);
      (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
      swift_beginAccess();
      sub_22D6BB998(v12, v23);
      return swift_endAccess();
    }
  }

  v19 = type metadata accessor for Alarm(0);
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_22D6D5984(v14, &qword_27D9FF550, &qword_22D730130);
  if (a3)
  {
    v22 = *__swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

    sub_22D726318(a2, a3, v22);

    goto LABEL_7;
  }

  sub_22D6FB4F0();
  swift_allocError();
  *v25 = 0;
  return swift_willThrow();
}

void sub_22D6FAC64(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27D9FF138 != -1)
    {
      swift_once();
    }

    v3 = sub_22D72DBE0();
    __swift_project_value_buffer(v3, qword_27DA01730);
    v4 = a1;
    oslog = sub_22D72DBB0();
    v5 = sub_22D72E580();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22D6B4000, oslog, v5, "Failed to write alarm to database: %{public}@", v6, 0xCu);
      sub_22D6D5984(v7, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v7, -1, -1);
      MEMORY[0x2318D0420](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void sub_22D6FAE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_22D72D7A0();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2);
  v11 = type metadata accessor for Alarm(0);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  swift_beginAccess();
  sub_22D6BB998(v6, v9);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_22D72701C(a2);
}

uint64_t sub_22D6FAFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  sub_22D724F88(a2, sub_22D6FB060, v7);
}

uint64_t sub_22D6FB08C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v9 = sub_22D72E300();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D72E370();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 56);
  v26 = a1;
  v27 = a2 & 1;
  v28 = a3;
  v23 = sub_22D6FB544;
  v24 = &v25;
  os_unfair_lock_lock(v16 + 4);
  sub_22D6F4510(v17);
  os_unfair_lock_unlock(v16 + 4);
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  *(v18 + 24) = a5;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_3;
  v19 = _Block_copy(aBlock);

  sub_22D72E330();
  v29 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6FB580();
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v15, v12, v19);
  _Block_release(v19);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

void sub_22D6FB358(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_27D9FF138 != -1)
    {
      swift_once();
    }

    v4 = sub_22D72DBE0();
    __swift_project_value_buffer(v4, qword_27DA01730);
    v5 = a1;
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E580();
    sub_22D6FB5E4(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Failed to load alarms from database: %{public}@", v8, 0xCu);
      sub_22D6D5984(v9, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v9, -1, -1);
      MEMORY[0x2318D0420](v8, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(a3 + 64) = a1;
  }
}

unint64_t sub_22D6FB4F0()
{
  result = qword_27D9FF648;
  if (!qword_27D9FF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF648);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6FB580()
{
  result = qword_2814571C0;
  if (!qword_2814571C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9FF520, &qword_22D730150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814571C0);
  }

  return result;
}

void sub_22D6FB5E4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for AlarmPersistentStore.AlarmPersistentStoreError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmPersistentStore.AlarmPersistentStoreError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D6FB750()
{
  result = qword_27D9FF650;
  if (!qword_27D9FF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF650);
  }

  return result;
}

uint64_t sub_22D6FB8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v7 = sub_22D72E100();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  swift_beginAccess();
  v47 = a1;
  v19 = *(a1 + 64);
  v20 = *(v19 + 16);
  v45 = a2;
  v42 = a3;
  if (!v20)
  {
LABEL_6:
    v26 = *(v8 + 56);
    v26(v18, 1, 1, v7);
    sub_22D6FC298(v18);
    __swift_project_boxed_opaque_existential_1((v47 + 16), *(v47 + 40));
    v43 = *(v8 + 16);
    v43(v11, v46, v7);
    v27 = (*(v8 + 88))(v11, v7);
    if (v27 == *MEMORY[0x277CB9AB8])
    {
      v25 = 0;
    }

    else if (v27 == *MEMORY[0x277CB9AC0])
    {
      v25 = 1;
    }

    else
    {
      if (v27 != *MEMORY[0x277CB9AB0])
      {
        goto LABEL_25;
      }

      v25 = 2;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v31 = v42;
      v32 = v45;
LABEL_23:
      v37 = v44;
      v43(v44, v46, v7);
      v26(v37, 0, 1, v7);
      swift_beginAccess();

      sub_22D6BBC74(v37, v32, v31);
      return swift_endAccess();
    }

    v29 = Strong;
    v41 = v26;
    v30 = &selRef_createAuthorization_;
    goto LABEL_21;
  }

  v21 = sub_22D6CC714(a2, a3);
  if ((v22 & 1) == 0)
  {

    goto LABEL_6;
  }

  v23 = *(v8 + 16);
  v23(v18, *(v19 + 56) + *(v8 + 72) * v21, v7);

  v41 = *(v8 + 56);
  v41(v18, 0, 1, v7);
  sub_22D6FC298(v18);
  __swift_project_boxed_opaque_existential_1((v47 + 16), *(v47 + 40));
  v43 = v23;
  v23(v13, v46, v7);
  v24 = (*(v8 + 88))(v13, v7);
  if (v24 == *MEMORY[0x277CB9AB8])
  {
    v25 = 0;
LABEL_19:
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (!v33)
    {
      v31 = v42;
      v32 = v45;
      goto LABEL_22;
    }

    v29 = v33;
    v30 = &selRef_updateAuthorization_;
LABEL_21:
    v40 = v30;
    v34 = objc_allocWithZone(MEMORY[0x277CEA588]);
    v32 = v45;
    v31 = v42;
    v35 = sub_22D72E480();
    v36 = [v34 initWithBundleID:v35 status:v25];

    [v29 *v40];
    swift_unknownObjectRelease();
LABEL_22:
    v26 = v41;
    goto LABEL_23;
  }

  if (v24 == *MEMORY[0x277CB9AC0])
  {
    v25 = 1;
    goto LABEL_19;
  }

  if (v24 == *MEMORY[0x277CB9AB0])
  {
    v25 = 2;
    goto LABEL_19;
  }

LABEL_25:
  result = sub_22D72E970();
  __break(1u);
  return result;
}

uint64_t sub_22D6FBDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_22D72E480();
    [v10 deleteAuthorizationWithBundleID_];

    swift_unknownObjectRelease();
  }

  v12 = sub_22D72E100();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  swift_beginAccess();

  sub_22D6BBC74(v8, a2, a3);
  return swift_endAccess();
}

uint64_t sub_22D6FBF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v7 = sub_22D72E300();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D72E370();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 56);
  v24 = a2;
  v25 = a1;
  v21 = sub_22D6FC300;
  v22 = &v23;
  os_unfair_lock_lock(v14 + 4);
  sub_22D6F4510(v15);
  os_unfair_lock_unlock(v14 + 4);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  *(v16 + 24) = a4;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  sub_22D72E330();
  v26 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6FB580();
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v13, v10, v17);
  _Block_release(v17);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_22D6FC230(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t sub_22D6FC298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D6FC3C0()
{
  v7 = sub_22D72E5F0();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22D72E370();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E350();
  v8 = MEMORY[0x277D84F90];
  sub_22D6FCEC8(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FCF10(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85268], v7);
  result = sub_22D72E620();
  qword_27D9FF660 = result;
  return result;
}

void *sub_22D6FC620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v27 = sub_22D72E300();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22D72E370();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[4] = a1;
  v2[5] = a2;
  sub_22D6FCE80(0, &unk_27D9FF730, 0x277D85CA0);
  v13 = qword_27D9FF108;

  if (v13 != -1)
  {
    swift_once();
  }

  v28 = qword_27D9FF660;
  v2[3] = sub_22D72E640();
  swift_getObjectType();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v6;
  v33 = sub_22D6FCE10;
  v34 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v25 = v6;
  v31 = sub_22D6C0FD8;
  v32 = &block_descriptor_5;
  v15 = _Block_copy(&aBlock);
  v24 = a1;
  v16 = v15;

  sub_22D72E330();
  sub_22D6FCC20();
  sub_22D72E650();
  _Block_release(v16);
  (*(v7 + 8))(v9, v27);
  (*(v10 + 8))(v12, v26);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22D72E670();
  swift_unknownObjectRelease();
  v17 = swift_allocObject();
  v19 = v24;
  v18 = v25;
  v17[2] = v3;
  v17[3] = v19;
  v17[4] = a2;
  v17[5] = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22D6FCE74;
  *(v20 + 24) = v17;
  v33 = sub_22D6F45C8;
  v34 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_22D6BEF78;
  v32 = &block_descriptor_14;
  v21 = _Block_copy(&aBlock);

  dispatch_sync(v28, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6FCA50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22D72DBE0();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_22D72DBD0();

    v11 = sub_22D72DBB0();
    v12 = sub_22D72E5A0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_22D72891C(a2, a3, &v16);
      _os_log_impl(&dword_22D6B4000, v11, v12, "Dropping transaction for SIGTERM: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318D0420](v14, -1, -1);
      MEMORY[0x2318D0420](v13, -1, -1);
    }

    byte_27D9FF668 = 1;
    (*(v7 + 8))(v10, v6);
    *(a1 + 16) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D6FCC20()
{
  sub_22D72E300();
  sub_22D6FCEC8(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6FCF10(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  return sub_22D72E6E0();
}

uint64_t sub_22D6FCCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_27D9FF668)
  {
    v4 = 0;
  }

  else
  {
    sub_22D72E4D0();
    v4 = os_transaction_create();
  }

  *(a1 + 16) = v4;

  return swift_unknownObjectRelease();
}

uint64_t sub_22D6FCD70()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FCDDC()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D6FCE80(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_22D6FCEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D6FCF10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22D6FCF6C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_22D72D730();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  [*(a1 + 16) cancel];
  [*(a1 + 16) invalidate];
  v15 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_22D6FD818(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22D6FD888(v7);
  }

  v34 = v2;
  v32 = *(v9 + 32);
  v32(v14, v7, v8);
  v17 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v18 = sub_22D72E480();
  v19 = [v17 initWithIdentifier_];

  v20 = *(a1 + 16);
  *(a1 + 16) = v19;

  sub_22D72D710();
  sub_22D72D690();
  v22 = v21;
  v33 = *(v9 + 8);
  result = v33(v12, v8);
  v31 = *(a1 + 16);
  if (v31)
  {
    if (v22 < 0.0)
    {
      v22 = 1.0;
    }

    v30 = *(a1 + 32);
    v23 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(v12, v14, v8);
    v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v32((v25 + v24), v12, v8);
    aBlock[4] = sub_22D6FD8F0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6FD4B4;
    aBlock[3] = &block_descriptor_6;
    v26 = _Block_copy(aBlock);
    v27 = v31;
    v28 = v30;

    [v27 scheduleWithFireInterval:v28 leewayInterval:v26 queue:v22 handler:0.0];
    _Block_release(v26);

    return v33(v14, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D6FD34C(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = (Strong + 40);
    v5 = *(Strong + 40);
    if (v5)
    {
      v7 = *(Strong + 48);
      v8 = Strong;

      v5(a3);
      sub_22D6FD97C(v5, v7);
      v9 = *(v8 + 40);
      v10 = *(v8 + 48);
      *v6 = 0;
      v6[1] = 0;
      sub_22D6FD97C(v9, v10);
    }
  }

  else
  {
    if (qword_27D9FF150 != -1)
    {
      swift_once();
    }

    v11 = sub_22D72DBE0();
    __swift_project_value_buffer(v11, qword_27DA01760);
    v12 = sub_22D72DBB0();
    v13 = sub_22D72E590();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22D6B4000, v12, v13, "Wake manager unexpectedly deallocated", v14, 2u);
      MEMORY[0x2318D0420](v14, -1, -1);
    }
  }
}

void sub_22D6FD4B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22D6FD51C()
{
  v1 = *(v0 + 16);
  if (v1 && ([v1 cancel], (v2 = *(v0 + 16)) != 0))
  {
    [v2 invalidate];
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  sub_22D6FD97C(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_22D6FD584()
{
  sub_22D6FD51C();

  return swift_deallocClassInstance();
}

void *sub_22D6FD5DC()
{
  v9[0] = sub_22D72E5F0();
  v1 = *(v9[0] - 8);
  MEMORY[0x28223BE20](v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22D72E370();
  MEMORY[0x28223BE20](v5 - 8);
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v0[3] = v6;
  sub_22D6D5838();
  sub_22D72E330();
  v9[1] = MEMORY[0x277D84F90];
  sub_22D6FA68C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9[0]);
  v7 = sub_22D72E620();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v7;
  return v0;
}

uint64_t sub_22D6FD818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D6FD888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22D6FD8F0(void *a1)
{
  v3 = *(sub_22D72D730() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_22D6FD34C(a1, v4, v5);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_22D6FD97C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_22D6FD98C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + 40);
  if (v2 && *(v2 + 16))
  {
    *(v2 + 16) = 0;

    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_22D72E660();
  }

  sub_22D72E4D0();
  xpc_set_event();

  return v0;
}

uint64_t sub_22D6FDA64()
{
  sub_22D6FD98C();

  return swift_deallocClassInstance();
}

void sub_22D6FDABC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);

  os_unfair_lock_lock(v4 + 4);
  sub_22D6FF31C(v9);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v9[0];

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v6 = *(v2 + 16);
    if (*(v6 + 16) > a1)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_22D6D42A8(v6 + 40 * a1 + 32, v9);
        v7 = v10;
        v8 = v11;
        __swift_project_boxed_opaque_existential_1(v9, v10);
        (*(v8 + 8))(v2, a1, v7, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }
    }
  }
}

void sub_22D6FDBC8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  if (v2 && *(v2 + 16))
  {
    *(v2 + 16) = 0;

    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_22D72E660();
  }

  sub_22D72E4D0();
  xpc_set_event();

  *(a1 + 48) = 1;
}

void sub_22D6FDC88(uint64_t a1, uint64_t a2)
{
  sub_22D72D6E0();
  v4 = ceil(v3);
  if (v4 < 9.22337204e18)
  {
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v4 <= -9.22337204e18)
      {
        __break(1u);
      }

      else
      {
        v5 = 1000000000 * v4;
        if ((v4 * 1000000000) >> 64 == v5 >> 63)
        {
          v6 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_date(v6, "Date", v5);
          xpc_dictionary_set_BOOL(v6, "UserVisible", 1);
          sub_22D72E4D0();
          swift_unknownObjectRetain();
          xpc_set_event();
          swift_unknownObjectRelease();

          if (!__OFADD__(a2, 1))
          {
            sub_22D6FDABC(a2 + 1);

            swift_unknownObjectRelease();
            return;
          }

LABEL_19:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (qword_27D9FF150 != -1)
  {
LABEL_16:
    swift_once();
  }

  v7 = sub_22D72DBE0();
  __swift_project_value_buffer(v7, qword_27DA01760);
  v8 = sub_22D72DBB0();
  v9 = sub_22D72E580();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22D6B4000, v8, v9, "Cannot schedule tasks this far into the future", v10, 2u);
    MEMORY[0x2318D0420](v10, -1, -1);
  }

  sub_22D72E4D0();
  xpc_set_event();
}

uint64_t sub_22D6FDEE0()
{
  v1 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder11RequestWake_date;
  v2 = sub_22D72D730();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_22D6FDFA0(uint64_t a1)
{
  type metadata accessor for KeepAliveTransaction();
  swift_allocObject();
  *(a1 + 40) = sub_22D6FC620(0xD000000000000017, 0x800000022D730C90);

  return result;
}

void sub_22D6FE028(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && *(v2 + 16))
  {
    *(v2 + 16) = 0;

    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_22D72E660();
  }

  *(a1 + 40) = 0;
}

uint64_t sub_22D6FE0AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D72D730();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  v12 = *(v2 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v12[5];
  v15 = v12[6];
  v12[5] = sub_22D6FF358;
  v12[6] = v13;

  sub_22D6FD97C(v14, v15);
  sub_22D72D710();
  sub_22D72D6A0();
  (*(v6 + 8))(v8, v5);
  (*(v6 + 56))(v11, 0, 1, v5);
  v16 = v12[3];
  v23 = v12;
  v24 = v11;
  v20 = sub_22D6FF338;
  v21 = &v22;

  os_unfair_lock_lock(v16 + 4);
  sub_22D6F5B28(v17);
  os_unfair_lock_unlock(v16 + 4);

  return sub_22D6FD888(v11);
}

uint64_t sub_22D6FE2AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FE308(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  v8 = *(v2 + OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_taskScheduler);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = v8[5];
  v11 = v8[6];
  v8[5] = sub_22D6FF2BC;
  v8[6] = v9;

  sub_22D6FD97C(v10, v11);
  v12 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_date;
  v13 = sub_22D72D730();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, v2 + v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  v15 = v8[3];
  v22 = v8;
  v23 = v7;
  v19 = sub_22D6FF2C0;
  v20 = &v21;

  os_unfair_lock_lock(v15 + 4);
  sub_22D6F5B28(v16);
  os_unfair_lock_unlock(v15 + 4);

  return sub_22D6FD888(v7);
}

uint64_t sub_22D6FE4B0()
{
  v1 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_date;
  v2 = sub_22D72D730();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_22D6FE580(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 16))();
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22D6FDABC(a2 + 1);
  }
}

uint64_t sub_22D6FE5D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FE668(uint64_t a1)
{
  result = sub_22D72D730();
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

uint64_t sub_22D6FE7D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D6FE80C(uint64_t a1)
{
  result = sub_22D72D730();
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

uint64_t sub_22D6FE8CC(uint64_t a1)
{
  v3 = sub_22D72D730();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  (*(v4 + 16))(v6, a1, v3);
  v8 = type metadata accessor for SequencingTaskScheduler.Builder.RequestWake(0);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder11RequestWake_date, v6, v3);
  swift_beginAccess();
  v10 = *(v7 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_22D6CBB50(0, v10[2] + 1, 1, v10);
    *(v7 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_22D6CBB50((v12 > 1), v13 + 1, 1, v10);
  }

  v16 = v8;
  v17 = &off_2840CD1E0;
  *&v15 = v9;
  v10[2] = v13 + 1;
  sub_22D6B6CF0(&v15, &v10[5 * v13 + 4]);
  *(v7 + 16) = v10;
  swift_endAccess();

  return v1;
}

uint64_t sub_22D6FEAAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D72D730();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  (*(v5 + 16))(v7, a1, v4);
  v9 = type metadata accessor for SequencingTaskScheduler.Builder.At(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_taskScheduler;
  type metadata accessor for NonwakingTaskScheduler();
  swift_allocObject();

  *(v10 + v11) = sub_22D6FD5DC();
  (*(v5 + 32))(v10 + OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_date, v7, v4);
  swift_beginAccess();
  v12 = *(v8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_22D6CBB50(0, v12[2] + 1, 1, v12);
    *(v8 + 16) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_22D6CBB50((v14 > 1), v15 + 1, 1, v12);
  }

  v18 = v9;
  v19 = &off_2840CD180;
  *&v17 = v10;
  v12[2] = v15 + 1;
  sub_22D6B6CF0(&v17, &v12[5 * v15 + 4]);
  *(v8 + 16) = v12;
  swift_endAccess();

  return v2;
}

uint64_t sub_22D6FED00(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = a1();
  v6 = swift_allocObject();
  swift_beginAccess();
  v7 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22D6CBB50(0, v7[2] + 1, 1, v7);
    *(v4 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22D6CBB50((v9 > 1), v10 + 1, 1, v7);
  }

  v13 = v5;
  v14 = a2;
  *&v12 = v6;
  v7[2] = v10 + 1;
  sub_22D6B6CF0(&v12, &v7[5 * v10 + 4]);
  *(v4 + 16) = v7;
  swift_endAccess();

  return v2;
}

uint64_t sub_22D6FEE1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for SequencingTaskScheduler.Builder.Execute();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();
  v8 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_22D6CBB50(0, v8[2] + 1, 1, v8);
    *(v5 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_22D6CBB50((v10 > 1), v11 + 1, 1, v8);
  }

  v14 = v6;
  v15 = &off_2840CD170;
  *&v13 = v7;
  v8[2] = v11 + 1;
  sub_22D6B6CF0(&v13, &v8[5 * v11 + 4]);
  *(v5 + 16) = v8;
  swift_endAccess();

  return v2;
}

void sub_22D6FEF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_22D6F5B28(v4);
  os_unfair_lock_unlock(v3 + 4);

  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22D6FDABC(a2 + 1);
  }
}

void sub_22D6FEFE0(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D6C090]);
  v5 = sub_22D72E480();
  v6 = [v4 initWithIdentifier_];

  [v6 acquireWithTimeout:0 handler:0.0];
  v7 = *(a1 + 24);

  os_unfair_lock_lock(v7 + 4);
  sub_22D6F5B28(v8);
  os_unfair_lock_unlock(v7 + 4);

  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22D6FDABC(a2 + 1);
  }
}

void sub_22D6FF0E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_22D6F5B28(v4);
  os_unfair_lock_unlock(v3 + 4);

  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22D6FDABC(a2 + 1);
  }
}

void sub_22D6FF178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_22D6F4510(v4);
  os_unfair_lock_unlock(v3 + 4);

  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22D6FDABC(a2 + 1);
  }
}

void sub_22D6FF244()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

void sub_22D6FF27C()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

void sub_22D6FF2DC()
{
  v1 = *(v0 + 24);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22D6FDABC(v1 + 1);
  }
}

CFDictionaryRef sub_22D6FF3AC()
{
  v1 = sub_22D72D630();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 URL];
  sub_22D72D620();

  v6 = sub_22D72D610();
  (*(v2 + 8))(v4, v1);
  Unique = _CFBundleCreateUnique();

  if (Unique)
  {
    v8 = Unique;
    v9 = CFBundleGetLocalInfoDictionary(v8);

    if (!v9)
    {
      goto LABEL_15;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v21[0] = 0;
      sub_22D72E3B0();

      v10 = v21[0];
      if (!v21[0])
      {
        goto LABEL_15;
      }

      if (*(v21[0] + 16))
      {
        v11 = sub_22D6CC714(0xD00000000000001ALL, 0x800000022D7322A0);
        if (v12)
        {
          sub_22D6D5270(*(v10 + 56) + 32 * v11, v21);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_15;
          }

          v13 = v19;
          v14 = HIBYTE(v20) & 0xF;
          if ((v20 & 0x2000000000000000) == 0)
          {
            v14 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v14)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
    }

LABEL_15:
    v15 = v8;
    v13 = CFBundleGetInfoDictionary(v15);

    if (v13)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_24;
      }

      v21[0] = 0;
      sub_22D72E3B0();

      v13 = v21[0];
      if (v21[0])
      {
        if (*(v21[0] + 16) && (v16 = sub_22D6CC714(0xD00000000000001ALL, 0x800000022D7322A0), (v17 & 1) != 0))
        {
          sub_22D6D5270(*(v13 + 7) + 32 * v16, v21);

          if (swift_dynamicCast())
          {
            v13 = v19;
            goto LABEL_25;
          }
        }

        else
        {
        }

LABEL_24:
        v13 = 0;
      }
    }

LABEL_25:

    return v13;
  }

  return 0;
}

id sub_22D6FF6C0(void *a1, uint64_t a2)
{
  v4 = sub_22D72E1D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D72E240();
  sub_22D72E690();
  (*(v5 + 8))(v7, v4);
  sub_22D72E230();
  v8 = sub_22D72E480();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D6FF7EC(void *a1, uint64_t a2)
{
  sub_22D72E230();
  v4 = sub_22D72E480();

  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v16 = sub_22D6FFA50;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D6FD4B4;
  v15 = &block_descriptor_15;
  v10 = _Block_copy(&v12);
  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v16 = sub_22D6FFAEC;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D6FD4B4;
  v15 = &block_descriptor_18;
  v11 = _Block_copy(&v12);
  [a1 setInvalidationHandler_];
  _Block_release(v11);
}

uint64_t sub_22D6FFA50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF7F8, qword_22D730E78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D730E30;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D732C10;
  sub_22D72EA00();
}

uint64_t sub_22D6FFAEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF7F8, qword_22D730E78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D730E30;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D732BF0;
  sub_22D72EA00();
}

id sub_22D6FFC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22D6FFD00(uint64_t a1, int64_t a2)
{
  v4 = v3;
  if (a2)
  {
    v5 = a2;
    v7 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager + 24));
    v8 = *v7;
    if (qword_2814579C0 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v17 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager + 24);
  v58 = (v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager);
  v18 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager), v17);
  v19 = *v18;
  if (qword_2814579C0 != -1)
  {
    v18 = swift_once();
  }

  v9 = qword_2814579C8;
  MEMORY[0x28223BE20](v18);
  v8 = &v50;
  v52 = sub_22D7003F4;
  v53 = v19;
  os_unfair_lock_lock((v9 + 16));
  sub_22D6F59F4(&v62);
  v60 = v3;
  if (v3)
  {
    goto LABEL_40;
  }

  v57 = v9;
  os_unfair_lock_unlock((v9 + 16));
  v20 = 0;
  a1 = v62 + 56;
  v21 = *(v62 + 56);
  v59 = v62;
  v22 = 1 << *(v62 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v5 = (v22 + 63) >> 6;
  v56 = MEMORY[0x277D84F98];
  while (v24)
  {
    v9 = v20;
LABEL_17:
    v25 = (*(v59 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v24)))));
    v27 = *v25;
    v26 = v25[1];
    v28 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    v10 = v54;
    v29 = MEMORY[0x28223BE20](v28);
    v50 = v30;
    v51 = v27;
    v52 = v26;
    MEMORY[0x28223BE20](v29);
    v8 = &v47;
    v48 = sub_22D700410;
    v49 = v31;

    v4 = v57;
    os_unfair_lock_lock(v57 + 4);
    v32 = v60;
    sub_22D6F37CC(&v62);
    v60 = v32;
    if (v32)
    {
      goto LABEL_37;
    }

    v24 &= v24 - 1;
    os_unfair_lock_unlock((v4 + 16));
    v4 = v62;
    if (v62)
    {
      v33 = *(v62 + 48);

      v34 = v33(v27, v26);

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
      *&v62 = v34;
      sub_22D6D5254(&v62, v61);
      v35 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v35;
      v10 = sub_22D6CC714(v27, v26);
      v37 = *(v35 + 16);
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        os_unfair_lock_unlock((v4 + 16));
        __break(1u);
        goto LABEL_38;
      }

      if (*(v35 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v36 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          LODWORD(v56) = v36;
          sub_22D6D0100();
          if ((v56 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

LABEL_27:

        v56 = v64;
        v8 = (*(v64 + 56) + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        sub_22D6D5254(v61, v8);

        v20 = v9;
      }

      else
      {
        LODWORD(v56) = v36;
        sub_22D6CD59C(v39, isUniquelyReferenced_nonNull_native);
        v40 = sub_22D6CC714(v27, v26);
        if ((v56 & 1) != (v41 & 1))
        {
          goto LABEL_39;
        }

        v10 = v40;
        if (v56)
        {
          goto LABEL_27;
        }

LABEL_29:
        v8 = v4;
        v4 = v64;
        *(v64 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        v42 = (*(v4 + 48) + 16 * v10);
        *v42 = v27;
        v42[1] = v26;
        sub_22D6D5254(v61, (*(v4 + 56) + 32 * v10));

        v43 = *(v4 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_36;
        }

        v56 = v4;
        *(v4 + 16) = v45;
        v20 = v9;
      }
    }

    else
    {

      v20 = v9;
    }
  }

  while (1)
  {
    v9 = &v20->_os_unfair_lock_opaque + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      goto LABEL_32;
    }

    v24 = *(a1 + 8 * v9);
    v20 = (v20 + 1);
    if (v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  v7 = swift_once();
LABEL_3:
  v9 = v54;
  v10 = qword_2814579C8;
  v11 = MEMORY[0x28223BE20](v7);
  v50 = v8;
  v51 = a1;
  v52 = v5;
  MEMORY[0x28223BE20](v11);
  v48 = sub_22D700654;
  v49 = v12;
  os_unfair_lock_lock((v10 + 16));
  sub_22D6F5A78(&v62);
  if (v4)
  {
LABEL_38:
    os_unfair_lock_unlock((v10 + 16));
    __break(1u);
LABEL_39:
    sub_22D72E9A0();
    __break(1u);
LABEL_40:
    os_unfair_lock_unlock((v9 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v10 + 16));
  v13 = MEMORY[0x277D84F98];
  if (v62)
  {
    v14 = *(v62 + 48);

    v15 = v14(a1, v5);

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
    *&v62 = v15;
    sub_22D6D5254(&v62, v61);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v13;
    sub_22D6CF19C(v61, a1, v5, v16);
  }

LABEL_32:
  v46 = sub_22D72E3A0();

  *&v62 = v46;
  sub_22D72E4C0();
}

void sub_22D700430(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = sub_22D72E480();
  v5 = [v3 hasEntitlement_];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22D700624;
    *(v7 + 24) = v6;
    v11[4] = sub_22D70062C;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_22D70D678;
    v11[3] = &block_descriptor_7;
    v8 = _Block_copy(v11);
    v9 = v1;

    [a1 configureConnection_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
    }
  }

  else
  {

    [a1 invalidate];
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D700728()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_2814579C8 = result;
  return result;
}

uint64_t sub_22D700768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281457660 = result;
  return result;
}

uint64_t sub_22D7007BC()
{
  v0 = sub_22D72E5F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22D72E370();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D6D5838();
  sub_22D72E360();
  v7[1] = MEMORY[0x277D84F90];
  sub_22D702504(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  result = sub_22D72E620();
  qword_2814578C0 = result;
  return result;
}

double sub_22D7009F4(uint64_t a1)
{
  if (qword_281457400 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 24);
  swift_beginAccess();
  sub_22D6CC414(v1);
  swift_endAccess();

  return result;
}

void *sub_22D700AD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_2814572B8 != -1)
  {
    swift_once();
  }

  v12 = sub_22D72DBE0();
  __swift_project_value_buffer(v12, qword_2814580D0);

  v13 = sub_22D72DBB0();
  v14 = sub_22D72E5A0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22D72891C(a1, a2, &v18);
    _os_log_impl(&dword_22D6B4000, v13, v14, "[state-capture] StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318D0420](v16, -1, -1);
    MEMORY[0x2318D0420](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_22D700C50()
{

  return swift_deallocClassInstance();
}

double sub_22D700CBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a3;
  v15[7] = a4;
  aBlock[4] = sub_22D702488;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7017AC;
  aBlock[3] = &block_descriptor_8;
  v16 = _Block_copy(aBlock);

  v17 = os_state_add_handler();
  _Block_release(v16);
  if (v17)
  {
    if (qword_281457658 != -1)
    {
      v18 = swift_once();
    }

    v19 = qword_281457660;
    v20 = MEMORY[0x28223BE20](v18);
    MEMORY[0x28223BE20](v20);
    os_unfair_lock_lock(v19 + 4);
    sub_22D6F4510(v21);
    os_unfair_lock_unlock(v19 + 4);
    v22 = type metadata accessor for StateCaptureInvalidator();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = v17;
    *(a8 + 24) = v22;
    *(a8 + 32) = &off_2840CD338;
    *a8 = v23;
  }

  else
  {
    if (qword_2814572B8 != -1)
    {
      swift_once();
    }

    v25 = sub_22D72DBE0();
    __swift_project_value_buffer(v25, qword_2814580D0);
    v26 = sub_22D72DBB0();
    v27 = sub_22D72E580();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22D6B4000, v26, v27, "[state-capture] os_state_add_handler() failed to return a handle", v28, 2u);
      MEMORY[0x2318D0420](v28, -1, -1);
    }

    *(a8 + 32) = 0;
    result = 0.0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

char *sub_22D700F8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2(a4, a5);
  v10 = sub_22D70122C(a6, a7, v9);
  v12 = v11;
  v13 = v10;

  if (v12 < 0x8000)
  {
    return v13;
  }

  if (qword_2814572B8 != -1)
  {
    swift_once();
  }

  v15 = sub_22D72DBE0();
  __swift_project_value_buffer(v15, qword_2814580D0);
  v16 = sub_22D72DBB0();
  v17 = sub_22D72E580();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22D6B4000, v16, v17, "[state-capture] cannot capture state data larger than 32KB", v18, 2u);
    MEMORY[0x2318D0420](v18, -1, -1);
  }

  return 0;
}

char *sub_22D70122C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = sub_22D72D540();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = objc_opt_self();
  v10 = sub_22D72E3A0();
  *v50 = 0;
  v11 = [v9 dataWithPropertyList:v10 format:200 options:0 error:v50];

  v12 = *v50;
  if (!v11)
  {
    v18 = v12;
    sub_22D72D5D0();

    swift_willThrow();
    return v11;
  }

  v13 = sub_22D72D650();
  v15 = v14;

  v49 = v15;
  v16 = v15 >> 62;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = v17;
    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = BYTE6(v49);
LABEL_13:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
    goto LABEL_40;
  }

  v22 = malloc(v17 + 200);
  if (v22)
  {
    v11 = v22;
    *v50 = 1;
    memset(&v50[4], 0, 196);
    sub_22D701938(a1, a2, &v50[136], &v51);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_32;
      }

      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      v21 = __OFSUB__(v31, v32);
      v33 = v31 - v32;
      v23 = v49;
      if (!v21)
      {
LABEL_25:
        if ((v33 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v33))
          {
            *&v50[4] = v33;
            v34 = *&v50[176];
            v11[10] = *&v50[160];
            v11[11] = v34;
            *(v11 + 24) = *&v50[192];
            v35 = *&v50[112];
            v11[6] = *&v50[96];
            v11[7] = v35;
            v36 = *&v50[144];
            v11[8] = *&v50[128];
            v11[9] = v36;
            v37 = *&v50[48];
            v11[2] = *&v50[32];
            v11[3] = v37;
            v38 = *&v50[80];
            v11[4] = *&v50[64];
            v11[5] = v38;
            v39 = *&v50[16];
            *v11 = *v50;
            v11[1] = v39;
            if (v16 != 2)
            {
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_46;
              }

              v24 = HIDWORD(v13) - v13;
              goto LABEL_35;
            }

            if (__OFSUB__(*(v13 + 24), *(v13 + 16)))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
            }

            sub_22D72D660();
            v41 = *(v13 + 16);
            v40 = *(v13 + 24);
            sub_22D6D5664(v13, v23);
            v21 = __OFSUB__(v40, v41);
            v24 = v40 - v41;
            if (!v21)
            {
              goto LABEL_37;
            }

            __break(1u);
LABEL_32:
            v23 = v49;
            *&v50[4] = 0;
            v42 = *&v50[176];
            v11[10] = *&v50[160];
            v11[11] = v42;
            *(v11 + 24) = *&v50[192];
            v43 = *&v50[112];
            v11[6] = *&v50[96];
            v11[7] = v43;
            v44 = *&v50[144];
            v11[8] = *&v50[128];
            v11[9] = v44;
            v45 = *&v50[48];
            v11[2] = *&v50[32];
            v11[3] = v45;
            v46 = *&v50[80];
            v11[4] = *&v50[64];
            v11[5] = v46;
            v47 = *&v50[16];
            *v11 = *v50;
            v11[1] = v47;
            sub_22D72D660();
            v24 = 0;
LABEL_36:
            sub_22D6D5664(v13, v23);
LABEL_37:
            if (!__OFADD__(v24, 200))
            {
              return v11;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v23 = v49;
      v24 = BYTE6(v49);
      *&v50[4] = BYTE6(v49);
      v25 = *&v50[176];
      v11[10] = *&v50[160];
      v11[11] = v25;
      *(v11 + 24) = *&v50[192];
      v26 = *&v50[112];
      v11[6] = *&v50[96];
      v11[7] = v26;
      v27 = *&v50[144];
      v11[8] = *&v50[128];
      v11[9] = v27;
      v28 = *&v50[48];
      v11[2] = *&v50[32];
      v11[3] = v28;
      v29 = *&v50[80];
      v11[4] = *&v50[64];
      v11[5] = v29;
      v30 = *&v50[16];
      *v11 = *v50;
      v11[1] = v30;
LABEL_35:
      sub_22D72D660();
      goto LABEL_36;
    }

    LODWORD(v33) = HIDWORD(v13) - v13;
    v23 = v49;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v33 = v33;
    goto LABEL_25;
  }

  *v50 = 12;
  sub_22D6D4390(MEMORY[0x277D84F90]);
  sub_22D702504(&qword_27D9FF860, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
  sub_22D72D5B0();
  v11 = v8;
  sub_22D72D530();
  (*(v6 + 8))(v8, v5);
  swift_willThrow();
  sub_22D6D5664(v13, v49);
  return v11;
}

uint64_t sub_22D7017AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void sub_22D7017FC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StateCaptureEntry();
  v12 = swift_allocObject();

  v13 = a3;

  sub_22D700AD8(a1, a2, v13, a4, a5);
  if (qword_281457400 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = qword_281457408;
  qword_281457408 = 0x8000000000000000;
  sub_22D6CF46C(v12, a6, isUniquelyReferenced_nonNull_native);
  qword_281457408 = v15;
  swift_endAccess();
}

uint64_t sub_22D701938(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_22D72E7C0();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_22D72E7C0();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_22D7019D4()
{
  sub_22D6D5A4C(v0 + 64, v6, &qword_27D9FF868, &unk_22D730FF8);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v6, v7);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_281457658 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_281457660;
      MEMORY[0x28223BE20](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_22D6F5B28(v4);
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_22D70254C(v6);
  }

  sub_22D70254C(v0 + 64);
  return swift_deallocClassInstance();
}

void *sub_22D701B44()
{
  v8[0] = sub_22D72E5F0();
  v1 = *(v8[0] - 8);
  MEMORY[0x28223BE20](v8[0]);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22D72E370();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v6;
  sub_22D6D5838();
  sub_22D72E320();
  v8[1] = MEMORY[0x277D84F90];
  sub_22D702504(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v8[0]);
  v0[4] = sub_22D72E620();
  return v0;
}

uint64_t sub_22D701D8C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();

  result = sub_22D6EBBC4(v3);
  *a2 = result;
  return result;
}

void sub_22D701E24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_22D6CC714(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
}

void sub_22D701ED4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (, sub_22D6CC714(a2, a3), v14 = v13, , (v14 & 1) != 0))
  {
    if (qword_2814572B8 != -1)
    {
      swift_once();
    }

    v25 = sub_22D72DBE0();
    __swift_project_value_buffer(v25, qword_2814580D0);

    v26 = sub_22D72DBB0();
    v27 = sub_22D72E580();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v31[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_22D72891C(a2, a3, v31);
      _os_log_impl(&dword_22D6B4000, v26, v27, "[state-capture] identifier [%{public}s] is already in use", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2318D0420](v29, -1, -1);
      MEMORY[0x2318D0420](v28, -1, -1);
    }

    sub_22D72E860();
    __break(1u);
  }

  else
  {
    sub_22D6D42A8(a1, v31);
    v15 = swift_allocObject();
    sub_22D6B6CF0(v31, v15 + 16);
    type metadata accessor for StateCaptureItem();
    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = v12;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = sub_22D70241C;
    v16[7] = v15;
    v17 = qword_2814578B8;

    if (v17 != -1)
    {
      swift_once();
    }

    sub_22D700CBC(sub_22D70241C, v15, v10, v12, a2, a3, (v16 + 8));

    if (qword_2814572B8 != -1)
    {
      swift_once();
    }

    v18 = sub_22D72DBE0();
    __swift_project_value_buffer(v18, qword_2814580D0);

    v19 = sub_22D72DBB0();
    v20 = sub_22D72E5A0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v31[0] = v22;
      *v21 = 136446466;
      v23 = sub_22D72891C(v10, v12, v31);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_22D72891C(a2, a3, v31);
      _os_log_impl(&dword_22D6B4000, v19, v20, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v22, -1, -1);
      MEMORY[0x2318D0420](v21, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_22D6CF5B8(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v30;
    swift_endAccess();
  }
}

uint64_t sub_22D7023B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D70241C(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_22D7024D4(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D702504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D70254C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF868, &unk_22D730FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22D7025D0(void *a1, uint64_t a2)
{
  v4 = sub_22D72E1D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D72DFA0();
  sub_22D72E690();
  (*(v5 + 8))(v7, v4);
  sub_22D72DF90();
  v8 = sub_22D72E480();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D7026FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B8, &qword_22D731050);
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener);
  if (v7)
  {
    [v7 activate];
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v0 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
    v14 = sub_22D6D60B0();
    v15 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_queue);
    v8 = v15;
    v9 = sub_22D72E5E0();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9C0, &qword_22D731058);
    sub_22D6D5838();
    sub_22D6D58D4(&unk_281457250, &unk_27D9FF9C0, &qword_22D731058, MEMORY[0x277CBCD90]);
    sub_22D70D554(&qword_281457180, sub_22D6D5838, MEMORY[0x277D85228]);
    sub_22D72DCA0();
    sub_22D6D5984(v3, &qword_27D9FF9B0, &qword_22D7302B0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22D6D58D4(&qword_281457280, &qword_27D9FF9B8, &qword_22D731050, MEMORY[0x277CBCD60]);
    v11 = v13;
    sub_22D72DCB0();

    (*(v4 + 8))(v6, v11);
    swift_beginAccess();
    sub_22D72DC00();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_22D702A58(uint64_t *a1, uint64_t a2)
{
  v259 = sub_22D72DD20();
  v3 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v258 = &v228 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v5 - 8);
  v257 = &v228 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v7 - 8);
  v256 = &v228 - v8;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v267 = *(v280 - 8);
  v9 = MEMORY[0x28223BE20](v280);
  v255 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v254 = &v228 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v275 = &v228 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v274 = &v228 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v253 = &v228 - v18;
  MEMORY[0x28223BE20](v17);
  v252 = &v228 - v19;
  v251 = sub_22D72DDC0();
  v263 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v21 = &v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9D0, &unk_22D731060);
  v22 = MEMORY[0x28223BE20](v249);
  v236 = &v228 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v240 = (&v228 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v228 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v273 = &v228 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v242 = &v228 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v235 = &v228 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v228 - v36;
  MEMORY[0x28223BE20](v35);
  v271 = &v228 - v38;
  v39 = type metadata accessor for Alarm(0);
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v270 = &v228 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v272 = &v228 - v44;
  MEMORY[0x28223BE20](v43);
  v262 = &v228 - v45;
  v279 = sub_22D72D7A0();
  v46 = *(v279 - 8);
  v47 = MEMORY[0x28223BE20](v279);
  v244 = &v228 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  i = &v228 - v50;
  MEMORY[0x28223BE20](v49);
  v278 = &v228 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v243 = &v228 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v237 = &v228 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v245 = &v228 - v58;
  MEMORY[0x28223BE20](v57);
  v241 = &v228 - v59;
  v60 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v234 = v28;
  v232 = v3;
  v276 = v39;
  v62 = v40;
  v63 = *(Strong + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock);
  v64 = MEMORY[0x28223BE20](Strong);
  v229 = v64;
  *(&v228 - 2) = v64;
  *(&v228 - 1) = v60;
  MEMORY[0x28223BE20](v64);
  *(&v228 - 2) = sub_22D70D484;
  *(&v228 - 1) = v65;

  os_unfair_lock_lock(v63 + 4);
  sub_22D70D4A0(&v284);
  v231 = 0;
  os_unfair_lock_unlock(v63 + 4);
  v66 = *(&v284 + 1);
  v230 = v284;

  v68 = v60 + 64;
  v67 = *(v60 + 64);
  v69 = 1 << *(v60 + 32);
  v283 = MEMORY[0x277D84FA0];
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v46;
  v72 = v70 & v67;
  v233 = (v69 + 63) >> 6;
  v261 = (v267 + 56);
  v264 = v71 + 16;
  v277 = (v71 + 32);
  v260 = (v267 + 48);
  v265 = v71;
  v266 = (v71 + 8);
  v248 = (v62 + 56);
  v267 = v62;
  v247 = (v62 + 48);
  v246 = v60;

  v73 = 0;
  v250 = v21;
  v74 = v273;
  v269 = v66;
  v268 = v37;
  v75 = v271;
  v76 = v245;
  v238 = v60 + 64;
  while (1)
  {
    if (v72)
    {
      v78 = v280;
      v79 = v73;
LABEL_19:
      v82 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v83 = v82 | (v79 << 6);
      v84 = v246;
      v85 = v265;
      v87 = v278;
      v86 = v279;
      (*(v265 + 16))(v278, *(v246 + 48) + *(v265 + 72) * v83, v279);
      v88 = *(v84 + 56) + *(v267 + 72) * v83;
      v89 = v262;
      sub_22D6F37E4(v88, v262);
      v90 = *(v78 + 48);
      v91 = *(v85 + 32);
      v76 = v245;
      v91(v245, v87, v86);
      sub_22D6D3C4C(v89, &v76[v90]);
      v92 = 0;
      v74 = v273;
      v66 = v269;
      v93 = v268;
      v75 = v271;
    }

    else
    {
      v80 = v233 <= v73 + 1 ? v73 + 1 : v233;
      v81 = v80 - 1;
      while (1)
      {
        v79 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          __break(1u);
          goto LABEL_117;
        }

        if (v79 >= v233)
        {
          break;
        }

        v72 = *(v68 + 8 * v79);
        ++v73;
        if (v72)
        {
          v78 = v280;
          v73 = v79;
          goto LABEL_19;
        }
      }

      v93 = v37;
      v72 = 0;
      v92 = 1;
      v73 = v81;
    }

    v94 = *v261;
    v95 = v280;
    (*v261)(v76, v92, 1, v280);
    v96 = v76;
    v97 = v241;
    sub_22D70D4E4(v96, v241);
    v98 = *v260;
    if ((*v260)(v97, 1, v95) == 1)
    {
      break;
    }

    sub_22D6D3C4C(v97 + *(v280 + 48), v272);
    v99 = i;
    (*v277)(i, v97, v279);
    if (*(v66 + 16))
    {
      v100 = sub_22D6CC49C(v99);
      v101 = v93;
      v102 = v276;
      if (v103)
      {
        sub_22D6F37E4(*(v66 + 56) + *(v267 + 72) * v100, v75);
        v104 = 0;
      }

      else
      {
        v104 = 1;
      }
    }

    else
    {
      v104 = 1;
      v101 = v93;
      v102 = v276;
    }

    (*v266)(v99, v279);
    v105 = *v248;
    (*v248)(v75, v104, 1, v102);
    sub_22D6F37E4(v272, v101);
    v105(v101, 0, 1, v102);
    v106 = *(v249 + 48);
    v107 = v75;
    v108 = v240;
    sub_22D6D5A4C(v107, v240, &qword_27D9FF550, &qword_22D730130);
    sub_22D6D5A4C(v101, v108 + v106, &qword_27D9FF550, &qword_22D730130);
    v109 = *v247;
    if ((*v247)(v108, 1, v102) == 1)
    {
      sub_22D6D5984(v101, &qword_27D9FF550, &qword_22D730130);
      sub_22D6D5984(v271, &qword_27D9FF550, &qword_22D730130);
      v110 = v109(v108 + v106, 1, v102);
      v74 = v273;
      v76 = v245;
      if (v110 == 1)
      {
        sub_22D6D5984(v108, &qword_27D9FF550, &qword_22D730130);
        v37 = v268;
LABEL_7:
        v77 = v272;
        goto LABEL_8;
      }

      goto LABEL_31;
    }

    v111 = v235;
    sub_22D6D5A4C(v108, v235, &qword_27D9FF550, &qword_22D730130);
    if (v109(v108 + v106, 1, v102) == 1)
    {
      sub_22D6D5984(v268, &qword_27D9FF550, &qword_22D730130);
      sub_22D6D5984(v271, &qword_27D9FF550, &qword_22D730130);
      sub_22D6F3848(v111);
      v74 = v273;
      v76 = v245;
LABEL_31:
      sub_22D6D5984(v108, &unk_27D9FF9D0, &unk_22D731060);
      goto LABEL_32;
    }

    v117 = v262;
    sub_22D6D3C4C(v108 + v106, v262);
    v118 = sub_22D7176CC(v111, v117);
    sub_22D6F3848(v117);
    v119 = v268;
    sub_22D6D5984(v268, &qword_27D9FF550, &qword_22D730130);
    sub_22D6D5984(v271, &qword_27D9FF550, &qword_22D730130);
    v120 = v111;
    v37 = v119;
    sub_22D6F3848(v120);
    sub_22D6D5984(v108, &qword_27D9FF550, &qword_22D730130);
    v74 = v273;
    v76 = v245;
    if (v118)
    {
      goto LABEL_7;
    }

LABEL_32:
    v112 = v272;
    v113 = (v272 + v102[6]);
    v114 = *v113;
    v115 = v113[1];

    v116 = v115;
    v37 = v268;
    sub_22D6F1818(&v284, v114, v116);

    v77 = v112;
LABEL_8:
    sub_22D6F3848(v77);
    v75 = v271;
    v68 = v238;
    v66 = v269;
  }

  v271 = v98;

  v121 = 0;
  v122 = v66 + 64;
  v123 = 1 << *(v66 + 32);
  v124 = -1;
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  v125 = v124 & *(v66 + 64);
  v126 = (v123 + 63) >> 6;
  v127 = v244;
  v272 = v94;
  v128 = v243;
  v268 = v122;
  v245 = v126;
  while (2)
  {
    v130 = v267;
    if (v125)
    {
      v131 = v121;
LABEL_52:
      v134 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
      v135 = v134 | (v131 << 6);
      v136 = v269;
      v137 = v265;
      v138 = v278;
      v139 = v279;
      (*(v265 + 16))(v278, *(v269 + 48) + *(v265 + 72) * v135, v279);
      v140 = *(v136 + 56) + *(v130 + 72) * v135;
      v141 = v262;
      sub_22D6F37E4(v140, v262);
      v142 = *(v280 + 48);
      v143 = v243;
      (*(v137 + 32))(v243, v138, v139);
      v144 = &v143[v142];
      v128 = v143;
      sub_22D6D3C4C(v141, v144);
      v145 = 0;
      v94 = v272;
      v74 = v273;
      v127 = v244;
LABEL_53:
      v146 = v280;
      v94(v128, v145, 1, v280);
      v147 = v128;
      v148 = v237;
      sub_22D70D4E4(v147, v237);
      if ((v271)(v148, 1, v146) == 1)
      {

        v167 = v231;
        v168 = sub_22D70B2C8(v230, &v283);
        if ((v168 & 0xC000000000000001) != 0)
        {
          sub_22D72E720();
          type metadata accessor for Client();
          sub_22D70D554(&qword_27D9FF9E8, type metadata accessor for Client, MEMORY[0x277D85378]);
          sub_22D72E560();
          v169 = *(&v284 + 1);
          v168 = v284;
          v170 = v285;
          v171 = v286;
          v172 = v287;
        }

        else
        {
          v171 = 0;
          v173 = -1 << *(v168 + 32);
          v169 = v168 + 56;
          v174 = ~v173;
          v175 = -v173;
          if (v175 < 64)
          {
            v176 = ~(-1 << v175);
          }

          else
          {
            v176 = -1;
          }

          v172 = (v176 & *(v168 + 56));
          v170 = v174;
        }

        v177 = v265;
        v238 = v170;
        v178 = (v170 + 64) >> 6;
        v249 = v232 + 16;
        v248 = (v263 + 32);
        v242 = v168;
        v241 = v169;
        for (i = v178; ; v178 = i)
        {
          if (v168 < 0)
          {
            v184 = sub_22D72E750();
            if (!v184 || (v281 = v184, type metadata accessor for Client(), swift_dynamicCast(), v183 = v282, v181 = v171, v182 = v172, !v282))
            {
LABEL_114:
              sub_22D6D3C44(v242);

              return;
            }
          }

          else
          {
            v179 = v171;
            v180 = v172;
            v181 = v171;
            if (!v172)
            {
              do
              {
                v181 = (v179 + 1);
                if (__OFADD__(v179, 1))
                {
                  goto LABEL_123;
                }

                if (v181 >= v178)
                {
                  goto LABEL_114;
                }

                v180 = *(v169 + 8 * v181);
                ++v179;
              }

              while (!v180);
            }

            v182 = (v180 - 1) & v180;
            v183 = *(*(v168 + 48) + ((v181 << 9) | (8 * __clz(__rbit64(v180)))));
            if (!v183)
            {
              goto LABEL_114;
            }
          }

          v244 = v182;
          v245 = v181;
          v185 = v183;
          v186 = sub_22D70BFD8(v246, v185);
          v243 = v167;

          v187 = *(v186 + 16);
          if (v187)
          {
            v240 = v185;
            v282 = MEMORY[0x277D84F90];
            sub_22D6D3360(0, v187, 0);
            v188 = v282;
            v189 = (v186 + 64);
            v190 = sub_22D72E6F0();
            v191 = 0;
            v247 = (v186 + 72);
            v260 = v187;
            v261 = (v186 + 64);
            v262 = v186;
            while ((v190 & 0x8000000000000000) == 0 && v190 < 1 << *(v186 + 32))
            {
              if ((v189[v190 >> 6] & (1 << v190)) == 0)
              {
                goto LABEL_119;
              }

              v270 = 1 << v190;
              v271 = v190 >> 6;
              v268 = v191;
              v269 = *(v186 + 36);
              v192 = v280;
              v193 = *(v280 + 48);
              v194 = *(v186 + 48) + v177[9] * v190;
              v195 = v177[2];
              v196 = v252;
              v273 = v188;
              v197 = v279;
              v195(v252, v194, v279);
              sub_22D6F37E4(*(v186 + 56) + *(v267 + 72) * v190, &v196[v193]);
              v198 = v177[4];
              v199 = v253;
              v198(v253, v196, v197);
              sub_22D6D3C4C(&v196[v193], v199 + *(v192 + 48));
              v200 = v274;
              sub_22D6D5A4C(v199, v274, &unk_27D9FF4A0, &qword_22D730510);
              v201 = v200 + *(v192 + 48);
              v272 = v190;
              v202 = v276;
              v195(v278, v201 + v276[5], v197);
              sub_22D6F3848(v201);
              v203 = v275;
              sub_22D6D5A4C(v199, v275, &unk_27D9FF4A0, &qword_22D730510);
              v204 = v203 + *(v192 + 48);
              sub_22D6D5A4C(v204 + v202[8], v256, &qword_27D9FF4B0, &unk_22D7301A0);
              sub_22D6F3848(v204);
              v205 = v254;
              sub_22D6D5A4C(v199, v254, &unk_27D9FF4A0, &qword_22D730510);
              v206 = v205 + *(v192 + 48);
              sub_22D6D5A4C(v206 + v202[9], v257, &qword_27D9FF310, &qword_22D7301B8);
              sub_22D6F3848(v206);
              v207 = v255;
              sub_22D6D5A4C(v199, v255, &unk_27D9FF4A0, &qword_22D730510);
              v208 = *(v192 + 48);
              v209 = v250;
              v210 = v207 + v208;
              (*v249)(v258, v207 + v208 + v202[11], v259);
              sub_22D6F3848(v210);
              sub_22D72DD00();
              v211 = v199;
              v177 = v265;
              sub_22D6D5984(v211, &unk_27D9FF4A0, &qword_22D730510);
              v212 = v177[1];
              v212(v207, v197);
              v212(v205, v197);
              v212(v275, v197);
              v213 = v197;
              v188 = v273;
              v212(v274, v213);
              v282 = v188;
              v215 = *(v188 + 16);
              v214 = *(v188 + 24);
              if (v215 >= v214 >> 1)
              {
                sub_22D6D3360((v214 > 1), v215 + 1, 1);
                v188 = v282;
              }

              *(v188 + 16) = v215 + 1;
              (*(v263 + 32))(v188 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v215, v209, v251);
              v186 = v262;
              v190 = 1 << *(v262 + 32);
              if (v272 >= v190)
              {
                goto LABEL_120;
              }

              v189 = v261;
              v216 = v261[v271];
              if ((v216 & v270) == 0)
              {
                goto LABEL_121;
              }

              if (v269 != *(v262 + 36))
              {
                goto LABEL_122;
              }

              v217 = v216 & (-2 << (v272 & 0x3F));
              if (v217)
              {
                v190 = __clz(__rbit64(v217)) | v272 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v218 = v271 << 6;
                v219 = v271 + 1;
                v220 = &v247[v271];
                while (v219 < (v190 + 63) >> 6)
                {
                  v222 = *v220++;
                  v221 = v222;
                  v218 += 64;
                  ++v219;
                  if (v222)
                  {
                    sub_22D6D5264(v272, v269, 0);
                    v190 = __clz(__rbit64(v221)) + v218;
                    goto LABEL_91;
                  }
                }

                sub_22D6D5264(v272, v269, 0);
              }

LABEL_91:
              v191 = (v268 + 1);
              if (v268 + 1 == v260)
              {

                v185 = v240;
                goto LABEL_108;
              }
            }

            goto LABEL_118;
          }

          v188 = MEMORY[0x277D84F90];
LABEL_108:
          v223 = v185;
          v167 = v243;
          sub_22D704A18(v188);
          if (v167)
          {

            if (qword_27D9FF128 != -1)
            {
              swift_once();
            }

            v224 = sub_22D72DBE0();
            __swift_project_value_buffer(v224, qword_27DA01700);
            v225 = sub_22D72DBB0();
            v226 = sub_22D72E580();
            if (os_log_type_enabled(v225, v226))
            {
              v227 = swift_slowAlloc();
              *v227 = 0;
              _os_log_impl(&dword_22D6B4000, v225, v226, "Failed to send alarms change to client", v227, 2u);
              MEMORY[0x2318D0420](v227, -1, -1);
            }

            v167 = 0;
            v171 = v245;
            v172 = v244;
          }

          else
          {

            v171 = v245;
            v172 = v244;
            v225 = v185;
          }

          v168 = v242;
          v169 = v241;
        }
      }

      sub_22D6D3C4C(v148 + *(v280 + 48), v270);
      (*v277)(v127, v148, v279);
      v149 = v246;
      if (*(v246 + 16))
      {
        v150 = sub_22D6CC49C(v127);
        v151 = v242;
        if (v152)
        {
          sub_22D6F37E4(*(v149 + 56) + *(v130 + 72) * v150, v242);
          v153 = 0;
        }

        else
        {
          v153 = 1;
        }

        v74 = v273;
      }

      else
      {
        v153 = 1;
        v151 = v242;
      }

      (*v266)(v127, v279);
      v154 = *v248;
      v155 = v276;
      (*v248)(v151, v153, 1, v276);
      sub_22D6F37E4(v270, v74);
      v154(v74, 0, 1, v155);
      v156 = *(v249 + 48);
      v157 = v236;
      sub_22D6D5A4C(v151, v236, &qword_27D9FF550, &qword_22D730130);
      sub_22D6D5A4C(v74, v157 + v156, &qword_27D9FF550, &qword_22D730130);
      v158 = *v247;
      if ((*v247)(v157, 1, v155) == 1)
      {
        sub_22D6D5984(v74, &qword_27D9FF550, &qword_22D730130);
        sub_22D6D5984(v151, &qword_27D9FF550, &qword_22D730130);
        v159 = v158(v157 + v156, 1, v155);
        v122 = v268;
        if (v159 != 1)
        {
LABEL_65:
          sub_22D6D5984(v157, &unk_27D9FF9D0, &unk_22D731060);
          v126 = v245;
          goto LABEL_66;
        }

        sub_22D6D5984(v157, &qword_27D9FF550, &qword_22D730130);
        v126 = v245;
LABEL_40:
        v129 = v270;
      }

      else
      {
        v160 = v234;
        sub_22D6D5A4C(v157, v234, &qword_27D9FF550, &qword_22D730130);
        if (v158(v157 + v156, 1, v155) == 1)
        {
          sub_22D6D5984(v273, &qword_27D9FF550, &qword_22D730130);
          sub_22D6D5984(v242, &qword_27D9FF550, &qword_22D730130);
          sub_22D6F3848(v160);
          v122 = v268;
          goto LABEL_65;
        }

        v165 = v262;
        sub_22D6D3C4C(v157 + v156, v262);
        v166 = sub_22D7176CC(v160, v165);
        sub_22D6F3848(v165);
        sub_22D6D5984(v273, &qword_27D9FF550, &qword_22D730130);
        sub_22D6D5984(v242, &qword_27D9FF550, &qword_22D730130);
        sub_22D6F3848(v160);
        sub_22D6D5984(v157, &qword_27D9FF550, &qword_22D730130);
        v122 = v268;
        v126 = v245;
        if (v166)
        {
          goto LABEL_40;
        }

LABEL_66:
        v161 = v270;
        v162 = (v270 + v276[6]);
        v163 = *v162;
        v164 = v162[1];

        sub_22D6F1818(&v284, v163, v164);

        v129 = v161;
      }

      sub_22D6F3848(v129);
      v128 = v243;
      v127 = v244;
      v94 = v272;
      v74 = v273;
      continue;
    }

    break;
  }

  if (v126 <= v121 + 1)
  {
    v132 = v121 + 1;
  }

  else
  {
    v132 = v126;
  }

  v133 = v132 - 1;
  while (1)
  {
    v131 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      break;
    }

    if (v131 >= v126)
    {
      v125 = 0;
      v145 = 1;
      v121 = v133;
      goto LABEL_53;
    }

    v125 = *(v122 + 8 * v131);
    ++v121;
    if (v125)
    {
      v121 = v131;
      goto LABEL_52;
    }
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
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
}

uint64_t sub_22D704674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_clients;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(a1 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_alarms);
  *(a1 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_alarms) = a2;
  *a3 = v7;
  a3[1] = v8;
}

void sub_22D7046FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-v11];
  v13 = sub_22D72D7A0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  sub_22D6F37E4(a2, &v12[*(v7 + 48)]);
  v15 = *(a3 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  v30 = a3;
  v27 = sub_22D70D5E8;
  v28 = &v29;
  os_unfair_lock_lock(v15 + 4);
  sub_22D70D638(&v31);
  if (!v3)
  {
    os_unfair_lock_unlock(v15 + 4);
    if (v31)
    {
      sub_22D6D5A4C(v12, v10, &unk_27D9FF4A0, &qword_22D730510);
      v16 = &v10[*(v7 + 48)];
      v17 = (v16 + *(type metadata accessor for Alarm(0) + 24));
      v19 = *v17;
      v18 = v17[1];

      sub_22D6F3848(v16);
      v20 = sub_22D70582C();
      if (v21)
      {
        if (v19 == v20 && v21 == v18)
        {

          (*(v14 + 8))(v10, v13);
          goto LABEL_12;
        }

        v23 = sub_22D72E980();

        (*(v14 + 8))(v10, v13);
        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {

        (*(v14 + 8))(v10, v13);
      }
    }

    v24 = [*(a3 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v25 = sub_22D72E480();
    [v24 hasEntitlement_];

LABEL_12:
    sub_22D6D5984(v12, &unk_27D9FF4A0, &qword_22D730510);
    return;
  }

  os_unfair_lock_unlock(v15 + 4);
  __break(1u);
}

void sub_22D704A18(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22D72DFE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock];
  v23 = v1;
  v24 = a1;
  v20 = sub_22D70D59C;
  v21 = &v22;
  os_unfair_lock_lock(v9 + 4);
  sub_22D6FF31C(&aBlock);
  if (v2)
  {
    os_unfair_lock_unlock(v9 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v9 + 4);
    if (aBlock)
    {
      if ([*&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection] remoteTarget])
      {
        sub_22D72E6D0();
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      aBlock = v29;
      v26 = v30;
      if (*(&v30 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9F8, qword_22D731070);
        if (swift_dynamicCast())
        {
          v10 = v31;

          sub_22D72DFD0();
          sub_22D70D554(&unk_27D9FF950, MEMORY[0x277CB9A58], MEMORY[0x277CB9A50]);
          v11 = sub_22D72E220();
          v12 = swift_allocObject();
          *(v12 + 16) = v3;
          v27 = sub_22D70D5B8;
          v28 = v12;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v26 = sub_22D70D6CC;
          *(&v26 + 1) = &block_descriptor_90;
          v13 = _Block_copy(&aBlock);
          v14 = v3;

          [v10 alarmsDidUpdateWithParameters:v11 completion:v13];
          _Block_release(v13);
          swift_unknownObjectRelease();

          (*(v6 + 8))(v8, v5);
          return;
        }
      }

      else
      {
        sub_22D6D5984(&aBlock, &qword_27D9FF9F0, &unk_22D730240);
      }

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v15 = sub_22D72DBE0();
      __swift_project_value_buffer(v15, qword_27DA01700);
      v16 = sub_22D72DBB0();
      v17 = sub_22D72E590();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22D6B4000, v16, v17, "Failed to cast connection to client interface protocol", v18, 2u);
        MEMORY[0x2318D0420](v18, -1, -1);
      }
    }
  }
}

void sub_22D704ED8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_22D6F1968(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

void sub_22D704F54(void *a1, void *a2, uint64_t a3)
{
  sub_22D72DF90();
  v6 = sub_22D72E480();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22D705300;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D705378;
  v25 = &block_descriptor_65_0;
  v8 = _Block_copy(&v22);
  v9 = &unk_2840D68B0;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() main];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v26 = sub_22D70D410;
  v27 = v15;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D6FD4B4;
  v25 = &block_descriptor_74;
  v16 = _Block_copy(&v22);
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v26 = sub_22D70D458;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D6FD4B4;
  v25 = &block_descriptor_81;
  v20 = _Block_copy(&v22);
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

id sub_22D705300(void *a1)
{
  [a1 selector];
  if (sub_22D72D820())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_22D705378(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

double sub_22D7053CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27D9FF110 != -1)
    {
      swift_once();
    }

    v5 = sub_22D72DBE0();
    __swift_project_value_buffer(v5, qword_27DA016B8);
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E5A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Connection interrupted", v8, 2u);
      MEMORY[0x2318D0420](v8, -1, -1);
    }

    v9 = *&v4[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock];
    v11 = MEMORY[0x28223BE20](v10);
    MEMORY[0x28223BE20](v11);

    os_unfair_lock_lock(v9 + 4);
    sub_22D6F5B28(v12);
    os_unfair_lock_unlock(v9 + 4);
  }

  return result;
}

double sub_22D705578(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27D9FF110 != -1)
    {
      swift_once();
    }

    v5 = sub_22D72DBE0();
    __swift_project_value_buffer(v5, qword_27DA016B8);
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E5A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Connection invalidated", v8, 2u);
      MEMORY[0x2318D0420](v8, -1, -1);
    }

    v9 = *&v4[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock];
    v11 = MEMORY[0x28223BE20](v10);
    MEMORY[0x28223BE20](v11);

    os_unfair_lock_lock(v9 + 4);
    sub_22D6F5B28(v12);
    os_unfair_lock_unlock(v9 + 4);
  }

  return result;
}

void sub_22D705724(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_22D71C434(a2);
  swift_endAccess();
}

uint64_t sub_22D70582C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection);
  v2 = [v1 remoteProcess];
  v3 = sub_22D72E480();
  v4 = [v2 valueForEntitlement_];

  if (v4)
  {
    sub_22D72E6D0();
    swift_unknownObjectRelease();
    sub_22D6D5254(v18, v19);
    sub_22D6D5254(v19, v18);
    if (swift_dynamicCast())
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = [v1 remoteProcess];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = sub_22D72E490();
      v10 = v9;

      objc_allocWithZone(MEMORY[0x277CC1E50]);

      v11 = v8;
      v12 = sub_22D70B0C4(v8, v10);
      if (v12)
      {
        v13 = v12;
        v14 = [v12 containingBundleRecord];
        if (v14 && (v15 = v14, v16 = [v14 bundleIdentifier], v15, v16))
        {
          v11 = sub_22D72E490();
        }

        else
        {
        }
      }

      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22D705A48()
{
  v1 = v0;
  result = sub_22D70582C();
  if (v3)
  {
    v4 = v3;
    v5 = result;
    v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v7 = sub_22D72868C(v5, v4, 0);
    v11 = v7;
    if (v7 && (v12 = sub_22D6FF3AC(), v14 = v13, v11, v14))
    {
      return v12;
    }

    else
    {
      v8 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
      v9 = sub_22D72E480();
      v10 = [v8 hasEntitlement_];

      if (v10)
      {
        return 0x64656C7469746E45;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22D705C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22D72E7D0();

  LODWORD(v9) = *(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_pid);
  v4 = sub_22D72E960();
  MEMORY[0x2318CF680](v4);

  MEMORY[0x2318CF680](0x656C646E7562203BLL, 0xEC000000203A4449);
  v5 = [*(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_22D72E490();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9A0, &unk_22D731130);
  v7 = sub_22D72E4C0();
  MEMORY[0x2318CF680](v7);

  result = MEMORY[0x2318CF680](41, 0xE100000000000000);
  *a2 = 0x203A646970;
  a2[1] = 0xE500000000000000;
  return result;
}

id sub_22D705DFC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D705EC4(uint64_t a1, void (*a2)(char *, void *), uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22D72DDC0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_22D6D5A4C(a1, &v22 - v15, &qword_27D9FF590, &qword_22D730590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = sub_22D72DFC0();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = sub_22D72D5C0();
    v23(v6, v19);

    return sub_22D6D5984(v6, &qword_27D9FF988, &qword_22D731048);
  }

  else
  {
    (*(v8 + 32))(v13, v16, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_22D72DFB0();
    v21 = sub_22D72DFC0();
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    v23(v6, 0);
    sub_22D6D5984(v6, &qword_27D9FF988, &qword_22D731048);
    return (*(v8 + 8))(v13, v7);
  }
}

void sub_22D706328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_22D6D5A4C(a1, &v12 - v7, &qword_27D9FF988, &qword_22D731048);
  v9 = sub_22D72DFC0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48], MEMORY[0x277CB9A40]);
    v11 = sub_22D72E220();
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, v11, a2);
}

uint64_t sub_22D7064A4()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v9 = Strong;
  MEMORY[0x2318CF200]();
  v10 = sub_22D70582C();
  if (!v11)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v10;
  v13 = v11;
  v19 = v4;
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v14 = off_2840CC670[0];
  v15 = type metadata accessor for AlarmManager(0);
  v16 = v20;
  v14(v7, v12, v13, v15, &off_2840CC640);
  if (v16)
  {
    swift_unknownObjectRelease();

    v4 = v19;
    return (*(v5 + 8))(v7, v4);
  }

  swift_unknownObjectRelease();

  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_22D70698C()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v9 = Strong;
  MEMORY[0x2318CF200]();
  v10 = sub_22D70582C();
  if (!v11)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v10;
  v13 = v11;
  v19 = v4;
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v14 = off_2840CC658[0];
  v15 = type metadata accessor for AlarmManager(0);
  v16 = v20;
  v14(v7, v12, v13, v15, &off_2840CC640);
  if (v16)
  {
    swift_unknownObjectRelease();

    v4 = v19;
    return (*(v5 + 8))(v7, v4);
  }

  swift_unknownObjectRelease();

  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_22D706E74()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v9 = Strong;
  MEMORY[0x2318CF200]();
  v10 = sub_22D70582C();
  if (!v11)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v10;
  v13 = v11;
  v19 = v4;
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v14 = off_2840CC660[0];
  v15 = type metadata accessor for AlarmManager(0);
  v16 = v20;
  v14(v7, v12, v13, v15, &off_2840CC640);
  if (v16)
  {
    swift_unknownObjectRelease();

    v4 = v19;
    return (*(v5 + 8))(v7, v4);
  }

  swift_unknownObjectRelease();

  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_22D70735C()
{
  v1 = sub_22D72DEB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v8 = sub_22D72E480();
    v9 = [v7 hasEntitlement_];

    if (v9)
    {
      __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v6 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v10 = off_2840CC668[0];
      type metadata accessor for AlarmManager(0);
      v10();
    }

    else
    {
      (*(v2 + 104))(v4, *MEMORY[0x277CB99D8], v1);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CB99E8], v1);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D707690()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v9 = Strong;
  MEMORY[0x2318CF200]();
  v10 = sub_22D70582C();
  if (!v11)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v10;
  v13 = v11;
  v19 = v4;
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v14 = off_2840CC678[0];
  v15 = type metadata accessor for AlarmManager(0);
  v16 = v20;
  v14(v7, v12, v13, v15, &off_2840CC640);
  if (v16)
  {
    swift_unknownObjectRelease();

    v4 = v19;
    return (*(v5 + 8))(v7, v4);
  }

  swift_unknownObjectRelease();

  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_22D707B78()
{
  v0 = sub_22D72DEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99E8], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }

  v9 = Strong;
  MEMORY[0x2318CF200]();
  v10 = sub_22D70582C();
  if (!v11)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CB99D0], v0);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v10;
  v13 = v11;
  v19 = v4;
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v9 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
  v14 = off_2840CC680;
  v15 = type metadata accessor for AlarmManager(0);
  v16 = v20;
  v14(v7, v12, v13, v15, &off_2840CC640);
  if (v16)
  {
    swift_unknownObjectRelease();

    v4 = v19;
    return (*(v5 + 8))(v7, v4);
  }

  swift_unknownObjectRelease();

  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_22D708060()
{
  v1 = sub_22D72DEB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_22D70582C();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v6 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v11 = off_2840CC690[0];
      type metadata accessor for AlarmManager(0);
      v11(v9, v10);

      if (!v0)
      {
        sub_22D72DFD0();
      }
    }

    else
    {
      (*(v2 + 104))(v4, *MEMORY[0x277CB99D0], v1);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CB99E8], v1);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D708310()
{
  v2 = sub_22D72DEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [*(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v9 = sub_22D72E480();
    v10 = [v8 hasEntitlement_];

    if (v10)
    {
      __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v7 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v11 = off_2840CC698;
      type metadata accessor for AlarmManager(0);
      v11();
      if (!v1)
      {
        sub_22D72DFD0();
      }
    }

    else
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CB99D8], v2);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CB99E8], v2);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D708760(uint64_t a1)
{
  v22[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v22[0] = v8;
    v22[1] = v2;
    v13 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v14 = sub_22D72E480();
    v15 = [v13 hasEntitlement_];

    if (v15)
    {
      MEMORY[0x2318CF230]();
      v16 = sub_22D72E090();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v19 = off_2840CC670[0];
      v20 = type metadata accessor for AlarmManager(0);
      v19(v10, v16, v18, v20, &off_2840CC640);
      swift_unknownObjectRelease();

      return (*(v22[0] + 8))(v10, v7);
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D708C88(uint64_t a1)
{
  v22[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v22[0] = v8;
    v22[1] = v2;
    v13 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v14 = sub_22D72E480();
    v15 = [v13 hasEntitlement_];

    if (v15)
    {
      MEMORY[0x2318CF230]();
      v16 = sub_22D72E090();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v19 = off_2840CC658[0];
      v20 = type metadata accessor for AlarmManager(0);
      v19(v10, v16, v18, v20, &off_2840CC640);
      swift_unknownObjectRelease();

      return (*(v22[0] + 8))(v10, v7);
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D7091B0(uint64_t a1)
{
  v22[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v22[0] = v8;
    v22[1] = v2;
    v13 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v14 = sub_22D72E480();
    v15 = [v13 hasEntitlement_];

    if (v15)
    {
      MEMORY[0x2318CF230]();
      v16 = sub_22D72E090();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v19 = off_2840CC660[0];
      v20 = type metadata accessor for AlarmManager(0);
      v19(v10, v16, v18, v20, &off_2840CC640);
      swift_unknownObjectRelease();

      return (*(v22[0] + 8))(v10, v7);
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D7096D8(uint64_t a1)
{
  v22[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v22[0] = v8;
    v22[1] = v2;
    v13 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v14 = sub_22D72E480();
    v15 = [v13 hasEntitlement_];

    if (v15)
    {
      MEMORY[0x2318CF230]();
      v16 = sub_22D72E090();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v19 = off_2840CC678[0];
      v20 = type metadata accessor for AlarmManager(0);
      v19(v10, v16, v18, v20, &off_2840CC640);
      swift_unknownObjectRelease();

      return (*(v22[0] + 8))(v10, v7);
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}