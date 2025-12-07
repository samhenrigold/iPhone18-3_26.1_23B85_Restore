uint64_t sub_254FBED08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254FBED5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254FBEE04(uint64_t a1, int a2)
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

uint64_t sub_254FBEE24(uint64_t result, int a2, int a3)
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

uint64_t sub_254FBEE70@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_254FBF2F4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_254FBEE98@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_254FF1F24();

  *a2 = v3;
  return result;
}

uint64_t sub_254FBEEE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_254FBEF0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_254FBEF10(uint64_t a1)
{
  v2 = sub_254FBF010(&qword_27F76C7F0, &unk_254FF2EFC);
  v3 = sub_254FBF010(&qword_27F76C7F8, &unk_254FF2E9C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_254FBF010(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BMUseCaseIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254FBF0AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_254FF1F54();
  v4 = v3;
  if (v2 == sub_254FF1F54() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_254FF2364();
  }

  return v7 & 1;
}

uint64_t sub_254FBF130(uint64_t a1, uint64_t a2)
{
  sub_254FF1F54();
  sub_254FF1FC4();
}

uint64_t sub_254FBF184(uint64_t a1, uint64_t a2)
{
  sub_254FF1F54();
  sub_254FF2404();
  sub_254FF1FC4();
  v2 = sub_254FF2434();

  return v2;
}

uint64_t sub_254FBF1FC(uint64_t a1, id *a2)
{
  result = sub_254FF1F34();
  *a2 = 0;
  return result;
}

uint64_t sub_254FBF274(uint64_t a1, id *a2)
{
  v3 = sub_254FF1F44();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_254FBF2F4(uint64_t a1)
{
  sub_254FF1F54();
  v1 = sub_254FF1F24();

  return v1;
}

uint64_t sub_254FBF32C(uint64_t a1)
{
  v1 = sub_254FF1F54();
  v2 = MEMORY[0x259C31700](v1);

  return v2;
}

uint64_t sub_254FBF370(uint64_t a1, int a2)
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

uint64_t sub_254FBF390(uint64_t result, int a2, int a3)
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

__n128 sub_254FBF3CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_254FBF3E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBF400(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_254FBF448(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254FBF49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254FBF53C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBF55C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_254FBF5E8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_254FBF5FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254FBF61C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void sub_254FBF65C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void static AppUsageAction.listApplications(queryService:)(os_unfair_lock_s **a1)
{
  v3 = sub_254FF1EB4();
  sub_254FC583C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_254FC590C();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = sub_254FC0048(&qword_27F76C838, &unk_254FF30E0);
  sub_254FC583C();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v83 = (&v61 - v17);
  v18 = sub_254FF1454();
  v19 = sub_254FC5824(v18, &v83);
  v21 = v20;
  MEMORY[0x28223BE20](v19);
  sub_254FC5888();
  sub_254FC5974(v22);
  if (*a1)
  {
    v23 = *a1;
  }

  else
  {
    if (qword_27F76C790 != -1)
    {
      sub_254FC5850();
      swift_once();
    }

    v23 = qword_27F76C9A0;
  }

  os_unfair_lock_lock((v23 + 24));
  sub_254FC80C0((v23 + 16), &v75);
  if (v1)
  {
    os_unfair_lock_unlock((v23 + 24));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v23 + 24));
  sub_254FC59F0();
  if (!v79)
  {
    sub_254FC538C(&v78, &qword_27F76C840, &qword_254FF4810);
LABEL_15:
    sub_254FF1D14();
    v36 = sub_254FF1EA4();
    v37 = sub_254FF2174();
    if (os_log_type_enabled(v36, v37))
    {
      sub_254FC5B38();
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_254FBD000, v36, v37, "AppUsageAction cannot be executed: SQL executor is nil", v38, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v5 + 8))(v9, v3);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    return;
  }

  sub_254FC38F0(&v78, v80);
  os_unfair_lock_lock((v23 + 24));
  sub_254FC83D0((v23 + 16), &v72);
  os_unfair_lock_unlock((v23 + 24));
  v75 = v72;
  v76 = v73;
  v77 = v74;
  if (!*(&v73 + 1))
  {
    sub_254FC538C(&v75, &qword_27F76C850, &qword_254FF30F0);
    sub_254FC49C4(v80);
    goto LABEL_15;
  }

  v65 = v15;
  v66 = v13;
  sub_254FC38F0(&v75, &v78);
  sub_254FC3908(&v78, v79);
  sub_254FC5AF4();
  v24 = sub_254FC5DE0();
  v25(v24);
  v63 = v21;
  v26 = v81;
  v27 = v82;
  sub_254FC3908(v80, v81);
  v28 = *(v27 + 8);
  v64 = "lthcare";
  v28(&v72, 0xD000000000000065, 0x8000000254FF4F20, v26, v27);
  if (*(&v73 + 1))
  {
    sub_254FC38F0(&v72, &v75);
    v63 += 4;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        v40 = *(&v76 + 1);
        v41 = v77;
        sub_254FC4A10(&v75, *(&v76 + 1));
        sub_254FC5AF4();
        v43 = v42(v40, v41);
        if (!v43)
        {
          sub_254FC01A0(v64);

          sub_254FC49C4(&v75);
          sub_254FC49C4(&v78);
          sub_254FC49C4(v80);
          return;
        }

        v69 = 0xD000000000000010;
        v70 = 0x8000000254FF4F90;
        sub_254FC5EA8();
        if (*(v43 + 16))
        {
          v44 = sub_254FC4AC4(&v72);
          if (v45)
          {
            break;
          }
        }

LABEL_28:

        sub_254FC4B08(&v72);
      }

      sub_254FC4B5C(*(v43 + 56) + 32 * v44, v71);
      sub_254FC4B08(&v72);
      if (swift_dynamicCast())
      {
        v69 = 1701667182;
        v70 = 0xE400000000000000;
        sub_254FC5EA8();
        if (!*(v43 + 16) || (v46 = sub_254FC4AC4(&v72), (v47 & 1) == 0))
        {

          goto LABEL_28;
        }

        sub_254FC4B5C(*(v43 + 56) + 32 * v46, v71);
        sub_254FC4B08(&v72);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        v62 = v69;
        v48 = v70;
        v49 = v67;
        sub_254FF1464();
        v50 = *(v66 + 48);
        v51 = v83;
        *v83 = v62;
        v51[1] = v48;
        (*v63)(v51 + v50, v49, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_254FC58E4();
          v64 = sub_254FC394C(v54, v55, v56, v57);
        }

        v53 = *(v64 + 16);
        v52 = *(v64 + 24);
        if (v53 >= v52 >> 1)
        {
          v58 = sub_254FC589C(v52);
          v64 = sub_254FC394C(v58, v59, v60, v64);
        }

        *(v64 + 16) = v53 + 1;
        sub_254FC58F8();
        sub_254FC57C8();
      }

      else
      {
LABEL_27:
      }
    }
  }

  sub_254FC538C(&v72, &qword_27F76C858, &qword_254FF30F8);
  sub_254FF1D14();
  v29 = sub_254FF1EA4();
  v30 = sub_254FF2174();
  v31 = sub_254FC5D04();
  if (os_log_type_enabled(v31, v32))
  {
    sub_254FC5E5C();
    v33 = swift_slowAlloc();
    sub_254FC5E50();
    v34 = swift_slowAlloc();
    *&v75 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_254FC4454(0xD000000000000065, v64 | 0x8000000000000000, &v75);
    _os_log_impl(&dword_254FBD000, v29, v30, "Query (%s) cannot be executed!", v33, 0xCu);
    sub_254FC49C4(v34);
    sub_254FC592C();
    MEMORY[0x259C32150]();
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  (*(v5 + 8))(v12, v3);
  sub_254FC389C();
  sub_254FC5A48();
  swift_allocError();
  *v35 = 2;
  swift_willThrow();

  sub_254FC49C4(&v78);
  sub_254FC49C4(v80);
}

double sub_254FBFF80@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_254FC4A60(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_254FC4B5C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_254FBFFE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_254FC4AC4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_254FC4B5C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_254FC0048(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254FC0090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_254FC4A60(a1);
    if (v3)
    {
    }
  }

  return sub_254FBF6B0();
}

uint64_t sub_254FC00E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (sub_254FC4A60(a3), (v4 & 1) != 0))
  {
    v5 = type metadata accessor for SportsAction.CacheEntry(0);
    sub_254FC5864();
    sub_254FC56BC();
    v6 = a2;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v8 = type metadata accessor for SportsAction.CacheEntry(0);
    v6 = a2;
    v7 = 1;
  }

  return sub_254FC4BB8(v6, v7, 1, v8);
}

uint64_t sub_254FC01A0(uint64_t a1)
{
  v11 = sub_254FC0048(&qword_27F76C838, &unk_254FF30E0);
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v3 = sub_254FC0048(&qword_27F76C900, &qword_254FF3900);
  MEMORY[0x28223BE20](v3);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v12 = MEMORY[0x277D84F90];
    sub_254FC4D98(0, v4, 0);
    v5 = v12;
    v6 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v7 = *(v2 + 72);
    do
    {
      sub_254FC5770();
      swift_dynamicCast();
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_254FC4D98(v8 > 1, v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      sub_254FC57C8();
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void static AppUsageAction.listUserDevices(queryService:)(os_unfair_lock_s **a1)
{
  v2 = v1;
  v4 = sub_254FF1EB4();
  sub_254FC583C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    if (qword_27F76C790 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_4;
  }

  v10 = *a1;
  while (1)
  {

    os_unfair_lock_lock((v10 + 24));
    sub_254FC80C0((v10 + 16), &v42);
    if (v2)
    {
LABEL_38:
      os_unfair_lock_unlock((v10 + 24));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v10 + 24));
    v45 = v42;
    v46 = v43;
    v47 = v44;
    v11 = *(&v43 + 1);
    sub_254FC538C(&v45, &qword_27F76C840, &qword_254FF4810);
    if (!v11)
    {
      break;
    }

    os_unfair_lock_lock((v10 + 24));
    sub_254FC83D0((v10 + 16), &v39);
    os_unfair_lock_unlock((v10 + 24));
    v42 = v39;
    v43 = v40;
    v44 = v41;
    if (!*(&v40 + 1))
    {
      sub_254FC538C(&v42, &qword_27F76C850, &qword_254FF30F0);
      break;
    }

    sub_254FC38F0(&v42, &v45);
    v12 = *(&v46 + 1);
    v13 = v47;
    sub_254FC3908(&v45, *(&v46 + 1));
    sub_254FC5AF4();
    v14(v12, v13);
    v4 = 0;
    sub_254FC3908(&v45, *(&v46 + 1));
    v15 = sub_254FC5E04();
    v17 = v16(v15);
    v22 = v17;
    v23 = *(v17 + 64);
    v38 = v17 + 64;
    v24 = 1 << *(v17 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v9 = v25 & v23;
    v37 = (v24 + 63) >> 6;

    v27 = 0;
    v2 = MEMORY[0x277D84F90];
    v48 = v26;
    while (v9)
    {
LABEL_21:
      v29 = *(*(v22 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v9)))));
      v30 = *(v29 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v30))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v30 > *(v2 + 24) >> 1)
      {
        sub_254FC3A44();
        v2 = v31;
      }

      v9 &= v9 - 1;
      if (*(v29 + 16))
      {
        v6 = *(v2 + 16);
        v32 = (*(v2 + 24) >> 1) - v6;
        type metadata accessor for Device(0);
        if (v32 < v30)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v22 = v48;
        if (v30)
        {
          v33 = *(v2 + 16);
          v34 = __OFADD__(v33, v30);
          v35 = v33 + v30;
          if (v34)
          {
            goto LABEL_37;
          }

          *(v2 + 16) = v35;
        }
      }

      else
      {

        v22 = v48;
        if (v30)
        {
          __break(1u);
LABEL_32:

          sub_254FC49C4(&v45);
          return;
        }
      }
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v37)
      {
        goto LABEL_32;
      }

      v9 = *(v38 + 8 * v28);
      ++v27;
      if (v9)
      {
        v27 = v28;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_34:
    sub_254FC5850();
    swift_once();
LABEL_4:
    v10 = qword_27F76C9A0;
  }

  sub_254FF1D14();
  v18 = sub_254FF1EA4();
  v19 = sub_254FF2174();
  if (os_log_type_enabled(v18, v19))
  {
    sub_254FC5B38();
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_254FBD000, v18, v19, "AppUsageAction cannot be executed: SQL executor is nil", v20, 2u);
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  (*(v6 + 8))(v9, v4);
  sub_254FC389C();
  sub_254FC5A48();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
}

void static AppUsageAction.listPeople(queryService:)(uint64_t *a1)
{
  v232 = *MEMORY[0x277D85DE8];
  v3 = sub_254FF1EB4();
  v4 = sub_254FC5824(v3, &v234);
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  sub_254FC590C();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v182 - v11;
  v13 = type metadata accessor for DeviceUser(0);
  sub_254FC583C();
  v206 = v14;
  MEMORY[0x28223BE20](v15);
  sub_254FC590C();
  v212[1] = v16 - v17;
  MEMORY[0x28223BE20](v18);
  sub_254FC5974(v182 - v19);
  v20 = sub_254FC0048(&qword_27F76C860, &qword_254FF3100);
  MEMORY[0x28223BE20](v20 - 8);
  sub_254FC5974(v182 - v21);
  v22 = sub_254FC0048(&qword_27F76C868, &qword_254FF3108);
  MEMORY[0x28223BE20](v22 - 8);
  sub_254FC58C0(v182 - v23);
  v24 = sub_254FF13D4();
  v25 = sub_254FC5824(v24, &v226);
  v217 = v26;
  MEMORY[0x28223BE20](v25);
  sub_254FC5888();
  sub_254FC58C0(v27);
  v28 = sub_254FF1444();
  v29 = sub_254FC5824(v28, &v229);
  v216 = v30;
  MEMORY[0x28223BE20](v29);
  sub_254FC5888();
  sub_254FC58C0(v31);
  v32 = sub_254FF1424();
  v33 = sub_254FC5824(v32, &v232);
  v215 = v34;
  MEMORY[0x28223BE20](v33);
  sub_254FC5888();
  sub_254FC58C0(v35);
  v36 = sub_254FF1434();
  v37 = sub_254FC5824(v36, v231);
  v218 = v38;
  MEMORY[0x28223BE20](v37);
  sub_254FC590C();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  sub_254FC58C0(v182 - v43);
  v44 = sub_254FF1F94();
  v45 = sub_254FC5824(v44, &v227 + 8);
  v47 = v46;
  MEMORY[0x28223BE20](v45);
  sub_254FC5888();
  sub_254FC58C0(v48);
  v49 = sub_254FF1394();
  v50 = sub_254FC5824(v49, &v233);
  v52 = v51;
  MEMORY[0x28223BE20](v50);
  sub_254FC590C();
  v209 = v53 - v54;
  MEMORY[0x28223BE20](v55);
  sub_254FC5974(v182 - v56);
  v57 = *a1;
  v212[2] = v41;
  if (v57)
  {
    v58 = v57;
  }

  else
  {
    if (qword_27F76C790 != -1)
    {
      sub_254FC5850();
      swift_once();
    }

    v58 = qword_27F76C9A0;
  }

  os_unfair_lock_lock((v58 + 24));
  sub_254FC80C0((v58 + 16), &v225);
  if (v1)
  {
    goto LABEL_122;
  }

  os_unfair_lock_unlock((v58 + 24));
  sub_254FC59F0();
  if (!v228)
  {
    sub_254FC538C(&v227, &qword_27F76C840, &qword_254FF4810);
LABEL_16:
    sub_254FF1D14();
    v69 = sub_254FF1EA4();
    v70 = sub_254FF2174();
    if (os_log_type_enabled(v69, v70))
    {
      sub_254FC5B38();
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_254FBD000, v69, v70, "AppUsageAction cannot be executed: SQL executor is nil", v71, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v6 + 8))(v9, v219);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();

    return;
  }

  sub_254FC38F0(&v227, v230);
  os_unfair_lock_lock((v58 + 24));
  sub_254FC83D0((v58 + 16), &v225);
  os_unfair_lock_unlock((v58 + 24));
  sub_254FC59F0();
  v59 = v228;
  sub_254FC538C(&v227, &qword_27F76C850, &qword_254FF30F0);
  if (!v59)
  {
    sub_254FC49C4(v230);
    goto LABEL_16;
  }

  v200 = v13;
  v201 = v58;
  v61 = v231[0];
  v60 = v231[1];
  sub_254FC3908(v230, v231[0]);
  (*(v60 + 8))(&v225, 0xD00000000000022FLL, 0x8000000254FF4FB0, v61, v60);
  if (!*(&v226 + 1))
  {
    sub_254FC538C(&v225, &qword_27F76C858, &qword_254FF30F8);
    sub_254FF1D14();
    v62 = sub_254FF1EA4();
    v63 = sub_254FF2174();
    v64 = sub_254FC5D04();
    if (os_log_type_enabled(v64, v65))
    {
      sub_254FC5E5C();
      v66 = swift_slowAlloc();
      sub_254FC5E50();
      v67 = swift_slowAlloc();
      *&v227 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_254FC4454(0xD00000000000022FLL, 0x8000000254FF4FB0, &v227);
      _os_log_impl(&dword_254FBD000, v62, v63, "Query (%s) cannot be executed!", v66, 0xCu);
      sub_254FC49C4(v67);
      sub_254FC592C();
      MEMORY[0x259C32150]();
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v6 + 8))(v12, v219);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v68 = 2;
    swift_willThrow();
    sub_254FC5DA4();
    goto LABEL_13;
  }

  sub_254FC38F0(&v225, &v227);
  sub_254FC5A3C();
  v199 = v73;
  v197 = (v47 + 8);
  v190 = *MEMORY[0x277CB9CD0];
  v196 = v52 + 104;
  v215 += 104;
  v191 = *MEMORY[0x277CB9CC8];
  v198 = v218 + 32;
  v195 = v52 + 16;
  v194 = v217 + 104;
  LODWORD(v217) = *MEMORY[0x277CB9D48];
  v193 = (v216 + 16);
  v216 += 8;
  v74 = (v52 + 8);
  v75 = MEMORY[0x277D837D0];
  v192 = *MEMORY[0x277CB9CF8];
  v219 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v76 = v228;
        v77 = v229;
        sub_254FC4A10(&v227, v228);
        sub_254FC5AF4();
        v58 = v78(v76, v77);
        if (!v58)
        {
          sub_254FC5DA4();
          sub_254FC49C4(&v227);
          sub_254FC49C4(v230);
          sub_254FC5CB0();
          return;
        }

        v221 = 0x696669746E656469;
        v222 = 0xEA00000000007265;
        sub_254FF21F4();
        if (*(v58 + 16))
        {
          v79 = sub_254FC5F20();
          if (v80)
          {
            sub_254FC5BB4(v79);
            sub_254FC4B08(&v225);
            sub_254FC5A80();
            if ((sub_254FC5ACC() & 1) == 0)
            {
              goto LABEL_44;
            }

            sub_254FC5CC8(0x656D614E6C6C7566);
            sub_254FC5874(0xE800000000000000);
            sub_254FF21F4();
            if (*(v58 + 16))
            {
              v81 = sub_254FC5F20();
              if (v82)
              {
                break;
              }
            }
          }
        }

LABEL_39:

        sub_254FC4B08(&v225);
      }

      sub_254FC5BB4(v81);
      sub_254FC4B08(&v225);
      sub_254FC5A80();
      if ((sub_254FC5ACC() & 1) == 0)
      {
        goto LABEL_44;
      }

      v189 = v221;
      v83 = v222;
      sub_254FC5CC8(0x44495344746C61);
      sub_254FC5874(0xE700000000000000);
      sub_254FF21F4();
      if (!*(v58 + 16))
      {
        goto LABEL_40;
      }

      v84 = sub_254FC5F20();
      if ((v85 & 1) == 0)
      {
        goto LABEL_40;
      }

      sub_254FC5BB4(v84);
      sub_254FC4B08(&v225);
      sub_254FC5A80();
      if (sub_254FC5ACC())
      {
        break;
      }

LABEL_43:

LABEL_44:
    }

    v187 = v221;
    v188 = v222;
    sub_254FC5CC8(0xD000000000000011);
    sub_254FC5874(v199);
    sub_254FF21F4();
    if (!*(v58 + 16) || (v86 = sub_254FC5F20(), (v87 & 1) == 0))
    {

      sub_254FC5C74();
LABEL_40:

      goto LABEL_39;
    }

    sub_254FC5BB4(v86);
    sub_254FC4B08(&v225);
    sub_254FC5A80();
    if ((sub_254FC5ACC() & 1) == 0)
    {
      sub_254FC5C74();

      goto LABEL_43;
    }

    v185 = v83;
    v184 = v74;
    v88 = v207;
    sub_254FF1F84();
    sub_254FC5C3C();
    v89 = sub_254FF1F64();
    v91 = v90;

    v92 = *v197;
    (*v197)(v88, v208);
    v93 = v75;
    if (v91 >> 60 != 15)
    {
      v94 = v92;
      v95 = objc_opt_self();
      v96 = v89;
      v97 = v95;
      v186 = v96;
      v98 = sub_254FF1534();
      *&v225 = 0;
      v99 = [v97 JSONObjectWithData:v98 options:0 error:&v225];

      if (!v99)
      {
        v176 = v225;
        sub_254FC5C74();

        sub_254FC5CB0();

        sub_254FF14F4();

        swift_willThrow();
        sub_254FC5D34();
        sub_254FC5DA4();
LABEL_114:
        sub_254FC49C4(&v227);
LABEL_13:
        sub_254FC49C4(v230);
        return;
      }

      v100 = v225;
      sub_254FF21B4();
      swift_unknownObjectRelease();
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FC5C2C();
      if (swift_dynamicCast())
      {
        if (*(v223[0] + 16))
        {
          v102 = *(v223[0] + 32);
          v101 = *(v223[0] + 40);

          sub_254FC5D34();
          v103 = v213;
          *v213 = v102;
          v103[1] = v101;
          sub_254FC5AE8();
          v104();
          v92 = v94;
          v93 = MEMORY[0x277D837D0];
          goto LABEL_48;
        }
      }

      sub_254FC5D34();
      v92 = v94;
      v93 = MEMORY[0x277D837D0];
    }

    v105 = v213;
    v101 = v188;
    *v213 = v187;
    v105[1] = v101;
    sub_254FC5AE8();
    v106();

LABEL_48:
    v220 = MEMORY[0x277D84F90];
    sub_254FC5CC8(0x6D754E656E6F6870);
    sub_254FC5874(0xEC00000073726562);
    sub_254FF21F4();
    sub_254FC5D50();
    sub_254FC4B08(&v225);
    if (!v224)
    {
      sub_254FC538C(v223, &qword_27F76C870, &qword_254FF3110);
      goto LABEL_66;
    }

    sub_254FC5A80();
    if (swift_dynamicCast())
    {
      sub_254FC5B0C();
      sub_254FC5C3C();
      v107 = sub_254FF1F64();
      sub_254FC5E68(v107);
      v108 = sub_254FC5B44();
      (v92)(v108);
      if (v101 >> 60 != 15)
      {
        break;
      }
    }

LABEL_66:
    sub_254FC5CC8(0x6464416C69616D65);
    sub_254FC5874(0xEE00736573736572);
    sub_254FF21F4();
    sub_254FC5D50();
    sub_254FC4B08(&v225);
    if (!v224)
    {
      sub_254FC538C(v223, &qword_27F76C870, &qword_254FF3110);
      goto LABEL_84;
    }

    sub_254FC5A80();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_84;
    }

    sub_254FC5B0C();
    sub_254FC5C3C();
    v119 = sub_254FF1F64();
    sub_254FC5E68(v119);
    v120 = sub_254FC5B44();
    (v92)(v120);
    if (v101 >> 60 == 15)
    {
      goto LABEL_84;
    }

    v121 = v101;
    objc_opt_self();
    sub_254FC5A30();
    v122 = sub_254FF1534();
    *&v225 = 0;
    v123 = sub_254FC5E88(v122, sel_JSONObjectWithData_options_error_);

    if (!v123)
    {
      v180 = v225;
      sub_254FC5CB0();

      sub_254FC5C74();

      sub_254FF14F4();

      swift_willThrow();
      v178 = sub_254FC5A30();
      v179 = v121;
LABEL_119:
      sub_254FC4BE0(v178, v179);
      sub_254FC5DA4();
      sub_254FC5AE8();
      v181(v213, v214);
      goto LABEL_114;
    }

    v124 = v225;
    sub_254FF21B4();
    swift_unknownObjectRelease();
    sub_254FC0048(&qword_27F76C878, &qword_254FF3118);
    sub_254FC5C2C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v147 = sub_254FC5A30();
      sub_254FC4BE0(v147, v121);
      goto LABEL_84;
    }

    sub_254FC5B60(v212);
    v183 = MEMORY[0x277D84F90];
    while (v186 != v93)
    {
      if (v93 >= v123[2])
      {
        goto LABEL_121;
      }

      if (*(v123[v93 + 4] + 16))
      {

        v125 = sub_254FC4A60(0x6464416C69616D65);
        if ((v126 & 1) == 0)
        {

          goto LABEL_77;
        }

        sub_254FC5B88(v125);

        sub_254FC5CBC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254FC5E1C();
          sub_254FC58E4();
          sub_254FC3D0C();
          sub_254FC5E10(v130);
        }

        sub_254FC5B7C();
        v129 = *(v127 + 16);
        v128 = *(v127 + 24);
        if (v129 >= v128 >> 1)
        {
          sub_254FC5A04(v128);
          sub_254FC5E1C();
          sub_254FC3D0C();
          sub_254FC5E10(v131);
        }

        sub_254FC5980();
      }

      else
      {
LABEL_77:
        ++v93;
      }
    }

    sub_254FC5B7C();
    v186 = *(v159 + 16);
    if (v186)
    {
      sub_254FC5C4C(MEMORY[0x277D84F90]);
      sub_254FC5BD0();
      sub_254FC5B7C();
      do
      {
        v160 = sub_254FC5938();
        v161(v160);

        sub_254FC5CEC();
        sub_254FF1414();
        sub_254FC5E3C();
        if (v152)
        {
          v168 = sub_254FC5A04(v162);
          sub_254FC5EC8(v168);
          v163 = v123;
          v123 = v225;
        }

        v123[2] = v163;
        sub_254FC58F8();
        sub_254FC5E28(v164);
        sub_254FC5C80();
        v165();
        sub_254FC5CD4();
        *(v167 - 256) = v166;
      }

      while (!v157);
      sub_254FC5CBC();
    }

    else
    {
      sub_254FC5CBC();

      v123 = MEMORY[0x277D84F90];
    }

    sub_254FC5264(v123);
    v171 = sub_254FC58D0();
    sub_254FC4BE0(v171, v172);
LABEL_84:
    strcpy(v223, "isCurrentUser");
    HIWORD(v223[1]) = -4864;
    sub_254FF21F4();
    sub_254FC5D50();

    sub_254FC4B08(&v225);
    if (v224)
    {
      sub_254FC5A80();
      v132 = swift_dynamicCast();
      v133 = v185;
      if (v132)
      {
        LODWORD(v186) = v221;
      }

      else
      {
        LODWORD(v186) = 0;
      }
    }

    else
    {
      sub_254FC538C(v223, &qword_27F76C870, &qword_254FF3110);
      LODWORD(v186) = 0;
      v133 = v185;
    }

    sub_254FC5AE8();
    v134(v209, v213, v214);
    v135 = v202;
    *v202 = v189;
    v135[1] = v133;
    sub_254FC5AE8();
    v136(v135, v192, v203);
    sub_254FC2110(v220, v204);
    v137 = sub_254FF1474();
    sub_254FC4BB8(v205, 1, 1, v137);
    v138 = v210;
    sub_254FF13A4();
    v139 = v212[0];
    (*v193)(v212[0] + *(v200 + 20), v138, v211);
    v140 = v188;
    *v139 = v187;
    v139[1] = v140;
    sub_254FC56BC();
    v141 = v219;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_254FC3B20(0, v141[2] + 1, 1, v141);
    }

    v74 = v184;
    v143 = v141[2];
    v142 = v141[3];
    if (v143 >= v142 >> 1)
    {
      v173 = sub_254FC589C(v142);
      v141 = sub_254FC3B20(v173, v174, v175, v141);
    }

    sub_254FC5490(v212[0], type metadata accessor for DeviceUser);
    sub_254FC5AE8();
    v144(v210, v211);
    (*v74)(v213, v214);
    v141[2] = v143 + 1;
    sub_254FC58F8();
    v219 = v141;
    sub_254FC54E8();
  }

  objc_opt_self();
  sub_254FC5A30();
  v182[1] = v109;
  v110 = sub_254FF1534();
  *&v225 = 0;
  v101 = sub_254FC5E88(v110, sel_JSONObjectWithData_options_error_);

  if (!v101)
  {
    v177 = v225;
    sub_254FC5CB0();

    sub_254FC5C74();

    sub_254FF14F4();

    swift_willThrow();
    v178 = sub_254FC58D0();
    goto LABEL_119;
  }

  v111 = v225;
  sub_254FF21B4();
  swift_unknownObjectRelease();
  sub_254FC0048(&qword_27F76C878, &qword_254FF3118);
  sub_254FC5C2C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v145 = sub_254FC58D0();
    sub_254FC4BE0(v145, v146);
    goto LABEL_66;
  }

  sub_254FC5B60(&v211);
  v183 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v186 == v93)
    {

      v186 = *(v183 + 16);
      if (v186)
      {
        sub_254FC5C4C(MEMORY[0x277D84F90]);
        sub_254FC5BD0();
        do
        {
          v148 = sub_254FC5938();
          v149(v148);

          sub_254FC5CEC();
          sub_254FF1404();
          sub_254FC5E3C();
          if (v152)
          {
            v158 = sub_254FC5A04(v150);
            sub_254FC5EC8(v158);
            v151 = v101;
            v101 = v225;
          }

          *(v101 + 16) = v151;
          sub_254FC58F8();
          sub_254FC5E28(v153);
          sub_254FC5C80();
          v154();
          sub_254FC5CD4();
          *(v156 - 256) = v155;
        }

        while (!v157);
        sub_254FC5CBC();
      }

      else
      {

        v101 = MEMORY[0x277D84F90];
      }

      sub_254FC5264(v101);
      v169 = sub_254FC58D0();
      sub_254FC4BE0(v169, v170);
      v93 = v75;
      v92 = v182[0];
      goto LABEL_66;
    }

    if (v93 >= *(v101 + 16))
    {
      break;
    }

    if (!*(*(v101 + 8 * v93 + 32) + 16))
    {
      goto LABEL_59;
    }

    v112 = sub_254FC4A60(0x6D754E656E6F6870);
    if (v113)
    {
      sub_254FC5B88(v112);

      sub_254FC5CBC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254FC5E1C();
        sub_254FC58E4();
        sub_254FC3D0C();
        sub_254FC5E10(v117);
      }

      sub_254FC5B7C();
      v116 = *(v114 + 16);
      v115 = *(v114 + 24);
      if (v116 >= v115 >> 1)
      {
        sub_254FC5A04(v115);
        sub_254FC5E1C();
        sub_254FC3D0C();
        sub_254FC5E10(v118);
      }

      sub_254FC5980();
    }

    else
    {

LABEL_59:
      ++v93;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  os_unfair_lock_unlock((v58 + 24));
  __break(1u);
}

uint64_t sub_254FC2110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254FF1434();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254FC4BB8(a2, v7, 1, v6);
}

uint64_t static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 832) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a4;
  *(v8 + 600) = a3;
  *(v8 + 592) = a2;
  v11 = type metadata accessor for AppUsageResult(0);
  *(v8 + 632) = v11;
  sub_254FC58B0(v11);
  *(v8 + 640) = v12;
  *(v8 + 648) = sub_254FC5DBC();
  *(v8 + 656) = swift_task_alloc();
  v13 = sub_254FF13D4();
  *(v8 + 664) = v13;
  sub_254FC58B0(v13);
  *(v8 + 672) = v14;
  *(v8 + 680) = swift_task_alloc();
  v15 = sub_254FF1EB4();
  *(v8 + 688) = v15;
  sub_254FC58B0(v15);
  *(v8 + 696) = v16;
  *(v8 + 704) = sub_254FC5DBC();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  v17 = sub_254FF1394();
  *(v8 + 744) = v17;
  sub_254FC58B0(v17);
  *(v8 + 752) = v18;
  *(v8 + 760) = sub_254FC5DBC();
  *(v8 + 768) = swift_task_alloc();
  sub_254FC0048(&qword_27F76C888, &unk_254FF3130);
  *(v8 + 776) = sub_254FC5DBC();
  *(v8 + 784) = swift_task_alloc();
  v19 = sub_254FF1444();
  *(v8 + 792) = v19;
  sub_254FC58B0(v19);
  *(v8 + 800) = v20;
  *(v8 + 808) = sub_254FC5DBC();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = *a1;
  *(v8 + 833) = *a5;

  return MEMORY[0x2822009F8](sub_254FC2464, 0, 0);
}

uint64_t sub_254FC2464()
{
  v167 = v0;
  if (*(v0 + 824))
  {
    v1 = *(v0 + 824);
  }

  else
  {
    if (qword_27F76C790 != -1)
    {
      sub_254FC5850();
      swift_once();
    }

    v1 = qword_27F76C9A0;
  }

  os_unfair_lock_lock((v1 + 24));
  sub_254FC80C0((v1 + 16), &v163);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v164;
  *(v0 + 56) = v163;
  *(v0 + 72) = v2;
  *(v0 + 88) = v165;
  if (!*(v0 + 80))
  {
    sub_254FC538C(v0 + 56, &qword_27F76C840, &qword_254FF4810);
LABEL_10:
    sub_254FF1D14();
    v6 = sub_254FF1EA4();
    sub_254FF2174();
    v7 = sub_254FC5D04();
    if (os_log_type_enabled(v7, v8))
    {
      sub_254FC5B38();
      *swift_slowAlloc() = 0;
      sub_254FC5AAC(&dword_254FBD000, v9, v10, "AppUsageAction cannot be executed: SQL executor is nil");
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    v11 = sub_254FC5B00();
    v12(v11);
    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

LABEL_13:

    sub_254FC5A60();

    __asm { BRAA            X1, X16 }
  }

  sub_254FC38F0((v0 + 56), v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_254FC83D0((v1 + 16), &v163);
  os_unfair_lock_unlock((v1 + 24));
  v3 = v164;
  *(v0 + 136) = v163;
  *(v0 + 152) = v3;
  *(v0 + 168) = v165;
  if (!*(v0 + 160))
  {
    sub_254FC538C(v0 + 136, &qword_27F76C850, &qword_254FF30F0);
    sub_254FC49C4((v0 + 16));
    goto LABEL_10;
  }

  sub_254FC38F0((v0 + 136), v0 + 96);
  sub_254FC3908((v0 + 96), *(v0 + 120));
  sub_254FC5AF4();
  v4 = sub_254FC5E04();
  v5(v4);
  v16 = 0xD000000000000013;
  v160 = v0;
  if (*(v0 + 832) == 1)
  {
    sub_254FC5A3C();
    *&v166 = 0xD000000000000099;
    *(&v166 + 1) = v17;
LABEL_39:
    *&v163 = 0;
    *(&v163 + 1) = 0xE000000000000000;
    sub_254FF2254();
    v67 = *(&v163 + 1);
    *(v0 + 472) = v163;
    *(v0 + 480) = v67;
    MEMORY[0x259C316D0](v16 - 2, 0x8000000254FF5410);
    sub_254FF1574();
    sub_254FF2134();
    MEMORY[0x259C316D0](32, 0xE100000000000000);
    v68 = *(v0 + 472);
    v69 = *(v0 + 480);
    sub_254FC3D0C();
    v71 = v70;
    v73 = *(v70 + 16);
    v72 = *(v70 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_254FC589C(v72);
      sub_254FC3D0C();
      v71 = v149;
    }

    v0 = v160;
    *(v71 + 16) = v73 + 1;
    v74 = v71 + 16 * v73;
    *(v74 + 32) = v68;
    *(v74 + 40) = v69;
    *&v163 = 0;
    *(&v163 + 1) = 0xE000000000000000;
    sub_254FF2254();
    v75 = *(&v163 + 1);
    *(v160 + 488) = v163;
    *(v160 + 496) = v75;
    MEMORY[0x259C316D0](0x54646E652E415320, 0xEF203D3C20656D69);
    sub_254FF1574();
    sub_254FF2134();
    MEMORY[0x259C316D0](32, 0xE100000000000000);
    v76 = *(v160 + 488);
    v77 = *(v160 + 496);
    v79 = *(v71 + 16);
    v78 = *(v71 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_254FC589C(v78);
      sub_254FC3D0C();
      v71 = v150;
    }

    v80 = *(v160 + 608);
    *(v71 + 16) = v79 + 1;
    v81 = v71 + 16 * v79;
    *(v81 + 32) = v76;
    *(v81 + 40) = v77;
    *&v163 = 0x20444E4120;
    *(&v163 + 1) = 0xE500000000000000;
    *(v160 + 568) = v71;
    sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
    sub_254FC53E4();
    sub_254FF1F04();

    v82 = sub_254FC5E04();
    MEMORY[0x259C316D0](v82);

    sub_254FC5D6C();

    if (v80)
    {
      v83 = *(v160 + 608);
      v84 = *(v160 + 600);
      sub_254FC591C();
      sub_254FF2254();

      sub_254FC5A3C();
      *&v163 = v16 + 1;
      *(&v163 + 1) = v85;
      MEMORY[0x259C316D0](v84, v83);
      MEMORY[0x259C316D0](8231, 0xE200000000000000);
      sub_254FC5D6C();
    }

    if (*(v160 + 833))
    {
      if (*(v160 + 833) == 1)
      {
        v86 = " AND SA.isApplication = 1 ";
      }

      else
      {
        v86 = " AND SA.isApplication = 0 ";
      }

      MEMORY[0x259C316D0](v16 + 7, (v86 - 32) | 0x8000000000000000);
    }

    MEMORY[0x259C316D0](v16 + 81, 0x8000000254FF5450);
    v87 = *(v160 + 40);
    v88 = *(v160 + 48);
    sub_254FC3908((v160 + 16), v87);
    v89 = *(&v166 + 1);
    v90 = v166;
    (*(v88 + 16))(v166, *(&v166 + 1), MEMORY[0x277D84F90], v87, v88);
    if (*(v160 + 240))
    {
      v156 = *(v160 + 656);
      v157 = *(v160 + 632);

      sub_254FC38F0((v160 + 216), v160 + 176);
      sub_254FC5A3C();
      v162 = v103;
      v158 = MEMORY[0x277D84F90];
      v159 = v16 - 3;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v105 = *(v0 + 200);
            v104 = *(v0 + 208);
            sub_254FC4A10(v0 + 176, v105);
            sub_254FC5AF4();
            v107 = v106(v105, v104);
            if (!v107)
            {

              sub_254FC49C4((v160 + 176));
              sub_254FC49C4((v160 + 96));
              sub_254FC49C4((v160 + 16));

              sub_254FC5A60();

              __asm { BRAA            X2, X16 }
            }

            v0 = v160;
            strcpy((v160 + 504), "totalDuration");
            *(v160 + 518) = -4864;
            sub_254FF21F4();
            if (*(v107 + 16))
            {
              v108 = sub_254FC4AC4(v160 + 256);
              if (v109)
              {
                break;
              }
            }

            sub_254FC4B08(v160 + 256);
          }

          sub_254FC4B5C(*(v107 + 56) + 32 * v108, v160 + 376);
          sub_254FC4B08(v160 + 256);
          if (swift_dynamicCast())
          {
            break;
          }

LABEL_70:
        }

        v110 = *(v160 + 576);
        *(v160 + 520) = v159;
        *(v160 + 528) = v162;
        sub_254FF21F4();
        if (*(v107 + 16) && (v111 = sub_254FC4AC4(v160 + 296), (v112 & 1) != 0))
        {
          sub_254FC4B5C(*(v107 + 56) + 32 * v111, v160 + 408);
          sub_254FC4B08(v160 + 296);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_70;
          }

          v113 = *(v160 + 536);
          v114 = *(v160 + 544);
          strcpy((v160 + 552), "isApplication");
          *(v160 + 566) = -4864;
          sub_254FF21F4();
          if (*(v107 + 16) && (v115 = sub_254FC4AC4(v160 + 336), (v116 & 1) != 0))
          {
            sub_254FC4B5C(*(v107 + 56) + 32 * v115, v160 + 440);
            sub_254FC4B08(v160 + 336);

            if (swift_dynamicCast())
            {
              v117 = *(v160 + 656);
              v155 = *(v160 + 624);
              v153 = *(v160 + 616);
              v118 = sub_254FF23E4();
              v154 = sub_254FF20E4();

              v152 = v157[6];
              v119 = sub_254FF1614();
              sub_254FC5864();
              v121 = *(v120 + 16);
              v121(&v117[v152], v153, v119);
              v121(&v117[v157[7]], v155, v119);
              *v117 = v113;
              *(v156 + 8) = v114;
              *(v156 + 16) = v154 & 1;
              *&v117[v157[8]] = v110;
              sub_254FC56BC();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v124 = sub_254FC58E4();
                v158 = sub_254FC3DC0(v124, v125, v126, v127);
              }

              v123 = v158[2];
              v122 = v158[3];
              if (v123 >= v122 >> 1)
              {
                v128 = sub_254FC589C(v122);
                v158 = sub_254FC3DC0(v128, v129, v130, v158);
              }

              v0 = v160;
              sub_254FC5490(*(v160 + 656), type metadata accessor for AppUsageResult);
              v158[2] = v123 + 1;
              sub_254FC5A54();
              sub_254FC54E8();
            }

            else
            {

              v0 = v160;
            }
          }

          else
          {

            sub_254FC4B08(v160 + 336);
          }
        }

        else
        {

          sub_254FC4B08(v160 + 296);
        }
      }
    }

    sub_254FC538C(v160 + 216, &qword_27F76C858, &qword_254FF30F8);
    sub_254FF1D14();

    v91 = sub_254FF1EA4();
    v92 = sub_254FF2174();

    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v160 + 712);
    v95 = *(v160 + 696);
    v96 = *(v160 + 688);
    if (v93)
    {
      sub_254FC5E5C();
      v161 = v94;
      v97 = swift_slowAlloc();
      sub_254FC5E50();
      v98 = swift_slowAlloc();
      *&v163 = v98;
      *v97 = 136315138;
      v99 = sub_254FC4454(v90, v89, &v163);

      *(v97 + 4) = v99;
      sub_254FC5EE8(&dword_254FBD000, v100, v101, "Query (%s) cannot be executed!");
      sub_254FC49C4(v98);
      sub_254FC592C();
      MEMORY[0x259C32150]();
      v0 = v160;
      sub_254FC592C();
      MEMORY[0x259C32150]();

      (*(v95 + 8))(v161, v96);
    }

    else
    {

      (*(v95 + 8))(v94, v96);
    }

    sub_254FC389C();
    sub_254FC5A48();
    swift_allocError();
    *v102 = 2;
    swift_willThrow();

    goto LABEL_55;
  }

  v18 = *(v0 + 792);
  v19 = *(v0 + 784);
  sub_254FC5770();
  v20 = sub_254FC5364(v19, 1, v18);
  v21 = MEMORY[0x277CB9CC8];
  if (v20 == 1)
  {
    sub_254FC538C(*(v0 + 784), &qword_27F76C888, &unk_254FF3130);
  }

  else
  {
    (*(*(v0 + 800) + 32))(*(v0 + 816), *(v0 + 784), *(v0 + 792));
    sub_254FF13B4();
    v22 = sub_254FC5B00();
    if (v23(v22) == *v21)
    {
      v24 = *(v0 + 768);
      (*(*(v0 + 752) + 96))(v24, *(v0 + 744));
      v26 = *v24;
      v25 = v24[1];
      sub_254FF1D14();

      v27 = sub_254FF1EA4();
      v28 = sub_254FF2154();

      if (os_log_type_enabled(v27, v28))
      {
        sub_254FC5E5C();
        v29 = v26;
        v30 = swift_slowAlloc();
        sub_254FC5E50();
        v31 = swift_slowAlloc();
        *&v163 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_254FC4454(v29, v25, &v163);
        sub_254FC5EE8(&dword_254FBD000, v32, v33, "AppUsageAction: using alternative DSID %s for person filtering");
        sub_254FC49C4(v31);
        v16 = 0xD000000000000013;
        sub_254FC592C();
        MEMORY[0x259C32150]();
        v26 = v29;
        v0 = v160;
        sub_254FC592C();
        MEMORY[0x259C32150]();
      }

      v34 = sub_254FC5DE0();
      v35(v34);
      sub_254FC591C();
      sub_254FF2254();
      MEMORY[0x259C316D0](0xD0000000000000B2, 0x8000000254FF5560);
      MEMORY[0x259C316D0](v26, v25);

      MEMORY[0x259C316D0](10021, 0xE200000000000000);
      v36 = v163;
      v37 = sub_254FC5DE0();
      v38(v37);
      v166 = v36;
      goto LABEL_39;
    }

    v39 = *(v0 + 768);
    v40 = *(v0 + 752);
    v41 = *(v0 + 744);
    (*(*(v0 + 800) + 8))(*(v0 + 816), *(v0 + 792));
    (*(v40 + 8))(v39, v41);
  }

  sub_254FF1D14();
  v42 = sub_254FF1EA4();
  sub_254FF2154();
  v43 = sub_254FC5D04();
  if (os_log_type_enabled(v43, v44))
  {
    sub_254FC5B38();
    *swift_slowAlloc() = 0;
    sub_254FC5AAC(&dword_254FBD000, v45, v46, "AppUsageAction: no DSID for person, use megadome KG for filtering");
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  v47 = *(v0 + 792);
  v48 = *(v0 + 776);
  v49 = *(v0 + 696);

  v50 = *(v49 + 8);
  v51 = sub_254FC5DE0();
  (v50)(v51);
  sub_254FC5A3C();
  *&v166 = 0xD0000000000001E3;
  *(&v166 + 1) = v52;
  sub_254FC5770();
  if (sub_254FC5364(v48, 1, v47) == 1)
  {
    sub_254FC538C(*(v0 + 776), &qword_27F76C888, &unk_254FF3130);
LABEL_32:
    v16 = 0xD000000000000013;
    MEMORY[0x259C316D0](0xD000000000000015, 0x8000000254FF53F0);
    goto LABEL_39;
  }

  v16 = v50;
  (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 776), *(v0 + 792));
  if (sub_254FF13E4())
  {
    (*(*(v0 + 800) + 8))(*(v0 + 808), *(v0 + 792));
    goto LABEL_32;
  }

  sub_254FF13B4();
  v53 = sub_254FC5B00();
  v55 = v54(v53);
  if (v55 == *MEMORY[0x277CB9CD0])
  {
    v56 = sub_254FC5C98();
    v57(v56);
    sub_254FC591C();
    sub_254FF2254();

    sub_254FC59DC();
    *&v163 = v50 + 9;
LABEL_37:
    *(&v163 + 1) = v58;
    v61 = sub_254FC5B00();
    MEMORY[0x259C316D0](v61);

    v62 = 10021;
    v63 = 0xE200000000000000;
LABEL_38:
    MEMORY[0x259C316D0](v62, v63);
    sub_254FC5D6C();
    v64 = *(v0 + 808);
    v65 = *(v0 + 800);
    v66 = *(v0 + 792);

    (*(v65 + 8))(v64, v66);
    goto LABEL_39;
  }

  if (v55 == *MEMORY[0x277CB9CC8])
  {
    v59 = sub_254FC5C98();
    v60(v59);
    sub_254FC591C();
    sub_254FF2254();

    sub_254FC59DC();
    *&v163 = v50;
    goto LABEL_37;
  }

  if (v55 == *MEMORY[0x277CB9CD8])
  {
    sub_254FF13F4();
    v133 = sub_254FC5B00();
    if (v134(v133) != *MEMORY[0x277CB9CF8])
    {
      (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
      sub_254FF1D14();
      v139 = sub_254FF1EA4();
      sub_254FF2174();
      v140 = sub_254FC5D04();
      if (os_log_type_enabled(v140, v141))
      {
        sub_254FC5B38();
        *swift_slowAlloc() = 0;
        sub_254FC5AAC(&dword_254FBD000, v142, v143, "AppUsageAction does not have valid person parameter");
        sub_254FC592C();
        MEMORY[0x259C32150]();
      }

      v144 = *(v0 + 720);
      v145 = *(v0 + 688);

      (v16)(v144, v145);
      sub_254FC389C();
      sub_254FC5A48();
      swift_allocError();
      *v146 = 1;
      swift_willThrow();

      v147 = sub_254FC5E04();
      v148(v147);
LABEL_55:
      sub_254FC49C4((v0 + 96));
      sub_254FC49C4((v0 + 16));
      goto LABEL_13;
    }

    (*(*(v0 + 672) + 96))(*(v0 + 680), *(v0 + 664));
    sub_254FC591C();
    sub_254FF2254();

    sub_254FC59DC();
    *&v163 = v50;
    *(&v163 + 1) = v135;
    v136 = sub_254FC5B00();
    MEMORY[0x259C316D0](v136);

    v62 = 2107173;
    v63 = 0xE300000000000000;
    goto LABEL_38;
  }

  sub_254FC5A60();

  return MEMORY[0x2821FDEB8](v137);
}

unint64_t sub_254FC389C()
{
  result = qword_27F76C848;
  if (!qword_27F76C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C848);
  }

  return result;
}

uint64_t sub_254FC38F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_254FC3908(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_254FC394C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_254FC41E4(v8, v7);
  v10 = *(sub_254FC0048(&qword_27F76C838, &unk_254FF30E0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_254FD15B4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_254FC3A44()
{
  sub_254FC5C1C();
  if (v3)
  {
    sub_254FC5C0C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254FC5BFC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_254FC4360(*(v0 + 16), v4, &qword_27F76C8F0, &qword_254FF3198, type metadata accessor for Device);
  type metadata accessor for Device(0);
  sub_254FC5A54();
  if (v1)
  {
    v8 = sub_254FC5BEC(v7);
    sub_254FD15C8(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void *sub_254FC3B20(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_254FC4360(v9, a2, &qword_27F76C8E8, &qword_254FF3190, type metadata accessor for DeviceUser);
  v11 = *(type metadata accessor for DeviceUser(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_254FD15E0(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254FC3C30()
{
  sub_254FC5C1C();
  if (v3)
  {
    sub_254FC5C0C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254FC5BFC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_254FC4360(*(v0 + 16), v4, &qword_27F76C8E0, &qword_254FF4820, MEMORY[0x277CB9DA8]);
  sub_254FF1434();
  sub_254FC5A54();
  if (v1)
  {
    v8 = sub_254FC5BEC(v7);
    sub_254FD15F8(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void sub_254FC3D0C()
{
  sub_254FC5DF8();
  if ((v3 & 1) == 0 || (sub_254FC59CC(), v4 == v5))
  {
LABEL_6:
    sub_254FC59BC();
    if (v2)
    {
      sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
      v9 = sub_254FC5F08();
      sub_254FC5F38(v9);
      sub_254FC5A20(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_254FC5A10();
        sub_254FD1610(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_254FC5D88(v6, v7, v8, MEMORY[0x277D837D0]);
    goto LABEL_11;
  }

  sub_254FC5DEC();
  if (!v4)
  {
    sub_254FC59AC();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_254FC3DC0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_254FC4360(v9, a2, &qword_27F76C8D8, &unk_254FF3180, type metadata accessor for AppUsageResult);
  v11 = *(type metadata accessor for AppUsageResult(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_254FD1630(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254FC3ED0()
{
  sub_254FC5DF8();
  if ((v3 & 1) == 0 || (sub_254FC59CC(), v4 == v5))
  {
LABEL_6:
    sub_254FC59BC();
    if (v2)
    {
      sub_254FC0048(&qword_27F76C8C8, &qword_254FF3170);
      v6 = sub_254FC5F08();
      sub_254FC5F38(v6);
      sub_254FC5A20(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_254FC5A10();
        sub_254FD1648(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_254FC0048(&qword_27F76C8D0, &qword_254FF3178);
    sub_254FC5D88(v11, v12, v13, v11);
    goto LABEL_11;
  }

  sub_254FC5DEC();
  if (!v4)
  {
    sub_254FC59AC();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254FC3F94()
{
  sub_254FC5C1C();
  if (v3)
  {
    sub_254FC5C0C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254FC5BFC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_254FC4360(*(v0 + 16), v4, &qword_27F76C8A8, &unk_254FF3160, type metadata accessor for SportsEvent);
  type metadata accessor for SportsEvent(0);
  sub_254FC5A54();
  if (v1)
  {
    v8 = sub_254FC5BEC(v7);
    sub_254FD1764(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void sub_254FC4070()
{
  sub_254FC5DF8();
  if ((v3 & 1) == 0 || (sub_254FC59CC(), v4 == v5))
  {
LABEL_6:
    sub_254FC59BC();
    if (v2)
    {
      sub_254FC0048(&qword_27F76C8A0, &qword_254FF47C0);
      v9 = swift_allocObject();
      sub_254FC5F38(v9);
      sub_254FC5A20(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_254FC5A10();
        sub_254FD1838(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_254FC5D88(v6, v7, v8, &type metadata for SportsTeam);
    goto LABEL_11;
  }

  sub_254FC5DEC();
  if (!v4)
  {
    sub_254FC59AC();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254FC412C()
{
  sub_254FC5DF8();
  if ((v4 & 1) == 0 || (sub_254FC59CC(), v5 == v6))
  {
LABEL_6:
    sub_254FC59BC();
    if (v3)
    {
      sub_254FC0048(&qword_27F76C898, &unk_254FF3150);
      v7 = sub_254FC5F08();
      sub_254FC5F38(v7);
      sub_254FC5A20(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_254FC5A10();
        sub_254FD1610(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_254FC5DEC();
  if (!v5)
  {
    sub_254FC59AC();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_254FC41E4(uint64_t a1, uint64_t a2)
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

  sub_254FC0048(&qword_27F76C8F8, &unk_254FF31A0);
  v4 = *(sub_254FC0048(&qword_27F76C838, &unk_254FF30E0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_254FC42EC(uint64_t a1, uint64_t a2)
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

  sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
  v4 = sub_254FC5F08();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_254FC4360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  sub_254FC0048(a3, a4);
  v8 = a5(0);
  sub_254FC58B0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_254FC4454(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254FC4518(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_254FC4B5C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_254FC49C4(v11);
  return v7;
}

unint64_t sub_254FC4518(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254FC4618(a5, a6);
    *a1 = v9;
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
    result = sub_254FF2284();
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

uint64_t sub_254FC4618(uint64_t a1, unint64_t a2)
{
  v3 = sub_254FC4664(a1, a2);
  sub_254FC477C(&unk_2867307E8);
  return v3;
}

uint64_t sub_254FC4664(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_254FF1FF4())
  {
    result = sub_254FC4860(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_254FF2234();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_254FF2284();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_254FC477C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_254FC48D0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_254FC4860(uint64_t a1, uint64_t a2)
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

  sub_254FC0048(&qword_27F76C908, &unk_254FF31B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_254FC48D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_254FC0048(&qword_27F76C908, &unk_254FF31B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_254FC49C4(void *a1)
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

uint64_t sub_254FC4A10(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_254FC4A60(uint64_t a1)
{
  sub_254FC5D10(a1);
  sub_254FF1FC4();
  v3 = sub_254FF2434();

  return sub_254FC4E18(v2, v1, v3);
}

unint64_t sub_254FC4AC4(uint64_t a1)
{
  v2 = sub_254FF21D4();

  return sub_254FC4ECC(a1, v2);
}

uint64_t sub_254FC4B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254FC4BE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254FC4BF4(a1, a2);
  }

  return a1;
}

uint64_t sub_254FC4BF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_254FC4C4C(uint64_t a1)
{
  sub_254FC5D10(a1);
  sub_254FF2424();
  if (v1)
  {
    sub_254FF1FC4();
  }

  v3 = sub_254FF2434();

  return sub_254FC4F90(v2, v1, v3);
}

unint64_t sub_254FC4CCC(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x259C31AF0](*(v1 + 40), a1, 4);

  return sub_254FC505C(v2, v3);
}

unint64_t sub_254FC4D14(uint64_t a1)
{
  sub_254FF1CD4();
  sub_254FC5678(&qword_27F76C8B0, MEMORY[0x277D1F348]);
  v2 = sub_254FF1EF4();

  return sub_254FC50BC(a1, v2);
}

unint64_t sub_254FC4E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_254FF2364() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254FC4ECC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_254FC5714(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x259C318E0](v8, a1);
    sub_254FC4B08(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254FC4F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_254FF2364() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_254FC505C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_254FC50BC(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_254FF1CD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_254FC5678(&qword_27F76C8B8, MEMORY[0x277D1F350]);
    v9 = sub_254FF1F14();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_254FC5264(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_254FD9A08(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_254FF1434();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_254FC538C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_254FC0048(a2, a3);
  sub_254FC5864();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_254FC53E4()
{
  result = qword_27F76C890;
  if (!qword_27F76C890)
  {
    sub_254FC5448(&qword_27F76C880, &qword_254FF3120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C890);
  }

  return result;
}

uint64_t sub_254FC5448(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254FC5490(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_254FC5864();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_254FC54E8()
{
  sub_254FC5DD4();
  v1(0);
  sub_254FC5864();
  v2 = sub_254FBF6B0();
  v3(v2);
  return v0;
}

uint64_t getEnumTagSinglePayload for AppUsageAction(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppUsageAction(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254FC5630);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254FC5678(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_254FF1CD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254FC56BC()
{
  sub_254FC5DD4();
  v1(0);
  sub_254FC5864();
  v2 = sub_254FBF6B0();
  v3(v2);
  return v0;
}

uint64_t sub_254FC5770()
{
  sub_254FC5DD4();
  sub_254FC0048(v1, v2);
  sub_254FC5864();
  v3 = sub_254FBF6B0();
  v4(v3);
  return v0;
}

uint64_t sub_254FC57C8()
{
  sub_254FC5DD4();
  sub_254FC0048(v1, v2);
  sub_254FC5864();
  v3 = sub_254FBF6B0();
  v4(v3);
  return v0;
}

void sub_254FC5980()
{
  v3 = *(v2 - 640);
  *(v3 + 16) = v1;
  v4 = v3 + 16 * v0;
  v5 = *(v2 - 600);
  *(v4 + 32) = *(v2 - 624);
  *(v4 + 40) = v5;
}

__n128 sub_254FC59F0()
{
  result = *(v0 - 208);
  *(v0 - 176) = *(v0 - 224);
  *(v0 - 160) = result;
  *(v0 - 144) = *(v0 - 192);
  return result;
}

uint64_t sub_254FC5A8C()
{

  return swift_arrayInitWithCopy();
}

void sub_254FC5AAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_254FC5ACC()
{

  return swift_dynamicCast();
}

uint64_t sub_254FC5B0C()
{

  return sub_254FF1F84();
}

uint64_t sub_254FC5B88(uint64_t a1)
{
  v4 = (*(v1 + 56) + 16 * a1);
  v5 = v4[1];
  *(v2 - 624) = *v4;
  *(v2 - 600) = v5;
}

uint64_t sub_254FC5BB4(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_254FC4B5C(v4, v2 - 256);
}

void sub_254FC5C4C(uint64_t a1@<X8>)
{
  *(v1 - 224) = a1;
  v3 = *(v1 - 592);

  sub_254FC4DB8(0, v3, 0);
}

void *sub_254FC5D10(uint64_t a1, ...)
{

  return sub_254FF2404();
}

uint64_t sub_254FC5D34()
{
  v3 = *(v1 - 592);

  return sub_254FC4BE0(v3, v0);
}

double sub_254FC5D50()
{

  return sub_254FBFFE4(v1 - 224, v0, (v1 - 256));
}

void sub_254FC5D6C()
{

  JUMPOUT(0x259C316D0);
}

uint64_t sub_254FC5D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_254FC5DA4()
{
}

uint64_t sub_254FC5DBC()
{

  return swift_task_alloc();
}

uint64_t sub_254FC5E68(uint64_t a1)
{
  *(v1 - 632) = a1;
}

id sub_254FC5E88(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *sub_254FC5EA8()
{

  return sub_254FF21F4();
}

void sub_254FC5EC8(uint64_t a1)
{

  sub_254FC4DB8(a1, v1, 1);
}

void sub_254FC5EE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_254FC5F08()
{

  return swift_allocObject();
}

unint64_t sub_254FC5F20()
{

  return sub_254FC4AC4(v0 - 224);
}

uint64_t AppUsageResult.startTime.getter()
{
  v0 = sub_254FC77BC();
  type metadata accessor for AppUsageResult(v0);
  sub_254FF1614();
  sub_254FC5864();
  v1 = sub_254FC7770();

  return v2(v1);
}

uint64_t AppUsageResult.endTime.getter()
{
  v0 = sub_254FC77BC();
  type metadata accessor for AppUsageResult(v0);
  sub_254FF1614();
  sub_254FC5864();
  v1 = sub_254FC7770();

  return v2(v1);
}

uint64_t static AppUsageResult.== infix(_:_:)(uint64_t a1)
{
  sub_254FC7754(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (sub_254FF2364()) && (v6 = type metadata accessor for AppUsageResult(0), sub_254FC77D4(v6[6]), (sub_254FF15E4()) && (sub_254FC77D4(v6[7]), (sub_254FF15E4()) && *(v2 + v6[8]) == *(v1 + v6[8]))
  {
    v7 = *(v2 + 16) ^ *(v1 + 16) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t AppDisplayInfo.artworkData.getter()
{
  v0 = sub_254FBF6B0();
  sub_254FC6138(v0, v1);
  return sub_254FBF6B0();
}

uint64_t sub_254FC6138(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254FC614C(a1, a2);
  }

  return a1;
}

uint64_t sub_254FC614C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t AppDisplayInfo.artworkURL.getter()
{
  v2 = sub_254FC77BC();
  v3 = v1 + *(type metadata accessor for AppDisplayInfo(v2) + 24);

  return sub_254FC6204(v3, v0);
}

uint64_t sub_254FC6204(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppDisplayInfo.init(displayName:artworkData:artworkURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AppDisplayInfo(0) + 24);

  return sub_254FC62C4(a5, v7);
}

uint64_t sub_254FC62C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AppDisplayInfo.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_254FF1524();
  sub_254FC583C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_254FC7780();
  v10 = v9 - v8;
  sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_254FC0048(&qword_27F76C918, &qword_254FF31C8);
  sub_254FC5864();
  sub_254FC77C8();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (sub_254FF2364() & 1) == 0)
  {
    return 0;
  }

  v40 = v10;
  v41 = v13;
  v20 = a1[2];
  v19 = a1[3];
  v21 = a2[2];
  v22 = a2[3];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      v39 = v6;
      v23 = sub_254FC76F8();
      sub_254FC4BE0(v23, v24);
      goto LABEL_12;
    }

LABEL_10:
    v25 = sub_254FC76F8();
    sub_254FC4BE0(v25, v26);
    sub_254FC4BE0(v21, v22);
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v39 = v6;
  v27 = sub_254FC76F8();
  v28 = MEMORY[0x259C30C40](v27);
  sub_254FC4BE0(v21, v22);
  sub_254FC4BE0(v20, v19);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v29 = *(type metadata accessor for AppDisplayInfo(0) + 24);
  v30 = *(v14 + 48);
  sub_254FC6204(a1 + v29, v17);
  sub_254FC6204(a2 + v29, &v17[v30]);
  sub_254FC77E0(v17);
  if (!v18)
  {
    v31 = v41;
    sub_254FC6204(v17, v41);
    sub_254FC77E0(&v17[v30]);
    if (!v32)
    {
      v34 = v39;
      v35 = v40;
      (*(v39 + 32))(v40, &v17[v30], v4);
      sub_254FC6F50(&qword_27F76C920, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v36 = sub_254FF1F14();
      v37 = *(v34 + 8);
      v37(v35, v4);
      v37(v31, v4);
      sub_254FC538C(v17, &qword_27F76C910, &qword_254FF31C0);
      return (v36 & 1) != 0;
    }

    (*(v39 + 8))(v31, v4);
LABEL_20:
    sub_254FC538C(v17, &qword_27F76C918, &qword_254FF31C8);
    return 0;
  }

  sub_254FC77E0(&v17[v30]);
  if (!v18)
  {
    goto LABEL_20;
  }

  sub_254FC538C(v17, &qword_27F76C910, &qword_254FF31C0);
  return 1;
}

uint64_t DeviceUser.intentPerson.getter()
{
  v0 = sub_254FC77BC();
  type metadata accessor for DeviceUser(v0);
  sub_254FF1444();
  sub_254FC5864();
  v1 = sub_254FC7770();

  return v2(v1);
}

uint64_t static DeviceUser.== infix(_:_:)(uint64_t a1)
{
  sub_254FC7754(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_254FF2364() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceUser(0);
  sub_254FC77D4(*(v4 + 20));

  return sub_254FF13C4();
}

uint64_t DeviceUser.hashValue.getter()
{
  sub_254FF2404();
  sub_254FF1FC4();
  return sub_254FF2434();
}

uint64_t sub_254FC67D8@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceUser.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FC6808(uint64_t a1)
{
  sub_254FF2404();
  sub_254FF1FC4();
  return sub_254FF2434();
}

uint64_t Device.user.getter@<X0>(uint64_t a1@<X8>)
{
  sub_254FC77A0();

  return sub_254FC6E34(v1 + v3, a1);
}

uint64_t Device.init(thisDeviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_254FC0048(&qword_27F76C860, &qword_254FF3100);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  sub_254FC0048(&qword_27F76C868, &qword_254FF3108);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_254FF13D4();
  sub_254FC583C();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_254FC7780();
  v18 = (v17 - v16);
  sub_254FF1394();
  sub_254FC583C();
  MEMORY[0x28223BE20](v19);
  sub_254FC7780();
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0x7665442073696854;
  *(a3 + 32) = 0xEB00000000656369;
  *a3 = 1;
  (*(v22 + 104))(v21 - v20, *MEMORY[0x277CB9CD8]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  (*(v14 + 104))(v18, *MEMORY[0x277CB9CF8], v12);
  v23 = sub_254FF1434();
  sub_254FC4BB8(v11, 1, 1, v23);
  v24 = sub_254FF1474();
  sub_254FC4BB8(v8, 1, 1, v24);
  sub_254FC77A0();
  v26 = (a3 + v25);
  type metadata accessor for DeviceUser(0);
  result = sub_254FF13A4();
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  return result;
}

uint64_t Device.init(id:name:user:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  sub_254FC77A0();
  result = sub_254FC6E98(a5, a6 + v8);
  *a6 = 0;
  return result;
}

BOOL static Device.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  result = 0;
  if (v5 || (sub_254FF2364() & 1) != 0)
  {
    v6 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v6 || (sub_254FF2364() & 1) != 0)
    {
      sub_254FC77A0();
      v8 = (a1 + v7);
      v9 = (a2 + v7);
      v10 = *v8 == *v9 && v8[1] == v9[1];
      if (v10 || (sub_254FF2364() & 1) != 0)
      {
        v11 = type metadata accessor for DeviceUser(0);
        sub_254FC77D4(*(v11 + 20));
        if (sub_254FF13C4())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t Device.hash(into:)(uint64_t a1)
{
  sub_254FF2424();
  sub_254FF1FC4();
  sub_254FF1FC4();
  sub_254FC77A0();

  return sub_254FF1FC4();
}

uint64_t Device.hashValue.getter()
{
  sub_254FF2404();
  Device.hash(into:)(v1);
  return sub_254FF2434();
}

uint64_t sub_254FC6D4C@<X0>(uint64_t *a1@<X8>)
{
  result = Device.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FC6D7C(uint64_t a1)
{
  sub_254FF2404();
  Device.hash(into:)(v2);
  return sub_254FF2434();
}

uint64_t sub_254FC6DFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254FC6E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FC6E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FC6F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254FC6FF4()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 8));
  }

  sub_254FC7790();
  sub_254FF1614();
  v4 = sub_254FC7748(*(v1 + 24));

  return sub_254FC5364(v4, v5, v6);
}

void sub_254FC7070()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_254FF1614();
    v5 = sub_254FC7728(*(v4 + 24));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

uint64_t sub_254FC70DC(uint64_t a1)
{
  result = sub_254FF1614();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254FC7184()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 8));
  }

  v4 = v1;
  sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  v5 = sub_254FC7748(*(v4 + 24));

  return sub_254FC5364(v5, v6, v7);
}

void sub_254FC7214()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
    v5 = sub_254FC7728(*(v4 + 24));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

void sub_254FC728C(uint64_t a1)
{
  sub_254FC7320();
  if (v1 <= 0x3F)
  {
    sub_254FC7370(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254FC7320()
{
  if (!qword_27F76C958)
  {
    v0 = sub_254FF21A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F76C958);
    }
  }
}

void sub_254FC7370(uint64_t a1)
{
  if (!qword_27F76C960)
  {
    sub_254FF1524();
    v1 = sub_254FF21A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F76C960);
    }
  }
}

uint64_t sub_254FC73DC()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 8));
  }

  sub_254FC7790();
  sub_254FF1444();
  v4 = sub_254FC7748(*(v1 + 20));

  return sub_254FC5364(v4, v5, v6);
}

void sub_254FC7458()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_254FF1444();
    v5 = sub_254FC7728(*(v4 + 20));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

uint64_t sub_254FC74C4(uint64_t a1)
{
  result = sub_254FF1444();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254FC7554()
{
  sub_254FC7738();
  if (v2)
  {
    return sub_254FC76D0(*(v0 + 16));
  }

  v4 = sub_254FC7790();
  type metadata accessor for DeviceUser(v4);
  v5 = sub_254FC7748(*(v1 + 28));

  return sub_254FC5364(v5, v6, v7);
}

void sub_254FC75D0()
{
  sub_254FC76E4();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for DeviceUser(0);
    v5 = sub_254FC7728(*(v4 + 28));

    sub_254FC4BB8(v5, v6, v7, v8);
  }
}

uint64_t sub_254FC763C(uint64_t a1)
{
  result = type metadata accessor for DeviceUser(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254FC76D0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_254FC76F8()
{
  sub_254FC6138(v2, v1);
  sub_254FC6138(v0, v3);
  return v2;
}

IntelligencePlatformDataActions::AppUsageType_optional __swiftcall AppUsageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppUsageType.rawValue.getter()
{
  v1 = 7368801;
  if (*v0 != 1)
  {
    v1 = 0x65746973626577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

unint64_t sub_254FC78B8()
{
  result = qword_27F76C988;
  if (!qword_27F76C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C988);
  }

  return result;
}

uint64_t sub_254FC7930@<X0>(uint64_t *a1@<X8>)
{
  result = AppUsageType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppUsageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppUsageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254FC7B68);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254FC7BB0()
{
  result = qword_27F76C990;
  if (!qword_27F76C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C990);
  }

  return result;
}

uint64_t DataActionError.hashValue.getter()
{
  v1 = *v0;
  sub_254FF2404();
  MEMORY[0x259C31B10](v1);
  return sub_254FF2434();
}

uint64_t sub_254FC7C98(uint64_t a1)
{
  v2 = *v1;
  sub_254FF2404();
  MEMORY[0x259C31B10](v2);
  return sub_254FF2434();
}

uint64_t DataActionError.localizedStringResource.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = "ctivity AS SA\n    WHERE 1";
  if (v2 == 4)
  {
    v3 = "The action failed to run.";
  }

  else
  {
    v1 = 0xD000000000000019;
  }

  v4 = v2 == 3;
  if (v2 == 3)
  {
    v5 = "Invalid time range.";
  }

  else
  {
    v5 = v3;
  }

  if (v4)
  {
    v6 = 0xD000000000000027;
  }

  else
  {
    v6 = v1;
  }

  return MEMORY[0x28211CB40](v6, v5 | 0x8000000000000000);
}

unint64_t sub_254FC7D48()
{
  result = qword_27F76C998;
  if (!qword_27F76C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C998);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataActionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DataActionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254FC7EF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254FC7F5C()
{
  type metadata accessor for DataActionsQueryService.GuardedData();
  v0 = swift_allocObject();
  sub_254FC9040(v0);
  sub_254FC0048(&qword_27F76C9A8, &unk_254FF3630);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_27F76C9A0 = result;
  return result;
}

uint64_t static DataActionsQueryService.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F76C790 != -1)
  {
    swift_once();
  }

  *a1 = qword_27F76C9A0;
}

uint64_t sub_254FC802C()
{
  sub_254FC8740(v0 + 16, &qword_27F76C840, &qword_254FF4810);
  sub_254FC8740(v0 + 56, &qword_27F76C9B0, &unk_254FF3640);
  sub_254FC8740(v0 + 96, &qword_27F76C850, &qword_254FF30F0);
  return v0;
}

uint64_t sub_254FC808C()
{
  sub_254FC802C();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_254FC80C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_254FC8F74(v3 + 16, &v15, &qword_27F76C840, &qword_254FF4810);
  if (v16)
  {
    return sub_254FC38F0(&v15, a2);
  }

  sub_254FC8740(&v15, &qword_27F76C840, &qword_254FF4810);
  if (qword_27F76C7A8 != -1)
  {
    swift_once();
  }

  v5 = qword_27F76EC98;
  v16 = type metadata accessor for IPSQLQuerySource(0);
  v17 = &protocol witness table for IPSQLQuerySource;
  *&v15 = v5;
  sub_254FC9068(v3 + 16, v6);

  sub_254FC905C();
  sub_254FC8FC0(v7, v8, v9, v10);
  swift_endAccess();
  sub_254FC905C();
  return sub_254FC8F74(v11, v12, v13, v14);
}

void sub_254FC8214(void (*a1)(os_unfair_lock_s *))
{
  v3 = *v1;
  os_unfair_lock_lock(v3 + 6);
  a1(v3 + 4);

  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_254FC827C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_254FC8F74(v3 + 56, &v14, &qword_27F76C9B0, &unk_254FF3640);
  if (v15)
  {
    return sub_254FC38F0(&v14, a2);
  }

  sub_254FC8740(&v14, &qword_27F76C9B0, &unk_254FF3640);
  if (qword_27F76C7B0 != -1)
  {
    swift_once();
  }

  v15 = &type metadata for LiveGlobalKnowledgeQuerySource;
  v16 = &protocol witness table for LiveGlobalKnowledgeQuerySource;
  *&v14 = swift_allocObject();
  sub_254FC8F18(qword_27F76ECA0, v14 + 16);
  sub_254FC9068(v3 + 56, v5);
  sub_254FC905C();
  sub_254FC8FC0(v6, v7, v8, v9);
  swift_endAccess();
  sub_254FC905C();
  return sub_254FC8F74(v10, v11, v12, v13);
}

uint64_t sub_254FC83D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_254FC8F74(v3 + 96, &v13, &qword_27F76C850, &qword_254FF30F0);
  if (v14)
  {
    sub_254FC38F0(&v13, &v15);
    return sub_254FC38F0(&v15, a2);
  }

  else
  {
    sub_254FC8740(&v13, &qword_27F76C850, &qword_254FF30F0);
    v5 = type metadata accessor for DeviceActivityHelpers(0);
    v6 = [objc_allocWithZone(v5) init];
    v16 = v5;
    v17 = &protocol witness table for DeviceActivityHelpers;
    *&v15 = v6;
    sub_254FC9068(v3 + 96, v7);
    v8 = v6;
    sub_254FC905C();
    sub_254FC8FC0(v9, v10, v11, v12);
    result = swift_endAccess();
    a2[3] = v5;
    a2[4] = &protocol witness table for DeviceActivityHelpers;
    *a2 = v8;
  }

  return result;
}

uint64_t DataActionsQueryService.init(sqlService:liveGlobalKnowledgeQueryService:deviceActivitysource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for DataActionsQueryService.GuardedData();
  v8 = swift_allocObject();
  sub_254FC9040(v8);
  sub_254FC0048(&qword_27F76C9A8, &unk_254FF3630);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;

  os_unfair_lock_lock((v9 + 24));
  sub_254FC8720((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  *a4 = v9;
  sub_254FC8740(a3, &qword_27F76C850, &qword_254FF30F0);
  sub_254FC8740(a2, &qword_27F76C9B0, &unk_254FF3640);
  return sub_254FC8740(a1, &qword_27F76C840, &qword_254FF4810);
}

uint64_t sub_254FC862C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  sub_254FC8E94(a2, v7 + 16, &qword_27F76C840, &qword_254FF4810);
  swift_endAccess();
  swift_beginAccess();
  sub_254FC8E94(a3, v7 + 56, &qword_27F76C9B0, &unk_254FF3640);
  swift_endAccess();
  swift_beginAccess();
  sub_254FC8E94(a4, v7 + 96, &qword_27F76C850, &qword_254FF30F0);
  return swift_endAccess();
}

uint64_t sub_254FC8740(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254FC0048(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for DataActionsQueryService(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for DataActionsQueryService(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for DataActionsQueryService(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DataActionsQueryService(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DataActionsQueryService(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of DeviceActivitySource.fetchSegments(startDate:endDate:userId:deviceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 40) + **(a8 + 40));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_254FC8B74;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_254FC8B74(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DeviceActivitySource.fetchAppInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_254FC8D98;

  return v9(a1, a2, a3);
}

uint64_t sub_254FC8D98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_254FC8E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254FC9020(a1, a2, a3, a4);
  sub_254FC900C();
  (*(v6 + 24))(v4, v5);
  return v4;
}

uint64_t sub_254FC8EE0()
{
  sub_254FC49C4((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_254FC8F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254FC9020(a1, a2, a3, a4);
  sub_254FC900C();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_254FC8FC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254FC9020(a1, a2, a3, a4);
  sub_254FC900C();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_254FC9020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_254FC0048(a3, a4);
}

double sub_254FC9040(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_254FC9068(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_254FC9084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_254FD36D8();
  v4 = sub_254FC0048(v2, v3);
  v5 = sub_254FD32E4(v4);
  MEMORY[0x28223BE20](v5);
  sub_254FC590C();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20[-v10];
  swift_beginAccess();
  sub_254FD36B4();
  sub_254FC5770();
  v12 = sub_254FF1BD4();
  if (sub_254FC5364(v11, 1, v12) == 1)
  {
    sub_254FC538C(v11, &qword_27F76CAB0, &qword_254FF38C0);
    sub_254FF1BC4();
    sub_254FD319C();
    (*(v13 + 16))(v8, a1, v12);
    sub_254FD3864();
    sub_254FC4BB8(v14, v15, v16, v17);
    swift_beginAccess();
    sub_254FD2F5C();
    return swift_endAccess();
  }

  else
  {
    sub_254FD319C();
    sub_254FD36B4();
    return v19();
  }
}

uint64_t sub_254FC9244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_254FD36D8();
  v4 = sub_254FC0048(v2, v3);
  v5 = sub_254FD32E4(v4);
  MEMORY[0x28223BE20](v5);
  sub_254FC590C();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20[-v10];
  swift_beginAccess();
  sub_254FD36B4();
  sub_254FC5770();
  v12 = sub_254FF1B14();
  if (sub_254FC5364(v11, 1, v12) == 1)
  {
    sub_254FC538C(v11, &qword_27F76CAB8, &qword_254FF38C8);
    sub_254FF1B04();
    sub_254FF1AC4();
    sub_254FD319C();
    (*(v13 + 16))(v8, a1, v12);
    sub_254FD3864();
    sub_254FC4BB8(v14, v15, v16, v17);
    swift_beginAccess();
    sub_254FD2F5C();
    return swift_endAccess();
  }

  else
  {
    sub_254FD319C();
    sub_254FD36B4();
    return v19();
  }
}

id sub_254FC940C()
{
  v1 = OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache;
  v2 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache);
  }

  else
  {
    v4 = sub_254FC946C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_254FC946C()
{
  v0 = [objc_opt_self() sharedCache];
  v1 = [objc_allocWithZone(MEMORY[0x277D4B898]) init];
  v2 = [v1 persistentContainer];

  [v0 setPersistentContainer_];
  return v0;
}

char *sub_254FC9508()
{
  v1 = v0;
  v254 = sub_254FF1BD4();
  sub_254FC583C();
  v245 = v2;
  MEMORY[0x28223BE20](v3);
  sub_254FC5888();
  sub_254FC58C0(v4);
  v280 = sub_254FF1EB4();
  sub_254FC583C();
  v268 = v5;
  MEMORY[0x28223BE20](v6);
  sub_254FC590C();
  sub_254FD355C();
  MEMORY[0x28223BE20](v7);
  v277 = &v209 - v8;
  v9 = sub_254FD31A8();
  v266 = type metadata accessor for Device(v9);
  sub_254FC583C();
  v267 = v10;
  MEMORY[0x28223BE20](v11);
  sub_254FC590C();
  sub_254FD355C();
  MEMORY[0x28223BE20](v12);
  v274 = &v209 - v13;
  v14 = sub_254FC0048(&qword_27F76C860, &qword_254FF3100);
  v15 = sub_254FD32E4(v14);
  MEMORY[0x28223BE20](v15);
  sub_254FC58C0(&v209 - v16);
  v265 = sub_254FF1424();
  sub_254FC583C();
  v256 = v17;
  MEMORY[0x28223BE20](v18);
  sub_254FC5888();
  v264 = v19;
  v20 = sub_254FC0048(&qword_27F76C868, &qword_254FF3108);
  v21 = sub_254FD32E4(v20);
  MEMORY[0x28223BE20](v21);
  sub_254FC58C0(&v209 - v22);
  v262 = sub_254FF13D4();
  sub_254FC583C();
  v252 = v23;
  MEMORY[0x28223BE20](v24);
  sub_254FC5888();
  sub_254FC58C0(v25);
  v260 = sub_254FF1394();
  sub_254FC583C();
  v251 = v26;
  MEMORY[0x28223BE20](v27);
  sub_254FC5888();
  v29 = sub_254FC58C0(v28);
  v258 = type metadata accessor for DeviceUser(v29);
  sub_254FC5864();
  MEMORY[0x28223BE20](v30);
  sub_254FC5888();
  v257 = v31;
  v32 = sub_254FC0048(&qword_27F76C9B8, &qword_254FF3740);
  v33 = sub_254FD32E4(v32);
  MEMORY[0x28223BE20](v33);
  sub_254FC58C0(&v209 - v34);
  v279 = sub_254FF14D4();
  sub_254FC583C();
  v250 = v35;
  MEMORY[0x28223BE20](v36);
  sub_254FC5888();
  v275 = v37;
  sub_254FD31A8();
  v276 = sub_254FF1A44();
  sub_254FC583C();
  v248 = v38;
  MEMORY[0x28223BE20](v39);
  sub_254FC590C();
  sub_254FD355C();
  MEMORY[0x28223BE20](v40);
  sub_254FC58C0(&v209 - v41);
  v282 = sub_254FF19C4();
  sub_254FC583C();
  v253 = v42;
  MEMORY[0x28223BE20](v43);
  sub_254FC5888();
  v278 = v44;
  sub_254FD31A8();
  v281 = sub_254FF1A74();
  sub_254FC583C();
  v247 = v45;
  MEMORY[0x28223BE20](v46);
  sub_254FC5888();
  *&v286 = v47;
  sub_254FD31A8();
  sub_254FF1A94();
  sub_254FC583C();
  v284 = v48;
  v285 = v49;
  MEMORY[0x28223BE20](v48);
  sub_254FC5888();
  v283 = v50;
  sub_254FD31A8();
  v249 = sub_254FF1B54();
  sub_254FC583C();
  v255 = v51;
  MEMORY[0x28223BE20](v52);
  sub_254FC7780();
  v55 = v54 - v53;
  v56 = sub_254FF1BA4();
  sub_254FC583C();
  v246 = v57;
  MEMORY[0x28223BE20](v58);
  sub_254FC7780();
  v61 = v60 - v59;
  v62 = sub_254FF1B14();
  sub_254FC583C();
  v273 = v63;
  MEMORY[0x28223BE20](v64);
  sub_254FC590C();
  v67 = v65 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = &v209 - v69;
  v71 = sub_254FC0048(&qword_27F76C9C0, &qword_254FF3748);
  v72 = sub_254FF1EE4();
  sub_254FCF824();
  if (v0)
  {
LABEL_3:

    return v70;
  }

  v237 = v71;
  v240 = v67;
  v73 = v273;
  v242 = v62;
  v239 = v55;
  v241 = v61;
  v238 = v56;
  v269 = v72;
  sub_254FC9244(v70);
  v235 = sub_254FF1AD4();
  v75 = v73 + 8;
  v74 = *(v73 + 8);
  v74(v70, v242);
  sub_254FCAF24();
  v78 = v76;
  if (!v76)
  {
    sub_254FD37C0();

    sub_254FF1D14();
    v192 = sub_254FF1EA4();
    v193 = sub_254FF2174();
    if (os_log_type_enabled(v192, v193))
    {
      sub_254FC5B38();
      v194 = swift_slowAlloc();
      *v194 = 0;
      _os_log_impl(&dword_254FBD000, v192, v193, "DeviceActivityHelpers: Local user identifier not found. Returning default device", v194, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    v195 = sub_254FD34DC();
    v196(v195);
    sub_254FC0048(&qword_27F76C9C8, &unk_254FF3750);
    inited = swift_initStackObject();
    v286 = xmmword_254FF3720;
    *(inited + 16) = xmmword_254FF3720;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    sub_254FC0048(&qword_27F76C8F0, &qword_254FF3198);
    v198 = (*(v267 + 80) + 32) & ~*(v267 + 80);
    v199 = swift_allocObject();
    *(v199 + 16) = v286;
    v200 = v244;
    sub_254FC9084(v244);
    v201 = sub_254FF1BB4();
    v203 = v202;
    v204 = v201;
    v245[1](v200, v254);
    Device.init(thisDeviceIdentifier:)(v204, v203, v199 + v198);
    *(inited + 48) = v199;
    sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
    sub_254FD1858();
    sub_254FBF6B0();
    v70 = sub_254FF1EE4();
    sub_254FD37CC();
    goto LABEL_3;
  }

  v218 = v74;
  v273 = v75;
  sub_254FD37C0();
  v220 = *MEMORY[0x277CC5840];
  sub_254FD38B0();
  v219 = v79;
  v255 = v285 + 16;
  v254 = v285 + 8;
  sub_254FD38BC();
  v253 = v80;
  v234 = v250 + 32;
  v233 = *MEMORY[0x277CB9CC8];
  sub_254FD38B0();
  v232 = v81;
  v231 = v82 + 16;
  v230 = *MEMORY[0x277CB9D08];
  sub_254FD38B0();
  v229 = v83;
  v228 = *MEMORY[0x277CB9D48];
  sub_254FD38B0();
  v227 = v84;
  v226 = v85 + 8;
  sub_254FD38BC();
  v251 = v86;
  sub_254FD38BC();
  v248 = v87;
  sub_254FD38BC();
  v217 = v95;
  v96 = v277;
  v97 = v278;
  v98 = v272;
  v70 = v284;
LABEL_6:
  v99 = v239;
LABEL_7:
  if (v94)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v100 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      break;
    }

    if (v100 >= v89)
    {

      sub_254FD37CC();
      v70 = sub_254FCAC48(v78, v190, v191);
      goto LABEL_3;
    }

    v94 = *(v92 + 8 * v100);
    ++v93;
    if (v94)
    {
      v93 = v100;
LABEL_12:
      v101 = __clz(__rbit64(v94));
      v94 &= v94 - 1;
      v102 = v101 | (v93 << 6);
      v103 = *(*(v88 + 56) + 8 * v102);
      v104 = *(v103 + 16);
      if (!v104)
      {
        goto LABEL_7;
      }

      v210 = v94;
      v211 = v93;
      v245 = v90;
      v212 = v89;
      v213 = v92;
      v214 = v104;
      v105 = (*(v88 + 48) + 16 * v102);
      v107 = *v105;
      v106 = v105[1];
      v215 = v103 + 32;
      v223 = v91;
      v246 = v107;
      v224 = v78;
      v109 = v91 == v107 && v78 == v106;
      v225 = v109;
      v110 = v106;
      v111 = v103;

      v216 = v111;

      v112 = 0;
      while (2)
      {
        if (v112 >= *(v216 + 16))
        {
          goto LABEL_69;
        }

        v222 = v112;
        v113 = (v215 + 16 * v112);
        v114 = v113[1];
        v237 = *v113;

        sub_254FF1484();
        sub_254FC5AE8();
        v115(v99, v220, v249);

        v236 = v114;
        sub_254FF1B84();
        sub_254FC9244(v240);
        v116 = sub_254FF1AE4();
        if (v1)
        {

          sub_254FD37C0();

          v205 = sub_254FD3334();
          v206(v205);
          sub_254FC5AE8();
          v207 = sub_254FD3824();
          v208(v207);
          goto LABEL_3;
        }

        v117 = v116;
        v221 = 0;
        v118 = sub_254FD3334();
        v119(v118);
        v256 = *(v117 + 16);
        if (v256)
        {
          v120 = 0;
          sub_254FD318C();
          v252 = v117 + v121;
          v122 = v283;
          v250 = v117;
          while (1)
          {
            if (v120 >= *(v117 + 16))
            {
              __break(1u);
              goto LABEL_66;
            }

            (*(v285 + 16))(v122, v252 + *(v285 + 72) * v120, v70);
            sub_254FF1A84();
            v123 = sub_254FD31FC();
            v124(v123);
            sub_254FF1A64();
            v125 = sub_254FF19B4();
            v127 = v126;
            sub_254FC5AE8();
            v128(v97, v282);
            if (!v127)
            {
              goto LABEL_31;
            }

            v247 = v125;
            v268 = v127;
            sub_254FF1A54();
            v129 = sub_254FF1A34();
            v131 = v130;
            v132 = *v245;
            v133 = v276;
            (*v245)(v98, v276);
            if (!v131)
            {
              break;
            }

            v244 = v129;
            v134 = v270;
            sub_254FF1A54();
            v135 = v271;
            sub_254FF1A14();
            v132(v134, v133);
            v136 = v279;
            if (sub_254FC5364(v135, 1, v279) == 1)
            {

              sub_254FC538C(v135, &qword_27F76C9B8, &qword_254FF3740);
              v96 = v277;
              v98 = v272;
LABEL_30:
              v97 = v278;
LABEL_31:
              sub_254FF1D14();
              v137 = sub_254FF1EA4();
              v138 = sub_254FF2174();
              if (os_log_type_enabled(v137, v138))
              {
                sub_254FC5B38();
                v139 = swift_slowAlloc();
                *v139 = 0;
                _os_log_impl(&dword_254FBD000, v137, v138, "DeviceActivityHelpers: No user information provided, skipping", v139, 2u);
                sub_254FC592C();
                MEMORY[0x259C32150]();
              }

              sub_254FC5AE8();
              v140(v96, v280);
              v141 = v281;
              v142 = v286;
              goto LABEL_34;
            }

            sub_254FC5AE8();
            v144(v275, v135, v136);
            v145 = v262;
            v146 = v260;
            v147 = v246;
            if (v225 || (v148 = sub_254FF2364(), v149 = 0, (v148 & 1) != 0))
            {
              v149 = 1;
            }

            v243 = v149;
            v150 = v259;
            *v259 = v147;
            v150[1] = v110;
            sub_254FC5AE8();
            v151(v150, v233, v146);
            sub_254FC5AE8();
            v152 = v261;
            v153(v261, v275, v279);
            sub_254FC5AE8();
            v154(v152, v230, v145);
            sub_254FC5AE8();
            v155(v264, v228, v265);
            swift_bridgeObjectRetain_n();
            v156 = v263;
            sub_254FF1414();
            v157 = sub_254FF1434();
            sub_254FC4BB8(v156, 0, 1, v157);
            sub_254FF1474();
            sub_254FD3690();
            sub_254FC4BB8(v158, v159, v160, v161);
            v162 = v257;
            v163 = MEMORY[0x277D84F90];
            sub_254FF13A4();
            *v162 = v147;
            v162[1] = v110;
            v164 = v274;
            sub_254FD1924();
            v165 = v236;
            *(v164 + 8) = v237;
            *(v164 + 16) = v165;
            v166 = v268;
            *(v164 + 24) = v247;
            *(v164 + 32) = v166;
            *v164 = 0;
            sub_254FD37CC();
            v167 = *(v152 + 16);

            if (v167)
            {
              v168 = sub_254FC4A60(v147);
              if (v169)
              {
                v170 = *(*(v152 + 56) + 8 * v168);
              }

              else
              {
                v170 = v163;
              }
            }

            else
            {
              v170 = v163;
            }

            sub_254FD1924();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_254FD3864();
              sub_254FC3A44();
              v170 = v186;
            }

            v171 = *(v170 + 16);
            if (v171 >= *(v170 + 24) >> 1)
            {
              sub_254FD3864();
              sub_254FC3A44();
              v170 = v187;
            }

            *(v170 + 16) = v171 + 1;
            sub_254FD1C08();
            sub_254FD37CC();
            swift_isUniquelyReferenced_nonNull_native();
            v287 = v171;
            v172 = sub_254FC4A60(v246);
            if (__OFADD__(v171[2], (v173 & 1) == 0))
            {
              goto LABEL_67;
            }

            v174 = v172;
            v175 = v173;
            sub_254FC0048(&qword_27F76C9E0, &qword_254FF3768);
            if (sub_254FF22A4())
            {
              v176 = sub_254FC4A60(v246);
              v97 = v278;
              v178 = v279;
              v179 = v275;
              if ((v175 & 1) != (v177 & 1))
              {
                goto LABEL_70;
              }

              v174 = v176;
            }

            else
            {
              v97 = v278;
              v178 = v279;
              v179 = v275;
            }

            v180 = v287;
            v269 = v287;
            if (v175)
            {
              *(v287[7] + 8 * v174) = v170;
            }

            else
            {
              v287[(v174 >> 6) + 8] |= 1 << v174;
              v181 = (v180[6] + 16 * v174);
              *v181 = v246;
              v181[1] = v110;
              *(v180[7] + 8 * v174) = v170;
              v182 = v180[2];
              v183 = __OFADD__(v182, 1);
              v184 = v182 + 1;
              if (v183)
              {
                goto LABEL_68;
              }

              v180[2] = v184;
            }

            v96 = v277;
            v141 = v281;
            v142 = v286;
            sub_254FD1A58(v274, type metadata accessor for Device);
            sub_254FD1A58(v162, type metadata accessor for DeviceUser);
            sub_254FC5AE8();
            v185(v179, v178);
            v98 = v272;
LABEL_34:
            v117 = v250;
            ++v120;
            sub_254FC5AE8();
            v143(v142, v141);
            v122 = v283;
            v70 = v284;
            if (v256 == v120)
            {
              goto LABEL_58;
            }
          }

          v96 = v277;
          goto LABEL_30;
        }

LABEL_58:
        v112 = v222 + 1;

        sub_254FC5AE8();
        v188 = sub_254FD3824();
        v189(v188);
        v1 = v221;
        v99 = v239;
        if (v112 != v214)
        {
          continue;
        }

        break;
      }

      v88 = sub_254FD37C0();
      v78 = v224;
      v91 = v223;
      v92 = v213;
      v89 = v212;
      v90 = v245;
      v93 = v211;
      v94 = v210;
      goto LABEL_6;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_254FF2384();
  __break(1u);
  return result;
}

unint64_t sub_254FCAC48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_254FC0048(a2, a3);
    v4 = sub_254FF2304();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  if (v5 == MEMORY[0x277D837D0])
  {
    v15 = (v7 + 63) >> 6;

    v16 = 0;
    while (v9)
    {
      v17 = v16;
LABEL_21:
      v18 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v9)) | (v17 << 6)));
      v9 &= v9 - 1;

      swift_dynamicCast();
      result = sub_254FC4C4C(v26);
      v19 = result;
      if (v20)
      {
        v21 = (v4[6] + 16 * result);
        *v21 = v26;
        v21[1] = v27;

        *(v4[7] + 8 * v19) = v18;

        v16 = v17;
      }

      else
      {
        if (v4[2] >= v4[3])
        {
          goto LABEL_29;
        }

        *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v22 = (v4[6] + 16 * result);
        *v22 = v26;
        v22[1] = v27;
        *(v4[7] + 8 * result) = v18;
        v23 = v4[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_30;
        }

        v4[2] = v25;
        v16 = v17;
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
LABEL_26:

        return v4;
      }

      v9 = *(v6 + 8 * v17);
      ++v16;
      if (v9)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v10 = (v7 + 63) >> 6;

    v12 = 0;
    if (!v9)
    {
      goto LABEL_9;
    }

    do
    {
      v13 = v12;
LABEL_13:
      v14 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v9)) | (v13 << 6)));
      v9 &= v9 - 1;

      swift_dynamicCast();
      result = sub_254FD197C(v26, v27, v14, v4);
    }

    while (v9);
LABEL_9:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_26;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_254FCAF24()
{
  v2 = sub_254FF1A44();
  sub_254FC583C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_254FC7780();
  v8 = v7 - v6;
  v9 = sub_254FF1B14();
  sub_254FC583C();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_254FC7780();
  v15 = v14 - v13;
  sub_254FCF824();
  if (!v1)
  {
    sub_254FC9244(v15);
    sub_254FF1AF4();
    (*(v11 + 8))(v15, v9);
    v0 = sub_254FF1A24();
    (*(v4 + 8))(v8, v2);
  }

  return v0;
}

uint64_t sub_254FCB09C()
{
  sub_254FF1BD4();
  sub_254FC583C();
  MEMORY[0x28223BE20](v2);
  sub_254FC7780();
  v5 = v4 - v3;
  sub_254FCF824();
  if (!v1)
  {
    sub_254FC9084(v5);
    v0 = sub_254FF1BB4();
    v7 = sub_254FD33E4();
    v8(v7);
  }

  return v0;
}

uint64_t sub_254FCB1A0()
{
  sub_254FD3208();
  v1[70] = v0;
  v1[69] = v2;
  v1[68] = v3;
  v1[67] = v4;
  v1[66] = v5;
  v1[65] = v6;
  v1[64] = v7;
  v8 = sub_254FF1924();
  v1[71] = v8;
  sub_254FC58B0(v8);
  v1[72] = v9;
  v1[73] = sub_254FD3480();
  v10 = sub_254FF1994();
  v1[74] = v10;
  sub_254FC58B0(v10);
  v1[75] = v11;
  v1[76] = sub_254FD3480();
  v12 = sub_254FF1964();
  v1[77] = v12;
  sub_254FC58B0(v12);
  v1[78] = v13;
  v1[79] = sub_254FD3480();
  v14 = sub_254FF1A44();
  v1[80] = v14;
  sub_254FC58B0(v14);
  v1[81] = v15;
  v1[82] = sub_254FD3480();
  v16 = sub_254FF19C4();
  v1[83] = v16;
  sub_254FC58B0(v16);
  v1[84] = v17;
  v1[85] = sub_254FD3480();
  v18 = sub_254FF19F4();
  v1[86] = v18;
  sub_254FC58B0(v18);
  v1[87] = v19;
  v1[88] = sub_254FD3594();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v20 = sub_254FC0048(&qword_27F76C9E8, &qword_254FF3778);
  sub_254FD32E4(v20);
  v1[91] = sub_254FD3480();
  v21 = sub_254FC0048(&qword_27F76C9F0, &qword_254FF3780);
  v1[92] = v21;
  sub_254FC58B0(v21);
  v1[93] = v22;
  v1[94] = sub_254FD3594();
  v1[95] = swift_task_alloc();
  v23 = sub_254FF1A74();
  v1[96] = v23;
  sub_254FC58B0(v23);
  v1[97] = v24;
  v1[98] = sub_254FD3480();
  v25 = sub_254FF1A94();
  v1[99] = v25;
  sub_254FC58B0(v25);
  v1[100] = v26;
  v1[101] = sub_254FD3480();
  v27 = sub_254FC0048(&qword_27F76C9F8, &qword_254FF3788);
  sub_254FD32E4(v27);
  v1[102] = sub_254FD3480();
  v28 = sub_254FF1B54();
  v1[103] = v28;
  sub_254FC58B0(v28);
  v1[104] = v29;
  v1[105] = sub_254FD3480();
  v30 = sub_254FF1BA4();
  v1[106] = v30;
  sub_254FC58B0(v30);
  v1[107] = v31;
  v1[108] = sub_254FD3480();
  v32 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  sub_254FD32E4(v32);
  v1[109] = sub_254FD3594();
  v1[110] = swift_task_alloc();
  v33 = sub_254FF1614();
  v1[111] = v33;
  sub_254FC58B0(v33);
  v1[112] = v34;
  v1[113] = sub_254FD3594();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v35 = sub_254FF14C4();
  v1[117] = v35;
  sub_254FC58B0(v35);
  v1[118] = v36;
  v1[119] = sub_254FD3594();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v37 = sub_254FF1BD4();
  v1[122] = v37;
  sub_254FC58B0(v37);
  v1[123] = v38;
  v1[124] = sub_254FD3480();
  v39 = sub_254FF1B14();
  v1[125] = v39;
  sub_254FC58B0(v39);
  v1[126] = v40;
  v1[127] = sub_254FD3594();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v41 = sub_254FF1EB4();
  v1[130] = v41;
  sub_254FC58B0(v41);
  v1[131] = v42;
  v1[132] = sub_254FD3594();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  sub_254FD3804();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_254FCB800()
{
  v262 = v1;
  v5 = v1;
  v1[63] = MEMORY[0x277D84F90];
  sub_254FCF824();
  v6 = sub_254FCB09C();
  v10 = v1[69];
  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (!v10)
  {

    goto LABEL_16;
  }

  v11 = v6 == v1[68] && v7 == v10;
  if (!v11)
  {
    v0 = sub_254FF2364();

    if (v0)
    {
      goto LABEL_21;
    }

LABEL_16:
    sub_254FC9244(v1[128]);
    v12 = sub_254FF1AD4();
    v13 = v1[128];
    v14 = v1[126];
    v17 = *(v14 + 8);
    v16 = v14 + 8;
    inited = v17;
    v17(v13, v5[125]);
    v241 = v17;
    v242 = v16;
    sub_254FCAC48(v12, &qword_27F76CAD8, &qword_254FF38E0);
    v18 = sub_254FD37A8();
    if (!v2[2])
    {

      sub_254FF1D14();
      v56 = sub_254FF1EA4();
      v57 = sub_254FF2154();
      if (sub_254FD36FC(v57))
      {
        sub_254FC5B38();
        *swift_slowAlloc() = 0;
        sub_254FD39BC(&dword_254FBD000, v58, v59, "DeviceActivityHelpers: No devices found for current user. Assuming local device as default.");
        sub_254FC592C();
        MEMORY[0x259C32150]();
      }

      sub_254FD3718();
      v60 = *(v3 + 8);
      v3 += 8;
      v60(inited, v2);
      sub_254FC0048(&qword_27F76CA58, &qword_254FF37A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254FF3720;
      *(inited + 32) = 0;
      *(inited + 40) = 0;
      sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
      v61 = swift_allocObject();
      sub_254FD399C(v61);
      sub_254FF1BB4();
      v62 = sub_254FD35C4();
      (*(v209 + 8))(v62);
      v2[4] = v16;
      v2[5] = v56;
      *(inited + 48) = v2;
      v12 = sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FD1858();
      sub_254FBF6B0();
      v18 = sub_254FF1EE4();
      v2 = v18;
    }

    if (v5[67] && (v12 = v2, v18 = sub_254FC4C4C(v5[66]), (v19 & 1) != 0))
    {
      inited = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v261[0] = v2;
      v20 = sub_254FC0048(&qword_27F76CA50, &unk_254FF3798);
      sub_254FD397C(v20);

      v12 = *(v2[7] + 8 * inited);
      sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FD1858();
      v243 = v2;
      sub_254FF22C4();
    }

    else
    {
      v243 = v2;
    }

    v258 = v5[69];
    v260 = v5;
    if (v258)
    {
      v12 = v243 + 64;
      sub_254FD310C();
      v31 = v30 & v29;
      inited = (63 - v32) >> 6;

      v34 = 0;
      v256 = inited;
      if (v31)
      {
        goto LABEL_33;
      }

      do
      {
LABEL_29:
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_142;
        }

        if (v35 >= inited)
        {

          goto LABEL_69;
        }

        v31 = *(v12 + 8 * v35);
        ++v34;
      }

      while (!v31);
      v34 = v35;
      while (1)
      {
LABEL_33:
        v36 = v5[68];
        v257 = v34;
        v37 = *(*(v33 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v31)))));
        swift_bridgeObjectRetain_n();

        v39 = sub_254FD1AD4(v38, v36, v258);
        if (v40)
        {
          v41 = *(v37 + 16);
        }

        else
        {
          v41 = v39;
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_148;
          }

          v255 = v31;
          for (i = 16 * v39; ; i += 16)
          {
            v44 = *(v37 + 16);
            if (v42 == v44)
            {
              break;
            }

            if (v42 >= v44)
            {
              goto LABEL_140;
            }

            sub_254FD369C();
            v46 = v11 && v45 == v4;
            if (v46 || (sub_254FD37D8(), (sub_254FF2364() & 1) != 0))
            {
              if (v42 != v41)
              {
                if (v41 >= v44)
                {
                  goto LABEL_143;
                }

                sub_254FD395C();

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_254FD1BDC();
                  v37 = v49;
                }

                v47 = v37 + 16 * v41;
                *(v47 + 32) = v3;
                *(v47 + 40) = v4;

                if (v42 >= *(v37 + 16))
                {
                  goto LABEL_144;
                }

                v48 = v37 + i;
                *(v48 + 48) = v5;
                *(v48 + 56) = v44;

                v5 = v260;
              }

              ++v41;
            }

            ++v42;
          }

          v31 = v255;
        }

        v50 = *(v37 + 16);
        v3 = v50 - v41;
        if (v50 < v41)
        {
          break;
        }

        if (v41 < 0)
        {
          goto LABEL_146;
        }

        if (__OFADD__(v50, v41 - v50))
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0 && v41 <= *(v37 + 24) >> 1)
        {
          v51 = v31;
        }

        else
        {
          v51 = v31;
          sub_254FD393C();
          v37 = v52;
        }

        v4 = (v37 + 32 + 16 * v41);
        sub_254FD34DC();
        swift_arrayDestroy();
        if (v50 != v41)
        {
          sub_254FD373C();
          v53 = *(v37 + 16);
          v54 = __OFADD__(v53, v41 - v50);
          v55 = v53 - v3;
          if (v54)
          {
            goto LABEL_149;
          }

          *(v37 + 16) = v55;
        }

        v31 = (v51 - 1) & v51;

        v33 = v243;
        inited = v256;
        v12 = v243 + 64;
        v34 = v257;
        if (!v31)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_69:
    sub_254FD391C(v18);
    sub_254FD33E4();
    sub_254FC5770();
    sub_254FD3214();
    v259 = 0;
    if (v11)
    {
      v63 = v5[110];
    }

    else
    {
      v64 = sub_254FD3364();
      v4(v64);
      sub_254FD33E4();
      sub_254FC5770();
      sub_254FD3214();
      if (!v65)
      {
        sub_254FD3618();
        v68 = sub_254FD31B4();
        v4(v68);
        v69 = sub_254FD3600();
        v4(v69);
        v70 = sub_254FD35F4();
        v4(v70);
        sub_254FD38FC();
        v71 = *(inited + 8);
        v72 = sub_254FD34D0();
        (v71)(v72);
        sub_254FD3538();
        v71();
        v73 = sub_254FD3678();
        v74(v73);
        v75 = sub_254FD36D8();
        v76(v75);
LABEL_76:
        v77 = v243;
        sub_254FD3264();
        if (v86 != v54)
        {
          v79 = ~v83;
        }

        v87 = v79 & v78;
        v88 = v5[100];
        v89 = (63 - v80) >> 6;
        v90 = (v81 + 16);
        v91 = v5[104] + 104;
        v92 = v5[93];
        v93 = v88 + 16;
        v94 = v88 + 8;
        v95 = v92 + 16;
        v96 = v5[87] + 16;
        v247 = (v82 + 8);
        v246 = (v5[84] + 8);
        v254 = (v5[112] + 8);
        v248 = (v81 + 8);
        v244 = 136315138;
        v97 = *MEMORY[0x277CC5838];
        v98 = (v92 + 8);
        v99 = v5[97] + 8;
        v100 = v5[107] + 8;
        do
        {
LABEL_80:
          if (!v87)
          {
            do
            {
              v101 = v84 + 1;
              if (__OFADD__(v84, 1))
              {
                goto LABEL_141;
              }

              if (v101 >= v89)
              {
                sub_254FD3174();
                v206 = *(v88 + 968);
                sub_254FD2FC8();
                (*v248)(v206);

                sub_254FD3394();
                sub_254FD344C();

                __asm { BRAA            X2, X16 }
              }

              v87 = *(v85 + 8 * v101);
              ++v84;
            }

            while (!v87);
            v84 = v101;
          }

          v102 = __clz(__rbit64(v87));
          v87 &= v87 - 1;
          v103 = v102 | (v84 << 6);
          v104 = *(*(v77 + 56) + 8 * v103);
        }

        while (!*(v104 + 2));
        v220 = v84;
        v221 = *(v104 + 2);
        v232 = v99;
        v233 = v98;
        HIDWORD(v227) = v97;
        v245 = v96;
        v236 = v95;
        v237 = v94;
        v238 = v93;
        v217 = v87;
        v218 = v89;
        v219 = v85;
        v105 = (*(v77 + 48) + 16 * v103);
        v224 = *v105;
        v226 = v104 + 32;
        v228 = v91;
        v229 = v105[1];

        v106 = 0;
        v239 = v88;
        v222 = v90;
        v223 = v100;
        v230 = v104;
        while (v106 < *(v104 + 2))
        {
          sub_254FD3498();
          v108 = *v107;
          (*v90)(v104);
          v109 = sub_254FD35AC();
          v110(v109);
          sub_254FF1B74();
          sub_254FD3690();
          sub_254FC4BB8(v111, v112, v113, v114);

          sub_254FF1B94();
          if (v229)
          {

            sub_254FF1B44();
            sub_254FD33E4();
            sub_254FF1B64();
          }

          else
          {
          }

          sub_254FD38DC();
          v115 = 0;
          v116 = sub_254FF1AE4();
          v117 = v5[127];
          v118 = v5[125];
          v104 = v230;
          v119 = v116;
          v120 = sub_254FD31FC();
          v241(v120);
          v234 = *(v119 + 16);
          if (v234)
          {
            v121 = 0;
            sub_254FD318C();
            v235 = v119 + v122;
            v231 = v119;
            while (v121 < *(v119 + 16))
            {
              sub_254FD3238();
              v123 = sub_254FD37F0();
              v124(v123);
              v240 = v121 + 1;
              sub_254FF1A84();
              sub_254FF1A04();
              (*(v119 + 8))(v117, v115);
              v125 = sub_254FD34DC();
              v126(v125);
              while (1)
              {
                sub_254FD3760();
                if (sub_254FC5364(v118, 1, v115) == 1)
                {
                  break;
                }

                sub_254FD36C0();
                v127 = sub_254FD3838();
                v128(v127);
                sub_254FF1D14();
                v129 = sub_254FD3888();
                v104(v129);
                v115 = sub_254FF1EA4();
                v130 = sub_254FF2154();
                v131 = os_log_type_enabled(v115, v130);
                v118 = v5[132];
                v132 = v5[130];
                if (v131)
                {
                  v133 = sub_254FD356C();
                  v134 = swift_slowAlloc();
                  v142 = sub_254FD33C4(v134, v135, v136, v137, v138, v139, v140, v141, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
                  v104(v142);
                  v143 = sub_254FF1FA4();
                  v144 = v118;
                  v146 = v145;
                  sub_254FD387C();
                  sub_254FD3538();
                  v249 = v147;
                  v147();
                  v148 = sub_254FC4454(v143, v146, v261);

                  *(v133 + 4) = v148;
                  _os_log_impl(&dword_254FBD000, v115, v130, "DeviceActivityHelpers: Refreshed segments: %s", v133, 0xCu);
                  v118 = v257;
                  sub_254FC49C4(v257);
                  sub_254FC592C();
                  MEMORY[0x259C32150]();
                  sub_254FC592C();
                  MEMORY[0x259C32150]();

                  v149 = (*v247)(v144, v259);
                }

                else
                {
                  v150 = v5[86];

                  v151 = sub_254FD387C();
                  v249 = v152;
                  (v152)(v151, v150);
                  v153 = sub_254FD3838();
                  v149 = v154(v153, v132);
                }

                sub_254FD32A8(v149);
                v257 = sub_254FF19A4();
                v259 = v155;
                v108 = *v246;
                v156 = sub_254FD37E4();
                v108(v156);
                sub_254FF1A64();
                sub_254FF19B4();
                v104 = v157;
                v158 = sub_254FD37E4();
                v159 = (v108)(v158);
                sub_254FD3A84(v159);
                sub_254FF1A24();
                v161 = v160;
                v162 = sub_254FD3844();
                v163 = v118(v162);
                sub_254FD3A84(v163);
                sub_254FF1A34();
                v165 = v164;
                v166 = sub_254FC5B00();
                v118(v166);
                sub_254FF19D4();
                v117 = sub_254FF19E4();
                v251 = *(v117 + 16);
                if (v251)
                {
                  sub_254FD318C();
                  sub_254FD351C();
                  while (v167 < *(v117 + 16))
                  {
                    sub_254FD3810();
                    v253 = v168;
                    v169 = sub_254FD3660();
                    v170(v169);
                    sub_254FF1944();
                    if (v171)
                    {
                      v252 = sub_254FF1F24();
                    }

                    else
                    {
                      v252 = 0;
                    }

                    if (*(sub_254FF1934() + 16))
                    {
                      sub_254FD3050();
                      do
                      {
                        v172 = sub_254FD3648();
                        v173(v172);
                        v174 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication], (v5 + 9));
                        sub_254FD34E8();
                        sub_254FD39DC();
                        sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId], (v5 + 12));
                        sub_254FD34E8();
                        if (v104)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName], (v5 + 60));
                          sub_254FD34E8();
                        }

                        if (v161)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID], (v5 + 57));
                          sub_254FD34E8();
                        }

                        if (v165)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail], (v5 + 54));
                          sub_254FD34E8();
                        }

                        sub_254FD32FC();
                        sub_254FF15A4();
                        v175 = sub_254FD35DC();
                        v165(v175);
                        v161 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime], (v260 + 15));
                        v176 = *&v174[v161];
                        *&v174[v161] = v104;

                        v5 = v260;
                        sub_254FF1494();
                        sub_254FF15A4();
                        v177 = sub_254FD3358();
                        (v165)(v177, v108);
                        v178 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
                        sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime], (v260 + 18));
                        v179 = *&v174[v178];
                        *&v174[v178] = v104;

                        sub_254FF1984();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier], (v260 + 21));
                        sub_254FD3A6C();
                        sub_254FF1974();
                        sub_254FF2124();
                        v115 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
                        sub_254FD33A0(&v174[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration], (v260 + 24));
                        sub_254FD34E8();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v181)
                        {
                          sub_254FD3150(v180);
                        }

                        v104 = v260[74];
                        sub_254FD34B4();
                        v182 = sub_254FD3298();
                        v183(v182);
                        sub_254FD3084();
                        v108 = v259;
                        v165 = v255;
                      }

                      while (!v11);
                    }

                    if (*(sub_254FF1954() + 16))
                    {
                      sub_254FD3050();
                      do
                      {
                        v184 = sub_254FD3500();
                        v185(v184);
                        v186 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication], (v5 + 27));
                        sub_254FD3468();
                        sub_254FD39DC();
                        sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId], (v5 + 30));
                        sub_254FD3468();
                        if (v104)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName], (v5 + 51));
                          sub_254FD3468();
                        }

                        if (v161)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID], (v5 + 48));
                          sub_254FD3468();
                        }

                        if (v165)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail], (v5 + 45));
                          sub_254FD3468();
                        }

                        sub_254FD341C();
                        v187 = sub_254FF15A4();
                        v161 = v254;
                        v188 = *v254;
                        v189 = sub_254FD34D0();
                        (v188)(v189);
                        v190 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime], (v260 + 33));
                        v191 = *&v186[v190];
                        *&v186[v190] = v187;

                        sub_254FF1494();
                        sub_254FF15A4();
                        sub_254FD3358();
                        sub_254FD3538();
                        v188();
                        sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime], (v5 + 36));
                        sub_254FD3468();
                        sub_254FF1914();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier], (v5 + 39));
                        sub_254FD3A6C();
                        sub_254FF1904();
                        sub_254FF2124();
                        sub_254FD33A0(&v186[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration], (v5 + 42));
                        sub_254FD3468();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v181)
                        {
                          sub_254FD3150(v192);
                        }

                        v104 = v5[71];
                        sub_254FD34B4();
                        v193 = sub_254FD3298();
                        v194(v193);
                        sub_254FD3084();
                        v108 = v259;
                        v165 = v255;
                      }

                      while (!v11);
                    }

                    v118 = v5[77];

                    v195 = sub_254FD30FC();
                    v196(v195);
                    v167 = v253 + 1;
                    v117 = v250;
                    if (v253 + 1 == v251)
                    {
                      goto LABEL_130;
                    }
                  }

                  __break(1u);
LABEL_140:
                  __break(1u);
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);

                  v210 = sub_254FD31FC();
                  v241(v210);
                  v211 = sub_254FD37D8();
                  v212(v211);
                  v213 = sub_254FC5B00();
                  v214(v213);

                  sub_254FD3174();
                  sub_254FD2FC8();

                  sub_254FD3410();
                  sub_254FD344C();

                  __asm { BRAA            X1, X16 }
                }

LABEL_130:

                sub_254FD3784();

                v197 = sub_254FD30FC();
                v198(v197);
                v199 = sub_254FC5B00();
                (v249)(v199);
              }

              v200 = sub_254FD36E4();
              v104 = v233;
              v201 = *v233;
              (*v233)(v200, v108);
              v202 = sub_254FC5B00();
              v201(v202);
              v203 = sub_254FD30FC();
              v204(v203);
              v121 = v240;
              v119 = v231;
              if (v240 == v234)
              {

                v88 = v239;
                v104 = v230;
                goto LABEL_134;
              }
            }

            goto LABEL_150;
          }

          v88 = v239;
LABEL_134:
          v205 = sub_254FD38C8();
          v100 = v223;
          (*v223)(v205);
          v106 = v117;
          v259 = 0;
          v90 = v222;
          v77 = v243;
          if (v117 == v221)
          {

            v259 = 0;
            v85 = v219;
            v84 = v220;
            v87 = v217;
            v89 = v218;
            v91 = v228;
            v94 = v237;
            v93 = v238;
            v95 = v236;
            v96 = v245;
            v97 = HIDWORD(v227);
            v99 = v232;
            v98 = v233;
            goto LABEL_80;
          }
        }

LABEL_151:
        __break(1u);
        return MEMORY[0x2821162D0]();
      }

      v66 = sub_254FD3630();
      v67(v66);
      v63 = v12;
    }

    sub_254FC538C(v63, &qword_27F76CA00, &qword_254FF3790);
    goto LABEL_76;
  }

LABEL_21:
  sub_254FF1D14();
  v21 = sub_254FF1EA4();
  v22 = sub_254FF2154();
  if (sub_254FD36FC(v22))
  {
    sub_254FC5B38();
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_254FBD000, v21, v0, "DeviceActivityHelpers: Refreshing local activity as local device is queried.", v23, 2u);
    sub_254FC592C();
    MEMORY[0x259C32150]();
  }

  v24 = v1[129];

  v25 = sub_254FD3858();
  v26(v25);
  sub_254FC9244(v24);
  v27 = swift_task_alloc();
  v1[135] = v27;
  *v27 = v1;
  v27[1] = sub_254FCCFA0;
  sub_254FD344C();

  return MEMORY[0x2821162D0]();
}

uint64_t sub_254FCCFA0()
{
  sub_254FD3870();
  v2 = *v1;
  *(*v1 + 1088) = v0;

  (*(v2[126] + 8))(v2[129], v2[125]);
  sub_254FD3804();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_254FCD100()
{
  v253 = v0;
  v4 = v0;
  v5 = v0[136];
  sub_254FC9244(v0[128]);
  v6 = sub_254FF1AD4();
  v7 = v0[128];
  v8 = v0[126];
  v11 = *(v8 + 8);
  v10 = v8 + 8;
  inited = v11;
  v11(v7, v4[125]);
  if (v5)
  {
    goto LABEL_2;
  }

  v230 = inited;
  v231 = v10;
  v14 = sub_254FCAC48(v6, &qword_27F76CAD8, &qword_254FF38E0);

  if (!v14[2])
  {

    sub_254FF1D14();
    v46 = sub_254FF1EA4();
    v47 = sub_254FF2154();
    if (sub_254FD36FC(v47))
    {
      sub_254FC5B38();
      *swift_slowAlloc() = 0;
      sub_254FD39BC(&dword_254FBD000, v48, v49, "DeviceActivityHelpers: No devices found for current user. Assuming local device as default.");
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    sub_254FD3718();
    v50 = *(v2 + 8);
    v2 += 8;
    v50(inited, v1);
    sub_254FC0048(&qword_27F76CA58, &qword_254FF37A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_254FF3720;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
    v51 = swift_allocObject();
    sub_254FD399C(v51);
    sub_254FF1BB4();
    v52 = sub_254FD35C4();
    (*(v199 + 8))(v52);
    *(v1 + 32) = v10;
    *(v1 + 40) = v46;
    *(inited + 48) = v1;
    v6 = sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
    sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
    sub_254FD1858();
    sub_254FBF6B0();
    v15 = sub_254FF1EE4();
    v14 = v15;
  }

  if (v4[67])
  {
    v6 = v14;
    v15 = sub_254FC4C4C(v4[66]);
    if (v16)
    {
      inited = v15;
      swift_isUniquelyReferenced_nonNull_native();
      v252[0] = v14;
      v17 = sub_254FC0048(&qword_27F76CA50, &unk_254FF3798);
      sub_254FD397C(v17);

      v6 = *(v14[7] + 8 * inited);
      sub_254FC0048(&qword_27F76C9D0, &qword_254FF3760);
      sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
      sub_254FD1858();
      sub_254FF22C4();
    }
  }

  v249 = v4[69];
  v251 = v4;
  if (!v249)
  {
    v250 = 0;
LABEL_50:
    sub_254FD391C(v15);
    sub_254FD33E4();
    sub_254FC5770();
    sub_254FD3214();
    if (v42)
    {
      v53 = v4[110];
    }

    else
    {
      v54 = sub_254FD3364();
      v3(v54);
      sub_254FD33E4();
      sub_254FC5770();
      sub_254FD3214();
      if (!v55)
      {
        sub_254FD3618();
        v58 = sub_254FD31B4();
        v3(v58);
        v59 = sub_254FD3600();
        v3(v59);
        v60 = sub_254FD35F4();
        v3(v60);
        sub_254FD38FC();
        v61 = *(inited + 8);
        v62 = sub_254FD34D0();
        (v61)(v62);
        sub_254FD3538();
        v61();
        v63 = sub_254FD3678();
        v64(v63);
        v65 = sub_254FD36D8();
        v66(v65);
LABEL_57:
        sub_254FD3264();
        if (v75 != v36)
        {
          v68 = ~v72;
        }

        v76 = v68 & v67;
        v77 = v4[100];
        v78 = (63 - v69) >> 6;
        v79 = (v70 + 16);
        v80 = v4[104] + 104;
        v81 = v4[93];
        v82 = v77 + 16;
        v83 = v77 + 8;
        v84 = v81 + 16;
        v85 = v4[87] + 16;
        v235 = (v71 + 8);
        v236 = (v4[84] + 8);
        v243 = (v4[112] + 8);
        v237 = (v70 + 8);
        v233 = 136315138;
        v86 = *MEMORY[0x277CC5838];
        v87 = (v81 + 8);
        v88 = v4[97] + 8;
        v89 = v4[107] + 8;
        do
        {
LABEL_61:
          if (!v76)
          {
            do
            {
              v90 = v73 + 1;
              if (__OFADD__(v73, 1))
              {
                goto LABEL_122;
              }

              if (v90 >= v78)
              {
                v196 = v4[121];
                sub_254FD2FC8();
                (*v237)(v196);

                sub_254FD3394();
                sub_254FD344C();

                __asm { BRAA            X2, X16 }
              }

              v76 = *(v74 + 8 * v90);
              ++v73;
            }

            while (!v76);
            v73 = v90;
          }

          v91 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
          v92 = v91 | (v73 << 6);
          v93 = *(v14[7] + 8 * v92);
        }

        while (!*(v93 + 16));
        v208 = v73;
        v209 = *(v93 + 16);
        v220 = v88;
        v221 = v87;
        HIDWORD(v216) = v86;
        v234 = v85;
        v224 = v84;
        v225 = v83;
        v226 = v82;
        v205 = v76;
        v206 = v78;
        v217 = v80;
        v207 = v74;
        v94 = (v14[6] + 16 * v92);
        v95 = v94[1];
        v213 = *v94;
        v215 = v93 + 32;

        v96 = 0;
        v227 = v14;
        v228 = v77;
        v210 = v79;
        v211 = v93;
        v212 = v89;
        v218 = v95;
        while (v96 < *(v93 + 16))
        {
          v97 = v4[108];
          sub_254FD3498();
          v248 = *v98;
          (*v79)(v95);
          v99 = sub_254FD35AC();
          v100(v99);
          sub_254FF1B74();
          sub_254FD3690();
          sub_254FC4BB8(v101, v102, v103, v104);

          sub_254FF1B94();
          v95 = v218;
          if (v218)
          {

            sub_254FF1B44();
            sub_254FF1B64();
          }

          else
          {
          }

          sub_254FD38DC();
          v105 = v250;
          v106 = sub_254FF1AE4();
          v107 = v4[127];
          v108 = v4[125];
          v232 = v250;
          v109 = v106;
          v110 = sub_254FD31FC();
          v230(v110);
          v222 = *(v109 + 16);
          if (v222)
          {
            v111 = 0;
            sub_254FD318C();
            v223 = v109 + v112;
            v219 = v109;
            while (v111 < *(v109 + 16))
            {
              sub_254FD3238();
              v113 = sub_254FD37F0();
              v114(v113);
              v229 = v111 + 1;
              sub_254FF1A84();
              sub_254FF1A04();
              (*(v109 + 8))(v107, v105);
              v115 = sub_254FD34DC();
              v116(v115);
              while (1)
              {
                sub_254FD3760();
                if (sub_254FC5364(v108, 1, v105) == 1)
                {
                  break;
                }

                sub_254FD36C0();
                v117 = sub_254FD3838();
                v118(v117);
                sub_254FF1D14();
                v119 = sub_254FD3888();
                v95(v119);
                v105 = sub_254FF1EA4();
                v120 = sub_254FF2154();
                v121 = os_log_type_enabled(v105, v120);
                v108 = v4[132];
                v122 = v4[130];
                if (v121)
                {
                  v123 = sub_254FD356C();
                  v124 = swift_slowAlloc();
                  v132 = sub_254FD33C4(v124, v125, v126, v127, v128, v129, v130, v131, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233);
                  v95(v132);
                  v133 = sub_254FF1FA4();
                  v134 = v108;
                  v136 = v135;
                  sub_254FD387C();
                  sub_254FD3538();
                  v238 = v137;
                  v137();
                  v138 = sub_254FC4454(v133, v136, v252);

                  *(v123 + 4) = v138;
                  _os_log_impl(&dword_254FBD000, v105, v120, "DeviceActivityHelpers: Refreshed segments: %s", v123, 0xCu);
                  v108 = v248;
                  sub_254FC49C4(v248);
                  sub_254FC592C();
                  MEMORY[0x259C32150]();
                  sub_254FC592C();
                  MEMORY[0x259C32150]();

                  v139 = (*v235)(v134, v250);
                }

                else
                {
                  v140 = v4[86];

                  v141 = sub_254FD387C();
                  v238 = v142;
                  (v142)(v141, v140);
                  v143 = sub_254FD3838();
                  v139 = v144(v143, v122);
                }

                sub_254FD32A8(v139);
                v248 = sub_254FF19A4();
                v250 = v145;
                v97 = *v236;
                v146 = sub_254FD37E4();
                (v97)(v146);
                sub_254FF1A64();
                sub_254FF19B4();
                v95 = v147;
                v148 = sub_254FD37E4();
                v149 = (v97)(v148);
                sub_254FD3A84(v149);
                sub_254FF1A24();
                v151 = v150;
                v152 = sub_254FD3844();
                v153 = v108(v152);
                sub_254FD3A84(v153);
                sub_254FF1A34();
                v155 = v154;
                v156 = sub_254FC5B00();
                v108(v156);
                sub_254FF19D4();
                v107 = sub_254FF19E4();
                v240 = *(v107 + 16);
                if (v240)
                {
                  sub_254FD318C();
                  sub_254FD351C();
                  while (v157 < *(v107 + 16))
                  {
                    sub_254FD3810();
                    v241 = v158;
                    v159 = sub_254FD3660();
                    v160(v159);
                    sub_254FF1944();
                    if (v161)
                    {
                      v242 = sub_254FF1F24();
                    }

                    else
                    {
                      v242 = 0;
                    }

                    if (*(sub_254FF1934() + 16))
                    {
                      sub_254FD3050();
                      do
                      {
                        v162 = sub_254FD3648();
                        v163(v162);
                        v164 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication], (v4 + 9));
                        sub_254FD34E8();
                        sub_254FD39DC();
                        sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId], (v4 + 12));
                        sub_254FD34E8();
                        if (v95)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName], (v4 + 60));
                          sub_254FD34E8();
                        }

                        if (v151)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID], (v4 + 57));
                          sub_254FD34E8();
                        }

                        if (v155)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail], (v4 + 54));
                          sub_254FD34E8();
                        }

                        sub_254FD32FC();
                        sub_254FF15A4();
                        v165 = sub_254FD35DC();
                        v155(v165);
                        v151 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime], (v251 + 15));
                        v166 = *&v164[v151];
                        *&v164[v151] = v95;

                        v4 = v251;
                        sub_254FF1494();
                        sub_254FF15A4();
                        v167 = sub_254FD3358();
                        (v155)(v167, v97);
                        v168 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
                        sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime], (v251 + 18));
                        v169 = *&v164[v168];
                        *&v164[v168] = v95;

                        sub_254FF1984();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier], (v251 + 21));
                        sub_254FD3A6C();
                        sub_254FF1974();
                        sub_254FF2124();
                        v105 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
                        sub_254FD33A0(&v164[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration], (v251 + 24));
                        sub_254FD34E8();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v171)
                        {
                          sub_254FD3150(v170);
                        }

                        v95 = v251[74];
                        sub_254FD34B4();
                        v172 = sub_254FD3298();
                        v173(v172);
                        sub_254FD3084();
                        v97 = v250;
                        v155 = v244;
                      }

                      while (!v42);
                    }

                    if (*(sub_254FF1954() + 16))
                    {
                      sub_254FD3050();
                      do
                      {
                        v174 = sub_254FD3500();
                        v175(v174);
                        v176 = [objc_allocWithZone(type metadata accessor for ActivitySegment()) init];
                        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
                        sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication], (v4 + 27));
                        sub_254FD3468();
                        sub_254FD39DC();
                        sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId], (v4 + 30));
                        sub_254FD3468();
                        if (v95)
                        {

                          sub_254FD39F4();
                          sub_254FD3358();

                          sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName], (v4 + 51));
                          sub_254FD3468();
                        }

                        if (v151)
                        {

                          sub_254FD3A0C();
                          sub_254FD3A3C();
                          sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID], (v4 + 48));
                          sub_254FD3468();
                        }

                        if (v155)
                        {

                          sub_254FD3A24();
                          sub_254FD3A54();
                          sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail], (v4 + 45));
                          sub_254FD3468();
                        }

                        sub_254FD341C();
                        v177 = sub_254FF15A4();
                        v151 = v243;
                        v178 = *v243;
                        v179 = sub_254FD34D0();
                        (v178)(v179);
                        v180 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
                        sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime], (v251 + 33));
                        v181 = *&v176[v180];
                        *&v176[v180] = v177;

                        sub_254FF1494();
                        sub_254FF15A4();
                        sub_254FD3358();
                        sub_254FD3538();
                        v178();
                        sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime], (v4 + 36));
                        sub_254FD3468();
                        sub_254FF1914();
                        sub_254FF1F24();
                        sub_254FD37A8();
                        sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier], (v4 + 39));
                        sub_254FD3A6C();
                        sub_254FF1904();
                        sub_254FF2124();
                        sub_254FD33A0(&v176[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration], (v4 + 42));
                        sub_254FD3468();
                        MEMORY[0x259C31750]();
                        sub_254FD3128();
                        if (v171)
                        {
                          sub_254FD3150(v182);
                        }

                        v95 = v4[71];
                        sub_254FD34B4();
                        v183 = sub_254FD3298();
                        v184(v183);
                        sub_254FD3084();
                        v97 = v250;
                        v155 = v244;
                      }

                      while (!v42);
                    }

                    v108 = v4[77];

                    v185 = sub_254FD30FC();
                    v186(v185);
                    v157 = v241 + 1;
                    v107 = v239;
                    if (v241 + 1 == v240)
                    {
                      goto LABEL_111;
                    }
                  }

                  __break(1u);
LABEL_121:
                  __break(1u);
LABEL_122:
                  __break(1u);
LABEL_123:
                  __break(1u);
LABEL_124:
                  __break(1u);
LABEL_125:
                  __break(1u);

                  v200 = sub_254FD31FC();
                  v230(v200);
                  v201 = sub_254FD37D8();
                  v202(v201);
                  v203 = sub_254FC5B00();
                  v204(v203);

LABEL_2:
                  sub_254FD3174();
                  sub_254FD2FC8();

                  sub_254FD3410();
                  sub_254FD344C();

                  __asm { BRAA            X1, X16 }
                }

LABEL_111:

                sub_254FD3784();

                v187 = sub_254FD30FC();
                v188(v187);
                v189 = sub_254FC5B00();
                (v238)(v189);
              }

              v190 = sub_254FD36E4();
              v95 = v221;
              v191 = *v221;
              (*v221)(v190, v97);
              v192 = sub_254FC5B00();
              v191(v192);
              v193 = sub_254FD30FC();
              v194(v193);
              v111 = v229;
              v109 = v219;
              if (v229 == v222)
              {

                v77 = v228;
                v95 = v218;
                goto LABEL_115;
              }
            }

            goto LABEL_131;
          }

          v77 = v228;
LABEL_115:
          v195 = sub_254FD38C8();
          v89 = v212;
          (*v212)(v195);
          v96 = v107;
          v250 = 0;
          v79 = v210;
          v14 = v227;
          v93 = v211;
          if (v107 == v209)
          {

            v250 = 0;
            v74 = v207;
            v73 = v208;
            v76 = v205;
            v78 = v206;
            v80 = v217;
            v83 = v225;
            v82 = v226;
            v84 = v224;
            v85 = v234;
            v86 = HIDWORD(v216);
            v88 = v220;
            v87 = v221;
            goto LABEL_61;
          }
        }

        goto LABEL_132;
      }

      v56 = sub_254FD3630();
      v57(v56);
      v53 = v6;
    }

    sub_254FC538C(v53, &qword_27F76CA00, &qword_254FF3790);
    goto LABEL_57;
  }

  v18 = v14 + 8;
  sub_254FD310C();
  v21 = v20 & v19;
  inited = (63 - v22) >> 6;

  v6 = 0;
  v23 = 0;
  v244 = inited;
  v245 = v14 + 8;
  if (v21)
  {
    goto LABEL_15;
  }

  do
  {
LABEL_11:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_123;
    }

    if (v24 >= inited)
    {
      v250 = v6;

      goto LABEL_50;
    }

    v21 = v18[v24];
    ++v23;
  }

  while (!v21);
  v23 = v24;
  while (1)
  {
LABEL_15:
    v25 = v4[68];
    v246 = v21;
    v247 = v23;
    v26 = v14;
    v27 = *(v14[7] + ((v23 << 9) | (8 * __clz(__rbit64(v21)))));
    swift_bridgeObjectRetain_n();

    v29 = v6;
    v30 = sub_254FD1AD4(v28, v25, v249);
    if (v31)
    {
      v32 = *(v27 + 16);
    }

    else
    {
      v32 = v30;
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_129;
      }

      for (i = 16 * v30; ; i += 16)
      {
        v40 = *(v27 + 16);
        if (v38 == v40)
        {
          break;
        }

        if (v38 >= v40)
        {
          goto LABEL_121;
        }

        sub_254FD369C();
        v42 = v42 && v41 == v3;
        if (v42 || (sub_254FD37D8(), (sub_254FF2364() & 1) != 0))
        {
          if (v38 != v32)
          {
            if (v32 >= v40)
            {
              goto LABEL_124;
            }

            sub_254FD395C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_254FD1BDC();
              v27 = v45;
            }

            v43 = v27 + 16 * v32;
            *(v43 + 32) = v2;
            *(v43 + 40) = v3;

            if (v38 >= *(v27 + 16))
            {
              goto LABEL_125;
            }

            v44 = v27 + i;
            *(v44 + 48) = v4;
            *(v44 + 56) = v40;

            v4 = v251;
          }

          ++v32;
        }

        ++v38;
      }
    }

    v33 = *(v27 + 16);
    v2 = v33 - v32;
    if (v33 < v32)
    {
      break;
    }

    if (v32 < 0)
    {
      goto LABEL_127;
    }

    if (__OFADD__(v33, v32 - v33))
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v32 > *(v27 + 24) >> 1)
    {
      sub_254FD393C();
      v27 = v34;
    }

    v3 = (v27 + 32 + 16 * v32);
    sub_254FD34DC();
    swift_arrayDestroy();
    if (v33 != v32)
    {
      sub_254FD373C();
      v35 = *(v27 + 16);
      v36 = __OFADD__(v35, v32 - v33);
      v37 = v35 - v2;
      if (v36)
      {
        goto LABEL_130;
      }

      *(v27 + 16) = v37;
    }

    v21 = (v246 - 1) & v246;

    v6 = v29;
    v14 = v26;
    inited = v244;
    v18 = v245;
    v23 = v247;
    if (!v21)
    {
      goto LABEL_11;
    }
  }

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
  __break(1u);
}

uint64_t sub_254FCE738()
{

  sub_254FD3410();

  return v0();
}

id ActivitySegment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_254FCEA4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v11 = sub_254FF1614();
  v12 = *(v11 - 8);
  v13 = swift_task_alloc();
  v6[3] = v13;
  sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  v14 = swift_task_alloc();
  v6[4] = v14;
  v15 = swift_task_alloc();
  v6[5] = v15;
  v6[6] = _Block_copy(a5);
  if (a1)
  {
    sub_254FF15F4();
    (*(v12 + 32))(v15, v13, v11);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = 1;
  sub_254FC4BB8(v15, v16, 1, v11);
  if (a2)
  {
    sub_254FF15F4();
    (*(v12 + 32))(v14, v13, v11);
    v17 = 0;
  }

  sub_254FC4BB8(v14, v17, 1, v11);
  if (a3)
  {
    sub_254FF1F54();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v6[7] = v19;
  v20 = a4;
  a6;
  if (a4)
  {
    sub_254FF1F54();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v6[8] = v22;
  v23 = swift_task_alloc();
  v6[9] = v23;
  *v23 = v6;
  v23[1] = sub_254FCECD8;

  return sub_254FCB1A0();
}

uint64_t sub_254FCECD8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  sub_254FD3074();
  *v6 = v5;
  v7 = *(v4 + 16);
  v8 = *v2;
  *v6 = *v2;

  v9 = *(v4 + 40);

  v10 = sub_254FD36D8();
  sub_254FC538C(v10, v11, &qword_254FF3790);
  sub_254FC538C(v9, &qword_27F76CA00, &qword_254FF3790);
  if (v3)
  {
    v12 = sub_254FF14E4();

    v13 = v12;
  }

  else
  {
    type metadata accessor for ActivitySegment();
    v14 = sub_254FF2064();

    v13 = v14;
  }

  v15 = *(v5 + 48);
  v16 = sub_254FD3858();
  v17(v16);

  _Block_release(v15);

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_254FCEF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_254FF2114();
  sub_254FC4BB8(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_254FF3890;
  v9[5] = v8;
  sub_254FD10E8(0, 0, v6, &unk_254FF38A0, v9);
}

uint64_t sub_254FCF01C()
{
  sub_254FD3208();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
  sub_254FD32E4(v3);
  v1[21] = sub_254FD3480();
  v4 = type metadata accessor for AppDisplayInfo(0);
  v1[22] = v4;
  sub_254FC58B0(v4);
  v1[23] = v5;
  v1[24] = sub_254FD3594();
  v1[25] = swift_task_alloc();
  sub_254FD3804();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254FCF0FC()
{
  sub_254FF1EE4();
  sub_254FCF824();

  v1 = sub_254FC940C();
  v0[26] = v1;
  v2 = sub_254FF2144();
  v0[27] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_254FCF2EC;
  v3 = swift_continuation_init();
  v0[17] = sub_254FC0048(&qword_27F76CA60, &qword_254FF37C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_254FCF798;
  v0[13] = &unk_286731480;
  v0[14] = v3;
  [v1 fetchAppInfoForBundleIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_254FCF2EC()
{
  sub_254FD3208();
  v1 = *v0;
  sub_254FD3074();
  *v2 = v1;
  sub_254FD3804();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254FCF3BC()
{
  v1 = *(v0 + 216);
  v49 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v48 = v2;
  v4 = sub_254FF1EE4();
  v5 = v3 + 64;
  sub_254FD310C();
  v8 = v7 & v6;
  v10 = (63 - v9) >> 6;
  v50 = v3;

  v12 = 0;
  v45 = v10;
  v46 = v3 + 64;
  v47 = v0;
  if (v8)
  {
    while (1)
    {
      v13 = v12;
LABEL_6:
      v14 = __clz(__rbit64(v8)) | (v13 << 6);
      v15 = (*(v50 + 48) + 16 * v14);
      v16 = v15[1];
      v53 = *v15;
      v17 = *(*(v50 + 56) + 8 * v14);
      swift_bridgeObjectRetain_n();
      v18 = v17;
      v19 = [v18 displayName];
      v20 = sub_254FF1F54();
      v52 = v21;

      v22 = sub_254FD1B78(v18);
      v24 = v23;
      v51 = v18;
      v25 = [v18 artworkURL];
      if (v25)
      {
        v26 = v25;
        sub_254FF1514();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = *(v0 + 200);
      v29 = *(v0 + 168);
      v30 = sub_254FF1524();
      sub_254FC4BB8(v29, v27, 1, v30);
      *v28 = v20;
      v49[1] = v52;
      v49[2] = v22;
      v49[3] = v24;
      sub_254FC62C4(v29, v28 + *(v48 + 24));
      sub_254FD31E4();
      sub_254FD35F4();
      sub_254FD1C08();
      swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_254FD35F4();
      result = sub_254FC4A60(v31);
      if (__OFADD__(*(v4 + 16), (v32 & 1) == 0))
      {
        break;
      }

      v33 = result;
      v34 = v32;
      sub_254FC0048(&qword_27F76CA68, &qword_254FF37D0);
      if (sub_254FF22A4())
      {
        v35 = sub_254FD35F4();
        v36 = sub_254FC4A60(v35);
        v0 = v47;
        if ((v34 & 1) != (v37 & 1))
        {

          return sub_254FF2384();
        }

        v33 = v36;
      }

      else
      {
        v0 = v47;
      }

      v8 &= v8 - 1;
      v38 = *(v0 + 192);
      if (v34)
      {

        sub_254FD389C();
        sub_254FD1C60(v38, v39);
      }

      else
      {
        *(v4 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v40 = (*(v4 + 48) + 16 * v33);
        *v40 = v53;
        v40[1] = v16;
        sub_254FD389C();
        sub_254FD31E4();
        sub_254FD1C08();

        v41 = *(v4 + 16);
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_28;
        }

        *(v4 + 16) = v43;
      }

      v12 = v13;
      v10 = v45;
      v5 = v46;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v8 = *(v5 + 8 * v13);
      ++v12;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    sub_254FD3394();

    return v44(v4);
  }

  return result;
}

uint64_t sub_254FCF798(uint64_t a1, uint64_t a2)
{
  v2 = *sub_254FC3908((a1 + 32), *(a1 + 56));
  sub_254FD2F18();
  v3 = sub_254FF1EC4();

  return sub_254FCF804(v2, v3);
}

uint64_t sub_254FCF824()
{
  v0 = sub_254FF1EB4();
  sub_254FC583C();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_254FC7780();
  v6 = v5 - v4;
  sub_254FF1B34();
  result = MEMORY[0x259C31220]();
  if ((result & 1) == 0)
  {
    sub_254FF1D14();
    v8 = sub_254FF1EA4();
    v9 = sub_254FF2174();
    if (os_log_type_enabled(v8, v9))
    {
      sub_254FC5B38();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_254FBD000, v8, v9, "DeviceActivityHelpers: Failed to authorize DeviceActivity framework. Query is returning empty results", v10, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v2 + 8))(v6, v0);
    sub_254FC389C();
    swift_allocError();
    *v11 = 3;
    return swift_willThrow();
  }

  return result;
}

id DeviceActivityHelpers.init()()
{
  sub_254FF1BD4();
  sub_254FD3690();
  sub_254FC4BB8(v1, v2, v3, v4);
  sub_254FF1B14();
  sub_254FD3690();
  sub_254FC4BB8(v5, v6, v7, v8);
  *&v0[OBJC_IVAR____TtC31IntelligencePlatformDataActions21DeviceActivityHelpers____lazy_storage___appInfoCache] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DeviceActivityHelpers(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_254FCFB58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254FCFC30;

  return sub_254FCB1A0();
}

uint64_t sub_254FCFC30()
{
  sub_254FD3208();
  v3 = v2;
  sub_254FD3388();
  v4 = *v1;
  sub_254FD3074();
  *v5 = v4;

  sub_254FD3394();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_254FCFD1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254FCFDB4;

  return sub_254FCF01C();
}

uint64_t sub_254FCFDB4()
{
  sub_254FD3208();
  v2 = v1;
  sub_254FD3388();
  v3 = *v0;
  sub_254FD3074();
  *v4 = v3;

  sub_254FD3394();

  return v5(v2);
}

void *sub_254FCFED0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FCFFA8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FCFF68(v1);
}

void *sub_254FD0058(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD0130(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD00F0(v1);
}

void *sub_254FD01E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD02BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD027C(v1);
}

void *sub_254FD036C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD0444(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD0404(v1);
}

void *sub_254FD04F4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD05CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD058C(v1);
}

void *sub_254FD067C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD0754(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD0714(v1);
}

void *sub_254FD0804(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD08DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD089C(v1);
}

void *sub_254FD098C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD0A64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD0A24(v1);
}

void *sub_254FD0B14(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication;
  sub_254FD30DC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_254FD0BEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_254FD0BAC(v1);
}

id ActivitySegment.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier] = 0;
  *&v1[OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySegment();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_254FD0D44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_254FD0E38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_254FD2FBC;

  return v6();
}

uint64_t sub_254FD0F20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_254FD1008;

  return v7();
}

uint64_t sub_254FD1008()
{
  sub_254FD3208();
  sub_254FD3388();
  v1 = *v0;
  sub_254FD3074();
  *v2 = v1;

  sub_254FD3410();

  return v3();
}

uint64_t sub_254FD10E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_254FC5770();
  v12 = sub_254FF2114();
  if (sub_254FC5364(v11, 1, v12) == 1)
  {
    sub_254FC538C(v11, &qword_27F76CAA8, &qword_254FF3880);
  }

  else
  {
    sub_254FF2104();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_254FF20F4();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_254FF1FB4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_254FD13C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_254FD14BC;

  return v6(a1);
}

uint64_t sub_254FD14BC()
{
  sub_254FD3208();
  sub_254FD3388();
  v1 = *v0;
  sub_254FD3074();
  *v2 = v1;

  sub_254FD3410();

  return v3();
}

char *sub_254FD1610(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_254FD3040(a3, result);
  }

  return result;
}

char *sub_254FD1648(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_254FD3040(a3, result);
  }

  return result;
}

void sub_254FD167C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_254FC5DD4();
  if (v11 < v10 || (sub_254FC0048(a4, a5), sub_254FC5864(), v6 + *(v12 + 72) * v5 <= a3))
  {
    sub_254FC0048(a4, a5);
    sub_254FD313C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    sub_254FD313C();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_254FD177C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  sub_254FC5DD4();
  if (v9 < v8 || (a4(0), sub_254FC5864(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_254FD313C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_254FD313C();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_254FD1838(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_254FD3040(a3, result);
  }

  return result;
}

unint64_t sub_254FD1858()
{
  result = qword_27F76C9D8;
  if (!qword_27F76C9D8)
  {
    sub_254FC5448(&qword_27F76C9D0, &qword_254FF3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76C9D8);
  }

  return result;
}

uint64_t sub_254FD18D4(uint64_t *a1, uint64_t *a2)
{
  sub_254FC0048(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_254FD1924()
{
  sub_254FC5DD4();
  v1(0);
  sub_254FC5864();
  v2 = sub_254FBF6B0();
  v3(v2);
  return v0;
}

unint64_t sub_254FD197C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_254FF2404();
  sub_254FF2424();
  if (a2)
  {
    sub_254FD36B4();
    sub_254FF1FC4();
  }

  sub_254FF2434();
  result = sub_254FF21C4();
  *(a4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  v9 = (a4[6] + 16 * result);
  *v9 = a1;
  v9[1] = a2;
  *(a4[7] + 8 * result) = a3;
  ++a4[2];
  return result;
}

uint64_t sub_254FD1A58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_254FC5864();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_254FD1AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v8 = *(i - 1) == a2 && *i == a3;
    if (!v8 && (sub_254FF2364() & 1) == 0)
    {
      break;
    }

    ++v5;
  }

  v9 = v5;
LABEL_11:

  return v9;
}

uint64_t sub_254FD1B78(void *a1)
{
  v1 = [a1 artworkData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254FF1554();

  return v3;
}

uint64_t sub_254FD1C08()
{
  sub_254FC5DD4();
  v1(0);
  sub_254FC5864();
  v2 = sub_254FBF6B0();
  v3(v2);
  return v0;
}

uint64_t sub_254FD1C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDisplayInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DeviceActivityHelpers(uint64_t a1)
{
  result = qword_27F76CA88;
  if (!qword_27F76CA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_254FD1D10()
{
  sub_254FD32F0();
  result = sub_254FCFED0(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1D3C()
{
  sub_254FD32F0();
  result = sub_254FD0058(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1D68()
{
  sub_254FD32F0();
  result = sub_254FD01E4(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1D94()
{
  sub_254FD32F0();
  result = sub_254FD036C(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1DC0()
{
  sub_254FD32F0();
  result = sub_254FD04F4(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1DEC()
{
  sub_254FD32F0();
  result = sub_254FD067C(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1E18()
{
  sub_254FD32F0();
  result = sub_254FD0804(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1E44()
{
  sub_254FD32F0();
  result = sub_254FD098C(v1);
  *v0 = result;
  return result;
}

void *sub_254FD1E70()
{
  sub_254FD32F0();
  result = sub_254FD0B14(v1);
  *v0 = result;
  return result;
}

void sub_254FD1EA4(uint64_t a1)
{
  sub_254FD2454(319, &qword_27F76CA98, MEMORY[0x277CC5848]);
  if (v1 <= 0x3F)
  {
    sub_254FD2454(319, &qword_27F76CAA0, MEMORY[0x277CC57C0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of DeviceActivityHelpers.fetchSegments(startDate:endDate:userId:deviceId:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = sub_254FD33B8(v2);
  *v3 = v4;
  v3[1] = sub_254FD21FC;
  v5 = sub_254FD34DC();

  return v7(v5);
}

uint64_t sub_254FD21FC()
{
  sub_254FD3208();
  v2 = v1;
  sub_254FD3388();
  v3 = *v0;
  sub_254FD3074();
  *v4 = v3;

  sub_254FD3394();

  return v5(v2);
}

uint64_t dispatch thunk of DeviceActivityHelpers.fetchAppInfo(for:)()
{
  sub_254FD3870();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = sub_254FD33B8(v4);
  *v5 = v6;
  v5[1] = sub_254FCFDB4;

  return v8(v2);
}

void sub_254FD2454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_254FF21A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_254FD2AAC()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_254FD2B0C()
{
  v0 = swift_task_alloc();
  v1 = sub_254FD33B8(v0);
  *v1 = v2;
  v1[1] = sub_254FD1008;
  v3 = sub_254FD3858();

  return v4(v3);
}

uint64_t sub_254FD2BDC()
{
  v0 = swift_task_alloc();
  v1 = sub_254FD33B8(v0);
  *v1 = v2;
  v1[1] = sub_254FD2FBC;
  v3 = sub_254FD3858();

  return v4(v3);
}

uint64_t sub_254FD2C94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254FD2CD4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_254FD33B8(v6);
  *v7 = v8;
  v7[1] = sub_254FD2FBC;

  return sub_254FD0F20(a1, v3, v4, v5);
}

uint64_t sub_254FD2D9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254FD2DD4()
{
  sub_254FD3870();
  v0 = swift_task_alloc();
  v1 = sub_254FD33B8(v0);
  *v1 = v2;
  v3 = sub_254FD33F0(v1);

  return v4(v3);
}

uint64_t sub_254FD2E6C()
{
  sub_254FD3870();
  v0 = swift_task_alloc();
  v1 = sub_254FD33B8(v0);
  *v1 = v2;
  v3 = sub_254FD33F0(v1);

  return v4(v3);
}

unint64_t sub_254FD2F18()
{
  result = qword_27F76CAC8;
  if (!qword_27F76CAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F76CAC8);
  }

  return result;
}

uint64_t sub_254FD2F5C()
{
  sub_254FC5DD4();
  sub_254FC0048(v1, v2);
  sub_254FC5864();
  v3 = sub_254FBF6B0();
  v4(v3);
  return v0;
}

void sub_254FD2FC8()
{
  v2 = v0[110];
  *(v1 - 256) = v0[113];
  *(v1 - 248) = v2;
  v3 = v0[108];
  *(v1 - 240) = v0[109];
  *(v1 - 232) = v3;
  v4 = v0[102];
  *(v1 - 224) = v0[105];
  *(v1 - 216) = v4;
  v5 = v0[98];
  *(v1 - 208) = v0[101];
  *(v1 - 200) = v5;
  v6 = v0[94];
  *(v1 - 192) = v0[95];
  *(v1 - 184) = v6;
  v7 = v0[90];
  *(v1 - 176) = v0[91];
  *(v1 - 168) = v7;
  v8 = v0[88];
  *(v1 - 160) = v0[89];
  *(v1 - 152) = v8;
  v9 = v0[82];
  *(v1 - 144) = v0[85];
  *(v1 - 136) = v9;
  v10 = v0[76];
  *(v1 - 128) = v0[79];
  *(v1 - 120) = v10;
  *(v1 - 112) = v0[73];
}

void sub_254FD3050()
{
  v2 = *(v0 + 72);
  *(v1 - 208) = *(v0 + 16);
  *(v1 - 200) = v2;
}

uint64_t sub_254FD309C(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_254FD30BC()
{

  return swift_beginAccess();
}

uint64_t sub_254FD30DC(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_254FD3150@<X0>(unint64_t a1@<X8>)
{

  return MEMORY[0x2821FC280](a1 > 1, v1 + 1, 1);
}

uint64_t sub_254FD32A8(uint64_t a1)
{
  v4 = v1[119];
  *(v2 - 144) = v1[90];
  *(v2 - 136) = v4;
  *(v2 - 152) = v1[80];

  return sub_254FF1A64();
}

uint64_t sub_254FD32FC()
{

  return MEMORY[0x28211B9D0]();
}

uint64_t sub_254FD33A0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_254FD33C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  *(v39 - 128) = a1;
  *(v39 - 96) = a1;
  *v37 = a37;
  return v38;
}

uint64_t sub_254FD341C()
{

  return MEMORY[0x28211B9D0]();
}

void sub_254FD3468()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

uint64_t sub_254FD3480()
{

  return swift_task_alloc();
}

uint64_t sub_254FD34B4()
{

  return MEMORY[0x2821FC2E0](v0, v1);
}

void sub_254FD34E8()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

void sub_254FD351C()
{
  *(v3 - 144) = v1;
  *(v3 - 136) = v0;
  *(v3 - 152) = v2;
}

void sub_254FD3544()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

uint64_t sub_254FD356C()
{
  *(v1 - 120) = v0;

  return swift_slowAlloc();
}

uint64_t sub_254FD3594()
{

  return swift_task_alloc();
}

void sub_254FD3618()
{
  v2 = *(v0 + 968);
  *(v1 - 136) = *(v0 + 936);
  *(v1 - 128) = v2;
}

BOOL sub_254FD36FC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_254FD3718()
{
}

void *sub_254FD373C()
{
  v5 = 16 * (*(v1 + 16) - v0);

  return memmove(v2, (v3 + 16 * v0), v5);
}

uint64_t sub_254FD3760()
{
  v2 = *(v0 + 736);

  return MEMORY[0x2821162B8](v2);
}

uint64_t sub_254FD3784()
{
}

uint64_t sub_254FD37A8()
{
}

uint64_t sub_254FD38DC()
{
  v2 = *(v0 + 1016);

  return sub_254FC9244(v2);
}

uint64_t sub_254FD38FC()
{

  return MEMORY[0x28211B9C0](v0, v1);
}

uint64_t sub_254FD391C(uint64_t a1)
{

  return sub_254FF1484();
}

void sub_254FD393C()
{

  sub_254FC3D0C();
}

uint64_t sub_254FD395C()
{
}

uint64_t sub_254FD397C(uint64_t a1)
{

  return sub_254FF22A4();
}

uint64_t sub_254FD399C(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 112);

  return sub_254FC9084(v1);
}

void sub_254FD39BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_254FD39DC()
{

  return sub_254FF1F24();
}

uint64_t sub_254FD39F4()
{

  return sub_254FF1F24();
}

uint64_t sub_254FD3A0C()
{

  return sub_254FF1F24();
}

uint64_t sub_254FD3A24()
{

  return sub_254FF1F24();
}

uint64_t sub_254FD3A3C()
{
}

uint64_t sub_254FD3A54()
{
}

void sub_254FD3A6C()
{
  v4 = *(v2 + v0);
  *(v2 + v0) = v1;
}

uint64_t sub_254FD3A84(uint64_t a1)
{

  return sub_254FF1A54();
}

uint64_t sub_254FD3AAC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = sub_254FF1F94();
  MEMORY[0x28223BE20](v11 - 8);
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        if (a4)
        {
          if (a6)
          {
            v12 = sqlite3_malloc(48);
            if (v12)
            {
              if (*(a4 + 16) && (v13 = v12, sub_254FF1F84(), sub_254FF1F74(), v14))
              {

                v15 = *(a2 + 8);
                v16 = *a2;
                v17 = v15;
                v18 = [v16 createTableSQL];
                if (v18)
                {
                  sub_254FF1F54();

                  v19 = sub_254FF1FB4();

                  v20 = (v19 + 32);
                }

                else
                {
                  v20 = 0;
                }

                v23 = sqlite3_declare_vtab(a1, v20);
                swift_unknownObjectRelease();
                if (!v23)
                {
                  v25 = 0;
                  v26 = 0;
                  v27 = 0;
                  v28 = v16;
                  v29 = v17;
                  swift_unknownObjectWeakInit();
                  swift_arrayInitWithCopy();
                  *a5 = v13;
                  sub_254FD6BC0(&v25);
                  return 0;
                }
              }

              else
              {
                sub_254FD6B6C();
                v21 = swift_allocError();
                *v22 = 0;
                swift_willThrow();
              }
            }
          }
        }
      }
    }
  }

  return 1;
}