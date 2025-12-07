uint64_t sub_1D9824C1C()
{
  v0 = sub_1D9849C54();
  __swift_allocate_value_buffer(v0, qword_1ECB41A08);
  __swift_project_value_buffer(v0, qword_1ECB41A08);
  return sub_1D9849C34();
}

uint64_t sub_1D9824CB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1D9849C54();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_1ECB41A20) = 0;
  v12 = MEMORY[0x1DA7376F0](a3, a4);
  if (!v12)
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1ECB41A08);
    v18 = sub_1D9849C24();
    v19 = sub_1D984A124();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D97FA000, v18, v19, "Failed to convert to body to json", v20, 2u);
      MEMORY[0x1DA738F10](v20, -1, -1);
    }

    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);

    type metadata accessor for CrashReport(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v4 + qword_1ECB41A28) = v12;
  sub_1D9826CDC(a1, a2);
  sub_1D9826CDC(a3, a4);
  v13 = sub_1D9849AE4();
  if (v13)
  {
    type metadata accessor for CrashReport.CrashRedacter();
    v14 = swift_allocObject();

    *(v14 + 24) = sub_1D98251D4() & 1;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = sub_1D982594C;
    *(v14 + 56) = 0;
    *(v14 + 16) = v13;
    *(v13 + qword_1ECB41A20) = v14;
    swift_unownedRetain();

    v15 = sub_1D9849AF4();
    v17 = v16;

    if (v15 == 3747891 && v17 == 0xE300000000000000)
    {

      goto LABEL_12;
    }

    v21 = sub_1D984A5F4();

    if (v21)
    {
      goto LABEL_12;
    }

    sub_1D9849C44();

    v22 = sub_1D9849C24();
    v23 = sub_1D984A124();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = v24;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v24 = 136315138;
      v33 = v23;
      v25 = sub_1D9849AF4();
      v27 = sub_1D9819F0C(v25, v26, &v36);

      v28 = v32;
      *(v32 + 1) = v27;
      _os_log_impl(&dword_1D97FA000, v22, v33, "Invalid bug_type for crash report: %s", v28, 0xCu);
      v29 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1DA738F10](v29, -1, -1);
      MEMORY[0x1DA738F10](v28, -1, -1);

      sub_1D981FA9C(a3, a4);
      sub_1D981FA9C(a1, a2);
    }

    else
    {
      sub_1D981FA9C(a3, a4);
      sub_1D981FA9C(a1, a2);
    }

    (*(v35 + 8))(v11, v9);

    return 0;
  }

LABEL_12:
  sub_1D981FA9C(a3, a4);
  sub_1D981FA9C(a1, a2);
  return v13;
}

void sub_1D9825138()
{
  if (*(v0 + qword_1ECB41A20))
  {

    sub_1D98262DC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9825188()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A68, &qword_1D984E348);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  qword_1ECB47630 = result;
  return result;
}

uint64_t sub_1D98251D4()
{
  if (MEMORY[0x1E697AA00])
  {
    v0 = MEMORY[0x1E697AA10] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || MEMORY[0x1E697AA18] == 0 || MEMORY[0x1E697A9F0] == 0 || MEMORY[0x1E697A9F8] == 0 || MEMORY[0x1E697AA08] == 0)
  {
    v6 = 1;
  }

  else
  {
    sub_1D9849B44();
    v5 = sub_1D9849B24();
    v6 = sub_1D9849B34();

    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9849C54();
    __swift_project_value_buffer(v7, qword_1ECB41A08);
    v8 = sub_1D9849C24();
    v9 = sub_1D984A104();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A70, &qword_1D984E350);
      v12 = sub_1D9849E44();
      v14 = sub_1D9819F0C(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D97FA000, v8, v9, "crashRedactionEnabled: found value of %{public}s from Secure Config", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA738F10](v11, -1, -1);
      MEMORY[0x1DA738F10](v10, -1, -1);
    }

    if (v6 == 2)
    {
      v15 = sub_1D9849C24();
      v16 = sub_1D984A104();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1D97FA000, v15, v16, "Got no value from SecureConfig for crashRedactionEnabled, returning false", v17, 2u);
        MEMORY[0x1DA738F10](v17, -1, -1);
      }

      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t (*sub_1D9825568())@<X0>(uint64_t a1@<X8>)
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1D9827378;
    *(v0 + 32) = sub_1D9827378;
    *(v0 + 40) = v0;
    swift_retain_n();
    sub_1D9827380(0, v2);
  }

  sub_1D9827390(v1, v2);
  return v3;
}

uint64_t sub_1D98255E4@<X0>(uint64_t a2@<X8>)
{
  swift_unownedRetainStrong();
  v3 = sub_1D9849AA4();

  if (!*(v3 + 16) || (v4 = sub_1D98447E4(0x6D617473656D6974, 0xE900000000000070), (v5 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_1D981B108(*(v3 + 56) + 32 * v4, v23);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = 1;
    goto LABEL_8;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v7 = sub_1D9849DC4();
  [v6 setDateFormat_];

  v8 = sub_1D9849A84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D9849A64();
  v12 = sub_1D9849A74();
  (*(v9 + 8))(v11, v8);
  [v6 setLocale_];

  v13 = sub_1D9849DC4();

  v14 = [v6 dateFromString_];

  if (!v14)
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D9849C54();
    __swift_project_value_buffer(v18, qword_1ECB41A08);
    v19 = sub_1D9849C24();
    v20 = sub_1D984A134();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D97FA000, v19, v20, "Report timestamp could not be parsed; defaulting to full redaction", v21, 2u);
      MEMORY[0x1DA738F10](v21, -1, -1);
    }

    goto LABEL_7;
  }

  sub_1D9849A34();

  v15 = 0;
LABEL_8:
  v16 = sub_1D9849A54();
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

unint64_t sub_1D982594C(uint64_t a1, uint64_t a2)
{
  result = a2 - a1;
  if (result)
  {
    return sub_1D9827054(result) + a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9825980()
{
  if (v0[3])
  {
    v1 = *v0;
    v2 = sub_1D9849A54();
    v3 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v2);
    v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v6 = sub_1D9825568();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A50, &unk_1D984FCF0);
    v8 = MEMORY[0x1EEE9AC00](v7 - 8);
    v10 = &v25[-v9];
    (v6)(v8);

    if ((*(v3 + 48))(v10, 1, v2) == 1)
    {
      sub_1D981A4E8(v10, &qword_1ECB41A50, &unk_1D984FCF0);
      return 2;
    }

    (*(v3 + 32))(v5, v10, v2);
    v16 = v0[6];

    v17 = v16(0, 5);

    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D9849C54();
    __swift_project_value_buffer(v18, qword_1ECB41A08);
    v19 = sub_1D9849C24();
    v20 = sub_1D984A134();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v17;
      _os_log_impl(&dword_1D97FA000, v19, v20, "Generated random number %ld for redaction", v21, 0xCu);
      MEMORY[0x1DA738F10](v21, -1, -1);
    }

    if (v17 >= 1)
    {
      (*(v3 + 8))(v5, v2);
      return 2;
    }

    if (qword_1ECB415C0 != -1)
    {
      v22 = swift_once();
    }

    v23 = qword_1ECB47630;
    MEMORY[0x1EEE9AC00](v22);
    *&v25[-32] = v5;
    *&v25[-24] = 0x40AC200000000000;
    *&v25[-16] = v1;
    os_unfair_lock_lock((v23 + 24));
    sub_1D9826DB4((v23 + 16), &v26);
    os_unfair_lock_unlock((v23 + 24));
    if (v26)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    (*(v3 + 8))(v5, v2);
    return v24;
  }

  else
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9849C54();
    __swift_project_value_buffer(v11, qword_1ECB41A08);
    v12 = sub_1D9849C24();
    v13 = sub_1D984A134();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D97FA000, v12, v13, "Crash redaction is disabled", v14, 2u);
      MEMORY[0x1DA738F10](v14, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_1D9825DDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v6 = a1;
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (v9 < 4)
  {
    goto LABEL_9;
  }

  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D9849C54();
  __swift_project_value_buffer(v10, qword_1ECB41A08);
  v11 = sub_1D9849C24();
  v12 = sub_1D984A124();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = a2;
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = 3;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v9;
    _os_log_impl(&dword_1D97FA000, v11, v12, "Error: expecting max of %ld reports per hour, but found %ld", v14, 0x16u);
    v15 = v14;
    a2 = v13;
    MEMORY[0x1DA738F10](v15, -1, -1);
  }

  v17 = *(v8 + 16);
  if (v17 < 3)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = *(sub_1D9849A54() - 8);
  if (v17 != 3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    *v6 = v8;
    v9 = *(v8 + 16);
LABEL_9:
    if (v9 != 3)
    {
      break;
    }

    v33 = a2;
    v31 = v6;
    v18 = sub_1D9849A54();
    v6 = &v31;
    v19 = *(v18 - 8);
    a2 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    if (*(v8 + 16) >= 3uLL)
    {
      v32 = a3;
      (*(v19 + 16))(&v31 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + 2 * *(v19 + 72), v18);
      sub_1D9849A14();
      v21 = v20;
      v22 = *(v19 + 8);
      result = v22(&v31 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      if (v21 < a4)
      {
        v24 = 1;
        a3 = v32;
        goto LABEL_15;
      }

      MEMORY[0x1EEE9AC00](result);
      sub_1D98261D4(2uLL, &v31 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22(&v31 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      a3 = v32;
      a2 = v33;
      break;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    sub_1D9826EB4(v8, v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), 0, 7uLL);
    v30 = v29;

    v8 = v30;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A58, &qword_1D984E338);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v31 - v26;
  v28 = sub_1D9849A54();
  (*(*(v28 - 8) + 16))(v27, a2, v28);
  result = sub_1D98270E0(0, 0, v27);
  v24 = 0;
LABEL_15:
  *a3 = v24;
  return result;
}

uint64_t sub_1D98261D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D9827364(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1D9849A54();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D98262DC()
{
  v1 = sub_1D9825980();
  v2 = *(v0 + 16);
  swift_unownedRetainStrong();
  v3 = *(v2 + qword_1ECB41A28);

  v20 = v3;
  v4 = MEMORY[0x1E69E6158];
  if (v1 == 2)
  {
    if (sub_1D98274EC(&v20) & 1) != 0 && (sub_1D9828120(&v20) & 1) != 0 && (sub_1D9828A14(&v20) & 1) != 0 && (sub_1D9828AE4(&v20) & 1) != 0 && (sub_1D9828F94(&v20) & 1) != 0 && (sub_1D98295A8(&v20))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v1 == 1)
  {
    if (sub_1D98274EC(&v20) & 1) != 0 && (sub_1D9828120(&v20) & 1) != 0 && (sub_1D9828824(&v20))
    {
      goto LABEL_15;
    }

LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A78, &qword_1D984E358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D984E260;
    *(inited + 32) = 0x7065526873617263;
    v6 = inited + 32;
    *(inited + 72) = v4;
    *(inited + 40) = 0xEB0000000074726FLL;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x80000001D9854250;
    v7 = sub_1D98337FC(inited);
    swift_setDeallocating();
    sub_1D981A4E8(v6, &qword_1ECB41A80, &qword_1D984E780);

    v20 = v7;
    if (v1 != 2)
    {
LABEL_15:
      v8 = 0xE700000000000000;
      v9 = 0x6C616974726150;
      goto LABEL_17;
    }

LABEL_14:
    v8 = 0xE400000000000000;
    v9 = 1819047238;
    goto LABEL_17;
  }

  v8 = 0xE400000000000000;
  v9 = 1701736270;
LABEL_17:
  v19 = v4;
  *&v18 = v9;
  *(&v18 + 1) = v8;
  sub_1D982799C(&v18, v17);
  v10 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D98472B8(v17, 0x6F69746361646572, 0xEE006C6576654C6ELL, isUniquelyReferenced_nonNull_native);
  swift_unownedRetainStrong();
  *(v2 + qword_1ECB41A28) = v10;

  type metadata accessor for CrashReport(0);
  v12 = MEMORY[0x1DA737710](v10);
  if (v13 >> 60 != 15)
  {
    v14 = v12;
    v15 = v13;
    swift_unownedRetainStrong();
    sub_1D9826CDC(v14, v15);
    sub_1D9849AD4();

    sub_1D98279AC(v14, v15);
  }
}

uint64_t sub_1D98265AC()
{
  swift_unownedRelease();
  sub_1D9827380(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

double sub_1D98265F4()
{

  return result;
}

uint64_t CrashReport.deinit()
{
  v0 = _s15CoreDiagnostics12JetsamReportCfd_0();

  return v0;
}

uint64_t CrashReport.__deallocating_deinit()
{
  v0 = _s15CoreDiagnostics12JetsamReportCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1D98266F0()
{
  if (*(*v0 + qword_1ECB41A20))
  {

    sub_1D98262DC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D98267C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1D9849C54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9826CDC(a1, a2);
  sub_1D9826CDC(a3, a4);
  v12 = sub_1D9849AE4();
  if (!v12)
  {
    goto LABEL_6;
  }

  v30 = v9;

  v13 = sub_1D9849AF4();
  v15 = v14;

  if (v13 == 3684658 && v15 == 0xE300000000000000)
  {

LABEL_6:
    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);
    return v12;
  }

  v16 = sub_1D984A5F4();

  if (v16)
  {
    goto LABEL_6;
  }

  sub_1D9849C44();

  v18 = sub_1D9849C24();
  v19 = sub_1D984A124();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = v20;
    v29 = swift_slowAlloc();
    v31 = v29;
    *v20 = 136315138;
    v28 = v19;
    v21 = sub_1D9849AF4();
    v23 = sub_1D9819F0C(v21, v22, &v31);

    v24 = v27;
    *(v27 + 1) = v23;
    _os_log_impl(&dword_1D97FA000, v18, v28, "Invalid bug_type for Jetsam report: %s", v24, 0xCu);
    v25 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA738F10](v25, -1, -1);
    MEMORY[0x1DA738F10](v24, -1, -1);

    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);
  }

  else
  {
    sub_1D981FA9C(a3, a4);
    sub_1D981FA9C(a1, a2);
  }

  (*(v30 + 8))(v11, v8);

  return 0;
}

uint64_t JetsamReport.__deallocating_deinit()
{
  v0 = _s15CoreDiagnostics12JetsamReportCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1D9826C04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9826CDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_1D9826D30(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A90, &qword_1D984E368);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_1D9826DD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A90, &qword_1D984E368);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D9826EB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A60, &qword_1D984E340);
      v7 = *(sub_1D9849A54() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_1D9849A54();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_1D9827054(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1DA738F30](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1DA738F30](&v3, 8);
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

unint64_t sub_1D98270E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D9832928(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D98271B4(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1D98271B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1D9849A54();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D981A4E8(v25, &qword_1ECB41A58, &qword_1D984E338);
  }

  if (v18 < 1)
  {
    return sub_1D981A4E8(v25, &qword_1ECB41A58, &qword_1D984E338);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1D981A4E8(v25, &qword_1ECB41A58, &qword_1D984E338);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D9827380(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D9827390(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D98273A0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_1D98447E4(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1D9846B90(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_1D98447E4(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_1D984A634();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_1D98475FC();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1D9847590(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_1D982799C((v12[7] + 32 * v13), a4);
  result = sub_1D982799C(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
  return result;
}

uint64_t sub_1D98274EC(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16) || (v2 = sub_1D98447E4(0x73646165726874, 0xE700000000000000), (v3 & 1) == 0) || (sub_1D981B108(*(v1 + 56) + 32 * v2, &v45), v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ECB415B8 != -1)
    {
LABEL_42:
      swift_once();
    }

    v37 = sub_1D9849C54();
    __swift_project_value_buffer(v37, qword_1ECB41A08);
    v38 = sub_1D9849C24();
    v39 = sub_1D984A124();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D97FA000, v38, v39, "Crash report missing thread data", v40, 2u);
      MEMORY[0x1DA738F10](v40, -1, -1);
    }

    return 0;
  }

  v42 = v4;
  v5 = *&v44[0];
  v6 = *(*&v44[0] + 16);
  if (!v6)
  {
LABEL_39:
    *(&v46 + 1) = v42;
    *&v45 = v5;
    sub_1D9845214(&v45, 0x73646165726874, 0xE700000000000000);
    return 1;
  }

  v7 = 0xEB00000000657461;
  v8 = 0x7453646165726874;
  v9 = 4;
  while (1)
  {
    if ((v9 - 4) >= v5[2])
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v11 = v5[v9];
    if (!*(v11 + 16))
    {
      goto LABEL_7;
    }

    v12 = sub_1D98447E4(v8, v7);
    if (v13)
    {
      break;
    }

LABEL_7:
    v45 = 0u;
    v46 = 0u;
    v10 = &v45;
LABEL_8:
    sub_1D981A4E8(v10, &qword_1ECB41A98, &qword_1D984E370);
LABEL_9:
    ++v9;
    if (!--v6)
    {
      goto LABEL_39;
    }
  }

  sub_1D981B108(*(v11 + 56) + 32 * v12, &v45);

  sub_1D981A4E8(&v45, &qword_1ECB41A98, &qword_1D984E370);
  v45 = 0u;
  v46 = 0u;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D9827350(v5);
  }

  if ((v9 - 4) >= v5[2])
  {
    goto LABEL_41;
  }

  if (!*(&v46 + 1))
  {
    sub_1D981A4E8(&v45, &qword_1ECB41A98, &qword_1D984E370);
    v28 = sub_1D98447E4(v8, v7);
    if (v29)
    {
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v5[v9];
      v5[v9] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D98475FC();
      }

      sub_1D982799C((*(v43 + 56) + 32 * v30), v44);
      sub_1D9847108(v30, v43);
      v5[v9] = v43;
    }

    else
    {
      memset(v44, 0, sizeof(v44));
    }

    v10 = v44;
    goto LABEL_8;
  }

  sub_1D982799C(&v45, v44);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v15 = v5[v9];
  v5[v9] = 0x8000000000000000;
  v16 = v8;
  v17 = v8;
  v18 = v7;
  v20 = sub_1D98447E4(v17, v7);
  v21 = v15[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (!__OFADD__(v21, v22))
  {
    v24 = v19;
    if (v15[3] >= v23)
    {
      if (v14)
      {
        v27 = v15;
        if ((v19 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1D98475FC();
        v27 = v15;
        if ((v24 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      sub_1D9846B90(v23, v14);
      v25 = sub_1D98447E4(v16, v18);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_45;
      }

      v20 = v25;
      v27 = v15;
      if ((v24 & 1) == 0)
      {
LABEL_32:
        v27[(v20 >> 6) + 8] |= 1 << v20;
        v33 = (v27[6] + 16 * v20);
        *v33 = v16;
        v33[1] = v18;
        v7 = v18;
        sub_1D982799C(v44, (v27[7] + 32 * v20));
        v34 = v27[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_44;
        }

        v27[2] = v36;
        goto LABEL_34;
      }
    }

    v32 = (v27[7] + 32 * v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    sub_1D982799C(v44, v32);
    v7 = v18;
LABEL_34:
    v5[v9] = v27;

    v8 = v16;
    goto LABEL_9;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1D984A634();
  __break(1u);
  return result;
}

_OWORD *sub_1D982799C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D98279AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D981FA9C(result, a2);
  }

  return result;
}

uint64_t sub_1D98279C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_3:
  v5 = 0;
  v6 = 0;
  v7 = v4 + 4;
  v8 = v3 + 3;
  v9 = MEMORY[0x1E69E6530];
  v56 = v4;
  while (1)
  {
    if (!v5)
    {
      v6 = v2[2];
    }

    v10 = __OFSUB__(v6--, 1);
    if (v10)
    {
      goto LABEL_52;
    }

    if (v8 - 4 >= v3)
    {
      goto LABEL_53;
    }

    if (v8 - 4 >= v2[2])
    {
      goto LABEL_54;
    }

    v11 = v2[v8];
    if (!*(v11 + 16))
    {
      goto LABEL_39;
    }

    v12 = sub_1D98447E4(0x646E496567616D69, 0xEA00000000007865);
    if ((v13 & 1) == 0)
    {
      break;
    }

    sub_1D981B108(*(v11 + 56) + 32 * v12, &v61);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    if ((v59 & 0x8000000000000000) != 0 || v59 >= *(a2 + 16))
    {
      v64[0] = 0x66664F6567616D69;
      v64[1] = 0xEB00000000746573;
      v64[2] = 0;
      v64[5] = v9;
      v65[0] = 0x6C6F626D7973;
      v65[1] = 0xE600000000000000;
      v65[5] = MEMORY[0x1E69E6158];
      v65[2] = 0x657463616465723CLL;
      v65[3] = 0xEA00000000003E64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
      v17 = sub_1D984A3F4();

      sub_1D9829674(v64, &v61);
      v18 = v61;
      v19 = v62;
      v20 = sub_1D98447E4(v61, v62);
      if (v21)
      {
        goto LABEL_50;
      }

      *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
      v22 = (v17[6] + 16 * v20);
      *v22 = v18;
      v22[1] = v19;
      sub_1D982799C(v63, (v17[7] + 32 * v20));
      v23 = v17[2];
      v10 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v10)
      {
        goto LABEL_51;
      }

      v17[2] = v24;
      sub_1D9829674(v65, &v61);
      v25 = v61;
      v26 = v62;
      v27 = sub_1D98447E4(v61, v62);
      if (v28)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v4 = sub_1D9827350(v2);
        goto LABEL_3;
      }

      *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v27;
      v29 = (v17[6] + 16 * v27);
      *v29 = v25;
      v29[1] = v26;
      sub_1D982799C(v63, (v17[7] + 32 * v27));
      v30 = v17[2];
      v10 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v10)
      {
        goto LABEL_51;
      }

      v17[2] = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A80, &qword_1D984E780);
      swift_arrayDestroy();
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      v4 = v56;
      if (v6 >= v56[2])
      {
        goto LABEL_56;
      }

      goto LABEL_34;
    }

    v14 = *(a2 + 32 + 8 * v59);
    if (!*(v14 + 16))
    {
      goto LABEL_44;
    }

    v15 = sub_1D98447E4(0x656372756F73, 0xE600000000000000);
    if ((v16 & 1) == 0)
    {

LABEL_44:

      *a1 = v4;
      if (qword_1ECB415B8 != -1)
      {
        swift_once();
      }

      v53 = sub_1D9849C54();
      __swift_project_value_buffer(v53, qword_1ECB41A08);
      v49 = sub_1D9849C24();
      v50 = sub_1D984A124();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "Crash frame has valid image index, but image missing source name";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    sub_1D981B108(*(v14 + 56) + 32 * v15, &v61);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_44;
    }

    if (v59 == 65 && v60 == 0xE100000000000000)
    {

LABEL_28:
      v57[0] = 0x66664F6567616D69;
      v57[1] = 0xEB00000000746573;
      v57[2] = 0;
      v57[5] = v9;
      v58[0] = 0x6C6F626D7973;
      v58[1] = 0xE600000000000000;
      v58[5] = MEMORY[0x1E69E6158];
      v58[2] = 0x657463616465723CLL;
      v58[3] = 0xEA00000000003E64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
      v17 = sub_1D984A3F4();

      sub_1D9829674(v57, &v61);
      v34 = v61;
      v33 = v62;
      v35 = sub_1D98447E4(v61, v62);
      if (v36)
      {
        goto LABEL_57;
      }

      *(v17 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
      v37 = (v17[6] + 16 * v35);
      *v37 = v34;
      v37[1] = v33;
      sub_1D982799C(v63, (v17[7] + 32 * v35));
      v38 = v17[2];
      v10 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v10)
      {
        goto LABEL_58;
      }

      v17[2] = v39;
      sub_1D9829674(v58, &v61);
      v40 = v61;
      v41 = v62;
      v42 = sub_1D98447E4(v61, v62);
      if (v43)
      {
        goto LABEL_57;
      }

      *(v17 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v42;
      v44 = (v17[6] + 16 * v42);
      *v44 = v40;
      v44[1] = v41;
      sub_1D982799C(v63, (v17[7] + 32 * v42));
      v45 = v17[2];
      v10 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v10)
      {
        goto LABEL_58;
      }

      v17[2] = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A80, &qword_1D984E780);
      swift_arrayDestroy();
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v4 = v56;
      if (v6 >= v56[2])
      {
        goto LABEL_60;
      }

LABEL_34:
      v7[v6] = v17;

      v9 = MEMORY[0x1E69E6530];
      goto LABEL_35;
    }

    v32 = sub_1D984A5F4();

    if (v32)
    {
      goto LABEL_28;
    }

LABEL_35:
    --v8;
    ++v5;
    if (v8 == 3)
    {

      *a1 = v4;
      return 1;
    }
  }

LABEL_39:

  *a1 = v4;
  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v48 = sub_1D9849C54();
  __swift_project_value_buffer(v48, qword_1ECB41A08);
  v49 = sub_1D9849C24();
  v50 = sub_1D984A124();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "Crash frame missing image index";
LABEL_48:
    _os_log_impl(&dword_1D97FA000, v49, v50, v52, v51, 2u);
    MEMORY[0x1DA738F10](v51, -1, -1);
  }

LABEL_49:

  return 0;
}

uint64_t sub_1D9828120(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16) || (v3 = sub_1D98447E4(0x73646165726874, 0xE700000000000000), (v4 & 1) == 0) || (sub_1D981B108(*(v1 + 56) + 32 * v3, &v41), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ECB415B8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9849C54();
    __swift_project_value_buffer(v11, qword_1ECB41A08);
    v12 = sub_1D9849C24();
    v13 = sub_1D984A124();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D97FA000, v12, v13, "Crash report missing thread data", v14, 2u);
      MEMORY[0x1DA738F10](v14, -1, -1);
    }

    return 0;
  }

  v6 = v38;
  v7 = *(v1 + 16);

  if (v7 && (v8 = sub_1D98447E4(0x67616D4964657375, 0xEA00000000007365), (v9 & 1) != 0) && (sub_1D981B108(*(v1 + 56) + 32 * v8, &v41), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v38;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v38 + 16);

  if (!v16)
  {
LABEL_26:
    v42 = v5;
    *&v41 = v6;

    sub_1D9845214(&v41, 0x73646165726874, 0xE700000000000000);
    v21 = *a1;
    if (!*(*a1 + 16) || (v22 = sub_1D98447E4(0xD000000000000016, 0x80000001D9854270), (v23 & 1) == 0))
    {

      goto LABEL_32;
    }

    sub_1D981B108(*(v21 + 56) + 32 * v22, &v38);
    sub_1D982799C(&v38, &v41);
    sub_1D981B108(&v41, &v38);
    if (swift_dynamicCast())
    {
      v40 = v37;
      v24 = sub_1D98279C0(&v40, v10);

      if (v24)
      {
        v39 = v5;
        *&v38 = v40;
        sub_1D9845214(&v38, 0xD000000000000016, 0x80000001D9854270);
        __swift_destroy_boxed_opaque_existential_1Tm(&v41);
LABEL_32:

        return 1;
      }

      if (qword_1ECB415B8 != -1)
      {
        swift_once();
      }

      v36 = sub_1D9849C54();
      __swift_project_value_buffer(v36, qword_1ECB41A08);
      v32 = sub_1D9849C24();
      v33 = sub_1D984A124();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_52:

        __swift_destroy_boxed_opaque_existential_1Tm(&v41);

        return 0;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Failed to redact frames for lastExceptionBacktrace";
    }

    else
    {

      if (qword_1ECB415B8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D9849C54();
      __swift_project_value_buffer(v31, qword_1ECB41A08);
      v32 = sub_1D9849C24();
      v33 = sub_1D984A124();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_52;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Unexpected type for exception backtrace";
    }

    _os_log_impl(&dword_1D97FA000, v32, v33, v35, v34, 2u);
    MEMORY[0x1DA738F10](v34, -1, -1);
    goto LABEL_52;
  }

  v17 = 0;
  while (1)
  {
    if (v17 >= v6[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
LABEL_35:
      v25 = sub_1D9849C54();
      __swift_project_value_buffer(v25, qword_1ECB41A08);
      v26 = sub_1D9849C24();
      v27 = sub_1D984A124();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_42;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Crash report frames have unexpected type";
      goto LABEL_41;
    }

    v18 = v6[v17 + 4];
    if (!*(v18 + 16))
    {
      goto LABEL_34;
    }

    v19 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
    if ((v20 & 1) == 0)
    {

LABEL_34:

      if (qword_1ECB415B8 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_55;
    }

    sub_1D981B108(*(v18 + 56) + 32 * v19, &v41);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v40 = v38;
    if ((sub_1D98279C0(&v40, v10) & 1) == 0)
    {
      break;
    }

    v39 = v5;
    *&v38 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D9827350(v6);
    }

    if (v17 >= v6[2])
    {
      goto LABEL_54;
    }

    sub_1D98273A0(&v38, 0x73656D617266, 0xE600000000000000, &v41);
    sub_1D981A4E8(&v41, &qword_1ECB41A98, &qword_1D984E370);
    if (++v17 == v16)
    {
      goto LABEL_26;
    }
  }

  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D9849C54();
  __swift_project_value_buffer(v30, qword_1ECB41A08);
  v26 = sub_1D9849C24();
  v27 = sub_1D984A124();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Failed to redact frames for normal thread";
LABEL_41:
    _os_log_impl(&dword_1D97FA000, v26, v27, v29, v28, 2u);
    MEMORY[0x1DA738F10](v28, -1, -1);
  }

LABEL_42:

  return 0;
}

uint64_t sub_1D9828824(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16))
  {
    return 1;
  }

  v2 = sub_1D98447E4(0xD000000000000016, 0x80000001D9854270);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  sub_1D981B108(*(v1 + 56) + 32 * v2, &v12);
  sub_1D982799C(&v12, v14);
  sub_1D981B108(v14, &v12);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A88, &qword_1D984E360);
  if (swift_dynamicCast())
  {
    if (*(v11 + 16) < 0x21uLL)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      sub_1D9826DD8(v11, v11 + 32, 0, 0x41uLL);
      v13 = v4;
      *&v12 = v5;
      sub_1D9845214(&v12, 0xD000000000000016, 0x80000001D9854270);

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    return 1;
  }

  if (qword_1ECB415B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D9849C54();
  __swift_project_value_buffer(v6, qword_1ECB41A08);
  v7 = sub_1D9849C24();
  v8 = sub_1D984A124();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D97FA000, v7, v8, "Unexpected type for exception backtrace", v9, 2u);
    MEMORY[0x1DA738F10](v9, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return 0;
}

uint64_t sub_1D9828A14(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16) && (v2 = sub_1D98447E4(0x6F69747065637865, 0xE90000000000006ELL), (v3 & 1) != 0))
  {
    sub_1D981B108(*(v1 + 56) + 32 * v2, &v5);
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
    v5 = 0u;
    v6 = 0u;
    sub_1D9845214(&v5, 0x6F69747065637865, 0xE90000000000006ELL);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
  }

  return 1;
}

uint64_t sub_1D9828AE4(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    v2 = sub_1D98447E4(0x73646165726874, 0xE700000000000000);
    if (v3)
    {
      sub_1D981B108(*(v1 + 56) + 32 * v2, &v39);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378);
      if (swift_dynamicCast())
      {
        v36 = v4;
        v5 = *&v38[0];
        v6 = *(*&v38[0] + 16);
        if (!v6)
        {
LABEL_41:
          *(&v40 + 1) = v36;
          *&v39 = v5;
          sub_1D9845214(&v39, 0x73646165726874, 0xE700000000000000);
          return 1;
        }

        v7 = 4;
        while (1)
        {
          if ((v7 - 4) >= v5[2])
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v9 = v5[v7];
          if (*(v9 + 16))
          {

            v10 = sub_1D98447E4(0x6572656767697274, 0xE900000000000064);
            if (v11)
            {
              sub_1D981B108(*(v9 + 56) + 32 * v10, &v39);

              if (swift_dynamicCast() & 1) != 0 && (v38[0])
              {
                goto LABEL_8;
              }
            }

            else
            {
            }
          }

          v39 = 0u;
          v40 = 0u;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1D9827350(v5);
          }

          if ((v7 - 4) >= v5[2])
          {
            goto LABEL_43;
          }

          if (!*(&v40 + 1))
          {
            sub_1D981A4E8(&v39, &qword_1ECB41A98, &qword_1D984E370);
            v23 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
            if (v24)
            {
              v25 = v23;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v37 = v5[v7];
              v5[v7] = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1D98475FC();
              }

              sub_1D982799C((*(v37 + 56) + 32 * v25), v38);
              sub_1D9847108(v25, v37);
              v5[v7] = v37;
            }

            else
            {
              memset(v38, 0, sizeof(v38));
            }

            sub_1D981A4E8(v38, &qword_1ECB41A98, &qword_1D984E370);
            goto LABEL_8;
          }

          sub_1D982799C(&v39, v38);
          v12 = swift_isUniquelyReferenced_nonNull_native();
          v13 = v5[v7];
          v5[v7] = 0x8000000000000000;
          v15 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
          v16 = v13[2];
          v17 = (v14 & 1) == 0;
          v18 = v16 + v17;
          if (__OFADD__(v16, v17))
          {
            goto LABEL_44;
          }

          v19 = v14;
          if (v13[3] >= v18)
          {
            if (v12)
            {
              v22 = v13;
              if ((v14 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              sub_1D98475FC();
              v22 = v13;
              if ((v19 & 1) == 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            sub_1D9846B90(v18, v12);
            v20 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
            if ((v19 & 1) != (v21 & 1))
            {
              result = sub_1D984A634();
              __break(1u);
              return result;
            }

            v15 = v20;
            v22 = v13;
            if ((v19 & 1) == 0)
            {
LABEL_31:
              v22[(v15 >> 6) + 8] |= 1 << v15;
              v27 = (v22[6] + 16 * v15);
              *v27 = 0x73656D617266;
              v27[1] = 0xE600000000000000;
              sub_1D982799C(v38, (v22[7] + 32 * v15));
              v28 = v22[2];
              v29 = __OFADD__(v28, 1);
              v30 = v28 + 1;
              if (v29)
              {
                goto LABEL_45;
              }

              v22[2] = v30;
              goto LABEL_7;
            }
          }

          v8 = (v22[7] + 32 * v15);
          __swift_destroy_boxed_opaque_existential_1Tm(v8);
          sub_1D982799C(v38, v8);
LABEL_7:
          v5[v7] = v22;

LABEL_8:
          ++v7;
          if (!--v6)
          {
            goto LABEL_41;
          }
        }
      }
    }
  }

  if (qword_1ECB415B8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v31 = sub_1D9849C54();
  __swift_project_value_buffer(v31, qword_1ECB41A08);
  v32 = sub_1D9849C24();
  v33 = sub_1D984A124();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D97FA000, v32, v33, "Crash report missing thread data", v34, 2u);
    MEMORY[0x1DA738F10](v34, -1, -1);
  }

  return 0;
}

uint64_t sub_1D9828F94(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16) || (v2 = sub_1D98447E4(0x73646165726874, 0xE700000000000000), (v3 & 1) == 0) || (sub_1D981B108(*(v1 + 56) + 32 * v2, &v49), v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378), v5 = MEMORY[0x1E69E7CA0], (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ECB415B8 != -1)
    {
LABEL_47:
      swift_once();
    }

    v9 = sub_1D9849C54();
    __swift_project_value_buffer(v9, qword_1ECB41A08);
    v10 = sub_1D9849C24();
    v11 = sub_1D984A124();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D97FA000, v10, v11, "Crash report missing thread data", v12, 2u);
      MEMORY[0x1DA738F10](v12, -1, -1);
    }

    return 0;
  }

  v44 = v4;
  v6 = v47;
  v7 = *(v47 + 16);
  if (!v7)
  {
LABEL_41:
    v50 = v44;
    *&v49 = v6;
    sub_1D9845214(&v49, 0x73646165726874, 0xE700000000000000);
    return 1;
  }

  v8 = 4;
  while (1)
  {
    if ((v8 - 4) >= v6[2])
    {
      __break(1u);
      goto LABEL_47;
    }

    v14 = v6[v8];
    if (*(v14 + 16))
    {
      break;
    }

LABEL_12:
    ++v8;
    if (!--v7)
    {
      goto LABEL_41;
    }
  }

  v15 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
  if ((v16 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1D981B108(*(v14 + 56) + 32 * v15, &v47);

  sub_1D982799C(&v47, &v49);
  sub_1D981B108(&v49, &v47);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A88, &qword_1D984E360);
  if (swift_dynamicCast())
  {
    if (*(*&v46[0] + 16) >= 0x21uLL)
    {
      v18 = sub_1D9826D30(32, 0);
      swift_arrayInitWithCopy();
      v48 = v17;
      *&v47 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D9827350(v6);
      }

      if ((v8 - 4) >= v6[2])
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (!v48)
      {
        sub_1D981A4E8(&v47, &qword_1ECB41A98, &qword_1D984E370);
        v31 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
        if (v32)
        {
          v33 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v6[v8];
          v6[v8] = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D98475FC();
          }

          sub_1D982799C((*(v45 + 56) + 32 * v33), v46);
          sub_1D9847108(v33, v45);
          v6[v8] = v45;
        }

        else
        {
          memset(v46, 0, sizeof(v46));
        }

        sub_1D981A4E8(v46, &qword_1ECB41A98, &qword_1D984E370);
        __swift_destroy_boxed_opaque_existential_1Tm(&v49);
        goto LABEL_12;
      }

      v19 = v5;
      sub_1D982799C(&v47, v46);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = v6[v8];
      v6[v8] = 0x8000000000000000;
      v23 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_49;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if (v20)
        {
          v30 = v21;
          if ((v22 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_1D98475FC();
          v30 = v21;
          if ((v27 & 1) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_1D9846B90(v26, v20);
        v28 = sub_1D98447E4(0x73656D617266, 0xE600000000000000);
        if ((v27 & 1) != (v29 & 1))
        {
          result = sub_1D984A634();
          __break(1u);
          return result;
        }

        v23 = v28;
        v30 = v21;
        if ((v27 & 1) == 0)
        {
LABEL_38:
          v30[(v23 >> 6) + 8] |= 1 << v23;
          v36 = (v30[6] + 16 * v23);
          *v36 = 0x73656D617266;
          v36[1] = 0xE600000000000000;
          sub_1D982799C(v46, (v30[7] + 32 * v23));

          __swift_destroy_boxed_opaque_existential_1Tm(&v49);
          v37 = v30[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_50;
          }

          v30[2] = v39;
          goto LABEL_40;
        }
      }

      v35 = (v30[7] + 32 * v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      sub_1D982799C(v46, v35);

      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
LABEL_40:
      v5 = v19;
      v6[v8] = v30;

      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    goto LABEL_11;
  }

  if (qword_1ECB415B8 == -1)
  {
    goto LABEL_43;
  }

LABEL_51:
  swift_once();
LABEL_43:
  v40 = sub_1D9849C54();
  __swift_project_value_buffer(v40, qword_1ECB41A08);
  v41 = sub_1D9849C24();
  v42 = sub_1D984A124();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1D97FA000, v41, v42, "Thread has backtrace with unexpected type", v43, 2u);
    MEMORY[0x1DA738F10](v43, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v49);

  return 0;
}

uint64_t sub_1D98295A8(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16) && (v2 = sub_1D98447E4(0xD000000000000016, 0x80000001D9854270), (v3 & 1) != 0))
  {
    sub_1D981B108(*(v1 + 56) + 32 * v2, &v5);
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
    v5 = 0u;
    v6 = 0u;
    sub_1D9845214(&v5, 0xD000000000000016, 0x80000001D9854270);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    sub_1D981A4E8(&v5, &qword_1ECB41A98, &qword_1D984E370);
  }

  return 1;
}

uint64_t sub_1D9829674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A80, &qword_1D984E780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98296E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x7265747369676572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x756E2D6574756F72;
    }

    else
    {
      v5 = 6778732;
    }

    if (v4 == 2)
    {
      v6 = 0xEC0000007265626DLL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x2D786F626C69616DLL;
    }

    else
    {
      v5 = 0x7265747369676572;
    }

    if (v4)
    {
      v6 = 0xED0000726F727265;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0x756E2D6574756F72;
  v8 = 0xEC0000007265626DLL;
  if (a2 != 2)
  {
    v7 = 6778732;
    v8 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 0x2D786F626C69616DLL;
    v2 = 0xED0000726F727265;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D984A5F4();
  }

  return v11 & 1;
}

uint64_t sub_1D9829844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000079726F7473;
  v3 = 0xD000000000000010;
  v4 = 0x69685F746E657665;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x69685F746E657665;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v5 == 2)
    {
      v7 = 0xED000079726F7473;
    }

    else
    {
      v7 = 0x80000001D9853810;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v5)
    {
      v7 = 0x80000001D98537E0;
    }

    else
    {
      v7 = 0x80000001D98537C0;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000010;
    v2 = 0x80000001D9853810;
  }

  v8 = 0x80000001D98537E0;
  if (a2)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v8 = 0x80000001D98537C0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D984A5F4();
  }

  return v11 & 1;
}

uint64_t sub_1D9829970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0x6D617473656D6974;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x656372756F73;
  v7 = 0x756E5F746E657665;
  v8 = 0xEC0000007265626DLL;
  if (a1 != 4)
  {
    v7 = 1635017060;
    v8 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6F6972616E656373;
  if (a1 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v10 = 0x6D617473656D6974;
    v9 = 0xE900000000000070;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x656372756F73)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC0000007265626DLL;
      if (v11 != 0x756E5F746E657665)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v11 != 1635017060)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6F6972616E656373)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x6574617473;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1D984A5F4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1D9829B38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657463656E6E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 6580592;
    }

    else
    {
      v5 = 0x7265765F7773;
    }

    if (v4 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 6580598;
    }

    else
    {
      v5 = 0x657463656E6E6F63;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE300000000000000;
  v8 = 6580592;
  if (a2 != 2)
  {
    v8 = 0x7265765F7773;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 6580598;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D984A5F4();
  }

  return v11 & 1;
}

uint64_t sub_1D9829C5C(unsigned __int8 a1)
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

uint64_t sub_1D9829D60(uint64_t a1, unsigned __int8 a2)
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

void *sub_1D9829E60(void *result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_12;
    }

    v5 = result[2];
    v4 = result[3];
    v3 = v4 - v5;
    if (__OFSUB__(v4, v5))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (!v3)
    {
LABEL_12:
      sub_1D981FA9C(result, a2);
      return MEMORY[0x1E69E7CC0];
    }

LABEL_8:
    v6 = result;
    v8 = sub_1D983F8E8(v3, 0);
    v9 = sub_1D9849A04();
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v8;
    v14 = sub_1D98499E4();
    sub_1D981FA9C(v6, a2);
    result = (*(v10 + 8))(v12, v9);
    if (v14 == v3)
    {
      return v13;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!v2)
  {
    v3 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v15 = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v3 = v15;
    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D9829FEC()
{
  v0 = sub_1D9849C54();
  __swift_allocate_value_buffer(v0, qword_1ECB47658);
  __swift_project_value_buffer(v0, qword_1ECB47658);
  return sub_1D9849C34();
}

uint64_t sub_1D982A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_1D983392C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BD8, &qword_1D984E7E0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

void sub_1D982A180(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a3 >> 60 != 15)
  {
    v11 = *(a1 + 16);
    sub_1D9826CDC(a2, a3);
    if (!v11 || (v12 = sub_1D98447E4(0x2D6E6F6974636573, 0xEE0074657366666FLL), (v13 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v12, v44), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v20 = sub_1D9849C54();
      __swift_project_value_buffer(v20, qword_1ECB47658);
      v21 = sub_1D9849C24();
      v22 = sub_1D984A124();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Offset section not available to decode Csif";
      goto LABEL_25;
    }

    if (!*(a1 + 16) || (v14 = sub_1D98447E4(0x2D6E6F6974636573, 0xEC000000657A6973), (v15 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v14, v44), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v25 = sub_1D9849C54();
      __swift_project_value_buffer(v25, qword_1ECB47658);
      v21 = sub_1D9849C24();
      v22 = sub_1D984A124();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Size section not available to decode Csif";
      goto LABEL_25;
    }

    if (v43 < 28 || v43 < 0)
    {
LABEL_45:
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v32 = sub_1D9849C54();
      __swift_project_value_buffer(v32, qword_1ECB47658);
      v21 = sub_1D9849C24();
      v22 = sub_1D984A124();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Invalid size and offset for Csif";
LABEL_25:
      _os_log_impl(&dword_1D97FA000, v21, v22, v24, v23, 2u);
      MEMORY[0x1DA738F10](v23, -1, -1);
LABEL_26:
      sub_1D98279AC(a2, a3);

      return;
    }

    v16 = 2 * v43;
    if (__OFADD__(v43, v43))
    {
      __break(1u);
    }

    v17 = a4;
    v18 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v18 != 2)
      {
        if (v16 < 0)
        {
          *&v44[6] = 0;
          *v44 = 0;
          v40 = v44;
          v39 = v44;
          goto LABEL_62;
        }

        goto LABEL_45;
      }

      v27 = *(a2 + 16);
      v26 = *(a2 + 24);
      v28 = __OFSUB__(v26, v27);
      v19 = v26 - v27;
      if (!v28)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v19 = BYTE6(a3);
      goto LABEL_37;
    }

    LODWORD(v19) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v19 = v19;
LABEL_37:
    if (v16 < v19)
    {
      if (v18 == 2)
      {
        v33 = *(a2 + 16);
        v34 = *(a2 + 24);
        v30 = sub_1D98498C4();
        if (v30)
        {
          v35 = sub_1D98498E4();
          if (__OFSUB__(v33, v35))
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v30 += v33 - v35;
        }

        v28 = __OFSUB__(v34, v33);
        v29 = v34 - v33;
        if (!v28)
        {
          goto LABEL_53;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v18 == 1)
      {
        v29 = (a2 >> 32) - a2;
        if (a2 >> 32 >= a2)
        {
          v30 = sub_1D98498C4();
          if (!v30)
          {
LABEL_53:
            v36 = sub_1D98498D4();
            if (v36 >= v29)
            {
              v37 = v29;
            }

            else
            {
              v37 = v36;
            }

            v38 = (v37 + v30);
            if (v30)
            {
              v39 = v38;
            }

            else
            {
              v39 = 0;
            }

            v40 = v30;
            v41 = v43;
            v17 = a4;
            goto LABEL_63;
          }

          v31 = sub_1D98498E4();
          if (!__OFSUB__(a2, v31))
          {
            v30 += a2 - v31;
            goto LABEL_53;
          }

LABEL_69:
          __break(1u);
          return;
        }

        goto LABEL_66;
      }

      *v44 = a2;
      *&v44[8] = a3;
      v44[10] = BYTE2(a3);
      v44[11] = BYTE3(a3);
      v44[12] = BYTE4(a3);
      v44[13] = BYTE5(a3);
      v39 = &v44[BYTE6(a3)];
      v40 = v44;
LABEL_62:
      v41 = v43;
LABEL_63:
      sub_1D982AA80(v40, v39, v41, v17, v43);
      sub_1D98279AC(a2, a3);
      return;
    }

    goto LABEL_45;
  }

  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D9849C54();
  __swift_project_value_buffer(v4, qword_1ECB47658);
  oslog = sub_1D9849C24();
  v5 = sub_1D984A124();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D97FA000, oslog, v5, "Binary not available to decode Csif", v6, 2u);
    MEMORY[0x1DA738F10](v6, -1, -1);
  }
}

void sub_1D982A784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D9849C54();
    __swift_project_value_buffer(v11, qword_1ECB47658);
    v7 = sub_1D9849C24();
    v12 = sub_1D984A124();
    if (!os_log_type_enabled(v7, v12))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Failed to retrieve base address from raw buffer binary";
    v13 = v12;
    v14 = v7;
    v15 = v9;
    v16 = 2;
    goto LABEL_17;
  }

  if (a4 < 28)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D9849C54();
    __swift_project_value_buffer(v6, qword_1ECB47658);
    v7 = sub_1D9849C24();
    v8 = sub_1D984A124();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a4;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 28;
    v10 = "MTBF section too small to decode: (%ld < %ld)";
    goto LABEL_16;
  }

  v18 = *(a1 + a3 + 28);
  v17 = *(a1 + a3 + 32);
  v19 = *(a1 + a3 + 36);
  *(a5 + 160) = *(a1 + a3 + 24);
  *(a5 + 164) = 0;
  if (a4 < 0x25)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D9849C54();
    __swift_project_value_buffer(v21, qword_1ECB47658);
    v7 = sub_1D9849C24();
    v8 = sub_1D984A114();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a4;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 37;
    v10 = "MTBF section too small to decode beyond usage_time_btw_crashes: (%ld < %ld)";
LABEL_16:
    v13 = v8;
    v14 = v7;
    v15 = v9;
    v16 = 22;
LABEL_17:
    _os_log_impl(&dword_1D97FA000, v14, v13, v10, v15, v16);
    MEMORY[0x1DA738F10](v9, -1, -1);
LABEL_18:

    return;
  }

  v22 = v19 - 1;
  if (v22 > 2)
  {
    v25 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  else
  {
    v23 = v22;
    v24 = *&aProd[8 * v22];
    v25 = qword_1D984F758[v23];
  }

  *(a5 + 168) = v24;
  *(a5 + 176) = v25;

  if (v18 != -1)
  {
    *(a5 + 184) = v18;
    *(a5 + 188) = 0;
  }

  if (v17 != -1)
  {
    *(a5 + 192) = v17;
    *(a5 + 196) = 0;
  }
}

void sub_1D982AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (qword_1ECB415C8 == -1)
    {
LABEL_18:
      v26 = sub_1D9849C54();
      __swift_project_value_buffer(v26, qword_1ECB47658);
      v18 = sub_1D9849C24();
      v27 = sub_1D984A124();
      if (!os_log_type_enabled(v18, v27))
      {
LABEL_21:

        return;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Failed to retrieve base address from raw buffer binary";
      v22 = v27;
      v23 = v18;
      v24 = v20;
      v25 = 2;
LABEL_20:
      _os_log_impl(&dword_1D97FA000, v23, v22, v21, v24, v25);
      MEMORY[0x1DA738F10](v20, -1, -1);
      goto LABEL_21;
    }

LABEL_106:
    swift_once();
    goto LABEL_18;
  }

  v6 = *(a1 + a3);
  v166 = *(a1 + a3 + 16);
  v167 = *(a1 + a3 + 8);
  v179 = (a1 + a3);
  v165 = *(a1 + a3 + 24);
  SifScenarioCount = getSifScenarioCount();
  v8 = MEMORY[0x1E69E7CC0];
  v176 = a4;
  if (SifScenarioCount)
  {
    for (i = 0; i != SifScenarioCount; ++i)
    {
      if (i < 0x40 && ((v6 >> i) & 1) != 0)
      {
        v11 = getScenarioNameWrapper(i);
        v12 = sub_1D9849DF4();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D9832DC0(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_1D9832DC0((v15 > 1), v16 + 1, 1, v8);
        }

        *(v8 + 2) = v16 + 1;
        v10 = &v8[16 * v16];
        *(v10 + 4) = v12;
        *(v10 + 5) = v14;
        a4 = v176;
      }
    }
  }

  *(a4 + 152) = v8;

  *(a4 + 160) = v166;
  *(a4 + 168) = 0;
  *&v193 = v6;
  *(&v193 + 1) = v167;
  *&v194 = v166;
  DWORD2(v194) = v165;
  if (4 * sub_1D9838234(&v193) + 28 > a5)
  {
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D9849C54();
    __swift_project_value_buffer(v17, qword_1ECB47658);
    v18 = sub_1D9849C24();
    v19 = sub_1D984A124();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 67109376;
    *&v193 = v6;
    *(&v193 + 1) = v167;
    *&v194 = v166;
    DWORD2(v194) = v165;
    *(v20 + 4) = sub_1D9838234(&v193);
    *(v20 + 8) = 2048;
    *(v20 + 10) = a5;
    v21 = "Scenario information range %u too large for section size %ld";
    v22 = v19;
    v23 = v18;
    v24 = v20;
    v25 = 18;
    goto LABEL_20;
  }

  v168 = SifScenarioCount;
  v169 = v6;
  v28 = v179 + 28;
  v30 = *(v179 + 1);
  v31 = *(v179 + 2);
  v32 = *(v179 + 6);
  *&v193 = *v179;
  v29 = v193;
  *(&v193 + 1) = v30;
  *&v194 = v31;
  DWORD2(v194) = v32;
  v33 = v166;
  v34 = sub_1D9838240(&v193);
  *&v193 = v29;
  *(&v193 + 1) = v30;
  *&v194 = v31;
  DWORD2(v194) = v32;
  v35 = sub_1D983824C(&v193);
  v177 = v179 + 28;
  v178 = v35;
  if (v34 != v35)
  {
    v36 = v34;
    v33 = v166;
    do
    {
      v37 = (v28 + 4 * v36);
      v38 = *v37;
      v39 = sub_1D9838258(*v37);
      v40 = __CFADD__(v33, v39);
      v33 += v39;
      if (v40)
      {
        goto LABEL_100;
      }

      *&v193 = v29;
      *(&v193 + 1) = v30;
      *&v194 = v31;
      DWORD2(v194) = v32;
      v41 = sub_1D9838234(&v193);
      if (!v41)
      {
        goto LABEL_101;
      }

      v42 = v41;
      v28 = v179 + 28;
      v43 = v37 + 4 * sub_1D9838260(v38) - v177;
      v44 = (v43 + 8);
      v45 = (v43 + 11);
      if (v44 >= 0)
      {
        v45 = v44;
      }

      v36 = (v45 >> 2) % v42;
    }

    while (v36 != v178);
  }

  *&v193 = v29;
  *(&v193 + 1) = v30;
  *&v194 = v31;
  DWORD2(v194) = v32;
  v46 = sub_1D9838240(&v193);
  v47 = v169;
  v48 = v176;
  if (v46 != v178)
  {
    v64 = v46;
    v203 = (v28 + 4 * v46);
    v65 = sub_1D9838258(*v203);
    v66 = v33 - v65;
    if (v33 < v65)
    {
LABEL_99:
      __break(1u);
LABEL_100:
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
      goto LABEL_106;
    }

    LOWORD(v67) = v64;
    while (1)
    {
      v202 = 0;
      v68 = sub_1D984A024();
      *(v68 + 16) = 7;
      *(v68 + 32) = 0;
      *(v68 + 40) = 0;
      *(v68 + 48) = 0;
      *(v68 + 56) = 0;
      swift_beginAccess();
      v180 = *v179;
      v69 = *(v179 + 2);
      v70 = *(v179 + 6);

      v193 = v180;
      *&v194 = v69;
      DWORD2(v194) = v70;
      v71 = sub_1D9838234(&v193);
      if (!v71)
      {
        goto LABEL_102;
      }

      v72 = v71;
      LODWORD(v202) = *v203;
      v73 = (v67 + 1) % v71;
      HIDWORD(v202) = *(v28 + 4 * v73);
      v74 = sub_1D9838260(*v203);
      if (v74)
      {
        v75 = (v73 + 1) % v72;
        *(v68 + 32) = *(v28 + 4 * v75);
        if (v74 != 1)
        {
          v76 = (v75 + 1) % v72;
          *(v68 + 36) = *(v28 + 4 * v76);
          if (v74 != 2)
          {
            v77 = (v76 + 1) % v72;
            *(v68 + 40) = *(v28 + 4 * v77);
            if (v74 != 3)
            {
              v78 = (v77 + 1) % v72;
              *(v68 + 44) = *(v28 + 4 * v78);
              if (v74 != 4)
              {
                v79 = (v78 + 1) % v72;
                *(v68 + 48) = *(v28 + 4 * v79);
                if (v74 != 5)
                {
                  v80 = (v79 + 1) % v72;
                  *(v68 + 52) = *(v28 + 4 * v80);
                  if (v74 != 6)
                  {
                    *(v68 + 56) = *(v28 + 4 * ((v80 + 1) % v72));
                  }
                }
              }
            }
          }
        }
      }

      swift_endAccess();

      LOBYTE(v193) = 1;
      LOBYTE(v182) = 1;
      v199 = 1;
      v198 = 1;
      v201 = 0;
      swift_beginAccess();
      v81 = sub_1D9838268(v202);
      swift_endAccess();
      if (v81)
      {
        if (os_variant_has_internal_diagnostics())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C20, &qword_1D984E828);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_1D984E260;
          v83 = HIWORD(v202);
          *(v82 + 56) = MEMORY[0x1E69E75F8];
          *(v82 + 64) = MEMORY[0x1E69E7660];
          *(v82 + 32) = v83;
          *&v182 = sub_1D9849E14();
          *(&v182 + 1) = v84;
          if (*(v68 + 16) < 7uLL)
          {
            goto LABEL_104;
          }

          v85 = *(v68 + 32);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_1D984CC70;
          v87 = MEMORY[0x1E69E7668];
          *(v86 + 56) = MEMORY[0x1E69E7668];
          v88 = MEMORY[0x1E69E76D0];
          *(v86 + 64) = MEMORY[0x1E69E76D0];
          *(v86 + 32) = v85;
          *(v86 + 96) = v87;
          *(v86 + 104) = v88;
          *(v86 + 72) = BYTE1(v85);
          *(v86 + 136) = v87;
          *(v86 + 144) = v88;
          *(v86 + 112) = BYTE2(v85);
          *(v86 + 176) = v87;
          *(v86 + 184) = v88;
          *(v86 + 152) = HIBYTE(v85);
          v89 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v89);

          v90 = *(v68 + 36);
          v91 = swift_allocObject();
          *(v91 + 16) = xmmword_1D984CC70;
          *(v91 + 56) = v87;
          *(v91 + 64) = v88;
          *(v91 + 32) = v90;
          *(v91 + 96) = v87;
          *(v91 + 104) = v88;
          *(v91 + 72) = BYTE1(v90);
          *(v91 + 136) = v87;
          *(v91 + 144) = v88;
          *(v91 + 112) = BYTE2(v90);
          *(v91 + 176) = v87;
          *(v91 + 184) = v88;
          *(v91 + 152) = HIBYTE(v90);
          v92 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v92);

          v93 = *(v68 + 40);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_1D984CC70;
          *(v94 + 56) = v87;
          *(v94 + 64) = v88;
          *(v94 + 32) = v93;
          *(v94 + 96) = v87;
          *(v94 + 104) = v88;
          *(v94 + 72) = BYTE1(v93);
          *(v94 + 136) = v87;
          *(v94 + 144) = v88;
          *(v94 + 112) = BYTE2(v93);
          *(v94 + 176) = v87;
          *(v94 + 184) = v88;
          *(v94 + 152) = HIBYTE(v93);
          v95 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v95);

          v96 = *(v68 + 44);
          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_1D984CC70;
          *(v97 + 56) = v87;
          *(v97 + 64) = v88;
          *(v97 + 32) = v96;
          *(v97 + 96) = v87;
          *(v97 + 104) = v88;
          *(v97 + 72) = BYTE1(v96);
          *(v97 + 136) = v87;
          *(v97 + 144) = v88;
          *(v97 + 112) = BYTE2(v96);
          *(v97 + 176) = v87;
          *(v97 + 184) = v88;
          *(v97 + 152) = HIBYTE(v96);
          v98 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v98);

          v99 = *(v68 + 48);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_1D984CC70;
          *(v100 + 56) = v87;
          *(v100 + 64) = v88;
          *(v100 + 32) = v99;
          *(v100 + 96) = v87;
          *(v100 + 104) = v88;
          *(v100 + 72) = BYTE1(v99);
          *(v100 + 136) = v87;
          *(v100 + 144) = v88;
          *(v100 + 112) = BYTE2(v99);
          *(v100 + 176) = v87;
          *(v100 + 184) = v88;
          *(v100 + 152) = HIBYTE(v99);
          v101 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v101);

          v102 = *(v68 + 52);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1D984CC70;
          *(v103 + 56) = v87;
          *(v103 + 64) = v88;
          *(v103 + 32) = v102;
          *(v103 + 96) = v87;
          *(v103 + 104) = v88;
          *(v103 + 72) = BYTE1(v102);
          *(v103 + 136) = v87;
          *(v103 + 144) = v88;
          *(v103 + 112) = BYTE2(v102);
          *(v103 + 176) = v87;
          *(v103 + 184) = v88;
          *(v103 + 152) = HIBYTE(v102);
          v104 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v104);

          v105 = *(v68 + 56);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1D984CC70;
          *(v106 + 56) = v87;
          *(v106 + 64) = v88;
          *(v106 + 32) = v105;
          *(v106 + 96) = v87;
          *(v106 + 104) = v88;
          *(v106 + 72) = BYTE1(v105);
          *(v106 + 136) = v87;
          *(v106 + 144) = v88;
          *(v106 + 112) = BYTE2(v105);
          *(v106 + 176) = v87;
          *(v106 + 184) = v88;
          *(v106 + 152) = HIBYTE(v105);
          v107 = sub_1D9849E14();
          MEMORY[0x1DA737B20](v107);

          swift_beginAccess();
          v108 = BYTE4(v202);
          v109 = sub_1D9838268(v202);
          v199 = 0;
          swift_endAccess();

          v110 = v109;
          v181 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v198 = 0;
          v115 = *(&v182 + 1);
          v114 = v182;
          v116 = *(v48 + 176);
          if (v116)
          {
            goto LABEL_57;
          }

LABEL_56:
          v116 = MEMORY[0x1E69E7CC0];
          *(v48 + 176) = MEMORY[0x1E69E7CC0];
          goto LABEL_57;
        }

        v181 = 0;
        v111 = 0;
        v112 = 0;
        v113 = 0;
      }

      else
      {
        if (v168 <= BYTE4(v202))
        {
          if (qword_1ECB415C8 != -1)
          {
            swift_once();
          }

          v144 = sub_1D9849C54();
          __swift_project_value_buffer(v144, qword_1ECB47658);
          v145 = sub_1D9849C24();
          v146 = sub_1D984A124();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            *v147 = 16777472;
            v147[4] = BYTE4(v202);
            _os_log_impl(&dword_1D97FA000, v145, v146, "Invalid scenarioType %hhu", v147, 5u);
            MEMORY[0x1DA738F10](v147, -1, -1);
          }

          v148 = *(v179 + 2);
          v149 = *(v179 + 6);
          v193 = *v179;
          *&v194 = v148;
          DWORD2(v194) = v149;
          v150 = sub_1D9838234(&v193);
          if (!v150)
          {
            goto LABEL_105;
          }

          v151 = v150;
          v152 = v203;
          v153 = &v152[sub_1D9838260(*v203)] - v28;
          v154 = (v153 + 8);
          v155 = (v153 + 11);
          if (v154 >= 0)
          {
            v155 = v154;
          }

          BYTE8(v193) = v201;
          *(&v193 + 9) = v200[0];
          HIDWORD(v193) = *(v200 + 3);
          WORD2(v196) = v199;
          BYTE6(v196) = v198;
          v122 = v66;
          *&v193 = v66;
          v194 = 0u;
          v195 = 0u;
          LODWORD(v196) = 0;
          v67 = (v155 >> 2) % v151;
          *(&v196 + 1) = 0;
          v197 = 0;
          sub_1D98382A8(&v193);

          goto LABEL_65;
        }

        v117 = getScenarioNameWrapper(BYTE4(v202));
        v181 = sub_1D9849DF4();
        v111 = v118;

        v119 = getScenarioStateVerboseFromEventDataWrapper(SBYTE6(v202));
        v112 = sub_1D9849DF4();
        v121 = v120;

        v113 = v121;
      }

      v110 = 0;
      v108 = 0;
      v114 = 0;
      v115 = 0;
      v116 = *(v48 + 176);
      if (!v116)
      {
        goto LABEL_56;
      }

LABEL_57:
      v122 = v66;
      *&v193 = v66;
      v123 = v201;
      BYTE8(v193) = v201;
      *(&v193 + 9) = v200[0];
      HIDWORD(v193) = *(v200 + 3);
      *&v194 = v181;
      *(&v194 + 1) = v111;
      v173 = v113;
      v174 = v112;
      *&v195 = v112;
      *(&v195 + 1) = v113;
      v172 = v110;
      LODWORD(v196) = v110;
      v124 = v199;
      BYTE4(v196) = v199;
      v175 = v108;
      BYTE5(v196) = v108;
      v125 = v198;
      BYTE6(v196) = v198;
      v170 = v115;
      v171 = v114;
      *(&v196 + 1) = v114;
      v197 = v115;
      sub_1D9838270(&v193, &v182);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v48 + 176) = v116;
      v127 = v111;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v116 = sub_1D9832C98(0, *(v116 + 2) + 1, 1, v116);
        *(v48 + 176) = v116;
      }

      v129 = *(v116 + 2);
      v128 = *(v116 + 3);
      if (v129 >= v128 >> 1)
      {
        v116 = sub_1D9832C98((v128 > 1), v129 + 1, 1, v116);
        *(v176 + 176) = v116;
      }

      *(v116 + 2) = v129 + 1;
      v130 = &v116[72 * v129];
      *(v130 + 2) = v193;
      v131 = v194;
      v132 = v195;
      v133 = v196;
      *(v130 + 12) = v197;
      *(v130 + 4) = v132;
      *(v130 + 5) = v133;
      *(v130 + 3) = v131;
      v134 = *(v179 + 2);
      v135 = *(v179 + 6);
      v182 = *v179;
      v183 = v134;
      LODWORD(v184) = v135;
      v136 = sub_1D9838234(&v182);
      if (!v136)
      {
        goto LABEL_103;
      }

      v137 = v136;
      v138 = v203;
      v139 = &v138[sub_1D9838260(*v203)] - v177;
      v140 = (v139 + 8);
      v141 = (v139 + 11);
      if (v140 >= 0)
      {
        v141 = v140;
      }

      v142 = v137;
      v28 = v179 + 28;
      *&v182 = v122;
      BYTE8(v182) = v123;
      *(&v182 + 9) = v200[0];
      HIDWORD(v182) = *(v200 + 3);
      v183 = v181;
      v184 = v127;
      v185 = v174;
      v186 = v173;
      v187 = v172;
      v188 = v124;
      v189 = v175;
      v190 = v125;
      v67 = (v141 >> 2) % v142;
      v191 = v171;
      v192 = v170;
      sub_1D98382A8(&v182);

      v47 = v169;
      v48 = v176;
LABEL_65:
      if (v67 == v178)
      {
        break;
      }

      v203 = (v28 + 4 * v67);
      v143 = sub_1D9838258(*v203);
      v66 = v122 - v143;
      if (v122 < v143)
      {
        goto LABEL_99;
      }
    }
  }

  *&v193 = v47;
  *(&v193 + 1) = v167;
  *&v194 = v166;
  DWORD2(v194) = v165;
  if (sub_1D98382D8(&v193))
  {
    *&v193 = v47;
    *(&v193 + 1) = v167;
    *&v194 = v166;
    DWORD2(v194) = v165;
    v49 = (v28 + 4 * sub_1D9838234(&v193));
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[2];
    v53 = v49[3];
    v54 = v49[4];
    *&v193 = v47;
    *(&v193 + 1) = v167;
    *&v194 = v166;
    DWORD2(v194) = v165;
    v55 = 4 * sub_1D9838234(&v193) + 28;
    if ((v55 | 2) > a5)
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v56 = sub_1D9849C54();
      __swift_project_value_buffer(v56, qword_1ECB47658);
      v18 = sub_1D9849C24();
      v57 = sub_1D984A124();
      if (!os_log_type_enabled(v18, v57))
      {
        goto LABEL_21;
      }

      v58 = swift_slowAlloc();
      *v58 = 67109376;
      *&v193 = v47;
      *(&v193 + 1) = v167;
      *&v194 = v166;
      DWORD2(v194) = v165;
      *(v58 + 4) = sub_1D9838234(&v193);
      *(v58 + 8) = 2048;
      *(v58 + 10) = a5;
      v59 = "Scenario information with range %u indicates trailer present but not enough space in section size %ld";
      v60 = v57;
      v61 = v18;
      v62 = v58;
      v63 = 18;
      goto LABEL_86;
    }

    if (v55 + v50 > a5)
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v156 = sub_1D9849C54();
      __swift_project_value_buffer(v156, qword_1ECB47658);
      v18 = sub_1D9849C24();
      v157 = sub_1D984A124();
      if (!os_log_type_enabled(v18, v157))
      {
        goto LABEL_21;
      }

      v58 = swift_slowAlloc();
      *v58 = 67109632;
      *&v193 = v47;
      *(&v193 + 1) = v167;
      *&v194 = v166;
      DWORD2(v194) = v165;
      *(v58 + 4) = sub_1D9838234(&v193);
      *(v58 + 8) = 512;
      *(v58 + 10) = v50;
      *(v58 + 12) = 2048;
      *(v58 + 14) = a5;
      v59 = "Scenario information range %u and trailer length %hu too large for section size %ld";
      v60 = v157;
      v61 = v18;
      v62 = v58;
      v63 = 22;
      goto LABEL_86;
    }

    if (v50 < 0xA)
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v158 = sub_1D9849C54();
      __swift_project_value_buffer(v158, qword_1ECB47658);
      v18 = sub_1D9849C24();
      v159 = sub_1D984A124();
      if (!os_log_type_enabled(v18, v159))
      {
        goto LABEL_21;
      }

      v58 = swift_slowAlloc();
      *v58 = 33554944;
      *(v58 + 4) = v50;
      *(v58 + 6) = 2048;
      *(v58 + 8) = 10;
      v59 = "Scenario information trailer length too small %hu < %ld";
      v60 = v159;
      v61 = v18;
      v62 = v58;
      v63 = 16;
LABEL_86:
      _os_log_impl(&dword_1D97FA000, v61, v60, v59, v62, v63);
      MEMORY[0x1DA738F10](v58, -1, -1);
      goto LABEL_21;
    }

    v160 = sub_1D98382E4((v51 << 16) | v50);
    if (v160)
    {
      v161 = v54;
    }

    else
    {
      v161 = 0;
    }

    if (v160)
    {
      v162 = v53;
    }

    else
    {
      v162 = 0;
    }

    if (v160)
    {
      v163 = v52;
    }

    else
    {
      v163 = 0;
    }

    LOBYTE(v193) = 0;
    LOBYTE(v182) = v160 == 0;
    LOBYTE(v202) = v160 == 0;
    LOBYTE(v200[0]) = v160 == 0;
    *(v176 + 184) = v160 | (v163 << 32) | ((v160 == 0) << 48);
    *(v176 + 196) = v161;
    *(v176 + 192) = v162 | ((v160 == 0) << 16);
    *(v176 + 198) = ((((v160 == 0) << 48) | (v161 << 32)) >> 48);
  }
}

uint64_t sub_1D982BD68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E00, &qword_1D984F498);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839B5C();
  sub_1D984A704();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
  sub_1D98245F8(&qword_1ECB419B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D984A5A4();
  if (!v4)
  {
    v13 = 1;
    sub_1D984A584();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D982BF48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6B63617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001D9853730;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6B63617473;
  }

  if (*a2)
  {
    v6 = 0x80000001D9853730;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();
  }

  return v8 & 1;
}

uint64_t sub_1D982BFF0()
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

double sub_1D982C074(uint64_t a1)
{
  sub_1D9849E84();

  return result;
}

uint64_t sub_1D982C0E4(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

void sub_1D982C170(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D9853730;
  v3 = 0x6B63617473;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D982C1B0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6B63617473;
  }
}

uint64_t sub_1D982C1F8(uint64_t a1)
{
  v2 = sub_1D9839B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982C234(uint64_t a1)
{
  v2 = sub_1D9839B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D982C270@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9835804(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D982C2C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D18, &qword_1D984ED50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F00();
  sub_1D984A704();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
  sub_1D9833D18(&qword_1ECB41AF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1D984A534();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_1D984A514();
  v10[5] = 2;
  sub_1D984A514();
  v10[4] = 3;
  sub_1D984A514();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D982C4DC()
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

double sub_1D982C5B0(uint64_t a1)
{
  sub_1D9849E84();

  return result;
}

uint64_t sub_1D982C670(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

unint64_t sub_1D982C740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9835A2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D982C770(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x7265747369676572;
  v4 = 0xEC0000007265626DLL;
  v5 = 0x756E2D6574756F72;
  if (*v1 != 2)
  {
    v5 = 6778732;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x2D786F626C69616DLL;
    v2 = 0xED0000726F727265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D982C800()
{
  v1 = 0x7265747369676572;
  v2 = 0x756E2D6574756F72;
  if (*v0 != 2)
  {
    v2 = 6778732;
  }

  if (*v0)
  {
    v1 = 0x2D786F626C69616DLL;
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

unint64_t sub_1D982C88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9835A2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D982C8B4(uint64_t a1)
{
  v2 = sub_1D9838F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982C8F0(uint64_t a1)
{
  v2 = sub_1D9838F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D982C92C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D9835A78(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D982C9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D00, &qword_1D984ED40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838EAC();
  sub_1D984A704();
  v13 = 0;
  sub_1D984A514();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    sub_1D98245F8(&qword_1ECB419B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D984A534();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D982CB88()
{
  if (*v0)
  {
    return 0x6B63617473;
  }

  else
  {
    return 0x7470697263736564;
  }
}

void sub_1D982CBC8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1D984A5F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();

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

uint64_t sub_1D982CCA4(uint64_t a1)
{
  v2 = sub_1D9838EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982CCE0(uint64_t a1)
{
  v2 = sub_1D9838EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D982CD1C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9835DB0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D982CD6C(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = BYTE6(a3);
  v5 = BYTE6(a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E28, &qword_1D984F4B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839BB0();
  sub_1D984A704();
  v18 = 0;
  sub_1D984A554();
  if (v3)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v17[0] = 1;
  v16 = v5 & 1;
  sub_1D984A554();
  v15 = 2;
  sub_1D984A554();
  v14[0] = 3;
  v13 = v4 & 1;
  sub_1D984A554();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D982CF68()
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

double sub_1D982D020(uint64_t a1)
{
  sub_1D9849E84();

  return result;
}

uint64_t sub_1D982D0C4(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

unint64_t sub_1D982D178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9835FB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D982D1A8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657463656E6E6F63;
  v4 = 0xE300000000000000;
  v5 = 6580592;
  if (*v1 != 2)
  {
    v5 = 0x7265765F7773;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 6580598;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D982D21C()
{
  v1 = 0x657463656E6E6F63;
  v2 = 6580592;
  if (*v0 != 2)
  {
    v2 = 0x7265765F7773;
  }

  if (*v0)
  {
    v1 = 6580598;
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

unint64_t sub_1D982D28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9835FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D982D2B4(uint64_t a1)
{
  v2 = sub_1D9839BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982D2F0(uint64_t a1)
{
  v2 = sub_1D9839BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D982D32C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9836000(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result) & 1;
    *(a1 + 4) = WORD2(result);
    *(a1 + 6) = BYTE6(result) & 1;
    *(a1 + 8) = v5;
    *(a1 + 10) = BYTE2(v5) & 1;
    *(a1 + 12) = v6;
    *(a1 + 14) = v7 & 1;
  }

  return result;
}

uint64_t sub_1D982D42C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D80, &qword_1D984ED78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839200();
  sub_1D984A704();
  v11[15] = 0;
  sub_1D984A574();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[14] = 1;
  sub_1D984A514();
  v11[13] = 2;
  sub_1D984A514();
  v9 = *(v3 + 52);
  v11[12] = 3;
  v11[8] = v9;
  sub_1D984A564();
  v11[7] = 4;
  sub_1D984A544();
  v11[5] = 5;
  sub_1D984A514();
  return (*(v6 + 8))(v8, v5);
}

double sub_1D982D65C(uint64_t a1)
{
  sub_1D9849E84();

  return result;
}

unint64_t sub_1D982D750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9836254(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D982D780(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000070;
  v4 = 0x6D617473656D6974;
  v5 = 0xE600000000000000;
  v6 = 0x656372756F73;
  v7 = 0xEC0000007265626DLL;
  v8 = 0x756E5F746E657665;
  if (v2 != 4)
  {
    v8 = 1635017060;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6F6972616E656373;
  if (v2 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D982D83C()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x656372756F73;
  v4 = 0x756E5F746E657665;
  if (v1 != 4)
  {
    v4 = 1635017060;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6972616E656373;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D982D8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9836254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D982D928(uint64_t a1)
{
  v2 = sub_1D9839200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982D964(uint64_t a1)
{
  v2 = sub_1D9839200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D982D9A0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D98362A0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D982DA38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D50, &qword_1D984ED68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F54();
  sub_1D984A704();
  *&v10 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
  sub_1D98245F8(&qword_1ECB419B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D984A5A4();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1D984A574();
    *&v10 = *(v3 + 24);
    v11 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D30, &qword_1D984ED60);
    sub_1D98390D4();
    sub_1D984A534();
    v10 = *(v3 + 32);
    v11 = 3;
    sub_1D98391AC();
    sub_1D984A534();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D982DCCC()
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

double sub_1D982DDA0(uint64_t a1)
{
  sub_1D9849E84();

  return result;
}

uint64_t sub_1D982DE60(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

unint64_t sub_1D982DF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D983673C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D982DF60(unint64_t *a1@<X8>)
{
  v2 = 0xED000079726F7473;
  v3 = 0x69685F746E657665;
  v4 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D9853810;
  }

  v5 = 0x80000001D98537C0;
  if (*v1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001D98537E0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D982DFF0()
{
  v1 = 0x69685F746E657665;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1D982E07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D983673C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D982E0A4(uint64_t a1)
{
  v2 = sub_1D9838F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982E0E0(uint64_t a1)
{
  v2 = sub_1D9838F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D982E11C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D9836788(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_1D982E19C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x63696E6170;
    v7 = 0xD000000000000010;
    v8 = 1684632949;
    if (a1 != 3)
    {
      v8 = 0x2064657370616C65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6F69747065637865;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7265747369676572;
    v2 = 0x6173752D70616568;
    if (a1 != 9)
    {
      v2 = 0x6F6972616E656373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174732D6C6C6163;
    v4 = 0x736B736174;
    if (a1 != 6)
    {
      v4 = 0x65786F626C69616DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1D982E368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9836ABC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D982E398@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D982E19C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D982E3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9836ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D982E414(uint64_t a1)
{
  v2 = sub_1D9838970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982E450(uint64_t a1)
{
  v2 = sub_1D9838970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D982E48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 0x63696E6170 && a3 == 0xE500000000000000;
  if (v4 || (v7 = a1, v8 = sub_1D984A5F4(), a1 = v7, (v8 & 1) != 0))
  {
    sub_1D981B108(a1, v13);
    if (swift_dynamicCast())
    {

      *v3 = v11;
      v3[1] = v12;
    }
  }

  else if (a2 == 0x6F69747065637865 && a3 == 0xE90000000000006ELL || (v9 = sub_1D984A5F4(), a1 = v7, (v9 & 1) != 0))
  {
    sub_1D981B108(a1, v13);
    if (swift_dynamicCast())
    {

      v3[2] = v11;
      v3[3] = v12;
    }
  }

  else if (a2 == 0xD000000000000010 && 0x80000001D9853710 == a3 || (v10 = sub_1D984A5F4(), a1 = v7, (v10 & 1) != 0))
  {
    sub_1D981B108(a1, v13);
    if (swift_dynamicCast())
    {

      v3[4] = v11;
      v3[5] = v12;
    }
  }
}

uint64_t sub_1D982E668(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C68, &qword_1D984ED18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838970();
  sub_1D984A704();
  LOBYTE(v14) = 0;
  sub_1D984A514();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D984A514();
    LOBYTE(v14) = 2;
    sub_1D984A514();
    LOBYTE(v14) = 3;
    sub_1D984A514();
    LOBYTE(v14) = 4;
    sub_1D984A514();
    v14 = *(v3 + 80);
    *&v15 = *(v3 + 96);
    v13[0] = 5;
    sub_1D98389C4();
    sub_1D984A534();
    *&v14 = *(v3 + 104);
    v13[0] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C80, &qword_1D984ED20);
    sub_1D9838A18();
    sub_1D984A534();
    *&v14 = *(v3 + 112);
    v13[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C98, &qword_1D984ED28);
    sub_1D9838AF0();
    sub_1D984A5A4();
    LOBYTE(v14) = 8;
    sub_1D984A514();
    LOBYTE(v14) = 9;
    sub_1D984A514();
    v9 = *(v3 + 168);
    v17[0] = *(v3 + 152);
    v17[1] = v9;
    v17[2] = *(v3 + 184);
    v10 = *(v3 + 168);
    v14 = *(v3 + 152);
    v15 = v10;
    v16 = *(v3 + 184);
    v13[55] = 10;
    sub_1D9838BC8(v17, v13);
    sub_1D9838C00();
    sub_1D984A5A4();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_1D982E9F8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D9836B08(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11;
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D982EAE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B50, &qword_1D984E750);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D983802C();
  sub_1D984A704();
  LOBYTE(v24) = 0;
  sub_1D984A514();
  if (!v2)
  {
    v10 = *(v3 + 160);
    v11 = *(v3 + 192);
    v46 = *(v3 + 176);
    v47 = v11;
    v12 = *(v3 + 96);
    v13 = *(v3 + 128);
    v42 = *(v3 + 112);
    v43 = v13;
    v14 = *(v3 + 128);
    v15 = *(v3 + 160);
    v44 = *(v3 + 144);
    v45 = v15;
    v16 = *(v3 + 32);
    v17 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v17;
    v18 = *(v3 + 64);
    v19 = *(v3 + 96);
    v40 = *(v3 + 80);
    v41 = v19;
    v20 = *(v3 + 32);
    v37[0] = *(v3 + 16);
    v37[1] = v20;
    v21 = *(v3 + 192);
    v34 = v46;
    v35 = v21;
    v30 = v42;
    v31 = v14;
    v32 = v44;
    v33 = v10;
    v26 = v38;
    v27 = v18;
    v28 = v40;
    v29 = v12;
    v48 = *(v3 + 208);
    v36 = *(v3 + 208);
    v24 = v37[0];
    v25 = v16;
    v49 = 1;
    sub_1D981A480(v37, v22, &qword_1ECB41B60, &qword_1D984E758);
    sub_1D9838080();
    sub_1D984A534();
    v22[10] = v34;
    v22[11] = v35;
    v23 = v36;
    v22[6] = v30;
    v22[7] = v31;
    v22[8] = v32;
    v22[9] = v33;
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v22[5] = v29;
    v22[0] = v24;
    v22[1] = v25;
    sub_1D981A4E8(v22, &qword_1ECB41B60, &qword_1D984E758);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D982ED60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676F6C6873617263;
  }

  else
  {
    v3 = 1701998435;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676F6C6873617263;
  }

  else
  {
    v5 = 1701998435;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();
  }

  return v8 & 1;
}

uint64_t sub_1D982EE00()
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

double sub_1D982EE7C(uint64_t a1)
{
  sub_1D9849E84();

  return result;
}

uint64_t sub_1D982EEE4(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D9849E84();

  return sub_1D984A6D4();
}

void sub_1D982EF68(char *a3@<X8>)
{
  v4 = sub_1D984A414();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

void sub_1D982EFC4(uint64_t *a1@<X8>)
{
  v2 = 1701998435;
  if (*v1)
  {
    v2 = 0x676F6C6873617263;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D982EFFC()
{
  if (*v0)
  {
    return 0x676F6C6873617263;
  }

  else
  {
    return 1701998435;
  }
}

void sub_1D982F03C(char *a4@<X8>)
{
  v5 = sub_1D984A414();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t sub_1D982F09C(uint64_t a1)
{
  v2 = sub_1D983802C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982F0D8(uint64_t a1)
{
  v2 = sub_1D983802C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D982F114@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D98373C0(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v12;
    v6 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v6;
    v7 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    v8 = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v8;
    v9 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
  }

  return result;
}

unint64_t sub_1D982F20C(char a1)
{
  result = 0x657079745F677562;
  switch(a1)
  {
    case 1:
      result = 0x746E756F635F4955;
      break;
    case 2:
      result = 0x737265762D676F6CLL;
      break;
    case 3:
    case 5:
      result = 0x726F737365636361;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
    case 12:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      v3 = 11;
      goto LABEL_10;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    case 15:
      v3 = 13;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
      result = 0x6D69546873617263;
      break;
    case 17:
      result = 0x676F6C6873617263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D982F450(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D984A5F4();
  }

  return v12 & 1;
}

uint64_t sub_1D982F4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1D984A6A4();
  a3(v5);
  sub_1D9849E84();

  return sub_1D984A6D4();
}

double sub_1D982F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1D9849E84();

  return result;
}

uint64_t sub_1D982F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1D984A6A4();
  a4(v6);
  sub_1D9849E84();

  return sub_1D984A6D4();
}

unint64_t sub_1D982F658@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D98377E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D982F688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D982F20C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D982F6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D98377E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D982F704(uint64_t a1)
{
  v2 = sub_1D9833BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D982F740(uint64_t a1)
{
  v2 = sub_1D9833BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirPodsCrashReport.init(crashBinaryChunks:testMode:productId:applicationInfo:description:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, _OWORD *a6@<X8>)
{
  LODWORD(v7) = a3;
  LOBYTE(v8) = a2;

  *&v88 = 3485747;
  *(&v88 + 1) = 0xE300000000000000;
  v89 = xmmword_1D984E380;
  v90 = xmmword_1D984E390;
  v91 = xmmword_1D984E3A0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  LODWORD(v98) = 0;
  BYTE4(v98) = 1;
  *&v99 = 0;
  *(&v98 + 1) = 0;
  DWORD2(v99) = 0;
  BYTE12(v99) = 1;
  LODWORD(v100) = 0;
  BYTE4(v100) = 1;
  *&v101 = 0;
  *(&v100 + 1) = 0;
  *(&v101 + 1) = MEMORY[0x1E69E7CC0];
  if (qword_1ECB415C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_21:
  swift_once();
LABEL_2:
  v9 = sub_1D9849C54();
  __swift_project_value_buffer(v9, qword_1ECB47658);
  v10 = sub_1D9849C24();
  v11 = sub_1D984A114();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D97FA000, v10, v11, "Initializing AirPodsCrashReport", v12, 2u);
    MEMORY[0x1DA738F10](v12, -1, -1);
  }

  v13 = 0;
  BYTE13(v92) = v8 & 1;
  DWORD2(v92) = v7;
  BYTE12(v92) = 0;
  v7 = a1;
  v14 = *(a1 + 64);
  *&v92 = a4;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v8 = v16 & v14;
  v17 = (v15 + 63) >> 6;
  if ((v16 & v14) != 0)
  {
    do
    {
LABEL_11:
      v19 = (v13 << 10) | (16 * __clz(__rbit64(v8)));
      v20 = (*(v7 + 48) + v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = (*(v7 + 56) + v19);
      v24 = *v23;
      v25 = v23[1];
      swift_bridgeObjectRetain_n();
      v56 = v24;
      sub_1D9826CDC(v24, v25);
      v26 = sub_1D9849C24();
      v27 = sub_1D984A114();

      v57 = v21;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v21;
        v31 = v29;
        *&v74 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1D9819F0C(v22, v30, &v74);
        _os_log_impl(&dword_1D97FA000, v26, v27, "Processing binary for core: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1DA738F10](v31, -1, -1);
        v32 = v28;
        v7 = a1;
        MEMORY[0x1DA738F10](v32, -1, -1);
      }

      sub_1D982FDE8(v56, v25, &v74);
      v33 = *(&v101 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D9832ECC(0, *(v33 + 2) + 1, 1, v33);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      a4 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1D9832ECC((v34 > 1), v35 + 1, 1, v33);
      }

      v8 &= v8 - 1;
      sub_1D981FA9C(v56, v25);
      v62 = v76;
      v63 = v77;
      v66 = v80;
      v67 = v81;
      v64 = v78;
      v65 = v79;
      *&v72 = v86;
      v70 = v84;
      v71 = v85;
      v68 = v82;
      v69 = v83;
      v60 = v74;
      v61 = v75;
      *(v33 + 2) = a4;
      v36 = &v33[216 * v35];
      *(v36 + 4) = v22;
      *(v36 + 5) = v57;
      *(v36 + 3) = v60;
      v37 = v61;
      v38 = v62;
      v39 = v64;
      *(v36 + 6) = v63;
      *(v36 + 7) = v39;
      *(v36 + 4) = v37;
      *(v36 + 5) = v38;
      v40 = v65;
      v41 = v66;
      v42 = v68;
      *(v36 + 10) = v67;
      *(v36 + 11) = v42;
      *(v36 + 8) = v40;
      *(v36 + 9) = v41;
      v43 = v69;
      v44 = v70;
      v45 = v71;
      *(v36 + 30) = v72;
      *(v36 + 13) = v44;
      *(v36 + 14) = v45;
      *(v36 + 12) = v43;
      *(&v101 + 1) = v33;
    }

    while (v8);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v18 >= v17)
    {
      break;
    }

    v8 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v8)
    {
      v13 = v18;
      goto LABEL_11;
    }
  }

  v59[10] = v98;
  v59[11] = v99;
  v59[12] = v100;
  v59[13] = v101;
  v59[6] = v94;
  v59[7] = v95;
  v59[8] = v96;
  v59[9] = v97;
  v59[2] = v90;
  v59[3] = v91;
  v59[4] = v92;
  v59[5] = v93;
  v59[0] = v88;
  v59[1] = v89;
  v70 = v98;
  v71 = v99;
  v72 = v100;
  v73 = v101;
  v66 = v94;
  v67 = v95;
  v68 = v96;
  v69 = v97;
  v62 = v90;
  v63 = v91;
  v64 = v92;
  v65 = v93;
  v60 = v88;
  v61 = v89;
  nullsub_1();
  v46 = v71;
  a6[10] = v70;
  a6[11] = v46;
  v47 = v73;
  a6[12] = v72;
  a6[13] = v47;
  v48 = v67;
  a6[6] = v66;
  a6[7] = v48;
  v49 = v69;
  a6[8] = v68;
  a6[9] = v49;
  v50 = v63;
  a6[2] = v62;
  a6[3] = v50;
  v51 = v65;
  a6[4] = v64;
  a6[5] = v51;
  v52 = v61;
  *a6 = v60;
  a6[1] = v52;
  v84 = v98;
  v85 = v99;
  v86 = v100;
  v87 = v101;
  v80 = v94;
  v81 = v95;
  v82 = v96;
  v83 = v97;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  v74 = v88;
  v75 = v89;
  sub_1D9833438(v59, v58);
  return sub_1D9833470(&v74);
}

__n128 sub_1D982FDE8@<Q0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D9826CDC(a1, a2);
  v8 = sub_1D9829E60(a1, a2);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2 || (v12 = a1[2], v11 = a1[3], v10 = v11 - v12, !__OFSUB__(v11, v12)))
    {
LABEL_10:
      v4 = CFDataCreate(*MEMORY[0x1E695E480], v8 + 32, v10);

      if (MEMORY[0x1E69C6A78])
      {
        v13 = RTBuddyCrashlogDecode();
        if (v13)
        {
          v3 = v13;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            *&v31[0] = 0;
            v14 = v3;
            sub_1D9849DA4();
          }

          if (qword_1ECB415C8 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_30;
        }

        if (qword_1ECB415C8 != -1)
        {
          swift_once();
        }

        v24 = sub_1D9849C54();
        __swift_project_value_buffer(v24, qword_1ECB47658);
        v16 = sub_1D9849C24();
        v17 = sub_1D984A124();
        if (!os_log_type_enabled(v16, v17))
        {
LABEL_27:

          goto LABEL_28;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Error: RTBuddyCrashlogDecode returned nil";
      }

      else
      {
        if (qword_1ECB415C8 != -1)
        {
          swift_once();
        }

        v15 = sub_1D9849C54();
        __swift_project_value_buffer(v15, qword_1ECB47658);
        v16 = sub_1D9849C24();
        v17 = sub_1D984A124();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_27;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "RTBuddyCrashlogDecode not available";
      }

      _os_log_impl(&dword_1D97FA000, v16, v17, v19, v18, 2u);
      MEMORY[0x1DA738F10](v18, -1, -1);
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v10 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_19:
  v20 = sub_1D9849C54();
  __swift_project_value_buffer(v20, qword_1ECB47658);
  v21 = sub_1D9849C24();
  v22 = sub_1D984A124();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D97FA000, v21, v22, "Unable to parse RTBuddy crash log dictionary", v23, 2u);
    MEMORY[0x1DA738F10](v23, -1, -1);
  }

LABEL_28:
  sub_1D98380D4(v31);
  v25 = v31[11];
  *(a3 + 160) = v31[10];
  *(a3 + 176) = v25;
  *(a3 + 192) = v32;
  v26 = v31[7];
  *(a3 + 96) = v31[6];
  *(a3 + 112) = v26;
  v27 = v31[9];
  *(a3 + 128) = v31[8];
  *(a3 + 144) = v27;
  v28 = v31[3];
  *(a3 + 32) = v31[2];
  *(a3 + 48) = v28;
  v29 = v31[5];
  *(a3 + 64) = v31[4];
  *(a3 + 80) = v29;
  result = v31[1];
  *a3 = v31[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t AirPodsCrashReport.saveReport()()
{
  v48 = *MEMORY[0x1E69E9840];
  sub_1D9849894();
  swift_allocObject();
  sub_1D9849884();
  v1 = v0[11];
  v42 = v0[10];
  v43 = v1;
  v2 = v0[13];
  v44 = v0[12];
  v45 = v2;
  v3 = v0[7];
  v38 = v0[6];
  v39 = v3;
  v4 = v0[9];
  v40 = v0[8];
  v41 = v4;
  v5 = v0[3];
  v34 = v0[2];
  v35 = v5;
  v6 = v0[5];
  v36 = v0[4];
  v37 = v6;
  sub_1D98334A0();
  v7 = sub_1D9849874();
  v9 = v8;

  v46 = v7;
  v47 = v9;
  v10 = objc_opt_self();
  v11 = sub_1D9849DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AC8, &qword_1D984E3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984E260;
  sub_1D9849DF4();
  v13 = MEMORY[0x1E69E6158];
  sub_1D984A324();
  *(inited + 96) = v13;
  strcpy((inited + 72), "AccessoryCrash");
  *(inited + 87) = -18;
  sub_1D9833A4C(inited);
  swift_setDeallocating();
  sub_1D981A4E8(inited + 32, &qword_1ECB41AD0, &qword_1D984E3C0);
  v14 = sub_1D9849D94();

  v15 = v46;
  v16 = v47;
  v17 = swift_allocObject();
  *(v17 + 16) = v46;
  *(v17 + 24) = v16;
  *&v34 = sub_1D9833B88;
  *(&v34 + 1) = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9831010;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);
  sub_1D9826CDC(v15, v16);

  aBlock[0] = 0;
  v19 = [v10 createForSubmission:v11 metadata:0 options:v14 error:aBlock writing:v18];
  _Block_release(v18);

  if (v19)
  {
    v20 = aBlock[0];
  }

  else
  {
    v21 = aBlock[0];
    v22 = sub_1D9849954();

    swift_willThrow();
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D9849C54();
    __swift_project_value_buffer(v23, qword_1ECB47658);
    v24 = v22;
    v19 = sub_1D9849C24();
    v25 = sub_1D984A124();

    if (!os_log_type_enabled(v19, v25))
    {

      goto LABEL_8;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v22;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_1D97FA000, v19, v25, "Failed to create OSALog file: %@", v26, 0xCu);
    sub_1D981A4E8(v27, &qword_1ECB41628, &qword_1D984E3B0);
    MEMORY[0x1DA738F10](v27, -1, -1);
    MEMORY[0x1DA738F10](v26, -1, -1);
  }

LABEL_8:
  swift_beginAccess();
  v30 = v46;
  v31 = v47;
  sub_1D9826CDC(v46, v47);
  sub_1D981FA9C(v30, v31);
  return v30;
}

void sub_1D9831010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t AirPodsCrashReport.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AD8, &qword_1D984E3C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = *(v1 + 16);
  v51 = *(v1 + 24);
  v52 = v7;
  v8 = *(v1 + 32);
  v49 = *(v1 + 40);
  v50 = v8;
  v9 = *(v1 + 48);
  v47 = *(v1 + 56);
  v48 = v9;
  v10 = *(v1 + 64);
  v45 = *(v1 + 72);
  v46 = v10;
  LODWORD(v10) = *(v1 + 76);
  v43 = *(v1 + 77);
  v44 = v10;
  v11 = *(v1 + 88);
  v41 = *(v1 + 80);
  v42 = v11;
  v12 = *(v1 + 104);
  v39 = *(v1 + 96);
  v40 = v12;
  v13 = *(v1 + 120);
  v37 = *(v1 + 112);
  v38 = v13;
  v14 = *(v1 + 136);
  v35 = *(v1 + 128);
  v36 = v14;
  v15 = *(v1 + 152);
  v33 = *(v1 + 144);
  v34 = v15;
  v32 = *(v1 + 160);
  v31 = *(v1 + 164);
  v16 = *(v1 + 176);
  v29 = *(v1 + 168);
  v30 = v16;
  v28 = *(v1 + 184);
  v27 = *(v1 + 188);
  v26 = *(v1 + 192);
  v25 = *(v1 + 196);
  v17 = *(v1 + 208);
  v23 = *(v1 + 200);
  v24 = v17;
  v22 = *(v1 + 216);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9833BEC();
  sub_1D984A704();
  LOBYTE(v55) = 0;
  v18 = v53;
  sub_1D984A584();
  if (v18)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v20 = v46;
  v53 = v4;
  LOBYTE(v55) = 1;
  sub_1D984A514();
  LOBYTE(v55) = 2;
  sub_1D984A514();
  LOBYTE(v55) = 3;
  sub_1D984A514();
  v55 = v20;
  v54[0] = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
  sub_1D9833D18(&qword_1ECB41AF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1D984A534();
  LOBYTE(v55) = 5;
  v54[0] = v44;
  sub_1D984A564();
  LOBYTE(v55) = 6;
  sub_1D984A524();
  LOBYTE(v55) = 7;
  sub_1D984A514();
  LOBYTE(v55) = 8;
  sub_1D984A514();
  LOBYTE(v55) = 9;
  sub_1D984A514();
  LOBYTE(v55) = 10;
  sub_1D984A514();
  LOBYTE(v55) = 11;
  sub_1D984A514();
  LOBYTE(v55) = 12;
  v54[0] = v31;
  sub_1D984A564();
  LOBYTE(v55) = 13;
  sub_1D984A514();
  LOBYTE(v55) = 14;
  v54[0] = v27;
  sub_1D984A564();
  LOBYTE(v55) = 15;
  v54[0] = v25;
  sub_1D984A564();
  LOBYTE(v55) = 16;
  sub_1D984A514();
  v55 = v22;
  v54[0] = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AF8, &qword_1D984E3D8);
  sub_1D9833C40();
  sub_1D984A5A4();
  return (*(v53 + 8))(v6, v3);
}

uint64_t AirPodsCrashReport.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B10, &qword_1D984E3E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v59 - v7;
  v147 = 1;
  v146 = 1;
  v143 = 1;
  v140 = 1;
  v9 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D9833BEC();
  sub_1D984A6F4();
  if (v2)
  {
    v148 = v2;
    v86 = 0;
    v87 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v70 = 0;
    v71 = 0;
    v76 = 0;
    v77 = 0x6F69647561;
    v10 = 3485747;
    v11 = 3157553;
    v13 = 0xE300000000000000;
    v14 = 0xE200000000000000;
    v15 = 0xE500000000000000;
    v16 = 2;
    v17 = 21333;
    v18 = 0xE300000000000000;
  }

  else
  {
    LOBYTE(v103) = 0;
    v12 = sub_1D984A4B4();
    v68 = v21;
    v69 = v12;
    LOBYTE(v103) = 1;
    *&v67 = sub_1D984A444();
    *(&v67 + 1) = v22;
    LOBYTE(v103) = 2;
    v23 = sub_1D984A444();
    v65 = v24;
    v66 = v23;
    LOBYTE(v103) = 3;
    v25 = sub_1D984A444();
    v148 = 0;
    v64 = v26;
    v77 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
    LOBYTE(v88[0]) = 4;
    sub_1D9833D18(&qword_1ECB41B18, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    v27 = v148;
    sub_1D984A464();
    if (v27)
    {
      v148 = v27;
      (*(v6 + 8))(v8, v5);
      v86 = 0;
      v87 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0;
      v76 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v80 = 0;
      v81 = 0;
      v78 = 0;
      v79 = 0;
      v70 = 0;
      v71 = 0;
      v16 = 2;
      v18 = v68;
      v10 = v69;
      v11 = v66;
      v14 = *(&v67 + 1);
      v17 = v67;
      v15 = v64;
      v13 = v65;
    }

    else
    {
      v28 = v103;
      LOBYTE(v103) = 5;
      v29 = sub_1D984A494();
      v76 = v28;
      v74 = v29;
      v147 = BYTE4(v29) & 1;
      LOBYTE(v103) = 6;
      v63 = sub_1D984A454();
      LOBYTE(v103) = 7;
      *&v73 = sub_1D984A444();
      *(&v73 + 1) = v30;
      LOBYTE(v103) = 8;
      v31 = sub_1D984A444();
      v148 = 0;
      *&v72 = v31;
      *(&v72 + 1) = v32;
      LOBYTE(v103) = 9;
      *&v87 = sub_1D984A444();
      *(&v87 + 1) = v33;
      v148 = 0;
      LOBYTE(v103) = 10;
      v34 = sub_1D984A444();
      v85 = v35;
      v86 = v34;
      v148 = 0;
      LOBYTE(v103) = 11;
      v36 = sub_1D984A444();
      v83 = v37;
      v84 = v36;
      v148 = 0;
      LOBYTE(v103) = 12;
      v82 = sub_1D984A494();
      v148 = 0;
      v146 = BYTE4(v82) & 1;
      LOBYTE(v103) = 13;
      v38 = sub_1D984A444();
      v80 = v39;
      v81 = v38;
      v148 = 0;
      LOBYTE(v103) = 14;
      v79 = sub_1D984A494();
      v148 = 0;
      v143 = BYTE4(v79) & 1;
      LOBYTE(v103) = 15;
      v78 = sub_1D984A494();
      v148 = 0;
      v140 = BYTE4(v78) & 1;
      LOBYTE(v103) = 16;
      v40 = sub_1D984A444();
      v70 = v41;
      v71 = v40;
      v148 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AF8, &qword_1D984E3D8);
      v101 = 17;
      sub_1D9833D84();
      v42 = v148;
      sub_1D984A4D4();
      v148 = v42;
      if (!v42)
      {
        (*(v6 + 8))(v8, v5);
        v60 = v102;
        *&v88[0] = v69;
        *(&v88[0] + 1) = v68;
        v88[1] = v67;
        *&v89 = v66;
        *(&v89 + 1) = v65;
        *&v90 = v77;
        *(&v90 + 1) = v64;
        *&v91 = v76;
        DWORD2(v91) = v74;
        v62 = v147;
        BYTE12(v91) = v147;
        BYTE13(v91) = v63;
        v92 = v73;
        v93 = v72;
        v94 = v87;
        *&v95 = v86;
        *(&v95 + 1) = v85;
        *&v96 = v84;
        *(&v96 + 1) = v83;
        LODWORD(v97) = v82;
        v61 = v146;
        BYTE4(v97) = v146;
        *(&v97 + 5) = v144;
        BYTE7(v97) = v145;
        *(&v97 + 1) = v81;
        *&v98 = v80;
        v44 = v78;
        v43 = v79;
        DWORD2(v98) = v79;
        *(&v98 + 13) = v141;
        *(&v99 + 5) = v138;
        v45 = v143;
        BYTE12(v98) = v143;
        HIBYTE(v98) = v142;
        LODWORD(v99) = v78;
        BYTE7(v99) = v139;
        v46 = v140;
        BYTE4(v99) = v140;
        v47 = v70;
        v48 = v71;
        *(&v99 + 1) = v71;
        *&v100 = v70;
        *(&v100 + 1) = v102;
        v49 = v67;
        *a2 = v88[0];
        a2[1] = v49;
        v50 = v89;
        v51 = v90;
        v52 = v92;
        a2[4] = v91;
        a2[5] = v52;
        a2[2] = v50;
        a2[3] = v51;
        v53 = v93;
        v54 = v94;
        v55 = v96;
        a2[8] = v95;
        a2[9] = v55;
        a2[6] = v53;
        a2[7] = v54;
        v56 = v97;
        v57 = v98;
        v58 = v100;
        a2[12] = v99;
        a2[13] = v58;
        a2[10] = v56;
        a2[11] = v57;
        sub_1D9833438(v88, &v103);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        v103 = v69;
        v104 = v68;
        v105 = v67;
        v106 = v66;
        v107 = v65;
        v108 = v77;
        v109 = v64;
        v110 = v76;
        v111 = v74;
        v112 = v62;
        v113 = v63;
        v114 = v73;
        v115 = v72;
        v116 = v87;
        v117 = v86;
        v118 = v85;
        v119 = v84;
        v120 = v83;
        v121 = v82;
        v122 = v61;
        v123 = v144;
        v124 = v145;
        v125 = v81;
        v126 = v80;
        v127 = v43;
        v128 = v45;
        v129 = v141;
        v130 = v142;
        v131 = v44;
        v132 = v46;
        v134 = v139;
        v133 = v138;
        v135 = v48;
        v136 = v47;
        v19 = v60;
        goto LABEL_5;
      }

      (*(v6 + 8))(v8, v5);
      v18 = v68;
      v10 = v69;
      v11 = v66;
      v14 = *(&v67 + 1);
      v17 = v67;
      v15 = v64;
      v13 = v65;
      v16 = v63;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  v103 = v10;
  v104 = v18;
  *&v105 = v17;
  *(&v105 + 1) = v14;
  v106 = v11;
  v107 = v13;
  v108 = v77;
  v109 = v15;
  v110 = v76;
  v111 = v74;
  v112 = v147;
  v113 = v16;
  v114 = v73;
  v115 = v72;
  v116 = v87;
  v117 = v86;
  v118 = v85;
  v119 = v84;
  v120 = v83;
  v121 = v82;
  v122 = v146;
  v123 = v144;
  v124 = v145;
  v125 = v81;
  v126 = v80;
  v127 = v79;
  v128 = v143;
  v129 = v141;
  v130 = v142;
  v131 = v78;
  v132 = v140;
  v134 = v139;
  v133 = v138;
  v135 = v71;
  v136 = v70;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v137 = v19;
  return sub_1D9833470(&v103);
}

AirPodsCrashReportObjc __swiftcall AirPodsCrashReportObjc.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_1D98324D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C10, &qword_1D984E818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D98325E0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D9832700(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BF8, &qword_1D984E800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D98327F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BE8, &qword_1D984E7F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BF0, &qword_1D984E7F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C48, &unk_1D984E840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C40, &qword_1D984E838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832B8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B88, &qword_1D984E788);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9832C98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C28, &qword_1D984E830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BA0, &qword_1D984E7A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9832ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BD0, &unk_1D984E7D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9832FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BA8, &qword_1D984E7A8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D9833114(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

void *sub_1D98332F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B90, &qword_1D984E790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B98, &qword_1D984E798);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D98334A0()
{
  result = qword_1ECB41AC0;
  if (!qword_1ECB41AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41AC0);
  }

  return result;
}

void sub_1D98334F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v24[0] = a1;
      LOWORD(v24[1]) = a2;
      BYTE2(v24[1]) = BYTE2(a2);
      BYTE3(v24[1]) = BYTE3(a2);
      BYTE4(v24[1]) = BYTE4(a2);
      BYTE5(v24[1]) = BYTE5(a2);
      v6 = v24 + BYTE6(a2);
      v7 = v24;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v8 = a3;
      v9 = a4;
      v10 = a5;
      v13 = sub_1D98498C4();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1D98498E4();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1D98498D4();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    memset(v24, 0, 14);
    v7 = v24;
    v6 = v24;
    goto LABEL_24;
  }

  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1D98498C4();
  if (v13)
  {
    v14 = sub_1D98498E4();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1D98498D4();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v6 = v23;
  }

  else
  {
    v6 = 0;
  }

  v7 = v13;
  a3 = v8;
  a4 = v9;
  a5 = v10;
LABEL_24:
  sub_1D982A784(v7, v6, a3, a4, a5);
}

unint64_t sub_1D98336F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C00, &qword_1D984E808);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D98447E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D98337FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
    v3 = sub_1D984A3F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D981A480(v4, &v13, &qword_1ECB41A80, &qword_1D984E780);
      v5 = v13;
      v6 = v14;
      result = sub_1D98447E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D982799C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D983392C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BE0, &qword_1D984E7E8);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_1D98447E4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9833A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BC8, &qword_1D984E7C8);
    v3 = sub_1D984A3F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D981A480(v4, v13, &qword_1ECB41AD0, &qword_1D984E3C0);
      result = sub_1D984485C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D982799C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D9833B88(void *a1, __n128 a2)
{
  v3 = sub_1D98499F4();
  [a1 writeData_];
}

unint64_t sub_1D9833BEC()
{
  result = qword_1ECB41AE0;
  if (!qword_1ECB41AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41AE0);
  }

  return result;
}

unint64_t sub_1D9833C40()
{
  result = qword_1ECB41B00;
  if (!qword_1ECB41B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41AF8, &qword_1D984E3D8);
    sub_1D9833CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B00);
  }

  return result;
}

unint64_t sub_1D9833CC4()
{
  result = qword_1ECB41B08;
  if (!qword_1ECB41B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B08);
  }

  return result;
}

uint64_t sub_1D9833D18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41AE8, &qword_1D984E3D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9833D84()
{
  result = qword_1ECB41B20;
  if (!qword_1ECB41B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41AF8, &qword_1D984E3D8);
    sub_1D9833E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B20);
  }

  return result;
}

unint64_t sub_1D9833E08()
{
  result = qword_1ECB41B28;
  if (!qword_1ECB41B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41B28);
  }

  return result;
}

unint64_t sub_1D9833E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB0, &qword_1D984E7B0);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D98447E4(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9833F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B80, &unk_1D984E770);
    v3 = sub_1D984A3F4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D98447E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double sub_1D983406C(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1D98447E4(0x6B63617473, 0xE500000000000000);
    if (v6)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v7 = sub_1D98447E4(0xD000000000000011, 0x80000001D9853730), (v8 & 1) != 0) && (sub_1D981B108(*(a1 + 56) + 32 * v7, v11), swift_dynamicCast()))
        {
          result = sub_1D98383B4(a2[10], a2[11], a2[12]);
          a2[10] = v9;
          a2[11] = v9;
          a2[12] = v10;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_1D9834188(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1D98447E4(1684632949, 0xE400000000000000);
    if (v5)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {

        *(a2 + 48) = v6;
        *(a2 + 56) = v7;
      }
    }
  }
}

double sub_1D9834220(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1D98447E4(0x736B736174, 0xE500000000000000);
    if (v6)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v4, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA0, &qword_1D984E378);
      if (swift_dynamicCast())
      {
        v7 = v24;
        v8 = *(v24 + 16);
        if (v8)
        {
          v9 = 32;
          do
          {
            v11 = *(v7 + v9);
            v12 = *(v11 + 16);

            if (v12 && (v13 = sub_1D98447E4(0x7470697263736564, 0xEB000000006E6F69), (v14 & 1) != 0) && (sub_1D981B108(*(v11 + 56) + 32 * v13, v26), (swift_dynamicCast() & 1) != 0))
            {
              v16 = v24;
              v15 = v25;
              if (!*(v11 + 16))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v16 = 0;
              v15 = 0;
              if (!*(v11 + 16))
              {
                goto LABEL_18;
              }
            }

            v17 = sub_1D98447E4(0x6B63617473, 0xE500000000000000);
            if ((v18 & 1) == 0)
            {
LABEL_18:

              goto LABEL_19;
            }

            sub_1D981B108(*(v11 + 56) + 32 * v17, v26);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
            if (swift_dynamicCast())
            {
              v19 = v24;
              if (v15 | v24)
              {
                goto LABEL_20;
              }

              goto LABEL_7;
            }

LABEL_19:
            v19 = 0;
            if (v15)
            {
LABEL_20:
              v20 = *(a2 + 104);
              if (v20)
              {

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v20 = sub_1D9832944(0, *(v20 + 2) + 1, 1, v20);
                }

                v22 = *(v20 + 2);
                v21 = *(v20 + 3);
                if (v22 >= v21 >> 1)
                {
                  v20 = sub_1D9832944((v21 > 1), v22 + 1, 1, v20);
                }

                *(v20 + 2) = v22 + 1;
                v23 = &v20[24 * v22];
                *(v23 + 4) = v16;
                *(v23 + 5) = v15;
                *(v23 + 6) = v19;
                *(a2 + 104) = v20;
                v7 = v24;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C48, &unk_1D984E840);
                v10 = swift_allocObject();
                *(v10 + 16) = xmmword_1D984E260;
                *(v10 + 32) = v16;
                *(v10 + 40) = v15;
                *(v10 + 48) = v19;
                *(a2 + 104) = v10;
              }
            }

LABEL_7:
            v9 += 8;
            --v8;
          }

          while (v8);
        }
      }
    }
  }

  return result;
}

double sub_1D98344F8(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) || (v4 = sub_1D98447E4(0x7265747369676572, 0xE900000000000073), (v5 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v4, v40), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0), (swift_dynamicCast() & 1) == 0))
  {
    v41 = 0;
  }

  if (!*(a1 + 16) || (v6 = sub_1D98447E4(0x2D786F626C69616DLL, 0xED0000726F727265), (v7 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v6, v40), (swift_dynamicCast() & 1) == 0))
  {
    v38 = 0;
    v39 = 0;
  }

  if (!*(a1 + 16) || (v8 = sub_1D98447E4(0x756E2D6574756F72, 0xEC0000007265626DLL), (v9 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v8, v40), (swift_dynamicCast() & 1) == 0))
  {
    v36 = 0;
    v37 = 0;
  }

  if (*(a1 + 16) && (v10 = sub_1D98447E4(6778732, 0xE300000000000000), (v11 & 1) != 0) && (sub_1D981B108(*(a1 + 56) + 32 * v10, v40), (swift_dynamicCast() & 1) != 0))
  {
    if (v41)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    if (v41)
    {
LABEL_17:
      if (v39)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9849C54();
  __swift_project_value_buffer(v12, qword_1ECB47658);
  v13 = sub_1D9849C24();
  v14 = sub_1D984A124();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D97FA000, v13, v14, "Invalid or missing Mailbox registers", v15, 2u);
    MEMORY[0x1DA738F10](v15, -1, -1);
  }

  if (v39)
  {
LABEL_18:
    if (v37)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_27:
  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D9849C54();
  __swift_project_value_buffer(v16, qword_1ECB47658);
  v17 = sub_1D9849C24();
  v18 = sub_1D984A124();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D97FA000, v17, v18, "Invalid or missing Mailbox error", v19, 2u);
    MEMORY[0x1DA738F10](v19, -1, -1);
  }

  if (v37)
  {
LABEL_19:
    if (v35)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_32:
  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D9849C54();
  __swift_project_value_buffer(v20, qword_1ECB47658);
  v21 = sub_1D9849C24();
  v22 = sub_1D984A124();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D97FA000, v21, v22, "Invalid or missing Mailbox route number", v23, 2u);
    MEMORY[0x1DA738F10](v23, -1, -1);
  }

  if (!v35)
  {
LABEL_37:
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D9849C54();
    __swift_project_value_buffer(v24, qword_1ECB47658);
    v25 = sub_1D9849C24();
    v26 = sub_1D984A124();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D97FA000, v25, v26, "Invalid or missing Mailbox log", v27, 2u);
      MEMORY[0x1DA738F10](v27, -1, -1);
    }
  }

LABEL_42:
  v28 = v41;
  v29 = *(a2 + 112);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D9832A64(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D9832A64((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[56 * v31];
  *(v32 + 4) = v28;
  *(v32 + 5) = v38;
  *(v32 + 6) = v39;
  *(v32 + 7) = v36;
  *(v32 + 8) = v37;
  *(v32 + 9) = v34;
  *(v32 + 10) = v35;
  *(a2 + 112) = v29;

  return result;
}

void sub_1D9834AD0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1D98447E4(0x7265747369676572, 0xE900000000000073);
    if (v5)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {

        *(a2 + 120) = v6;
        *(a2 + 128) = v7;
      }
    }
  }
}

double sub_1D9834B74(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 16))
  {
    v5 = sub_1D98447E4(0x656E696863614DLL, 0xE700000000000000);
    if (v7)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v5, &v19);
      if (swift_dynamicCast())
      {

        a3[10] = v17;
        a3[11] = v18;
      }
    }
  }

  if (*(a1 + 16))
  {
    v8 = sub_1D98447E4(0x646C697542, 0xE500000000000000);
    if (v9)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v8, &v19);
      if (swift_dynamicCast())
      {

        a3[12] = v17;
        a3[13] = v18;
      }
    }
  }

  if (*(a1 + 16))
  {
    v10 = sub_1D98447E4(0x697372657620534FLL, 0xEA00000000006E6FLL);
    if (v11)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v10, &v19);
      if (swift_dynamicCast())
      {

        a3[14] = v17;
        a3[15] = v18;
        v19 = v17;
        v20 = v18;
        sub_1D9838360();
        v12 = sub_1D984A264();

        if (v12[2])
        {
          v13 = v12[4];
          v14 = v12[5];

          v19 = 0x20534F74694B5452;
          v20 = 0xE800000000000000;
          MEMORY[0x1DA737B20](v13, v14);

          v15 = v19;
          v16 = v20;

          a3[16] = v15;
          a3[17] = v16;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D9834DA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D9849EB4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D9849F84();
}

double sub_1D9834E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v5 = sub_1D98447E4(0x73746E65746E6F63, 0xE800000000000000);
    if (v7)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v5, v21);
      if (swift_dynamicCast())
      {
        if (sub_1D9849F34())
        {
          v8 = sub_1D9849E94();
          v9 = sub_1D9834DA0(v8, v19, v20);
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v16 = MEMORY[0x1DA737AC0](v9, v11, v13, v15);
          v18 = v17;

          *(a3 + 144) = v16;
          *(a3 + 152) = v18;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_1D9834F84(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v4 = sub_1D98447E4(0x73746E65746E6F63, 0xE800000000000000);
  if ((v5 & 1) == 0)
  {
    return;
  }

  sub_1D981B108(*(a1 + 56) + 32 * v4, &v32);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    return;
  }

  v8 = v30;
  v7 = v31;
  *&v32 = 58;
  *(&v32 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v6);
  v28[2] = &v32;

  v10 = sub_1D9843CC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D98382EC, v28, v30, v31, v9);
  v11 = *(v10 + 16);
  if (v11)
  {

    if (v11 <= *(v10 + 16))
    {
      v12 = v10 + 32 * v11;
      v29 = *v12;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);

      v32 = v29;
      v33 = v14;
      v34 = v13;
      v15 = sub_1D98498B4();
      v16 = *(v15 - 8);
      MEMORY[0x1EEE9AC00](v15);
      v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D98498A4();
      sub_1D983830C();
      v19 = sub_1D984A274();
      v21 = v20;
      (*(v16 + 8))(v18, v15);

      *(a2 + 136) = v19;
      *(a2 + 144) = v21;
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1ECB415C8 != -1)
  {
LABEL_14:
    swift_once();
  }

  v22 = sub_1D9849C54();
  __swift_project_value_buffer(v22, qword_1ECB47658);

  v23 = sub_1D9849C24();
  v24 = sub_1D984A124();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v32 = v26;
    *v25 = 136315138;
    v27 = sub_1D9819F0C(v8, v7, &v32);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_1D97FA000, v23, v24, "Failed to parse heap usage from section contents: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1DA738F10](v26, -1, -1);
    MEMORY[0x1DA738F10](v25, -1, -1);
  }

  else
  {
  }
}

void sub_1D98352F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v5 = sub_1D98447E4(1701669236, 0xE400000000000000);
    if (v6)
    {
      sub_1D981B108(*(a1 + 56) + 32 * v5, v9);
      if (swift_dynamicCast())
      {

        *(a3 + 200) = v7;
        *(a3 + 208) = v8;
      }
    }
  }
}

void sub_1D983538C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    v12 = *(a1 + 16);
    sub_1D9826CDC(a2, a3);
    if (!v12 || (v13 = sub_1D98447E4(0x2D6E6F6974636573, 0xEE0074657366666FLL), (v14 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v13, v32), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v20 = sub_1D9849C54();
      __swift_project_value_buffer(v20, qword_1ECB47658);
      v21 = sub_1D9849C24();
      v22 = sub_1D984A124();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Offset section not available to decode MTBF";
      goto LABEL_25;
    }

    if (!*(a1 + 16) || (v15 = sub_1D98447E4(0x2D6E6F6974636573, 0xEC000000657A6973), (v16 & 1) == 0) || (sub_1D981B108(*(a1 + 56) + 32 * v15, v32), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_1ECB415C8 != -1)
      {
        swift_once();
      }

      v25 = sub_1D9849C54();
      __swift_project_value_buffer(v25, qword_1ECB47658);
      v21 = sub_1D9849C24();
      v22 = sub_1D984A124();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Size section not available to decode MTBF";
      goto LABEL_25;
    }

    if (v31 >= 1 && (v31 & 0x8000000000000000) == 0)
    {
      v17 = 2 * v31;
      if (__OFADD__(v31, v31))
      {
        __break(1u);
        goto LABEL_45;
      }

      v18 = a3 >> 62;
      if ((a3 >> 62) <= 1)
      {
        if (!v18)
        {
          v19 = BYTE6(a3);
          goto LABEL_37;
        }

LABEL_35:
        LODWORD(v19) = HIDWORD(a2) - a2;
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v19 = v19;
          goto LABEL_37;
        }

LABEL_45:
        __break(1u);
        return;
      }

      if (v18 == 2)
      {
        v27 = *(a2 + 16);
        v26 = *(a2 + 24);
        v28 = __OFSUB__(v26, v27);
        v19 = v26 - v27;
        if (!v28)
        {
LABEL_37:
          if (v17 < v19)
          {
LABEL_38:
            sub_1D98334F4(a2, a3, v31, v31, a5);
            sub_1D98279AC(a2, a3);
            return;
          }

          goto LABEL_40;
        }

        __break(1u);
        goto LABEL_35;
      }

      if (v17 < 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    if (qword_1ECB415C8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D9849C54();
    __swift_project_value_buffer(v29, qword_1ECB47658);
    v21 = sub_1D9849C24();
    v22 = sub_1D984A124();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_26;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Invalid MTBF section offset and size";
LABEL_25:
    _os_log_impl(&dword_1D97FA000, v21, v22, v24, v23, 2u);
    MEMORY[0x1DA738F10](v23, -1, -1);
LABEL_26:
    sub_1D98279AC(a2, a3);

    return;
  }

  if (qword_1ECB415C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D9849C54();
  __swift_project_value_buffer(v5, qword_1ECB47658);
  oslog = sub_1D9849C24();
  v6 = sub_1D984A124();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D97FA000, oslog, v6, "Binary not available to decode MTBF", v7, 2u);
    MEMORY[0x1DA738F10](v7, -1, -1);
  }
}

uint64_t sub_1D9835804(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E10, &qword_1D984F4A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D9839B5C();
  sub_1D984A6F4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v9[7] = 0;
    sub_1D98245F8(&qword_1ECB419A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D984A4D4();
    v7 = v10;
    v9[6] = 1;
    sub_1D984A4B4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_1D9835A2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D984A414();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_1D9835A78(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D08, &qword_1D984ED48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F00();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AE8, &qword_1D984E3D0);
    v32 = 0;
    sub_1D9833D18(&qword_1ECB41B18, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D984A464();
    v9 = v33;
    v31 = 1;
    v10 = sub_1D984A444();
    v12 = v11;
    v27 = v10;
    v28 = a2;
    v30 = 2;
    v13 = sub_1D984A444();
    v15 = v14;
    v26 = v13;
    v29 = 3;
    v16 = sub_1D984A444();
    v18 = v17;
    v19 = *(v6 + 8);
    v25 = v16;
    v19(v8, v5);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    v21 = v27;
    v20 = v28;
    *v28 = v9;
    v20[1] = v21;
    v22 = v25;
    v23 = v26;
    v20[2] = v12;
    v20[3] = v23;
    v20[4] = v15;
    v20[5] = v22;
    v20[6] = v18;
  }
}

uint64_t sub_1D9835DB0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41CF0, &qword_1D984ED38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838EAC();
  sub_1D984A6F4();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1D984A444();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v9[15] = 1;
    sub_1D98245F8(&qword_1ECB419A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D984A464();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_1D9835FB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D984A414();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D9836000(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E18, &qword_1D984F4A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839BB0();
  sub_1D984A6F4();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12[31] = 0;
  v7 = sub_1D984A484();
  v12[30] = 1;
  v8 = sub_1D984A484();
  v12[29] = 2;
  v9 = sub_1D984A484();
  v12[28] = 3;
  v10 = sub_1D984A484();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v12[26] = BYTE2(v7) & 1;
  v12[24] = BYTE2(v8) & 1;
  v12[14] = BYTE2(v9) & 1;
  v12[12] = BYTE2(v10) & 1;
  return (v8 << 32) | ((BYTE2(v8) & 1) << 48) | ((BYTE2(v7) & 1) << 16) | v7;
}

unint64_t sub_1D9836254(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D984A414();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D98362A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D70, &qword_1D984ED70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  v54 = 1;
  v52 = 1;
  v51 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9839200();
  sub_1D984A6F4();
  if (v2)
  {
    v55 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v39 = 0;
    v40 = v54;
    *v41 = *v53;
    *&v41[3] = *&v53[3];
    v42 = 0uLL;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v52;
    v47 = 0;
    v48 = v51;
    v49 = 0;
    v50 = 0;
    return sub_1D98382A8(&v39);
  }

  else
  {
    LOBYTE(v39) = 0;
    v32 = sub_1D984A4A4();
    v54 = v10 & 1;
    LOBYTE(v39) = 1;
    *&v31 = sub_1D984A444();
    *(&v31 + 1) = v11;
    v30 = a2;
    LOBYTE(v39) = 2;
    v12 = sub_1D984A444();
    v14 = v13;
    LOBYTE(v39) = 3;
    v15 = sub_1D984A494();
    v16 = v15;
    v52 = BYTE4(v15) & 1;
    LOBYTE(v39) = 4;
    v17 = sub_1D984A474();
    v18 = v17;
    v51 = HIBYTE(v17) & 1;
    v38 = 5;
    v19 = sub_1D984A444();
    v55 = 0;
    v20 = v19;
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    *&v33 = v32;
    HIDWORD(v29) = v54;
    BYTE8(v33) = v54;
    v34 = v31;
    *&v35 = v12;
    *(&v35 + 1) = v14;
    LODWORD(v36) = v16;
    v24 = v52;
    BYTE4(v36) = v52;
    BYTE5(v36) = v18;
    v25 = v51;
    BYTE6(v36) = v51;
    *(&v36 + 1) = v20;
    v37 = v23;
    sub_1D9838270(&v33, &v39);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v39 = v32;
    v40 = BYTE4(v29);
    v42 = v31;
    v43 = v12;
    v44 = v14;
    v45 = v16;
    v46 = v24;
    v47 = v18;
    v48 = v25;
    v49 = v20;
    v50 = v23;
    result = sub_1D98382A8(&v39);
    v26 = v36;
    v27 = v30;
    *(v30 + 32) = v35;
    *(v27 + 48) = v26;
    *(v27 + 64) = v37;
    v28 = v34;
    *v27 = v33;
    *(v27 + 16) = v28;
  }

  return result;
}

unint64_t sub_1D983673C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D984A414();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_1D9836788(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D20, &qword_1D984ED58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9838F54();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v26 = 0;
    sub_1D98245F8(&qword_1ECB419A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D984A4D4();
    v9 = v20;
    LOBYTE(v20) = 1;
    v10 = sub_1D984A4A4();
    v25 = v11;
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41D30, &qword_1D984ED60);
    v26 = 2;
    sub_1D9838FA8();
    sub_1D984A464();
    v12 = v20;
    v26 = 3;
    sub_1D9839080();
    sub_1D984A464();
    (*(v6 + 8))(v8, v5);
    v13 = v20;
    v18 = v22;
    v14 = v21;
    v15 = v24;
    v16 = v23;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    v17 = v19;
    *a2 = v9;
    *(a2 + 8) = v17;
    *(a2 + 16) = v25 & 1;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 46) = v16;
    *(a2 + 44) = v18;
    *(a2 + 40) = v14;
    *(a2 + 47) = v15;
  }
}

unint64_t sub_1D9836ABC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D984A414();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9836B08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41CB8, &qword_1D984ED30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - v7;
  v122 = 1;
  v120 = 1;
  v9 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D9838970();
  sub_1D984A6F4();
  if (v2)
  {
    v123 = v2;
    v75 = 0;
    v76 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0uLL;
    v73 = 0;
    v74 = 0uLL;
    v68 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v69 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v17 = MEMORY[0x1E69E7CC0];
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    *&v100 = v16;
    *(&v100 + 1) = v15;
    *&v101 = v14;
    *(&v101 + 1) = v13;
    *&v102 = v12;
    *(&v102 + 1) = v11;
    v103 = v10;
    v104 = v68;
    v105 = v74;
    v106 = v72;
    v107 = v73;
    v108 = v71;
    v109 = v69;
    v110 = v70;
    v111 = v76;
    v112 = v75;
    v113 = v17;
    v114 = 0;
    v115 = v122;
    *v116 = *v121;
    *&v116[3] = *&v121[3];
    v117 = 0;
    memset(v118, 0, sizeof(v118));
    v119 = v120;
    return sub_1D9838204(&v100);
  }

  LOBYTE(v100) = 0;
  *&v66 = sub_1D984A444();
  *(&v66 + 1) = v19;
  LOBYTE(v100) = 1;
  *&v65 = sub_1D984A444();
  *(&v65 + 1) = v20;
  LOBYTE(v100) = 2;
  *&v64 = sub_1D984A444();
  *(&v64 + 1) = v21;
  LOBYTE(v100) = 3;
  v63 = sub_1D984A444();
  v68 = v22;
  LOBYTE(v100) = 4;
  v23 = sub_1D984A444();
  v123 = 0;
  *&v74 = v23;
  *(&v74 + 1) = v24;
  LOBYTE(v77) = 5;
  sub_1D9838C54();
  v25 = v123;
  sub_1D984A464();
  v123 = v25;
  if (v25)
  {
    (*(v6 + 8))(v8, v5);
    v76 = 0;
    *(&v69 + 1) = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0uLL;
    v73 = 0;
LABEL_11:
    v75 = 0;
    *&v69 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v15 = *(&v66 + 1);
    v16 = v66;
    v13 = *(&v65 + 1);
    v14 = v65;
    v11 = *(&v64 + 1);
    v12 = v64;
    v10 = v63;
    goto LABEL_4;
  }

  v62 = a2;
  v26 = *(&v100 + 1);
  v27 = v100;
  v28 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C80, &qword_1D984ED20);
  LOBYTE(v77) = 6;
  sub_1D9838CA8();
  v29 = v123;
  sub_1D984A464();
  v123 = v29;
  v73 = v28;
  v72 = __PAIR128__(v26, v27);
  if (v29)
  {
    (*(v6 + 8))(v8, v5);
    v76 = 0;
    *(&v69 + 1) = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_11;
  }

  v30 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41C98, &qword_1D984ED28);
  LOBYTE(v77) = 7;
  sub_1D9838D80();
  v31 = v123;
  sub_1D984A4D4();
  v71 = v30;
  if (v31)
  {
    v123 = v31;
    (*(v6 + 8))(v8, v5);
    v76 = 0;
    *(&v69 + 1) = 0;
    v70 = 0;
    goto LABEL_11;
  }

  *&v69 = v100;
  LOBYTE(v100) = 8;
  v32 = sub_1D984A444();
  v123 = 0;
  *(&v69 + 1) = v32;
  v70 = v33;
  LOBYTE(v100) = 9;
  v34 = sub_1D984A444();
  v75 = v35;
  v76 = v34;
  v123 = 0;
  v90 = 10;
  sub_1D9838E58();
  v36 = v123;
  sub_1D984A4D4();
  v123 = v36;
  if (v36)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_12;
  }

  (*(v6 + 8))(v8, v5);
  v59 = v92;
  v60 = v91;
  v37 = v93;
  v38 = v94;
  v61 = v95;
  v39 = v97 | (v98 << 16);
  v57 = v96;
  v58 = v94;
  v40 = v99;

  v122 = v37;
  v120 = v40;
  v41 = v66;
  v77 = v66;
  v42 = v65;
  v78 = v65;
  v43 = v64;
  v79 = v64;
  v44 = v68;
  *&v80 = v63;
  *(&v80 + 1) = v68;
  v81 = v74;
  v82 = v72;
  *&v83 = v73;
  *(&v83 + 1) = v71;
  v84 = v69;
  *&v85 = v70;
  *(&v85 + 1) = v76;
  *&v86 = v75;
  *(&v86 + 1) = v60;
  *&v87 = v59;
  v54 = v37;
  BYTE8(v87) = v37;
  *&v88 = v38;
  *(&v88 + 1) = v61;
  v56 = HIWORD(v39);
  BYTE6(v89) = BYTE2(v39);
  v55 = v39;
  WORD2(v89) = v39;
  v45 = v57;
  LODWORD(v89) = v57;
  HIBYTE(v89) = v40;
  sub_1D98381CC(&v77, &v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  v100 = v41;
  v101 = __PAIR128__(*(&v65 + 1), v42);
  v102 = v43;
  v103 = v63;
  v104 = v44;
  v105 = v74;
  v106 = v72;
  v107 = v73;
  v108 = v71;
  v109 = v69;
  v110 = v70;
  v111 = v76;
  v112 = v75;
  v113 = v60;
  v114 = v59;
  v115 = v54;
  *v116 = *v121;
  *&v116[3] = *&v121[3];
  v117 = v58;
  *v118 = v61;
  v118[14] = v56;
  *&v118[12] = v55;
  *&v118[8] = v45;
  v119 = v40;
  result = sub_1D9838204(&v100);
  v46 = v88;
  v47 = v62;
  *(v62 + 160) = v87;
  *(v47 + 176) = v46;
  *(v47 + 192) = v89;
  v48 = v84;
  *(v47 + 96) = v83;
  *(v47 + 112) = v48;
  v49 = v86;
  *(v47 + 128) = v85;
  *(v47 + 144) = v49;
  v50 = v80;
  *(v47 + 32) = v79;
  *(v47 + 48) = v50;
  v51 = v82;
  *(v47 + 64) = v81;
  *(v47 + 80) = v51;
  v52 = v78;
  *v47 = v77;
  *(v47 + 16) = v52;
  return result;
}

uint64_t sub_1D98373C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41B70, &unk_1D984E760);
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  sub_1D98380D4(v91);
  v88 = v91[10];
  v89 = v91[11];
  v90 = v92;
  v84 = v91[6];
  v85 = v91[7];
  v87 = v91[9];
  v86 = v91[8];
  v80 = v91[2];
  v81 = v91[3];
  v83 = v91[5];
  v82 = v91[4];
  v79 = v91[1];
  v78 = v91[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D983802C();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v63 = 0;
    v64 = 0;
    v75 = v88;
    v76 = v89;
    v77 = v90;
    v71 = v84;
    v72 = v85;
    v73 = v86;
    v74 = v87;
    v67 = v80;
    v68 = v81;
    v69 = v82;
    v70 = v83;
    v65 = v78;
    v66 = v79;
    return sub_1D98380F8(&v63);
  }

  else
  {
    LOBYTE(v63) = 0;
    v7 = sub_1D984A444();
    v9 = v8;
    v49 = 1;
    sub_1D9838128();
    sub_1D984A464();
    (*(v93 + 8))(v6, v4);
    v30 = v60;
    v31 = v61;
    v32 = v62;
    v26 = v56;
    v27 = v57;
    v28 = v58;
    v29 = v59;
    v22 = v52;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v20 = v50;
    v21 = v51;
    v33[10] = v88;
    v33[11] = v89;
    v34 = v90;
    v33[6] = v84;
    v33[7] = v85;
    v33[8] = v86;
    v33[9] = v87;
    v33[2] = v80;
    v33[3] = v81;
    v33[4] = v82;
    v33[5] = v83;
    v33[0] = v78;
    v33[1] = v79;
    sub_1D981A4E8(v33, &qword_1ECB41B60, &qword_1D984E758);
    *&v35 = v7;
    *(&v35 + 1) = v9;
    v46 = v30;
    v47 = v31;
    v48 = v32;
    v42 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v38 = v22;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v36 = v20;
    v37 = v21;
    sub_1D983817C(&v35, &v63);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v63 = v7;
    v64 = v9;
    v75 = v30;
    v76 = v31;
    v77 = v32;
    v71 = v26;
    v72 = v27;
    v73 = v28;
    v74 = v29;
    v67 = v22;
    v68 = v23;
    v69 = v24;
    v70 = v25;
    v65 = v20;
    v66 = v21;
    result = sub_1D98380F8(&v63);
    v11 = v46;
    v12 = v19;
    *(v19 + 160) = v45;
    *(v12 + 176) = v11;
    *(v12 + 192) = v47;
    *(v12 + 208) = v48;
    v13 = v42;
    *(v12 + 96) = v41;
    *(v12 + 112) = v13;
    v14 = v44;
    *(v12 + 128) = v43;
    *(v12 + 144) = v14;
    v15 = v38;
    *(v12 + 32) = v37;
    *(v12 + 48) = v15;
    v16 = v40;
    *(v12 + 64) = v39;
    *(v12 + 80) = v16;
    v17 = v36;
    *v12 = v35;
    *(v12 + 16) = v17;
  }

  return result;
}