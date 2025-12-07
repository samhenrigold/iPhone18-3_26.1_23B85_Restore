void sub_29E058DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E058E3C(uint64_t a1, __n128 a2)
{
  if (!qword_2A181B528)
  {
    sub_29E058E94(255, a2);
    v2 = sub_29E2C2B14();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181B528);
    }
  }
}

void sub_29E058E94(uint64_t a1, __n128 a2)
{
  if (!qword_2A181B530)
  {
    sub_29E058EF8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181B530);
    }
  }
}

void sub_29E058F74(uint64_t a1, __n128 a2)
{
  if (!qword_2A181B550)
  {
    sub_29E058FD4(255);
    v2 = sub_29E2C1C64();
    if (!v3)
    {
      atomic_store(v2, &qword_2A181B550);
    }
  }
}

void sub_29E059050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E0590B8(__n128 a1)
{
  result = qword_2A181B590;
  if (!qword_2A181B590)
  {
    sub_29E05901C(255, a1);
    sub_29E059130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B590);
  }

  return result;
}

unint64_t sub_29E059130()
{
  result = qword_2A181B598;
  if (!qword_2A181B598)
  {
    sub_29E058EF8(255);
    sub_29E059224(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
    sub_29E059358(&qword_2A1818718, type metadata accessor for EndDatePickerRow, &unk_29E2DFB64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B598);
  }

  return result;
}

uint64_t sub_29E059224(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E0592B0(__n128 a1)
{
  result = qword_2A181B5A0;
  if (!qword_2A181B5A0)
  {
    sub_29E058F40(255, a1);
    sub_29E059358(&qword_2A181B5A8, sub_29E058E3C, MEMORY[0x29EDBCC30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B5A0);
  }

  return result;
}

uint64_t sub_29E059358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E0593A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E059408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_29E059468()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29E2C3384();
  v4 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v66 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v67 = (&v52 - v7);
  sub_29DEDB978(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v61 = &v52 - v11;
  v12 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC6594(0);
  v60 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v59 = &v52 - v18;
  sub_29DEFCC2C(0);
  v58 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v64 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2C31A4();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v52 - v26;
  *&v29 = MEMORY[0x2A1C7C4A8](v28).n128_u64[0];
  v31 = &v52 - v30;
  v32 = *(v0 + 8);
  v33 = [v32 lastDayIndex];
  v34 = v33;
  if (v33)
  {
    v56 = v3;
    v57 = v4;
    [v33 integerValue];
    sub_29E2C30D4();

    v35 = v22 + 4;
    v36 = v22[4];
    v36(v31, v27, v21);
    v37 = [v32 menstruationSegment];
    [v37 days];

    sub_29E2C30D4();
    sub_29E059BD4(&qword_2A1A61A40, MEMORY[0x29EDBA308]);
    if (sub_29E2C32B4())
    {
      v38 = v59;
      v36(v59, v24, v21);
      v39 = v60;
      v40 = *(v60 + 48);
      v53 = v36;
      v54 = v22[2];
      v54(v38 + v40, v31, v21);
      sub_29E059F70(v38, v16, sub_29DEC6594);
      v41 = *(v39 + 48);
      v55 = v31;
      v27 = v64;
      v36(v64, v16, v21);
      v42 = v22;
      v52 = v22 + 4;
      v43 = v22[1];
      v43(&v16[v41], v21);
      sub_29DEC704C(v38, v16);
      v53(&v27[*(v58 + 36)], &v16[*(v39 + 48)], v21);
      v59 = v43;
      v43(v16, v21);
      sub_29E2C3354();
      sub_29E2C3344();
      v44 = v61;
      v54(v61, v27, v21);
      v45 = v65;
      v46 = v42[7];
      v46(v44, 0, 1, v21);
      v47 = v62;
      v60 = v21;
      v46(v62, 1, 1, v21);
      v48 = sub_29E059C18(v44, v47);
      sub_29DFAB164(v47, sub_29DEDB978);
      v49 = v44;
      v35 = v45;
      sub_29DFAB164(v49, sub_29DEDB978);
      v68 = v48;
      sub_29E2C3324();
      sub_29E2C3344();
      v36 = v67;
      sub_29E2C3374();
      v22 = v57;
      (*(v57 + 16))(v66, v36, v35);
      if (qword_2A1A62788 == -1)
      {
LABEL_4:
        v50 = qword_2A1A67F80;
        sub_29E2BCC74();
        v34 = sub_29E2C3414();
        (v22[1])(v36, v35);
        sub_29DFAB164(v27, sub_29DEFCC2C);
        (v59)(v55, v60);
        return v34;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  return v34;
}

uint64_t sub_29E059BD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29E2C31A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E059C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v24 - v9;
  sub_29DF5A53C(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_29E059F70(a1, v13, sub_29DEDB978);
  sub_29E059F70(a2, &v13[v15], sub_29DEDB978);
  v16 = v5[6];
  LODWORD(a1) = v16(v13, 1, v4);
  v17 = v16(&v13[v15], 1, v4);
  v18 = v17;
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v5[4];
    v16(v10, v13, v4);
    if (v18 != 1)
    {
LABEL_11:
      v16(v7, &v13[v15], v4);
      sub_29E059BD4(&unk_2A18199E0, MEMORY[0x29EDBA318]);
      sub_29E2C4344();
      v23 = v5[1];
      v23(v7, v4);
      v23(v10, v4);
      return v25;
    }

    sub_29DEFCC2C(0);
    sub_29E059BD4(&unk_2A18199E0, MEMORY[0x29EDBA318]);
    sub_29E2C4344();
    v20 = v5[1];
    ++v5;
    v20(v10, v4);
    result = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v10, &v13[v15], v4);
  sub_29DEFCC2C(0);
  v7 = *(v21 + 36);
  sub_29E059BD4(&unk_2A18199E0, MEMORY[0x29EDBA318]);
  sub_29E2C4344();
  v22 = v5[1];
  ++v5;
  v22(v10, v4);
  result = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_29E059F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E059FD8(uint64_t a1)
{
  v89 = a1;
  v79 = sub_29E2C0514();
  v78 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79);
  v80 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E05D0A4(0);
  v4 = v3;
  v81 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v90 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v77 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v92 = (&v77 - v10);
  v11 = sub_29E2BEBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v77 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v77 - v18;
  v85 = v1;
  v20 = sub_29E2BEC64();
  v21 = *(v20 + 16);
  v93 = v4;
  v94 = v8;
  v88 = v11;
  v91 = v16;
  v86 = v21;
  if (v21)
  {
    v22 = 0;
    v84 = v12 + 16;
    v23 = (v12 + 8);
    v82 = (v12 + 32);
    v87 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v25 = *(v12 + 72);
      (*(v12 + 16))(v19, v20 + v24 + v25 * v22, v11);
      v26 = sub_29E2BEB94();
      if (*(v26 + 16))
      {
        sub_29DE9DC34(v26 + 32, v98);

        sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
        if (swift_dynamicCast())
        {
          v27 = v96;
          v28 = v97;

          if (v27)
          {
            v11 = v88;
            if (v28 != 3)
            {
              v29 = *v82;
              (*v82)(v83, v19, v88);
              v30 = v87;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v32 = v30;
              v99 = v30;
              v4 = v93;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_29E181518(0, *(v30 + 16) + 1, 1);
                v32 = v99;
              }

              v34 = *(v32 + 16);
              v33 = *(v32 + 24);
              v35 = v34 + 1;
              if (v34 >= v33 >> 1)
              {
                v77 = v29;
                v87 = v34 + 1;
                sub_29E181518((v33 > 1), v34 + 1, 1);
                v35 = v87;
                v29 = v77;
                v32 = v99;
              }

              *(v32 + 16) = v35;
              v87 = v32;
              v36 = v32 + v24 + v34 * v25;
              v11 = v88;
              v29(v36, v83, v88);
              goto LABEL_4;
            }

            (*v23)(v19, v88);
          }

          else
          {
            v11 = v88;
            (*v23)(v19, v88);
          }

          v4 = v93;
        }

        else
        {
          v11 = v88;
          (*v23)(v19, v88);
        }
      }

      else
      {
        (*v23)(v19, v11);
      }

LABEL_4:
      ++v22;
      v8 = v94;
      v16 = v91;
      if (v86 == v22)
      {
        goto LABEL_20;
      }
    }
  }

  v87 = MEMORY[0x29EDCA190];
LABEL_20:

  v37 = *(v89 + 16);
  v38 = 32;
  v39 = v92;
  v40 = v80;
  while (v37)
  {
    v41 = *(v89 + v38);
    v38 += 8;
    --v37;
    if (v41 != 2)
    {
      if (HKShowSensitiveLogItems())
      {
        sub_29E2C04B4();
        v42 = sub_29E2C0504();
        v43 = sub_29E2C3A34();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v95 = v86;
          *v44 = 136315394;
          *(v44 + 4) = sub_29DFAA104(0xD00000000000001CLL, 0x800000029E2FB010, &v95);
          *(v44 + 12) = 2080;
          v98[0] = 0xD00000000000002DLL;
          v98[1] = 0x800000029E2FAF70;
          v45 = sub_29E2C3464();
          v47 = sub_29DFAA104(v45, v46, &v95);
          v11 = v88;

          *(v44 + 14) = v47;
          _os_log_impl(&dword_29DE74000, v42, v43, "[%s] %s", v44, 0x16u);
          v48 = v86;
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v48, -1, -1);
          MEMORY[0x29ED82140](v44, -1, -1);
        }

        (*(v78 + 8))(v40, v79);
        v39 = v92;
      }

      break;
    }
  }

  v49 = *(v87 + 16);
  if (v49)
  {
    v98[0] = MEMORY[0x29EDCA190];
    v86 = v49;
    sub_29E181858(0, v49, 0);
    v50 = 0;
    v51 = v98[0];
    v84 = v87 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v52 = v87;
    v23 = (v12 + 8);
    v53 = v81;
    while (v50 < *(v52 + 16))
    {
      (*(v12 + 16))(v16, v84 + *(v12 + 72) * v50, v11);
      sub_29E05B4CC(v16, v89, v85, v90);
      (*v23)(v16, v11);
      v54 = v51;
      v98[0] = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_29E181858((v55 > 1), v56 + 1, 1);
        v53 = v81;
        v54 = v98[0];
      }

      ++v50;
      *(v54 + 16) = v56 + 1;
      v51 = v54;
      sub_29E05D140(v90, v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56);
      v52 = v87;
      v11 = v88;
      v16 = v91;
      if (v86 == v50)
      {

        v57 = MEMORY[0x29EDCA190];
        v58 = v51;
        v4 = v93;
        v8 = v94;
        v59 = *(v58 + 16);
        if (!v59)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

LABEL_40:
    __break(1u);
    (*v23)(v16, v11);

    __break(1u);
  }

  else
  {

    v58 = MEMORY[0x29EDCA190];
    v53 = v81;
    v57 = MEMORY[0x29EDCA190];
    v59 = *(MEMORY[0x29EDCA190] + 16);
    if (v59)
    {
LABEL_34:
      v98[0] = v57;
      v60 = v4;
      v61 = v58;
      sub_29E2C4634();
      v62 = objc_opt_self();
      v63 = *(v53 + 80);
      v88 = v61;
      v64 = v61 + ((v63 + 32) & ~v63);
      v65 = v60;
      v89 = *(v53 + 72);
      v90 = v62;
      do
      {
        sub_29E05D2C4(v64, v39, sub_29E05D0A4);
        v91 = *v39;
        sub_29E05D2C4(v39, v8, sub_29E05D0A4);
        v66 = *(v65 + 48);
        v67 = *(v93 + 64);
        v68 = sub_29E2BCB04();
        v69 = sub_29E2BCBB4();
        v70 = *(*(v69 - 8) + 8);
        v70(&v94[v67], v69);
        v70(&v94[v66], v69);
        sub_29E05D2C4(v92, v94, sub_29E05D0A4);
        v71 = *(v93 + 48);
        v72 = *(v93 + 64);
        v73 = sub_29E2BCB04();
        v74 = &v94[v72];
        v8 = v94;
        v70(v74, v69);
        v75 = &v8[v71];
        v65 = v93;
        v70(v75, v69);
        v39 = v92;
        v76 = [v90 hkmc:v91 categorySampleWithCycleFactor:v68 startDate:v73 endDate:?];

        sub_29E05D1FC(v39, sub_29E05D0A4);
        sub_29E2C4614();
        sub_29E2C4644();
        sub_29E2C4654();
        sub_29E2C4624();
        v64 += v89;
        --v59;
      }

      while (v59);
    }

LABEL_36:
  }
}

void sub_29E05AA50(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v89 = a3;
  v92 = a2;
  v95 = a1;
  sub_29E05D0A4(0);
  v91 = v6;
  v84 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v99 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v97 = (&v79 - v9);
  MEMORY[0x2A1C7C4A8](v10);
  v96 = (&v79 - v11);
  v82 = sub_29E2C0514();
  v81 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v83 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BEBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v86 = &v79 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v79 - v20;
  v90 = v4;
  v22 = sub_29E2BEC64();
  v23 = *(v22 + 16);
  v94 = v13;
  v98 = v16;
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v88 = v14 + 16;
    v87 = (v14 + 8);
    v85 = (v14 + 32);
    v93 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v25 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v5 = *(v14 + 72);
      (*(v14 + 16))(v21, v22 + v26 + v5 * v25, v13);
      v27 = sub_29E2BEB94();
      if (!*(v27 + 16))
      {
        break;
      }

      sub_29DE9DC34(v27 + 32, v103);

      sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*v87)(v21, v13);
        goto LABEL_12;
      }

      v28 = v101;
      v29 = v102;

      if (v28 != 1)
      {
        v13 = v94;
        (*v87)(v21, v94);
        goto LABEL_12;
      }

      v13 = v94;
      v16 = v98;
      if (v29 != 3)
      {
        v30 = *v85;
        (*v85)(v86, v21, v94);
        v31 = v93;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v31;
        v104 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E181518(0, *(v31 + 16) + 1, 1);
          v33 = v104;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v80 = v30;
          v93 = v35 + 1;
          sub_29E181518((v34 > 1), v35 + 1, 1);
          v36 = v93;
          v30 = v80;
          v33 = v104;
        }

        *(v33 + 16) = v36;
        v93 = v33;
        v30((v33 + v26 + v35 * v5), v86, v13);
        goto LABEL_12;
      }

      (*v87)(v21, v94);
LABEL_13:
      if (v24 == ++v25)
      {
        goto LABEL_21;
      }
    }

    (*v87)(v21, v13);

LABEL_12:
    v16 = v98;
    goto LABEL_13;
  }

  v93 = MEMORY[0x29EDCA190];
LABEL_21:

  v37 = v95[2];
  v38 = 4;
  v39 = v99;
  v40 = v97;
  v41 = v83;
  while (v37)
  {
    v42 = v95[v38++];
    --v37;
    if (v42 != 2)
    {
      if (HKShowSensitiveLogItems())
      {
        sub_29E2C04B4();
        v43 = sub_29E2C0504();
        v44 = sub_29E2C3A34();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v100 = v46;
          *v45 = 136315394;
          v47 = sub_29E2C4AE4();
          v49 = sub_29DFAA104(v47, v48, &v100);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          v103[0] = 0xD00000000000002DLL;
          v103[1] = 0x800000029E2FAF70;
          v50 = sub_29E2C3464();
          v52 = sub_29DFAA104(v50, v51, &v100);
          v16 = v98;

          *(v45 + 14) = v52;
          _os_log_impl(&dword_29DE74000, v43, v44, "[%s] %s", v45, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v46, -1, -1);
          v53 = v45;
          v39 = v99;
          MEMORY[0x29ED82140](v53, -1, -1);
        }

        (*(v81 + 8))(v41, v82);
        v40 = v97;
      }

      break;
    }
  }

  v54 = *(v93 + 16);
  if (v54)
  {
    v103[0] = MEMORY[0x29EDCA190];
    v88 = v54;
    sub_29E181858(0, v54, 0);
    v55 = 0;
    v56 = v103[0];
    v87 = (v93 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
    v57 = v93;
    v5 = (v14 + 8);
    v58 = v84;
    while (v55 < *(v57 + 16))
    {
      (*(v14 + 16))(v16, v87 + *(v14 + 72) * v55, v13);
      sub_29E05C0E4(v16, v95, v90, v92, v89, v96);
      (*v5)(v16, v13);
      v59 = v56;
      v103[0] = v56;
      v61 = *(v56 + 16);
      v60 = *(v56 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_29E181858((v60 > 1), v61 + 1, 1);
        v58 = v84;
        v59 = v103[0];
      }

      ++v55;
      *(v59 + 16) = v61 + 1;
      v56 = v59;
      sub_29E05D140(v96, v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v61);
      v57 = v93;
      v13 = v94;
      v16 = v98;
      if (v88 == v55)
      {

        v39 = v99;
        goto LABEL_36;
      }
    }

LABEL_42:
    __break(1u);
    (*v5)(v16, v13);

    __break(1u);
  }

  else
  {

    v56 = MEMORY[0x29EDCA190];
    v58 = v84;
LABEL_36:
    v62 = *(v56 + 16);
    if (v62)
    {
      v103[0] = MEMORY[0x29EDCA190];
      sub_29E2C4634();
      v63 = objc_opt_self();
      v64 = *(v58 + 80);
      v93 = v56;
      v65 = v56 + ((v64 + 32) & ~v64);
      v94 = *(v58 + 72);
      v95 = v63;
      do
      {
        v98 = v62;
        sub_29E05D2C4(v65, v40, sub_29E05D0A4);
        v96 = *v40;
        sub_29E05D2C4(v40, v39, sub_29E05D0A4);
        v66 = v91;
        v67 = *(v91 + 48);
        v68 = *(v91 + 64);
        v69 = sub_29E2BCB04();
        v70 = sub_29E2BCBB4();
        v71 = *(*(v70 - 8) + 8);
        v71(v99 + v68, v70);
        v71(v99 + v67, v70);
        sub_29E05D2C4(v97, v99, sub_29E05D0A4);
        v72 = *(v66 + 48);
        v73 = *(v66 + 64);
        v74 = sub_29E2BCB04();
        v75 = v99 + v73;
        v76 = v98;
        v71(v75, v70);
        v77 = v99 + v72;
        v39 = v99;
        v71(v77, v70);
        v40 = v97;
        v78 = [v95 hkmc:v96 categorySampleWithCycleFactor:v69 startDate:v74 endDate:?];

        sub_29E05D1FC(v40, sub_29E05D0A4);
        sub_29E2C4614();
        sub_29E2C4644();
        sub_29E2C4654();
        sub_29E2C4624();
        v65 += v94;
        v62 = v76 - 1;
      }

      while (v62);
    }
  }
}

uint64_t sub_29E05B4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v109 = a3;
  v108 = a4;
  sub_29E05D1A4(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v106 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v98 - v10;
  v12 = sub_29E2BCBB4();
  v117 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v98 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = (&v98 - v18);
  MEMORY[0x2A1C7C4A8](v20);
  v111 = &v98 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v114 = &v98 - v23;
  started = type metadata accessor for OnboardingStartDateRow(0);
  MEMORY[0x2A1C7C4A8](started);
  v115 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E2BEB94();
  if (!*(v26 + 16))
  {
    goto LABEL_45;
  }

  sub_29DE9DC34(v26 + 32, &v126);

  sub_29DF3CBE8(&v126, &v119);
  v127 = sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
  swift_dynamicCast();
  if (!BYTE1(v125))
  {
    v72 = *(a2 + 16);
    v73 = (a2 + 32);
    while (v72)
    {
      v74 = *v73++;
      --v72;
      if (v74 == 2)
      {

        sub_29E05D0A4(0);
        *v108 = 2;
        sub_29E2BCA84();
        return sub_29E2BCA84();
      }
    }
  }

  v118 = started;
  v105 = BYTE1(v125);
  v101 = v16;
  v103 = *(&v124 + 1);
  v104 = *(&v123 + 1);
  v112 = v19;
  v116 = v12;
  v113 = v11;
  v110 = v4;
  v107 = a1;
  v27 = sub_29E2BEB94();
  v28 = v27;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = v27 + 32;
    while (v30 < *(v28 + 16))
    {
      sub_29DE9DC34(v31, &v119);
      sub_29DE9DC34(&v119, &v126);
      a2 = sub_29DEB1BC4(0, &unk_2A181DFD0, &protocol descriptor for OnboardingGenericRow);
      swift_dynamicCast();
      v33 = *(&v124 + 1);
      v32 = v125;
      sub_29DE966D4(&v123, *(&v124 + 1));
      v34 = v32[3](v33, v32);
      sub_29DE93B3C(&v123);
      if (v34 == 2)
      {
        goto LABEL_9;
      }

      ++v30;
      sub_29DE93B3C(&v119);
      v31 += 40;
      if (v29 == v30)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_8:

  __break(1u);
LABEL_9:

  sub_29DF3CBE8(&v119, &v126);
  sub_29DF3CBE8(&v126, &v119);
  v35 = v115;
  v36 = v118;
  swift_dynamicCast();
  v37 = v117;
  v38 = *(v117 + 16);
  v39 = v35 + *(v36 + 28);
  v40 = v111;
  v41 = v116;
  v100 = v117 + 16;
  v99 = v38;
  v38(v111, v39, v116);
  sub_29E05CD2C(v40, v114);
  v44 = *(v37 + 8);
  v42 = v37 + 8;
  v43 = v44;
  v44(v40, v41);
  v45 = sub_29E2BEB94();
  v46 = v45;
  v47 = *(v45 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = v45 + 32;
    v118 = *(v45 + 16);
    while (v48 < *(v46 + 16))
    {
      sub_29DE9DC34(v49, &v126);
      sub_29DE9DC34(&v126, v122);
      if (swift_dynamicCast())
      {
        v50 = v43;
        v51 = v42;
        v52 = *(&v124 + 1);
        v53 = v125;
        sub_29DE966D4(&v123, *(&v124 + 1));
        v54 = a2;
        v55 = v46;
        v56 = v52;
        v42 = v51;
        v43 = v50;
        v47 = v118;
        v57 = v53[3](v56, v53);
        sub_29DE93B3C(&v123);
        v58 = v57 == 3;
        v46 = v55;
        a2 = v54;
        if (v58)
        {

          sub_29DF3CBE8(&v126, &v119);
          v59 = type metadata accessor for OnboardingEndDateRow(0);
          v60 = v113;
          v61 = swift_dynamicCast();
          (*(*(v59 - 8) + 56))(v60, v61 ^ 1u, 1, v59);
          goto LABEL_19;
        }
      }

      else
      {
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        sub_29E05D1FC(&v123, sub_29E05D25C);
      }

      ++v48;
      sub_29DE93B3C(&v126);
      v49 += 40;
      if (v47 == v48)
      {
        goto LABEL_18;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:

    __break(1u);
    goto LABEL_46;
  }

LABEL_18:

  v59 = type metadata accessor for OnboardingEndDateRow(0);
  v60 = v113;
  (*(*(v59 - 8) + 56))(v113, 1, 1, v59);
LABEL_19:
  v62 = v112;
  sub_29E2BCA84();
  v63 = v106;
  sub_29E05D2C4(v60, v106, sub_29E05D1A4);
  type metadata accessor for OnboardingEndDateRow(0);
  v64 = (*(*(v59 - 8) + 48))(v63, 1, v59);
  v65 = v116;
  if (v64 == 1)
  {
    sub_29E05D1FC(v63, sub_29E05D1A4);
  }

  else
  {
    v66 = v63 + *(v59 + 28);
    v67 = v102;
    v99(v102, v66, v116);
    sub_29E05D1FC(v63, type metadata accessor for OnboardingEndDateRow);
    v68 = *(v117 + 32);
    v69 = v43;
    v70 = v101;
    v68(v101, v67, v65);
    v71 = v111;
    sub_29E2BCA84();
    sub_29E05D32C();
    LOBYTE(v67) = sub_29E2C3304();
    v69(v71, v65);
    if (v67)
    {
      v69(v70, v65);
      v60 = v113;
      v62 = v112;
    }

    else
    {
      sub_29E05CD2C(v70, v71);
      v69(v70, v65);
      v76 = v112;
      v69(v112, v65);
      v62 = v76;
      v68(v76, v71, v65);
      v60 = v113;
    }
  }

  if (v105 > 1)
  {
    if (v105 != 2)
    {
LABEL_46:
      result = sub_29E2C4724();
      __break(1u);
      return result;
    }

    v81 = sub_29E2BEB94();
    v82 = v81;
    v83 = *(v81 + 16);
    if (v83)
    {
      v84 = 0;
      v60 = v81 + 32;
      while (v84 < *(v82 + 16))
      {
        sub_29DE9DC34(v60, &v119);
        sub_29DE9DC34(&v119, &v126);
        swift_dynamicCast();
        v65 = *(&v124 + 1);
        v62 = v125;
        sub_29DE966D4(&v123, *(&v124 + 1));
        v85 = v62[3](v65, v62);
        sub_29DE93B3C(&v123);
        if (v85 == 5)
        {

          sub_29DF3CBE8(&v119, &v123);
          sub_29DF3CBE8(&v123, &v126);
          swift_dynamicCast();
          v90 = v120;
          v91 = v121;

          sub_29E05D0A4(0);
          v93 = *(v92 + 48);
          v94 = *(v92 + 64);
          v95 = v108;
          *v108 = v90;
          v96 = *(v117 + 32);
          v97 = v116;
          v96(v95 + v93, v114, v116);
          v96(v95 + v94, v112, v97);
          v89 = v113;
          goto LABEL_41;
        }

        ++v84;
        sub_29DE93B3C(&v119);
        v60 += 40;
        if (v83 == v84)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_44;
    }

LABEL_37:

    __break(1u);
  }

  else if (!v105)
  {

    sub_29E05D0A4(0);
    v78 = *(v77 + 48);
    v79 = *(v77 + 64);
    v80 = 2;
    goto LABEL_39;
  }

  sub_29E05D0A4(0);
  v78 = *(v86 + 48);
  v79 = *(v86 + 64);
  v80 = 1;
LABEL_39:
  v87 = v108;
  *v108 = v80;
  v88 = *(v117 + 32);
  v88(v87 + v78, v114, v65);
  v88(v87 + v79, v62, v65);
  v89 = v60;
LABEL_41:
  sub_29E05D1FC(v89, sub_29E05D1A4);
  return sub_29E05D1FC(v115, type metadata accessor for OnboardingStartDateRow);
}

uint64_t sub_29E05C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v113 = a5;
  v111 = a4;
  v112 = a3;
  v110 = a6;
  sub_29E05D1A4(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v100 - v12;
  v14 = sub_29E2BCBB4();
  v121 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v104 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v100 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = (&v100 - v20);
  MEMORY[0x2A1C7C4A8](v22);
  v115 = &v100 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v118 = &v100 - v25;
  started = type metadata accessor for OnboardingStartDateRow(0);
  MEMORY[0x2A1C7C4A8](started);
  v119 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E2BEB94();
  if (!*(v28 + 16))
  {
    goto LABEL_45;
  }

  sub_29DE9DC34(v28 + 32, &v130);

  sub_29DF3CBE8(&v130, &v123);
  v131 = sub_29DEB1BC4(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
  swift_dynamicCast();
  if (!BYTE1(v129))
  {
    v74 = *(a2 + 16);
    v75 = (a2 + 32);
    while (v74)
    {
      v76 = *v75++;
      --v74;
      if (v76 == 2)
      {

        sub_29E05D0A4(0);
        *v110 = 2;
        sub_29E2BCA84();
        return sub_29E2BCA84();
      }
    }
  }

  v122 = started;
  v107 = BYTE1(v129);
  v103 = v18;
  v105 = *(&v128 + 1);
  v106 = *(&v127 + 1);
  v116 = v21;
  v120 = v14;
  v117 = v13;
  v114 = v6;
  v109 = a1;
  v29 = sub_29E2BEB94();
  v30 = v29;
  v31 = *(v29 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v29 + 32;
    while (v32 < *(v30 + 16))
    {
      sub_29DE9DC34(v33, &v123);
      sub_29DE9DC34(&v123, &v130);
      a2 = sub_29DEB1BC4(0, &unk_2A181DFD0, &protocol descriptor for OnboardingGenericRow);
      swift_dynamicCast();
      v35 = *(&v128 + 1);
      v34 = v129;
      sub_29DE966D4(&v127, *(&v128 + 1));
      v36 = v34[3](v35, v34);
      sub_29DE93B3C(&v127);
      if (v36 == 2)
      {
        goto LABEL_9;
      }

      ++v32;
      sub_29DE93B3C(&v123);
      v33 += 40;
      if (v31 == v32)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_8:

  __break(1u);
LABEL_9:

  sub_29DF3CBE8(&v123, &v130);
  sub_29DF3CBE8(&v130, &v123);
  v37 = v119;
  v38 = v122;
  swift_dynamicCast();
  v39 = v121;
  v40 = *(v121 + 16);
  v41 = v37 + *(v38 + 28);
  v42 = v115;
  v43 = v120;
  v102 = v121 + 16;
  v101 = v40;
  v40(v115, v41, v120);
  sub_29E05CD2C(v42, v118);
  v46 = *(v39 + 8);
  v44 = v39 + 8;
  v45 = v46;
  v46(v42, v43);
  v47 = sub_29E2BEB94();
  v48 = v47;
  v49 = *(v47 + 16);
  if (v49)
  {
    v50 = 0;
    v51 = v47 + 32;
    v122 = *(v47 + 16);
    while (v50 < *(v48 + 16))
    {
      sub_29DE9DC34(v51, &v130);
      sub_29DE9DC34(&v130, v126);
      if (swift_dynamicCast())
      {
        v52 = v45;
        v53 = v44;
        v54 = *(&v128 + 1);
        v55 = v129;
        sub_29DE966D4(&v127, *(&v128 + 1));
        v56 = a2;
        v57 = v48;
        v58 = v54;
        v44 = v53;
        v45 = v52;
        v49 = v122;
        v59 = v55[3](v58, v55);
        sub_29DE93B3C(&v127);
        v60 = v59 == 3;
        v48 = v57;
        a2 = v56;
        if (v60)
        {

          sub_29DF3CBE8(&v130, &v123);
          v61 = type metadata accessor for OnboardingEndDateRow(0);
          v62 = v117;
          v63 = swift_dynamicCast();
          (*(*(v61 - 8) + 56))(v62, v63 ^ 1u, 1, v61);
          goto LABEL_19;
        }
      }

      else
      {
        v129 = 0;
        v127 = 0u;
        v128 = 0u;
        sub_29E05D1FC(&v127, sub_29E05D25C);
      }

      ++v50;
      sub_29DE93B3C(&v130);
      v51 += 40;
      if (v49 == v50)
      {
        goto LABEL_18;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:

    __break(1u);
    goto LABEL_46;
  }

LABEL_18:

  v61 = type metadata accessor for OnboardingEndDateRow(0);
  v62 = v117;
  (*(*(v61 - 8) + 56))(v117, 1, 1, v61);
LABEL_19:
  v64 = v116;
  sub_29E2BCA84();
  v65 = v108;
  sub_29E05D2C4(v62, v108, sub_29E05D1A4);
  type metadata accessor for OnboardingEndDateRow(0);
  v66 = (*(*(v61 - 8) + 48))(v65, 1, v61);
  v67 = v120;
  if (v66 == 1)
  {
    sub_29E05D1FC(v65, sub_29E05D1A4);
  }

  else
  {
    v68 = v65 + *(v61 + 28);
    v69 = v104;
    v101(v104, v68, v120);
    sub_29E05D1FC(v65, type metadata accessor for OnboardingEndDateRow);
    v70 = *(v121 + 32);
    v71 = v45;
    v72 = v103;
    v70(v103, v69, v67);
    v73 = v115;
    sub_29E2BCA84();
    sub_29E05D32C();
    LOBYTE(v69) = sub_29E2C3304();
    v71(v73, v67);
    if (v69)
    {
      v71(v72, v67);
      v62 = v117;
      v64 = v116;
    }

    else
    {
      sub_29E05CD2C(v72, v73);
      v71(v72, v67);
      v78 = v116;
      v71(v116, v67);
      v64 = v78;
      v70(v78, v73, v67);
      v62 = v117;
    }
  }

  if (v107 > 1)
  {
    if (v107 != 2)
    {
LABEL_46:
      result = sub_29E2C4724();
      __break(1u);
      return result;
    }

    v83 = sub_29E2BEB94();
    v84 = v83;
    v85 = *(v83 + 16);
    if (v85)
    {
      v86 = 0;
      v62 = v83 + 32;
      while (v86 < *(v84 + 16))
      {
        sub_29DE9DC34(v62, &v123);
        sub_29DE9DC34(&v123, &v130);
        swift_dynamicCast();
        v67 = *(&v128 + 1);
        v64 = v129;
        sub_29DE966D4(&v127, *(&v128 + 1));
        v87 = v64[3](v67, v64);
        sub_29DE93B3C(&v127);
        if (v87 == 5)
        {

          sub_29DF3CBE8(&v123, &v127);
          sub_29DF3CBE8(&v127, &v130);
          swift_dynamicCast();
          v92 = v124;
          v93 = v125;

          sub_29E05D0A4(0);
          v95 = *(v94 + 48);
          v96 = *(v94 + 64);
          v97 = v110;
          *v110 = v92;
          v98 = *(v121 + 32);
          v99 = v120;
          v98(v97 + v95, v118, v120);
          v98(v97 + v96, v116, v99);
          v91 = v117;
          goto LABEL_41;
        }

        ++v86;
        sub_29DE93B3C(&v123);
        v62 += 40;
        if (v85 == v86)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_44;
    }

LABEL_37:

    __break(1u);
  }

  else if (!v107)
  {

    sub_29E05D0A4(0);
    v80 = *(v79 + 48);
    v81 = *(v79 + 64);
    v82 = 2;
    goto LABEL_39;
  }

  sub_29E05D0A4(0);
  v80 = *(v88 + 48);
  v81 = *(v88 + 64);
  v82 = 1;
LABEL_39:
  v89 = v110;
  *v110 = v82;
  v90 = *(v121 + 32);
  v90(v89 + v80, v118, v67);
  v90(v89 + v81, v64, v67);
  v91 = v62;
LABEL_41:
  sub_29E05D1FC(v91, sub_29E05D1A4);
  return sub_29E05D1FC(v119, type metadata accessor for OnboardingStartDateRow);
}

uint64_t sub_29E05CD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v22 = sub_29E2BCBB4();
  v2 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E2C31A4();
  v23 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCC94();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCEA4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v18 = &v21 - v17;
  (*(v8 + 104))(v10, *MEMORY[0x29EDB9C78], v7, v16);
  sub_29E2BCCA4();
  (*(v8 + 8))(v10, v7);
  v19 = v22;
  (*(v2 + 16))(v4, v24, v22);
  (*(v12 + 16))(v14, v18, v11);
  sub_29E2C3144();
  sub_29E2C3194();
  sub_29E15177C(v26);
  (*(v2 + 8))(v4, v19);
  (*(v23 + 8))(v6, v25);
  return (*(v12 + 8))(v18, v11);
}

void sub_29E05D0A4(uint64_t a1)
{
  if (!qword_2A181B5B0)
  {
    type metadata accessor for HKMCCycleFactor(255);
    sub_29E2BCBB4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181B5B0);
    }
  }
}

uint64_t sub_29E05D140(uint64_t a1, uint64_t a2)
{
  sub_29E05D0A4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E05D1A4(uint64_t a1)
{
  if (!qword_2A18191A0)
  {
    type metadata accessor for OnboardingEndDateRow(255);
    v1 = sub_29E2C4304();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18191A0);
    }
  }
}

uint64_t sub_29E05D1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E05D25C(uint64_t a1)
{
  if (!qword_2A181B5B8)
  {
    sub_29DEB1BC4(255, &unk_2A181DFD0, &protocol descriptor for OnboardingGenericRow);
    v1 = sub_29E2C4304();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181B5B8);
    }
  }
}

uint64_t sub_29E05D2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E05D32C()
{
  result = qword_2A181D9C0;
  if (!qword_2A181D9C0)
  {
    sub_29E2BCBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D9C0);
  }

  return result;
}

id sub_29E05D384()
{
  sub_29DE9408C(0, &qword_2A181B5C0, 0x29EDC7AD0);
  v0 = sub_29E05D490();
  v1 = sub_29E2C33A4();
  v2 = [swift_getObjCClassFromMetadata() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 configurationPreferringMonochrome];
    v2 = [v4 imageByApplyingSymbolConfiguration_];
  }

  return v2;
}

id sub_29E05D490()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x29EDC80E0];
  v2 = [v0 _preferredFontForTextStyle_variant_];
  if (!v2)
  {
    v2 = [v0 preferredFontForTextStyle_];
  }

  v3 = [swift_getObjCClassFromMetadata() configurationWithFont:v2 scale:1];

  return v3;
}

void sub_29E05D544()
{
  sub_29DE99B54();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2CE220;
  sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
  *(v0 + 32) = sub_29E2C4074();
  v1 = sub_29E2C3604();

  v2 = [objc_opt_self() configurationWithPaletteColors_];

  v3 = sub_29E2C33A4();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v4)
  {
    __break(1u);
  }
}

void sub_29E05D6AC(SEL *a1, uint64_t a2, uint64_t a3)
{
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CE220;
  *(v4 + 32) = [objc_opt_self() *a1];
  sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
  v5 = sub_29E2C3604();

  v6 = [objc_opt_self() configurationWithPaletteColors_];

  v7 = sub_29E2C33A4();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  if (!v8)
  {
    __break(1u);
  }
}

uint64_t sub_29E05D7D4(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x29EDCA608];
  v23[0] = 0;
  v3 = [v2 biologicalSexWithError_];
  if (v3)
  {
    v4 = v3;
    v5 = v23[0];
    v6 = HKAnalyticsPropertyValueForBiologicalSex();
    v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    v8 = v23[0];
    v9 = sub_29E2BC7E4();

    swift_willThrow();
    v10 = v9;
    v11 = sub_29E2C0504();
    v12 = sub_29E2C3A14();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446466;
      v15 = sub_29E2C4AE4();
      v17 = sub_29DFAA104(v15, v16, v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = v9;
      sub_29DE96670();
      v19 = sub_29E2C3424();
      v21 = sub_29DFAA104(v19, v20, v23);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] Error when retrieving biological sex: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v14, -1, -1);
      MEMORY[0x29ED82140](v13, -1, -1);
    }

    v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  return v7;
}

id sub_29E05DA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24[1] = *MEMORY[0x29EDCA608];
  v5 = sub_29E2BCB04();
  v24[0] = 0;
  v6 = [v4 ageWithCurrentDate:v5 error:v24];

  if (v6)
  {
    v7 = v24[0];
    return v6;
  }

  else
  {
    v9 = v24[0];
    v10 = sub_29E2BC7E4();

    swift_willThrow();
    v11 = v10;
    v12 = sub_29E2C0504();
    v13 = sub_29E2C3A14();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446466;
      v16 = sub_29E2C4AE4();
      v18 = sub_29DFAA104(v16, v17, v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = v10;
      sub_29DE96670();
      v20 = sub_29E2C3424();
      v22 = sub_29DFAA104(v20, v21, v24);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Error when retrieving age: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v15, -1, -1);
      MEMORY[0x29ED82140](v14, -1, -1);
    }

    v23 = *MEMORY[0x29EDBA360];
    return v23;
  }
}

void sub_29E05DCFC()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_29E05DDC4()
{
  sub_29DECE8A4(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD3B0;
  v1 = objc_opt_self();
  result = [v1 pregnancyType];
  if (result)
  {
    *(inited + 32) = result;
    *(inited + 40) = [v1 medicationDoseEventType];
    sub_29DE927B8(inited);
    v4 = v3;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E05DE9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_29E05E08C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

void sub_29E05E288()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v177 = &v158 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_29E2C3384();
  v2 = *(v161 - 8);
  MEMORY[0x2A1C7C4A8](v161);
  v4 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v158 - v6;
  sub_29DEFFE04(0);
  v8 = sub_29E2BDD14();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v174 = *(v9 + 72);
  v11 = v10;
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_29E2DB0E0;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  v13 = sub_29E2C33A4();
  v14 = [objc_opt_self() imageNamed:v13 inBundle:v12 compatibleWithTraitCollection:0];

  if (v14)
  {
    v15 = v160 + v11;
    *v15 = v14;
    *(v15 + 8) = 0;
    v171 = *(v9 + 104);
    v16 = v15;
    v167 = v15;
    v171();
    v165 = v8;
    v17 = (v16 + v174);
    sub_29E2C3314();
    v18 = *(v2 + 16);
    v169 = v2 + 16;
    v175 = v18;
    v19 = v4;
    v20 = v4;
    v21 = v161;
    (v18)(v19, v7);
    sub_29E2BCC74();
    v22 = v12;
    v176 = v12;
    v163 = v22;
    v172 = "Pregnancy Medication";
    v23 = sub_29E2C3414();
    v168 = v9 + 104;
    v24 = v23;
    v26 = v25;
    v27 = *(v2 + 8);
    v173 = v2 + 8;
    v170 = v27;
    v27(v7, v21);
    *v17 = v24;
    v17[1] = v26;
    (v171)(v17, *MEMORY[0x29EDC1610], v165);
    v28 = v174;
    v162 = (2 * v174);
    v29 = v167 + 2 * v174;
    v164 = 0xD000000000000013;
    sub_29E2C3314();
    v166 = v20;
    v175(v20, v7, v21);
    sub_29E2BCC74();
    v159 = v163;
    v30 = sub_29E2C3414();
    v32 = v31;
    v33 = v170;
    v170(v7, v21);
    *v29 = v30;
    *(v29 + 8) = v32;
    *(v29 + 16) = 0;
    LODWORD(v163) = *MEMORY[0x29EDC1630];
    v34 = v171;
    (v171)(v29);
    v35 = &v162[v28];
    v36 = v167;
    v37 = &v35[v167];
    sub_29E2C3314();
    v38 = v175;
    v175(v166, v7, v21);
    sub_29E2BCC74();
    v159 = v159;
    v39 = sub_29E2C3414();
    v41 = v40;
    v33(v7, v21);
    *v37 = v39;
    v37[1] = v41;
    v37[2] = 0;
    LODWORD(v162) = *MEMORY[0x29EDC15D0];
    (v34)(v37);
    v158 = (4 * v174);
    v42 = v36 + 4 * v174;
    sub_29E2C3314();
    v38(v166, v7, v21);
    sub_29E2BCC74();
    v159 = v159;
    v43 = sub_29E2C3414();
    v45 = v44;
    v170(v7, v21);
    *v42 = v43;
    *(v42 + 8) = v45;
    *(v42 + 16) = 0;
    (v171)(v42, v163, v165);
    v46 = v36;
    v47 = &v158[v174 + v36];
    v48 = v7;
    sub_29E2C3314();
    v49 = v166;
    v175(v166, v7, v21);
    sub_29E2BCC74();
    v50 = v159;
    v51 = sub_29E2C3414();
    v53 = v52;
    v170(v48, v21);
    *v47 = v51;
    v47[1] = v53;
    v47[2] = 0;
    v54 = v165;
    (v171)(v47, v162, v165);
    v55 = v46 + 6 * v174;
    sub_29E2C3314();
    v175(v49, v48, v21);
    sub_29E2BCC74();
    v158 = v50;
    v56 = sub_29E2C3414();
    v58 = v57;
    v59 = v21;
    v60 = v170;
    v170(v48, v21);
    *v55 = v56;
    *(v55 + 8) = v58;
    *(v55 + 16) = 0;
    v61 = v163;
    (v171)(v55, v163, v54);
    v159 = (8 * v174);
    v62 = v167 + 7 * v174;
    sub_29E2C3314();
    v63 = v175;
    v175(v166, v48, v59);
    sub_29E2BCC74();
    v158 = v158;
    v64 = sub_29E2C3414();
    v66 = v65;
    v60(v48, v59);
    *v62 = v64;
    *(v62 + 8) = v66;
    *(v62 + 16) = 0;
    v67 = v165;
    v68 = v171;
    (v171)(v62, v61, v165);
    v69 = &v159[v167];
    sub_29E2C3314();
    v70 = v161;
    v63(v166, v48, v161);
    sub_29E2BCC74();
    v158 = v158;
    v71 = sub_29E2C3414();
    v73 = v72;
    v170(v48, v70);
    *v69 = v71;
    v69[1] = v73;
    v69[2] = 0;
    (v68)(v69, v162, v67);
    v74 = &v159[v174 + v167];
    sub_29E2C3314();
    v75 = v70;
    v175(v166, v48, v70);
    sub_29E2BCC74();
    v159 = v158;
    v76 = sub_29E2C3414();
    v78 = v77;
    v79 = v170;
    v170(v48, v70);
    *v74 = v76;
    *(v74 + 1) = v78;
    v74[16] = 0;
    v80 = v163;
    v81 = v171;
    (v171)(v74, v163, v67);
    v82 = v174;
    v83 = v167 + 10 * v174;
    sub_29E2C3314();
    v175(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v84 = sub_29E2C3414();
    v86 = v85;
    v79(v48, v75);
    *v83 = v84;
    *(v83 + 8) = v86;
    *(v83 + 16) = 0;
    (v81)(v83, v80, v165);
    v87 = v167 + 11 * v82;
    sub_29E2C3314();
    v88 = v175;
    v175(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v89 = sub_29E2C3414();
    v91 = v90;
    v170(v48, v75);
    *v87 = v89;
    *(v87 + 8) = v91;
    *(v87 + 16) = 0;
    v92 = v165;
    (v171)(v87, v163, v165);
    v93 = v167;
    v94 = (v167 + 12 * v174);
    sub_29E2C3314();
    v88(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v95 = sub_29E2C3414();
    v97 = v96;
    v98 = v170;
    v170(v48, v75);
    *v94 = v95;
    v94[1] = v97;
    v94[2] = 0;
    (v171)(v94, v162, v92);
    v99 = v93 + 13 * v174;
    sub_29E2C3314();
    v100 = v166;
    v101 = v75;
    v175(v166, v48, v75);
    sub_29E2BCC74();
    v159 = v159;
    v102 = v100;
    v103 = sub_29E2C3414();
    v105 = v104;
    v98(v48, v101);
    *v99 = v103;
    *(v99 + 8) = v105;
    *(v99 + 16) = 0;
    v106 = v163;
    (v171)(v99, v163, v165);
    v107 = v167 + 14 * v174;
    sub_29E2C3314();
    v108 = v48;
    v175(v102, v48, v101);
    sub_29E2BCC74();
    v158 = v159;
    v109 = sub_29E2C3414();
    v111 = v110;
    v112 = v101;
    v170(v48, v101);
    *v107 = v109;
    *(v107 + 8) = v111;
    *(v107 + 16) = 0;
    v113 = v165;
    (v171)(v107, v106, v165);
    v159 = (16 * v174);
    v114 = v167 + 15 * v174;
    sub_29E2C3314();
    v115 = v166;
    v175(v166, v108, v112);
    sub_29E2BCC74();
    v158 = v158;
    v116 = sub_29E2C3414();
    v118 = v117;
    v170(v108, v112);
    *v114 = v116;
    *(v114 + 8) = v118;
    *(v114 + 16) = 0;
    (v171)(v114, v163, v113);
    v119 = &v159[v167];
    sub_29E2C3314();
    v175(v115, v108, v112);
    sub_29E2BCC74();
    v158 = v158;
    v120 = sub_29E2C3414();
    v122 = v121;
    v170(v108, v112);
    *v119 = v120;
    v119[1] = v122;
    v119[2] = 0;
    (v171)(v119, v162, v113);
    v162 = &v159[v174];
    sub_29DECE8A4(0, &qword_2A1A62780, MEMORY[0x29EDC99B0]);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_29E2CFE80;
    sub_29E2C3314();
    v175(v115, v108, v112);
    sub_29E2BCC74();
    v159 = v158;
    v124 = sub_29E2C3414();
    v126 = v125;
    v127 = v170;
    v170(v108, v112);
    *(v123 + 32) = v124;
    *(v123 + 40) = v126;
    sub_29E2C3314();
    v175(v115, v108, v112);
    sub_29E2BCC74();
    v159 = v159;
    v128 = sub_29E2C3414();
    v130 = v129;
    v131 = v127;
    v127(v108, v112);
    *(v123 + 48) = v128;
    *(v123 + 56) = v130;
    sub_29E2C3314();
    v132 = v115;
    v133 = v175;
    v175(v132, v108, v112);
    sub_29E2BCC74();
    v159 = v159;
    v134 = sub_29E2C3414();
    v136 = v135;
    v127(v108, v112);
    *(v123 + 64) = v134;
    *(v123 + 72) = v136;
    sub_29E2C3314();
    v137 = v166;
    v138 = v112;
    v133(v166, v108, v112);
    sub_29E2BCC74();
    v159 = v159;
    v139 = v137;
    v140 = sub_29E2C3414();
    v142 = v141;
    v131(v108, v138);
    *(v123 + 80) = v140;
    *(v123 + 88) = v142;
    v143 = v167;
    v144 = v162;
    *&v162[v167] = v123;
    v145 = v171;
    (v171)(&v144[v143], *MEMORY[0x29EDC15D8], v165);
    v146 = v143 + 18 * v174;
    sub_29E2C3314();
    v147 = v161;
    v133(v139, v108, v161);
    sub_29E2BCC74();
    v148 = v159;
    v149 = sub_29E2C3414();
    v151 = v150;
    v170(v108, v147);
    *v146 = v149;
    *(v146 + 8) = v151;
    *(v146 + 16) = 0;
    v152 = v163;
    v153 = v165;
    (v145)(v146, v163, v165);
    v154 = v167 + 19 * v174;
    sub_29E2C3314();
    v175(v139, v108, v147);
    sub_29E2BCC74();
    v155 = sub_29E2C3414();
    v157 = v156;
    v170(v108, v147);
    *v154 = v155;
    *(v154 + 8) = v157;
    *(v154 + 16) = 0;
    (v145)(v154, v152, v153);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for PregnancyOnboardingReviewMedicationsViewController(uint64_t a1)
{
  result = qword_2A181B5E0;
  if (!qword_2A181B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E05F9D8(uint64_t a1, uint64_t a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v31 - v11;
  v13 = sub_29E2BFDD4();
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_2A181B5D0) = 11;
  *(v2 + qword_2A181B5C8) = a1;
  (*(v17 + 104))(v16, *MEMORY[0x29EDC3180], v14);
  v18 = objc_allocWithZone(type metadata accessor for MedicationsReviewCollectionViewController(0));
  v31[3] = a1;

  v31[4] = a2;
  v19 = sub_29E13A130(v16, a2);
  v32 = v2;
  *(v2 + qword_2A181B5D8) = v19;
  v31[2] = v19;
  sub_29E2C3314();
  v20 = *(v7 + 16);
  v20(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A67F80;
  sub_29E2BCC74();
  v33 = v21;
  v22 = sub_29E2C3414();
  v31[0] = v23;
  v31[1] = v22;
  v24 = *(v7 + 8);
  v24(v12, v6);
  sub_29E2C3314();
  v20(v9, v12, v6);
  sub_29E2BCC74();
  sub_29E2C3414();
  v24(v12, v6);
  v25 = objc_opt_self();
  v26 = sub_29E2C33A4();
  v27 = [v25 imageNamed:v26 inBundle:v33 compatibleWithTraitCollection:0];

  if (v27)
  {
    [v27 setIsAccessibilityElement_];
    v28 = sub_29E2BF714();
    v29 = sub_29E2C33A4();

    v30 = [v28 hxui_addCancelButton];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E05FE80(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  [v1 setModalInPresentation_];
}

void sub_29E05FEE4(char *a1)
{
  v1 = a1[qword_2A181B5D0];
  v3 = a1;

  sub_29E27EA20(v1, 2u, v2);
}

void sub_29E05FF58(char *a1)
{
  v1 = a1[qword_2A181B5D0];
  v3 = a1;

  sub_29E27EC80(v1, 1, v2);
}

void sub_29E05FFFC()
{

  v1 = *(v0 + qword_2A181B5D8);
}

void sub_29E06003C(uint64_t a1)
{

  v2 = *(a1 + qword_2A181B5D8);
}

double sub_29E0600E0(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  ObjectType = swift_getObjectType();
  sub_29E0635B8(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_29E2C3DA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E06361C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultCenter];
  sub_29E2C3DB4();

  sub_29DE9408C(0, &qword_2A1A626C0, 0x29EDCA548);
  v16 = sub_29E2C3CF4();
  v26 = v16;
  v17 = sub_29E2C3CE4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_29E063568(&qword_2A1A5E130, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  sub_29DF4D6CC();
  sub_29E2C1354();
  sub_29DEB1FA4(v5);

  (*(v7 + 8))(v9, v6);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v20 = ObjectType;
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  sub_29E063568(&qword_2A181B630, sub_29E06361C, MEMORY[0x29EDB89E8]);
  sub_29E2C1384();

  (*(v12 + 8))(v14, v11);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  return result;
}

double sub_29E0604A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29DE966D4((v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider), *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider + 24));
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_29E0635B0;
  *(v5 + 24) = v4;
  sub_29DF1482C();
  sub_29E063568(&qword_2A1818DA8, sub_29DF1482C, MEMORY[0x29EDB8A58]);

  sub_29E2C1384();

  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  return result;
}

id sub_29E0606E0()
{
  v1 = *v0;
  sub_29DE9408C(0, &qword_2A1A5E1F0, 0x29EDBAD20);
  v2 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA878]);
  v3 = [v1 preferredUnitForType_];

  return v3;
}

double sub_29E06075C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136446210;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Received unit preferences change notification", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_preferredUnitProvider + 24);
    v17 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_preferredUnitProvider + 32);
    v18 = Strong;
    sub_29DE966D4((Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_preferredUnitProvider), v16);
    v19 = *(v17 + 8);

    v20 = v19(v16, v17);
    v21 = sub_29E2C10D4();
    v23 = v22;
    v24 = *(type metadata accessor for CycleLogModel(0) + 36);
    v25 = *(v23 + v24);
    *(v23 + v24) = v20;

    v21(v27, 0);
  }

  return result;
}

uint64_t sub_29E0609D0()
{
  v1 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2BCEA4();
  v3 = [*v0 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  return sub_29E2C3144();
}

double sub_29E060AE8(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = v3;
  v48 = a2;
  ObjectType = swift_getObjectType();
  v50 = type metadata accessor for CycleLogModel(0);
  MEMORY[0x2A1C7C4A8](v50);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CycleDay(0);
  MEMORY[0x2A1C7C4A8](v49);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v45 = a1;
    v20 = v19;
    v51[0] = v19;
    *v18 = 136446210;
    v21 = sub_29E2C4AE4();
    v44 = v11;
    v23 = sub_29DFAA104(v21, v22, v51);
    ObjectType = v8;
    v24 = a3;
    v25 = v23;

    *(v18 + 4) = v25;
    v26 = v24;
    v8 = ObjectType;
    _os_log_impl(&dword_29DE74000, v15, v16, v26, v18, 0xCu);
    sub_29DE93B3C(v20);
    MEMORY[0x29ED82140](v20, -1, -1);
    v27 = v18;
    v5 = v46;
    MEMORY[0x29ED82140](v27, -1, -1);

    (*(v12 + 8))(v14, v44);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v28 = swift_getObjectType();

  sub_29E262788(v28, v48);
  v29 = sub_29E2C10D4();
  v30 = v50;
  sub_29E035E5C(v10, v31 + *(v50 + 24));
  v29(v51, 0);

  sub_29E2C10E4();
  sub_29E00C08C(&v8[*(v30 + 24)], v10);
  sub_29DF0514C(v8, type metadata accessor for CycleLogModel);
  v32 = *&v10[*(v49 + 20)];
  sub_29DF0514C(v10, type metadata accessor for CycleDay);
  sub_29DE966D4((v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider), *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider + 24));
  sub_29E00251C();
  v34 = v33;
  v35 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_sectionStyle);
  v36 = sub_29E2C10D4();
  v38 = v37;
  v39 = sub_29E062CBC(v32, v34, v35);
  v41 = v40;

  v38[1] = v39;

  *v38 = v41;

  v36(v51, 0);

  return result;
}

double sub_29E060EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29E2C31A4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v32 = v4;
    v15 = v14;
    v35[0] = v14;
    *v13 = 136446210;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, v35);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Received calendar day change notification", v13, 0xCu);
    sub_29DE93B3C(v15);
    v19 = v15;
    v4 = v32;
    MEMORY[0x29ED82140](v19, -1, -1);
    v20 = v13;
    v3 = v33;
    MEMORY[0x29ED82140](v20, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_todayProvider + 24);
    v24 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_todayProvider + 32);
    v25 = Strong;
    sub_29DE966D4((Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_todayProvider), v23);
    v26 = *(v24 + 8);

    v27 = v34;
    v26(v23, v24);
    v28 = sub_29E2C10D4();
    v30 = v29;
    v31 = type metadata accessor for CycleLogModel(0);
    (*(v4 + 40))(v30 + *(v31 + 28), v27, v3);
    v28(v35, 0);
  }

  return result;
}

void sub_29E061248(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for CycleDay(0);
  MEMORY[0x2A1C7C4A8](v34);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for CycleLogModel(0);
  MEMORY[0x2A1C7C4A8](v33);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v7;
    v14 = v13;
    v35[0] = v13;
    *v12 = 136446210;
    v15 = sub_29E2C4AE4();
    v32 = v5;
    v17 = sub_29DFAA104(v15, v16, v35);
    v5 = v32;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Received feature settings change notification", v12, 0xCu);
    sub_29DE93B3C(v14);
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v31 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_29DE966D4((Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider), *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_visibleLoggingTypesProvider + 24));
    sub_29E00251C();
    v21 = v20;

    sub_29E2C10E4();
    sub_29E00C08C(&v5[*(v33 + 24)], v3);
    sub_29DF0514C(v5, type metadata accessor for CycleLogModel);
    v22 = *&v3[*(v34 + 20)];
    sub_29DF0514C(v3, type metadata accessor for CycleDay);
    v23 = v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_sectionStyle];
    v24 = sub_29E2C10D4();
    v26 = v25;
    v27 = sub_29E062CBC(v22, v21, v23);
    v29 = v28;

    v26[1] = v27;

    *v26 = v29;

    v24(v35, 0);
  }
}

uint64_t sub_29E061608(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    sub_29E2BF404();
    v5 = a1;
    v6 = sub_29E2C44D4();

    if (v6)
    {
      v7 = sub_29E06216C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
  v10 = sub_29E2C40C4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_29E2C40D4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29E1474A0();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_29E0622D4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_29E0617A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E063568(&qword_2A181DCA0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA300]);
  v31 = a1;
  v10 = sub_29E2C3244();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_29E063568(&qword_2A18199C0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
      v19 = sub_29E2C3304();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29E1474C4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_29E062638(v13, MEMORY[0x29EDBA2F8], &qword_2A181DCA0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA300]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_29E061A8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_29E2C4A04();
  sub_29E2C34B4();
  v6 = sub_29E2C4A54();
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
    if (v11 || (sub_29E2C4914() & 1) != 0)
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
    sub_29E1474F0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_29E062474(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_29E061BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E063568(&unk_2A1818E70, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D78]);
  v31 = a1;
  v10 = sub_29E2C3244();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_29E063568(&unk_2A181DBB0, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D88]);
      v19 = sub_29E2C3304();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29E1477C0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_29E062638(v13, MEMORY[0x29EDB9D70], &unk_2A1818E70, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D78]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_29E061ECC(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = *v2;
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C4A04();
  sub_29E2C34B4();
  v6 = sub_29E2C4A54();

  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v12 = v11;
    if (v10 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v12 == v13)
    {
      break;
    }

    v15 = sub_29E2C4914();

    if (v15)
    {
      goto LABEL_11;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  v20 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v18 = v20;
  }

  v16 = *(*(v18 + 48) + 8 * v8);
  sub_29E062934(v8);
  *v4 = v20;
  return v16;
}

uint64_t sub_29E062064(unsigned __int8 a1)
{
  v3 = *v1;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a1);
  v4 = sub_29E2C4A54();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 3;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29E14736C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_29E062B14(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_29E06216C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_29E2C4484();
  v5 = swift_unknownObjectRetain();
  v6 = sub_29E14ACE0(v5, v4);
  v15 = v6;

  v7 = sub_29E2C40C4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_29E2C40D4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_29E0622D4(v9);
  result = sub_29E2C40D4();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0622D4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_29E2C40C4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_29E062474(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_29E2C4A04();
        sub_29E2BF404();
        sub_29E2C34B4();
        v10 = sub_29E2C4A54();

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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_29E062638(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_29E2C4414();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_29E063568(v40, v41, v42);
        v24 = sub_29E2C3244();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

void sub_29E062934(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        sub_29E2C4A04();
        v11 = v10;
        sub_29E2C34B4();
        v12 = sub_29E2C4A54();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

void sub_29E062B14(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29E2C4414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_29E2C4A04();
        MEMORY[0x29ED811E0](v10);
        v11 = sub_29E2C4A54() & v7;
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
          v13 = (v12 + v2);
          v14 = (v12 + v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

uint64_t sub_29E062CBC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    v6 = a1;
    v68 = MEMORY[0x29EDCA190];
LABEL_30:
    v33 = *(v68 + 16);
    if (v33)
    {
      v34 = (v68 + 32);
      inited = MEMORY[0x29EDCA190];
      while (1)
      {
        v35 = *v34;
        v36 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v38 = v37;
        if (v36 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v38 == v39)
        {
          break;
        }

        v41 = sub_29E2C4914();
        v42 = v35;

        if (v41)
        {
          goto LABEL_45;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          inited = sub_29E1437F8(0, *(inited + 16) + 1, 1, inited);
        }

        v44 = *(inited + 16);
        v43 = *(inited + 24);
        if (v44 >= v43 >> 1)
        {
          inited = sub_29E1437F8((v43 > 1), v44 + 1, 1, inited);
        }

        *(inited + 16) = v44 + 1;
        *(inited + 8 * v44 + 32) = v42;
        v6 = a1;
LABEL_33:
        ++v34;
        if (!--v33)
        {
          goto LABEL_55;
        }
      }

      v45 = v35;

LABEL_45:
      if (![v6 pregnancyState] || objc_msgSend(v6, sel_pregnancyState) == 5 || (v46 = objc_msgSend(v6, sel_daySummary)) != 0 && (v47 = v46, v48 = objc_msgSend(v46, sel_intermenstrualBleeding), v47, (v48 & 1) != 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          inited = sub_29E1437F8(0, *(inited + 16) + 1, 1, inited);
        }

        v50 = *(inited + 16);
        v49 = *(inited + 24);
        if (v50 >= v49 >> 1)
        {
          inited = sub_29E1437F8((v49 > 1), v50 + 1, 1, inited);
        }

        *(inited + 16) = v50 + 1;
        *(inited + 8 * v50 + 32) = v35;
        v6 = a1;
      }

      else
      {
      }

      goto LABEL_33;
    }

    inited = MEMORY[0x29EDCA190];
LABEL_55:

    if (a3 == 2)
    {
      v5 = MEMORY[0x29EDCA190];
      if (!*(inited + 16))
      {
        goto LABEL_72;
      }
    }

    else
    {
      v51 = [v6 pregnancyState];
      if (v51 > 6 || ((1 << v51) & 0x29) != 0)
      {
        v5 = sub_29E143EF4(0, 1, 1, MEMORY[0x29EDCA190]);
        v54 = *(v5 + 2);
        v56 = *(v5 + 3);
        v55 = v54 + 1;
        if (v54 >= v56 >> 1)
        {
          v5 = sub_29E143EF4((v56 > 1), v54 + 1, 1, v5);
        }

        v52 = 0;
      }

      else if (((1 << v51) & 0x54) != 0)
      {
        v52 = 1;
        v5 = sub_29E143EF4(0, 1, 1, MEMORY[0x29EDCA190]);
        v54 = *(v5 + 2);
        v53 = *(v5 + 3);
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v52 = 1;
          v5 = sub_29E143EF4((v53 > 1), v54 + 1, 1, v5);
        }
      }

      else
      {
        v5 = sub_29E143EF4(0, 1, 1, MEMORY[0x29EDCA190]);
        v54 = *(v5 + 2);
        v64 = *(v5 + 3);
        v55 = v54 + 1;
        if (v54 >= v64 >> 1)
        {
          v5 = sub_29E143EF4((v64 > 1), v54 + 1, 1, v5);
        }

        v52 = 2;
      }

      *(v5 + 2) = v55;
      v5[v54 + 32] = v52;
      if (!*(inited + 16))
      {
LABEL_72:
        if (a3 <= 1u)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_29E143EF4(0, *(v5 + 2) + 1, 1, v5);
          }

          v60 = *(v5 + 2);
          v59 = *(v5 + 3);
          if (v60 >= v59 >> 1)
          {
            v5 = sub_29E143EF4((v59 > 1), v60 + 1, 1, v5);
          }

          *(v5 + 2) = v60 + 1;
          v5[v60 + 32] = 4;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_79;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_29E143EF4(0, *(v5 + 2) + 1, 1, v5);
    }

    v58 = *(v5 + 2);
    v57 = *(v5 + 3);
    if (v58 >= v57 >> 1)
    {
      v5 = sub_29E143EF4((v57 > 1), v58 + 1, 1, v5);
    }

    *(v5 + 2) = v58 + 1;
    v5[v58 + 32] = 3;
    goto LABEL_72;
  }

  v5 = 0;
  v70 = *MEMORY[0x29EDC3240];
  v71 = a2 + 32;
  v69 = *MEMORY[0x29EDC3250];
  v67 = *MEMORY[0x29EDC3230];
  v68 = MEMORY[0x29EDCA190];
  v66 = *MEMORY[0x29EDC3228];
  v65 = xmmword_29E2CFE80;
  while (v5 < v4)
  {
    v7 = v5;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_86;
    }

    v9 = *(v71 + 8 * v7);
    if (a3)
    {
      if (a3 == 1)
      {
        sub_29E0635B8(0, &qword_2A181B620, type metadata accessor for HKMCDisplayTypeIdentifier, MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_29E2CFE80;
        *(inited + 32) = v69;
        *(inited + 40) = v67;
        *(inited + 48) = v66;
        *(inited + 56) = v70;
        v10 = v9;
        v11 = v69;
        v12 = v67;
        v13 = v66;
        v14 = v70;
        v15 = sub_29E14ED40(inited);
        swift_setDeallocating();
        type metadata accessor for HKMCDisplayTypeIdentifier(0);
        swift_arrayDestroy();
        if (!*(v15 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        v17 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE8allCasesSayABGvgZ_0();
        v18 = v9;
        v19 = sub_29E14ED40(v17);

        v74 = v19;

        inited = &v74;
        v15 = v74;
        if (!*(v74 + 16))
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      inited = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE8allCasesSayABGvgZ_0();
      v16 = v9;
      v15 = sub_29E14ED40(inited);

      if (!*(v15 + 16))
      {
        goto LABEL_3;
      }
    }

    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    sub_29E2C4A04();
    sub_29E2C34B4();
    inited = sub_29E2C4A54();

    v20 = -1 << *(v15 + 32);
    v21 = inited & ~v20;
    if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v25 = v24;
        v26 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        inited = v27;
        if (v23 == v26 && v25 == v27)
        {
          break;
        }

        v29 = sub_29E2C4914();

        if (v29)
        {
          goto LABEL_24;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_24:

      inited = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_29E1814F8(0, *(v68 + 16) + 1, 1);
        inited = v75;
      }

      v32 = *(inited + 16);
      v31 = *(inited + 24);
      if (v32 >= v31 >> 1)
      {
        sub_29E1814F8((v31 > 1), v32 + 1, 1);
        inited = v75;
      }

      *(inited + 16) = v32 + 1;
      v68 = inited;
      *(inited + 8 * v32 + 32) = v9;
      goto LABEL_4;
    }

LABEL_3:

LABEL_4:
    v6 = a1;
    if (v5 == v4)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v5 = sub_29E143EF4(0, *(v5 + 2) + 1, 1, v5);
LABEL_79:
  v62 = *(v5 + 2);
  v61 = *(v5 + 3);
  if (v62 >= v61 >> 1)
  {
    v5 = sub_29E143EF4((v61 > 1), v62 + 1, 1, v5);
  }

  *(v5 + 2) = v62 + 1;
  v5[v62 + 32] = 5;
  return inited;
}

uint64_t sub_29E063568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E0635B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E06361C(uint64_t a1)
{
  if (!qword_2A181B628)
  {
    sub_29E2C3DA4();
    sub_29DE9408C(255, &qword_2A1A626C0, 0x29EDCA548);
    sub_29E063568(&qword_2A1A5E130, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    sub_29DF4D6CC();
    v1 = sub_29E2C0FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181B628);
    }
  }
}

uint64_t sub_29E0636F8()
{

  sub_29DE8EDC0(v0 + 32);
  sub_29DE8EDC0(v0 + 48);
  sub_29DE8EDC0(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_29E0637B4()
{
  type metadata accessor for CycleDeviationsSectionCell();
  sub_29E063ACC(&qword_2A181A118, 255, type metadata accessor for CycleDeviationsSectionCell, &unk_29E2E48A4);
  return sub_29E2BE2B4();
}

uint64_t sub_29E06383C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E063ACC(&qword_2A181A110, a2, type metadata accessor for CycleDeviationsItem, &unk_29E2DB3FC);

  return MEMORY[0x2A1C60910](a1, v3);
}

uint64_t sub_29E0638E0()
{
  sub_29E2C4A04();
  v1 = *(v0 + 16);
  sub_29E2BF404();
  sub_29E063C1C(v3, v1);
  sub_29E2C4A24();
  sub_29E2C4A24();

  return sub_29E2C4A54();
}

double sub_29E063990(uint64_t a1)
{
  v3 = *(*v1 + 16);
  sub_29E2BF404();
  sub_29E063C1C(a1, v3);
  sub_29E2C4A24();
  sub_29E2C4A24();

  return result;
}

uint64_t sub_29E063A04(uint64_t a1)
{
  v2 = *v1;
  sub_29E2C4A04();
  v3 = *(v2 + 16);
  sub_29E2BF404();
  sub_29E063C1C(v5, v3);
  sub_29E2C4A24();
  sub_29E2C4A24();

  return sub_29E2C4A54();
}

uint64_t sub_29E063ACC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_29E063B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x29ED811E0](v3);
  if (v3)
  {
    v4 = (a2 + 72);
    do
    {
      v5 = *(v4 - 2);
      v6 = *v4;
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E2C34B4();
      if (v5)
      {
        sub_29E2C4A24();
        sub_29E2C34B4();
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_29E2C4A24();
        if (!v6)
        {
LABEL_9:
          sub_29E2C4A24();
          goto LABEL_4;
        }
      }

      sub_29E2C4A24();
      sub_29E2C34B4();

LABEL_4:
      v4 += 6;

      --v3;
    }

    while (v3);
  }
}

void sub_29E063C1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_29E2C4484();
    MEMORY[0x29ED811E0](v8);
    v3 = sub_29E2C4484();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x29ED811E0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x29ED80D70](i, a2);
      sub_29E2C40E4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_29E2C40E4();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_29E063D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  sub_29E2BF404();
  sub_29E2BF404();
  if ((sub_29E142298(v2, v5) & 1) != 0 && v3 == v6)
  {

    return v4 ^ v7 ^ 1u;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_29E063DA8(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1[5];
    ObjectType = swift_getObjectType();
    v9[3] = v3;
    v9[4] = sub_29E063ACC(&qword_2A181B640, v7, type metadata accessor for CycleDeviationsItem, &unk_29E2DB3CC);
    v9[0] = v1;
    v8 = *(v5 + 8);

    v8(v9, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

uint64_t sub_29E063EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v40 = a2;
  v41 = a5;
  v7 = sub_29E2C0514();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCEA4();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v35 - v18;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x2A1C7C4A8](v23).n128_u64[0];
  v26 = &v35 - v25;
  if (a3)
  {
    if ([a4 predictionPrimarySource] == 3)
    {
      v27 = v40;
      sub_29E07FD24(v39, v26);
      sub_29DEAA194(v26, v22);
      if ((*(v14 + 48))(v22, 1, v13) == 1)
      {
        sub_29DE93920(v22);
        sub_29E2C04B4();
        v28 = sub_29E2C0504();
        v29 = sub_29E2C3A14();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v42 = v31;
          *v30 = 136446210;
          *(v30 + 4) = sub_29DFAA104(0x697463656A6F7250, 0xEA00000000006E6FLL, &v42);
          _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Cannot compute next fertile window time date, just returning the current day index", v30, 0xCu);
          sub_29DE93B3C(v31);
          MEMORY[0x29ED82140](v31, -1, -1);
          MEMORY[0x29ED82140](v30, -1, -1);
        }

        (*(v35 + 8))(v9, v36);
        (*(v14 + 16))(v16, v39, v13);
        (*(v37 + 16))(v12, v40, v38);
        sub_29E2C3144();
      }

      else
      {
        (*(v14 + 32))(v19, v22, v13);
        (*(v14 + 16))(v16, v19, v13);
        (*(v37 + 16))(v12, v27, v38);
        sub_29E2C3144();
        (*(v14 + 8))(v19, v13);
      }

      return sub_29DE93920(v26);
    }

    goto LABEL_10;
  }

  if (__OFSUB__([a4 allDays], 1))
  {
    __break(1u);
LABEL_10:
    v32 = [a4 allDays];
    v33 = __OFSUB__(v32, 3);
    result = v32 - 3;
    if (v33)
    {
      __break(1u);
      return result;
    }
  }

  return sub_29E2C30D4();
}

id sub_29E064374()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v27 - v7;
  v9 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = type metadata accessor for CycleChartPDFHeader(0);
  result = 0;
  v12 = v0 + *(v10 + 20);
  if ((*(v12 + 16) & 1) == 0)
  {
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_29E2C3354();
    sub_29E2C3344();
    v28 = v13;
    sub_29E2C3324();
    sub_29E2C3344();
    v28 = v14;
    sub_29E2C3324();
    sub_29E2C3344();
    sub_29E2C3374();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    v18 = v17;
    (*(v3 + 8))(v8, v2);
    v28 = 32;
    v29 = 0xE100000000000000;
    MEMORY[0x29ED7FCC0](v16, v18);

    v19 = *MEMORY[0x29EDC7700];
    v20 = sub_29E2BE1E4();
    v21 = [objc_opt_self() systemFontOfSize:7.0 weight:v19];
    sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
    v22 = sub_29E2C3E84();
    sub_29DF40374(v21, v22, v20);

    v23 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v24 = sub_29E2C33A4();

    type metadata accessor for Key(0);
    sub_29E066070(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
    v25 = sub_29E2C31F4();

    v26 = [v23 initWithString:v24 attributes:v25];

    return v26;
  }

  return result;
}

id sub_29E0647E0()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v27 - v7;
  v9 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = type metadata accessor for CycleChartPDFHeader(0);
  result = 0;
  v12 = v0 + *(v10 + 24);
  if ((*(v12 + 16) & 1) == 0)
  {
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_29E2C3354();
    sub_29E2C3344();
    v28 = v13;
    sub_29E2C3324();
    sub_29E2C3344();
    v28 = v14;
    sub_29E2C3324();
    sub_29E2C3344();
    sub_29E2C3374();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    v18 = v17;
    (*(v3 + 8))(v8, v2);
    v28 = v16;
    v29 = v18;
    MEMORY[0x29ED7FCC0](32, 0xE100000000000000);
    v19 = *MEMORY[0x29EDC7700];
    v20 = sub_29E2BE1E4();
    v21 = [objc_opt_self() systemFontOfSize:7.0 weight:v19];
    sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
    v22 = sub_29E2C3E84();
    sub_29DF40374(v21, v22, v20);

    v23 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v24 = sub_29E2C33A4();

    type metadata accessor for Key(0);
    sub_29E066070(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
    v25 = sub_29E2C31F4();

    v26 = [v23 initWithString:v24 attributes:v25];

    return v26;
  }

  return result;
}

uint64_t sub_29E064C3C@<X0>(uint64_t *a1@<X8>)
{
  sub_29E2BEEF4();
  v1 = *MEMORY[0x29EDC7700];
  v2 = sub_29E2BE1E4();
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:7.0 weight:v1];
  v5 = sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
  v6 = sub_29E2C3E84();
  sub_29DF40374(v4, v6, v2);

  v7 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v8 = sub_29E2C33A4();

  type metadata accessor for Key(0);
  v10 = v9;
  sub_29E066070(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
  v11 = sub_29E2C31F4();

  v53 = [v7 initWithString:v8 attributes:v11];

  sub_29E0B5714();
  v12 = sub_29E2BE1E4();
  v51 = v3;
  v13 = [v3 systemFontOfSize:7.0 weight:v1];
  v14 = sub_29E2C3E84();
  sub_29DF40374(v13, v14, v12);

  v15 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v16 = sub_29E2C33A4();

  v17 = sub_29E2C31F4();

  v18 = [v15 initWithString:v16 attributes:v17];

  v19 = sub_29E064374();
  v20 = MEMORY[0x29EDC2868];
  if (v19)
  {
    v21 = v19;
    v22 = sub_29E2BE1E4();
    v23 = v18;
    v24 = [v51 systemFontOfSize:7.0 weight:{v1, v10, v5}];
    v25 = sub_29E2C3E84();
    sub_29DF40374(v24, v25, v22);

    v26 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v27 = sub_29E2C33A4();
    v28 = sub_29E2C31F4();

    v29 = [v26 initWithString:v27 attributes:v28];

    v18 = v23;
    [v21 appendAttributedString_];

    v30 = v53;
    v31 = [v21 appendAttributedString_];
    MEMORY[0x2A1C7C4A8](v31);
    v58 = sub_29E2BF564();
    v59 = v20;
    sub_29DEBB7E8(v57);
    sub_29E2BF554();
  }

  else
  {
    v58 = sub_29DE9408C(0, &qword_2A181B648, 0x29EDBA038);
    v59 = MEMORY[0x29EDC2CE0];
    v30 = v53;
    v57[0] = v53;
    v33 = v53;
  }

  v32 = v51;
  v34 = sub_29E0647E0();
  if (v34)
  {
    v35 = v34;
    v36 = v18;
    v52 = v18;
    v37 = sub_29E2BE1E4();
    v38 = v20;
    v39 = [v32 systemFontOfSize:7.0 weight:v1];
    v40 = sub_29E2C3E84();
    sub_29DF40374(v39, v40, v37);

    v41 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v42 = sub_29E2C33A4();
    v43 = sub_29E2C31F4();

    v44 = [v41 initWithString:v42 attributes:v43];

    [v36 appendAttributedString_];
    v45 = [v36 appendAttributedString_];
    MEMORY[0x2A1C7C4A8](v45);
    v55 = sub_29E2BF564();
    v56 = v38;
    sub_29DEBB7E8(v54);
    sub_29E2BF554();

    v18 = v52;
    v30 = v53;
  }

  else
  {
    v55 = sub_29DE9408C(0, &qword_2A181B648, 0x29EDBA038);
    v56 = MEMORY[0x29EDC2CE0];
    v54[0] = v18;
    v46 = v18;
  }

  MEMORY[0x2A1C7C4A8](v46);
  v47 = sub_29E2BFC04();
  v48 = MEMORY[0x29EDC2C70];
  a1[3] = v47;
  a1[4] = v48;
  sub_29DEBB7E8(a1);
  sub_29E2BFBF4();

  sub_29DE93B3C(v54);
  return sub_29DE93B3C(v57);
}

void sub_29E065330(void *a1)
{
  v2 = [objc_opt_self() configurationWithScale_];
  v3 = sub_29E2C33A4();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    sub_29E2BE1E4();
    sub_29E2BE1A4();
    v10 = sub_29E2BFB34();
    v11 = MEMORY[0x29EDC2C28];
    sub_29DEBB7E8(v9);
    sub_29E2BFB24();
    v5 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    v10 = sub_29DE9408C(0, &qword_2A181B648, 0x29EDBA038);
    v11 = MEMORY[0x29EDC2CE0];
    v9[0] = a1;
    v6 = a1;
    v7 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    sub_29E065E9C(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29E2CD7A0;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    MEMORY[0x29ED7B1C0]();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E065510(void *a1)
{
  v10 = sub_29DE9408C(0, &qword_2A181B648, 0x29EDBA038);
  v11 = MEMORY[0x29EDC2CE0];
  v9[0] = a1;
  v2 = a1;
  v3 = sub_29E2BEA14();
  sub_29DE93B3C(v9);
  v4 = [objc_opt_self() configurationWithScale_];
  v5 = sub_29E2C33A4();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    sub_29E2BE1E4();
    sub_29E2BE1A4();
    v10 = sub_29E2BFB34();
    v11 = MEMORY[0x29EDC2C28];
    sub_29DEBB7E8(v9);
    sub_29E2BFB24();
    v7 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    sub_29E065E9C(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29E2CD7A0;
    *(v8 + 32) = v3;
    *(v8 + 40) = v7;
    MEMORY[0x29ED7B1C0]();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E0656F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v39 = a2;
  v38 = a1;
  v41 = sub_29E2BF584();
  v40 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BEEE4();
  v5 = objc_opt_self();
  v6 = *MEMORY[0x29EDC7700];
  v7 = [v5 systemFontOfSize:12.0 weight:{*MEMORY[0x29EDC7700], v38}];
  v8 = [objc_opt_self() darkTextColor];
  sub_29DE9408C(0, &qword_2A1817B10, 0x29EDC7688);
  v9 = sub_29E2C3E84();
  sub_29DF40374(v7, v9, v8);

  v10 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v11 = sub_29E2C33A4();

  type metadata accessor for Key(0);
  sub_29E066070(&qword_2A18177F0, type metadata accessor for Key, &unk_29E2CD02C);
  v12 = sub_29E2C31F4();

  v13 = [v10 initWithString:v11 attributes:v12];

  v14 = sub_29DE9408C(0, &qword_2A181B648, 0x29EDBA038);
  v47[3] = v14;
  v47[4] = MEMORY[0x29EDC2CE0];
  v46 = 0;
  v47[0] = v13;
  v44 = 0u;
  v45 = 0u;
  sub_29E0B5A6C();
  v16 = v15;
  v17 = sub_29E2BE1E4();
  v18 = [v5 systemFontOfSize:7.0 weight:v6];
  v19 = sub_29E2C3E84();
  sub_29DF40374(v18, v19, v17);

  if (v16)
  {
    v20 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v21 = sub_29E2C33A4();

    v22 = sub_29E2C31F4();

    v23 = [v20 initWithString:v21 attributes:v22];

    v24 = MEMORY[0x29EDC2CE0];
  }

  else
  {

    v23 = 0;
    v14 = 0;
    v24 = 0;
    v43[1] = 0;
    v43[2] = 0;
  }

  v43[0] = v23;
  v43[3] = v14;
  v43[4] = v24;
  v25 = *MEMORY[0x29EDC2878];
  v26 = *(v40 + 104);
  v27 = v41;
  v26(v4, v25, v41);
  v28 = sub_29E2BF594();
  v29 = MEMORY[0x29EDC2880];
  v49 = v28;
  v50 = MEMORY[0x29EDC2880];
  sub_29DEBB7E8(v48);
  sub_29E2BF574();
  v30 = sub_29E2BEA14();
  sub_29DE93B3C(v48);
  sub_29DE9DC34(v39, v47);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_29DE9DC34(v42, v43);
  v26(v4, v25, v27);
  v49 = v28;
  v50 = v29;
  sub_29DEBB7E8(v48);
  sub_29E2BF574();
  v31 = sub_29E2BEA14();
  sub_29DE93B3C(v48);
  v32 = sub_29E2BE1B4();
  v33 = [v32 CGColor];

  v49 = sub_29E2BEDB4();
  v50 = MEMORY[0x29EDC2290];
  sub_29DEBB7E8(v48);
  sub_29E2BEDA4();
  v34 = sub_29E2BEA14();
  sub_29DE93B3C(v48);
  sub_29E065E9C(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CE0D0;
  *(v35 + 32) = v30;
  *(v35 + 40) = v31;
  *(v35 + 48) = v34;
  v36 = MEMORY[0x29ED7B1C0]();

  return v36;
}

uint64_t sub_29E065C9C(uint64_t a1, uint64_t a2)
{
  sub_29E064C3C(v3);
  sub_29DE966D4(v3, v3[3]);
  sub_29E2BE334();
  return sub_29DE93B3C(v3);
}

double sub_29E065D10(uint64_t a1)
{
  sub_29E064C3C(v4);
  sub_29DE966D4(v4, v4[3]);
  sub_29E2BE324();
  v2 = v1;
  sub_29DE93B3C(v4);
  return v2;
}

uint64_t sub_29E065DA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E066070(&qword_2A181B670, type metadata accessor for CycleChartPDFHeader, &unk_29E2DB498);
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

void sub_29E065E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CycleChartPDFHeader(uint64_t a1)
{
  result = qword_2A181B650;
  if (!qword_2A181B650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E065F74(uint64_t a1)
{
  type metadata accessor for CycleChartPDFModel(319);
  if (v1 <= 0x3F)
  {
    sub_29E065E9C(319, &qword_2A181B660, sub_29DF9D6E4, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E066070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E0660BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_29E146050(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
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

      return v12;
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

void sub_29E066198(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 24) = *(v1 + 16);
  sub_29E2BF404();

  if (a1 >> 62)
  {
    v4 = sub_29E2C4484();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x29EDCA190];
  if (!v4)
  {
LABEL_13:
    *(v2 + 16) = v5;

    return;
  }

  v13 = MEMORY[0x29EDCA190];
  sub_29E1813F8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v12 = v1;
    v6 = 0;
    v5 = v13;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED80D70](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 hkmc_cycleFactor];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_29E1813F8((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
    }

    while (v4 != v6);
    v2 = v12;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_29E066308()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    while (*(result + 8 * v3 + 32) != 2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    *(v0 + 24) = result;
    sub_29E2BF404();

    swift_beginAccess();
    sub_29E0663CC(v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_29E0663CC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29E14D99C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_29E066484(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_29E066544(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_29E0665D0(void *a1)
{
  v2 = *v1;
  v53 = a1;
  v54 = v2;
  v3 = sub_29E2C0514();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v52 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v52 - v10;
  swift_beginAccess();
  v12 = sub_29E2BF404();
  v13 = sub_29E14F15C(v12);

  v14 = sub_29E2BF404();
  v15 = sub_29E14F15C(v14);

  sub_29E066BDC(v15);
  sub_29E066CF4(v16);
  v18 = v17;

  sub_29E066BDC(v13);
  sub_29E066CF4(v19);
  v21 = v20;

  if (sub_29E0677B4(v18, v21))
  {

    sub_29E2C04B4();
    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58 = v25;
      *v24 = 136446210;
      v26 = sub_29E2C4AE4();
      v28 = sub_29DFAA104(v26, v27, &v58);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] No analysis impact notification is needed", v24, 0xCu);
      sub_29DE93B3C(v25);
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v24, -1, -1);
    }

    (*(v55 + 8))(v5, v56);
    return 0;
  }

  v58 = v18;
  sub_29E2BF404();
  sub_29E0680A8(v21);
  v29 = v58;
  if (!v58[2] && !*(v1[2] + 16))
  {

    v29 = v18;
    if (*(v18 + 16))
    {
      goto LABEL_8;
    }

LABEL_15:

    sub_29E2C04B4();
    v44 = sub_29E2C0504();
    v45 = sub_29E2C3A34();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58 = v47;
      *v46 = 136446210;
      v48 = sub_29E2C4AE4();
      v50 = sub_29DFAA104(v48, v49, &v58);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_29DE74000, v44, v45, "[%{public}s] No analysis impact notification is needed", v46, 0xCu);
      sub_29DE93B3C(v47);
      MEMORY[0x29ED82140](v47, -1, -1);
      MEMORY[0x29ED82140](v46, -1, -1);
    }

    (*(v55 + 8))(v8, v56);
    return 0;
  }

  if (!*(v29 + 16))
  {
    goto LABEL_15;
  }

LABEL_8:
  sub_29E2C04B4();
  sub_29E2BF404();
  v30 = sub_29E2C0504();
  v31 = sub_29E2C3A34();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v32 = 136446466;
    v33 = sub_29E2C4AE4();
    v35 = sub_29DFAA104(v33, v34, &v58);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v57 = v29;
    sub_29E068DDC(0, &qword_2A181B678, sub_29DE93FAC, &type metadata for AnalysisKind, MEMORY[0x29EDC9B90]);
    sub_29E2BF404();
    v36 = sub_29E2C3464();
    v38 = sub_29DFAA104(v36, v37, &v58);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_29DE74000, v30, v31, "[%{public}s] Updating impacted analysis kinds to %s", v32, 0x16u);
    v39 = v52;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v39, -1, -1);
    MEMORY[0x29ED82140](v32, -1, -1);
  }

  (*(v55 + 8))(v11, v56);
  v40 = *(v13 + 16);

  v41 = *(v15 + 16);

  if (v41 >= v40)
  {
    v42 = sub_29E068934(v29);
  }

  else
  {
    v42 = sub_29E0684C0(v29);
  }

  sub_29E066E74(v53, v42, v43);

  return v29;
}

void sub_29E066BDC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  sub_29E2BF404();
  v7 = 0;
  v8 = MEMORY[0x29EDCA1A0];
  v9 = MEMORY[0x29EDCA1A0];
  while (v5)
  {
LABEL_11:
    v12 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v5))))) - 1;
    if (v12 <= 8 && ((0x1FBu >> v12) & 1) != 0)
    {
      v10 = sub_29DE92374(*(&off_29F362868 + v12));
    }

    else
    {
      v10 = v8;
    }

    v5 &= v5 - 1;
    v9 = sub_29E0660BC(v10, v9);
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_29E066CF4(uint64_t a1)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(a1 + 48);
    v13 = *(v12 + v11);
    if (*(v12 + v11))
    {
      if (v13 == 1)
      {
        if ((*(*(v1 + 40) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__fertileWindowEstimatesEnabled) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v13 == 2 && (sub_29E232F44() & 1) == 0)
      {
LABEL_4:
        sub_29E062064(v13);
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_29E2C1214();

      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_29E066E74(void *a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v28[2] = a2;
  v31 = a1;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v28 - v9;
  sub_29E2C3314();
  v11 = *(v5 + 16);
  v32 = v5 + 16;
  v33 = v11;
  v11(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  v13 = qword_2A1A67F80;
  sub_29E2BCC74();
  v14 = v13;
  v28[1] = v12;
  sub_29E2C3414();
  v15 = *(v5 + 8);
  v28[0] = v5 + 8;
  v15(v10, v4);
  v16 = sub_29E2C33A4();

  v17 = sub_29E2C33A4();
  v29 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  sub_29E2C3314();
  v33(v7, v10, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v15(v10, v4);
  v18 = swift_allocObject();
  v19 = v31;
  *(v18 + 16) = v30;
  *(v18 + 24) = v19;

  v31 = v19;
  v20 = sub_29E2C33A4();

  v38 = sub_29E068DB4;
  v39 = v18;
  aBlock = MEMORY[0x29EDCA5F8];
  v35 = 1107296256;
  v36 = sub_29DF6E81C;
  v37 = &unk_2A24B8E58;
  v21 = _Block_copy(&aBlock);

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:1 handler:v21];
  _Block_release(v21);

  v24 = v29;
  [v29 addAction_];

  sub_29E2C3314();
  v33(v7, v10, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v15(v10, v4);
  v25 = sub_29E2C33A4();

  v38 = nullsub_1;
  v39 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v35 = 1107296256;
  v36 = sub_29DF6E81C;
  v37 = &unk_2A24B8E80;
  v26 = _Block_copy(&aBlock);

  v27 = [v22 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v24 addAction_];
  [v31 presentViewController:v24 animated:1 completion:0];
}

void sub_29E0673E8(uint64_t a1, void *a2, void *a3)
{
  v28 = a3;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v27[1] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v27 - v11;
  v13 = a2[4];
  v14 = a2[5];
  v16 = a2[6];
  v15 = a2[7];
  v29 = a2;
  v17 = objc_allocWithZone(type metadata accessor for LocalSettingsModel());
  v18 = v13;
  swift_unknownObjectRetain();

  v19 = [v17 init];
  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  v27[0] = sub_29DF729A4(v18, v15, v19, v14, v16, 1);

  swift_unknownObjectRelease();

  sub_29E2C3314();
  (*(v7 + 16))(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  sub_29E2BCC74();
  v21 = sub_29E2C3414();
  v23 = v22;
  (*(v7 + 8))(v12, v6);
  v30 = sub_29E068DD4;
  v31 = v27[0];
  v32 = 0;
  v33 = v21;
  v34 = v23;
  sub_29E068DDC(0, &qword_2A181CC10, sub_29E068E44, &type metadata for OptionsView, MEMORY[0x29EDC4350]);
  v25 = objc_allocWithZone(v24);

  sub_29E2BF404();
  v26 = sub_29E2C2CC4();
  [v28 showAdaptively:v26 sender:v29];
}

uint64_t sub_29E067730()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E0677B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_29E2C4A04();
    MEMORY[0x29ED811E0](v13);
    result = sub_29E2C4A54();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_29E067924(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2A1C72B38](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_29E067DC0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_29DF60AA4();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_29E2C40C4();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_29E2C40D4();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_29E067B8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      sub_29E2C4A04();
      v27 = v13;
      sub_29E2C34B4();
      v14 = sub_29E2C4A54();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v20 = v19;
        if (v18 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_29E2C4914();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_29E067DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_29E2C4484())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_29E2C44D4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_29E067EC0(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

      sub_29E2BF404();
LABEL_7:
      v1 = v20;
      sub_29E146428(&v22, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_29E2C4A04();
    sub_29E2BF404();
    sub_29E2C34B4();
    v14 = sub_29E2C4A54();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_29E2C4914() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v20;
    sub_29E061A8C(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

void sub_29E0680A8(uint64_t a1)
{
  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(a1 + 48) + (v10 | (v3 << 6)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        sub_29E2C4A04();
        MEMORY[0x29ED811E0](v11);
        v13 = sub_29E2C4A54();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          break;
        }
      }

LABEL_6:
      sub_29E146050(v17, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v16 = ~v14;
    while (*(*(v12 + 48) + v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_29E062064(v11);
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

char *sub_29E068230(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v12 = MEMORY[0x29EDCA190];
  v11[2] = MEMORY[0x29EDCA190];
  v11[3] = v12;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    swift_beginAccess();
    v11[2] = v12;

LABEL_21:
    v11[3] = v12;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = a5;
    return v11;
  }

  v13 = sub_29E2C4484();
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_3:
  v37 = v13 & ~(v13 >> 63);
  result = sub_29E1813F8(0, v37, 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v31 = v11 + 2;
    v32 = v11;
    v38 = v13;
    v33 = a2;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v15 = 0;
    v16 = a1 & 0xC000000000000001;
    v17 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    v18 = a1;
    do
    {
      if (v16)
      {
        v19 = MEMORY[0x29ED80D70](v15, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v15 + 32);
      }

      v20 = v19;
      v21 = v17;
      v22 = [v19 v17[80]];

      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_29E1813F8((v23 > 1), v24 + 1, 1);
      }

      ++v15;
      *(v12 + 16) = v24 + 1;
      *(v12 + 8 * v24 + 32) = v22;
      v17 = v21;
      a1 = v18;
    }

    while (v38 != v15);
    swift_beginAccess();
    *v31 = v12;
    sub_29E1813F8(0, v37, 0);
    for (i = 0; i != v38; ++i)
    {
      if (v16)
      {
        v26 = MEMORY[0x29ED80D70](i, v18);
      }

      else
      {
        v26 = *(v18 + 8 * i + 32);
      }

      v27 = v26;
      v28 = [v26 v17 + 3464];

      v30 = *(v12 + 16);
      v29 = *(v12 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_29E1813F8((v29 > 1), v30 + 1, 1);
      }

      *(v12 + 16) = v30 + 1;
      *(v12 + 8 * v30 + 32) = v28;
    }

    a4 = v35;
    a5 = v36;
    a2 = v33;
    a3 = v34;
    v11 = v32;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E0684C0(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17[-v8];
  v10 = sub_29E0922B0(0, a1);
  v11 = sub_29E0922B0(1u, a1);
  v12 = sub_29E0922B0(2u, a1);
  if (v10)
  {
    if (v12)
    {
LABEL_3:
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

LABEL_17:
      swift_once();
LABEL_13:
      v15 = qword_2A1A67F80;
      sub_29E2BCC74();
      v16 = sub_29E2C3414();
      (*(v4 + 8))(v9, v3);
      return v16;
    }

    if (!v11)
    {
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
LABEL_11:
      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      return sub_29E2C3414();
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_3;
  }

  if (v11)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_29E068934(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17[-v8];
  v10 = sub_29E0922B0(0, a1);
  v11 = sub_29E0922B0(1u, a1);
  v12 = sub_29E0922B0(2u, a1);
  if (v10)
  {
    if (v12)
    {
LABEL_3:
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

LABEL_17:
      swift_once();
LABEL_13:
      v15 = qword_2A1A67F80;
      sub_29E2BCC74();
      v16 = sub_29E2C3414();
      (*(v4 + 8))(v9, v3);
      return v16;
    }

    if (!v11)
    {
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
LABEL_11:
      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      return sub_29E2C3414();
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_3;
  }

  if (v11)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_29E068DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E068DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29E068E44()
{
  result = qword_2A181B690;
  if (!qword_2A181B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B690);
  }

  return result;
}

uint64_t *sub_29E068EA0(unint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v17 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v14 = i;
    v15 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x29ED80D70](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v16 = v9;
      sub_29E06D4B4(&v16, a2);
      if (v2)
      {

        return a2;
      }

      if (v12)
      {
        sub_29E2C4614();
        sub_29E2C4644();
        sub_29E2C4654();
        sub_29E2C4624();
        i = v14;
        v4 = v15;
      }

      else
      {
      }

      ++v6;
      if (v11 == i)
      {
        a2 = v17;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a2 = MEMORY[0x29EDCA190];
LABEL_20:

  return a2;
}

uint64_t sub_29E069038()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v8 = MEMORY[0x29EDCA190];
    sub_29E2BF404();
    sub_29E2C4634();
    v4 = 40;
    do
    {
      v5 = *(v1 + v4);
      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      v4 += 16;
      --v2;
    }

    while (v2);

    v3 = v8;
  }

  v9 = v3;
  v6 = sub_29E2BF404();
  sub_29DFCB5D4(v6);
  return v9;
}

uint64_t sub_29E069128()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v8 = MEMORY[0x29EDCA190];
    sub_29E2BF404();
    sub_29E2C4634();
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      v4 += 16;
      --v2;
    }

    while (v2);

    v3 = v8;
  }

  v9 = v3;
  v6 = sub_29E2BF404();
  sub_29DFCB5D4(v6);
  return v9;
}

uint64_t sub_29E069218(unint64_t *a1, unint64_t *a2, __n128 a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if ((sub_29E142298(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_29E142298(v3, v4);
}

unint64_t sub_29E069274@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E0701F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29E0692B0()
{
  v1 = v0;
  v151 = *v0;
  sub_29E070194(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v142 = &v140 - v3;
  v4 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v147 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v146 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C31A4();
  v148 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v150 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v152 = &v140 - v11;
  v12 = sub_29E2C0514();
  v153 = *(v12 - 8);
  v154 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v145 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v143 = &v140 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v144 = &v140 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v140 - v19;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v140 - v22;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v140 - v25;
  *&v28 = MEMORY[0x2A1C7C4A8](v27).n128_u64[0];
  v30 = &v140 - v29;
  v31 = v1[3];
  v32 = &selRef_removeObserver_;
  v149 = v8;
  v141 = v23;
  if (v31)
  {
    v33 = [v31 statistics];
    v34 = [v33 menstruationLengthMedian];

    if (v34)
    {
      if ([v34 integerValue] - 21 >= 0xFFFFFFFFFFFFFFECLL)
      {
        v49 = [v34 integerValue];
        v50 = v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
        *v50 = v49;
        v50[8] = 0;
        *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLengthFromAnalysis) = 1;
        sub_29E2C04B4();

        v51 = sub_29E2C0504();
        v52 = sub_29E2C3A34();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          LODWORD(v140) = v52;
          v54 = v53;
          v55 = swift_slowAlloc();
          v157[0] = v55;
          *v54 = 136446466;
          v56 = sub_29E2C4AE4();
          v58 = sub_29DFAA104(v56, v57, v157);

          *(v54 + 4) = v58;
          *(v54 + 12) = 2080;
          v59 = v50[8];
          v155 = *v50;
          v156 = v59;
          sub_29E07068C(0, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
          v60 = sub_29E2C3464();
          v62 = sub_29DFAA104(v60, v61, v157);

          *(v54 + 14) = v62;
          v32 = &selRef_removeObserver_;
          _os_log_impl(&dword_29DE74000, v51, v140, "[%{public}s] Updating period length from analysis: %s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v55, -1, -1);
          MEMORY[0x29ED82140](v54, -1, -1);
        }

        v45 = *(v153 + 8);
        v45(v30, v154);
        v46 = v1[3];
        if (!v46)
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }
    }
  }

  sub_29E2C04B4();
  v35 = sub_29E2C0504();
  v36 = sub_29E2C3A34();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v155 = v38;
    *v37 = 136446466;
    v39 = sub_29E2C4AE4();
    v41 = sub_29DFAA104(v39, v40, &v155);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v157[0] = 5;
    v42 = sub_29E2C48D4();
    v44 = sub_29DFAA104(v42, v43, &v155);

    *(v37 + 14) = v44;
    _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Using default value for period length: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v38, -1, -1);
    MEMORY[0x29ED82140](v37, -1, -1);
  }

  v45 = *(v153 + 8);
  v45(v26, v154);
  v32 = &selRef_removeObserver_;
  v46 = v1[3];
  if (!v46)
  {
    goto LABEL_14;
  }

LABEL_8:
  v47 = [v46 statistics];
  v48 = [v47 cycleLengthMedian];

  if (!v48)
  {
LABEL_14:
    sub_29E2C04B4();
    v63 = sub_29E2C0504();
    v64 = sub_29E2C3A34();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v155 = v66;
      *v65 = 136446466;
      v67 = sub_29E2C4AE4();
      v69 = sub_29DFAA104(v67, v68, &v155);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v157[0] = 28;
      v70 = sub_29E2C48D4();
      v72 = sub_29DFAA104(v70, v71, &v155);

      *(v65 + 14) = v72;
      v32 = &selRef_removeObserver_;
      _os_log_impl(&dword_29DE74000, v63, v64, "[%{public}s] Using default value for cycle length: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v66, -1, -1);
      MEMORY[0x29ED82140](v65, -1, -1);
    }

    v73 = v20;
    goto LABEL_17;
  }

  if ([v48 integerValue] - 91 < 0xFFFFFFFFFFFFFFAFLL)
  {

    goto LABEL_14;
  }

  v114 = [v48 integerValue];
  v115 = v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
  *v115 = v114;
  v115[8] = 0;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLengthFromAnalysis) = 1;
  v116 = v141;
  sub_29E2C04B4();

  v117 = sub_29E2C0504();
  v118 = sub_29E2C3A34();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v157[0] = v140;
    *v119 = 136446466;
    v120 = sub_29E2C4AE4();
    v122 = sub_29DFAA104(v120, v121, v157);

    *(v119 + 4) = v122;
    *(v119 + 12) = 2080;
    v123 = v115[8];
    v155 = *v115;
    v156 = v123;
    sub_29E07068C(0, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v124 = sub_29E2C3464();
    v126 = sub_29DFAA104(v124, v125, v157);

    *(v119 + 14) = v126;
    v32 = &selRef_removeObserver_;
    _os_log_impl(&dword_29DE74000, v117, v118, "[%{public}s] Updating cycle length from analysis: %s", v119, 0x16u);
    v127 = v140;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v127, -1, -1);
    MEMORY[0x29ED82140](v119, -1, -1);
  }

  v73 = v116;
LABEL_17:
  v45(v73, v154);
  v74 = v149;
  v75 = v150;
  v76 = [v1[2] currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  v77 = v152;
  sub_29E2C30C4();
  v78 = v1[3];
  if (v78 && (v79 = [v78 v32[67]], v80 = objc_msgSend(v79, sel_lastMenstruationStartDayIndex), v79, v80))
  {
    [v80 integerValue];
    sub_29E2C30D4();
    sub_29E06F0E0(&qword_2A1A61A40, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v81 = sub_29E2C3284();
    v82 = v148;
    v83 = v74;
    if (v81)
    {
      v84 = v142;
      (*(v148 + 16))(v142, v75, v83);
      (*(v82 + 56))(v84, 0, 1, v83);
      v85 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
      swift_beginAccess();
      sub_29E06F128(v84, v1 + v85);
      swift_endAccess();
      *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayFromAnalysis) = 1;
      v86 = v144;
      sub_29E2C04B4();
      v87 = v80;
      v88 = sub_29E2C0504();
      v89 = sub_29E2C3A34();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v155 = v91;
        *v90 = 136315394;
        v92 = sub_29E2C4AE4();
        v94 = v82;
        v95 = sub_29DFAA104(v92, v93, &v155);

        *(v90 + 4) = v95;
        *(v90 + 12) = 2080;
        v157[0] = v87;
        sub_29DE9408C(0, &qword_2A1A5E0B0, 0x29EDBA070);
        v96 = v87;
        v97 = sub_29E2C3464();
        v99 = sub_29DFAA104(v97, v98, &v155);

        *(v90 + 14) = v99;
        _os_log_impl(&dword_29DE74000, v88, v89, "[%s] Updating last menstrual period date: %s", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v91, -1, -1);
        MEMORY[0x29ED82140](v90, -1, -1);

        v100 = v144;
LABEL_31:
        v45(v100, v154);
        v138 = *(v94 + 8);
        v138(v150, v83);
        return (v138)(v152, v83);
      }
    }

    else
    {
      v86 = v143;
      sub_29E2C04B4();
      v87 = v80;
      v88 = sub_29E2C0504();
      v128 = sub_29E2C3A34();

      if (os_log_type_enabled(v88, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v155 = v130;
        *v129 = 136315394;
        v131 = sub_29E2C4AE4();
        v94 = v82;
        v133 = sub_29DFAA104(v131, v132, &v155);

        *(v129 + 4) = v133;
        *(v129 + 12) = 2080;
        v157[0] = v87;
        sub_29DE9408C(0, &qword_2A1A5E0B0, 0x29EDBA070);
        v134 = v87;
        v135 = sub_29E2C3464();
        v137 = sub_29DFAA104(v135, v136, &v155);

        *(v129 + 14) = v137;
        _os_log_impl(&dword_29DE74000, v88, v128, "[%s] Not using last menstrual period date: %s (too out of date)", v129, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v130, -1, -1);
        MEMORY[0x29ED82140](v129, -1, -1);

        v100 = v143;
        goto LABEL_31;
      }
    }

    v45(v86, v154);
    v139 = *(v82 + 8);
    v139(v75, v83);
    return (v139)(v77, v83);
  }

  else
  {
    v101 = v145;
    sub_29E2C04B4();
    v102 = sub_29E2C0504();
    v103 = sub_29E2C3A34();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v148;
    if (v104)
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v155 = v107;
      *v106 = 136446210;
      v108 = sub_29E2C4AE4();
      v110 = v45;
      v111 = v101;
      v112 = sub_29DFAA104(v108, v109, &v155);

      *(v106 + 4) = v112;
      _os_log_impl(&dword_29DE74000, v102, v103, "[%{public}s] Last menstrual period date not present", v106, 0xCu);
      sub_29DE93B3C(v107);
      MEMORY[0x29ED82140](v107, -1, -1);
      MEMORY[0x29ED82140](v106, -1, -1);

      v110(v111, v154);
      return (*(v105 + 8))(v152, v74);
    }

    else
    {

      v45(v101, v154);
      return (*(v105 + 8))(v77, v74);
    }
  }
}

uint64_t sub_29E06A2EC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a2, ObjectType, v5);
  }

  return swift_unknownObjectRelease();
}

void sub_29E06A380(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29E2BF404();
  v4 = sub_29E14EC4C(v3);

  v239 = v4;
  sub_29E2BF404();
  v5 = sub_29E2BF404();
  v6 = sub_29E14EC4C(v5);

  v238 = v6;
  sub_29E06F26C(v4);

  v7 = v6;
  v227 = v1;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*(v6 + 16))
    {
      v10 = 0;
      v12 = -1 << *(v6 + 32);
      v8 = v6 + 56;
      v13 = ~v12;
      v14 = -v12;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v11 = v15 & *(v6 + 56);
      v9 = v13;
      goto LABEL_9;
    }

LABEL_123:

    goto LABEL_125;
  }

  if (!sub_29E2C4484())
  {
    goto LABEL_123;
  }

  sub_29E2C4444();
  sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
  sub_29E06FCF0();
  sub_29E2C3834();
  v7 = v240;
  v8 = v241;
  v9 = v242;
  v10 = v243;
  v11 = v244;
LABEL_9:
  v16 = (v9 + 64) >> 6;
  v206 = v8;
  v208 = v7;
  v205 = v16;
  while (v7 < 0)
  {
    v21 = sub_29E2C44C4();
    if (!v21)
    {
      goto LABEL_124;
    }

    v245 = v21;
    sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
    swift_dynamicCast();
    v20 = aBlock;
    v212 = v11;
    v213 = v10;
    if (!aBlock)
    {
      goto LABEL_124;
    }

LABEL_20:
    v210 = v20;
    v22 = [v20 hkmc_cycleFactor] - 1;
    if (v22 <= 8 && ((0x1FBu >> v22) & 1) != 0)
    {
      v23 = sub_29DE92374(*(&off_29F3628B0 + v22));
    }

    else
    {
      v23 = MEMORY[0x29EDCA1A0];
    }

    v24 = 0;
    v218 = v23 + 56;
    v25 = 1 << *(v23 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v23 + 56);
    v28 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
    v220 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
    v222 = v23;
    v216 = (v25 + 63) >> 6;
    v225 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
LABEL_28:
    if (v27)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_256;
      }

      if (v29 >= v216)
      {
        break;
      }

      v27 = *(v218 + 8 * v29);
      ++v24;
      if (v27)
      {
        v24 = v29;
LABEL_33:
        v30 = *(*(v23 + 48) + (__clz(__rbit64(v27)) | (v24 << 6)));
        v31 = *(v2 + v28);
        sub_29E2BF404();
        v228 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_29E143944(0, *(v31 + 2) + 1, 1, v31);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        if (v33 >= v32 >> 1)
        {
          v31 = sub_29E143944((v32 > 1), v33 + 1, 1, v31);
        }

        *(v31 + 2) = v33 + 1;
        v31[v33 + 32] = v30;
        v34 = *(v2 + v28);
        *(v2 + v28) = v31;
        v35 = *(v34 + 16);
        v36 = sub_29DE93FAC();
        v37 = MEMORY[0x29ED7FFF0](v35, &type metadata for AnalysisKind, v36);
        v38 = *(v34 + 16);
        v230 = v27;
        if (!v38)
        {

          goto LABEL_79;
        }

        v39 = 0;
        v40 = v34 + 32;
        while (1)
        {
          v41 = v37 + 56;
          while (1)
          {
            v42 = *(v40 + v39++);
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v42);
            v43 = sub_29E2C4A54();
            v44 = -1 << *(v37 + 32);
            v45 = v43 & ~v44;
            if (((*(v41 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              break;
            }

            v46 = ~v44;
            while (*(*(v37 + 48) + v45) != v42)
            {
              v45 = (v45 + 1) & v46;
              if (((*(v41 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            if (v39 == v38)
            {

              goto LABEL_78;
            }
          }

LABEL_47:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v245 = v37;
          v48 = *(v37 + 16);
          if (*(v37 + 24) <= v48)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_29E1493E4(v48 + 1);
            }

            else
            {
              sub_29E147CD0(v48 + 1);
            }

            v49 = v245;
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v42);
            v50 = sub_29E2C4A54();
            v51 = -1 << *(v49 + 32);
            v45 = v50 & ~v51;
            if ((*(v49 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
            {
              v52 = ~v51;
              do
              {
                if (*(*(v49 + 48) + v45) == v42)
                {
                  goto LABEL_267;
                }

                v45 = (v45 + 1) & v52;
              }

              while (((*(v49 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0);
            }
          }

          else if (isUniquelyReferenced_nonNull_native)
          {
            v49 = v37;
          }

          else
          {
            sub_29DE93F50(0);
            v56 = sub_29E2C4524();
            v49 = v56;
            if (*(v37 + 16))
            {
              v57 = (v56 + 56);
              v58 = ((1 << *(v49 + 32)) + 63) >> 6;
              if (v49 != v37 || v57 >= v41 + 8 * v58)
              {
                memmove(v57, (v37 + 56), 8 * v58);
              }

              v59 = 0;
              *(v49 + 16) = *(v37 + 16);
              v60 = 1 << *(v37 + 32);
              if (v60 < 64)
              {
                v61 = ~(-1 << v60);
              }

              else
              {
                v61 = -1;
              }

              v62 = v61 & *(v37 + 56);
              v63 = (v60 + 63) >> 6;
              if (!v62)
              {
                goto LABEL_69;
              }

              while (1)
              {
                v64 = __clz(__rbit64(v62));
                v62 &= v62 - 1;
                for (i = v64 | (v59 << 6); ; i = __clz(__rbit64(v67)) | (v59 << 6))
                {
                  *(*(v49 + 48) + i) = *(*(v37 + 48) + i);
                  if (v62)
                  {
                    break;
                  }

LABEL_69:
                  v66 = v59;
                  do
                  {
                    v59 = v66 + 1;
                    if (__OFADD__(v66, 1))
                    {
                      goto LABEL_263;
                    }

                    if (v59 >= v63)
                    {
                      goto LABEL_76;
                    }

                    v67 = *(v41 + 8 * v59);
                    ++v66;
                  }

                  while (!v67);
                  v62 = (v67 - 1) & v67;
                }
              }
            }

LABEL_76:
          }

          *(v49 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v45;
          *(*(v49 + 48) + v45) = v42;
          v53 = *(v49 + 16);
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            break;
          }

          *(v49 + 16) = v55;
          v37 = v49;
          if (v39 == v38)
          {

            v37 = v49;
LABEL_78:
            v28 = v225;
            v2 = v227;
            v27 = v230;
LABEL_79:
            v68 = *(v2 + v28);
            v69 = *(v68 + 16);
            sub_29E2BF404();
            v70 = MEMORY[0x29ED7FFF0](v69, &type metadata for AnalysisKind, v36);
            v71 = *(v68 + 16);
            if (v71)
            {
              v72 = 0;
              v73 = v68 + 32;
              do
              {
                v74 = v70 + 56;
                while (1)
                {
                  v75 = *(v73 + v72++);
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v75);
                  v76 = sub_29E2C4A54();
                  v77 = -1 << *(v70 + 32);
                  v78 = v76 & ~v77;
                  if (((*(v74 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
                  {
                    break;
                  }

                  v79 = ~v77;
                  while (*(*(v70 + 48) + v78) != v75)
                  {
                    v78 = (v78 + 1) & v79;
                    if (((*(v74 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
                    {
                      goto LABEL_89;
                    }
                  }

                  if (v72 == v71)
                  {

                    goto LABEL_120;
                  }
                }

LABEL_89:
                v80 = swift_isUniquelyReferenced_nonNull_native();
                v245 = v70;
                v81 = *(v70 + 16);
                if (*(v70 + 24) <= v81)
                {
                  if (v80)
                  {
                    sub_29E1493E4(v81 + 1);
                  }

                  else
                  {
                    sub_29E147CD0(v81 + 1);
                  }

                  v82 = v245;
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v75);
                  v83 = sub_29E2C4A54();
                  v84 = -1 << *(v82 + 32);
                  v78 = v83 & ~v84;
                  if ((*(v82 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
                  {
                    v85 = ~v84;
                    do
                    {
                      if (*(*(v82 + 48) + v78) == v75)
                      {
                        goto LABEL_267;
                      }

                      v78 = (v78 + 1) & v85;
                    }

                    while (((*(v82 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) != 0);
                  }
                }

                else if (v80)
                {
                  v82 = v70;
                }

                else
                {
                  sub_29DE93F50(0);
                  v88 = sub_29E2C4524();
                  v82 = v88;
                  if (*(v70 + 16))
                  {
                    v89 = (v88 + 56);
                    v90 = ((1 << *(v82 + 32)) + 63) >> 6;
                    if (v82 != v70 || v89 >= v74 + 8 * v90)
                    {
                      memmove(v89, (v70 + 56), 8 * v90);
                    }

                    v91 = 0;
                    *(v82 + 16) = *(v70 + 16);
                    v92 = 1 << *(v70 + 32);
                    if (v92 < 64)
                    {
                      v93 = ~(-1 << v92);
                    }

                    else
                    {
                      v93 = -1;
                    }

                    v94 = v93 & *(v70 + 56);
                    v95 = (v92 + 63) >> 6;
                    if (!v94)
                    {
                      goto LABEL_111;
                    }

                    while (1)
                    {
                      v96 = __clz(__rbit64(v94));
                      v94 &= v94 - 1;
                      for (j = v96 | (v91 << 6); ; j = __clz(__rbit64(v99)) | (v91 << 6))
                      {
                        *(*(v82 + 48) + j) = *(*(v70 + 48) + j);
                        if (v94)
                        {
                          break;
                        }

LABEL_111:
                        v98 = v91;
                        do
                        {
                          v91 = v98 + 1;
                          if (__OFADD__(v98, 1))
                          {
                            goto LABEL_264;
                          }

                          if (v91 >= v95)
                          {
                            goto LABEL_118;
                          }

                          v99 = *(v74 + 8 * v91);
                          ++v98;
                        }

                        while (!v99);
                        v94 = (v99 - 1) & v99;
                      }
                    }
                  }

LABEL_118:
                }

                *(v82 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v78;
                *(*(v82 + 48) + v78) = v75;
                v86 = *(v82 + 16);
                v54 = __OFADD__(v86, 1);
                v87 = v86 + 1;
                if (v54)
                {
                  goto LABEL_255;
                }

                *(v82 + 16) = v87;
                v70 = v82;
              }

              while (v72 != v71);

              v70 = v82;
LABEL_120:
              v28 = v225;
              v2 = v227;
              v27 = v230;
            }

            else
            {
            }

            v27 &= v27 - 1;
            v100 = sub_29E0677B4(v37, v70);

            v23 = v222;
            v24 = v228;
            if ((v100 & 1) == 0)
            {
              v101 = *(v2 + v220);
              v236 = sub_29E070774;
              v237 = v2;
              aBlock = MEMORY[0x29EDCA5F8];
              v233 = 1107296256;
              v234 = sub_29DF4FA14;
              v235 = &unk_2A24B8FB0;
              v102 = _Block_copy(&aBlock);

              [v101 notifyObservers_];
              _Block_release(v102);
            }

            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
        goto LABEL_265;
      }
    }

    v11 = v212;
    v10 = v213;
    v8 = v206;
    v7 = v208;
    v16 = v205;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_16:
    v212 = (v18 - 1) & v18;
    v213 = v19;
    v20 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v20)
    {
      goto LABEL_124;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_260;
    }

    if (v19 >= v16)
    {
      break;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_16;
    }
  }

LABEL_124:
  sub_29DF219B8(v208);
LABEL_125:
  v103 = sub_29E2BF404();
  v104 = sub_29E14EC4C(v103);

  sub_29E06F26C(v104);

  v105 = v239;
  if ((v239 & 0xC000000000000001) != 0)
  {
    if (sub_29E2C4484())
    {
      sub_29E2C4444();
      sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
      sub_29E06FCF0();
      sub_29E2C3834();
      v105 = v245;
      v106 = v246;
      v107 = v247;
      v108 = v248;
      v109 = v249;
      goto LABEL_133;
    }

LABEL_253:

    return;
  }

  if (!*(v239 + 16))
  {
    goto LABEL_253;
  }

  v108 = 0;
  v110 = -1 << *(v239 + 32);
  v106 = v239 + 56;
  v111 = ~v110;
  v112 = -v110;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  else
  {
    v113 = -1;
  }

  v109 = v113 & *(v239 + 56);
  v107 = v111;
LABEL_133:
  v114 = (v107 + 64) >> 6;
  v209 = v106;
  v211 = v105;
  v207 = v114;
LABEL_135:
  if (v105 < 0)
  {
    if (!sub_29E2C44C4() || (sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60), swift_dynamicCast(), v118 = aBlock, v219 = v109, v221 = v108, !aBlock))
    {
LABEL_252:
      sub_29DF219B8(v105);
      return;
    }
  }

  else
  {
    v115 = v108;
    v116 = v109;
    for (k = v108; !v116; ++v115)
    {
      k = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_261;
      }

      if (k >= v114)
      {
        goto LABEL_252;
      }

      v116 = *(v106 + 8 * k);
    }

    v219 = (v116 - 1) & v116;
    v221 = k;
    v118 = *(*(v105 + 48) + ((k << 9) | (8 * __clz(__rbit64(v116)))));
    if (!v118)
    {
      goto LABEL_252;
    }
  }

  v217 = v118;
  v119 = [v118 hkmc_cycleFactor] - 1;
  if (v119 <= 8 && ((0x1FBu >> v119) & 1) != 0)
  {
    v120 = sub_29DE92374(*(&off_29F3628B0 + v119));
  }

  else
  {
    v120 = MEMORY[0x29EDCA1A0];
  }

  v121 = 0;
  v122 = v120 + 56;
  v123 = 1 << *(v120 + 32);
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  else
  {
    v124 = -1;
  }

  v125 = v124 & *(v120 + 56);
  v126 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v215 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
  v127 = (v123 + 63) >> 6;
  v224 = v120 + 56;
  v226 = v120;
  v229 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v223 = v127;
  while (1)
  {
    do
    {
LABEL_152:
      if (v125)
      {
        v128 = v125;
        goto LABEL_158;
      }

      do
      {
        v129 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_257;
        }

        if (v129 >= v127)
        {

          v109 = v219;
          v108 = v221;
          v106 = v209;
          v105 = v211;
          v114 = v207;
          goto LABEL_135;
        }

        v128 = *(v122 + 8 * v129);
        ++v121;
      }

      while (!v128);
      v121 = v129;
LABEL_158:
      v125 = (v128 - 1) & v128;
      v130 = *(v2 + v126);
      v131 = *(v130 + 2);
    }

    while (!v131);
    v132 = 0;
    v133 = *(*(v120 + 48) + (__clz(__rbit64(v128)) | (v121 << 6)));
    while (v130[v132 + 32] != v133)
    {
      if (v131 == ++v132)
      {
        goto LABEL_152;
      }
    }

    sub_29E2BF404();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_29E14D8A0(v130);
    }

    v134 = *(v130 + 2);
    if (v134 <= v132)
    {
      goto LABEL_262;
    }

    v231 = v125;
    v135 = v134 - 1;
    memmove(&v130[v132 + 32], &v130[v132 + 33], ~v132 + v134);
    *(v130 + 2) = v135;
    v136 = *(v2 + v126);
    *(v2 + v126) = v130;
    v137 = *(v136 + 16);
    v138 = sub_29DE93FAC();
    v139 = MEMORY[0x29ED7FFF0](v137, &type metadata for AnalysisKind, v138);
    if (v137)
    {
      break;
    }

LABEL_208:
    v169 = *(v2 + v126);
    v170 = *(v169 + 16);
    sub_29E2BF404();
    v171 = MEMORY[0x29ED7FFF0](v170, &type metadata for AnalysisKind, v138);
    if (v170)
    {
      v172 = 0;
      v173 = v169 + 32;
      while (1)
      {
        v174 = v171 + 56;
        while (1)
        {
          v175 = *(v173 + v172++);
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v175);
          v176 = sub_29E2C4A54();
          v177 = -1 << *(v171 + 32);
          v178 = v176 & ~v177;
          if (((*(v174 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
          {
            break;
          }

          v179 = ~v177;
          while (*(*(v171 + 48) + v178) != v175)
          {
            v178 = (v178 + 1) & v179;
            if (((*(v174 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
            {
              goto LABEL_218;
            }
          }

          if (v172 == v170)
          {

LABEL_249:
            v2 = v227;
            v126 = v229;
            goto LABEL_250;
          }
        }

LABEL_218:
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v181 = *(v171 + 16);
        if (*(v171 + 24) <= v181)
        {
          if (v180)
          {
            sub_29E1493E4(v181 + 1);
          }

          else
          {
            sub_29E147CD0(v181 + 1);
          }

          v182 = v171;
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v175);
          v183 = sub_29E2C4A54();
          v184 = -1 << *(v171 + 32);
          v178 = v183 & ~v184;
          if ((*(v171 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
          {
            v185 = ~v184;
            while (*(*(v171 + 48) + v178) != v175)
            {
              v178 = (v178 + 1) & v185;
              if (((*(v171 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
              {
                goto LABEL_228;
              }
            }

            goto LABEL_267;
          }
        }

        else if (v180)
        {
          v182 = v171;
        }

        else
        {
          sub_29DE93F50(0);
          v188 = sub_29E2C4524();
          v182 = v188;
          if (*(v171 + 16))
          {
            v189 = (v188 + 56);
            v190 = v171 + 56;
            v191 = ((1 << *(v182 + 32)) + 63) >> 6;
            if (v182 != v171 || v189 >= v190 + 8 * v191)
            {
              memmove(v189, (v171 + 56), 8 * v191);
            }

            v192 = 0;
            *(v182 + 16) = *(v171 + 16);
            v193 = 1 << *(v171 + 32);
            if (v193 < 64)
            {
              v194 = ~(-1 << v193);
            }

            else
            {
              v194 = -1;
            }

            v195 = v194 & *(v171 + 56);
            for (m = (v193 + 63) >> 6; v195; *(*(v182 + 48) + v198) = *(*(v171 + 48) + v198))
            {
              v197 = __clz(__rbit64(v195));
              v195 &= v195 - 1;
              v198 = v197 | (v192 << 6);
LABEL_245:
              ;
            }

            v199 = v192;
            while (1)
            {
              v192 = v199 + 1;
              if (__OFADD__(v199, 1))
              {
                goto LABEL_266;
              }

              if (v192 >= m)
              {
                break;
              }

              v200 = *(v190 + 8 * v192);
              ++v199;
              if (v200)
              {
                v195 = (v200 - 1) & v200;
                v198 = __clz(__rbit64(v200)) | (v192 << 6);
                goto LABEL_245;
              }
            }
          }
        }

LABEL_228:
        *(v182 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v178;
        *(*(v182 + 48) + v178) = v175;
        v186 = *(v182 + 16);
        v54 = __OFADD__(v186, 1);
        v187 = v186 + 1;
        if (v54)
        {
          goto LABEL_259;
        }

        *(v182 + 16) = v187;
        v171 = v182;
        if (v172 == v170)
        {

          v171 = v182;
          goto LABEL_249;
        }
      }
    }

LABEL_250:
    v201 = sub_29E0677B4(v139, v171);

    v122 = v224;
    v120 = v226;
    v127 = v223;
    v125 = v231;
    if ((v201 & 1) == 0)
    {
      v202 = *(v2 + v215);
      v236 = sub_29E06FD58;
      v237 = v2;
      aBlock = MEMORY[0x29EDCA5F8];
      v233 = 1107296256;
      v234 = sub_29DF4FA14;
      v235 = &unk_2A24B8F88;
      v203 = _Block_copy(&aBlock);

      [v202 notifyObservers_];
      v204 = v203;
      v125 = v231;
      _Block_release(v204);
    }
  }

  v214 = v138;
  v140 = 0;
  v141 = v136 + 32;
  while (2)
  {
    v142 = v139 + 56;
    while (1)
    {
      v143 = *(v141 + v140++);
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v143);
      v144 = sub_29E2C4A54();
      v145 = -1 << *(v139 + 32);
      v146 = v144 & ~v145;
      if (((*(v142 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
      {
        break;
      }

      v147 = ~v145;
      while (*(*(v139 + 48) + v146) != v143)
      {
        v146 = (v146 + 1) & v147;
        if (((*(v142 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
        {
          goto LABEL_176;
        }
      }

      if (v140 == v137)
      {

LABEL_207:
        v2 = v227;
        v126 = v229;
        v138 = v214;
        goto LABEL_208;
      }
    }

LABEL_176:
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v149 = *(v139 + 16);
    if (*(v139 + 24) <= v149)
    {
      if (v148)
      {
        sub_29E1493E4(v149 + 1);
      }

      else
      {
        sub_29E147CD0(v149 + 1);
      }

      v150 = v139;
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v143);
      v151 = sub_29E2C4A54();
      v152 = -1 << *(v139 + 32);
      v146 = v151 & ~v152;
      if ((*(v139 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146))
      {
        v153 = ~v152;
        do
        {
          if (*(*(v139 + 48) + v146) == v143)
          {
            goto LABEL_267;
          }

          v146 = (v146 + 1) & v153;
        }

        while (((*(v139 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) != 0);
      }

LABEL_186:
      *(v150 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v146;
      *(*(v150 + 48) + v146) = v143;
      v154 = *(v150 + 16);
      v54 = __OFADD__(v154, 1);
      v155 = v154 + 1;
      if (v54)
      {
        goto LABEL_258;
      }

      *(v150 + 16) = v155;
      v139 = v150;
      if (v140 == v137)
      {

        v139 = v150;
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  if (v148)
  {
    v150 = v139;
    goto LABEL_186;
  }

  sub_29DE93F50(0);
  v156 = sub_29E2C4524();
  v150 = v156;
  if (!*(v139 + 16))
  {
LABEL_205:

    goto LABEL_186;
  }

  v157 = (v156 + 56);
  v158 = v139 + 56;
  v159 = ((1 << *(v150 + 32)) + 63) >> 6;
  if (v150 != v139 || v157 >= v158 + 8 * v159)
  {
    memmove(v157, (v139 + 56), 8 * v159);
  }

  v160 = 0;
  *(v150 + 16) = *(v139 + 16);
  v161 = 1 << *(v139 + 32);
  if (v161 < 64)
  {
    v162 = ~(-1 << v161);
  }

  else
  {
    v162 = -1;
  }

  v163 = v162 & *(v139 + 56);
  for (n = (v161 + 63) >> 6; v163; *(*(v150 + 48) + v166) = *(*(v139 + 48) + v166))
  {
    v165 = __clz(__rbit64(v163));
    v163 &= v163 - 1;
    v166 = v165 | (v160 << 6);
LABEL_203:
    ;
  }

  v167 = v160;
  while (1)
  {
    v160 = v167 + 1;
    if (__OFADD__(v167, 1))
    {
      break;
    }

    if (v160 >= n)
    {
      goto LABEL_205;
    }

    v168 = *(v158 + 8 * v160);
    ++v167;
    if (v168)
    {
      v163 = (v168 - 1) & v168;
      v166 = __clz(__rbit64(v168)) | (v160 << 6);
      goto LABEL_203;
    }
  }

LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  sub_29E2C4954();
  __break(1u);
}

void sub_29E06B8C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29E2BF404();
  v4 = sub_29E14EC4C(v3);

  v250 = v4;
  v5 = swift_allocObject();
  sub_29E2BF404();
  v6 = sub_29E2BF404();
  v7 = sub_29E14EC4C(v6);

  v216 = v5;
  *(v5 + 16) = v7;
  v8 = (v5 + 16);
  sub_29E06F26C(v4);

  if ((*(v5 + 16) & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    v9 = sub_29E2C4484();

    v239 = v2;
    if (!v9)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v239 = v2;
    if (!*(*(v5 + 16) + 16))
    {
      goto LABEL_126;
    }
  }

  v215 = v8;
  v10 = *v8;
  if ((*v8 & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
    sub_29E06FCF0();
    sub_29E2C3834();
    v11 = v251;
    v12 = v252;
    v13 = v253;
    v14 = v254;
    v15 = v255;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v17 = ~v16;
    v18 = -v16;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(v10 + 56);
    v11 = sub_29E2BF404();
    v13 = v17;
    v14 = 0;
  }

  v20 = (v13 + 64) >> 6;
  v218 = v12;
  v220 = v11;
  v217 = v20;
  while (v11 < 0)
  {
    v25 = sub_29E2C44C4();
    if (!v25)
    {
      goto LABEL_125;
    }

    v256 = v25;
    sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
    swift_dynamicCast();
    v24 = aBlock;
    v224 = v15;
    v225 = v14;
    if (!aBlock)
    {
      goto LABEL_125;
    }

LABEL_22:
    v222 = v24;
    v26 = [v24 hkmc_cycleFactor] - 1;
    if (v26 <= 8 && ((0x1FBu >> v26) & 1) != 0)
    {
      v27 = sub_29DE92374(*(&off_29F3628B0 + v26));
    }

    else
    {
      v27 = MEMORY[0x29EDCA1A0];
    }

    v28 = 0;
    v230 = v27 + 56;
    v29 = 1 << *(v27 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v27 + 56);
    v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
    v232 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
    v234 = v27;
    v228 = (v29 + 63) >> 6;
    v237 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
LABEL_30:
    if (v31)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_257;
      }

      if (v33 >= v228)
      {
        break;
      }

      v31 = *(v230 + 8 * v33);
      ++v28;
      if (v31)
      {
        v28 = v33;
LABEL_35:
        v34 = *(*(v27 + 48) + (__clz(__rbit64(v31)) | (v28 << 6)));
        v35 = *(v2 + v32);
        sub_29E2BF404();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_29E143944(0, *(v35 + 2) + 1, 1, v35);
        }

        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        v240 = v28;
        if (v37 >= v36 >> 1)
        {
          v35 = sub_29E143944((v36 > 1), v37 + 1, 1, v35);
        }

        *(v35 + 2) = v37 + 1;
        v35[v37 + 32] = v34;
        v38 = *(v2 + v32);
        *(v2 + v32) = v35;
        v39 = *(v38 + 16);
        v40 = sub_29DE93FAC();
        v41 = MEMORY[0x29ED7FFF0](v39, &type metadata for AnalysisKind, v40);
        v42 = *(v38 + 16);
        v242 = v31;
        if (!v42)
        {

          goto LABEL_81;
        }

        v43 = 0;
        v44 = v38 + 32;
        while (1)
        {
          v45 = v41 + 56;
          while (1)
          {
            v46 = *(v44 + v43++);
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v46);
            v47 = sub_29E2C4A54();
            v48 = -1 << *(v41 + 32);
            v49 = v47 & ~v48;
            if (((*(v45 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              break;
            }

            v50 = ~v48;
            while (*(*(v41 + 48) + v49) != v46)
            {
              v49 = (v49 + 1) & v50;
              if (((*(v45 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            if (v43 == v42)
            {

              goto LABEL_80;
            }
          }

LABEL_49:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v256 = v41;
          v52 = *(v41 + 16);
          if (*(v41 + 24) <= v52)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_29E1493E4(v52 + 1);
            }

            else
            {
              sub_29E147CD0(v52 + 1);
            }

            v53 = v256;
            sub_29E2C4A04();
            MEMORY[0x29ED811E0](v46);
            v54 = sub_29E2C4A54();
            v55 = -1 << *(v53 + 32);
            v49 = v54 & ~v55;
            if ((*(v53 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
            {
              v56 = ~v55;
              do
              {
                if (*(*(v53 + 48) + v49) == v46)
                {
                  goto LABEL_268;
                }

                v49 = (v49 + 1) & v56;
              }

              while (((*(v53 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0);
            }
          }

          else if (isUniquelyReferenced_nonNull_native)
          {
            v53 = v41;
          }

          else
          {
            sub_29DE93F50(0);
            v60 = sub_29E2C4524();
            v53 = v60;
            if (*(v41 + 16))
            {
              v61 = (v60 + 56);
              v62 = ((1 << *(v53 + 32)) + 63) >> 6;
              if (v53 != v41 || v61 >= v45 + 8 * v62)
              {
                memmove(v61, (v41 + 56), 8 * v62);
              }

              v63 = 0;
              *(v53 + 16) = *(v41 + 16);
              v64 = 1 << *(v41 + 32);
              if (v64 < 64)
              {
                v65 = ~(-1 << v64);
              }

              else
              {
                v65 = -1;
              }

              v66 = v65 & *(v41 + 56);
              v67 = (v64 + 63) >> 6;
              if (!v66)
              {
                goto LABEL_71;
              }

              while (1)
              {
                v68 = __clz(__rbit64(v66));
                v66 &= v66 - 1;
                for (i = v68 | (v63 << 6); ; i = __clz(__rbit64(v71)) | (v63 << 6))
                {
                  *(*(v53 + 48) + i) = *(*(v41 + 48) + i);
                  if (v66)
                  {
                    break;
                  }

LABEL_71:
                  v70 = v63;
                  do
                  {
                    v63 = v70 + 1;
                    if (__OFADD__(v70, 1))
                    {
                      goto LABEL_264;
                    }

                    if (v63 >= v67)
                    {
                      goto LABEL_78;
                    }

                    v71 = *(v45 + 8 * v63);
                    ++v70;
                  }

                  while (!v71);
                  v66 = (v71 - 1) & v71;
                }
              }
            }

LABEL_78:
          }

          *(v53 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v49;
          *(*(v53 + 48) + v49) = v46;
          v57 = *(v53 + 16);
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            break;
          }

          *(v53 + 16) = v59;
          v41 = v53;
          if (v43 == v42)
          {

            v41 = v53;
LABEL_80:
            v32 = v237;
            v2 = v239;
            v31 = v242;
LABEL_81:
            v72 = *(v2 + v32);
            v73 = *(v72 + 16);
            sub_29E2BF404();
            v74 = MEMORY[0x29ED7FFF0](v73, &type metadata for AnalysisKind, v40);
            v75 = *(v72 + 16);
            if (v75)
            {
              v76 = 0;
              v77 = v72 + 32;
              do
              {
                v78 = v74 + 56;
                while (1)
                {
                  v79 = *(v77 + v76++);
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v79);
                  v80 = sub_29E2C4A54();
                  v81 = -1 << *(v74 + 32);
                  v82 = v80 & ~v81;
                  if (((*(v78 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
                  {
                    break;
                  }

                  v83 = ~v81;
                  while (*(*(v74 + 48) + v82) != v79)
                  {
                    v82 = (v82 + 1) & v83;
                    if (((*(v78 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
                    {
                      goto LABEL_91;
                    }
                  }

                  if (v76 == v75)
                  {

                    goto LABEL_122;
                  }
                }

LABEL_91:
                v84 = swift_isUniquelyReferenced_nonNull_native();
                v256 = v74;
                v85 = *(v74 + 16);
                if (*(v74 + 24) <= v85)
                {
                  if (v84)
                  {
                    sub_29E1493E4(v85 + 1);
                  }

                  else
                  {
                    sub_29E147CD0(v85 + 1);
                  }

                  v86 = v256;
                  sub_29E2C4A04();
                  MEMORY[0x29ED811E0](v79);
                  v87 = sub_29E2C4A54();
                  v88 = -1 << *(v86 + 32);
                  v82 = v87 & ~v88;
                  if ((*(v86 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
                  {
                    v89 = ~v88;
                    do
                    {
                      if (*(*(v86 + 48) + v82) == v79)
                      {
                        goto LABEL_268;
                      }

                      v82 = (v82 + 1) & v89;
                    }

                    while (((*(v86 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) != 0);
                  }
                }

                else if (v84)
                {
                  v86 = v74;
                }

                else
                {
                  sub_29DE93F50(0);
                  v92 = sub_29E2C4524();
                  v86 = v92;
                  if (*(v74 + 16))
                  {
                    v93 = (v92 + 56);
                    v94 = ((1 << *(v86 + 32)) + 63) >> 6;
                    if (v86 != v74 || v93 >= v78 + 8 * v94)
                    {
                      memmove(v93, (v74 + 56), 8 * v94);
                    }

                    v95 = 0;
                    *(v86 + 16) = *(v74 + 16);
                    v96 = 1 << *(v74 + 32);
                    if (v96 < 64)
                    {
                      v97 = ~(-1 << v96);
                    }

                    else
                    {
                      v97 = -1;
                    }

                    v98 = v97 & *(v74 + 56);
                    v99 = (v96 + 63) >> 6;
                    if (!v98)
                    {
                      goto LABEL_113;
                    }

                    while (1)
                    {
                      v100 = __clz(__rbit64(v98));
                      v98 &= v98 - 1;
                      for (j = v100 | (v95 << 6); ; j = __clz(__rbit64(v103)) | (v95 << 6))
                      {
                        *(*(v86 + 48) + j) = *(*(v74 + 48) + j);
                        if (v98)
                        {
                          break;
                        }

LABEL_113:
                        v102 = v95;
                        do
                        {
                          v95 = v102 + 1;
                          if (__OFADD__(v102, 1))
                          {
                            goto LABEL_265;
                          }

                          if (v95 >= v99)
                          {
                            goto LABEL_120;
                          }

                          v103 = *(v78 + 8 * v95);
                          ++v102;
                        }

                        while (!v103);
                        v98 = (v103 - 1) & v103;
                      }
                    }
                  }

LABEL_120:
                }

                *(v86 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v82;
                *(*(v86 + 48) + v82) = v79;
                v90 = *(v86 + 16);
                v58 = __OFADD__(v90, 1);
                v91 = v90 + 1;
                if (v58)
                {
                  goto LABEL_256;
                }

                *(v86 + 16) = v91;
                v74 = v86;
              }

              while (v76 != v75);

              v74 = v86;
LABEL_122:
              v32 = v237;
              v2 = v239;
              v31 = v242;
            }

            else
            {
            }

            v31 &= v31 - 1;
            v104 = sub_29E0677B4(v41, v74);

            v27 = v234;
            v28 = v240;
            if ((v104 & 1) == 0)
            {
              v105 = *(v2 + v232);
              v248 = sub_29E070774;
              v249 = v2;
              aBlock = MEMORY[0x29EDCA5F8];
              v245 = 1107296256;
              v246 = sub_29DF4FA14;
              v247 = &unk_2A24B90F0;
              v106 = _Block_copy(&aBlock);

              [v105 notifyObservers_];
              _Block_release(v106);
            }

            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
        goto LABEL_266;
      }
    }

    v15 = v224;
    v14 = v225;
    v12 = v218;
    v11 = v220;
    v20 = v217;
  }

  v21 = v14;
  v22 = v15;
  v23 = v14;
  if (v15)
  {
LABEL_18:
    v224 = (v22 - 1) & v22;
    v225 = v23;
    v24 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v24)
    {
      goto LABEL_125;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_261;
    }

    if (v23 >= v20)
    {
      break;
    }

    v22 = *(v12 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_125:
  sub_29DF219B8(v220);
  v107 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
  v108 = swift_allocObject();
  *(v108 + 16) = v2;
  *(v108 + 24) = v216;
  v248 = sub_29E070104;
  v249 = v108;
  aBlock = MEMORY[0x29EDCA5F8];
  v245 = 1107296256;
  v246 = sub_29DF4FA14;
  v247 = &unk_2A24B9078;
  v109 = _Block_copy(&aBlock);

  [v107 notifyObservers_];
  _Block_release(v109);
  v8 = v215;
LABEL_126:
  v110 = sub_29E2BF404();
  v111 = sub_29E14EC4C(v110);

  swift_beginAccess();
  *v8 = v111;

  v112 = sub_29E2BF404();
  sub_29E06F26C(v112);

  v113 = v250;
  if ((v250 & 0xC000000000000001) != 0)
  {
    if (sub_29E2C4484())
    {
      sub_29E2C4444();
      sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
      sub_29E06FCF0();
      sub_29E2C3834();
      v113 = v256;
      v114 = v257;
      v115 = v258;
      v116 = v259;
      v117 = v260;
      goto LABEL_134;
    }

LABEL_254:

    return;
  }

  if (!*(v250 + 16))
  {
    goto LABEL_254;
  }

  v116 = 0;
  v118 = -1 << *(v250 + 32);
  v114 = v250 + 56;
  v119 = ~v118;
  v120 = -v118;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  else
  {
    v121 = -1;
  }

  v117 = v121 & *(v250 + 56);
  v115 = v119;
LABEL_134:
  v122 = (v115 + 64) >> 6;
  v221 = v114;
  v223 = v113;
  v219 = v122;
LABEL_136:
  if (v113 < 0)
  {
    if (!sub_29E2C44C4() || (sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60), swift_dynamicCast(), v126 = aBlock, v231 = v117, v233 = v116, !aBlock))
    {
LABEL_253:
      sub_29DF219B8(v113);
      v213 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
      v248 = sub_29E070134;
      v249 = v2;
      aBlock = MEMORY[0x29EDCA5F8];
      v245 = 1107296256;
      v246 = sub_29DF4FA14;
      v247 = &unk_2A24B90A0;
      v214 = _Block_copy(&aBlock);

      [v213 notifyObservers_];
      _Block_release(v214);

      return;
    }
  }

  else
  {
    v123 = v116;
    v124 = v117;
    for (k = v116; !v124; ++v123)
    {
      k = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_262;
      }

      if (k >= v122)
      {
        goto LABEL_253;
      }

      v124 = *(v114 + 8 * k);
    }

    v231 = (v124 - 1) & v124;
    v233 = k;
    v126 = *(*(v113 + 48) + ((k << 9) | (8 * __clz(__rbit64(v124)))));
    if (!v126)
    {
      goto LABEL_253;
    }
  }

  v229 = v126;
  v127 = [v126 hkmc_cycleFactor] - 1;
  if (v127 <= 8 && ((0x1FBu >> v127) & 1) != 0)
  {
    v128 = sub_29DE92374(*(&off_29F3628B0 + v127));
  }

  else
  {
    v128 = MEMORY[0x29EDCA1A0];
  }

  v129 = 0;
  v130 = v128 + 56;
  v131 = 1 << *(v128 + 32);
  if (v131 < 64)
  {
    v132 = ~(-1 << v131);
  }

  else
  {
    v132 = -1;
  }

  v133 = v132 & *(v128 + 56);
  v134 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v227 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
  v135 = (v131 + 63) >> 6;
  v236 = v128 + 56;
  v238 = v128;
  v241 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
  v235 = v135;
  while (1)
  {
    do
    {
LABEL_153:
      if (v133)
      {
        v136 = v133;
        goto LABEL_159;
      }

      do
      {
        v137 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_258;
        }

        if (v137 >= v135)
        {

          v117 = v231;
          v116 = v233;
          v114 = v221;
          v113 = v223;
          v122 = v219;
          goto LABEL_136;
        }

        v136 = *(v130 + 8 * v137);
        ++v129;
      }

      while (!v136);
      v129 = v137;
LABEL_159:
      v133 = (v136 - 1) & v136;
      v138 = *(v2 + v134);
      v139 = *(v138 + 2);
    }

    while (!v139);
    v140 = 0;
    v141 = *(*(v128 + 48) + (__clz(__rbit64(v136)) | (v129 << 6)));
    while (v138[v140 + 32] != v141)
    {
      if (v139 == ++v140)
      {
        goto LABEL_153;
      }
    }

    sub_29E2BF404();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = sub_29E14D8A0(v138);
    }

    v142 = *(v138 + 2);
    if (v142 <= v140)
    {
      goto LABEL_263;
    }

    v243 = v133;
    v143 = v142 - 1;
    memmove(&v138[v140 + 32], &v138[v140 + 33], ~v140 + v142);
    *(v138 + 2) = v143;
    v144 = *(v2 + v134);
    *(v2 + v134) = v138;
    v145 = *(v144 + 16);
    v146 = sub_29DE93FAC();
    v147 = MEMORY[0x29ED7FFF0](v145, &type metadata for AnalysisKind, v146);
    if (v145)
    {
      break;
    }

LABEL_209:
    v177 = *(v2 + v134);
    v178 = *(v177 + 16);
    sub_29E2BF404();
    v179 = MEMORY[0x29ED7FFF0](v178, &type metadata for AnalysisKind, v146);
    if (v178)
    {
      v180 = 0;
      v181 = v177 + 32;
      while (1)
      {
        v182 = v179 + 56;
        while (1)
        {
          v183 = *(v181 + v180++);
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v183);
          v184 = sub_29E2C4A54();
          v185 = -1 << *(v179 + 32);
          v186 = v184 & ~v185;
          if (((*(v182 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186) & 1) == 0)
          {
            break;
          }

          v187 = ~v185;
          while (*(*(v179 + 48) + v186) != v183)
          {
            v186 = (v186 + 1) & v187;
            if (((*(v182 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186) & 1) == 0)
            {
              goto LABEL_219;
            }
          }

          if (v180 == v178)
          {

LABEL_250:
            v2 = v239;
            goto LABEL_251;
          }
        }

LABEL_219:
        v188 = swift_isUniquelyReferenced_nonNull_native();
        v189 = *(v179 + 16);
        if (*(v179 + 24) <= v189)
        {
          if (v188)
          {
            sub_29E1493E4(v189 + 1);
          }

          else
          {
            sub_29E147CD0(v189 + 1);
          }

          v190 = v179;
          sub_29E2C4A04();
          MEMORY[0x29ED811E0](v183);
          v191 = sub_29E2C4A54();
          v192 = -1 << *(v179 + 32);
          v186 = v191 & ~v192;
          if ((*(v179 + 56 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186))
          {
            v193 = ~v192;
            while (*(*(v179 + 48) + v186) != v183)
            {
              v186 = (v186 + 1) & v193;
              if (((*(v179 + 56 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186) & 1) == 0)
              {
                goto LABEL_229;
              }
            }

            goto LABEL_268;
          }
        }

        else if (v188)
        {
          v190 = v179;
        }

        else
        {
          sub_29DE93F50(0);
          v196 = sub_29E2C4524();
          v190 = v196;
          if (*(v179 + 16))
          {
            v197 = (v196 + 56);
            v198 = v179 + 56;
            v199 = ((1 << *(v190 + 32)) + 63) >> 6;
            if (v190 != v179 || v197 >= v198 + 8 * v199)
            {
              memmove(v197, (v179 + 56), 8 * v199);
            }

            v200 = 0;
            *(v190 + 16) = *(v179 + 16);
            v201 = 1 << *(v179 + 32);
            if (v201 < 64)
            {
              v202 = ~(-1 << v201);
            }

            else
            {
              v202 = -1;
            }

            v203 = v202 & *(v179 + 56);
            for (m = (v201 + 63) >> 6; v203; *(*(v190 + 48) + v206) = *(*(v179 + 48) + v206))
            {
              v205 = __clz(__rbit64(v203));
              v203 &= v203 - 1;
              v206 = v205 | (v200 << 6);
LABEL_246:
              ;
            }

            v207 = v200;
            while (1)
            {
              v200 = v207 + 1;
              if (__OFADD__(v207, 1))
              {
                goto LABEL_267;
              }

              if (v200 >= m)
              {
                break;
              }

              v208 = *(v198 + 8 * v200);
              ++v207;
              if (v208)
              {
                v203 = (v208 - 1) & v208;
                v206 = __clz(__rbit64(v208)) | (v200 << 6);
                goto LABEL_246;
              }
            }
          }
        }

LABEL_229:
        *(v190 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v186;
        *(*(v190 + 48) + v186) = v183;
        v194 = *(v190 + 16);
        v58 = __OFADD__(v194, 1);
        v195 = v194 + 1;
        if (v58)
        {
          goto LABEL_260;
        }

        *(v190 + 16) = v195;
        v179 = v190;
        if (v180 == v178)
        {

          v179 = v190;
          goto LABEL_250;
        }
      }
    }

LABEL_251:
    v209 = sub_29E0677B4(v147, v179);

    v130 = v236;
    v128 = v238;
    v134 = v241;
    v133 = v243;
    v135 = v235;
    if ((v209 & 1) == 0)
    {
      v210 = *(v2 + v227);
      v248 = sub_29E070774;
      v249 = v2;
      aBlock = MEMORY[0x29EDCA5F8];
      v245 = 1107296256;
      v246 = sub_29DF4FA14;
      v247 = &unk_2A24B90C8;
      v211 = _Block_copy(&aBlock);

      [v210 notifyObservers_];
      v212 = v211;
      v133 = v243;
      _Block_release(v212);
    }
  }

  v226 = v146;
  v148 = 0;
  v149 = v144 + 32;
  while (2)
  {
    v150 = v147 + 56;
    while (1)
    {
      v151 = *(v149 + v148++);
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v151);
      v152 = sub_29E2C4A54();
      v153 = -1 << *(v147 + 32);
      v154 = v152 & ~v153;
      if (((*(v150 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) == 0)
      {
        break;
      }

      v155 = ~v153;
      while (*(*(v147 + 48) + v154) != v151)
      {
        v154 = (v154 + 1) & v155;
        if (((*(v150 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) == 0)
        {
          goto LABEL_177;
        }
      }

      if (v148 == v145)
      {

LABEL_208:
        v2 = v239;
        v134 = v241;
        v146 = v226;
        goto LABEL_209;
      }
    }

LABEL_177:
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v147 + 16);
    if (*(v147 + 24) <= v157)
    {
      if (v156)
      {
        sub_29E1493E4(v157 + 1);
      }

      else
      {
        sub_29E147CD0(v157 + 1);
      }

      v158 = v147;
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v151);
      v159 = sub_29E2C4A54();
      v160 = -1 << *(v147 + 32);
      v154 = v159 & ~v160;
      if ((*(v147 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154))
      {
        v161 = ~v160;
        do
        {
          if (*(*(v147 + 48) + v154) == v151)
          {
            goto LABEL_268;
          }

          v154 = (v154 + 1) & v161;
        }

        while (((*(v147 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) != 0);
      }

LABEL_187:
      *(v158 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v154;
      *(*(v158 + 48) + v154) = v151;
      v162 = *(v158 + 16);
      v58 = __OFADD__(v162, 1);
      v163 = v162 + 1;
      if (v58)
      {
        goto LABEL_259;
      }

      *(v158 + 16) = v163;
      v147 = v158;
      if (v148 == v145)
      {

        v147 = v158;
        goto LABEL_208;
      }

      continue;
    }

    break;
  }

  if (v156)
  {
    v158 = v147;
    goto LABEL_187;
  }

  sub_29DE93F50(0);
  v164 = sub_29E2C4524();
  v158 = v164;
  if (!*(v147 + 16))
  {
LABEL_206:

    goto LABEL_187;
  }

  v165 = (v164 + 56);
  v166 = v147 + 56;
  v167 = ((1 << *(v158 + 32)) + 63) >> 6;
  if (v158 != v147 || v165 >= v166 + 8 * v167)
  {
    memmove(v165, (v147 + 56), 8 * v167);
  }

  v168 = 0;
  *(v158 + 16) = *(v147 + 16);
  v169 = 1 << *(v147 + 32);
  if (v169 < 64)
  {
    v170 = ~(-1 << v169);
  }

  else
  {
    v170 = -1;
  }

  v171 = v170 & *(v147 + 56);
  for (n = (v169 + 63) >> 6; v171; *(*(v158 + 48) + v174) = *(*(v147 + 48) + v174))
  {
    v173 = __clz(__rbit64(v171));
    v171 &= v171 - 1;
    v174 = v173 | (v168 << 6);
LABEL_204:
    ;
  }

  v175 = v168;
  while (1)
  {
    v168 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      break;
    }

    if (v168 >= n)
    {
      goto LABEL_206;
    }

    v176 = *(v166 + 8 * v168);
    ++v175;
    if (v176)
    {
      v171 = (v176 - 1) & v176;
      v174 = __clz(__rbit64(v176)) | (v168 << 6);
      goto LABEL_204;
    }
  }

LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  sub_29E2C4954();
  __break(1u);
}

uint64_t sub_29E06CFE0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    sub_29E15B414(a2, MEMORY[0x29EDCA190]);
  }

  return swift_unknownObjectRelease();
}

void sub_29E06D050(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29E2BF404();
  v4 = sub_29E14EC4C(v3);

  v5 = swift_allocObject();
  v6 = sub_29E2BF404();
  v7 = sub_29E14EC4C(v6);

  *(v5 + 16) = v7;
  v8 = (v5 + 16);
  sub_29E06F26C(v4);

  if ((*(v5 + 16) & 0xC000000000000001) == 0)
  {
    if (*(*(v5 + 16) + 16))
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  sub_29E2BF404();
  v9 = sub_29E2C4484();

  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_3:
  v10 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v5;
  aBlock[4] = sub_29E0700D4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF4FA14;
  aBlock[3] = &unk_2A24B9028;
  v12 = _Block_copy(aBlock);

  [v10 notifyObservers_];
  _Block_release(v12);
  v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors;
  v13 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  v14 = *(v13 + 16);
  sub_29E2BF404();
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x29EDCA190];
    do
    {
      v17 = v15;
      while (1)
      {
        if (v17 >= *(v13 + 16))
        {
          __break(1u);
          return;
        }

        v31 = *(v13 + 32 + 16 * v17);
        v15 = v17 + 1;
        v18 = v31;
        v19 = *(&v31 + 1);
        sub_29E06FD60(v18, v8);
        if (v20)
        {
          break;
        }

        ++v17;
        if (v14 == v15)
        {
          goto LABEL_21;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_29E180FA4(0, *(v16 + 16) + 1, 1);
        v16 = aBlock[0];
      }

      v22 = v31;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_29E180FA4((v23 > 1), v24 + 1, 1);
        v22 = v31;
        v16 = aBlock[0];
      }

      *(v16 + 16) = v24 + 1;
      *(v16 + 16 * v24 + 32) = v22;
    }

    while (v14 - 1 != v17);
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
  }

LABEL_21:

  v25 = *(v2 + v30);
  *(v2 + v30) = v16;
  sub_29E06D70C(v25);

  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors;
  v27 = sub_29E2BF404();
  v28 = sub_29E068EA0(v27, v8);
  v29 = *(v2 + v26);
  *(v2 + v26) = v28;
  sub_29E06B8C8(v29);
}

void sub_29E06D3CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_beginAccess();
    v7 = sub_29E2BF404();
    v8 = sub_29E06F1BC(v7);

    a4(a2, v8);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_29E06D4B4(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    swift_unknownObjectRetain();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
    sub_29E06FCF0();
    sub_29E2C3834();
    v5 = v17;
    v4 = v18;
    v6 = v19;
    v7 = v20;
    v8 = v21;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v5 = *a2;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_29E2C44C4() || (sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60), swift_dynamicCast(), (v13 = v22) == 0))
    {
LABEL_18:
      sub_29DF219B8(v5);

      return;
    }

LABEL_9:
    sub_29DE9408C(0, &qword_2A1A619F0, 0x29EDC9738);
    v14 = sub_29E2C40D4();

    if (v14)
    {
      goto LABEL_18;
    }
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v16 - 1) & v16;
    v13 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_18;
    }

    v16 = *(v4 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}