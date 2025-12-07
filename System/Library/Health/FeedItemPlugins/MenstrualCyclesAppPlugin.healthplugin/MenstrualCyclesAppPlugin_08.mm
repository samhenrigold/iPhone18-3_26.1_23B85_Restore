void sub_29DF53BD0(int a1)
{
  v2 = v1;
  v48 = a1;
  v47 = sub_29E2C31A4();
  v3 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CycleDay(0);
  MEMORY[0x2A1C7C4A8](v45);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 indexPathsForVisibleItems];

    v14 = sub_29E2C3614();
    v15 = *(v14 + 16);
    v43 = &v2[qword_2A1A60E90];
    swift_beginAccess();
    v16 = &off_29F363000;
    v52 = v15;
    if (!v15)
    {
LABEL_18:

      return;
    }

    v17 = 0;
    v51 = v7 + 16;
    v40 = (v3 + 32);
    v50 = (v7 + 8);
    v42 = v2;
    v41 = v6;
    v49 = v14;
    while (v17 < *(v14 + 16))
    {
      (*(v7 + 16))(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
      v18 = [v2 v16[364]];
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = v18;
      v20 = sub_29E2BCF24();
      v21 = [v19 cellForItemAtIndexPath_];

      if (v21)
      {
        type metadata accessor for CalendarDayCell();
        v22 = swift_dynamicCastClass();
        if (v22 && (v23 = v22, v24 = (v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day), (v25 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 16)) != 0))
        {
          v27 = v24[4];
          v26 = v24[5];
          v28 = v24[3];
          v29 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 8);
          v54[0] = *v24;
          v54[1] = v29;
          v54[2] = v25;
          v54[3] = v28;
          v54[4] = v27;
          v54[5] = v26;
          LOBYTE(v55) = v54[0];
          *(&v55 + 1) = v29;
          *&v56 = v25;
          WORD4(v56) = v28 & 0x101;
          BYTE10(v56) = BYTE2(v28);
          *&v57 = v27;
          *(&v57 + 1) = v26;
          sub_29DEA6950(v54, v53);
          v30 = sub_29E2C2DB4();
          if (!v30)
          {
            goto LABEL_21;
          }

          v31 = v30;
          v32 = v46;
          sub_29E2C2D44();

          v33 = sub_29DF4E704();
          v34 = [v33 dayViewModelAtIndex_];

          v35 = v44;
          (*v40)(v44, v32, v47);
          *(v35 + *(v45 + 20)) = v34;
          v36 = *(v43 + 2);
          v37 = *(v43 + 3);

          sub_29E2BF404();
          sub_29E2BF404();
          swift_getAtKeyPath();
          if (v53[0])
          {
            v38 = sub_29E091D88(v35, v37);

            v39 = v38 ^ 1;
          }

          else
          {
            v39 = sub_29E091D88(v35, v36);
          }

          BYTE8(v56) = v39 & 1;
          sub_29E224528();
          v58[0] = v55;
          v58[1] = v56;
          v58[2] = v57;
          (*((*MEMORY[0x29EDCA1E8] & *v23) + 0x118))(v58, v48 & 1);
          sub_29DEA69AC(v58);

          sub_29DF57958(v35, type metadata accessor for CycleDay);
          v6 = v41;
          (*v50)(v10, v41);
          v2 = v42;
          v16 = &off_29F363000;
        }

        else
        {

          (*v50)(v10, v6);
        }

        v14 = v49;
      }

      else
      {
        (*v50)(v10, v6);
      }

      if (v52 == ++v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_29DF541F4()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v10 = &v16[-v9];
  v11 = [v0 userActivity];
  [v11 invalidate];

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E1A9EEC();
  v13 = sub_29E2BDF74();

  sub_29E2C3314();
  (*(v4 + 16))(v6, v10, v3);
  v14 = v12;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v10, v3);
  v15 = sub_29E2C33A4();

  [v13 setTitle_];

  [v13 setEligibleForSearch_];
  [v13 setEligibleForHandoff_];
  sub_29DF2442C(0);
  [v1 setUserActivity_];
}

void sub_29DF54500()
{
  sub_29DF57584(*(v0 + qword_2A1A60E98));

  v1 = *(v0 + qword_2A1A60EC0);
}

void sub_29DF54600(uint64_t a1)
{
  sub_29DF57584(*(a1 + qword_2A1A60E98));

  v2 = *(a1 + qword_2A1A60EC0);
}

double sub_29DF546F4()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_2A1A60E90];
  swift_beginAccess();
  v6 = *(v5 + 2);
  v7 = *(v5 + 3);

  sub_29E2BF404();
  sub_29E2BF404();
  v8 = sub_29E0F0210(v6, v7);

  sub_29E2C04B4();
  v9 = v0;
  sub_29E2BF404();
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    ObjectType = swift_getObjectType();
    sub_29DF5751C();
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    ObjectType = v8;
    sub_29DF575AC(0);
    sub_29E2BF404();
    v18 = sub_29E2C3464();
    v20 = sub_29DFAA104(v18, v19, &v31);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Saving changes %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);

    (*(v2 + 8))(v4, v29);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v21 = [*&v9[qword_2A1A60EC0] healthStore];
  v22 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

  v23 = *&v9[qword_2A1A60E98];
  *&v9[qword_2A1A60E98] = v22;
  v24 = v22;
  sub_29DF4E30C(v23);
  sub_29DF57584(v23);

  v25 = swift_allocObject();
  *(v25 + 16) = v9;
  *(v25 + 24) = v8;
  v26 = v9;
  v27 = sub_29E2BF404();
  sub_29E225224(v27, sub_29DF575A4, v25);

  return result;
}

uint64_t sub_29DF54A7C(char a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_29E2C2B34();
  v21 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E2C2B54();
  v11 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v14 = sub_29E2C3CF4();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;
  *(v15 + 32) = a2;
  *(v15 + 40) = a4;
  aBlock[4] = sub_29DF57658;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B4CA8;
  v16 = _Block_copy(aBlock);
  v17 = a3;
  v18 = a2;
  sub_29E2BF404();

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF57C6C(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29DF56D40(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

void sub_29DF54D8C(char a1, char *a2, void *a3, uint64_t a4)
{
  v99 = a3;
  v7 = sub_29E2BCEA4();
  v94 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF57AEC(0, &qword_2A1819388, MEMORY[0x29EDBA2F8], type metadata accessor for HKMCDaySummaryBleedingFlow, "key value ");
  v100 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v86 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v95 = &v86 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v86 - v19;
  MEMORY[0x2A1C7C4A8](v21);
  v92 = &v86 - v22;
  v101 = sub_29E2C31A4();
  v96 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101);
  v91 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v93 = &v86 - v25;
  v26 = sub_29E2C0514();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v26);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v101 = v28;
    sub_29E2C04B4();
    v39 = a2;
    v40 = v99;
    v41 = v99;
    v42 = sub_29E2C0504();
    v43 = sub_29E2C3A14();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v103 = v45;
      *v44 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29DF5751C();
      v46 = sub_29E2C3424();
      v48 = sub_29DFAA104(v46, v47, &v103);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      ObjectType = v40;
      v49 = v40;
      sub_29DF57668(0);
      v50 = sub_29E2C3424();
      v52 = sub_29DFAA104(v50, v51, &v103);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_29DE74000, v42, v43, "[%{public}s]: Failed to save period days with error: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v45, -1, -1);
      MEMORY[0x29ED82140](v44, -1, -1);
    }

    (*(v27 + 8))(v31, v101);
LABEL_24:
    v83 = *&a2[qword_2A1A60E98];
    *&a2[qword_2A1A60E98] = 4;
    sub_29DF4E30C(v83);
    sub_29DF57584(v83);
    v84 = [a2 presentingViewController];
    if (v84)
    {
      v85 = v84;
      [v84 dismissViewControllerAnimated:1 completion:0];
    }

    return;
  }

  v90 = v9;
  v32 = 1 << *(a4 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(a4 + 64);
  v99 = a4;
  if (!v34)
  {
    v53 = 0;
    v38 = (v32 + 63) >> 6;
    while (v38 - 1 != v53)
    {
      v35 = v53 + 1;
      v54 = *(a4 + 72 + 8 * v53);
      v34 -= 64;
      ++v53;
      if (v54)
      {
        v88 = a2;
        v89 = v20;
        v87 = v7;
        v37 = (v54 - 1) & v54;
        v36 = __clz(__rbit64(v54)) - v34;
        goto LABEL_13;
      }
    }

    goto LABEL_24;
  }

  v88 = a2;
  v89 = v20;
  v87 = v7;
  v35 = 0;
  v36 = __clz(__rbit64(v34));
  v37 = (v34 - 1) & v34;
  v38 = (v32 + 63) >> 6;
LABEL_13:
  v55 = v99;
  v56 = *(v99 + 6);
  v57 = v95;
  v58 = v96[2];
  v97 = v96[9];
  v98 = v58;
  v59.n128_f64[0] = (v58)(v95, v56 + v97 * v36, v101, v29);
  *(v57 + *(v100 + 48)) = *(v55[7] + 8 * v36);
  v60 = v89;
  sub_29DF576D0(v57, v89, v59);
  sub_29E2BF404();
  if (v37)
  {
    goto LABEL_16;
  }

LABEL_17:
  while (1)
  {
    v61 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v61 >= v38)
    {

      v68 = v60;
      v69 = v92;
      sub_29DF576D0(v68, v92, v70);
      v71 = v96;
      v72 = v96[4];
      v73 = v91;
      v74 = v101;
      v72(v91, v69, v101);
      v75 = v93;
      v72(v93, v73, v74);
      v76 = objc_opt_self();
      a2 = v88;
      v77 = *&v88[qword_2A1A60EC8];
      v78 = sub_29E2C3164();
      v79 = [*&a2[qword_2A1A60E88] calendar];
      v80 = v90;
      sub_29E2BCDC4();

      v81 = sub_29E2BCD84();
      (*(v94 + 8))(v80, v87);
      v82 = HKMCTodayIndex();

      [v76 submitMetricForMethod:v77 loggedDayIndex:v78 currentDayIndex:v82];
      (v71[1])(v75, v74);
      goto LABEL_24;
    }

    v37 = *(a4 + 64 + 8 * v61);
    ++v35;
    if (v37)
    {
      while (1)
      {
        v62 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v63 = v62 | (v61 << 6);
        v64 = v99;
        v65.n128_f64[0] = v98(v12, *(v99 + 6) + v63 * v97, v101);
        *&v12[*(v100 + 48)] = *(v64[7] + 8 * v63);
        sub_29DF576D0(v12, v15, v65);
        if (sub_29E2C30E4())
        {
          sub_29DF5776C(v60, v66);
          sub_29DF576D0(v15, v60, v67);
          v35 = v61;
          if (!v37)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_29DF5776C(v15, v66);
          v35 = v61;
          if (!v37)
          {
            goto LABEL_17;
          }
        }

LABEL_16:
        v61 = v35;
      }
    }
  }

  __break(1u);
}

void sub_29DF55554(void *a1)
{
  v1 = a1;
  sub_29DF546F4();
}

void sub_29DF5559C(char *a1)
{
  v1 = *&a1[qword_2A1A60E98];
  *&a1[qword_2A1A60E98] = 4;
  v5 = a1;
  sub_29DF4E30C(v1);
  sub_29DF57584(v1);
  v2 = [v5 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }
}

uint64_t sub_29DF5564C()
{
  v1 = sub_29E2C2B34();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C2B54();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v9 = sub_29E2C3CF4();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_29DF57564;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B4C30;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF57C6C(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29DF56D40(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_29DF55934(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_29DF55990(void *a1)
{
  v1 = a1;
  sub_29DF5564C();
}

id sub_29DF559D8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a1;
  v24 = a6;
  v9 = sub_29E2BCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCB44();
  sub_29E2BCF44();
  v17 = a3;
  v18 = a4;
  v19 = v23;
  sub_29DF56DA4(v18, v16, v24, v12);
  v21 = v20;

  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);

  return v21;
}

id sub_29DF55BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_29E2BCB04();
  v10 = sub_29E2BCF24();
  v11 = [v5 calendarDataSource:a1 cellForItemIn:a2 date:v9 dayComponent:a4 indexPath:v10];

  return v11;
}

id sub_29DF55C5C(uint64_t a1, void *a2)
{
  v3 = sub_29E2C33A4();
  v4 = sub_29E2BCF24();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  return v5;
}

void sub_29DF55CF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29DF57348();
}

id sub_29DF55E5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29DF55EC4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29DF55EDC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29DF55F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

id sub_29DF55F94(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v37[1] = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF56D40(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v37 - v11;
  v13 = sub_29E2BCEA4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = v37 - v18;
  *&v4[qword_2A1A60E98] = 0;
  *&v4[qword_2A1A60EB8] = 0;
  *&v4[qword_2A1A60EA0] = 0;
  *&v4[qword_2A1A60EB0] = 0;
  *&v4[qword_2A1A60EA8] = 0;
  v20 = &v4[qword_2A1A60E90];
  v37[2] = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v22 = MEMORY[0x29EDCA1A0];
  *v20 = 0;
  *(v20 + 1) = KeyPath;
  *(v20 + 2) = v22;
  *(v20 + 3) = v22;
  *(v20 + 4) = 2;
  *&v4[qword_2A1A60EC0] = a1;
  *&v4[qword_2A1A60EC8] = a3;
  *&v4[qword_2A1A60ED0] = a2;
  v23 = a1;
  v24 = a3;
  v25 = [a2 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCC74();
  v26 = sub_29E2BCC84();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  sub_29E2BCE34();
  v27 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v28 = sub_29E2BCD84();
  v29 = [v27 initWithCalendar_];

  *&v4[qword_2A1A60E88] = v29;
  v30 = *(v14 + 16);
  v30(v16, v19, v13);
  sub_29DF56D40(0, &qword_2A1817C88, MEMORY[0x29EDC4370], MEMORY[0x29EDC9E90]);
  sub_29E2C2D04();
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  sub_29E2C2CE4();
  v31 = objc_allocWithZone(sub_29E2C2C44());
  v32 = sub_29E2C2C34();
  v33 = type metadata accessor for CalendarViewController(0);
  v38.receiver = v4;
  v38.super_class = v33;
  v34 = objc_msgSendSuper2(&v38, sel_initWithCollectionViewLayout_, v32);

  sub_29E2C2D74();
  sub_29DF57C6C(&qword_2A1819370, type metadata accessor for CalendarViewController, &unk_29E2D3390);
  v30(v16, v19, v13);
  v35 = v34;
  sub_29E2BCBA4();
  sub_29E2C2D34();
  sub_29E2C2DC4();

  (*(v14 + 8))(v19, v13);
  return v35;
}

void sub_29DF564B0()
{
  *(v0 + qword_2A1A60E98) = 0;
  *(v0 + qword_2A1A60EB8) = 0;
  *(v0 + qword_2A1A60EA0) = 0;
  *(v0 + qword_2A1A60EB0) = 0;
  *(v0 + qword_2A1A60EA8) = 0;
  v1 = v0 + qword_2A1A60E90;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *v1 = 0;
  v3 = MEMORY[0x29EDCA1A0];
  *(v1 + 8) = KeyPath;
  *(v1 + 16) = v3;
  *(v1 + 24) = v3;
  *(v1 + 32) = 2;
  sub_29E2C4724();
  __break(1u);
}

void sub_29DF56590(void *a1, uint64_t a2)
{
  v5 = sub_29E2C31A4();
  v33 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF56D40(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v28 - v9;
  sub_29DEC65FC(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CalendarDayCell();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v30 = qword_2A1A60E98;
    v31 = v5;
    v18 = *(v2 + qword_2A1A60E98);
    v19 = a1;
    v20 = v19;
    if (v18 == 1)
    {
      v29 = v19;
      v32 = v2;
      v21 = sub_29DF4E704();
      [v21 activeDayRange];

      sub_29E2C3AA4();
      if ((*(v13 + 48))(v10, 1, v12) == 1)
      {
        sub_29DF57880(v10, &qword_2A1A5E2A0, sub_29DEC65FC);
        v20 = v29;
      }

      else
      {
        sub_29DF578F0(v10, v15, sub_29DEC65FC);
        v22 = sub_29E2C2DB4();
        if (!v22)
        {
          __break(1u);
          return;
        }

        v23 = v22;
        sub_29E2C2D44();

        sub_29DEF60A0();
        v24 = v31;
        v25 = sub_29E2C32B4();
        v20 = v29;
        if (v25)
        {
          v26 = sub_29E2C3294();
          (*(v33 + 8))(v7, v24);
          if (v26)
          {
            v27 = *(v32 + v30);
            *(v32 + v30) = 2;
            sub_29DF4E30C(v27);
            sub_29DF57584(v27);
          }
        }

        else
        {
          (*(v33 + 8))(v7, v24);
        }

        sub_29DF57958(v15, sub_29DEC65FC);
      }
    }

    sub_29DF523AC(v17, a2, 0);
  }
}

void sub_29DF56938()
{
  if (*(v0 + qword_2A1A60E98) != 2)
  {
    return;
  }

  v1 = sub_29E2BCF94();
  v2 = sub_29E2C2DE4();
  v3 = sub_29E2C2C04();

  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v1 == 0x8000000000000000 && v3 == -1)
  {
    goto LABEL_11;
  }

  if (!(v1 % v3))
  {

    sub_29DF528FC();
  }
}

id sub_29DF569E8()
{
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_2A1A60E98];
  *&v0[qword_2A1A60E98] = 3;
  sub_29DF4E30C(v9);
  sub_29DF57584(v9);
  result = [v0 collectionView];
  if (result)
  {
    v11 = result;
    result = sub_29E2C2DB4();
    if (result)
    {
      v12 = result;
      sub_29E2BCBA4();
      sub_29E2C2D54();

      (*(v2 + 8))(v4, v1);
      v13 = sub_29E2BCF24();
      (*(v6 + 8))(v8, v5);
      [v11 scrollToItemAtIndexPath:v13 atScrollPosition:2 animated:1];

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DF56BE4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x29EDC8048];
  sub_29E2C2DA4();
  v5 = v4;
  sub_29E2C2D94();
  v6 = sub_29E2C33A4();

  v7 = sub_29E2BCF24();
  v8 = [a1 dequeueReusableSupplementaryViewOfKind:v5 withReuseIdentifier:v6 forIndexPath:v7];

  v9 = swift_dynamicCastClassUnconditional();
  v10 = sub_29DF4E8D4();
  v11 = sub_29E2BCB04();
  v12 = [v10 stringFromDate_];

  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C2D84();

  return v9;
}

void sub_29DF56D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DF56DA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_29DF56D40(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v41 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v41 - v15;
  v17 = sub_29E2C31A4();
  v42 = *(v17 - 8);
  v43 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29DF9B104(a2);
  v21 = sub_29DF4E860();
  v22 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v23 = [v21 stringFromNumber_];

  if (!v23)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v26 = v25;

  v53[0] = v20;
  v54 = v24;
  v55 = v26;
  v56 = 0;
  v57 = 2;
  v58 = 0;
  v59 = 0;
  v46[0] = v20;
  v47 = v24;
  v48 = v26;
  v49 = 0;
  v50 = 2;
  v51 = 0;
  v52 = 0;
  sub_29DEA6950(v53, &v44);
  sub_29DEA69AC(v46);
  v27 = sub_29E2C33A4();

  v28 = sub_29E2BCF24();
  v29 = [a1 dequeueReusableCellWithReuseIdentifier:v27 forIndexPath:v28];

  type metadata accessor for CalendarDayCell();
  v30 = swift_dynamicCastClassUnconditional();
  (*((*MEMORY[0x29EDCA1E8] & *v30) + 0x118))(v53, 0);
  if (*(v5 + qword_2A1A60E98) != 2)
  {
    sub_29DEA69AC(v53);
    return;
  }

  v31 = sub_29E2C2DB4();
  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = v31;
  sub_29DEA69AC(v53);
  sub_29E2C2D44();

  v33 = sub_29DF4E704();
  [v33 activeDayRange];

  sub_29E2C3AA4();
  sub_29DEC65FC(0);
  if ((*(*(v34 - 8) + 48))(v16, 1, v34))
  {
    sub_29DF57800(v16, v13, &qword_2A1A5E2A0, sub_29DEC65FC);
    v35 = *(v5 + qword_2A1A60EA0);
    sub_29DF57800(v13, v41, &qword_2A1A5E2A0, sub_29DEC65FC);
    v36 = v35;
    v44 = [v36 activeDayRange];
    v45 = v37;
    sub_29E2C3AB4();
    [v36 setActiveDayRange_];

    sub_29DF57880(v13, &qword_2A1A5E2A0, sub_29DEC65FC);
  }

  else
  {
    sub_29E18A4C0(v19);
    v38 = *(v5 + qword_2A1A60EA0);
    sub_29DF57800(v16, v13, &qword_2A1A5E2A0, sub_29DEC65FC);
    v39 = v38;
    v44 = [v39 activeDayRange];
    v45 = v40;
    sub_29E2C3AB4();
    [v39 setActiveDayRange_];
  }

  (*(v42 + 8))(v19, v43);
  sub_29DF57880(v16, &qword_2A1A5E2A0, sub_29DEC65FC);
}

void sub_29DF57348()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v5 = v0;
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29DF5751C();
    v10 = sub_29E2C3424();
    v12 = sub_29DFAA104(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Received viewModelProviderDidUpdate", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  sub_29DF53BD0(1);
}

unint64_t sub_29DF5751C()
{
  result = qword_2A1819378;
  if (!qword_2A1819378)
  {
    type metadata accessor for CalendarViewController(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1819378);
  }

  return result;
}

uint64_t sub_29DF5756C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DF57584(id a1)
{
  if (a1 >= 5)
  {
  }
}

id sub_29DF57594(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_29DF575AC(uint64_t a1)
{
  if (!qword_2A1819380)
  {
    sub_29E2C31A4();
    type metadata accessor for HKMCDaySummaryBleedingFlow(255);
    sub_29DF57C6C(&qword_2A181DCA0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA300]);
    v1 = sub_29E2C3234();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819380);
    }
  }
}

void sub_29DF57668(uint64_t a1)
{
  if (!qword_2A1A5DFD0)
  {
    sub_29DEB1BC4(255, &qword_2A1A61C90, MEMORY[0x29EDC9F18]);
    v1 = sub_29E2C4304();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5DFD0);
    }
  }
}

uint64_t sub_29DF576D0(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_29DF57AEC(0, &qword_2A1819388, MEMORY[0x29EDBA2F8], type metadata accessor for HKMCDaySummaryBleedingFlow, "key value ");
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF5776C(uint64_t a1, __n128 a2)
{
  sub_29DF57AEC(0, &qword_2A1819388, MEMORY[0x29EDBA2F8], type metadata accessor for HKMCDaySummaryBleedingFlow, "key value ");
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF57800(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DF56D40(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29DF57880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DF56D40(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DF578F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF57958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DF579B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_29DF57A38()
{
  result = qword_2A18193A0;
  if (!qword_2A18193A0)
  {
    sub_29DEC65FC(255);
    sub_29DF57AB8();
    sub_29DEDBA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18193A0);
  }

  return result;
}

void sub_29DF57AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29DF57B74(uint64_t a1, uint64_t a2)
{
  sub_29DF57AEC(0, &qword_2A18193A8, sub_29DEB523C, MEMORY[0x29EDBA2F8], "index value ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF57C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29DF579B8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29DF57C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF57CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF57D34(unsigned __int8 a1)
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v12[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  return v10;
}

unint64_t sub_29DF57F4C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29DF58B80(*a1);
  *a2 = result;
  return result;
}

void sub_29DF57FB4(SEL *a1, const char *a2, ...)
{
  v5 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PeriodAndCycleLengthModel_healthStore);
  v6 = sub_29DF580B0(a1, a2);

  if (v6)
  {
    v7 = [objc_opt_self() dayUnit];
    [v6 doubleValueForUnit_];
    v9 = v8;
    v10 = v8;

    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_29DF580B0(SEL *a1, const char *a2)
{
  v5 = v2;
  v31[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  result = [v5 *a1];
  v12 = v31[0];
  if (v31[0])
  {
    v30 = result;
    v13 = v31[0];
    sub_29E2C04B4();
    v14 = v13;
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A14();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v7;
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = a2;
      v21 = v20;
      v31[0] = v20;
      *v18 = 136446466;
      v22 = sub_29E2C4AE4();
      v24 = sub_29DFAA104(v22, v23, v31);
      v28 = v6;
      v25 = v24;

      *(v18 + 4) = v25;
      *(v18 + 12) = 2114;
      *(v18 + 14) = v14;
      *v19 = v12;
      v26 = v14;
      _os_log_impl(&dword_29DE74000, v15, v16, v27, v18, 0x16u);
      sub_29DF58A90(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      sub_29DE93B3C(v21);
      MEMORY[0x29ED82140](v21, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);

      (*(v29 + 8))(v10, v28);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return v30;
  }

  return result;
}

double sub_29DF58368(uint64_t a1, char a2, SEL *a3, const char *a4, ...)
{
  v7 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PeriodAndCycleLengthModel_healthStore);
  if (a2)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = v7;
    v13 = [v11 dayUnit];
    v14 = [objc_opt_self() quantityWithUnit:v13 doubleValue:a1];

    v9 = v14;
  }

  sub_29DF584A0(v9, a3, a4);

  sub_29DF58A38();
  sub_29E2C1084();
  sub_29E2C1124();

  return result;
}

void sub_29DF584A0(void *a1, SEL *a2, const char *a3)
{
  v6 = v3;
  v33[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = 0;
  if ([v6 *a2])
  {
    v13 = v33[0];
  }

  else
  {
    v14 = v33[0];
    v15 = sub_29E2BC7E4();

    swift_willThrow();
    sub_29E2C04B4();
    v16 = v15;
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A14();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v9;
      v20 = v19;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = a3;
      v23 = v22;
      v33[0] = v22;
      *v20 = 136446466;
      v24 = sub_29E2C4AE4();
      v26 = sub_29DFAA104(v24, v25, v33);
      v31 = v8;
      v27 = v26;

      *(v20 + 4) = v27;
      *(v20 + 12) = 2114;
      v28 = v15;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v29;
      *v21 = v29;
      _os_log_impl(&dword_29DE74000, v17, v18, v30, v20, 0x16u);
      sub_29DF58A90(v21);
      MEMORY[0x29ED82140](v21, -1, -1);
      sub_29DE93B3C(v23);
      MEMORY[0x29ED82140](v23, -1, -1);
      MEMORY[0x29ED82140](v20, -1, -1);

      (*(v32 + 8))(v12, v31);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_29DF58770()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PeriodAndCycleLengthModel__periodAndCycleLengthRows;
  sub_29DF58B1C(0, &qword_2A18193E0, sub_29DF58980, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeriodAndCycleLengthModel(uint64_t a1)
{
  result = qword_2A18193D0;
  if (!qword_2A18193D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF588B0(uint64_t a1)
{
  sub_29DF58B1C(319, &qword_2A18193E0, sub_29DF58980, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29DF58980()
{
  if (!qword_2A18193E8)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18193E8);
    }
  }
}

unint64_t sub_29DF589E4()
{
  result = qword_2A18193F0;
  if (!qword_2A18193F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18193F0);
  }

  return result;
}

unint64_t sub_29DF58A38()
{
  result = qword_2A18193F8;
  if (!qword_2A18193F8)
  {
    type metadata accessor for PeriodAndCycleLengthModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18193F8);
  }

  return result;
}

uint64_t sub_29DF58A90(uint64_t a1)
{
  sub_29DF58B1C(0, &qword_2A1A619E0, sub_29DE9A5B4, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DF58B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DF58B80(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_29DF58BA0(CGContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v93 = a4;
  v103 = a3;
  v14 = a5.n128_f64[0];
  v102 = type metadata accessor for CycleChartDay(0);
  MEMORY[0x2A1C7C4A8](v102);
  v101 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2C31A4();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v100 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v108 = v91 - v21;
  sub_29DF5A53C(0);
  v105 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB978(0);
  MEMORY[0x2A1C7C4A8](v25 - 8);
  v27 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v104 = v91 - v29;
  MEMORY[0x2A1C7C4A8](v30);
  v92 = v91 - v31;
  MEMORY[0x2A1C7C4A8](v32);
  v34 = v91 - v33;
  sub_29DF5A460(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v35 - 8);
  v111 = v91 - v36;
  sub_29DEFCC2C(0);
  v97 = v37;
  MEMORY[0x2A1C7C4A8](v37);
  v39 = v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF5A5A0(0);
  v41 = v40 - 8;
  MEMORY[0x2A1C7C4A8](v40);
  v43 = v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a1;
  CGContextSaveGState(a1);
  v116.origin.x = v14;
  v116.origin.y = a6;
  v116.size.width = a7;
  v116.size.height = a8;
  MinX = CGRectGetMinX(v116);
  v117.origin.x = v14;
  v117.origin.y = a6;
  v117.size.width = a7;
  v117.size.height = a8;
  MinY = CGRectGetMinY(v117);
  v118.origin.x = v14;
  v118.origin.y = a6;
  v118.size.width = a7;
  v118.size.height = a8;
  Height = CGRectGetHeight(v118);
  v47 = type metadata accessor for CycleChartCycle(0);
  sub_29E02CAF8((a2 + *(v47 + 24)), v39);
  sub_29DF5A714(v39, v43, sub_29DEFCC2C);
  v48 = *(v41 + 44);
  v49 = *(v18 + 16);
  v96 = v18 + 16;
  v95 = v49;
  v49(&v43[v48], v39, v17);
  sub_29DF5A6B4(v39, sub_29DEFCC2C);
  v51 = *(v18 + 56);
  v50 = v18 + 56;
  v113 = v51;
  v114 = v43;
  v112 = v48;
  v51(&v43[v48], 0, 1, v17);
  v52 = (v50 - 8);
  v109 = (v50 - 24);
  v110 = (v50 - 48);
  v91[2] = "ckground (Cycle Chart)";
  v91[1] = "SETTINGS_PERIOD_LENGTH";
  width = a9;
  v99 = v24;
  v98 = v27;
  v106 = v34;
  v107 = (v50 - 8);
  while (1)
  {
    v113(v34, 1, 1, v17);
    v54 = *(v105 + 48);
    sub_29DF5A714(&v114[v112], v24, sub_29DEDB978);
    sub_29DF5A714(v34, &v24[v54], sub_29DEDB978);
    v55 = *v52;
    if ((*v52)(v24, 1, v17) == 1)
    {
      sub_29DF5A6B4(v34, sub_29DEDB978);
      if (v55(&v24[v54], 1, v17) == 1)
      {
        sub_29DF5A6B4(v114, sub_29DF5A5A0);
        v89 = sub_29DEDB978;
        v90 = v24;
LABEL_27:
        sub_29DF5A6B4(v90, v89);
        v113(v111, 1, 1, v17);
        CGContextRestoreGState(v94);
        return;
      }

      goto LABEL_9;
    }

    v56 = v92;
    sub_29DF5A714(v24, v92, sub_29DEDB978);
    if (v55(&v24[v54], 1, v17) == 1)
    {
      sub_29DF5A6B4(v34, sub_29DEDB978);
      (*v110)(v56, v17);
LABEL_9:
      sub_29DF5A6B4(v24, sub_29DF5A53C);
      goto LABEL_11;
    }

    v57 = &v24[v54];
    v58 = v108;
    (*v109)(v108, v57, v17);
    sub_29DF5A7E0(&qword_2A18199C0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
    v59 = sub_29E2C3304();
    v60 = *v110;
    (*v110)(v58, v17);
    sub_29DF5A6B4(v106, sub_29DEDB978);
    v60(v56, v17);
    sub_29DF5A6B4(v24, sub_29DEDB978);
    if (v59)
    {
      v89 = sub_29DF5A5A0;
      v90 = v114;
      goto LABEL_27;
    }

LABEL_11:
    v61 = v114;
    v62 = v112;
    v63 = v104;
    sub_29DF5A714(&v114[v112], v104, sub_29DEDB978);
    if (v55(v63, 1, v17) == 1)
    {
      goto LABEL_29;
    }

    v64 = *v109;
    (*v109)(v111, v63, v17);
    sub_29DF5A77C(v61 + v62, v27);
    if (v55(v27, 1, v17) == 1)
    {
      break;
    }

    v65 = v100;
    v64(v100, v27, v17);
    sub_29DF5A7E0(&qword_2A18199C0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
    v66 = sub_29E2C3304();
    v67 = v110;
    if (v66)
    {
      v68 = v65;
      v69 = *v110;
      (*v110)(v68, v17);
      v70 = 1;
    }

    else
    {
      v115 = 1;
      sub_29DF5A7E0(&unk_2A18199E0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
      sub_29E2C4334();
      v71 = v65;
      v69 = *v67;
      (*v67)(v71, v17);
      v70 = 0;
    }

    v72 = v113;
    v113((v61 + v62), v70, 1, v17);
    v73 = v111;
    v74 = v50;
    v72(v111, 0, 1, v17);
    v75 = v108;
    v64(v108, v73, v17);
    v76 = *(v103 + 16);
    v77 = v101;
    v95(v101, v75, v17);
    v78 = [v76 dayViewModelAtIndex_];
    *(v77 + *(type metadata accessor for CycleDay(0) + 20)) = v78;
    v79 = v78;
    sub_29E2C2CB4();
    v69(v75, v17);
    v80 = [v79 fertileWindowLevel];

    sub_29DF5A6B4(v77, type metadata accessor for CycleChartDay);
    if ((v80 - 1) >= 2)
    {
      v24 = v99;
      v52 = v107;
      if (v80 != 3)
      {
        v50 = v74;
        v27 = v98;
        goto LABEL_3;
      }

      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v84 = qword_2A1A67F80;
      v85 = sub_29E2C33A4();
      v83 = [objc_opt_self() colorNamed:v85 inBundle:v84 compatibleWithTraitCollection:0];

      v27 = v98;
      if (!v83)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v24 = v99;
      v52 = v107;
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v81 = qword_2A1A67F80;
      v82 = sub_29E2C33A4();
      v83 = [objc_opt_self() colorNamed:v82 inBundle:v81 compatibleWithTraitCollection:0];

      v27 = v98;
      if (!v83)
      {
        goto LABEL_30;
      }
    }

    v50 = v74;
    v86 = [v83 resolvedColorWithTraitCollection_];

    v87 = [v86 CGColor];
    v88 = v94;
    CGContextSetFillColorWithColor(v94, v87);

    v121.origin.x = MinX;
    v121.origin.y = MinY;
    v121.size.width = width;
    v121.size.height = Height;
    CGContextFillRect(v88, v121);
LABEL_3:
    v34 = v106;
    v119.origin.x = MinX;
    v119.origin.y = MinY;
    v119.size.width = width;
    v119.size.height = Height;
    v120 = CGRectOffset(v119, a9, 0.0);
    MinX = v120.origin.x;
    MinY = v120.origin.y;
    width = v120.size.width;
    Height = v120.size.height;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t sub_29DF598BC()
{
  sub_29DF5A3A0(0, &qword_2A1817FD0, &qword_2A181CDD0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v1 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v2 = *MEMORY[0x29EDC80F8];
  v3 = *MEMORY[0x29EDC76C8];
  v4 = MEMORY[0x29EDC7700];
  v5 = objc_opt_self();
  v6 = v1;
  v7 = [v5 preferredFontDescriptorWithTextStyle_];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = *v4;
  v11 = [v7 fontDescriptorWithDesign_];
  if (v11)
  {
    v12 = v11;

    v7 = v12;
  }

  sub_29DF5A3A0(0, &qword_2A1819158, &qword_2A1819160, type metadata accessor for AttributeName);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_29E2CAB20;
  v14 = *MEMORY[0x29EDC76D0];
  *(v13 + 32) = *MEMORY[0x29EDC76D0];
  sub_29DF5A460(0, &qword_2A1819168, sub_29DF38418, MEMORY[0x29EDC9E90]);
  v15 = swift_initStackObject();
  v16 = MEMORY[0x29EDC7708];
  *(v15 + 16) = xmmword_29E2CAB20;
  v17 = *v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = v10;
  v18 = v14;
  v19 = v17;
  v20 = sub_29E1852C8(v15);
  swift_setDeallocating();
  sub_29DF5A6B4(v15 + 32, sub_29DF38418);
  sub_29DF38488(0);
  *(v13 + 64) = v21;
  *(v13 + 40) = v20;
  sub_29E1853AC(v13);
  swift_setDeallocating();
  sub_29DF5A4C4(v13 + 32);
  type metadata accessor for AttributeName(0);
  sub_29DF5A7E0(&qword_2A18177E0, type metadata accessor for AttributeName, &unk_29E2CCFA4);
  v22 = sub_29E2C31F4();

  v23 = [v7 fontDescriptorByAddingAttributes_];

  v24 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
  v25 = sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  *(inited + 40) = v24;
  v26 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v25;
  *(inited + 72) = v26;
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 secondaryLabelColor];
  *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
  *(inited + 80) = v29;
  v30 = sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DF5A3F8(0, &qword_2A181CDD0, type metadata accessor for Key);
  swift_arrayDestroy();
  return v30;
}

void sub_29DF59CB8(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = [objc_opt_self() systemGray3Color];
  CGContextSaveGState(a1);
  v12 = [v22 resolvedColorWithTraitCollection_];
  [a2 displayScale];
  v14 = 1.0 / v13;
  v15 = 1.0 / v13 * 0.5;
  sub_29DF5A460(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CD7A0;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  v17 = CGRectGetMaxX(v24) - v15;
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MinY = CGRectGetMinY(v25);
  *(v16 + 32) = v17;
  *(v16 + 40) = MinY;
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v19 = CGRectGetMaxX(v26) - v15;
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  MaxY = CGRectGetMaxY(v27);
  *(v16 + 48) = v19;
  *(v16 + 56) = MaxY;
  v21 = [v12 CGColor];
  CGContextSetStrokeColorWithColor(a1, v21);

  CGContextSetLineWidth(a1, v14);
  sub_29E2C38F4();

  CGContextRestoreGState(a1);
}

double sub_29DF59EEC(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_opt_self() systemBackgroundColor];
  v13 = [v12 resolvedColorWithTraitCollection_];

  CGContextSaveGState(a1);
  v14 = [v13 CGColor];
  CGContextSetFillColorWithColor(a1, v14);

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGContextFillRect(a1, v17);
  CGContextRestoreGState(a1);

  sub_29DF59CB8(a1, a2, a3, a4, a5, a6);

  return sub_29DF5A1D4(a1, a2, a3, a4, a5, a6);
}

double sub_29DF5A018()
{
  v0 = sub_29E2BCBB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCB54();
  sub_29E2BCB84();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v5 = sub_29E2C33A4();

  v6 = [v4 initWithString_];

  sub_29DF598BC();
  type metadata accessor for Key(0);
  sub_29DF5A7E0(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
  v7 = sub_29E2C31F4();

  [v6 sizeWithAttributes_];
  v9 = v8;

  return v9 + 4.0 + 4.0;
}

double sub_29DF5A1D4(CGContext *a1, id a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  [a2 displayScale];
  v13 = 1.0 / v12;
  v14 = 1.0 / v12 * 0.5;
  v15 = [objc_opt_self() systemGrayColor];
  v16 = [v15 resolvedColorWithTraitCollection_];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(a1, v17);

  CGContextSetLineWidth(a1, v13);
  sub_29DF5A460(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CD7A0;
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  MinY = CGRectGetMinY(v26);
  *(v18 + 32) = MinX;
  *(v18 + 40) = v14 + MinY;
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  v22 = CGRectGetMinY(v28);
  *(v18 + 48) = MaxX;
  *(v18 + 56) = v14 + v22;
  sub_29E2C38F4();

  return result;
}

void sub_29DF5A3A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29DF5A3F8(255, a3, a4);
    v5 = sub_29E2C48E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29DF5A3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29DF5A460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF5A4C4(uint64_t a1)
{
  sub_29DF5A3F8(0, &qword_2A1819160, type metadata accessor for AttributeName);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DF5A53C(uint64_t a1)
{
  if (!qword_2A1819400)
  {
    sub_29DEDB978(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1819400);
    }
  }
}

void sub_29DF5A5A0(uint64_t a1)
{
  if (!qword_2A1819408)
  {
    sub_29DEFCC2C(255);
    sub_29DF5A604();
    v1 = sub_29E2C46D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819408);
    }
  }
}

unint64_t sub_29DF5A604()
{
  result = qword_2A1819410;
  if (!qword_2A1819410)
  {
    sub_29DEFCC2C(255);
    sub_29DF5A7E0(&unk_2A18199E0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
    sub_29DEDBA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819410);
  }

  return result;
}

uint64_t sub_29DF5A6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DF5A714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF5A77C(uint64_t a1, uint64_t a2)
{
  sub_29DEDB978(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF5A7E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_29DF5A82C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29DF5A88C(a1);
  }

  return result;
}

double sub_29DF5A88C(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 1];
  sub_29E2C04B4();

  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A04();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = a1;
    v12 = v11;
    v28[0] = v11;
    *v10 = 136446466;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, v28);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v27[0] = *(v2 + 72);
    v16 = sub_29E2C3424();
    v18 = sub_29DFAA104(v16, v17, v28);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Received model update, applying new snapshot for sectionStyle: %s", v10, 0x16u);
    swift_arrayDestroy();
    v19 = v12;
    a1 = v26;
    MEMORY[0x29ED82140](v19, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = *(v2 + 64);
  v28[3] = type metadata accessor for CycleLogNavigationHandler();
  v28[4] = &off_2A24C20B8;
  v28[0] = v20;
  v21 = type metadata accessor for CycleLogModel(0);
  if (*(a1 + *(v21 + 32)) == 1)
  {

    v22 = MEMORY[0x29EDCA190];
  }

  else
  {
    v23 = *a1;
    MEMORY[0x2A1C7C4A8](v21);
    *(&v26 - 2) = a1;
    *(&v26 - 1) = v28;

    sub_29E248D48(sub_29DF04F98, (&v26 - 4), v23);
    v22 = v24;
  }

  sub_29DE93B3C(v28);
  sub_29E001D60(*(v22 + 16) == 0);
  sub_29E2BE5F4();
  sub_29E2BEC74();

  sub_29E2BE5F4();
  sub_29E2BEC84();

  return result;
}

double sub_29DF5ABD0()
{

  return result;
}

uint64_t sub_29DF5AC08()
{

  return swift_deallocClassInstance();
}

void sub_29DF5ACAC(uint64_t a1)
{
  v4 = sub_29E2C0AD4();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29E2C0AB4();
  v6 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C0B44();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v34 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CycleLogModel(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = v1;

  v33 = a1;
  v14 = sub_29E2BF0A4();
  sub_29E2C10E4();

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = *v13;
    if (v14 < *(*v13 + 16))
    {
      v28[1] = v2;
      v16 = *(v15 + v14 + 32);
      sub_29DF5B6EC(v13);

      sub_29E2C10E4();

      v17 = *v13;
      sub_29E2BF404();
      sub_29DF5B6EC(v13);
      v18 = *(v17 + 16);
      do
      {
        v19 = v18;
        if (!v18)
        {
          break;
        }

        --v18;
      }

      while (*(v17 + v19 + 31) != v16);

      sub_29E2C10E4();

      v20 = *v13;
      sub_29E2BF404();
      sub_29DF5B6EC(v13);
      v21 = *(v20 + 16);

      if (v19)
      {
        v22 = v18 == v21 - 2;
      }

      else
      {
        v22 = 0;
      }

      v23 = !v22;
      (*(v6 + 104))(v8, *MEMORY[0x29EDC7848], v32);
      v24 = v34;
      sub_29E2C0AE4();
      if (((1 << v16) & 6) != 0 || ((1 << v16) & 9) != 0)
      {
        (*(v30 + 104))(v29, *MEMORY[0x29EDC7860], v31);
        sub_29E2C0B04();
      }

      else
      {
        (*(v30 + 104))(v29, *MEMORY[0x29EDC7868], v31);
        sub_29E2C0B04();
        sub_29E2C0B24();
      }

      v25 = [objc_opt_self() systemBackgroundColor];
      sub_29E2C0B14();
      sub_29DE9408C(0, &qword_2A1819BB0, 0x29EDC0BA8);
      sub_29E2BF074();
      v26 = sub_29E2C3F34();
      swift_unknownObjectRelease();
      if (v16 < 4)
      {
        if (!v23)
        {
LABEL_25:
          (*(v35 + 8))(v24, v36);
          return;
        }

        [v26 contentInsets];
      }

      else
      {
        if (v16 == 4)
        {
          v27 = v28[0];
          if (*(v28[0] + 72) != 1)
          {
            sub_29E2BF084();
          }

          [v26 contentInsets];
          [v26 setContentInsets_];
          if (*(v27 + 72) <= 1u)
          {
            [v26 setInterGroupSpacing_];
          }

          goto LABEL_25;
        }

        [v26 contentInsets];
        [v26 setContentInsets_];
        [v26 contentInsets];
      }

      [v26 setContentInsets_];
      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_29DF5B254(unint64_t a1)
{
  v2 = type metadata accessor for CycleLogModel(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_29E2C10E4();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v4 + 16) > a1)
  {
    sub_29DF5B6EC(v4);
    return;
  }

  __break(1u);
}

void sub_29DF5B32C(void *a1)
{
  type metadata accessor for CycleLogDataCell();
  sub_29DF5B748(&qword_2A1819418, type metadata accessor for CycleLogDataCell, &unk_29E2E8E0C);
  sub_29E2C3B74();
  sub_29E2BF5A4();
  sub_29E2C3B74();
  type metadata accessor for CycleLogSubheader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = *MEMORY[0x29EDC8048];
  sub_29DF5B748(&qword_2A18180F0, type metadata accessor for CycleLogSubheader, &unk_29E2CE674);
  v4 = v3;
  sub_29E2BE2B4();
  v5 = sub_29E2C33A4();

  [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
}

void sub_29DF5B484(uint64_t a1@<X8>)
{
  v2 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = type metadata accessor for CycleLogModel(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = sub_29E2BCFA4();
  sub_29E2C10E4();

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 >= *(*v5 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(*v5 + v6 + 32);
  if (v7 >= 3)
  {
    if (v7 - 4 >= 2)
    {
      *(a1 + 24) = &type metadata for CycleTrackingSubheaderItem;
      *(a1 + 32) = sub_29DEC3708();
      *a1 = 2;
      sub_29DF5B6EC(v5);
    }

    else
    {
      sub_29DF5B6EC(v5);
      sub_29E2C0844();
      v8 = sub_29E2BE0B4();
      swift_allocObject();
      v9 = sub_29E2BE094();
      *(a1 + 24) = v8;
      *(a1 + 32) = sub_29DF5B748(&unk_2A181CC00, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
      *a1 = v9;
    }
  }

  else
  {
    sub_29DF5B6EC(v5);
    *(a1 + 24) = &type metadata for CycleTrackingSubheaderItem;
    *(a1 + 32) = sub_29DEC3708();
    *a1 = 0;
  }
}

uint64_t sub_29DF5B6EC(uint64_t a1)
{
  v2 = type metadata accessor for CycleLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DF5B748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29DF5B790(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v3;
      v3 = v16;
      v31[0] = v16;
      *v15 = 136446466;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, v31);
      v28 = v4;
      v20 = v19;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v21 = v29 & 1;
      v30 = v29 & 1;
      v22 = sub_29E2C3464();
      v24 = sub_29DFAA104(v22, v23, v31);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Received onboarding completion update to: %s", v15, 0x16u);
      swift_arrayDestroy();
      v25 = v3;
      LOBYTE(v3) = v29;
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);

      (*(v5 + 8))(v7, v28);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      v21 = v3 & 1;
    }

    v26 = sub_29E2C10D4();
    *(v27 + *(type metadata accessor for CycleLogModel(0) + 32)) = (v3 & 1) == 0;
    v26(v31, 0);

    *(*(v2 + 64) + 144) = v21;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29DF5BB44(uint64_t a1, __n128 a2)
{
  sub_29DEDB904(0, a2);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC65FC(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v20 - v13;
  sub_29DF5BDA8(a1, v6, sub_29DEDB904);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_29DF5BE10(a1, sub_29DEDB904);
    v15 = v6;
    v16 = sub_29DEDB904;
  }

  else
  {
    sub_29DF5BD44(v6, v14);
    sub_29DF5BDA8(v14, v11, sub_29DEC65FC);
    v17 = sub_29E2C3AD4();
    [v2 setActiveDayRange_];
    sub_29DF5BE10(a1, sub_29DEDB904);
    v15 = v14;
    v16 = sub_29DEC65FC;
  }

  return sub_29DF5BE10(v15, v16);
}

uint64_t sub_29DF5BD44(uint64_t a1, uint64_t a2)
{
  sub_29DEC65FC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF5BDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF5BE10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29DF5BE84()
{
  result = qword_2A1819420;
  if (!qword_2A1819420)
  {
    sub_29DF5C17C(255, &qword_2A1819428, &type metadata for PeriodAndCycleLengthPickerRow, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819420);
  }

  return result;
}

int64_t sub_29DF5BF00(char a1)
{
  v1 = &unk_2A181B780;
  v2 = MEMORY[0x29EDC9BA8];
  if (a1)
  {
    sub_29DF5C17C(0, &unk_2A181B780, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v3 = swift_allocObject();
    result = j__malloc_size(v3);
    v5 = result - 32;
    if (result < 32)
    {
      v5 = result - 25;
    }

    v3[2] = 81;
    v3[3] = 2 * (v5 >> 3);
    v6 = 10;
    v7 = 4;
    while (1)
    {
      if (v6 == 90)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          return result;
        }
      }

      v3[v7] = v6;
      if (v7 == 84)
      {
        goto LABEL_15;
      }

      ++v7;
      v9 = v6 == 90;
      v6 = v8;
      if (v9)
      {
        __break(1u);
        break;
      }
    }
  }

  sub_29DF5C17C(0, v1, v2, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  v10 = j__malloc_size(v3);
  v11 = v10 - 32;
  if (v10 < 32)
  {
    v11 = v10 - 25;
  }

  v3[2] = 20;
  v3[3] = 2 * (v11 >> 3);
  v3[4] = 1;
  v3[5] = 2;
  v3[6] = 3;
  v3[7] = 4;
  v3[8] = 5;
  v3[9] = 6;
  v3[10] = 7;
  v3[11] = 8;
  v3[12] = 9;
  v3[13] = 10;
  v3[14] = 11;
  v3[15] = 12;
  v3[16] = 13;
  v3[17] = 14;
  v3[18] = 15;
  v3[19] = 16;
  v3[20] = 17;
  v3[21] = 18;
  v3[22] = 19;
  v3[23] = 20;
LABEL_15:
  v12 = sub_29E13D864(v3);

  v13 = *(v12 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v13 >= *(v12 + 24) >> 1)
  {
    v12 = sub_29E1441FC(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v12);
  }

  sub_29E14D64C(0, 0, 1, 0, 1);
  return v12;
}

void *sub_29DF5C0F4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_29DF5C128()
{
  result = qword_2A1819430;
  if (!qword_2A1819430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819430);
  }

  return result;
}

void sub_29DF5C17C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29DF5C1CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_29DF5C458()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell____lazy_storage___xMarkButton;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell____lazy_storage___xMarkButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell____lazy_storage___xMarkButton);
  }

  else
  {
    v4 = sub_29E12097C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29DF5C528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell____lazy_storage___xMarkButton] = 0;
  if (a3)
  {
    v7 = sub_29E2C33A4();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for EndDateTableViewCell();
  v8 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, a1, v7);

  v9 = v8;
  v10 = sub_29DF5C458();
  [v10 addTarget:v9 action:sel_dateXButtonPressedWithSender_event_ forControlEvents:64];

  v11 = *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell____lazy_storage___xMarkButton];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 lightGrayColor];
  [v13 setTintColor_];

  return v9;
}

void sub_29DF5C76C()
{
  sub_29DEF95F0(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_item, &qword_2A18180D8, &qword_2A181CC80, MEMORY[0x29EDC1910]);
  sub_29DE8EDC0(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell____lazy_storage___xMarkButton);
}

id sub_29DF5C7EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29DF5C8BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29DF5C914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_item;
  swift_beginAccess();
  sub_29DEF9180(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_29DF5C9D4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20EndDateTableViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v8);
  if (!v9)
  {
    sub_29DEF95F0(v8, &qword_2A18180D8, &qword_2A181CC80, MEMORY[0x29EDC1910]);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    return sub_29DEF95F0(&v10, &qword_2A1819450, &qword_2A1819458, &protocol descriptor for EndDateTableViewCellHandler);
  }

  sub_29DEB1BC4(0, &qword_2A181CC80, MEMORY[0x29EDC1910]);
  sub_29DEB1BC4(0, &qword_2A1819458, &protocol descriptor for EndDateTableViewCellHandler);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_29DEF95F0(&v10, &qword_2A1819450, &qword_2A1819458, &protocol descriptor for EndDateTableViewCellHandler);
  }

  if (!*(&v11 + 1))
  {
    return sub_29DEF95F0(&v10, &qword_2A1819450, &qword_2A1819458, &protocol descriptor for EndDateTableViewCellHandler);
  }

  v6 = sub_29DE966D4(&v10, *(&v11 + 1));
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_29E27BAE8(v6);
    swift_unknownObjectRelease();
  }

  return sub_29DE93B3C(&v10);
}

void sub_29DF5CB68(unint64_t a1)
{
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v50 - v8;
  MEMORY[0x2A1C7C4A8](v10);
  v68 = &v50 - v11;
  v12 = type metadata accessor for CycleFactorsSectionViewModel(0);
  v64 = *(v12 - 8);
  v65 = v12;
  *&v13 = MEMORY[0x2A1C7C4A8](v12).n128_u64[0];
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [v1 ongoingCycleFactors];
  sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
  sub_29E2C3614();

  v17 = sub_29E2BF404();
  v69 = sub_29E14DC04(v17);
  sub_29DF5D0F8(&v69);

  if ((v69 & 0x8000000000000000) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = (v69 >> 62) & 1;
  }

  v19 = v69;
  if (v18 == 1)
  {
    goto LABEL_31;
  }

  v20 = *(v69 + 16);
  if (v20)
  {
    while (1)
    {
      v69 = MEMORY[0x29EDCA190];
      sub_29E181790(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        break;
      }

      v57 = v20;
      v21 = v69;
      if (v18)
      {
        v22 = sub_29E2C4484();
        v23 = v19;
        v24 = v22;
      }

      else
      {
        v23 = v19;
        v24 = *(v19 + 16);
      }

      v62 = v23 & 0xC000000000000001;
      v53 = sub_29DE9408C(0, &qword_2A1A61D70, 0x29EDBAA68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = v19;
      v18 = 0;
      v51 = (v4 + 16);
      v52 = (v4 + 8);
      v55 = (v4 + 32);
      v56 = ObjCClassFromMetadata;
      v54 = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v63 = v24 & ~(v24 >> 63);
      v60 = v6;
      v61 = a1;
      v58 = v19;
      v59 = v9;
      while (v63 != v18)
      {
        if (v62)
        {
          v27 = MEMORY[0x29ED80D70](v18, v26);
        }

        else
        {
          if (v18 >= *(v26 + 16))
          {
            goto LABEL_30;
          }

          v27 = *(v26 + 8 * v18 + 32);
        }

        v28 = v27;
        v29 = sub_29E08C870([v27 hkmc_cycleFactor]);
        v66 = v30;
        v67 = v29;
        v31 = sub_29E08D578([v28 hkmc_cycleFactor]);
        v32 = [v56 pregnancyType];
        if (v32 && (v33 = v32, v34 = v31, v35 = sub_29E2C40D4(), v33, v34, (v35 & 1) != 0))
        {
          v36 = sub_29E239064(v34, 0);
          if (!v37)
          {
            v36 = sub_29E238530();
          }

          v38 = v36;
          v9 = v37;
        }

        else
        {
          v38 = sub_29E238530();
          v9 = v39;
        }

        v40 = [v28 startDate];
        sub_29E2BCB44();

        v41 = [v28 endDate];
        v42 = v60;
        sub_29E2BCB44();

        sub_29DEAAE18();
        v43 = v61;
        if (sub_29E2C3294())
        {
          (*v52)(v42, v3);
          v19 = v59;
          (*v51)(v59, v43, v3);
          v44 = *v55;
        }

        else
        {
          v44 = *v55;
          v19 = v59;
          (*v55)();
        }

        v6 = v18 == 0;
        v45 = v66;
        v46 = v67;
        *v15 = v28;
        v15[1] = v46;
        v15[2] = v45;
        v15[3] = v38;
        v15[4] = v9;
        v47 = v65;
        (v44)(v15 + *(v65 + 28), v68, v3);
        (v44)(v15 + *(v47 + 32), v19, v3);
        *(v15 + *(v47 + 36)) = v6;
        v69 = v21;
        v4 = *(v21 + 16);
        v49 = *(v21 + 24);
        a1 = v4 + 1;
        if (v4 >= v49 >> 1)
        {
          sub_29E181790((v49 > 1), v4 + 1, 1);
          v21 = v69;
        }

        ++v18;
        *(v21 + 16) = a1;
        sub_29DF5E1B4(v15, v21 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v4, v48);
        v26 = v58;
        if (v57 == v18)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v20 = sub_29E2C4484();
      if (!v20)
      {
        goto LABEL_28;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_28:
  }
}

uint64_t sub_29DF5D0F8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29E145FEC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_29DF5D174(v6);
  return sub_29E2C4624();
}

void sub_29DF5D174(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_29E2C48C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
        v6 = sub_29E2C3664();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_29DF5D4A8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_29DF5D288(0, v2, 1, a1);
  }
}

void sub_29DF5D288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      sub_29E2BCB44();

      v22 = [v20 startDate];
      v23 = v34;
      sub_29E2BCB44();

      LOBYTE(v22) = sub_29E2BCB14();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_29DF5D4A8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x29EDCA190];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_29E14D410(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_29DF5DD18((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_29E14D410(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_29E14D384(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x29EDCA190];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      sub_29E2BCB44();

      v25 = [v22 startDate];
      v26 = v124;
      sub_29E2BCB44();

      LODWORD(v121) = sub_29E2BCB14();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        sub_29E2BCB44();

        v35 = [v32 startDate];
        v36 = v124;
        sub_29E2BCB44();

        LODWORD(v35) = sub_29E2BCB14() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_29E143B40(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_29E143B40((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_29DF5DD18((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_29E14D410(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_29E14D384(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    sub_29E2BCB44();

    v54 = [v51 startDate];
    v55 = v124;
    sub_29E2BCB44();

    LOBYTE(v54) = sub_29E2BCB14();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_29DF5DD18(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_29E2BCBB4();
  v8 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        sub_29E2BCB44();

        v42 = [v39 startDate];
        v43 = v55;
        sub_29E2BCB44();

        LOBYTE(v42) = sub_29E2BCB14();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        sub_29E2BCB44();

        v22 = [v19 startDate];
        v23 = v55;
        sub_29E2BCB44();

        LOBYTE(v22) = sub_29E2BCB14();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_29DF5E1B4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CycleFactorsSectionViewModel(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for PregnancyModeTimelineGauge(uint64_t a1)
{
  result = qword_2A1819468;
  if (!qword_2A1819468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF5E28C(uint64_t a1)
{
  sub_29DF5F094(319, &qword_2A1819460, MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29E2C02D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29DF5E348@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_29E2C02E4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF5EB70();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF5EBF4(0);
  v11 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = *(type metadata accessor for PregnancyModeTimelineGauge(0) + 20);
  sub_29E2C0284();
  *&v24 = v14;
  v25 = xmmword_29E2D3850;
  sub_29DF5EDE0();
  sub_29E2C26D4();
  sub_29E2C1434();
  sub_29DF5F2C8(&qword_2A18194A0, sub_29DF5EB70, MEMORY[0x29EDBC260]);
  sub_29DF5F2C8(&qword_2A18194A8, MEMORY[0x29EDC3430], MEMORY[0x29EDC3428]);
  sub_29E2C2354();
  (*(v2 + 8))(v4, v1);
  (*(v7 + 8))(v9, v6);
  sub_29DF5E798();
  sub_29E2C2AB4();
  sub_29E2C1564();
  sub_29DF5EC50(0);
  v16 = &v13[*(v15 + 36)];
  v17 = v26;
  *v16 = v25;
  v16[1] = v17;
  v16[2] = v27;
  sub_29DF5EC28(0);
  *&v13[*(v18 + 36)] = 256;
  KeyPath = swift_getKeyPath();
  sub_29E2C0294();
  v20 = &v13[*(v11 + 36)];
  *v20 = KeyPath;
  v20[1] = v21;
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v24 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000022, 0x800000029E2F32F0);
  sub_29DF5EE34();
  sub_29E2C23B4();

  return sub_29DE7BDA4(v13);
}

uint64_t sub_29DF5E730@<X0>(uint64_t a1@<X8>)
{
  sub_29E2C1B34();
  result = sub_29E2C2274();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_29DF5E798()
{
  v1 = v0;
  v2 = sub_29E2C1A64();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF5F094(0, &qword_2A1819020, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v16 - v7;
  v9 = sub_29E2C16E4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF5F0F4(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v14 = (*(v10 + 88))(v12, v9);
  result = 10.0;
  if (v14 != *MEMORY[0x29EDBC500] && v14 != *MEMORY[0x29EDBC4E8] && v14 != *MEMORY[0x29EDBC4F0] && v14 != *MEMORY[0x29EDBC4E0])
  {
    if (v14 == *MEMORY[0x29EDBC4F8])
    {
      return 10.6;
    }

    else
    {
      result = 11.2;
      if (v14 != *MEMORY[0x29EDBC508] && v14 != *MEMORY[0x29EDBC510])
      {
        if (v14 == *MEMORY[0x29EDBC4B8])
        {
          return 13.2;
        }

        else if (v14 == *MEMORY[0x29EDBC4C0])
        {
          return 13.8;
        }

        else if (v14 == *MEMORY[0x29EDBC4C8])
        {
          return 14.4;
        }

        else
        {
          result = 15.0;
          if (v14 != *MEMORY[0x29EDBC4D0])
          {
            if (v14 == *MEMORY[0x29EDBC4D8])
            {
              return 15.6;
            }

            else
            {
              (*(v10 + 8))(v12, v9, 15.0);
              return 10.0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29DF5EB70()
{
  if (!qword_2A1819478)
  {
    v0 = sub_29E2C26E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819478);
    }
  }
}

void sub_29DF5EC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E2C1744();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29DF5ECDC(uint64_t a1)
{
  if (!qword_2A1819498)
  {
    sub_29DF5EB70();
    sub_29E2C02E4();
    sub_29DF5F2C8(&qword_2A18194A0, sub_29DF5EB70, MEMORY[0x29EDBC260]);
    sub_29DF5F2C8(&qword_2A18194A8, MEMORY[0x29EDC3430], MEMORY[0x29EDC3428]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1819498);
    }
  }
}

unint64_t sub_29DF5EDE0()
{
  result = qword_2A18194B0;
  if (!qword_2A18194B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18194B0);
  }

  return result;
}

unint64_t sub_29DF5EE34()
{
  result = qword_2A18194B8;
  if (!qword_2A18194B8)
  {
    sub_29DF5EBF4(255);
    sub_29DF5EEE4();
    sub_29DF5F2C8(&qword_2A1818380, sub_29DED69DC, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18194B8);
  }

  return result;
}

unint64_t sub_29DF5EEE4()
{
  result = qword_2A18194C0;
  if (!qword_2A18194C0)
  {
    sub_29DF5EC28(255);
    sub_29DF5EF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18194C0);
  }

  return result;
}

unint64_t sub_29DF5EF64()
{
  result = qword_2A18194C8;
  if (!qword_2A18194C8)
  {
    sub_29DF5EC50(255);
    sub_29DF5EB70();
    sub_29E2C02E4();
    sub_29DF5F2C8(&qword_2A18194A0, sub_29DF5EB70, MEMORY[0x29EDBC260]);
    sub_29DF5F2C8(&qword_2A18194A8, MEMORY[0x29EDC3430], MEMORY[0x29EDC3428]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18194C8);
  }

  return result;
}

void sub_29DF5F094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C16E4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29DF5F0F4(uint64_t a1, uint64_t a2)
{
  sub_29DF5F094(0, &qword_2A1819020, MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29DF5F174()
{
  result = qword_2A18194D0;
  if (!qword_2A18194D0)
  {
    sub_29DF5F254(255, &qword_2A18194D8, sub_29DF5EBF4, MEMORY[0x29EDBC0A8]);
    sub_29DF5EE34();
    sub_29DF5F2C8(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18194D0);
  }

  return result;
}

void sub_29DF5F254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E2C1744();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29DF5F2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29DF5F32C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v17[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  v9 = [objc_opt_self() systemFontOfSize:7.0 weight:*MEMORY[0x29EDC7700]];
  v10 = [objc_opt_self() whiteColor];
  sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
  v11 = sub_29E2C3E84();
  sub_29DF40374(v9, v11, v10);

  v12 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v13 = sub_29E2C33A4();

  type metadata accessor for Key(0);
  sub_29DEA75B0();
  v14 = sub_29E2C31F4();

  v15 = [v12 initWithString:v13 attributes:v14];

  return v15;
}

void sub_29DF5F65C(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [objc_opt_self() systemGrayColor];
  v11 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v12 = [v10 resolvedColorWithTraitCollection_];

  CGContextSaveGState(a1);
  v13 = [v12 CGColor];
  CGContextSetFillColorWithColor(a1, v13);

  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextFillRect(a1, v21);
  CGContextRestoreGState(a1);

  v14 = sub_29DF5F32C();
  [v14 size];
  v16 = v15;
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  v17 = (CGRectGetHeight(v22) - v16) * 0.5;
  v19 = sub_29DF5F32C();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v18 = CGRectGetMinX(v23) + 10.0;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  [v19 drawAtPoint_];
}

void sub_29DF5F820(CGContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v93 = a9;
  v102 = a4;
  v110 = type metadata accessor for CycleChartCycle.RelativeDayIndex(0);
  MEMORY[0x2A1C7C4A8](v110);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CycleChartDay(0);
  v104 = *(v18 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v111 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF603BC(0, v19);
  v108 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v103 = (&v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DF60588(0, &qword_2A18194E8, sub_29DF603BC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v29 = (&v85 - v28);
  CGContextSaveGState(a1);
  v92 = objc_opt_self();
  v30 = [v92 whiteColor];
  v31 = [v30 CGColor];

  v94 = a1;
  CGContextSetFillColorWithColor(a1, v31);

  type metadata accessor for CycleChartCycle(0);
  v105 = a2;
  v32 = sub_29E2BCD54();
  v112 = 0;
  v33 = 0;
  v101 = a3;
  v34 = *(a3 + 32);
  v35 = v29;
  v36 = *(v34 + 16);
  v107 = (v22 + 56);
  v106 = (v22 + 48);
  v37 = v17;
  v91 = *MEMORY[0x29EDC76E0];
  v99 = *MEMORY[0x29EDC7638];
  v98 = *MEMORY[0x29EDC7640];
  LODWORD(v96) = 1;
  v97 = *MEMORY[0x29EDC7650];
  v38 = 0.0;
  v39 = xmmword_29E2CE0D0;
  v87 = xmmword_29E2CE0D0;
  v109 = v35;
LABEL_3:
  v42 = v108;
  while (1)
  {
    if (v33 == v36)
    {
      v44 = 1;
      v33 = v36;
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v33 >= *(v34 + 16))
      {
        goto LABEL_37;
      }

      v45 = v34 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v33;
      v46 = *(v42 + 48);
      v47 = v103;
      *v103 = v33;
      sub_29DF60428(v45, v47 + v46, v39);
      sub_29DF60520(v47, v26, sub_29DF603BC);
      v44 = 0;
      ++v33;
      v35 = v109;
    }

    v48.n128_f64[0] = (*v107)(v26, v44, 1, v42);
    sub_29DF6048C(v26, v35, v48);
    if ((*v106)(v35, 1, v42) == 1)
    {
      CGContextRestoreGState(v94);
      return;
    }

    v49 = *v35;
    v50 = v35 + *(v42 + 48);
    v51 = v111;
    sub_29DF60520(v50, v111, type metadata accessor for CycleChartDay);
    sub_29E1CF9C4(v51, v37);
    v52 = v37;
    v53 = *(v37 + v110[6]);
    v113 = v53;
    sub_29DEA68FC();
    sub_29E2C43C4();
    v54 = sub_29E2C33A4();

    if (!v32)
    {
      break;
    }

    if (v49 == 0x8000000000000000 && v32 == -1)
    {
      goto LABEL_38;
    }

    v55 = v49 % v32;
    if (v112)
    {
      v43 = v52;
      if (!v55 && (*(v52 + v110[8]) & 1) == 0)
      {
LABEL_25:
        v112 = 1;
LABEL_27:
        v86 = objc_opt_self();
        v59 = [v86 systemFontOfSize:7.0 weight:v91];
        v88 = v59;
        v89 = [v92 whiteColor];
        v95 = sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
        v100 = sub_29E2C3E84();
        sub_29DF60588(0, &qword_2A1817FD0, sub_29DEA0430, MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = v87;
        *(inited + 32) = v99;
        v90 = inited + 32;
        v61 = sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
        *(inited + 40) = v59;
        v62 = v98;
        *(inited + 64) = v61;
        *(inited + 72) = v62;
        v63 = sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
        v64 = v89;
        *(inited + 80) = v89;
        v65 = v97;
        *(inited + 104) = v63;
        *(inited + 112) = v65;
        *(inited + 144) = v95;
        *(inited + 120) = v100;
        v66 = v99;
        v88 = v88;
        v67 = v98;
        v68 = v64;
        v69 = v97;
        v89 = v100;
        v100 = sub_29E185054(inited);
        swift_setDeallocating();
        sub_29DEA0430(0);
        swift_arrayDestroy();

        type metadata accessor for Key(0);
        v71 = v70;
        v72 = sub_29DEA75B0();
        v90 = v71;
        v89 = v72;
        v73 = sub_29E2C31F4();

        [v54 sizeWithAttributes_];
        v75 = v74;
        v77 = v76;

        if (v96)
        {
          v38 = (14.0 - v77) * 0.5;
        }

        v78 = v49 * v93;
        v35 = v109;
        if ((*(v52 + v110[9]) & 1) == 0)
        {
          if (v112)
          {
            v79 = 4.0;
          }

          else
          {
            v79 = (v93 - v75) * 0.5;
          }

          v118.origin.x = a5;
          v118.origin.y = a6;
          v118.size.width = a7;
          v118.size.height = a8;
          v80 = v79 + v78 + CGRectGetMinX(v118) + 110.0;
          v119.origin.x = a5;
          v119.origin.y = a6;
          v119.size.width = a7;
          v119.size.height = a8;
          v81 = v38 + CGRectGetMinY(v119);
          v100 = [v86 systemFontOfSize:7.0 weight:v91];
          v82 = [v92 whiteColor];
          v95 = sub_29E2C3E84();
          v83 = v100;
          v96 = sub_29DF40374(v100, v95, v82);

          v84 = sub_29E2C31F4();

          [v54 drawAtPoint:v84 withAttributes:{v80, v81}];
        }

        v114.origin.x = a5;
        v114.origin.y = a6;
        v114.size.width = a7;
        v114.size.height = a8;
        v40 = v78 + CGRectGetMinX(v114) + 110.0 + -0.25;
        v115.origin.x = a5;
        v115.origin.y = a6;
        v115.size.width = a7;
        v115.size.height = a8;
        v41 = CGRectGetMinY(v115) + 2.0;
        v116.origin.x = a5;
        v116.origin.y = a6;
        v116.size.width = a7;
        v116.size.height = a8;
        v117.size.height = CGRectGetHeight(v116) + -4.0;
        v117.size.width = 0.5;
        v117.origin.x = v40;
        v117.origin.y = v41;
        CGContextFillRect(v94, v117);

        v37 = v52;
        sub_29DF605EC(v52, type metadata accessor for CycleChartCycle.RelativeDayIndex);
        sub_29DF605EC(v111, type metadata accessor for CycleChartDay);
        LODWORD(v96) = 0;
        goto LABEL_3;
      }
    }

    else
    {
      if (v55)
      {
        goto LABEL_26;
      }

      v56 = v53 + v32;
      if (__OFADD__(v53, v32))
      {
        goto LABEL_39;
      }

      v57 = __OFSUB__(v56, 1);
      v58 = v56 - 1;
      if (v57)
      {
        goto LABEL_40;
      }

      if (v58 >= *(v101 + 24))
      {
        v58 = *(v101 + 24);
      }

      if (v58 <= v102)
      {
LABEL_26:
        v112 = 0;
        goto LABEL_27;
      }

      v43 = v52;
      if (*(v52 + v110[8]) != 1)
      {
        goto LABEL_25;
      }
    }

    sub_29DF605EC(v43, type metadata accessor for CycleChartCycle.RelativeDayIndex);
    sub_29DF605EC(v111, type metadata accessor for CycleChartDay);
    v112 = 1;
    v37 = v43;
    v42 = v108;
    v35 = v109;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_29DF603BC(uint64_t a1, __n128 a2)
{
  if (!qword_2A18194E0)
  {
    type metadata accessor for CycleChartDay(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18194E0);
    }
  }
}

uint64_t sub_29DF60428(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CycleChartDay(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF6048C(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_29DF60588(0, &qword_2A18194E8, sub_29DF603BC, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF60520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29DF60588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DF605EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29DF6076C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_29DF1DF08(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorsReviewNavigationController_reviewFactorsModel] = a1;
  *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) = 0;
  v12 = sub_29E2BE2A4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a3, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_presentation;
  swift_beginAccess();

  sub_29DEE961C(v11, a1 + v14);
  swift_endAccess();
  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors);
    v30 = ObjectType;
    if (v16 >> 62)
    {
      v17 = sub_29E2C4484();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v15;
    v19 = [v18 ongoingCycleFactors];
    sub_29DF60AA4();
    v20 = sub_29E2C3614();

    if (v20 >> 62)
    {
      v21 = sub_29E2C4484();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_29DE9DC34(a2, v32);
    if (v17 == v21)
    {
      objc_allocWithZone(type metadata accessor for AddOngoingCycleFactorsViewController());

      sub_29E243954(v22, 1, 0, v32, 0, 0, 0);
    }

    else
    {
      objc_allocWithZone(type metadata accessor for ReviewOngoingCycleFactorsViewController());

      v23 = sub_29E1EBC70(v27, v32);
    }

    v26 = v23;

    ObjectType = v30;
  }

  else
  {
    sub_29DE9DC34(a2, v32);
    objc_allocWithZone(type metadata accessor for AddOngoingCycleFactorsViewController());

    sub_29E243954(v24, 1, 0, v32, 0, 0, 0);
    v26 = v25;
  }

  v31.receiver = v4;
  v31.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v31, sel_initWithRootViewController_, v26, v30);

  (*(v13 + 8))(a3, v12);
  sub_29DE93B3C(a2);
  return v28;
}

unint64_t sub_29DF60AA4()
{
  result = qword_2A1A61D50;
  if (!qword_2A1A61D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61D50);
  }

  return result;
}

void (*sub_29DF60BC0(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_29DF611A8();
  v4 = sub_29E2BFAD4();

  *a1 = v4;
  return sub_29DF60C20;
}

void sub_29DF60C20(uint64_t a1, char a2)
{
  v5 = *(*(a1 + 8) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView);
  if (a2)
  {
    v2 = *a1;
    v3 = v5;
    sub_29E2BFAE4();
  }

  else
  {
    v4 = v5;
    sub_29E2BFAE4();
  }
}

void sub_29DF60CB0()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell_item;
  swift_beginAccess();
  sub_29DEC3518(&v0[v6], v47);
  if (!v47[3])
  {
    sub_29DF61E50(v47);
    goto LABEL_15;
  }

  sub_29DF61DEC();
  type metadata accessor for InteractiveTimelineItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_29E2C4584();

    v45 = 0xD000000000000018;
    v46 = 0x800000029E2F3580;
    sub_29DEC3518(&v0[v6], v47);
    sub_29DEC357C(0);
    v40 = sub_29E2C3424();
    MEMORY[0x29ED7FCC0](v40);

    MEMORY[0x29ED7FCC0](0x63657220746F6E20, 0xEF64657A696E676FLL);
    sub_29E2C4724();
    __break(1u);
    return;
  }

  v7 = v45;
  v8 = sub_29DF611A8();
  v9 = sub_29E2BFAF4();

  if (v9)
  {

    v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView];
    v11 = sub_29E2BFAF4();

    if (!v11)
    {
LABEL_7:

      return;
    }

    type metadata accessor for InteractiveTimelineViewController();
    if (swift_dynamicCastClass())
    {
      v12 = sub_29E20BFA4();

      sub_29DF80CE8();
      goto LABEL_7;
    }
  }

  else
  {
    v13 = *(v7 + 16);
    v14 = *(v7 + 56);
    v15 = objc_allocWithZone(type metadata accessor for InteractiveTimelineViewController());

    sub_29E2BF404();
    v16 = sub_29DF61F10(v13, v14, v15, &off_2A24C0FA8);
    [*(v7 + 64) addObject_];
    sub_29E2C04B4();
    v17 = v1;
    v18 = v16;
    v19 = sub_29E2C0504();
    v20 = sub_29E2C3A34();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = v3;
      v22 = v21;
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v22 = 136446466;
      v23 = [v17 description];
      v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v43 = v17;
      v44 = v16;
      v25 = v24;
      v26 = v18;
      v28 = v27;

      v29 = sub_29DFAA104(v25, v28, v47);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2080;
      v30 = [v26 description];
      v31 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v33 = v32;

      v34 = v31;
      v18 = v26;
      v17 = v43;
      v35 = sub_29DFAA104(v34, v33, v47);

      *(v22 + 14) = v35;
      _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] Created %s", v22, 0x16u);
      v36 = v41;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v36, -1, -1);
      MEMORY[0x29ED82140](v22, -1, -1);

      (*(v42 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v37 = *&v17[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView];
    sub_29DF61EAC();
    v38 = v18;
    v39 = v37;
    sub_29E2BFB04();
  }
}

id sub_29DF611A8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_29E2BFB14()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DF6122C(double a1, double a2, double a3, double a4)
{
  v9 = sub_29E2C0514();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView] = 0;
  v14 = type metadata accessor for InteractiveTimelineItemCell();
  v29.receiver = v4;
  v29.super_class = v14;
  v15 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2C04B4();
  v16 = sub_29E2C0504();
  v17 = sub_29E2C3A34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136446210;
    v21 = [v15 description];
    v22 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v24 = v23;

    v25 = sub_29DFAA104(v22, v24, &v28);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Initialized", v19, 0xCu);
    sub_29DE93B3C(v20);
    MEMORY[0x29ED82140](v20, -1, -1);
    MEMORY[0x29ED82140](v19, -1, -1);

    (*(v10 + 8))(v12, v27);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29DF61558();

  return v15;
}

void sub_29DF61558()
{
  v1 = v0;
  v2 = [objc_opt_self() systemBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v1 contentView];
  v4 = sub_29DF611A8();
  [v3 addSubview_];

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView;
  v6 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell____lazy_storage___hostView];
  v7 = [v1 contentView];
  MEMORY[0x29ED807E0]();

  v8 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v1 backgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v1 contentView];
  [v10 insertSubview:v8 belowSubview:*&v1[v5]];

  v11 = objc_opt_self();
  sub_29DE99B54();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CE070;
  v13 = [v8 topAnchor];
  v14 = [v1 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-2000.0];
  *(v12 + 32) = v16;
  v17 = [v8 leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v12 + 40) = v20;
  v21 = [v8 trailingAnchor];
  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v12 + 48) = v24;
  v25 = [v8 bottomAnchor];
  v26 = [v1 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v12 + 56) = v28;
  sub_29DEB8834();
  v29 = sub_29E2C3604();

  [v11 activateConstraints_];

  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x656E696C656D6954, 0xE800000000000000);
  v30 = sub_29E2C33A4();

  [v1 setAccessibilityIdentifier_];
}

id sub_29DF61AAC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InteractiveTimelineItemCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29DF61B50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29DF61BA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27InteractiveTimelineItemCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29DF60CB0();
  return sub_29DF61E50(a1);
}

void (*sub_29DF61C14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29DF61C78;
}

void sub_29DF61C78(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29DF60CB0();
  }
}

uint64_t sub_29DF61CAC()
{
  v0 = sub_29DF611A8();
  v1 = sub_29E2BFAD4();

  return v1;
}

void sub_29DF61CE0(uint64_t a1)
{
  v1 = sub_29DF611A8();
  sub_29E2BFAE4();
}

uint64_t (*sub_29DF61D34(uint64_t **a1))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29DF60BC0(v2);
  return sub_29DF61DA4;
}

void sub_29DF61DA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_29DF61DEC()
{
  result = qword_2A181CC80;
  if (!qword_2A181CC80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A181CC80);
  }

  return result;
}

uint64_t sub_29DF61E50(uint64_t a1)
{
  sub_29DEC357C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29DF61EAC()
{
  result = qword_2A1819508;
  if (!qword_2A1819508)
  {
    type metadata accessor for InteractiveTimelineViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819508);
  }

  return result;
}

id sub_29DF61F10(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  swift_getObjectType();
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___dateIndicator] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___downArrow] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___legend] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_timelineHeight] = 0;
  v12 = &a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_dataProvider];
  *v12 = a1;
  *(v12 + 1) = a4;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_supplementaryDisplayTypes] = a2;
  v13 = type metadata accessor for InteractiveTimelineViewController();
  v25.receiver = a3;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  sub_29E2C04B4();
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    nullsub_1();
    v19 = sub_29E2C4AE4();
    v21 = sub_29DFAA104(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Initialized", v17, 0xCu);
    sub_29DE93B3C(v18);
    MEMORY[0x29ED82140](v18, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t type metadata accessor for MenstrualCyclesSharingSingleArticleFetchedResultsController(uint64_t a1)
{
  result = qword_2A1819510;
  if (!qword_2A1819510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29DF62288()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesSharingSingleArticleFetchedResultsController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DF622C8(uint64_t a1, int a2)
{
  v22 = a1;
  v21[3] = a2;
  v2 = sub_29E2BE814();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v21 - v7;
  sub_29E2BDCA4();
  v9 = MEMORY[0x29ED7A440]();
  v10 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v11 = sub_29E2C33A4();
  v12 = [v10 initWithKey:v11 ascending:0];

  sub_29DE99B54();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CE220;
  *(v13 + 32) = v12;
  sub_29DF3DF44();
  v14 = v12;
  v15 = sub_29E2C3604();

  [v9 setSortDescriptors_];

  v16 = sub_29E2BDC54();

  [v9 setPredicate_];

  v17 = objc_allocWithZone(MEMORY[0x29EDB8C58]);
  [v17 initWithFetchRequest:v9 managedObjectContext:v22 sectionNameKeyPath:0 cacheName:0];
  sub_29E2BE7D4();
  sub_29E2BE7C4();
  v18 = *(v3 + 8);
  v18(v8, v2);
  sub_29E2BE7B4();
  v18(v5, v2);
  v19 = sub_29E2BF704();

  return v19;
}

uint64_t type metadata accessor for EstimatedDueDatePickerRow(uint64_t a1)
{
  result = qword_2A1819520;
  if (!qword_2A1819520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF626B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EstimatedDueDatePickerRow(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = sub_29E2C3414();
  v37 = v19;
  (*(v11 + 8))(v16, v10);
  v20 = v43;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v38 + 8))(v8, v6);
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = *(v39 + 20);
  sub_29DEA8ABC(0);
  v26 = v25;
  v27 = *(v25 + 44);
  v28 = sub_29E2BEFA4();
  (*(*(v28 - 8) + 16))(a1 + v27, v20 + v24, v28);
  v29 = v20;
  v30 = v42;
  sub_29DF631FC(v29, v42);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29DF63260(v30, v32 + v31);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD00000000000001FLL;
  v35[1] = 0x800000029E2F36D0;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29DF632C4;
  v36[1] = v32;
  return result;
}

__n128 sub_29DF62B28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v56 = a2;
  v2 = sub_29E2C1CA4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v55 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCBB4();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v50 = &v44 - v7;
  sub_29DEA8D5C(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817D30, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v48 = &v44 - v11;
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v44 - v15;
  v17 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v18 = sub_29E2C3384();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v44 - v23;
  sub_29DEA8B80();
  v47 = v25;
  v46 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v45 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  (*(v19 + 16))(v21, v24, v18);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v27 = qword_2A1A67F80;
  sub_29E2BCC74();
  v28 = sub_29E2C3414();
  v30 = v29;
  (*(v19 + 8))(v24, v18);
  *&v58 = v28;
  *(&v58 + 1) = v30;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v14 + 8))(v16, v13);
  sub_29E2C2A24();
  v31 = *(v57 + 16);

  v32 = v50;
  if (v31 == 1)
  {
    sub_29E2BCBA4();
  }

  else
  {
    sub_29E2BCA74();
  }

  v33 = v51;
  sub_29E2BCBA4();
  sub_29E0B08C0(v32, v33, v49);
  v34 = *(v53 + 8);
  v35 = v33;
  v36 = v54;
  v34(v35, v54);
  v34(v32, v36);
  sub_29E2C1C94();
  sub_29DE9DE68();
  v37 = v45;
  sub_29E2C1404();
  sub_29E2C2AB4();
  sub_29E2C17D4();
  v38 = v56;
  (*(v46 + 32))(v56, v37, v47);
  sub_29DEA8B20(0);
  v40 = v38 + *(v39 + 36);
  v41 = v63;
  *(v40 + 64) = v62;
  *(v40 + 80) = v41;
  *(v40 + 96) = v64;
  v42 = v59;
  *v40 = v58;
  *(v40 + 16) = v42;
  result = v61;
  *(v40 + 32) = v60;
  *(v40 + 48) = result;
  return result;
}

uint64_t sub_29DF631FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EstimatedDueDatePickerRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF63260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EstimatedDueDatePickerRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_29DF632C4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EstimatedDueDatePickerRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_29DF62B28(v4, a1).n128_u64[0];
  return result;
}

uint64_t type metadata accessor for UpdateFetchedResultsController(uint64_t a1)
{
  result = qword_2A1819538;
  if (!qword_2A1819538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF633CC(void *a1, uint64_t a2, int a3, void *a4)
{
  v28 = a3;
  v30 = sub_29E2BE814();
  v8 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v27[-v12];
  sub_29DE9408C(0, &qword_2A1A61D70, 0x29EDBAA68);
  v14 = [swift_getObjCClassFromMetadata() menstrualFlowType];
  v29 = v4;
  *(v4 + qword_2A1819530) = v14;
  sub_29E2BDCA4();
  v15 = MEMORY[0x29ED7A440]();
  v16 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v17 = sub_29E2C33A4();
  v18 = [v16 initWithKey:v17 ascending:0];

  sub_29DECE8A4(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E2CE220;
  *(v19 + 32) = v18;
  sub_29DE9408C(0, &qword_2A1A61D48, 0x29EDBA0F0);
  v20 = v18;
  v21 = sub_29E2C3604();

  [v15 setSortDescriptors_];

  if ((v28 & 1) == 0)
  {
    [v15 setFetchLimit_];
  }

  [v15 setPredicate_];
  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v15 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  sub_29E2BE7D4();
  sub_29E2BE7C4();
  v22 = *(v8 + 8);
  v23 = v10;
  v24 = v30;
  v22(v23, v30);
  sub_29E2BE7B4();
  v25 = sub_29E2BF704();

  v22(v13, v24);
  return v25;
}

id sub_29DF63780(__n128 a1)
{
  sub_29E2BDCA4();
  sub_29DEEB69C(0);
  v1 = sub_29E2BD234();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CAB20;
  (*(v2 + 104))(v4 + v3, *MEMORY[0x29EDC3758], v1);
  sub_29E2BD664();
  sub_29DECE8A4(0, &qword_2A181CC70, MEMORY[0x29EDC37E0]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E2CD7A0;
  *(v5 + 32) = sub_29E2BD274();
  *(v5 + 40) = 0;
  v6 = sub_29E2BDC14();

  v7 = sub_29E2BDC64();
  sub_29DECE8A4(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E2CD3B0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v9 = objc_allocWithZone(MEMORY[0x29EDB9F60]);
  sub_29DE9408C(0, &qword_2A1A5E280, 0x29EDBA0A8);
  v27 = v7;
  v10 = v6;
  v11 = sub_29E2C3604();

  v12 = [v9 initWithType:1 subpredicates:v11];

  v13 = sub_29E2BDC64();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CD3B0;
  *(v14 + 32) = v13;
  *(v14 + 40) = v10;
  v15 = objc_allocWithZone(MEMORY[0x29EDB9F60]);
  v16 = v10;
  v17 = v13;
  v18 = sub_29E2C3604();

  v19 = [v15 initWithType:1 subpredicates:v18];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E2CD3B0;
  *(v20 + 32) = v19;
  *(v20 + 40) = v12;
  v21 = objc_allocWithZone(MEMORY[0x29EDB9F60]);
  v22 = v19;
  v23 = v12;
  v24 = sub_29E2C3604();

  v25 = [v21 initWithType:2 subpredicates:v24];

  return v25;
}

id sub_29DF63AF0()
{
  v0 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v2 = sub_29E2BC3A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCBA4();
  sub_29E2BCA84();
  sub_29E2BC374();
  sub_29E2BDCA4();
  v6 = MEMORY[0x29ED7A400](v5);
  v7 = sub_29E2BDC54();
  sub_29DECE8A4(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E2CD3B0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  sub_29DE9408C(0, &qword_2A1A5E280, 0x29EDBA0A8);
  v9 = v7;
  v10 = v6;
  v11 = sub_29E2C3604();

  v12 = [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v3 + 8))(v5, v2);
  return v12;
}

id sub_29DF63D2C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBA030]) init];
    [v3 setUnitStyle_];
    [v3 setUnitOptions_];
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
    [v4 setMaximumFractionDigits_];
    [v4 setMinimumFractionDigits_];
    [v3 setNumberFormatter_];

    v5 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_29DF63E14()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 40);
  if (v12)
  {
    v13 = [v12 state];
    if (v13 == 2)
    {
      v27 = *(v0 + 16);
      if (v27)
      {
        v17 = v27;
        if (sub_29DF676A4())
        {
          LOWORD(v32) = 256;
          v18 = [objc_opt_self() dayViewModelWithMenstruationLevel:4 * (objc_msgSend(v17 fertileWindowLevel:sel_menstrualFlow) - 2 < 4) pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:objc_msgSend(v17 daySummary:sel_bleedingInPregnancyFlow) - 2 < 4 cycleFactors:objc_msgSend(v17 partiallyLoggedPeriod:sel_bleedingAfterPregnancyFlow) - 2 < 4 fetched:{v17, 0, v32}];
          goto LABEL_18;
        }
      }

      LOWORD(v32) = 256;
      v31 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:0 cycleFactors:0 partiallyLoggedPeriod:v32 fetched:?];
      return v31;
    }

    if (v13 == 1)
    {
      v14 = *(v0 + 16);
      if (v14)
      {
        v15 = [*(v0 + 16) dayIndex];
      }

      else
      {
        v15 = 0;
      }

      v28 = [*(v0 + 32) currentCalendar];
      sub_29E2BCDC4();

      sub_29E2BCBA4();
      sub_29E2C3144();
      v29 = sub_29E2C3164();
      (*(v8 + 8))(v11, v7);
      if (v14 && v15 == v29)
      {
        v17 = v14;
        LOWORD(v32) = 256;
        v18 = [objc_opt_self() dayViewModelWithMenstruationLevel:4 * (objc_msgSend(v17 fertileWindowLevel:sel_menstrualFlow) - 2 < 4) pregnancyState:0 bleedingInPregnancyLevel:6 bleedingAfterPregnancyLevel:objc_msgSend(v17 daySummary:sel_bleedingInPregnancyFlow) - 2 < 4 cycleFactors:objc_msgSend(v17 partiallyLoggedPeriod:sel_bleedingAfterPregnancyFlow) - 2 < 4 fetched:{v17, 0, v32}];
        goto LABEL_18;
      }

      LOWORD(v32) = 256;
      v31 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:6 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:0 cycleFactors:0 partiallyLoggedPeriod:v32 fetched:?];
      return v31;
    }
  }

  v16 = *(v0 + 16);
  if (v16)
  {
    v17 = v16;
    LOWORD(v32) = 256;
    v18 = [objc_opt_self() dayViewModelWithMenstruationLevel:4 * (objc_msgSend(v17 fertileWindowLevel:sel_menstrualFlow) - 2 < 4) pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:objc_msgSend(v17 daySummary:sel_bleedingInPregnancyFlow) - 2 < 4 cycleFactors:objc_msgSend(v17 partiallyLoggedPeriod:sel_bleedingAfterPregnancyFlow) - 2 < 4 fetched:{v17, 0, v32}];
LABEL_18:
    v30 = v18;

    return v30;
  }

  sub_29E2C04B4();
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A34();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136446210;
    v23 = sub_29E2C4AE4();
    v25 = sub_29DFAA104(v23, v24, &v34);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] No models to show. Not showing pill view in snippet", v21, 0xCu);
    sub_29DE93B3C(v22);
    MEMORY[0x29ED82140](v22, -1, -1);
    MEMORY[0x29ED82140](v21, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t sub_29DF64464()
{
  v1 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C31A4();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x2A1C7C4A8](v3).n128_u64[0];
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 40);
  if (!v8)
  {
    goto LABEL_5;
  }

  result = [*(v0 + 40) state];
  if (result == 1)
  {
    return result;
  }

  if ([v8 state] == 2)
  {
    return 1;
  }

LABEL_5:
  v10 = *(v0 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [v11 dayIndex];
  v13 = [*(v0 + 32) currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  v14 = sub_29E2C3164();

  (*(v4 + 8))(v7, v3);
  return v12 != v14;
}

uint64_t sub_29DF64670()
{
  v1 = v0;
  v2 = sub_29E2BC5F4();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v46 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2BCEA4();
  v45 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C31A4();
  v44 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF67AB0(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v41 - v13;
  v15 = sub_29E2BCBB4();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  *&v23 = MEMORY[0x2A1C7C4A8](v20).n128_u64[0];
  v24 = *(v1 + 40);
  if (!v24)
  {
    return 0;
  }

  v42 = v41 - v21;
  v43 = v22;
  if ([v24 state] != 2)
  {
    return 0;
  }

  v25 = [v24 pregnancyEndDate];
  if (v25)
  {
    v26 = v25;
    sub_29E2BCB44();

    (*(v16 + 56))(v11, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v11, 1, 1, v15);
  }

  sub_29DEB4EA4(v11, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_29DF67CD0(v14, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    return 0;
  }

  v28 = v42;
  (*(v16 + 32))(v42, v14, v15);
  (*(v16 + 16))(v18, v28, v15);
  v41[1] = v1;
  v29 = *(v1 + 32);
  v30 = [v29 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2C3144();
  v31 = [v29 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2C3194();
  v45 = *(v45 + 8);
  (v45)(v5, v49);
  (*(v44 + 8))(v8, v6);
  sub_29E2BCE44();
  sub_29DF67AB0(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v32 = sub_29E2BCE84();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CAB20;
  (*(v33 + 104))(v35 + v34, *MEMORY[0x29EDB9CB8], v32);
  sub_29DE924A4(v35);
  swift_setDeallocating();
  (*(v33 + 8))(v35 + v34, v32);
  swift_deallocClassInstance();
  sub_29E2BCBA4();
  v36 = v46;
  sub_29E2BCD04();

  v37 = *(v16 + 8);
  v37(v18, v15);
  (v45)(v5, v49);
  v38 = sub_29E2BC554();
  LOBYTE(v32) = v39;
  result = (*(v47 + 8))(v36, v48);
  if (v32)
  {
    __break(1u);
  }

  else
  {

    v40 = sub_29DFABE68(v38);

    v37(v43, v15);
    v37(v42, v15);
    return v40;
  }

  return result;
}

uint64_t sub_29DF64D50()
{
  v42 = sub_29E2BC5F4();
  v1 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCEA4();
  v40 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E2BCBB4();
  v39 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v33 - v14;
  v16 = *(v0 + 16);
  if (!v16)
  {
    return 0;
  }

  v34 = v16;
  [v34 dayIndex];
  sub_29E2C30D4();
  v35 = v0;
  v17 = [*(v0 + 32) currentCalendar];
  v37 = v3;
  v38 = v1;
  v18 = v4;
  v36 = v4;
  v19 = v17;
  sub_29E2BCDC4();

  sub_29E2C3194();
  v20 = *(v40 + 8);
  v20(v6, v18);
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  sub_29E2BCE44();
  sub_29DF67AB0(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v22 = sub_29E2BCE84();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E2CAB20;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x29EDB9CB8], v22);
  sub_29DE924A4(v25);
  swift_setDeallocating();
  (*(v23 + 8))(v25 + v24, v22);
  swift_deallocClassInstance();
  sub_29E2BCBA4();
  v26 = v37;
  sub_29E2BCD04();

  v27 = *(v39 + 8);
  v28 = v41;
  v27(v12, v41);
  v21(v6, v36);
  v29 = sub_29E2BC554();
  LOBYTE(v22) = v30;
  result = (*(v38 + 8))(v26, v42);
  if ((v22 & 1) == 0)
  {

    v32 = sub_29DFABE68(v29);

    v27(v15, v28);
    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DF65250(void *a1, __n128 a2)
{
  v96 = a1;
  v2 = a2.n128_f64[0];
  sub_29DF67AB0(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v95 = &v72 - v4;
  sub_29DF67BA8(0, &qword_2A1819548, MEMORY[0x29EDB99D8]);
  v94 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v93 = &v72 - v7;
  sub_29DF67BA8(0, &qword_2A1819560, MEMORY[0x29EDB99C0]);
  v92 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v91 = &v72 - v11;
  sub_29DF67B88(0, v10);
  v90 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v89 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29E2BCC84();
  v83 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v15 = sub_29E2C3384();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v72 - v20;
  v22 = sub_29DF6609C();
  if (v22)
  {
    v23 = v22;
    v77 = v13;
    v78 = v9;
    v79 = v6;
    v99 = v22;
    sub_29DF67D9C(0, &qword_2A1A5E320, MEMORY[0x29EDC9A40]);
    v25 = v24;
    v26 = sub_29DF67B14();
    v27 = sub_29E2C3594();
    v29 = sub_29DF65EAC(v96, v27, v28, v2);

    if (v29)
    {
      v99 = v23;
      v30 = sub_29E2C3594();
LABEL_4:
    }

    else
    {
      v85 = v26;
      v86 = v25;
      v32 = *(v23 + 2);
      if (v32 >= 4)
      {
        v33 = 4;
      }

      else
      {
        v33 = *(v23 + 2);
      }

      sub_29E2C3314();
      (*(v16 + 16))(v18, v21, v15);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v34 = qword_2A1A67F80;
      sub_29E2BCC74();
      v84 = sub_29E2C3414();
      v87 = v35;
      (*(v16 + 8))(v21, v15);
      v36 = v33 - 1;
      v97 = v32 - (v33 - 1);
      if (v97 >= 1)
      {
        v82 = *MEMORY[0x29EDB99B8];
        v81 = (v78 + 13);
        v80 = (v79 + 13);
        ++v79;
        ++v78;
        ++v77;
        v76 = (v83 + 56);
        v75 = *MEMORY[0x29EDB99C8];
        v74 = *MEMORY[0x29EDC7638];
        v73 = xmmword_29E2CD7A0;
        v72 = xmmword_29E2CAB20;
        v83 = v23;
        while (v36 + 1 >= 2)
        {
          v37 = *(v23 + 2);
          if (v37 < v36 + 1)
          {
            sub_29E2BF404();
            v39 = v23;
            v42 = MEMORY[0x29EDC99B0];
          }

          else
          {
            if (v37 >= v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = *(v23 + 2);
            }

            sub_29DF67D9C(0, &qword_2A1A62780, MEMORY[0x29EDC9E90]);
            v39 = swift_allocObject();
            v40 = j__malloc_size(v39);
            v41 = v40 - 32;
            if (v40 < 32)
            {
              v41 = v40 - 17;
            }

            v39[2] = v38;
            v39[3] = 2 * (v41 >> 4);
            v42 = MEMORY[0x29EDC99B0];
            swift_arrayInitWithCopy();
          }

          v98 = v39;
          v43 = v91;
          v44 = v92;
          (*v81)(v91, v82, v92);
          v45 = v93;
          v46 = v94;
          (*v80)(v93, v75, v94);
          v47 = v89;
          sub_29E2BC284();
          (*v79)(v45, v46);
          (*v78)(v43, v44);
          sub_29DF67C88(&qword_2A1819570, sub_29DF67B88, MEMORY[0x29EDB99E8]);
          v48 = v90;
          sub_29E2C3584();
          (*v77)(v47, v48);

          v49 = v99;
          v50 = v100;
          v51 = v95;
          sub_29E2BCC54();
          (*v76)(v51, 0, 1, v88);
          v52 = MEMORY[0x29EDC9E90];
          sub_29DF67AB0(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
          v53 = swift_allocObject();
          *(v53 + 16) = v73;
          *(v53 + 56) = MEMORY[0x29EDC9BA8];
          *(v53 + 64) = MEMORY[0x29EDC9C10];
          *(v53 + 32) = v97;
          *(v53 + 96) = v42;
          *(v53 + 104) = sub_29DEB1A44();
          *(v53 + 72) = v49;
          *(v53 + 80) = v50;
          v30 = sub_29E2C33F4();

          sub_29DF67CD0(v51, &unk_2A1A626B0, MEMORY[0x29EDB9C70]);
          v54 = sub_29E2C33A4();
          sub_29DF67AB0(0, &qword_2A1817FD0, sub_29DEA0430, v52);
          inited = swift_initStackObject();
          *(inited + 16) = v72;
          v56 = v74;
          *(inited + 32) = v74;
          *(inited + 64) = sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
          v57 = v96;
          *(inited + 40) = v96;
          v58 = v56;
          v59 = v57;
          sub_29E185054(inited);
          swift_setDeallocating();
          sub_29DF67D40(inited + 32);
          type metadata accessor for Key(0);
          sub_29DF67C88(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
          v60 = sub_29E2C31F4();

          [v54 boundingRectWithSize:1 options:v60 attributes:0 context:{v2, 1.79769313e308}];
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v68 = v67;

          [v59 lineHeight];
          v70 = v69;
          v101.origin.x = v62;
          v101.origin.y = v64;
          v101.size.width = v66;
          v101.size.height = v68;
          if (CGRectGetHeight(v101) / v70 <= 2.0)
          {

            return v30;
          }

          --v36;
          v23 = v83;
          if (!v36)
          {

            goto LABEL_4;
          }

          if (++v97 < 1)
          {
            break;
          }
        }
      }

      return 0;
    }
  }

  else
  {
    sub_29E2C3314();
    (*(v16 + 16))(v18, v21, v15);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v31 = qword_2A1A67F80;
    sub_29E2BCC74();
    v30 = sub_29E2C3414();
    (*(v16 + 8))(v21, v15);
  }

  return v30;
}

BOOL sub_29DF65EAC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_29E2C33A4();
  sub_29DF67AB0(0, &qword_2A1817FD0, sub_29DEA0430, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v8 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  *(inited + 64) = sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  *(inited + 40) = a1;
  v9 = v8;
  v10 = a1;
  sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DF67D40(inited + 32);
  type metadata accessor for Key(0);
  sub_29DF67C88(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
  v11 = sub_29E2C31F4();

  [v6 boundingRectWithSize:1 options:v11 attributes:0 context:{a4, 1.79769313e308}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v10 lineHeight];
  v21 = v20;
  v23.origin.x = v13;
  v23.origin.y = v15;
  v23.size.width = v17;
  v23.size.height = v19;
  return CGRectGetHeight(v23) / v21 <= 2.0;
}

char *sub_29DF6609C()
{
  v2 = v0;
  v184 = *v0;
  v3 = sub_29E2C0514();
  v186 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v187 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF67AB0(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v195 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v180 - v8;
  v10 = sub_29E2BCBB4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v185 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v180 - v14;
  sub_29DF67A48(0);
  v192 = v16;
  v191 = *(v16 - 1);
  MEMORY[0x2A1C7C4A8](v16);
  v190 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v198 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E2C3384();
  v199 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v196 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x2A1C7C4A8](v22).n128_u64[0];
  v197 = &v180 - v24;
  v25 = v2[2];
  if (!v25)
  {
    v60 = v2[5];
    if (!v60 || ![v60 state])
    {
      return 0;
    }
  }

  v183 = v3;
  v188 = v15;
  v189 = v10;
  swift_beginAccess();
  v26 = MEMORY[0x29EDCA190];
  v2[8] = MEMORY[0x29EDCA190];

  if (!v25)
  {
    goto LABEL_76;
  }

  v27 = v25;
  v28 = sub_29E29DA94(0, [v27 menstrualFlow]);
  v200 = v9;
  if (!v29)
  {
    goto LABEL_6;
  }

  v30 = v28;
  v31 = v29;
  v26 = sub_29E143F38(0, 1, 1, MEMORY[0x29EDCA190]);
  v1 = *(v26 + 2);
  v32 = *(v26 + 3);
  v9 = v1 + 1;
  if (v1 >= v32 >> 1)
  {
    goto LABEL_118;
  }

  while (1)
  {
    *(v26 + 2) = v9;
    v33 = &v26[16 * v1];
    *(v33 + 4) = v30;
    *(v33 + 5) = v31;
LABEL_6:
    v34 = [v27 intermenstrualBleeding];
    v194 = v20;
    if (v34)
    {
      v35 = v197;
      sub_29E2C3314();
      v36 = v199;
      (*(v199 + 16))(v196, v35, v20);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v37 = qword_2A1A67F80;
      sub_29E2BCC74();
      v38 = sub_29E2C3414();
      v40 = v39;
      (*(v36 + 8))(v35, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v41 = *(v26 + 3);
      if (v1 >= v41 >> 1)
      {
        v26 = sub_29E143F38((v41 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v42 = &v26[16 * v1];
      *(v42 + 4) = v38;
      *(v42 + 5) = v40;
    }

    v193 = v11;
    v43 = sub_29E22A34C([v27 symptoms]);
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = (v43 + 32);
      do
      {
        v46 = *v45++;
        v47 = sub_29E22A42C(v46);
        v49 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
        }

        v51 = *(v26 + 2);
        v50 = *(v26 + 3);
        v1 = (v51 + 1);
        if (v51 >= v50 >> 1)
        {
          v26 = sub_29E143F38((v50 > 1), v51 + 1, 1, v26);
        }

        *(v26 + 2) = v1;
        v52 = &v26[16 * v51];
        *(v52 + 4) = v47;
        *(v52 + 5) = v49;
        --v44;
      }

      while (v44);
    }

    v53 = sub_29E2ADC78([v27 ovulationTestResult]);
    if (v54)
    {
      v55 = v53;
      v56 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v193;
      v20 = v194;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v58 = *(v26 + 3);
      if (v1 >= v58 >> 1)
      {
        v26 = sub_29E143F38((v58 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v59 = &v26[16 * v1];
      *(v59 + 4) = v55;
      *(v59 + 5) = v56;
    }

    else
    {
      v11 = v193;
      v20 = v194;
    }

    v61 = sub_29DF3FF24([v27 progesteroneTestResult]);
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v65 = *(v26 + 3);
      if (v1 >= v65 >> 1)
      {
        v26 = sub_29E143F38((v65 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v66 = &v26[16 * v1];
      *(v66 + 4) = v63;
      *(v66 + 5) = v64;
    }

    v9 = v200;
    v67 = sub_29E17339C([v27 pregnancyTestResult]);
    if (v68)
    {
      v69 = v67;
      v70 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v71 = *(v26 + 3);
      if (v1 >= v71 >> 1)
      {
        v26 = sub_29E143F38((v71 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v72 = &v26[16 * v1];
      *(v72 + 4) = v69;
      *(v72 + 5) = v70;
      v9 = v200;
    }

    v73 = sub_29DF777DC([v27 sexualActivity]);
    if (v74)
    {
      v75 = v73;
      v76 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v77 = *(v26 + 3);
      if (v1 >= v77 >> 1)
      {
        v26 = sub_29E143F38((v77 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v78 = &v26[16 * v1];
      *(v78 + 4) = v75;
      *(v78 + 5) = v76;
      v9 = v200;
    }

    v79 = sub_29E225C2C([v27 cervicalMucusQuality]);
    if (v80)
    {
      v81 = v79;
      v82 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v83 = *(v26 + 3);
      if (v1 >= v83 >> 1)
      {
        v26 = sub_29E143F38((v83 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v84 = &v26[16 * v1];
      *(v84 + 4) = v81;
      *(v84 + 5) = v82;
      v202 = v26;
      v9 = v200;
    }

    v85 = [v27 basalBodyTemperature];
    if (v85)
    {
      v86 = v85;
      v87 = sub_29DF63D2C();
      v88 = objc_opt_self();
      v89 = v2[3];
      v1 = v86;
      v90 = [v88 sharedInstanceForHealthStore_];
      sub_29DE9408C(0, &qword_2A1A5E1F0, 0x29EDBAD20);
      v91 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA878]);
      v92 = [v90 preferredUnitForType_];

      v93 = v1;
      v94 = [v92 _foundationUnit];
      if (v94)
      {
        v95 = v94;
        v182 = v27;
        [v93 doubleValueForUnit_];
        sub_29DE9408C(0, &qword_2A181FDD0, 0x29EDBA150);
        v96 = v95;
        v97 = v190;
        sub_29E2BC304();
        v1 = v192;
        v98 = sub_29E2BC2F4();
        v99 = v87;
        v100 = [v87 stringFromMeasurement_];

        v101 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v181 = v102;

        (*(v191 + 8))(v97, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
        }

        v104 = *(v26 + 2);
        v103 = *(v26 + 3);
        v11 = v193;
        v27 = v182;
        if (v104 >= v103 >> 1)
        {
          v26 = sub_29E143F38((v103 > 1), v104 + 1, 1, v26);
        }

        *(v26 + 2) = v104 + 1;
        v105 = &v26[16 * v104];
        v106 = v181;
        *(v105 + 4) = v101;
        *(v105 + 5) = v106;
        v202 = v26;
      }

      else
      {
      }

      v20 = v194;
      v9 = v200;
    }

    v107 = sub_29E29DE84(1, [v27 bleedingInPregnancyFlow]);
    if (v108)
    {
      v109 = v107;
      v110 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v111 = *(v26 + 3);
      if (v1 >= v111 >> 1)
      {
        v26 = sub_29E143F38((v111 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v112 = &v26[16 * v1];
      *(v112 + 4) = v109;
      *(v112 + 5) = v110;
      v202 = v26;
      v9 = v200;
    }

    v113 = sub_29E29DE84(2, [v27 bleedingAfterPregnancyFlow]);
    if (v114)
    {
      v115 = v113;
      v116 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_29E143F38(0, *(v26 + 2) + 1, 1, v26);
      }

      v1 = *(v26 + 2);
      v117 = *(v26 + 3);
      if (v1 >= v117 >> 1)
      {
        v26 = sub_29E143F38((v117 > 1), v1 + 1, 1, v26);
      }

      *(v26 + 2) = v1 + 1;
      v118 = &v26[16 * v1];
      *(v118 + 4) = v115;
      *(v118 + 5) = v116;
      v202 = v26;
      v9 = v200;
LABEL_76:
      if (!*(v26 + 2))
      {
        goto LABEL_80;
      }
    }

    else
    {

      if (!*(v26 + 2))
      {
        goto LABEL_80;
      }
    }

    sub_29E2BF404();
    v119 = sub_29E2C33A4();

    v27 = [v119 hk_localizedFirstWordCapitalizedString];

    v30 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v31 = v120;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v32 = *(v26 + 2);
    if (v32)
    {
      goto LABEL_79;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    v26 = sub_29E143F38((v32 > 1), v9, 1, v26);
  }

  v26 = sub_29E14D988(v26);
  v32 = *(v26 + 2);
  if (!v32)
  {
    goto LABEL_117;
  }

LABEL_79:
  *(v26 + 4) = v30;
  *(v26 + 5) = v31;

  v202 = v26;
LABEL_80:
  swift_beginAccess();
  v121 = sub_29E2BF404();
  sub_29DFCB978(v121);
  swift_endAccess();
  v122 = v2[5];
  if (v122)
  {
    v123 = [v2[5] sample];
    if (v123)
    {
      v124 = v123;
      v125 = [v122 state];
      v126 = [v122 pregnancyStartDate];
      if (v126)
      {
        v127 = v195;
        v128 = v126;
        sub_29E2BCB44();

        v129 = 0;
      }

      else
      {
        v129 = 1;
        v127 = v195;
      }

      v130 = v189;
      (*(v11 + 56))(v127, v129, 1, v189);
      sub_29DEB4EA4(v127, v9);
      if ((*(v11 + 48))(v9, 1, v130) == 1)
      {

        sub_29DF67CD0(v9, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
        return v26;
      }

      (*(v11 + 32))(v188, v9, v130);
      if (!v125)
      {
        goto LABEL_96;
      }

      if (v125 != 2)
      {
        if (v125 == 1)
        {
          v131 = objc_opt_self();
          v132 = v185;
          sub_29E2BCBA4();
          v133 = v130;
          v134 = sub_29E2BCB04();
          v136 = *(v11 + 8);
          v135 = v11 + 8;
          v200 = v136;
          (v136)(v132, v133);
          v195 = v131;
          v137 = [v131 gestationalAgeStringOnDate:v134 pregnancySample:v124];

          v138 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v193 = v139;
          v194 = v138;

          v140 = v197;
          sub_29E2C3314();
          v141 = v199;
          (*(v199 + 16))(v196, v140, v20);
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v142 = qword_2A1A67F80;
          sub_29E2BCC74();
          sub_29E2C3414();
          (*(v141 + 8))(v140, v20);
          sub_29DF67AB0(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
          v143 = swift_allocObject();
          *(v143 + 16) = xmmword_29E2CAB20;
          *(v143 + 56) = MEMORY[0x29EDC99B0];
          *(v143 + 64) = sub_29DEB1A44();
          v144 = v193;
          *(v143 + 32) = v194;
          *(v143 + 40) = v144;
          v145 = sub_29E2C3404();
          v147 = v146;

          v148 = v187;
          sub_29E2C04B4();
          sub_29E2BF404();
          v149 = sub_29E2C0504();
          v150 = sub_29E2C3A34();

          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v193 = v135;
            v153 = v152;
            v201[0] = v152;
            *v151 = 136446466;
            v154 = sub_29E2C4AE4();
            v156 = v145;
            v157 = sub_29DFAA104(v154, v155, v201);

            *(v151 + 4) = v157;
            *(v151 + 12) = 2080;
            v201[2] = v156;
            v201[3] = v147;
            sub_29E2BF404();
            v158 = sub_29E2C3464();
            v160 = sub_29DFAA104(v158, v159, v201);
            v145 = v156;

            *(v151 + 14) = v160;
            _os_log_impl(&dword_29DE74000, v149, v150, "[%{public}s] Snippet is displaying %s", v151, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED82140](v153, -1, -1);
            MEMORY[0x29ED82140](v151, -1, -1);

            (*(v186 + 8))(v187, v183);
          }

          else
          {

            (*(v186 + 8))(v148, v183);
          }

          v173 = v195;
          v174 = sub_29E2BCB04();
          LODWORD(v173) = [v173 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate_];

          if (v173)
          {

            v26 = sub_29E143F38(0, 1, 1, MEMORY[0x29EDCA190]);
            v176 = *(v26 + 2);
            v175 = *(v26 + 3);
            if (v176 >= v175 >> 1)
            {
              v26 = sub_29E143F38((v175 > 1), v176 + 1, 1, v26);
            }

            (v200)(v188, v189);
            *(v26 + 2) = v176 + 1;
            v177 = &v26[16 * v176];
            *(v177 + 4) = v145;
            *(v177 + 5) = v147;
          }

          else
          {
            v178 = *(v26 + 2);
            v179 = swift_isUniquelyReferenced_nonNull_native();
            v202 = v26;
            if (!v179 || v178 >= *(v26 + 3) >> 1)
            {
              v26 = sub_29E143F38(v179, v178 + 1, 1, v26);
              v202 = v26;
            }

            sub_29E14F714(0, 0, 1, v145, v147);

            v202 = v26;
            (v200)(v188, v189);
          }

          return v26;
        }

LABEL_96:
        (*(v11 + 8))(v188, v130);

        return v26;
      }

      v162 = v197;
      sub_29E2C3314();
      v200 = "EDING_ALERT_MESSAGE";
      v163 = v199;
      (*(v199 + 16))(v196, v162, v20);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v164 = qword_2A1A67F80;
      sub_29E2BCC74();
      v165 = sub_29E2C3414();
      v167 = v166;
      (*(v163 + 8))(v162, v20);
      v168 = sub_29E143F38(0, 1, 1, MEMORY[0x29EDCA190]);
      v170 = *(v168 + 2);
      v169 = *(v168 + 3);
      if (v170 >= v169 >> 1)
      {
        v168 = sub_29E143F38((v169 > 1), v170 + 1, 1, v168);
      }

      *(v168 + 2) = v170 + 1;
      v171 = &v168[16 * v170];
      *(v171 + 4) = v165;
      *(v171 + 5) = v167;
      if (*(v26 + 2))
      {
        v172 = sub_29DF676A4();

        (*(v11 + 8))(v188, v189);

        if (!v172)
        {
          return v168;
        }
      }

      else
      {
        (*(v11 + 8))(v188, v189);

        return v168;
      }
    }
  }

  return v26;
}

BOOL sub_29DF676A4()
{
  v1 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C31A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v29 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v29 - v15;
  v17 = *(v0 + 40);
  if (v17)
  {
    v18 = *(v0 + 16);
    if (v18)
    {
      v31 = v14;
      v32 = v18;
      v19 = v17;
      v20 = [v19 pregnancyEndDate];
      if (v20)
      {
        v30 = v19;
        v21 = v20;
        sub_29E2BCB44();

        v22 = v12;
        v23 = v31;
        (*(v7 + 32))(v16, v22, v31);
        (*(v7 + 16))(v9, v16, v23);
        v24 = [*(v0 + 32) currentCalendar];
        sub_29E2BCDC4();

        sub_29E2C3144();
        v25 = sub_29E2C3164();
        (*(v3 + 8))(v5, v2);
        v26 = v32;
        v27 = [v32 dayIndex];

        (*(v7 + 8))(v16, v23);
        return v25 < v27;
      }
    }
  }

  return 0;
}

id *sub_29DF679A0()
{

  return v0;
}

uint64_t sub_29DF679F0()
{
  sub_29DF679A0();

  return swift_deallocClassInstance();
}

void sub_29DF67A48(uint64_t a1)
{
  if (!qword_2A181EF90)
  {
    sub_29DE9408C(255, &qword_2A181FDD0, 0x29EDBA150);
    v1 = sub_29E2BC334();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181EF90);
    }
  }
}

void sub_29DF67AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DF67B14()
{
  result = qword_2A1819558;
  if (!qword_2A1819558)
  {
    sub_29DF67D9C(255, &qword_2A1A5E320, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819558);
  }

  return result;
}

void sub_29DF67BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_29E2BC344();
    sub_29DF67D9C(255, &qword_2A1A5E320, MEMORY[0x29EDC9A40]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_29DF67C88(&qword_2A1819550, MEMORY[0x29EDB98B0], MEMORY[0x29EDB98A8]);
    v10[3] = sub_29DF67B14();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DF67C88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF67CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DF67AB0(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DF67D40(uint64_t a1)
{
  sub_29DEA0430(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DF67D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_29DF67DF4(uint64_t a1)
{
  v2 = sub_29E2BE194();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29E2BE164();
  v8 = [v7 categoryID];

  if (v8 == 8)
  {
    return sub_29DF499A0(a1);
  }

  (*(v3 + 16))(v5, a1, v2);
  sub_29E2BE8F4();
  sub_29E2BE8D4();
  sub_29E2BE904();
  v10 = objc_allocWithZone(sub_29E2BEBD4());
  return sub_29E2BEBC4();
}

uint64_t sub_29DF68130(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v3;
}

double sub_29DF681B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 344))(a1);
  }

  return result;
}

uint64_t sub_29DF68238(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BFC74();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BFC94();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BFC84();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v11 & 1;

  sub_29E2C1224();
  v12 = sub_29E2BFCA4();
  v13 = [v12 areAllRequirementsSatisfied];

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v13;

  sub_29E2C1224();
  v14 = sub_29E2BFCA4();
  v15 = [v14 areAllRequirementsSatisfied];

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v15;

  sub_29E2C1224();
  (*(v8 + 16))(v10, a1, v7);
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x29EDC2D70])
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v8 + 96))(v10, v7);
  v17 = v21;
  v16 = v22;
  (*(v21 + 32))(v6, v10, v22);
  v18 = sub_29E2BFC64();
  (*(*v2 + 312))(v18);
  return (*(v17 + 8))(v6, v16);
}

uint64_t sub_29DF6858C()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsSettingVisibilityRequirements;
  sub_29DF687B4();
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsUsageRequirements, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__isOnboardingRecordPresent, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeatureStatusModel(uint64_t a1)
{
  result = qword_2A1819590;
  if (!qword_2A1819590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF686F0(uint64_t a1, __n128 a2)
{
  sub_29DF687B4();
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29DF687B4()
{
  if (!qword_2A1A5E3C8)
  {
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E3C8);
    }
  }
}

uint64_t sub_29DF6884C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeatureStatusModel(0);
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

id sub_29DF6888C@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 24) featureIdentifier];
  *a1 = result;
  return result;
}

uint64_t *sub_29DF688CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v35 = *v3;
  v5 = sub_29E2C0514();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF38698(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF69110(0);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BFC94();
  v36 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF687B4();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v7;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v20 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v20 = MEMORY[0x29EDCA1A0];
  }

  v3[4] = v20;
  v40 = v3 + 4;
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsSettingVisibilityRequirements;
  LOBYTE(v46) = 0;
  sub_29E2C11D4();
  v22 = *(v17 + 32);
  v22(v3 + v21, v19, v16);
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsUsageRequirements;
  LOBYTE(v46) = 0;
  sub_29E2C11D4();
  v22(v3 + v23, v19, v16);
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__isOnboardingRecordPresent;
  LOBYTE(v46) = 0;
  sub_29E2C11D4();
  v22(v3 + v24, v19, v16);
  *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel_featureSettings) = 0;
  v25 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v26 = [v25 initWithFeatureIdentifier:v45 healthStore:{a2, v35}];
  v3[2] = v26;
  v27 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v26 healthDataSource:a2 currentCountryCode:0];
  v3[3] = v27;
  sub_29DE9408C(0, &qword_2A1A5E120, 0x29EDBABB0);
  v28 = v27;
  sub_29E2BFCD4();

  (*(*v3 + 344))(v14);
  (*(v36 + 8))(v14, v12);
  v46 = sub_29E2BFCE4();
  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v29 = sub_29E2C3CF4();
  v47 = v29;
  v30 = sub_29E2C3CE4();
  v31 = v41;
  (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
  sub_29DF691DC(0);
  sub_29DF69244(&qword_2A1A5E728, sub_29DF691DC, MEMORY[0x29EDB8A00]);
  sub_29DF4D6CC();
  v32 = v42;
  sub_29E2C1354();
  sub_29DEB1FA4(v31);

  swift_allocObject();
  swift_weakInit();
  sub_29DF69244(&unk_2A181BB30, sub_29DF69110, MEMORY[0x29EDB89E8]);
  v33 = v44;
  sub_29E2C1384();

  (*(v43 + 8))(v32, v33);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  return v3;
}

void sub_29DF69110(uint64_t a1)
{
  if (!qword_2A18195A0)
  {
    sub_29DF691DC(255);
    sub_29DE9408C(255, &qword_2A1A626C0, 0x29EDCA548);
    sub_29DF69244(&qword_2A1A5E728, sub_29DF691DC, MEMORY[0x29EDB8A00]);
    sub_29DF4D6CC();
    v1 = sub_29E2C0FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18195A0);
    }
  }
}

void sub_29DF691DC(uint64_t a1)
{
  if (!qword_2A1A5E720)
  {
    sub_29E2BFC94();
    v1 = sub_29E2C1024();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E720);
    }
  }
}

uint64_t sub_29DF69244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF6931C(uint64_t a1)
{
  result = type metadata accessor for SleepingWristTemperatureHelpTileVariant(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29DF693C8(uint64_t a1)
{
  result = sub_29E2C30A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29DF69484(uint64_t a1)
{
  sub_29DF694F8();
  if (v1 <= 0x3F)
  {
    sub_29DF69528();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_29DF694F8()
{
  result = qword_2A1A603D8;
  if (!qword_2A1A603D8)
  {
    result = &type metadata for SleepMeasurementsConfiguration.CorrectiveAction;
    atomic_store(&type metadata for SleepMeasurementsConfiguration.CorrectiveAction, &qword_2A1A603D8);
  }

  return result;
}

void sub_29DF69528()
{
  if (!qword_2A1A5E348)
  {
    v0 = sub_29E2C3084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E348);
    }
  }
}

uint64_t sub_29DF69570(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29DF6BEE8(0, &qword_2A1819670, sub_29DF6BC88, &type metadata for SleepingWristTemperatureHelpTileVariant.EstablishingBaselineTileCodingKeys, MEMORY[0x29EDC9E88]);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v37 = &v32 - v4;
  v5 = sub_29E2C3084();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF6BEE8(0, &qword_2A1819678, sub_29DF6BCDC, &type metadata for SleepingWristTemperatureHelpTileVariant.NoSamplesTakenYetTileCodingKeys, v2);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v32 - v8;
  sub_29DF6BEE8(0, &qword_2A1819680, sub_29DF6BD30, &type metadata for SleepingWristTemperatureHelpTileVariant.MisconfigurationTileCodingKeys, v2);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF6BEE8(0, &qword_2A1819688, sub_29DF6BD84, &type metadata for SleepingWristTemperatureHelpTileVariant.CodingKeys, v2);
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v32 - v17;
  sub_29DE966D4(a1, a1[3]);
  sub_29DF6BD84();
  sub_29E2C4AA4();
  sub_29DF6BBCC(v42, v15, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v38;
      v20 = v39;
      v22 = v36;
      (*(v38 + 32))(v36, v15, v39);
      v48 = 2;
      sub_29DF6BC88();
      v23 = v37;
      v24 = v44;
      sub_29E2C4864();
      sub_29DF6BB1C(&qword_2A1819690, MEMORY[0x29EDBA2B8], MEMORY[0x29EDBA2C0]);
      v25 = v41;
      sub_29E2C48A4();
      (*(v40 + 8))(v23, v25);
      (*(v21 + 8))(v22, v20);
      return (*(v43 + 8))(v18, v24);
    }

    else
    {
      v47 = 1;
      sub_29DF6BCDC();
      v31 = v44;
      sub_29E2C4864();
      (*(v34 + 8))(v9, v35);
      return (*(v43 + 8))(v18, v31);
    }
  }

  else
  {
    v27 = v32;
    v28 = *v15;
    v46 = 0;
    sub_29DF6BD30();
    v29 = v44;
    sub_29E2C4864();
    v45 = v28;
    sub_29DF6BF50();
    v30 = v33;
    sub_29E2C48A4();
    (*(v27 + 8))(v12, v30);
    return (*(v43 + 8))(v18, v29);
  }
}

uint64_t sub_29DF69B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29DF6BEE8(0, &qword_2A1819618, sub_29DF6BC88, &type metadata for SleepingWristTemperatureHelpTileVariant.EstablishingBaselineTileCodingKeys, MEMORY[0x29EDC9E80]);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v58 = &v49 - v6;
  sub_29DF6BEE8(0, &qword_2A1819628, sub_29DF6BCDC, &type metadata for SleepingWristTemperatureHelpTileVariant.NoSamplesTakenYetTileCodingKeys, v3);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v60 = &v49 - v8;
  sub_29DF6BEE8(0, &qword_2A1819638, sub_29DF6BD30, &type metadata for SleepingWristTemperatureHelpTileVariant.MisconfigurationTileCodingKeys, v3);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v59 = &v49 - v10;
  sub_29DF6BEE8(0, &qword_2A1819648, sub_29DF6BD84, &type metadata for SleepingWristTemperatureHelpTileVariant.CodingKeys, v3);
  v12 = v11;
  v62 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v49 - v13;
  v15 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v49 - v19;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v49 - v22;
  v24 = a1[3];
  v64 = a1;
  sub_29DE966D4(a1, v24);
  sub_29DF6BD84();
  v25 = v63;
  sub_29E2C4A94();
  if (!v25)
  {
    v50 = v20;
    v51 = v17;
    v26 = v59;
    v27 = v60;
    v63 = v23;
    v28 = v15;
    v29 = v61;
    v30 = sub_29E2C4854();
    v31 = (2 * *(v30 + 16)) | 1;
    v65 = v30;
    v66 = v30 + 32;
    v67 = 0;
    v68 = v31;
    v32 = sub_29E051F10();
    v33 = v12;
    v34 = v14;
    if (v32 != 3 && v67 == v68 >> 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v69 = 1;
          sub_29DF6BCDC();
          sub_29E2C47F4();
          v35 = v62;
          (*(v52 + 8))(v27, v53);
          (*(v35 + 8))(v34, v12);
          swift_unknownObjectRelease();
          v45 = v63;
          swift_storeEnumTagMultiPayload();
LABEL_12:
          sub_29DF6BB64(v45, v29, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
          return sub_29DE93B3C(v64);
        }

        v69 = 2;
        sub_29DF6BC88();
        v40 = v12;
        sub_29E2C47F4();
        v41 = v62;
        v60 = v28;
        sub_29E2C3084();
        sub_29DF6BB1C(&qword_2A1819660, MEMORY[0x29EDBA2B8], MEMORY[0x29EDBA2D0]);
        v42 = v51;
        v43 = v56;
        v44 = v58;
        sub_29E2C4844();
        (*(v57 + 8))(v44, v43);
        (*(v41 + 8))(v14, v40);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v42;
      }

      else
      {
        v69 = 0;
        sub_29DF6BD30();
        sub_29E2C47F4();
        sub_29DF6BE94();
        v46 = v55;
        sub_29E2C4844();
        (*(v54 + 8))(v26, v46);
        (*(v62 + 8))(v34, v12);
        swift_unknownObjectRelease();
        v47 = v50;
        *v50 = v69;
        swift_storeEnumTagMultiPayload();
        v48 = v47;
      }

      v45 = v63;
      sub_29DF6BB64(v48, v63, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
      goto LABEL_12;
    }

    v36 = sub_29E2C45E4();
    swift_allocError();
    v38 = v37;
    sub_29DF6BDD8(0);
    *v38 = v28;
    sub_29E2C4804();
    sub_29E2C45C4();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x29EDC9DB8], v36);
    swift_willThrow();
    (*(v62 + 8))(v34, v33);
    swift_unknownObjectRelease();
  }

  return sub_29DE93B3C(v64);
}

uint64_t sub_29DF6A3D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_29E2C30A4();
  v18 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF6BEE8(0, &qword_2A18195F0, sub_29DF6BC34, &type metadata for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext.CodingKeys, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v17 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29DF6BC34();
  v12 = v20;
  sub_29E2C4A94();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    sub_29DF6BB1C(&qword_2A1819600, MEMORY[0x29EDBA2E0], MEMORY[0x29EDBA2F0]);
    sub_29E2C4844();
    (*(v13 + 8))(v8, v6);
    (*(v14 + 32))(v11, v19, v3);
    sub_29DF6BB64(v11, v16, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext);
  }

  return sub_29DE93B3C(a1);
}

uint64_t sub_29DF6A6AC(void *a1)
{
  sub_29DF6BEE8(0, &qword_2A18195D8, sub_29DF6BAC8, &type metadata for SleepingWristTemperatureHelpTileConfiguration.CodingKeys, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9 - v6;
  sub_29DE966D4(a1, a1[3]);
  sub_29DF6BAC8();
  sub_29E2C4AA4();
  v11 = 0;
  type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  sub_29DF6BB1C(&qword_2A18195E0, type metadata accessor for SleepingWristTemperatureHelpTileVariant, &unk_29E2D3E48);
  sub_29E2C48A4();
  if (!v1)
  {
    type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
    v10 = 1;
    type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext(0);
    sub_29DF6BB1C(&qword_2A18195E8, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext, &unk_29E2D3EC0);
    sub_29E2C48A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29DF6A8DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext(0);
  MEMORY[0x2A1C7C4A8](v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v21);
  v22 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF6BEE8(0, &qword_2A18195B8, sub_29DF6BAC8, &type metadata for SleepingWristTemperatureHelpTileConfiguration.CodingKeys, MEMORY[0x29EDC9E80]);
  v23 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29DF6BAC8();
  v12 = v24;
  sub_29E2C4A94();
  if (v12)
  {
    return sub_29DE93B3C(a1);
  }

  v24 = a1;
  v13 = v20;
  v14 = v11;
  v26 = 0;
  sub_29DF6BB1C(&qword_2A18195C8, type metadata accessor for SleepingWristTemperatureHelpTileVariant, &unk_29E2D3E70);
  v15 = v22;
  sub_29E2C4844();
  sub_29DF6BB64(v15, v14, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  v25 = 1;
  sub_29DF6BB1C(&qword_2A18195D0, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext, &unk_29E2D3EE8);
  sub_29E2C4844();
  (*(v13 + 8))(v8, v23);
  sub_29DF6BB64(v4, v14 + *(v9 + 20), type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext);
  sub_29DF6BBCC(v14, v18, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  sub_29DE93B3C(v24);
  return sub_29DF6BA68(v14, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
}

unint64_t sub_29DF6ACDC()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_29DF6AD30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29DF6C6AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29DF6AD64(uint64_t a1)
{
  v2 = sub_29DF6BD84();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DF6ADA0(uint64_t a1)
{
  v2 = sub_29DF6BD84();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29DF6ADF4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29E2C4914();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29DF6AE7C(uint64_t a1)
{
  v2 = sub_29DF6BC88();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DF6AEB8(uint64_t a1)
{
  v2 = sub_29DF6BC88();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29DF6AF10(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000029E2F3A60 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_29E2C4914();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_29DF6AFA4(uint64_t a1)
{
  v2 = sub_29DF6BD30();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DF6AFE0(uint64_t a1)
{
  v2 = sub_29DF6BD30();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DF6B028(uint64_t a1)
{
  v2 = sub_29DF6BCDC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DF6B064(uint64_t a1)
{
  v2 = sub_29DF6BCDC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DF6B0D4()
{
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](0);
  return sub_29E2C4A54();
}

uint64_t sub_29DF6B118(uint64_t a1)
{
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](0);
  return sub_29E2C4A54();
}

void sub_29DF6B174(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000029E2F3A40 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_29E2C4914();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_29DF6B208(uint64_t a1)
{
  v2 = sub_29DF6BC34();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DF6B244(uint64_t a1)
{
  v2 = sub_29DF6BC34();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DF6B29C(void *a1)
{
  sub_29DF6BEE8(0, &qword_2A1819608, sub_29DF6BC34, &type metadata for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29DF6BC34();
  sub_29E2C4AA4();
  sub_29E2C30A4();
  sub_29DF6BB1C(&qword_2A1819610, MEMORY[0x29EDBA2E0], MEMORY[0x29EDBA2E8]);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29DF6B448()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E6169726176;
  }
}

void sub_29DF6B488(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
  if (v6 || (sub_29E2C4914() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029E2F3A20 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29E2C4914();

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

uint64_t sub_29DF6B56C(uint64_t a1)
{
  v2 = sub_29DF6BAC8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DF6B5A8(uint64_t a1)
{
  v2 = sub_29DF6BAC8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DF6B5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_29DF6B67C(a1, a2))
  {
    return 0;
  }

  return sub_29E2C3094();
}

BOOL sub_29DF6B67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C3084();
  v26 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v25 - v11;
  sub_29DF6BA04(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  sub_29DF6BBCC(a1, v15, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  sub_29DF6BBCC(a2, &v15[v17], type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_29DF6BBCC(v15, v12, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
    if (!swift_getEnumCaseMultiPayload())
    {
      v21 = *v12 == v15[v17];
      v22 = type metadata accessor for SleepingWristTemperatureHelpTileVariant;
      goto LABEL_11;
    }

LABEL_10:
    v21 = 0;
    v22 = sub_29DF6BA04;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v23 = swift_getEnumCaseMultiPayload();
    v22 = type metadata accessor for SleepingWristTemperatureHelpTileVariant;
    if (v23 == 2)
    {
      v21 = 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_29DF6BBCC(v15, v9, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v26 + 8))(v9, v4);
    goto LABEL_10;
  }

  v19 = v26;
  (*(v26 + 32))(v6, &v15[v17], v4);
  sub_29DF6BB1C(&qword_2A18195B0, MEMORY[0x29EDBA2B8], MEMORY[0x29EDBA2C8]);
  sub_29E2C35C4();
  sub_29E2C35C4();
  v20 = *(v19 + 8);
  v20(v6, v4);
  v21 = v28 == v27;
  v20(v9, v4);
  v22 = type metadata accessor for SleepingWristTemperatureHelpTileVariant;
LABEL_11:
  sub_29DF6BA68(v15, v22);
  return v21;
}

void sub_29DF6BA04(uint64_t a1)
{
  if (!qword_2A18195A8)
  {
    type metadata accessor for SleepingWristTemperatureHelpTileVariant(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18195A8);
    }
  }
}

uint64_t sub_29DF6BA68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29DF6BAC8()
{
  result = qword_2A18195C0;
  if (!qword_2A18195C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18195C0);
  }

  return result;
}

uint64_t sub_29DF6BB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF6BB64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF6BBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29DF6BC34()
{
  result = qword_2A18195F8;
  if (!qword_2A18195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18195F8);
  }

  return result;
}

unint64_t sub_29DF6BC88()
{
  result = qword_2A1819620;
  if (!qword_2A1819620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819620);
  }

  return result;
}

unint64_t sub_29DF6BCDC()
{
  result = qword_2A1819630;
  if (!qword_2A1819630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819630);
  }

  return result;
}

unint64_t sub_29DF6BD30()
{
  result = qword_2A1819640;
  if (!qword_2A1819640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819640);
  }

  return result;
}

unint64_t sub_29DF6BD84()
{
  result = qword_2A1819650;
  if (!qword_2A1819650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819650);
  }

  return result;
}

void sub_29DF6BDD8(uint64_t a1)
{
  if (!qword_2A1819658)
  {
    sub_29DF6BE48();
    sub_29E2C45D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1819658);
    }
  }
}

unint64_t sub_29DF6BE48()
{
  result = qword_2A181B260;
  if (!qword_2A181B260)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A181B260);
  }

  return result;
}

unint64_t sub_29DF6BE94()
{
  result = qword_2A1819668;
  if (!qword_2A1819668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819668);
  }

  return result;
}

void sub_29DF6BEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29DF6BF50()
{
  result = qword_2A1819698;
  if (!qword_2A1819698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingStepCompletedMetric.Provenance(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OnboardingStepCompletedMetric.Provenance(_WORD *result, int a2, int a3)
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

unint64_t sub_29DF6C0D8()
{
  result = qword_2A18196A0;
  if (!qword_2A18196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196A0);
  }

  return result;
}

unint64_t sub_29DF6C130()
{
  result = qword_2A18196A8;
  if (!qword_2A18196A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196A8);
  }

  return result;
}

unint64_t sub_29DF6C188()
{
  result = qword_2A18196B0;
  if (!qword_2A18196B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196B0);
  }

  return result;
}

unint64_t sub_29DF6C1E0()
{
  result = qword_2A18196B8;
  if (!qword_2A18196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196B8);
  }

  return result;
}

unint64_t sub_29DF6C238()
{
  result = qword_2A18196C0;
  if (!qword_2A18196C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196C0);
  }

  return result;
}

unint64_t sub_29DF6C290()
{
  result = qword_2A18196C8;
  if (!qword_2A18196C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196C8);
  }

  return result;
}

unint64_t sub_29DF6C2E8()
{
  result = qword_2A18196D0;
  if (!qword_2A18196D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196D0);
  }

  return result;
}

unint64_t sub_29DF6C340()
{
  result = qword_2A18196D8;
  if (!qword_2A18196D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196D8);
  }

  return result;
}

unint64_t sub_29DF6C398()
{
  result = qword_2A18196E0;
  if (!qword_2A18196E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196E0);
  }

  return result;
}

unint64_t sub_29DF6C3F0()
{
  result = qword_2A18196E8;
  if (!qword_2A18196E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196E8);
  }

  return result;
}

unint64_t sub_29DF6C448()
{
  result = qword_2A18196F0;
  if (!qword_2A18196F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196F0);
  }

  return result;
}

unint64_t sub_29DF6C4A0()
{
  result = qword_2A18196F8;
  if (!qword_2A18196F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18196F8);
  }

  return result;
}

unint64_t sub_29DF6C4F8()
{
  result = qword_2A1819700;
  if (!qword_2A1819700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819700);
  }

  return result;
}

unint64_t sub_29DF6C550()
{
  result = qword_2A1819708;
  if (!qword_2A1819708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819708);
  }

  return result;
}

unint64_t sub_29DF6C5A8()
{
  result = qword_2A1819710;
  if (!qword_2A1819710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819710);
  }

  return result;
}

unint64_t sub_29DF6C600()
{
  result = qword_2A1819718;
  if (!qword_2A1819718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819718);
  }

  return result;
}

unint64_t sub_29DF6C658()
{
  result = qword_2A1819720;
  if (!qword_2A1819720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819720);
  }

  return result;
}

uint64_t sub_29DF6C6AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000029E2F3A80 == a2 || (sub_29E2C4914() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000029E2F3AA0 == a2 || (sub_29E2C4914() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000029E2F3AC0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_29E2C4914();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_29DF6C7E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v54 - v15;
  v60 = v4;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v58 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle;
  sub_29E2C3314();
  v59 = *(v11 + 16);
  v59(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v57 = "MINDER_CANCEL_PROMPT";
  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = v17;
  v19 = sub_29E2C3414();
  v21 = v20;
  v22 = *(v11 + 8);
  v54[1] = v11 + 8;
  v56 = v22;
  v22(v16, v10);
  v55 = objc_opt_self();
  v23 = v10;
  v24 = [v55 hkmc_menstruationColor];
  v25 = type metadata accessor for ToggleButtonWithLabel();
  v26 = objc_allocWithZone(v25);
  v28 = sub_29DF6E1C0(v19, v21, v24, v27);
  v29 = v60;
  *&v60[v58] = v28;
  v58 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle;
  sub_29E2C3314();
  v59(v13, v16, v23);
  sub_29E2BCC74();
  v30 = sub_29E2C3414();
  v32 = v31;
  v56(v16, v23);
  v33 = v55;
  v34 = [v55 hkmc_supplementaryDataColor];
  v35 = objc_allocWithZone(v25);
  v37 = sub_29DF6E1C0(v30, v32, v34, v36);
  *&v29[v58] = v37;
  v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_header;
  *&v29[v38] = [objc_allocWithZone(type metadata accessor for HeaderLabel()) init];
  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_separator;
  v40 = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  HKUIOnePixel();
  [v40 setSeparatorThickness_];
  v41 = [v33 separatorColor];
  [v40 setColor_];

  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v29[v39] = v40;
  *&v29[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_height] = 0x4060800000000000;
  v62.receiver = v29;
  v62.super_class = ObjectType;
  v42 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v43 = [v42 layer];
  [v43 setCornerCurve_];

  v44 = [v42 layer];
  [v44 setCornerRadius_];

  [v42 setMaximumContentSizeCategory_];
  [*(*&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) addTarget:v42 action:sel_toggleFlow forControlEvents:64];
  v45 = *(*&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton);
  [v45 addTarget:v42 action:sel_toggleSpotting forControlEvents:64];

  sub_29DF6CF0C();
  sub_29DF6D054();
  [v42 frame];
  Width = CGRectGetWidth(v63);
  LODWORD(v47) = 1148846080;
  LODWORD(v48) = 1112014848;
  [v42 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:*(MEMORY[0x29EDC81E0] + 8) verticalFittingPriority:{v47, v48}];
  *&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_height] = fmin(v49, 200.0);
  [v42 frame];
  [v42 setFrame_];
  sub_29DF6D714();
  sub_29DE9408C(0, &qword_2A181ADA0, 0x29EDC7D80);
  sub_29E2C3D24();
  sub_29E2C4034();
  swift_unknownObjectRelease();

  sub_29DF70270(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_29E2CAB20;
  v51 = sub_29E2C0B54();
  v52 = MEMORY[0x29EDC7870];
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v42;
}

void sub_29DF6CF0C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_systemBackgroundColor;
  if (v2 != 1)
  {
    v4 = &selRef_tertiarySystemBackgroundColor;
  }

  v5 = [v3 *v4];
  [v0 setBackgroundColor_];

  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_separator];
  v7 = [v0 traitCollection];
  v8 = [v7 userInterfaceStyle];

  v9 = objc_opt_self();
  v10 = &selRef_systemGray5Color;
  if (v8 != 1)
  {
    v10 = &selRef_tertiaryLabelColor;
  }

  v11 = [v9 *v10];
  [v6 setBackgroundColor_];
}

void sub_29DF6D054()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_header];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle];
  [v0 addSubview_];
  v51 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle];
  [v0 addSubview_];
  v49 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_separator];
  [v0 addSubview_];
  v50 = objc_opt_self();
  sub_29DE99B54();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2D45F0;
  v4 = [v1 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant_];

  *(v3 + 32) = v5;
  v6 = [v1 &off_29F3635B8 + 2];
  v7 = [v6 constraintLessThanOrEqualToConstant_];

  *(v3 + 40) = v7;
  v8 = [v1 widthAnchor];
  v9 = [v0 widthAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v3 + 48) = v10;
  v11 = [v1 topAnchor];
  v12 = [v0 &selRef_hkmc_menstruationColor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v3 + 56) = v13;
  v14 = [v1 leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v3 + 64) = v16;
  v17 = [v1 bottomAnchor];
  v18 = [v2 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v3 + 72) = v19;
  v20 = [v2 leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v3 + 80) = v22;
  v23 = [v2 bottomAnchor];
  v24 = [v49 topAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v3 + 88) = v25;
  v26 = [v2 trailingAnchor];
  v27 = [v0 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v3 + 96) = v28;
  v29 = [v49 leadingAnchor];
  v30 = [v0 leadingAnchor];
  v31 = [v29 &selRef:v30 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v3 + 104) = v31;
  v32 = [v49 trailingAnchor];
  v33 = [v0 trailingAnchor];
  v34 = [v32 &selRef:v33 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v3 + 112) = v34;
  v35 = [v49 heightAnchor];
  HKUIOnePixel();
  v36 = [v35 constraintEqualToConstant_];

  *(v3 + 120) = v36;
  v37 = [v51 topAnchor];
  v38 = [v49 bottomAnchor];
  v39 = [v37 &selRef:v38 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v3 + 128) = v39;
  v40 = [v51 leadingAnchor];
  v41 = [v0 leadingAnchor];
  v42 = [v40 &selRef:v41 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v3 + 136) = v42;
  v43 = [v51 bottomAnchor];
  v44 = [v0 bottomAnchor];
  v45 = [v43 &selRef:v44 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v3 + 144) = v45;
  v46 = [v51 trailingAnchor];
  v47 = [v0 trailingAnchor];
  v48 = [v46 &selRef:v47 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v3 + 152) = v48;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v52 = sub_29E2C3604();

  [v50 activateConstraints_];
}

void sub_29DF6D714()
{
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  v4 = [v0 layer];
  LODWORD(v5) = 1032805417;
  [v4 setShadowOpacity_];

  v6 = [v0 layer];
  [v6 setShadowRadius_];

  v7 = [v0 layer];
  [v7 setShadowOffset_];
}

id sub_29DF6D884(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_applyLayoutAttributes_, a1);
  v3 = [v1 layer];
  [v3 setZPosition_];

  [v1 frame];
  [v1 setFrame_];
  [v1 frame];
  return [v1 setFrame_];
}

uint64_t sub_29DF6DA5C(void *a1, void *a2, void (*a3)(void), void (*a4)(void))
{
  v8 = *(v4 + *a1);
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) = (*(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) & 1) == 0;
  [*(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) setNeedsUpdateConfiguration];
  if (*(v8 + v9) == 1)
  {
    v10 = *(v4 + *a2);
    if (*(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) == 1)
    {
      *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) = 0;
      [*(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) setNeedsUpdateConfiguration];
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    a3(*(v8 + v9));
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a4(*(*(v4 + *a2) + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked));

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_29DF6DD08(__n128 a1)
{
  sub_29DF70270(0, &qword_2A1819790, MEMORY[0x29EDC78D0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v29 - v5;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v29 - v8;
  v10 = sub_29E2C4274();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  sub_29DE9408C(0, &qword_2A1819798, 0x29EDC7958);
  sub_29E2C4244();
  v12 = sub_29E2C4284();
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setUserInteractionEnabled_];

  sub_29E2C4294();
  v13 = *(v11 + 48);
  if (v13(v9, 1, v10))
  {
    sub_29DF70130(v9, v6, v14);
    sub_29E2C42A4();
    sub_29DF701C4(v9, v15);
  }

  else
  {
    v16 = sub_29E2C33A4();
    v17 = [objc_opt_self() systemImageNamed_];

    sub_29E2C4234();
    sub_29E2C42A4();
  }

  sub_29E2C4294();
  if (v13(v3, 1, v10))
  {
    sub_29DF70130(v3, v6, v18);
    sub_29E2C42A4();
    sub_29DF701C4(v3, v19);
  }

  else
  {
    v20 = *MEMORY[0x29EDC76C0];
    v21 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v22 = [v21 fontDescriptorWithSymbolicTraits_];
    if (v22)
    {
      v23 = v22;

      v21 = v23;
    }

    v24 = [v21 fontDescriptorWithDesign_];
    if (v24)
    {
      v25 = v24;

      v21 = v25;
    }

    v26 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];

    v27 = [objc_opt_self() configurationWithFont:v26 scale:3];
    sub_29E2C4134();
    sub_29E2C42A4();
  }

  return v12;
}

id sub_29DF6E0E4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_29E2C33A4();
    [v4 setText_];

    [v4 setNumberOfLines_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_29DF6E1C0(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked] = 0;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton;
  *&v4[v8] = sub_29DF6DD08(a4);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel____lazy_storage___label] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_tintColorWhenChecked] = a3;
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_title];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for ToggleButtonWithLabel();
  v10 = a3;
  v11 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = *MEMORY[0x29EDC8068];
  v13 = v11;
  [v13 setMaximumContentSizeCategory_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton];
  v15 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v24[4] = sub_29DF70250;
  v24[5] = v15;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1107296256;
  v24[2] = sub_29DF6E81C;
  v24[3] = &unk_2A24B52F8;
  v16 = _Block_copy(v24);

  [v14 setConfigurationUpdateHandler_];
  _Block_release(v16);
  sub_29DF6E884();
  v17 = sub_29DF6E0E4();
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v18 = sub_29E2C3FD4();
  [v17 setFont_];

  v19 = *&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel____lazy_storage___label];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 labelColor];
  [v21 setTextColor_];

  return v13;
}

uint64_t sub_29DF6E440(void *a1, uint64_t a2, __n128 a3)
{
  sub_29DF70270(0, &qword_2A1819790, MEMORY[0x29EDC78D0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v30 - v8;
  sub_29E2C4294();
  if ([a1 state] == 1)
  {
    v10 = sub_29E2C33A4();
    v11 = [objc_opt_self() systemImageNamed_];

LABEL_4:
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = *&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_tintColorWhenChecked];

    goto LABEL_6;
  }

  v12 = sub_29E2C33A4();
  v11 = [objc_opt_self() systemImageNamed_];

  v13 = swift_unknownObjectUnownedLoadStrong();
  LODWORD(v12) = v13[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked];

  if (v12 == 1)
  {
    goto LABEL_4;
  }

  v15 = [objc_opt_self() tertiaryLabelColor];
LABEL_6:
  [a1 setTintColor_];

  v16 = sub_29E2C4274();
  v17 = *(*(v16 - 8) + 48);
  if (!v17(v9, 1, v16))
  {
    v18 = v11;
    sub_29E2C4234();
  }

  if (!v17(v9, 1, v16))
  {
    v20 = *MEMORY[0x29EDC76C0];
    v21 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v22 = [v21 fontDescriptorWithSymbolicTraits_];
    if (v22)
    {
      v23 = v22;

      v21 = v23;
    }

    v24 = [v21 fontDescriptorWithDesign_];
    if (v24)
    {
      v25 = v24;

      v21 = v25;
    }

    v26 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];

    v27 = [objc_opt_self() configurationWithFont:v26 scale:3];
    sub_29E2C4134();
  }

  sub_29DF70130(v9, v6, v19);
  sub_29E2C42A4();

  return sub_29DF701C4(v9, v28);
}

void sub_29DF6E81C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_29DF6E884()
{
  v1 = v0;
  v2 = sub_29DF6E0E4();
  [v0 addSubview_];

  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton];
  [v1 addSubview_];
  v29 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2D0520;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel____lazy_storage___label;
  v6 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel____lazy_storage___label] widthAnchor];
  v7 = [v6 constraintGreaterThanOrEqualToConstant_];

  *(v4 + 32) = v7;
  v8 = [*&v1[v5] topAnchor];
  v9 = [v1 &selRef_hkmc_menstruationColor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

  *(v4 + 40) = v10;
  v11 = [*&v1[v5] leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:16.0];

  *(v4 + 48) = v13;
  v14 = [*&v1[v5] bottomAnchor];
  v15 = [v1 &selRef_setDuration_ + 5];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-12.0];

  *(v4 + 56) = v16;
  v17 = [v3 trailingAnchor];
  v18 = [v1 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-4.0];

  *(v4 + 64) = v19;
  v20 = [v3 leadingAnchor];
  v21 = [*&v1[v5] trailingAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:5.0];

  *(v4 + 72) = v22;
  v23 = [v3 topAnchor];
  v24 = [v1 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:6.0];

  *(v4 + 80) = v25;
  v26 = [v3 bottomAnchor];
  v27 = [v1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-6.0];

  *(v4 + 88) = v28;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v30 = sub_29E2C3604();

  [v29 activateConstraints_];
}

id sub_29DF6EDF0()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v13[-v6];
  v8 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  v10 = sub_29E2C33A4();

  [v8 setText_];

  v11 = [objc_opt_self() whiteColor];
  [v8 setTextColor_];

  return v8;
}

char *sub_29DF6F090()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_label;
  *&v0[v1] = sub_29DF6EDF0();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_background;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [v3 layer];
  [v5 setCornerCurve_];

  v6 = [v3 layer];
  [v6 setMaskedCorners_];

  *&v0[v2] = v3;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeaderLabel();
  v7 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setMaximumContentSizeCategory_];
  sub_29DF6F348();
  v8 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_label];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v9 = sub_29E2C3FD4();
  [v8 setFont_];

  v10 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_background];
  v11 = [v7 traitCollection];
  v12 = [v11 userInterfaceStyle];

  v13 = objc_opt_self();
  v14 = &selRef_systemGrayColor;
  if (v12 != 1)
  {
    v14 = &selRef_systemGray2Color;
  }

  v15 = [v13 *v14];
  [v10 setBackgroundColor_];

  return v7;
}

void sub_29DF6F348()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_background];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_label];
  [v0 addSubview_];
  MEMORY[0x29ED807E0](v0);
  v3 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CDBD0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:12.0];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];

  *(v4 + 40) = v10;
  v11 = [v1 bottomAnchor];
  v12 = [v2 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:12.0];

  *(v4 + 48) = v13;
  sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v14 = sub_29E2C3604();

  [v3 activateConstraints_];
}

id sub_29DF6F5F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_29DF6F6CC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_header];
  v3 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_label];
  sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v4 = sub_29E2C3FD4();
  [v3 setFont_];

  v5 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26611HeaderLabel_background];
  v6 = [v2 traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = objc_opt_self();
  v9 = &selRef_systemGrayColor;
  if (v7 != 1)
  {
    v9 = &selRef_systemGray2Color;
  }

  v10 = [v8 *v9];
  [v5 setBackgroundColor_];

  v11 = sub_29DF6E0E4();
  v12 = sub_29E2C3FD4();
  [v11 setFont_];

  v13 = sub_29DF6E0E4();
  v14 = sub_29E2C3FD4();
  [v13 setFont_];

  [a1 frame];
  Width = CGRectGetWidth(v21);
  LODWORD(v16) = 1148846080;
  LODWORD(v17) = 1112014848;
  [a1 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:*(MEMORY[0x29EDC81E0] + 8) verticalFittingPriority:{v16, v17}];
  *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_height] = fmin(v18, 200.0);
  [a1 frame];

  return [a1 setFrame_];
}

void sub_29DF6F960()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v33 - v7;
  v39 = v0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle;
  sub_29E2C3314();
  v38 = *(v3 + 16);
  v38(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v36 = "MINDER_CANCEL_PROMPT";
  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = v9;
  v11 = sub_29E2C3414();
  v13 = v12;
  v14 = *(v3 + 8);
  v33 = v3 + 8;
  v35 = v14;
  v14(v8, v2);
  v34 = objc_opt_self();
  v15 = [v34 hkmc_menstruationColor];
  v16 = type metadata accessor for ToggleButtonWithLabel();
  v17 = objc_allocWithZone(v16);
  v19 = sub_29DF6E1C0(v11, v13, v15, v18);
  v20 = v39;
  *(v39 + v37) = v19;
  v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle;
  sub_29E2C3314();
  v38(v5, v8, v2);
  sub_29E2BCC74();
  v21 = sub_29E2C3414();
  v23 = v22;
  v35(v8, v2);
  v24 = v34;
  v25 = [v34 hkmc_supplementaryDataColor];
  v26 = objc_allocWithZone(v16);
  v28 = sub_29DF6E1C0(v21, v23, v25, v27);
  *(v20 + v37) = v28;
  v29 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_header;
  *(v20 + v29) = [objc_allocWithZone(type metadata accessor for HeaderLabel()) init];
  v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_separator;
  v31 = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  HKUIOnePixel();
  [v31 setSeparatorThickness_];
  v32 = [v24 separatorColor];
  [v31 setColor_];

  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v20 + v30) = v31;
  *(v20 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_height) = 0x4060800000000000;
  sub_29E2C4724();
  __break(1u);
}