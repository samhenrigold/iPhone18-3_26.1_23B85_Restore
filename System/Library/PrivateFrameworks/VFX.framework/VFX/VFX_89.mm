uint64_t sub_1AF7EEBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 40);
  if (!a4)
  {
    if (v7 >> 62)
    {
      v16 = sub_1AFDFE108();
    }

    else
    {
      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v17 = -v16;
      v11 = 4;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B2719C70](v11 - 4, v7);
        }

        else
        {
          v18 = *(v7 + 8 * v11);
        }

        if (*(v18 + 16) == a1 && *(v18 + 24) == a2)
        {
          break;
        }

        v20 = sub_1AFDFEE28();

        if (v20)
        {

LABEL_40:
          if ((*(v4 + 40) & 0xC000000000000001) != 0)
          {
            return MEMORY[0x1B2719C70](v11 - 4);
          }
        }

        ++v11;
        if (v17 + v11 == 4)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_40;
    }

LABEL_33:

    return 0;
  }

  if (v7 >> 62)
  {
    v10 = sub_1AFDFE108();
    if (v10)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return 0;
  }

LABEL_4:

  v23 = -v10;
  v11 = 4;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B2719C70](v11 - 4, v7);
    }

    else
    {
      v13 = *(v7 + 8 * v11);
    }

    v14 = *(v13 + 16) == a1 && *(v13 + 24) == a2;
    if (!v14 && (sub_1AFDFEE28() & 1) == 0)
    {

      goto LABEL_6;
    }

    if (sub_1AF776F1C() == a3 && v15 == a4)
    {

      goto LABEL_36;
    }

    v12 = sub_1AFDFEE28();

    if (v12)
    {
      break;
    }

LABEL_6:
    ++v11;
    if (v23 + v11 == 4)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if ((*(v22 + 40) & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1B2719C70](v11 - 4);
  }
}

uint64_t sub_1AF7EEE4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF7EEED8(void *a1)
{
  v3 = v1;
  sub_1AF7EF4FC(0, &qword_1EB63EDC8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7EF4A8();
  sub_1AFDFF3F8();
  v12 = *(v3 + 32);
  HIBYTE(v11) = 0;
  sub_1AF7EFA10(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  sub_1AF7EF560(&qword_1EB63D188, MEMORY[0x1E69E6458], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = *(v3 + 40);
    HIBYTE(v11) = 1;
    sub_1AF7EF734(0, &qword_1EB63EDB8, _s17CodeSourceSnippetCMa, MEMORY[0x1E69E62F8]);
    sub_1AF7EF5E4(&qword_1EB63EDD0, &qword_1EB63EB40, aE_35, MEMORY[0x1E69E6300]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

void *sub_1AF7EF13C(void *a1)
{
  sub_1AF7EF4FC(0, &qword_1EB63EDA8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v1[2] = 0;
  v1[3] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v1[4] = &unk_1F25003E8;
  v1[5] = v9;
  v1[6] = sub_1AF432AA0(v9);
  v1[7] = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7EF4A8();
  sub_1AFDFF3B8();
  if (v2)
  {
  }

  else
  {
    sub_1AF7EFA10(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v12 = 0;
    sub_1AF7EF560(&qword_1ED723208, MEMORY[0x1E69E6478], MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    v1[4] = v13;

    sub_1AF7EF734(0, &qword_1EB63EDB8, _s17CodeSourceSnippetCMa, MEMORY[0x1E69E62F8]);
    v12 = 1;
    sub_1AF7EF5E4(&qword_1EB63EDC0, &qword_1EB63EB00, aM_30, MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
    (*(v6 + 8))(v8, v5);
    v1[5] = v13;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v1;
}

void *sub_1AF7EF42C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF7EF13C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1AF7EF4A8()
{
  result = qword_1EB63EDB0;
  if (!qword_1EB63EDB0)
  {
    result = swift_getWitnessTable(asc_1AFE78890, &_s7LibraryC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EDB0);
  }

  return result;
}

void sub_1AF7EF4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF7EF4A8();
    v7 = a3(a1, &_s7LibraryC10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF7EF560(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7EFA10(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7EF5E4(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7EF734(255, &qword_1EB63EDB8, _s17CodeSourceSnippetCMa, MEMORY[0x1E69E62F8]);
    v10 = v9;
    v11 = sub_1AF7EF6A8(a2, 255, _s17CodeSourceSnippetCMa, a3);
    result = swift_getWitnessTable(a4, v10, &v11);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7EF6A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7EF6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1AF7EF734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF7EF798(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF7EFA10(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF7EF808(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v19[0] = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v19[1] = sub_1AF432BA4(v4);
  v17 = 0;
  v18 = 0;
  v16 = 1;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  sub_1AF4486E4();
  v5 = sub_1AFDFDF28();
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = (v5 + 56);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v13 = *(v7 - 3);
    v14 = v8;
    v15 = v9;

    sub_1AF7EAEA8(&v13, 0xD000000000000014, 0x80000001AFF356F0, 0x65646E6570656420, 0xEF203A736569636ELL, &v17, &v16, v19);

    v7 += 4;
    --v6;
  }

  while (v6);
  v11 = v17;
  v10 = v18;

  if (!v10)
  {
    goto LABEL_7;
  }

  if (v16)
  {
LABEL_6:

LABEL_7:

    return v19[0];
  }

  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF35730);
  MEMORY[0x1B2718AE0](v11, v10);
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF35760);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF7EFA10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF7EFA60()
{
  result = qword_1EB63EDF0;
  if (!qword_1EB63EDF0)
  {
    sub_1AF7EFA10(255, &qword_1EB63EDE8, MEMORY[0x1E69E7B10], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1EB63EDF0);
  }

  return result;
}

unint64_t sub_1AF7EFAF0()
{
  result = qword_1EB63EDF8;
  if (!qword_1EB63EDF8)
  {
    result = swift_getWitnessTable(byte_1AFE78868, &_s7LibraryC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EDF8);
  }

  return result;
}

unint64_t sub_1AF7EFB48()
{
  result = qword_1EB63EE00;
  if (!qword_1EB63EE00)
  {
    result = swift_getWitnessTable(byte_1AFE787D8, &_s7LibraryC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EE00);
  }

  return result;
}

unint64_t sub_1AF7EFBA0()
{
  result = qword_1EB63EE08;
  if (!qword_1EB63EE08)
  {
    result = swift_getWitnessTable(a1_30, &_s7LibraryC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EE08);
  }

  return result;
}

uint64_t sub_1AF7EFBF4()
{
  sub_1AF4486E4();

  v1 = sub_1AFDFDF28();

  if (*(v1 + 16) < 2uLL)
  {

    v3 = *(v0 + 24);

    return v3;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AFC0DBAC(v1);
    }

    --*(v1 + 16);

    sub_1AF7F0118();
    sub_1AF7F0168(&qword_1EB63EA88, 255, sub_1AF7F0118, MEMORY[0x1E69E6328]);
    sub_1AF6DC518();
    sub_1AFDFD298();

    return sub_1AFDFD1E8();
  }
}

uint64_t sub_1AF7EFD68()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF35860);
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0x203A646975202CLL, 0xE700000000000000);
  v3 = v0[5];
  v4 = v0[6];

  MEMORY[0x1B2718AE0](v3, v4);

  MEMORY[0x1B2718AE0](0x203A65707974202CLL, 0xE800000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1AF7EFEC4()
{
  sub_1AFDFF288();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7EFF24(uint64_t a1)
{

  sub_1AFDFD038();
}

uint64_t sub_1AF7EFF80(uint64_t a1)
{
  sub_1AFDFF288();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7EFFDC(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 40) == *(*a2 + 40) && *(*a1 + 48) == *(*a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

uint64_t sub_1AF7F0054()
{
  swift_weakDestroy();

  sub_1AF687FE4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

void sub_1AF7F0118()
{
  if (!qword_1EB63EA80)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63EA80);
    }
  }
}

uint64_t sub_1AF7F0168(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

id sub_1AF7F01B4()
{
  sub_1AF0D4E74(0);
  v100 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v99 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1AFDFC298();
  v3 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  [*(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock) lock];
  v101 = v0;
  v12 = *(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_bundle);
  v13 = sub_1AFDFCEC8();
  v14 = sub_1AFDFCEC8();
  v15 = [v12 URLsForResourcesWithExtension:v13 subdirectory:v14];

  if (v15)
  {
    v16 = sub_1AFDFD418();

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v96 = 0;
      v20 = *(v8 + 16);
      v19 = v8 + 16;
      v109 = v20;
      v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
      v87 = v16;
      v108 = v16 + v21;
      v22 = *(v19 + 56);
      v106 = (v19 - 8);
      v107 = v22;
      v95 = "than one output paramter: ";
      v88 = " referencing missing library";
      v94 = (v3 + 32);
      v92 = "esources: .inc file ";
      v93 = xmmword_1AFE431C0;
      v104 = v19;
      v105 = v7;
      v102 = v17;
      v103 = v11;
      v20(v11, v16 + v21, v7);
      while (1)
      {
        v115 = sub_1AFDFBFF8();
        v116 = v23;
        v113 = 1600285036;
        v114 = 0xE400000000000000;
        sub_1AF770DF0();
        sub_1AF770E44();
        v24 = sub_1AFDFCD68();

        if ((v24 & 1) == 0)
        {
          (*v106)(v11, v7);
          goto LABEL_5;
        }

        v115 = sub_1AFDFC028();
        v116 = v25;
        sub_1AF4486E4();
        v26 = sub_1AFDFDF28();

        v27 = *(v26 + 16);
        v110 = v18;
        if (v27)
        {
          v115 = MEMORY[0x1E69E7CC0];
          sub_1AFC05CE4(0, v27, 0);
          v28 = v115;
          v29 = (v26 + 56);
          do
          {
            v30 = *(v29 - 3);
            v31 = *(v29 - 2);
            v32 = *(v29 - 1);
            v33 = *v29;

            v34 = MEMORY[0x1B27189E0](v30, v31, v32, v33);
            v36 = v35;

            v115 = v28;
            v38 = v28[2];
            v37 = v28[3];
            if (v38 >= v37 >> 1)
            {
              sub_1AFC05CE4(v37 > 1, v38 + 1, 1);
              v28 = v115;
            }

            v28[2] = v38 + 1;
            v39 = &v28[2 * v38];
            v39[4] = v34;
            v39[5] = v36;
            v29 += 4;
            --v27;
          }

          while (v27);

          v7 = v105;
          v11 = v103;
          v18 = v110;
        }

        else
        {

          v28 = MEMORY[0x1E69E7CC0];
        }

        v40 = MEMORY[0x1E69E6158];
        if (v28[2] != 3)
        {
          (*v106)(v11, v7);

          v17 = v102;
          goto LABEL_5;
        }

        v41 = v28[5];
        v115 = v28[4];
        v116 = v41;
        v113 = 1600285036;
        v114 = 0xE400000000000000;
        v111 = 0;
        v112 = 0xE000000000000000;
        v42 = sub_1AFDFDEB8();
        v44 = v43;
        v45 = v28[6];
        v46 = v28[7];

        v47 = sub_1AF4564D0(v45, v46);
        v48 = *(v101 + 32);
        if (*(v48 + 16) && (v49 = v47, , v50 = sub_1AF419914(v42, v44), v52 = v51, , (v52 & 1) != 0))
        {
          v53 = *(*(v48 + 56) + 8 * v50);

          sub_1AFDFCF58();
          v54 = v96;
          v55 = sub_1AFDFCE98();
          v96 = v54;
          if (!v54)
          {
            v17 = v102;
            if (!*(v53 + 56))
            {
              v80 = v55;
              v81 = v56;
              *(v53 + 56) = sub_1AF432AB8(MEMORY[0x1E69E7CC0]);

              v56 = v81;
              v17 = v102;
              v55 = v80;
            }

            v82 = sub_1AF7EF808(v55, v56);
            v84 = v83;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v115 = *(v53 + 56);
            *(v53 + 56) = 0x8000000000000000;
            sub_1AF852F94(v82, v84, v49, isUniquelyReferenced_nonNull_native);
            *(v53 + 56) = v115;

            (*v106)(v11, v7);
            goto LABEL_35;
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v115 = 0;
          v116 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000024, v95 | 0x8000000000000000);
          sub_1AF48F374();
          v57 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v57);

          MEMORY[0x1B2718AE0](0xD000000000000012, v88 | 0x8000000000000000);
          v59 = v115;
          v58 = v116;
          v60 = sub_1AFDFDA18();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          v89 = v53;
          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          v61 = qword_1ED73B890;
          sub_1AF6EFB60(0);
          v62 = swift_allocObject();
          *(v62 + 16) = v93;
          *(v62 + 56) = v40;
          *(v62 + 64) = sub_1AF0D544C();
          *(v62 + 32) = v59;
          *(v62 + 40) = v58;

          sub_1AFDFC4C8(v60, &dword_1AF0CE000, v61, "%{public}s", 10, 2, v62);

          v63 = v97;
          sub_1AFDFC288();
          v64 = v99;
          v65 = v59;
          v66 = v100[12];
          v67 = v100[16];
          v68 = &v99[v100[20]];
          (*v94)(v99, v63, v98);
          *(v64 + v66) = v60;
          *(v64 + v67) = 0;
          *v68 = v65;
          *(v68 + 1) = v58;

          sub_1AFDFC608();

          sub_1AF7F602C(v64, sub_1AF0D4E74);

          v7 = v105;
          v11 = v103;
          (*v106)(v103, v105);
          v96 = 0;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v115 = 0;
          v116 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000024, v95 | 0x8000000000000000);
          sub_1AF48F374();
          v69 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v69);

          MEMORY[0x1B2718AE0](0xD00000000000001CLL, v92 | 0x8000000000000000);
          v71 = v115;
          v70 = v116;
          v72 = sub_1AFDFDA18();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          v73 = qword_1ED73B890;
          sub_1AF6EFB60(0);
          v74 = swift_allocObject();
          *(v74 + 16) = v93;
          *(v74 + 56) = MEMORY[0x1E69E6158];
          *(v74 + 64) = sub_1AF0D544C();
          *(v74 + 32) = v71;
          *(v74 + 40) = v70;

          sub_1AFDFC4C8(v72, &dword_1AF0CE000, v73, "%{public}s", 10, 2, v74, v87);

          v75 = v97;
          sub_1AFDFC288();
          v76 = v99;
          v77 = v100[12];
          v78 = v100[16];
          v79 = &v99[v100[20]];
          (*v94)(v99, v75, v98);
          *(v76 + v77) = v72;
          *(v76 + v78) = 0;
          *v79 = v71;
          *(v79 + 1) = v70;

          sub_1AFDFC608();

          sub_1AF7F602C(v76, sub_1AF0D4E74);

          v7 = v105;
          v11 = v103;
          (*v106)(v103, v105);
        }

        v17 = v102;
LABEL_35:
        v18 = v110;
LABEL_5:
        if (++v18 == v17)
        {
          break;
        }

        v109(v11, v108 + v107 * v18, v7);
      }
    }
  }

  return [*(v101 + v91) unlock];
}

id sub_1AF7F0DA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  [*(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock) lock];

  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  v3 = *(v0 + 32);
  v4 = &selRef_shadingModel;
  if (!*(v3 + 16))
  {
    return [*(v1 + v2) v4[268]];
  }

  v5 = sub_1AF419914(0x69737265766E6F43, 0xEA00000000006E6FLL);
  if ((v6 & 1) == 0)
  {

    return [*(v1 + v2) v4[268]];
  }

  v59 = v2;
  v7 = v1;
  v8 = *(*(v3 + 56) + 8 * v5);

  v58 = v8;
  v9 = *(v8 + 40);
  *&v67 = MEMORY[0x1E69E7CC0];
  if (v9 >> 62)
  {
    v10 = sub_1AFDFE108();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B2719C70](v11, v9);
      }

      else
      {
        v12 = *(v9 + 32 + 8 * v11);
      }

      v13 = *(v12 + 168);
      v14 = *(v12 + 208);
      if (v13)
      {
        if (v14)
        {
          v15 = *(v13 + 16);
          if (v15 == *(v14 + 16))
          {
            if (!v15 || v13 == v14)
            {
LABEL_17:

              goto LABEL_9;
            }

            v16 = (v14 + 40);
            v17 = (v13 + 40);
            while (1)
            {
              v18 = *(v17 - 1) == *(v16 - 1) && *v17 == *v16;
              if (!v18 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v16 += 2;
              v17 += 2;
              if (!--v15)
              {
                goto LABEL_17;
              }
            }
          }
        }
      }

      else if (!v14)
      {
        goto LABEL_17;
      }

      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
LABEL_9:
      if (++v11 == v10)
      {
        v19 = v67;
        goto LABEL_30;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_30:

  *(v58 + 40) = v19;

  v20 = *(v58 + 40);
  v1 = v7;
  if (v20 >> 62)
  {
    v21 = sub_1AFDFE108();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
LABEL_67:

    v2 = v59;
    v4 = &selRef_shadingModel;
    return [*(v1 + v2) v4[268]];
  }

  v22 = 0;
  v23 = v20 & 0xC000000000000001;
  v52 = v21;
  while (!v23)
  {
    v24 = *(v20 + 8 * v22 + 32);

    v25 = *(v24 + 168);
    if (v25)
    {
      goto LABEL_36;
    }

LABEL_54:

LABEL_55:
    if (v21 == ++v22)
    {
      goto LABEL_67;
    }
  }

  v24 = MEMORY[0x1B2719C70](v22, v20);
  v25 = *(v24 + 168);
  if (!v25)
  {
    goto LABEL_54;
  }

LABEL_36:
  v26 = *(v24 + 208);
  if (!v26)
  {
    goto LABEL_54;
  }

  v27 = *(v24 + 304);
  if (v27 != 2 && (v27 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v26[2] != 1 || v25[2] != 1)
  {
    goto LABEL_54;
  }

  v28 = v25[4];
  v29 = v25[5];

  sub_1AF809DF8(v28, v29, v62);
  v56 = v62[1];
  v57 = v62[0];
  v55 = v63;
  v30 = v26[4];
  v31 = v26[5];

  sub_1AF809DF8(v30, v31, &v64);
  v32 = v64;
  v33 = v65;
  v67 = v64;
  v68 = v65;
  v53 = v66;
  v54 = *(&v65 + 1);
  v69 = v66;
  [*(v1 + v59) lock];
  if (!*(*(v1 + 48) + 16))
  {
    [*(v1 + v59) unlock];
    goto LABEL_45;
  }

  sub_1AF41A308(&v67);
  v35 = v34;

  [*(v1 + v59) unlock];
  if ((v35 & 1) == 0)
  {
LABEL_45:
    sub_1AF687F90(v32, *(&v32 + 1), v33, v54, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v1 + 48);
    *(v1 + 48) = 0x8000000000000000;
    sub_1AF8530E8(MEMORY[0x1E69E7CC0], &v67, isUniquelyReferenced_nonNull_native);
    sub_1AF7F60D8(&v64, &qword_1EB63E690, &_s12MetadataTypeON);
    *(v1 + 48) = v60;
  }

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v1 + 48);
  v61 = v38;
  *(v1 + 48) = 0x8000000000000000;
  v40 = sub_1AF41A308(&v67);
  v41 = v39;
  v42 = v38[2] + ((v39 & 1) == 0);
  if (v38[3] >= v42)
  {
    if (v37)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_1AF84750C();
      if ((v41 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_52;
  }

  sub_1AF8315B4(v42, v37);
  v43 = sub_1AF41A308(&v67);
  if ((v41 & 1) == (v44 & 1))
  {
    v40 = v43;
    if ((v41 & 1) == 0)
    {
LABEL_58:
      v45 = 0;
      goto LABEL_59;
    }

LABEL_52:
    v45 = *(v38[7] + 8 * v40);
LABEL_59:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1AF422778(0, v45[2] + 1, 1, v45);
    }

    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1AF422778(v46 > 1, v47 + 1, 1, v45);
    }

    v45[2] = v47 + 1;
    v48 = &v45[6 * v47];
    *(v48 + 2) = v57;
    *(v48 + 3) = v56;
    v48[8] = v55;
    v48[9] = v24;
    if (v41)
    {

      sub_1AF7F60D8(&v64, &qword_1EB63E690, &_s12MetadataTypeON);
      *(v61[7] + 8 * v40) = v45;
    }

    else
    {
      v61[(v40 >> 6) + 8] |= 1 << v40;
      v49 = v61[6] + 40 * v40;
      v50 = v68;
      *v49 = v67;
      *(v49 + 16) = v50;
      *(v49 + 32) = v69;
      *(v61[7] + 8 * v40) = v45;
      ++v61[2];
    }

    *(v1 + 48) = v61;
    v23 = v20 & 0xC000000000000001;
    v21 = v52;
    goto LABEL_55;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF7F13DC()
{
  v1 = v0;

  v2 = MEMORY[0x1E69E7CC8];
  v1[7] = MEMORY[0x1E69E7CC8];

  v1[8] = v2;
  v4 = v1[4];
  if (*(v4 + 16))
  {

    v5 = sub_1AF419914(0x7469736F706D6F43, 0xEB000000006E6F69);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = *(v7 + 40);
      if (v8 >> 62)
      {
        v9 = sub_1AFDFE108();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        v10 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1B2719C70](v10, v8);
          }

          else
          {
            v11 = *(v8 + 8 * v10 + 32);
          }

          ++v10;
          v12 = v11;
          sub_1AF7F158C(&v12, v1);
        }

        while (v9 != v10);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF7F158C(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 304);
  if (v4 != 2 && (v4 & 1) == 0)
  {
    return result;
  }

  v5 = v3[2];
  v6 = v3[3];
  v7 = v5 == 0x65736F706D6F43 && v6 == 0xE700000000000000;
  if (v7 || (sub_1AFDFEE28() & 1) != 0)
  {
    v8 = v3[25];
    if (v8 && *(v8 + 16) == 1)
    {
      v9 = v3[26];
      if (v9[2])
      {
        v11 = v9[4];
        v10 = v9[5];
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      sub_1AF809DF8(v11, v10, &v27);
      v30 = v27;
      v31 = v28;
      v32 = v29;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(a2 + 56);
      *(a2 + 56) = 0x8000000000000000;
      sub_1AF857020(v3, &v30, isUniquelyReferenced_nonNull_native);
      result = sub_1AF7F60D8(&v27, &qword_1EB63E690, &_s12MetadataTypeON);
      *(a2 + 56) = v33;
      return result;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v12 = "than one input paramter: ";
    v13 = 0xD00000000000005ALL;
  }

  else
  {
    v18 = v5 == 0x736F706D6F636544 && v6 == 0xE900000000000065;
    if (!v18 && (sub_1AFDFEE28() & 1) == 0)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *(&v30 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000037, 0x80000001AFF35AE0);
      v24 = sub_1AF777650();
      MEMORY[0x1B2718AE0](v24);

      v15 = 0xE000000000000000;
      v16 = 0;
      v17 = sub_1AFDFDA08();
      goto LABEL_16;
    }

    v19 = v3[20];
    if (v19 && *(v19 + 16) == 1)
    {
      v20 = v3[21];
      if (v20[2])
      {
        v22 = v20[4];
        v21 = v20[5];
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      sub_1AF809DF8(v22, v21, &v27);
      v30 = v27;
      v31 = v28;
      v32 = v29;

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(a2 + 64);
      *(a2 + 64) = 0x8000000000000000;
      sub_1AF857020(v3, &v30, v25);
      result = sub_1AF7F60D8(&v27, &qword_1EB63E690, &_s12MetadataTypeON);
      *(a2 + 64) = v33;
      return result;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v12 = "d Composition snippet: ";
    v13 = 0xD000000000000059;
  }

  MEMORY[0x1B2718AE0](v13, v12 | 0x8000000000000000);
  v14 = sub_1AF777650();
  MEMORY[0x1B2718AE0](v14);

  v15 = *(&v30 + 1);
  v16 = v30;
  v17 = sub_1AFDFDA18();
LABEL_16:
  if (qword_1ED731058 != -1)
  {
    v26 = v17;
    swift_once();
    v17 = v26;
  }

  *&v30 = 0;
  sub_1AF0D4F18(v17, &v30, v16, v15);
}

uint64_t sub_1AF7F19AC(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_vfxGraphTemplatesDir;
  sub_1AF7F602C(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_vfxGraphTemplatesDir, sub_1AF455364);
  v51 = *(v5 + 16);
  v52 = v5 + 16;
  v51(v1 + v12, a1, v4);
  v13 = *(v5 + 56);
  v48 = v1;
  v13(v1 + v12, 0, 1, v4);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_1AFDFC048();
  v53[0] = 0;
  v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:v53];

  v17 = v53[0];
  if (v16)
  {
    v18 = sub_1AFDFD418();
    v19 = v17;

    v20 = *(v18 + 16);
    v44 = v5;
    v45 = v18;
    if (v20)
    {
      v42 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v21 = v18 + v42;
      v50 = *(v5 + 72);
      v43 = (v5 + 32);
      v22 = (v5 + 8);
      v49 = MEMORY[0x1E69E7CC0];
      do
      {
        v51(v11, v21, v4);
        v24 = sub_1AFDFC028();
        v25 = v23;
        v26 = aDsStore[0] == v24 && aDsStore[1] == v23;
        if (v26 || (sub_1AFDFEE28() & 1) != 0 || (aGitignore[0] == v24 ? (v27 = aGitignore[1] == v25) : (v27 = 0), v27 || (sub_1AFDFEE28() & 1) != 0 || *aGit == v24 && unk_1F24F7AB0 == v25 || (sub_1AFDFEE28() & 1) != 0))
        {

          (*v22)(v11, v4);
        }

        else
        {

          v41 = *v43;
          v41(v46, v11, v4);
          v28 = v49;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53[0] = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AFC07204(0, v28[2] + 1, 1);
            v28 = v53[0];
          }

          v31 = v28[2];
          v30 = v28[3];
          v32 = (v31 + 1);
          if (v31 >= v30 >> 1)
          {
            v49 = (v31 + 1);
            sub_1AFC07204(v30 > 1, v31 + 1, 1);
            v32 = v49;
            v28 = v53[0];
          }

          v28[2] = v32;
          v49 = v28;
          v41(v28 + v42 + v31 * v50, v46, v4);
        }

        v21 += v50;
        --v20;
      }

      while (v20);
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    swift_arrayDestroy();

    v35 = v49[2];
    if (v35)
    {
      v36 = v49 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v37 = *(v44 + 72);
      v38 = (v44 + 8);
      v40 = v47;
      v39 = v48;
      while (1)
      {
        v51(v40, v36, v4);
        sub_1AF7F1ECC(v40, v39);
        if (v2)
        {
          break;
        }

        (*v38)(v40, v4);
        v36 += v37;
        if (!--v35)
        {
        }
      }

      (*v38)(v40, v4);
    }
  }

  else
  {
    v33 = v53[0];
    sub_1AFDFBF58();

    return swift_willThrow();
  }
}

uint64_t sub_1AF7F1ECC(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = sub_1AFDFC128();
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - v9;
  v10 = sub_1AFDFC028();
  v12 = v11;
  _s7LibraryCMa();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v13[4] = &unk_1F24F7A38;
  v13[5] = v14;
  v13[6] = sub_1AF432AA0(v14);
  v13[7] = 0;
  v13[2] = v10;
  v13[3] = v12;

  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1AFDFC048();
  v71 = 0;
  v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:&v71];

  v18 = v71;
  if (v17)
  {
    v57 = v7;
    v58 = a2;
    v60 = v13;
    v19 = sub_1AFDFD418();
    v20 = v18;

    v21 = *(v19 + 16);
    v66 = v3;
    v59 = v19;
    if (v21)
    {
      v22 = v3;
      v24 = v62 + 16;
      v23 = *(v62 + 16);
      v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v25 = v19 + v64;
      v26 = *(v62 + 72);
      v63 = (v62 + 8);
      v68 = (v62 + 32);
      v70 = MEMORY[0x1E69E7CC0];
      v27 = v67;
      v65 = v23;
      v23(v67, v19 + v64, v22);
      while (1)
      {
        sub_1AFDFC028();
        v28 = sub_1AFDFD188();

        if (v28)
        {
          v29 = v24;
          v30 = *v68;
          (*v68)(v69, v27, v22);
          v31 = v70;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AFC07204(0, v31[2] + 1, 1);
            v31 = v71;
          }

          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            sub_1AFC07204(v33 > 1, v34 + 1, 1);
            v31 = v71;
          }

          v31[2] = v34 + 1;
          v70 = v31;
          v35 = v31 + v64 + v34 * v26;
          v22 = v66;
          v30(v35, v69, v66);
          v24 = v29;
          v23 = v65;
          v27 = v67;
        }

        else
        {
          (*v63)(v27, v22);
        }

        v25 += v26;
        if (!--v21)
        {
          break;
        }

        v23(v27, v25, v22);
      }
    }

    else
    {
      v70 = MEMORY[0x1E69E7CC0];
    }

    v38 = v70[2];
    if (v38)
    {
      v39 = v61;
      v40 = *(v62 + 16);
      v41 = v70 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v68 = *(v62 + 72);
      v69 = v40;
      v42 = (v62 + 8);
      v43 = v60;
      v44 = v57;
      v45 = v66;
      while (1)
      {
        (v69)(v44, v41, v45);
        sub_1AF7F5A30(v44, v43);
        if (v39)
        {
          break;
        }

        (*v42)(v44, v45);
        v41 = v68 + v41;
        if (!--v38)
        {
          goto LABEL_21;
        }
      }

      result = (*v42)(v44, v45);
      __break(1u);
    }

    else
    {
      v43 = v60;
LABEL_21:

      if (*(v43[6] + 16))
      {
        v46 = v43[2];
        v47 = v43[3];

        v48 = v58;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v48 + 40);
        *(v48 + 40) = 0x8000000000000000;
        sub_1AF853420(v43, v46, v47, v49);

        *(v48 + 40) = v71;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF35A70);
        v50 = v43[2];
        v51 = v43[3];

        MEMORY[0x1B2718AE0](v50, v51);

        MEMORY[0x1B2718AE0](0xD00000000000003CLL, 0x80000001AFF35AA0);
        v53 = v71;
        v52 = v72;
        v54 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v55 = v54;
          swift_once();
          v54 = v55;
        }

        v71 = 0;
        sub_1AF0D4F18(v54, &v71, v53, v52);
      }
    }
  }

  else
  {
    v36 = v71;
    sub_1AFDFBF58();

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1AF7F2510(uint64_t a1)
{
  sub_1AF455364(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  sub_1AF456C4C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v25 = v1;
    sub_1AF7F602C(v5, sub_1AF455364);
    v13 = [objc_opt_self() defaultManager];
    v14 = [v13 URLsForDirectory:5 inDomains:1];

    v15 = sub_1AFDFD418();
    v24 = v15;
    v16 = *(v15 + 16);
    if (v16)
    {
      v19 = *(v7 + 16);
      v18 = v7 + 16;
      v17 = v19;
      v20 = v24 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v21 = *(v18 + 56);
      do
      {
        v17(v9, v20, v6);
        sub_1AF7F2990(v9, 0x6475745320584656, 0xEA00000000006F69, 0x6D65546870617247, 0xEE00736574616C70, v25);
        (*(v18 - 8))(v9, v6);
        v20 += v21;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    sub_1AF7F19AC(v12);
    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_1AF7F2990(uint64_t (*a1)(char *, unint64_t, char *), void (*a2)(char *, char *, char *), uint64_t a3, void (*a4)(uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v79 = a4;
  v87 = a3;
  v88 = a2;
  v89[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1AFDFC128();
  v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v82 = objc_opt_self();
  v22 = [v82 defaultManager];
  v83 = a1;
  v23 = sub_1AFDFC048();
  v89[0] = 0;
  v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:v89];

  v25 = v89[0];
  if (!v24)
  {
    goto LABEL_11;
  }

  v72 = v14;
  v73 = a5;
  v74 = a6;
  v75 = v6;
  v26 = sub_1AFDFD418();
  v27 = v25;

  v78 = v26;
  v28 = *(v26 + 16);
  v29 = v10;
  if (v28)
  {
    v84 = *(v77 + 16);
    v30 = v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v31 = *(v77 + 72);
    v32 = (v77 + 8);
    while (1)
    {
      v84(v21, v30, v29);
      if (sub_1AFDFC028() == v88 && v33 == v87)
      {

        v82 = *v32;
        (v82)(v21, v29);
        goto LABEL_16;
      }

      v34 = sub_1AFDFEE28();

      v35 = *v32;
      (*v32)(v21, v29);
      if (v34)
      {
        break;
      }

      v30 += v31;
      if (!--v28)
      {
        goto LABEL_8;
      }
    }

    v82 = v35;
LABEL_16:
    v46 = v78;
    goto LABEL_17;
  }

LABEL_8:

  v36 = v82;
  v37 = [v82 defaultManager];
  v38 = v81;
  sub_1AFDFC088();
  sub_1AFDFC0D8();
  v39 = *(v77 + 8);
  v39(v38, v29);
  v40 = sub_1AFDFCEC8();

  v89[0] = 0;
  v41 = [v37 createDirectoryAtPath:v40 withIntermediateDirectories:1 attributes:0 error:v89];

  if (!v41)
  {
    v49 = v89[0];
    sub_1AFDFBF58();

    return swift_willThrow();
  }

  v42 = v89[0];
  v43 = [v36 defaultManager];
  v44 = sub_1AFDFC048();
  v89[0] = 0;
  v45 = [v43 contentsOfDirectoryAtURL:v44 includingPropertiesForKeys:0 options:0 error:v89];

  v25 = v89[0];
  if (!v45)
  {
LABEL_11:
    v48 = v25;
    sub_1AFDFBF58();

    return swift_willThrow();
  }

  v82 = v39;
  v46 = sub_1AFDFD418();
  v47 = v25;

LABEL_17:
  v51 = *(v46 + 16);
  v78 = v46;
  if (v51)
  {
    v83 = *(v77 + 16);
    v84 = (v77 + 16);
    v80 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v52 = v46 + v80;
    v53 = *(v77 + 72);
    v76 = v77 + 8;
    v54 = (v77 + 32);
    v55 = MEMORY[0x1E69E7CC0];
    v81 = v29;
    v83(v86, v52, v29);
    while (1)
    {
      if (sub_1AFDFC028() == v88 && v56 == v87)
      {
      }

      else
      {
        v57 = sub_1AFDFEE28();

        if ((v57 & 1) == 0)
        {
          (v82)(v86, v29);
          goto LABEL_20;
        }
      }

      v58 = *v54;
      (*v54)(v85, v86, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC07204(0, v55[2] + 1, 1);
        v55 = v89[0];
      }

      v61 = v55[2];
      v60 = v55[3];
      if (v61 >= v60 >> 1)
      {
        sub_1AFC07204(v60 > 1, v61 + 1, 1);
        v55 = v89[0];
      }

      v55[2] = v61 + 1;
      v62 = v55 + v80 + v61 * v53;
      v29 = v81;
      v58(v62, v85, v81);
LABEL_20:
      v52 += v53;
      if (!--v51)
      {
        goto LABEL_32;
      }

      v83(v86, v52, v29);
    }
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v63 = v55[2];
  if (v63)
  {
    v64 = *(v77 + 16);
    v65 = v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v86 = *(v77 + 72);
    v87 = v77 + 8;
    v88 = v64;
    v66 = v29;
    v68 = v74;
    v67 = v75;
    v69 = v72;
    v70 = v73;
    while (1)
    {
      v88(v69, v65, v66);
      sub_1AF7F3088(v69, v79, v70, v68);
      if (v67)
      {
        break;
      }

      (v82)(v69, v66);
      v65 = &v86[v65];
      if (!--v63)
      {
      }
    }

    (v82)(v69, v66);
  }
}

uint64_t sub_1AF7F3088(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v82 = a2;
  v83[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1AFDFC128();
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v76 = (&v67 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v77 = objc_opt_self();
  v19 = [v77 defaultManager];
  v20 = sub_1AFDFC048();
  v83[0] = 0;
  v21 = [v19 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:v83];

  v22 = v83[0];
  if (!v21)
  {
    goto LABEL_11;
  }

  v75 = a1;
  v68 = v11;
  v69 = a4;
  v70 = v4;
  v23 = sub_1AFDFD418();
  v24 = v22;

  v73 = v23;
  v25 = *(v23 + 16);
  v26 = v7;
  if (v25)
  {
    v78 = *(v72 + 16);
    v27 = v73 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v28 = *(v72 + 72);
    v29 = (v72 + 8);
    while (1)
    {
      v78(v18, v27, v26);
      if (sub_1AFDFC028() == v82 && v30 == v81)
      {

        v76 = *v29;
        v76(v18, v26);
        goto LABEL_16;
      }

      v31 = sub_1AFDFEE28();

      v32 = *v29;
      (*v29)(v18, v26);
      if (v31)
      {
        break;
      }

      v27 += v28;
      if (!--v25)
      {
        goto LABEL_8;
      }
    }

    v76 = v32;
LABEL_16:
    v44 = v73;
    goto LABEL_17;
  }

LABEL_8:

  v33 = v77;
  v34 = [v77 defaultManager];
  v35 = v76;
  sub_1AFDFC088();
  sub_1AFDFC0D8();
  v36 = *(v72 + 8);
  v36(v35, v26);
  v37 = sub_1AFDFCEC8();

  v83[0] = 0;
  v38 = [v34 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:0 error:v83];

  if (!v38)
  {
    v47 = v83[0];
    sub_1AFDFBF58();

    return swift_willThrow();
  }

  v39 = v83[0];
  v40 = [v33 defaultManager];
  v41 = sub_1AFDFC048();
  v83[0] = 0;
  v42 = [v40 contentsOfDirectoryAtURL:v41 includingPropertiesForKeys:0 options:0 error:v83];

  v43 = v83[0];
  if (!v42)
  {
LABEL_11:
    v46 = v83[0];
    sub_1AFDFBF58();

    return swift_willThrow();
  }

  v76 = v36;
  v44 = sub_1AFDFD418();
  v45 = v43;

LABEL_17:
  v49 = *(v44 + 16);
  v73 = v44;
  if (v49)
  {
    v77 = *(v72 + 16);
    v78 = (v72 + 16);
    v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v50 = v44 + v74;
    v51 = *(v72 + 72);
    v71 = v72 + 8;
    v52 = (v72 + 32);
    v53 = MEMORY[0x1E69E7CC0];
    v75 = v26;
    (v77)(v80, v50, v26);
    while (1)
    {
      if (sub_1AFDFC028() == v82 && v54 == v81)
      {
      }

      else
      {
        v55 = sub_1AFDFEE28();

        if ((v55 & 1) == 0)
        {
          v76(v80, v26);
          goto LABEL_20;
        }
      }

      v56 = *v52;
      (*v52)(v79, v80, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC07204(0, v53[2] + 1, 1);
        v53 = v83[0];
      }

      v59 = v53[2];
      v58 = v53[3];
      if (v59 >= v58 >> 1)
      {
        sub_1AFC07204(v58 > 1, v59 + 1, 1);
        v53 = v83[0];
      }

      v53[2] = v59 + 1;
      v60 = v53 + v74 + v59 * v51;
      v26 = v75;
      v56(v60, v79, v75);
LABEL_20:
      v50 += v51;
      if (!--v49)
      {
        goto LABEL_32;
      }

      (v77)(v80, v50, v26);
    }
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v61 = v53[2];
  if (v61)
  {
    v62 = *(v72 + 16);
    v63 = v53 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v81 = *(v72 + 72);
    v82 = v62;
    v64 = v26;
    v65 = v70;
    v66 = v68;
    while (1)
    {
      v82(v66, v63, v64);
      sub_1AF7F19AC(v66);
      if (v65)
      {
        break;
      }

      v76(v66, v64);
      v63 += v81;
      if (!--v61)
      {
      }
    }

    v76(v66, v64);
  }
}

uint64_t sub_1AF7F3770@<X0>(void *a2@<X8>)
{
  swift_getMetatypeMetadata();
  v4 = sub_1AFDFCF88();
  v6 = v5;
  v7 = *(v2 + 24);
  if (*(v7 + 16) && (v8 = v4, , v9 = sub_1AF419914(v8, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = (*(v7 + 56) + 40 * v9);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = v12[4];
  }

  else
  {

    v14 = 0;
    v13 = 0;
    v16 = 0;
    v15 = 0;
    v17 = 0;
  }

  *a2 = v14;
  a2[1] = v13;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v17;
  return result;
}

uint64_t sub_1AF7F386C()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  v48 = v0;
  v7 = *(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_bundle);
  v8 = sub_1AFDFCEC8();
  v9 = sub_1AFDFCEC8();
  v10 = [v7 URLsForResourcesWithExtension:v8 subdirectory:v9];

  if (v10)
  {
    v11 = sub_1AFDFD418();

    v12 = *(v11 + 16);
    if (v12)
    {
      v15 = *(v2 + 16);
      v13 = v2 + 16;
      v14 = v15;
      v16 = *(v13 + 64);
      v44 = v11;
      v17 = v11 + ((v16 + 32) & ~v16);
      v18 = *(v13 + 56);
      v49 = (v13 - 8);
      v45 = v18;
      v46 = v6;
      v15(v6, v17, v1);
      while (1)
      {
        v52 = sub_1AFDFBFF8();
        v53 = v19;
        v50 = 1600285036;
        v51 = 0xE400000000000000;
        sub_1AF770DF0();
        sub_1AF770E44();
        v20 = sub_1AFDFCD68();

        if (v20)
        {
          v21 = v47;
          v14(v47, v6, v1);
          _s7LibraryCMa();
          swift_allocObject();
          v22 = sub_1AF7EBB48(v21);
          v23 = v14;
          v25 = v22[2];
          v24 = v22[3];

          v26 = v1;
          v27 = v13;
          v28 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = *(v28 + 32);
          *(v28 + 32) = 0x8000000000000000;
          sub_1AF853420(v22, v25, v24, isUniquelyReferenced_nonNull_native);
          v14 = v23;
          v6 = v46;

          *(v28 + 32) = v52;
          v13 = v27;
          v1 = v26;
          v18 = v45;
          sub_1AF7EC200();
        }

        (*v49)(v6, v1);
        v17 += v18;
        if (!--v12)
        {
          break;
        }

        v14(v6, v17, v1);
      }
    }
  }

  v30 = *(v48 + 32);
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v35 = 0;
  while (v33)
  {
    v36 = v35;
LABEL_16:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = v37 | (v36 << 6);
    v39 = (*(v30 + 48) + 16 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(*(v30 + 56) + 8 * v38);

    sub_1AF7F3C54(v40, v41, v42, v48);
  }

  while (1)
  {
    v36 = v35 + 1;
    if (v35 + 1 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v35++ + 72);
    if (v33)
    {
      v35 = v36;
      goto LABEL_16;
    }
  }
}

void sub_1AF7F3C54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a3;
  v7 = 0x74616C706D65742ELL;
  v8 = sub_1AFDFC128();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = *(a4 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_bundle);
  v17 = sub_1AFDFCEC8();
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1AFDFE218();

  v49 = 1600285036;
  v50 = 0xE400000000000000;
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](0x74616C706D65742ELL, 0xEA00000000007365);
  v18 = sub_1AFDFCEC8();

  v19 = [v16 URLsForResourcesWithExtension:v17 subdirectory:v18];

  if (v19)
  {
    v39 = v12;
    v20 = sub_1AFDFD418();

    v21 = *(v20 + 16);
    v38 = v20;
    if (v21)
    {
      v45 = *(v40 + 16);
      v46 = v40 + 16;
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v22 = v20 + v42;
      v23 = *(v40 + 72);
      v41 = (v40 + 8);
      v44 = (v40 + 32);
      v24 = MEMORY[0x1E69E7CC0];
      v43 = v8;
      v45(v15, v22, v8);
      while (1)
      {
        sub_1AFDFC028();
        v25 = sub_1AFDFD188();

        if (v25)
        {
          v26 = v7;
          v27 = *v44;
          (*v44)(v47, v15, v8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AFC07204(0, *(v24 + 16) + 1, 1);
            v24 = v49;
          }

          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1AFC07204(v29 > 1, v30 + 1, 1);
            v24 = v49;
          }

          *(v24 + 16) = v30 + 1;
          v31 = v24 + v42 + v30 * v23;
          v8 = v43;
          v27(v31, v47, v43);
          v7 = v26;
        }

        else
        {
          (*v41)(v15, v8);
        }

        v22 += v23;
        if (!--v21)
        {
          break;
        }

        v45(v15, v22, v8);
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v32 = *(v24 + 16);
    v33 = v39;
    if (v32)
    {
      v34 = *(v40 + 16);
      v35 = v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v36 = *(v40 + 72);
      v37 = (v40 + 8);
      do
      {
        v34(v33, v35, v8);
        sub_1AF7F5468(v33, v48);
        (*v37)(v33, v8);
        v35 += v36;
        --v32;
      }

      while (v32);
    }
  }
}

id sub_1AF7F4084(char a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  [*(v2 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock) lock];
  if ((*(v2 + 72) & 1) == 0)
  {
    *(v2 + 72) = 1;
    sub_1AF7F386C();
    sub_1AF7F2510(a2);
    sub_1AF7F01B4();
    sub_1AF7F0DA8();
    sub_1AF7F13DC();
    if (a1)
    {
      v22 = MEMORY[0x1E69E7CC0];
      v6 = *(v2 + 32);
      v7 = 1 << *(v6 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v6 + 64);
      v10 = (v7 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v11 = 0;
      if (v9)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v12 = v11 + 1;
        if (v11 + 1 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v11++ + 72);
        if (v9)
        {
          v11 = v12;
          do
          {
LABEL_10:
            v9 &= v9 - 1;

            sub_1AF7ECA60(&v22, 1);
          }

          while (v9);
          continue;
        }
      }

      v13 = *(v2 + 40);
      v14 = 1 << *(v13 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v13 + 64);
      v17 = (v14 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v18 = 0;
      if (v16)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v19 = v18 + 1;
        if (v18 + 1 >= v17)
        {
          break;
        }

        v16 = *(v13 + 8 * v18++ + 72);
        if (v16)
        {
          v18 = v19;
          do
          {
LABEL_19:
            v16 &= v16 - 1;

            sub_1AF7ECA60(&v22, 2);
          }

          while (v16);
          continue;
        }
      }
    }
  }

  v20 = *(v2 + v5);

  return [v20 unlock];
}

uint64_t sub_1AF7F42EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  [*(v7 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock) lock];
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  if (a1)
  {
    if (a1 == 1)
    {
      v16 = 0x6E69746C697542;
    }

    else
    {
      v16 = 1919251285;
    }

    if (a1 == 1)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE400000000000000;
    }
  }

  else
  {
    v17 = 0xE500000000000000;
    v16 = 0x6C61636F4CLL;
  }

  MEMORY[0x1B2718AE0](v16, v17);

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a2, a3);
  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a4, a5);
  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a6, a7);
  if (a1)
  {
    v32 = a7;
    if (a1 == 1)
    {
      v18 = *(v33 + 32);
      if (!*(v18 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = *(v33 + 40);
      if (!*(v18 + 16))
      {
        goto LABEL_27;
      }
    }

    v21 = sub_1AF419914(a2, a3);
    if (v22)
    {
      v23 = *(*(*(v18 + 56) + 8 * v21) + 48);
      if (*(v23 + 16))
      {

        v24 = sub_1AF419914(a4, a5);
        if (v25)
        {
          v26 = *(*(*(v23 + 56) + 8 * v24) + 40);
          v27 = *(v26 + 16);

          if (v27)
          {
            v28 = sub_1AF419914(a6, a7);
            if (v29)
            {
              v20 = *(*(v26 + 56) + 8 * v28);

              goto LABEL_28;
            }
          }

LABEL_27:
          v20 = 0;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_27;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v19 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v31 = v19;
    swift_once();
    v19 = v31;
  }

  v34[0] = 0;
  sub_1AF0D4F18(v19, v34, 0xD00000000000003DLL, 0x80000001AFF35A00);
  v20 = 0;
LABEL_28:
  [*(v33 + v15) unlock];
  return v20;
}

uint64_t sub_1AF7F4614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  [*(v2 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock) lock];
  v5 = *(v2 + 32);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = 0;
  v38 = 0;
  v39 = 0;
  v12 = 0;
  while (v8)
  {
    v13 = v8;
LABEL_9:
    v8 = (v13 - 1) & v13;
    if ((v11 & 1) == 0)
    {

      v15 = sub_1AF7EC8F0(a1, a2, 1);
      if (v17)
      {
        v33 = v15;
        v34 = v16;
        v36 = v17;
        sub_1AF7EF6F0(v39, v38, v12);

        v11 = 1;
        v38 = v34;
        v39 = v33;
        v12 = v36;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v14 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v13 = *(v5 + 8 * v10++ + 72);
    if (v13)
    {
      v10 = v14;
      goto LABEL_9;
    }
  }

  if ((v11 & 1) == 0)
  {
    v37 = a2;
    v18 = *(v2 + 40);
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 64);
    v22 = (v19 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v23 = 0;
    while (v21)
    {
LABEL_22:

      v25 = sub_1AF7EC8F0(a1, v37, 2);
      if (v27)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        sub_1AF7EF6F0(v39, v38, v12);
        v38 = v29;
        v39 = v28;
        v12 = v30;
      }

      v21 &= v21 - 1;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (v23 + 1 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v23++ + 72);
      if (v21)
      {
        v23 = v24;
        goto LABEL_22;
      }
    }

    v3 = v2;
  }

  if (v12)
  {
    v31 = v39;
  }

  else
  {
    v31 = 0;
  }

  [*(v3 + v35) unlock];
  return v31;
}

uint64_t sub_1AF7F48D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  [*(v6 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock) lock];
  if (!a6)
  {
    if (*(*(v6 + 32) + 16))
    {

      sub_1AF419914(a1, a2);
      if (v38)
      {

        v39 = sub_1AF7EEBAC(a3, a4, a5, 0);

LABEL_26:
        [*(v6 + v13) unlock];
        return v39;
      }
    }

    v39 = 0;
    goto LABEL_26;
  }

  v66 = v13;
  v67 = v6;
  v14 = *(v6 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_codeSourceSnippetRemapping);

  while (1)
  {

    MEMORY[0x1B2718AE0](124, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a5, a6);
    if (!*(v14 + 16))
    {
      break;
    }

    sub_1AF419914(a1, a2);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_1AF4486E4();

    v19 = sub_1AFDFDF28();

    v20 = v19[4];
    v21 = v19[5];
    v22 = v19[6];
    v23 = v19[7];

    a1 = MEMORY[0x1B27189E0](v20, v21, v22, v23);
    a2 = v24;

    v25 = v19[8];
    v26 = v19[9];
    v27 = v19[10];
    v28 = v19[11];

    MEMORY[0x1B27189E0](v25, v26, v27, v28);

    v29 = sub_1AFDFDF28();

    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v29 + 32);
      v32 = *(v29 + 40);
      v34 = *(v29 + 48);
      v33 = *(v29 + 56);
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v34 = 0;
      v33 = 0;
    }

    v35 = v30 != 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 - (v30 != 0) > *(v29 + 24) >> 1)
    {
      v29 = sub_1AF4250EC(isUniquelyReferenced_nonNull_native, v30, 1, v29);
    }

    swift_arrayDestroy();
    if (v30)
    {
      v37 = *(v29 + 16);
      memmove((v29 + 32), (v29 + 64), 32 * (v37 - v35));
      *(v29 + 16) = v37 - 1;
    }

    a3 = MEMORY[0x1B27189E0](v31, v32, v34, v33);
    a4 = v15;

    sub_1AF7F6148(0, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
    sub_1AF7F5FB0();
    sub_1AF6DC518();
    a5 = sub_1AFDFD298();
    a6 = v16;
  }

LABEL_18:
  v40 = v67;
  v41 = *(v67 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_codeSourceSnippetRemappingWithValueTransfer);

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a3, a4);
  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  MEMORY[0x1B2718AE0](a5, a6);
  if (*(v41 + 16))
  {
    sub_1AF419914(a1, a2);
    v43 = v42;

    if (v43)
    {

      sub_1AF4486E4();

      v44 = sub_1AFDFDF28();

      v45 = v44[4];
      v46 = v44[5];
      v47 = v44[6];
      v48 = v44[7];

      a1 = MEMORY[0x1B27189E0](v45, v46, v47, v48);
      a2 = v49;

      v50 = v44[8];
      v51 = v44[9];
      v52 = v44[10];
      v53 = v44[11];

      MEMORY[0x1B27189E0](v50, v51, v52, v53);

      v54 = sub_1AFDFDF28();

      v55 = *(v54 + 16);
      if (v55)
      {
        v56 = *(v54 + 32);
        v57 = *(v54 + 40);
        v58 = *(v54 + 48);
        v59 = *(v54 + 56);
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 0;
      }

      v60 = swift_isUniquelyReferenced_nonNull_native();
      if (!v60 || v55 - (v55 != 0) > *(v54 + 24) >> 1)
      {
        sub_1AF4250EC(v60, v55, 1, v54);
      }

      sub_1AF64CB0C(0, v55 != 0, 0);
      a3 = MEMORY[0x1B27189E0](v56, v57, v58, v59);
      a4 = v61;

      sub_1AF7F6148(0, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
      sub_1AF7F5FB0();
      sub_1AF6DC518();
      a5 = sub_1AFDFD298();
      a6 = v62;
    }

    v40 = v67;
  }

  else
  {
  }

  if (*(*(v40 + 32) + 16) && (, sub_1AF419914(a1, a2), v64 = v63, , (v64 & 1) != 0))
  {

    v39 = sub_1AF7EEBAC(a3, a4, a5, a6);
  }

  else
  {

    v39 = 0;
  }

  [*(v40 + v66) unlock];
  return v39;
}

uint64_t sub_1AF7F5070(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
  [*(v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock) lock];
  v5 = *(v1 + 48);
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_1AF41A308(a1);
  if ((v7 & 1) == 0)
  {

LABEL_11:
    [*(v2 + v4) unlock];
    return 0;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 72);
    while (1)
    {
      v11 = *(v10 - 5);
      v12 = *(v10 - 3);
      v22 = *(v10 - 1);
      v21[0] = v11;
      v21[1] = v12;
      v13 = *v10;
      sub_1AF444F60(v21, v20);

      v14 = sub_1AF7FE65C();
      v16 = v15;
      if (v14 == sub_1AF7FE65C() && v16 == v17)
      {
        break;
      }

      v18 = sub_1AFDFEE28();

      if (v18)
      {
        goto LABEL_13;
      }

      sub_1AF444FBC(v21);

      v10 += 6;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

LABEL_13:

    sub_1AF444FBC(v21);
  }

  else
  {
LABEL_9:

    v13 = 0;
  }

  [*(v2 + v4) unlock];
  return v13;
}

void *sub_1AF7F522C()
{

  sub_1AF7F602C(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_vfxGraphTemplatesDir, sub_1AF455364);

  return v0;
}

uint64_t sub_1AF7F52F0()
{
  sub_1AF7F522C();

  return swift_deallocClassInstance();
}

uint64_t _s9ResourcesCMa(uint64_t a1)
{
  result = qword_1EB63EE28;
  if (!qword_1EB63EE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF7F539C(uint64_t a1)
{
  sub_1AF455364(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AF7F5468(uint64_t a1, void *a2)
{
  v51 = a1;
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1AFDFBFF8();
  v37 = v7;
  strcpy(v49, ".template.json");
  HIBYTE(v49[0]) = -18;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_1AF4486E4();
  v8 = sub_1AFDFDEB8();
  v10 = v9;

  (*(v4 + 16))(v6, v51, v3);
  _s11TemplateSetCMa();
  swift_allocObject();

  v11 = sub_1AF7FA288(v8, v10, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = a2[6];
  a2[6] = 0x8000000000000000;
  v31 = v8;
  sub_1AF857184(v11, v8, v10, isUniquelyReferenced_nonNull_native);
  v33 = v10;

  a2[6] = v36;
  v30[1] = v11;
  v13 = v11[5];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v32 = a2;
  while (v16)
  {
LABEL_9:
    v20 = __clz(__rbit64(v16)) | (v18 << 6);
    v21 = *(*(v13 + 48) + 16 * v20 + 8);
    v22 = *(*(v13 + 56) + 8 * v20);
    v36 = 0x6E69746C697542;
    v37 = 0xE700000000000000;
    v23 = a2[2];
    v24 = a2[3];
    v51 = v21;

    MEMORY[0x1B2718AE0](v23, v24);

    MEMORY[0x1B2718AE0](v31, v33);
    sub_1AF7888DC(v36, v37);

    v44 = MEMORY[0x1E69E6530];
    v43[0] = 1;
    v34 = v22;
    v25 = (v22 + 16);
    if (!*(v22 + 16))
    {
      *v25 = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

    sub_1AF0D5A54(v43, v35);
    v41 = 0u;
    v42 = 0u;
    v36 = 0x6E4F646165725F5FLL;
    v37 = 0xEA0000000000796CLL;
    sub_1AF809A8C(v35, v45);
    v38 = v45[0];
    v39 = v45[1];
    v40 = v46;
    sub_1AF7F60D8(&v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(v35, &v41);
    sub_1AF82436C(&v36, 0x6E4F646165725F5FLL, 0xEA0000000000796CLL);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
    v44 = &_s8TemplateV8CategoryON;
    LOBYTE(v43[0]) = 1;
    if (!*v25)
    {
      *v25 = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

    sub_1AF0D5A54(v43, v35);
    v41 = 0u;
    v42 = 0u;
    v36 = 0x6F67657461635F5FLL;
    v37 = 0xEA00000000007972;
    sub_1AF809A8C(v35, v47);
    v38 = v47[0];
    v39 = v47[1];
    v40 = v48;
    sub_1AF7F60D8(&v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(v35, &v41);
    sub_1AF82436C(&v36, 0x6F67657461635F5FLL, 0xEA00000000007972);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
    a2 = v32;
    v26 = v32[4];
    v27.i64[0] = *(v26 + 32);
    v27.i32[2] = *(v26 + 40);
    v27.i32[3] = 1.0;
    v28 = sub_1AF57EFBC(v27);
    v44 = &type metadata for ColorU8;
    LODWORD(v43[0]) = v28;
    if (!*v25)
    {
      *v25 = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

    v16 &= v16 - 1;
    sub_1AF0D5A54(v43, v35);
    v41 = 0u;
    v42 = 0u;
    v36 = 0x726F6C6F63;
    v37 = 0xE500000000000000;
    sub_1AF809A8C(v35, v49);
    v38 = v49[0];
    v39 = v49[1];
    v40 = v50;
    sub_1AF7F60D8(&v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(v35, &v41);
    sub_1AF82436C(&v36, 0x726F6C6F63, 0xE500000000000000);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
  }

  while (1)
  {
    v19 = v18 + 1;
    if (v18 + 1 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v18++ + 72);
    if (v16)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AF7F5A30(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = sub_1AFDFC028();
  *(&v39 + 1) = v7;
  strcpy(&v33, ".template.json");
  HIBYTE(v33) = -18;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_1AF4486E4();
  v8 = sub_1AFDFDEB8();
  v10 = v9;

  (*(v4 + 16))(v6, v49, v3);
  _s11TemplateSetCMa();
  swift_allocObject();

  v11 = sub_1AF7FA288(v8, v10, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(a2 + 48);
  *(a2 + 48) = 0x8000000000000000;
  v29 = v8;
  sub_1AF857184(v11, v8, v10, isUniquelyReferenced_nonNull_native);
  v31 = v10;

  v30 = a2;
  *(a2 + 48) = v39;
  v28 = v11;
  v13 = v11[5];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  while (v16)
  {
LABEL_9:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = *(*(v13 + 48) + 16 * v21 + 8);
    v23 = *(*(v13 + 56) + 8 * v21);
    *&v39 = 1919251285;
    *(&v39 + 1) = 0xE400000000000000;
    v24 = *(v30 + 16);
    v25 = *(v30 + 24);
    v49 = v22;

    MEMORY[0x1B2718AE0](v24, v25);

    MEMORY[0x1B2718AE0](v29, v31);
    sub_1AF7888DC(v39, *(&v39 + 1));

    v44 = MEMORY[0x1E69E6530];
    v43[0] = 1;
    if (!*(v23 + 16))
    {
      *(v23 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

    sub_1AF0D5A54(v43, &v33);
    memset(&v42[8], 0, 32);
    *&v39 = 0x6E4F646165725F5FLL;
    *(&v39 + 1) = 0xEA0000000000796CLL;
    sub_1AF809A8C(&v33, v45);
    v40 = v45[0];
    v41 = v45[1];
    *v42 = v46;
    sub_1AF7F60D8(&v42[8], &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(&v33, &v42[8]);
    v35 = v41;
    v36 = *v42;
    v37 = *&v42[16];
    v38 = *&v42[32];
    v33 = v39;
    v34 = v40;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v23 + 16);
    sub_1AF85148C(&v33, 0x6E4F646165725F5FLL, 0xEA0000000000796CLL, v26);
    *(v23 + 16) = v32;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
    v44 = &_s8TemplateV8CategoryON;
    LOBYTE(v43[0]) = 2;
    if (!*(v23 + 16))
    {
      *(v23 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

    v16 &= v16 - 1;
    sub_1AF0D5A54(v43, &v33);
    memset(&v42[8], 0, 32);
    *&v39 = 0x6F67657461635F5FLL;
    *(&v39 + 1) = 0xEA00000000007972;
    sub_1AF809A8C(&v33, v47);
    v40 = v47[0];
    v41 = v47[1];
    *v42 = v48;
    sub_1AF7F60D8(&v42[8], &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(&v33, &v42[8]);
    v35 = v41;
    v36 = *v42;
    v37 = *&v42[16];
    v38 = *&v42[32];
    v33 = v39;
    v34 = v40;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v23 + 16);
    sub_1AF85148C(&v33, 0x6F67657461635F5FLL, 0xEA00000000007972, v19);
    *(v23 + 16) = v32;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
  }

  while (1)
  {
    v20 = v18 + 1;
    if (v18 + 1 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v18++ + 72);
    if (v16)
    {
      v18 = v20;
      goto LABEL_9;
    }
  }
}

unint64_t sub_1AF7F5FB0()
{
  result = qword_1EB63EA88;
  if (!qword_1EB63EA88)
  {
    sub_1AF7F6148(255, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1EB63EA88);
  }

  return result;
}

uint64_t sub_1AF7F602C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF7F608C()
{
  result = qword_1EB63EE38;
  if (!qword_1EB63EE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB63EE38);
  }

  return result;
}

uint64_t sub_1AF7F60D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF7F6148(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF7F6148(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF7F6198()
{
  v1 = sub_1AF7F64F4();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1;
  v4 = v2;
  sub_1AF7F6D40(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);

  MEMORY[0x1B2718AE0](v3, v4);

  result = v5;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  return result;
}

uint64_t sub_1AF7F6288()
{
  v1 = v0;
  v2 = sub_1AF7F64F4();
  if (!v3)
  {
    sub_1AF445550(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AFE431C0;
    v9 = *(v1 + 160);
    v15 = *(v1 + 144);
    v16 = v9;
    *&v17 = *(v1 + 176);
    sub_1AF444F60(&v15, &v21);
    sub_1AF7FCDD4(&v15, 1, &v21);
    sub_1AF444FBC(&v15);
    v10 = v24;
    *(v5 + 64) = v23;
    *(v5 + 80) = v10;
    *(v5 + 96) = v25;
    *(v5 + 112) = v26;
    v11 = v22;
    *(v5 + 32) = v21;
    *(v5 + 48) = v11;
    return v5;
  }

  v4 = sub_1AF764B14(v2, v3);
  if (!v4 || !swift_weakLoadStrong())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    goto LABEL_7;
  }

  v13 = *(v4 + 24);
  v14 = *(v4 + 32);

  MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
  sub_1AF7FDD44(v13, v14, &v15);

  if (!*(&v15 + 1))
  {
LABEL_7:
    sub_1AF7F6CD0(&v15, &qword_1EB6335B0, &_s8MetadataVN);
    sub_1AF445550(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AFE431C0;
    v6 = *(v1 + 160);
    v15 = *(v1 + 144);
    v16 = v6;
    *&v17 = *(v1 + 176);
    sub_1AF444F60(&v15, &v21);
    sub_1AF7FCDD4(&v15, 1, &v21);
    sub_1AF444FBC(&v15);

    v7 = v24;
    *(v5 + 64) = v23;
    *(v5 + 80) = v7;
    *(v5 + 96) = v25;
    *(v5 + 112) = v26;
    v8 = v22;
    *(v5 + 32) = v21;
    *(v5 + 48) = v8;

    return v5;
  }

  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v21 = v15;
  v22 = v16;
  sub_1AF445550(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  sub_1AF4455CC(&v21, v5 + 32);

  sub_1AF761390(&v21);
  return v5;
}

uint64_t sub_1AF7F64F4()
{
  sub_1AF7FDC2C(0xD000000000000019, 0x80000001AFF35C90, &v8);
  if (!v9)
  {
    sub_1AF7F6CD0(&v8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 40);
  v2 = *(v1 + 2);
  if (v2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8 = v1;
    if (!isUniquelyReferenced_nonNull_native || (v2 - 1) > *(v1 + 3) >> 1)
    {
      v1 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v2, 1, v1);
      *&v8 = v1;
    }

    sub_1AF64C314(0, 1, 0);

    v4 = *(v1 + 2);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v1 = MEMORY[0x1E69E7CC0];
  v4 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v4)
  {
LABEL_12:

    return 0;
  }

LABEL_8:
  if (v7 >= v4)
  {
    v5 = *(v1 + 4);
  }

  else
  {
    v5 = *&v1[16 * v7 + 32];
  }

  return v5;
}

uint64_t sub_1AF7F6664()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7F66B0(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7F66F8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1AF7F674C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7F67A4(uint64_t a1)
{
  v2 = sub_1AF7F6C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7F67E0(uint64_t a1)
{
  v2 = sub_1AF7F6C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7F6868(void *a1)
{
  v3 = v1;
  sub_1AF7F6C6C(0, &qword_1EB63EE50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = sub_1AF441150(a1, a1[3]);
  sub_1AF7F6C18();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s19StaticSwitchSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1AF75FCC4();
    sub_1AFDFE768();
    v12 = v15;
    v13 = v14[1];
    *(v3 + 144) = v14[0];
    *(v3 + 160) = v13;
    *(v3 + 176) = v12;
    sub_1AF441194(a1, v14);
    v10 = sub_1AF7B754C(v14);
    (*(v7 + 8))(v9, v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v10;
}

uint64_t sub_1AF7F6A7C(void *a1)
{
  sub_1AF7F6C6C(0, &qword_1EB63EE40, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  result = sub_1AF7B77B0(a1);
  if (!v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF7F6C18();
    sub_1AFDFF3F8();
    v10 = *(v1 + 176);
    v11 = *(v1 + 160);
    v12[0] = *(v1 + 144);
    v12[1] = v11;
    v13 = v10;
    sub_1AF75FC0C();
    sub_1AFDFE918();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1AF7F6C18()
{
  result = qword_1EB63EE48;
  if (!qword_1EB63EE48)
  {
    result = swift_getWitnessTable(aY_52, &_s19StaticSwitchSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EE48);
  }

  return result;
}

void sub_1AF7F6C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF7F6C18();
    v7 = a3(a1, &_s19StaticSwitchSnippetC10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF7F6CD0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF7F6D40(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF7F6D40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF7F6DA4()
{
  result = qword_1EB63EE58;
  if (!qword_1EB63EE58)
  {
    result = swift_getWitnessTable(byte_1AFE78B38, &_s19StaticSwitchSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EE58);
  }

  return result;
}

unint64_t sub_1AF7F6DFC()
{
  result = qword_1EB63EE60;
  if (!qword_1EB63EE60)
  {
    result = swift_getWitnessTable(byte_1AFE78A70, &_s19StaticSwitchSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EE60);
  }

  return result;
}

unint64_t sub_1AF7F6E54()
{
  result = qword_1EB63EE68;
  if (!qword_1EB63EE68)
  {
    result = swift_getWitnessTable(byte_1AFE78A98, &_s19StaticSwitchSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EE68);
  }

  return result;
}

uint64_t sub_1AF7F6EA8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v39 = *(a2 + 16);
  v40 = *(a1 + 16);
  if (v39 >= v40)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v50 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v4, 0);
  v5 = v50;
  v36 = a2;
  v6 = 0;
  if (v4)
  {
    v42 = 0;
    v44 = 0;
    v37 = a2 + 32;
    v38 = v3 + 32;
    v41 = v3;
    do
    {
      v7 = 0;
      v48 = v5;
      if ((v6 & 1) != 0 || v44 == v40)
      {
        v46 = 1;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      else if (v42 == v39)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v46 = 1;
        v42 = v39;
        ++v44;
      }

      else
      {
        v14 = (v38 + 16 * v44);
        v15 = *v14;
        v10 = v14[1];
        v16 = (v37 + 40 * v42);
        v9 = *v16;
        v8 = v16[1];
        v7 = v16[2];
        v12 = v16[3];
        v13 = v16[4];
        ++v42;

        sub_1AF687F90(v9, v8, v7, v12, v13);
        v11 = v15;
        v46 = 0;
        ++v44;
      }

      MEMORY[0x1B2718AE0](v11, v10);
      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      sub_1AFDFE458();

      sub_1AF687FE4(v9, v8, v7, v12, v13);
      v5 = v48;
      v18 = *(v48 + 16);
      v17 = *(v48 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC05CE4(v17 > 1, v18 + 1, 1);
        v5 = v48;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0xE000000000000000;
      --v4;
      v3 = v41;
      v6 = v46;
    }

    while (v4);
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v49 = v5;
  if ((v6 & 1) == 0 && v44 != v40 && v42 != v39)
  {
    v21 = (v3 + 16 * v44 + 40);
    v22 = ~v44 + v40;
    v23 = ~v42 + v39;
    v24 = (v36 + 40 * v42 + 64);
    do
    {
      v43 = v23;
      v25 = *v21;
      v45 = *(v21 - 1);
      v47 = v22;
      v26 = *(v24 - 4);
      v27 = *(v24 - 3);
      v28 = *(v24 - 2);
      v29 = *(v24 - 1);
      v30 = *v24;

      sub_1AF687F90(v26, v27, v28, v29, v30);
      MEMORY[0x1B2718AE0](v45, v25);
      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      sub_1AFDFE458();

      sub_1AF687FE4(v26, v27, v28, v29, v30);
      v31 = v49;
      v33 = *(v49 + 16);
      v32 = *(v49 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1AFC05CE4(v32 > 1, v33 + 1, 1);
        v31 = v49;
      }

      *(v31 + 16) = v33 + 1;
      v49 = v31;
      v34 = v31 + 16 * v33;
      *(v34 + 32) = 0;
      *(v34 + 40) = 0xE000000000000000;
      if (!v47)
      {
        break;
      }

      v24 += 5;
      v21 += 2;
      v22 = v47 - 1;
      v23 = v43 - 1;
    }

    while (v43);
  }

  return v49;
}

uint64_t sub_1AF7F727C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v2, 0);
    v4 = 32;
    v3 = v33[0];
    do
    {
      v5 = *(v1 + v4);
      v6 = *(v1 + v4 + 16);
      v38 = *(v1 + v4 + 32);
      v37[0] = v5;
      v37[1] = v6;
      sub_1AF444F60(v37, v35);
      v7 = sub_1AF7FE65C();
      v9 = v8;
      sub_1AF444FBC(v37);
      v33[0] = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC05CE4(v10 > 1, v11 + 1, 1);
        v3 = v33[0];
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  *&v35[0] = v3;
  sub_1AF7F9B70(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v13 = sub_1AFDFCD98();
  v15 = v14;

  v16 = *(v0 + 88);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v32 = v13;
    v34 = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v17, 0);
    v19 = 32;
    v18 = v34;
    do
    {
      v20 = *(v16 + v19);
      v21 = *(v16 + v19 + 16);
      v36 = *(v16 + v19 + 32);
      v35[0] = v20;
      v35[1] = v21;
      sub_1AF444F60(v35, v33);
      v22 = sub_1AF7FE65C();
      v24 = v23;
      sub_1AF444FBC(v35);
      v34 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 += 40;
      --v17;
    }

    while (v17);

    v13 = v32;
  }

  v33[0] = v18;
  v28 = sub_1AFDFCD98();
  v30 = v29;

  v33[0] = 40;
  v33[1] = 0xE100000000000000;
  MEMORY[0x1B2718AE0](v13, v15);

  MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v28, v30);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return v33[0];
}

uint64_t sub_1AF7F7564()
{
  sub_1AF76B4B4();

  return sub_1AF764300();
}

uint64_t sub_1AF7F758C()
{
  result = sub_1AF8D3CBC();
  if (v3)
  {
    v4 = v2;

    sub_1AF8D3CBC();
    if (v6)
    {
      v7 = v5;

      v8 = *(v4 + 88);
      v9 = *(v7 + 40);
      v10 = *(v7 + 48);
      v0[5] = *(v4 + 80);
      swift_bridgeObjectRetain_n();

      v0[6] = v8;

      sub_1AF76B4B4();
      sub_1AF764300();
      v0[10] = v9;

      v0[11] = v10;

      sub_1AF763428();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF7F76D8()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  v4 = sub_1AF7F6EA8(v2, v3);

  *&v22 = v4;
  v5 = MEMORY[0x1E69E6158];
  sub_1AF7F9B70(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v6 = sub_1AFDFCD98();
  v8 = v7;

  v9 = *(v1 + 80);
  v10 = *(v1 + 88);

  v11 = sub_1AF7F6EA8(v9, v10);

  *&v22 = v11;
  v12 = sub_1AFDFCD98();
  v14 = v13;

  sub_1AF7FDC2C(0x6C706D6554657375, 0xEB00000000657461, &v22);
  if (v23)
  {
    if (swift_dynamicCast() & 1) != 0 && (v20[0])
    {

      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v21 = 0xD000000000000014;
      *(&v21 + 1) = 0x80000001AFF35D20;
      sub_1AF7FDC2C(0x6574616C706D6574, 0xEC000000656D614ELL, &v22);
      if (v23)
      {
        if (swift_dynamicCast())
        {
          v16 = *(&v20[0] + 1);
          v15 = *&v20[0];
LABEL_12:
          MEMORY[0x1B2718AE0](v15, v16);
          goto LABEL_9;
        }
      }

      else
      {
        sub_1AF44CB60(&v22);
      }

      v23 = v5;
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v22, v20);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v22);
      sub_1AF449D40(v20, &v22);
      swift_dynamicCast();
      v15 = v18;
      v16 = v19;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1AF44CB60(&v22);
  }

  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  v21 = v22;
  MEMORY[0x1B2718AE0](0x65746E6F43627553, 0xEB00000000287478);
  v23 = v5;
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v22, v20);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v22);
  sub_1AF449D40(v20, &v22);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0]();

  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF35CE0);
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF35D00);
  MEMORY[0x1B2718AE0](v12, v14);
LABEL_9:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return v21;
}

void *sub_1AF7F7ACC()
{
  v1 = v0;
  v2 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30[1] = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AFDFBBE8();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v36 = MEMORY[0x1E69E6158];
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v35, v34);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v35);
  sub_1AF449D40(v34, &v35);
  swift_dynamicCast();
  v11 = v32;
  v10 = v33;
  v12 = *(v0 + 24);
  v13 = *(v1 + 32);
  v14 = *(v1 + 136);
  _s10SubContextCMa(0);
  swift_allocObject();
  swift_retain_n();

  v15 = sub_1AF795F18(v12, v13, v14);
  v36 = MEMORY[0x1E69E6158];
  *&v35 = v11;
  *(&v35 + 1) = v10;
  v16 = v4;
  v17 = v31;

  sub_1AF7FDB64(1701667182, 0xE400000000000000, &v35);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v35);
  sub_1AF762768(v15);
  sub_1AFDFBBC8();
  sub_1AFDFBC38();
  swift_allocObject();
  sub_1AFDFBC28();
  (*(v17 + 16))(v6, v9, v16);
  sub_1AFDFBBF8();
  *&v35 = v1;
  _s7ContextCMa(0);
  sub_1AF7F9BC0();
  v18 = sub_1AFDFBC08();
  v30[0] = v1;
  v21 = v18;
  v23 = v22;
  sub_1AFDFCF58();
  v24 = sub_1AFDFCF18();
  v26 = v25;
  sub_1AF439ED8(v21, v23);

  (*(v17 + 8))(v9, v16);
  if (v26)
  {
    v19 = sub_1AF7A41B4(v24, v26);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v28 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v29 = v28;
      swift_once();
      v28 = v29;
    }

    *&v35 = 0;
    sub_1AF0D4F18(v28, &v35, 0xD00000000000003FLL, 0x80000001AFF34240);
    v19 = 0;
  }

  v15[21] = v19[21];

  v15[22] = v19[22];

  v15[23] = v19[23];

  v15[25] = v19[25];

  v15[32] = v19[32];

  v15[33] = v19[33];

  v15[34] = v19[34];

  sub_1AF7FDC2C(0x6574616C706D6574, 0xEC000000656D614ELL, &v35);
  if (!v36)
  {
    sub_1AF44CB60(&v35);
    goto LABEL_9;
  }

  v20 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v15;
  }

  v36 = v20;
  v35 = v34[0];
  sub_1AF7FDB64(0x6574616C706D6574, 0xEC000000656D614ELL, &v35);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v35);
  return v15;
}

uint64_t sub_1AF7F8094(void *a1)
{
  swift_allocObject();
  sub_1AF441194(a1, v4);
  v2 = sub_1AF79CDC8(v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF7F810C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v121 = a3;
  v120 = a2;
  v119 = a1;
  v8 = *a1;
  v9 = *(*a1 + 24);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E6158];
  v117 = *(*a1 + 24);
  v118 = 0;
  if (a5)
  {
    sub_1AF8D3CBC();
    v14 = v13;

    v15 = *(v8 + 48);
    v16 = *(v8 + 56);
    LOBYTE(v129) = v9;
    *(&v129 + 1) = 256;
    BYTE3(v129) = 1;
    *(&v129 + 1) = v10;
    LOWORD(v130) = 0;
    *(&v130 + 1) = v15;
    *&v131 = v16;
    WORD4(v131) = 257;
    v132 = 0uLL;
    v135 = v131;
    v136 = 0uLL;
    v133 = v129;
    v134 = v130;

    v115 = v14;
    v17 = sub_1AF79054C(v14, &v133, a4);
    sub_1AF75FD78(&v129);
    v18 = *(v8 + 136);
    v124 = v11;
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;

    sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v123, v122);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v123);
    sub_1AF449D40(v122, &v123);
    v19 = swift_dynamicCast();
    v123 = v128;
    MEMORY[0x1EEE9AC00](v19);
    v111 = &v123;
    v20 = v118;
    v21 = sub_1AF7B9518(sub_1AF771190, &v109, v18);

    if (v21)
    {
    }

    else
    {
      v114 = a5;
      v118 = v20;
      v116 = v6;
      *&v123 = 0;
      *(&v123 + 1) = 0xE000000000000000;
      v27 = *(*(v17 + 128) + 16);

      v29 = 0xE000000000000000;
      if (v27)
      {
        v113 = v28;
        v30 = (v28 + 40);
        v31 = MEMORY[0x1E69E6158];
        do
        {
          v32 = *v30;
          *&v122[0] = *(v30 - 1);
          *(&v122[0] + 1) = v32;
          *&v128 = 0x244E49414D4F4424;
          *(&v128 + 1) = 0xE800000000000000;
          v126 = 34;
          v127 = 0xE100000000000000;
          v33 = v17;
          v34 = *(v17 + 88);
          v35 = *(v17 + 96);

          MEMORY[0x1B2718AE0](v34, v35);

          MEMORY[0x1B2718AE0](34, 0xE100000000000000);
          v111 = sub_1AF4486E4();
          v112 = v111;
          v109 = v31;
          v110 = v111;
          v36 = sub_1AFDFDEB8();
          v38 = v37;

          v39 = v36;
          v17 = v33;
          MEMORY[0x1B2718AE0](v39, v38);

          v30 += 2;
          --v27;
        }

        while (v27);
        v29 = *(&v123 + 1);
        v40 = v123;
        v9 = v117;
      }

      else
      {
        v40 = 0;
      }

      *&v123 = v40;
      *(&v123 + 1) = v29;
      *&v122[0] = 10;
      *(&v122[0] + 1) = 0xE100000000000000;
      *&v128 = 2314;
      *(&v128 + 1) = 0xE200000000000000;
      v111 = sub_1AF4486E4();
      v112 = v111;
      v110 = v111;
      v61 = MEMORY[0x1E69E6158];
      v109 = MEMORY[0x1E69E6158];
      v62 = sub_1AFDFDEB8();
      v64 = v63;

      *&v123 = 8201;
      *(&v123 + 1) = 0xE200000000000000;
      MEMORY[0x1B2718AE0](v62, v64);

      sub_1AF64E080(0, 0, v123, *(&v123 + 1));

      v124 = v61;
      *&v123 = 0;
      *(&v123 + 1) = 0xE000000000000000;
      sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v123, v122);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v123);

      sub_1AF449D40(v122, &v123);
      swift_dynamicCast();
      v65 = v128;
      v66 = *(v8 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 136) = v66;
      v6 = v116;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = sub_1AF420554(0, *(v66 + 2) + 1, 1, v66);
        *(v8 + 136) = v66;
      }

      v69 = *(v66 + 2);
      v68 = *(v66 + 3);
      if (v69 >= v68 >> 1)
      {
        v66 = sub_1AF420554(v68 > 1, v69 + 1, 1, v66);
      }

      *(v66 + 2) = v69 + 1;
      *&v66[16 * v69 + 32] = v65;
      *(v8 + 136) = v66;
      v70 = *(v17 + 104);
      v71 = *(v70 + 16);

      if (v71)
      {
        v72 = (v70 + 40);
        do
        {
          v73 = *(v72 - 1);
          v74 = *v72;

          sub_1AF6B0504(v73, v74);

          v72 += 2;
          --v71;
        }

        while (v71);
      }
    }
  }

  else
  {
    v23 = *(v8 + 48);
    v22 = *(v8 + 56);
    LOBYTE(v129) = v9;
    *(&v129 + 1) = 256;
    BYTE3(v129) = 0;
    *(&v129 + 1) = MEMORY[0x1E69E7CC0];
    LOWORD(v130) = 0;
    *(&v130 + 1) = v23;
    *&v131 = v22;
    WORD4(v131) = 257;
    v132 = 0uLL;
    v135 = v131;
    v136 = 0uLL;
    v133 = v129;
    v134 = v130;
    sub_1AF8D3CBC();
    if (v25)
    {
      v26 = v24;
    }

    else
    {

      v26 = 0;
    }

    v116 = v6;
    v17 = sub_1AF79054C(v26, &v133, a4);
    sub_1AF75FD78(&v129);

    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    v41 = *(v17 + 128);
    v42 = *(v41 + 16);

    if (v42)
    {
      v115 = v41;
      v43 = (v41 + 40);
      v44 = MEMORY[0x1E69E6158];
      do
      {
        v45 = *v43;
        *&v122[0] = *(v43 - 1);
        *(&v122[0] + 1) = v45;
        *&v128 = 0x244E49414D4F4424;
        *(&v128 + 1) = 0xE800000000000000;
        v126 = 34;
        v127 = 0xE100000000000000;
        v46 = v17;
        v47 = *(v17 + 88);
        v48 = *(v17 + 96);

        MEMORY[0x1B2718AE0](v47, v48);

        MEMORY[0x1B2718AE0](34, 0xE100000000000000);
        v111 = sub_1AF4486E4();
        v112 = v111;
        v109 = v44;
        v110 = v111;
        v49 = sub_1AFDFDEB8();
        v51 = v50;

        v52 = v49;
        v17 = v46;
        MEMORY[0x1B2718AE0](v52, v51);

        v43 += 2;
        --v42;
      }

      while (v42);
      v9 = v117;
    }

    *&v122[0] = 10;
    *(&v122[0] + 1) = 0xE100000000000000;
    *&v128 = 2314;
    *(&v128 + 1) = 0xE200000000000000;
    v111 = sub_1AF4486E4();
    v112 = v111;
    v110 = v111;
    v109 = MEMORY[0x1E69E6158];
    v53 = sub_1AFDFDEB8();
    v55 = v54;

    *&v123 = 8201;
    *(&v123 + 1) = 0xE200000000000000;
    MEMORY[0x1B2718AE0](v53, v55);

    sub_1AF64E080(0, 0, 8201, 0xE200000000000000);

    v56 = *(v17 + 104);

    v57 = *(v56 + 16);
    v6 = v116;
    if (v57)
    {
      v58 = (v56 + 40);
      do
      {
        v59 = *(v58 - 1);
        v60 = *v58;

        sub_1AF6B0504(v59, v60);

        v58 += 2;
        --v57;
      }

      while (v57);
    }
  }

  sub_1AF760A9C(v75, v119, v6);

  *(v8 + 160) = (*(v8 + 160) | *(v17 + 160)) & 1;
  v76 = MEMORY[0x1E69E7CC0];
  *&v128 = MEMORY[0x1E69E7CC0];

  v77 = v121;

  sub_1AF7F9A70(v78, v6, v120, v77, &v128);

  v126 = v76;
  v79 = *(v17 + 120);
  v118 = v17;
  if (v79 >> 62)
  {
    v80 = sub_1AFDFE108();
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v80)
  {
    v81 = 0;
    do
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x1B2719C70](v81, v79);
      }

      else
      {
        v82 = *(v79 + 8 * v81 + 32);
      }

      ++v81;
      *&v129 = v82;
      sub_1AF7F91EC(&v129, v6, v120, v121, v9, v119, &v126);
    }

    while (v80 != v81);
  }

  sub_1AF7FDC2C(0x6C706D6554657375, 0xEB00000000657461, &v129);
  if (!*(&v130 + 1))
  {
    sub_1AF44CB60(&v129);
LABEL_44:
    v87 = *(v6 + 24);
    v86 = *(v6 + 32);

    v85 = v87;
    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v123 & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_1AF7FDC2C(0x6574616C706D6574, 0xEC000000656D614ELL, &v129);
  if (*(&v130 + 1))
  {
    v83 = swift_dynamicCast();
    v84 = MEMORY[0x1E69E6158];
    if (v83)
    {
      v86 = *(&v123 + 1);
      v85 = v123;
      goto LABEL_45;
    }
  }

  else
  {
    sub_1AF44CB60(&v129);
    v84 = MEMORY[0x1E69E6158];
  }

  *(&v130 + 1) = v84;
  *&v129 = 0;
  *(&v129 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v129, &v123);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v129);
  sub_1AF449D40(&v123, &v129);
  swift_dynamicCast();
  v86 = *(&v122[0] + 1);
  v85 = *&v122[0];
LABEL_45:
  v88 = sub_1AF76ED08(v85, v86);
  v90 = v89;

  v125 = *(v8 + 56);

  sub_1AF48FAF8(v91);

  sub_1AF48FAF8(v92);
  *&v129 = v125;
  sub_1AF7F9B70(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v93 = sub_1AFDFCD98();
  v95 = v94;

  *&v129 = 8201;
  *(&v129 + 1) = 0xE200000000000000;
  v96 = v117;
  v97 = sub_1AF7DCD08(v88, v90, v117);
  v99 = v98;

  MEMORY[0x1B2718AE0](v97, v99);

  v100 = 0xE100000000000000;
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v93, v95);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  if (v96 == 3)
  {
    v101 = 0;
  }

  else
  {
    v101 = 59;
  }

  if (v96 == 3)
  {
    v100 = 0xE000000000000000;
  }

  MEMORY[0x1B2718AE0](v101, v100);

  v102 = v129;
  v103 = *(v8 + 128);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 128) = v103;
  if ((v104 & 1) == 0)
  {
    v103 = sub_1AF420554(0, *(v103 + 2) + 1, 1, v103);
    *(v8 + 128) = v103;
  }

  v106 = *(v103 + 2);
  v105 = *(v103 + 3);
  if (v106 >= v105 >> 1)
  {
    *(v8 + 128) = sub_1AF420554(v105 > 1, v106 + 1, 1, v103);
  }

  v107 = *(v8 + 128);
  *(v107 + 16) = v106 + 1;
  *(v107 + 16 * v106 + 32) = v102;
  *(v8 + 128) = v107;
}

uint64_t sub_1AF7F8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v7 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  v9 = *(*a1 + 72);
  v10 = *(*a1 + 80);
  v23 = v10;
  v11 = *(*a1 + 88);
  v25 = *(a2 + 24);
  v26 = *(a2 + 32);

  sub_1AF687F90(v7, v8, v9, v10, v11);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);

  MEMORY[0x1B2718AE0](v6, v5);

  _s13ParameterBaseCMa();
  inited = swift_initStackObject();
  swift_weakInit();
  swift_weakAssign();
  inited[3] = v6;
  inited[4] = v5;
  inited[5] = v25;
  inited[6] = v26;
  inited[7] = v7;
  inited[8] = v8;
  inited[9] = v9;
  inited[10] = v23;
  inited[11] = v11;

  sub_1AF76ED08(v25, v26);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  sub_1AF4486E4();
  v13 = sub_1AFDFDEB8();
  v15 = v14;

  v16 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1AF420554(0, *(v16 + 2) + 1, 1, v16);
    *a5 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    *a5 = sub_1AF420554(v18 > 1, v19 + 1, 1, v16);
  }

  v21 = *a5;
  *(v21 + 2) = v19 + 1;
  v22 = &v21[16 * v19];
  *(v22 + 4) = v13;
  *(v22 + 5) = v15;
  return result;
}

uint64_t sub_1AF7F91EC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, char **a7)
{
  v84 = a6;
  v10 = *a1;
  v11 = *(*a1 + 24);
  v12 = *(*a1 + 32);
  v13 = *(*a1 + 72);
  v81 = *(*a1 + 56);
  v82 = v13;
  v83 = *(v10 + 88);
  v14 = *(a2 + 32);
  v80.n128_u64[0] = *(a2 + 24);
  v80.n128_u64[1] = v14;

  sub_1AF444F60(&v81, v77);

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  v77[0] = v80;

  MEMORY[0x1B2718AE0](v11, v12);

  v16 = v77[0].n128_u64[1];
  v15 = v77[0].n128_u64[0];
  _s13ParameterBaseCMa();
  inited = swift_initStackObject();
  swift_weakInit();
  swift_weakAssign();
  *(inited + 24) = v11;
  *(inited + 32) = v12;
  v18 = a5;
  *(inited + 40) = __PAIR128__(v16, v15);
  v19 = v82;
  *(inited + 56) = v81;
  *(inited + 72) = v19;
  *(inited + 88) = v83;
  sub_1AF444F60(&v81, v77);

  v20 = sub_1AF76ED08(v15, v16);
  v22 = v21;

  v77[0].n128_u64[0] = v20;
  v77[0].n128_u64[1] = v22;
  v23 = *(a2 + 32);
  v80.n128_u64[0] = *(a2 + 24);
  v80.n128_u64[1] = v23;

  MEMORY[0x1B2718AE0](47, 0xE100000000000000);
  v78 = a3;
  v79 = a4;
  sub_1AF4486E4();
  v24 = sub_1AFDFDEB8();
  v26 = v25;

  v73 = sub_1AF7DD0AC(&v81, a5);
  if (v73)
  {
    if (!a5)
    {

LABEL_5:
      v72.n128_u64[0] = sub_1AF7DBFF8(&v81, v24, v26, 0, a5);
      v29 = v28;
      goto LABEL_9;
    }

    v27 = sub_1AFDFEE28();

    if (v27)
    {
      goto LABEL_5;
    }
  }

  if (a5 == 3)
  {
    v77[0].n128_u64[0] = 544366966;
    v77[0].n128_u64[1] = 0xE400000000000000;
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v24, v26);
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v30 = sub_1AF7DCE50(&v81, 3);
    MEMORY[0x1B2718AE0](v30);

    v72 = v77[0];
    sub_1AF7FCDD4(&v81, 1, v77);
    sub_1AF444FBC(&v81);
    v31 = v84;
    v32 = *v84;
    goto LABEL_13;
  }

  v77[0].n128_u64[0] = sub_1AF7DCE50(&v81, a5);
  v77[0].n128_u64[1] = v33;
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0, 0xE000000000000000);
  MEMORY[0x1B2718AE0](v24, v26);
  v29 = v77[0].n128_u64[1];
  v72.n128_u64[0] = v77[0].n128_u64[0];
LABEL_9:
  v31 = v84;
  sub_1AF7FCDD4(&v81, 1, v77);
  sub_1AF444FBC(&v81);
  v32 = *v31;
  v72.n128_u64[1] = v29;
  if (v18 <= 2u)
  {
    if (v18 >= 2u)
    {

      v34 = sub_1AF7E5CBC(v77, v32);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v18 == 3)
  {
LABEL_13:

    v34 = sub_1AF7DD4B4(v77, v32, v24, v26, 3);
    goto LABEL_15;
  }

LABEL_14:

  v34 = sub_1AF7E0118(v77, v32, v24, v26, v18);
LABEL_15:
  v70 = v34;
  v71 = v35;
  v38 = v36;
  v39 = v37;

  sub_1AF761390(v77);
  v75 = v26;
  if (v39)
  {
    v40 = *v31;
    v77[0].n128_u64[0] = 8201;
    v77[0].n128_u64[1] = 0xE200000000000000;
    v80.n128_u64[0] = v38;
    v80.n128_u64[1] = v39;
    v78 = 10;
    v79 = 0xE100000000000000;

    v41 = sub_1AFDFDEB8();
    MEMORY[0x1B2718AE0](v41);

    v42 = v77[0];
    v43 = *(v40 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 128) = v43;
    v45 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1AF420554(0, *(v43 + 2) + 1, 1, v43);
      *(v40 + 128) = v43;
    }

    v18 = *(v43 + 2);
    v46 = *(v43 + 3);
    if (v18 >= v46 >> 1)
    {
      v43 = sub_1AF420554(v46 > 1, v18 + 1, 1, v43);
    }

    *(v43 + 2) = v18 + 1;
    *&v43[16 * v18 + 32] = v42;
    *(v40 + 128) = v43;

    LOBYTE(v18) = v45;
    v31 = v84;
  }

  v47 = *v31;
  v77[0].n128_u64[0] = 8201;
  v77[0].n128_u64[1] = 0xE200000000000000;

  MEMORY[0x1B2718AE0](v72.n128_u64[0], v72.n128_u64[1]);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](v70, v71);

  if (v18 == 3)
  {
    v48 = 0;
  }

  else
  {
    v48 = 59;
  }

  if (v18 == 3)
  {
    v49 = 0xE000000000000000;
  }

  else
  {
    v49 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v48, v49);

  v50 = v77[0];
  v51 = *(v47 + 128);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  *(v47 + 128) = v51;
  if ((v52 & 1) == 0)
  {
    v51 = sub_1AF420554(0, *(v51 + 2) + 1, 1, v51);
    *(v47 + 128) = v51;
  }

  v54 = *(v51 + 2);
  v53 = *(v51 + 3);
  if (v54 >= v53 >> 1)
  {
    v51 = sub_1AF420554(v53 > 1, v54 + 1, 1, v51);
  }

  *(v51 + 2) = v54 + 1;
  *&v51[16 * v54 + 32] = v50;
  *(v47 + 128) = v51;

  v55 = MEMORY[0x1E69E6158];
  sub_1AF7F9B70(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1AFE4C620;
  v57 = 38;
  if (v18 != 3)
  {
    v57 = 0;
  }

  v58 = 0xE000000000000000;
  v59 = 0xE100000000000000;
  if (v18 != 3)
  {
    v59 = 0xE000000000000000;
  }

  if (v73)
  {
    v57 = 0;
  }

  else
  {
    v58 = v59;
  }

  *(v56 + 32) = v57;
  *(v56 + 40) = v58;
  *(v56 + 48) = v24;
  *(v56 + 56) = v75;
  v77[0].n128_u64[0] = v56;
  sub_1AF7F9B70(0, &qword_1ED726C70, v55, MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v60 = sub_1AFDFCD98();
  v62 = v61;

  v63 = *a7;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  *a7 = v63;
  if ((v64 & 1) == 0)
  {
    v63 = sub_1AF420554(0, *(v63 + 2) + 1, 1, v63);
    *a7 = v63;
  }

  v66 = *(v63 + 2);
  v65 = *(v63 + 3);
  if (v66 >= v65 >> 1)
  {
    *a7 = sub_1AF420554(v65 > 1, v66 + 1, 1, v63);
  }

  v68 = *a7;
  *(v68 + 2) = v66 + 1;
  v69 = &v68[16 * v66];
  *(v69 + 4) = v60;
  *(v69 + 5) = v62;
  return result;
}

uint64_t _s10SubContextCMa(uint64_t a1)
{
  result = qword_1EB63EE70;
  if (!qword_1EB63EE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1AF7F9A70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v9 = result;
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2719C70](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v14 = v12;
    sub_1AF7F8FA8(&v14, a2, a3, a4, a5);

    if (v5)
    {
      break;
    }

    ++v11;
  }

  while (v10 != v11);
  return result;
}

void sub_1AF7F9B70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF7F9BC0()
{
  result = qword_1EB63E8C8;
  if (!qword_1EB63E8C8)
  {
    v3 = _s7ContextCMa(255);
    result = swift_getWitnessTable(byte_1AFE794BC, v3, v0, v1);
    atomic_store(result, &qword_1EB63E8C8);
  }

  return result;
}

uint64_t sub_1AF7F9C18(uint64_t a1)
{
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_8:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(a1 + 56) + 8 * (v8 | (v7 << 6)));
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);

    sub_1AF6B0504(v10, v11);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (v6 + 1 >= v5)
    {
    }

    v4 = *(a1 + 8 * v6++ + 72);
    if (v4)
    {
      v6 = v7;
      goto LABEL_8;
    }
  }
}

void *sub_1AF7F9D38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = v5[5];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
LABEL_8:
    v16 = *(*(v10 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16[3] != a1 || v16[4] != a2)
    {
      v13 &= v13 - 1;
      if ((sub_1AFDFEE28() & 1) == 0)
      {
        continue;
      }
    }

    v19 = v5[2];
    v18 = v5[3];
    v20 = *(*v16 + 1024);

    v22 = v20(v21);
    v24 = v23;
    if (a3)
    {
      if (a3 == 1)
      {
        v25 = 0x6E69746C697542;
      }

      else
      {
        v25 = 1919251285;
      }

      if (a3 == 1)
      {
        v26 = 0xE700000000000000;
      }

      else
      {
        v26 = 0xE400000000000000;
      }
    }

    else
    {
      v26 = 0xE500000000000000;
      v25 = 0x6C61636F4CLL;
    }

    MEMORY[0x1B2718AE0](v25, v26);

    MEMORY[0x1B2718AE0](124, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a4, a5);
    MEMORY[0x1B2718AE0](124, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v19, v18);

    MEMORY[0x1B2718AE0](124, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v22, v24);

    return v16;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (v9 + 1 >= v14)
    {
      return 0;
    }

    v13 = *(v10 + 72 + 8 * v9++);
    if (v13)
    {
      v9 = v15;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF7F9F64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E69746C697542;
  if (v2 != 1)
  {
    v4 = 1919251285;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C61636F4CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E69746C697542;
  if (*a2 != 1)
  {
    v8 = 1919251285;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C61636F4CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF7FA054()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7FA0EC(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7FA170(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF7FA204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF7FB440(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF7FA234(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E69746C697542;
  if (v2 != 1)
  {
    v5 = 1919251285;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61636F4CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_1AF7FA288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v4[5] = sub_1AF432800(MEMORY[0x1E69E7CC0]);
  v4[2] = a1;
  v4[3] = a2;

  sub_1AFDFCF58();
  v10 = sub_1AFDFCE98();
  v13 = sub_1AF7FB214(v10, v11);

  if (v13)
  {
    v4[4] = *(v13 + 32);

    v4[5] = *(v13 + 40);

    sub_1AF7F9C18(v14);

    if (*(v4[5] + 16) == *(v9 + 16))
    {

      v15 = sub_1AFDFC128();
      (*(*(v15 - 8) + 8))(a3, v15);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF35DA0);
      v17 = v4[2];
      v18 = v4[3];

      MEMORY[0x1B2718AE0](v17, v18);

      MEMORY[0x1B2718AE0](0xD00000000000003FLL, 0x80000001AFF35DD0);
      v19 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v21 = v19;
        swift_once();
        v19 = v21;
      }

      v22[0] = 0;
      sub_1AF0D4F18(v19, v22, 0, 0xE000000000000000);

      v20 = sub_1AFDFC128();
      (*(*(v20 - 8) + 8))(a3, v20);

      v4[5] = MEMORY[0x1E69E7CC8];
    }
  }

  else
  {
    v16 = sub_1AFDFC128();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  return v4;
}

uint64_t sub_1AF7FA774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x73747865746E6F63;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x80000001AFF23FB0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x73747865746E6F63;
  }

  if (*a2)
  {
    v6 = 0x80000001AFF23FB0;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF7FA820()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7FA8A8(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7FA91C(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7FA9A0@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AF7FAA00(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AFF23FB0;
  v3 = 0x73747865746E6F63;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AF7FAA44()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x73747865746E6F63;
  }
}

uint64_t sub_1AF7FAA84@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AF7FAAE8(uint64_t a1)
{
  v2 = sub_1AF7FB09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7FAB24(uint64_t a1)
{
  v2 = sub_1AF7FB09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF7FAB60(void *a1)
{
  sub_1AF7FB1B0(0, &qword_1EB63EE80, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = sub_1AF432800(MEMORY[0x1E69E7CC0]);
  sub_1AF441150(a1, a1[3]);
  sub_1AF7FB09C();
  sub_1AFDFF3B8();
  if (v2)
  {
  }

  else
  {
    sub_1AF7FB0F0(0);
    v12 = 0;
    sub_1AF7A2DC4();
    sub_1AFDFE768();
    v1[5] = v13;

    sub_1AF7FB158(0);
    v12 = 1;
    sub_1AF780C48();
    sub_1AFDFE6E8();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    if (v13 == 1)
    {
    }

    v1[4] = v10;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v1;
}

uint64_t sub_1AF7FADA8(void *a1)
{
  v3 = v1;
  sub_1AF7FB1B0(0, &qword_1EB63EE90, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7FB09C();
  sub_1AFDFF3F8();
  v13 = *(v3 + 40);
  HIBYTE(v12) = 0;
  sub_1AF7FB0F0(0);
  sub_1AF7A3344();
  sub_1AFDFE918();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v11 = *(v3 + 32);
  if (!v11)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = v11;
  HIBYTE(v12) = 1;
  sub_1AF629AE4();
  sub_1AF75FD18(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);

  sub_1AFDFE918();
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF7FAFB4()
{

  return swift_deallocClassInstance();
}

void *sub_1AF7FB020@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF7FAB60(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1AF7FB09C()
{
  result = qword_1EB63EE88;
  if (!qword_1EB63EE88)
  {
    result = swift_getWitnessTable(byte_1AFE78DE4, &_s11TemplateSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EE88);
  }

  return result;
}

void sub_1AF7FB0F0(uint64_t a1)
{
  if (!qword_1EB63E828)
  {
    _s7ContextCMa(255);
    v1 = sub_1AFDFCCB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63E828);
    }
  }
}

void sub_1AF7FB158(uint64_t a1)
{
  if (!qword_1ED723218)
  {
    sub_1AF629AE4();
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED723218);
    }
  }
}

void sub_1AF7FB1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF7FB09C();
    v7 = a3(a1, &_s11TemplateSetC10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF7FB214(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AFDFCF78();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCF58();
  v7 = sub_1AFDFCF08();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  sub_1AFDFBBB8();
  swift_allocObject();
  sub_1AFDFBBA8();
  if (v9 >> 60 == 15)
  {

    return 0;
  }

  else
  {
    _s11TemplateSetCMa();
    sub_1AF43C9F0(v7, v9);
    sub_1AF7FB3F8(&qword_1EB63EE98, v11, _s11TemplateSetCMa, asc_1AFE78C0C);
    sub_1AFDFBB88();
    sub_1AF587E7C(v7, v9);
    if (v2)
    {

      return sub_1AF587E7C(v7, v9);
    }

    else
    {
      sub_1AF587E7C(v7, v9);

      return v12[1];
    }
  }
}

uint64_t sub_1AF7FB3F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF7FB440(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF7FB48C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF4486E4();
  v2 = sub_1AFDFDF28();
  if (v2[2] == 4)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2;

    MEMORY[0x1B27189E0](v3, v4, v5, v6);

    v8 = sub_1AFDFE638();

    v9 = 3;
    if (v8 < 3)
    {
      v9 = v8;
    }

    v33 = v9;
    v10 = v7[8];
    v11 = v7[9];
    v12 = v7[10];
    v13 = v7[11];

    v14 = MEMORY[0x1B27189E0](v10, v11, v12, v13);
    v16 = v15;

    v17 = v7[12];
    v18 = v7[13];
    v19 = v7[14];
    v20 = v7[15];

    v21 = MEMORY[0x1B27189E0](v17, v18, v19, v20);
    v23 = v22;

    v24 = v7[16];
    v25 = v7[17];
    v26 = v7[18];
    v27 = v7[19];

    v28 = MEMORY[0x1B27189E0](v24, v25, v26, v27);
    v30 = v29;

    v32 = v33;
  }

  else
  {

    v32 = 0;
    v14 = 0;
    v16 = 0;
    v21 = 0;
    v23 = 0;
    v28 = 0;
    v30 = 0;
  }

  *a1 = v32;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v21;
  a1[4] = v23;
  a1[5] = v28;
  a1[6] = v30;
  return result;
}

uint64_t _s8TemplateVwxx(void *a1)
{
}

uint64_t _s8TemplateVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t _s8TemplateVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t _s8TemplateVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

unint64_t sub_1AF7FB8B0()
{
  result = qword_1EB63EEA0;
  if (!qword_1EB63EEA0)
  {
    result = swift_getWitnessTable(asc_1AFE78D1C, &_s11TemplateSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EEA0);
  }

  return result;
}

unint64_t sub_1AF7FB908()
{
  result = qword_1EB63EEA8;
  if (!qword_1EB63EEA8)
  {
    result = swift_getWitnessTable(byte_1AFE78DBC, &_s8TemplateV8CategoryON, v0, v1);
    atomic_store(result, &qword_1EB63EEA8);
  }

  return result;
}

unint64_t sub_1AF7FB960()
{
  result = qword_1EB63EEB0;
  if (!qword_1EB63EEB0)
  {
    result = swift_getWitnessTable(byte_1AFE78C54, &_s11TemplateSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EEB0);
  }

  return result;
}

unint64_t sub_1AF7FB9B8()
{
  result = qword_1EB63EEB8;
  if (!qword_1EB63EEB8)
  {
    result = swift_getWitnessTable(byte_1AFE78C7C, &_s11TemplateSetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EEB8);
  }

  return result;
}

uint64_t sub_1AF7FBA0C()
{
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    v2 = sub_1AFDFE108();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    *&v82 = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v2 & ~(v2 >> 63), 0);
    v3 = 0;
    v4 = v82;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2719C70](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v7 = *(v5 + 24);
      v6 = *(v5 + 32);

      *&v82 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1AFC05CE4(v8 > 1, v9 + 1, 1);
        v4 = v82;
      }

      ++v3;
      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
    }

    while (v2 != v3);
  }

  sub_1AF629AE4();
  sub_1AF488088();
  v11 = sub_1AFDFCD98();
  v13 = v12;

  *&v82 = 0x5B203D2074756FLL;
  *(&v82 + 1) = 0xE700000000000000;
  v74 = v11;
  MEMORY[0x1B2718AE0](v11, v13);
  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  v14 = v82;
  v15 = v75;
  v16 = v75[17];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v82 = *(v16 + 216);
  *(v16 + 216) = 0x8000000000000000;
  v18 = sub_1AF854CE8(v14, *(&v14 + 1), 0x7466697773, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  *(v16 + 216) = v82;
  v19 = v15;
  v22 = v15[18];
  v21 = v15[19];
  v20 = (v19 + 18);
  v24 = *(v20 + 2);
  v23 = *(v20 + 3);
  v25 = *(v20 + 4);
  if (v21 >= 0x3B)
  {
    if (!*(v25 + 16))
    {
      goto LABEL_29;
    }

    sub_1AF687F90(v22, v21, *(v20 + 2), *(v20 + 3), *(v20 + 4));
    sub_1AF41A220(2);
    v28 = v27;
    sub_1AF687FE4(v22, v21, v24, v23, v25);
    if ((v28 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *&v82 = v22;
    *(&v82 + 1) = v21;
    *&v83 = v24;
    *(&v83 + 1) = v23;
    v84 = v25;
    MEMORY[0x1EEE9AC00](v18);
    v73 = &v82;
    sub_1AF687F90(v22, v21, v24, v23, v25);
    v26 = sub_1AF7B95C0(sub_1AF7E5B0C, v72, &unk_1F24F68C8);
    sub_1AF687FE4(v22, v21, v24, v23, v25);
    if ((v26 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  v76 = 0x20646165726874;
  v77 = 0xE700000000000000;
  v29 = v20[1];
  v82 = *v20;
  v83 = v29;
  v30 = *(v20 + 4);
  v84 = v30;
  if (*(&v82 + 1) >= 0x3BuLL)
  {
    v34 = v83;
    v35 = *(v30 + 16);

    if (v35 && (v36 = sub_1AF41A220(2), (v37 & 1) != 0))
    {
      v38 = (*(v30 + 56) + 16 * v36);
      v31 = *v38;
      v33 = v38[1];

      sub_1AF444FBC(&v82);
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v79 = 0;
      *(&v79 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v79 = 0xD00000000000001BLL;
      *(&v79 + 1) = 0x80000001AFF33DF0;
      MEMORY[0x1B2718AE0](v34, *(&v34 + 1));
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF33E10);
      MEMORY[0x1B2718AE0](0x6C6174654DLL, 0xE500000000000000);
      v39 = v79;
      v40 = sub_1AFDFDA18();
      if (qword_1ED731058 != -1)
      {
        v70 = v40;
        swift_once();
        v40 = v70;
      }

      *&v79 = 0;
      sub_1AF0D4F18(v40, &v79, v39, *(&v39 + 1));

      sub_1AF444FBC(&v82);
      v31 = 0;
      v33 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1AF444F60(&v82, &v79);
    v31 = sub_1AF7E4F70(&v82);
    v33 = v32;
    sub_1AF444FBC(&v82);
  }

  MEMORY[0x1B2718AE0](v31, v33);

  MEMORY[0x1B2718AE0](0x5B23504D45542320, 0xED00007B203D205DLL);
  MEMORY[0x1B2718AE0](v74, v13);
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF35E70);
  v41 = v76;
  v42 = v77;
  v43 = v75[17];
  v44 = swift_isUniquelyReferenced_nonNull_native();
  *&v79 = *(v43 + 216);
  *(v43 + 216) = 0x8000000000000000;
  v18 = sub_1AF854CE8(v41, v42, 0x6C6174656DLL, 0xE500000000000000, v44);
  *(v43 + 216) = v79;
LABEL_29:
  v46 = v75[18];
  v45 = v75[19];
  v48 = v75[20];
  v47 = v75[21];
  v49 = v75[22];
  if (v45 >= 0x3B)
  {
    if (!*(v49 + 16))
    {
    }

    sub_1AF41A220(0);
    v52 = v51;
    sub_1AF687FE4(v46, v45, v48, v47, v49);
    if ((v52 & 1) == 0)
    {
    }
  }

  else
  {
    *&v79 = v75[18];
    *(&v79 + 1) = v45;
    *&v80 = v48;
    *(&v80 + 1) = v47;
    v81 = v49;
    MEMORY[0x1EEE9AC00](v18);
    v73 = &v79;
    sub_1AF687F90(v46, v45, v48, v47, v49);
    v50 = sub_1AF7B95C0(sub_1AF7EAA4C, v72, &unk_1F24F70B8);
    sub_1AF687FE4(v46, v45, v48, v47, v49);
    if ((v50 & 1) == 0)
    {
    }
  }

  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  v78 = v79;
  v53 = v20[1];
  v79 = *v20;
  v80 = v53;
  v54 = *(v20 + 4);
  v81 = v54;
  if (*(&v79 + 1) >= 0x3BuLL)
  {
    v59 = v80;
    v60 = *(v54 + 16);

    if (!v60 || (v61 = sub_1AF41A220(2), (v62 & 1) == 0))
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v76 = 0;
      v77 = 0xE000000000000000;
      sub_1AFDFE218();

      v76 = 0xD00000000000001BLL;
      v77 = 0x80000001AFF33DF0;
      MEMORY[0x1B2718AE0](v59, *(&v59 + 1));
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF33E10);
      MEMORY[0x1B2718AE0](0x6C6174654DLL, 0xE500000000000000);
      v65 = v76;
      v64 = v77;
      v66 = sub_1AFDFDA18();
      if (qword_1ED731058 != -1)
      {
        v71 = v66;
        swift_once();
        v66 = v71;
      }

      v76 = 0;
      sub_1AF0D4F18(v66, &v76, v65, v64);

      sub_1AF444FBC(&v79);
      v55 = 0;
      v57 = 0xE000000000000000;
      goto LABEL_46;
    }

    v63 = (*(v54 + 56) + 16 * v61);
    v55 = *v63;
    v57 = v63[1];
  }

  else
  {
    sub_1AF444F60(&v79, &v76);
    v55 = sub_1AF7E4F70(&v79);
    v57 = v56;
  }

  sub_1AF444FBC(&v79);
LABEL_46:
  MEMORY[0x1B2718AE0](v55, v57);

  MEMORY[0x1B2718AE0](0x5B23504D45542320, 0xED00007B203D205DLL);
  MEMORY[0x1B2718AE0](v74, v13);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF35E50);
  v67 = v78;
  v68 = v75[17];
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v68 + 216);
  *(v68 + 216) = 0x8000000000000000;
  result = sub_1AF854CE8(v67, *(&v67 + 1), 99, 0xE100000000000000, v69);
  *(v68 + 216) = v76;
  return result;
}

uint64_t sub_1AF7FC35C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1AF7FC3B0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7FC408(uint64_t a1)
{
  v2 = sub_1AF7FC890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7FC444(uint64_t a1)
{
  v2 = sub_1AF7FC890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7FC4CC(void *a1)
{
  v3 = v1;
  sub_1AF7FC8E4(0, &qword_1EB63EED0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = sub_1AF441150(a1, a1[3]);
  sub_1AF7FC890();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s17TypedArraySnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1AF75FCC4();
    sub_1AFDFE768();
    v12 = v15;
    v13 = v14[1];
    *(v3 + 144) = v14[0];
    *(v3 + 160) = v13;
    *(v3 + 176) = v12;
    sub_1AF441194(a1, v14);
    v10 = sub_1AF7B754C(v14);

    sub_1AF764300();
    sub_1AF7FBA0C();
    (*(v7 + 8))(v9, v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v10;
}

uint64_t sub_1AF7FC6F4(void *a1)
{
  sub_1AF7FC8E4(0, &qword_1EB63EEC0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  result = sub_1AF7B77B0(a1);
  if (!v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF7FC890();
    sub_1AFDFF3F8();
    v10 = *(v1 + 176);
    v11 = *(v1 + 160);
    v12[0] = *(v1 + 144);
    v12[1] = v11;
    v13 = v10;
    sub_1AF75FC0C();
    sub_1AFDFE918();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1AF7FC890()
{
  result = qword_1EB63EEC8;
  if (!qword_1EB63EEC8)
  {
    result = swift_getWitnessTable(aY_53, &_s17TypedArraySnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EEC8);
  }

  return result;
}

void sub_1AF7FC8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF7FC890();
    v7 = a3(a1, &_s17TypedArraySnippetC10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF7FC948(uint64_t a1)
{
  v1 = sub_1AF7FE65C();
  v3 = v2;
  if (v1 == sub_1AF7FE65C() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AFDFEE28();
  }

  return v5 & 1;
}

unint64_t sub_1AF7FCA14()
{
  result = qword_1EB63EED8;
  if (!qword_1EB63EED8)
  {
    result = swift_getWitnessTable(byte_1AFE78F38, &_s17TypedArraySnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EED8);
  }

  return result;
}

unint64_t sub_1AF7FCA6C()
{
  result = qword_1EB63EEE0;
  if (!qword_1EB63EEE0)
  {
    result = swift_getWitnessTable(byte_1AFE78E70, &_s17TypedArraySnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EEE0);
  }

  return result;
}

unint64_t sub_1AF7FCAC4()
{
  result = qword_1EB63EEE8;
  if (!qword_1EB63EEE8)
  {
    result = swift_getWitnessTable(byte_1AFE78E98, &_s17TypedArraySnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EEE8);
  }

  return result;
}

uint64_t sub_1AF7FCB18(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF624800(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AF79F880(v5);
  *a1 = v2;
  return result;
}

char *sub_1AF7FCB84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1AFC854D0(*(a1 + 16), 0);
    sub_1AFC892B8();

    sub_1AF0FBB14(v5);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v6 = v2;
  sub_1AF7FCB18(&v6);
  v3 = v6;
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1AF7FCC58(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (sub_1AF7FE65C() == 1819242306 && v3 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v4 = sub_1AFDFEE28();

  if (v4)
  {
    goto LABEL_5;
  }

  if (sub_1AF7FE65C() == 0x676E69727453 && v7 == 0xE600000000000000)
  {
    goto LABEL_3;
  }

  v8 = sub_1AFDFEE28();

  if (v8)
  {
    goto LABEL_5;
  }

  if (sub_1AF7FE65C() == 5001813 && v9 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v10 = sub_1AFDFEE28();

  if (v10)
  {
    goto LABEL_5;
  }

  if (sub_1AF7FE65C() == 0x74616F6C46 && v11 == 0xE500000000000000)
  {
LABEL_3:

LABEL_5:
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v12 = sub_1AFDFEE28();

  if (v12)
  {
    goto LABEL_5;
  }

  if (v2 > 0x10)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0x1C3FEu >> v2;
  }

  return v5 & 1;
}

uint64_t sub_1AF7FCDD4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  switch(*(result + 8))
  {
    case 0:
      v26 = MEMORY[0x1E69E6370];
      goto LABEL_34;
    case 1:
      v26 = MEMORY[0x1E69E7508];
      goto LABEL_34;
    case 2:
      v27 = MEMORY[0x1E69E75F8];
      goto LABEL_36;
    case 3:
      v22 = MEMORY[0x1E69E7668];
      goto LABEL_50;
    case 4:
      v4 = MEMORY[0x1E69E76D8];
      goto LABEL_39;
    case 5:
      v26 = MEMORY[0x1E69E7230];
LABEL_34:
      *(&v49 + 1) = v26;
      LOBYTE(v48) = 0;
      goto LABEL_71;
    case 6:
      v27 = MEMORY[0x1E69E7290];
LABEL_36:
      *(&v49 + 1) = v27;
      LOWORD(v48) = 0;
      goto LABEL_71;
    case 7:
      v22 = MEMORY[0x1E69E72F0];
      goto LABEL_50;
    case 8:
    case 0x29:
      v4 = MEMORY[0x1E69E7360];
      goto LABEL_39;
    case 9:
      *(&v49 + 1) = MEMORY[0x1E69E6530];
      *&v48 = 1;
      goto LABEL_71;
    case 0xALL:
      v32 = &qword_1ED722EC0;
      v33 = MEMORY[0x1E69E7668];
      v34 = sub_1AF477BB4;
      goto LABEL_52;
    case 0xBLL:
      v19 = &qword_1ED72F730;
      v20 = MEMORY[0x1E69E7668];
      v29 = sub_1AF477BB4;
      goto LABEL_62;
    case 0xCLL:
      v19 = &qword_1ED722EB8;
      v20 = MEMORY[0x1E69E7668];
      v21 = sub_1AF477BB4;
      goto LABEL_60;
    case 0xDLL:
      v22 = MEMORY[0x1E69E6448];
LABEL_50:
      *(&v49 + 1) = v22;
      goto LABEL_53;
    case 0xELL:
      v32 = &unk_1ED72F770;
      v33 = MEMORY[0x1E69E6448];
      v34 = sub_1AF43A0C8;
LABEL_52:
      sub_1AF80DBD4(0, v32, v34, v33, MEMORY[0x1E69E7428]);
      *(&v49 + 1) = v37;
      DWORD1(v48) = 0;
LABEL_53:
      LODWORD(v48) = 0;
      goto LABEL_71;
    case 0xFLL:
      v19 = &qword_1ED72F740;
      v20 = MEMORY[0x1E69E6448];
      v29 = sub_1AF43A0C8;
LABEL_62:
      v39 = v29;
      v40 = MEMORY[0x1E69E7450];
      goto LABEL_63;
    case 0x10:
      v19 = &qword_1ED72F6E0;
      v20 = MEMORY[0x1E69E6448];
      v21 = sub_1AF43A0C8;
LABEL_60:
      v39 = v21;
      v40 = MEMORY[0x1E69E74A8];
LABEL_63:
      sub_1AF80DBD4(0, v19, v39, v20, v40);
      *(&v49 + 1) = v41;
      v42 = swift_allocObject();
      *&v48 = v42;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      goto LABEL_71;
    case 0x11:
      type metadata accessor for simd_float2x2(0);
      *(&v49 + 1) = v17;
      goto LABEL_24;
    case 0x12:
      type metadata accessor for simd_float2x3(0);
      goto LABEL_66;
    case 0x13:
      type metadata accessor for simd_float2x4(0);
LABEL_66:
      *(&v49 + 1) = v30;
      v44 = swift_allocObject();
      *&v48 = v44;
      *(v44 + 16) = xmmword_1AFE20150;
      *(v44 + 32) = xmmword_1AFE20160;
      goto LABEL_71;
    case 0x14:
      type metadata accessor for simd_float3x2(0);
      *&v49 = 0;
      *(&v49 + 1) = v18;
LABEL_24:
      *&v48 = 1065353216;
      *(&v48 + 1) = 0x3F80000000000000;
      goto LABEL_71;
    case 0x15:
      type metadata accessor for simd_float3x3(0);
      goto LABEL_41;
    case 0x16:
      type metadata accessor for simd_float3x4(0);
LABEL_41:
      *(&v49 + 1) = v25;
      v28 = swift_allocObject();
      *&v48 = v28;
      v28[1] = xmmword_1AFE20150;
      v28[2] = xmmword_1AFE20160;
      v28[3] = xmmword_1AFE20180;
      goto LABEL_71;
    case 0x17:
      type metadata accessor for simd_float4x2(0);
      *(&v49 + 1) = v35;
      v36 = swift_allocObject();
      *&v48 = v36;
      v36[2] = 1065353216;
      v36[3] = 0x3F80000000000000;
      v36[4] = 0;
      v36[5] = 0;
      goto LABEL_71;
    case 0x18:
      type metadata accessor for simd_float4x3(0);
      *(&v49 + 1) = v23;
      v24 = swift_allocObject();
      *&v48 = v24;
      *(v24 + 16) = xmmword_1AFE20150;
      *(v24 + 32) = xmmword_1AFE20160;
      *(v24 + 48) = xmmword_1AFE20180;
      *(v24 + 64) = 0;
      *(v24 + 72) = 0;
      goto LABEL_71;
    case 0x19:
      type metadata accessor for simd_float4x4(0);
      *(&v49 + 1) = v14;
      v15 = swift_allocObject();
      *&v48 = v15;
      v15[1] = xmmword_1AFE20150;
      v15[2] = xmmword_1AFE20160;
      v15[3] = xmmword_1AFE20180;
      v15[4] = xmmword_1AFE201A0;
      goto LABEL_71;
    case 0x1ALL:
      v4 = MEMORY[0x1E69E63B0];
LABEL_39:
      *(&v49 + 1) = v4;
      *&v48 = 0;
      goto LABEL_71;
    case 0x1BLL:
    case 0x2ALL:
      if (a2)
      {
        v7 = result;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v50 = 0;
        *(&v50 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v48 = v50;
        MEMORY[0x1B2718AE0](0xD00000000000004FLL, 0x80000001AFF35FF0);
        v8 = *(v7 + 16);
        v50 = *v7;
        v51 = v8;
        v52 = *(v7 + 32);
        sub_1AFDFE458();
        v9 = sub_1AFDFDA18();
        if (qword_1ED731058 != -1)
        {
          v47 = v9;
          swift_once();
          v9 = v47;
        }

        *&v50 = 0;
        sub_1AF0D4F18(v9, &v50, v48, *(&v48 + 1));
      }

      *(a3 + 80) = 0;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    case 0x1CLL:
      *(&v49 + 1) = &type metadata for ColorRamp;
      *&v48 = MEMORY[0x1E69E7CC0];
      *(&v48 + 1) = MEMORY[0x1E69E7CC0];
      LOBYTE(v49) = 1;
      goto LABEL_71;
    case 0x1ELL:
      *(&v49 + 1) = &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN;
      v31 = swift_allocObject();
      *&v48 = v31;
      *(v31 + 16) = xmmword_1AFE78FB0;
      *(v31 + 32) = xmmword_1AFE78FC0;
      *(v31 + 48) = 0;
      goto LABEL_71;
    case 0x22:
    case 0x23:
      *(&v49 + 1) = MEMORY[0x1E69E6158];
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      goto LABEL_71;
    case 0x24:
      type metadata accessor for simd_quatf(0);
      *(&v49 + 1) = v43;
      *&v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1AFE201A0;
      goto LABEL_71;
    case 0x25:
      sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
      *(&v49 + 1) = v11;
      v12 = swift_allocObject();
      *&v48 = v12;
      v13 = MEMORY[0x1E69E7CC0];
      *(v12 + 16) = MEMORY[0x1E69E7CC0];
      *(v12 + 24) = v13;
      *(v12 + 32) = 0;
      *(v12 + 40) = 1;
      goto LABEL_71;
    case 0x27:
      sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      *(&v49 + 1) = v16;
      v48 = xmmword_1AFE21110;
      goto LABEL_71;
    case 0x28:
      sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
      *(&v49 + 1) = v38;
      *&v48 = 0x3F80000000000000;
      goto LABEL_71;
    case 0x2BLL:
      v5 = &qword_1EB63ED80;
      v6 = MEMORY[0x1E69E6370];
      goto LABEL_69;
    case 0x2CLL:
      v5 = &unk_1ED726C20;
      v6 = MEMORY[0x1E69E7508];
      goto LABEL_69;
    case 0x2DLL:
      v5 = &qword_1EB6332D0;
      v6 = MEMORY[0x1E69E75F8];
      goto LABEL_69;
    case 0x2ELL:
      v5 = &qword_1EB63ED78;
      v6 = MEMORY[0x1E69E7668];
      goto LABEL_69;
    case 0x2FLL:
      v5 = &qword_1EB63ED70;
      v6 = MEMORY[0x1E69E76D8];
      goto LABEL_69;
    case 0x30:
      v5 = &qword_1EB63ED68;
      v6 = MEMORY[0x1E69E7230];
      goto LABEL_69;
    case 0x31:
      v5 = &qword_1EB63ED60;
      v6 = MEMORY[0x1E69E7290];
      goto LABEL_69;
    case 0x32:
      v5 = &qword_1EB63ED58;
      v6 = MEMORY[0x1E69E72F0];
      goto LABEL_69;
    case 0x33:
      v5 = &qword_1EB63ED50;
      v6 = MEMORY[0x1E69E7360];
      goto LABEL_69;
    case 0x34:
      v5 = &qword_1ED726C50;
      v6 = MEMORY[0x1E69E6530];
      goto LABEL_69;
    case 0x35:
      v5 = &qword_1ED723210;
      v6 = MEMORY[0x1E69E6448];
      goto LABEL_69;
    case 0x36:
      sub_1AF44219C(0);
      goto LABEL_70;
    case 0x37:
      sub_1AF4420DC(0);
      goto LABEL_70;
    case 0x38:
      sub_1AF6560F0(0);
      goto LABEL_70;
    case 0x39:
    case 0x3ALL:
      v5 = &qword_1ED726C70;
      v6 = MEMORY[0x1E69E6158];
LABEL_69:
      sub_1AF80C8C8(0, v5, v6, MEMORY[0x1E69E62F8]);
LABEL_70:
      *(&v49 + 1) = v10;
      *&v48 = MEMORY[0x1E69E7CC0];
LABEL_71:
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      strcpy(a3, "defaultValue");
      *(a3 + 13) = 0;
      *(a3 + 14) = -5120;
      sub_1AF809A8C(&v48, &v50);
      v45 = v51;
      *(a3 + 16) = v50;
      *(a3 + 32) = v45;
      *(a3 + 48) = v52;
      sub_1AF80C110(a3 + 56, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      result = sub_1AF449D40(&v48, (a3 + 56));
      break;
    default:
      v48 = 0u;
      v49 = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      strcpy(a3, "defaultValue");
      *(a3 + 13) = 0;
      *(a3 + 14) = -5120;
      v46 = *(result + 16);
      *(a3 + 16) = *result;
      *(a3 + 32) = v46;
      *(a3 + 48) = *(result + 32);
      sub_1AF444F60(result, &v50);
      result = sub_1AF7E8BCC(&v48, a3 + 56);
      break;
  }

  return result;
}

uint64_t sub_1AF7FD6CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      swift_bridgeObjectRetain_n();

      v4 = sub_1AF7FE538(v2, v3);

      if (v4)
      {

        v6 = sub_1AF7FCB84(v5);

        v7 = *(v6 + 2);
        if (v7)
        {
          v8 = (v6 + 40);
          v9 = 1;
          while (1)
          {
            v11 = *(v8 - 1);
            v10 = *v8;
            if (*(v2 + 16))
            {

              v12 = sub_1AF419914(v11, v10);
              if (v13)
              {
                sub_1AF4455CC(*(v2 + 56) + 88 * v12, &v27);
                if (!*(v3 + 16))
                {
                  goto LABEL_18;
                }
              }

              else
              {
                v32 = 0;
                v30 = 0u;
                v31 = 0u;
                v28 = 0u;
                v29 = 0u;
                v27 = 0u;
                if (!*(v3 + 16))
                {
                  goto LABEL_18;
                }
              }
            }

            else
            {
              v32 = 0;
              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              v27 = 0u;

              if (!*(v3 + 16))
              {
                goto LABEL_18;
              }
            }

            v14 = sub_1AF419914(v11, v10);
            if (v15)
            {
              sub_1AF4455CC(*(v3 + 56) + 88 * v14, v25);
              goto LABEL_19;
            }

LABEL_18:
            v26 = 0;
            memset(v25, 0, sizeof(v25));
LABEL_19:
            sub_1AF80C918(&v27, v21, &qword_1EB6335B0, &_s8MetadataVN);
            sub_1AF80C918(v25, v23, &qword_1EB6335B0, &_s8MetadataVN);
            if (v22)
            {
              sub_1AF80C918(v21, v20, &qword_1EB6335B0, &_s8MetadataVN);
              if (*(&v23[0] + 1))
              {
                v18[2] = v23[2];
                v18[3] = v23[3];
                v18[4] = v23[4];
                v19 = v24;
                v18[0] = v23[0];
                v18[1] = v23[1];
                v16 = sub_1AF805CD4(v20, v18);

                sub_1AF761390(v18);
                sub_1AF80C110(v25, &qword_1EB6335B0, &_s8MetadataVN);
                sub_1AF80C110(&v27, &qword_1EB6335B0, &_s8MetadataVN);
                sub_1AF761390(v20);
                sub_1AF80C110(v21, &qword_1EB6335B0, &_s8MetadataVN);
                v9 &= v16;
                goto LABEL_8;
              }

              sub_1AF80C110(v25, &qword_1EB6335B0, &_s8MetadataVN);
              sub_1AF80C110(&v27, &qword_1EB6335B0, &_s8MetadataVN);
              sub_1AF761390(v20);
            }

            else
            {

              sub_1AF80C110(v25, &qword_1EB6335B0, &_s8MetadataVN);
              sub_1AF80C110(&v27, &qword_1EB6335B0, &_s8MetadataVN);
              if (!*(&v23[0] + 1))
              {
                sub_1AF80C110(v21, &qword_1EB6335B0, &_s8MetadataVN);
                goto LABEL_8;
              }
            }

            sub_1AF80C450(v21, sub_1AF80C998);
            v9 = 0;
LABEL_8:
            v8 += 2;
            if (!--v7)
            {
              goto LABEL_28;
            }
          }
        }

        v9 = 1;
LABEL_28:
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = *(a1 + 16) == 0;
  }

  return v9 & 1;
}

uint64_t sub_1AF7FDA4C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v5 = result;

      sub_1AF419914(v5, a2);
      v7 = v6;

      if (v7)
      {
        v8 = sub_1AF7FDA2C();
        if (*v9)
        {
          sub_1AF8508FC(v5, a2, v11);
          sub_1AF80C110(v11, &qword_1EB6335B0, &_s8MetadataVN);
          return (v8)(v10, 0);
        }

        else
        {
          (v8)(v10, 0);
          memset(v11, 0, sizeof(v11));
          v12 = 0;
          return sub_1AF80C110(v11, &qword_1EB6335B0, &_s8MetadataVN);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF7FDB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v7 = (v3 + 16);
  if (!v8)
  {
    *v7 = sub_1AF432414(MEMORY[0x1E69E7CC0]);
  }

  sub_1AF0D5A54(a3, v10);
  memset(v13, 0, sizeof(v13));
  v11[0] = a1;
  v11[1] = a2;
  swift_bridgeObjectRetain_n();
  sub_1AF809A8C(v10, v12);
  sub_1AF80C110(v13, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  sub_1AF449D40(v10, v13);
  return sub_1AF82436C(v11, a1, a2);
}

double sub_1AF7FDC2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_9;
  }

  if (*(v5 + 16))
  {

    v8 = sub_1AF419914(a1, a2);
    if (v9)
    {
      sub_1AF4455CC(*(v5 + 56) + 88 * v8, v13);

      if (*(&v13[0] + 1))
      {
        sub_1AF4455CC(v13, v11);
        sub_1AF80C110(v13, &qword_1EB6335B0, &_s8MetadataVN);
        sub_1AF80C918(&v12, a3, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF761390(v11);
        return result;
      }

      goto LABEL_8;
    }
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
LABEL_8:
  sub_1AF80C110(v13, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_9:
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double sub_1AF7FDD44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (!v5 || !*(v5 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_1AF419914(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  sub_1AF4455CC(*(v5 + 56) + 88 * v8, a3);

  return result;
}

double sub_1AF7FDDF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v10 = *(v4 + 16);
  if (v10)
  {
    if (!*(v10 + 16))
    {
      goto LABEL_6;
    }

LABEL_5:

    sub_1AF419914(a1, a2);
    v12 = v11;

    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v5 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);

  if (*(*(v5 + 16) + 16))
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1AF7FDB64(a1, a2, a3);
LABEL_7:

  return sub_1AF7FDC2C(a1, a2, a4);
}

uint64_t sub_1AF7FDEC8(void *a1)
{
  sub_1AF80DBD4(0, &qword_1EB633100, sub_1AF80C1D4, &_s11MetadataSetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  *(v1 + 16) = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80C1D4();
  sub_1AFDFF3B8();
  if (v2)
  {
  }

  else
  {
    v8 = v12;
    sub_1AF80C228(0);
    sub_1AF80C304();
    sub_1AFDFE6E8();
    (*(v8 + 8))(v7, v5);
    v9 = v13;
    if (v13 == 1)
    {
    }

    *(v1 + 16) = v9;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v1;
}

uint64_t sub_1AF7FE0C4(void *a1)
{
  v2 = v1;
  sub_1AF80DBD4(0, &qword_1EB63F058, sub_1AF80C1D4, &_s11MetadataSetC10CodingKeysON, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80C1D4();
  sub_1AFDFF3F8();
  if (!*(v2 + 16))
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = sub_1AF80592C(v9);

  v12[1] = v10;
  sub_1AF80C2A4(0, &qword_1EB633348, &_s8MetadataVN, MEMORY[0x1E69E5E28]);
  sub_1AF80C3B4(&qword_1EB63E6E0, sub_1AF775108, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1AFDFE918();
  (*(v6 + 8))(v8, v5);
}

void *sub_1AF7FE2EC@<X0>(uint64_t a2@<X8>)
{
  sub_1AF7FE65C();
  v3 = sub_1AFDFD188();

  v5 = 0uLL;
  if (v3)
  {
    v6 = sub_1AF7FE65C();
    v8 = v7;
    if (sub_1AFDFD188())
    {
      v9 = sub_1AFDFD048();
      v10 = sub_1AF8083E0(v9, v6, v8);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v6 = MEMORY[0x1B27189E0](v10, v12, v14, v16);
      v8 = v17;
    }

    result = sub_1AF809DF8(v6, v8, &v21);
    v18 = v22;
    if (v22 == 59)
    {
      v19 = 0;
      v20 = 0;
      v18 = 42;
      v5 = 0uLL;
    }

    else
    {
      v20 = v24;
      v5 = v23;
      v19 = v21;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v18 = 42;
  }

  *a2 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v5;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_1AF7FE430()
{
  v0 = 0;
  for (i = &xmmword_1F24F5688; ; i = (i + 40))
  {
    v2 = i[1];
    v10[0] = *i;
    v10[1] = v2;
    v11 = *(i + 4);
    sub_1AF444F60(v10, v9);
    v3 = sub_1AF7FE65C();
    v5 = v4;
    if (v3 == sub_1AF7FE65C() && v5 == v6)
    {
      break;
    }

    v7 = sub_1AFDFEE28();

    sub_1AF444FBC(v10);
    if (v7)
    {
      return v0;
    }

    if (++v0 == 59)
    {
      return 0;
    }
  }

  sub_1AF444FBC(v10);
  return v0;
}

uint64_t sub_1AF7FE538(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    while (1)
    {
      v9 = v8;
      if (!v6)
      {
        break;
      }

      if (*(a2 + 16))
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
        v13 = *v11;
        v12 = v11[1];

        sub_1AF419914(v13, v12);
        LOBYTE(v13) = v14;

        if (v13)
        {
          continue;
        }
      }

      return 0;
    }

    ++v8;
    if (v9 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v9 + 72);
  }

  return 1;
}

uint64_t sub_1AF7FE65C()
{
  result = 1819242306;
  switch(v0[1])
  {
    case 0:
      return result;
    case 1:
      return 0x38746E4955;
    case 2:
      return 0x3631746E4955;
    case 3:
      return 0x3233746E4955;
    case 4:
      return 0x3436746E4955;
    case 5:
      return 947154505;
    case 6:
      return 0x3631746E49;
    case 7:
      return 0x3233746E49;
    case 8:
      return 0x3436746E49;
    case 9:
      return 7630409;
    case 0xALL:
      return 0x32783233746E4955;
    case 0xBLL:
      return 0x33783233746E4955;
    case 0xCLL:
      return 0x34783233746E4955;
    case 0xDLL:
      return 0x74616F6C46;
    case 0xELL:
      return 0x3274616F6C46;
    case 0xFLL:
      return 0x3374616F6C46;
    case 0x10:
      return 0x3474616F6C46;
    case 0x11:
      return 0x32783274616F6C46;
    case 0x12:
      return 0x33783274616F6C46;
    case 0x13:
      return 0x34783274616F6C46;
    case 0x14:
      return 0x32783374616F6C46;
    case 0x15:
      return 0x33783374616F6C46;
    case 0x16:
      return 0x34783374616F6C46;
    case 0x17:
      return 0x32783474616F6C46;
    case 0x18:
      return 0x33783474616F6C46;
    case 0x19:
      return 0x34783474616F6C46;
    case 0x1ALL:
      return 0x656C62756F44;
    case 0x1BLL:
      return 0x3855726F6C6F43;
    case 0x1CLL:
      return 0x6D6152726F6C6F43;
    case 0x1DLL:
      return 0xD000000000000010;
    case 0x1ELL:
      return 0xD000000000000015;
    case 0x1FLL:
      return 0xD000000000000010;
    case 0x20:
      return 0xD000000000000010;
    case 0x21:
      return 0xD000000000000010;
    case 0x22:
      return 0x676E69727453;
    case 0x23:
      return 5001813;
    case 0x24:
      return 0x696E726574617551;
    case 0x25:
      return 0x466576727543;
    case 0x26:
      return 0x7865546576727543;
    case 0x27:
      return 0x65676E6152746E49;
    case 0x28:
      return 0x6E615274616F6C46;
    case 0x29:
      return 0x6156686374697753;
    case 0x2ALL:
      return 0x6E776F6E6B6E55;
    case 0x2BLL:
      v3 = 1819242306;
      return v3 | 0x6172724100000000;
    case 0x2CLL:
      v2 = 0x4138746E4955;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
    case 0x2DLL:
      v4 = 0x3631746E4955;
      goto LABEL_63;
    case 0x2ELL:
      v4 = 0x3233746E4955;
      goto LABEL_63;
    case 0x2FLL:
      v4 = 0x3436746E4955;
      goto LABEL_63;
    case 0x30:
      v3 = 947154505;
      return v3 | 0x6172724100000000;
    case 0x31:
      v2 = 0x413631746E49;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
    case 0x32:
      v2 = 0x413233746E49;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
    case 0x33:
      v2 = 0x413436746E49;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
    case 0x34:
      v5 = 1098149449;
      goto LABEL_61;
    case 0x35:
      v2 = 0x4174616F6C46;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
    case 0x36:
      v4 = 0x3274616F6C46;
      goto LABEL_63;
    case 0x37:
      v4 = 0x3374616F6C46;
      goto LABEL_63;
    case 0x38:
      v4 = 0x3474616F6C46;
      goto LABEL_63;
    case 0x39:
      v4 = 0x676E69727453;
LABEL_63:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7241000000000000;
      break;
    case 0x3ALL:
      v5 = 1095520853;
LABEL_61:
      result = v5 | 0x7961727200000000;
      break;
    default:
      MEMORY[0x1B2718AE0](v0[2], v0[3]);
      result = 0x79546D6F74737543;
      break;
  }

  return result;
}

uint64_t sub_1AF7FEBD8(void *a1)
{
  if (*(v1 + 8) >= 0x3BuLL)
  {
    v6 = *(v1 + 16);
    v7 = *(v1 + 32);
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF3C8();
    sub_1AF7FE65C();
    sub_1AF448018(v4, v5);
    sub_1AFDFEBE8();
    if (!v2)
    {

      sub_1AF448018(v4, v5);
      sub_1AF80C180();
      sub_1AFDFEC38();
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF3D8();
    sub_1AF7FE65C();
    sub_1AF448018(v4, v5);
    sub_1AFDFEEE8();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF7FED7C(void *a1)
{
  v3 = v1;
  sub_1AF80DBD4(0, &qword_1EB63EF18, sub_1AF80A4DC, &_s12MetadataTypeO6CustomV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80A4DC();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v13 = 1;
    sub_1AFDFE8B8();
    v11[1] = *(v3 + 32);
    v12 = 2;
    sub_1AF7E88F0(0);
    sub_1AF80A530(&qword_1EB63EF20, sub_1AF7DB748, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF7FEF94(char *a1, char *a2)
{
  if (*&aType_30[8 * *a1] == *&aType_30[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1AF7FF014@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF80A0EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF7FF03C(uint64_t a1)
{
  v2 = sub_1AF80A4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7FF078(uint64_t a1)
{
  v2 = sub_1AF80A4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF7FF0B4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF80A204(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void sub_1AF7FF114()
{
  sub_1AF80C2A4(0, &qword_1EB633B60, &_s12MetadataTypeON, MEMORY[0x1E69E6EC8]);
  v0 = sub_1AFDFE5C8();
  sub_1AF805568(&unk_1F24F5668, sub_1AF7FF1DC, 0, 1, &v0);
  qword_1EB6C2AC8 = v0;
}

uint64_t sub_1AF7FF1DC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v10 = *(a1 + 4);
  *a2 = sub_1AF7FE65C();
  *(a2 + 8) = v4;
  v5 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
  *(a2 + 48) = v10;
  return sub_1AF444F60(&v8, v7);
}

uint64_t sub_1AF7FF23C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  v5 = sub_1AF585714(a3);
  v6 = *(*(a2 - 8) + 16);

  return v6(v5, a1, a2);
}

uint64_t sub_1AF7FF2A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *(*(a3 - 8) + 72) * a2 / *(*(a3 - 8) + 72);
  v5 = sub_1AFDFCE88();
  swift_getWitnessTable(MEMORY[0x1E69E6058], v5, a1, v9);
  v6 = sub_1AFDFD578();
  result = sub_1AFDFD538();
  a4[3] = result;
  *a4 = v6;
  return result;
}

uint64_t sub_1AF7FF358()
{
  v0 = sub_1AF7FE65C();
  v2 = v1;
  if (v0 == sub_1AF7FE65C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1AFDFEE28();
  }

  return v4 & 1;
}

double sub_1AF7FF3E4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF80BE78(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF7FF444()
{
  sub_1AFDFF288();
  sub_1AF7FE65C();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7FF4A0(uint64_t a1)
{
  sub_1AF7FE65C();
  sub_1AFDFD038();
}

uint64_t sub_1AF7FF4F0(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF7FE65C();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7FF5A8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7FF600(uint64_t a1)
{
  v2 = sub_1AF80DB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7FF63C(uint64_t a1)
{
  v2 = sub_1AF80DB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF7FF678@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF80CA20(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF7FF6C0(void *a1)
{
  sub_1AF80DBD4(0, &qword_1EB63F1E0, sub_1AF80DB80, &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF80DB80();
  sub_1AFDFF3F8();
  sub_1AFDFE998();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AF7FF824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF80DBD4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v86 - v8;
  memset(v105, 0, sizeof(v105));
  v10 = a1[3];
  v106 = a1;
  sub_1AF441150(a1, v10);
  sub_1AF445B90();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v106);
    return sub_1AF80C110(v105, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  }

  else
  {
    v91 = v7;
    v90 = a2;
    *&v95 = 0;
    BYTE8(v95) = 1;
    *&v96 = 0x656D614E79656BLL;
    *(&v96 + 1) = 0xE700000000000000;
    v12 = sub_1AFDFE708();
    v14 = v13;
    v101[0] = v12;
    v101[1] = v13;
    *&v99 = 0;
    BYTE8(v99) = 1;
    *&v100 = 0x70795465756C6176;
    *(&v100 + 1) = 0xE900000000000065;
    sub_1AF75FCC4();
    sub_1AFDFE768();
    *&v89 = 0;
    *&v88 = v12;
    v15 = v95;
    v16 = v96;
    v17 = v97;
    v102 = v95;
    v103 = v96;
    v104 = v97;
    switch(*(&v95 + 1))
    {
      case 0:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v50 = sub_1AFDFE718();
        *(&v96 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v95) = v50 & 1;
        goto LABEL_74;
      case 1:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v51 = sub_1AFDFE7B8();
        v52 = MEMORY[0x1E69E7508];
        goto LABEL_36;
      case 2:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v54 = sub_1AFDFE7C8();
        v55 = MEMORY[0x1E69E75F8];
        goto LABEL_38;
      case 3:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v46 = sub_1AFDFE7D8();
        v47 = MEMORY[0x1E69E7668];
        goto LABEL_40;
      case 4:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v35 = sub_1AFDFE7E8();
        v36 = MEMORY[0x1E69E76D8];
        goto LABEL_44;
      case 5:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v51 = sub_1AFDFE778();
        v52 = MEMORY[0x1E69E7230];
LABEL_36:
        *(&v96 + 1) = v52;
        LOBYTE(v95) = v51;
        goto LABEL_74;
      case 6:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v54 = sub_1AFDFE788();
        v55 = MEMORY[0x1E69E7290];
LABEL_38:
        *(&v96 + 1) = v55;
        LOWORD(v95) = v54;
        goto LABEL_74;
      case 7:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v46 = sub_1AFDFE798();
        v47 = MEMORY[0x1E69E72F0];
LABEL_40:
        *(&v96 + 1) = v47;
        LODWORD(v95) = v46;
        goto LABEL_74;
      case 8:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v35 = sub_1AFDFE7A8();
        v36 = MEMORY[0x1E69E7360];
        goto LABEL_44;
      case 9:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v35 = sub_1AFDFE748();
        v36 = MEMORY[0x1E69E6530];
LABEL_44:
        *(&v96 + 1) = v36;
        *&v95 = v35;
        goto LABEL_74;
      case 0xALL:
        sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v48;
        sub_1AF80B134();
        goto LABEL_67;
      case 0xBLL:
        sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v61;
        *&v95 = swift_allocObject();
        sub_1AF80B0A4();
        goto LABEL_67;
      case 0xCLL:
        sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v58;
        *&v95 = swift_allocObject();
        sub_1AF80B014();
        goto LABEL_67;
      case 0xDLL:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        sub_1AFDFE738();
        *(&v96 + 1) = MEMORY[0x1E69E6448];
        LODWORD(v95) = v38;
        goto LABEL_74;
      case 0xELL:
        sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v73;
        sub_1AF80A5A8();
        goto LABEL_67;
      case 0xFLL:
        sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v74;
        *&v95 = swift_allocObject();
        sub_1AF80A638();
        goto LABEL_67;
      case 0x10:
        sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v78;
        *&v95 = swift_allocObject();
        sub_1AF80A6C8();
        goto LABEL_67;
      case 0x11:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        sub_1AF6086A4();
        sub_1AFDFE768();
        v76 = v92;
        type metadata accessor for simd_float2x2(0);
        *(&v96 + 1) = v77;
        v95 = v76;
        goto LABEL_74;
      case 0x12:
        *&v92 = 0;
        BYTE8(v92) = 1;
        v93 = v88;
        v94 = v14;
        sub_1AF608650();
        sub_1AFDFE768();
        v89 = v99;
        v88 = v100;
        type metadata accessor for simd_float2x3(0);
        goto LABEL_47;
      case 0x13:
        *&v92 = 0;
        BYTE8(v92) = 1;
        v93 = v88;
        v94 = v14;
        sub_1AF6085FC();
        sub_1AFDFE768();
        v89 = v99;
        v88 = v100;
        type metadata accessor for simd_float2x4(0);
LABEL_47:
        *(&v96 + 1) = v33;
        v59 = swift_allocObject();
        *&v95 = v59;
        v60 = v88;
        *(v59 + 16) = v89;
        *(v59 + 32) = v60;
        goto LABEL_74;
      case 0x14:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        sub_1AF6085A8();
        sub_1AFDFE768();
        v89 = v92;
        v84 = v93;
        type metadata accessor for simd_float3x2(0);
        *(&v96 + 1) = v85;
        v95 = v89;
        *&v96 = v84;
        goto LABEL_74;
      case 0x15:
        *&v92 = 0;
        BYTE8(v92) = 1;
        v93 = v88;
        v94 = v14;
        sub_1AF608554();
        sub_1AFDFE768();
        v89 = v95;
        v88 = v96;
        v87 = v97;
        type metadata accessor for simd_float3x3(0);
        goto LABEL_42;
      case 0x16:
        *&v92 = 0;
        BYTE8(v92) = 1;
        v93 = v88;
        v94 = v14;
        sub_1AF608500();
        sub_1AFDFE768();
        v89 = v95;
        v88 = v96;
        v87 = v97;
        type metadata accessor for simd_float3x4(0);
LABEL_42:
        *(&v100 + 1) = v37;
        v56 = swift_allocObject();
        *&v99 = v56;
        v57 = v88;
        v56[1] = v89;
        v56[2] = v57;
        v56[3] = v87;
        goto LABEL_52;
      case 0x17:
        *&v92 = 0;
        BYTE8(v92) = 1;
        v93 = v88;
        v94 = v14;
        sub_1AF6084AC();
        sub_1AFDFE768();
        v89 = v99;
        v43 = v100;
        type metadata accessor for simd_float4x2(0);
        *(&v96 + 1) = v44;
        v45 = swift_allocObject();
        *&v95 = v45;
        *(v45 + 16) = v89;
        *(v45 + 32) = v43;
        goto LABEL_74;
      case 0x18:
        *&v92 = 0;
        BYTE8(v92) = 1;
        v93 = v88;
        v94 = v14;
        sub_1AF608458();
        sub_1AFDFE768();
        type metadata accessor for simd_float4x3(0);
        *(&v100 + 1) = v64;
        v65 = swift_allocObject();
        *&v99 = v65;
        v66 = v96;
        v65[1] = v95;
        v65[2] = v66;
        v67 = v98;
        v65[3] = v97;
        v65[4] = v67;
        goto LABEL_52;
      case 0x19:
        *&v92 = 0;
        BYTE8(v92) = 1;
        v93 = v88;
        v94 = v14;
        sub_1AF48D6F8();
        sub_1AFDFE768();
        v89 = v95;
        v88 = v96;
        v87 = v97;
        v86 = v98;
        type metadata accessor for simd_float4x4(0);
        *(&v100 + 1) = v39;
        v40 = swift_allocObject();
        *&v99 = v40;
        v41 = v88;
        v40[1] = v89;
        v40[2] = v41;
        v42 = v86;
        v40[3] = v87;
        v40[4] = v42;
LABEL_52:
        (*(v91 + 8))(v9, v6);
        v68 = &v99;
        goto LABEL_75;
      case 0x1ALL:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        sub_1AFDFE728();
        *(&v96 + 1) = MEMORY[0x1E69E63B0];
        *&v95 = v31;
        goto LABEL_74;
      case 0x1BLL:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = &type metadata for ColorU8;
        sub_1AF80A758();
        goto LABEL_67;
      case 0x1CLL:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = &type metadata for ColorRamp;
        sub_1AF80A7AC();
        goto LABEL_67;
      case 0x1ELL:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = &_s8MetadataV36RandomNumberGeneratorXoshiroWithSeedVN;
        *&v95 = swift_allocObject();
        sub_1AF80A884();
        goto LABEL_72;
      case 0x22:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        v69 = sub_1AFDFE708();
        *(&v96 + 1) = MEMORY[0x1E69E6158];
        *&v95 = v69;
        *(&v95 + 1) = v70;
        goto LABEL_74;
      case 0x23:
        v53 = sub_1AFDFC128();
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v53;
        sub_1AF585714(&v95);
        sub_1AF5F8A30(&qword_1EB633060, MEMORY[0x1E6968FD0]);
        goto LABEL_67;
      case 0x24:
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        sub_1AF5E122C();
        sub_1AFDFE768();
        v89 = v92;
        type metadata accessor for simd_quatf(0);
        *(&v96 + 1) = v26;
        *&v95 = swift_allocObject();
        *(v95 + 16) = v89;
        goto LABEL_74;
      case 0x25:
        sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v34;
        *&v95 = swift_allocObject();
        sub_1AF80A800();
        goto LABEL_67;
      case 0x27:
        sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v75;
        sub_1AF80AF88(&qword_1ED723198, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
        goto LABEL_67;
      case 0x28:
        sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v81;
        sub_1AF80BB10(&qword_1ED7231A0, MEMORY[0x1E69E6478], MEMORY[0x1E69E66E0]);
        goto LABEL_67;
      case 0x29:
      case 0x2ALL:
        *&v95 = 0;
        *(&v95 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v99 = v95;
        MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF35F50);
        v95 = v15;
        v96 = v16;
        *&v97 = v17;
        sub_1AFDFE458();
        v18 = v99;
        sub_1AF4567E0();
        swift_allocError();
        *v19 = v18;
        *(v19 + 16) = 32;
        swift_willThrow();
        (*(v91 + 8))(v9, v6);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v106);

        if (!v89)
        {
          sub_1AF687FE4(v102, *(&v102 + 1), v103, *(&v103 + 1), v104);
        }

        return sub_1AF80C110(v105, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      case 0x2BLL:
        sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v30;
        sub_1AF80AEA0();
        goto LABEL_67;
      case 0x2CLL:
        sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v29;
        sub_1AF80AE0C();
        goto LABEL_67;
      case 0x2DLL:
        sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v49;
        sub_1AF80AD78();
        goto LABEL_67;
      case 0x2ELL:
        sub_1AF80C8C8(0, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v62;
        sub_1AF80ACE4();
        goto LABEL_67;
      case 0x2FLL:
        sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v79;
        sub_1AF80AC50();
        goto LABEL_67;
      case 0x30:
        sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v21;
        sub_1AF80ABBC();
        goto LABEL_67;
      case 0x31:
        sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v32;
        sub_1AF80AB28();
        goto LABEL_67;
      case 0x32:
        sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v63;
        sub_1AF80AA94();
        goto LABEL_67;
      case 0x33:
        sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v72;
        sub_1AF80AA00();
        goto LABEL_67;
      case 0x34:
        sub_1AF80C8C8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v82;
        sub_1AF80A96C();
        goto LABEL_67;
      case 0x35:
        sub_1AF80C8C8(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v71;
        sub_1AF80A8D8();
LABEL_67:
        sub_1AFDFE768();
LABEL_74:
        (*(v91 + 8))(v9, v6);
        v68 = &v95;
LABEL_75:
        sub_1AF7E8BCC(v68, v105);
        break;
      case 0x36:
        sub_1AF44219C(0);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v28;
        v23 = &unk_1EB63EF40;
        v24 = sub_1AF44219C;
        v25 = sub_1AF80A5A8;
        goto LABEL_71;
      case 0x37:
        sub_1AF4420DC(0);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v22;
        v23 = &unk_1EB63EF38;
        v24 = sub_1AF4420DC;
        v25 = sub_1AF80A638;
        goto LABEL_71;
      case 0x38:
        sub_1AF6560F0(0);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v83;
        v23 = &qword_1ED7231D8;
        v24 = sub_1AF6560F0;
        v25 = sub_1AF80A6C8;
LABEL_71:
        sub_1AF80B3B4(v23, v24, v25, MEMORY[0x1E69E6330]);
        goto LABEL_72;
      case 0x39:
        sub_1AF80C8C8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v80;
        sub_1AF6A2428();
        goto LABEL_72;
      case 0x3ALL:
        sub_1AF5877E4(0);
        *&v99 = 0;
        BYTE8(v99) = 1;
        *&v100 = v88;
        *(&v100 + 1) = v14;
        *(&v96 + 1) = v27;
        sub_1AF80B218(&unk_1EB640250, &qword_1EB633060, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
LABEL_72:
        sub_1AFDFE768();
        (*(v91 + 8))(v9, v6);
        sub_1AF7E8BCC(&v95, v105);
        break;
      default:
        (*(v91 + 8))(v9, v6);
        break;
    }

    v20 = v106;
    sub_1AF4455CC(v101, v90);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
    return sub_1AF761390(v101);
  }
}

uint64_t sub_1AF802364(void *a1)
{
  v2 = v1;
  v45 = sub_1AFDFC128();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF80DBD4(0, &qword_1EB6398C8, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF445B90();
  sub_1AFDFF3F8();
  v11 = *v2;
  v12 = v2[1];
  *&v51 = 0;
  BYTE8(v51) = 1;
  *&v52 = 0x656D614E79656BLL;
  *(&v52 + 1) = 0xE700000000000000;
  v13 = v63;
  sub_1AFDFE8B8();
  v63 = v13;
  if (v13)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v41 = v5;
  v42 = v12;
  v43 = v11;
  v44 = v8;
  v15 = v2[2];
  v16 = v2[3];
  v17 = v10;
  v18 = v2[4];
  v19 = v2[5];
  v20 = v2[6];
  *&v51 = v15;
  *(&v51 + 1) = v16;
  *&v52 = v18;
  *(&v52 + 1) = v19;
  *&v53 = v20;
  *&v47 = 0;
  BYTE8(v47) = 1;
  *&v48 = 0x70795465756C6176;
  *(&v48 + 1) = 0xE900000000000065;
  sub_1AF75FC0C();
  v21 = v63;
  sub_1AFDFE918();
  v63 = v21;
  if (!v21)
  {
    v40 = v17;
    switch(v16)
    {
      case 0:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE8C8();
        goto LABEL_61;
      case 1:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE968();
        goto LABEL_61;
      case 2:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE978();
        goto LABEL_61;
      case 3:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE988();
        goto LABEL_61;
      case 4:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE998();
        goto LABEL_61;
      case 5:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE928();
        goto LABEL_61;
      case 6:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE938();
        goto LABEL_61;
      case 7:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE948();
        goto LABEL_61;
      case 8:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE958();
        goto LABEL_61;
      case 9:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE8F8();
        goto LABEL_61;
      case 10:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80DBD4(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BDE8();
        goto LABEL_60;
      case 11:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80DBD4(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BD58();
        goto LABEL_60;
      case 12:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80DBD4(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BCC8();
        goto LABEL_60;
      case 13:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE8E8();
        goto LABEL_61;
      case 14:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80DBD4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B424();
        goto LABEL_60;
      case 15:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80DBD4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B324();
        goto LABEL_60;
      case 16:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80DBD4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B294();
        goto LABEL_60;
      case 17:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        type metadata accessor for simd_float2x2(0);
        swift_dynamicCast();
        v47 = v61;
        *&v51 = 0;
        BYTE8(v51) = 1;
        *&v52 = v43;
        *(&v52 + 1) = v42;
        sub_1AF608A04();
        goto LABEL_60;
      case 18:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        type metadata accessor for simd_float2x3(0);
        swift_dynamicCast();
        v51 = v61;
        v52 = v62;
        *&v47 = 0;
        BYTE8(v47) = 1;
        *&v48 = v43;
        *(&v48 + 1) = v42;
        sub_1AF6089B0();
        goto LABEL_60;
      case 19:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        type metadata accessor for simd_float2x4(0);
        swift_dynamicCast();
        v51 = v61;
        v52 = v62;
        *&v47 = 0;
        BYTE8(v47) = 1;
        *&v48 = v43;
        *(&v48 + 1) = v42;
        sub_1AF60895C();
        goto LABEL_60;
      case 20:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        type metadata accessor for simd_float3x2(0);
        swift_dynamicCast();
        v47 = v61;
        *&v48 = v62;
        *&v51 = 0;
        BYTE8(v51) = 1;
        *&v52 = v43;
        *(&v52 + 1) = v42;
        sub_1AF608908();
        goto LABEL_60;
      case 21:
        sub_1AF80C918((v2 + 7), &v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v61, &v47);
        type metadata accessor for simd_float3x3(0);
        swift_dynamicCast();
        *&v47 = 0;
        BYTE8(v47) = 1;
        *&v48 = v43;
        *(&v48 + 1) = v42;
        sub_1AF6088B4();
        goto LABEL_60;
      case 22:
        sub_1AF80C918((v2 + 7), &v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v61, &v47);
        type metadata accessor for simd_float3x4(0);
        swift_dynamicCast();
        *&v47 = 0;
        BYTE8(v47) = 1;
        *&v48 = v43;
        *(&v48 + 1) = v42;
        sub_1AF608860();
        goto LABEL_60;
      case 23:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        type metadata accessor for simd_float4x2(0);
        swift_dynamicCast();
        v51 = v61;
        v52 = v62;
        *&v47 = 0;
        BYTE8(v47) = 1;
        *&v48 = v43;
        *(&v48 + 1) = v42;
        sub_1AF60880C();
        goto LABEL_60;
      case 24:
        sub_1AF80C918((v2 + 7), &v58, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v58, &v61);
        type metadata accessor for simd_float4x3(0);
        swift_dynamicCast();
        v47 = v51;
        v48 = v52;
        v49 = v53;
        v50 = v54;
        *&v55 = 0;
        BYTE8(v55) = 1;
        v56 = v43;
        v57 = v42;
        sub_1AF6087B8();
        goto LABEL_60;
      case 25:
        sub_1AF80C918((v2 + 7), &v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v61, &v47);
        type metadata accessor for simd_float4x4(0);
        swift_dynamicCast();
        *&v47 = 0;
        BYTE8(v47) = 1;
        *&v48 = v43;
        *(&v48 + 1) = v42;
        sub_1AF48D74C();
        goto LABEL_60;
      case 26:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v17 = v40;
        v30 = v63;
        sub_1AFDFE8D8();
        goto LABEL_61;
      case 27:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        LODWORD(v55) = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BC74();
        goto LABEL_60;
      case 28:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        v55 = v58;
        LOBYTE(v56) = v59;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BC20();
        v17 = v40;
        v32 = v63;
        sub_1AFDFE918();
        v63 = v32;
        goto LABEL_24;
      case 30:
        sub_1AF80C918((v2 + 7), &v58, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v58, &v61);
        swift_dynamicCast();
        v47 = v51;
        v48 = v52;
        *&v49 = v53;
        *&v55 = 0;
        BYTE8(v55) = 1;
        v56 = v43;
        v57 = v42;
        sub_1AF80B1C4();
        goto LABEL_60;
      case 34:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;

        v17 = v40;
        v37 = v63;
        sub_1AFDFE8B8();
        v63 = v37;

        goto LABEL_66;
      case 35:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        v33 = v41;
        v34 = v45;
        swift_dynamicCast();
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF5F8A30(&qword_1EB640270, MEMORY[0x1E6968FB8]);

        v35 = v40;
        v36 = v63;
        sub_1AFDFE918();
        v63 = v36;

        (*(v44 + 8))(v35, v7);
        return (*(v46 + 8))(v33, v34);
      case 36:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        type metadata accessor for simd_quatf(0);
        swift_dynamicCast();
        *&v51 = 0;
        BYTE8(v51) = 1;
        *&v52 = v43;
        *(&v52 + 1) = v42;
        sub_1AF5E1280();
        goto LABEL_60;
      case 37:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
        swift_dynamicCast();
        v55 = v58;
        v56 = v59;
        LOBYTE(v57) = v60;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BB9C();
        v17 = v40;
        v31 = v63;
        sub_1AFDFE918();
        v63 = v31;

LABEL_24:

        goto LABEL_66;
      case 39:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80AF88(&qword_1EB63F010, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
        goto LABEL_60;
      case 40:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BB10(&qword_1EB6398A0, MEMORY[0x1E69E6458], MEMORY[0x1E69E66B0]);
LABEL_60:
        v17 = v40;
        v30 = v63;
        sub_1AFDFE918();
LABEL_61:
        v63 = v30;
        break;
      case 41:
      case 42:
        *&v51 = 0;
        *(&v51 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v47 = v51;
        MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF35F80);
        *&v51 = v15;
        *(&v51 + 1) = v16;
        *&v52 = v18;
        *(&v52 + 1) = v19;
        *&v53 = v20;
        sub_1AFDFE458();
        v22 = v47;
        sub_1AF4567E0();
        v23 = swift_allocError();
        *v24 = v22;
        *(v24 + 16) = 32;
        v63 = v23;
        swift_willThrow();
        goto LABEL_6;
      case 43:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB63ED80, MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80BA7C();
        goto LABEL_65;
      case 44:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B9E8();
        goto LABEL_65;
      case 45:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B954();
        goto LABEL_65;
      case 46:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB63ED78, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B8C0();
        goto LABEL_65;
      case 47:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB63ED70, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B82C();
        goto LABEL_65;
      case 48:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB63ED68, MEMORY[0x1E69E7230], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B798();
        goto LABEL_65;
      case 49:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB63ED60, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B704();
        goto LABEL_65;
      case 50:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB63ED58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B670();
        goto LABEL_65;
      case 51:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1EB63ED50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B5DC();
        goto LABEL_65;
      case 52:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B548();
        goto LABEL_65;
      case 53:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B4B4();
        goto LABEL_65;
      case 54:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF44219C(0);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v27 = &unk_1EB63EFC0;
        v28 = sub_1AF44219C;
        v29 = sub_1AF80B424;
        goto LABEL_64;
      case 55:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF4420DC(0);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v27 = &unk_1EB63EFB8;
        v28 = sub_1AF4420DC;
        v29 = sub_1AF80B324;
        goto LABEL_64;
      case 56:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF6560F0(0);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        v27 = &qword_1EB63D1B0;
        v28 = sub_1AF6560F0;
        v29 = sub_1AF80B294;
LABEL_64:
        sub_1AF80B3B4(v27, v28, v29, MEMORY[0x1E69E6300]);
        goto LABEL_65;
      case 57:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF80C8C8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF72774C();
        goto LABEL_65;
      case 58:
        sub_1AF80C918((v2 + 7), &v47, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        sub_1AF449D40(&v47, &v51);
        sub_1AF5877E4(0);
        swift_dynamicCast();
        *&v55 = v58;
        *&v61 = 0;
        BYTE8(v61) = 1;
        *&v62 = v43;
        *(&v62 + 1) = v42;
        sub_1AF80B218(&qword_1EB63EFB0, &qword_1EB640270, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
LABEL_65:
        v17 = v40;
        v38 = v63;
        sub_1AFDFE918();
        v63 = v38;
LABEL_66:

        break;
      default:
LABEL_6:
        v25 = *(v44 + 8);
        v26 = v40;
        return v25(v26, v7);
    }
  }

  v25 = *(v44 + 8);
  v26 = v17;
  return v25(v26, v7);
}

uint64_t sub_1AF804948(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

uint64_t sub_1AF804978(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return (sub_1AFDFEE28() ^ 1) & 1;
  }
}

uint64_t sub_1AF8049C4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1AFDFEE28() ^ 1) & 1;
  }
}

uint64_t sub_1AF804A18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

void sub_1AF804AB0(uint64_t a1@<X8>)
{
  strcpy(a1, "metadataDict");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1AF804AF4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF804B4C(uint64_t a1)
{
  v2 = sub_1AF80C1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF804B88(uint64_t a1)
{
  v2 = sub_1AF80C1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF804BC4(void *a1)
{
  v2 = swift_allocObject();
  sub_1AF7FDEC8(a1);
  return v2;
}

unint64_t _s8MetadataVwxx(void *a1)
{

  result = a1[3];
  if (result >= 0x3B)
  {
  }

  if (a1[10])
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 7);
  }

  return result;
}

uint64_t _s8MetadataVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);

  if (v5 >= 0x3B)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v5;
    v8 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v8;
    *(a1 + 48) = *(a2 + 48);

    v7 = *(a2 + 80);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    return a1;
  }

  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 80);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 80) = v7;
  (**(v7 - 8))(a1 + 56, a2 + 56);
  return a1;
}

uint64_t _s8MetadataVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (*(a1 + 24) >= 0x3BuLL)
  {
    if (v4 >= 0x3B)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      sub_1AF7D8EC4(a1 + 16);
      v7 = *(a2 + 48);
      v8 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v8;
      *(a1 + 48) = v7;
    }
  }

  else if (v4 >= 0x3B)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  v9 = *(a2 + 80);
  if (!*(a1 + 80))
  {
    if (v9)
    {
      *(a1 + 80) = v9;
      (**(v9 - 8))(a1 + 56, a2 + 56);
      return a1;
    }

LABEL_14:
    v11 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v11;
    return a1;
  }

  v10 = (a1 + 56);
  if (!v9)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
    goto LABEL_14;
  }

  sub_1AF60685C(v10, (a2 + 56));
  return a1;
}

uint64_t _s8MetadataVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  if (*(a1 + 24) >= 0x3BuLL)
  {
    v5 = *(a2 + 24);
    if (v5 >= 0x3B)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v5;

      v8 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v8;

      *(a1 + 48) = *(a2 + 48);

      if (!*(a1 + 80))
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    sub_1AF7D8EC4(a1 + 16);
  }

  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 80))
  {
LABEL_5:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((a1 + 56));
  }

LABEL_6:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}