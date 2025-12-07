void *sub_1CF4D3870@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_1CF4D388C(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

uint64_t sub_1CF4D38B0()
{
  result = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    v2 = 0;
LABEL_5:
    v4 = sub_1CF04F854(result);
    v6 = v5;
    MEMORY[0x1D3868CC0](v4);
    v6, v7, v8, v9, v10, v11, v12, v13;
    return v2;
  }

  v3 = __OFSUB__(0, result);
  result = -result;
  if (!v3)
  {
    v2 = 45;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3924(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 - *result > 0);
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3944(void *result, void *a2)
{
  if (!__OFSUB__(*result, *a2))
  {
    return (*result - *a2 < 1);
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3964(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 - *result < 1);
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3984(void *result, void *a2)
{
  if (!__OFSUB__(*result, *a2))
  {
    return (*result - *a2 > 0);
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4D39B4()
{
  result = qword_1EC4C0850;
  if (!qword_1EC4C0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0850);
  }

  return result;
}

unint64_t sub_1CF4D3B18()
{
  result = qword_1EC4C0858;
  if (!qword_1EC4C0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0858);
  }

  return result;
}

unint64_t sub_1CF4D3B6C()
{
  result = qword_1EDEA8338;
  if (!qword_1EDEA8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8338);
  }

  return result;
}

uint64_t sub_1CF4D3BC0()
{
  v0 = sub_1CF9E5CF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = v5 * 1000000000.0;
  if (COERCE__INT64(fabs(v5 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF4D3CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1CF06EAD4(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CEFD9E84(a1);
    sub_1CEFD9E84(v4);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_1CF9E5C98();
  v14 = v13;
  sub_1CEFD9E84(a1);
  v15 = *(v6 + 8);
  v15(v8, v5);
  result = (v15)(v11, v5);
  v16 = v14 * 1000000000.0;
  if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 9.22337204e18)
  {
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1CF4D3F40(void (*a1)(void))
{
  sub_1CF2CA194();
  v2 = swift_allocError();
  a1();
}

uint64_t sub_1CF4D3FA8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1CF4D4018()
{
  result = qword_1EC4C0860;
  if (!qword_1EC4C0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0860);
  }

  return result;
}

void sub_1CF4D406C()
{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  if ((*(v0 + 33) & 1) == 0)
  {
    v9 = [objc_opt_self() defaultManager];
    v11 = *(v1 + 16);
    v10 = *(v1 + 24);
    v12 = sub_1CF9E6888();
    v54 = 0;
    v13 = [v9 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v54];

    v14 = v54;
    if (v13)
    {
      v54 = v11;
      v55 = v10;
      v15 = v14;

      MEMORY[0x1D3868CC0](97, 0xE100000000000000);
      v16 = v55;
      sub_1CF9E6978();
      v16, v17, v18, v19, v20, v21, v22, v23;
      fpfs_removeat();

      v54 = v11;
      v55 = v10;

      MEMORY[0x1D3868CC0](98, 0xE100000000000000);
      v24 = v55;
      sub_1CF9E6978();
      v24, v25, v26, v27, v28, v29, v30, v31;
      fpfs_removeat();

      v54 = v11;
      v55 = v10;

      MEMORY[0x1D3868CC0](97, 0xE100000000000000);
      v32 = v55;
      sub_1CF9E6978();
      v32, v33, v34, v35, v36, v37, v38, v39;
      v40 = sub_1CF9E6158();

      if ((v40 & 0x80000000) == 0)
      {
        fpfs_track_document();
        close(v40);
      }

      *(v1 + 33) = 1;
      if (*(v1 + 34) == 1)
      {
        v41 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v42 = sub_1CF9E6108();
        v43 = sub_1CF9E72C8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1CEFC7000, v42, v43, "💀 tombstone slayer setup succeeded after previous failure", v44, 2u);
          MEMORY[0x1D386CDC0](v44, -1, -1);
        }

        (*(v3 + 8))(v8, v2);
        *(v1 + 34) = 0;
      }
    }

    else
    {
      v45 = v54;
      v46 = sub_1CF9E57F8();

      swift_willThrow();
      if (*(v1 + 34))
      {
      }

      else
      {
        v47 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v48 = v46;
        v49 = sub_1CF9E6108();
        v50 = sub_1CF9E72B8();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          swift_getErrorValue();
          v53 = Error.prettyDescription.getter(v56, v57);
          *(v51 + 4) = v53;
          *v52 = v53;
          _os_log_impl(&dword_1CEFC7000, v49, v50, "💀 cannot setup tombstone slayer: %@", v51, 0xCu);
          sub_1CF19CAB0(v52);
          MEMORY[0x1D386CDC0](v52, -1, -1);
          MEMORY[0x1D386CDC0](v51, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v5, v2);
        *(v1 + 34) = 1;
      }
    }
  }
}

uint64_t sub_1CF4D44F8()
{
  v23 = *(v0 + 24);

  MEMORY[0x1D3868CC0](97, 0xE100000000000000);
  sub_1CF9E6978();
  v23, v1, v2, v3, v4, v5, v6, v7;
  fpfs_removeat();

  v24 = *(v0 + 24);

  MEMORY[0x1D3868CC0](98, 0xE100000000000000);
  sub_1CF9E6978();
  v24, v8, v9, v10, v11, v12, v13, v14;
  fpfs_removeat();

  sub_1CF9E6978();
  fpfs_removeat();

  *(v0 + 24), v15, v16, v17, v18, v19, v20, v21;
  return v0;
}

uint64_t sub_1CF4D45E4()
{
  sub_1CF4D44F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4D463C()
{
  v1 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1CF4D406C();
  result = sub_1CEFE1894(sub_1CF4D4A9C);
  *(v0 + 32) = (*(v0 + 32) & 1) == 0;
  return result;
}

void sub_1CF4D4964(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {

    v5 = 97;
  }

  else
  {

    v5 = 98;
  }

  MEMORY[0x1D3868CC0](v5, 0xE100000000000000);
  if (*(a1 + 32) == 1)
  {

    v6 = 98;
  }

  else
  {

    v6 = 97;
  }

  MEMORY[0x1D3868CC0](v6, 0xE100000000000000);
  v7 = sub_1CF9E6978();
  v4, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1CF9E6978();
  v4, v16, v17, v18, v19, v20, v21, v22;
  v23 = MEMORY[0x1D386BA20](4294967294, v7 + 32, 4294967294, v15 + 32, 4);

  *a2 = v23;
}

uint64_t sub_1CF4D4AB8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1CF4D4DF0(v3);
}

uint64_t sub_1CF4D4B78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(v3 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v11, &v1[v12], v5);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v11, 1, v4) != 1)
  {
    return (*(v13 + 32))(a1, v11, v4);
  }

  (*(v6 + 8))(v11, v5);
  v14 = *(v1 + 2);

  v19 = v1;
  v14(v15);

  (*(v13 + 16))(v8, a1, v4);
  (*(v13 + 56))(v8, 0, 1, v4);
  v16 = v19;
  swift_beginAccess();
  (*(v6 + 40))(&v16[v12], v8, v5);
  return swift_endAccess();
}

uint64_t sub_1CF4D4DF0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1CF9E75D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 32))(&v12 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v10, v8, v4);
  return swift_endAccess();
}

void (*sub_1CF4D4F74(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1CF4D4B78(v9);
  return sub_1CF4D5088;
}

void sub_1CF4D5088(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1CF4D4DF0(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1CF4D4DF0(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Lazy.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 56))(&v4[*(*v4 + 96)], 1, 1);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  return v4;
}

char *Lazy.init(_:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 56))(&v2[*(*v2 + 96)], 1, 1);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  return v2;
}

char *Lazy.deinit()
{

  v1 = *(*v0 + 96);
  v2 = sub_1CF9E75D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lazy.__deallocating_deinit()
{
  Lazy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4D5364(uint64_t a1)
{
  result = sub_1CF9E75D8();
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

uint64_t sub_1CF4D54B8(uint64_t a1)
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

uint64_t sub_1CF4D55C8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

char sub_1CF4D568C@<W0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1CEFD1104(a1, v13);
  LOBYTE(v4) = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

  v5 = *&v12 <= -1 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
  v6 = v5 && (*&v12 - 1) >= 0xFFFFFFFFFFFFFLL;
  v7 = !v6 || (*&v12 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v7 || v12 > 1.0)
  {
    goto LABEL_19;
  }

  v9 = v12 * 100.0;
  if (COERCE_UNSIGNED_INT64(fabs(v12 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  FPCKPhase.init(rawValue:)(v9);
  v10 = v13[0];
  if (LOBYTE(v13[0]) != 12)
  {
    LOBYTE(v4) = __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_27;
  }

LABEL_19:
  sub_1CEFE9EB8(a1, v13);
  LOBYTE(v4) = swift_dynamicCast();
  if (v4)
  {
    v4 = *&v12;
    if ((*&v12 & 0x8000000000000000) == 0 || (v4 = -*&v12, !__OFSUB__(0, *&v12)))
    {
      LOBYTE(v4) = FPCKPhase.init(rawValue:)(v4);
      if (LOBYTE(v13[0]) == 12)
      {
        v10 = 0;
      }

      else
      {
        v10 = v13[0];
      }

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
    return v4;
  }

  v10 = 0;
LABEL_27:
  *a2 = v10;
  return v4;
}

FileProviderDaemon::FPCKPhase_optional __swiftcall FPCKPhase.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 64)
  {
    if (rawValue > 89)
    {
      switch(rawValue)
      {
        case 'Z':
          *v1 = 9;
          return rawValue;
        case '_':
          *v1 = 10;
          return rawValue;
        case 'd':
          *v1 = 11;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 'A':
          *v1 = 6;
          return rawValue;
        case 'K':
          *v1 = 7;
          return rawValue;
        case 'P':
          *v1 = 8;
          return rawValue;
      }
    }

LABEL_28:
    *v1 = 12;
    return rawValue;
  }

  if (rawValue > 24)
  {
    switch(rawValue)
    {
      case 25:
        *v1 = 3;
        return rawValue;
      case 50:
        *v1 = 4;
        return rawValue;
      case 60:
        *v1 = 5;
        return rawValue;
    }

    goto LABEL_28;
  }

  if (rawValue == -1)
  {
    *v1 = 0;
    return rawValue;
  }

  if (!rawValue)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != 10)
  {
    goto LABEL_28;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t FPCKPhase.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x75702D7261656C63;
    v8 = 0xD000000000000015;
    if (v1 != 10)
    {
      v8 = 6581861;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x747365676E696572;
    v10 = 0xD000000000000015;
    if (v1 != 7)
    {
      v10 = 0x747365676E696572;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x726F727265;
    v3 = 0x7373662D6B736964;
    v4 = 0x7261766E692D7472;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7472617473;
    if (v1 != 1)
    {
      v5 = 7565427;
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
}

uint64_t sub_1CF4D5AB0()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD000000000000019;
    v8 = 0x63656863206C6C41;
    if (v1 == 10)
    {
      v8 = 0xD000000000000018;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000026;
    v10 = 0xD000000000000018;
    if (v1 != 7)
    {
      v10 = 0xD000000000000026;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x726F727265;
    v3 = 0xD000000000000015;
    v4 = 0xD00000000000001BLL;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000002ELL;
    if (v1 == 1)
    {
      v5 = 0x7472617473;
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
}

uint64_t sub_1CF4D5C80()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA07D08[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF4D5D08(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA07D08[v2]);
  return sub_1CF9E8228();
}

uint64_t FPCKReportSection.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date;
  v4 = sub_1CF9E5CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FPCKReportSection.build.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);

  return v1;
}

_BYTE *FPCKReportSection.init(phase:date:build:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = *a1;
  sub_1CEFCCBDC(a2, v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    sub_1CF9E5C88();
    if (v15(v10, 1, v11) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  (*(v12 + 32))(&v4[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v14, v11);
  v16 = 0x6E776F6E6B6E75;
  if (a4)
  {
    v16 = v23;
  }

  v17 = 0xE700000000000000;
  if (a4)
  {
    v17 = a4;
  }

  v18 = &v4[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v18 = v16;
  v18[1] = v17;
  v19 = type metadata accessor for FPCKReportSection(0);
  v24.receiver = v4;
  v24.super_class = v19;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  sub_1CEFCCC44(a2, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v20;
}

unint64_t sub_1CF4D639C()
{
  sub_1CF9E7948();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = FPCKPhase.description.getter();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](64, 0xE100000000000000);
  sub_1CF9E5CF8();
  sub_1CF4D6B90(&unk_1EDEAECD0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build), *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8));
  MEMORY[0x1D3868CC0](15913, 0xE200000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1CF4D64E8(_BYTE *a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE400000000000000;
  v10 = 1702125924;
  if (v8 != 1)
  {
    v10 = 0x646C697562;
    v9 = 0xE500000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6573616870;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1702125924;
  if (*a2 != 1)
  {
    v14 = 0x646C697562;
    v13 = 0xE500000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6573616870;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1CF9E8048();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1CF4D65D0()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = 0xE400000000000000;
  if (v1 != 1)
  {
    v2 = 0xE500000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF9E8228();
}

void sub_1CF4D6664(uint64_t a1)
{
  v2 = 0xE400000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_1CF9E69C8();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1CF4D66E4(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  v3 = 0xE400000000000000;
  if (v2 != 1)
  {
    v3 = 0xE500000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  sub_1CF9E69C8();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CF9E8228();
}

unint64_t sub_1CF4D6774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF4E0664(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CF4D67A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (v2 != 1)
  {
    v5 = 0x646C697562;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6573616870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1CF4D67F4()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x646C697562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573616870;
  }
}

unint64_t sub_1CF4D6840@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF4E0664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF4D6868(uint64_t a1)
{
  v2 = sub_1CF4D6AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4D68A4(uint64_t a1)
{
  v2 = sub_1CF4D6AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4D68E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0878, &qword_1CFA06DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4D6AE8();
  sub_1CF9E82A8();
  v10[15] = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase);
  v10[14] = 0;
  sub_1CF4D6B3C();
  sub_1CF9E7F08();
  if (!v2)
  {
    v10[13] = 1;
    sub_1CF9E5CF8();
    sub_1CF4D6B90(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CF9E7F08();
    v10[12] = 2;
    sub_1CF9E7EB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CF4D6AE8()
{
  result = qword_1EC4C0880;
  if (!qword_1EC4C0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0880);
  }

  return result;
}

unint64_t sub_1CF4D6B3C()
{
  result = qword_1EC4C0888;
  if (!qword_1EC4C0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0888);
  }

  return result;
}

uint64_t sub_1CF4D6B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *FPCKReportSection.init(from:)(void *a1)
{
  v3 = sub_1CF9E5CF8();
  v20 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0898, &unk_1CFA06E00);
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4D6AE8();
  sub_1CF9E8298();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FPCKReportSection(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v24 = 0;
    sub_1CF4D6FE4();
    v11 = v21;
    sub_1CF9E7D88();
    v13 = v22;
    v22[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v25;
    v25 = 1;
    sub_1CF4D6B90(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1CF9E7D88();
    v14 = *(v20 + 32);
    v19 = OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date;
    v14(&v13[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v9, v3);
    v25 = 2;
    v15 = sub_1CF9E7D48();
    v16 = &v13[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v16 = v15;
    v16[1] = v17;
    v18 = type metadata accessor for FPCKReportSection(0);
    v23.receiver = v13;
    v23.super_class = v18;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_1CF4D6FE4()
{
  result = qword_1EC4C08A0;
  if (!qword_1EC4C08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C08A0);
  }

  return result;
}

uint64_t sub_1CF4D7040(void *a1)
{
  v2 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v2);
  sub_1CF9E5438();
  swift_allocObject();
  sub_1CF9E5428();
  type metadata accessor for FPCKReportSection(0);
  sub_1CF4D6B90(&qword_1EC4C08B0, type metadata accessor for FPCKReportSection, &protocol conformance descriptor for FPCKReportSection);
  v3 = sub_1CF9E5418();
  v5 = v4;

  v6 = sub_1CF9E5B48();
  v7 = sub_1CF9E6888();
  [a1 encodeObject:v6 forKey:v7];

  return sub_1CEFE4714(v3, v5);
}

uint64_t FPCKReportSection.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v5 = sub_1CF9E7528();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1CF9E5B88();
    v9 = v8;

    sub_1CF9E5408();
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C08B8, type metadata accessor for FPCKReportSection, &protocol conformance descriptor for FPCKReportSection);
    v21 = v7;
    sub_1CF9E53E8();

    v10 = v22;
    ObjectType = swift_getObjectType();
    LOBYTE(v22) = v10[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
    v12 = OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date;
    v13 = sub_1CF9E5CF8();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v4, &v10[v12], v13);
    (*(v14 + 56))(v4, 0, 1, v13);
    v15 = *&v10[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v16 = *&v10[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v17 = *(ObjectType + 104);

    v18 = v17(&v22, v4, v15, v16);

    sub_1CEFE4714(v21, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

id FPCKReportSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CF4D78D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *FPCKReportStatusSection.__allocating_init(phase:date:build:error:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  v14 = objc_allocWithZone(v5);
  v15 = *a1;
  *&v14[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = a5;
  v19 = v15;
  sub_1CEFCCBDC(a2, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v16 = FPCKReportSection.init(phase:date:build:)(&v19, v13, a3, a4);
  sub_1CEFCCC44(a2, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v16;
}

_BYTE *FPCKReportStatusSection.init(phase:date:build:error:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - v12;
  LOBYTE(v12) = *a1;
  *(v5 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error) = a5;
  v17 = v12;
  sub_1CEFCCBDC(a2, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v14 = FPCKReportSection.init(phase:date:build:)(&v17, v13, a3, a4);
  sub_1CEFCCC44(a2, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v14;
}

uint64_t sub_1CF4D7B74(_BYTE *a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x646F43726F727265;
  }

  else
  {
    v9 = 0x6D6F44726F727265;
  }

  if (v8)
  {
    v10 = 0xEB000000006E6961;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (*a2)
  {
    v11 = 0x646F43726F727265;
  }

  else
  {
    v11 = 0x6D6F44726F727265;
  }

  if (*a2)
  {
    v12 = 0xE900000000000065;
  }

  else
  {
    v12 = 0xEB000000006E6961;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_1CF4D7C28()
{
  v1 = *v0;
  sub_1CF9E81D8();
  if (v1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xEB000000006E6961;
  }

  sub_1CF9E69C8();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1CF9E8228();
}

void sub_1CF4D7CB8(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xEB000000006E6961;
  }

  sub_1CF9E69C8();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1CF4D7D34(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  if (v2)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEB000000006E6961;
  }

  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF9E8228();
}

void sub_1CF4D7DC0(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1CF9E7C78();
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v4)
  {
    v12 = 0;
  }

  *a2 = v12;
}

void sub_1CF4D7E20(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F44726F727265;
  if (*v1)
  {
    v2 = 0x646F43726F727265;
  }

  v3 = 0xEB000000006E6961;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CF4D7E6C()
{
  if (*v0)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0x6D6F44726F727265;
  }
}

void sub_1CF4D7EB4(_TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>)
{
  v5 = sub_1CF9E7C78();
  a2, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a3 = v13;
}

uint64_t sub_1CF4D7F18(uint64_t a1)
{
  v2 = sub_1CF4E01E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4D7F54(uint64_t a1)
{
  v2 = sub_1CF4E01E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FPCKReportStatusSection.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08C0, &qword_1CFA06E10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34[-1] - v7;
  v35 = OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error;
  *(v1 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E01E0();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for FPCKReportStatusSection(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    LOBYTE(v34[0]) = 0;
    sub_1CF9E7CB8();
    v11 = v10;
    LOBYTE(v34[0]) = 1;
    v12 = sub_1CF9E7CD8();
    v33 = 0;
    if (v11)
    {
      if (v13)
      {
        v11, v13, v14, v15, v16, v17, v18, v19;
      }

      else
      {
        v21 = v12;
        v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v23 = sub_1CF9E6888();
        v11, v24, v25, v26, v27, v28, v29, v30;
        v31 = [v22 initWithDomain:v23 code:v21 userInfo:0];

        v32 = *(v3 + v35);
        *(v3 + v35) = v31;
      }
    }

    sub_1CF1A91AC(a1, v34);
    v3 = FPCKReportSection.init(from:)(v34);
    (*(v9 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void sub_1CF4D82B8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08D0, &unk_1CFA06E18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E01E0();
  sub_1CF9E82A8();
  v8 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error);
  if (v8)
  {
    v30 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error);
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v28 = v1;
      v10 = v29;
      v11 = [v29 domain];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v12;

      LOBYTE(v30) = 0;
      sub_1CF9E7EB8();
      if (v2)
      {
        (*(v5 + 8))(v7, v4);

        v13, v21, v22, v23, v24, v25, v26, v27;
        return;
      }

      v13, v14, v15, v16, v17, v18, v19, v20;
      [v10 code];
      LOBYTE(v30) = 1;
      sub_1CF9E7EE8();
    }
  }

  sub_1CF4D68E0(a1);
  (*(v5 + 8))(v7, v4);
}

id FPCKReportStatusSection.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1CF9E5CF8();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40[-v13];
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v15 = sub_1CF9E7528();
  if (v15)
  {
    v44 = v3;
    v45 = v2;
    v50 = a1;
    v16 = v15;
    v17 = sub_1CF9E5B88();
    v19 = v18;

    sub_1CF9E5408();
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C08D8, type metadata accessor for FPCKReportStatusSection, &protocol conformance descriptor for FPCKReportSection);
    v48 = v17;
    v49 = v19;
    sub_1CF9E53E8();

    v20 = v52;
    v41 = v52[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
    v21 = v47;
    (*(v47 + 16))(v14, &v52[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v4);
    (*(v21 + 56))(v14, 0, 1, v4);
    v22 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v42 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v43 = v20;
    v44 = v22;
    v23 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error];
    v24 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
    v45 = v23;
    *&v24[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = v23;
    sub_1CEFCCBDC(v14, v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v24[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v41;
    sub_1CEFCCBDC(v11, v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v25 = *(v21 + 48);
    if (v25(v8, 1, v4) == 1)
    {
      v26 = v45;
      v27 = v45;
      v28 = v26;

      v29 = v46;
      sub_1CF9E5C88();
      v30 = v25(v8, 1, v4);
      v31 = v29;
      v32 = v44;
      if (v30 != 1)
      {
        sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v31 = v46;
      (*(v21 + 32))(v46, v8, v4);
      v34 = v45;
      v35 = v45;
      v36 = v34;
    }

    (*(v21 + 32))(&v24[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v31, v4);
    v37 = &v24[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v37 = v42;
    v37[1] = v32;
    v38 = type metadata accessor for FPCKReportSection(0);
    v51.receiver = v24;
    v51.super_class = v38;
    v39 = objc_msgSendSuper2(&v51, sel_init);
    sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFE4714(v48, v49);

    sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v39;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1CF4D8CB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  strcpy((inited + 32), "lastUpdateTime");
  *(inited + 47) = -18;
  sub_1CF9E5C98();
  v2 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v3;
  *(inited + 72) = v2;
  *(inited + 80) = 0x616470557473616CLL;
  *(inited + 88) = 0xEF646C6975426574;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 96) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  *(inited + 104) = v4;
  *(inited + 120) = v5;
  *(inited + 128) = 0x737574617473;
  *(inited + 136) = 0xE600000000000000;
  v6 = qword_1CFA07D08[*(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase)];
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = v6;

  v7 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  return v7;
}

id sub_1CF4D8E6C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *FPCKReportStartSection.__allocating_init(date:build:runReason:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = objc_allocWithZone(v5);
  v15 = 0x6E776F6E6B6E75;
  if (a5)
  {
    v15 = a4;
  }

  v16 = 0xE700000000000000;
  if (a5)
  {
    v16 = a5;
  }

  v17 = &v14[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
  *v17 = v15;
  v17[1] = v16;
  v21 = 1;
  sub_1CEFCCBDC(a1, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v18 = FPCKReportSection.init(phase:date:build:)(&v21, v13, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v18;
}

_BYTE *FPCKReportStartSection.init(date:build:runReason:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = 0x6E776F6E6B6E75;
  if (a5)
  {
    v14 = a4;
  }

  v15 = 0xE700000000000000;
  if (a5)
  {
    v15 = a5;
  }

  v16 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
  *v16 = v14;
  v16[1] = v15;
  v20 = 1;
  sub_1CEFCCBDC(a1, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v17 = FPCKReportSection.init(phase:date:build:)(&v20, v13, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v17;
}

void sub_1CF4D91A4(_TtC18FileProviderDaemon8FSTester *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = sub_1CF9E7C78();
  a2, v6, v7, v8, v9, v10, v11, v12;
  *a3 = v5 != 0;
}

uint64_t sub_1CF4D91FC(uint64_t a1)
{
  v2 = sub_1CF4E0254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4D9238(uint64_t a1)
{
  v2 = sub_1CF4E0254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FPCKReportStartSection.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08E0, &qword_1CFA06E28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E0254();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FPCKReportStartSection(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_1CF9E7D48();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    v13 = (v3 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
    *v13 = v10;
    v13[1] = v12;
    sub_1CF1A91AC(a1, v15);
    v3 = FPCKReportSection.init(from:)(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1CF4D94C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08F0, &qword_1CFA06E30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E0254();
  sub_1CF9E82A8();
  sub_1CF9E7EB8();
  if (!v1)
  {
    sub_1CF4D68E0(a1);
  }

  return (*(v4 + 8))(v6, v3);
}

id FPCKReportStartSection.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1CF9E5CF8();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v15 = sub_1CF9E7528();
  if (v15)
  {
    v35 = v3;
    v36 = v2;
    v41 = a1;
    v16 = v15;
    v17 = sub_1CF9E5B88();
    v19 = v18;

    sub_1CF9E5408();
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C08F8, type metadata accessor for FPCKReportStartSection, &protocol conformance descriptor for FPCKReportSection);
    v39 = v17;
    v40 = v19;
    sub_1CF9E53E8();

    v20 = v43;
    v21 = v38;
    (*(v38 + 16))(v14, &v43[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v4);
    (*(v21 + 56))(v14, 0, 1, v4);
    v22 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v34 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v35 = v20;
    v36 = v22;
    v23 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    v24 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason + 8];
    v25 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
    v26 = &v25[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    *v26 = v23;
    v26[1] = v24;
    sub_1CEFCCBDC(v14, v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v25[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    sub_1CEFCCBDC(v11, v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v27 = *(v21 + 48);
    if (v27(v8, 1, v4) == 1)
    {

      v28 = v37;
      sub_1CF9E5C88();
      if (v27(v8, 1, v4) != 1)
      {
        sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v28 = v37;
      (*(v21 + 32))(v37, v8, v4);
    }

    (*(v21 + 32))(&v25[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v28, v4);
    v30 = &v25[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v31 = v36;
    *v30 = v34;
    v30[1] = v31;
    v32 = type metadata accessor for FPCKReportSection(0);
    v42.receiver = v25;
    v42.super_class = v32;
    v33 = objc_msgSendSuper2(&v42, sel_init);
    sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

    sub_1CEFE4714(v39, v40);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v33;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1CF4D9D80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 40) = 0xE900000000000065;
  sub_1CF9E5C98();
  v2 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v3;
  *(inited + 72) = v2;
  *(inited + 80) = 0x6975427472617473;
  *(inited + 88) = 0xEA0000000000646CLL;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 96) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  *(inited + 104) = v4;
  *(inited + 120) = v5;
  strcpy((inited + 128), "FPCKRunReason");
  *(inited + 142) = -4864;
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason + 8);
  *(inited + 168) = v5;
  *(inited + 144) = v6;
  *(inited + 152) = v7;

  v8 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  return v8;
}

void sub_1CF4D9FD8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1CF4DA098(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;

  v8, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t sub_1CF4DA10C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void sub_1CF4DA16C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  v7, v8, v9, v10, v11, v12, v13, v14;
}

uint64_t sub_1CF4DA234(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void sub_1CF4DA27C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

_BYTE *FPCKReportSPSSection.__allocating_init(date:build:superPendingSetErrors:superPendingSetSize:pendingSetErrors:pendingSetSize:detailedPayload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  HIDWORD(v29) = a7;
  v35 = a2;
  v36 = a3;
  v34 = a12;
  v33 = a11;
  v31 = a8;
  v32 = a10;
  v30 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - v19;
  v21 = objc_allocWithZone(v13);
  v22 = &v21[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v21[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v21[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v21[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
  *v25 = 0;
  v25[8] = 1;
  swift_beginAccess();
  *v22 = a4;
  *(v22 + 1) = a5;
  swift_beginAccess();
  *v23 = a6;
  v23[8] = BYTE4(v29) & 1;
  swift_beginAccess();
  v26 = v30;
  *v24 = v31;
  v24[1] = v26;
  swift_beginAccess();
  *v25 = v32;
  v25[8] = v33 & 1;
  *&v21[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v34;
  v37 = 2;
  sub_1CEFCCBDC(a1, v20, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v27 = FPCKReportSection.init(phase:date:build:)(&v37, v20, v35, v36);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v27;
}

_BYTE *FPCKReportSPSSection.init(date:build:superPendingSetErrors:superPendingSetSize:pendingSetErrors:pendingSetSize:detailedPayload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  HIDWORD(v27) = a7;
  v33 = a2;
  v34 = a3;
  v32 = a12;
  v31 = a11;
  v29 = a8;
  v30 = a10;
  v28 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v27 - v18;
  v20 = (v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
  *v20 = 0;
  v20[1] = 0;
  v21 = v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
  *v22 = 0;
  v22[1] = 0;
  v23 = v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
  *v23 = 0;
  *(v23 + 8) = 1;
  swift_beginAccess();
  *v20 = a4;
  v20[1] = a5;
  swift_beginAccess();
  *v21 = a6;
  *(v21 + 8) = BYTE4(v27) & 1;
  swift_beginAccess();
  v24 = v28;
  *v22 = v29;
  v22[1] = v24;
  swift_beginAccess();
  *v23 = v30;
  *(v23 + 8) = v31 & 1;
  *(v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload) = v32;
  v35 = 2;
  sub_1CEFCCBDC(a1, v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v25 = FPCKReportSection.init(phase:date:build:)(&v35, v19, v33, v34);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v25;
}

uint64_t sub_1CF4DA7BC()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = 0xEF64616F6C796150;
  v3 = 0x80000001CFA2C470;
  if (v1 != 3)
  {
    v3 = 0xEE00657A69537465;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0x80000001CFA2C430;
  if (v1)
  {
    v4 = 0x80000001CFA2C450;
  }

  if (v1 <= 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  sub_1CF9E69C8();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1CF9E8228();
}

void sub_1CF4DA8C8(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xEF64616F6C796150;
  v4 = 0x80000001CFA2C470;
  if (v2 != 3)
  {
    v4 = 0xEE00657A69537465;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v5 = 0x80000001CFA2C430;
  if (*v1)
  {
    v5 = 0x80000001CFA2C450;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  sub_1CF9E69C8();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1CF4DA9C0(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  v3 = 0xEF64616F6C796150;
  v4 = 0x80000001CFA2C470;
  if (v2 != 3)
  {
    v4 = 0xEE00657A69537465;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v5 = 0x80000001CFA2C430;
  if (v2)
  {
    v5 = 0x80000001CFA2C450;
  }

  if (v2 <= 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  sub_1CF9E69C8();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1CF9E8228();
}

unint64_t sub_1CF4DAAC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF4E06B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CF4DAAF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64616F6C796150;
  v4 = 0x64656C6961746564;
  v5 = 0x80000001CFA2C470;
  v6 = 0xD000000000000013;
  if (v2 != 3)
  {
    v6 = 0x53676E69646E6570;
    v5 = 0xEE00657A69537465;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001CFA2C430;
  v8 = 0xD000000000000015;
  if (*v1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001CFA2C450;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1CF4DABC0()
{
  v1 = *v0;
  v2 = 0x64656C6961746564;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0x53676E69646E6570;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CF4DAC84@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF4E06B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF4DACAC(uint64_t a1)
{
  v2 = sub_1CF4E02C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4DACE8(uint64_t a1)
{
  v2 = sub_1CF4E02C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF4DAD24(void *a1)
{
  v3 = v1;
  v61 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0900, &qword_1CFA06E38);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  sub_1CF4D68E0(a1);
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CF4E02C8();
    sub_1CF9E82A8();
    v10 = v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors;
    swift_beginAccess();
    v11 = *(v10 + 8);
    v60 = 0;

    sub_1CF9E7E38();
    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors;
    swift_beginAccess();
    v20 = *(v19 + 8);
    v59 = 1;

    sub_1CF9E7E38();
    v20, v21, v22, v23, v24, v25, v26, v27;
    swift_beginAccess();
    v58 = 3;
    sub_1CF9E7E58();
    swift_beginAccess();
    v57 = 4;
    sub_1CF9E7E58();
    v28 = objc_opt_self();
    v29 = OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload;
    swift_beginAccess();
    v30 = *(v3 + v29);
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

    v31 = sub_1CF9E6618();
    v30, v32, v33, v34, v35, v36, v37, v38;
    v56 = 0;
    v39 = [v28 dataWithJSONObject:v31 options:0 error:&v56];

    v40 = v56;
    if (v39)
    {
      v41 = sub_1CF9E5B88();
      v43 = v42;

      sub_1CF9E6918();
      sub_1CF9E68D8();
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0xE200000000000000;
      }

      LOBYTE(v56) = 2;
      sub_1CF9E7EB8();
      (*(v7 + 8))(v9, v6);
      sub_1CEFE4714(v41, v43);
      v45, v46, v47, v48, v49, v50, v51, v52;
    }

    else
    {
      v53 = v40;
      v54 = sub_1CF9E57F8();

      swift_willThrow();
      LOBYTE(v56) = 2;
      sub_1CF9E7EB8();
      (*(v7 + 8))(v9, v6);
    }
  }
}

void *FPCKReportSPSSection.init(from:)(void *a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v95 = sub_1CF9E6938();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v4 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0918, &unk_1CFA06E40);
  v96 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v92 - v6);
  v8 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
  *v8 = 0;
  v8[1] = 0;
  v98 = v8;
  v9 = v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
  *v10 = 0;
  v10[1] = 0;
  v99 = v10;
  v100 = v1;
  v101 = a1;
  v11 = v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
  *v11 = 0;
  *(v11 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E02C8();
  v12 = v97;
  sub_1CF9E8298();
  if (!v12)
  {
    v97 = v4;
    LOBYTE(v103[0]) = 0;
    v30 = sub_1CF9E7CB8();
    v32 = v31;
    v93 = v5;
    v33 = v98;
    swift_beginAccess();
    v34 = v33[1];
    *v33 = v30;
    v33[1] = v32;
    v34, v35, v36, v37, v38, v39, v40, v41;
    LOBYTE(v103[0]) = 1;
    v42 = sub_1CF9E7CB8();
    v43 = v99;
    v44 = v42;
    v46 = v45;
    swift_beginAccess();
    v47 = v43[1];
    *v43 = v44;
    v43[1] = v46;
    v47, v48, v49, v50, v51, v52, v53, v54;
    LOBYTE(v103[0]) = 3;
    v55 = sub_1CF9E7CD8();
    LOBYTE(v46) = v56;
    swift_beginAccess();
    *v9 = v55;
    *(v9 + 8) = v46 & 1;
    LOBYTE(v103[0]) = 4;
    v57 = sub_1CF9E7CD8();
    LOBYTE(v46) = v58;
    swift_beginAccess();
    *v11 = v57;
    *(v11 + 8) = v46 & 1;
    LOBYTE(v103[0]) = 2;
    sub_1CF9E7D48();
    v60 = v59;
    v61 = v7;
    v62 = v97;
    sub_1CF9E6918();
    v63 = sub_1CF9E68C8();
    v65 = v64;
    v60, v64, v66, v67, v68, v69, v70, v71;
    (*(v94 + 8))(v62, v95);
    if (v65 >> 60 != 15)
    {
      v72 = objc_opt_self();
      v73 = sub_1CF9E5B48();
      v103[0] = 0;
      v74 = [v72 JSONObjectWithData:v73 options:0 error:v103];

      if (v74)
      {
        v75 = v103[0];
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
        if (swift_dynamicCast())
        {
          v76 = v102;
          sub_1CF4DB8C0(v102);
          v78 = v77;
          sub_1CEFE48D8(v63, v65);
          v76, v79, v80, v81, v82, v83, v84, v85;
          v86 = v78;
          v87 = v96;
          v88 = v61;
LABEL_12:
          v91 = v101;
          *(v100 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload) = v86;
          sub_1CF1A91AC(v91, v103);
          v7 = FPCKReportSection.init(from:)(v103);
          (*(v87 + 8))(v88, v93);
          __swift_destroy_boxed_opaque_existential_1(v91);
          return v7;
        }

        sub_1CEFE48D8(v63, v65);
      }

      else
      {
        v89 = v103[0];
        v90 = sub_1CF9E57F8();

        swift_willThrow();
        sub_1CEFE48D8(v63, v65);
      }
    }

    v87 = v96;
    v88 = v61;
    v86 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
    goto LABEL_12;
  }

  v13 = v98;
  v14 = v99;
  __swift_destroy_boxed_opaque_existential_1(v101);
  v13[1], v15, v16, v17, v18, v19, v20, v21;
  v14[1], v22, v23, v24, v25, v26, v27, v28;
  type metadata accessor for FPCKReportSPSSection(0);
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_1CF4DB8C0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1CEFD1104(*(a1 + 56) + 32 * v11, v37);
    *&v36 = v14;
    *(&v36 + 1) = v13;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_1CEFD1104(&v34, v30);
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

    if (swift_dynamicCast())
    {
      v15 = v31;
      if (!v31)
      {
        goto LABEL_17;
      }

      v32[0] = v34;
      v32[1] = v35;
      v31 = v33;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        sub_1CF7C3E7C(v16 + 1, 1);
      }

      v2 = v38;
      v17 = v31;
      sub_1CF9E81D8();
      v39 = *(&v17 + 1);
      sub_1CF9E69C8();
      v18 = sub_1CF9E8228();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v2 + 48) + 16 * v23);
      v29 = v39;
      *v28 = v17;
      v28[1] = v29;
      *(*(v2 + 56) + 8 * v23) = v15;
      ++*(v2 + 16);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      *&v31 = 0;
LABEL_17:
      sub_1CEFCCC44(&v33, &unk_1EC4C0D00, &unk_1CFA12A80);
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
LABEL_29:
  __break(1u);
}

id FPCKReportSPSSection.init(coder:)(void *a1)
{
  swift_getObjectType();
  v62 = sub_1CF9E6118();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v45[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45[-v12];
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v14 = sub_1CF9E7528();
  if (v14)
  {
    v56 = v5;
    v60 = v13;
    v15 = v14;
    v16 = sub_1CF9E5B88();
    v18 = v17;

    sub_1CF9E5408();
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C0928, type metadata accessor for FPCKReportSPSSection, &protocol conformance descriptor for FPCKReportSection);
    v58 = v16;
    v59 = v18;
    sub_1CF9E53E8();
    v55 = a1;

    v19 = v64;
    v52 = v3;
    v20 = v60;
    (*(v3 + 16))(v60, &v64[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v2);
    (*(v3 + 56))(v20, 0, 1, v2);
    v21 = *&v19[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v54 = *&v19[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v62 = v21;
    v22 = &v19[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
    swift_beginAccess();
    v23 = *(v22 + 1);
    v53 = *v22;
    v61 = v23;
    v24 = &v19[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
    swift_beginAccess();
    v51 = *v24;
    v49 = v24[8];
    v25 = &v19[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
    swift_beginAccess();
    v26 = *(v25 + 1);
    v48 = *v25;
    v27 = &v19[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
    swift_beginAccess();
    v47 = *v27;
    v46 = v27[8];
    v28 = OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload;
    swift_beginAccess();
    v50 = v19;
    v29 = *&v19[v28];
    v30 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
    v31 = &v30[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
    *v31 = 0;
    v31[1] = 0;
    v32 = &v30[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
    *v32 = 0;
    v32[8] = 1;
    v33 = &v30[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
    *v33 = 0;
    v33[1] = 0;
    v34 = &v30[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
    *v34 = 0;
    v34[8] = 1;
    swift_beginAccess();
    v35 = v61;
    *v31 = v53;
    v31[1] = v35;
    swift_beginAccess();
    *v32 = v51;
    v32[8] = v49;
    swift_beginAccess();
    *v33 = v48;
    v33[1] = v26;
    v53 = v26;
    v36 = v52;
    swift_beginAccess();
    *v34 = v47;
    v34[8] = v46;
    v51 = v29;
    *&v30[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v29;
    v37 = v57;
    sub_1CEFCCBDC(v60, v57, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v30[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 2;
    sub_1CEFCCBDC(v37, v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v38 = *(v36 + 48);
    if (v38(v8, 1, v2) == 1)
    {

      v39 = v56;
      sub_1CF9E5C88();
      if (v38(v8, 1, v2) != 1)
      {
        sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v39 = v56;
      (*(v36 + 32))(v56, v8, v2);
    }

    (*(v36 + 32))(&v30[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v39, v2);
    v41 = &v30[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v42 = v62;
    *v41 = v54;
    v41[1] = v42;
    v43 = type metadata accessor for FPCKReportSection(0);
    v63.receiver = v30;
    v63.super_class = v43;
    v44 = objc_msgSendSuper2(&v63, sel_init);
    sub_1CEFCCC44(v37, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFE4714(v58, v59);

    sub_1CEFCCC44(v60, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v44;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1CF4DC590()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = 0x656D6954737073;
  *(inited + 40) = 0xE700000000000000;
  sub_1CF9E5C98();
  v3 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0x646C697542737073;
  *(inited + 88) = 0xE800000000000000;
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  v7 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v6;
  *(inited + 104) = v5;

  v8 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v9 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
  swift_beginAccess();
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v47 = v7;
    *&v46 = v11;
    *(&v46 + 1) = v10;
    sub_1CEFE9EB8(&v46, v45);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v8;
    sub_1CF1D154C(v45, 0xD000000000000015, 0x80000001CFA2C430, isUniquelyReferenced_nonNull_native);
    v8 = v50[0];
  }

  v13 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
  swift_beginAccess();
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v47 = v7;
    *&v46 = v15;
    *(&v46 + 1) = v14;
    sub_1CEFE9EB8(&v46, v45);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = v8;
    sub_1CF1D154C(v45, 0xD000000000000010, 0x80000001CFA2C450, v16);
    v8 = v49[0];
  }

  v17 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize);
  swift_beginAccess();
  v18 = MEMORY[0x1E69E6530];
  if ((v17[1] & 1) == 0)
  {
    v19 = *v17;
    v47 = MEMORY[0x1E69E6530];
    *&v46 = v19;
    sub_1CEFE9EB8(&v46, v45);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v8;
    sub_1CF1D154C(v45, 0xD000000000000013, 0x80000001CFA2C470, v20);
    v8 = v48[0];
  }

  v21 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize);
  swift_beginAccess();
  if ((v21[1] & 1) == 0)
  {
    v22 = *v21;
    v47 = v18;
    *&v46 = v22;
    sub_1CEFE9EB8(&v46, v45);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1CF1D154C(v45, 0x53676E69646E6570, 0xEE00657A69537465, v23);
  }

  v24 = OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload;
  swift_beginAccess();
  v25 = *(v1 + v24);

  sub_1CF7BAF4C(v26);
  v28 = v27;
  v25, v29, v30, v31, v32, v33, v34, v35;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *&v45[0] = v8;
  sub_1CF4E4D04(v28, sub_1CF4E033C, 0, v36, v45);
  v28, v37, v38, v39, v40, v41, v42, v43;
  return *&v45[0];
}

void sub_1CF4DC95C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors + 8), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors + 8), v9, v10, v11, v12, v13, v14, v15;
  v23 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload);

  v23, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1CF4DCA34(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;

  v8, v9, v10, v11, v12, v13, v14, v15;
}

double sub_1CF4DCAA4(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

void sub_1CF4DCAF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v5, v6, v7, v8, v9, v10, v11, v12;
}

_BYTE *FPCKReportConsistencySection.__allocating_init(date:build:payload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = objc_allocWithZone(v4);
  *&v12[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = a4;
  v16 = 11;
  sub_1CEFCCBDC(a1, v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v13 = FPCKReportSection.init(phase:date:build:)(&v16, v11, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v13;
}

_BYTE *FPCKReportConsistencySection.init(date:build:payload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14[-v10];
  *(v4 + OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload) = a4;
  v15 = 11;
  sub_1CEFCCBDC(a1, &v14[-v10], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v12 = FPCKReportSection.init(phase:date:build:)(&v15, v11, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v12;
}

uint64_t sub_1CF4DCDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF4DCE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

void sub_1CF4DCE8C(void *a1@<X0>, BOOL *a3@<X8>)
{
  v4 = a1[1];
  v5 = sub_1CF9E7C78();
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a3 = v5 != 0;
}

void sub_1CF4DCF10(_TtC18FileProviderDaemon8FSTester *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = sub_1CF9E7C78();
  a2, v6, v7, v8, v9, v10, v11, v12;
  *a3 = v5 != 0;
}

uint64_t sub_1CF4DCF68(uint64_t a1)
{
  v2 = sub_1CF4E31C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4DCFA4(uint64_t a1)
{
  v2 = sub_1CF4E31C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF4DCFE0(void *a1)
{
  v3 = v1;
  v38[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0930, &qword_1CFA06E50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38[-1] - v8;
  sub_1CF4D68E0(a1);
  if (!v2)
  {
    v37 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CF4E31C4();
    sub_1CF9E82A8();
    v10 = objc_opt_self();
    v11 = OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload;
    swift_beginAccess();
    v12 = *(v3 + v11);
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

    v13 = sub_1CF9E6618();
    v12, v14, v15, v16, v17, v18, v19, v20;
    v38[0] = 0;
    v21 = [v10 dataWithJSONObject:v13 options:0 error:v38];

    v22 = v38[0];
    if (v21)
    {
      v23 = sub_1CF9E5B88();
      v25 = v24;

      sub_1CF9E6918();
      sub_1CF9E68D8();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0xE200000000000000;
      }

      sub_1CF9E7EB8();
      (*(v37 + 8))(v9, v6);
      sub_1CEFE4714(v23, v25);
      v27, v28, v29, v30, v31, v32, v33, v34;
    }

    else
    {
      v35 = v22;
      v36 = sub_1CF9E57F8();

      swift_willThrow();
      sub_1CF9E7EB8();
      (*(v37 + 8))(v9, v6);
    }
  }
}

uint64_t FPCKReportConsistencySection.init(from:)(void *a1)
{
  v51[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E6938();
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0940, &qword_1CFA06E58);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  v10 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1CF4E31C4();
  sub_1CF9E8298();
  if (!v1)
  {
    v11 = v47;
    v46 = v7;
    sub_1CF9E7D48();
    v14 = v12;
    sub_1CF9E6918();
    v15 = sub_1CF9E68C8();
    v17 = v16;
    v14, v16, v18, v19, v20, v21, v22, v23;
    (*(v11 + 8))(v5, v3);
    if (v17 >> 60 == 15)
    {
      v24 = v9;
    }

    else
    {
      v25 = objc_opt_self();
      v26 = sub_1CF9E5B48();
      v51[0] = 0;
      v27 = [v25 JSONObjectWithData:v26 options:0 error:v51];

      if (v27)
      {
        v28 = v51[0];
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
        v24 = v9;
        if (swift_dynamicCast())
        {
          v29 = v50;
          sub_1CF4DB8C0(v50);
          v31 = v30;
          sub_1CEFE48D8(v15, v17);
          v29, v32, v33, v34, v35, v36, v37, v38;
          v39 = v31;
          v40 = v6;
LABEL_13:
          v43 = v46;
          v44 = v48;
          *(v49 + OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload) = v39;
          sub_1CF1A91AC(v44, v51);
          v6 = FPCKReportSection.init(from:)(v51);
          (*(v43 + 8))(v24, v40);
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v6;
        }

        sub_1CEFE48D8(v15, v17);
      }

      else
      {
        v24 = v9;
        v41 = v51[0];
        v42 = sub_1CF9E57F8();

        swift_willThrow();
        sub_1CEFE48D8(v15, v17);
      }
    }

    v40 = v6;
    v39 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  type metadata accessor for FPCKReportConsistencySection(0);
  swift_deallocPartialClassInstance();
  return v6;
}

id FPCKReportConsistencySection.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1CF9E5CF8();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v15 = sub_1CF9E7528();
  if (v15)
  {
    v34 = v3;
    v35 = v2;
    v40 = a1;
    v16 = v15;
    v17 = sub_1CF9E5B88();
    v19 = v18;

    sub_1CF9E5408();
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C0948, type metadata accessor for FPCKReportConsistencySection, &protocol conformance descriptor for FPCKReportSection);
    v38 = v17;
    v39 = v19;
    sub_1CF9E53E8();

    v20 = v42;
    v21 = v37;
    (*(v37 + 16))(v14, &v42[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v4);
    (*(v21 + 56))(v14, 0, 1, v4);
    v22 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v33 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v35 = v22;
    v23 = OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload;
    swift_beginAccess();
    v34 = v20;
    v24 = *&v20[v23];
    v25 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
    *&v25[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = v24;
    sub_1CEFCCBDC(v14, v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v25[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 11;
    sub_1CEFCCBDC(v11, v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v26 = *(v21 + 48);
    if (v26(v8, 1, v4) == 1)
    {

      v27 = v36;
      sub_1CF9E5C88();
      if (v26(v8, 1, v4) != 1)
      {
        sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v27 = v36;
      (*(v21 + 32))(v36, v8, v4);
    }

    (*(v21 + 32))(&v25[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v27, v4);
    v29 = &v25[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v30 = v35;
    *v29 = v33;
    v29[1] = v30;
    v31 = type metadata accessor for FPCKReportSection(0);
    v41.receiver = v25;
    v41.super_class = v31;
    v32 = objc_msgSendSuper2(&v41, sel_init);
    sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFE4714(v38, v39);

    sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v32;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1CF4DDF0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = 0x65747369736E6F63;
  *(inited + 40) = 0xEF656D695479636ELL;
  sub_1CF9E5C98();
  v3 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001CFA4FE90;
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v6;
  *(inited + 104) = v5;

  v7 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v8 = OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload;
  swift_beginAccess();
  v9 = *(v1 + v8);

  sub_1CF7BAF4C(v10);
  v12 = v11;
  v9, v13, v14, v15, v16, v17, v18, v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v7;
  sub_1CF4E4D04(v12, sub_1CF4E033C, 0, isUniquelyReferenced_nonNull_native, &v29);
  v12, v21, v22, v23, v24, v25, v26, v27;
  return v29;
}

id sub_1CF4DE114()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1CF4DE168(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1CF4DE220(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_1CF4DE27C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1CF4DE2D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1CF4DE388()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1CF4DE3D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1CF4DE48C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1CF4DE4D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1CF4DE59C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = 0xE500000000000000;
  v3 = 0xEF746553676E6964;
  if (v1 != 2)
  {
    v3 = 0xEB0000000079636ELL;
  }

  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1CF9E69C8();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CF9E8228();
}

void sub_1CF4DE66C(uint64_t a1)
{
  v2 = 0xE500000000000000;
  v3 = 0xEF746553676E6964;
  if (*v1 != 2)
  {
    v3 = 0xEB0000000079636ELL;
  }

  if (*v1)
  {
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1CF9E69C8();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1CF4DE728(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  v3 = 0xE500000000000000;
  v4 = 0xEF746553676E6964;
  if (v2 != 2)
  {
    v4 = 0xEB0000000079636ELL;
  }

  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1CF9E69C8();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1CF9E8228();
}

unint64_t sub_1CF4DE7F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF4E0618(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CF4DE824(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472617473;
  v4 = 0xEF746553676E6964;
  v5 = 0x6E65507265707573;
  if (*v1 != 2)
  {
    v5 = 0x65747369736E6F63;
    v4 = 0xEB0000000079636ELL;
  }

  if (*v1)
  {
    v3 = 0x74736574616CLL;
    v2 = 0xE600000000000000;
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

uint64_t sub_1CF4DE8B0()
{
  v1 = 0x7472617473;
  v2 = 0x6E65507265707573;
  if (*v0 != 2)
  {
    v2 = 0x65747369736E6F63;
  }

  if (*v0)
  {
    v1 = 0x74736574616CLL;
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

unint64_t sub_1CF4DE938@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF4E0618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF4DE960(uint64_t a1)
{
  v2 = sub_1CF4E890C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4DE99C(uint64_t a1)
{
  v2 = sub_1CF4E890C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4DE9F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0970, &qword_1CFA06E60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E890C();
  sub_1CF9E82A8();
  v9 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v18 = *(v3 + v9);
  LOBYTE(v17) = 0;
  type metadata accessor for FPCKReportStartSection(0);
  sub_1CF4D6B90(&qword_1EC4C0980, type metadata accessor for FPCKReportStartSection, &protocol conformance descriptor for FPCKReportSection);
  sub_1CF9E7F08();
  if (!v2)
  {
    v10 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
    swift_beginAccess();
    v17 = *(v3 + v10);
    LOBYTE(v16) = 1;
    type metadata accessor for FPCKReportStatusSection(0);
    sub_1CF4D6B90(&qword_1EC4C0988, type metadata accessor for FPCKReportStatusSection, &protocol conformance descriptor for FPCKReportSection);
    sub_1CF9E7F08();
    v11 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
    swift_beginAccess();
    v16 = *(v3 + v11);
    LOBYTE(v15) = 2;
    type metadata accessor for FPCKReportSPSSection(0);
    sub_1CF4D6B90(&qword_1EC4C0990, type metadata accessor for FPCKReportSPSSection, &protocol conformance descriptor for FPCKReportSection);
    sub_1CF9E7E68();
    v12 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
    swift_beginAccess();
    v15 = *(v3 + v12);
    v14[7] = 3;
    type metadata accessor for FPCKReportConsistencySection(0);
    sub_1CF4D6B90(&qword_1EC4C0998, type metadata accessor for FPCKReportConsistencySection, &protocol conformance descriptor for FPCKReportSection);
    sub_1CF9E7E68();
  }

  return (*(v6 + 8))(v8, v5);
}

id FPCKReport.__allocating_init(start:latest:superPendingSet:consistency:)(void *a1, void *a2, void *a3, void *a4)
{
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - v26;
  v28 = objc_allocWithZone(v4);
  v29 = a1;
  v67 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v28[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v68 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v28[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;
  v72 = v4;
  if (a1)
  {
    v30 = v7;
    v31 = v29;
  }

  else
  {
    v64 = 0;
    v62 = v9;
    (*(v7 + 56))(v27, 1, 1, v6);
    v32 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
    v33 = &v32[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    *v33 = 0x6E776F6E6B6E75;
    v33[1] = 0xE700000000000000;
    sub_1CEFCCBDC(v27, v24, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v32[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    sub_1CEFCCBDC(v24, v21, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v34 = *(v7 + 48);
    if (v34(v21, 1, v6) == 1)
    {
      sub_1CF9E5C88();
      if (v34(v21, 1, v6) != 1)
      {
        sub_1CEFCCC44(v21, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      (*(v7 + 32))(v12, v21, v6);
    }

    v30 = v7;
    (*(v7 + 32))(&v32[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v12, v6);
    v35 = &v32[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v35 = 0x6E776F6E6B6E75;
    v35[1] = 0xE700000000000000;
    v36 = type metadata accessor for FPCKReportSection(0);
    v75.receiver = v32;
    v75.super_class = v36;
    v31 = objc_msgSendSuper2(&v75, sel_init);
    sub_1CEFCCC44(v24, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v27, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v9 = v62;
    v29 = v64;
  }

  *&v28[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = v31;
  v37 = v69;
  if (v69)
  {
    v38 = v29;
    v39 = v37;
    v40 = &selRef_defaultNSDomainForDescriptor_;
  }

  else
  {
    v64 = v29;
    v41 = v65;
    (*(v30 + 56))(v65, 1, 1, v6);
    v42 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
    *&v42[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
    v43 = v41;
    v44 = v66;
    sub_1CEFCCBDC(v43, v66, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v42[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    v45 = v44;
    v46 = v63;
    sub_1CEFCCBDC(v45, v63, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v47 = *(v30 + 48);
    if (v47(v46, 1, v6) == 1)
    {
      v38 = v64;
      v62 = v9;
      sub_1CF9E5C88();
      if (v47(v46, 1, v6) != 1)
      {
        sub_1CEFCCC44(v46, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }

      v40 = &selRef_defaultNSDomainForDescriptor_;
      v48 = v62;
    }

    else
    {
      (*(v30 + 32))(v9, v46, v6);
      v38 = v64;
      v48 = v9;
      v40 = &selRef_defaultNSDomainForDescriptor_;
    }

    (*(v30 + 32))(&v42[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v48, v6);
    v49 = &v42[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v49 = 0x6E776F6E6B6E75;
    v49[1] = 0xE700000000000000;
    v50 = type metadata accessor for FPCKReportSection(0);
    v74.receiver = v42;
    v74.super_class = v50;
    v39 = objc_msgSendSuper2(&v74, v40[418]);
    sub_1CEFCCC44(v66, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v65, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  *&v28[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = v39;
  v51 = v67;
  swift_beginAccess();
  v52 = *&v28[v51];
  v53 = v70;
  *&v28[v51] = v70;
  v54 = v37;
  v55 = v53;

  v56 = v68;
  swift_beginAccess();
  v57 = *&v28[v56];
  v58 = v71;
  *&v28[v56] = v71;
  v59 = v58;

  v73.receiver = v28;
  v73.super_class = v72;
  v60 = objc_msgSendSuper2(&v73, v40[418]);

  return v60;
}

id FPCKReport.init(start:latest:superPendingSet:consistency:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_1CF4E8960(a1, a2, a3, a4);

  return v8;
}

void sub_1CF4DF514(_BYTE *a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
  (*(v3 + 16))(&v35 - v13, &a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v2, v12);
  (*(v3 + 56))(v14, 0, 1, v2);
  v38 = a1;
  v16 = &a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  v17 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
  v36 = *v16;
  v18 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
  *&v18[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
  sub_1CEFCCBDC(v14, v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v18[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v15;
  sub_1CEFCCBDC(v10, v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v19 = *(v3 + 48);
  if (v19(v7, 1, v2) == 1)
  {

    v20 = v35;
    sub_1CF9E5C88();
    if (v19(v7, 1, v2) != 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v20 = v35;
    (*(v3 + 32))(v35, v7, v2);
  }

  (*(v3 + 32))(&v18[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v20, v2);
  v21 = &v18[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v21 = v36;
  v21[1] = v17;
  v22 = type metadata accessor for FPCKReportSection(0);
  v39.receiver = v18;
  v39.super_class = v22;
  v23 = objc_msgSendSuper2(&v39, sel_init);
  sub_1CEFCCC44(v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v24 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  v25 = v37;
  swift_beginAccess();
  v26 = *(v25 + v24);
  *(v25 + v24) = v23;

  type metadata accessor for FPCKReportStartSection(0);
  v27 = v38;
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v30 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  }

  else
  {
    type metadata accessor for FPCKReportSPSSection(0);
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v29 = v31;
      v30 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
    }

    else
    {
      type metadata accessor for FPCKReportConsistencySection(0);
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        return;
      }

      v29 = v32;
      v30 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
    }
  }

  swift_beginAccess();
  v33 = *(v25 + v30);
  *(v25 + v30) = v29;
  v34 = v27;
}

id sub_1CF4DF990(unsigned __int8 *a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;

  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = sub_1CF4E606C(v5);

  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = sub_1CF4E523C(v6);

  v8 = sub_1CF4E65F4(v7);
  swift_beginAccess();
  v9 = *&v1[v3];
  *&v1[v3] = v8;

  v10 = sub_1CF4E76FC(a1);
  swift_beginAccess();
  v11 = *&v1[v4];
  *&v1[v4] = v10;

  v13.receiver = v1;
  v13.super_class = type metadata accessor for FPCKReport();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1CF4DFA80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_1CF4D9D80();

  v5 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v124 = v5;
  sub_1CF4E4D04(v4, sub_1CF4E033C, 0, isUniquelyReferenced_nonNull_native, &v124);
  v4, v7, v8, v9, v10, v11, v12, v13;
  v14 = v124;
  v15 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_1CF4D8CB0();

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v124 = v14;
  sub_1CF4E4D04(v17, sub_1CF4E033C, 0, v18, &v124);
  v17, v19, v20, v21, v22, v23, v24, v25;
  v26 = v124;
  v27 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  swift_beginAccess();
  v28 = *(v1 + v27);
  if (v28)
  {
    v29 = v28;
    v30 = sub_1CF4DC590();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v124 = v26;
    sub_1CF4E4D04(v30, sub_1CF4E033C, 0, v31, &v124);

    v30, v32, v33, v34, v35, v36, v37, v38;
    v26 = v124;
  }

  v39 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  swift_beginAccess();
  v40 = *(v1 + v39);
  if (v40)
  {
    v41 = v40;
    v42 = sub_1CF4DDF0C();
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v124 = v26;
    sub_1CF4E4D04(v42, sub_1CF4E033C, 0, v43, &v124);

    v42, v44, v45, v46, v47, v48, v49, v50;
    v26 = v124;
  }

  v51 = *(*(v1 + v15) + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error);
  if (!v51)
  {
    return v26;
  }

  v52 = *(v26 + 16);
  v53 = v51;
  v54 = MEMORY[0x1E69E6530];
  if (!v52)
  {
    goto LABEL_14;
  }

  v55 = sub_1CEFE4328(0x737574617473, 0xE600000000000000);
  if ((v56 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1CEFD1104(*(v26 + 56) + 32 * v55, &v124);
  v57 = MEMORY[0x1E69E6530];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v59 = *&v123[0];
  if ((*&v123[0] & 0x8000000000000000) == 0 || (v59 = -*&v123[0], !__OFSUB__(0, *&v123[0])))
  {
    v125 = v57;
    v60 = __OFSUB__(0, v59);
    v61 = -v59;
    if (!v60)
    {
LABEL_15:
      *&v124 = v61;
      sub_1CEFE9EB8(&v124, v123);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D154C(v123, 0x737574617473, 0xE600000000000000, v62);
      v63 = v26;
      if (*(v26 + 16) && (v64 = sub_1CEFE4328(0x526E75524B435046, 0xED00006E6F736165), (v65 & 1) != 0) && (sub_1CEFD1104(*(v26 + 56) + 32 * v64, &v124), (swift_dynamicCast() & 1) != 0))
      {
        v66 = *(&v123[0] + 1);
        v67 = *&v123[0];
      }

      else
      {
        v66 = 0xE700000000000000;
        v67 = 0x6E776F6E6B6E75;
      }

      *&v124 = v67;
      *(&v124 + 1) = v66;
      *&v123[0] = 0x726F727265;
      *(&v123[0] + 1) = 0xE500000000000000;
      sub_1CEFE4E68();
      v68 = MEMORY[0x1E69E6158];
      if (sub_1CF9E7698())
      {
        v66, v69, v70, v71, v72, v73, v74, v75;
      }

      else
      {
        *&v124 = v67;
        *(&v124 + 1) = v66;
        MEMORY[0x1D3868CC0](0x726F7272657CLL, 0xE600000000000000);
        v125 = v68;
        sub_1CEFE9EB8(&v124, v123);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        sub_1CF1D154C(v123, 0x526E75524B435046, 0xED00006E6F736165, v76);
      }

      v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v79 = v77;
      v80 = v78;
      v81 = MEMORY[0x1E69E6810];
      if (*(v63 + 16) && (v82 = sub_1CEFE4328(v77, v78), (v83 & 1) != 0) && (sub_1CEFD1104(*(v63 + 56) + 32 * v82, &v124), (swift_dynamicCast() & 1) != 0))
      {
        if ((*&v123[0] & 0xFFFFFFFFDFFFFFFFLL) != 0)
        {
          v84 = *&v123[0] | 0x20000000;
        }

        else
        {
          v84 = 0x20000000;
        }
      }

      else
      {
        v84 = 0x20000000;
      }

      v125 = v81;
      *&v124 = v84;
      sub_1CEFE9EB8(&v124, v123);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D154C(v123, v79, v80, v85);
      v80, v86, v87, v88, v89, v90, v91, v92;
      v26 = v63;
      if (v84 == 0x20000000)
      {
        v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v95 = v94;
        v96 = sub_1CF9E57E8();
        v97 = [v96 domain];

        v98 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v100 = v99;

        v125 = v68;
        *&v124 = v98;
        *(&v124 + 1) = v100;
        sub_1CEFE9EB8(&v124, v123);
        v101 = swift_isUniquelyReferenced_nonNull_native();
        sub_1CF1D154C(v123, v93, v95, v101);
        v95, v102, v103, v104, v105, v106, v107, v108;
        v109 = v26;
        v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v112 = v111;
        v113 = sub_1CF9E57E8();
        v114 = [v113 code];

        v125 = v54;
        *&v124 = v114;
        sub_1CEFE9EB8(&v124, v123);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        sub_1CF1D154C(v123, v110, v112, v115);

        v112, v116, v117, v118, v119, v120, v121, v122;
        return v109;
      }

      else
      {
      }

      return v26;
    }

    __break(1u);
LABEL_14:
    v61 = -1;
    v125 = v54;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void *sub_1CF4E0158@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF4E827C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1CF4E01A8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

unint64_t sub_1CF4E01E0()
{
  result = qword_1EC4C08C8;
  if (!qword_1EC4C08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C08C8);
  }

  return result;
}

unint64_t sub_1CF4E0254()
{
  result = qword_1EC4C08E8;
  if (!qword_1EC4C08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C08E8);
  }

  return result;
}

unint64_t sub_1CF4E02C8()
{
  result = qword_1EC4C0908;
  if (!qword_1EC4C0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0908);
  }

  return result;
}

double sub_1CF4E033C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1CEFD1104((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_1CF4E0388(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1CEFD1104(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_1CEFE9EB8(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_1CEFCCC44(v20, &unk_1EC4C0D00, &unk_1CFA12A80);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1CF4E04E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v13, &unk_1EC4BE300, &unk_1CF9FC5D0);
      v5 = v13;
      v6 = v14;
      result = sub_1CEFE4328(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CEFE9EB8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1CF4E0618(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF4E0664(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF4E06B0(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF4E06FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D60, &qword_1CFA079B0);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 16);
      v16[0] = *v4;
      v16[1] = v6;
      v17 = *(v4 + 32);
      v18 = *(v4 + 48);
      v19 = v16[0];
      v20 = v6;
      v21 = v17;
      sub_1CEFCCBDC(v16, v15, &qword_1EC4C0B20, &qword_1CFA079B8);
      result = sub_1CF7BF13C(&v19);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v20;
      v11 = v21;
      *v9 = v19;
      v9[1] = v10;
      v9[2] = v11;
      *(v3[7] + 8 * result) = v18;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 56;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E0858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0D10, &qword_1CFA07BA8);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v11, &qword_1EC4BFAB8, &unk_1CFA07BB0);
      v5 = v11;
      result = sub_1CF7BF1F0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFE9EB8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1CF4E0980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B48, &unk_1CFA079E0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
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

unint64_t sub_1CF4E0A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE8, &qword_1CFA07A90);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1CF4E0B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CE8, &unk_1CFA07B90);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_1CEFE863C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1CF4E0CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CC0, &qword_1CFA07B58);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_1CF7D52AC();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v9 = v3[7] + 24 * result;
    *v9 = v15;
    *(v9 + 16) = v5;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 8;
    v4 = *(v8 - 6);
    v15 = *(v8 - 1);
    v5 = *v8;

    result = sub_1CF7D52AC();
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E0E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, v13, &qword_1EC4C0600, &unk_1CF9FE790);
      result = sub_1CF0271B0(v13);
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
      result = sub_1CEFE9EB8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1CF4E0F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C80, &qword_1CFA07B18);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1CF4E1040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C68, &unk_1CFA07B00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C70, &unk_1CFA17170);
    v7 = sub_1CF9E7BE8();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v8, v5, &qword_1EC4C0C68, &unk_1CFA07B00);
      result = sub_1CF7BF2C0(*v5, v5[8]);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6] + 16 * result;
      v14 = v5[8];
      *v13 = *v5;
      *(v13 + 8) = v14;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
      result = sub_1CEFE55D0(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &unk_1EC4C04C0, &qword_1CFA07B10);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1CF4E1238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C60, &qword_1CFA07AF8);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1CEFE863C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1CF4E1358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C38, &qword_1CFA07AD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C40, &unk_1CFA07AD8);
    v7 = sub_1CF9E7BE8();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v8, v5, &qword_1EC4C0C38, &qword_1CFA07AD0);
      result = sub_1CF7BF520(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      result = sub_1CEFE55D0(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_1EC4BF650, &unk_1CF9FCB40);
      *(v7[7] + 8 * v12) = *&v5[v19];
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

void *sub_1CF4E1560(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1CF9E7BE8();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1CF7BF380(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_1CF7BF380(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E1660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C00, &unk_1CFA171F0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1CEFE863C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1CF4E1750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF0, &qword_1CFA07A98);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      result = sub_1CEFE863C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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

unint64_t sub_1CF4E1848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C30, &qword_1CFA17200);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 41); ; i += 16)
    {
      v5 = *(i - 9);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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

unint64_t sub_1CF4E1938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C10, &qword_1CFA07AB8);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 16 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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

unint64_t sub_1CF4E1A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C98, &qword_1CFA07B30);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 64); ; i += 3)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v15 = *i;
      sub_1CF1FB2C0(v5, v6, v7, *(i - 8));

      result = sub_1CF7BF73C(v5, v6, v7, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 32 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v11 + 24) = v8;
      *(v3[7] + 16 * result) = v15;
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

unint64_t sub_1CF4E1B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C90, &qword_1CFA07B28);
    v3 = sub_1CF9E7BE8();

    for (i = a1 + 40; ; i += 48)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 8);
      v8 = *(i + 16);
      v9 = *(i + 24);
      v10 = *(i + 32);
      sub_1CF1FB2C0(v5, *i, v7, *(i + 16));

      result = sub_1CF7BF73C(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 32 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      *(v13 + 24) = v8;
      v14 = (v3[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
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

unint64_t sub_1CF4E1CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CB0, &qword_1CFA07B48);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 80); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 4);
      v7 = *(i - 2);
      v15 = *i;
      v16 = *(i - 3);
      *v17 = v7;
      *&v17[16] = v5;
      *&v17[24] = v6;
      result = sub_1CF7BF7D4(&v16);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 48 * result);
      v11 = *v17;
      *v10 = v16;
      v10[1] = v11;
      *(v10 + 26) = *&v17[10];
      *(v3[7] + 16 * result) = v15;
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

unint64_t sub_1CF4E1E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CA8, &qword_1CFA07B40);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 88); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 8);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 5);
      v18 = *(i - 7);
      *v19 = v9;
      *&v19[16] = v5;
      *&v19[24] = v6;
      result = sub_1CF7BF7D4(&v18);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 48 * result);
      v13 = *v19;
      *v12 = v18;
      v12[1] = v13;
      *(v12 + 26) = *&v19[10];
      v14 = (v3[7] + 16 * result);
      *v14 = v7;
      v14[1] = v8;
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

unint64_t sub_1CF4E1F34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_1CEFE4328(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1CF4E2054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB8, &unk_1CFA17190);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 32);
      v7 = *(i - 3);
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 16 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
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

unint64_t sub_1CF4E2168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB0, &unk_1CFA07C40);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      result = sub_1CEFE863C(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
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

unint64_t sub_1CF4E2278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E78, &unk_1CFA07CF8);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1CEFE863C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

void *sub_1CF4E238C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1CF9E7BE8();
  v6 = *(a1 + 32);
  LOBYTE(v7) = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = sub_1CF7BF2C0(v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 72);
  while (1)
  {
    *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v5[6] + 16 * v11;
    *v14 = v6;
    *(v14 + 8) = v7;
    *(v5[7] + 8 * v11) = result;
    v15 = v5[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v5[2] = v17;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v18 = v13 + 3;
    v6 = *(v13 - 2);
    v7 = *(v13 - 8);
    v19 = *v13;

    v11 = sub_1CF7BF2C0(v6, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E24AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D20, &unk_1CFA17230);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1CF4E25A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DF0, &unk_1CFA07C80);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  LOBYTE(v5) = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1CF7BF2C0(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 8);
    v15 = *v9;
    v16 = v6;
    result = sub_1CF7BF2C0(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E26CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BB0, &unk_1CFA17140);
    v3 = sub_1CF9E7BE8();

    v5 = a1 + 48;
    while (1)
    {
      v22 = v1;
      v6 = *(v5 - 16);
      v7 = *(v5 - 8);
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = *(v5 + 9);
      v11 = *(v5 + 10);
      v12 = *(v5 + 24);
      v24 = *(v5 + 16);
      v13 = *(v5 + 32);
      v23 = *(v5 + 40);
      v14 = v4 & 0xFF000000 | v9 | (v10 << 8) | (v11 << 16);

      result = sub_1CF7BF840(v6, v7, v8, v14);
      if (v16)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v3[6] + 32 * result;
      *v17 = v6;
      *(v17 + 8) = v7;
      *(v17 + 16) = v8;
      *(v17 + 24) = v9;
      *(v17 + 25) = v10;
      *(v17 + 26) = v11;
      v18 = v3[7] + 32 * result;
      *v18 = v24;
      *(v18 + 8) = v12;
      *(v18 + 16) = v13;
      *(v18 + 24) = v23;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v5 += 64;
      v3[2] = v21;
      v1 = v22 - 1;
      v4 = v14;
      if (v22 == 1)
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

unint64_t sub_1CF4E2860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E70, &qword_1CFA07CF0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1CEFE4328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1CF4E2964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E60, &qword_1CFA07CE0);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, v13, &qword_1EC4C0E68, &qword_1CFA07CE8);
      result = sub_1CF0271B0(v13);
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
      *(v3[7] + 8 * result) = v15;
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

unint64_t sub_1CF4E2A8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CC8, &unk_1CFA07B60);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1CEFE863C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1CF4E2B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D30, &qword_1CFA01CD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D38, &qword_1CFA07BD0);
    v7 = sub_1CF9E7BE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v9, v5, &qword_1EC4C0D30, &qword_1CFA01CD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1CEFE4328(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1CF9E5CF8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1CF4E2D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D80, &unk_1CFA07C10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D88, &qword_1CFA17240);
    v7 = sub_1CF9E7BE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v9, v5, &qword_1EC4C0D80, &unk_1CFA07C10);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1CEFE4328(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1CF9E5A58();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1CF4E2F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0CF0, &qword_1CFA17250);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v11, &unk_1EC4C1120, &qword_1CFA07BA0);
      v5 = v11;
      result = sub_1CEFE863C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFE9EB8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1CF4E30C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1CEFE4328(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1CF4E31C4()
{
  result = qword_1EC4C0938;
  if (!qword_1EC4C0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0938);
  }

  return result;
}

unint64_t sub_1CF4E3238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE8, &qword_1CFA07C78);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 44); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 4);
      v7 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v3[7] + 4 * result) = v7;
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

unint64_t sub_1CF4E33F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1CF9E7BE8();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_1CF4E351C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_1CEFE863C(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1CF4E360C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CE0, &qword_1CFA07B88);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *(i - 7);
      v10 = *(i - 6);
      v11 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 24 * result;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 9) = v9;
      *(v15 + 10) = v10;
      *(v15 + 16) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1CF4E3750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A0, &qword_1CFA07A40);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 15);
      v9 = *(i - 1);
      v8 = *i;
      sub_1CEFD0988(v5, *(i - 16), *(i - 15));

      result = sub_1CEFF4768(v5, v6 | (v7 << 8));
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 9) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1CF4E3884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B0, &unk_1CFA07B70);
    v7 = sub_1CF9E7BE8();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v8, v5, &qword_1EC4C0CD0, &qword_1CFA16E60);
      result = sub_1CF7BF2C0(*v5, v5[8]);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6] + 16 * result;
      v14 = v5[8];
      *v13 = *v5;
      *(v13 + 8) = v14;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      result = sub_1CEFE55D0(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &unk_1EC4BE360, &qword_1CF9FE650);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1CF4E3A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD8, &qword_1CFA07B80);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  LOBYTE(v5) = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1CF7BF2C0(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 8);
    v15 = *v9;
    v16 = v6;
    result = sub_1CF7BF2C0(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E3BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DD8, &qword_1CFA07C68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE0, &qword_1CFA07C70);
    v7 = sub_1CF9E7BE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v9, v5, &qword_1EC4C0DD8, &qword_1CFA07C68);
      result = sub_1CF7BFDB0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1CF9E5CF8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 4 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1CF4E3D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DD0, &qword_1CFA07C60);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1CF7BFE84(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1CF4E3E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DC0, &qword_1CFA07C50);
    v3 = sub_1CF9E7BE8();
    for (i = a1 + 32; ; i += 24)
    {
      sub_1CEFCCBDC(i, &v11, &qword_1EC4C0DC8, &qword_1CFA07C58);
      v5 = v11;
      result = sub_1CF7BF380(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFF701C(&v12, v3[7] + 16 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1CF4E3F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BA0, &qword_1CFA07A48);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 48);
      v19[2] = *(v4 + 32);
      v20 = v6;
      v7 = *(v4 + 64);
      v21 = v7;
      v8 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v8;
      v9 = v20;
      v22 = v19[0];
      v23[0] = v8;
      *(v23 + 11) = *(v4 + 27);
      sub_1CEFCCBDC(v19, v18, &qword_1EC4C0BA8, &unk_1CFA07A50);
      result = sub_1CF7BFC48(&v22);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 48 * result);
      v13 = v23[0];
      *v12 = v22;
      v12[1] = v13;
      *(v12 + 27) = *(v23 + 11);
      v14 = v3[7] + 24 * result;
      *v14 = v9;
      *(v14 + 16) = v7;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 72;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E4100(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_1CF7BF8D8(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1CF4E41F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B90, &unk_1CFA17110);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1CF7BFED0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1CF4E42E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B80, &qword_1CFA07A18);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CEFE863C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1CF4E43E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B78, &qword_1CFA07A10);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CEFE863C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1CF4E44D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DA0, &qword_1CFA07C30);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1CF4E45D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0D90, &unk_1CFA07C20);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v11, &unk_1EC4C5040, &unk_1CFA181E0);
      v5 = v11;
      result = sub_1CEFE863C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFE9EB8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1CF4E4748(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a2;
  v27 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = sub_1CF9E7BE8();
    v25 = *(v8 + 48);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v14, v11, v26, v27);
      result = sub_1CF7BF520(v11);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v13[6];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      result = sub_1CEFE55D0(v11, v19 + *(*(v20 - 8) + 72) * v18, &unk_1EC4BF650, &unk_1CF9FCB40);
      *(v13[7] + 8 * v18) = *&v11[v25];
      v21 = v13[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v13[2] = v23;
      v14 += v15;
      if (!--v12)
      {

        return v13;
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

unint64_t sub_1CF4E492C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D68, &qword_1CFA07BF8);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CF7BFF48(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1CF4E4A24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B70, &unk_1CFA17100);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CEFE863C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1CF4E4B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BC0, &qword_1CFA07A68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0BC8, &unk_1CFA07A70);
    v7 = sub_1CF9E7BE8();
    v20 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v8, v5, &qword_1EC4C0BC0, &qword_1CFA07A68);
      v10 = *v5;
      result = sub_1CF7BF380(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      v14 = v7[7];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
      result = sub_1CEFE55D0(v5 + v20, v14 + *(*(v15 - 8) + 72) * v13, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v8 += v9;
      if (!--v6)
      {
        return v7;
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

void sub_1CF4E4D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v56 = a1;
  v57 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v58 = v8;
  v59 = 0;
  v60 = v11 & v9;
  v61 = a2;
  v62 = a3;

  sub_1CF4E0388(&v54);
  v12 = *(&v54 + 1);
  if (!*(&v54 + 1))
  {
    goto LABEL_25;
  }

  v13 = v54;
  sub_1CEFE9EB8(v55, v53);
  v14 = *a5;
  v15 = sub_1CEFE4328(v13, v12);
  v23 = v14[2];
  v24 = (v16 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v16;
  if (v14[3] < v26)
  {
    sub_1CF7C3178(v26, a4 & 1);
    v15 = sub_1CEFE4328(v13, v12);
    if ((v27 & 1) == (v16 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_1CF9E8108();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v31 = v15;
    sub_1CF7CF1E0();
    v15 = v31;
    v28 = *a5;
    if (v27)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v28 = *a5;
  if (v27)
  {
LABEL_11:
    v29 = v15;
    v12, v16, v17, v18, v19, v20, v21, v22;
    v30 = (v28[7] + 32 * v29);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_1CEFE9EB8(v53, v30);
    goto LABEL_15;
  }

LABEL_13:
  v28[(v15 >> 6) + 8] |= 1 << v15;
  v32 = (v28[6] + 16 * v15);
  *v32 = v13;
  v32[1] = v12;
  sub_1CEFE9EB8(v53, (v28[7] + 32 * v15));
  v33 = v28[2];
  v25 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v25)
  {
    v28[2] = v34;
LABEL_15:
    sub_1CF4E0388(&v54);
    v12 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      v27 = 1;
      do
      {
        v13 = v54;
        sub_1CEFE9EB8(v55, v53);
        v37 = *a5;
        v38 = sub_1CEFE4328(v13, v12);
        v46 = v37[2];
        v47 = (v39 & 1) == 0;
        v25 = __OFADD__(v46, v47);
        v48 = v46 + v47;
        if (v25)
        {
          goto LABEL_26;
        }

        a4 = v39;
        if (v37[3] < v48)
        {
          sub_1CF7C3178(v48, 1);
          v38 = sub_1CEFE4328(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v49 = *a5;
        if (a4)
        {
          v35 = v38;
          v12, v39, v40, v41, v42, v43, v44, v45;
          v36 = (v49[7] + 32 * v35);
          __swift_destroy_boxed_opaque_existential_1(v36);
          sub_1CEFE9EB8(v53, v36);
        }

        else
        {
          v49[(v38 >> 6) + 8] |= 1 << v38;
          v50 = (v49[6] + 16 * v38);
          *v50 = v13;
          v50[1] = v12;
          sub_1CEFE9EB8(v53, (v49[7] + 32 * v38));
          v51 = v49[2];
          v25 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v25)
          {
            goto LABEL_27;
          }

          v49[2] = v52;
        }

        sub_1CF4E0388(&v54);
        v12 = *(&v54 + 1);
      }

      while (*(&v54 + 1));
    }

LABEL_25:
    sub_1CEFCB59C(v56);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1CF4E5014()
{
  v17 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 3, 0);
  result = v17;
  if (byte_1F4BEEF90)
  {
    v1 = 0x616470557473616CLL;
    if (byte_1F4BEEF90 == 1)
    {
      v2 = 0xEE00656D69546574;
    }

    else
    {
      v2 = 0xEF646C6975426574;
    }
  }

  else
  {
    v2 = 0xE600000000000000;
    v1 = 0x737574617473;
  }

  v4 = *(v17 + 16);
  v3 = *(v17 + 24);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    sub_1CEFE95CC((v3 > 1), v4 + 1, 1);
    result = v17;
  }

  *(result + 16) = v5;
  v6 = result + 16 * v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  if (byte_1F4BEEF91)
  {
    v7 = 0x616470557473616CLL;
    if (byte_1F4BEEF91 == 1)
    {
      v8 = 0xEE00656D69546574;
    }

    else
    {
      v8 = 0xEF646C6975426574;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v7 = 0x737574617473;
  }

  v18 = result;
  v9 = *(result + 24);
  v10 = v4 + 2;
  if (v5 >= v9 >> 1)
  {
    sub_1CEFE95CC((v9 > 1), v10, 1);
    result = v18;
  }

  *(result + 16) = v10;
  v11 = result + 16 * v5;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  if (byte_1F4BEEF92)
  {
    v12 = 0x616470557473616CLL;
    if (byte_1F4BEEF92 == 1)
    {
      v13 = 0xEE00656D69546574;
    }

    else
    {
      v13 = 0xEF646C6975426574;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v12 = 0x737574617473;
  }

  v19 = result;
  v15 = *(result + 16);
  v14 = *(result + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1CEFE95CC((v14 > 1), v15 + 1, 1);
    result = v19;
  }

  *(result + 16) = v15 + 1;
  v16 = result + 16 * v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v13;
  return result;
}

id sub_1CF4E523C(_TtC18FileProviderDaemon8FSTester *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v156 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v156 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v156 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v163 = v156 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v156 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v159 = v156 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v161 = v156 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v162 = v156 - v24;
  v25 = sub_1CF9E5CF8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v156 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v158 = v156 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v160 = v156 - v42;
  if (!*a1->tree)
  {
    goto LABEL_5;
  }

  v43 = sub_1CEFE4328(0x737574617473, 0xE600000000000000);
  if ((v35 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1CEFD1104(*a1[1].tester + 32 * v43, v169);
  sub_1CEFE9EB8(v169, v170);
  sub_1CEFD1104(v170, v169);
  sub_1CF4D568C(v169, &v165);
  if (v165 != 12)
  {
    v50 = v165;
    sub_1CEFD1104(v170, v169);
    if ((swift_dynamicCast() & 1) == 0 || (v165 & 0x8000000000000000) == 0)
    {
LABEL_13:
      v58 = 0;
      if (!*a1->tree)
      {
        goto LABEL_39;
      }

      goto LABEL_14;
    }

    v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (!*a1->tree)
    {
      goto LABEL_33;
    }

    v86 = v79;
    v87 = sub_1CEFE4328(v78, v79);
    v89 = v88;
    v86, v88, v90, v91, v92, v93, v94, v95;
    if ((v89 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1CEFD1104(*a1[1].tester + 32 * v87, v169);
    if ((swift_dynamicCast() & 1) == 0 || v165 != 0x20000000)
    {
      goto LABEL_13;
    }

    v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (!*a1->tree)
    {
LABEL_33:
      v79, v79, v80, v81, v82, v83, v84, v85;
      goto LABEL_13;
    }

    v97 = v79;
    v98 = sub_1CEFE4328(v96, v79);
    v100 = v99;
    v97, v99, v101, v102, v103, v104, v105, v106;
    if ((v100 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1CEFD1104(*a1[1].tester + 32 * v98, v169);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v108 = v165;
    v107 = v166;
    v109 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (*a1->tree)
    {
      v156[1] = v108;
      v117 = v107;
      v118 = v110;
      v157 = sub_1CEFE4328(v109, v110);
      v120 = v119;
      v121 = v118;
      v107 = v117;
      v121, v119, v122, v123, v124, v125, v126, v127;
      if (v120)
      {
        sub_1CEFD1104(*a1[1].tester + 32 * v157, v169);
        if (swift_dynamicCast())
        {
          v135 = v165;
          v136 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v137 = sub_1CF9E6888();
          v138 = v107;
          v139 = v137;
          v138, v140, v141, v142, v143, v144, v145, v146;
          v58 = [v136 initWithDomain:v139 code:v135 userInfo:0];

          goto LABEL_38;
        }
      }
    }

    else
    {
      v110, v110, v111, v112, v113, v114, v115, v116;
    }

    v107, v128, v129, v130, v131, v132, v133, v134;
    v58 = 0;
LABEL_38:
    if (!*a1->tree)
    {
      goto LABEL_39;
    }

LABEL_14:
    v59 = sub_1CEFE4328(0x616470557473616CLL, 0xEE00656D69546574);
    if (v51)
    {
      sub_1CEFD1104(*a1[1].tester + 32 * v59, v169);
      if (swift_dynamicCast())
      {
        if (*a1->tree)
        {
          v60 = sub_1CEFE4328(0x616470557473616CLL, 0xEF646C6975426574);
          if (v51)
          {
            sub_1CEFD1104(*a1[1].tester + 32 * v60, v169);
            a1, v61, v62, v63, v64, v65, v66, v67;
            if (swift_dynamicCast())
            {
              v163 = v165;
              v157 = v166;
              v68 = v160;
              sub_1CF9E5C88();
              v69 = v162;
              (*(v26 + 16))(v162, v68, v25);
              (*(v26 + 56))(v69, 0, 1, v25);
              v70 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
              *&v70[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = v58;
              v71 = v161;
              sub_1CEFCCBDC(v69, v161, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              v70[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v50;
              v72 = v159;
              sub_1CEFCCBDC(v71, v159, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              v73 = *(v26 + 48);
              if (v73(v72, 1, v25) == 1)
              {
                v74 = v58;
                v75 = v68;
                v76 = v158;
                sub_1CF9E5C88();
                v77 = v76;
                v68 = v75;
                if (v73(v72, 1, v25) != 1)
                {
                  sub_1CEFCCC44(v72, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
                }
              }

              else
              {
                v77 = v158;
                (*(v26 + 32))(v158, v72, v25);
                v147 = v58;
              }

              (*(v26 + 32))(&v70[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v77, v25);
              v148 = &v70[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
              v149 = v157;
              *v148 = v163;
              v148[1] = v149;
              v150 = type metadata accessor for FPCKReportSection(0);
              v164.receiver = v70;
              v164.super_class = v150;
              v48 = [(FSTester *)&v164 init];
              sub_1CEFCCC44(v71, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

              sub_1CEFCCC44(v162, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              (*(v26 + 8))(v68, v25);
LABEL_45:
              __swift_destroy_boxed_opaque_existential_1(v170);
              return v48;
            }

LABEL_40:
            (*(v26 + 56))(v18, 1, 1, v25);
            v151 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
            *&v151[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = v58;
            v152 = v163;
            sub_1CEFCCBDC(v18, v163, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v151[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v50;
            sub_1CEFCCBDC(v152, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v153 = *(v26 + 48);
            if (v153(v13, 1, v25) == 1)
            {
              sub_1CF9E5C88();
              if (v153(v13, 1, v25) != 1)
              {
                sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              }
            }

            else
            {
              (*(v26 + 32))(v31, v13, v25);
            }

            (*(v26 + 32))(&v151[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v31, v25);
            v154 = &v151[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
            *v154 = 0x6E776F6E6B6E75;
            v154[1] = 0xE700000000000000;
            v155 = type metadata accessor for FPCKReportSection(0);
            v167.receiver = v151;
            v167.super_class = v155;
            v48 = [(FSTester *)&v167 init];
            sub_1CEFCCC44(v152, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v18, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            goto LABEL_45;
          }
        }
      }
    }

LABEL_39:
    a1, v51, v52, v53, v54, v55, v56, v57;
    goto LABEL_40;
  }

  __swift_destroy_boxed_opaque_existential_1(v170);
LABEL_5:
  a1, v35, v36, v37, v38, v39, v40, v41;
  (*(v26 + 56))(v10, 1, 1, v25);
  v44 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
  *&v44[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
  sub_1CEFCCBDC(v10, v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v44[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
  sub_1CEFCCBDC(v7, v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v45 = *(v26 + 48);
  if (v45(v4, 1, v25) == 1)
  {
    sub_1CF9E5C88();
    if (v45(v4, 1, v25) != 1)
    {
      sub_1CEFCCC44(v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v26 + 32))(v28, v4, v25);
  }

  (*(v26 + 32))(&v44[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v28, v25);
  v46 = &v44[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v46 = 0x6E776F6E6B6E75;
  v46[1] = 0xE700000000000000;
  v47 = type metadata accessor for FPCKReportSection(0);
  v168.receiver = v44;
  v168.super_class = v47;
  v48 = [(FSTester *)&v168 init];
  sub_1CEFCCC44(v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v48;
}

uint64_t sub_1CF4E5E14()
{
  v0 = 0xE900000000000065;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 3, 0);
  result = v17;
  if (byte_1F4BEEFB8)
  {
    if (byte_1F4BEEFB8 == 1)
    {
      v2 = 0x6975427472617473;
      v3 = 0xEA0000000000646CLL;
    }

    else
    {
      v2 = 0x526E75524B435046;
      v3 = 0xED00006E6F736165;
    }
  }

  else
  {
    v2 = 0x6D69547472617473;
    v3 = 0xE900000000000065;
  }

  v5 = *(v17 + 16);
  v4 = *(v17 + 24);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    sub_1CEFE95CC((v4 > 1), v5 + 1, 1);
    result = v17;
  }

  *(result + 16) = v6;
  v7 = result + 16 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  if (byte_1F4BEEFB9)
  {
    if (byte_1F4BEEFB9 == 1)
    {
      v8 = 0x6975427472617473;
      v9 = 0xEA0000000000646CLL;
    }

    else
    {
      v8 = 0x526E75524B435046;
      v9 = 0xED00006E6F736165;
    }
  }

  else
  {
    v8 = 0x6D69547472617473;
    v9 = 0xE900000000000065;
  }

  v18 = result;
  v10 = *(result + 24);
  v11 = v5 + 2;
  if (v6 >= v10 >> 1)
  {
    sub_1CEFE95CC((v10 > 1), v11, 1);
    result = v18;
  }

  *(result + 16) = v11;
  v12 = result + 16 * v6;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  if (byte_1F4BEEFBA)
  {
    if (byte_1F4BEEFBA == 1)
    {
      v13 = 0x6975427472617473;
      v0 = 0xEA0000000000646CLL;
    }

    else
    {
      v13 = 0x526E75524B435046;
      v0 = 0xED00006E6F736165;
    }
  }

  else
  {
    v13 = 0x6D69547472617473;
  }

  v19 = result;
  v15 = *(result + 16);
  v14 = *(result + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1CEFE95CC((v14 > 1), v15 + 1, 1);
    result = v19;
  }

  *(result + 16) = v15 + 1;
  v16 = result + 16 * v15;
  *(v16 + 32) = v13;
  *(v16 + 40) = v0;
  return result;
}

_BYTE *sub_1CF4E606C(_TtC18FileProviderDaemon8FSTester *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = sub_1CF9E5CF8();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  if (*a1->tree)
  {
    v20 = sub_1CEFE4328(0x6D69547472617473, 0xE900000000000065);
    if (v13)
    {
      sub_1CEFD1104(*a1[1].tester + 32 * v20, v43);
      if (swift_dynamicCast())
      {
        sub_1CF9E5C88();
        sub_1CEFCCC44(v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        v12(v7, 0, 1, v11);
        sub_1CEFE55D0(v7, v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }
  }

  if (!*a1->tree)
  {
    v24 = 0;
    v23 = 0;
    goto LABEL_20;
  }

  v21 = sub_1CEFE4328(0x6975427472617473, 0xEA0000000000646CLL);
  if ((v13 & 1) == 0)
  {
    v23 = 0;
    v24 = 0;
    if (*a1->tree)
    {
      goto LABEL_17;
    }

LABEL_20:
    a1, v13, v14, v15, v16, v17, v18, v19;
    goto LABEL_21;
  }

  sub_1CEFD1104(*a1[1].tester + 32 * v21, v43);
  v22 = swift_dynamicCast();
  if (v22)
  {
    v23 = v41;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v42;
  }

  else
  {
    v24 = 0;
  }

  if (!*a1->tree)
  {
    goto LABEL_20;
  }

LABEL_17:
  v25 = sub_1CEFE4328(0x526E75524B435046, 0xED00006E6F736165);
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1CEFD1104(*a1[1].tester + 32 * v25, v43);
  a1, v26, v27, v28, v29, v30, v31, v32;
  if (swift_dynamicCast())
  {
    v33 = v41;
    v34 = v42;
    goto LABEL_22;
  }

LABEL_21:
  v33 = 0;
  v34 = 0;
LABEL_22:
  sub_1CEFCCBDC(v10, v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v35 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
  v36 = 0x6E776F6E6B6E75;
  if (v34)
  {
    v36 = v33;
  }

  v37 = 0xE700000000000000;
  if (v34)
  {
    v37 = v34;
  }

  v38 = &v35[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
  *v38 = v36;
  v38[1] = v37;
  v43[0] = 1;
  sub_1CEFCCBDC(v4, v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v39 = FPCKReportSection.init(phase:date:build:)(v43, v7, v23, v24);
  sub_1CEFCCC44(v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v39;
}

uint64_t sub_1CF4E6414()
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 6, 0);
  v0 = 0;
  result = v14;
  do
  {
    v2 = byte_1F4BEEFF8[v0 + 32];
    v3 = 0xD000000000000015;
    v4 = 0xD000000000000013;
    if (v2 == 4)
    {
      v4 = 0x53676E69646E6570;
      v5 = 0xEE00657A69537465;
    }

    else
    {
      v5 = 0x80000001CFA2C470;
    }

    if (v2 == 3)
    {
      v6 = 0x80000001CFA2C430;
    }

    else
    {
      v3 = v4;
      v6 = v5;
    }

    if (v2 == 1)
    {
      v7 = 0x646C697542737073;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (v2 == 1)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0x80000001CFA2C450;
    }

    if (!byte_1F4BEEFF8[v0 + 32])
    {
      v7 = 0x656D6954737073;
      v8 = 0xE700000000000000;
    }

    if (byte_1F4BEEFF8[v0 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (byte_1F4BEEFF8[v0 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v15 = result;
    v12 = *(result + 16);
    v11 = *(result + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1CEFE95CC((v11 > 1), v12 + 1, 1);
      result = v15;
    }

    ++v0;
    *(result + 16) = v12 + 1;
    v13 = result + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  while (v0 != 6);
  return result;
}

id sub_1CF4E65F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v196 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v196 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v196 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v196 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v196 - v18;
  v20 = sub_1CF9E5CF8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v196 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v197 = &v196 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v201 = &v196 - v26;
  v27 = *(a1 + 16);
  v216 = a1;
  if (!v27)
  {
    v215 = 0;
    v209 = 0;
    goto LABEL_20;
  }

  v28 = sub_1CEFE4328(0xD000000000000010, 0x80000001CFA2C450);
  if ((v29 & 1) == 0)
  {
    v209 = 0;
    v215 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

LABEL_20:
    v212 = 0;
    v207 = 0;
LABEL_21:
    v208 = 0;
    v38 = 1;
    goto LABEL_22;
  }

  sub_1CEFD1104(*(a1 + 56) + 32 * v28, v223);
  v30 = swift_dynamicCast();
  v31 = v221;
  if (!v30)
  {
    v31 = 0;
  }

  v209 = v31;
  if (v30)
  {
    v32 = v222;
  }

  else
  {
    v32 = 0;
  }

  v215 = v32;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_12:
  v33 = sub_1CEFE4328(0xD000000000000015, 0x80000001CFA2C430);
  if (v34)
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v33, v223);
    v35 = swift_dynamicCast();
    v36 = v221;
    if (!v35)
    {
      v36 = 0;
    }

    v207 = v36;
    if (v35)
    {
      v37 = v222;
    }

    else
    {
      v37 = 0;
    }

    v212 = v37;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v207 = 0;
    v212 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  v189 = sub_1CEFE4328(0x53676E69646E6570, 0xEE00657A69537465);
  if ((v190 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1CEFD1104(*(a1 + 56) + 32 * v189, v223);
  v191 = swift_dynamicCast();
  v192 = v221;
  if (!v191)
  {
    v192 = 0;
  }

  v208 = v192;
  v38 = v191 ^ 1;
LABEL_22:
  v214 = v38;
  v39 = v216;
  v40 = *(v216 + 16);
  v211 = v20;
  v210 = v21;
  v205 = v7;
  v204 = v10;
  v200 = v16;
  v199 = v19;
  v203 = v4;
  v198 = v13;
  if (v40 && (v41 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA2C470), (v42 & 1) != 0))
  {
    sub_1CEFD1104(*(v39 + 56) + 32 * v41, v223);
    v43 = swift_dynamicCast();
    v44 = v221;
    if (!v43)
    {
      v44 = 0;
    }

    v206 = v44;
    v45 = v43 ^ 1;
  }

  else
  {
    v206 = 0;
    v45 = 1;
  }

  v213 = v45;
  v46 = v39;
  v47 = v39 + 64;
  v48 = 1 << *(v39 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v39 + 64);
  v51 = (v48 + 63) >> 6;
  v52 = v223;

  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  for (i = &unk_1CFA12A80; v50; v46 = v216)
  {
LABEL_35:
    while (1)
    {
      v57 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v58 = v57 | (v53 << 6);
      v59 = (*(v46 + 48) + 16 * v58);
      v61 = *v59;
      v60 = v59[1];
      sub_1CEFD1104(*(v46 + 56) + 32 * v58, v224);
      v223[0] = v61;
      v223[1] = v60;

      if (sub_1CF19CB70(v61, v60))
      {
        sub_1CEFD1104(v224, &v221);
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        if (swift_dynamicCast())
        {
          break;
        }
      }

      sub_1CEFCCC44(v223, &unk_1EC4C0D00, &unk_1CFA12A80);
      if (!v50)
      {
        goto LABEL_31;
      }
    }

    v62 = v220;

    sub_1CEFCCC44(v223, &unk_1EC4C0D00, &unk_1CFA12A80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1CF1F7198(0, (*v54->tree + 1), 1, v54, v63, v64, v65, v66);
    }

    v67 = v54;
    v68 = *v54->tree;
    v69 = v67;
    v70 = *v67->tester;
    v71 = v68 + 1;
    if (v68 >= v70 >> 1)
    {
      v217 = v68 + 1;
      v73 = sub_1CF1F7198((v70 > 1), (v68 + 1), 1, v69, v63, v64, v65, v66);
      v71 = v217;
      v69 = v73;
    }

    *v69->tree = v71;
    v72 = &v69->super.isa + 3 * v68;
    v54 = v69;
    v72[4] = v61;
    v72[5] = v60;
    v72[6] = v62;
  }

  while (1)
  {
LABEL_31:
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_86;
    }

    if (v56 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v56);
    ++v53;
    if (v50)
    {
      v53 = v56;
      goto LABEL_35;
    }
  }

  v81 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
  v217 = *v54->tree;
  if (!v217)
  {
    v83 = v54;
LABEL_61:
    v83, v74, v75, v76, v77, v78, v79, v80;
    v131 = v216;
    if (*(v216 + 16) && (v132 = sub_1CEFE4328(0x656D6954737073, 0xE700000000000000), (v124 & 1) != 0))
    {
      sub_1CEFD1104(*v131[1].tester + 32 * v132, v223);
      v133 = swift_dynamicCast();
      v141 = v215;
      if (v133 & 1) != 0 && *v131->tree && (v142 = sub_1CEFE4328(0x646C697542737073, 0xE800000000000000), (v134))
      {
        sub_1CEFD1104(*v131[1].tester + 32 * v142, v223);
        v131, v143, v144, v145, v146, v147, v148, v149;
        if (swift_dynamicCast())
        {
          v217 = v221;
          v216 = v222;
          v157 = v201;
          sub_1CF9E5C88();
          v215 = v141;
          v158 = v210;
          v159 = v199;
          i = v211;
          (*(v210 + 16))(v199, v157, v211);
          (*(v158 + 56))(v159, 0, 1, i);
          v52 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
          v160 = (v52 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
          *v160 = 0;
          v160[1] = 0;
          v161 = v52 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
          *v161 = 0;
          v161[8] = 1;
          v162 = (v52 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
          *v162 = 0;
          v162[1] = 0;
          v163 = v52 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
          *v163 = 0;
          v163[8] = 1;
          swift_beginAccess();
          v164 = v212;
          *v160 = v207;
          v160[1] = v164;
          swift_beginAccess();
          *v161 = v206;
          v161[8] = v213;
          swift_beginAccess();
          v165 = v215;
          *v162 = v209;
          v162[1] = v165;
          swift_beginAccess();
          *v163 = v208;
          v163[8] = v214;
          *(v52 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload) = v81;
          v53 = v159;
          v50 = v158;
          v47 = v200;
          sub_1CEFCCBDC(v159, v200, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          *(v52 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase) = 2;
          v46 = v198;
          sub_1CEFCCBDC(v47, v198, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v166 = *(v50 + 48);
          if (v166(v46, 1, i) == 1)
          {
            v167 = v197;
            sub_1CF9E5C88();
            if (v166(v46, 1, i) != 1)
            {
              sub_1CEFCCC44(v46, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }

            goto LABEL_87;
          }

LABEL_86:
          v167 = v197;
          (*(v50 + 32))(v197, v46, i);
LABEL_87:
          (*(v50 + 32))(v52 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date, v167, i);
          v193 = (v52 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
          v194 = v216;
          *v193 = v217;
          v193[1] = v194;
          v195 = type metadata accessor for FPCKReportSection(0);
          v218.receiver = v52;
          v218.super_class = v195;
          v188 = objc_msgSendSuper2(&v218, sel_init);
          sub_1CEFCCC44(v47, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          sub_1CEFCCC44(v53, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          (*(v50 + 8))(v201, i);
          return v188;
        }
      }

      else
      {
        v131, v134, v135, v136, v137, v138, v139, v140;
      }
    }

    else
    {
      v131, v124, v125, v126, v127, v128, v129, v130;
      v141 = v215;
    }

    v168 = v212;
    v169 = v214;
    if ((((v141 | v212) == 0) & v214 & v213) != 0)
    {
      v81, v150, v151, v152, v153, v154, v155, v156;
      return 0;
    }

    v171 = v210;
    v172 = *(v210 + 56);
    v215 = v141;
    v173 = v204;
    v174 = v211;
    v172(v204, 1, 1, v211);
    v175 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
    v214 = v169;
    v176 = v175;
    v177 = &v175[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
    *v177 = 0;
    *(v177 + 1) = 0;
    v178 = &v175[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
    *v178 = 0;
    v178[8] = 1;
    v179 = &v175[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
    *v179 = 0;
    *(v179 + 1) = 0;
    v180 = &v175[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
    *v180 = 0;
    v180[8] = 1;
    swift_beginAccess();
    *v177 = v207;
    *(v177 + 1) = v168;
    swift_beginAccess();
    *v178 = v206;
    v178[8] = v213;
    swift_beginAccess();
    v181 = v215;
    *v179 = v209;
    *(v179 + 1) = v181;
    swift_beginAccess();
    *v180 = v208;
    v180[8] = v214;
    *&v176[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v81;
    v182 = v205;
    sub_1CEFCCBDC(v173, v205, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v176[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 2;
    v183 = v203;
    sub_1CEFCCBDC(v182, v203, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v184 = *(v171 + 48);
    if (v184(v183, 1, v174) == 1)
    {
      v185 = v202;
      sub_1CF9E5C88();
      if (v184(v183, 1, v174) != 1)
      {
        sub_1CEFCCC44(v183, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v185 = v202;
      (*(v171 + 32))(v202, v183, v174);
    }

    (*(v171 + 32))(&v176[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v185, v174);
    v186 = &v176[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v186 = 0x6E776F6E6B6E75;
    v186[1] = 0xE700000000000000;
    v187 = type metadata accessor for FPCKReportSection(0);
    v219.receiver = v176;
    v219.super_class = v187;
    v188 = objc_msgSendSuper2(&v219, sel_init);
    sub_1CEFCCC44(v182, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v173, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return v188;
  }

  v82 = 0;
  v83 = v54;
  tree = v54[1].tree;
  while (v82 < *v83->tree)
  {
    v95 = *(tree - 2);
    v96 = *(tree - 1);
    v97 = *tree;
    swift_bridgeObjectRetain_n();
    v98 = v97;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v223[0] = v81;
    v100 = sub_1CEFE4328(v95, v96);
    v108 = *v81->tree;
    v109 = (v101 & 1) == 0;
    v110 = __OFADD__(v108, v109);
    v111 = v108 + v109;
    if (v110)
    {
      goto LABEL_89;
    }

    v112 = v101;
    if (*v81->tester < v111)
    {
      sub_1CF7C3E7C(v111, isUniquelyReferenced_nonNull_native);
      v100 = sub_1CEFE4328(v95, v96);
      if ((v112 & 1) != (v101 & 1))
      {
        goto LABEL_91;
      }

LABEL_55:
      if (v112)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_55;
    }

    v123 = v100;
    sub_1CF7CF818();
    v100 = v123;
    if (v112)
    {
LABEL_47:
      v85 = v100;
      v96, v101, v102, v103, v104, v105, v106, v107;
      v81 = v223[0];
      v86 = *(v223[0] + 56);
      v87 = *(v86 + 8 * v85);
      *(v86 + 8 * v85) = v98;

      v96, v88, v89, v90, v91, v92, v93, v94;
      goto LABEL_48;
    }

LABEL_56:
    v81 = v223[0];
    *(v223[0] + 8 * (v100 >> 6) + 64) |= 1 << v100;
    v113 = (*v81[1].tree + 16 * v100);
    *v113 = v95;
    v113[1] = v96;
    *(*v81[1].tester + 8 * v100) = v98;

    v96, v114, v115, v116, v117, v118, v119, v120;
    v121 = *v81->tree;
    v110 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (v110)
    {
      goto LABEL_90;
    }

    *v81->tree = v122;
LABEL_48:
    ++v82;
    tree += 3;
    if (v217 == v82)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF4E75F4()
{
  v8 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 2, 0);
  result = v8;
  v2 = *(v8 + 16);
  v1 = *(v8 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1CEFE95CC((v1 > 1), v2 + 1, 1);
    result = v8;
    v1 = *(v8 + 24);
    v3 = v1 >> 1;
  }

  *(result + 16) = v4;
  v5 = result + 16 * v2;
  *(v5 + 32) = 0x65747369736E6F63;
  *(v5 + 40) = 0xEF656D695479636ELL;
  v6 = v2 + 2;
  if (v3 < v6)
  {
    sub_1CEFE95CC((v1 > 1), v6, 1);
    result = v8;
  }

  *(result + 16) = v6;
  v7 = result + 16 * v4;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x80000001CFA4FE90;
  return result;
}

void *sub_1CF4E76FC(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v164 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v165 = &v157 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v166 = &v157 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v158 = (&v157 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v159 = &v157 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v157 - v13;
  v14 = sub_1CF9E5CF8();
  v167 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v160 = &v157 - v19;
  v20 = (a1 + 64);
  v21 = 1 << a1[32];
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 8);
  isUniquelyReferenced_nonNull_native = (v21 + 63) >> 6;
  v25 = v175;

  v26 = 0;
  for (i = MEMORY[0x1E69E7CC0]; v23; v25 = v175)
  {
LABEL_10:
    while (1)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = v28 | (v26 << 6);
      v30 = (*(a1 + 6) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      sub_1CEFD1104(*(a1 + 7) + 32 * v29, v176);
      v175[0] = v32;
      v175[1] = v31;

      if ((sub_1CF19CB70(v32, v31) & 1) == 0)
      {
        v33 = sub_1CF4E5E14();
        v34 = sub_1CF4E5014();
        v174[0] = v33;
        sub_1CF1E8CF8(v34);
        v35 = v174[0];
        v36 = sub_1CF4E6414();
        v174[0] = v35;
        sub_1CF1E8CF8(v36);
        v37 = v174[0];
        v38 = sub_1CF4E75F4();
        v174[0] = v37;
        sub_1CF1E8CF8(v38);
        v39 = v174[0];
        v40 = sub_1CF8E44FC(v174[0]);
        v39, v41, v42, v43, v44, v45, v46, v47;
        LOBYTE(v39) = sub_1CEFDB148(v32, v31, v40);
        v48 = v40;
        v25 = v175;
        v48, v49, v50, v51, v52, v53, v54, v55;
        if ((v39 & 1) == 0)
        {
          sub_1CEFD1104(v176, v174);
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          if (swift_dynamicCast())
          {
            break;
          }
        }
      }

      sub_1CEFCCC44(v175, &unk_1EC4C0D00, &unk_1CFA12A80);
      if (!v23)
      {
        goto LABEL_6;
      }
    }

    v169 = v173;

    sub_1CEFCCC44(v175, &unk_1EC4C0D00, &unk_1CFA12A80);
    v60 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1CF1F7198(0, (*i->tree + 1), 1, i, v56, v57, v58, v59);
    }

    v62 = *i->tree;
    v61 = *i->tester;
    if (v62 >= v61 >> 1)
    {
      i = sub_1CF1F7198((v61 > 1), (v62 + 1), 1, i, v56, v57, v58, v59);
    }

    v63 = i;
    *i->tree = v62 + 1;
    v64 = &v63->super.isa + 3 * v62;
    v64[4] = v32;
    v64[5] = v31;
    v64[6] = v169;
    a1 = v60;
  }

  while (1)
  {
LABEL_6:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v27 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v23 = *(v20 + 8 * v27);
    ++v26;
    if (v23)
    {
      v26 = v27;
      goto LABEL_10;
    }
  }

  v162 = v14;
  v168 = a1;

  v23 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
  v72 = i;
  v169 = *i->tree;
  if (v169)
  {
    v14 = 0;
    a1 = i[1].tree;
    do
    {
      if (v14 >= *v72->tree)
      {
        goto LABEL_55;
      }

      v83 = *(a1 - 2);
      v82 = *(a1 - 1);
      v84 = *a1;
      swift_bridgeObjectRetain_n();
      v26 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v175[0] = v23;
      v25 = v23;
      v20 = sub_1CEFE4328(v83, v82);
      v92 = *(v23 + 16);
      v93 = (v85 & 1) == 0;
      v94 = v92 + v93;
      if (__OFADD__(v92, v93))
      {
        goto LABEL_56;
      }

      v95 = v85;
      if (*(v23 + 24) >= v94)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v85)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v25 = v175;
          sub_1CF7CF818();
          if (v95)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_1CF7C3E7C(v94, isUniquelyReferenced_nonNull_native);
        v25 = v175[0];
        v96 = sub_1CEFE4328(v83, v82);
        if ((v95 & 1) != (v85 & 1))
        {
          goto LABEL_60;
        }

        v20 = v96;
        if (v95)
        {
LABEL_21:
          v82, v85, v86, v87, v88, v89, v90, v91;
          v23 = v175[0];
          v73 = *(v175[0] + 56);
          v74 = *(v73 + 8 * v20);
          *(v73 + 8 * v20) = v26;

          v82, v75, v76, v77, v78, v79, v80, v81;
          goto LABEL_22;
        }
      }

      v23 = v175[0];
      *(v175[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v97 = (*(v23 + 48) + 16 * v20);
      *v97 = v83;
      v97[1] = v82;
      *(*(v23 + 56) + 8 * v20) = v26;

      v82, v98, v99, v100, v101, v102, v103, v104;
      v105 = *(v23 + 16);
      v106 = __OFADD__(v105, 1);
      v107 = v105 + 1;
      if (v106)
      {
        __break(1u);
LABEL_60:
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }

      *(v23 + 16) = v107;
LABEL_22:
      ++v14;
      a1 += 24;
      v72 = i;
    }

    while (v169 != v14);
  }

  v72, v65, v66, v67, v68, v69, v70, v71;
  if (!*(v23 + 16))
  {
    v168, v108, v109, v110, v111, v112, v113, v114;
    v23, v139, v140, v141, v142, v143, v144, v145;
    return 0;
  }

  v115 = v168;
  if (*v168->tree && (v116 = sub_1CEFE4328(0x65747369736E6F63, 0xEF656D695479636ELL), (v108 & 1) != 0))
  {
    sub_1CEFD1104(*v115[1].tester + 32 * v116, v175);
    v117 = swift_dynamicCast();
    a1 = v162;
    isUniquelyReferenced_nonNull_native = v167;
    v125 = v166;
    if (v117 & 1) != 0 && *v115->tree && (v126 = sub_1CEFE4328(0xD000000000000010, 0x80000001CFA4FE90), (v118))
    {
      sub_1CEFD1104(*v115[1].tester + 32 * v126, v175);
      v115, v127, v128, v129, v130, v131, v132, v133;
      if (swift_dynamicCast())
      {
        v20 = v174[0];
        v26 = v174[1];
        v134 = v160;
        sub_1CF9E5C88();
        v135 = v161;
        (*(isUniquelyReferenced_nonNull_native + 16))(v161, v134, a1);
        (*(isUniquelyReferenced_nonNull_native + 56))(v135, 0, 1, a1);
        v25 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
        *(&v25->super.isa + OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload) = v23;
        v136 = v135;
        v14 = v159;
        sub_1CEFCCBDC(v136, v159, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        *(&v25->super.isa + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase) = 11;
        v23 = v158;
        sub_1CEFCCBDC(v14, v158, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        v137 = *(isUniquelyReferenced_nonNull_native + 48);
        if (v137(v23, 1, a1) == 1)
        {
          v138 = v157;
          sub_1CF9E5C88();
          if (v137(v23, 1, a1) != 1)
          {
            sub_1CEFCCC44(v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          }

          goto LABEL_58;
        }

LABEL_57:
        v138 = v157;
        (*(isUniquelyReferenced_nonNull_native + 32))(v157, v23, a1);
LABEL_58:
        (*(isUniquelyReferenced_nonNull_native + 32))(v25 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date, v138, a1);
        v155 = (v25 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
        *v155 = v20;
        v155[1] = v26;
        v156 = type metadata accessor for FPCKReportSection(0);
        v171.receiver = v25;
        v171.super_class = v156;
        v146 = objc_msgSendSuper2(&v171, sel_init);
        sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        sub_1CEFCCC44(v161, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        (*(isUniquelyReferenced_nonNull_native + 8))(v160, a1);
        return v146;
      }
    }

    else
    {
      v115, v118, v119, v120, v121, v122, v123, v124;
    }
  }

  else
  {
    v115, v108, v109, v110, v111, v112, v113, v114;
    a1 = v162;
    isUniquelyReferenced_nonNull_native = v167;
    v125 = v166;
  }

  (*(isUniquelyReferenced_nonNull_native + 56))(v125, 1, 1, a1);
  v147 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
  *&v147[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = v23;
  v148 = v165;
  sub_1CEFCCBDC(v125, v165, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v147[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 11;
  v149 = v164;
  sub_1CEFCCBDC(v148, v164, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v150 = *(isUniquelyReferenced_nonNull_native + 48);
  if (v150(v149, 1, a1) == 1)
  {
    v151 = v163;
    sub_1CF9E5C88();
    if (v150(v149, 1, a1) != 1)
    {
      sub_1CEFCCC44(v149, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v151 = v163;
    (*(isUniquelyReferenced_nonNull_native + 32))(v163, v149, a1);
  }

  (*(isUniquelyReferenced_nonNull_native + 32))(&v147[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v151, a1);
  v152 = &v147[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v152 = 0x6E776F6E6B6E75;
  v152[1] = 0xE700000000000000;
  v153 = type metadata accessor for FPCKReportSection(0);
  v172.receiver = v147;
  v172.super_class = v153;
  v146 = objc_msgSendSuper2(&v172, sel_init);
  sub_1CEFCCC44(v148, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v125, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v146;
}

void *sub_1CF4E827C(void *a1)
{
  v35[5] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0E40, &qword_1CFA07CD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E890C();
  sub_1CF9E8298();
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CF9E8288();
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1CF190888();
    sub_1CF9E8058();
    v13 = v34[0];
    v12 = v34[1];
    v14 = objc_opt_self();
    v15 = sub_1CF9E5B48();
    v34[0] = 0;
    v16 = [v14 JSONObjectWithData:v15 options:0 error:v34];

    if (v16)
    {
      v17 = v34[0];
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
      if (swift_dynamicCast())
      {
        v18 = v33;
        v19 = objc_allocWithZone(type metadata accessor for FPCKReport());
        v26 = sub_1CF4DF990(v18);
        sub_1CEFE4714(v13, v12);
        goto LABEL_5;
      }

      sub_1CEFE4714(v13, v12);
    }

    else
    {
      v20 = v34[0];
      v21 = sub_1CF9E57F8();

      swift_willThrow();
      sub_1CEFE4714(v13, v12);
    }

    v9 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
    v10 = objc_allocWithZone(type metadata accessor for FPCKReport());
    v26 = sub_1CF4DF990(v9);
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1(v35);
    goto LABEL_6;
  }

  type metadata accessor for FPCKReportStartSection(0);
  LOBYTE(v34[0]) = 0;
  sub_1CF4D6B90(&qword_1EC4C08F8, type metadata accessor for FPCKReportStartSection, &protocol conformance descriptor for FPCKReportSection);
  sub_1CF9E7D88();
  v7 = v35[0];
  type metadata accessor for FPCKReportStatusSection(0);
  LOBYTE(v34[0]) = 1;
  sub_1CF4D6B90(&qword_1EC4C08D8, type metadata accessor for FPCKReportStatusSection, &protocol conformance descriptor for FPCKReportSection);
  sub_1CF9E7D88();
  v8 = v35[0];
  type metadata accessor for FPCKReportSPSSection(0);
  LOBYTE(v34[0]) = 2;
  sub_1CF4D6B90(&qword_1EC4C0928, type metadata accessor for FPCKReportSPSSection, &protocol conformance descriptor for FPCKReportSection);
  sub_1CF9E7CF8();
  v31 = v35[0];
  type metadata accessor for FPCKReportConsistencySection(0);
  LOBYTE(v34[0]) = 3;
  sub_1CF4D6B90(&qword_1EC4C0948, type metadata accessor for FPCKReportConsistencySection, &protocol conformance descriptor for FPCKReportSection);
  sub_1CF9E7CF8();
  v30 = v35[0];
  v29 = type metadata accessor for FPCKReport();
  v22 = objc_allocWithZone(v29);
  v23 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v22[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v28 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v22[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;
  *&v22[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = v7;
  *&v22[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = v8;
  swift_beginAccess();
  *&v22[v23] = v31;
  v24 = v28;
  swift_beginAccess();
  v25 = v29;
  *&v22[v24] = v30;
  v32.receiver = v22;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, sel_init);
  (*(v4 + 8))(v6, v3);
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v26;
}

unint64_t sub_1CF4E890C()
{
  result = qword_1EC4C0978;
  if (!qword_1EC4C0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0978);
  }

  return result;
}

id sub_1CF4E8960(id a1, void *a2, void *a3, void *a4)
{
  v73 = a2;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v63 - v27;
  v70 = v9;
  v71 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v72 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;
  if (a1)
  {
    v30 = v8;
    v31 = a1;
    v32 = v73;
  }

  else
  {
    v67 = 0;
    v63 = a3;
    v64 = a4;
    (*(v9 + 56))(&v63 - v27, 1, 1, v8, v28);
    v33 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
    v34 = &v33[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    *v34 = 0x6E776F6E6B6E75;
    v34[1] = 0xE700000000000000;
    sub_1CEFCCBDC(v29, v25, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    sub_1CEFCCBDC(v25, v22, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v35 = *(v9 + 48);
    if (v35(v22, 1, v8) == 1)
    {
      sub_1CF9E5C88();
      if (v35(v22, 1, v8) != 1)
      {
        sub_1CEFCCC44(v22, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      (*(v9 + 32))(v13, v22, v8);
    }

    v36 = *(v9 + 32);
    v30 = v8;
    v36(&v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v13, v8);
    v37 = &v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v37 = 0x6E776F6E6B6E75;
    v37[1] = 0xE700000000000000;
    v38 = type metadata accessor for FPCKReportSection(0);
    v76.receiver = v33;
    v76.super_class = v38;
    v31 = objc_msgSendSuper2(&v76, sel_init);
    sub_1CEFCCC44(v25, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v29, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    a4 = v64;
    a3 = v63;
    v32 = v73;
    a1 = v67;
  }

  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = v31;
  if (v32)
  {
    v39 = a1;
    v40 = v32;
    v41 = &selRef_defaultNSDomainForDescriptor_;
  }

  else
  {
    v67 = a1;
    v42 = v70;
    v43 = v68;
    v44 = v30;
    (*(v70 + 56))(v68, 1, 1, v30, v28);
    v45 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
    *&v45[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
    v46 = v69;
    sub_1CEFCCBDC(v43, v69, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v45[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    v47 = v65;
    sub_1CEFCCBDC(v46, v65, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v48 = *(v42 + 48);
    if (v48(v47, 1, v44) == 1)
    {
      v49 = v67;
      v50 = v66;
      sub_1CF9E5C88();
      if (v48(v47, 1, v44) != 1)
      {
        sub_1CEFCCC44(v47, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v50 = v66;
      (*(v42 + 32))(v66, v47, v44);
      v51 = v67;
    }

    (*(v70 + 32))(&v45[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v50, v44);
    v52 = &v45[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v52 = 0x6E776F6E6B6E75;
    v52[1] = 0xE700000000000000;
    v53 = type metadata accessor for FPCKReportSection(0);
    v75.receiver = v45;
    v75.super_class = v53;
    v41 = &selRef_defaultNSDomainForDescriptor_;
    v40 = objc_msgSendSuper2(&v75, sel_init);
    sub_1CEFCCC44(v69, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v68, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v32 = v73;
  }

  *&v4[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = v40;
  v54 = v71;
  swift_beginAccess();
  v55 = *&v4[v54];
  *&v4[v54] = a3;
  v56 = v32;
  v57 = a3;

  v58 = v72;
  swift_beginAccess();
  v59 = *&v4[v58];
  *&v4[v58] = a4;
  v60 = a4;

  v61 = type metadata accessor for FPCKReport();
  v74.receiver = v4;
  v74.super_class = v61;
  return objc_msgSendSuper2(&v74, v41[418]);
}