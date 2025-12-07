uint64_t sub_29E4E6208(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v39 = sub_29E4FB130();
  v3 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FC3C0();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FB100();
  v11 = [v10 _hk_extractEncodedHKProfileIdentifier];

  if (v11)
  {
    v12 = sub_29E4FBDA0();
    sub_29E4FBD90();
    sub_29E4FCA00();
    sub_29E4A1710(v42, v42[3]);
    v13 = sub_29E4FB2F0();
    v14 = sub_29E4FBDE0();

    if (v14)
    {
      v15 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      [v15 setProfileIdentifier_];
      [v15 resume];
      sub_29E4FBE30();
      sub_29E4A76F0(v42, v41);
      sub_29E4A76F0(v43, v40);
      v16 = v15;
      v17 = sub_29E4FBE20();
      v18 = [v12 navigationController];
      if (v18)
      {
        v19 = v18;
        [v18 pushViewController:v17 animated:0];
      }

      else
      {
        v19 = v11;
        v11 = v16;
      }

      v12 = v19;
    }

    sub_29E4A1754(v43);
    return sub_29E4A1754(v42);
  }

  else
  {
    v37 = v6;
    v38 = v7;
    sub_29E4FC370();
    v20 = v3;
    v21 = *(v3 + 16);
    v22 = v39;
    v21(v5, a1, v39);
    v23 = sub_29E4FC3B0();
    v24 = sub_29E4FC920();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42[0] = v36;
      *v25 = 136446466;
      v43[0] = ObjectType;
      swift_getMetatypeMetadata();
      v26 = sub_29E4FC700();
      v28 = sub_29E4F68F4(v26, v27, v42);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      v29 = sub_29E4FB0F0();
      v31 = v30;
      (*(v20 + 8))(v5, v22);
      v32 = sub_29E4F68F4(v29, v31, v42);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_29E494000, v23, v24, "[%{public}s]: Unable to fetch ProfileIdentifier from URL %{public}s", v25, 0x16u);
      v33 = v36;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v33, -1, -1);
      MEMORY[0x29ED8BDB0](v25, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v5, v22);
    }

    return (*(v38 + 8))(v9, v37);
  }
}

id sub_29E4E668C(uint64_t a1, void *a2)
{
  v4 = sub_29E4FBB20();
  v5 = *(v4 - 8);
  result = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_29E4FBB30();
    sub_29E4FBB10();
    result = [a2 collectionView];
    if (result)
    {
      v9 = result;
      v10 = objc_allocWithZone(MEMORY[0x29EDC64A8]);
      v11 = sub_29E4FC6B0();

      v12 = [v10 initWithTestName:v11 scrollView:v9 completionHandler:0];

      [objc_opt_self() runTestWithParameters_];
      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4E68D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E4FCCB0())
    {
      v7 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x29ED8B3B0](v7, a1);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_14;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 type] == 3)
        {
          goto LABEL_17;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }
  }

LABEL_16:
  v9 = 0;
LABEL_17:
  swift_beginAccess();
  v11 = *(a3 + 16);
  *(a3 + 16) = v9;

  return sub_29E4FCAE0();
}

id sub_29E4E69E8()
{
  v33 = sub_29E4FC550();
  v30 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v1 = (&v29 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_29E4FC5A0();
  v2 = *(v32 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v29 - v6;
  v8 = dispatch_semaphore_create(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v11 = objc_allocWithZone(MEMORY[0x29EDBACE8]);
  v31 = v10;
  v12 = [v11 initWithHealthStore_];
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v8;
  aBlock[4] = sub_29E4E7648;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E4E5C54;
  aBlock[3] = &unk_2A24E9120;
  v14 = _Block_copy(aBlock);

  v15 = v8;
  v16 = v12;

  [v12 fetchAllProfilesWithCompletion_];
  _Block_release(v14);
  sub_29E4FC590();
  *v1 = 5;
  v17 = v30;
  v18 = v33;
  (*(v30 + 104))(v1, *MEMORY[0x29EDCA238], v33);
  MEMORY[0x29ED8ABE0](v5, v1);
  (*(v17 + 8))(v1, v18);
  v19 = *(v2 + 8);
  v20 = v32;
  v19(v5, v32);
  v21 = sub_29E4FCAD0();
  v19(v7, v20);
  swift_beginAccess();
  v22 = *(v9 + 16);
  if ((v21 & 1) != 0 || !v22)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v25 = v22;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD000000000000046, 0x800000029E502D30);
    LOBYTE(v34) = v21 & 1;
    v26 = sub_29E4FC700();
    MEMORY[0x29ED8AD70](v26);

    MEMORY[0x29ED8AD70](0xD000000000000015, 0x800000029E502D80);
    v34 = v22;
    sub_29E4E7650(0);
    v27 = v25;
    v28 = sub_29E4FC700();
    MEMORY[0x29ED8AD70](v28);

    result = sub_29E4FCDE0();
    __break(1u);
  }

  else
  {
    v23 = v22;

    return v23;
  }

  return result;
}

uint64_t sub_29E4E6E4C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_29E4FC560();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FC580();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v52 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FC550();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_29E4FC5A0();
  v50 = *(v51 - 8);
  v14 = MEMORY[0x2A1C7C4A8](a1);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v48 = &v38 - v18;
  if (v17)
  {
    v43 = v8;
    v44 = v6;
    v45 = v7;
    v46 = v4;
    v47 = v3;
    v19 = sub_29E4FBB40();
    v20 = sub_29E4E69E8();
    v21 = v19;
    sub_29E4FCA00();

    sub_29E4A1710(v57, v57[3]);
    v22 = sub_29E4FB2F0();
    if (sub_29E4FBDE0())
    {

      v23 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      v24 = sub_29E4FB590();
      v25 = v23;
      v26 = sub_29E4FB580();
      v42 = v26;
      [v25 setProfileIdentifier_];
      [v25 resume];
      sub_29E4FBE30();
      sub_29E4A76F0(v57, aBlock);
      v55 = v24;
      v56 = MEMORY[0x29EDC3970];
      v54 = v26;
      v41 = v25;

      v27 = sub_29E4FBE20();
      [v21 pushViewController:v27 animated:0];
      sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
      v40 = sub_29E4FCA70();
      sub_29E4FC590();
      *v13 = 4;
      (*(v11 + 104))(v13, *MEMORY[0x29EDCA238], v10);
      v38 = v21;
      v28 = v48;
      MEMORY[0x29ED8ABE0](v16, v13);
      (*(v11 + 8))(v13, v10);
      v39 = v20;
      v29 = v51;
      v50 = *(v50 + 8);
      (v50)(v16, v51);
      v30 = swift_allocObject();
      *(v30 + 16) = v49;
      *(v30 + 24) = v27;
      aBlock[4] = sub_29E4E7540;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29E4BB1B0;
      aBlock[3] = &unk_2A24E90A8;
      v31 = _Block_copy(aBlock);

      v32 = v27;
      v33 = v52;
      sub_29E4FC570();
      v54 = MEMORY[0x29EDCA190];
      sub_29E4E7560(&qword_2A1A70428, 255, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
      sub_29E4E75A8(0);
      sub_29E4E7560(&qword_2A1A6F238, 255, sub_29E4E75A8, MEMORY[0x29EDC9A70]);
      v34 = v44;
      v35 = v47;
      sub_29E4FCC70();
      v36 = v40;
      MEMORY[0x29ED8B070](v28, v33, v34, v31);
      _Block_release(v31);

      (*(v46 + 8))(v34, v35);
      (*(v43 + 8))(v33, v45);
      (v50)(v28, v29);

      sub_29E4A1754(v57);
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_29E4FCDE0();
  __break(1u);
  return result;
}

uint64_t sub_29E4E7548(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4E7560(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_29E4E75A8(uint64_t a1)
{
  if (!qword_2A1A6F240)
  {
    sub_29E4FC560();
    v1 = sub_29E4FC800();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F240);
    }
  }
}

uint64_t sub_29E4E7600(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2A1C733A0](v1, 32, 7);
}

void sub_29E4E7650(uint64_t a1)
{
  if (!qword_2A184BB60)
  {
    sub_29E4A2AD8(255, &qword_2A1A708D0, 0x29EDBACE0);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BB60);
    }
  }
}

uint64_t sub_29E4E76C4@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v40 = a3;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E82C8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_29E4FB1E0();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v15 = [a1 identifier];
  sub_29E4FB230();

  v16 = sub_29E4FB200();
  v18 = v17;
  v19 = *(v6 + 8);
  v37 = v5;
  v35 = v19;
  v19(v8, v5);
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_29E4FCD70();
  MEMORY[0x29ED8AD70](0xD000000000000024, 0x800000029E502DA0);
  MEMORY[0x29ED8AD70](v16, v18);

  MEMORY[0x29ED8AD70](0xD000000000000012, 0x800000029E502DD0);
  v20 = sub_29E4FC6B0();

  v39 = a2;
  v21 = [a2 objectForKey_];

  if (v21)
  {
    sub_29E4FCC50();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (*(&v42 + 1))
  {
    v22 = swift_dynamicCast();
    (*(v13 + 56))(v11, v22 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v23 = *(v13 + 32);
      v24 = v38;
      v23(v38, v11, v12);
      v25 = [v36 identifier];
      sub_29E4FB230();

      v26 = sub_29E4FB200();
      v28 = v27;
      v35(v8, v37);
      *&v43[0] = 0;
      *(&v43[0] + 1) = 0xE000000000000000;
      sub_29E4FCD70();

      *&v43[0] = 0xD000000000000024;
      *(&v43[0] + 1) = 0x800000029E502DA0;
      MEMORY[0x29ED8AD70](v26, v28);

      MEMORY[0x29ED8AD70](0x746E756F632ELL, 0xE600000000000000);
      v29 = sub_29E4FC6B0();

      v30 = [v39 integerForKey_];

      v31 = v40;
      v23(v40, v24, v12);
      v32 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
      *&v31[*(v32 + 20)] = v30;
      return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    }
  }

  else
  {
    sub_29E4E8400(v43, sub_29E4AD258);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_29E4E7C00(v11, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  v34 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  return (*(*(v34 - 8) + 56))(v40, 1, 1, v34);
}

uint64_t sub_29E4E7C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4E82C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for CloudSyncFeedItemDismissInfo(uint64_t a1)
{
  result = qword_2A1A70A38;
  if (!qword_2A1A70A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4E7CD0(uint64_t a1)
{
  result = sub_29E4FB1E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E4E7D44(uint64_t *a1, int a2)
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

uint64_t sub_29E4E7D8C(uint64_t result, int a2, int a3)
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

uint64_t sub_29E4E7DD8(uint64_t a1)
{
  v2 = v1;
  sub_29E4E82C8(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E4FB240();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*v2 identifier];
  sub_29E4FB230();

  v29 = sub_29E4FB200();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v30 = a1;
  sub_29E4E831C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29E4E7C00(v6, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
    v18 = *(v2 + 8);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD000000000000024, 0x800000029E502DA0);
    v19 = v29;
    MEMORY[0x29ED8AD70](v29, v17);
    MEMORY[0x29ED8AD70](0xD000000000000012, 0x800000029E502DD0);
    v20 = sub_29E4FC6B0();

    [v18 removeObjectForKey_];

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29E4FCD70();

    v31 = 0xD000000000000024;
    v32 = 0x800000029E502DA0;
    MEMORY[0x29ED8AD70](v19, v17);

    MEMORY[0x29ED8AD70](0x746E756F632ELL, 0xE600000000000000);
    v21 = sub_29E4FC6B0();

    [v18 removeObjectForKey_];

    return sub_29E4E7C00(v30, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
  }

  else
  {
    sub_29E4E839C(v6, v10);
    v23 = *(v2 + 8);
    v24 = sub_29E4FB1A0();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD000000000000024, 0x800000029E502DA0);
    v25 = v29;
    MEMORY[0x29ED8AD70](v29, v17);
    MEMORY[0x29ED8AD70](0xD000000000000012, 0x800000029E502DD0);
    v26 = sub_29E4FC6B0();

    [v23 setObject:v24 forKey:v26];

    v27 = *&v10[*(v7 + 20)];
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29E4FCD70();

    v31 = 0xD000000000000024;
    v32 = 0x800000029E502DA0;
    MEMORY[0x29ED8AD70](v25, v17);

    MEMORY[0x29ED8AD70](0x746E756F632ELL, 0xE600000000000000);
    v28 = sub_29E4FC6B0();

    [v23 setInteger:v27 forKey:v28];

    sub_29E4E7C00(v30, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
    return sub_29E4E8400(v10, type metadata accessor for CloudSyncFeedItemDismissInfo);
  }
}

void sub_29E4E82C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4E831C(uint64_t a1, uint64_t a2)
{
  sub_29E4E82C8(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E839C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E8400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4E8460(uint64_t a1)
{
  v3 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v20[-1] - v11;
  sub_29E4A76F0(v1, v20);
  v13 = sub_29E4A1710(v20, v20[3]);
  sub_29E4E76C4(*v13, v13[1], v12);
  v14 = 0;
  if (!(*(v4 + 48))(v12, 1, v3))
  {
    v14 = *&v12[*(v3 + 20)];
  }

  sub_29E4E956C(v12);
  sub_29E4A1754(v20);
  v15 = sub_29E4FB1E0();
  result = (*(*(v15 - 8) + 16))(v6, a1, v15);
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *&v6[*(v3 + 20)] = v14 + 1;
    sub_29E4E95F8(v6, v10);
    (*(v4 + 56))(v10, 0, 1, v3);
    v17 = *(v1 + 24);
    v18 = *(v1 + 32);
    sub_29E4A9F54(v1, v17);
    (*(v18 + 16))(v10, v17, v18);
    return sub_29E4E965C(v6);
  }

  return result;
}

uint64_t sub_29E4E86CC()
{
  v1 = sub_29E4FB1E0();
  v120 = *(v1 - 8);
  v121 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v116 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E4FAFF0();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v115 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FC3C0();
  v6 = *(v5 - 8);
  v123 = v5;
  v124 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v113 = &v108 - v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v108 - v13;
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v114 = &v108 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v108 - v17;
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v21 = &v108 - v20;
  v22 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v111 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v112 = &v108 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v110 = &v108 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v108 - v31;
  v33 = MEMORY[0x2A1C7C4A8](v30);
  v35 = &v108 - v34;
  MEMORY[0x2A1C7C4A8](v33);
  v37 = &v108 - v36;
  v38 = v0[3];
  v119 = v0;
  v39 = sub_29E4A1710(v0, v38);
  sub_29E4E76C4(*v39, v39[1], v21);
  v40 = *(v23 + 48);
  v122 = v22;
  if (v40(v21, 1, v22) == 1)
  {
    sub_29E4E956C(v21);
    sub_29E4FC390();
    v41 = sub_29E4FC3B0();
    v42 = sub_29E4FC940();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_29E494000, v41, v42, "No dismiss info yet, show in summaryFeed", v43, 2u);
      MEMORY[0x29ED8BDB0](v43, -1, -1);
    }

    (*(v124 + 8))(v9, v123);
    return 1;
  }

  sub_29E4E839C(v21, v37);
  sub_29E4FC390();
  sub_29E4E95F8(v37, v35);
  v44 = sub_29E4FC3B0();
  v45 = sub_29E4FC940();
  v46 = os_log_type_enabled(v44, v45);
  v108 = v14;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v109 = v37;
    v49 = v48;
    v126[0] = v48;
    *v47 = 136446210;
    sub_29E4E95F8(v35, v32);
    v50 = sub_29E4FC700();
    v52 = v51;
    sub_29E4E965C(v35);
    v53 = sub_29E4F68F4(v50, v52, v126);
    v54 = v123;

    *(v47 + 4) = v53;
    _os_log_impl(&dword_29E494000, v44, v45, "Evaluate override hideInDiscover for dismiss info %{public}s", v47, 0xCu);
    sub_29E4A1754(v49);
    MEMORY[0x29ED8BDB0](v49, -1, -1);
    MEMORY[0x29ED8BDB0](v47, -1, -1);

    v37 = v109;
    v55 = *(v124 + 8);
    v55(v18, v54);
  }

  else
  {

    sub_29E4E965C(v35);
    v55 = *(v124 + 8);
    v55(v18, v123);
  }

  type metadata accessor for DefaultCloudSyncAlertBackoffAlgorithm(0);
  sub_29E4E9704(0, &qword_2A184BBD0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v56 = sub_29E4FB290();
  v57 = *(v56 - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_29E4FDE40;
  (*(v57 + 104))(v59 + v58, *MEMORY[0x29EDB9CB8], v56);
  sub_29E4E9768(v59);
  swift_setDeallocating();
  (*(v57 + 8))(v59 + v58, v56);
  swift_deallocClassInstance();
  v60 = v116;
  sub_29E4FB1D0();
  v61 = v115;
  sub_29E4FB260();

  (*(v120 + 8))(v60, v121);
  v62 = sub_29E4FAFE0();
  LOBYTE(v59) = v63;
  (*(v117 + 8))(v61, v118);
  if (v59)
  {
    v64 = v113;
    sub_29E4FC390();
    v65 = v111;
    sub_29E4E95F8(v37, v111);
    v66 = sub_29E4FC3B0();
    v67 = v37;
    v68 = sub_29E4FC920();
    if (os_log_type_enabled(v66, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v126[0] = v70;
      *v69 = 136446210;
      sub_29E4E9B10(&qword_2A184B7E8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
      v71 = sub_29E4FCF60();
      v73 = v72;
      sub_29E4E965C(v65);
      v74 = sub_29E4F68F4(v71, v73, v126);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_29E494000, v66, v68, "Failed to compute days from last dismissal date %{public}s to current date, show in discover", v69, 0xCu);
      sub_29E4A1754(v70);
      MEMORY[0x29ED8BDB0](v70, -1, -1);
      MEMORY[0x29ED8BDB0](v69, -1, -1);
    }

    else
    {

      sub_29E4E965C(v65);
    }

    v55(v64, v123);
    v78 = v67;
    goto LABEL_17;
  }

  v75 = *&v37[*(v122 + 20)];
  if (v75 == 2)
  {
    v76 = v114;
    v77 = v112;
    if (v62 < 30)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v76 = v114;
  v77 = v112;
  if (v75 == 1)
  {
    if (v62 < 7)
    {
      goto LABEL_26;
    }

LABEL_24:
    sub_29E4FC390();
    v80 = v110;
    sub_29E4E95F8(v37, v110);
    v81 = v37;
    v82 = sub_29E4FC3B0();
    v83 = sub_29E4FC940();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v109 = v81;
      v85 = v84;
      v86 = swift_slowAlloc();
      *v85 = 136446466;
      v125 = *(v80 + *(v122 + 20));
      v126[0] = v86;
      v87 = sub_29E4FCF60();
      v89 = v88;
      sub_29E4E965C(v80);
      v90 = sub_29E4F68F4(v87, v89, v126);

      *(v85 + 4) = v90;
      *(v85 + 12) = 2082;
      v125 = v62;
      v91 = sub_29E4FCF60();
      v93 = sub_29E4F68F4(v91, v92, v126);

      *(v85 + 14) = v93;
      _os_log_impl(&dword_29E494000, v82, v83, "Dismissed %{public}s times and %{public}s days passed, show in discover", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v86, -1, -1);
      MEMORY[0x29ED8BDB0](v85, -1, -1);

      v55(v114, v123);
      v78 = v109;
    }

    else
    {

      sub_29E4E965C(v80);
      v55(v76, v123);
      v78 = v81;
    }

LABEL_17:
    sub_29E4E965C(v78);
    return 1;
  }

  if (v75 >= 3 && v62 >= 90)
  {
    goto LABEL_24;
  }

LABEL_26:
  v94 = v108;
  sub_29E4FC390();
  sub_29E4E95F8(v37, v77);
  v95 = v37;
  v96 = sub_29E4FC3B0();
  v97 = sub_29E4FC940();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v98 = 136446466;
    v125 = *(v77 + *(v122 + 20));
    v126[0] = v99;
    v109 = v95;
    v100 = sub_29E4FCF60();
    v102 = v101;
    sub_29E4E965C(v77);
    v103 = sub_29E4F68F4(v100, v102, v126);

    *(v98 + 4) = v103;
    *(v98 + 12) = 2082;
    v125 = v62;
    v104 = sub_29E4FCF60();
    v106 = sub_29E4F68F4(v104, v105, v126);

    *(v98 + 14) = v106;
    _os_log_impl(&dword_29E494000, v96, v97, "Dismissed %{public}s times but only %{public}s days passed, keep current hideInDiscover state", v98, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v99, -1, -1);
    MEMORY[0x29ED8BDB0](v98, -1, -1);

    v55(v94, v123);
    v107 = v109;
  }

  else
  {

    sub_29E4E965C(v77);
    v55(v94, v123);
    v107 = v95;
  }

  sub_29E4E965C(v107);
  return 0;
}

uint64_t sub_29E4E9398()
{
  v0 = sub_29E4FB1E0();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB1D0();
  sub_29E4E8460(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_29E4E9460()
{
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_29E4A9F54(v0, v5);
  return (*(v6 + 16))(v3, v5, v6);
}

uint64_t sub_29E4E956C(uint64_t a1)
{
  sub_29E4E9704(0, &qword_2A1A70A30, type metadata accessor for CloudSyncFeedItemDismissInfo, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E4E95F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E965C(uint64_t a1)
{
  v2 = type metadata accessor for CloudSyncFeedItemDismissInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DefaultCloudSyncAlertBackoffAlgorithm(uint64_t a1)
{
  result = qword_2A1A70978;
  if (!qword_2A1A70978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4E9704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4E9768(uint64_t a1)
{
  v2 = sub_29E4FB290();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29E4E9A7C(0);
    v9 = sub_29E4FCD40();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_29E4E9B10(&qword_2A184BBE0, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
      v16 = sub_29E4FC650();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_29E4E9B10(&qword_2A184BBE8, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D10]);
          v23 = sub_29E4FC680();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29E4E9A7C(uint64_t a1)
{
  if (!qword_2A184BBD8)
  {
    sub_29E4FB290();
    sub_29E4E9B10(&qword_2A184BBE0, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
    v1 = sub_29E4FCD50();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BBD8);
    }
  }
}

uint64_t sub_29E4E9B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E4E9B80(uint64_t a1)
{
  result = sub_29E4E9C04();
  if (v2 <= 0x3F)
  {
    result = sub_29E4FB2A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29E4E9C04()
{
  result = qword_2A1A70988;
  if (!qword_2A1A70988)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A70988);
  }

  return result;
}

uint64_t sub_29E4E9C68(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  sub_29E4EBF84(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v2[13] = swift_task_alloc();
  v3 = sub_29E4FB460();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_29E4FBAA0();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_29E4FC3C0();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4E9E7C, 0, 0);
}

uint64_t sub_29E4E9E7C()
{
  v88 = v0;
  swift_getObjectType();
  sub_29E4EBFE8(&qword_2A1A6FEF8, v1, type metadata accessor for SharingEntriesExecutor, &unk_29E500F38);
  sub_29E4FB310();
  sub_29E4EB12C(0);
  sub_29E4FC2A0();
  v2 = v0[8];
  sub_29E4FC350();

  v3 = sub_29E4FC3B0();
  v4 = sub_29E4FC940();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  v7 = v0[22];
  v82 = v0[21];
  v72 = v2;
  if (v5)
  {
    v73 = v0[18];
    v76 = v4;
    v8 = v0[12];
    v78 = v0[24];
    v9 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v86 = v74;
    *v9 = 136446467;
    v0[7] = v8;
    swift_getMetatypeMetadata();
    v10 = sub_29E4FC700();
    v12 = sub_29E4F68F4(v10, v11, &v86);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2081;
    v13 = MEMORY[0x29ED8AE00](v2, v73);
    v15 = sub_29E4F68F4(v13, v14, &v86);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_29E494000, v3, v76, "[%{public}s]: Running work plan with entries %{private}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v74, -1, -1);
    MEMORY[0x29ED8BDB0](v9, -1, -1);

    v16 = *(v7 + 8);
    v16(v78, v82);
  }

  else
  {

    v16 = *(v7 + 8);
    v16(v6, v82);
  }

  v17 = sub_29E4FB300();
  v0[25] = v17;
  v19 = v18;
  v71 = v17;
  v69 = v16;
  v20 = v0[11];
  sub_29E4FB940();
  sub_29E4FB2B0();
  sub_29E4FB5F0();
  swift_allocObject();
  v83 = sub_29E4FB5C0();
  v0[26] = v83;
  v79 = *(v20 + 32);
  v21 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];
  v80 = v21;
  v0[27] = v21;
  v24 = v2;
  v77 = *(v2 + 16);
  if (v77)
  {
    v25 = 0;
    v26 = v0[19];
    v27 = v0[15];
    v75 = v19;
    v28 = (v27 + 48);
    v70 = v27;
    v29 = (v27 + 32);
    v30 = MEMORY[0x29EDCA190];
    v31 = v71;
    while (v25 < *(v24 + 16))
    {
      v32 = v0[20];
      v33 = v0[13];
      (*(v26 + 16))(v32, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v0[18]);
      sub_29E4B7568(v32, v79, v80, v83, v31, v75, 0, 0xE000000000000000, v33);
      v35 = v0[13];
      v34 = v0[14];
      (*(v26 + 8))(v0[20], v0[18]);
      if ((*v28)(v35, 1, v34) == 1)
      {
        v21 = sub_29E4DE950(v0[13]);
      }

      else
      {
        v37 = v0[16];
        v36 = v0[17];
        v38 = v0[14];
        v39 = *v29;
        (*v29)(v36, v0[13], v38);
        v39(v37, v36, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_29E4A7D34(0, v30[2] + 1, 1, v30);
        }

        v41 = v30[2];
        v40 = v30[3];
        if (v41 >= v40 >> 1)
        {
          v30 = sub_29E4A7D34((v40 > 1), v41 + 1, 1, v30);
        }

        v42 = v0[16];
        v43 = v0[14];
        v30[2] = v41 + 1;
        v21 = (v39)(v30 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v41, v42, v43);
        v31 = v71;
        v24 = v72;
      }

      if (v77 == ++v25)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x29EDCA190];
LABEL_16:
    v44 = v0[15];

    sub_29E4EBF84(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_29E4FDE40;
    sub_29E4B6FEC(v46 + v45);
    v86 = v30;

    sub_29E4A86D0(v46);
    v47 = v86;
    v0[28] = v86;
    sub_29E4FC350();

    v48 = sub_29E4FC3B0();
    v49 = sub_29E4FC940();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[23];
    v52 = v0[21];
    if (v50)
    {
      v84 = v0[23];
      v53 = v0[12];
      v54 = swift_slowAlloc();
      v81 = v52;
      v55 = v30;
      v56 = swift_slowAlloc();
      v85 = v56;
      v86 = v53;
      *v54 = 136446467;
      swift_getMetatypeMetadata();
      v57 = sub_29E4FC700();
      v59 = sub_29E4F68F4(v57, v58, &v85);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2081;
      v60 = v55[2];

      v0[9] = v60;
      v86 = sub_29E4FCF60();
      v87 = v61;
      MEMORY[0x29ED8AD70](0x656C69666F727020, 0xE900000000000073);
      v62 = sub_29E4F68F4(v86, v87, &v85);

      *(v54 + 14) = v62;
      _os_log_impl(&dword_29E494000, v48, v49, "[%{public}s]: Submitting profile entries feed items: %{private}s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v56, -1, -1);
      MEMORY[0x29ED8BDB0](v54, -1, -1);

      v64 = v81;
      v63 = v84;
    }

    else
    {

      v63 = v51;
      v64 = v52;
    }

    v69(v63, v64);
    v65 = v0[5];
    v66 = v0[6];
    sub_29E4A1710(v0 + 2, v65);
    v67 = swift_task_alloc();
    v0[29] = v67;
    *v67 = v0;
    v67[1] = sub_29E4EA73C;
    v21 = v47;
    v22 = v65;
    v23 = v66;
  }

  return MEMORY[0x2A1C64D80](v21, v22, v23);
}

uint64_t sub_29E4EA73C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_29E4EA934;
  }

  else
  {
    v2 = sub_29E4EA850;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4EA850()
{
  v1 = v0[27];

  swift_unknownObjectRelease();
  sub_29E4A1754(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29E4EA934()
{
  v1 = v0[27];

  swift_unknownObjectRelease();
  sub_29E4A1754(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29E4EAA04(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E4FC110();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E4D0254();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E4FDE50;
  sub_29E4FC0F0();
  sub_29E4EBF84(0, &qword_2A1A6F0C0, sub_29E4D01F0, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E4FDE40;
  *(v6 + 56) = sub_29E4FC2E0();
  *(v6 + 64) = sub_29E4EBFE8(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
  sub_29E4A197C((v6 + 32));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  sub_29E4FC140();
  swift_allocObject();
  *(v5 + 32) = sub_29E4FC120();
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v10[3] = swift_getObjectType();
  v10[4] = *(v7 + 8);
  v10[0] = v8;
  sub_29E4EBFE8(&qword_2A1A6FFC8, 255, type metadata accessor for SharingEntriesExecutor.Planner, &unk_29E500E90);
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();

  return sub_29E4A1754(v10);
}

uint64_t sub_29E4EACEC()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_signals;
  v2 = sub_29E4FC190();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4EADA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4EAE24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4EBFE8(qword_2A1A6FFD0, 255, type metadata accessor for SharingEntriesExecutor.Planner, &unk_29E500EF8);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4EAF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4EBFE8(qword_2A1A6FFD0, 255, type metadata accessor for SharingEntriesExecutor.Planner, &unk_29E500EF8);

  return a5(a1, a2, v8, v9);
}

uint64_t type metadata accessor for SharingEntriesExecutor.Planner(uint64_t a1)
{
  result = qword_2A1A6FFB8;
  if (!qword_2A1A6FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4EB038(uint64_t a1)
{
  result = sub_29E4FC190();
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

void sub_29E4EB12C(uint64_t a1)
{
  if (!qword_2A1A70490)
  {
    sub_29E4EBF84(255, &qword_2A1A6F258, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9A40]);
    sub_29E4EB244(&qword_2A1A6F248, &unk_2A1A70588, MEMORY[0x29EDC1A50], MEMORY[0x29EDC9A78]);
    sub_29E4EB244(&qword_2A1A6F250, &qword_2A1A70598, MEMORY[0x29EDC1A40], MEMORY[0x29EDC9A48]);
    v1 = sub_29E4FC2B0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70490);
    }
  }
}

uint64_t sub_29E4EB244(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E4EBF84(255, &qword_2A1A6F258, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9A40]);
    sub_29E4EBFE8(a2, 255, MEMORY[0x29EDC1A38], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4EB308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E4E9C68(a1);
}

uint64_t sub_29E4EB39C(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  v11 = *(v1 + 16);
  swift_unknownObjectRetain();
  v8 = [v7 profileIdentifier];
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for SharingEntriesExecutor.Planner(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  *(v9 + OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_profileIdentifier) = v8;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtCC8Profiles22SharingEntriesExecutor7Planner_signals, v6, v3);
  return v9;
}

uint64_t sub_29E4EB4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4EBFE8(qword_2A1A6FF00, a2, type metadata accessor for SharingEntriesExecutor, &unk_29E500F88);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29E4EB5F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_29E4FBAA0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_29E4EB894()
{
  v0 = sub_29E4FC3C0();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v31 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29E4FC1C0();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FC1E0();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E4FC230();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E4EBF84(0, &qword_2A1A704D8, type metadata accessor for SharingEntryProfileInformationInputSignal, MEMORY[0x29EDC34D8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v28 - v11;
  sub_29E4FC2F0();
  type metadata accessor for SharingEntryProfileInformationInputSignal();
  sub_29E4FC180();
  sub_29E4EBFE8(&unk_2A1A6F630, 255, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF930);
  sub_29E4FC2C0();
  (*(v10 + 8))(v12, v9);
  v13 = v33;
  if (!v33)
  {
    goto LABEL_5;
  }

  sub_29E4EBF84(0, &qword_2A1A6F0C8, sub_29E4EB12C, MEMORY[0x29EDC9E90]);
  sub_29E4EB12C(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E4FDE40;
  sub_29E4FC220();
  v15 = v32;
  (*(v2 + 104))(v4, *MEMORY[0x29EDC3500], v32);
  sub_29E4FC1D0();
  (*(v2 + 8))(v4, v15);
  v16 = *(v13 + 16);
  if (!v16)
  {

    v17 = MEMORY[0x29EDCA190];
    goto LABEL_9;
  }

  v17 = sub_29E4A8490(*(v13 + 16), 0);
  v18 = *(sub_29E4FBAA0() - 8);
  v19 = sub_29E4EB5F0(&v33, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v13);
  sub_29E4C4CA8(v33);
  if (v19 == v16)
  {
LABEL_9:
    v33 = v17;
    sub_29E4EBF84(0, &qword_2A1A6F258, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9A40]);
    sub_29E4EB244(&qword_2A1A6F248, &unk_2A1A70588, MEMORY[0x29EDC1A50], MEMORY[0x29EDC9A78]);
    sub_29E4EB244(&qword_2A1A6F250, &qword_2A1A70598, MEMORY[0x29EDC1A40], MEMORY[0x29EDC9A48]);
    sub_29E4FC290();
    return v14;
  }

  __break(1u);
LABEL_5:
  v21 = v29;
  v20 = v30;
  v22 = v31;
  sub_29E4FC350();
  v23 = sub_29E4FC3B0();
  v24 = sub_29E4FC940();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_29E4F68F4(0xD00000000000001ELL, 0x800000029E502E80, &v33);
    _os_log_impl(&dword_29E494000, v23, v24, "[%{public}s]: No sharing entry information anchor", v25, 0xCu);
    sub_29E4A1754(v26);
    MEMORY[0x29ED8BDB0](v26, -1, -1);
    MEMORY[0x29ED8BDB0](v25, -1, -1);
  }

  (*(v21 + 8))(v22, v20);
  return MEMORY[0x29EDCA190];
}

void sub_29E4EBF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4EBFE8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t SummarySharingInformationTileViewController.baseIdentifier.getter()
{
  v1 = (v0 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SummarySharingInformationTileViewController.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SummarySharingInformationTileViewController.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC2A58];
  v3 = sub_29E4FBF70();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SummarySharingInformationTileViewController.syncObserver.setter(uint64_t a1)
{
  v3 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_29E4EC358(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4;
  sub_29E4EF438(0, &qword_2A1A70568, MEMORY[0x29EDC29C0]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = *(v4 + *a1);
  if (v14)
  {
    v15 = *(v4 + *a1);
  }

  else
  {
    sub_29E4FC010();
    a2();
    a3();
    a4();
    v16 = sub_29E4FBEF0();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v17 = objc_allocWithZone(sub_29E4FBF10());
    v18 = sub_29E4FBF00();
    [v18 setTranslatesAutoresizingMaskIntoConstraints_];
    v19 = *(v9 + v13);
    *(v9 + v13) = v18;
    v15 = v18;

    v14 = 0;
  }

  v20 = v14;
  return v15;
}

void *_s8Profiles43SummarySharingInformationTileViewControllerC11shareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0()
{
  v0 = sub_29E4FCBC0();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FCB70();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FCBF0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v24 - v13;
  sub_29E4FCBE0();
  v15 = _UISolariumEnabled();
  v16 = MEMORY[0x29EDC78A0];
  if (!v15)
  {
    v16 = MEMORY[0x29EDC7898];
  }

  (*(v5 + 104))(v7, *v16, v4);
  sub_29E4FCB80();
  v17 = _UISolariumEnabled();
  v18 = MEMORY[0x29EDC78C8];
  if (!v17)
  {
    v18 = MEMORY[0x29EDC78B8];
  }

  (*(v1 + 104))(v3, *v18, v0);
  sub_29E4FCB60();
  v19 = objc_opt_self();
  v20 = [v19 systemBlueColor];
  sub_29E4FCB90();
  v21 = [v19 systemWhiteColor];
  sub_29E4FCBA0();
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  sub_29E4FB050();
  sub_29E4FCBD0();
  sub_29E4A2AD8(0, &unk_2A1A6F160, 0x29EDC7958);
  (*(v9 + 16))(v12, v14, v8);
  v22 = sub_29E4FCC00();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v22 setRole_];
  }

  (*(v9 + 8))(v14, v8);
  return v22;
}

void *_s8Profiles43SummarySharingInformationTileViewControllerC18requestShareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0()
{
  v0 = sub_29E4FCBC0();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FCB70();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FCBF0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v24 - v13;
  sub_29E4FCBE0();
  v15 = _UISolariumEnabled();
  v16 = MEMORY[0x29EDC78A0];
  if (!v15)
  {
    v16 = MEMORY[0x29EDC7898];
  }

  (*(v5 + 104))(v7, *v16, v4);
  sub_29E4FCB80();
  v17 = _UISolariumEnabled();
  v18 = MEMORY[0x29EDC78C8];
  if (!v17)
  {
    v18 = MEMORY[0x29EDC78B8];
  }

  (*(v1 + 104))(v3, *v18, v0);
  sub_29E4FCB60();
  v19 = objc_opt_self();
  v20 = [v19 tertiarySystemFillColor];
  sub_29E4FCB90();
  v21 = [v19 systemBlueColor];
  sub_29E4FCBA0();
  sub_29E4FBE90();
  sub_29E4FBE80();
  sub_29E4FCBD0();
  sub_29E4A2AD8(0, &unk_2A1A6F160, 0x29EDC7958);
  (*(v9 + 16))(v12, v14, v8);
  v22 = sub_29E4FCC00();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v22 setRole_];
  }

  (*(v9 + 8))(v14, v8);
  return v22;
}

id sub_29E4ECC88(uint64_t *a1, SEL *a2, void (*a3)(id))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = *(v3 + qword_2A1A70800);
    v9 = [v8 *a2];
    a3([v8 frame]);
    v10 = [v9 constraintEqualToConstant_];

    v11 = *(v3 + v4);
    *(v3 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

UIImage_optional __swiftcall SummarySharingInformationTileViewController.makeHeaderImage()()
{
  sub_29E4FC010();
  v0 = sub_29E4FBFF0();
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t SummarySharingInformationTileViewController.makeBullets()()
{
  sub_29E4EF3E8(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E500FC0;
  *(v0 + 32) = sub_29E4EC2C8();
  *(v0 + 40) = sub_29E4EC310();
  *(v0 + 48) = sub_29E4EC4F0();
  return v0;
}

uint64_t SummarySharingInformationTileViewController.makeButtons()()
{
  v1 = *(v0 + qword_2A1A70800);
  [v1 addTarget:v0 action:sel_presentNextViewController forControlEvents:64];
  v2 = *(v0 + qword_2A1A707E8);
  [v2 addTarget:v0 action:sel_presentShareSheet_ forControlEvents:64];
  sub_29E4EF3E8(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E4FFE90;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = v1;
  v5 = v2;
  return v3;
}

Swift::Void __swiftcall SummarySharingInformationTileViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E4EF438(0, &qword_2A1A707A0, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v29 - v3;
  sub_29E4ED3FC(0);
  v6 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummarySharingInformationTileViewController(0);
  v36.receiver = v0;
  v36.super_class = v9;
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v10 = sub_29E4FBF30();
  sub_29E4FC010();
  sub_29E4FC000();
  v11 = sub_29E4FC6B0();

  [v10 setText_];

  v12 = sub_29E4FBF20();
  v13 = sub_29E4FBFF0();
  [v12 setImage_];

  sub_29E4FBF40();
  v14 = v35;
  if (v35)
  {
    sub_29E4A2AD8(0, &unk_2A1A6F1B0, 0x29EDBAA98);
    v15 = sub_29E4A1710(v34, v14);
    v16 = *(v14 - 8);
    MEMORY[0x2A1C7C4A8](v15);
    v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_29E4FBE00();
    (*(v16 + 8))(v18, v14);
    v20 = sub_29E4FCAC0();

    sub_29E4A1754(v34);
    v34[0] = v20;
    sub_29E4ED4C8(0);
    sub_29E4EE454(&qword_2A1A70450, sub_29E4ED4C8, MEMORY[0x29EDB8A00]);
    v21 = sub_29E4FC4E0();

    v22 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
    swift_beginAccess();
    *&v1[v22] = v21;

    sub_29E4EDE68();
    if (*&v1[v22])
    {
      v33 = *&v1[v22];
      sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);

      v23 = sub_29E4FCA70();
      v32 = v23;
      v24 = sub_29E4FCA50();
      (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
      sub_29E4ED5B0();
      sub_29E4FC530();
      sub_29E4EEE0C(v4, &qword_2A1A707A0, MEMORY[0x29EDCA298]);

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v27 = ObjectType;
      *(v26 + 16) = v25;
      *(v26 + 24) = v27;
      sub_29E4EE454(&qword_2A1A70460, sub_29E4ED3FC, MEMORY[0x29EDB89E8]);
      v28 = sub_29E4FC540();

      (*(v30 + 8))(v8, v6);
    }

    else
    {
      v28 = 0;
    }

    *&v1[qword_2A1A707E0] = v28;
  }

  else
  {
    __break(1u);
  }
}

void sub_29E4ED3FC(uint64_t a1)
{
  if (!qword_2A1A70458)
  {
    sub_29E4ED4C8(255);
    sub_29E4A2AD8(255, &qword_2A1A70790, 0x29EDCA548);
    sub_29E4EE454(&qword_2A1A70450, sub_29E4ED4C8, MEMORY[0x29EDB8A00]);
    sub_29E4ED5B0();
    v1 = sub_29E4FC400();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70458);
    }
  }
}

void sub_29E4ED4C8(uint64_t a1)
{
  if (!qword_2A1A70448)
  {
    sub_29E4ED530(255);
    v1 = sub_29E4FC430();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70448);
    }
  }
}

void sub_29E4ED530(uint64_t a1)
{
  if (!qword_2A1A6F0A8)
  {
    sub_29E4A2AD8(255, &qword_2A1A70788, 0x29EDBAAA0);
    sub_29E4AD188();
    v1 = sub_29E4FD060();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F0A8);
    }
  }
}

unint64_t sub_29E4ED5B0()
{
  result = qword_2A1A70798;
  if (!qword_2A1A70798)
  {
    sub_29E4A2AD8(255, &qword_2A1A70790, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70798);
  }

  return result;
}

uint64_t type metadata accessor for SummarySharingInformationTileViewController(uint64_t a1)
{
  result = qword_2A1A707A8;
  if (!qword_2A1A707A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4ED664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29E4FC3C0();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4EF438(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v35[-v9];
  v11 = *a1;
  v12 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (v12)
    {
LABEL_9:
      [*&v14[qword_2A1A70800] setEnabled_];
      [*&v14[qword_2A1A707E8] setEnabled_];

      return;
    }

    v15 = v11;
    v16 = [v15 restoreCompletionDate];
    if (v16)
    {
      v17 = v16;
      sub_29E4FB1C0();
      sub_29E4EF3DC(v11);

      v18 = sub_29E4FB1E0();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
      sub_29E4EEE0C(v10, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      goto LABEL_9;
    }

    v19 = sub_29E4FB1E0();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    sub_29E4EEE0C(v10, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    if (![v15 syncEnabled])
    {
LABEL_8:
      sub_29E4EF3DC(v11);
      goto LABEL_9;
    }

    v20 = [v15 errorRequiringUserAction];
    if (v20)
    {

      goto LABEL_8;
    }

    sub_29E4FC360();
    v21 = v15;
    v22 = sub_29E4FC3B0();
    v23 = sub_29E4FC910();
    sub_29E4EF3DC(v11);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v23;
      v25 = v24;
      v37 = swift_slowAlloc();
      v38 = v37;
      *v25 = 136315394;
      v26 = sub_29E4FD0B0();
      v28 = sub_29E4F68F4(v26, v27, &v38);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = [v21 description];
      v30 = sub_29E4FC6F0();
      v32 = v31;

      v33 = sub_29E4F68F4(v30, v32, &v38);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_29E494000, v22, v36, "[%s]: First restore in progress disabling sharing setup buttons %s", v25, 0x16u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v34, -1, -1);
      MEMORY[0x29ED8BDB0](v25, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    [*&v14[qword_2A1A70800] setEnabled_];
    [*&v14[qword_2A1A707E8] setEnabled_];

    sub_29E4EF3DC(v11);
  }
}

void sub_29E4EDAE4(void *a1)
{
  v1 = a1;
  SummarySharingInformationTileViewController.viewDidLoad()();
}

void *sub_29E4EDB2C()
{
  result = sub_29E4FBF40();
  v1 = v10;
  if (v10)
  {
    v2 = sub_29E4A1710(v9, v10);
    v3 = *(v1 - 8);
    MEMORY[0x2A1C7C4A8](v2);
    v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v5);
    v6 = sub_29E4FBE00();
    (*(v3 + 8))(v5, v1);
    sub_29E4FCA00();
    type metadata accessor for SummarySharingInformationTileViewController(0);
    sub_29E4EE454(&qword_2A184BC10, type metadata accessor for SummarySharingInformationTileViewController, &protocol conformance descriptor for SummarySharingInformationTileViewController);
    sub_29E4FBEA0();

    sub_29E4A1754(v8);
    return sub_29E4A1754(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E4EDCD0(void *a1)
{
  v1 = a1;
  sub_29E4EDB2C();
}

uint64_t sub_29E4EDD18(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x29EDC1550];
  sub_29E4EF438(0, &qword_2A184BC08, MEMORY[0x29EDC1550]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v11[-v6];
  swift_unknownObjectRetain();
  v8 = a1;
  sub_29E4FCC50();
  swift_unknownObjectRelease();
  sub_29E4FBF60();
  v9 = sub_29E4FBAD0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_29E4AD310(v12, v11);
  MEMORY[0x29ED8A580](v8, v7, v11);

  sub_29E4AD1FC(v11);
  sub_29E4EEE0C(v7, &qword_2A184BC08, v4);
  return sub_29E4A1754(v12);
}

void sub_29E4EDE68()
{
  v1 = v0;
  v35 = sub_29E4FC6F0();
  v36 = v2;

  MEMORY[0x29ED8AD70](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x29ED8AD70](0x6472616F626E4F2ELL, 0xEF656C6954676E69);

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;

    MEMORY[0x29ED8AD70](0x776569562ELL, 0xE500000000000000);
    v5 = sub_29E4FC6B0();

    [v4 setAccessibilityIdentifier_];

    v6 = &v0[direct field offset for SummarySharingInformationTileViewController.baseIdentifier];
    swift_beginAccess();
    *v6 = v35;
    v6[1] = v36;

    v7 = sub_29E4FBF20();
    sub_29E4EF3E8(0, &qword_2A1A70BD0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29E4FEDE0;
    *(v8 + 32) = v35;
    *(v8 + 40) = v36;
    *(v8 + 48) = 0x6D49726564616548;
    *(v8 + 56) = 0xEB00000000656761;

    v9 = sub_29E4FC7B0();

    v10 = HKUIJoinStringsForAutomationIdentifier();

    [v7 setAccessibilityIdentifier_];
    v11 = sub_29E4FBF30();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29E4FEDE0;
    *(v12 + 32) = v35;
    *(v12 + 40) = v36;
    *(v12 + 48) = 0x6954726564616548;
    *(v12 + 56) = 0xEB00000000656C74;

    v13 = sub_29E4FC7B0();

    v14 = HKUIJoinStringsForAutomationIdentifier();

    [v11 setAccessibilityIdentifier_];
    v15 = sub_29E4EC2C8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29E4FEDE0;
    *(v16 + 32) = v35;
    *(v16 + 40) = v36;
    *(v16 + 48) = 0x6E4F74656C6C7542;
    *(v16 + 56) = 0xE900000000000065;

    v17 = sub_29E4FC7B0();

    v18 = HKUIJoinStringsForAutomationIdentifier();

    [v15 setAccessibilityIdentifier_];
    v19 = sub_29E4EC310();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E4FEDE0;
    *(v20 + 32) = v35;
    *(v20 + 40) = v36;
    *(v20 + 48) = 0x775474656C6C7542;
    *(v20 + 56) = 0xE90000000000006FLL;

    v21 = sub_29E4FC7B0();

    v22 = HKUIJoinStringsForAutomationIdentifier();

    [v19 setAccessibilityIdentifier_];
    v23 = sub_29E4EC4F0();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29E4FEDE0;
    *(v24 + 32) = v35;
    *(v24 + 40) = v36;
    *(v24 + 48) = 0x685474656C6C7542;
    *(v24 + 56) = 0xEB00000000656572;

    v25 = sub_29E4FC7B0();

    v26 = HKUIJoinStringsForAutomationIdentifier();

    [v23 setAccessibilityIdentifier_];
    v27 = *&v1[qword_2A1A70800];
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_29E4FEDE0;
    *(v28 + 32) = v35;
    *(v28 + 40) = v36;
    *(v28 + 48) = 0x7475426572616853;
    *(v28 + 56) = 0xEB000000006E6F74;

    v29 = sub_29E4FC7B0();

    v30 = HKUIJoinStringsForAutomationIdentifier();

    [v27 setAccessibilityIdentifier_];
    v31 = *&v1[qword_2A1A707E8];
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_29E4FEDE0;
    *(v32 + 32) = v35;
    *(v32 + 40) = v36;
    *(v32 + 48) = 0xD000000000000014;
    *(v32 + 56) = 0x800000029E503040;
    v33 = sub_29E4FC7B0();

    v34 = HKUIJoinStringsForAutomationIdentifier();

    [v31 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E4EE454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id SummarySharingInformationTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_29E4FC6B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SummarySharingInformationTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[direct field offset for SummarySharingInformationTileViewController.baseIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[direct field offset for SummarySharingInformationTileViewController.syncObserver] = 0;
  *&v3[qword_2A1A707E0] = 0;
  *&v3[qword_2A1A707D8] = 0;
  *&v3[qword_2A1A707D0] = 0;
  *&v3[qword_2A1A707C8] = 0;
  v7 = qword_2A1A70800;
  *&v3[v7] = _s8Profiles43SummarySharingInformationTileViewControllerC11shareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  v8 = qword_2A1A707E8;
  *&v3[v8] = _s8Profiles43SummarySharingInformationTileViewControllerC18requestShareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  *&v3[qword_2A1A707C0] = 0;
  *&v3[qword_2A1A707B8] = 0;
  if (a2)
  {
    v9 = sub_29E4FC6B0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for SummarySharingInformationTileViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29E4EE630(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29E4FC6F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SummarySharingInformationTileViewController.init(nibName:bundle:)(v5, v7, a4);
}

id SummarySharingInformationTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SummarySharingInformationTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[direct field offset for SummarySharingInformationTileViewController.baseIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[direct field offset for SummarySharingInformationTileViewController.syncObserver] = 0;
  *&v1[qword_2A1A707E0] = 0;
  *&v1[qword_2A1A707D8] = 0;
  *&v1[qword_2A1A707D0] = 0;
  *&v1[qword_2A1A707C8] = 0;
  v4 = qword_2A1A70800;
  *&v1[v4] = _s8Profiles43SummarySharingInformationTileViewControllerC11shareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  v5 = qword_2A1A707E8;
  *&v1[v5] = _s8Profiles43SummarySharingInformationTileViewControllerC18requestShareButton33_A3AF843BA925BBBFD84EE36F96FC978CLLSo8UIButtonCvpfi_0();
  *&v1[qword_2A1A707C0] = 0;
  *&v1[qword_2A1A707B8] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SummarySharingInformationTileViewController(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_29E4EE7EC()
{

  v1 = *(v0 + qword_2A1A707B8);
}

id SummarySharingInformationTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingInformationTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E4EE8E8(uint64_t a1)
{

  v2 = *(a1 + qword_2A1A707B8);
}

uint64_t sub_29E4EE9B8()
{
  v1 = (*v0 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_29E4EEA14(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + direct field offset for SummarySharingInformationTileViewController.baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

Swift::Void __swiftcall SummarySharingInformationTileViewController.displayLoadingState()()
{
  sub_29E4EF438(0, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  v2 = MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v15 - v6;
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = sub_29E4ECC38();
  v11 = *(v0 + qword_2A1A70800);
  [v11 frame];
  [v10 setConstant_];

  v12 = sub_29E4ECC60();
  [v11 frame];
  [v12 setConstant_];

  [*(v0 + qword_2A1A707C0) setActive_];
  [*(v0 + qword_2A1A707B8) setActive_];
  sub_29E4FCC10();
  v13 = sub_29E4FCBF0();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v9, 1, v13))
  {
    sub_29E4EED8C(v9, v4);
    sub_29E4FCC20();
    sub_29E4EEE0C(v9, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    sub_29E4FCBD0();
    sub_29E4FCC20();
  }

  sub_29E4FCC10();
  if (v14(v7, 1, v13))
  {
    sub_29E4EED8C(v7, v4);
    sub_29E4FCC20();
    sub_29E4EEE0C(v7, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    sub_29E4FCBB0();
    sub_29E4FCC20();
  }

  [v11 setEnabled_];
}

uint64_t sub_29E4EED8C(uint64_t a1, uint64_t a2)
{
  sub_29E4EF438(0, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4EEE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4EF438(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall SummarySharingInformationTileViewController.hideLoadingState()()
{
  sub_29E4EF438(0, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  v2 = MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v15 - v6;
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = sub_29E4ECC38();
  [v10 setActive_];

  v11 = sub_29E4ECC60();
  [v11 setActive_];

  v12 = *(v0 + qword_2A1A70800);
  sub_29E4FCC10();
  v13 = sub_29E4FCBF0();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v9, 1, v13))
  {
    sub_29E4EED8C(v9, v4);
    sub_29E4FCC20();
    sub_29E4EEE0C(v9, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    if (qword_2A1A70BD8 != -1)
    {
      swift_once();
    }

    sub_29E4FB050();
    sub_29E4FCBD0();
    sub_29E4FCC20();
  }

  sub_29E4FCC10();
  if (v14(v7, 1, v13))
  {
    sub_29E4EED8C(v7, v4);
    sub_29E4FCC20();
    sub_29E4EEE0C(v7, &qword_2A184BBF8, MEMORY[0x29EDC78D0]);
  }

  else
  {
    sub_29E4FCBB0();
    sub_29E4FCC20();
  }

  [v12 setEnabled_];
}

uint64_t sub_29E4EF18C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC2A58];
  v3 = sub_29E4FBF70();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E4EF24C(uint64_t a1)
{
  v3 = *v1;
  v4 = direct field offset for SummarySharingInformationTileViewController.syncObserver;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

void sub_29E4EF3E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E4EF438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4EF508()
{
  result = sub_29E4FC6B0();
  qword_2A1A70D08 = result;
  return result;
}

uint64_t sub_29E4EF540()
{
  result = sub_29E4FC6B0();
  qword_2A1A70D00 = result;
  return result;
}

uint64_t sub_29E4EF578@<X0>(_BYTE *a1@<X8>)
{
  v21 = sub_29E4FC3C0();
  v3 = *(v21 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v21);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v20 - v5;
  v7 = qword_2A1A70828;
  swift_beginAccess();
  result = sub_29E4F1B98(v1 + v7, v22);
  v9 = v23;
  if (v23)
  {
    v10 = sub_29E4A1710(v22, v23);
    v11 = *(v9 - 8);
    MEMORY[0x2A1C7C4A8](v10);
    v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_29E4FBE10();
    v16 = v15;
    (*(v11 + 8))(v13, v9);
    sub_29E4A1754(v22);
    if (v16 >> 60 == 15)
    {
      sub_29E4FC390();
      v17 = sub_29E4FC3B0();
      v18 = sub_29E4FC930();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_29E494000, v17, v18, "No user data in context found in CloudSyncTileViewController", v19, 2u);
        MEMORY[0x29ED8BDB0](v19, -1, -1);
      }

      (*(v3 + 8))(v6, v21);
      *a1 = 5;
      sub_29E4FB7F0();
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_29E4FAF40();
      swift_allocObject();
      sub_29E4FAF30();
      sub_29E4FB7F0();
      sub_29E4F1AD4(&qword_2A1A705E8, MEMORY[0x29EDC16F8], MEMORY[0x29EDC1708]);
      sub_29E4FAF20();

      return sub_29E4A1B80(v14, v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4EFA38@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_29E4FB1E0();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FBB50();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v37 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v37 - v11;
  v13 = sub_29E4FB7F0();
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v37 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v37 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v37 - v23;
  sub_29E4EF578(&v37 - v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_29E4FBC60();
      }

      else
      {
        sub_29E4FBC20();
      }

      return sub_29E4F2478(v24, MEMORY[0x29EDC16F8]);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_29E4F24D8(v24, v16);
        v26 = *v16;
        if (v26 == 2)
        {
          goto LABEL_20;
        }

        if (v26 == 1)
        {
          sub_29E4FCA10();
          v36 = v40;
          v35 = v41;
          if ((*(v40 + 88))(v7, v41) == *MEMORY[0x29EDC1D40])
          {
            sub_29E4FBC00();
          }

          else
          {
            sub_29E4FBBB0();
            (*(v36 + 8))(v7, v35);
          }

          return sub_29E4F2478(v24, MEMORY[0x29EDC16F8]);
        }

        if (*v16)
        {
LABEL_20:
          sub_29E4FBBA0();
        }

        else
        {
          sub_29E4FBB90();
        }
      }

      else
      {
        sub_29E4F24D8(v24, v19);
        v32 = v38;
        v33 = v19;
        v34 = v39;
        (*(v38 + 32))(v3, v33, v39);
        sub_29E4FBC50();
        (*(v32 + 8))(v3, v34);
      }

      return sub_29E4F2478(v24, MEMORY[0x29EDC16F8]);
    }

    sub_29E4F24D8(v24, v22);
    if (*v22)
    {
      sub_29E4FCA10();
      v28 = v40;
      v27 = v41;
      if ((*(v40 + 88))(v10, v41) == *MEMORY[0x29EDC1D40])
      {
        sub_29E4FBC10();
      }

      else
      {
        sub_29E4FBBD0();
        (*(v28 + 8))(v10, v27);
      }

      return sub_29E4F2478(v24, MEMORY[0x29EDC16F8]);
    }
  }

  sub_29E4F2478(v24, MEMORY[0x29EDC16F8]);
  sub_29E4FCA10();
  v30 = v40;
  v29 = v41;
  if ((*(v40 + 88))(v12, v41) == *MEMORY[0x29EDC1D40])
  {
    return sub_29E4FBBF0();
  }

  sub_29E4FBBC0();
  return (*(v30 + 8))(v12, v29);
}

uint64_t sub_29E4EFEA8()
{
  v1 = v0;
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC360();
  v6 = sub_29E4FC3B0();
  v7 = sub_29E4FC900();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_29E494000, v6, v7, "CloudSyncTileViewController loaded", v8, 2u);
    MEMORY[0x29ED8BDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for CloudSyncTileViewController(0);
  v12.receiver = v1;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  sub_29E4FB050();
  v10 = sub_29E4FC6B0();

  [v1 setTitle_];

  return (*((*MEMORY[0x29EDCA1E8] & *v1) + qword_2A1A70CF0 + 64))();
}

void sub_29E4F013C(void *a1)
{
  v1 = a1;
  sub_29E4EFEA8();
}

uint64_t sub_29E4F0190()
{
  v1 = v0;
  v2 = sub_29E4FBAE0();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FB7F0();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FB240();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CloudSyncResolutionInfo(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4EF578(v11);
  sub_29E4FB1D0();
  sub_29E4FAF70();
  swift_allocObject();
  sub_29E4FAF60();
  sub_29E4F1AD4(&qword_2A184BC28, type metadata accessor for CloudSyncResolutionInfo, &unk_29E500830);
  v39 = v11;
  v12 = sub_29E4FAF50();
  v14 = v13;

  v15 = qword_2A1A70828;
  swift_beginAccess();
  result = sub_29E4F1B98(v1 + v15, &v44);
  v17 = *(&v45 + 1);
  if (*(&v45 + 1))
  {
    v18 = sub_29E4A1710(&v44, *(&v45 + 1));
    v19 = *(v17 - 8);
    MEMORY[0x2A1C7C4A8](v18);
    v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21);
    v22 = sub_29E4FBE00();
    (*(v19 + 8))(v21, v17);
    v23 = [v22 profileIdentifier];

    sub_29E4A1754(&v44);
    v24 = [objc_opt_self() standardUserDefaults];
    if (v14 >> 60 == 15)
    {
      v25 = 0;
      v26 = v12;
    }

    else
    {
      v26 = v12;
      sub_29E4C7648(v12, v14);
      v25 = sub_29E4FB150();
      sub_29E4A1B80(v12, v14);
    }

    v27 = v23;
    v28 = [v23 identifier];
    sub_29E4FB230();

    v29 = sub_29E4FB200();
    v31 = v30;
    (*(v37 + 8))(v8, v38);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD00000000000001DLL, 0x800000029E5028B0);
    MEMORY[0x29ED8AD70](v29, v31);

    MEMORY[0x29ED8AD70](0xD00000000000001CLL, 0x800000029E5028D0);
    v32 = sub_29E4FC6B0();

    [v24 setObject:v25 forKey:v32];

    swift_unknownObjectRelease();
    sub_29E4F1AD4(&qword_2A184BC30, type metadata accessor for CloudSyncTileViewController, &unk_29E501290);
    swift_unknownObjectRetain();
    sub_29E4FBB70();
    v33 = v40;
    sub_29E4EF578(v40);
    sub_29E4FBB60();
    sub_29E4F2478(v33, MEMORY[0x29EDC16F8]);
    sub_29E4FBB00();
    v35 = v41;
    v34 = v42;
    v36 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x29EDC1B98], v43);
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_29E4FBAF0();

    sub_29E4A1B80(v26, v14);
    sub_29E4A7694(&v44, &qword_2A184BC38, &qword_2A184BC40, MEMORY[0x29EDC3A40]);
    (*(v34 + 8))(v35, v36);
    return sub_29E4F2478(v39, type metadata accessor for CloudSyncResolutionInfo);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_29E4F0808(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = &a1[qword_2A1A70828];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = qword_2A1A70830;
  v10 = objc_allocWithZone(sub_29E4FBB80());
  v11 = a4;
  *&a1[v9] = [v10 init];
  if (v7)
  {
    v12 = sub_29E4FC6B0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = a1;
  v15.super_class = type metadata accessor for CloudSyncTileViewController(0);
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, v11);

  return v13;
}

char *sub_29E4F0908(char *a1, uint64_t a2, void *a3)
{
  v5 = &a1[qword_2A1A70828];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = qword_2A1A70830;
  v7 = objc_allocWithZone(sub_29E4FBB80());
  v8 = a3;
  *&a1[v6] = [v7 init];
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CloudSyncTileViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, v8);

  if (v9)
  {
  }

  return v9;
}

void sub_29E4F09CC()
{
  sub_29E4A7694(v0 + qword_2A1A70828, &qword_2A1A70570, &qword_2A1A70578, MEMORY[0x29EDC2808]);
  v1 = *(v0 + qword_2A1A70830);
}

void sub_29E4F0A3C(uint64_t a1)
{
  sub_29E4A7694(a1 + qword_2A1A70828, &qword_2A1A70570, &qword_2A1A70578, MEMORY[0x29EDC2808]);
  v2 = *(a1 + qword_2A1A70830);
}

uint64_t sub_29E4F0B08@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2A1A70828;
  swift_beginAccess();
  return sub_29E4F1B98(v1 + v3, a1);
}

uint64_t sub_29E4F0B60(uint64_t a1)
{
  v3 = qword_2A1A70828;
  swift_beginAccess();
  sub_29E4F1B1C(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    (*((*MEMORY[0x29EDCA1E8] & *v1) + qword_2A1A70CF0 + 64))();
  }

  return sub_29E4A7694(a1, &qword_2A1A70570, &qword_2A1A70578, MEMORY[0x29EDC2808]);
}

uint64_t (*sub_29E4F0C44(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E4F0CA8;
}

uint64_t sub_29E4F0CA8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      return (*((*MEMORY[0x29EDCA1E8] & **(a1 + 24)) + qword_2A1A70CF0 + 64))();
    }
  }

  return result;
}

void sub_29E4F0D4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29E4C5574();
    v2 = sub_29E4FCE20();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_29E4A2C58(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_29E4A2C58(v31, v32);
    v16 = sub_29E4FCCE0();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_29E4A2C58(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_29E4F1018(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E4FBDB0();
  sub_29E4FBDD0();
}

void sub_29E4F10AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissibleCloudSyncTileViewController(0);
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  sub_29E4FB050();
  v1 = sub_29E4FC6B0();

  [v0 setTitle_];
}

void sub_29E4F11D0(void *a1)
{
  v1 = a1;
  sub_29E4F10AC();
}

uint64_t sub_29E4F1224(SEL *a1)
{
  v15 = a1;
  v1 = sub_29E4FBC70();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v14 - v7;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v14 - v9;
  sub_29E4EFA38(&v14 - v9);
  v14 = sub_29E4FBC30();
  v11 = *(v2 + 8);
  v11(v10, v1);
  sub_29E4EFA38(v8);
  sub_29E4FBBE0();
  v11(v8, v1);
  sub_29E4EFA38(v5);
  sub_29E4FBC40();
  v11(v5, v1);
  v12 = [objc_opt_self() *v15];
  sub_29E4FBDC0();
}

id sub_29E4F1444(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    v6 = a4;
    v7 = sub_29E4FC6B0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for DismissibleCloudSyncTileViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29E4F14E8(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for DismissibleCloudSyncTileViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29E4F157C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29E4F15C4()
{
  v1 = v0;
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  sub_29E4FC390();
  v6 = sub_29E4FC3B0();
  v7 = sub_29E4FC940();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_29E494000, v6, v7, "Did dismiss cloud sync alert", v8, 2u);
    MEMORY[0x29ED8BDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_29E4A2AD8(0, &qword_2A184B470, 0x29EDBA088);
  v9 = sub_29E4FC9F0();
  if (qword_2A1A708E0 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A70D08;
  v11 = qword_2A1A70828;
  swift_beginAccess();
  sub_29E4F1B98(v1 + v11, v26);
  v12 = v27;
  if (v27)
  {
    v13 = sub_29E4A1710(v26, v27);
    v14 = *(v12 - 8);
    MEMORY[0x2A1C7C4A8](v13);
    v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
    (*(v14 + 16))(v16);
    v17 = v10;
    v18 = sub_29E4FBE00();
    (*(v14 + 8))(v16, v12);
    v19 = [v18 profileIdentifier];

    sub_29E4F2260(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E4FDE40;
    *(inited + 32) = 0xD000000000000011;
    v21 = inited + 32;
    *(inited + 40) = 0x800000029E5030F0;
    *(inited + 48) = v19;
    v22 = sub_29E4A2968(inited);
    swift_setDeallocating();
    sub_29E4F2478(v21, sub_29E4F22B8);
    sub_29E4A1754(v26);
    sub_29E4F0D4C(v22);

    v23 = objc_allocWithZone(sub_29E4FBAC0());
    v24 = sub_29E4FBAB0();
    [v9 addOperation_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E4F1968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C62C70](a1, WitnessTable);
}

uint64_t sub_29E4F19D4()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29E4FC6F0();

  return v3;
}

uint64_t sub_29E4F1AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E4F1B1C(uint64_t a1, uint64_t a2)
{
  sub_29E4A7494(0, &qword_2A1A70570, &qword_2A1A70578, MEMORY[0x29EDC2808]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4F1B98(uint64_t a1, uint64_t a2)
{
  sub_29E4A7494(0, &qword_2A1A70570, &qword_2A1A70578, MEMORY[0x29EDC2808]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E4F1C14()
{
  v1 = v0;
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v40 - v7 + 72;
  v9 = sub_29E4FB7F0();
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v40 - v13 + 72;
  sub_29E4EF578(v40 - v13 + 72);
  *v12 = 0;
  swift_storeEnumTagMultiPayload();
  v15 = MEMORY[0x29ED89DF0](v14, v12);
  v16 = MEMORY[0x29EDC16F8];
  sub_29E4F2478(v12, MEMORY[0x29EDC16F8]);
  sub_29E4F2478(v14, v16);
  if (v15)
  {
    sub_29E4FC390();
    v17 = sub_29E4FC3B0();
    v18 = sub_29E4FC940();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_29E494000, v17, v18, "Cloud sync flow for iCloud storage full cancelled", v19, 2u);
      MEMORY[0x29ED8BDB0](v19, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    sub_29E4A2AD8(0, &qword_2A184B470, 0x29EDBA088);
    v20 = sub_29E4FC9F0();
    if (qword_2A1A708D8 != -1)
    {
      swift_once();
    }

    v21 = qword_2A1A70D00;
    v22 = qword_2A1A70828;
    swift_beginAccess();
    sub_29E4F1B98(v1 + v22, v40);
    v23 = v41;
    if (v41)
    {
      v24 = sub_29E4A1710(v40, v41);
      v25 = *(v23 - 8);
      MEMORY[0x2A1C7C4A8](v24);
      v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
      (*(v25 + 16))(v27);
      v28 = v21;
      v29 = sub_29E4FBE00();
      (*(v25 + 8))(v27, v23);
      v30 = [v29 profileIdentifier];

      sub_29E4F2260(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29E4FDE40;
      *(inited + 32) = 0xD000000000000011;
      v32 = inited + 32;
      *(inited + 40) = 0x800000029E5030F0;
      *(inited + 48) = v30;
      v33 = sub_29E4A2968(inited);
      swift_setDeallocating();
      sub_29E4F2478(v32, sub_29E4F22B8);
      sub_29E4A1754(v40);
      sub_29E4F0D4C(v33);

      v34 = objc_allocWithZone(sub_29E4FBAC0());
      v35 = sub_29E4FBAB0();
      [v20 addOperation_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29E4FC390();
    v36 = sub_29E4FC3B0();
    v37 = sub_29E4FC940();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_29E494000, v36, v37, "Cloud sync flow cancelled", v38, 2u);
      MEMORY[0x29ED8BDB0](v38, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_29E4F212C()
{
  v0 = sub_29E4FC3C0();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC390();
  v4 = sub_29E4FC3B0();
  v5 = sub_29E4FC940();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_29E494000, v4, v5, "Cloud sync flow completed", v6, 2u);
    MEMORY[0x29ED8BDB0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_29E4F2260(uint64_t a1)
{
  if (!qword_2A184BC18)
  {
    sub_29E4F22B8(255);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BC18);
    }
  }
}

void sub_29E4F22B8(uint64_t a1)
{
  if (!qword_2A184BC20)
  {
    sub_29E4A2AD8(255, &qword_2A1A708D0, 0x29EDBACE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184BC20);
    }
  }
}

uint64_t sub_29E4F2330(const char *a1)
{
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC360();
  v6 = sub_29E4FC3B0();
  v7 = sub_29E4FC900();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_29E494000, v6, v7, a1, v8, 2u);
    MEMORY[0x29ED8BDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_29E4F0190();
}

uint64_t sub_29E4F2478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4F24D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FB7F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4F253C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29E4F3260(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v30[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FB240();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4D6980(&unk_2A24E7930);
  v11 = 0x800000029E5031A0;
  v30[0] = 0xD000000000000017;
  v30[1] = 0x800000029E5031A0;
  sub_29E4FCD00();
  if (!*(a1 + 16) || (v12 = sub_29E49EE90(v31), (v13 & 1) == 0))
  {

    sub_29E4A2628(v31);
LABEL_17:
    v24 = 0xD000000000000017;
LABEL_18:
    sub_29E4F32B8();
    swift_allocError();
    *v25 = v24;
    v25[1] = v11;
    return swift_willThrow();
  }

  sub_29E4AD310(*(a1 + 56) + 32 * v12, v32);
  sub_29E4A2628(v31);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v29 = v8;
  v33 = a2;
  v14 = v30[0];
  v15 = sub_29E4E5B3C();

  if ((v15 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v11 = 0xED00007375746174;
  *v33 = v14;
  sub_29E4D6A30(&unk_2A24E7960);
  strcpy(v30, "SharingStatus");
  HIWORD(v30[1]) = -4864;
  sub_29E4FCD00();
  if (!*(a1 + 16) || (v16 = sub_29E49EE90(v31), (v17 & 1) == 0))
  {

    sub_29E4A2628(v31);
LABEL_22:
    v24 = 0x53676E6972616853;
    goto LABEL_18;
  }

  sub_29E4AD310(*(a1 + 56) + 32 * v16, v32);
  sub_29E4A2628(v31);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v18 = v30[0];
  v19 = sub_29E4E5B3C();

  if ((v19 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v11 = 0xEA0000000000676ELL;
  v20 = v33;
  v33[1] = v18;
  strcpy(v30, "UUIDString");
  BYTE3(v30[1]) = 0;
  HIDWORD(v30[1]) = -369098752;
  sub_29E4FCD00();
  if (!*(a1 + 16) || (v21 = sub_29E49EE90(v31), (v22 & 1) == 0))
  {

    sub_29E4A2628(v31);
    goto LABEL_24;
  }

  sub_29E4AD310(*(a1 + 56) + 32 * v21, v32);
  sub_29E4A2628(v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v24 = 0x6972745344495555;
    goto LABEL_18;
  }

  sub_29E4FB1F0();

  v23 = v29;
  if ((*(v29 + 48))(v6, 1, v7) == 1)
  {
    sub_29E4F330C(v6, sub_29E4F3260);
    goto LABEL_24;
  }

  v27 = *(v23 + 32);
  v27(v10, v6, v7);
  v28 = type metadata accessor for ProfileSharingUserInfo(0);
  return (v27)(v20 + *(v28 + 24), v10, v7);
}

uint64_t sub_29E4F29F4()
{
  sub_29E4FCD70();

  type metadata accessor for ProfileSharingUserInfo(0);
  v0 = sub_29E4FB200();
  MEMORY[0x29ED8AD70](v0);

  MEMORY[0x29ED8AD70](0x6974636572694420, 0xEC000000203A6E6FLL);
  v1 = sub_29E4FCF60();
  MEMORY[0x29ED8AD70](v1);

  MEMORY[0x29ED8AD70](0x676E697261685320, 0xEA0000000000203ALL);
  v2 = sub_29E4FCF60();
  MEMORY[0x29ED8AD70](v2);

  return 0x203A44495555;
}

double sub_29E4F2B7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_29E49ED7C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E4C2E18();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_29E4FB240();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_29E498334((*(v9 + 56) + 40 * v7), a2);
    sub_29E4C16B4(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_29E4F2CA0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_29E49ED7C(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_29E4FB240();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = a2(0);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    a3(v18, v15);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a2(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_29E4F2E68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_29E49EE90(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E4C337C();
      v9 = v11;
    }

    sub_29E4A2628(*(v9 + 48) + 40 * v7);
    sub_29E4A2C58((*(v9 + 56) + 32 * v7), a2);
    sub_29E4C2070(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_29E4F2F0C()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDCA198];
  v25 = MEMORY[0x29EDCA198];
  *&v22 = 0xD000000000000017;
  *(&v22 + 1) = 0x800000029E5031A0;
  sub_29E4FCD00();
  v5 = sub_29E4FBA50();
  if (v6)
  {
    sub_29E4F2E68(v24, &v22);
    sub_29E4F330C(&v22, sub_29E4AD258);
    sub_29E4A2628(v24);
  }

  else
  {
    v23 = MEMORY[0x29EDC9CA8];
    *&v22 = v5;
    sub_29E4A2C58(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v4;
    sub_29E4C26D8(v21, v24, isUniquelyReferenced_nonNull_native);
    sub_29E4A2628(v24);
    v25 = v20;
  }

  strcpy(&v22, "SharingStatus");
  HIWORD(v22) = -4864;
  v8 = MEMORY[0x29EDC99B0];
  sub_29E4FCD00();
  v9 = sub_29E4FB9C0();
  if (v10)
  {
    sub_29E4F2E68(v24, &v22);
    sub_29E4F330C(&v22, sub_29E4AD258);
    sub_29E4A2628(v24);
  }

  else
  {
    v23 = MEMORY[0x29EDC9BA8];
    *&v22 = v9;
    sub_29E4A2C58(&v22, v21);
    v11 = v25;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_29E4C26D8(v21, v24, v12);
    sub_29E4A2628(v24);
    v25 = v20;
  }

  strcpy(&v22, "UUIDString");
  BYTE11(v22) = 0;
  HIDWORD(v22) = -369098752;
  sub_29E4FCD00();
  sub_29E4FBA80();
  v13 = sub_29E4FB200();
  v15 = v14;
  (*(v1 + 8))(v3, v0);
  v23 = v8;
  *&v22 = v13;
  *(&v22 + 1) = v15;
  sub_29E4A2C58(&v22, v21);
  v16 = v25;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v20 = v16;
  sub_29E4C26D8(v21, v24, v17);
  sub_29E4A2628(v24);
  return v20;
}

uint64_t type metadata accessor for ProfileSharingUserInfo(uint64_t a1)
{
  result = qword_2A184BC50;
  if (!qword_2A184BC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4F3260(uint64_t a1)
{
  if (!qword_2A1A70698)
  {
    sub_29E4FB240();
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70698);
    }
  }
}

unint64_t sub_29E4F32B8()
{
  result = qword_2A184BC48;
  if (!qword_2A184BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BC48);
  }

  return result;
}

uint64_t sub_29E4F330C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4F33A4(uint64_t a1)
{
  type metadata accessor for HKSharingMessageDirection(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKSharingStatus(319);
    if (v2 <= 0x3F)
    {
      sub_29E4FB240();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E4F3440(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v16 = a6 & 1;
  sub_29E4F4DEC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E4FEDE0;
  *(inited + 32) = a5;
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  *(inited + 56) = a2 & 1;
  if (a6)
  {
    v18 = MEMORY[0x29EDCA190];

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_29E4A8388(0, *(v18 + 2) + 1, 1, v18);
    }

    v30 = *(v18 + 2);
    v29 = *(v18 + 3);
    if (v30 >= v29 >> 1)
    {
      v18 = sub_29E4A8388((v29 > 1), v30 + 1, 1, v18);
    }

    *(v18 + 2) = v30 + 1;
    *&v18[8 * v30 + 32] = a1;
    v19 = *(v18 + 2);
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_18:
    v25 = 0.0;
    goto LABEL_19;
  }

  v26 = a7;
  v18 = sub_29E4A8388(0, 1, 1, MEMORY[0x29EDCA190]);
  v28 = *(v18 + 2);
  v27 = *(v18 + 3);
  if (v28 >= v27 >> 1)
  {
    v18 = sub_29E4A8388((v27 > 1), v28 + 1, 1, v18);
  }

  *(v18 + 2) = v28 + 1;
  *&v18[8 * v28 + 32] = a5;
  a7 = v26;

  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = *(v18 + 2);
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_4:
  v20 = *(v18 + 4);
  v21 = v19 - 1;
  if (v19 != 1)
  {
    v22 = (v18 + 40);
    do
    {
      v23 = *v22++;
      v24 = v23;
      if (v20 < v23)
      {
        v20 = v24;
      }

      --v21;
    }

    while (v21);
  }

  v25 = v20;
LABEL_19:

  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_29E4FEDE0;
  *(v31 + 32) = a7;
  *(v31 + 40) = a8 & 1;
  *(v31 + 48) = a3;
  *(v31 + 56) = a4 & 1;
  if (a8)
  {
    v32 = MEMORY[0x29EDCA190];

    if (a4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v39 = a7;
    v32 = sub_29E4A8388(0, 1, 1, MEMORY[0x29EDCA190]);
    v41 = *(v32 + 2);
    v40 = *(v32 + 3);
    if (v41 >= v40 >> 1)
    {
      v32 = sub_29E4A8388((v40 > 1), v41 + 1, 1, v32);
    }

    *(v32 + 2) = v41 + 1;
    *&v32[8 * v41 + 32] = v39;

    if (a4)
    {
LABEL_21:
      v33 = *(v32 + 2);
      if (!v33)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_29E4A8388(0, *(v32 + 2) + 1, 1, v32);
  }

  v43 = *(v32 + 2);
  v42 = *(v32 + 3);
  if (v43 >= v42 >> 1)
  {
    v32 = sub_29E4A8388((v42 > 1), v43 + 1, 1, v32);
  }

  *(v32 + 2) = v43 + 1;
  *&v32[8 * v43 + 32] = a3;
  v33 = *(v32 + 2);
  if (v33)
  {
LABEL_22:
    v34 = *(v32 + 4);
    v35 = v33 - 1;
    if (v33 != 1)
    {
      v36 = (v32 + 40);
      do
      {
        v37 = *v36++;
        v38 = v37;
        if (v34 < v37)
        {
          v34 = v38;
        }

        --v35;
      }

      while (v35);
    }
  }

LABEL_36:

  return *&v25;
}

uint64_t sub_29E4F37B8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v9 = a2 | ((a4 & 0x100) >> 8);
  if (a7)
  {
    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v9 & 1 | (*&a1 != *&a6))
  {
    return 1;
  }

  v11 = a4 | ((a4 & 0x100) >> 8);
  v12 = (a9 & v11);
  if (v11)
  {
    v13 = (a9 & v11);
  }

  else
  {
    v13 = *&a3 == *&a8;
  }

  if (a9)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (v14 ^ 1) & 1;
}

uint64_t sub_29E4F3828(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v14 = a5;
  v13[1] = a4;
  sub_29E4F4D88(0, &qword_2A1A6F0F8, MEMORY[0x29EDC9E88]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v13 - v10;
  sub_29E4A1710(a1, a1[3]);
  sub_29E4F4D34();
  sub_29E4FD080();
  v16 = 0;
  sub_29E4FCF10();
  if (!v5)
  {
    v15 = 1;
    sub_29E4FCF10();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_29E4F39B4()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_29E4F39EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000015 && 0x800000029E503220 == a2;
  if (v5 || (sub_29E4FCF80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029E503240 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E4FCF80();

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

uint64_t sub_29E4F3AD0(uint64_t a1)
{
  v2 = sub_29E4F4D34();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4F3B0C(uint64_t a1)
{
  v2 = sub_29E4F4D34();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4F3B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29E4F3440(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  return result;
}

uint64_t sub_29E4F3C38@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_29E4F4B5C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_29E4F3CB0()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 11);
  sub_29E4F51E8(&v1[4]);
  os_unfair_lock_unlock(v1 + 11);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_29E4F3D24()
{
  sub_29E4F3CB0();

  return swift_deallocClassInstance();
}

__n128 sub_29E4F3D7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_29E4F3D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29E4F3DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_29E4F3E3C()
{
  v0 = sub_29E4FAF90();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_29E4FCD00();
  if (!*(v1 + 16) || (v2 = sub_29E49EE90(v7), (v3 & 1) == 0))
  {

    sub_29E4A2628(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_29E4AD310(*(v1 + 56) + 32 * v2, &v8);
  sub_29E4A2628(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    sub_29E4AD1FC(&v8);
    goto LABEL_10;
  }

  sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v5 = 0;
    return v5 & 1;
  }

  v4 = v7[0];
  sub_29E4A2AD8(0, &qword_2A1A708C8, 0x29EDC9738);
  v5 = sub_29E4FCB40();

  return v5 & 1;
}

void sub_29E4F3F8C(uint64_t *a1@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, __int16 a6@<W5>, uint64_t a7@<X8>)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    v22 = a4;
    v23 = a5;
    *(a1 + 25) = 1;
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    if (qword_2A1A708E0 != -1)
    {
      swift_once();
    }

    v13 = qword_2A1A70D08;
    v14 = swift_allocObject();
    swift_weakInit();
    v28 = sub_29E4F5028;
    v29 = v14;
    aBlock = MEMORY[0x29EDCA5F8];
    v25 = 1107296256;
    v26 = sub_29E4F43C8;
    v27 = &unk_2A24E93A8;
    v15 = _Block_copy(&aBlock);

    v16 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();

    v17 = [v11 defaultCenter];
    if (qword_2A1A708D8 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A70D00;
    v19 = swift_allocObject();
    swift_weakInit();
    v28 = sub_29E4F5048;
    v29 = v19;
    aBlock = MEMORY[0x29EDCA5F8];
    v25 = 1107296256;
    v26 = sub_29E4F43C8;
    v27 = &unk_2A24E93D0;
    v20 = _Block_copy(&aBlock);

    v21 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();

    a5 = v23;
    a4 = v22;
  }

  if ((a6 & 0x100) != 0)
  {
    a3 = *a1;
    a4 = *(a1 + 8);
    a5 = a1[2];
    LOBYTE(a6) = *(a1 + 24);
  }

  else
  {
    *a1 = a3;
    *(a1 + 8) = a4 & 1;
    a1[2] = a5;
    *(a1 + 24) = a6 & 1;
  }

  *a7 = a3;
  *(a7 + 8) = a4 & 1;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6 & 1;
}

uint64_t sub_29E4F42A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (sub_29E4F3E3C())
    {
      v4 = *(v3 + 56);
      os_unfair_lock_lock((v4 + 44));
      *(v4 + 16) = CFAbsoluteTimeGetCurrent();
      *(v4 + 24) = 0;
      os_unfair_lock_unlock((v4 + 44));
      swift_getObjectType();
      type metadata accessor for CloudSyncNotificationInputSignal();
      sub_29E4F4FE0(&qword_2A1A6FD00, v5, type metadata accessor for CloudSyncNotificationInputSignal, &unk_29E501480);
      sub_29E4FC280();
    }
  }

  return result;
}

uint64_t sub_29E4F43C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4FAFA0();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_29E4FAF80();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29E4F44BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 56);
    os_unfair_lock_lock((v3 + 44));
    *(v3 + 32) = CFAbsoluteTimeGetCurrent();
    *(v3 + 40) = 0;
    os_unfair_lock_unlock((v3 + 44));
    swift_getObjectType();
    type metadata accessor for CloudSyncNotificationInputSignal();
    sub_29E4F4FE0(&qword_2A1A6FD00, v4, type metadata accessor for CloudSyncNotificationInputSignal, &unk_29E501480);
    sub_29E4FC280();
  }

  return result;
}

void sub_29E4F45CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25) == 1)
  {
    v14 = v5;
    v15 = v4;
    v16 = v3;
    *(a1 + 25) = 0;
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    if (qword_2A1A708E0 != -1)
    {
      swift_once();
    }

    [v12 removeObserver:a2 name:qword_2A1A70D08 object:{0, v7, v6, v14, v15, v16, v2, v8, v9}];

    v13 = [v11 defaultCenter];
    if (qword_2A1A708D8 != -1)
    {
      swift_once();
    }

    [v13 removeObserver:a2 name:qword_2A1A70D00 object:0];
  }
}

void sub_29E4F4740()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock(v1 + 11);
  sub_29E4F4E54(&v1[4]);

  os_unfair_lock_unlock(v1 + 11);
}

uint64_t sub_29E4F479C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4F4FE0(&qword_2A1A6FD00, a2, type metadata accessor for CloudSyncNotificationInputSignal, &unk_29E501480);

  return MEMORY[0x2A1C64680](a1, v3);
}

unint64_t sub_29E4F4854()
{
  result = qword_2A1A6FD20;
  if (!qword_2A1A6FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD20);
  }

  return result;
}

unint64_t sub_29E4F48AC()
{
  result = qword_2A1A6FD08;
  if (!qword_2A1A6FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD08);
  }

  return result;
}

unint64_t sub_29E4F4904()
{
  result = qword_2A1A6FD18;
  if (!qword_2A1A6FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD18);
  }

  return result;
}

unint64_t sub_29E4F495C()
{
  result = qword_2A1A6FD10;
  if (!qword_2A1A6FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD10);
  }

  return result;
}

void *sub_29E4F49FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_29E4F4A7C(a1, a2, a3, a4, v13, a6, a7);
}

void *sub_29E4F4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_29E4F4AFC(0);
  v13 = swift_allocObject();
  *(v13 + 44) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  a5[4] = a1;
  a5[5] = a2;
  a5[6] = a7;
  a5[7] = v13;
  a5[2] = a3;
  a5[3] = a4;
  return a5;
}

void sub_29E4F4AFC(uint64_t a1)
{
  if (!qword_2A1A6F148)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29E4FCDC0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F148);
    }
  }
}

uint64_t sub_29E4F4B5C(void *a1)
{
  sub_29E4F4D88(0, &qword_2A1A6F110, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v14[-v6];
  v8 = a1[3];
  sub_29E4A1710(a1, v8);
  sub_29E4F4D34();
  sub_29E4FD070();
  if (v1)
  {
    sub_29E4A1754(a1);
  }

  else
  {
    v14[31] = 0;
    v8 = sub_29E4FCE90();
    v10 = v9;
    v14[30] = 1;
    sub_29E4FCE90();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    sub_29E4A1754(a1);
    v14[24] = v10 & 1;
    v14[8] = v13 & 1;
  }

  return v8;
}

unint64_t sub_29E4F4D34()
{
  result = qword_2A1A6FD38;
  if (!qword_2A1A6FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD38);
  }

  return result;
}

void sub_29E4F4D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4F4D34();
    v7 = a3(a1, &type metadata for CloudSyncNotificationInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E4F4DEC(uint64_t a1)
{
  if (!qword_2A184BC60)
  {
    sub_29E4F5050(255, &qword_2A184BC68, MEMORY[0x29EDC9AD8]);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BC60);
    }
  }
}

uint64_t sub_29E4F4E70()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 44));
  sub_29E4F4FAC((v1 + 16), &v8);
  os_unfair_lock_unlock((v1 + 44));
  v2 = v8;
  v3 = v9;
  v4 = v10;
  v5 = v11;
  swift_getObjectType();
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_29E4F4FE0(&qword_2A1A6FD00, v6, type metadata accessor for CloudSyncNotificationInputSignal, &unk_29E501480);
  return sub_29E4FC280();
}

uint64_t sub_29E4F4FE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29E4F5030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4F5050(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4F50AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29E4F50E0()
{
  result = qword_2A184BC70;
  if (!qword_2A184BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BC70);
  }

  return result;
}

unint64_t sub_29E4F5138()
{
  result = qword_2A1A6FD28;
  if (!qword_2A1A6FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD28);
  }

  return result;
}

unint64_t sub_29E4F5190()
{
  result = qword_2A1A6FD30;
  if (!qword_2A1A6FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6FD30);
  }

  return result;
}

id sub_29E4F5204(void *a1)
{
  v2 = v1;
  v4 = sub_29E4FB7F0();
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4F6328(0, &qword_2A1A70670, MEMORY[0x29EDC9A98], MEMORY[0x29EDC37D0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v27[-v10];
  if (qword_2A1A705F8 != -1)
  {
    swift_once();
  }

  v12 = sub_29E4A18DC(v8, qword_2A1A70600);
  (*(v9 + 16))(v11, v12, v8);
  sub_29E4FB330();
  (*(v9 + 8))(v11, v8);
  if (v27[15])
  {
    return 0;
  }

  v14 = objc_opt_self();
  result = [v14 sharedBehavior];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = result;
  v16 = [result isiPad];

  if (!v16 || (result = [v14 hasCompletedBuddyWithVersion_], result))
  {
    sub_29E4F24D8(v2, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v18 = *v6;
        if (v18 - 3 >= 3)
        {
          if (v18 >= 2)
          {
            v19 = [a1 profileIdentifier];
            v20 = [v19 type];

            return (v20 == 3);
          }

LABEL_18:
          v24 = [a1 profileIdentifier];
          v25 = [v24 type];

          return (v25 == 1);
        }
      }

      else
      {
        v26 = sub_29E4FB1E0();
        (*(*(v26 - 8) + 8))(v6, v26);
      }

      return 0;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4)
    {
      return 0;
    }

    result = [v14 sharedBehavior];
    if (result)
    {
      v22 = result;
      v23 = [result isiPad];

      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }

      return 0;
    }

LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4F557C()
{
  v1 = sub_29E4FB7F0();
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4F24D8(v0, v3);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result != 3 && result == 4)
    {
      return result;
    }

LABEL_10:
    sub_29E4F6328(0, &qword_2A1A70BD0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E4FDE40;
    *(inited + 32) = sub_29E4FB4F0();
    *(inited + 40) = v7;
    v8 = sub_29E4FB410();
    sub_29E4F611C(inited);
    swift_setDeallocating();
    sub_29E4F618C(inited + 32);
    return v8(v10, 0);
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result != 1)
  {
    v9 = sub_29E4FB1E0();
    return (*(*(v9 - 8) + 8))(v3, v9);
  }

  if (*v3 == 1)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_29E4F571C()
{
  sub_29E4F6328(0, &qword_2A1A70670, MEMORY[0x29EDC9A98], MEMORY[0x29EDC37D0]);
  v1 = v0;
  sub_29E4A19E0(v0, qword_2A1A70600);
  sub_29E4A18DC(v1, qword_2A1A70600);
  sub_29E4FC6F0();
  sub_29E4A9C80();
  sub_29E4FC9B0();
  return sub_29E4FB340();
}

uint64_t sub_29E4F57F0(void *a1, void *a2)
{
  v4 = sub_29E4FB2A0();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FAFF0();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_29E4FC3C0();
  v8 = *(v84 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v84);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v75 = &v70 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v76 = &v70 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v70 - v16;
  sub_29E4F626C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_29E4FB1E0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v77 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v70 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v70 - v28;
  if ([a1 type] == 3)
  {
    return 1;
  }

  v74 = v8;
  v31 = a2[3];
  v32 = a2[4];
  sub_29E4A1710(a2, v31);
  (*(v32 + 8))(v31, v32);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_29E4F61E0(v20);
    sub_29E4FC390();
    v33 = sub_29E4FC3B0();
    v34 = sub_29E4FC940();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_29E494000, v33, v34, "App has not launched yet, skip show error alert", v35, 2u);
      MEMORY[0x29ED8BDB0](v35, -1, -1);
    }

    (*(v74 + 8))(v11, v84);
    return 0;
  }

  v36 = v21;
  v37 = v29;
  (*(v22 + 32))(v29, v20, v36);
  sub_29E4FC390();
  (*(v22 + 16))(v27, v29, v36);
  v38 = sub_29E4FC3B0();
  v39 = sub_29E4FC940();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v73 = v36;
    v42 = v41;
    v85 = v41;
    *v40 = 136315138;
    sub_29E4F62D0();
    v43 = sub_29E4FCF60();
    v45 = v44;
    v46 = *(v22 + 8);
    v72 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v27;
    v48 = v46;
    v46(v47, v73);
    v49 = sub_29E4F68F4(v43, v45, &v85);
    v37 = v29;

    *(v40 + 4) = v49;
    _os_log_impl(&dword_29E494000, v38, v39, "App first launch is %s", v40, 0xCu);
    sub_29E4A1754(v42);
    v50 = v42;
    v36 = v73;
    MEMORY[0x29ED8BDB0](v50, -1, -1);
    MEMORY[0x29ED8BDB0](v40, -1, -1);
  }

  else
  {

    v51 = *(v22 + 8);
    v72 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v27;
    v48 = v51;
    v51(v52, v36);
  }

  v71 = *(v74 + 8);
  v71(v17, v84);
  v53 = v79;
  sub_29E4FB280();
  sub_29E4F626C(0, &qword_2A184BBD0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v54 = sub_29E4FB290();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_29E4FDE40;
  (*(v55 + 104))(v57 + v56, *MEMORY[0x29EDB9CB8], v54);
  sub_29E4E9768(v57);
  swift_setDeallocating();
  (*(v55 + 8))(v57 + v56, v54);
  swift_deallocClassInstance();
  v58 = v77;
  sub_29E4FB1D0();
  v59 = v78;
  sub_29E4FB260();

  v48(v58, v36);
  (*(v82 + 8))(v53, v83);
  v60 = sub_29E4FAFE0();
  LOBYTE(v57) = v61;
  (*(v80 + 8))(v59, v81);
  if (v57)
  {
LABEL_18:
    v48(v37, v36);
    return 0;
  }

  if (v60 < 1)
  {
    v66 = v75;
    sub_29E4FC390();
    v67 = sub_29E4FC3B0();
    v68 = sub_29E4FC940();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_29E494000, v67, v68, "Less than a day since app first launch, skip show error alert", v69, 2u);
      MEMORY[0x29ED8BDB0](v69, -1, -1);
    }

    v71(v66, v84);
    goto LABEL_18;
  }

  v62 = v76;
  sub_29E4FC390();
  v63 = sub_29E4FC3B0();
  v64 = sub_29E4FC940();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_29E494000, v63, v64, "More than a day since app first launch, show error alert", v65, 2u);
    MEMORY[0x29ED8BDB0](v65, -1, -1);
  }

  v71(v62, v84);
  v48(v37, v36);
  return 1;
}

uint64_t sub_29E4F611C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_29E4F70DC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_29E4F61E0(uint64_t a1)
{
  sub_29E4F626C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4F626C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E4F62D0()
{
  result = qword_2A184B7E8;
  if (!qword_2A184B7E8)
  {
    sub_29E4FB1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7E8);
  }

  return result;
}

void sub_29E4F6328(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t HealthKitProfileInformation.makePluginFeedItem()@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v34 = sub_29E4FC3C0();
  MEMORY[0x2A1C7C4A8](v34);
  v1 = sub_29E4FB390();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FB320();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FB460();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E4FB790();
  v30 = v11;
  v12 = sub_29E4FB720();
  v34 = sub_29E4FB760();
  v31 = v13;

  type metadata accessor for ProfileItemTileViewController(0);
  sub_29E4FB360();
  (*(v5 + 104))(v7, *MEMORY[0x29EDC3768], v4);
  v14 = v29;
  v15 = v30;
  sub_29E4C7648(v29, v30);
  sub_29E4FB720();
  v16 = v14;
  sub_29E4FB3E0();
  sub_29E4FB7B0();
  sub_29E4FB840();
  sub_29E4FB3D0();
  sub_29E4FB3C0();
  (*(v32 + 104))(v3, *MEMORY[0x29EDC3808], v33);
  sub_29E4FB3A0();
  v17 = sub_29E4FB720();
  v18 = [v17 type];

  v19 = v16;
  if (v18 == 2)
  {
    v20 = sub_29E4FB4E0();
    goto LABEL_5;
  }

  if (v18 == 3)
  {
    v20 = sub_29E4FB4D0();
LABEL_5:
    v22 = v20;
    v23 = v21;
    v24 = sub_29E4FB410();
    sub_29E4F70DC(&v39, v22, v23);

    v24(v38, 0);
  }

  sub_29E4A1B94(v19, v15);
  v26 = v36;
  v25 = v37;
  v27 = v35;
  (*(v35 + 32))(v37, v10, v36);
  return (*(v27 + 56))(v25, 0, 1, v26);
}

unint64_t sub_29E4F68F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29E4F69C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29E4AD310(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29E4A1754(v11);
  return v7;
}

unint64_t sub_29E4F69C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29E4F6ACC(a5, a6);
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
    result = sub_29E4FCDD0();
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

void *sub_29E4F6ACC(uint64_t a1, unint64_t a2)
{
  v3 = sub_29E4F6B18(a1, a2);
  sub_29E4F6C48(&unk_2A24E7878);
  return v3;
}

void *sub_29E4F6B18(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29E4F6D34(v5, 0);
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

  result = sub_29E4FCDD0();
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
        v10 = sub_29E4FC750();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29E4F6D34(v10, 0);
        result = sub_29E4FCD60();
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

uint64_t sub_29E4F6C48(uint64_t result)
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

  result = sub_29E4F6D9C(result, v11, 1, v3);
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

void *sub_29E4F6D34(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E4F9CC0();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29E4F6D9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4F9CC0();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29E4F6E84(uint64_t *a1, void *a2)
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

    v9 = sub_29E4FCCC0();

    if (v9)
    {

      sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_29E4FCCB0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_29E4F7674(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_29E4F7D64(v20 + 1, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
    }

    v18 = v8;
    sub_29E4F82D0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
  v11 = sub_29E4FCB30();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_29E4F8354(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_29E4FCB40();

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

uint64_t sub_29E4F70DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29E4FD030();
  sub_29E4FC730();
  v8 = sub_29E4FD050();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29E4FCF80() & 1) != 0)
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

    sub_29E4F84E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29E4F7284(void *a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v9 = *v4;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](a2);
  v10 = sub_29E4FD050();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (*(*(v9 + 48) + 8 * v12) != a2)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_29E4F8664(a2, v12, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v16;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_29E4F7394(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v33 = a2;
  v11 = sub_29E4FC650();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29E4F9664(&qword_2A184B2D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v21 = sub_29E4FC680();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29E4F87E0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29E4F7674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29E4F92C8(0, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
    v2 = sub_29E4FCD30();
    v15 = v2;
    sub_29E4FCCA0();
    if (sub_29E4FCCD0())
    {
      sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_29E4F7D64(v9 + 1, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
        }

        v2 = v15;
        result = sub_29E4FCB30();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_29E4FCCD0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA1A0];
  }

  return v2;
}

uint64_t sub_29E4F78A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29E4F9C68();
  result = sub_29E4FCD20();
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
      sub_29E4FD030();
      sub_29E4FC730();
      result = sub_29E4FD050();
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

uint64_t sub_29E4F7AF8(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_29E4FCD20();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_29E4FD030();
      MEMORY[0x29ED8B670](v18);
      result = sub_29E4FD050();
      v19 = -1 << *(v6 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_29E4F7D64(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29E4F92C8(0, a2, a3, a4, a5);
  result = sub_29E4FCD20();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_29E4FCB30();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_29E4F7F80(uint64_t a1)
{
  v2 = v1;
  v36 = sub_29E4FB240();
  v3 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_29E4C5A30(0);
  result = sub_29E4FCD20();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29E4FC650();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_29E4F82D0(uint64_t a1, uint64_t a2)
{
  sub_29E4FCB30();
  result = sub_29E4FCC90();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_29E4F8354(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E4F7D64(v6 + 1, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_29E4F8A84();
      goto LABEL_12;
    }

    sub_29E4F90A0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_29E4FCB30();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_29E4FCB40();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29E4FCFA0();
  __break(1u);
}

void sub_29E4F84E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29E4F78A4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_29E4F8BEC();
      goto LABEL_16;
    }

    sub_29E4F93A4(v8 + 1);
  }

  v10 = *v4;
  sub_29E4FD030();
  sub_29E4FC730();
  v11 = sub_29E4FD050();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_29E4FCF80() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_29E4FCFA0();
  __break(1u);
}

uint64_t sub_29E4F8664(uint64_t result, unint64_t a2, char a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v9 = a5;
    sub_29E4F7AF8(v7 + 1, a4);
  }

  else
  {
    if (v8 > v7)
    {
      v10 = a2;
      result = sub_29E4F8D3C(a4);
      a2 = v10;
      goto LABEL_12;
    }

    v9 = a5;
    sub_29E4F96AC(v7 + 1, a4);
  }

  v11 = *v5;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v6);
  result = sub_29E4FD050();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = result & ~v12;
    result = v9(0);
    a2 = v14;
    while (*(*(v11 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29E4FCFA0();
  __break(1u);
  return result;
}

uint64_t sub_29E4F87E0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E4F7F80(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29E4F8E78();
      goto LABEL_12;
    }

    sub_29E4F9958(v10 + 1);
  }

  v12 = *v3;
  sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v13 = sub_29E4FC650();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_29E4F9664(&qword_2A184B2D0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v21 = sub_29E4FC680();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29E4FCFA0();
  __break(1u);
  return result;
}

id sub_29E4F8A84()
{
  v1 = v0;
  sub_29E4F92C8(0, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
  v2 = *v0;
  v3 = sub_29E4FCD10();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = v2 + 56;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 56), 8 * v7);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }

  return result;
}

void sub_29E4F8BEC()
{
  v1 = v0;
  sub_29E4F9C68();
  v2 = *v0;
  v3 = sub_29E4FCD10();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void *sub_29E4F8D3C(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_29E4FCD10();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_29E4F8E78()
{
  v1 = v0;
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5A30(0);
  v6 = *v0;
  v7 = sub_29E4FCD10();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_29E4F90A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29E4F92C8(0, &qword_2A184BC78, &qword_2A1A6F1E8, 0x29EDBAD78, &qword_2A1A6F1E0);
  result = sub_29E4FCD20();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_29E4FCB30();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

void sub_29E4F92C8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29E4A2AD8(255, a3, a4);
    sub_29E4F9354(a5, a3, a4);
    v9 = sub_29E4FCD50();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E4F9354(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E4A2AD8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4F93A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29E4F9C68();
  result = sub_29E4FCD20();
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
      sub_29E4FD030();

      sub_29E4FC730();
      result = sub_29E4FD050();
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

void sub_29E4F95D0(uint64_t a1)
{
  if (!qword_2A184BC80)
  {
    type metadata accessor for HKSharingStatus(255);
    sub_29E4F9664(&qword_2A184B8D0, type metadata accessor for HKSharingStatus, &unk_29E4FE984);
    v1 = sub_29E4FCD50();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BC80);
    }
  }
}

uint64_t sub_29E4F9664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E4F96AC(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_29E4FCD20();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_29E4FD030();
      MEMORY[0x29ED8B670](v17);
      result = sub_29E4FD050();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

void sub_29E4F98C4(uint64_t a1)
{
  if (!qword_2A184BC88)
  {
    type metadata accessor for HKSharingMessageDirection(255);
    sub_29E4F9664(&qword_2A184B8D8, type metadata accessor for HKSharingMessageDirection, &unk_29E4FE944);
    v1 = sub_29E4FCD50();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BC88);
    }
  }
}

uint64_t sub_29E4F9958(uint64_t a1)
{
  v2 = v1;
  v33 = sub_29E4FB240();
  v3 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29E4C5A30(0);
  v7 = sub_29E4FCD20();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_29E4F9664(&unk_2A1A706B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29E4FC650();
      v21 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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
    *v2 = v7;
  }

  return result;
}

void sub_29E4F9C68()
{
  if (!qword_2A1A6F158)
  {
    v0 = sub_29E4FCD50();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F158);
    }
  }
}

void sub_29E4F9CC0()
{
  if (!qword_2A1A708A0)
  {
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A708A0);
    }
  }
}

void sub_29E4F9D10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_29E4F9D88(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1D34(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E4FC3C0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v49 - v21;
  if (a2)
  {
    v51 = v20;
    v52 = v12;
    v53 = v11;
    v50 = a3;
    v23 = a2;
    sub_29E4FC350();
    v24 = a2;
    v25 = sub_29E4FC3B0();
    v26 = sub_29E4FC920();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v55 = v28;
      *v27 = 136315394;
      v29 = sub_29E4FD0B0();
      v31 = sub_29E4F68F4(v29, v30, &v55);
      v49 = a4;
      v32 = v31;

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_29E4FCFE0();
      v35 = sub_29E4F68F4(v33, v34, &v55);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_29E494000, v25, v26, "[%s]: Couldn't obtain contact store access for contacts with error: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v28, -1, -1);
      MEMORY[0x29ED8BDB0](v27, -1, -1);
    }

    (*(v16 + 8))(v22, v51);
    v38 = v50;
    swift_getObjectType();
    sub_29E4FC2F0();
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v55 = 0u;
    v56 = 0u;
    sub_29E4FC0B0();
    *&v55 = v38;
    sub_29E4FAE8C(qword_2A1A6F908, v39, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, &unk_29E501770);
    sub_29E4FC280();
  }

  else
  {
    if (a1)
    {
      v36 = [objc_opt_self() defaultCenter];
      [v36 addObserver:a3 selector:sel_fetchContactName name:*MEMORY[0x29EDB8B88] object:0];

      return sub_29E4FA3F8();
    }

    v51 = v20;
    v52 = v12;
    v53 = v11;
    v40 = a4;
    sub_29E4FC350();
    v41 = sub_29E4FC3B0();
    v42 = sub_29E4FC920();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v55 = v44;
      *v43 = 136315138;
      v49 = v40;
      v45 = sub_29E4FD0B0();
      v47 = sub_29E4F68F4(v45, v46, &v55);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_29E494000, v41, v42, "[%s]: Denied contact store access", v43, 0xCu);
      sub_29E4A1754(v44);
      MEMORY[0x29ED8BDB0](v44, -1, -1);
      MEMORY[0x29ED8BDB0](v43, -1, -1);
    }

    (*(v16 + 8))(v19, v51);
    swift_getObjectType();
    sub_29E4FC2F0();
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v55 = 0u;
    v56 = 0u;
    sub_29E4FC0B0();
    *&v55 = a3;
    sub_29E4FAE8C(qword_2A1A6F908, v48, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, &unk_29E501770);
    sub_29E4FC280();
  }

  return (*(v52 + 8))(v14, v53);
}

uint64_t sub_29E4FA3F8()
{
  v1 = *v0;
  v2 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v33[3] = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1D34(0);
  v37 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FC3C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v33 - v9;
  sub_29E4FC350();
  v11 = sub_29E4FC3B0();
  v12 = sub_29E4FC940();
  v13 = os_log_type_enabled(v11, v12);
  v36 = v1;
  v33[1] = v7;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[0] = v15;
    *v14 = 136315138;
    v16 = sub_29E4FD0B0();
    v18 = sub_29E4F68F4(v16, v17, v38);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29E494000, v11, v12, "[%s]: Fetching me contact card name info", v14, 0xCu);
    sub_29E4A1754(v15);
    MEMORY[0x29ED8BDB0](v15, -1, -1);
    MEMORY[0x29ED8BDB0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_29E4FAED4();
  v19 = sub_29E4FC980();
  sub_29E4FC970();
  v20 = sub_29E4FC990();

  v21 = [v20 givenName];
  v22 = sub_29E4FC6F0();
  v24 = v23;

  v25 = [v20 familyName];
  v26 = sub_29E4FC6F0();
  v28 = v27;

  v29 = v33[2];
  swift_getObjectType();
  sub_29E4FC2F0();
  v38[0] = v22;
  v38[1] = v24;
  v38[2] = v26;
  v38[3] = v28;
  sub_29E4A1DB8();
  sub_29E4A1E0C();
  sub_29E4A1E60();
  v30 = v34;
  sub_29E4FC0B0();
  v38[0] = v29;
  sub_29E4FAE8C(qword_2A1A6F908, v31, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, &unk_29E501770);
  sub_29E4FC280();

  return (*(v35 + 8))(v30, v37);
}

uint64_t sub_29E4FAAE4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_29E4FAB80()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:*MEMORY[0x29EDB8B88] object:0];
}

uint64_t sub_29E4FAC00(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4FAE8C(qword_2A1A6F908, a2, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, &unk_29E501770);

  return MEMORY[0x2A1C64680](a1, v3);
}

void sub_29E4FAD00()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x29EDB8B88] object:0];

  v3 = [objc_allocWithZone(MEMORY[0x29EDB8BB0]) init];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v6[4] = sub_29E4FAE6C;
  v6[5] = v4;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1107296256;
  v6[2] = sub_29E4F9D10;
  v6[3] = &unk_2A24E9530;
  v5 = _Block_copy(v6);

  [v3 requestAccessForEntityType:0 completionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_29E4FAE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4FAE8C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_29E4FAED4()
{
  result = qword_2A1A6F1D8;
  if (!qword_2A1A6F1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A6F1D8);
  }

  return result;
}