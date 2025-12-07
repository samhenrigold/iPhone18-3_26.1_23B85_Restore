uint64_t sub_228818D74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = sub_22887F180();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22887F060();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v47 = a1;
  sub_22887F030();
  sub_22887F050();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v14 = sub_22887F370();

  v51[0] = 0;
  v15 = [v12 attributesOfItemAtPath:v14 error:v51];

  v16 = v51[0];
  if (v15)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_22881BB64(&qword_27D8519A0, 255, type metadata accessor for FileAttributeKey, &unk_228880FFC);
    v17 = sub_22887F2F0();
    v18 = v16;

    if (*(v17 + 16))
    {
      v19 = sub_228819E28(*MEMORY[0x277CCA150]);
      if (v20)
      {
        sub_2287E66B0(*(v17 + 56) + 32 * v19, v51);

        v21 = sub_22887F0C0();
        v22 = v50;
        v23 = swift_dynamicCast();
        return (*(*(v21 - 8) + 56))(v22, v23 ^ 1u, 1, v21);
      }
    }
  }

  else
  {
    v44 = v13;
    v45 = v3;
    v25 = v51[0];
    v26 = sub_22887F020();

    swift_willThrow();
    v27 = v46[6];
    ObjectType = swift_getObjectType();
    v29 = v48;
    (*(v27 + 40))(ObjectType, v27);
    (*(v6 + 16))(v8, v47, v5);
    v30 = v26;
    v31 = sub_22887F160();
    v32 = sub_22887F690();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51[0] = v47;
      *v33 = 136315394;
      sub_22881BB64(&unk_27D851F58, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v34 = sub_22887FBA0();
      v36 = v35;
      v44(v8, v5);
      v37 = sub_2287E64D8(v34, v36, v51);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2112;
      v38 = v26;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v39;
      v40 = v46;
      *v46 = v39;
      _os_log_impl(&dword_2287E4000, v31, v32, "Failed to fetch initial modfication date for: %s: %@", v33, 0x16u);
      sub_22881B888(v40, &qword_2813CF4C0, sub_22881B8E4);
      MEMORY[0x22AAC1440](v40, -1, -1);
      v41 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AAC1440](v41, -1, -1);
      MEMORY[0x22AAC1440](v33, -1, -1);
    }

    else
    {

      v44(v8, v5);
    }

    (*(v49 + 8))(v29, v45);
  }

  v42 = sub_22887F0C0();
  return (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
}

void sub_228819358(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    [objc_opt_self() removeFilePresenter_];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v10 = sub_2288099A4(MEMORY[0x277D84F90]);

      *(a1 + 8) = v10;
      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_228819478(void *a1)
{
  v3 = *v1;
  sub_2287E9708(0, &qword_27D851F48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_22887F0C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228818D74(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22881B888(v6, &qword_27D851F48, MEMORY[0x277CC9578]);
  }

  v12 = (*(v8 + 32))(v10, v6, v7);
  v13 = v1[7];
  MEMORY[0x28223BE20](v12);
  *(&v20 - 2) = a1;
  *(&v20 - 1) = v10;
  os_unfair_lock_lock((v13 + 32));
  sub_22881B86C((v13 + 16), &v22);
  os_unfair_lock_unlock((v13 + 32));
  v14 = v22;
  v15 = v1[3];
  ObjectType = swift_getObjectType();
  v22 = v14;
  v21 = v1;
  v17 = *(v15 + 8);
  v19 = sub_22881BB64(&qword_27D851F50, v18, type metadata accessor for FileCoordinatorInputSignal, &protocol conformance descriptor for FileCoordinatorInputSignal);
  v17(&v22, &v21, v3, v19, ObjectType, v15);

  return (*(v8 + 8))(v10, v7);
}

double sub_228819728@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2287E9708(0, &qword_27D851F48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_22887F060();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a2, v12);
  v16 = sub_22887F0C0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, a3, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  sub_2288471B0(v10, v14);
  *a4 = *a1;

  return result;
}

id sub_228819AC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileCoordinatorInputSignal.Presenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FileCoordinatorInputSignal.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t FileCoordinatorInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_228819C30()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock(v1 + 8);
  sub_228819358(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

unint64_t sub_228819CC0(uint64_t a1)
{
  sub_22887F060();
  sub_22881BB64(&qword_27D851AC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_22887F330();

  return sub_228819EB8(a1, v2);
}

unint64_t sub_228819D5C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x22AAC0BB0](*(v1 + 40), a1, 4);

  return sub_22881A07C(v2, v3);
}

unint64_t sub_228819DA4(uint64_t *a1)
{
  sub_22887FC90();
  sub_22887F3E0();
  sub_22887F3E0();
  v2 = sub_22887FCD0();

  return sub_22881A0E8(a1, v2);
}

unint64_t sub_228819E28(uint64_t a1)
{
  sub_22887F3A0();
  sub_22887FC90();
  sub_22887F3E0();
  v2 = sub_22887FCD0();

  return sub_22881A1E4(a1, v2);
}

unint64_t sub_228819EB8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22887F060();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_22881BB64(qword_27D851F90, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v16 = sub_22887F360();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_22881A07C(int a1, uint64_t a2)
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

unint64_t sub_22881A0E8(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(v2 + 48);
    do
    {
      v12 = (v11 + 48 * v5);
      v13 = v12[2];
      v14 = v12[3];
      v15 = *v12 == v8 && v12[1] == v7;
      if (v15 || (sub_22887FBF0() & 1) != 0)
      {
        v16 = v13 == v9 && v14 == v10;
        if (v16 || (sub_22887FBF0() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22881A1E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22887F3A0();
      v8 = v7;
      if (v6 == sub_22887F3A0() && v8 == v9)
      {
        break;
      }

      v11 = sub_22887FBF0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_22881A2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22881BA00(0);
  v5 = *(v4 + 48);
  sub_22881BAF4(0);
  v7 = *(v6 + 48);
  v8 = sub_22887F060();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = sub_22887F0C0();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2 + v7, a1 + v5, v9);
}

void sub_22881A3B0(__int128 *a1, uint64_t a2)
{
  v4 = sub_22887F060();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = sub_22887FCD0();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_22881BB64(&qword_27D851AC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v20 = sub_22887F330();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      MEMORY[0x22AAC0BD0](v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22881A5E0(__int128 *a1, uint64_t a2)
{
  sub_22887FCD0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x22AAC0BD0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_22887FC90();

        sub_22887F3E0();
        v10 = sub_22887FCD0();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_22881A73C(uint64_t a1, uint64_t a2)
{
  result = sub_22887FCD0();
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  for (i = (v7 + 63) >> 6; v9; v5 ^= result)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    result = MEMORY[0x22AAC0BB0](v4, *(*(a2 + 48) + ((v11 << 8) | (4 * v12))), 4);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x22AAC0BD0](v5);
    }

    v9 = *(a2 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22881A850(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v82 = a5;
  v9 = sub_22887F0C0();
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = v58 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v58 - v14;
  v74 = sub_22887F060();
  v64 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287E9708(0, &unk_27D851F80, sub_22881BAF4);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v58 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v75 = a1;
  v76 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v77 = v22;
  v78 = 0;
  v79 = v25 & v23;
  v80 = a2;
  v26 = v17;
  v81 = a3;

  v58[1] = a3;

  sub_22886EE6C(v20);
  sub_22881BAF4(0);
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 48);
  v68 = v29 + 48;
  v69 = v30;
  if (v30(v20, 1, v27) == 1)
  {
LABEL_5:
    sub_2287EF604(v75);
  }

  else
  {
    v32 = *(v64 + 32);
    v71 = (v70 + 32);
    v72 = v32;
    v61 = v70 + 16;
    v60 = v70 + 8;
    v73 = v64 + 32;
    v59 = (v64 + 8);
    v58[3] = v70 + 40;
    v66 = v28;
    v67 = v20;
    while (1)
    {
      v43 = *(v28 + 48);
      v72(v26, v20, v74);
      v44 = *v71;
      (*v71)(v15, &v20[v43], v9);
      v45 = *v82;
      v47 = sub_228819CC0(v26);
      v48 = v45[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        break;
      }

      v51 = v46;
      if (v45[3] >= v50)
      {
        if ((a4 & 1) == 0)
        {
          sub_228852CCC();
        }
      }

      else
      {
        sub_22885004C(v50, a4 & 1);
        v52 = sub_228819CC0(v26);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_23;
        }

        v47 = v52;
      }

      v54 = *v82;
      if (v51)
      {
        v33 = v54[7];
        v34 = v70;
        v65 = *(v70 + 72) * v47;
        v35 = *(v70 + 16);
        v36 = v63;
        v35(v63, v33 + v65, v9);
        if (sub_22887F0A0())
        {
          v37 = v36;
        }

        else
        {
          v37 = v15;
        }

        v38 = v26;
        v39 = v15;
        v40 = v62;
        v35(v62, v37, v9);
        v41 = *(v34 + 8);
        v41(v36, v9);
        v41(v39, v9);
        (*v59)(v38, v74);
        v42 = v40;
        v15 = v39;
        v26 = v38;
        (*(v34 + 40))(v54[7] + v65, v42, v9);
      }

      else
      {
        v54[(v47 >> 6) + 8] |= 1 << v47;
        v72(v54[6] + *(v64 + 72) * v47, v26, v74);
        v44((v54[7] + *(v70 + 72) * v47), v15, v9);
        v55 = v54[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_22;
        }

        v54[2] = v57;
      }

      v20 = v67;
      sub_22886EE6C(v67);
      a4 = 1;
      v28 = v66;
      if (v69(v20, 1, v66) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_22887FC20();
    __break(1u);
  }

  return result;
}

unint64_t sub_22881ADEC()
{
  result = qword_27D851E18;
  if (!qword_27D851E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E18);
  }

  return result;
}

void sub_22881AE40(uint64_t a1)
{
  if (!qword_27D851E20)
  {
    sub_22887F060();
    sub_22887F0C0();
    sub_22881BB64(&qword_27D851AC8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v1 = sub_22887F320();
    if (!v2)
    {
      atomic_store(v1, &qword_27D851E20);
    }
  }
}

unint64_t sub_22881AEF0()
{
  result = qword_27D851E30;
  if (!qword_27D851E30)
  {
    sub_22881AE40(255);
    sub_22881BB64(&qword_27D851E38, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_22881BB64(&qword_27D851E40, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E30);
  }

  return result;
}

void sub_22881AFD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22881ADEC();
    v7 = a3(a1, &type metadata for FileCoordinatorInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22881B03C()
{
  result = qword_27D851E50;
  if (!qword_27D851E50)
  {
    sub_22881AE40(255);
    sub_22881BB64(&qword_27D851E58, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_22881BB64(&qword_27D851E60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E50);
  }

  return result;
}

void sub_22881B124(uint64_t a1)
{
  if (!qword_27D851E68)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22887F910();
    if (!v2)
    {
      atomic_store(v1, &qword_27D851E68);
    }
  }
}

uint64_t sub_22881B184()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 24);
  return sub_228818334(&v3, v1);
}

unint64_t sub_22881B1C0(uint64_t a1)
{
  result = sub_22881B1E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22881B1E8()
{
  result = qword_27D851E70;
  if (!qword_27D851E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E70);
  }

  return result;
}

unint64_t sub_22881B240()
{
  result = qword_27D851E78;
  if (!qword_27D851E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E78);
  }

  return result;
}

unint64_t sub_22881B298()
{
  result = qword_27D851E80;
  if (!qword_27D851E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E80);
  }

  return result;
}

unint64_t sub_22881B2EC(void *a1)
{
  a1[1] = sub_22881B324();
  a1[2] = sub_22881B378();
  result = sub_22881B3CC();
  a1[3] = result;
  return result;
}

unint64_t sub_22881B324()
{
  result = qword_27D851E90;
  if (!qword_27D851E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E90);
  }

  return result;
}

unint64_t sub_22881B378()
{
  result = qword_27D851E98;
  if (!qword_27D851E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851E98);
  }

  return result;
}

unint64_t sub_22881B3CC()
{
  result = qword_27D851EA0;
  if (!qword_27D851EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851EA0);
  }

  return result;
}

unint64_t sub_22881B424()
{
  result = qword_27D851EA8;
  if (!qword_27D851EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851EA8);
  }

  return result;
}

uint64_t sub_22881B478(uint64_t a1, uint64_t a2)
{
  result = sub_22881BB64(&qword_27D851EB8, a2, type metadata accessor for FileCoordinatorInputSignal, &protocol conformance descriptor for FileCoordinatorInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22881B530(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22881B578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FileCoordinatorInputSignal.Presenter(uint64_t a1)
{
  result = qword_27D851F20;
  if (!qword_27D851F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22881B618(uint64_t a1)
{
  result = sub_22887F060();
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

uint64_t sub_22881B6C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22881B708(uint64_t result, int a2, int a3)
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

unint64_t sub_22881B768()
{
  result = qword_27D851F30;
  if (!qword_27D851F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851F30);
  }

  return result;
}

unint64_t sub_22881B7C0()
{
  result = qword_27D851F38;
  if (!qword_27D851F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851F38);
  }

  return result;
}

unint64_t sub_22881B818()
{
  result = qword_27D851F40;
  if (!qword_27D851F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851F40);
  }

  return result;
}

uint64_t sub_22881B888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2287E9708(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22881B8E4()
{
  result = qword_2813CF4D0;
  if (!qword_2813CF4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CF4D0);
  }

  return result;
}

void sub_22881BA00(uint64_t a1)
{
  if (!qword_27D851F70)
  {
    sub_22887F060();
    sub_22887F0C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D851F70);
    }
  }
}

uint64_t sub_22881BA74(uint64_t a1, uint64_t a2)
{
  sub_2287E9708(0, &qword_27D851F68, sub_22881BA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22881BAF4(uint64_t a1)
{
  if (!qword_27D851AD0)
  {
    sub_22887F060();
    sub_22887F0C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D851AD0);
    }
  }
}

uint64_t sub_22881BB64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t WorkBarrier.__allocating_init(completion:priorityThresholdOverride:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = v7;
  return result;
}

uint64_t WorkBarrier.init(completion:priorityThresholdOverride:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = v4;
  return v3;
}

uint64_t SingleContextProvider.__allocating_init(context:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SingleContextProvider.start(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  ObjectType = swift_getObjectType();
  sub_22881BD80(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2288817D0;
  v7 = *(v4 + 88);
  *(v6 + 32) = v2[2];
  *(v6 + 40) = v7;
  v8 = *(a2 + 8);
  swift_unknownObjectRetain();
  v8(v6, ObjectType, a2);
}

void sub_22881BD80(uint64_t a1)
{
  if (!qword_2813CF2C0)
  {
    sub_2287FF5DC();
    v1 = sub_22887FBB0();
    if (!v2)
    {
      atomic_store(v1, &qword_2813CF2C0);
    }
  }
}

uint64_t SingleContextProvider.context(for:)()
{
  result = sub_22881BE88();
  if (!v0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t SingleContextProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22881BE5C()
{
  result = sub_22881BE88();
  if (!v0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t WorkSource.cancel(fetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22887F7D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_2287E766C(a1, v19);
  sub_22881C180();
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, AssociatedTypeWitness);
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
    (*(a3 + 32))(v13, v18, a3);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    v15(v9, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v9, v6);
    sub_22881C1E4();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_22881C180()
{
  result = qword_2813D11A0;
  if (!qword_2813D11A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D11A0);
  }

  return result;
}

unint64_t sub_22881C1E4()
{
  result = qword_27D852020;
  if (!qword_27D852020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852020);
  }

  return result;
}

unint64_t sub_22881C274()
{
  result = qword_27D852028;
  if (!qword_27D852028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852028);
  }

  return result;
}

uint64_t AnchoredWorkCriteria.criteria.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AnchoredWorkCriteria.anchor.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

double AnchoredWorkCriteria.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

uint64_t AnchoredWorkCriteria.init(criteria:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 AnchoredWorkCriteria.init(identifier:inputSignalConfigurations:anchor:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11 = *a1;
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u64[1];
  type metadata accessor for WorkCriteria();
  v9 = swift_allocObject();
  result = v11;
  *(v9 + 16) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  *(v9 + 48) = a2;
  *a4 = v9;
  a4[1] = a3;
  return result;
}

__n128 SecureCodingOptionalValueAnchor.init(identifier:value:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u64[0] = a2;
  return result;
}

double SecureCodingOptionalValueAnchor.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

void *SecureCodingOptionalValueAnchor.value.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t SecureCodingOptionalValueAnchor.hasDifference(from:for:)(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[4];
    v4 = *(v1 + 32);
    v5 = (v4 | v3) == 0;
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *a1;
      v8 = a1[2];
      v9 = a1[3];
      sub_22881C5C8(*a1, v2, v8, v9, v3);
      v10 = v3;
      v11 = v4;
      v5 = sub_22887F7C0();
      sub_22881C614(v7, v2, v8, v9, v3);
    }

    v12 = v5 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

double sub_22881C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }

  return result;
}

void sub_22881C614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

double SecureCodingOptionalValueAnchor.merged(with:)@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  v6 = v5;

  return result;
}

uint64_t sub_22881C6C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22881C71C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void SecureCodingOptionalValueAnchor.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v27 = a3;
  type metadata accessor for SecureCodingOptionalValueAnchor.CodingKeys(255, a2, a4, a5);
  swift_getWitnessTable();
  v7 = sub_22887FAF0();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887FCE0();
  if (v5)
  {
    goto LABEL_3;
  }

  v10 = v26;
  v11 = v27;
  sub_22881CB2C();
  v32 = 1;
  sub_22881CB7C();
  sub_22887FAE0();
  v25 = v9;
  v12 = v29;
  if (v29 >> 60 != 15)
  {
    v16 = v28;
    sub_2288112B4();
    v17 = v16;
    v13 = sub_22887F6C0();
    if (v13)
    {
      sub_22881CBF4(v17, v12);
      goto LABEL_6;
    }

    LOBYTE(v28) = 1;
    sub_22887F8F0();
    swift_allocError();
    swift_getWitnessTable();
    v22 = v17;
    v23 = v25;
    sub_22887F8E0();
    swift_willThrow();
    sub_22881CBF4(v22, v12);
    (*(v10 + 8))(v23, v7);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v13 = 0;
LABEL_6:
  v32 = 0;
  sub_22880640C();
  v14 = v25;
  sub_22887FAE0();
  v15 = a1;
  (*(v10 + 8))(v14, v7);
  v18 = v29;
  v19 = v30;
  v20 = v31;
  *v11 = v28;
  v11[1] = v18;
  v11[2] = v19;
  v11[3] = v20;
  v11[4] = v13;
  v21 = v13;

  __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_22881CB2C()
{
  if (!qword_2813D16A0)
  {
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D16A0);
    }
  }
}

unint64_t sub_22881CB7C()
{
  result = qword_2813D1698;
  if (!qword_2813D1698)
  {
    sub_22881CB2C();
    sub_228806364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D1698);
  }

  return result;
}

uint64_t sub_22881CBF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2288063B8(result, a2);
  }

  return result;
}

uint64_t SecureCodingOptionalValueAnchor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  type metadata accessor for SecureCodingOptionalValueAnchor.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_22887FB70();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = *(v4 + 8);
  v25 = *v4;
  v26 = v9;
  v10 = *(v4 + 24);
  v24 = *(v4 + 16);
  v27 = v10;
  v11 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v11;
  sub_22887FCF0();
  if (v11)
  {
    v13 = v6;
    v14 = v28;
    v15 = objc_opt_self();
    v31 = 0;
    v16 = [v15 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v31];
    v17 = v31;
    if (v16)
    {
      v18 = sub_22887F090();
      v20 = v19;

      v31 = v18;
      v32 = v20;
      v30 = 1;
      sub_228806744();
      sub_22887FB50();
      if (v14)
      {
        (*(v29 + 8))(v8, v13);

        return sub_2288063B8(v18, v20);
      }

      sub_2288063B8(v18, v20);
      goto LABEL_9;
    }

    v23 = v17;
    sub_22887F020();

    swift_willThrow();
  }

  else
  {
    LOBYTE(v31) = 1;
    v22 = v28;
    sub_22887FB60();
    v13 = v6;
    if (!v22)
    {
LABEL_9:
      v31 = v25;
      v32 = v26;
      v33 = v24;
      v34 = v27;
      v30 = 0;
      sub_228806798();

      sub_22887FB50();
    }
  }

  return (*(v29 + 8))(v8, v13);
}

uint64_t sub_22881CF40(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_22881CFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 WorkCriteria.__allocating_init(identifier:inputSignalConfigurations:)(__n128 *a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = a1->n128_u64[1];
  v4[1].n128_u64[0] = a1->n128_u64[0];
  v4[1].n128_u64[1] = v5;
  result = a1[1];
  v4[2] = result;
  v4[3].n128_u64[0] = a2;
  return result;
}

double WorkCriteria.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

uint64_t WorkCriteria.init(identifier:inputSignalConfigurations:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(a1 + 16);
  *(v2 + 48) = a2;
  return v2;
}

void *WorkCriteria.__allocating_init(identifier:inputSignalConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a3;
  return result;
}

HealthOrchestration::WorkCriteria::Identifier __swiftcall WorkCriteria.Identifier.init(_:logDescription:)(Swift::String _, Swift::String_optional logDescription)
{
  v2->value = _;
  v2[1] = logDescription;
  result.logDescription = logDescription;
  result.value = _;
  return result;
}

uint64_t WorkCriteria.deinit()
{

  return v0;
}

uint64_t WorkCriteria.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorkCriteria.Identifier.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkCriteria.Identifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WorkCriteria.Identifier.logDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkCriteria.Identifier.logDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void static WorkCriteria.Identifier.singleWorkCriteriaIdentifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000012;
  a1[1] = 0x8000000228888A70;
  a1[2] = 0;
  a1[3] = 0;
}

HealthOrchestration::WorkCriteria::Identifier __swiftcall WorkCriteria.Identifier.init(stringLiteral:)(Swift::String stringLiteral)
{
  *v1 = stringLiteral;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.value = stringLiteral;
  return result;
}

uint64_t static WorkCriteria.Identifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t WorkCriteria.Identifier.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t WorkCriteria.Identifier.description.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

uint64_t WorkCriteria.description.getter()
{
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_22887F8A0();

  v28 = 0x6972436B726F573CLL;
  v29 = 0xEF203A6169726574;
  if (v0[5])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  MEMORY[0x22AAC0340](v1, v2);

  MEMORY[0x22AAC0340](10272, 0xE200000000000000);
  v3 = v0[6];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v4, 0);
    v5 = v27;
    v6 = v3 + 32;
    do
    {
      sub_2287E766C(v6, v24);
      v22 = 0;
      v23 = 0xE000000000000000;
      v7 = v25;
      v8 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v8 + 16))(v20, v7, v8);
      v9 = v21;
      if (v21)
      {
        v10 = v20[2];
      }

      else
      {
        v10 = v20[0];
      }

      MEMORY[0x22AAC0340](v10, v9);

      v11 = v22;
      v12 = v23;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v27 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2287F2304((v13 > 1), v14 + 1, 1);
        v5 = v27;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  v24[0] = v5;
  sub_2287F2448(0, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2287F2498();
  v16 = sub_22887F350();
  v18 = v17;

  MEMORY[0x22AAC0340](v16, v18);

  MEMORY[0x22AAC0340](15913, 0xE200000000000000);
  return v28;
}

unint64_t sub_22881D6F8()
{
  result = qword_27D852030;
  if (!qword_27D852030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852030);
  }

  return result;
}

unint64_t sub_22881D750()
{
  result = qword_27D852038;
  if (!qword_27D852038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852038);
  }

  return result;
}

unint64_t sub_22881D7A8()
{
  result = qword_27D852040;
  if (!qword_27D852040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852040);
  }

  return result;
}

unint64_t sub_22881D800()
{
  result = qword_2813D12E0;
  if (!qword_2813D12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D12E0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22881D8C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22881D90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void *sub_22881D984(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881DB14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881D9A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881DC4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881D9C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881DD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881D9E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881DFEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881DA04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881E274(a1, a2, a3, *v3, &qword_2813CF2C8, &qword_2813D1578, &protocol descriptor for InputSignal);
  *v3 = result;
  return result;
}

char *sub_22881DA3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881E140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881DA5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881E274(a1, a2, a3, *v3, &qword_2813CF270, qword_2813CFDF8, &protocol descriptor for InputSignalConfiguration);
  *v3 = result;
  return result;
}

void *sub_22881DA94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881E3D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881DAB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881E51C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881DAD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881E654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22881DAF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22881E78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22881DB14(void *result, int64_t a2, char a3, void *a4)
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
    sub_22881E8C4(0, &qword_2813CF200, sub_22880F394);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22880F394();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22881DC4C(void *result, int64_t a2, char a3, void *a4)
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
    sub_228811DD8(0, &qword_2813CF2C0, qword_2813D13A8, &protocol descriptor for WorkContext, 0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2287E670C(0, qword_2813D13A8, &protocol descriptor for WorkContext, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22881DD98(void *result, int64_t a2, char a3, void *a4)
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
    sub_22881E8C4(0, &qword_2813CF218, sub_22881E980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22881E980(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881DED0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF1E8, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
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

char *sub_22881DFEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_27D852050, &type metadata for ScopedExecutorIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E140(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_27D852048, &type metadata for SimpleWorkPlan, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22881E274(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_228811DD8(0, a5, a6, a7, 1);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2287E670C(0, a6, a7, 1);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_22881E3D0(void *result, int64_t a2, char a3, void *a4)
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
    sub_22881E8C4(0, &qword_2813CF278, sub_22881E918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22881E918(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E51C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF250, &type metadata for InputSignalObservationManager.AnyConfiguration, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E654(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF228, &type metadata for WorkQueue.FetchRequest, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22881E78C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF290, &type metadata for InputSignalAnchorSet.EncodedAnchor, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22881E8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887FBB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22881E918(uint64_t a1)
{
  if (!qword_2813D04E0)
  {
    sub_22880A550(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813D04E0);
    }
  }
}

void sub_22881E980(uint64_t a1)
{
  if (!qword_2813CF650)
  {
    sub_2287E670C(255, &unk_2813CF800, &protocol descriptor for Executor, 0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813CF650);
    }
  }
}

uint64_t ScheduledWorkPlan.context.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

double ScheduledWorkPlan.executorIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;

  return result;
}

__n128 ScheduledWorkPlan.executorIdentifier.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);

  result = v5;
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t ScheduledWorkPlan.plan.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));

  return sub_2287EC014(a1, v1 + 64);
}

uint64_t ScheduledWorkPlan.anchor.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_22881EC54(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 120) = sub_22881F034;
  *(a2 + 128) = v5;
  return result;
}

uint64_t ScheduledWorkPlan.onFinish.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t ScheduledWorkPlan.onFinish.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t ScheduledWorkPlan.init(context:executorIdentifier:plan:anchor:scheduled:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v14;
  *(a8 + 32) = v15;
  *(a8 + 40) = v16;
  *(a8 + 48) = a3[2];
  result = sub_2287EC014(a4, a8 + 64);
  *(a8 + 104) = a5;
  *(a8 + 112) = a9;
  *(a8 + 120) = a6;
  *(a8 + 128) = a7;
  return result;
}

unint64_t sub_22881EE34()
{
  result = qword_27D852058;
  if (!qword_27D852058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852058);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22881EEBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_22881EF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22881EF74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22881EFB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_22881EFFC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t AsyncExecutor.run(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v23 - v12;
  sub_22881F2F4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22887F5B0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, AssociatedTypeWitness);
  v18 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = v5;
  (*(v10 + 32))(&v19[v18], v13, AssociatedTypeWitness);
  v20 = &v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v24;
  *v20 = v23;
  v20[1] = v21;
  swift_unknownObjectRetain();

  sub_22881F930(0, 0, v16, &unk_2288832F8, v19);
}

void sub_22881F2F4(uint64_t a1)
{
  if (!qword_2813CF558)
  {
    sub_22887F5B0();
    v1 = sub_22887F7D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2813CF558);
    }
  }
}

uint64_t sub_22881F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a6;
  v8[3] = a7;
  v13 = (*(v15 + 16) + **(v15 + 16));
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_22881F484;

  return v13(a5, a8);
}

uint64_t sub_22881F484()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22881F600;
  }

  else
  {
    v2 = sub_22881F598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22881F598()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22881F600()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_22887F010();
  v2();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22881F688(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22881F83C;

  return sub_22881F34C(a1, v7, v8, v9, v1 + v6, v11, v12, v4);
}

uint64_t sub_22881F83C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22881F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22881F2F4(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22881FD10(a3, v11);
  v12 = sub_22887F5B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22881FD74(v11);
  }

  else
  {
    sub_22887F5A0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22887F570();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22887F3C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22881FD74(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22881FD74(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t dispatch thunk of AsyncExecutor.run(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22881F83C;

  return v9(a1, a2, a3);
}

uint64_t sub_22881FD10(uint64_t a1, uint64_t a2)
{
  sub_22881F2F4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22881FD74(uint64_t a1)
{
  sub_22881F2F4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22881FDD0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22881FEC8;

  return v6(a1);
}

uint64_t sub_22881FEC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22881FFC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_228820078;

  return sub_22881FDD0(a1, v4);
}

uint64_t TimeoutDispatchTarget.Errors.hashValue.getter()
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](0);
  return sub_22887FCD0();
}

uint64_t TimeoutDispatchTarget.__allocating_init(timeout:target:)(__int128 *a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_2287EC014(a1, v4 + 24);
  return v4;
}

uint64_t TimeoutDispatchTarget.init(timeout:target:)(__int128 *a1, double a2)
{
  *(v2 + 16) = a2;
  sub_2287EC014(a1, v2 + 24);
  return v2;
}

void sub_228820168(uint64_t (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v47 = sub_22887F180();
  v14 = *(v47 - 8);
  v15 = MEMORY[0x28223BE20](v47);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1(v15))
  {
    ObjectType = swift_getObjectType();
    (*(a4 + 40))(ObjectType, a4);
    sub_2287E766C(a6, v52);
    sub_2287F56D8(a5, v51);
    v19 = sub_22887F160();
    v20 = sub_22887F690();
    sub_228820738(a5);
    if (os_log_type_enabled(v19, v20))
    {
      v43 = v20;
      v44 = v19;
      v45 = a8;
      v46 = a7;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315394;
      v24 = *a5;
      v23 = a5[1];
      v25 = a5[3];
      v41 = a5[2];
      v27 = a5[4];
      v26 = a5[5];
      v48 = 60;
      v49 = 0xE100000000000000;
      v50 = v22;
      sub_2287F56D8(a5, v51);
      MEMORY[0x22AAC0340](v24, v23);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v26)
      {
        v25 = v26;
      }

      else
      {

        v27 = v41;
      }

      a7 = v46;

      MEMORY[0x22AAC0340](v27, v25);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);
      sub_228820738(a5);
      v28 = sub_2287E64D8(v48, v49, &v50);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      v29 = __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v30 = MEMORY[0x28223BE20](v29);
      (*(v32 + 16))(&v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      v33 = sub_22887F3B0();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1(v52);
      v36 = sub_2287E64D8(v33, v35, &v50);

      *(v21 + 14) = v36;
      v37 = v44;
      _os_log_impl(&dword_2287E4000, v44, v43, "%s: %s: Timed out.", v21, 0x16u);
      v38 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v38, -1, -1);
      MEMORY[0x22AAC1440](v21, -1, -1);

      (*(v14 + 8))(v17, v47);
    }

    else
    {

      (*(v14 + 8))(v17, v47);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    sub_228820800();
    v39 = swift_allocError();
    v40 = sub_22887F010();
    a7();
  }
}

uint64_t TimeoutDispatchTarget.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_2288205D8()
{
  result = qword_27D852068;
  if (!qword_27D852068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852068);
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

uint64_t sub_2288206A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2288206E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22882078C(uint64_t a1)
{
  sub_2287FDB84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228820800()
{
  result = qword_2813D0428[0];
  if (!qword_2813D0428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D0428);
  }

  return result;
}

void *CalendarDayInputSignal.__allocating_init(observer:dateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  sub_228820A78(a3, &v8);
  if (v9)
  {
    sub_228820B70(a3);
    sub_2287EC014(&v8, v10);
    sub_2287EC014(v10, (v6 + 4));
  }

  else
  {
    swift_unknownObjectRetain();
    sub_228820B70(&v8);
    v6[7] = &type metadata for CalendarDayInputSignal.DateProvider;
    v6[8] = &off_283BC9890;
    swift_unknownObjectRelease();
    sub_228820B70(a3);
  }

  return v6;
}

void static InputSignalIdentifier.calendarDay.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void static InputSignalSet.LookupKey.calendarDay.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void CalendarDayInputSignal.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void static CalendarDayInputSignal.identityConfiguration.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t CalendarDayInputSignal.init(observer:dateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_228820A78(a3, &v6);
  if (v7)
  {
    sub_228820B70(a3);
    sub_2287EC014(&v6, &v8);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_228820B70(&v6);
    v9 = &type metadata for CalendarDayInputSignal.DateProvider;
    v10 = &off_283BC9890;
    swift_unknownObjectRelease();
    sub_228820B70(a3);
  }

  sub_2287EC014(&v8, v3 + 32);
  return v3;
}

uint64_t sub_228820A78(uint64_t a1, uint64_t a2)
{
  sub_228821914(0, &qword_2813CF818, sub_228820B0C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_228820B0C()
{
  result = qword_2813CF820;
  if (!qword_2813CF820)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813CF820);
  }

  return result;
}

uint64_t sub_228820B70(uint64_t a1)
{
  sub_228821914(0, &qword_2813CF818, sub_228820B0C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228820BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v14[1] = a1;
  v2 = sub_22887F150();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22887F130();
  sub_228821914(0, &qword_2813CF2D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v6 = sub_22887F140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228881EA0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x277CC9978], v6);
  v12(v11 + v8, *MEMORY[0x277CC9988], v6);
  v12(v11 + 2 * v8, *MEMORY[0x277CC9998], v6);
  v12(v11 + 3 * v8, *MEMORY[0x277CC9968], v6);
  v12(v11 + 4 * v8, *MEMORY[0x277CC99C0], v6);
  v12(v11 + 5 * v8, *MEMORY[0x277CC99C8], v6);
  sub_22887D528(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22887F120();

  return (*(v3 + 8))(v5, v2);
}

void *sub_228820EC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22887F0C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22882168C(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result[3];
    v23 = result[2];
    v21 = v11;
    v12 = result;
    ObjectType = swift_getObjectType();
    v14 = v12[7];
    v13 = v12[8];
    __swift_project_boxed_opaque_existential_1(v12 + 4, v14);
    (*(v13 + 8))(v14, v13);
    sub_228820BFC(v5, v9 + *(v7 + 52));
    (*(v3 + 8))(v5, v2);
    *v9 = 0xD000000000000016;
    v9[1] = 0x8000000228883450;
    v9[2] = 0;
    v9[3] = 0;
    v24 = v12;
    v15 = v21;
    v16 = *(v21 + 8);
    v17 = type metadata accessor for CalendarDayInputSignal();
    v19 = sub_228821870(&qword_2813D0368, v18, type metadata accessor for CalendarDayInputSignal, &protocol conformance descriptor for CalendarDayInputSignal);
    v16(v9, &v24, v17, v19, ObjectType, v15);
    sub_2288218B8(v9);
  }

  return result;
}

Swift::Void __swiftcall CalendarDayInputSignal.stopObservation()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277CBE580] object:0];
}

uint64_t CalendarDayInputSignal.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t CalendarDayInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_2288211E4(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000228883450;
  a1[2] = 0;
  a1[3] = 0;
}

void sub_22882122C()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:*MEMORY[0x277CBE580] object:0];
}

uint64_t _s19HealthOrchestration22CalendarDayInputSignalC16beginObservation4from14configurationsyAA11ValueAnchorVy10Foundation14DateComponentsVGSg_SayAA21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  v26 = *v0;
  v2 = sub_22887F0C0();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22882168C(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CBE580];
  [v10 removeObserver:v1 name:*MEMORY[0x277CBE580] object:0];

  v12 = [v9 defaultCenter];
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_228821868;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228844DB4;
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);

  v15 = [v12 addObserverForName:v11 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  v16 = v1[3];
  ObjectType = swift_getObjectType();
  v17 = v1[7];
  v18 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v17);
  (*(v18 + 8))(v17, v18);
  sub_228820BFC(v4, v8 + *(v6 + 60));
  (*(v24 + 8))(v4, v25);
  *v8 = 0xD000000000000016;
  v8[1] = 0x8000000228883450;
  v8[2] = 0;
  v8[3] = 0;
  aBlock[0] = v1;
  v19 = *(v16 + 8);
  v21 = sub_228821870(&qword_2813D0368, v20, type metadata accessor for CalendarDayInputSignal, &protocol conformance descriptor for CalendarDayInputSignal);
  v19(v8, aBlock, v26, v21, ObjectType, v16);
  return sub_2288218B8(v8);
}

void sub_22882168C(uint64_t a1)
{
  if (!qword_2813D1460)
  {
    v2 = sub_22887F000();
    v3 = MEMORY[0x277CC8990];
    v6[0] = v2;
    v6[1] = sub_228821870(&qword_2813D16C8, 255, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
    v6[2] = sub_228821870(qword_2813D16D8, 255, v3, MEMORY[0x277CC8998]);
    v6[3] = sub_228821870(&qword_2813D16D0, 255, v3, MEMORY[0x277CC89A8]);
    v4 = type metadata accessor for ValueAnchor(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_2813D1460);
    }
  }
}

uint64_t sub_22882179C(uint64_t a1, uint64_t a2)
{
  result = sub_228821870(qword_2813D0370, a2, type metadata accessor for CalendarDayInputSignal, &protocol conformance descriptor for CalendarDayInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228821870(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2288218B8(uint64_t a1)
{
  sub_22882168C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228821914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228821998()
{
  result = qword_27D852070[0];
  if (!qword_27D852070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D852070);
  }

  return result;
}

void *AutoPauseController.__allocating_init(target:paused:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  swift_allocObject();
  v8 = sub_228821E60(a1, a2, v5, a4);
  swift_unknownObjectRelease();

  return v8;
}

void *AutoPauseController.init(target:paused:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_228821E60(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v4;
}

Swift::Void __swiftcall AutoPauseController.pauseIfAnyMatches(descriptions:)(Swift::OpaquePointer descriptions)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 9);
  sub_228821F30(&v2[4]);
  os_unfair_lock_unlock(v2 + 9);
}

Swift::Void __swiftcall AutoPauseController.pause()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_228821F84((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

Swift::Void __swiftcall AutoPauseController.resume()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_228821F9C((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

_BYTE *sub_228821C40(_BYTE *result, uint64_t a2)
{
  *result = 0;
  if (result[1])
  {
    if ((result[16] & 1) == 0)
    {
      result[16] = 1;
      v2 = *(a2 + 40);
      ObjectType = swift_getObjectType();
      return (*(v2 + 8))(ObjectType, v2);
    }
  }

  else if (result[16])
  {
    result[16] = 0;
    v4 = *(a2 + 40);
    v5 = swift_getObjectType();
    return (*(v4 + 16))(v5, v4);
  }

  return result;
}

Swift::Void __swiftcall AutoPauseController.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 36));
  sub_2287EA990((v2 + 16));

  os_unfair_lock_unlock((v2 + 36));
}

void *AutoPauseController.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t AutoPauseController.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_228821DB0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_2288221C8((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

void sub_228821E08()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_2288221B0((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

void *sub_228821E60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  sub_228822134(0);
  v10 = swift_allocObject();
  *(v10 + 36) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = 0;
  *(v10 + 24) = v11;
  *(v10 + 32) = a3;
  v5[4] = a1;
  v5[5] = a2;
  v5[2] = v10;
  v5[3] = a4;
  v12 = *(a4 + 16);
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v12 + 10);
  sub_228822194(&v12[4]);
  os_unfair_lock_unlock(v12 + 10);

  return v5;
}

_BYTE *sub_228821F30(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 8) = v3;
  return sub_2287EA9D0(a1);
}

uint64_t sub_228822030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_228822078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2288220C8(_BYTE *result)
{
  *result = 1;
  if ((result[16] & 1) == 0)
  {
    result[16] = 1;
    v2 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    return (*(v2 + 8))(ObjectType, v2);
  }

  return result;
}

void sub_228822134(uint64_t a1)
{
  if (!qword_2813CF468)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22887F910();
    if (!v2)
    {
      atomic_store(v1, &qword_2813CF468);
    }
  }
}

uint64_t sub_2288222A4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228822314(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_228822454(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_228822674(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_22882272C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for WorkFetch.State.State(0, a1, a2, a4);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for WorkFetch.State(0, a1, a2, v7);
  v9 = (a3 + *(result + 36));
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_228822798(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2288227D8(a1, v3, v4, v5);
  return v2;
}

char *sub_2288227D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for WorkFetch.State(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  sub_22882272C(v6, v7, &v15 - v10, v12);
  v13 = sub_228870A40(v11, v8);
  (*(v9 + 8))(v11, v8);
  *(v4 + 2) = v13;
  (*(*(v6 - 8) + 32))(&v4[*(*v4 + 104)], a1, v6);
  return v4;
}

uint64_t WorkFetch.workItem.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_228822964, 0, 0);
}

uint64_t sub_228822964()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  sub_228822C70();
  v3 = v2;
  *v1 = v0;
  v1[1] = sub_228822A38;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2822007B8](v4, 0, 0, 0x6D6574496B726F77, 0xE800000000000000, sub_228822C68, v5, v3);
}

uint64_t sub_228822A38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228822B2C(uint64_t a1)
{
  sub_2288247D8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_228822D04(sub_228824840, v8, v9, v10);
}

void sub_228822C70()
{
  if (!qword_2813D0DB0)
  {
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D0DB0);
    }
  }
}

uint64_t sub_228822CC0(uint64_t a1)
{
  sub_228824980(a1, v2);
  sub_2288247D8(0);
  return sub_22887F580();
}

uint64_t sub_228822D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for WorkFetch.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  sub_2288233C4();
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_2288248B0(v5 + v6, &v9);
  os_unfair_lock_unlock((v5 + v7));
  v9();
}

uint64_t sub_228822DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (**a6)()@<X8>)
{
  v12 = type metadata accessor for WorkFetch.State.State(0, a4, a5, a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  (*(v13 + 16))(&v29 - v15, a1, v12, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v24 = sub_2288248D0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = *(v16 + 7);
    *(v19 + 128) = *(v16 + 6);
    *(v19 + 144) = v20;
    *(v19 + 160) = *(v16 + 16);
    v21 = *(v16 + 3);
    *(v19 + 64) = *(v16 + 2);
    *(v19 + 80) = v21;
    v22 = *(v16 + 5);
    *(v19 + 96) = *(v16 + 4);
    *(v19 + 112) = v22;
    v23 = *(v16 + 1);
    *(v19 + 32) = *v16;
    *(v19 + 48) = v23;
    v24 = sub_228824928;
LABEL_5:
    *a6 = v24;
    a6[1] = v19;
  }

  v26 = (a1 + *(type metadata accessor for WorkFetch.State(0, a4, a5, v18) + 36));
  v27 = *v26;
  v28 = v26[1];

  sub_2287E75A4(v27, v28);
  *v26 = a2;
  v26[1] = a3;
  *a6 = nullsub_1;
  a6[1] = 0;
  return (*(v13 + 8))(v16, v12);
}

Swift::Void __swiftcall WorkFetch.cancel()()
{
  v2 = v1[2];
  type metadata accessor for WorkFetch.State(0, *(*v1 + 80), *(*v1 + 88), v0);
  sub_2288233C4();
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_228823390(v2 + v3, &v6, v5);
  os_unfair_lock_unlock((v2 + v4));
  v6();
}

uint64_t sub_2288230E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)()@<X8>, uint64_t a4@<X3>)
{
  v28 = a1;
  v29 = a3;
  v5 = *(*a2 + 80);
  v6 = *(*a2 + 88);
  v7 = type metadata accessor for WorkFetch.State.State(0, v5, v6, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v26 = v6;
  v27 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  (*(v8 + 16))(v10, v28, v7, v16);
  if (swift_getEnumCaseMultiPayload())
  {
    result = (*(v8 + 8))(v10, v7);
    v20 = 0;
    v21 = nullsub_1;
  }

  else
  {
    v22 = *(v12 + 32);
    v22(v18, v10, AssociatedTypeWitness);
    v22(v14, v18, AssociatedTypeWitness);
    v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v20 = swift_allocObject();
    v24 = v26;
    *(v20 + 2) = v27;
    *(v20 + 3) = v24;
    *(v20 + 4) = a2;
    v22(v20 + v23, v14, AssociatedTypeWitness);

    v21 = sub_228824710;
  }

  v25 = v29;
  *v29 = v21;
  v25[1] = v20;
  return result;
}

unint64_t sub_2288233C4()
{
  result = qword_2813CF198;
  if (!qword_2813CF198)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813CF198);
  }

  return result;
}

uint64_t sub_228823414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for WorkFetch.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  sub_2288233C4();
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_2288246F4((v5 + v6), &v10, v8);
  os_unfair_lock_unlock((v5 + v7));
  v10();
}

uint64_t sub_228823504@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for WorkFetch.State.State(0, a2, a3, a5);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  (*(v10 + 16))(&v22 - v12, a1, v9, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *(v10 + 8);
      goto LABEL_6;
    }

LABEL_11:
    result = sub_22887FA10();
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v10 + 8))(v13, v9);
    goto LABEL_11;
  }

  v15 = *(v10 + 8);
  v15(v13, v9);
LABEL_6:
  v15(a1, v9);
  swift_storeEnumTagMultiPayload();
  v17 = &a1[*(type metadata accessor for WorkFetch.State(0, a2, a3, v16) + 36)];
  v18 = *v17;
  v19 = nullsub_1;
  if (*v17)
  {
    v20 = *(v17 + 1);
    *v17 = 0;
    *(v17 + 1) = 0;
    result = swift_allocObject();
    *(result + 16) = v18;
    *(result + 24) = v20;
    v19 = sub_2288249E4;
  }

  else
  {
    result = 0;
  }

  *a4 = v19;
  a4[1] = result;
  return result;
}

void sub_228823738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for WorkFetch.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_228824658((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_228823808(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v5 = type metadata accessor for WorkFetch.State.State(0, a3, a4, a4);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, a1, v5, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v6 + 8);
  result = v11(v9, v5);
  if (EnumCaseMultiPayload == 2)
  {
    v11(a1, v5);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, v15, AssociatedTypeWitness);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2288239A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for WorkFetch.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  sub_2288233C4();
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_228824678((v5 + v6), &v9);
  os_unfair_lock_unlock((v5 + v7));
  v9();
}

uint64_t sub_228823A94@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)()@<X8>)
{
  v29 = a4;
  v9 = type metadata accessor for WorkFetch.State.State(0, a3, a4, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  (*(v10 + 16))(&v26 - v12, a1, v9, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *(v10 + 8);
      goto LABEL_6;
    }

LABEL_11:
    result = sub_22887FA10();
    __break(1u);
    return result;
  }

  v26 = a2;
  if (EnumCaseMultiPayload)
  {
    (*(v10 + 8))(v13, v9);
    goto LABEL_11;
  }

  v15 = *(v10 + 8);
  v15(v13, v9);
  a2 = v26;
LABEL_6:
  v15(a1, v9);
  sub_2287F5EE4(a2, a1);
  swift_storeEnumTagMultiPayload();
  v17 = &a1[*(type metadata accessor for WorkFetch.State(0, a3, v29, v16) + 36)];
  v18 = *v17;
  v19 = nullsub_1;
  if (*v17)
  {
    v20 = v17[1];
    *v17 = 0;
    v17[1] = 0;
    sub_2287F5EE4(a2, v27);
    result = swift_allocObject();
    *(result + 16) = v18;
    *(result + 24) = v20;
    v22 = v27[7];
    *(result + 128) = v27[6];
    *(result + 144) = v22;
    *(result + 160) = v28;
    v23 = v27[3];
    *(result + 64) = v27[2];
    *(result + 80) = v23;
    v24 = v27[5];
    *(result + 96) = v27[4];
    *(result + 112) = v24;
    v25 = v27[1];
    *(result + 32) = v27[0];
    *(result + 48) = v25;
    v19 = sub_2288249E8;
  }

  else
  {
    result = 0;
  }

  *a5 = v19;
  a5[1] = result;
  return result;
}

char *WorkFetch.deinit()
{
  v1 = *v0;
  WorkFetch.cancel()();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t WorkFetch.__deallocating_deinit()
{
  WorkFetch.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228823E18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_228823EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WorkFetch.State.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_228824218(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_228823F74(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= 0x88)
  {
    v5 = 136;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 24;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483645;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *(a1 + v6);
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = *(a1 + v6);
      if (v11)
      {
        goto LABEL_19;
      }
    }

LABEL_23:
    v14 = *((a1 + v5 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    if ((v14 + 1) >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  v11 = *(a1 + v6);
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = v11 - 1;
  if (v7)
  {
    v13 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v13) + 0x7FFFFFFF;
}

void sub_228824098(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 0x88)
  {
    v7 = 136;
  }

  v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (a3 < 0x7FFFFFFF)
  {
    v11 = 0;
  }

  else
  {
    v9 = a3 - 2147483645;
    if ((v7 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  if (a2 <= 0x7FFFFFFE)
  {
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *(a1 + v8) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      }

      *(a1 + v8) = 0;
    }

    else if (v11)
    {
      *(a1 + v8) = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      *((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if ((v7 & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v12 = a2 - 2147483646;
  }

  else
  {
    v12 = 1;
  }

  if ((v7 & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    bzero(a1, v8);
    *a1 = a2 - 0x7FFFFFFF;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(a1 + v8) = v12;
    }

    else
    {
      *(a1 + v8) = v12;
    }
  }

  else if (v11)
  {
    *(a1 + v8) = v12;
  }
}

void sub_228824218(uint64_t a1)
{
  if (!qword_27D852178)
  {
    sub_2287F851C();
    v1 = sub_22887F7D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D852178);
    }
  }
}

uint64_t sub_228824270(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2288242EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 136;
  if (v5 > 0x88)
  {
    v6 = v5;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v12 = ((~(-1 << v9) + a2 - v7) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 < 2)
    {
LABEL_27:
      v14 = *(a1 + v6);
      if (v7 <= (v14 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v14);
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_27;
  }

LABEL_16:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v13) + 1;
}

void sub_228824464(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 0x88)
  {
    v7 = 136;
  }

  v8 = (1u >> (8 * v7)) ^ 0xFD;
  if (v7 > 3)
  {
    v8 = 253;
  }

  v9 = v7 + 1;
  if (v8 >= a3)
  {
    v10 = 0;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v7] = -a2;
        return;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v10 = 1;
  if (v9 <= 3)
  {
    v11 = ((~(-1 << (8 * v9)) + a3 - v8) >> (8 * v9)) + 1;
    v12 = HIWORD(v11);
    if (v11 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v11 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v10 = 4;
    }

    else
    {
      v10 = v14;
    }
  }

  if (v8 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v15 = ~v8 + a2;
  if (v9 >= 4)
  {
    bzero(a1, v9);
    *a1 = v15;
    v16 = 1;
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v16 = (v15 >> (8 * v9)) + 1;
  if (v7 == -1)
  {
LABEL_37:
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v17 = v15 & ~(-1 << (8 * v9));
  bzero(a1, v9);
  if (v9 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_37;
  }

  if (v9 == 2)
  {
    *a1 = v17;
    if (v10 > 1)
    {
LABEL_41:
      if (v10 == 2)
      {
        *&a1[v9] = v16;
      }

      else
      {
        *&a1[v9] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v10 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v10)
  {
    a1[v9] = v16;
  }
}

uint64_t sub_228824698(uint64_t a1)
{
  sub_228822C70();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288247D8(uint64_t a1)
{
  if (!qword_27D852200)
  {
    sub_228822C70();
    v1 = sub_22887F590();
    if (!v2)
    {
      atomic_store(v1, &qword_27D852200);
    }
  }
}

uint64_t sub_228824840(uint64_t a1)
{
  sub_2288247D8(0);

  return sub_228822CC0(a1);
}

uint64_t sub_2288248D4()
{
  v1 = *(v0 + 16);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1(v3);
  return sub_228824698(v3);
}

uint64_t sub_22882492C()
{
  v1 = *(v0 + 16);
  sub_2287F5EE4(v0 + 32, v3);
  v1(v3);
  return sub_228824698(v3);
}

uint64_t sub_228824980(uint64_t a1, uint64_t a2)
{
  sub_228822C70();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double SecurelyCodableWorkPlan.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier + 8);
  v3 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier);
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

void *SecurelyCodableWorkPlan.init(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(&v26, v7, v8);
  v9 = v27;
  v30 = v3;
  v10 = v3 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier;
  *v10 = v26;
  *(v10 + 16) = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887EFB0();
  swift_allocObject();
  sub_22887EFA0();
  v11 = sub_22887EF90();
  if (v4)
  {

    swift_unknownObjectRelease();
    v17 = v30;
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for SecurelyCodableWorkPlan();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v11;
    v14 = v12;

    v15 = (v30 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_payload);
    *v15 = v13;
    v15[1] = v14;
    ObjectType = swift_getObjectType();
    v24 = *(a3 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v26);
    v24(ObjectType, a3);
    __swift_project_boxed_opaque_existential_1(&v26, AssociatedTypeWitness);
    swift_allocObject();
    sub_22887EFA0();
    v19 = sub_22887EF90();
    v21 = v20;

    v22 = v30;
    v23 = (v30 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_encodedContextDescriptor);
    *v23 = v19;
    v23[1] = v21;
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v25.receiver = v22;
    v25.super_class = type metadata accessor for SecurelyCodableWorkPlan();
    v17 = objc_msgSendSuper2(&v25, sel_init);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v17;
}

uint64_t sub_228824D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22887EF80();
  swift_allocObject();
  sub_22887EF70();
  sub_22887EF60();
}

uint64_t sub_228824E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v11 - v6;
  sub_22887EF80();
  swift_allocObject();
  sub_22887EF70();
  swift_getAssociatedConformanceWitness();
  v8 = v11[3];
  sub_22887EF60();

  if (!v8)
  {
    v9 = v11[0];
    a3 = (*(a3 + 24))(v7, a2, a3);
    (*(v9 + 8))(v7, AssociatedTypeWitness);
  }

  return a3;
}

void sub_22882503C(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthOrchestration23SecurelyCodableWorkPlan_identifier;
  v4 = sub_22887F370();
  v5 = sub_22887F370();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v3 + 16);
  v7 = sub_22887F370();
  [a1 encodeInteger:v6 forKey:v7];

  v8 = sub_22887F070();
  v9 = sub_22887F370();
  [a1 encodeObject:v8 forKey:v9];

  v10 = sub_22887F070();
  v11 = sub_22887F370();
  [a1 encodeObject:v10 forKey:v11];
}

id SecurelyCodableWorkPlan.init(coder:)(void *a1)
{
  v2 = sub_22887F370();
  [a1 decodeIntegerForKey_];

  sub_2287E76D0(0, &qword_27D852228, 0x277CCACA8);
  v3 = sub_22887F7B0();
  if (v3)
  {
    v4 = v3;
    sub_22887F390();
  }

  type metadata accessor for SecurelyCodableWorkPlan();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2288254A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id SecurelyCodableWorkPlan.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableWorkPlan.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecurelyCodableWorkPlan();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_228825768(double *a1, double *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 0;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a2[24] >= a1[24];
  }

  return 1;
}

BOOL sub_2288257BC(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 0;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a1[24] >= a2[24];
  }

  return 1;
}

double sub_2288258B4@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_2287F71FC(v2, a1);
  v5 = qword_228883898[*(a1 + 16)];
  result = a2 - *(a1 + 8) + *(a1 + v5);
  *(a1 + v5) = result;
  *(a1 + 8) = a2;
  *(a1 + 16) = 3;
  return result;
}

double sub_22882591C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_2287F71FC(v2, a1);
  v5 = qword_228883898[*(a1 + 16)];
  result = a2 - *(a1 + 8) + *(a1 + v5);
  *(a1 + v5) = result;
  *(a1 + 8) = a2;
  return result;
}

BOOL static EnqueuedWorkPlan.< infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 1;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a1[24] < a2[24];
  }

  return 0;
}

BOOL sub_2288259DC(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 1;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a1[24] < a2[24];
  }

  return 0;
}

BOOL sub_228825A38(double *a1, double *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (qword_2288838B8[v2] < qword_2288838B8[v3])
  {
    return 1;
  }

  if (qword_2288838B8[v3] >= qword_2288838B8[v2])
  {
    return a2[24] < a1[24];
  }

  return 0;
}

unint64_t sub_228825A9C()
{
  result = qword_27D852238;
  if (!qword_27D852238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852238);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PriorityRuleSet.Priority(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_228825BE8()
{
  result = qword_27D852240;
  if (!qword_27D852240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852240);
  }

  return result;
}

void *RequestedWorkInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = a1;
  v4[4] = a2;
  sub_22882667C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v4[2] = v5;
  return v4;
}

void *RequestedWorkInputSignal.init(observer:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_22882667C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v2[2] = v3;
  return v2;
}

Swift::Void __swiftcall RequestedWorkInputSignal.didEnqueueWork()()
{
  v1 = *v0;
  v2 = v0[2];
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 24);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = v4;
    v5 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 32));
    v6 = v0[4];
    ObjectType = swift_getObjectType();
    v11[0] = v5;
    v11[1] = v4;
    v10 = v0;
    v8 = *(v6 + 8);
    v9 = sub_228826A90(&qword_27D852250, &protocol conformance descriptor for RequestedWorkInputSignal);
    v8(v11, &v10, v1, v9, ObjectType, v6);
  }
}

HealthOrchestration::RequestedWorkInputSignal::Anchor __swiftcall RequestedWorkInputSignal.Anchor.init(epoch:anchor:)(Swift::Int epoch, Swift::Int anchor)
{
  *v2 = epoch;
  v2[1] = anchor;
  result.anchor = anchor;
  result.epoch = epoch;
  return result;
}

void RequestedWorkInputSignal.Anchor.identifier.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "RequestedWork");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

Swift::Bool __swiftcall RequestedWorkInputSignal.Anchor.hasDifference(from:for:)(HealthOrchestration::RequestedWorkInputSignal::Anchor_optional from, HealthOrchestration::IdentityConfiguration a2)
{
  epoch = from.value.epoch;
  v4 = *(from.value.epoch + 16);
  result = 1;
  if ((v4 & 1) == 0)
  {
    v6 = *epoch;
    if (*epoch >= *v2)
    {
      v7 = epoch[1];
      return *v2 >= v6 && v7 < v2[1];
    }
  }

  return result;
}

BOOL static RequestedWorkInputSignal.Anchor.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a2 >= *a1 && a1[1] < a2[1];
}

uint64_t sub_228825F18()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x68636F7065;
  }
}

uint64_t sub_228825F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x68636F7065 && a2 == 0xE500000000000000;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

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

uint64_t sub_228826020(uint64_t a1)
{
  v2 = sub_228826700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22882605C(uint64_t a1)
{
  v2 = sub_228826700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestedWorkInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_228826754(0, &qword_27D852258, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228826700();
  sub_22887FCF0();
  v12 = 0;
  sub_22887FB40();
  if (!v2)
  {
    v11 = 1;
    sub_22887FB40();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RequestedWorkInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228826754(0, &qword_27D852268, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228826700();
  sub_22887FCE0();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_22887FAD0();
    v14 = 1;
    v12 = sub_22887FAD0();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

int8x16_t sub_2288263C0@<Q0>(int64x2_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  result = vbslq_s8(vcgtq_s64(*v2, *a1), *a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_2288263D8(uint64_t *a1)
{
  v3 = *(a1 + 16);
  result = 1;
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    if (*a1 >= *v1)
    {
      v6 = a1[1];
      return *v1 >= v5 && v6 < v1[1];
    }
  }

  return result;
}

BOOL sub_228826410(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a2 >= *a1 && a1[1] < a2[1];
}

BOOL sub_228826440(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a1 < *a2 || a2[1] >= a1[1];
}

BOOL sub_228826470(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a2 < *a1 || a1[1] >= a2[1];
}

BOOL sub_2288264A0(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a1 >= *a2 && a2[1] < a1[1];
}

void RequestedWorkInputSignal.identifier.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "RequestedWork");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t RequestedWorkInputSignal.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t RequestedWorkInputSignal.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22882667C(uint64_t a1)
{
  if (!qword_27D852248)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22887F910();
    if (!v2)
    {
      atomic_store(v1, &qword_27D852248);
    }
  }
}

unint64_t sub_228826700()
{
  result = qword_27D852260;
  if (!qword_27D852260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852260);
  }

  return result;
}

void sub_228826754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228826700();
    v7 = a3(a1, &type metadata for RequestedWorkInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s19HealthOrchestration24RequestedWorkInputSignalC16beginObservation4from14configurationsyAC6AnchorVSg_SayAA21IdentityConfigurationVGtF_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = v1[2];
  v5 = *v1;
  os_unfair_lock_lock((v4 + 32));
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v7;
    v8 = *(v4 + 24);
    os_unfair_lock_unlock((v4 + 32));
    v9 = v1[4];
    ObjectType = swift_getObjectType();
    v14[0] = v7;
    v14[1] = v8;
    v13 = v1;
    v11 = *(v9 + 8);
    v12 = sub_228826A90(&qword_27D852250, &protocol conformance descriptor for RequestedWorkInputSignal);
    v11(v14, &v13, v5, v12, ObjectType, v9);
  }
}

unint64_t sub_2288268BC(void *a1)
{
  a1[1] = sub_2288268F4();
  a1[2] = sub_228826948();
  result = sub_22882699C();
  a1[3] = result;
  return result;
}

unint64_t sub_2288268F4()
{
  result = qword_27D852270;
  if (!qword_27D852270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852270);
  }

  return result;
}

unint64_t sub_228826948()
{
  result = qword_27D852278;
  if (!qword_27D852278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852278);
  }

  return result;
}

unint64_t sub_22882699C()
{
  result = qword_27D852280;
  if (!qword_27D852280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852280);
  }

  return result;
}

unint64_t sub_2288269F8()
{
  result = qword_27D852288;
  if (!qword_27D852288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852288);
  }

  return result;
}

uint64_t sub_228826A4C(uint64_t a1)
{
  result = sub_228826A90(&qword_27D852290, &protocol conformance descriptor for RequestedWorkInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228826A90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RequestedWorkInputSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228826B30()
{
  result = qword_27D852298;
  if (!qword_27D852298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852298);
  }

  return result;
}

unint64_t sub_228826B88()
{
  result = qword_27D8522A0;
  if (!qword_27D8522A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8522A0);
  }

  return result;
}

unint64_t sub_228826BE0()
{
  result = qword_27D8522A8;
  if (!qword_27D8522A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8522A8);
  }

  return result;
}

HealthOrchestration::IdentityConfiguration __swiftcall IdentityConfiguration.init(identifier:)(HealthOrchestration::IdentityConfiguration identifier)
{
  v2 = *(identifier.identifier.value._countAndFlagsBits + 8);
  *v1 = *identifier.identifier.value._countAndFlagsBits;
  *(v1 + 8) = v2;
  *(v1 + 16) = *(identifier.identifier.value._countAndFlagsBits + 16);
  return identifier;
}

double IdentityConfiguration.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

uint64_t static IdentityConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t IdentityConfiguration.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

unint64_t sub_228826D1C(uint64_t a1)
{
  result = sub_228826D44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_228826D44()
{
  result = qword_2813D0558[0];
  if (!qword_2813D0558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D0558);
  }

  return result;
}

unint64_t sub_228826D9C()
{
  result = qword_2813D0550;
  if (!qword_2813D0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0550);
  }

  return result;
}

double static InputSignalSet.LookupKey.buildNumber.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D851790 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D8522B8;
  v3 = qword_27D8522C0;
  v2 = unk_27D8522C8;
  *a1 = qword_27D8522B0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  return result;
}

double static InputSignalSet.LookupKey.constant<A>(type:_:)@<D0>(unint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *x8_0@<X8>)
{
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v14.n128_u64[0] = *a2;
  v14.n128_u64[1] = v9;
  v15 = v10;
  v16 = v11;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  type metadata accessor for ConstantInputSignal(0, v13);
  InputSignalSet.LookupKey.init(identifier:)(&v14, x8_0);

  return result;
}

void sub_228826EF8()
{
  qword_27D8522B0 = 0xD000000000000033;
  *algn_27D8522B8 = 0x8000000228888DC0;
  qword_27D8522C0 = 0;
  unk_27D8522C8 = 0;
}

double static InputSignalIdentifier.buildNumber.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D851790 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D8522B8;
  v3 = qword_27D8522C0;
  v2 = unk_27D8522C8;
  *a1 = qword_27D8522B0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  return result;
}

void static ConstantInputSignal<>.buildNumber(observer:)(uint64_t a1, uint64_t a2)
{
  if (qword_27D851790 != -1)
  {
    swift_once();
  }

  v5 = qword_27D8522B0;
  v4 = *algn_27D8522B8;
  v7 = qword_27D8522C0;
  v6 = unk_27D8522C8;

  v8 = MobileGestalt_get_current_device();
  if (v8)
  {
    v9 = v8;
    v10 = MobileGestalt_copy_buildVersion_obj();

    if (v10)
    {
      v11 = sub_22887F3A0();
      v13 = v12;

      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = v5;
      v14[5] = v4;
      v14[6] = v7;
      v14[7] = v6;
      v14[8] = v11;
      v14[9] = v13;
      swift_unknownObjectRetain();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t ConstantInputSignal.__allocating_init(identifier:value:observer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *v8;
  v10 = *a1;
  v11 = a1[1];
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  *(v8 + 48) = *(a1 + 1);
  (*(*(*(v9 + 80) - 8) + 32))(v8 + *(v9 + 128), a2);
  return v8;
}

double ConstantInputSignal.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v4 = v1[6];
  v3 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

uint64_t *ConstantInputSignal.init(identifier:value:observer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v7 = a1[1];
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = v6;
  v4[5] = v7;
  *(v4 + 3) = *(a1 + 1);
  (*(*(*(v5 + 80) - 8) + 32))(v4 + *(v5 + 128), a2);
  return v4;
}

char *ConstantInputSignal.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  return v0;
}

uint64_t ConstantInputSignal.__deallocating_deinit()
{
  ConstantInputSignal.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228827454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return InputSignal.description.getter(a1, WitnessTable);
}

uint64_t _s19HealthOrchestration19ConstantInputSignalC16beginObservation4from14configurationsyAA11ValueAnchorVyxGSg_SayAA21IdentityConfigurationVGtF_0(uint64_t a1)
{
  v25 = *v1;
  v2 = v25;
  v3 = *(v25 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - v5;
  v24 = *(v25 + 88);
  v22 = *(v7 + 96);
  *&v8 = v3;
  *(&v8 + 1) = v24;
  v27 = v8;
  v28 = v22;
  v26 = type metadata accessor for ValueAnchor(0, &v27);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v20 - v10;
  v21 = *(v1 + 3);
  ObjectType = swift_getObjectType();
  v12 = *(v1 + 5);
  v13 = *(v1 + 6);
  v14 = *(v1 + 7);
  *&v27 = *(v1 + 4);
  *(&v27 + 1) = v12;
  *&v28 = v13;
  *(&v28 + 1) = v14;
  (*(v4 + 16))(v6, &v1[*(v2 + 128)], v3);
  ValueAnchor.init(identifier:value:)(&v27, v6, v3, v24, v22, *(&v22 + 1), v11);
  *&v27 = v1;
  v15 = v21;
  v16 = *(v21 + 8);

  v17 = v25;
  WitnessTable = swift_getWitnessTable();
  v16(v11, &v27, v17, WitnessTable, ObjectType, v15);
  return (*(v9 + 8))(v11, v26);
}

uint64_t sub_228827758(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228827794(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*MockEnvironmentalStateComponentObserver.handler.getter())()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_228827A40;
}

uint64_t sub_228827908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  os_unfair_lock_lock((v4 + 32));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 32));

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_228827984(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_228827E44(sub_228828174, v3);
}

uint64_t MockEnvironmentalStateComponentObserver.handler.setter(uint64_t a1, uint64_t a2)
{
  sub_228827E44(a1, a2);
}

void (*MockEnvironmentalStateComponentObserver.handler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v4[7] = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  os_unfair_lock_unlock((v5 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v4[3] = sub_228828174;
  v4[4] = v8;
  return sub_228827B1C;
}

void sub_228827B1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[5] = sub_228827F08;
    v2[6] = v6;
    MEMORY[0x28223BE20](v6);

    os_unfair_lock_lock((v5 + 32));
    sub_228827F0C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    v2[5] = sub_228828178;
    v2[6] = v7;
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v5 + 32));
    sub_22882817C((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
  }

  swift_endAccess();
  free(v2);
}

uint64_t MockEnvironmentalStateComponentObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_228827F24(0);
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 16) = nullsub_1;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockEnvironmentalStateComponentObserver.init()()
{
  sub_228827F24(0);
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 16) = nullsub_1;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockEnvironmentalStateComponentObserver.didUpdate(state:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);

  os_unfair_lock_lock((v7 + 32));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 32));

  v10[1] = a3;
  v11 = a1;
  v10[0] = a2;
  v8(&v11, v10);
}

uint64_t MockEnvironmentalStateComponentObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228827E44(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  os_unfair_lock_lock((v6 + 32));
  sub_22882817C((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  return swift_endAccess();
}

void sub_228827F24(uint64_t a1)
{
  if (!qword_27D8522D0)
  {
    sub_228827F8C();
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22887F910();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8522D0);
    }
  }
}

unint64_t sub_228827F8C()
{
  result = qword_27D8522D8;
  if (!qword_27D8522D8)
  {
    sub_2287E9598();
    sub_228828004();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D8522D8);
  }

  return result;
}

unint64_t sub_228828004()
{
  result = qword_2813CFC00;
  if (!qword_2813CFC00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813CFC00);
  }

  return result;
}

uint64_t sub_2288280B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[1] = a3;
  v7 = a1;
  v6[0] = a2;
  return v4(&v7, v6);
}

uint64_t sub_228828128(void *a1)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];

  *a1 = v5;
  a1[1] = v4;
}

Swift::Void __swiftcall Orchestrator.stop()()
{
  v1 = *(*(v0 + 56) + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22880EEF8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

Swift::Void __swiftcall Orchestrator.pause()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F79C(&v1[4]);

  os_unfair_lock_unlock(v1 + 26);
}

Swift::Void __swiftcall Orchestrator.resume()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_2287EB0F4(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 26);
  v2._rawValue = v3;
  sub_2287EBD14(v2);
}

uint64_t Orchestrator.add(_:from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(v19, ObjectType, a2);
  *&v20 = v9;
  *(&v20 + 1) = v11;
  v21 = v19[0];
  v22 = v19[1];
  v13 = *(v3 + 48);
  os_unfair_lock_lock(v13 + 26);
  sub_22882F644(&v13[4], v19);
  os_unfair_lock_unlock(v13 + 26);
  if (v4 || (v19[0] & 1) == 0)
  {
    return sub_228820738(&v20);
  }

  sub_22882F664(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  v16 = v21;
  v15 = v22;
  *(inited + 32) = v20;
  *(inited + 48) = v16;
  *(inited + 64) = v15;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  swift_unknownObjectRetain();
  v17 = sub_228809030(inited);
  swift_setDeallocating();
  sub_228835BA0(inited + 32);
  sub_22882A5A4(v17);
}

uint64_t Orchestrator.remove(_:)()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F818(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 26);
  v3();
}

Swift::Void __swiftcall Orchestrator.resetFailedWorkCriteria()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_2287EDB9C(&v3, &v1[4]);
  os_unfair_lock_unlock(v1 + 26);
  v2._rawValue = v3;
  sub_2287EBD14(v2);
}

Swift::String __swiftcall Orchestrator.orchestrationGraph()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F7FC(&v1[4], v5);
  os_unfair_lock_unlock(v1 + 26);
  v2 = v5[0];
  v3 = v5[1];
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void Orchestrator.start(completion:)()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F7C4(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 26);
  if (v2)
  {
    sub_22882A5A4(v2);
  }
}

void sub_2288285E4(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v4 = v3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v9)))));
      v14 = v13[1];
      v16 = v13[2];
      v15 = v13[3];
      v18[0] = *v13;
      v18[1] = v14;
      v18[2] = v16;
      v18[3] = v15;

      v17 = v19(v18);
      if (v4)
      {
        break;
      }

      if (v17)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t Orchestrator.__allocating_init(context:inputSignalProviders:executorProviders:workQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Orchestrator.init(context:inputSignalProviders:executorProviders:workQueue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t Orchestrator.debugSnapshot.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_22880F4F8(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 26);
  return v3;
}

void sub_228828824(uint64_t a1)
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
  v34 = v5;
  v35 = v6;
  v33 = v1;
  while (v4)
  {
LABEL_10:
    v10 = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = sub_22887FA20();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v15 = sub_22887FA20();
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v13;
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
        sub_22887FA20();
      }

LABEL_21:
      v18 = sub_22887F8D0();
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
    v36 = v18;
    if (v11)
    {
      v24 = sub_22887FA20();
      v22 = v12;
      v23 = v24;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v38)
      {
        goto LABEL_41;
      }

      v25 = v19 + 8 * v20 + 32;
      if (v11)
      {
        if (v23 < 1)
        {
          goto LABEL_43;
        }

        v26 = v22;
        sub_2287E70A8(0, &qword_2813CF620, 255, type metadata accessor for WorkCriteriaRecord, MEMORY[0x277D83940]);
        sub_228836450(&qword_27D852328, &qword_2813CF620, 255, type metadata accessor for WorkCriteriaRecord);
        for (i = 0; i != v23; ++i)
        {
          v28 = sub_22880EDF4(v37, i, v26);
          v30 = *v29;

          (v28)(v37, 0);
          *(v25 + 8 * i) = v30;
        }
      }

      else
      {
        type metadata accessor for WorkCriteriaRecord();
        swift_arrayInitWithCopy();
      }

      v5 = v34;
      v6 = v35;
      v1 = v33;
      v8 = v36;
      if (v38 >= 1)
      {
        v31 = *(v19 + 16);
        v16 = __OFADD__(v31, v38);
        v32 = v31 + v38;
        if (v16)
        {
          goto LABEL_42;
        }

        *(v19 + 16) = v32;
      }
    }

    else
    {

      v5 = v34;
      v6 = v35;
      v8 = v36;
      if (v38 > 0)
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

uint64_t Orchestrator.Errors.hashValue.getter()
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](0);
  return sub_22887FCD0();
}

uint64_t sub_228828C3C()
{
  v1 = 0x657669746341;
  if (*v0 != 1)
  {
    v1 = 0x6465646E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261745320746F4ELL;
  }
}

uint64_t sub_228828C98()
{
  if (*v0)
  {
    return 0x646573756150;
  }

  else
  {
    return 0x676E696E6E7552;
  }
}

void *Orchestrator.init(context:inputSignalProviders:executorProviders:workQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v85 = a5;
  v84 = a4;
  v83 = a3;
  v89 = a2;
  v77 = *v6;
  v80 = sub_22887F180();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v91 = sub_22887F6F0();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22887F6E0();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22887F270();
  MEMORY[0x28223BE20](v12 - 8);
  v6[2] = a1;
  v6[3] = a2;
  v87 = sub_22880AA7C();
  *&v94 = 0;
  *(&v94 + 1) = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_22887F8A0();

  strcpy(&v94, "Orchestration-");
  HIBYTE(v94) = -18;
  swift_getObjectType();
  v93[0] = a1;
  swift_unknownObjectRetain();
  v13 = sub_22887F3B0();
  MEMORY[0x22AAC0340](v13);

  v82 = *(&v94 + 1);
  sub_22887F260();
  *&v94 = MEMORY[0x277D84F90];
  sub_2287E710C(&qword_2813CF510, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v14 = MEMORY[0x277D85230];
  sub_2287E70A8(0, &qword_2813CF590, 255, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2287E7154(&qword_2813CF580, &qword_2813CF590, v14);
  v15 = a1;
  v16 = v89;
  sub_22887F820();
  (v90[13])(v88, *MEMORY[0x277D85260], v91);
  v6[5] = sub_22887F710();
  type metadata accessor for InputSignalObservationManager();
  swift_allocObject();
  swift_unknownObjectRetain();
  v17 = v83;

  v18 = InputSignalObservationManager.init(context:providers:)(v15, v16, v17);
  v19 = v84;
  v20 = v85;
  v6[7] = v18;
  v82 = v6;
  v6[4] = v20;
  v21 = v18[2];
  v88 = *(v19 + 16);
  v86 = v15;
  v81 = v21;
  if (v88)
  {
    v87 = v19 + 32;

    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2287E766C(v87 + 40 * v22, &v94);
      v25 = *(&v95 + 1);
      v26 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
      v27 = (*(v26 + 16))(v15, v16, v25, v26);
      v28 = *(v27 + 16);
      if (v28)
      {
        v90 = v24;
        v93[0] = v23;
        sub_22881D9C4(0, v28, 0);
        v29 = v93[0];
        v30 = 32;
        do
        {
          v91 = *(v27 + v30);
          v31 = *(&v95 + 1);
          v32 = v96;
          __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
          v33 = (*(v32 + 8))(v31, v32);
          v35 = v34;
          v93[0] = v29;
          v37 = *(v29 + 16);
          v36 = *(v29 + 24);
          swift_unknownObjectRetain();
          if (v37 >= v36 >> 1)
          {
            sub_22881D9C4((v36 > 1), v37 + 1, 1);
            v29 = v93[0];
          }

          *(v29 + 16) = v37 + 1;
          v38 = v29 + 32 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          *(v38 + 48) = v91;
          v30 += 16;
          --v28;
        }

        while (v28);

        v15 = v86;
        v24 = v90;
        v23 = MEMORY[0x277D84F90];
      }

      else
      {

        v29 = v23;
      }

      __swift_destroy_boxed_opaque_existential_1(&v94);
      v39 = *(v29 + 16);
      v40 = v24[2];
      v41 = &v40[v39];
      v16 = v89;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v41 <= v24[3] >> 1)
      {
        if (!*(v29 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v40 <= v41)
        {
          v43 = &v40[v39];
        }

        else
        {
          v43 = v40;
        }

        v24 = sub_22882FDA0(isUniquelyReferenced_nonNull_native, v43, 1, v24);
        if (!*(v29 + 16))
        {
LABEL_3:

          if (v39)
          {
            goto LABEL_38;
          }

          goto LABEL_4;
        }
      }

      v44 = v24[2];
      if ((v24[3] >> 1) - v44 < v39)
      {
        goto LABEL_39;
      }

      v40 = &v24[4 * v44];
      sub_228835C1C(0, &qword_2813CF650, &unk_2813CF800, &protocol descriptor for Executor, MEMORY[0x277D837D0]);
      swift_arrayInitWithCopy();

      if (v39)
      {
        v45 = v24[2];
        v46 = __OFADD__(v45, v39);
        v47 = v45 + v39;
        if (v46)
        {
          goto LABEL_40;
        }

        v24[2] = v47;
      }

LABEL_4:
      if (++v22 == v88)
      {
        goto LABEL_26;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_26:
  v48 = MEMORY[0x277D84F98];
  v100 = MEMORY[0x277D84F98];
  v49 = v24[2];
  v90 = v24;
  if (v49)
  {
    v50 = 0;
    v40 = 0;
    v51 = v24 + 6;
    v24 = v82;
    v52 = v81;
    while (v50 < v90[2])
    {
      v53 = *(v51 - 2);
      v54 = *(v51 - 1);
      v91 = *v51;
      *&v94 = v53;
      *(&v94 + 1) = v54;
      v95 = v91;

      swift_unknownObjectRetain();
      sub_228829888(&v100, &v94, v15, v16, v52);
      swift_unknownObjectRelease();

      ++v50;
      v51 += 2;
      if (v49 == v50)
      {
        v48 = v100;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v24 = v82;
LABEL_32:
    v55 = MEMORY[0x277D84F90];
    v56 = sub_228809188(MEMORY[0x277D84F90]);
    v57 = sub_2288092BC(v55);
    v94 = 0uLL;
    *&v95 = v48;
    *(&v95 + 1) = v56;
    *&v96 = MEMORY[0x277D84FA0];
    *(&v96 + 1) = v57;
    LOWORD(v97) = 0;
    BYTE2(v97) = 0;
    *(&v97 + 1) = MEMORY[0x277D84FA0];
    sub_228835C90(0);
    v99 = 0;
    v98 = 0uLL;
    v58 = swift_allocObject();
    *(v58 + 104) = 0;

    sub_228835CF0(&v94, v93);

    v59 = v97;
    *(v58 + 48) = v96;
    *(v58 + 64) = v59;
    *(v58 + 80) = v98;
    *(v58 + 96) = v99;
    v60 = v95;
    *(v58 + 16) = v94;
    *(v58 + 32) = v60;
    sub_228835D28(&v94);
    v24[6] = v58;
    v61 = v24[3];
    ObjectType = swift_getObjectType();
    v63 = v78;
    (*(v61 + 40))(ObjectType, v61);
    swift_retain_n();

    v64 = sub_22887F160();
    v65 = sub_22887F6B0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v93[0] = v67;
      *v66 = 136315650;
      v68 = v24[2];
      swift_getObjectType();
      v92 = v68;
      swift_unknownObjectRetain();
      v69 = sub_22887F3B0();
      v71 = sub_2287E64D8(v69, v70, v93);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2048;
      v72 = *(*(v24[7] + 16) + 16);

      *(v66 + 14) = v72;

      *(v66 + 22) = 2048;
      v73 = *(v48 + 16);

      *(v66 + 24) = v73;

      _os_log_impl(&dword_2287E4000, v64, v65, "[%s]: Initialized with %ld input signals and %ld planners", v66, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x22AAC1440](v67, -1, -1);
      MEMORY[0x22AAC1440](v66, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v74 = (*(v79 + 8))(v63, v80);
    v75 = *(v24[7] + 32);
    MEMORY[0x28223BE20](v74);
    *(&v77 - 2) = v24;
    *(&v77 - 1) = &protocol witness table for Orchestrator;

    os_unfair_lock_lock(v75 + 8);
    sub_228835D58(&v75[4]);
    os_unfair_lock_unlock(v75 + 8);

    swift_unknownObjectRelease();

    return v24;
  }

  return result;
}

uint64_t sub_228829888(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a4;
  v96 = a3;
  v8 = sub_22887F180();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v91 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v85 - v11;
  MEMORY[0x28223BE20](v12);
  v94 = &v85 - v13;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 24);

  v99 = ObjectType;
  v93 = v19;
  v19(&v100, ObjectType, v17);
  v103 = v14;
  v104 = v15;
  v105 = v100;
  v106 = v101;
  v92 = a1;
  if (*(*a1 + 16) && (sub_228819DA4(&v103), (v20 & 1) != 0))
  {
    v21 = v96;
    swift_getObjectType();
    v22 = v91;
    (*(v95 + 40))();

    swift_unknownObjectRetain();
    sub_2287F56D8(&v103, &v100);
    swift_unknownObjectRetain();
    v23 = sub_22887F160();
    v24 = sub_22887F6A0();
    swift_unknownObjectRelease();
    sub_228820738(&v103);
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v107 = v26;
      *v25 = 136315906;
      *&v100 = v21;
      swift_unknownObjectRetain();
      v27 = sub_22887F3B0();
      v29 = sub_2287E64D8(v27, v28, &v107);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = v103;
      v31 = v104;

      v32 = sub_2287E64D8(v30, v31, &v107);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      v100 = v105;
      v101 = v106;
      v33 = *(&v106 + 1);
      v34 = v106;
      sub_2288373F0(&v100, &v102);

      sub_228820738(&v103);
      if (!v33)
      {
        v33 = *(&v100 + 1);
        v34 = v100;
      }

      sub_22883744C(&v100);
      v35 = sub_2287E64D8(v34, v33, &v107);

      *(v25 + 24) = v35;
      *(v25 + 32) = 2080;
      *&v102 = v16;
      swift_unknownObjectRetain();
      v36 = sub_22887F3B0();
      v38 = sub_2287E64D8(v36, v37, &v107);

      *(v25 + 34) = v38;
      _os_log_impl(&dword_2287E4000, v23, v24, "[%s]: Executor provider %s returned multiple executors with the same identifier (%s). Ignoring %s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v26, -1, -1);
      MEMORY[0x22AAC1440](v25, -1, -1);
    }

    else
    {
      sub_228820738(&v103);
    }

    return (*(v97 + 8))(v22, v98);
  }

  else
  {
    *&v100 = a5;
    v39 = v99;
    v40 = (*(v17 + 32))(&v100, v99, v17);
    if (!v40)
    {
      return sub_228820738(&v103);
    }

    v41 = v40;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v89 = v16;
    v43 = AssociatedConformanceWitness;
    v45 = AssociatedConformanceWitness + 24;
    v44 = *(AssociatedConformanceWitness + 24);
    v46 = swift_checkMetadataState();
    v91 = v41;
    v85 = v46;
    v88 = v43;
    v87 = v45;
    v86 = v44;
    v44(&v100, v46, v43);
    v47 = v100;
    v93(&v102, v39, v17);
    if (v47 == v102)
    {

      v48 = v96;
    }

    else
    {
      v50 = sub_22887FBF0();

      v48 = v96;
      if ((v50 & 1) == 0)
      {
        swift_getObjectType();
        v63 = v90;
        (*(v95 + 40))();
        swift_unknownObjectRetain();
        sub_2287F56D8(&v103, &v100);
        swift_unknownObjectRetain();
        v64 = sub_22887F160();
        v65 = sub_22887F6A0();
        swift_unknownObjectRelease();
        sub_228820738(&v103);
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v102 = v67;
          *v66 = 136315650;
          *&v100 = v48;
          swift_unknownObjectRetain();
          v68 = sub_22887F3B0();
          v70 = sub_2287E64D8(v68, v69, &v102);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2080;
          v72 = *(&v105 + 1);
          v71 = v105;
          v74 = *(&v106 + 1);
          v73 = v106;
          *&v100 = 60;
          *(&v100 + 1) = 0xE100000000000000;
          MEMORY[0x22AAC0340](v103, v104);
          MEMORY[0x22AAC0340](8250, 0xE200000000000000);
          if (v74)
          {
            v72 = v74;
          }

          else
          {

            v73 = v71;
          }

          MEMORY[0x22AAC0340](v73, v72);

          MEMORY[0x22AAC0340](62, 0xE100000000000000);
          sub_228820738(&v103);
          v81 = sub_2287E64D8(v100, *(&v100 + 1), &v102);

          *(v66 + 14) = v81;
          *(v66 + 22) = 2080;
          v86(&v100, v85, v88);
          v82 = *(&v101 + 1);
          if (*(&v101 + 1))
          {
            v83 = v101;
          }

          else
          {
            v83 = v100;
          }

          v84 = sub_2287E64D8(v83, v82, &v102);

          *(v66 + 24) = v84;
          _os_log_impl(&dword_2287E4000, v64, v65, "[%s]: Executor %s returned a planner with a differing identifier (%s)", v66, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AAC1440](v67, -1, -1);
          MEMORY[0x22AAC1440](v66, -1, -1);
          swift_unknownObjectRelease();

          return (*(v97 + 8))(v90, v98);
        }

        else
        {
          sub_228820738(&v103);

          swift_unknownObjectRelease();
          return (*(v97 + 8))(v63, v98);
        }
      }
    }

    swift_getObjectType();
    v51 = v94;
    (*(v95 + 40))();
    swift_unknownObjectRetain();
    sub_2287F56D8(&v103, &v100);
    v52 = sub_22887F160();
    v53 = sub_22887F6B0();
    swift_unknownObjectRelease();
    sub_228820738(&v103);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v107 = v99;
      *v54 = 136315394;
      *&v100 = v48;
      swift_unknownObjectRetain();
      v55 = sub_22887F3B0();
      v57 = sub_2287E64D8(v55, v56, &v107);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v58 = v103;
      v59 = v104;
      v60 = *(&v105 + 1);
      v96 = v105;
      v62 = *(&v106 + 1);
      v61 = v106;
      *&v102 = 60;
      *(&v102 + 1) = 0xE100000000000000;
      sub_2287F56D8(&v103, &v100);
      MEMORY[0x22AAC0340](v58, v59);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v62)
      {
        v60 = v62;
      }

      else
      {

        v61 = v96;
      }

      MEMORY[0x22AAC0340](v61, v60);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);
      sub_228820738(&v103);
      v75 = sub_2287E64D8(v102, *(&v102 + 1), &v107);

      *(v54 + 14) = v75;
      _os_log_impl(&dword_2287E4000, v52, v53, "[%s]: Received executor/planner %s", v54, 0x16u);
      v76 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v76, -1, -1);
      MEMORY[0x22AAC1440](v54, -1, -1);

      (*(v97 + 8))(v94, v98);
    }

    else
    {

      (*(v97 + 8))(v51, v98);
    }

    v77 = v91;
    v78 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v100 = *v78;
    v80 = swift_getObjectType();
    sub_228836150(v77, &v103, isUniquelyReferenced_nonNull_native, &v100, v80, v88);
    result = sub_228820738(&v103);
    *v78 = v100;
  }

  return result;
}

uint64_t Orchestrator.deinit()
{
  v1 = *(*(v0 + 56) + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22880FA28((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t Orchestrator.__deallocating_deinit()
{
  Orchestrator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22882A454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  if (*(*(a1 + 16) + 16) && (sub_228819DA4(a2), (v10 & 1) != 0))
  {
    sub_2288376E8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_2287F56D8(a2, &v14);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 16);
    ObjectType = swift_getObjectType();
    sub_228836150(a3, a2, isUniquelyReferenced_nonNull_native, &v14, ObjectType, a4);
    result = sub_228820738(a2);
    *(a1 + 16) = v14;
    if (*(a1 + 48) == 1)
    {
      sub_2287F56D8(a2, &v14);
      sub_228877314(&v14, a2);

      *a5 = 1;
    }

    else
    {
      *a5 = 0;
    }
  }

  return result;
}

void sub_22882A5A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = a1 + 64;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    while (v5)
    {
      v8 = v7;
LABEL_10:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = *(a1 + 56);
      v12 = (*(a1 + 48) + 48 * v10);
      v14 = v12[1];
      v13 = v12[2];
      v24 = *v12;
      v25 = v14;
      v26 = v13;
      v21 = *(v11 + 16 * v10);
      ObjectType = swift_getObjectType();
      v15 = swift_allocObject();
      *(v15 + 16) = v19;
      v16 = v25;
      *(v15 + 24) = v24;
      *(v15 + 40) = v16;
      *(v15 + 56) = v26;
      *(v15 + 72) = v21;
      v17 = *(*(&v21 + 1) + 32);
      swift_unknownObjectRetain_n();
      sub_2287F56D8(&v24, v23);

      v17(sub_228837634, v15, ObjectType, *(&v21 + 1));
      swift_unknownObjectRelease();
    }

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

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = *(v1 + 48);
    os_unfair_lock_lock(v18 + 26);
    sub_228837644(&v18[4], &v24);
    os_unfair_lock_unlock(v18 + 26);
    (v24)();
  }
}

void sub_22882A7C0(unint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)()@<X8>)
{
  v4 = *(a1 + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = *(v4 + 56);
      v13 = (*(v4 + 48) + 48 * v11);
      v15 = v13[1];
      v14 = v13[2];
      v24[0] = *v13;
      v24[1] = v15;
      v24[2] = v14;
      if (*(v12 + 16 * v11) == a2)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_2287F56D8(v24, v23);

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_2287F56D8(v24, v23);

    sub_2288488FC(v24);
    swift_unknownObjectRelease();
    sub_2288489C4(v24);

    sub_22887B9F4(v24, v23);
    sub_228820738(v24);
    sub_2288375E4(v23[0], v23[1]);
    v17 = nullsub_1;
    if (*(a1 + 48) == 1)
    {
      v18 = sub_22882A9E8(a1);
      v20 = v19;
      v16 = swift_allocObject();
      *(v16 + 16) = v18;
      *(v16 + 24) = v20;
      v17 = sub_2287FEDA4;
    }

    else
    {
      v16 = 0;
    }

LABEL_12:
    *a3 = v17;
    a3[1] = v16;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        v16 = 0;
        v17 = nullsub_1;
        goto LABEL_12;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void (*sub_22882A9E8(unint64_t a1))()
{
  v2 = v1;
  v4 = sub_22887F180();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_22887E164();
  v9 = sub_2288166F0(v8, *(a1 + 32));

  v10 = nullsub_1;
  if (v9)
  {
    if (*(a1 + 72))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v12 = *(a1 + 64);
      v14 = *(v1 + 16);
      v13 = *(v1 + 24);
      swift_getObjectType();
      (*(v13 + 40))();

      v15 = sub_22887F160();
      v16 = sub_22887F6B0();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v33 = v5;
        v18 = v17;
        v32 = swift_slowAlloc();
        v34 = v14;
        v35[0] = v32;
        *v18 = 136315394;
        swift_unknownObjectRetain();
        v19 = sub_22887F3B0();
        v21 = sub_2287E64D8(v19, v20, v35);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2048;
        *(v18 + 14) = Current - v12;
        _os_log_impl(&dword_2287E4000, v15, v16, "[%s]: Work criteria ready after %fs.", v18, 0x16u);
        v22 = v32;
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x22AAC1440](v22, -1, -1);
        MEMORY[0x22AAC1440](v18, -1, -1);

        (*(v33 + 8))(v7, v4);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      *(a1 + 64) = CFAbsoluteTimeGetCurrent();
    }

    sub_228828824(v23);
    v25 = v24;

    v27 = *(*(v2 + 56) + 24);
    MEMORY[0x28223BE20](v26);
    *(&v31 - 2) = v28;
    *(&v31 - 1) = v25;
    os_unfair_lock_lock((v27 + 24));
    sub_228837860((v27 + 16), v35);
    os_unfair_lock_unlock((v27 + 24));

    v29 = v35[0];

    *(a1 + 40) = v29;
    v10 = nullsub_1;
    if (!*(v29 + 16))
    {
      return sub_22882B11C(a1);
    }
  }

  return v10;
}

void sub_22882AD2C(uint64_t a1, void *a2)
{
  v5 = sub_22887F180();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 49) & 1) == 0)
  {
    v9 = a2[3];
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(ObjectType, v9);

    v11 = sub_22887F160();
    v12 = sub_22887F6B0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v23 = v2;
      v24 = a2;
      v16 = v15;
      v25 = v15;
      *v14 = 136315138;

      v17 = sub_22887F3B0();
      v19 = sub_2287E64D8(v17, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2287E4000, v11, v12, "%s: Pausing.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AAC1440](v16, -1, -1);
      v20 = v14;
      a1 = v22;
      MEMORY[0x22AAC1440](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    *(a1 + 49) = 1;
  }
}

uint64_t Orchestrator.paused.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 65);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

Swift::Void __swiftcall Orchestrator.test_signalBarrier()()
{
  v1 = *(v0 + 40);
  v3[4] = nullsub_1;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_2288006C0;
  v3[3] = &block_descriptor_6;
  v2 = _Block_copy(v3);

  dispatch_async_and_wait(v1, v2);
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }
}

void sub_22882B06C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 48))
  {
    v5 = 0;
  }

  else
  {
    *(a1 + 48) = 1;
    *(a1 + 64) = CFAbsoluteTimeGetCurrent();
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    sub_2287F8E74(a2, a3);
    sub_2287E75A4(v9, v10);
    *(a1 + 72) = a2;
    *(a1 + 80) = a3;
    v5 = *(a1 + 16);

    v11 = sub_22887E164();
    sub_228859734(v11);
  }

  *a4 = v5;
}

void (*sub_22882B11C(unint64_t a1))()
{
  v2 = v1;
  v4 = sub_22887F180();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = nullsub_1;
  if ((*(a1 + 50) & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *(a1 + 64);
    v12 = *(v1 + 16);
    v11 = *(v1 + 24);
    swift_getObjectType();
    (*(v11 + 40))();

    v13 = sub_22887F160();
    v14 = sub_22887F6B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v28 = v12;
      v29 = v17;
      *v16 = 136315394;
      swift_unknownObjectRetain();
      v18 = sub_22887F3B0();
      v20 = sub_2287E64D8(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = Current - v10;
      _os_log_impl(&dword_2287E4000, v13, v14, "[%s]: Initial registration complete after %fs.", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AAC1440](v17, -1, -1);
      MEMORY[0x22AAC1440](v16, -1, -1);

      (*(v5 + 8))(v7, v27);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    *(a1 + 50) = 1;
    v21 = sub_2287EB4A4(a1);
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v24 = swift_allocObject();
    v24[2] = v2;
    v24[3] = v21;
    v24[4] = v22;
    v24[5] = v23;

    return sub_228836144;
  }

  return v8;
}

uint64_t sub_22882B3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  os_unfair_lock_lock(v2 + 26);
  sub_22883765C(&v2[4]);
  os_unfair_lock_unlock(v2 + 26);
  os_unfair_lock_lock(v2 + 26);
  sub_228837828(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 26);
  v4();
}

uint64_t sub_22882B45C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v8 = *(a3 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v26 = MEMORY[0x277D84F90];
    sub_22887F960();
    v13 = *(a4 + 16);
    v21 = *(a4 + 24);
    type metadata accessor for WorkCriteriaRecord();
    v14 = (a3 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(a2 + 1);
      v25[0] = *a2;
      v25[1] = v17;
      v25[2] = *(a2 + 2);
      v24[0] = v15;
      v24[1] = v16;
      swift_allocObject();
      sub_2287F56D8(a2, v23);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      WorkCriteriaRecord.init(context:executorIdentifier:planner:criteria:)(v13, v21, v25, a5, a6, v24);
      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      v14 += 2;
      --v8;
    }

    while (v8);
    v9 = v26;
    v7 = a1;
  }

  sub_2287F56D8(a2, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[0] = *(v7 + 24);
  sub_228849D90(v9, a2, isUniquelyReferenced_nonNull_native);
  result = sub_228820738(a2);
  *(v7 + 24) = *&v25[0];
  return result;
}

void sub_22882B5F0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v10 = v178;
  v11 = sub_22887F180();
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v17 = &v153 - v16;
  v18 = *(a1 + 8);
  v167 = *a1;
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  v166 = *(a1 + 32);
  v21 = *(a1 + 40);
  v163 = a4;
  v162 = a3;
  if (v21)
  {
    v159 = v14;
    v160 = v13;
    v164 = v19;
    if (v21 == 1)
    {
      v22 = *(v165 + 16);
      v23 = *(v165 + 24);
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 40);
      v158 = v22;
      v157 = ObjectType;
      v25(ObjectType, v23);

      v26 = v167;
      v27 = v17;
      v28 = v166;
      sub_2288362F8(v167, v18, v20, v19, v166, 1);

      v29 = a2;
      v30 = v20;
      v31 = sub_22887F160();
      v32 = sub_22887F6B0();

      v33 = v28;
      v34 = v31;
      sub_228836398(v26, v18, v30, v19, v33, 1);
      LODWORD(v165) = v32;
      if (os_log_type_enabled(v31, v32))
      {
        v156 = v27;
        v161 = v18;
        v154 = v30;
        v35 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v179 = v155;
        *v35 = 136315650;
        *&v169 = v158;
        swift_unknownObjectRetain();
        v36 = sub_22887F3B0();
        v38 = sub_2287E64D8(v36, v37, &v179);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        v40 = v29[4];
        v39 = v29[5];
        v41 = v29[7];
        v158 = v29[6];
        v43 = v29[8];
        v42 = v29[9];
        *&v169 = 60;
        *(&v169 + 1) = 0xE100000000000000;

        MEMORY[0x22AAC0340](v40, v39);
        MEMORY[0x22AAC0340](8250, 0xE200000000000000);
        a2 = v29;
        if (v42)
        {
          v44 = v42;
        }

        else
        {

          v43 = v158;
          v44 = v41;
        }

        v116 = v156;

        MEMORY[0x22AAC0340](v43, v44);

        MEMORY[0x22AAC0340](62, 0xE100000000000000);

        v117 = sub_2287E64D8(v169, *(&v169 + 1), &v179);

        *(v35 + 14) = v117;
        *(v35 + 22) = 2080;
        v19 = v164;
        if (v164)
        {
          v84 = v154;
          v118 = v154;
          v119 = v164;
        }

        else
        {
          v119 = v161;

          v118 = v167;
          v84 = v154;
        }

        v120 = sub_2287E64D8(v118, v119, &v179);

        *(v35 + 24) = v120;
        _os_log_impl(&dword_2287E4000, v34, v165, "[%s]: %s Removing criteria %s.", v35, 0x20u);
        v121 = v155;
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v121, -1, -1);
        MEMORY[0x22AAC1440](v35, -1, -1);

        v159[1](v116, v160);
        v18 = v161;
      }

      else
      {

        v159[1](v27, v160);
        v84 = v30;
        a2 = v29;
      }

      v122 = *(a2 + 3);
      v169 = *(a2 + 2);
      v170 = v122;
      v171 = *(a2 + 4);
      v124 = sub_22882C8A8(&v179, &v169);
      a4 = v163;
      if (!*v123)
      {
        (v124)(&v179, 0);
        goto LABEL_66;
      }

      v53 = v123;

      v125 = v167;
      v126 = v166;
      sub_2288362F8(v167, v18, v84, v19, v166, 1);
      v10 = sub_228836B00(v53, a2, v125, v18);
      sub_228836398(v125, v18, v84, v19, v126, 1);

      if (*v53 >> 62)
      {
        v127 = sub_22887FA20();
        if (v127 >= v10)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v127 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v127 >= v10)
        {
LABEL_60:
          sub_2288727E4(v10, v127);
          (v124)(&v179, 0);
          goto LABEL_66;
        }
      }

      __break(1u);
    }

    else
    {
      v153 = v15;
      v49 = *(a2 + 3);
      v179 = *(a2 + 2);
      v180 = v49;
      v181 = *(a2 + 4);
      v50 = a3[3];
      if (!*(v50 + 16))
      {
        goto LABEL_48;
      }

      v51 = sub_228819DA4(&v179);
      if ((v52 & 1) == 0)
      {
        goto LABEL_48;
      }

      v53 = *(*(v50 + 56) + 8 * v51);
      v154 = v20;
      v161 = v18;
      if (!(v53 >> 62))
      {
        v18 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
        v20 = *(&v179 + 1);
        v54 = v179;
        v157 = *(&v180 + 1);
        v158 = v180;

        if (v18)
        {
          v55 = 0;
          v156 = v53 & 0xC000000000000001;
          v155 = v53 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v156)
            {
              v56 = MEMORY[0x22AAC07F0](v55, v53);
              v10 = (v55 + 1);
              if (__OFADD__(v55, 1))
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else
            {
              if (v55 >= *(v155 + 16))
              {
                __break(1u);
                goto LABEL_73;
              }

              v56 = v53[v55 + 4];

              v10 = (v55 + 1);
              if (__OFADD__(v55, 1))
              {
                goto LABEL_35;
              }
            }

            v58 = v56[6];
            v57 = v56[7];
            v59 = v56[4] == v54 && v56[5] == v20;
            if (v59 || (sub_22887FBF0() & 1) != 0)
            {
              v60 = v58 == v158 && v57 == v157;
              if (v60 || (sub_22887FBF0()) && (v56[10] == v167 && v161 == v56[11] || (sub_22887FBF0()))
              {
                break;
              }
            }

            ++v55;
            v19 = v164;
            if (v10 == v18)
            {
              goto LABEL_47;
            }
          }

          v133 = v56[17];
          MEMORY[0x28223BE20](v132);
          *(&v153 - 2) = v166;
          os_unfair_lock_lock(v133 + 17);
          sub_2288364B4(&v133[4]);
          os_unfair_lock_unlock(v133 + 17);
          v135 = *v162;
          if (!*v162)
          {

            v139 = v163;
            v163[12] = 0;
            v139[4] = 0u;
            v139[5] = 0u;
            v139[2] = 0u;
            v139[3] = 0u;
            *v139 = 0u;
            v139[1] = 0u;
            return;
          }

          v136 = v56[17];
          MEMORY[0x28223BE20](v134);
          *(&v153 - 4) = v56;
          *(&v153 - 3) = a5;
          *(&v153 - 2) = v135;

          os_unfair_lock_lock((v136 + 68));
          sub_228837840((v136 + 16), &v169);
          os_unfair_lock_unlock((v136 + 68));

          v137 = v169;
          if (v169 < 3)
          {
            v138 = v163;
            v163[12] = 0;
            v138[4] = 0u;
            v138[5] = 0u;
            v138[2] = 0u;
            v138[3] = 0u;
            *v138 = 0u;
            v138[1] = 0u;
            return;
          }

          v140 = v176;
          v141 = v174;
          v166 = v175;
          v167 = &v153;
          v142 = v173;
          v143 = v172;
          v144 = *(&v171 + 1);
          v164 = v171;
          v145 = *(&v170 + 1);
          v146 = v170;
          v147 = *(&v169 + 1);
          v148 = swift_allocObject();
          swift_weakInit();
          v149 = swift_allocObject();
          *(v149 + 16) = v148;
          *(v149 + 24) = v137;
          *(v149 + 32) = v147;
          *(v149 + 40) = v146;
          v150 = v164;
          *(v149 + 48) = v145;
          *(v149 + 56) = v150;
          *(v149 + 64) = v144;
          *(v149 + 72) = v143;
          *(v149 + 80) = v142;
          *(v149 + 88) = v141;
          v151 = v166;
          *(v149 + 96) = v166;
          *(v149 + 104) = v140;
          *(v149 + 112) = v177;
          *(v149 + 128) = a2;
          v152 = v163;
          *v163 = v137;
          v152[1] = v147;
          v152[2] = v146;
          v152[3] = v145;
          v152[4] = v150;
          v152[5] = v144;
          v152[6] = v143;
          v152[7] = v142;
          v152[8] = v141;
          v152[9] = v151;
          v152[10] = v140;
          v152[11] = sub_2287FBEDC;
          v152[12] = v149;

          swift_unknownObjectRetain();

LABEL_46:

          return;
        }

LABEL_47:

        a4 = v163;
        v20 = v154;
        v18 = v161;
LABEL_48:
        v97 = *(v165 + 16);
        v98 = *(v165 + 24);
        v99 = swift_getObjectType();
        v100 = *(v98 + 40);
        v101 = v153;
        v166 = v99;
        v100(v99, v98);

        v102 = sub_22887F160();
        v103 = sub_22887F690();

        if (os_log_type_enabled(v102, v103))
        {
          LODWORD(v165) = v103;
          v161 = v18;
          v154 = v20;
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *&v178[0] = v105;
          *v104 = 136315650;
          *&v169 = v97;
          swift_unknownObjectRetain();
          v106 = sub_22887F3B0();
          v108 = sub_2287E64D8(v106, v107, v178);

          *(v104 + 4) = v108;
          *(v104 + 12) = 2080;
          v110 = a2[4];
          v109 = a2[5];
          v112 = a2[6];
          v111 = a2[7];
          v114 = a2[8];
          v113 = a2[9];
          *&v169 = 60;
          *(&v169 + 1) = 0xE100000000000000;

          MEMORY[0x22AAC0340](v110, v109);
          MEMORY[0x22AAC0340](8250, 0xE200000000000000);
          if (v113)
          {
            v115 = v113;
          }

          else
          {

            v114 = v112;
            v115 = v111;
          }

          v128 = v154;

          MEMORY[0x22AAC0340](v114, v115);

          MEMORY[0x22AAC0340](62, 0xE100000000000000);

          v129 = sub_2287E64D8(v169, *(&v169 + 1), v178);

          *(v104 + 14) = v129;
          *(v104 + 22) = 2080;
          v130 = v164;
          if (!v164)
          {
            v130 = v161;

            v128 = v167;
          }

          v131 = sub_2287E64D8(v128, v130, v178);

          *(v104 + 24) = v131;
          _os_log_impl(&dword_2287E4000, v102, v165, "[%s]: %s requested criteria update for non-existent criteria %s; ignoring.", v104, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AAC1440](v105, -1, -1);
          MEMORY[0x22AAC1440](v104, -1, -1);

          v159[1](v153, v160);
          a4 = v163;
        }

        else
        {

          v159[1](v101, v160);
        }

        goto LABEL_66;
      }
    }

    v18 = sub_22887FA20();
    goto LABEL_13;
  }

  v45 = *(a2 + 3);
  v179 = *(a2 + 2);
  v180 = v45;
  v181 = *(a2 + 4);
  v46 = a3[3];
  if (*(v46 + 16) && (v47 = sub_228819DA4(&v179), (v48 & 1) != 0))
  {
    v168 = *(*(v46 + 56) + 8 * v47);
  }

  else
  {
LABEL_36:
    v168 = MEMORY[0x277D84F90];
  }

  v61 = v167;
  v62 = v166;
  sub_2288362F8(v167, v18, v20, v19, v166, 0);
  v10 = 0;
  v55 = sub_228836668(&v168, a2, v61);
  sub_228836398(v61, v18, v20, v19, v62, 0);

  if (v168 >> 62)
  {
LABEL_73:
    v63 = sub_22887FA20();
    if (v63 >= v55)
    {
LABEL_39:
      v159 = v10;
      sub_2288727E4(v55, v63);
      v64 = *(v165 + 16);
      v164 = *(v165 + 24);
      v65 = a2[5];
      v66 = v19;
      v67 = a2[6];
      v68 = a2[7];
      v69 = v20;
      v70 = a2[8];
      v71 = a2[9];
      *&v169 = a2[4];
      *(&v169 + 1) = v65;
      *&v170 = v67;
      *(&v170 + 1) = v68;
      *&v171 = v70;
      *(&v171 + 1) = v71;
      v72 = a2[14];
      v160 = a2[15];
      v73 = v167;
      *&v178[0] = v167;
      *(&v178[0] + 1) = v18;
      type metadata accessor for WorkCriteriaRecord();
      swift_allocObject();
      sub_2288362F8(v73, v18, v69, v66, v166, 0);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      a2 = WorkCriteriaRecord.init(context:executorIdentifier:planner:criteria:)(v64, v164, &v169, v72, v160, v178);

      MEMORY[0x22AAC03E0](v74);
      if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_40;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v63 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63 >= v55)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_75:
  sub_22887F4E0();
LABEL_40:
  sub_22887F520();
  v75 = v168;
  v77 = *(a2 + 3);
  v76 = *(a2 + 4);
  v178[0] = *(a2 + 2);
  v178[1] = v77;
  v178[2] = v76;
  sub_2287F56D8(v178, &v169);
  v78 = v162;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v169 = v78[3];
  sub_228849D90(v75, v178, isUniquelyReferenced_nonNull_native);
  v80 = sub_228820738(v178);
  v78[3] = v169;
  v81 = *v78;
  a4 = v163;
  if (*v78)
  {
    v82 = a2[17];
    MEMORY[0x28223BE20](v80);
    *(&v153 - 4) = a2;
    *(&v153 - 3) = a5;
    *(&v153 - 2) = v81;

    os_unfair_lock_lock((v82 + 68));
    sub_228837840((v82 + 16), &v169);
    os_unfair_lock_unlock((v82 + 68));

    v83 = v169;
    if (v169 < 3)
    {

      a4[12] = 0;
      *(a4 + 4) = 0u;
      *(a4 + 5) = 0u;
      *(a4 + 2) = 0u;
      *(a4 + 3) = 0u;
      *a4 = 0u;
      *(a4 + 1) = 0u;
      return;
    }

    v85 = v176;
    v86 = v174;
    v166 = v175;
    v87 = v173;
    v167 = &v153;
    v88 = v172;
    v164 = *(&v171 + 1);
    v162 = v171;
    v89 = *(&v170 + 1);
    v90 = v170;
    v91 = *(&v169 + 1);
    v92 = swift_allocObject();
    swift_weakInit();
    v93 = swift_allocObject();
    *(v93 + 16) = v92;
    *(v93 + 24) = v83;
    *(v93 + 32) = v91;
    *(v93 + 40) = v90;
    v94 = v162;
    *(v93 + 48) = v89;
    *(v93 + 56) = v94;
    v95 = v164;
    *(v93 + 64) = v164;
    *(v93 + 72) = v88;
    *(v93 + 80) = v87;
    *(v93 + 88) = v86;
    v96 = v166;
    *(v93 + 96) = v166;
    *(v93 + 104) = v85;
    *(v93 + 112) = v177;
    *(v93 + 128) = a2;
    *a4 = v83;
    a4[1] = v91;
    a4[2] = v90;
    a4[3] = v89;
    a4[4] = v94;
    a4[5] = v95;
    a4[6] = v88;
    a4[7] = v87;
    a4[8] = v86;
    a4[9] = v96;
    a4[10] = v85;
    a4[11] = sub_2287FBEDC;
    a4[12] = v93;

    swift_unknownObjectRetain();
    goto LABEL_46;
  }

LABEL_66:
  a4[12] = 0;
  *(a4 + 4) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *a4 = 0u;
  *(a4 + 1) = 0u;
}

uint64_t (*sub_22882C8A8(uint64_t **a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_228835068(v4, a2);
  return sub_22882C920;
}

void sub_22882C920(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_22882C96C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22887F240();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22887F270();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22887F250();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_not_owner((*(a1 + 48) + 104));
  v18._rawValue = a2;
  sub_2287EBD14(v18);
  if (a3)
  {
    sub_22880AA7C();
    (*(v15 + 104))(v17, *MEMORY[0x277D851C8], v14);

    v25 = sub_22887F720();
    (*(v15 + 8))(v17, v14);
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    aBlock[4] = sub_2287FED74;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2287E72C0;
    aBlock[3] = &block_descriptor_26;
    v20 = _Block_copy(aBlock);

    sub_22887F260();
    v29 = MEMORY[0x277D84F90];
    sub_2287E710C(qword_2813CF680, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v21 = a3;
    v22 = MEMORY[0x277D85198];
    sub_2287E70A8(0, &qword_2813CF5C8, 255, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2287E7154(qword_2813CF5B0, &qword_2813CF5C8, v22);
    sub_22887F820();
    v23 = v25;
    MEMORY[0x22AAC0630](0, v13, v10, v20);
    _Block_release(v20);

    sub_2287E75A4(v21, a4);
    (*(v28 + 8))(v10, v8);
    (*(v26 + 8))(v13, v27);
  }
}

uint64_t sub_22882CD58@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{

  sub_228828824(v5);

  v159 = sub_228872318(v6);
  sub_22882F7CC(&v159);
  v7 = v3;
  if (v3)
  {
    goto LABEL_119;
  }

  v156 = v159;
  v159 = 0;
  v160 = 0xE000000000000000;
  sub_22887F8A0();
  v163 = v159;
  v164 = v160;
  MEMORY[0x22AAC0340](0x6420746369727473, 0xEF20687061726769);
  ObjectType = swift_getObjectType();
  v9 = sub_22882E2F4(ObjectType);
  MEMORY[0x22AAC0340](v9);

  MEMORY[0x22AAC0340](0x6C202020200A7B20, 0xEF203D206C656261);
  v10 = sub_22882E2F4(ObjectType);
  MEMORY[0x22AAC0340](v10);

  MEMORY[0x22AAC0340](0xD000000000000047, 0x8000000228888F10);
  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_228876C14(v12, 0);
    v14 = sub_22887CEE8(&v159, v13 + 4, v12, v11);
    v15 = v159;
    v7 = v161;
    swift_bridgeObjectRetain_n();
    sub_2287EF604(v15);
    if (v14 != v12)
    {
      __break(1u);
      goto LABEL_114;
    }

    v7 = v3;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v159 = v13;
  v3 = v7;
  sub_22882F760(&v159);
  v147 = 0;

  v16 = v159;
  v17 = *(v159 + 16);
  if (v17)
  {
    v165 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v17, 0);
    v18 = v165;
    v19 = (v16 + 56);
    do
    {
      v20 = *v19;
      v159 = 0;
      v160 = 0xE000000000000000;

      sub_22887F8A0();

      v159 = 0x2020202020202020;
      v160 = 0xE800000000000000;
      if (!v20)
      {
      }

      v3 = sub_228837590();

      v21 = sub_22887F7F0();
      v23 = v22;

      MEMORY[0x22AAC0340](v21, v23);

      MEMORY[0x22AAC0340](34, 0xE100000000000000);
      MEMORY[0x22AAC0340](34, 0xE100000000000000);

      MEMORY[0x22AAC0340](0xD000000000000010, 0x8000000228888F60);

      v24 = v159;
      v25 = v160;
      v165 = v18;
      v7 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v7 >= v26 >> 1)
      {
        sub_2287F2304((v26 > 1), v7 + 1, 1);
        v18 = v165;
      }

      v19 += 4;
      *(v18 + 16) = v7 + 1;
      v27 = v18 + 16 * v7;
      *(v27 + 32) = v24;
      *(v27 + 40) = v25;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v159 = v18;
  sub_2287F0FBC(0, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v148 = sub_2287F2498();
  v28 = sub_22887F350();
  v30 = v29;

  MEMORY[0x22AAC0340](v28, v30);

  MEMORY[0x22AAC0340](0xD000000000000046, 0x8000000228888F80);
  LODWORD(v31) = v156 < 0 || (v156 & 0x4000000000000000) != 0;
  if (v31 == 1)
  {
    goto LABEL_112;
  }

  v32 = *(v156 + 16);
LABEL_20:
  v33 = MEMORY[0x277D84F90];
  v157 = v32;
  v146 = v31;
  v149 = v32 & ~(v32 >> 63);
  if (v32)
  {
    v159 = MEMORY[0x277D84F90];
    sub_22881D9E4(0, v32 & ~(v32 >> 63), 0);
    if ((v32 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v33 = v159;
      v35 = v156;
      do
      {
        if ((v156 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x22AAC07F0](v34, v35);
        }

        else
        {
          v36 = *(v35 + 8 * v34 + 32);
        }

        v38 = v36[4];
        v37 = v36[5];
        v39 = v36[7];
        v7 = v36[9];
        v151 = v36[8];
        v152 = v36[6];

        v159 = v33;
        v41 = *(v33 + 2);
        v40 = *(v33 + 3);
        if (v41 >= v40 >> 1)
        {
          sub_22881D9E4((v40 > 1), v41 + 1, 1);
          v35 = v156;
          v33 = v159;
        }

        ++v34;
        *(v33 + 2) = v41 + 1;
        v42 = &v33[48 * v41];
        *(v42 + 4) = v38;
        *(v42 + 5) = v37;
        *(v42 + 6) = v152;
        *(v42 + 7) = v39;
        *(v42 + 8) = v151;
        *(v42 + 9) = v7;
        v32 = v157;
      }

      while (v157 != v34);
      goto LABEL_29;
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_29:
  v43 = sub_22887D784(v33);

  v44 = *(v43 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v45 = sub_228876B6C(*(v43 + 16), 0);
    v46 = sub_22887CD44(&v159, v45 + 4, v44, v43);
    v3 = v159;
    v7 = v162;

    sub_2287EF604(v3);
    if (v46 != v44)
    {
      goto LABEL_115;
    }
  }

  v159 = v45;
  v3 = v147;
  sub_22882F6DC(&v159, sub_228831778, sub_228831078);
  if (v147)
  {
LABEL_117:
    for (i = v3; ; i = v7)
    {

      __break(1u);
LABEL_119:
      ;
    }
  }

  v47 = v159;
  v48 = *(v159 + 16);
  if (v48)
  {
    v165 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v48, 0);
    v49 = (v47 + 72);
    v7 = v165;
    do
    {
      v153 = v7;
      v51 = *(v49 - 3);
      v50 = *(v49 - 2);
      v52 = *(v49 - 1);
      v53 = *v49;
      v159 = 0;
      v160 = 0xE000000000000000;

      sub_22887F8A0();

      v159 = 0x2020202020202020;
      v160 = 0xE800000000000000;

      MEMORY[0x22AAC0340](46, 0xE100000000000000);
      if (v53)
      {
        v54 = v53;
      }

      else
      {

        v52 = v51;
        v54 = v50;
      }

      MEMORY[0x22AAC0340](v52, v54);

      sub_228837590();
      v55 = sub_22887F7F0();
      v57 = v56;

      MEMORY[0x22AAC0340](v55, v57);

      MEMORY[0x22AAC0340](34, 0xE100000000000000);
      MEMORY[0x22AAC0340](34, 0xE100000000000000);

      MEMORY[0x22AAC0340](0x3D65706168735B20, 0xEE005D6573756F68);

      v58 = v159;
      v59 = v160;
      v7 = v153;
      v165 = v153;
      v61 = *(v153 + 16);
      v60 = *(v153 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_2287F2304((v60 > 1), v61 + 1, 1);
        v7 = v165;
      }

      v49 += 6;
      *(v7 + 16) = v61 + 1;
      v62 = v7 + 16 * v61;
      *(v62 + 32) = v58;
      *(v62 + 40) = v59;
      --v48;
    }

    while (v48);

    v32 = v157;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v159 = v7;
  v63 = sub_22887F350();
  v65 = v64;

  MEMORY[0x22AAC0340](v63, v65);

  MEMORY[0x22AAC0340](0xA7D202020200ALL, 0xE700000000000000);
  if (!v32)
  {
    v88 = MEMORY[0x277D84F90];
    v159 = MEMORY[0x277D84F90];
    v102 = sub_22887F350();
    v104 = v103;

    MEMORY[0x22AAC0340](v102, v104);

    MEMORY[0x22AAC0340](10, 0xE100000000000000);
    goto LABEL_65;
  }

  v165 = MEMORY[0x277D84F90];
  sub_2287F2304(0, v149, 0);
  if (v32 < 0)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v66 = 0;
  v67 = v165;
  v154 = v156 & 0xC000000000000001;
  do
  {
    if (v154)
    {
      v68 = MEMORY[0x22AAC07F0](v66, v156);
    }

    else
    {
      v68 = *(v156 + 8 * v66 + 32);
    }

    v159 = 0;
    v160 = 0xE000000000000000;
    sub_22887F8A0();

    v159 = 538976288;
    v160 = 0xE400000000000000;
    v69 = sub_22882E140();
    MEMORY[0x22AAC0340](v69);

    MEMORY[0x22AAC0340](0xD000000000000013, 0x8000000228888FD0);
    v70 = *(v68 + 136);
    os_unfair_lock_lock((v70 + 68));
    v71 = *(v70 + 16);

    os_unfair_lock_unlock((v70 + 68));
    v73 = v71[2];
    v72 = v71[3];
    v75 = v71[4];
    v74 = v71[5];

    if (!v74)
    {

      v75 = v73;
      v74 = v72;
    }

    MEMORY[0x22AAC0340](v75, v74);

    sub_228837590();
    v76 = sub_22887F7F0();
    v78 = v77;

    MEMORY[0x22AAC0340](v76, v78);

    MEMORY[0x22AAC0340](34, 0xE100000000000000);
    MEMORY[0x22AAC0340](34, 0xE100000000000000);

    MEMORY[0x22AAC0340](93, 0xE100000000000000);

    v79 = v159;
    v80 = v160;
    v165 = v67;
    v82 = *(v67 + 16);
    v81 = *(v67 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_2287F2304((v81 > 1), v82 + 1, 1);
      v67 = v165;
    }

    ++v66;
    *(v67 + 16) = v82 + 1;
    v83 = v67 + 16 * v82;
    *(v83 + 32) = v79;
    *(v83 + 40) = v80;
  }

  while (v157 != v66);
  v159 = v67;
  v84 = sub_22887F350();
  v86 = v85;

  MEMORY[0x22AAC0340](v84, v86);

  MEMORY[0x22AAC0340](10, 0xE100000000000000);
  v165 = MEMORY[0x277D84F90];
  sub_2287F2304(0, v149, 0);
  v87 = 0;
  v88 = v165;
  do
  {
    if (v154)
    {
      v89 = MEMORY[0x22AAC07F0](v87, v156);
    }

    else
    {
      v89 = *(v156 + 8 * v87 + 32);
    }

    v159 = 538976288;
    v160 = 0xE400000000000000;
    v90 = sub_22882E140();
    MEMORY[0x22AAC0340](v90);

    MEMORY[0x22AAC0340](540945696, 0xE400000000000000);
    v92 = v89[6];
    v91 = v89[7];
    v93 = v89[8];
    v7 = v89[9];

    MEMORY[0x22AAC0340](46, 0xE100000000000000);
    if (v7)
    {
      v91 = v7;
    }

    else
    {

      v93 = v92;
    }

    MEMORY[0x22AAC0340](v93, v91);

    v94 = sub_22887F7F0();
    v96 = v95;

    MEMORY[0x22AAC0340](v94, v96);

    MEMORY[0x22AAC0340](34, 0xE100000000000000);
    MEMORY[0x22AAC0340](34, 0xE100000000000000);

    v97 = v159;
    v98 = v160;
    v165 = v88;
    v100 = *(v88 + 16);
    v99 = *(v88 + 24);
    if (v100 >= v99 >> 1)
    {
      sub_2287F2304((v99 > 1), v100 + 1, 1);
      v88 = v165;
    }

    ++v87;
    *(v88 + 16) = v100 + 1;
    v101 = v88 + 16 * v100;
    *(v101 + 32) = v97;
    *(v101 + 40) = v98;
  }

  while (v157 != v87);
LABEL_65:
  v159 = v88;
  v105 = sub_22887F350();
  v107 = v106;

  MEMORY[0x22AAC0340](v105, v107);

  MEMORY[0x22AAC0340](10, 0xE100000000000000);
  v108 = v156;
  if (v146)
  {
    v109 = sub_22887FA20();
  }

  else
  {
    v109 = *(v156 + 16);
  }

  v110 = MEMORY[0x277D84F90];
  LODWORD(v31) = v148;
  if (v109)
  {
    v111 = 0;
    v147 = v156 & 0xC000000000000001;
    v145 = v109;
    do
    {
      if (v147)
      {
        v158 = MEMORY[0x22AAC07F0](v111, v108);
        v112 = __OFADD__(v111, 1);
        v113 = v111 + 1;
        if (v112)
        {
LABEL_104:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v111 >= *(v108 + 16))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          v32 = sub_22887FA20();
          goto LABEL_20;
        }

        v158 = *(v156 + 32 + 8 * v111);

        v112 = __OFADD__(v111, 1);
        v113 = v111 + 1;
        if (v112)
        {
          goto LABEL_104;
        }
      }

      v155 = v113;
      v114 = *(v158 + 128);
      v115 = *(v114 + 16);
      if (v115)
      {
        sub_2287F0FBC(0, &qword_2813CF288, &type metadata for InputSignalIdentifier, MEMORY[0x277D84560]);
        v31 = swift_allocObject();
        v116 = _swift_stdlib_malloc_size(v31);
        v117 = v116 - 32;
        if (v116 < 32)
        {
          v117 = v116 - 1;
        }

        v31[2] = v115;
        v31[3] = 2 * (v117 >> 5);
        v118 = sub_22887D068(&v159, v31 + 4, v115, v114);
        v3 = v159;
        v7 = v162;

        sub_2287EF604(v3);
        if (v118 != v115)
        {
          goto LABEL_109;
        }

        v119 = MEMORY[0x277D84F90];
      }

      else
      {
        v119 = MEMORY[0x277D84F90];
        v31 = MEMORY[0x277D84F90];
      }

      v159 = v31;
      v3 = 0;
      sub_22882F760(&v159);
      v120 = v159;
      v121 = *(v159 + 16);
      if (v121)
      {
        v150 = v110;
        v165 = v119;
        sub_2287F2304(0, v121, 0);
        v119 = v165;
        v122 = (v120 + 56);
        do
        {
          v3 = *(v122 - 3);
          v123 = *v122;
          v159 = 538976288;
          v160 = 0xE400000000000000;
          if (!v123)
          {
          }

          sub_228837590();

          swift_bridgeObjectRetain_n();
          v124 = sub_22887F7F0();
          v126 = v125;

          MEMORY[0x22AAC0340](v124, v126);

          MEMORY[0x22AAC0340](34, 0xE100000000000000);
          MEMORY[0x22AAC0340](34, 0xE100000000000000);

          MEMORY[0x22AAC0340](540945696, 0xE400000000000000);
          v127 = sub_22882E140();
          MEMORY[0x22AAC0340](v127);

          v128 = v159;
          v129 = v160;
          v165 = v119;
          v7 = *(v119 + 16);
          v130 = *(v119 + 24);
          if (v7 >= v130 >> 1)
          {
            sub_2287F2304((v130 > 1), v7 + 1, 1);
            v119 = v165;
          }

          v122 += 4;
          *(v119 + 16) = v7 + 1;
          v131 = v119 + 16 * v7;
          *(v131 + 32) = v128;
          *(v131 + 40) = v129;
          --v121;
        }

        while (v121);

        v110 = v150;
      }

      else
      {
      }

      v132 = *(v119 + 16);
      v133 = *(v110 + 2);
      v31 = (v133 + v132);
      if (__OFADD__(v133, v132))
      {
        goto LABEL_107;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v31 > *(v110 + 3) >> 1)
      {
        if (v133 <= v31)
        {
          v135 = v133 + v132;
        }

        else
        {
          v135 = v133;
        }

        v110 = sub_228830214(isUniquelyReferenced_nonNull_native, v135, 1, v110);
      }

      v108 = v156;
      LODWORD(v31) = v148;
      if (*(v119 + 16))
      {
        if ((*(v110 + 3) >> 1) - *(v110 + 2) < v132)
        {
          goto LABEL_110;
        }

        swift_arrayInitWithCopy();

        v111 = v155;
        if (v132)
        {
          v136 = *(v110 + 2);
          v112 = __OFADD__(v136, v132);
          v137 = v136 + v132;
          if (v112)
          {
            goto LABEL_111;
          }

          *(v110 + 2) = v137;
        }
      }

      else
      {

        v111 = v155;
        if (v132)
        {
          goto LABEL_108;
        }
      }
    }

    while (v111 != v145);
  }

  v159 = v110;
  v138 = sub_22887F350();
  v140 = v139;

  MEMORY[0x22AAC0340](v138, v140);

  result = MEMORY[0x22AAC0340](32010, 0xE200000000000000);
  v142 = v164;
  *a3 = v163;
  a3[1] = v142;
  return result;
}