uint64_t sub_1CF75B008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF75B068(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = *(v1 + 32);
  }

  return (*(v1 + 16))(1, v2);
}

uint64_t sub_1CF75B0B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46C0, &unk_1CFA16798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1CF75B178(unint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = a1;
    v5 = qword_1EDEA34B0;
    v6 = a3;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v9 = v8;
    v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = v11;
    if (v7 == v10 && v9 == v11)
    {

      v9, v29, v30, v31, v32, v33, v34, v35;
      v12, v36, v37, v38, v39, v40, v41, v42;
      return 0;
    }

    v14 = sub_1CF9E8048();
    v9, v15, v16, v17, v18, v19, v20, v21;
    v12, v22, v23, v24, v25, v26, v27, v28;
    if (v14)
    {

      return 0;
    }

    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;
    v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v48 = v43;
    v49 = v46;
    if (v48 == v47 && v45 == v46)
    {

      v45, v50, v51, v52, v53, v54, v55, v56;
      v49, v57, v58, v59, v60, v61, v62, v63;
      return 0;
    }

    v64 = sub_1CF9E8048();

    v45, v65, v66, v67, v68, v69, v70, v71;
    v49, v72, v73, v74, v75, v76, v77, v78;
    a1 = v4;
    a2 = v3;
    if (v64)
    {
      return 0;
    }
  }

  return a2 == -1 || a2 != 2 || a1 >= 2;
}

BOOL sub_1CF75B358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v16 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  sub_1CEFCCBDC(a1, &v16 - v6, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1CEFCCC44(v7, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v9 = 0;
    v10 = -1;
  }

  else
  {
    v9 = *v7;
    v10 = v7[8];
    sub_1CEFCCC44(v7, &unk_1EC4BE360, &qword_1CF9FE650);
  }

  v11 = type metadata accessor for PendingIndexingItemRow(0);
  sub_1CEFCCBDC(a1 + *(v11 + 20), v4, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_1CEFCCC44(v4, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v13 = 0;
  }

  else
  {
    v13 = *v4;
    sub_1CEFCCC44(v4, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  }

  v14 = sub_1CF75B178(v9, v10, v13);

  return v14;
}

uint64_t sub_1CF75B5B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_169Tm()
{
  v1 = *(type metadata accessor for ChangeEnumeratorAnchor(0) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_1CF9E5D98();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  *(v0 + v3), v5, v6, v7, v8, v9, v10, v11;

  return swift_deallocObject();
}

void sub_1CF75B758(unint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ChangeEnumeratorAnchor(0) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF747AA4(a1, a2, v7, v8, v9, v10, v2 + v6, v11);
}

uint64_t objectdestroy_90Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for ChangeEnumeratorAnchor(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    v5 = sub_1CF9E5D98();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return swift_deallocObject();
}

void sub_1CF75B94C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF74B450(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t objectdestroy_93Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for ChangeEnumeratorAnchor(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = sub_1CF9E5D98();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

void sub_1CF75BB4C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF74FD10(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_120Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_132Tm()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_105Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_129Tm()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CF75BF70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF75BFC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CF75C164(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v4 = (a1 + 32);
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
    for (i = v2 - 1; ; --i)
    {
      v6 = v4[1];
      v13[0] = *v4;
      v13[1] = v6;
      v7 = v4[3];
      v9 = *v4;
      v8 = v4[1];
      v13[2] = v4[2];
      v13[3] = v7;
      v12[0] = v9;
      v12[1] = v8;
      v10 = v4[3];
      v12[2] = v4[2];
      v12[3] = v10;
      sub_1CEFCCBDC(v13, &v11, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CF327484(v12);
      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      if (!i)
      {
        break;
      }

      v4 += 4;
    }

    return v14;
  }

  return result;
}

BOOL sub_1CF75C2CC(unint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1 & 0xFFFFDFFFFFFEF6E7;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    a1 = v3 & (qword_1EDEABDE8 | 0x6409000000C000);
  }

  return (*(v2 + 16) & a1) != 0 || (*(v2 + 8) & 0x51) != 0;
}

BOOL sub_1CF75C36C(unint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1 & 0xFFFFDFFFFFFEF6E7;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    a1 = v3 & (qword_1EDEABDE8 | 0x6409000000C000);
  }

  return (*(v2 + 24) & a1) != 0 || (*(v2 + 16) & 0x51) != 0;
}

id sub_1CF75C40C(uint64_t a1, char a2, char a3)
{
  if (a2 == 2 && a1 == 0)
  {
    if (a3)
    {
      v5 = *MEMORY[0x1E6967258];

      return v5;
    }
  }

  else if (a2 == 2 && a1 == 1 && (a3 & 1) != 0)
  {
    v5 = *MEMORY[0x1E6967280];

    return v5;
  }

  v7 = VFSItemID.description.getter(a1);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = sub_1CF9E6888();
  0xE800000000000000, v18, v19, v20, v21, v22, v23, v24;
  return v17;
}

id sub_1CF75C4E8(void *a1, char a2)
{
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v8;
  if (v4 != v7 || v6 != v8)
  {
    v17 = sub_1CF9E8048();
    v6, v18, v19, v20, v21, v22, v23, v24;
    v15, v25, v26, v27, v28, v29, v30, v31;
    if (v17 & 1) != 0 && (a2)
    {
      goto LABEL_9;
    }

LABEL_11:
    if (qword_1EDEA3498 != -1)
    {
      swift_once();
    }

    v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v42 = v41;
    v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v50 = v43;
    if (v40 == v44 && v42 == v43)
    {
      v42, v43, v44, v45, v46, v47, v48, v49;
      v50, v51, v52, v53, v54, v55, v56, v57;
      if (a2)
      {
LABEL_19:
        v32 = MEMORY[0x1E6967280];
        goto LABEL_20;
      }
    }

    else
    {
      v58 = sub_1CF9E8048();
      v42, v59, v60, v61, v62, v63, v64, v65;
      v50, v66, v67, v68, v69, v70, v71, v72;
      if (v58 & 1) != 0 && (a2)
      {
        goto LABEL_19;
      }
    }

    return a1;
  }

  v6, v8, v9, v10, v11, v12, v13, v14;
  v15, v33, v34, v35, v36, v37, v38, v39;
  if ((a2 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v32 = MEMORY[0x1E6967258];
LABEL_20:

  v73 = *v32;

  return v73;
}

double sub_1CF75C6B8()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = v0[17];
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *(v2 + 32) = sub_1CF7962A0;
  *(v2 + 40) = v3;

  sub_1CEFF7124(v4, v5);

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  *(v6 + 16) = sub_1CF02E218;
  *(v6 + 24) = v7;

  sub_1CEFF7124(v8, v9);

  v10 = v0[5];
  v11 = *(v10 + 16);
  v12 = v0[18];
  v13 = *(v11 + 32);
  v14 = *(v11 + 40);
  *(v11 + 32) = sub_1CF796308;
  *(v11 + 40) = v12;

  sub_1CEFF7124(v13, v14);

  v15 = *(v10 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v15 + 16);
  v18 = *(v15 + 24);
  *(v15 + 16) = sub_1CF066958;
  *(v15 + 24) = v16;

  sub_1CEFF7124(v17, v18);

  v19 = *(v1 + 16);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v19 + 48);
  v22 = *(v19 + 56);
  *(v19 + 48) = sub_1CF796370;
  *(v19 + 56) = v20;

  sub_1CEFF7124(v21, v22);

  v23 = *(v10 + 16);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v23 + 48);
  v26 = *(v23 + 56);
  *(v23 + 48) = sub_1CF796390;
  *(v23 + 56) = v24;

  sub_1CEFF7124(v25, v26);

  v27 = *(v1 + 16);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *(v27 + 64);
  v30 = *(v27 + 72);
  *(v27 + 64) = sub_1CF7963A0;
  *(v27 + 72) = v28;

  sub_1CEFF7124(v29, v30);

  return result;
}

id sub_1CF75C998()
{
  v2 = v0;
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  sub_1CF75C6B8();
  sub_1CF92865C("activate()", 10, 2, sub_1CF796264, v0);
  if (v1)
  {
    sub_1CF3E3914(v10);
    return swift_willThrow();
  }

  else
  {
    v12 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v13 = sub_1CF9E6108();
    v14 = sub_1CF9E7298();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1CEFC7000, v13, v14, "notify scheduler we are ready", v15, 2u);
      MEMORY[0x1D386CDC0](v15, -1, -1);
    }

    v16 = *(v4 + 8);
    v16(v9, v3);
    sub_1CF7FC438();
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7298();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "make sure we get idle stream notification", v20, 2u);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    v16(v6, v3);
    v21 = *(**(*(v2 + 4) + 16) + 920);

    v21(v22);

    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    return [qword_1EDEBBD10 addWatcher_];
  }
}

uint64_t sub_1CF75CCA0(uint64_t (*a1)(void *), uint64_t a2, uint64_t (*a3)(__n128), uint64_t (*a4)(__n128))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v13 = v4;
    fp_preconditionFailure(_:file:line:)(a3, v12, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v9 = a1(v4);
  v10 = objc_sync_exit(v4);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v13 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v12, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v9;
}

void sub_1CF75CDE4(uint64_t a1)
{
  swift_beginAccess();
  v91 = a1;
  v2 = *(a1 + 16);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388, &unk_1CFA018B0);
  swift_getKeyPath();
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v96 = 0;
  v8 = 0;
  v92 = MEMORY[0x1E69E7CC0];
  v93 = v7;
  v97 = MEMORY[0x1E69E7CC0] + 32;
  v94 = v2 + 64;
  v95 = v2;
  while (2)
  {
    v9 = v8;
    if (v6)
    {
LABEL_6:
      v8 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v8 << 6);
      v13 = *(v2 + 48) + 32 * v12;
      v14 = *v13;
      v15 = (*(v2 + 56) + 16 * v12);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(*v15)->tree;
      v98 = *v13;
      v99 = *(v13 + 8);
      v100 = *(v13 + 16);
      LODWORD(v110) = *(v13 + 24);
      sub_1CF1FB2C0(v14, v99, v100, v110);

      v102 = v16;

      v19 = &v17[1];
      v20 = -v18;
      v21 = -1;
      do
      {
        if (v20 + v21 == -1)
        {
          sub_1CF484340(v98, v99, v100, v110);
          v102, v24, v25, v26, v27, v28, v29, v30;
          v17, v31, v32, v33, v34, v35, v36, v37;
          v9 = v8;
          v3 = v94;
          v2 = v95;
          v7 = v93;
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (++v21 >= *v17->tree)
        {
          __break(1u);
          goto LABEL_44;
        }

        v22 = v19 + 56;
        sub_1CEFCCBDC(v19, v107, &qword_1EC4BE650, &qword_1CF9FE490);
        v23 = v109;
        sub_1CEFCCC44(v107, &qword_1EC4BE650, &qword_1CF9FE490);
        v19 = v22;
      }

      while (v23 != 1);
      v107[0] = v98;
      v107[1] = v99;
      v107[2] = v100;
      v38 = v110;
      LOBYTE(v108) = v110;
      sub_1CEFCCBDC(v107, &v104, &qword_1EC4C0670, &qword_1CFA129D0);
      sub_1CF484340(v98, v99, v100, v38);
      v102, v39, v40, v41, v42, v43, v44, v45;
      v17, v46, v47, v48, v49, v50, v51, v52;
      v53 = v104;
      v54 = v105;
      v55 = v106;
      if (v96)
      {
        v3 = v94;
        v2 = v95;
        v7 = v93;
        v56 = v96 - 1;
        if (__OFSUB__(v96, 1))
        {
          break;
        }

LABEL_34:
        v96 = v56;
        *v97 = v53;
        *(v97 + 16) = v54;
        *(v97 + 24) = v55;
        v97 += 32;
        continue;
      }

      v57 = *(v92 + 3);
      if (((v57 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v101 = v106;
      v110 = v105;
      v103 = v104;
      v58 = v57 & 0xFFFFFFFFFFFFFFFELL;
      if (v58 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = v58;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7A8, &qword_1CF9FE670);
      v60 = swift_allocObject();
      v61 = _swift_stdlib_malloc_size(v60);
      v62 = v61 - 32;
      if (v61 < 32)
      {
        v62 = v61 - 1;
      }

      v63 = v62 >> 5;
      *(v60 + 2) = v59;
      *(v60 + 3) = 2 * (v62 >> 5);
      v64 = v60 + 32;
      v65 = *(v92 + 3) >> 1;
      v66 = 32 * v65;
      if (*(v92 + 2))
      {
        v67 = v92 + 32;
        if (v60 != v92 || v64 >= &v67[v66])
        {
          v68 = v62 >> 5;
          memmove(v60 + 32, v67, v66);
          v63 = v68;
        }

        *(v92 + 2) = 0;
      }

      v97 = &v64[v66];
      v69 = (v63 & 0x7FFFFFFFFFFFFFFFLL) - v65;

      v70 = v69;
      v92 = v60;
      v3 = v94;
      v2 = v95;
      v7 = v93;
      v53 = v103;
      v54 = v110;
      v55 = v101;
      v71 = __OFSUB__(v70, 1);
      v56 = v70 - 1;
      if (!v71)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_7:
      v10 = v9;
      while (1)
      {
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v8 >= v7)
        {
          sub_1CEFCB59C(v2);

          v79 = v92;
          v80 = *(v92 + 3);
          if (v80 >= 2)
          {
            v81 = v80 >> 1;
            v71 = __OFSUB__(v81, v96);
            v82 = v81 - v96;
            if (v71)
            {
              goto LABEL_48;
            }

            *(v92 + 2) = v82;
          }

          v2, v72, v73, v74, v75, v76, v77, v78;

          swift_beginAccess();
          v83 = *(v91 + 24);
          v84 = *(v83 + 16);
          if (v84)
          {
            v85 = sub_1CF1F8C20(*(v83 + 16), 0);
            v86 = sub_1CF1F9FB8(v107, (v85 + 4), v84, v83);
            v87 = v107[0];

            sub_1CEFCB59C(v87);
            if (v86 != v84)
            {
              goto LABEL_47;
            }

            v79 = v92;
          }

          else
          {
            v85 = MEMORY[0x1E69E7CC0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4780, &unk_1CFA16930);
          v88 = swift_allocObject();
          v89 = sub_1CF8E4594(v79);

          *(v88 + 16) = v89;
          v90 = sub_1CF8E4594(v85);

          *(v88 + 24) = v90;
          [*(v91 + 40) addObject_];
          return;
        }

        v6 = *(v3 + 8 * v8);
        ++v10;
        if (v6)
        {
          goto LABEL_11;
        }
      }

LABEL_44:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1CF75D370(uint64_t a1)
{
  swift_beginAccess();
  v76 = a1;
  v2 = *(a1 + 16);
  type metadata accessor for VFSItem(0);
  sub_1CF77E690(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  swift_getKeyPath();
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v8 = 0;
  v9 = 0;
  v77 = MEMORY[0x1E69E7CC0];
  v78 = v7;
  v80 = v2;
  v81 = MEMORY[0x1E69E7CC0] + 32;
  v79 = v2 + 64;
  while (2)
  {
    v10 = v9;
    v87 = v8;
    if (v6)
    {
LABEL_6:
      v9 = v10;
LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(v2 + 48) + 48 * v13;
      v86 = *(v14 + 16);
      v82 = *v14;
      v85 = *(v14 + 32);
      v83 = *(v14 + 41);
      v84 = *(v14 + 40);
      v15 = (*(v2 + 56) + 16 * v13);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(*v15)->tree;
      v19 = &(*v15)[1];

      v90 = v16;

      v27 = v19;
      v28 = -1;
      do
      {
        if (v28 - v18 == -1)
        {
          v90, v20, v21, v22, v23, v24, v25, v26;
          v17, v31, v32, v33, v34, v35, v36, v37;
          v10 = v9;
          v3 = v79;
          v2 = v80;
          v7 = v78;
          v8 = v87;
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (++v28 >= *v17->tree)
        {
          __break(1u);
          goto LABEL_40;
        }

        v29 = v27 + 56;
        sub_1CEFCCBDC(v27, &v88, &qword_1EC4BE650, &qword_1CF9FE490);
        v30 = v89;
        sub_1CEFCCC44(&v88, &qword_1EC4BE650, &qword_1CF9FE490);
        v27 = v29;
      }

      while (v30 != 1);
      v90, v20, v21, v22, v23, v24, v25, v26;
      v17, v38, v39, v40, v41, v42, v43, v44;
      v45 = v87;
      if (!v87)
      {
        v46 = *(v77 + 3);
        if (((v46 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_42;
        }

        v47 = v46 & 0xFFFFFFFFFFFFFFFELL;
        if (v47 <= 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = v47;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7B0, &qword_1CF9FE678);
        v49 = swift_allocObject();
        v50 = (_swift_stdlib_malloc_size(v49) - 32) / 48;
        *(v49 + 2) = v48;
        *(v49 + 3) = 2 * v50;
        v51 = v49 + 32;
        v52 = *(v77 + 3) >> 1;
        v53 = 48 * v52;
        if (*(v77 + 2))
        {
          v54 = v77 + 32;
          if (v49 != v77 || v51 >= &v54[v53])
          {
            v55 = v50;
            memmove(v49 + 32, v54, 48 * v52);
            v50 = v55;
          }

          *(v77 + 2) = 0;
        }

        v81 = &v51[v53];
        v45 = (v50 & 0x7FFFFFFFFFFFFFFFLL) - v52;

        v77 = v49;
      }

      v3 = v79;
      v2 = v80;
      v7 = v78;
      v56 = __OFSUB__(v45, 1);
      v8 = v45 - 1;
      if (!v56)
      {
        *v81 = v82;
        *(v81 + 16) = v86;
        *(v81 + 32) = v85;
        *(v81 + 40) = v84;
        *(v81 + 41) = v83;
        v81 += 48;
        continue;
      }
    }

    else
    {
LABEL_7:
      v11 = v10;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v7)
        {

          sub_1CEFCB59C(v2);

          v64 = v77;
          v65 = *(v77 + 3);
          if (v65 >= 2)
          {
            v66 = v65 >> 1;
            v56 = __OFSUB__(v66, v8);
            v67 = v66 - v8;
            if (v56)
            {
              goto LABEL_44;
            }

            *(v77 + 2) = v67;
          }

          v2, v57, v58, v59, v60, v61, v62, v63;

          swift_beginAccess();
          v68 = *(v76 + 24);
          v69 = *(v68 + 16);
          if (v69)
          {
            v70 = sub_1CF1F8CB0(*(v68 + 16), 0);
            v71 = sub_1CF1FA120(&v88, (v70 + 4), v69, v68);
            v72 = v88;

            sub_1CEFCB59C(v72);
            if (v71 != v69)
            {
              goto LABEL_43;
            }

            v64 = v77;
          }

          else
          {
            v70 = MEMORY[0x1E69E7CC0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C47A0, qword_1CFA16950);
          v73 = swift_allocObject();
          v74 = sub_1CF8E4694(v64);

          *(v73 + 16) = v74;
          v75 = sub_1CF8E4694(v70);

          *(v73 + 24) = v75;
          [*(v76 + 40) addObject_];
          return;
        }

        v6 = *(v3 + 8 * v9);
        ++v11;
        if (v6)
        {
          goto LABEL_11;
        }
      }

LABEL_40:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

id sub_1CF75D884()
{
  v1 = *(v0 + 16);
  if ((*(v0 + 25) & 1) == 0)
  {
    v2 = *(v0 + 24);
    if (v2 == 2 && v1 == 0)
    {
      v24 = MEMORY[0x1E6967258];
    }

    else
    {
      if (v2 != 2 || v1 != 1)
      {
        v5 = VFSItemID.description.getter(v1);
        v7 = v6;
        MEMORY[0x1D3868CC0](v5);
        v7, v8, v9, v10, v11, v12, v13, v14;
        v15 = sub_1CF9E6888();
        0xE800000000000000, v16, v17, v18, v19, v20, v21, v22;
        return v15;
      }

      v24 = MEMORY[0x1E6967280];
    }

    v1 = *v24;
  }

  return v1;
}

void sub_1CF75D96C(uint64_t a1, int a2, void *a3, int a4, uint64_t a5)
{
  LODWORD(v96) = a4;
  v95 = a3;
  LODWORD(v94) = a2;
  v6 = sub_1CF9E63D8();
  v93 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v88 - v11;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v88 - v20;
  v22 = type metadata accessor for Signpost(0);
  v97 = *(v22 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v98 = (&v88 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v88 - v27;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v88 = v6;
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a1;
    *(v30 + 32) = v94;
    *(v30 + 40) = v95;
    v31 = v96 & 1;
    v96 = v30;
    *(v30 + 48) = v31;
    v102 = v29;

    v95 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v32 = qword_1EDEBBE40;
    (*(v13 + 56))(v21, 1, 1, v12);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v33 = sub_1CF9E7988();
    v35 = v34;
    MEMORY[0x1D3868CC0](v33);
    v35, v36, v37, v38, v39, v40, v41, v42;
    v91 = *(&aBlock + 1);
    v94 = aBlock;
    sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
    v43 = *(v13 + 48);
    if (v43(v18, 1, v12) == 1)
    {
      v44 = v32;
      sub_1CF9E6048();
      v45 = v15;
      if (v43(v18, 1, v12) != 1)
      {
        sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v45 = v15;
      (*(v13 + 32))(v15, v18, v12);
    }

    v46 = v101;
    (*(v13 + 16))(v101, v45, v12);
    *(v46 + *(v22 + 20)) = v32;
    v47 = v46 + *(v22 + 24);
    *v47 = "DB queue wait";
    *(v47 + 8) = 13;
    *(v47 + 16) = 2;
    v48 = v32;
    v49 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1CF9FA450;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = sub_1CEFD51C4();
    v51 = v91;
    *(v50 + 32) = v94;
    *(v50 + 40) = v51;
    sub_1CF9E6028(v49, &dword_1CEFC7000, v48, "DB queue wait", 13, 2, v46, "%s", 2);
    v50, v52, v53, v54, v55, v56, v57, v58;
    (*(v13 + 8))(v45, v12);
    sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
    v91 = *(v102 + 168);
    v94 = *(v102 + 64);
    v89 = sub_1CF9E6448();
    v90 = *(v89 - 8);
    (*(v90 + 56))(v103, 1, 1, v89);
    v59 = v98;
    sub_1CEFE505C(v46, v98, type metadata accessor for Signpost);
    v60 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v61 = (v23 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    sub_1CEFE4E00(v59, v62 + v60, type metadata accessor for Signpost);
    v63 = (v62 + v61);
    v98 = nullsub_1;
    *v63 = nullsub_1;
    v63[1] = 0;
    v64 = v99;
    sub_1CEFE505C(v46, v99, type metadata accessor for Signpost);
    v65 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 25) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_1CEFE4E00(v64, v68 + v60, type metadata accessor for Signpost);
    v69 = (v68 + v61);
    v70 = v89;
    *v69 = sub_1CF045408;
    v69[1] = 0;
    *(v68 + v65) = v102;
    v71 = v68 + v66;
    *v71 = "setFileTreeHandlers()";
    *(v71 + 8) = 21;
    *(v71 + 16) = 2;
    v72 = (v68 + v67);
    *v72 = v98;
    v72[1] = 0;
    v73 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
    v74 = v90;
    v75 = v96;
    *v73 = sub_1CF7963EC;
    v73[1] = v75;
    v76 = swift_allocObject();
    v76[2] = sub_1CF75C120;
    v76[3] = v62;
    v77 = v91;
    v76[4] = v91;

    v99 = v62;

    v78 = fpfs_current_log();
    v98 = *(v77 + 16);
    v79 = v100;
    sub_1CEFCCBDC(v103, v100, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v74 + 48))(v79, 1, v70) == 1)
    {
      sub_1CEFCCC44(v79, &unk_1EC4BE370, qword_1CFA01B30);
      v80 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v81 = v92;
      sub_1CF9E6438();
      (*(v74 + 8))(v79, v70);
      v80 = sub_1CF9E63C8();
      (*(v93 + 8))(v81, v88);
    }

    v82 = swift_allocObject();
    v82[2] = v78;
    v82[3] = sub_1CF4858EC;
    v82[4] = v68;
    v107 = sub_1CF2BA17C;
    v108 = v82;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v105 = sub_1CEFCA444;
    v106 = &block_descriptor_713;
    v83 = _Block_copy(&aBlock);
    v84 = v78;

    v107 = sub_1CF2BA180;
    v108 = v76;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v105 = sub_1CEFCA444;
    v106 = &block_descriptor_716;
    v85 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v98, v94, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v80, v83, v85);
    _Block_release(v85);
    _Block_release(v83);

    sub_1CEFCCC44(v103, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v101, type metadata accessor for Signpost);
    v86 = v95;
    v87 = fpfs_adopt_log();
  }
}

void sub_1CF75E47C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v95 = a2;
  v6 = sub_1CF9E63D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v89 - v12;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v89 - v20;
  v21 = type metadata accessor for Signpost(0);
  v97 = *(v21 - 8);
  v22 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v98 = (&v89 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v89 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v89 = v7;
    v90 = v6;
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = a1;
    *(v29 + 32) = v95;
    v95 = v29;
    *(v29 + 40) = a3 & 1;
    v103 = v28;

    v30 = a1;
    v93 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v31 = qword_1EDEBBE40;
    v32 = v101;
    (*(v14 + 56))(v101, 1, 1, v13);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v33 = sub_1CF9E7988();
    v35 = v34;
    MEMORY[0x1D3868CC0](v33);
    v35, v36, v37, v38, v39, v40, v41, v42;
    v91 = *(&aBlock + 1);
    v92 = aBlock;
    sub_1CEFCCBDC(v32, v18, &unk_1EC4BED20, &unk_1CFA00700);
    v43 = *(v14 + 48);
    if (v43(v18, 1, v13) == 1)
    {
      v44 = v31;
      v45 = v96;
      sub_1CF9E6048();
      if (v43(v18, 1, v13) != 1)
      {
        sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v45 = v96;
      (*(v14 + 32))(v96, v18, v13);
    }

    v46 = v102;
    (*(v14 + 16))(v102, v45, v13);
    *(v46 + *(v21 + 20)) = v31;
    v47 = v46 + *(v21 + 24);
    *v47 = "DB queue wait";
    *(v47 + 8) = 13;
    *(v47 + 16) = 2;
    v48 = v31;
    v49 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1CF9FA450;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = sub_1CEFD51C4();
    v51 = v91;
    *(v50 + 32) = v92;
    *(v50 + 40) = v51;
    sub_1CF9E6028(v49, &dword_1CEFC7000, v48, "DB queue wait", 13, 2, v46, "%s", 2);
    v50, v52, v53, v54, v55, v56, v57, v58;
    (*(v14 + 8))(v45, v13);
    sub_1CEFCCC44(v101, &unk_1EC4BED20, &unk_1CFA00700);
    v96 = *(v103 + 168);
    v101 = *(v103 + 64);
    v92 = sub_1CF9E6448();
    v91 = *(v92 - 8);
    (*(v91 + 56))(v104, 1, 1, v92);
    v59 = v98;
    sub_1CEFE505C(v46, v98, type metadata accessor for Signpost);
    v60 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v61 = (v22 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    sub_1CEFE4E00(v59, v62 + v60, type metadata accessor for Signpost);
    v63 = (v62 + v61);
    v98 = nullsub_1;
    *v63 = nullsub_1;
    v63[1] = 0;
    v64 = v99;
    sub_1CEFE505C(v46, v99, type metadata accessor for Signpost);
    v65 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 25) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_1CEFE4E00(v64, v68 + v60, type metadata accessor for Signpost);
    v69 = (v68 + v61);
    v70 = v103;
    *v69 = sub_1CF045408;
    v69[1] = 0;
    *(v68 + v65) = v70;
    v71 = v68 + v66;
    *v71 = "setFileTreeHandlers()";
    *(v71 + 8) = 21;
    *(v71 + 16) = 2;
    v72 = (v68 + v67);
    *v72 = v98;
    v72[1] = 0;
    v73 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
    v74 = v91;
    v75 = v95;
    *v73 = sub_1CF7963C4;
    v73[1] = v75;
    v76 = swift_allocObject();
    v76[2] = sub_1CF75C120;
    v76[3] = v62;
    v77 = v96;
    v76[4] = v96;
    v78 = v92;

    v99 = v62;

    v79 = fpfs_current_log();
    v98 = *(v77 + 2);
    v80 = v100;
    sub_1CEFCCBDC(v104, v100, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v74 + 48))(v80, 1, v78) == 1)
    {
      sub_1CEFCCC44(v80, &unk_1EC4BE370, qword_1CFA01B30);
      v81 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v82 = v94;
      sub_1CF9E6438();
      (*(v74 + 8))(v80, v78);
      v81 = sub_1CF9E63C8();
      (*(v89 + 8))(v82, v90);
    }

    v83 = swift_allocObject();
    v83[2] = v79;
    v83[3] = sub_1CF4858EC;
    v83[4] = v68;
    v108 = sub_1CF2BA17C;
    v109 = v83;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v106 = sub_1CEFCA444;
    v107 = &block_descriptor_688;
    v84 = _Block_copy(&aBlock);
    v85 = v79;

    v108 = sub_1CF2BA180;
    v109 = v76;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v106 = sub_1CEFCA444;
    v107 = &block_descriptor_691;
    v86 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v98, v101, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v81, v84, v86);
    _Block_release(v86);
    _Block_release(v84);

    sub_1CEFCCC44(v104, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v102, type metadata accessor for Signpost);
    v87 = v93;
    v88 = fpfs_adopt_log();
  }
}

void sub_1CF75EF90(uint64_t a1)
{
  v1 = sub_1CF9E63D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v89 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v81 - v7;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = type metadata accessor for Signpost(0);
  v90 = *(v18 - 8);
  v19 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v91 = (&v81 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v81 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v82 = v2;
    v83 = v1;
    v95 = Strong;

    v88 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDEBBE40;
    (*(v9 + 56))(v17, 1, 1, v8);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v26 = sub_1CF9E7988();
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    v86 = *(&aBlock + 1);
    v87 = aBlock;
    sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
    v36 = *(v9 + 48);
    if (v36(v14, 1, v8) == 1)
    {
      v37 = v25;
      sub_1CF9E6048();
      if (v36(v14, 1, v8) != 1)
      {
        sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v9 + 32))(v11, v14, v8);
    }

    v38 = v94;
    (*(v9 + 16))(v94, v11, v8);
    *(v38 + *(v18 + 20)) = v25;
    v39 = v38 + *(v18 + 24);
    *v39 = "DB queue wait";
    *(v39 + 8) = 13;
    *(v39 + 16) = 2;
    v40 = v25;
    v41 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1CF9FA450;
    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1CEFD51C4();
    v43 = v86;
    *(v42 + 32) = v87;
    *(v42 + 40) = v43;
    sub_1CF9E6028(v41, &dword_1CEFC7000, v40, "DB queue wait", 13, 2, v38, "%s", 2);
    v42, v44, v45, v46, v47, v48, v49, v50;
    (*(v9 + 8))(v11, v8);
    sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    v86 = *(v95 + 168);
    v87 = *(v95 + 64);
    v84 = sub_1CF9E6448();
    v85 = *(v84 - 8);
    (*(v85 + 56))(v96, 1, 1, v84);
    v51 = v91;
    sub_1CEFE505C(v38, v91, type metadata accessor for Signpost);
    v52 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v53 = (v19 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    sub_1CEFE4E00(v51, v54 + v52, type metadata accessor for Signpost);
    v55 = (v54 + v53);
    v91 = nullsub_1;
    *v55 = nullsub_1;
    v55[1] = 0;
    v56 = v92;
    sub_1CEFE505C(v38, v92, type metadata accessor for Signpost);
    v57 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 25) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = v56;
    v62 = v85;
    sub_1CEFE4E00(v61, v60 + v52, type metadata accessor for Signpost);
    v63 = (v60 + v53);
    v64 = v84;
    *v63 = sub_1CF045408;
    v63[1] = 0;
    v65 = v95;
    *(v60 + v57) = v95;
    v66 = v60 + v58;
    *v66 = "setFileTreeHandlers()";
    *(v66 + 8) = 21;
    *(v66 + 16) = 2;
    v67 = (v60 + v59);
    *v67 = v91;
    v67[1] = 0;
    v68 = (v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v68 = sub_1CF7963A8;
    v68[1] = v65;
    v69 = swift_allocObject();
    v69[2] = sub_1CF75C120;
    v69[3] = v54;
    v70 = v86;
    v69[4] = v86;
    swift_retain_n();

    v71 = fpfs_current_log();
    v92 = *(v70 + 16);
    v72 = v93;
    sub_1CEFCCBDC(v96, v93, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v62 + 48))(v72, 1, v64) == 1)
    {
      sub_1CEFCCC44(v72, &unk_1EC4BE370, qword_1CFA01B30);
      v73 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v74 = v89;
      sub_1CF9E6438();
      (*(v62 + 8))(v72, v64);
      v73 = sub_1CF9E63C8();
      (*(v82 + 8))(v74, v83);
    }

    v75 = swift_allocObject();
    v75[2] = v71;
    v75[3] = sub_1CF4858EC;
    v75[4] = v60;
    v100 = sub_1CF2BA17C;
    v101 = v75;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v98 = sub_1CEFCA444;
    v99 = &block_descriptor_663_0;
    v76 = _Block_copy(&aBlock);
    v77 = v71;

    v100 = sub_1CF2BA180;
    v101 = v69;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v98 = sub_1CEFCA444;
    v99 = &block_descriptor_666;
    v78 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v92, v87, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v73, v76, v78);
    _Block_release(v78);
    _Block_release(v76);

    sub_1CEFCCC44(v96, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v94, type metadata accessor for Signpost);
    v79 = v88;
    v80 = fpfs_adopt_log();
  }
}

void sub_1CF75FA3C(void *a1, uint64_t a2)
{
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 32);
  v10 = *(**(v9 + 16) + 848);

  LOBYTE(v10) = v10(v11);

  if (v10)
  {
    return;
  }

  v12 = a1[3];
  v41 = a1[4];
  v40 = __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(**(v9 + 16) + 96))(&v44);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v14 = v13;
  v43 = *(v6 + 8);
  v43(v8, v5);
  v15 = v14 * 1000000000.0;
  if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v12;
  v39 = v2;
  v42 = a2;
  v16 = v15;
  v17 = v44;
  v18 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB90, &unk_1CFA052F0);
  v19 = swift_allocObject();
  *(v19 + 152) = v18;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 1;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0;
  v37 = xmmword_1CF9FEC30;
  *(v19 + 96) = xmmword_1CF9FEC30;
  *(v19 + 112) = 0;
  *(v19 + 120) = 0x2000000000000000;
  *(v19 + 128) = v16;
  *(v19 + 136) = 0;
  *(v19 + 144) = v17;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v21 = v20;
  v43(v8, v5);
  v22 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v39;
  sub_1CF5215C0(v19, v22, v40, v38, v41);

  if (!v23 && *(v9 + 33) == 1)
  {
    v25 = a1[3];
    v24 = a1[4];
    v26 = __swift_project_boxed_opaque_existential_1(a1, v25);
    (*(**(v9 + 16) + 96))(&v44);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v28 = v27;
    v43(v8, v5);
    v29 = v28 * 1000000000.0;
    if (COERCE__INT64(fabs(v28 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v41 = v26;
      if (v29 > -9.22337204e18)
      {
        v40 = v25;
        if (v29 < 9.22337204e18)
        {
          v30 = v29;
          v31 = v44;
          v32 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
          v33 = swift_allocObject();
          *(v33 + 152) = v32;
          *(v33 + 16) = 0u;
          *(v33 + 32) = 0u;
          *(v33 + 48) = 1;
          *(v33 + 56) = 0u;
          *(v33 + 72) = 0u;
          *(v33 + 88) = 0;
          *(v33 + 96) = v37;
          *(v33 + 112) = 0;
          *(v33 + 120) = 0x2000000000000000;
          *(v33 + 128) = v30;
          *(v33 + 136) = 0;
          *(v33 + 144) = v31;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v35 = v34;
          v43(v8, v5);
          v36 = v35 * 1000000000.0;
          if (COERCE__INT64(fabs(v35 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v36 > -9.22337204e18)
            {
              if (v36 < 9.22337204e18)
              {
                sub_1CF5215C0(v33, v36, v41, v40, v24);

                return;
              }

LABEL_29:
              __break(1u);
              return;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

void sub_1CF75FF3C(void *a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v237 = *(v5 - 8);
  v238 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v236 = &v228 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5CF8();
  v240 = *(v7 - 8);
  v241 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v239 = &v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v244 = *(v9 - 8);
  v245 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v242 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v243 = &v228 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v228 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v246 = &v228 - v17;
  if ((*(a2 + 80) & 0x40) == 0)
  {
    swift_getObjectType();
    sub_1CF9E7448();
  }

  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  ObjectType = swift_getObjectType();
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v24 = sub_1CF95FD18(v23, ObjectType, v21, v18, v22);
  if (!v2)
  {
    v25 = *(a2 + qword_1EDEADB30);
    *(a2 + qword_1EDEADB30) = v24;

    v26 = a1[3];
    v27 = a1[4];
    v28 = __swift_project_boxed_opaque_existential_1(a1, v26);
    v29 = sub_1CF95F840(v28, ObjectType, v26, v18, v27);
    v235 = a1;
    v30 = v29;
    v31 = objc_sync_enter(a2);
    if (v31)
    {
      MEMORY[0x1EEE9AC00](v31);
      *(&v228 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v228 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v32 = v30 & 1;
    *(a2 + 90) = v30 & 1;
    v33 = *(a2 + 96);
    v34 = v235;
    if (v33)
    {
      v35 = *(a2 + 104);

      v33(v32);
      sub_1CEFF7124(v33, v35);
    }

    v36 = objc_sync_exit(a2);
    if (v36)
    {
      MEMORY[0x1EEE9AC00](v36);
      *(&v228 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v228 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    if (*(a2 + 90))
    {
      if (qword_1EDEACD48 != -1)
      {
        swift_once();
      }

      [qword_1EDEBBBF8 addWatcher_];
    }

    v38 = v34[3];
    v37 = v34[4];
    v39 = __swift_project_boxed_opaque_existential_1(v34, v38);
    v40 = *(a2 + 32);
    sub_1CF685BB0(v39, v38, *(v37 + 8));
    v233 = v40;
    v234 = v41;
    v42 = v34[3];
    v43 = v34[4];
    v44 = __swift_project_boxed_opaque_existential_1(v34, v42);
    v45 = *(a2 + 40);
    sub_1CF685BB0(v44, v42, *(v43 + 8));
    v229 = a2;
    v231 = v46;
    v48 = v34[3];
    v47 = v34[4];
    v49 = __swift_project_boxed_opaque_existential_1(v34, v48);
    v232 = (*v233[2] + 888);
    v230 = *v232;

    v230(v19, v18, v49, v48, v47);
    v232 = 0;

    v51 = v34[3];
    v50 = v34[4];
    v52 = __swift_project_boxed_opaque_existential_1(v34, v51);
    v53 = *(**(v45 + 16) + 888);

    v54 = v52;
    v55 = v232;
    v53(v19, v18, v54, v51, v50);
    if (v55)
    {
      v234, v56, v57, v58, v59, v60, v61, v62;
      v231, v63, v64, v65, v66, v67, v68, v69;

      return;
    }

    v70 = v34[3];
    v71 = v34[4];
    v72 = __swift_project_boxed_opaque_existential_1(v34, v70);
    v73 = v233;
    (*(*v233[2] + 96))(&aBlock);
    v74 = v246;
    (*(*v73 + 240))(&aBlock, 1, v72, v70, *(v71 + 8));
    v232 = 0;
    v75 = v73[2];
    type metadata accessor for VFSFileTree(0);
    v76 = swift_dynamicCastClass();
    v77 = v229;
    if (v76)
    {
      v78 = v76;
      sub_1CEFCCBDC(v74, v15, &qword_1EC4C1B40, &unk_1CF9FCB70);
      if ((v244[6])(v15, 1, v245) == 1)
      {
        sub_1CEFCCC44(v15, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v74 = v246;
      }

      else
      {
        v79 = v15;
        v80 = v242;
        sub_1CEFE55D0(v79, v242, &unk_1EC4BE360, &qword_1CF9FE650);
        v81 = v80;
        v82 = v243;
        v83 = sub_1CEFE55D0(v81, v243, &unk_1EC4BE360, &qword_1CF9FE650);
        v244 = &v228;
        v84 = *(v78 + 216);
        MEMORY[0x1EEE9AC00](v83);
        *(&v228 - 4) = v78;
        *(&v228 - 3) = v82;
        *(&v228 - 2) = v77;
        v245 = v75;

        v85 = v84;
        v86 = fpfs_current_log();
        v242 = fpfs_adopt_log();
        v255 = 0;
        v256 = 1;
        aBlock = sub_1CF9E73C8();
        v248 = v87;
        MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
        v88 = 2;
        v89 = sub_1CF9E7988();
        v91 = v90;
        MEMORY[0x1D3868CC0](v89);
        v91, v92, v93, v94, v95, v96, v97, v98;
        v99 = v248;
        sub_1CF9E6978();
        v99, v100, v101, v102, v103, v104, v105, v106;
        v107 = __fp_log_fork();

        v233 = &v228;
        v255 = v107;
        v256 = 0;
        MEMORY[0x1EEE9AC00](v108);
        *(&v228 - 8) = v86;
        *(&v228 - 7) = &v255;
        *(&v228 - 6) = v85;
        *(&v228 - 5) = "activate()";
        *(&v228 - 4) = 10;
        *(&v228 - 24) = 2;
        *(&v228 - 2) = sub_1CF796280;
        *(&v228 - 1) = (&v228 - 6);
        v254 = 1;
        v253 = 0;
        v109 = swift_allocObject();
        v109[2] = &v254;
        v109[3] = sub_1CF2B16F4;
        v109[4] = &v228 - 10;
        v109[5] = &v253;
        v110 = swift_allocObject();
        *(v110 + 16) = sub_1CF2B16B0;
        *(v110 + 24) = v109;
        v251 = sub_1CEFFD054;
        v252 = v110;
        aBlock = MEMORY[0x1E69E9820];
        v248 = 1107296256;
        v249 = sub_1CEFFD02C;
        v250 = &block_descriptor_635;
        v111 = _Block_copy(&aBlock);

        FPDispatchAsyncAndWait(v85, v111);
        _Block_release(v111);
        LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

        if (v111)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          v234, v112, v113, v114, v115, v116, v117, v118;
          v214 = v231 & 0xFFFFFFFFFFFFFF8;
          if (v231 >> 62)
          {
            v215 = sub_1CF9E7818();
          }

          else
          {
            v215 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v216 = 0;
          v217 = v231 & 0xC000000000000001;
          while (v215 != v216)
          {
            if (v217)
            {
              v204 = MEMORY[0x1D3869C30](v216, v231);
              if (__OFADD__(v216, 1))
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v216 >= *(v214 + 16))
              {
                goto LABEL_82;
              }

              if (__OFADD__(v216, 1))
              {
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }
            }

            v218 = *(v204 + 136);

            ++v216;
            if ((v218 & 0x10000) != 0)
            {
              v234 = v231;
              goto LABEL_31;
            }
          }

          v231, v186, v187, v188, v189, v190, v191, v192;
          goto LABEL_32;
        }

        v74 = v246;
        if (v253)
        {
          v119 = v253;
          v231, v120, v121, v122, v123, v124, v125, v126;
          v234, v127, v128, v129, v130, v131, v132, v133;
          swift_willThrow();

          v134 = v242;
          v135 = fpfs_adopt_log();

          sub_1CEFCCC44(v74, &qword_1EC4C1B40, &unk_1CF9FCB70);
          sub_1CEFCCC44(v243, &unk_1EC4BE360, &qword_1CF9FE650);
          return;
        }

        if (v254)
        {
          goto LABEL_83;
        }

        v136 = v242;
        v137 = fpfs_adopt_log();

        sub_1CEFCCC44(v243, &unk_1EC4BE360, &qword_1CF9FE650);
        v77 = v229;
        v34 = v235;
      }
    }

    v138 = v34;
    v139 = v34[3];
    v140 = v138[4];
    v141 = __swift_project_boxed_opaque_existential_1(v138, v139);
    v88 = *(v77 + 24);
    v142 = v232;
    (*(*v88 + 592))(v141, v139, v140);
    if (v142)
    {
      sub_1CEFCCC44(v74, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v231, v154, v155, v156, v157, v158, v159, v160;
      v234, v161, v162, v163, v164, v165, v166, v167;
      return;
    }

    v143 = v138[3];
    v144 = v138[4];
    v145 = __swift_project_boxed_opaque_existential_1(v138, v143);
    v86 = *(v77 + 16);
    v146 = (*(*v86 + 552))(v145, v143, *(v144 + 8));
    v147 = (v77 + qword_1EDEBBCD0);
    *v147 = v146;
    v147[1] = v148;
    v149 = v138[3];
    v150 = v138[4];
    v151 = __swift_project_boxed_opaque_existential_1(v138, v149);
    v152 = (*(*v86 + 560))(v151, v149, *(v150 + 8));
    v168 = (v77 + qword_1EDEBBCA8);
    *v168 = v152;
    v168[1] = v153;
    v169 = v239;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v171 = v170;
    (*(v240 + 8))(v169, v241);
    v172 = v171 * 1000000000.0;
    if (COERCE__INT64(fabs(v171 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v172 > -9.22337204e18)
    {
      if (v172 < 9.22337204e18)
      {
        v173 = v172;
        v174 = v235[3];
        v175 = v235[4];
        v176 = __swift_project_boxed_opaque_existential_1(v235, v174);
        sub_1CF52733C(v177, v234, v173, v176, v174, v175);
        v178 = v235[3];
        v179 = v235[4];
        v180 = __swift_project_boxed_opaque_existential_1(v235, v178);
        sub_1CF033A74();
        sub_1CF52733C(v181, v231, v173, v180, v178, v179);

        v182 = v235[3];
        v183 = v235[4];
        v184 = __swift_project_boxed_opaque_existential_1(v235, v182);
        v185 = (*(*v86 + 232))(v184, v182, *(v183 + 8));
        v86 = 0;
        if (v185 & 1) != 0 || (v205 = v235[3], v206 = v235[4], v207 = __swift_project_boxed_opaque_existential_1(v235, v205), ((*(*v88 + 576))(v207, v205, *(v206 + 8))))
        {
LABEL_30:
          v231, v112, v113, v114, v115, v116, v117, v118;
LABEL_31:
          v234, v186, v187, v188, v189, v190, v191, v192;
          v193 = v235;
          v194 = v235[3];
          v195 = v235[4];
          v196 = __swift_project_boxed_opaque_existential_1(v235, v194);
          v197 = v229;
          sub_1CF5A1A2C(v196, v194, *(v195 + 8));
          v198 = v193[3];
          v199 = v193[4];
          v200 = __swift_project_boxed_opaque_existential_1(v193, v198);
          sub_1CF9618D0(v197, v200, v198, v199);
          if (v86)
          {
LABEL_76:
            sub_1CEFCCC44(v246, &qword_1EC4C1B40, &unk_1CF9FCB70);
            return;
          }

LABEL_32:
          __swift_project_boxed_opaque_existential_1(v235, v235[3]);
          sub_1CF5A5F38();
          if (!v86)
          {
            v201 = v235[3];
            v202 = v235[4];
            v203 = __swift_project_boxed_opaque_existential_1(v235, v201);
            LOBYTE(v204) = (*(*v88 + 336))(1, 69, v203, v201, *(v202 + 8));
LABEL_61:
            if ((v204 & 1) != 0 && (*(v229 + qword_1EDEBBC48) & 1) == 0)
            {
              *(v229 + qword_1EDEBBC48) = 1;
              if (qword_1EDEA5A98 != -1)
              {
                swift_once();
              }

              [qword_1EDEBB818 addWatcher_];
            }

            v219 = v235[3];
            v220 = v235[4];
            v221 = __swift_project_boxed_opaque_existential_1(v235, v219);
            v222 = (*(*v88 + 480))(v221, v219, *(v220 + 8));
            if (!v86)
            {
              if ((v222 & 1) != 0 && (*(v229 + qword_1EDEBBC40) & 1) == 0)
              {
                *(v229 + qword_1EDEBBC40) = 1;
                if (qword_1EDEAC220[0] != -1)
                {
                  swift_once();
                }

                [qword_1EDEBBA80 addWatcher_];
              }

              v223 = v229;
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1CF9E7448();
              swift_unknownObjectRelease();
              if ((*(v223 + 88) & 1) == 0)
              {
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1CF9E7438();
                swift_unknownObjectRelease();
                v224 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v225 = sub_1CF9E6108();
                v226 = sub_1CF9E7298();
                if (os_log_type_enabled(v225, v226))
                {
                  v227 = swift_slowAlloc();
                  *v227 = 0;
                  _os_log_impl(&dword_1CEFC7000, v225, v226, "suspending the scheduler", v227, 2u);
                  MEMORY[0x1D386CDC0](v227, -1, -1);
                }

                (*(v237 + 8))(v236, v238);
              }
            }
          }

          goto LABEL_76;
        }

        if (!(v234 >> 62))
        {
          v208 = v234 & 0xFFFFFFFFFFFFFF8;
          v209 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_38;
        }

LABEL_84:
        v208 = v234 & 0xFFFFFFFFFFFFFF8;
        v209 = sub_1CF9E7818();
LABEL_38:
        v210 = 0;
        v211 = v234 & 0xC000000000000001;
        while (v209 != v210)
        {
          if (v211)
          {
            v212 = MEMORY[0x1D3869C30](v210, v234);
            if (__OFADD__(v210, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v210 >= *(v208 + 16))
            {
              goto LABEL_81;
            }

            if (__OFADD__(v210, 1))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }
          }

          v213 = *(v212 + 136);

          ++v210;
          if ((v213 & 0x10000) != 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_49;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }
}

uint64_t sub_1CF761444(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = objc_sync_enter(a1);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    *(&v34 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v34 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v17 = a1[20];

  v18 = objc_sync_exit(a1);
  if (v18)
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v34 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v34 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  (*(v7 + 16))(v9, v17 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v6);

  sub_1CF264F9C(2, 0, 2129920, v15);
  if (v3)
  {

    (*(v7 + 8))(v9, v6);
    v19 = type metadata accessor for VFSItem(0);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v20 = *(a2 + 32);
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v21 = type metadata accessor for VFSItem(0);
  v22 = (*(*(v21 - 8) + 48))(v12, 1, v21);
  if (v22 == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v23 = 0;
  }

  else
  {
    v23 = *&v12[*(v21 + 36)];
    v24 = *(v12 + 5);

    sub_1CF007CB8(v12, type metadata accessor for VFSItem);
    v24, v25, v26, v27, v28, v29, v30, v31;
    swift_bridgeObjectRelease_n();
    if (v20 == v23)
    {
      return sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
    }
  }

  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBBF8 removeWatcher_];
  sub_1CF24CD3C();
  swift_allocError();
  *v32 = v20;
  *(v32 + 8) = 0;
  *(v32 + 16) = v23;
  *(v32 + 24) = v22 == 1;
  *(v32 + 48) = 0;
  swift_willThrow();
  return sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
}

uint64_t sub_1CF7618A4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char *a10, char *a11, uint64_t a12)
{
  v98 = a8;
  LODWORD(v105) = a7;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v106 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v94 - v21;
  v23 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v23);
  v109 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v25 = *(v23 + 24);
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = *(a1 + v25 + 16);
  v97 = *(a1 + *(v23 + 20));
  v96 = v26;
  v95 = v27;
  v94[3] = v28;
  v99 = a1;
  v29 = sub_1CF9E6038();
  v30 = a2(v29);
  v108 = a4;
  v110 = *(a4 + 80);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v107 = a9;
  v102 = qword_1EDEBBE40;
  (*(v16 + 56))(v22, 1, 1, v15);
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v111 + 1), v31, v32, v33, v34, v35, v36, v37;
  strcpy(&v111, "async batch ");
  BYTE13(v111) = 0;
  HIWORD(v111) = -5120;
  v38 = sub_1CF9E7988();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0x467265746661203ALL, 0xED00003D6873756CLL);
  v104 = v30;
  if (v30)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v30)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v48, v49);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](4424054777695860000, 0xE800000000000000);
  if ((v110 & 4) != 0)
  {
    v57 = 1702195828;
  }

  else
  {
    v57 = 0x65736C6166;
  }

  if ((v110 & 4) != 0)
  {
    v58 = 0xE400000000000000;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v57, v58);
  v58, v59, v60, v61, v62, v63, v64, v65;
  v100 = *(&v111 + 1);
  v101 = v111;
  v105 = v22;
  v66 = v103;
  sub_1CEFCCBDC(v22, v103, &unk_1EC4BED20, &unk_1CFA00700);
  v67 = *(v16 + 48);
  if (v67(v66, 1, v15) == 1)
  {
    v68 = v102;
    v69 = v102;
    v70 = v106;
    sub_1CF9E6048();
    v71 = v67(v66, 1, v15);
    v72 = v109;
    if (v71 != 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v70 = v106;
    (*(v16 + 32))(v106, v66, v15);
    v72 = v109;
    v68 = v102;
  }

  v103 = a12;
  v109 = a11;
  v106 = a10;
  v73 = (v110 & 4) == 0;
  (*(v16 + 16))(v72, v70, v15);
  *(v72 + *(v23 + 20)) = v68;
  v74 = v72 + *(v23 + 24);
  *v74 = "DB queue";
  *(v74 + 8) = 8;
  *(v74 + 16) = 2;
  v75 = v68;
  v76 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CF9FA450;
  *(v77 + 56) = MEMORY[0x1E69E6158];
  *(v77 + 64) = sub_1CEFD51C4();
  v78 = v100;
  *(v77 + 32) = v101;
  *(v77 + 40) = v78;
  v93 = v77;
  LOBYTE(v92) = 2;
  sub_1CF9E6028(v76, &dword_1CEFC7000, v75, "DB queue", 8, 2, v72, "%s", 2);
  v77, v79, v80, v81, v82, v83, v84, v85;
  (*(v16 + 8))(v70, v15);
  v86 = sub_1CEFCCC44(v105, &unk_1EC4BED20, &unk_1CFA00700);
  if ((v104 & v73) == 1)
  {
    (*(*v108 + 448))("asyncBatch(function:side:afterNextDurableFlush:onCancel:updateBlock:)", 69, 2, v98 & 1, 0, v107, v106, v109, v103);
  }

  else
  {
    v112 = 0;
    v87 = MEMORY[0x1EEE9AC00](v86);
    v88 = v108;
    v89 = v103;
    *&v94[-16] = v109;
    *&v94[-14] = v89;
    *&v94[-12] = v88;
    *&v94[-10] = &v112;
    v91 = v99;
    v92 = v107;
    v93 = v106;
    (*(*v88 + 2528))(&v111, sub_1CF5DFA18, v87);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF007CB8(v72, type metadata accessor for Signpost);
}

void sub_1CF76206C(void *a1, uint64_t a2)
{
  if ((*(a2 + 80) & 0x40) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/ConcreteDatabase.swift", 106, 2, 3851);
  }

  v5 = a2 + qword_1EDEBBC20;
  os_unfair_lock_lock((a2 + qword_1EDEBBC20));
  sub_1CF762138((v5 + 8), a1, a2);
  os_unfair_lock_unlock(v5);
  if (!v2)
  {
    v6 = a2 + qword_1EDEBBC28;
    os_unfair_lock_lock((a2 + qword_1EDEBBC28));
    sub_1CF7622C8((v6 + 8), a1);
    os_unfair_lock_unlock(v6);
  }
}

void sub_1CF762138(__int128 *a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v9 = a1[3];
  v23 = a1[2];
  v24 = v9;
  v10 = a1[5];
  v25 = a1[4];
  v26 = v10;
  v11 = a1[1];
  v21 = *a1;
  v22 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0680, &qword_1CFA05A88);
  sub_1CF5B01A0(a3, v8, v12, v6, v7);
  if (!v3)
  {
    v29 = *(&v22 + 1);
    v13 = *(&v25 + 1);
    v27 = *(&v25 + 1);
    v28 = *(&v21 + 1);
    a1[2] = xmmword_1CF9FD950;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    *(a1 + 66) = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCC44(&v29, &qword_1EC4C4760, &qword_1CFA168E0);
    *(a1 + 3) = v15;
    v16 = sub_1CF4E1848(v14);
    sub_1CEFCCC44(&v28, &unk_1EC4C4770, &qword_1CFA16900);
    *(a1 + 1) = v16;
    v17 = *(v13 + 16);
    if (v17)
    {
      v18 = v13 + 40;
      do
      {
        v19 = *(v18 - 8);
        v20 = 0;

        v19(&v20);

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    sub_1CEFCCC44(&v27, &unk_1EC4C1B90, &unk_1CFA168F0);
    *(a1 + 9) = v14;
  }
}

void sub_1CF7622C8(__int128 *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);
  v7 = a1[3];
  v22 = a1[2];
  v23 = v7;
  v8 = a1[5];
  v24 = a1[4];
  v25 = v8;
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v10 = sub_1CF033A74();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0668, &unk_1CFA05A70);
  sub_1CF5B01A0(v10, v6, v11, v4, v5);

  if (!v2)
  {
    v28 = *(&v21 + 1);
    v12 = *(&v24 + 1);
    v26 = *(&v24 + 1);
    v27 = *(&v20 + 1);
    a1[2] = xmmword_1CF9FD950;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    *(a1 + 66) = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCC44(&v28, &qword_1EC4C4760, &qword_1CFA168E0);
    *(a1 + 3) = v14;
    v15 = sub_1CF4E1660(v13);
    sub_1CEFCCC44(&v27, &qword_1EC4C4768, &qword_1CFA168E8);
    *(a1 + 1) = v15;
    v16 = *(v12 + 16);
    if (v16)
    {
      v17 = v12 + 40;
      do
      {
        v18 = *(v17 - 8);
        v19 = 0;

        v18(&v19);

        v17 += 16;
        --v16;
      }

      while (v16);
    }

    sub_1CEFCCC44(&v26, &unk_1EC4C1B90, &unk_1CFA168F0);
    *(a1 + 9) = v13;
  }
}

void sub_1CF762468(void *a1, char a2, char a3)
{
  v7 = type metadata accessor for DBCounters(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for VFSCounters(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 16);
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1CF478184(v16, a2, a3, v13, v14, v15);
  v17 = *(*(v13 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v105[2] = v7;

    sub_1CF4FB2BC(0, 0xE000000000000000, v20, v21);
    v22 = a1[3];
    v105[0] = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    v109[2] = 0;
    v110 = 0xE000000000000000;
    sub_1CF9E7948();
    v110, v23, v24, v25, v26, v27, v28, v29;
    strcpy(v108, "+ FSCounters: ");
    HIBYTE(v108[1]) = -18;
    v30 = qword_1EDEBBE70;
    swift_beginAccess();
    sub_1CEFE505C(v19 + v30, v12, type metadata accessor for VFSCounters);
    v31 = sub_1CF25BB70();
    v105[1] = v17;
    v33 = v32;
    sub_1CF007CB8(v12, type metadata accessor for VFSCounters);
    MEMORY[0x1D3868CC0](v31, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41 = v108[1];
    sub_1CF4FB2BC(v108[0], v108[1], v22, v105[0]);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v49 = a1[3];
    v50 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v49);
    v108[0] = 0;
    v108[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v108[1], v51, v52, v53, v54, v55, v56, v57;
    strcpy(v109, "+ DBCounters: ");
    HIBYTE(v109[1]) = -18;
    v58 = qword_1EDEBBC30;
    swift_beginAccess();
    sub_1CEFE505C(v13 + v58, v9, type metadata accessor for DBCounters);
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1CF9E7948();
    v107, v59, v60, v61, v62, v63, v64, v65;
    v106 = 0x756F436873756C66;
    v107 = 0xEB000000003D746ELL;
    v105[3] = *v9;
    v66 = sub_1CF9E7F98();
    v68 = v67;
    MEMORY[0x1D3868CC0](v66);
    v68, v69, v70, v71, v72, v73, v74, v75;
    MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
    v76 = sub_1CF9E5C08();
    v78 = v77;
    MEMORY[0x1D3868CC0](v76);
    v78, v79, v80, v81, v82, v83, v84, v85;
    v86 = v106;
    v87 = v107;
    sub_1CF007CB8(v9, type metadata accessor for DBCounters);
    MEMORY[0x1D3868CC0](v86, v87);
    v87, v88, v89, v90, v91, v92, v93, v94;
    v95 = v109[1];
    sub_1CF4FB2BC(v109[0], v109[1], v49, v50);

    v95, v96, v97, v98, v99, v100, v101, v102;
  }

  v103 = a1[3];
  v104 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v103);
  sub_1CF4FB2BC(0, 0xE000000000000000, v103, v104);
}

void sub_1CF76289C()
{
  v2 = *(v0 + 16);
  sub_1CF75C998();
  if (!v1)
  {
    *(v0 + 24) = 0;
    sub_1CF7A6150();
    sub_1CF7A6150();
    v3 = *(*(v2 + 40) + 16);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v3 + 120);
    v6 = *(v3 + 128);
    *(v3 + 120) = sub_1CF7961C4;
    *(v3 + 128) = v4;

    sub_1CEFF7124(v5, v6);
  }
}

double (*sub_1CF762950(void **a1, void *a2, void *a3, uint64_t a4, uint64_t a5))()
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(result + 72))
    {
      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v12;
      v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v16 = v11;
      v17 = v14;
      if (v16 == v15 && v13 == v14)
      {

        v13, v79, v80, v81, v82, v83, v84, v85;
        v17, v86, v87, v88, v89, v90, v91, v92;
        return 0;
      }

      v19 = sub_1CF9E8048();
      v13, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      if (v19)
      {

        return 0;
      }
    }

    v93 = v8;
    if (a4 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = a4;
    }

    v35 = [objc_opt_self() progressWithTotalUnitCount_];
    [v35 addChild:a2 withPendingUnitCount:0];
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v35;
    v36 = v35;
    v37 = sub_1CF9E5838();

    [v36 fp:a3 setFileOperationKind:?];
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;
    v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v48 = v38;
    v49 = v41;
    if (v48 == v42 && v40 == v41)
    {
      v40, v41, v42, v43, v44, v45, v46, v47;
      v49, v50, v51, v52, v53, v54, v55, v56;
      v57 = 0;
    }

    else
    {
      v58 = sub_1CF9E8048();
      v40, v59, v60, v61, v62, v63, v64, v65;
      v49, v66, v67, v68, v69, v70, v71, v72;
      v57 = 0;
      if ((v58 & 1) == 0)
      {
        v57 = [a2 isCancellable];
      }
    }

    [v36 setCancellable_];
    v73 = swift_allocObject();
    v73[2] = v10;
    v73[3] = a2;
    v73[4] = v36;
    v73[5] = a3;
    v73[6] = a4;
    v73[7] = v93;
    v74 = v36;

    v75 = a2;
    v76 = a3;
    v77 = v93;
    sub_1CF7AAF88("activate()", 10, 2, 2, nullsub_1, 0, sub_1CF7961E0, v73);

    v78 = swift_allocObject();
    v78[2] = v10;
    v78[3] = v37;
    v78[4] = v74;
    return sub_1CF796204;
  }

  return result;
}

void sub_1CF762CB8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(*(a2 + 16) + 16);
  v63 = a7;
  v16 = *(*v15 + 152);

  v16(&v61, &v63, v14, v13, v12);
  if (v8)
  {
  }

  else
  {

    v57 = v62;
    if (v62 != 255)
    {
LABEL_7:
      v62 = v57;
      sub_1CF762E88(&v61, a2, a3, a4, a5, a6);
      return;
    }
  }

  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;
  v20 = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v17, v18);
  v19, v21, v22, v23, v24, v25, v26, v27;
  if (v20)
  {
    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v30 = v29;
    v31 = sub_1CF025150(0x80007uLL, v28, v29);
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v30, v32, v34, v36, v38, v39, v40, v41;
    v42 = MEMORY[0x1D3868C10](v31, v33, v35, v37);
    v44 = v43;
    v37, v43, v45, v46, v47, v48, v49, v50;
    VFSItemID.init(parsing:)(v42, v44, &v61, v51, v52, v53, v54, v55, v56);
    v57 = v62;
    if (v62 != 255)
    {
      goto LABEL_7;
    }
  }
}

void sub_1CF762E88(int *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v147 = *MEMORY[0x1E69E9840];
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v119 - v17;
  v19 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  if (!*(a1 + 8))
  {
    v123 = v31;
    v124 = v15;
    v130 = &v119 - v29;
    v125 = v13;
    v126 = a5;
    v128 = a6;
    v129 = a4;
    v131 = v21;
    v132 = v30;
    v32 = *a1;
    0, v22, v23, v24, v25, v26, v27, v28;
    v142[0] = 0;
    v142[1] = 0;
    v143 = v32;
    v145 = 0;
    v146 = 0;
    v144 = 0;
    v127 = a2;
    type metadata accessor for VFSFileTree(0);
    v33 = swift_dynamicCastClassUnconditional();

    v34 = objc_sync_enter(v33);
    if (v34)
    {
      MEMORY[0x1EEE9AC00](v34);
      *(&v119 - 2) = v33;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v119 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v35 = v33[20];

    v36 = objc_sync_exit(v33);
    if (v36)
    {
      MEMORY[0x1EEE9AC00](v36);
      *(&v119 - 2) = v33;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v119 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v37 = a3;
    v38 = *(v35 + 16);

    v136 = 0;
    v137 = 0;
    v138 = v32;
    v140 = 0;
    v139 = 0;
    v141 = 0;
    v133 = -1;
    v39 = fpfs_openfdbyhandle();
    if ((v39 & 0x80000000) == 0)
    {
      v40 = v39;
      v41 = v12;
      sub_1CF19811C(v39, v142, v38, 0, v18);
      close(v40);
      sub_1CF255928(v142);
      v44 = v131;
      v45 = v132;
      (*(v132 + 56))(v18, 0, 1, v131);
      v46 = v130;
      (*(v45 + 32))(v130, v18, v44);
      v47 = fpfs_current_or_default_log();
      v48 = v124;
      sub_1CF9E6128();
      v49 = v123;
      (*(v45 + 16))(v123, v46, v44);
      v50 = v37;
      v51 = sub_1CF9E6108();
      v52 = sub_1CF9E7298();

      v122 = v51;
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v134[0] = v121;
        *v53 = 136315394;
        v54 = sub_1CF9E5928();
        v55 = [v54 fp_shortDescription];

        v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v58 = v57;

        v59 = *(v132 + 8);
        v59(v49, v44);
        v60 = sub_1CEFD0DF0(v56, v58, v134);
        v58, v61, v62, v63, v64, v65, v66, v67;
        *(v53 + 4) = v60;
        *(v53 + 12) = 2112;
        *(v53 + 14) = v50;
        v68 = v120;
        *v120 = v50;
        v69 = v50;
        v70 = v52;
        v71 = v59;
        v72 = v122;
        _os_log_impl(&dword_1CEFC7000, v122, v70, "Publishing at url %s progress %@", v53, 0x16u);
        sub_1CEFCCC44(v68, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v68, -1, -1);
        v73 = v121;
        __swift_destroy_boxed_opaque_existential_1(v121);
        MEMORY[0x1D386CDC0](v73, -1, -1);
        MEMORY[0x1D386CDC0](v53, -1, -1);
      }

      else
      {

        v71 = *(v45 + 8);
        v71(v49, v44);
      }

      (*(v125 + 8))(v48, v41);
      v76 = sub_1CF9E5928();
      v77 = v129;
      [v129 setFileURL_];

      [v77 publish];
      v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v80 = v79;
      v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v88 = v81;
      if (v78 == v82 && v80 == v81)
      {
        v80, v81, v82, v83, v84, v85, v86, v87;
        v88, v89, v90, v91, v92, v93, v94, v95;
      }

      else
      {
        v96 = sub_1CF9E8048();
        v80, v97, v98, v99, v100, v101, v102, v103;
        v88, v104, v105, v106, v107, v108, v109, v110;
        if ((v96 & 1) == 0)
        {
          v116 = *(v127 + 64);
          v112 = swift_allocObject();
          v117 = v129;
          v112[2] = v116;
          v112[3] = v117;
          v112[4] = v128;
          v118 = v117;

          v115 = sub_1CF796258;
          goto LABEL_19;
        }
      }

      v111 = *(v127 + 56);
      v112 = swift_allocObject();
      v113 = v129;
      v112[2] = v111;
      v112[3] = v113;
      v112[4] = v128;

      v114 = v113;
      v115 = sub_1CF796ADC;
LABEL_19:
      sub_1CF01001C(0, "didPublishItemProgress(progress:size:)", 38, 2, v115, v112);

      v71(v130, v44);
      return;
    }

    v42 = v133;
    v43 = MEMORY[0x1D38683F0]();
    if (v42 < 0)
    {
      LODWORD(v134[0]) = 0;
      BYTE4(v134[0]) = 1;
    }

    else
    {
      LODWORD(v134[0]) = v133;
      BYTE4(v134[0]) = 0;
    }

    v135 = 0;
    v74 = sub_1CF19BBE4(v43, v134);
    sub_1CF1969CC(v134);
    v75 = v131;
    swift_willThrow();
    LODWORD(v134[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();
    sub_1CF255928(v142);

    (*(v132 + 56))(v18, 1, 1, v75);
    sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

double sub_1CF7637AC(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = a2;
  v7 = a3;
  sub_1CF7AAF88("activate()", 10, 2, 2, nullsub_1, 0, sub_1CF796210, v5);

  return result;
}

void sub_1CF76385C(void *a1, char a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1CF7A5DA0();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA5A2D0, v5, v6);
  0x80000001CFA5A2D0, v24, v25, v26, v27, v28, v29, v30;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1CF9E7948();
  0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
  v40 = sub_1CF7A5DA0();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA5A2F0, v31, v32);
  0x80000001CFA5A2F0, v50, v51, v52, v53, v54, v55, v56;

  sub_1CF762468(a1, a2, a3);
}

double sub_1CF7639D0()
{

  return result;
}

uint64_t sub_1CF763A00()
{

  sub_1CEFF7124(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FPFSSyncEngine(uint64_t a1)
{
  result = qword_1EDEA7C38;
  if (!qword_1EDEA7C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF763B18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v122 = a7;
  v118 = a4;
  v119 = a5;
  v123 = a3;
  v116 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v111 - v11;
  v13 = v7;
  v14 = *(*(v7 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v112 = swift_dynamicCastClassUnconditional();
  v115 = v14;

  v15 = [a1 itemIdentifier];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;
  v19 = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v16, v17);
  v18, v20, v21, v22, v23, v24, v25, v26;
  v117 = a1;
  v111 = v12;
  v114 = a6;
  if (v19)
  {
    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v29 = v28;
    v30 = sub_1CF025150(0x80007uLL, v27, v28);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v29, v31, v33, v35, v37, v38, v39, v40;
    v41 = MEMORY[0x1D3868C10](v30, v32, v34, v36);
    v43 = v42;
    v44 = v36;
    a1 = v117;
    v44, v42, v45, v46, v47, v48, v49, v50;
    VFSItemID.init(parsing:)(v41, v43, v127, v51, v52, v53, v54, v55, v56);

    v57 = LOBYTE(v127[1]);
    if (LOBYTE(v127[1]) != 255)
    {
      v58 = 0;
      v59 = v127[0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v59 = [a1 itemIdentifier];
  v57 = 0;
  v58 = 1;
LABEL_6:
  v60 = v121;
  v61 = v118;
  v62 = v119;
  v63 = v116;
  v113 = v13;
  v120 = v59;
  LODWORD(v121) = v58;
  v64 = v123;
  if ((v116 & 4) != 0)
  {
    v65 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1CFA00250;
    v67 = v117;
    *(v66 + 32) = v117;
    v68 = v67;
    v69 = v64;
    v70 = v61;
    v71 = v61;
    v72 = v113;
    sub_1CF764128(v66, v69, v70, v62, v114, v65);
    if (v60)
    {

      sub_1CEFD0994(v120, v57, v121);
      swift_setDeallocating();
      swift_arrayDestroy();
LABEL_12:
      swift_deallocClassInstance();
      return v72 & 1;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v61 = v71;
    v63 = v116;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CF9FA450;
  v74 = v120;
  *(v73 + 32) = v120;
  v75 = v73 + 32;
  *(v73 + 40) = v57;
  v76 = v57;
  v77 = v121;
  *(v73 + 41) = v121;
  sub_1CEFD0988(v74, v76, v77);
  v78 = v61;
  v72 = v112;
  v79 = sub_1CF203FD4(v73, v63 & 1, v123, v78, v122);
  if (v60)
  {

    sub_1CEFD0994(v74, v76, v77);
    swift_setDeallocating();
    sub_1CEFCCC44(v75, &unk_1EC4BFC10, &qword_1CF9FE510);
    goto LABEL_12;
  }

  v81 = v79;
  swift_setDeallocating();
  sub_1CEFCCC44(v75, &unk_1EC4BFC10, &qword_1CF9FE510);
  swift_deallocClassInstance();
  v89 = v119;
  if (*v81->tree)
  {
    v90 = v76;
    v91 = sub_1CEFF4768(v120, v76 | (v121 << 8));
    v99 = v114;
    if (v92)
    {
      v100 = (*v81[1].tester + 888 * v91);
      memcpy(v125, v100, sizeof(v125));
      memmove(v126, v100, 0x378uLL);
      nullsub_1();
      sub_1CEFF4514(v125, &v124);
      v81, v101, v102, v103, v104, v105, v106, v107;
      memcpy(v127, v126, 0x378uLL);
    }

    else
    {
      v81, v92, v93, v94, v95, v96, v97, v98;
      sub_1CF77239C(v127);
    }

    v108 = v111;
  }

  else
  {
    v81, v82, v83, v84, v85, v86, v87, v88;
    sub_1CF77239C(v127);
    v108 = v111;
    v99 = v114;
    v90 = v76;
  }

  v109 = v123;
  memcpy(v126, v127, sizeof(v126));
  v110 = sub_1CF9E5A58();
  (*(*(v110 - 8) + 56))(v108, 1, 1, v110);
  v72 = sub_1CF765380(v117, v126, v63, v108, v109, v118, v89, v99, v122);

  sub_1CEFD0994(v120, v90, v121);
  sub_1CEFCCC44(v108, &unk_1EC4BE310, qword_1CF9FCBE0);
  memcpy(v125, v126, sizeof(v125));
  sub_1CEFCCC44(v125, &unk_1EC4C46E0, &unk_1CFA16860);
  return v72 & 1;
}

void sub_1CF764128(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v258 = a6;
  v233 = a5;
  v232 = a4;
  v257 = a3;
  v216 = sub_1CF9E63D8();
  v12 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v215 = &v213 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v231 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v250 = &v213 - v17;
  v230 = sub_1CF9E6068();
  v18 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v229 = &v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v228 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v246 = &v213 - v23;
  v227 = type metadata accessor for Signpost(0);
  v226 = *(v227 - 8);
  v24 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v225 = &v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v224 = &v213 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v245 = &v213 - v28;
  v261 = sub_1CEFE73DC(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v256 = a1 & 0xC000000000000001;
    v249 = a1 & 0xFFFFFFFFFFFFFF8;
    v223 = (v18 + 56);
    v222 = (v18 + 48);
    v214 = (v18 + 32);
    v221 = (v18 + 16);
    v220 = (v18 + 8);
    v219 = v24 + 7;
    v213 = (v12 + 8);
    v12 = 0;
    v218 = &v263;
    v217 = xmmword_1CF9FA450;
    v244 = v9;
    v251 = a2;
    v253 = a1;
    v254 = i;
    while (1)
    {
      if (v256)
      {
        v38 = MEMORY[0x1D3869C30](v12, a1);
      }

      else
      {
        if (v12 >= *(v249 + 16))
        {
          goto LABEL_50;
        }

        v38 = *(a1 + 8 * v12 + 32);
      }

      v18 = v38;
      v39 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v260 = v12;
      v40 = [v38 parentItemIdentifier];
      v41 = v40;
      if (*v261->tree && (v42 = sub_1CEFE863C(v40), (v43 & 1) != 0))
      {
        v44 = *(*v261[1].tester + 8 * v42);

        if (v44)
        {
          v24 = sub_1CF9E6618();
          v44, v45, v46, v47, v48, v49, v50, v51;
        }

        else
        {
          v24 = 0;
        }

        v37 = v260;
        [v18 setInheritedUserInfo_];
      }

      else
      {

        v52 = [v18 parentItemIdentifier];
        v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v55 = v54;
        v56 = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v53, v54);
        v55, v57, v58, v59, v60, v61, v62, v63;
        if ((v56 & 1) == 0 || (v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0(), v66 = v65, v67 = sub_1CF025150(0x80007uLL, v64, v65), v255 = v8, v68 = v9, v69 = v18, v70 = v39, v72 = v71, v74 = v73, v76 = v75, v66, v71, v73, v75, v77, v78, v79, v80, v81 = v72, v39 = v70, v18 = v69, v9 = v68, v8 = v255, v82 = v74, a1 = v253, v83 = MEMORY[0x1D3868C10](v67, v81, v82, v76), v85 = v84, v86 = v76, a2 = v251, v86, v84, v87, v88, v89, v90, v91, v92, VFSItemID.init(parsing:)(v83, v85, &aBlock, v93, v94, v95, v96, v97, v98), v99 = BYTE8(aBlock), BYTE8(aBlock) == 255))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
          v24 = swift_allocObject();
          v24[42] = 0;
          *(v24 + 4) = v52;
          *(v24 + 20) = 256;
          *(v24 + 2) = v52;
          *(v24 + 12) = 256;
          v102 = v52;
        }

        else
        {

          v100 = aBlock;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
          v101 = swift_allocObject();
          *(v101 + 32) = v100;
          *(v101 + 40) = v99;
          *(v101 + 41) = 0;
          *(v101 + 16) = v100;
          *(v101 + 24) = v99;
          v24 = v101;
          *(v101 + 25) = 0;
        }

        v103 = *(v9 + 16);
        sub_1CF554B9C(v103, a2, v257, v258, &aBlock);
        if (v8)
        {
          v261, v104, v105, v106, v107, v108, v109, v110;

          return;
        }

        v111 = aBlock;
        if (aBlock)
        {
          v112 = *v261->tree;
          v259 = aBlock;
          if (!v112 || (v113 = sub_1CEFE863C(aBlock), v111 = v259, (v114 & 1) == 0))
          {
            v252 = v24;
            v124 = v103[5];
            *&aBlock = v111;
            v125 = *(*v124 + 272);

            v126 = v125(&aBlock, a2, v257, v258);
            v128 = v127;

            if (v128)
            {
              v241 = v126;
              v242 = v18;
              v243 = v39;
              v129 = swift_allocObject();
              v130 = v232;
              v129[2] = v257;
              v129[3] = v130;
              v131 = v258;
              v132 = v259;
              v129[4] = v233;
              v129[5] = v131;
              v129[6] = v9;
              v129[7] = v132;
              v248 = v129;

              v133 = v132;
              v240 = fpfs_adopt_log();
              if (qword_1EDEAE980 != -1)
              {
                swift_once();
              }

              v134 = qword_1EDEBBE40;
              v135 = v246;
              v136 = v230;
              (*v223)(v246, 1, 1, v230);
              strcpy(&aBlock, "async batch ");
              BYTE13(aBlock) = 0;
              HIWORD(aBlock) = -5120;
              v137 = sub_1CF9E7988();
              v139 = v138;
              MEMORY[0x1D3868CC0](v137);
              v139, v140, v141, v142, v143, v144, v145, v146;
              v239 = *(&aBlock + 1);
              v247 = aBlock;
              v147 = v135;
              v148 = v228;
              sub_1CEFCCBDC(v147, v228, &unk_1EC4BED20, &unk_1CFA00700);
              v149 = *v222;
              v150 = (*v222)(v148, 1, v136);
              v255 = 0;
              if (v150 == 1)
              {
                v151 = v134;
                v152 = v229;
                sub_1CF9E6048();
                if (v149(v148, 1, v136) != 1)
                {
                  sub_1CEFCCC44(v148, &unk_1EC4BED20, &unk_1CFA00700);
                }
              }

              else
              {
                v152 = v229;
                (*v214)(v229, v148, v136);
              }

              v153 = v245;
              (*v221)(v245, v152, v136);
              v154 = v227;
              *(v153 + *(v227 + 20)) = v134;
              v155 = v153 + *(v154 + 24);
              *v155 = "DB queue wait";
              *(v155 + 8) = 13;
              *(v155 + 16) = 2;
              v156 = v134;
              v157 = sub_1CF9E7468();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
              v158 = swift_allocObject();
              *(v158 + 16) = v217;
              *(v158 + 56) = MEMORY[0x1E69E6158];
              *(v158 + 64) = sub_1CEFD51C4();
              v159 = v239;
              *(v158 + 32) = v247;
              *(v158 + 40) = v159;
              sub_1CF9E6028(v157, &dword_1CEFC7000, v156, "DB queue wait", 13, 2, v153, "%s", 2);
              v158, v160, v161, v162, v163, v164, v165, v166;
              (*v220)(v152, v136);
              sub_1CEFCCC44(v246, &unk_1EC4BED20, &unk_1CFA00700);
              v238 = v103[21];
              v239 = v103[8];
              v237 = sub_1CF9E6448();
              v236 = *(v237 - 8);
              (*(v236 + 56))(v250, 1, 1, v237);
              v167 = v224;
              sub_1CEFE505C(v153, v224, type metadata accessor for Signpost);
              v168 = (*(v226 + 80) + 16) & ~*(v226 + 80);
              v169 = &v219[v168] & 0xFFFFFFFFFFFFFFF8;
              v170 = swift_allocObject();
              v247 = v170;
              v234 = type metadata accessor for Signpost;
              sub_1CEFE4E00(v167, v170 + v168, type metadata accessor for Signpost);
              v171 = (v170 + v169);
              v235 = nullsub_1;
              *v171 = nullsub_1;
              v171[1] = 0;
              v172 = v225;
              sub_1CEFE505C(v153, v225, type metadata accessor for Signpost);
              v173 = (v169 + 23) & 0xFFFFFFFFFFFFFFF8;
              v174 = (v173 + 15) & 0xFFFFFFFFFFFFFFF8;
              v175 = (v174 + 25) & 0xFFFFFFFFFFFFFFF8;
              v176 = swift_allocObject();
              sub_1CEFE4E00(v172, v176 + v168, v234);
              v177 = (v176 + v169);
              v178 = v236;
              *v177 = sub_1CF045408;
              v177[1] = 0;
              *(v176 + v173) = v103;
              v179 = v176 + v174;
              *v179 = "attachInheritedUserInfo(to:with:)";
              *(v179 + 8) = 33;
              *(v179 + 16) = 2;
              v180 = (v176 + v175);
              *v180 = v235;
              v180[1] = 0;
              v181 = (v176 + ((v175 + 23) & 0xFFFFFFFFFFFFFFF8));
              v182 = v237;
              v183 = v248;
              *v181 = sub_1CF77ECC4;
              v181[1] = v183;
              v184 = swift_allocObject();
              v185 = v247;
              v184[2] = sub_1CF5526E8;
              v184[3] = v185;
              v186 = v238;
              v184[4] = v238;

              v187 = fpfs_current_log();
              v238 = v186[2];
              v188 = v231;
              sub_1CEFCCBDC(v250, v231, &unk_1EC4BE370, qword_1CFA01B30);
              if ((*(v178 + 48))(v188, 1, v182) == 1)
              {
                sub_1CEFCCC44(v188, &unk_1EC4BE370, qword_1CFA01B30);
                LODWORD(v237) = 0;
              }

              else
              {
                v189 = v215;
                sub_1CF9E6438();
                (*(v178 + 8))(v188, v182);
                LODWORD(v237) = sub_1CF9E63C8();
                (*v213)(v189, v216);
              }

              v8 = v255;
              v190 = swift_allocObject();
              v190[2] = v187;
              v190[3] = sub_1CF48100C;
              v190[4] = v176;
              v265 = sub_1CEFCA438;
              v266 = v190;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v263 = sub_1CEFCA444;
              v264 = &block_descriptor_67_2;
              v191 = _Block_copy(&aBlock);
              v192 = v187;

              v265 = sub_1CF2AF9E8;
              v266 = v184;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              v263 = sub_1CEFCA444;
              v264 = &block_descriptor_70;
              v193 = _Block_copy(&aBlock);

              fp_task_tracker_async_and_qos(v238, v239, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v237, v191, v193);
              _Block_release(v193);
              _Block_release(v191);

              sub_1CEFCCC44(v250, &unk_1EC4BE370, qword_1CFA01B30);
              sub_1CF007CB8(v245, type metadata accessor for Signpost);
              v194 = v240;
              v195 = fpfs_adopt_log();

              a2 = v251;
              v39 = v243;
              v18 = v242;
              v126 = v241;
            }

            v196 = a2;
            if (v126)
            {
              v197 = v126;
              v198 = [v126 userInfo];
              v199 = sub_1CF9E6638();
            }

            else
            {
              v197 = 0;
              v199 = 0;
            }

            a1 = v253;
            v200 = [v18 parentItemIdentifier];
            swift_bridgeObjectRetain_n();
            v201 = v261;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v201;
            sub_1CEFE8644(v199, v200, isUniquelyReferenced_nonNull_native);

            v203 = aBlock;
            v24 = v259;
            v204 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v203;
            sub_1CEFE8644(v199, v24, v204);

            v261 = aBlock;
            if (v199)
            {
              v205 = sub_1CF9E6618();
              v199, v206, v207, v208, v209, v210, v211, v212;
            }

            else
            {
              v205 = 0;
            }

            i = v254;
            [v18 setInheritedUserInfo_];

            v37 = v260;
            a2 = v196;
            v9 = v244;
            goto LABEL_6;
          }

          v115 = *(*v261[1].tester + 8 * v113);
          if (v115)
          {

            v116 = sub_1CF9E6618();
            v115, v117, v118, v119, v120, v121, v122, v123;
          }

          else
          {
            v116 = 0;
          }

          i = v254;
          [v18 setInheritedUserInfo_];
        }

        else
        {

          i = v254;
        }

        v37 = v260;
      }

LABEL_6:
      v12 = v37 + 1;
      if (v39 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:
  v261, v29, v30, v31, v32, v33, v34, v35;
}

id sub_1CF765380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  MEMORY[0x1EEE9AC00](a1);
  v696 = v10;
  v11 = v9;
  v733 = v12;
  v680 = v13;
  v674 = v14;
  v675 = v15;
  v673 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v693 = *v11;
  v23 = sub_1CF9E6118();
  v687 = *(v23 - 8);
  v688 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v655 = &v651 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v658 = &v651 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v685 = &v651 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v661 = &v651 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v684 = &v651 - v32;
  v33 = sub_1CF9E5FF8();
  v670 = *(v33 - 8);
  v671 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v669 = &v651 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v668 = &v651 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v665 = &v651 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46F0, &qword_1CFA16870);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v679 = &v651 - v40;
  v41 = sub_1CF9E5648();
  v682 = *(v41 - 8);
  v683 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v681 = &v651 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1CF9E5A58();
  v690 = *(v43 - 1);
  v691 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v678 = &v651 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v689 = &v651 - v46;
  v47 = sub_1CF9E5748();
  v663 = *(v47 - 8);
  v664 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v660 = &v651 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v659 = &v651 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v651 - v52;
  v686 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v686);
  v692 = &v651 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v55);
  v654 = &v651 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v653 = &v651 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v667 = &v651 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v657 = &v651 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v651 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v651 - v67;
  memcpy(v732, v20, 0x378uLL);
  v676 = v11[2];
  sub_1CEFF5464(&stru_1F4BEF310, v712, v69, v70, v71, v72, v73, v74, v75);
  v662 = *v712;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
  v76 = swift_allocObject();
  v677 = xmmword_1CF9FA440;
  *(v76 + 16) = xmmword_1CF9FA440;
  if (qword_1EDEABDE0 != -1)
  {
    v650 = v76;
    swift_once();
    v76 = v650;
  }

  v695 = v18;
  *(v76 + 32) = qword_1EDEABDE8;
  *(v76 + 40) = 16;
  sub_1CEFF5464(v76, v712, v77, v78, v79, v80, v81, v82, v83);
  v666 = *v712;
  sub_1CEFF54BC(v68);
  v672 = v68[*(v55 + 84)];
  sub_1CF007CB8(v68, type metadata accessor for ItemMetadata);
  v84 = v11[4];
  v694 = v11;
  if (v84)
  {
    v85 = v11[5];

    v86 = [v22 itemID];
    v87 = [v86 identifier];

    *v712 = v87;
    v656 = v84(v712);

    sub_1CEFF7124(v84, v85);
  }

  else
  {
    v656 = 0;
  }

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v88 = qword_1EDEBBE40;
  v89 = sub_1CF9E6068();
  (*(*(v89 - 8) + 56))(v53, 1, 1, v89);
  v90 = [v22 itemIdentifier];
  v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v93 = v92;

  sub_1CEFF7134("Decoration", 10, 2u, v53, v91, v93, v88, v692);
  v93, v94, v95, v96, v97, v98, v99, v100;
  sub_1CEFCCC44(v53, &unk_1EC4BED20, &unk_1CFA00700);
  [v22 setQuarantineBlob_];
  memcpy(v712, v732, sizeof(v712));
  v101 = sub_1CEFF7450(v712);
  v102 = &selRef_initWithTarget_;
  v104 = v694;
  v103 = v695;
  if (v101 == 1)
  {
    goto LABEL_11;
  }

  v708[12] = *&v712[832];
  v708[13] = *&v712[848];
  v708[14] = *&v712[864];
  *&v708[15] = *&v712[880];
  v708[9] = *&v712[784];
  v708[10] = *&v712[800];
  v708[11] = *&v712[816];
  v708[4] = *&v712[704];
  v708[5] = *&v712[720];
  v708[6] = *&v712[736];
  v708[7] = *&v712[752];
  v708[8] = *&v712[768];
  v708[0] = *&v712[640];
  v708[1] = *&v712[656];
  v708[2] = *&v712[672];
  v708[3] = *&v712[688];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v708) != 1)
  {
    *&v706[192] = *&v712[832];
    *&v706[208] = *&v712[848];
    *&v706[224] = *&v712[864];
    *&v706[128] = *&v712[768];
    *&v706[144] = *&v712[784];
    *&v706[160] = *&v712[800];
    *&v706[176] = *&v712[816];
    *&v706[64] = *&v712[704];
    *&v706[80] = *&v712[720];
    *&v706[96] = *&v712[736];
    *&v706[112] = *&v712[752];
    *v706 = *&v712[640];
    *&v706[16] = *&v712[656];
    *&v706[32] = *&v712[672];
    v652 = &v712[640];
    *&v706[240] = *&v712[880];
    *&v706[48] = *&v712[688];
    v111 = *&v708[0];
    sub_1CEFF7474(v706, v711);
    [v22 setCapabilities_];
    [v22 setUploading_];
    v672 = BYTE9(v708[0]);
    [v22 setUploaded_];
    v112 = *&v708[1];
    if (*&v708[1])
    {
      v113 = *&v708[1];
      v114 = sub_1CF9E57E8();
    }

    else
    {
      v114 = 0;
    }

    [v22 setUploadingError_];

    v115 = *(&v708[1] + 1);
    if (*(&v708[1] + 1))
    {
      v116 = *(&v708[1] + 1);
      v117 = sub_1CF9E57E8();
    }

    else
    {
      v117 = 0;
    }

    [v22 setDownloadingError_];

    [v22 setShared_];
    [v22 setTopLevelSharedItem_];
    [v22 setSharedByCurrentUser_];
    v118 = *&v708[3];
    if (*&v708[3])
    {
      v119 = qword_1EC4BCCE0;

      if (v119 != -1)
      {
        swift_once();
      }

      v120 = qword_1EC4EBCA8;
      v121 = sub_1CF9E6888();
      v118, v122, v123, v124, v125, v126, v127, v128;
      v129 = [v120 personNameComponentsFromString_];

      if (v129)
      {
        v130 = v659;
        sub_1CF9E5738();

        v129 = sub_1CF9E5728();
        (*(v663 + 8))(v130, v664);
      }

      [v22 setOwnerNameComponents_];
    }

    v131 = *&v708[4];
    if (*&v708[4])
    {
      v132 = qword_1EC4BCCE0;

      if (v132 != -1)
      {
        swift_once();
      }

      v133 = qword_1EC4EBCA8;
      v134 = sub_1CF9E6888();
      v131, v135, v136, v137, v138, v139, v140, v141;
      v142 = [v133 personNameComponentsFromString_];

      if (v142)
      {
        v143 = v660;
        sub_1CF9E5738();

        v142 = sub_1CF9E5728();
        (*(v663 + 8))(v143, v664);
      }

      [v22 setMostRecentEditorNameComponents_];
    }

    v144 = *(&v708[5] + 1);
    if (*(&v708[5] + 1))
    {

      v145 = sub_1CF9E6888();
      v144, v146, v147, v148, v149, v150, v151, v152;
    }

    else
    {
      v145 = 0;
    }

    [v22 setSharingPermissions_];

    [v22 setFp:BYTE8(v708[4]) lastModifiedByCurrentUser:?];
    [v22 setIsContainer_];
    [v22 setIsContainerPristine_];
    v153 = *(&v708[7] + 1);
    if (*(&v708[7] + 1))
    {

      v154 = sub_1CF9E6888();
      v153, v155, v156, v157, v158, v159, v160, v161;
    }

    else
    {
      v154 = 0;
    }

    [v22 setFp:v154 appContainerBundleIdentifier:?];

    v162 = *(&v708[8] + 1);
    if (*(&v708[8] + 1))
    {

      v163 = sub_1CF9E6888();
      v162, v164, v165, v166, v167, v168, v169, v170;
    }

    else
    {
      v163 = 0;
    }

    [v22 setCloudContainerIdentifier_];

    v171 = *(&v708[9] + 1);
    if (*(&v708[9] + 1))
    {

      v172 = sub_1CF9E6888();
      v171, v173, v174, v175, v176, v177, v178, v179;
    }

    else
    {
      v172 = 0;
    }

    [v22 setContainerDisplayName_];

    v180 = *(&v708[10] + 1);
    if (*(&v708[10] + 1))
    {

      v181 = sub_1CF9E6888();
      v180, v182, v183, v184, v185, v186, v187, v188;
    }

    else
    {
      v181 = 0;
    }

    [v22 setFp:v181 displayName:?];

    if (*(&v708[11] + 1))
    {
      v711[0] = *(&v708[11] + 1);
      v189 = v696;
      sub_1CF769644(v711, v710);
      v696 = v189;
      v190 = v710[0];
      type metadata accessor for NSFileProviderItemDecorationIdentifier(0);
      v191 = sub_1CF9E6D28();
      v190, v192, v193, v194, v195, v196, v197, v198;
    }

    else
    {
      v191 = 0;
    }

    [v22 setDecorations_];

    v199 = *&v708[12];
    if (*&v708[12])
    {
      v200 = *(&v708[12] + 1);

      v201 = sub_1CEFF74D0(v199, v200);
      v200, v202, v203, v204, v205, v206, v207, v208;
      v199, v209, v210, v211, v212, v213, v214, v215;
      v216 = [v201 userInfo];

      v217 = sub_1CF9E6638();
      v199 = sub_1CF9E6618();
      v217, v218, v219, v220, v221, v222, v223, v224;
    }

    [v22 setUserInfo_];

    v225 = *&v708[13];
    [v22 setContentPolicy_];
    memcpy(v711, v732, sizeof(v711));
    memcpy(v710, v732, 0x208uLL);
    v226 = sub_1CEFF755C() != 1;
    v227 = v710[64];
    v228 = *(v676 + 80);
    if ((v228 & 0x20000) != 0)
    {
      v229 = 3;
    }

    else
    {
      v229 = 1;
    }

    if ((v228 & 0x200) != 0)
    {
      v230 = v229;
    }

    else
    {
      v230 = (v228 & 0x20000uLL) >> 16;
    }

    v231 = *(&v708[13] + 1);
    sub_1CEFCCBDC(v711, v709, &unk_1EC4BFC20, &unk_1CFA0A290);
    [v22 setInheritedContentPolicy_];
    sub_1CEFF54BC(v68);
    v232 = *v68;
    sub_1CF007CB8(v68, type metadata accessor for ItemMetadata);
    [v22 setEffectiveContentPolicy_];
    if (v672)
    {
      v233 = [v22 isExcludedFromSync];
      v104 = v694;
      v103 = v695;
      if ((v233 & 1) == 0 && ([v22 capabilities] & 0x40) != 0)
      {
        v709[12] = v708[12];
        v709[13] = v708[13];
        v709[14] = v708[14];
        v709[8] = v708[8];
        v709[9] = v708[9];
        v709[10] = v708[10];
        v709[11] = v708[11];
        v709[4] = v708[4];
        v709[5] = v708[5];
        v709[6] = v708[6];
        v709[7] = v708[7];
        v709[0] = v708[0];
        v709[1] = v708[1];
        v709[2] = v708[2];
        *&v709[15] = *&v708[15];
        v709[3] = v708[3];
        sub_1CEFF54BC(v68);
        sub_1CF0259D8(v230, v68, v705);
        sub_1CF007CB8(v68, type metadata accessor for ItemMetadata);
        v672 = LOBYTE(v705[0]);
      }

      else
      {
        v672 = 0;
      }
    }

    else
    {
      v672 = 0;
      v104 = v694;
      v103 = v695;
    }

    v234 = *&v708[14];
    v107 = v733;
    if (*&v708[14])
    {
      memcpy(v709, v711, 0x208uLL);
      if (sub_1CEFF755C() == 1)
      {
LABEL_70:
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        v253 = sub_1CF9E7538();
        [v22 setHasUnresolvedConflicts_];
        sub_1CEFCCC44(v652, &qword_1EC4BECF0, &unk_1CF9FEEB0);

        goto LABEL_71;
      }

      if (BYTE8(v709[31]) == 1 && (v709[1] & 0x10) == 0)
      {
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);

        v235 = sub_1CF9E7538();
        [v22 setHasUnresolvedConflicts_];

        v236 = v696;
        v237 = sub_1CF75C164(v234);
        v696 = v236;
        v234, v238, v239, v240, v241, v242, v243, v244;
        sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
        v245 = sub_1CF9E6D28();
        v237, v246, v247, v248, v249, v250, v251, v252;
        [v22 setConflictingVersions_];
        sub_1CEFCCC44(v652, &qword_1EC4BECF0, &unk_1CF9FEEB0);

        sub_1CEFCCC44(v711, &unk_1EC4BFC20, &unk_1CFA0A290);
        goto LABEL_71;
      }
    }

    sub_1CEFCCC44(v711, &unk_1EC4BFC20, &unk_1CFA0A290);
    goto LABEL_70;
  }

  v102 = &selRef_initWithTarget_;
LABEL_11:
  v105 = [v22 v102[68]];
  [v22 isExcludedFromSync];
  sub_1CEFF54BC(v65);
  v106 = *(v65 + 5);
  sub_1CF007CB8(v65, type metadata accessor for ItemMetadata);
  v711[0] = sub_1CF65C654();
  v107 = v733;
  v108 = (*(v733 + 16))(*(v693 + 104), v733);
  if (v108)
  {
    v109 = v108;
    v110 = [v108 supportsSyncingTrash];
  }

  else
  {
    v110 = 1;
  }

  [v22 setCapabilities_];
LABEL_71:
  v254 = v104[6];
  v255 = [v22 itemID];
  v256 = [v254 getAlternateContentsURLWrapperForItemID_];

  v257 = v689;
  if (v256)
  {
    v258 = [v256 url];

    v259 = v678;
    sub_1CF9E59D8();

    (*(v690 + 32))(v257, v259, v691);
    v260 = sub_1CF9E59E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    v261 = swift_allocObject();
    *(v261 + 16) = v677;
    v262 = *MEMORY[0x1E695DB50];
    v263 = *MEMORY[0x1E695DA98];
    *(v261 + 32) = *MEMORY[0x1E695DB50];
    *(v261 + 40) = v263;
    v264 = v262;
    v265 = v263;
    sub_1CEFF8A84(v261);
    v267 = v266;
    swift_setDeallocating();
    sub_1CF55CE4C();
    v268 = v679;
    v269 = v696;
    sub_1CF9E58A8();
    if (v269)
    {

      v267, v277, v278, v279, v280, v281, v282, v283;
      (*(v682 + 56))(v268, 1, 1, v683);
      sub_1CEFCCC44(v268, &unk_1EC4C46F0, &qword_1CFA16870);
      v696 = 0;
      v107 = v733;
      if ((v260 & 1) == 0)
      {
LABEL_75:
        (*(v690 + 8))(v257, v691);
        goto LABEL_76;
      }
    }

    else
    {
      v696 = 0;
      v267, v270, v271, v272, v273, v274, v275, v276;
      v392 = v682;
      v391 = v683;
      (*(v682 + 56))(v268, 0, 1, v683);
      (*(v392 + 32))(v681, v268, v391);
      sub_1CF9E5618();
      if (v393)
      {
        v394 = 0;
      }

      else
      {
        v394 = sub_1CF9E7088();
      }

      v395 = v665;
      v107 = v733;
      [v22 setDocumentSize_];

      sub_1CF9E55F8();
      v396 = sub_1CF9E5CF8();
      v397 = *(v396 - 8);
      v398 = 0;
      if ((*(v397 + 48))(v395, 1, v396) != 1)
      {
        v398 = sub_1CF9E5C48();
        (*(v397 + 8))(v395, v396);
      }

      [v22 setContentModificationDate_];

      (*(v682 + 8))(v681, v683);
      v103 = v695;
      v257 = v689;
      if ((v260 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    sub_1CF9E59C8();
    goto LABEL_75;
  }

LABEL_76:
  memcpy(v711, v732, sizeof(v711));
  v284 = sub_1CEFF7450(v711) != 1;
  [v22 setPinned_];
  if ([v22 isPinned])
  {
    v285 = *MEMORY[0x1E6967240];
    v286 = [v22 capabilities];
    if ((v285 & ~v286) != 0)
    {
      v287 = v285;
    }

    else
    {
      v287 = 0;
    }

    [v22 setCapabilities_];
  }

  memcpy(v710, v732, sizeof(v710));
  v288 = sub_1CEFF7450(v710) != 1;
  [v22 setInPinnedFolder_];
  if (([v22 isInPinnedFolder] & 1) == 0)
  {
    *&v709[0] = sub_1CF65C654();
    v289 = (*(v107 + 8))(*(v693 + 104), v107);
    IsEnabledForDomainID = FPPinningIsEnabledForDomainID();

    if (IsEnabledForDomainID)
    {
      v291 = [v22 contentType];
      v292 = v668;
      sub_1CF9E5F48();

      v293 = v669;
      sub_1CF9E5F08();
      LOBYTE(v291) = sub_1CF9E5FB8();
      v294 = *(v670 + 8);
      v295 = v293;
      v296 = v671;
      v294(v295, v671);
      v294(v292, v296);
      if ((v291 & 1) == 0)
      {
        v297 = *MEMORY[0x1E6967228];
        v298 = [v22 capabilities];
        if ((v297 & ~v298) != 0)
        {
          v299 = v297;
        }

        else
        {
          v299 = 0;
        }

        [v22 setCapabilities_];
      }
    }
  }

  [v22 setCapabilities_];
  if ([v22 isFolder])
  {
    v300 = *MEMORY[0x1E6967230];
    v301 = [v22 capabilities];
    if ((v300 & ~v301) != 0)
    {
      v302 = v300;
    }

    else
    {
      v302 = 0;
    }

    [v22 setCapabilities_];
  }

  v303 = [v22 providerID];
  v304 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v306 = v305;

  v313 = 0x80000001CFA30030;
  if (v304 == 0xD00000000000002BLL && 0x80000001CFA30030 == v306)
  {
    goto LABEL_95;
  }

  v314 = sub_1CF9E8048();
  v306, v315, v316, v317, v318, v319, v320, v321;
  if (v314)
  {
    goto LABEL_97;
  }

  v368 = [v22 providerID];
  v369 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v306 = v370;

  v313 = 0x80000001CFA30060;
  v308 = 0xD000000000000032;
  if (v369 == 0xD000000000000032 && 0x80000001CFA30060 == v306)
  {
LABEL_95:
    v306, v307, v308, v313, v309, v310, v311, v312;
    goto LABEL_97;
  }

  v371 = sub_1CF9E8048();
  v306, v372, v373, v374, v375, v376, v377, v378;
  if (v371)
  {
LABEL_97:
    memcpy(v709, v732, 0x378uLL);
    if (sub_1CEFF7450(v709) == 1)
    {
LABEL_98:
      v322 = v733;
      goto LABEL_102;
    }

    v323 = *&v709[38];
    v322 = v733;
    if ((BYTE8(v709[38]) & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_102;
  }

  memcpy(v709, v732, 0x378uLL);
  if (sub_1CEFF7450(v709) == 1)
  {
    goto LABEL_98;
  }

  v322 = v733;
  if (BYTE8(v709[37]) != 1 && *&v709[37] >= 1)
  {
    [v22 setCapabilities_];
  }

  v323 = v732[76];
  if ((v732[77] & 1) == 0)
  {
LABEL_100:
    if (v323 >= 1)
    {
      [v22 setCapabilities_];
    }
  }

LABEL_102:
  [v22 setIsEvictedWithClone_];
  memcpy(v709, v732, 0x378uLL);
  if (sub_1CEFF7450(v709) == 1 || BYTE8(v709[32]) == 2 || ((BYTE8(v709[32]) & 1) == 0 || (memcpy(v708, v709, 0x208uLL), sub_1CEFF755C() == 1) || *&v708[12] >> 60 == 11) && ((memcpy(v708, v709, 0x208uLL), sub_1CEFF755C() == 1) || LOBYTE(v708[2]) != 3))
  {
    if ((v103 & 1) == 0)
    {
      memcpy(v708, v732, 0x378uLL);
      v325 = sub_1CEFF7450(v708) != 1;
      [v22 setDownloaded_];
    }

    memcpy(v708, v732, 0x378uLL);
    if (sub_1CEFF7450(v708) == 1 || (BYTE8(v708[35]) & 1) != 0)
    {
      goto LABEL_117;
    }

    v324 = *&v708[35];
  }

  else
  {
    memcpy(v708, v732, 0x378uLL);
    sub_1CEFF4514(v708, v706);
    [v22 setDownloaded_];
    [v22 setIsEvictedWithClone_];
    sub_1CEFCCC44(v732, &unk_1EC4C46E0, &unk_1CFA16860);
    if (v732[71])
    {
LABEL_117:
      v327 = [v22 isDownloaded];
LABEL_118:
      v328 = &selRef_setRecursivelyDownloaded_;
      goto LABEL_119;
    }

    v324 = v732[70];
  }

  result = [v22 isEvictedWithClone];
  if (result)
  {
    goto LABEL_117;
  }

  if (v732[79])
  {
    v327 = v324 == 0;
    goto LABEL_118;
  }

  v409 = v732[78];
  if (!__OFSUB__(v324, v732[78]))
  {
    [v22 setRecursivelyDownloaded_];
    if (![v22 isFolder] || !v409)
    {
LABEL_120:
      [v22 setMostRecentVersionDownloaded_];
      [v22 setSupportsMostRecentVersionDownloaded_];
      v329 = [v22 childItemCount];
      if (!v329)
      {
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        v329 = sub_1CF9E7548();
      }

      v330 = v329;
      v331 = sub_1CF9E8248();

      if (v331 == 65533)
      {
        [v22 setChildItemCount_];
      }

      if ((v103 & 8) != 0)
      {
        v332 = sub_1CEFF889C();
        v333 = sub_1CEFF89C0(v332);

        if (v333 & 1) != 0 || (v334 = sub_1CEFF889C(), v335 = sub_1CEFF88F4(v334), v334, (v335) || [v22 isDownloaded])
        {
          v336 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v337 = sub_1CF9E6108();
          v338 = sub_1CF9E7298();
          if (os_log_type_enabled(v337, v338))
          {
            v339 = swift_slowAlloc();
            *v339 = 0;
            _os_log_impl(&dword_1CEFC7000, v337, v338, "clearing capabilities besides .allowReading for notAuthenticated decoration", v339, 2u);
            MEMORY[0x1D386CDC0](v339, -1, -1);
          }

          (*(v687 + 8))(v684, v688);
          v340 = [v22 capabilities] & 1;
        }

        else
        {
          v410 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v411 = sub_1CF9E6108();
          v412 = sub_1CF9E7298();
          if (os_log_type_enabled(v411, v412))
          {
            v413 = swift_slowAlloc();
            *v413 = 0;
            _os_log_impl(&dword_1CEFC7000, v411, v412, "clearing all capabilities for notAuthenticated decoration", v413, 2u);
            MEMORY[0x1D386CDC0](v413, -1, -1);
          }

          (*(v687 + 8))(v661, v688);
          v340 = sub_1CEFF8C8C();
        }

        [v22 setCapabilities_];
      }

      v341 = sub_1CEFF889C();
      v342 = sub_1CEFF88F4(v341);

      if (v342)
      {
        v343 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v344 = sub_1CF9E6108();
        v345 = sub_1CF9E7298();
        if (os_log_type_enabled(v344, v345))
        {
          v346 = swift_slowAlloc();
          *v346 = 0;
          _os_log_impl(&dword_1CEFC7000, v344, v345, "Removing item capabilities for trash item", v346, 2u);
          MEMORY[0x1D386CDC0](v346, -1, -1);
        }

        (*(v687 + 8))(v685, v688);
        [v22 setCapabilities_];
        [v22 setCapabilities_];
        [v22 setCapabilities_];
        [v22 setCapabilities_];
      }

      if ([v22 isIgnoreRoot])
      {
        [v22 setExclusionType_];
      }

      v707 = sub_1CF65C654();
      v347 = *(v322 + 16);
      v690 = *(v693 + 104);
      v691 = v347;
      v348 = v347();
      if (v348)
      {
        v349 = v348;
        v350 = [v348 provider];

        if (v350)
        {
          v351 = [v350 descriptor];

          v350 = [v351 supportsFailingUploadOnConflict];
        }
      }

      else
      {
        v350 = 0;
      }

      [v22 setSupportsUploadWithFailOnConflict_];
      memcpy(v708, v732, 0x378uLL);
      if (sub_1CEFF7450(v708) == 1 || (memcpy(v706, v708, 0x208uLL), sub_1CEFF755C() == 1))
      {
        if (v103)
        {
          memset(v706, 0, 40);
          sub_1CF77D6A0(v22, v706, v673, (v103 & 0x40) != 0, (v103 >> 1) & 1, v680);
        }

        v352 = sub_1CEFF889C();
        v353 = sub_1CEFF89C0(v352);

        if ((v353 & 1) == 0)
        {
          v354 = sub_1CEFF889C();
          v355 = sub_1CEFF88F4(v354);

          if ((v355 & 1) == 0)
          {
            [v22 setCapabilities_];
          }
        }

        if (([v22 isExcludedFromSync] & 1) == 0 && (v103 & 0x10) != 0)
        {
          v356 = [v22 itemIdentifier];
          sub_1CEFDA3B4(v705);

          v357 = v705[1];
          if (LOBYTE(v705[1]) != 255)
          {
            v358 = v705[0];
            v359 = a9;
            *v702 = sub_1CF65C624();
            v360 = v680;
            v361 = (*(v680 + 24))(*(v693 + 96), v680);
            *v702 = v358;
            v702[8] = v357;
            v362 = v361;
            memcpy(v706, v732, sizeof(v706));
            v363 = sub_1CEFF7450(v706);
            if (v363 == 1)
            {
              v364 = 0;
            }

            else
            {
              v364 = *&v706[528];
            }

            v365 = v696;
            v366 = sub_1CF769738(v702, v364, (v363 == 1) | (v706[536] & 1), v362, v674, v675, v360, v733, a9);
            if (v365)
            {

LABEL_278:
              sub_1CF9E7458();
              v509 = v692;
              sub_1CF9E6038();
              sub_1CF007CB8(v509, type metadata accessor for Signpost);
              return (v359 & 1);
            }

            if (v366 != 2 && (v366 & 1) != 0)
            {
              v399 = fpfs_current_or_default_log();
              v400 = v655;
              sub_1CF9E6128();
              v401 = sub_1CF9E6108();
              v402 = sub_1CF9E7298();
              if (os_log_type_enabled(v401, v402))
              {
                v403 = swift_slowAlloc();
                *v403 = 0;
                _os_log_impl(&dword_1CEFC7000, v401, v402, "overriding item capabilities for item inside vendor excluded directory", v403, 2u);
                MEMORY[0x1D386CDC0](v403, -1, -1);
              }

              (*(v687 + 8))(v400, v688);
              v404 = 1;
              [v22 setExcludedFromSync_];
              LODWORD(v696) = [v22 isFolder];
              [v22 isExcludedFromSync];
              v405 = v654;
              sub_1CEFF54BC(v654);
              v406 = *(v405 + 5);
              sub_1CF007CB8(v405, type metadata accessor for ItemMetadata);
              *v702 = sub_1CF65C654();
              v407 = (v691)(v690, v733);
              if (v407)
              {
                v408 = v407;
                v404 = [v407 supportsSyncingTrash];
              }

              v367 = v692;
              [v22 setCapabilities_];

              goto LABEL_158;
            }
          }
        }

        v367 = v692;
LABEL_158:
        v359 = v695 & 1;
        sub_1CF9E7458();
LABEL_159:
        sub_1CF9E6038();
        sub_1CF007CB8(v367, type metadata accessor for Signpost);
        return (v359 & 1);
      }

      v684 = *v706;
      LODWORD(v693) = v706[8];
      v729 = *&v706[185];
      v730 = *&v706[201];
      v731[0] = *&v706[217];
      *(v731 + 15) = *&v706[232];
      v726 = *&v706[137];
      v727 = *&v706[153];
      v728 = *&v706[169];
      v722 = *&v706[73];
      v723 = *&v706[89];
      v724 = *&v706[105];
      v725 = *&v706[121];
      v718 = *&v706[9];
      v719 = *&v706[25];
      v720 = *&v706[41];
      v721 = *&v706[57];
      v689 = *&v706[248];
      memcpy(v717, &v706[256], sizeof(v717));
      memcpy(v705, v708, sizeof(v705));
      sub_1CEFCCBDC(v705, v702, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v379 = [v22 isIgnoreRoot];
      v685 = a9;
      if ((v379 & 1) == 0 && (v706[16] & 0x10) != 0)
      {
        [v22 setExclusionType_];
        [v22 setExcludedFromSync_];
        [v22 setIgnoreRoot_];
        v380 = fpfs_current_or_default_log();
        v381 = v658;
        sub_1CF9E6128();
        v382 = sub_1CF9E6108();
        v383 = sub_1CF9E7298();
        if (os_log_type_enabled(v382, v383))
        {
          v384 = swift_slowAlloc();
          *v384 = 0;
          _os_log_impl(&dword_1CEFC7000, v382, v383, "overriding item capabilities for vendor excluded item", v384, 2u);
          MEMORY[0x1D386CDC0](v384, -1, -1);
        }

        (*(v687 + 8))(v381, v688);
        v385 = [v22 isFolder];
        [v22 isExcludedFromSync];
        v386 = v657;
        sub_1CEFF54BC(v657);
        v387 = *(v386 + 5);
        sub_1CF007CB8(v386, type metadata accessor for ItemMetadata);
        *v702 = sub_1CF65C654();
        v388 = (v691)(v690, v322);
        if (v388)
        {
          v389 = v388;
          v390 = [v388 supportsSyncingTrash];
        }

        else
        {
          v390 = 1;
        }

        [v22 setCapabilities_];
      }

      v414 = sub_1CEFF889C();
      v415 = sub_1CEFF89C0(v414);

      if (v415 & 1) != 0 || (v416 = sub_1CEFF889C(), v417 = sub_1CEFF88F4(v416), v416, (v417))
      {
        [v22 setCapabilities_];
      }

      v418 = v706[16];
      v419 = *&v706[24];
      v688 = *&v706[240];
      [v22 setSyncPaused_];
      v420 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      if ([v22 isEvictedWithClone])
      {
        v421 = 1;
      }

      else
      {
        v421 = [v22 isSyncPaused];
      }

      v422 = 0;
      if (v693 != 255 && v689)
      {
        if (((*&v706[264] & v662 | v706[256] & 0x51) == 0) | v421 & 1)
        {
          v422 = v706[32] == 0;
        }

        else
        {
          v422 = 1;
        }
      }

      [v22 setDownloading_];
      if ([v22 isUploaded])
      {
        sub_1CEFCCBDC(v706, v702, &unk_1EC4BFE00, &unk_1CF9FEF00);
        v423 = (v419 & v666 | v418 & 0x51) == 0;
        v420 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
        sub_1CEFCCC44(v706, &unk_1EC4BFE00, &unk_1CF9FEF00);
      }

      else
      {
        v423 = 0;
      }

      [v22 setUploaded_];
      if (([v22 isUploading] & 1) == 0)
      {
        sub_1CEFCCBDC(v706, v702, &unk_1EC4BFE00, &unk_1CF9FEF00);
        if ((v419 & v666) != 0)
        {
          sub_1CEFCCC44(v706, &unk_1EC4BFE00, &unk_1CF9FEF00);
        }

        else
        {
          sub_1CEFCCC44(v706, &unk_1EC4BFE00, &unk_1CF9FEF00);
          if ((v418 & 0x51) == 0)
          {
            v424 = 0;
            goto LABEL_221;
          }
        }
      }

      v424 = [v22 v420[378]] ^ 1;
LABEL_221:
      [v22 setUploading_];
      v425 = [v22 fp_isLastModifiedByCurrentUser];
      [v22 setFp:v425 | (*&v706[264] >> 3) & 1 lastModifiedByCurrentUser:?];
      v426 = [v22 &selRef_newAssertionWithAttributeName_reason_ + 1];
      v427 = v733;
      v428 = (v426 & 1) == 0 && [v22 isDownloaded] && (*&v706[264] & v662) == 0;
      [v22 setMostRecentVersionDownloaded_];
      v429 = [v22 isDownloaded];
      [v22 setFp:(v706[32] == 0) & ~v429 isDownloadRequested:?];
      v430 = v667;
      sub_1CEFF54BC(v667);
      v431 = *v430;
      sub_1CF007CB8(v430, type metadata accessor for ItemMetadata);
      if (v431 != 2)
      {
        if ([v22 isDownloaded])
        {
          if (([v22 isSyncPaused] & 1) == 0 && (objc_msgSend(v22, sel_isInPinnedFolder) & 1) == 0)
          {
            *v702 = sub_1CF65C654();
            v432 = (v691)(v690, v427);
            if (v432)
            {
              v433 = v432;
              v434 = [v432 provider];

              if (v434)
              {
                v435 = [v434 descriptor];

                v436 = [v435 allowsUserControlledEviction];
                if (v436)
                {
                  if (v672 || ([v22 &selRef_newAssertionWithAttributeName_reason_ + 1] & 1) != 0 || (v648 = v653, sub_1CEFF54BC(v653), v649 = *v648, sub_1CF007CB8(v648, type metadata accessor for ItemMetadata), v649 == 1) && (v732[73] & 1) == 0 && v732[72] >= 1)
                  {
                    [v22 setCapabilities_];
                  }
                }
              }
            }
          }
        }
      }

      v701 = sub_1CF65C654();
      v437 = (v691)(v690, v427);
      if (v437 && (v438 = v437, v439 = [v437 provider], v438, v439))
      {
        v440 = [v439 descriptor];

        v441 = [v440 allowsContextualMenuDownloadEntry];
      }

      else
      {
        v441 = 1;
      }

      [v22 setAllowsContextualMenuDownloadEntry_];
      v442 = v732[66];
      v443 = v732[68];
      v444 = LOBYTE(v732[69]);
      memcpy(v700, &v732[69] + 1, sizeof(v700));
      if ((v732[67] & 1) == 0 && LOBYTE(v732[69]) != 255)
      {
        [v22 setFileID_];
        if ((*&v706[16] & 0xFFFFFFFFFFFFFFEFLL) == 0 && (!*&v706[256] || v706[368] != 2))
        {
          v445 = [v22 filename];
          v446 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v448 = v447;

          *v702 = v446;
          *&v702[8] = v448;
          v699[0] = 58;
          v699[1] = 0xE100000000000000;
          v697 = 47;
          v698 = 0xE100000000000000;
          sub_1CEFE4E68();
          v449 = sub_1CF9E7668();
          v451 = v450;
          v448, v450, v452, v453, v454, v455, v456, v457;
          *v702 = v442;
          *&v702[8] = v443;
          *&v702[16] = v444;
          *&v702[24] = v449;
          *&v702[32] = v451;
          sub_1CF77D6A0(v22, v702, v673, (v695 & 0x40) != 0, (v695 >> 1) & 1, v680);
          *&v702[32], v458, v459, v460, v461, v462, v463, v464;
        }
      }

      if (v706[137])
      {
        v465 = v695;
        if (v706[137] != 4 || (v706[138] & 1) != 0)
        {
LABEL_251:
          if ((v465 & 1) != 0 && *&v706[296] != 1)
          {
            *&v702[128] = *&v700[215];
            *&v702[144] = *&v700[231];
            *&v702[64] = *&v700[151];
            *&v702[80] = *&v700[167];
            *&v702[96] = *&v700[183];
            *&v702[112] = *&v700[199];
            *v702 = *&v700[87];
            *&v702[16] = *&v700[103];
            *&v702[32] = *&v700[119];
            *&v702[48] = *&v700[135];
            *&v702[192] = *&v700[279];
            *&v702[208] = *&v700[295];
            v487 = *&v706[280];
            v488 = *&v706[288];
            v489 = *&v706[304];
            v490 = *&v706[312];
            *&v702[224] = *&v700[311];
            *&v702[240] = *&v700[327];
            *&v702[160] = *&v700[247];
            *&v702[176] = *&v700[263];
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v702) == 1)
            {
              v690 = 0;
              v491 = 0;
            }

            else
            {
              v690 = *&v702[232];
              v491 = *&v702[240];
            }

            sub_1CEFCCBDC(&v706[280], v699, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            sub_1CEFE42D4(v487, v488);
            sub_1CEFE42D4(v489, v490);
            v691 = v487;
            v492 = sub_1CF9E5B48();
            v493 = sub_1CF9E5B48();
            if (v491)
            {
              v494 = sub_1CF9E6888();
              v491, v495, v496, v497, v498, v499, v500, v501;
            }

            else
            {
              v494 = 0;
            }

            v502 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v492 metadataVersion:v493 lastEditorDeviceName:v494];

            sub_1CEFE4714(v489, v490);
            sub_1CEFE4714(v691, v488);
            [v22 setItemVersion_];

            sub_1CEFCCC44(&v706[280], &unk_1EC4BF2D0, &unk_1CF9FEF20);
            v465 = v695;
          }

          else
          {
            v467 = [v22 itemVersion];
            if (v467)
            {
              v468 = v467;
              *&v702[128] = *&v700[215];
              *&v702[144] = *&v700[231];
              *&v702[64] = *&v700[151];
              *&v702[80] = *&v700[167];
              *&v702[96] = *&v700[183];
              *&v702[112] = *&v700[199];
              *v702 = *&v700[87];
              *&v702[16] = *&v700[103];
              *&v702[32] = *&v700[119];
              *&v702[48] = *&v700[135];
              *&v702[192] = *&v700[279];
              *&v702[208] = *&v700[295];
              *&v702[224] = *&v700[311];
              *&v702[240] = *&v700[327];
              *&v702[160] = *&v700[247];
              *&v702[176] = *&v700[263];
              if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v702) == 1 || (v469 = *&v702[240]) == 0)
              {
              }

              else
              {
                v691 = *&v702[232];

                v470 = [v468 contentVersion];
                v690 = sub_1CF9E5B88();
                v687 = v471;

                v472 = [v468 metadataVersion];
                v473 = sub_1CF9E5B88();
                v683 = v474;

                v475 = objc_allocWithZone(MEMORY[0x1E69674E8]);
                v476 = sub_1CF9E5B48();
                v477 = sub_1CF9E5B48();
                v478 = sub_1CF9E6888();
                v469, v479, v480, v481, v482, v483, v484, v485;
                v486 = [v475 initWithContentVersion:v476 metadataVersion:v477 lastEditorDeviceName:v478];

                v465 = v695;
                sub_1CEFE4714(v473, v683);

                sub_1CEFE4714(v690, v687);
                [v22 setItemVersion_];
              }
            }
          }

          if (v706[8] == 255)
          {
            v359 = v465 & 1;
          }

          else
          {
            if (v706[8] != 1)
            {
              v503 = v684;
              if (!v706[8])
              {
                [v22 setDocumentID_];
              }

              v359 = 1;
LABEL_273:
              *&v702[185] = v729;
              *&v702[201] = v730;
              *&v702[217] = v731[0];
              *&v702[232] = *(v731 + 15);
              *&v702[121] = v725;
              *&v702[137] = v726;
              *&v702[153] = v727;
              *&v702[169] = v728;
              *&v702[57] = v721;
              *&v702[73] = v722;
              *&v702[89] = v723;
              *&v702[105] = v724;
              *&v702[9] = v718;
              *&v702[25] = v719;
              *v702 = v503;
              v702[8] = v693;
              *&v702[41] = v720;
              v703 = v689;
              memcpy(v704, v717, sizeof(v704));
              v504 = [v22 uploadingError];
              v505 = [v22 downloadingError];
              if ((v695 & 0x20) != 0)
              {
                v506 = 3;
              }

              else
              {
                v506 = sub_1CEFF8C8C();
              }

              v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC0, &unk_1CF9FCAC0);
              v508 = v696;
              sub_1CF95740C(v676, v504, v505, v506, v674, v507, v675, v685, v713);
              if (v508)
              {

                sub_1CEFCCC44(v708, &unk_1EC4BFC20, &unk_1CFA0A290);
                goto LABEL_278;
              }

              v696 = 0;

              v510 = [v22 uploadingError];
              if (v510)
              {

                v511 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
              }

              else
              {
                v512 = *&v713[0];
                v716 = *&v713[0];
                v511 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
                if (*&v713[0])
                {
                  v513 = swift_allocObject();
                  v513[2] = v22;
                  sub_1CEFCCBDC(&v716, v702, &unk_1EC4C1C20, &unk_1CFA0A250);
                  v514 = v22;
                  sub_1CF769A20(v512, 1, sub_1CF77E614, v513, v680, v733);

                  sub_1CEFCCC44(&v716, &unk_1EC4C1C20, &unk_1CFA0A250);
                }
              }

              if ([v22 isExcludedFromSync])
              {
                v515 = [v22 uploadingError];
                if (v515)
                {
                  v516 = v515;
                  _s3__C4CodeOMa_1(0);
                  *v702 = -2010;
                  sub_1CF77E690(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
                  v517 = sub_1CF9E5658();

                  if (v517)
                  {
                    [v22 setExclusionType_];
                  }
                }
              }

              v518 = [v22 downloadingError];
              if (v518)
              {
              }

              else
              {
                v519 = v714;
                v715 = v714;
                if (v714)
                {
                  v520 = swift_allocObject();
                  v520[2] = v22;
                  v521 = v22;
                  sub_1CEFCCBDC(&v715, v702, &unk_1EC4C1C20, &unk_1CFA0A250);
                  sub_1CF769A20(v519, 1, sub_1CF77E608, v520, v680, v733);

                  sub_1CEFCCC44(&v715, &unk_1EC4C1C20, &unk_1CFA0A250);
                }
              }

              v522 = [v22 uploadingError];
              if (v522 || (v522 = [v22 downloadingError]) != 0)
              {
              }

              else
              {
                v560 = [v22 v511[378]];
                if (!(v656 & 1 | ((v560 & 1) == 0)))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1F40, &unk_1CFA0E480);
                  swift_allocObject();
                  v561 = sub_1CF06DA80();
                  *v562 = xmmword_1CF9FA450;
                  isa = v561[1].super.isa;
                  v564 = *v561[1]._anon_8;
                  v561, v562, v565, v566, v567, v568, v569, v570;
                  v571 = (v564 & ~isa) != 0 ? v564 : 0;
                  if (((v571 | isa) & v688) == 0)
                  {
                    v572 = FPFilePausedWithNoFilePresenter();
                    if (v572)
                    {
                      v573 = v572;
                      v524 = sub_1CF9E57E8();
                    }

                    else
                    {
                      v524 = 0;
                    }

                    [v22 setUploadingError_];
                    goto LABEL_314;
                  }
                }
              }

              v523 = [v22 uploadingError];
              if (!v523 || (*v702 = v523, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90), sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0))
              {
LABEL_315:
                if ((v695 & 0x20) != 0)
                {
                  sub_1CEFF8D94(v713);
                  sub_1CEFCCC44(v708, &unk_1EC4BFC20, &unk_1CFA0A290);
                  v367 = v692;
                  goto LABEL_337;
                }

                v574 = [v22 uploadingError];
                if (!v574 || (*v702 = v574, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90), sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0))
                {
LABEL_326:
                  v611 = [v22 downloadingError];
                  v367 = v692;
                  if (v611)
                  {
                    *v702 = v611;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
                    if (swift_dynamicCast())
                    {
                      v612 = v699[0];
                      v613 = [v699[0] domain];
                      v614 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                      v616 = v615;

                      v618 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                      v624 = v617;
                      if (v614 == v618 && v616 == v617)
                      {
                        v616, v617, v618, v619, v620, v621, v622, v623;
                        v624, v625, v626, v627, v628, v629, v630, v631;
                      }

                      else
                      {
                        v632 = sub_1CF9E8048();
                        v616, v633, v634, v635, v636, v637, v638, v639;
                        v624, v640, v641, v642, v643, v644, v645, v646;
                        if ((v632 & 1) == 0)
                        {
LABEL_336:
                          sub_1CEFF8D94(v713);
                          sub_1CEFCCC44(v708, &unk_1EC4BFC20, &unk_1CFA0A290);

                          goto LABEL_337;
                        }
                      }

                      v647 = [v612 code];
                      if (v647 == *MEMORY[0x1E69671C8])
                      {
                        [v22 setDownloadingError_];
                        [v22 setDownloading_];
                      }

                      goto LABEL_336;
                    }
                  }

                  sub_1CEFF8D94(v713);
                  sub_1CEFCCC44(v708, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_337:
                  sub_1CF9E7458();
                  goto LABEL_159;
                }

                v575 = v699[0];
                v576 = [v699[0] domain];
                v577 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v579 = v578;

                v581 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v587 = v580;
                if (v577 == v581 && v579 == v580)
                {
                  v579, v580, v581, v582, v583, v584, v585, v586;
                  v587, v588, v589, v590, v591, v592, v593, v594;
                }

                else
                {
                  v595 = sub_1CF9E8048();
                  v579, v596, v597, v598, v599, v600, v601, v602;
                  v587, v603, v604, v605, v606, v607, v608, v609;
                  if ((v595 & 1) == 0)
                  {
LABEL_325:

                    goto LABEL_326;
                  }
                }

                v610 = [v575 code];
                if (v610 == *MEMORY[0x1E69671C8])
                {
                  [v22 setUploadingError_];
                  [v22 setUploading_];
                }

                goto LABEL_325;
              }

              v524 = v699[0];
              v525 = [v699[0] domain];
              v526 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v528 = v527;

              v530 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v536 = v529;
              if (v526 == v530 && v528 == v529)
              {
                v528, v529, v530, v531, v532, v533, v534, v535;
                v536, v537, v538, v539, v540, v541, v542, v543;
LABEL_302:
                if ([v524 code] == 27)
                {
                  v559 = [v22 isSyncPaused];
                  if (v656 & 1 | ((v559 & 1) == 0))
                  {
                    [v22 setUploadingError_];
                  }
                }

                goto LABEL_314;
              }

              v544 = sub_1CF9E8048();
              v528, v545, v546, v547, v548, v549, v550, v551;
              v536, v552, v553, v554, v555, v556, v557, v558;
              if (v544)
              {
                goto LABEL_302;
              }

LABEL_314:

              goto LABEL_315;
            }

            [v22 setFileID_];
            v359 = 1;
          }

          v503 = v684;
          goto LABEL_273;
        }

        v466 = &selRef_setDownloading_;
      }

      else
      {
        v466 = &selRef_setUploading_;
        v465 = v695;
      }

      [v22 *v466];
      goto LABEL_251;
    }

    v327 = 1;
    v328 = &selRef_setIsEvictedWithClone_;
LABEL_119:
    [v22 *v328];
    goto LABEL_120;
  }

  __break(1u);
  return result;
}

void sub_1CF769068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v116 = a5;
  v117 = a6;
  v120 = a3;
  v121 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v110 - v12;
  v118 = v7;
  v14 = *(*(v7 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v112 = swift_dynamicCastClassUnconditional();
  if (a1 >> 62)
  {
    v15 = sub_1CF9E7818();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = a1;
  v114 = v14;
  v115 = v13;
  v119 = a7;
  if (!v15)
  {

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v128[0] = MEMORY[0x1E69E7CC0];

  sub_1CEFFA19C(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    return;
  }

  v111 = a4;
  v16 = 0;
  v17 = v128[0];
  v123 = a1 & 0xC000000000000001;
  v124 = v15;
  do
  {
    v125 = v17;
    if (v123)
    {
      v18 = MEMORY[0x1D3869C30](v16, a1);
    }

    else
    {
      v18 = *(a1 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v18 itemIdentifier];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;
    v24 = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v21, v22);
    v23, v25, v26, v27, v28, v29, v30, v31;
    if (v24)
    {
      v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = v33;
      v35 = sub_1CF025150(0x80007uLL, v32, v33);
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v34, v36, v38, v40, v42, v43, v44, v45;
      v46 = v37;
      a1 = v122;
      v47 = MEMORY[0x1D3868C10](v35, v46, v39, v41);
      v49 = v48;
      v41, v48, v50, v51, v52, v53, v54, v55;
      VFSItemID.init(parsing:)(v47, v49, v129, v56, v57, v58, v59, v60, v61);

      v62 = v129[1];
      if (LOBYTE(v129[1]) != 255)
      {
        v63 = v129[0];

        v64 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v63 = [v19 itemIdentifier];

    v62 = 0;
    v64 = 1;
LABEL_14:
    v17 = v125;
    v128[0] = v125;
    v66 = *(v125 + 16);
    v65 = *(v125 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_1CEFFA19C((v65 > 1), v66 + 1, 1);
      v17 = v128[0];
    }

    *(v17 + 16) = v66 + 1;
    v67 = v17 + 16 * v66;
    *(v67 + 32) = v63;
    ++v16;
    *(v67 + 40) = v62;
    *(v67 + 41) = v64;
  }

  while (v124 != v16);
  a7 = v119;
  a4 = v111;
LABEL_19:
  v68 = v17;
  v69 = v113;
  v70 = sub_1CF203FD4(v17, v121 & 1, v120, a4, a7);
  if (v69)
  {

    v68, v71, v72, v73, v74, v75, v76, v77;
  }

  else
  {
    v78 = a4;
    v79 = v70;
    v130 = v68;
    v131 = 0;
    v132 = a1;
    v133 = 0;
    v134 = 0;

    sub_1CEFFA1DC(v129);
    v87 = v129[2];
    if (v129[2])
    {
      v88 = v129[0];
      v89 = v129[1];
      do
      {
        if (*v79->tree)
        {
          v90 = sub_1CEFF4768(v88, v89 & 0x1FF);
          if (v91)
          {
            v92 = (*v79[1].tester + 888 * v90);
            memcpy(v127, v92, sizeof(v127));
            memmove(v128, v92, 0x378uLL);
            nullsub_1();
            sub_1CEFF4514(v127, &v126);
          }

          else
          {
            sub_1CF77239C(v128);
          }

          memcpy(v129, v128, sizeof(v129));
        }

        else
        {
          sub_1CF77239C(v129);
        }

        memcpy(v128, v129, sizeof(v128));
        v93 = sub_1CF9E5A58();
        v94 = v115;
        (*(*(v93 - 8) + 56))(v115, 1, 1, v93);
        sub_1CF765380(v87, v128, v121, v94, v120, v78, v116, v117, v119);

        sub_1CEFD0994(v88, v89, BYTE1(v89) & 1);
        sub_1CEFCCC44(v94, &unk_1EC4BE310, qword_1CF9FCBE0);
        memcpy(v127, v128, sizeof(v127));
        sub_1CEFCCC44(v127, &unk_1EC4C46E0, &unk_1CFA16860);
        sub_1CEFFA1DC(v129);
        v88 = v129[0];
        v89 = v129[1];
        v87 = v129[2];
      }

      while (v129[2]);
    }

    v130, v80, v81, v82, v83, v84, v85, v86;
    v95 = v132;
    v79, v96, v97, v98, v99, v100, v101, v102;
    v95, v103, v104, v105, v106, v107, v108, v109;
    if ((v121 & 4) != 0)
    {
      sub_1CF764128(v122, v120, v78, v116, v117, v119);
    }
  }
}

void sub_1CF769644(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1CF680F04(0, v4, 0);
    v5 = v18;
    v6 = (v3 + 40);
    do
    {
      v7 = *v6;

      v8 = sub_1CF9E6888();
      v7, v9, v10, v11, v12, v13, v14, v15;
      v17 = *(v18 + 16);
      v16 = *(v18 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CF680F04((v16 > 1), v17 + 1, 1);
      }

      *(v18 + 16) = v17 + 1;
      *(v18 + 8 * v17 + 32) = v8;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  *a2 = v5;
}

uint64_t sub_1CF769738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a1 + 8);
  v55 = 0;
  if (v11)
  {
    if (v11 == 1)
    {
      v55 = v10;
      return sub_1CF76B82C(v10, a4, a5, a6, a7, a8, a9);
    }

    return 0;
  }

  else
  {
    v15 = a4;
    v56 = v10;
    v57 = 0;
    v53 = a5;
    v16 = a6;
    v17 = a7;
    v18 = a8;
    result = sub_1CF77EB9C(&v56, a5, a6, a7, a8, a9);
    if (!v9)
    {
      if (result)
      {
        return 1;
      }

      else
      {
        v51 = 0;
        0, v19, v20, v21, v22, v23, v24, v25;
        v52 = &v50;
        if (a3)
        {
          v26 = 0;
        }

        else
        {
          v26 = a2;
        }

        v59 = v26;
        v60 = 0;
        v61 = v10;
        v63 = 0;
        v62 = 0;
        v64 = 0;
        v54 = -1;
        v27 = fpfs_openfdbyhandle();
        if (v27 < 0)
        {
          v39 = v54;
          v40 = MEMORY[0x1D38683F0]();
          if (v39 < 0)
          {
            LODWORD(v56) = 0;
            BYTE4(v56) = 1;
          }

          else
          {
            LODWORD(v56) = v54;
            BYTE4(v56) = 0;
          }

          v58 = 0;
          v41 = sub_1CF19BBE4(v40, &v56);
          sub_1CF1969CC(&v56);
          swift_willThrow();
          0, v42, v43, v44, v45, v46, v47, v48;
          v49 = v41;
          LODWORD(v56) = sub_1CF9E5308();
          sub_1CF196978();
          sub_1CF9E5658();

          v38 = v41;
        }

        else
        {
          v35 = v27;
          0, v28, v29, v30, v31, v32, v33, v34;
          MEMORY[0x1EEE9AC00](v36);
          v37 = v51;
          sub_1CEFE1894(sub_1CF77EC8C);
          if (!v37)
          {
            close(v35);
            v10 = v55;
            a8 = v18;
            a7 = v17;
            a6 = v16;
            a5 = v53;
            a4 = v15;
            return sub_1CF76B82C(v10, a4, a5, a6, a7, a8, a9);
          }

          close(v35);
          v38 = v37;
        }

        return 2;
      }
    }
  }

  return result;
}

double sub_1CF7699E0(NSObject *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  sub_1CF774BF8(a1, a2, a3, a4, a5, a6);

  return result;
}

void sub_1CF769A20(void *a1, int a2, void (*a3)(id), void *a4, uint64_t a5, uint64_t a6)
{
  v306 = a5;
  v307 = a6;
  v311 = a3;
  LODWORD(v308) = a2;
  v8 = sub_1CF9E63A8();
  v302 = *(v8 - 8);
  v303 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v300 = &v296 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_1CF9E6448();
  v299 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v298 = &v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v304 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v296 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v296 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1CF9E5268();
  v309 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v296 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v329 = v345;
    v330 = v346;
    v325 = v342;
    v326 = v343;
    v327 = *v344;
    v328 = *&v344[16];
    v323 = aBlock;
    v324 = v341;
    v337 = v345;
    v338 = v346;
    v334 = v342;
    v335 = v343;
    v336[0] = *v344;
    v336[1] = *&v344[16];
    v331 = v347;
    v339 = v347;
    v332 = aBlock;
    v333 = v341;
    if (sub_1CF2B971C(&v332))
    {
      sub_1CEFCCC44(&v323, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v39 = v38;
    v40 = *v38;
    v41 = *(v38 + 8);
    v42 = *(v38 + 112);

    v43 = sub_1CEFCCC44(v39 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v41 != 2 || v40)
    {
      v45 = v311;
      if (v41 == 2 && v40 == 1)
      {
        v44 = *MEMORY[0x1E6967280];
        if (v42)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *&v314 = 0x2F73662F70665F5FLL;
        *(&v314 + 1) = 0xE800000000000000;
        v312 = v40;
        v313 = v41;
        v83 = VFSItemID.description.getter(v43);
        v85 = v84;
        MEMORY[0x1D3868CC0](v83);
        v85, v86, v87, v88, v89, v90, v91, v92;
        v93 = *(&v314 + 1);
        v44 = sub_1CF9E6888();
        v93, v94, v95, v96, v97, v98, v99, v100;
        if (v42)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v44 = *MEMORY[0x1E6967258];
      v45 = v311;
      if (v42)
      {
LABEL_16:
        v46 = v42;
LABEL_52:
        v101 = v42;
        v45(v46);

        goto LABEL_56;
      }
    }

    v46 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    v42 = 0;
    goto LABEL_52;
  }

LABEL_4:
  v310 = a4;

  *&v323 = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v336 + 9) = *&v344[9];
    v335 = v343;
    v336[0] = *v344;
    v333 = v341;
    v334 = v342;
    v332 = aBlock;
    if (!v344[24])
    {
      v47 = *(&v336[0] + 1);
      v49 = *(&v335 + 1);
      v48 = *&v336[0];
      v51 = *(&v334 + 1);
      v50 = v335;
      v53 = *(&v333 + 1);
      v52 = v334;
      v54 = *(&v332 + 1);
      v55 = v333;
      v309 = v332;

      sub_1CF1D56D0(v54, v55, v53, v52, v51, v50, v49, v48);
      if (v47)
      {
        v56 = v47;
        v57 = v311;
        v58 = v309;
      }

      else
      {
        v81 = objc_opt_self();
        v58 = v309;
        v56 = [v81 fileProviderErrorForNonExistentItemWithIdentifier_];
        v57 = v311;
      }

      v82 = v47;
      v57(v56);

      v80 = v323;
      goto LABEL_57;
    }

    sub_1CEFCCC44(&v332, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v348 = a1;
  v22 = a1;
  if (swift_dynamicCast())
  {
    v329 = v345;
    v330 = v346;
    v325 = v342;
    v326 = v343;
    v327 = *v344;
    v328 = *&v344[16];
    v323 = aBlock;
    v324 = v341;
    v337 = v345;
    v338 = v346;
    v334 = v342;
    v335 = v343;
    v336[0] = *v344;
    v336[1] = *&v344[16];
    v331 = v347;
    v339 = v347;
    v332 = aBlock;
    v333 = v341;
    v23 = sub_1CF2B971C(&v332);
    switch(v23)
    {
      case 5:
        nullsub_1();
        v63 = v348;
LABEL_30:

        v65 = v311;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v60 = *v59;
        v61 = *(v59 + 8);
        sub_1CEFCCC44(&v323, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v308)
        {
          LODWORD(v314) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          sub_1CF9E57D8();
          v62 = sub_1CF9E53A8();
          (*(v304 + 8))(v13, v11);
          v311(v62);

          goto LABEL_56;
        }

        v102 = v305;
        v103 = sub_1CF65C624();
        v312 = v60;
        v313 = v61;
        v318 = 0u;
        v319 = 0u;
        v316 = 0u;
        v317 = 0u;
        v314 = 0u;
        v315 = 0u;
        v104 = swift_allocObject();
        v105 = v307;
        v104[2] = v306;
        v104[3] = v105;
        v104[4] = v311;
        v104[5] = v310;
        v104[6] = v102;
        v106 = *(*v103 + 136);

        v107 = sub_1CF77E6E4;
LABEL_55:
        v106(&v312, &v314, 0, 1, v107, v104);

        goto LABEL_56;
      case 1:
        nullsub_1();
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 24);
        v28 = *(v24 + 48);
        v29 = *(v24 + 56);

        sub_1CF480620(v28, v29);
        v27, v30, v31, v32, v33, v34, v35, v36;
        if (v308)
        {
          sub_1CF9E5128();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          sub_1CF9E57D8();
          v37 = sub_1CF9E50D8();
          (v309[1].isa)(v19, v17);
          v311(v37);

LABEL_56:
          v80 = v348;
          goto LABEL_57;
        }

        v108 = v305;
        v109 = sub_1CF65C624();
        v312 = v25;
        v313 = v26;
        v318 = 0u;
        v319 = 0u;
        v316 = 0u;
        v317 = 0u;
        v314 = 0u;
        v315 = 0u;
        v104 = swift_allocObject();
        v110 = v307;
        v104[2] = v306;
        v104[3] = v110;
        v111 = v310;
        v104[4] = v311;
        v104[5] = v111;
        v104[6] = v108;
        v106 = *(*v109 + 136);

        v107 = sub_1CF77E6FC;
        goto LABEL_55;
    }

    sub_1CEFCCC44(&v323, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v323 = a1;
  v64 = a1;
  if (swift_dynamicCast())
  {
    *(v336 + 9) = *&v344[9];
    v334 = v342;
    v335 = v343;
    v336[0] = *v344;
    v332 = aBlock;
    v333 = v341;
    if (v344[24] == 5)
    {
      v63 = v323;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v332, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v67 = a1;
  if (swift_dynamicCast())
  {
    v65 = v311;
    if (v332 <= 2u)
    {
      if (v332 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      v66 = sub_1CF9E50D8();
      (v309[1].isa)(v19, v17);
      v65(v66);
      goto LABEL_33;
    }

    if (v332 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v77 = sub_1CF9E50D8();
    (v309[1].isa)(v19, v17);
    v65(v77);

LABEL_64:
    v80 = aBlock;
    goto LABEL_57;
  }

  *&v332 = a1;
  v68 = a1;
  if (swift_dynamicCast())
  {
    if ((v341 + 3) <= 1u)
    {

      type metadata accessor for NSFileProviderError(0);
      *&v332 = -2005;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1CF9FA450;
      *(v69 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v69 + 40) = v70;
      v71 = sub_1CF9E6888();
      sub_1CF9E82F8();
      v72 = FPLocv();

      v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v75 = v74;

      *(v69 + 72) = MEMORY[0x1E69E6158];
      *(v69 + 48) = v73;
      *(v69 + 56) = v75;
      sub_1CF4E04E8(v69);
      swift_setDeallocating();
      sub_1CEFCCC44(v69 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v76 = aBlock;
      v311(aBlock);

      return;
    }

    sub_1CF3386E4(aBlock, *(&aBlock + 1), v341);
    LODWORD(v323) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v112 = sub_1CF9E53A8();
    (*(v304 + 8))(v13, v11);
    v311(v112);

    v80 = v332;
    goto LABEL_57;
  }

  *&v314 = a1;
  v78 = a1;
  if (swift_dynamicCast())
  {
    v329 = v345;
    v330 = v346;
    v325 = v342;
    v326 = v343;
    v327 = *v344;
    v328 = *&v344[16];
    v323 = aBlock;
    v324 = v341;
    v337 = v345;
    v338 = v346;
    v334 = v342;
    v335 = v343;
    v336[0] = *v344;
    v336[1] = *&v344[16];
    v331 = v347;
    v339 = v347;
    v332 = aBlock;
    v333 = v341;
    if (sub_1CF2B971C(&v332) == 16)
    {
      sub_1CF9E5168();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      v79 = sub_1CF9E50D8();
      (v309[1].isa)(v19, v17);
      v311(v79);

      v80 = v314;
LABEL_57:

      return;
    }

    sub_1CEFCCC44(&v323, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v113 = a1;
  if (swift_dynamicCast())
  {
    v114 = FPDomainUnavailableError();
    if (!v114)
    {
LABEL_109:
      __break(1u);
LABEL_110:
      MEMORY[0x1EEE9AC00](v114);
      *(&v296 - 2) = v16;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, (&v296 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v115 = v114;
    (v311)();

    goto LABEL_64;
  }

  v312 = a1;
  v116 = a1;
  if (swift_dynamicCast())
  {
    v329 = v345;
    v330 = v346;
    v325 = v342;
    v326 = v343;
    v327 = *v344;
    v328 = *&v344[16];
    v323 = aBlock;
    v324 = v341;
    v337 = v345;
    v338 = v346;
    v334 = v342;
    v335 = v343;
    v336[0] = *v344;
    v336[1] = *&v344[16];
    v331 = v347;
    v339 = v347;
    v332 = aBlock;
    v333 = v341;
    if (sub_1CF2B971C(&v332) == 10)
    {
      nullsub_1();
      v118 = *(v117 + 16);
      if (!v118)
      {
        LODWORD(v314) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        v118 = sub_1CF9E53A8();
        (*(v304 + 8))(v13, v11);
      }

      v119 = v311;
      v320 = v329;
      v321 = v330;
      v322 = v331;
      v316 = v325;
      v317 = v326;
      v318 = v327;
      v319 = v328;
      v314 = v323;
      v315 = v324;
      nullsub_1();
      v121 = *(v120 + 16);
      v119(v118);
      sub_1CEFCCC44(&v323, &unk_1EC4BE320, &unk_1CFA08B50);

      v80 = v312;
      goto LABEL_57;
    }

    sub_1CEFCCC44(&v323, &unk_1EC4BE320, &unk_1CFA08B50);
    v123 = v312;
    goto LABEL_81;
  }

  *&v323 = a1;
  v122 = a1;
  if (swift_dynamicCast())
  {
    v334 = v342;
    v335 = v343;
    v336[0] = *v344;
    *(v336 + 9) = *&v344[9];
    v332 = aBlock;
    v333 = v341;
    sub_1CEFCCC44(&v332, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_82:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v66 = sub_1CF9E50D8();
    (v309[1].isa)(v19, v17);
    v311(v66);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v124 = a1;
  v125 = swift_dynamicCast();

  v126 = v310;
  if (v125)
  {
    goto LABEL_82;
  }

  *&v332 = a1;
  v127 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v341, *(&v341 + 1), v342, v128, v129, v130);
LABEL_80:
    v123 = v332;
LABEL_81:

    goto LABEL_82;
  }

  *&v332 = a1;
  v131 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v341, SBYTE8(v341));
    goto LABEL_80;
  }

  *&v332 = a1;
  v132 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_80;
  }

  v133 = sub_1CF9E57E8();
  v134 = [v133 userInfo];
  v135 = sub_1CF9E6638();

  v136 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v144 = v137;
  v145 = v305;
  if (*v135->tree)
  {
    v146 = sub_1CEFE4328(v136, v137);
    v148 = v147;
    v144, v147, v149, v150, v151, v152, v153, v154;
    if (v148)
    {
      sub_1CEFD1104(*v135[1].tester + 32 * v146, &aBlock);
      v135, v162, v163, v164, v165, v166, v167, v168;
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v169 = v332;
        v170 = swift_allocObject();
        v171 = v311;
        v170[2] = v133;
        v170[3] = v171;
        v170[4] = v126;

        v172 = v169;
        v173 = v133;
        sub_1CF769A20(v172, v308 & 1, sub_1CF77E6D8, v170, v306, v307);

        return;
      }
    }

    else
    {
      v135, v155, v156, v157, v158, v159, v160, v161;
    }
  }

  else
  {
    v135, v137, v138, v139, v140, v141, v142, v143;
    v144, v174, v175, v176, v177, v178, v179, v180;
  }

  v181 = swift_allocObject();
  v182 = [v133 userInfo];
  v16 = sub_1CF9E6638();

  v183 = *MEMORY[0x1E696A750];
  v184 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v192 = v185;
  if (!*v16->tree)
  {
    v16, v185, v186, v187, v188, v189, v190, v191;
    v192, v226, v227, v228, v229, v230, v231, v232;
    goto LABEL_105;
  }

  v193 = sub_1CEFE4328(v184, v185);
  v195 = v194;
  v192, v194, v196, v197, v198, v199, v200, v201;
  if ((v195 & 1) == 0)
  {
    v16, v202, v203, v204, v205, v206, v207, v208;
    goto LABEL_105;
  }

  v304 = v183;
  sub_1CEFD1104(*v16[1].tester + 32 * v193, &aBlock);
  v16, v209, v210, v211, v212, v213, v214, v215;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_105:
    swift_deallocUninitializedObject();
    v311(a1);

    return;
  }

  v296 = v133;
  *(v181 + 16) = v332;
  v309 = dispatch_group_create();
  v216 = *(v181 + 16);
  if (v216 >> 62)
  {
    goto LABEL_107;
  }

  v217 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v217)
  {
    goto LABEL_113;
  }

  do
  {
    v218 = 0;
    while (1)
    {
      v16 = v309;
      v114 = objc_sync_enter(v16);
      if (v114)
      {
        goto LABEL_110;
      }

      swift_beginAccess();
      v219 = *(v181 + 16);
      if ((v219 & 0xC000000000000001) != 0)
      {
        v220 = MEMORY[0x1D3869C30](v218);
        goto LABEL_99;
      }

      if (v218 >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v220 = *(v219 + 8 * v218 + 32);
LABEL_99:
      v221 = v220;
      swift_endAccess();
      v222 = objc_sync_exit(v16);
      if (v222)
      {
        MEMORY[0x1EEE9AC00](v222);
        *(&v296 - 2) = v16;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, (&v296 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v16);
      v223 = swift_allocObject();
      v223[2] = v16;
      v223[3] = v181;
      v223[4] = v218;
      v224 = v16;
      v225 = v221;

      sub_1CF769A20(v225, v308 & 1, sub_1CF77E678, v223, v306, v307);

      if (v217 == ++v218)
      {
        goto LABEL_113;
      }
    }

    __break(1u);
LABEL_107:
    v114 = sub_1CF9E7818();
    if (v114 < 0)
    {
      __break(1u);
      goto LABEL_109;
    }

    v217 = v114;
  }

  while (v114);
LABEL_113:
  if (v308)
  {
    v233 = v296;
    v234 = [v296 userInfo];
    v235 = sub_1CF9E6638();

    v236 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v238 = v237;
    swift_beginAccess();
    v239 = *(v181 + 16);
    *(&v341 + 1) = v297;
    *&aBlock = v239;
    sub_1CEFE9EB8(&aBlock, &v332);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v314 = v235;
    sub_1CF1D154C(&v332, v236, v238, isUniquelyReferenced_nonNull_native);
    v238, v241, v242, v243, v244, v245, v246, v247;
    v248 = [v233 domain];
    if (!v248)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v250 = v249;
      v248 = sub_1CF9E6888();
      v250, v251, v252, v253, v254, v255, v256, v257;
    }

    v66 = v296;
    v258 = [v296 code];
    v259 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v260 = sub_1CF9E6618();

    v261 = [v259 initWithDomain:v248 code:v258 userInfo:v260];

    v311(v261);
  }

  else
  {
    v262 = *(*(v145 + 16) + 64);
    v263 = swift_allocObject();
    v264 = v296;
    v263[2] = v296;
    v263[3] = v181;
    v263[4] = v311;
    v263[5] = v310;

    v311 = v264;

    v265 = v262;
    v266 = fpfs_current_log();
    v310 = fpfs_adopt_log();
    v267 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v268;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v269 = sub_1CF9E7988();
    v271 = v270;
    MEMORY[0x1D3868CC0](v269);
    v271, v272, v273, v274, v275, v276, v277, v278;
    v279 = *(&aBlock + 1);
    sub_1CF9E6978();
    v279, v280, v281, v282, v283, v284, v285, v286;
    v287 = __fp_log_fork();

    *(v267 + 16) = v287;
    v288 = swift_allocObject();
    *(v288 + 16) = v266;
    *(v288 + 24) = v267;
    v307 = v267;
    *(v288 + 32) = v265;
    *(v288 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v288 + 48) = 48;
    *(v288 + 56) = 2;
    *(v288 + 64) = sub_1CF77E684;
    *(v288 + 72) = v263;
    *&v342 = sub_1CEFD5064;
    *(&v342 + 1) = v288;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v341 = sub_1CEFCA444;
    *(&v341 + 1) = &block_descriptor_40;
    v289 = _Block_copy(&aBlock);
    v290 = v265;
    v308 = v266;

    v291 = v298;
    sub_1CF9E63F8();
    *&v332 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v292 = v300;
    v293 = v303;
    sub_1CF9E77B8();
    v294 = v309;
    sub_1CF9E7308();
    _Block_release(v289);
    (*(v302 + 8))(v292, v293);
    (*(v299 + 8))(v291, v301);

    v295 = v310;
    v66 = fpfs_adopt_log();
  }

LABEL_33:
}

uint64_t sub_1CF76B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a5;
  v14 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 32);
  v16 = *(v15 + 16);
  v17 = (v15 + 32);
  while (v16)
  {
    v18 = *v17++;
    --v16;
    if (v18 == a1)
    {
      return 0;
    }
  }

  v51 = (v15 + 32);
  v52 = *(a2 + 32);
  if (*(a2 + 48))
  {
    goto LABEL_7;
  }

LABEL_6:
  if (v14 == *(a2 + 40))
  {
    return 0;
  }

LABEL_7:
  while (1)
  {
    v54 = v14;
    v55 = 1;
    result = sub_1CF77EB9C(&v54, a3, a4, v10, a6, a7);
    if (v7)
    {
      return result;
    }

    if (result)
    {
      return 1;
    }

    0, v20, v21, v22, v23, v24, v25, v26;
    v57 = v14;
    v58 = 0u;
    v59 = 0u;
    v27 = fpfs_openfdbyhandle();
    if ((v27 & 0x80000000) != 0)
    {
      v40 = MEMORY[0x1D38683F0](v27);
      LODWORD(v54) = 0;
      BYTE4(v54) = 1;
      v56 = 0;
      v41 = sub_1CF19BBE4(v40, &v54);
      sub_1CF1969CC(&v54);
      swift_willThrow();
      0, v42, v43, v44, v45, v46, v47, v48;
      v49 = v41;
      LODWORD(v54) = sub_1CF9E5308();
      sub_1CF196978();
      sub_1CF9E5658();

      return 2;
    }

    v35 = v27;
    0, v28, v29, v30, v31, v32, v33, v34;
    MEMORY[0x1EEE9AC00](v36);
    sub_1CEFE1894(sub_1CF7969E4);
    close(v35);
    v14 = a1;
    v37 = v51;
    for (i = *(v52 + 16); i; --i)
    {
      v39 = *v37++;
      if (v39 == a1)
      {
        return 0;
      }
    }

    v10 = a5;
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_6;
    }
  }
}

id sub_1CF76BB00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v238 = a8;
  v241 = a5;
  v242 = a7;
  v235 = a4;
  v234 = a3;
  v222 = a2;
  v239 = a1;
  v14 = *v11;
  v236 = v14;
  v215 = sub_1CF9E6118();
  v214 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v223 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF255088();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v246 = &type metadata for VFSVersion;
  v247 = AssociatedTypeWitness;
  v248 = v17;
  v249 = AssociatedConformanceWitness;
  v19 = type metadata accessor for FileItemVersion(0, &v246);
  v233 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v232 = &v214 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v220 = &v214 - v22;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v221 = &v214 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v214 - v25;
  v240 = a6;
  v229 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v214 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v14[10];
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v219 = &v214 - v31;
  v32 = sub_1CF9E64A8();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = (&v214 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(a11 + 8);
  v237 = a11;
  if (v37(v242, a11, v34) != 2 || (v38 = *(v12[2] + 64), *v36 = v38, (*(v33 + 104))(v36, *MEMORY[0x1E69E8020], v32), v39 = v38, LOBYTE(v38) = sub_1CF9E64D8(), result = (*(v33 + 8))(v36, v32), (v38 & 1) != 0))
  {
    v224 = v19;
    v41 = v236;
    v246 = sub_1CF65C654();
    v42 = v41[13];
    v43 = (*(a9 + 8))(v42, a9);
    v245 = sub_1CF65C654();
    v44 = *(a9 + 16);
    v227 = v42;
    v226 = a9 + 16;
    v236 = v44;
    v45 = (v44)(v42, a9);
    MEMORY[0x1EEE9AC00](v45);
    v46 = v240;
    v47 = v242;
    *(&v214 - 10) = v240;
    *(&v214 - 9) = v47;
    *(&v214 - 8) = v238;
    *(&v214 - 7) = a9;
    v228 = a9;
    v48 = v237;
    *(&v214 - 6) = a10;
    *(&v214 - 5) = v48;
    *(&v214 - 4) = v235;
    *(&v214 - 3) = v49;
    v235 = v49;
    *(&v214 - 2) = v241;
    v50 = v239;
    v225 = a10;
    v51 = sub_1CF2CE4A4(v239, v43, v45, 1, sub_1CF77E74C, (&v214 - 12), v46, a10);
    v216 = 0;

    (*(v229 + 16))(v29, v50, v46);
    v52 = v231;
    v53 = swift_dynamicCast();
    v54 = *(v230 + 56);
    if (v53)
    {
      v54(v26, 0, 1, v52);
      v55 = v219;
      sub_1CEFE4E00(v26, v219, type metadata accessor for VFSItem);
      v56 = v220;
      sub_1CEFCCBDC(v55 + *(v52 + 48), v220, &unk_1EC4BED30, &unk_1CFA00710);
      v57 = *(v217 + 48);
      v58 = v218;
      if (v57(v56, 1, v218) == 1)
      {
        v59 = sub_1CF9E5A58();
        v60 = v221;
        (*(*(v59 - 8) + 56))(v221, 1, 1, v59);
        v61 = v57(v56, 1, v58);
        v62 = v228;
        v63 = v227;
        if (v61 != 1)
        {
          sub_1CEFCCC44(v56, &unk_1EC4BED30, &unk_1CFA00710);
        }
      }

      else
      {
        v60 = v221;
        sub_1CEFE55D0(v56, v221, &unk_1EC4BE310, qword_1CF9FCBE0);
        v62 = v228;
        v63 = v227;
      }

      v64 = sub_1CF9E5A58();
      v65 = *(v64 - 8);
      v66 = 0;
      if ((*(v65 + 48))(v60, 1, v64) != 1)
      {
        v66 = sub_1CF9E5928();
        (*(v65 + 8))(v60, v64);
      }

      [v51 setFileURL_];

      sub_1CF007CB8(v55, type metadata accessor for VFSItem);
    }

    else
    {
      v54(v26, 1, 1, v52);
      sub_1CEFCCC44(v26, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v62 = v228;
      v63 = v227;
    }

    v67 = v225;
    v68 = v232;
    v69 = v240;
    (*(v225 + 112))(v240, v225);
    v70 = *v68;
    (*(v233 + 8))(v68, v224);
    [v51 setFileID_];
    (*(v67 + 80))(&v246, v69, v67);
    v71 = v247;
    v72 = sub_1CEFE7394(v246, v247);
    v74 = v73;
    v71, v73, v75, v76, v77, v78, v79, v80;
    if (v74)
    {
      if (v72 == 46 && v74 == 0xE100000000000000)
      {
        0xE100000000000000, v81, v82, v83, v84, v85, v86, v87;
LABEL_18:
        [v51 setFileSystemFlags_];
        goto LABEL_19;
      }

      v88 = sub_1CF9E8048();
      v74, v89, v90, v91, v92, v93, v94, v95;
      if (v88)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    v96 = v63;
    v97 = v62;
    if ((v234 & 1) == 0)
    {
      v98 = v216;
      sub_1CF763B18(v51, v222 | 1, v241, v242, v238, v62, v237);
      if (v98)
      {
        v99 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v100 = v98;
        v101 = sub_1CF9E6108();
        v102 = sub_1CF9E72B8();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          *v103 = 138412290;
          swift_getErrorValue();
          v105 = Error.prettyDescription.getter(v243, v244);
          *(v103 + 4) = v105;
          *v104 = v105;
          _os_log_impl(&dword_1CEFC7000, v101, v102, "cannot decorate item: %@", v103, 0xCu);
          sub_1CEFCCC44(v104, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v104, -1, -1);
          MEMORY[0x1D386CDC0](v103, -1, -1);
        }

        else
        {
        }

        (*(v214 + 8))(v223, v215);
      }
    }

    v106 = [v51 itemID];
    v107 = [v106 identifier];

    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v108 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v110 = v109;
    v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v113 = v112;
    if (v108 == v111 && v110 == v112)
    {

      v110, v114, v115, v116, v117, v118, v119, v120;
      v113, v121, v122, v123, v124, v125, v126, v127;
    }

    else
    {
      v128 = sub_1CF9E8048();

      v110, v129, v130, v131, v132, v133, v134, v135;
      v113, v136, v137, v138, v139, v140, v141, v142;
      if ((v128 & 1) == 0)
      {
        return v51;
      }
    }

    v246 = sub_1CF65C654();
    v143 = (v236)(v96, v97);
    if (v143)
    {
      v144 = v143;
      v145 = [v143 nsDomain];

      v146 = [v145 displayName];
      v147 = v146;
      v148 = v146;
      if (!v146)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v150 = v149;
        v148 = sub_1CF9E6888();
        v150, v151, v152, v153, v154, v155, v156, v157;
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v159 = v158;
        v147 = sub_1CF9E6888();
        v159, v160, v161, v162, v163, v164, v165, v166;
      }

      v167 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v169 = v168;
      v170 = v146;
      v169, v171, v172, v173, v174, v175, v176, v177;
      v178 = (v169 >> 56) & 0xF;
      if ((v169 & 0x2000000000000000) == 0)
      {
        v178 = v167 & 0xFFFFFFFFFFFFLL;
      }

      if (v178)
      {
        goto LABEL_45;
      }
    }

    v246 = sub_1CF65C654();
    v179 = (v236)(v96, v97);
    if (!v179)
    {
      return v51;
    }

    v180 = v179;
    v181 = [v179 provider];

    if (!v181)
    {
      return v51;
    }

    v182 = [v181 descriptor];

    v183 = [v182 localizedName];
    v147 = v183;
    v148 = v183;
    if (!v183)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v185 = v184;
      v148 = sub_1CF9E6888();
      v185, v186, v187, v188, v189, v190, v191, v192;
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v194 = v193;
      v147 = sub_1CF9E6888();
      v194, v195, v196, v197, v198, v199, v200, v201;
    }

    v202 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v204 = v203;
    v205 = v183;
    v204, v206, v207, v208, v209, v210, v211, v212;
    v213 = (v204 >> 56) & 0xF;
    if ((v204 & 0x2000000000000000) == 0)
    {
      v213 = v202 & 0xFFFFFFFFFFFFLL;
    }

    if (!v213)
    {

      goto LABEL_46;
    }

LABEL_45:
    [v51 setFp:v148 displayName:?];

    [v51 setFilename_];
LABEL_46:

    return v51;
  }

  __break(1u);
  return result;
}

void *sub_1CF76CA3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12 == 2 && v11 == 0)
  {
    v22 = MEMORY[0x1E6967258];
LABEL_14:
    v21 = *v22;
    goto LABEL_15;
  }

  if (v12 == 2 && v11 == 1)
  {
    v22 = MEMORY[0x1E6967280];
    goto LABEL_14;
  }

  if (*(a2 + 16))
  {
    v18 = a3;
    v19 = sub_1CF7BF2C0(*a1, v12);
    a3 = v18;
    if (v20)
    {
      v21 = *(*(a2 + 56) + 8 * v19);
LABEL_15:
      v23 = v21;
      return v21;
    }
  }

  v25 = *(*(a3 + 16) + 16);
  v27 = v11;
  v28 = v12;
  v26 = *(*v25 + 160);

  v26(&v29, &v27, a4, a6, a10);
  if (v10)
  {

    return 0;
  }

  else
  {

    return v29;
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF76CB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v18 = *v11;
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a7;
  v28[5] = a8;
  v28[6] = a9;
  v28[7] = a10;
  v28[8] = a11;
  v29 = v11;
  v30 = a3;
  v31 = a4;
  v19 = sub_1CF4FDC40(sub_1CF7960A8, v28, a5, *(v18 + 88), MEMORY[0x1E69E73E0], a9, MEMORY[0x1E69E7410], a8);
  sub_1CF769068(v19, a2 | 1, a4, a6, a7, a8, a10);
  if (v12)
  {
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  return v19;
}

void sub_1CF76CC84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(a2 + 16) + 40);
  v13 = a3;
  v11 = *(*v10 + 280);

  v12 = v11(&v13, v9, v7, v8);

  if (!v4)
  {
  }
}

void sub_1CF76CD54(void *a1@<X0>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = *a3;
  v12 = *(a3 + 8);
  v19 = *a3;
  v20 = v12;
  v13 = *(v9 + 8);

  sub_1CF68DDB0(&v19, v10, v8, v13, __src);
  if (v5)
  {
  }

  else
  {

    memcpy(v17, __src, sizeof(v17));
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CEFF755C() == 1)
    {
      v14 = 1;
    }

    else
    {
      sub_1CEFCCC44(v17, &unk_1EC4BFC20, &unk_1CFA0A290);
      if (v11)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == 2;
      }

      if (v15 || (v14 = 1, __dst[137] <= 6u) && ((1 << __dst[137]) & 0x5C) != 0)
      {
        sub_1CEFE505C(a3, a4, type metadata accessor for VFSItem);
        v14 = 0;
      }
    }

    v16 = type metadata accessor for VFSItem(0);
    (*(*(v16 - 8) + 56))(a4, v14, 1, v16);
  }
}

uint64_t sub_1CF76CEF8(uint64_t a1, int a2, unint64_t a3, void (*a4)(void), void *a5)
{
  v191 = a4;
  v192 = a5;
  v184 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v183[-v7];
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v185 = &v183[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v183[-v12];
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CEFD09A0(a3);
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();

  sub_1CEFD0A98(a3);
  v17 = os_log_type_enabled(v15, v16);
  v193 = a3;
  if (v17)
  {
    v188 = v9;
    v189 = v8;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v194 = v19;
    *v18 = 136446466;
    v20 = swift_beginAccess();
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v23 = NSFileProviderItemIdentifier.description.getter(v21);
      v25 = v24;
      sub_1CEFD0994(v21, v22, 1);
    }

    else
    {
      v196[1] = *(a1 + 32);
      v197 = v22;
      v23 = VFSItemID.description.getter(v20);
      v25 = v26;
    }

    v27 = sub_1CEFD0DF0(v23, v25, &v194);
    v25, v28, v29, v30, v31, v32, v33, v34;
    *(v18 + 4) = v27;
    *(v18 + 12) = 2082;
    a3 = v193;
    v35 = sub_1CEFD11AC(v193);
    v37 = v36;
    v38 = sub_1CEFD0DF0(v35, v36, &v194);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v18 + 14) = v38;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "resolving URL for %{public}s for %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v19, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);

    v9 = v188;
    v8 = v189;
  }

  else
  {
  }

  v46 = *(v9 + 8);
  (v46)(v13, v8);
  swift_beginAccess();
  v47 = *(a1 + 32);
  v48 = *(a1 + 40);
  if (*(a1 + 41) != 1)
  {
    if (!v47 && v48 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v49 = v46;
  v50 = qword_1EDEA34B0;
  v51 = v47;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;
  v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v62 = v52;
  v63 = v55;
  if (v62 != v56 || v54 != v55)
  {
    v80 = sub_1CF9E8048();
    v54, v81, v82, v83, v84, v85, v86, v87;
    v63, v88, v89, v90, v91, v92, v93, v94;
    sub_1CEFD0994(v47, v48, 1);
    v46 = v49;
    if (v80)
    {
      goto LABEL_15;
    }

LABEL_19:
    v188 = v9;
    v189 = v8;
    v95 = v190;
    v96 = v190[2];
    v97 = swift_allocObject();
    v98 = v192;
    v97[2] = v191;
    v97[3] = v98;
    v97[4] = v95;
    v97[5] = a1;
    v99 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    v192 = [v99 init];
    v100 = swift_allocObject();
    v100[2] = sub_1CF7969DC;
    v100[3] = v97;
    v100[4] = a3;
    sub_1CEFD09A0(a3);

    sub_1CEFD09A0(a3);

    v101 = fpfs_current_or_default_log();
    v102 = v185;
    sub_1CF9E6128();
    sub_1CEFD09A0(a3);

    sub_1CEFD09A0(a3);
    v103 = a3;
    v104 = sub_1CF9E6108();
    v105 = sub_1CF9E7298();
    if (os_log_type_enabled(v104, v105))
    {
      v187 = v46;
      v190 = v100;
      v191 = v96;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = v107;
      v196[0] = v107;
      *v106 = 136315906;
      v109 = *(a1 + 32);
      v110 = *(a1 + 40);
      if (*(a1 + 41))
      {
        v111 = NSFileProviderItemIdentifier.description.getter(v109);
        v113 = v112;
        sub_1CEFD0994(v109, v110, 1);
      }

      else
      {
        v194 = *(a1 + 32);
        v195 = v110;
        v111 = VFSItemID.description.getter(v107);
        v113 = v114;
      }

      v115 = sub_1CEFD0DF0(v111, v113, v196);
      v113, v116, v117, v118, v119, v120, v121, v122;
      *(v106 + 4) = v115;
      *(v106 + 12) = 2080;
      *(v106 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v196);
      *(v106 + 22) = 2080;
      v123 = v193;
      v124 = sub_1CEFD11AC(v193);
      v126 = v125;
      sub_1CEFD0A98(v123);
      sub_1CEFD0A98(v123);
      v127 = sub_1CEFD0DF0(v124, v126, v196);
      v126, v128, v129, v130, v131, v132, v133, v134;
      *(v106 + 24) = v127;
      *(v106 + 32) = 2048;
      *(v106 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v104, v105, "Lookup itemID %s with behavior %s request %s iteration %ld", v106, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v108, -1, -1);
      MEMORY[0x1D386CDC0](v106, -1, -1);

      (v187)(v185, v189);
      v100 = v190;
      v96 = v191;
    }

    else
    {
      sub_1CEFD0A98(v103);
      sub_1CEFD0A98(v103);

      (v46)(v102, v189);
    }

    v135 = *(a1 + 32);
    v136 = *(a1 + 40);
    v137 = v192;
    if (*(a1 + 41))
    {
      v138 = qword_1EDEA34B0;
      v139 = v135;
      if (v138 != -1)
      {
        swift_once();
      }

      v140 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v142 = v141;
      v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v150 = v140;
      v151 = v143;
      if (v150 == v144 && v142 == v143)
      {
        v142, v143, v144, v145, v146, v147, v148, v149;
        v151, v152, v153, v154, v155, v156, v157, v158;
        sub_1CEFD0994(v135, v136, 1);
        v159 = v193;
LABEL_33:
        sub_1CF90CAC8(v159, sub_1CF796A0C, v100);
LABEL_39:

        sub_1CEFD0A98(v159);
      }

      v160 = sub_1CF9E8048();
      v142, v161, v162, v163, v164, v165, v166, v167;
      v151, v168, v169, v170, v171, v172, v173, v174;
      sub_1CEFD0994(v135, v136, 1);
      v159 = v193;
      if (v160)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v159 = v193;
      if (!v135 && v136 == 2)
      {
        goto LABEL_33;
      }
    }

    if (((v159 >> 58) & 0x3C | (v159 >> 1) & 3) == 0x1E)
    {
      v175 = *((v159 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v176 = v175;
    }

    else
    {
      v177 = swift_allocObject();
      *(v177 + 16) = v159;
      v176 = v177 | 0x7000000000000004;
      v175 = v159;
    }

    sub_1CEFD09A0(v175);
    v178 = swift_allocObject();
    *(v178 + 16) = sub_1CF796A0C;
    *(v178 + 24) = v100;
    *(v178 + 32) = v96;
    *(v178 + 40) = 1;
    *(v178 + 48) = v159;
    *(v178 + 56) = a1;
    v179 = v184 & 1;
    *(v178 + 64) = v184 & 1;
    *(v178 + 72) = v137;
    *(v178 + 80) = 0;
    v180 = swift_allocObject();
    *(v180 + 16) = a1;
    *(v180 + 24) = v96;
    *(v180 + 32) = v179;
    *(v180 + 33) = 0;
    *(v180 + 40) = sub_1CF796A90;
    *(v180 + 48) = v178;
    *(v180 + 56) = v176;
    v181 = swift_allocObject();
    *(v181 + 16) = sub_1CF796A90;
    *(v181 + 24) = v178;
    swift_retain_n();

    sub_1CEFD09A0(v193);

    v182 = v137;
    sub_1CEFD09A0(v176);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v181, sub_1CF796A9C, v180);

    v159 = v193;

    sub_1CEFD0A98(v176);
    goto LABEL_39;
  }

  v54, v55, v56, v57, v58, v59, v60, v61;
  v63, v64, v65, v66, v67, v68, v69, v70;
  sub_1CEFD0994(v47, v48, 1);
LABEL_15:
  type metadata accessor for VFSFileTree(0);
  v71 = swift_dynamicCastClassUnconditional();

  v72 = objc_sync_enter(v71);
  if (v72)
  {
    MEMORY[0x1EEE9AC00](v72);
    *&v183[-16] = v71;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v183[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v73 = v71[20];

  v74 = objc_sync_exit(v71);
  if (v74)
  {
    MEMORY[0x1EEE9AC00](v74);
    *&v183[-16] = v71;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v183[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v75 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v76 = sub_1CF9E5A58();
  v77 = v73 + v75;
  v78 = v187;
  (*(*(v76 - 8) + 16))(v187, v77, v76);

  swift_storeEnumTagMultiPayload();
  v191(v78);
  return sub_1CEFCCC44(v78, &unk_1EC4C5270, &unk_1CFA01BC0);
}

uint64_t sub_1CF76DAB8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v17 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v17 - v14;
  sub_1CEFCCBDC(a1, v12, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v15 = *v12;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1CEFE4E00(v12, v9, type metadata accessor for VFSItem);
    sub_1CF76DCB4(v9, v15);
    sub_1CF007CB8(v9, type metadata accessor for VFSItem);
  }

  a2(v15);
  return sub_1CEFCCC44(v15, &unk_1EC4C5270, &unk_1CFA01BC0);
}

uint64_t sub_1CF76DCB4@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFE505C(a1, v14, type metadata accessor for VFSItem);
  type metadata accessor for VFSFileTree(0);
  v15 = swift_dynamicCastClassUnconditional();

  v16 = objc_sync_enter(v15);
  if (v16)
  {
LABEL_9:
    MEMORY[0x1EEE9AC00](v16);
    *(&v22 - 2) = v15;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v22 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v17 = objc_sync_exit(v15);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v22 - 2) = v15;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v22 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1CF007CB8(v14, type metadata accessor for VFSItem);
    v20 = *(v9 + 32);
    v20(v11, v7, v8);
    v20(a3, v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  v18 = sub_1CF75D884();
  v19 = FPItemNotFoundError();

  if (!v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CF007CB8(v14, type metadata accessor for VFSItem);
  *a3 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF76E058(uint64_t a1, void *a2, unint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v123 = a5;
  v124 = a4;
  v116 = a2;
  v110 = sub_1CF9E53C8();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v8);
  v111 = (&v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v121 = (&v103 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v126 = &v103 - v13;
  v14 = type metadata accessor for VFSItem(0);
  v127 = *(v14 - 8);
  v128 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v103 - v20;
  v114 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  v25 = sub_1CF9E6118();
  v125 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v112 = *(v17 + 16);
  v113 = v17 + 16;
  v112(v24, a1, v16);
  sub_1CEFD09A0(a3);
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  sub_1CEFD0A98(a3);
  v119 = v30;
  v31 = os_log_type_enabled(v29, v30);
  v117 = v17;
  v118 = v16;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v130 = v106;
    *v32 = 136446466;
    v104 = v29;
    v33 = sub_1CF9E5928();
    v34 = [v33 fp_shortDescription];
    v107 = v8;
    v35 = v34;

    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v105 = v25;
    v37 = a1;
    v39 = v38;

    v40 = *(v17 + 8);
    v40(v24, v16);
    v41 = sub_1CEFD0DF0(v36, v39, &v130);
    v42 = v39;
    a1 = v37;
    v42, v43, v44, v45, v46, v47, v48, v49;
    *(v32 + 4) = v41;
    *(v32 + 12) = 2082;
    v50 = sub_1CEFD11AC(a3);
    v52 = v51;
    v53 = sub_1CEFD0DF0(v50, v51, &v130);
    v52, v54, v55, v56, v57, v58, v59, v60;
    *(v32 + 14) = v53;
    v61 = v104;
    _os_log_impl(&dword_1CEFC7000, v104, v119, "create fault at %{public}s for %{public}s", v32, 0x16u);
    v62 = v106;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v62, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    (*(v125 + 8))(v27, v105);
  }

  else
  {

    v40 = *(v17 + 8);
    v40(v24, v16);
    (*(v125 + 8))(v27, v25);
  }

  v63 = v126;
  v64 = v129;
  sub_1CF010CE0(a1, 0, 1, 0, v126);
  v66 = v127;
  v65 = v128;
  if ((*(v127 + 48))(v63, 1, v128) != 1)
  {
    v74 = v120;
    sub_1CEFE4E00(v63, v120, type metadata accessor for VFSItem);
    v75 = v121;
    sub_1CEFE505C(v74, v121, type metadata accessor for VFSItem);
    (*(v66 + 56))(v75, 0, 1, v65);
    swift_storeEnumTagMultiPayload();
    v124(v75);
    sub_1CEFCCC44(v75, &unk_1EC4BF310, &unk_1CF9FDB30);
    return sub_1CF007CB8(v74, type metadata accessor for VFSItem);
  }

  sub_1CEFCCC44(v63, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v127 = a3;
  v67 = sub_1CF90C94C(a3);
  if (v67)
  {
    v68 = v67;
    if ([v67 shouldFailCoordinationIfDownloadRequired])
    {
      v131[0] = 1;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v69 = v108;
      v70 = v110;
      sub_1CF9E57D8();
      v71 = sub_1CF9E53A8();
      (*(v109 + 8))(v69, v70);
      v72 = v121;
      *v121 = v71;
      swift_storeEnumTagMultiPayload();
      v124(v72);

      return sub_1CEFCCC44(v72, &unk_1EC4BF310, &unk_1CF9FDB30);
    }
  }

  v128 = v40;
  sub_1CF9E5988();
  type metadata accessor for VFSFileTree(0);
  v76 = swift_dynamicCastClassUnconditional();

  v77 = objc_sync_enter(v76);
  if (v77)
  {
    goto LABEL_19;
  }

  v78 = v76[20];

  v79 = objc_sync_exit(v76);
  if (v79)
  {
    MEMORY[0x1EEE9AC00](v79);
    *(&v103 - 2) = v76;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v103 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v80 = *(v78 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v81 = v122;
  v82 = sub_1CF517830(v80);
  v80, v83, v84, v85, v86, v87, v88, v89;
  if ((v82 & 1) == 0)
  {
    v76 = sub_1CF9E5928();
    v101 = FPItemNotFoundErrorAtURL();

    if (v101)
    {
      v102 = v111;
      *v111 = v101;
      swift_storeEnumTagMultiPayload();
      v124(v102);
      sub_1CEFCCC44(v102, &unk_1EC4BF310, &unk_1CF9FDB30);
      v100 = v118;
      v99 = v81;
      return v128(v99, v100);
    }

    __break(1u);
LABEL_19:
    MEMORY[0x1EEE9AC00](v77);
    *(&v103 - 2) = v76;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v103 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v90 = v115;
  v91 = v118;
  v112(v115, a1, v118);
  v92 = v117;
  v93 = (*(v117 + 80) + 48) & ~*(v117 + 80);
  v94 = (v114 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  v96 = v123;
  *(v95 + 2) = v124;
  *(v95 + 3) = v96;
  v97 = v127;
  *(v95 + 4) = v127;
  *(v95 + 5) = v64;
  (*(v92 + 32))(&v95[v93], v90, v91);
  v98 = v116;
  *&v95[v94] = v116;
  sub_1CEFD09A0(v97);

  sub_1CF76E058(v81, v98, v97, sub_1CF7965E8, v95);

  v99 = v81;
  v100 = v91;
  return v128(v99, v100);
}

char *sub_1CF76EB10(void *a1, void (*a2)(void **), uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v169 = a7;
  v156 = a6;
  v172 = a4;
  v180 = a2;
  v181 = a3;
  v179 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v168 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v178 = &v148 - v11;
  v166 = sub_1CF9E6068();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v159 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v173 = &v148 - v16;
  v160 = type metadata accessor for Signpost(0);
  v161 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v167 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v148 - v19;
  v162 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v176 = &v148 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v155 = &v148 - v24;
  v25 = sub_1CF9E63D8();
  v170 = *(v25 - 8);
  v171 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v154 = &v148 - v28;
  v182 = sub_1CF9E6448();
  v175 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v158 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v174 = &v148 - v31;
  v153 = sub_1CF9E5A58();
  v152 = *(v153 - 8);
  v32 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v33 = type metadata accessor for VFSItem(0);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v177 = (&v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v148 - v40);
  sub_1CEFCCBDC(v179, &v148 - v40, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *v41;
    *v38 = *v41;
    swift_storeEnumTagMultiPayload();
    v43 = v42;
    v180(v38);

    return sub_1CEFCCC44(v38, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  v150 = a5;
  v45 = v180;
  v44 = v181;
  if ((*(v34 + 48))(v41, 1, v33) == 1)
  {
    (*(v34 + 56))(v38, 1, 1, v33);
    swift_storeEnumTagMultiPayload();
    v45(v38);
    return sub_1CEFCCC44(v38, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  sub_1CEFE4E00(v41, v177, type metadata accessor for VFSItem);
  if (((v172 >> 58) & 0x3C | (v172 >> 1) & 3) == 2)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
    v149 = (*(swift_projectBox() + *(v47 + 80)) >> 21) & 1;
  }

  else
  {
    v149 = 0;
  }

  v48 = v171;
  v49 = v44;
  v50 = v150;
  v181 = *(v150 + 16);
  v51 = *v177;
  LODWORD(v180) = *(v177 + 8);
  v52 = v152;
  v53 = v153;
  (*(v152 + 16))(&v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v156, v153);
  v54 = (*(v52 + 80) + 40) & ~*(v52 + 80);
  v55 = swift_allocObject();
  v55[2] = v45;
  v55[3] = v49;
  v55[4] = v50;
  v56 = *(v52 + 32);
  v179 = v55;
  v56(v55 + v54, &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v53);

  qos_class_self();
  v57 = v155;
  sub_1CF9E63B8();
  v58 = v170;
  v59 = *(v170 + 48);
  if (v59(v57, 1, v48) == 1)
  {
    (*(v58 + 104))(v154, *MEMORY[0x1E69E7FA0], v48);
    if (v59(v57, 1, v48) != 1)
    {
      sub_1CEFCCC44(v57, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v58 + 32))(v154, v57, v48);
  }

  v60 = v174;
  sub_1CF9E6428();
  v61 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v61 setCancellable_];
  v62 = swift_allocObject();
  v63 = v181;
  swift_weakInit();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  *(v65 + 16) = v62;
  *(v65 + 24) = v64;
  *(v65 + 32) = v51;
  *(v65 + 40) = v180;
  v186 = sub_1CF481424;
  v187 = v65;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v184 = sub_1CEFCA444;
  v185 = &block_descriptor_836;
  v66 = _Block_copy(&aBlock);

  sub_1CF03C63C(sub_1CF481424, v65);

  [v61 setCancellationHandler_];
  _Block_release(v66);

  v67 = v175;
  v68 = v158;
  v69 = v60;
  v70 = v182;
  (*(v175 + 16))(v158, v69, v182);
  v71 = (*(v67 + 80) + 80) & ~*(v67 + 80);
  v72 = swift_allocObject();
  v73 = v179;
  *(v72 + 16) = sub_1CF79668C;
  *(v72 + 24) = v73;
  *(v72 + 32) = v63;
  *(v72 + 40) = v51;
  *(v72 + 48) = v180;
  v74 = v172;
  v75 = v149;
  *(v72 + 56) = v172;
  *(v72 + 64) = v75;
  *(v72 + 72) = v61;
  v76 = *(v67 + 32);
  v157 = v72;
  v76(v72 + v71, v68, v70);
  v77 = swift_allocObject();
  *(v77 + 16) = sub_1CF79668C;
  *(v77 + 24) = v73;
  v180 = v77;
  swift_retain_n();

  sub_1CEFD09A0(v74);
  v156 = v61;
  v172 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v78 = qword_1EDEBBE40;
  v79 = v165;
  v80 = v173;
  v81 = v166;
  (*(v165 + 7))(v173, 1, 1, v166);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v82 = sub_1CF9E7988();
  v84 = v83;
  MEMORY[0x1D3868CC0](v82);
  v84, v85, v86, v87, v88, v89, v90, v91;
  v92 = *(&aBlock + 1);
  v158 = aBlock;
  v93 = v80;
  v94 = v159;
  sub_1CEFCCBDC(v93, v159, &unk_1EC4BED20, &unk_1CFA00700);
  v95 = *(v79 + 6);
  v96 = v95(v94, 1, v81);
  v97 = v164;
  if (v96 == 1)
  {
    v98 = v78;
    sub_1CF9E6048();
    if (v95(v94, 1, v81) != 1)
    {
      sub_1CEFCCC44(v94, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v79 + 4))(v164, v94, v81);
  }

  v99 = v176;
  (*(v79 + 2))(v176, v97, v81);
  v100 = v160;
  *(v99 + *(v160 + 20)) = v78;
  v101 = v99 + *(v100 + 24);
  *v101 = "DB queue wait";
  *(v101 + 8) = 13;
  *(v101 + 16) = 2;
  v102 = v78;
  v103 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1CF9FA450;
  *(v104 + 56) = MEMORY[0x1E69E6158];
  *(v104 + 64) = sub_1CEFD51C4();
  *(v104 + 32) = v158;
  *(v104 + 40) = v92;
  sub_1CF9E6028(v103, &dword_1CEFC7000, v102, "DB queue wait", 13, 2, v99, "%s", 2);
  v104, v105, v106, v107, v108, v109, v110, v111;
  (*(v79 + 1))(v97, v81);
  sub_1CEFCCC44(v173, &unk_1EC4BED20, &unk_1CFA00700);
  v166 = *(v181 + 168);
  v173 = *(v181 + 64);
  (*(v67 + 56))(v178, 1, 1, v182);
  v112 = v163;
  sub_1CEFE505C(v99, v163, type metadata accessor for Signpost);
  v113 = (*(v161 + 80) + 16) & ~*(v161 + 80);
  v114 = (v162 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  sub_1CEFE4E00(v112, v115 + v113, type metadata accessor for Signpost);
  v116 = (v115 + v114);
  v165 = sub_1CF4814BC;
  v117 = v180;
  *v116 = sub_1CF4814BC;
  v116[1] = v117;
  v118 = v167;
  sub_1CEFE505C(v99, v167, type metadata accessor for Signpost);
  v119 = (v114 + 23) & 0xFFFFFFFFFFFFFFF8;
  v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
  v121 = (v120 + 25) & 0xFFFFFFFFFFFFFFF8;
  v122 = (v121 + 23) & 0xFFFFFFFFFFFFFFF8;
  v123 = swift_allocObject();
  sub_1CEFE4E00(v118, v123 + v113, type metadata accessor for Signpost);
  v124 = (v123 + v114);
  *v124 = sub_1CF045408;
  v124[1] = 0;
  v125 = v180;
  *(v123 + v119) = v181;
  v126 = v123 + v120;
  v127 = v182;
  *v126 = "materialize(_:request:options:qos:completion:)";
  *(v126 + 8) = 46;
  *(v126 + 16) = 2;
  v128 = (v123 + v121);
  v129 = v175;
  *v128 = v165;
  v128[1] = v125;
  v130 = (v123 + v122);
  v131 = v157;
  *v130 = sub_1CF481430;
  v130[1] = v131;
  v132 = swift_allocObject();
  v132[2] = sub_1CF75C120;
  v132[3] = v115;
  v133 = v166;
  v132[4] = v166;
  swift_retain_n();

  v181 = v115;

  v134 = fpfs_current_log();
  v135 = *(v133 + 16);
  v136 = v168;
  sub_1CEFCCBDC(v178, v168, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v129 + 48))(v136, 1, v127) == 1)
  {
    sub_1CEFCCC44(v136, &unk_1EC4BE370, qword_1CFA01B30);
    v137 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v138 = v151;
    sub_1CF9E6438();
    (*(v129 + 8))(v136, v127);
    v137 = sub_1CF9E63C8();
    (*(v170 + 8))(v138, v171);
  }

  v139 = swift_allocObject();
  v139[2] = v134;
  v139[3] = sub_1CF4858EC;
  v139[4] = v123;
  v186 = sub_1CF2BA17C;
  v187 = v139;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v184 = sub_1CEFCA444;
  v185 = &block_descriptor_830;
  v140 = _Block_copy(&aBlock);
  v141 = v134;

  v186 = sub_1CF2BA180;
  v187 = v132;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v184 = sub_1CEFCA444;
  v185 = &block_descriptor_833;
  v142 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v135, v173, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v137, v140, v142);
  _Block_release(v142);
  _Block_release(v140);

  sub_1CEFCCC44(v178, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CF007CB8(v176, type metadata accessor for Signpost);
  v143 = v172;
  v144 = fpfs_adopt_log();

  (*(v129 + 8))(v174, v182);
  v145 = v169;
  result = [v169 totalUnitCount];
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    [v145 setTotalUnitCount_];
    v146 = v145;
    v147 = v156;
    [v146 addChild:v156 withPendingUnitCount:1];

    return sub_1CF007CB8(v177, type metadata accessor for VFSItem);
  }

  return result;
}

uint64_t sub_1CF76FE98(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  if (a1)
  {
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v16 = a1;
    a2(v9);
    v17 = &unk_1EC4BF310;
    v18 = &unk_1CF9FDB30;
    v19 = v9;
  }

  else
  {
    v22[1] = a3;
    v23 = a2;
    v20 = type metadata accessor for VFSItem(0);
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();

    sub_1CF264F9C(1, 0, 2129920, v12);
    sub_1CEFCCC44(v15, &unk_1EC4BEC00, &unk_1CF9FCB60);

    sub_1CEFE55D0(v12, v15, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v15, v9, &unk_1EC4BEC00, &unk_1CF9FCB60);
    swift_storeEnumTagMultiPayload();
    v23(v9);
    sub_1CEFCCC44(v9, &unk_1EC4BF310, &unk_1CF9FDB30);
    v19 = v15;
    v17 = &unk_1EC4BEC00;
    v18 = &unk_1CF9FCB60;
  }

  return sub_1CEFCCC44(v19, v17, v18);
}

double sub_1CF770194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 56);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  swift_unknownObjectRetain();

  sub_1CF01001C(0, "registerNewProxy(_:completionHandler:)", 38, 2, sub_1CF796AD0, v9);

  return result;
}

double sub_1CF77025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 64);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  swift_unknownObjectRetain();

  sub_1CF01001C(0, "registerNewProxy(_:completionHandler:)", 38, 2, sub_1CF796594, v9);

  return result;
}

void sub_1CF770324(uint64_t a1, void (*a2)(void *), void (*a3)(void *), uint64_t a4)
{
  v28 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v4 = type metadata accessor for VFSItem(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v7;
  v8 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  sub_1CEFCCBDC(v31, &v26 - v14, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v17 = sub_1CF9E50D8();
    (*(v10 + 8))(v12, v9);
    v32(v17);

    return;
  }

  v16 = v30;
  if ((*(v30 + 48))(v15, 1, v4) == 1)
  {
    goto LABEL_4;
  }

  v18 = v29;
  sub_1CEFE4E00(v15, v29, type metadata accessor for VFSItem);
  v20 = v27;
  v19 = v28;
  sub_1CEFE505C(v18, v27, type metadata accessor for VFSItem);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  sub_1CEFE4E00(v20, v22 + v21, type metadata accessor for VFSItem);
  v23 = (v22 + ((v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v32;
  v24 = v33;
  *v23 = v32;
  v23[1] = v24;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v25, v24, sub_1CF77ED00, v22);

  sub_1CF007CB8(v18, type metadata accessor for VFSItem);
}

void sub_1CF77074C(uint64_t a1, void (*a2)(void *), void (*a3)(void *), uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v39 = a2;
  v40 = a3;
  v38 = a1;
  v32 = *a4;
  v36 = *(v32 + 80);
  v37 = *(v36 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v31 - v9;
  v10 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1CF9E5268();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1CEFCCBDC(v38, &v31 - v16, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v19 = sub_1CF9E50D8();
    (*(v12 + 8))(v14, v11);
    v39(v19);

    return;
  }

  v18 = v37;
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    goto LABEL_4;
  }

  v20 = v35;
  sub_1CEFE4E00(v17, v35, type metadata accessor for VFSItem);
  v21 = v31;
  sub_1CEFE505C(v20, v31, type metadata accessor for VFSItem);
  v22 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v24 = v32;
  v23[2] = *(v32 + 96);
  v25 = *(v24 + 104);
  v27 = v33;
  v26 = v34;
  v23[3] = v25;
  v23[4] = v27;
  v23[5] = v26;
  v23[6] = a4;
  sub_1CEFE4E00(v21, v23 + v22, type metadata accessor for VFSItem);
  v28 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v39;
  v29 = v40;
  *v28 = v39;
  v28[1] = v29;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v30, v29, sub_1CF77E72C, v23);

  sub_1CF007CB8(v20, type metadata accessor for VFSItem);
}

void sub_1CF770BC0(uint64_t a1, void (*a2)(void *), void (*a3)(void *), uint64_t a4)
{
  v28 = a4;
  v31 = a2;
  v32 = a3;
  v5 = type metadata accessor for VFSItem(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v26 - v8;
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  sub_1CEFCCBDC(a1, &v26 - v14, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    v33 = 66;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v17 = sub_1CF9E53A8();
    (*(v10 + 8))(v12, v9);
    v31(v17);

    return;
  }

  v16 = v30;
  if ((*(v30 + 48))(v15, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  v18 = v29;
  sub_1CEFE4E00(v15, v29, type metadata accessor for VFSItem);
  v20 = v27;
  v19 = v28;
  sub_1CEFE505C(v18, v27, type metadata accessor for VFSItem);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  sub_1CEFE4E00(v20, v22 + v21, type metadata accessor for VFSItem);
  v23 = (v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v31;
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v25, v24, sub_1CF77F090, v22);

  sub_1CF007CB8(v18, type metadata accessor for VFSItem);
}

void sub_1CF770FA4(uint64_t a1, void (*a2)(void *), void (*a3)(void *), uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v32 = *a4;
  v7 = *(v32 + 80);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v31 - v10;
  v11 = sub_1CF9E53C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1CEFCCBDC(v37, &v31 - v16, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    v40 = 66;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v19 = sub_1CF9E53A8();
    (*(v12 + 8))(v14, v11);
    v38(v19);

    return;
  }

  v18 = v36;
  if ((*(v36 + 48))(v17, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  v20 = v35;
  sub_1CEFE4E00(v17, v35, type metadata accessor for VFSItem);
  v21 = v31;
  sub_1CEFE505C(v20, v31, type metadata accessor for VFSItem);
  v22 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v24 = v32;
  v23[2] = *(v32 + 96);
  v25 = *(v24 + 104);
  v27 = v33;
  v26 = v34;
  v23[3] = v25;
  v23[4] = v27;
  v23[5] = v26;
  v23[6] = a4;
  sub_1CEFE4E00(v21, v23 + v22, type metadata accessor for VFSItem);
  v28 = (v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v38;
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v30, v29, sub_1CF77EAF0, v23);

  sub_1CF007CB8(v20, type metadata accessor for VFSItem);
}

void sub_1CF7713D8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, SEL *a6)
{
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v12 = type metadata accessor for VFSItem(0);
  v13 = sub_1CF77E690(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v14 = sub_1CF77E690(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v15 = sub_1CF76BB00(a3, 0, 1, v11, v10, v12, v9, v13, &off_1F4BF8588, v14, v8);
  v11, v16, v17, v18, v19, v20, v21, v22;
  v23 = [objc_opt_self() *a6];
  a4();
}

void sub_1CF77153C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v11 = *a2;
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v16 = *(v11 + 80);
  v17 = sub_1CF77E690(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v18 = sub_1CF76BB00(a3, 0, 1, v15, v14, v16, v12, a6, a7, v17, v13);
  v15, v19, v20, v21, v22, v23, v24, v25;
  v26 = [objc_opt_self() *a8];
  a4();
}

void sub_1CF77167C(uint64_t a1, id a2, void (*a3)(id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  swift_getErrorValue();
  v36 = v34;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v33, v34);
  sub_1CEFE9EB8(&v35, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v32, v6, v8, isUniquelyReferenced_nonNull_native);
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = [a2 domain];
  if (!v18)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
    v18 = sub_1CF9E6888();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = [a2 code];
  v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v30 = sub_1CF9E6618();

  v31 = [v29 initWithDomain:v18 code:v28 userInfo:v30];

  a3(v31);
}

void sub_1CF771878(void *a1, NSObject *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1;
  if (objc_sync_enter(a2))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a2);
  }

  sub_1CF771964((a3 + 16), a4, a1);
  if (objc_sync_exit(a2))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a2);
  }

  dispatch_group_leave(a2);
}

void sub_1CF771964(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E57E8();
  swift_beginAccess();
  v6 = *a1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *a1 = v6;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1CF7722E8(v6);
    *a1 = v6;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFF8) + 8 * a2;
    v9 = *(v8 + 0x20);
    *(v8 + 32) = v5;
    swift_endAccess();

    return;
  }

  __break(1u);
}

void sub_1CF771A28(void *a1, uint64_t a2, void (*a3)(id))
{
  v6 = [a1 userInfo];
  v7 = sub_1CF9E6638();

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  swift_beginAccess();
  v11 = *(a2 + 16);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  *&v35 = v11;
  sub_1CEFE9EB8(&v35, v34);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v34, v8, v10, isUniquelyReferenced_nonNull_native);
  v10, v13, v14, v15, v16, v17, v18, v19;
  v20 = [a1 domain];
  if (!v20)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;
    v20 = sub_1CF9E6888();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  v30 = [a1 code];
  v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v32 = sub_1CF9E6618();

  v33 = [v31 initWithDomain:v20 code:v30 userInfo:v32];

  a3(v33);
}

uint64_t sub_1CF771C04(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *))
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  (a3)(v4, a2);
  return sub_1CEFCCC44(v4, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF771C5C(uint64_t a1, void (*a2)(_OWORD *, uint64_t))
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  a2(v3, a1);
  return sub_1CEFCCC44(v3, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF771CBC(uint64_t a1, void (*a2)(_BYTE *, void))
{
  sub_1CF1A91AC(a1, v4);
  a2(v4, 0);
  return sub_1CEFCCC44(v4, &qword_1EC4C0700, &qword_1CFA05B10);
}

unint64_t sub_1CF771D28(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v125[0] = 0;
        v125[1] = 0xE000000000000000;
        v77 = a3;
        sub_1CF796430(a1, a2, a3, 2u);
        sub_1CF9E7948();
        if (a1)
        {
          v78 = 0x6465727265666564;
        }

        else
        {
          v78 = 0;
        }

        if (a1)
        {
          v79 = 0xE900000000000020;
        }

        else
        {
          v79 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v78, v79);
        v79, v80, v81, v82, v83, v84, v85, v86;
        MEMORY[0x1D3868CC0](0x7473207465736572, 0xEE00203A6D616572);
        v87 = sub_1CF953A9C(a2, v77 & 1);
        v89 = v88;
        MEMORY[0x1D3868CC0](v87);
        v61 = v89;
        goto LABEL_32;
      }

      sub_1CF796430(a1, a2, a3, 1u);
      sub_1CF9E7948();
      0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
      v125[0] = 0xD000000000000012;
      v125[1] = 0x80000001CFA5A480;
    }

    else
    {
      if (!a3)
      {
        sub_1CF796430(a1, a2, 0, 0);
        sub_1CF9E7948();
        0xE000000000000000, v108, v109, v110, v111, v112, v113, v114;
        v115 = NSFileProviderItemIdentifier.description.getter(a1);
        v117 = v116;
        MEMORY[0x1D3868CC0](v115);

        v117, v118, v119, v120, v121, v122, v123, v124;
        return 0xD00000000000001ALL;
      }

      sub_1CF796430(a1, a2, a3, 0);

      if (a2)
      {
        strcpy(v125, "item changed ");
        HIWORD(v125[1]) = -4864;
        v63 = a2;
        v64 = [a2 description];
        v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v67 = v66;

        MEMORY[0x1D3868CC0](v65, v67);
        v67, v68, v69, v70, v71, v72, v73, v74;

        return v125[0];
      }

      strcpy(v125, "item changed ");
      HIWORD(v125[1]) = -4864;
    }

    goto LABEL_20;
  }

  if (a4 <= 4u)
  {
    if (a4 != 3)
    {
      sub_1CF796430(a1, a2, a3, 4u);
      sub_1CF9E7948();
      0xE000000000000000, v90, v91, v92, v93, v94, v95, v96;
      v125[0] = 0xD000000000000013;
      v125[1] = 0x80000001CFA5A3C0;
      v97 = sub_1CF9E7F98();
      v99 = v98;
      MEMORY[0x1D3868CC0](v97);
      v99, v100, v101, v102, v103, v104, v105, v106;
      MEMORY[0x1D3868CC0](0x72757020746F6720, 0xEB00000000646567);
      return v125[0];
    }

    v6 = a3;
    sub_1CF796430(a1, a2, a3, 3u);
    sub_1CF9E7948();
    0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
    strcpy(v125, "rescan below ");
    HIWORD(v125[1]) = -4864;
    v14 = NSFileProviderItemIdentifier.description.getter(a1);
    v16 = v15;
    MEMORY[0x1D3868CC0](v14);
    v16, v17, v18, v19, v20, v21, v22, v23;
    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v24 = sub_1CF953A9C(a2, v6 & 1);
    goto LABEL_21;
  }

  if (a4 == 5)
  {
    v33 = a2;
    sub_1CF796430(a1, a2, a3, 5u);
    sub_1CF9E7948();
    0xE000000000000000, v34, v35, v36, v37, v38, v39, v40;
    v125[0] = 0xD000000000000012;
    v125[1] = 0x80000001CFA5A3A0;
    v41 = 6516580;
    v42 = 0xE700000000000000;
    v43 = 0x6B6E696C6D7973;
    if (v33 != 2)
    {
      v43 = 0x7361696C61;
      v42 = 0xE500000000000000;
    }

    if (v33)
    {
      v41 = 7498084;
    }

    if (v33 <= 1u)
    {
      v44 = v41;
    }

    else
    {
      v44 = v43;
    }

    if (v33 <= 1u)
    {
      v45 = 0xE300000000000000;
    }

    else
    {
      v45 = v42;
    }

    MEMORY[0x1D3868CC0](v44, v45);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
LABEL_20:
    v24 = NSFileProviderItemIdentifier.description.getter(a1);
LABEL_21:
    v53 = v25;
    MEMORY[0x1D3868CC0](v24);

    v61 = v53;
LABEL_32:
    v61, v54, v55, v56, v57, v58, v59, v60;
    return v125[0];
  }

  if (a3 | a2 | a1)
  {
    if (a1 != 1 || a3 | a2)
    {
      sub_1CF796430(2, 0, a3, 6u);
      return 0xD000000000000013;
    }

    else
    {
      sub_1CF796430(1, 0, a3, 6u);
      return 0xD000000000000030;
    }
  }

  else
  {
    sub_1CF796430(a1, 0, a3, 6u);
    return 0xD000000000000035;
  }
}

uint64_t sub_1CF7722E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1CF9E7818();
  }

  return sub_1CF9E79B8();
}

double sub_1CF77239C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  return result;
}

void sub_1CF772420(void *a1, uint64_t a2, void **a3, uint64_t a4, char a5)
{
  v7 = *a3;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA450;
  *(v11 + 32) = v7;
  *(v11 + 40) = 256;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5 & 1;
  *(v11 + 147) = 11;
  v12 = v7;
  sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v11, v10, v8, v9);
  v11, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1CF772508(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CF9FA450;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 41) = 0;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5 & 1;
  *(v12 + 147) = 11;
  sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v12, v11, v9, v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1CF7725F0(void *a1, int a2, uint64_t a3, void *a4, void (*a5)(id), void *a6)
{
  v371 = a3;
  v372 = a2;
  v10 = sub_1CF9E63A8();
  v351 = *(v10 - 8);
  v352 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v350 = &v349 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E53C8();
  v369 = *(v12 - 8);
  v370 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v368 = &v349 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v364 = *(v14 - 8);
  v365 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v360 = (&v349 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v361 = &v349 - v17;
  v18 = sub_1CF9E6498();
  v362 = *(v18 - 8);
  v363 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v359 = &v349 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v349 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v349 - v24;
  v26 = sub_1CF9E63D8();
  v357 = *(v26 - 8);
  v358 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v349 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v353 = &v349 - v30;
  v31 = sub_1CF9E6448();
  v366 = *(v31 - 8);
  v367 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v349 = &v349 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v354 = &v349 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v355 = &v349 - v36;
  v37 = sub_1CF9E73D8();
  isa = v37[-1].isa;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v349 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v373 = &v349 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CF9E5268();
  v43 = *(v42 - 8);
  v375 = v42;
  v376 = v43;
  MEMORY[0x1EEE9AC00](v42);
  v374 = &v349 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = swift_allocObject();
  v45[2] = a4;
  v45[3] = a5;
  v378 = a5;
  v380 = v45;
  v45[4] = a6;
  v417[0] = a1;
  v377 = a4;
  v379 = a6;

  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v398 = v414;
    v399 = v415;
    v394 = v411;
    v395 = v412;
    v396 = *v413;
    v397 = *&v413[16];
    v392 = aBlock;
    v393 = v410;
    v406 = v414;
    v407 = v415;
    v403 = v411;
    v404 = v412;
    v405[0] = *v413;
    v405[1] = *&v413[16];
    v400 = v416;
    v408 = v416;
    v401 = aBlock;
    v402 = v410;
    if (sub_1CF2B971C(&v401))
    {
      sub_1CEFCCC44(&v392, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    nullsub_1();
    v64 = v63;
    v65 = *v63;
    v66 = *(v63 + 8);
    v67 = *(v63 + 112);

    v68 = sub_1CEFCCC44(v64 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v66 != 2 || v65)
    {
      if (v66 != 2 || v65 != 1)
      {
        *&v383 = 0x2F73662F70665F5FLL;
        *(&v383 + 1) = 0xE800000000000000;
        v381 = v65;
        v382 = v66;
        v121 = VFSItemID.description.getter(v68);
        v123 = v122;
        MEMORY[0x1D3868CC0](v121);
        v123, v124, v125, v126, v127, v128, v129, v130;
        v131 = *(&v383 + 1);
        v82 = sub_1CF9E6888();
        v131, v132, v133, v134, v135, v136, v137, v138;
        v83 = v377;
        if (v67)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v69 = MEMORY[0x1E6967280];
    }

    else
    {
      v69 = MEMORY[0x1E6967258];
    }

    v82 = *v69;
    v83 = v377;
    if (v67)
    {
LABEL_22:
      v84 = v67;
LABEL_54:
      v139 = v67;
      sub_1CF77167C(v84, v83, v378);

      v118 = v417[0];
      goto LABEL_73;
    }

LABEL_53:
    v84 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:

  *&v392 = a1;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v405 + 9) = *&v413[9];
    v404 = v412;
    v405[0] = *v413;
    v402 = v410;
    v403 = v411;
    v401 = aBlock;
    if (!v413[24])
    {
      v70 = *(&v405[0] + 1);
      v71 = *&v405[0];
      v72 = *(&v404 + 1);
      v73 = v404;
      v74 = *(&v403 + 1);
      v75 = v403;
      v76 = *(&v402 + 1);
      v77 = v402;
      v78 = *(&v401 + 1);
      v376 = v401;

      sub_1CF1D56D0(v78, v77, v76, v75, v74, v73, v72, v71);
      if (v70)
      {
        v79 = v70;
        v81 = v376;
        v80 = v377;
      }

      else
      {
        v119 = objc_opt_self();
        v81 = v376;
        v79 = [v119 fileProviderErrorForNonExistentItemWithIdentifier_];
        v80 = v377;
      }

      v120 = v70;
      sub_1CF77167C(v79, v80, v378);

      v118 = v392;
      goto LABEL_73;
    }

    sub_1CEFCCC44(&v401, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v383 = a1;
  v48 = a1;
  if (swift_dynamicCast())
  {
    v398 = v414;
    v399 = v415;
    v394 = v411;
    v395 = v412;
    v396 = *v413;
    v397 = *&v413[16];
    v392 = aBlock;
    v393 = v410;
    v406 = v414;
    v407 = v415;
    v403 = v411;
    v404 = v412;
    v405[0] = *v413;
    v405[1] = *&v413[16];
    v400 = v416;
    v408 = v416;
    v401 = aBlock;
    v402 = v410;
    v49 = sub_1CF2B971C(&v401);
    switch(v49)
    {
      case 5:
        nullsub_1();
        v92 = v383;
LABEL_30:

        v94 = v378;
        v95 = v377;
        goto LABEL_31;
      case 3:
        nullsub_1();
        v86 = *v85;
        v87 = *(v85 + 8);
        sub_1CEFCCC44(&v392, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v372)
        {
          LODWORD(v381) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v88 = v368;
          v89 = v370;
          sub_1CF9E57D8();
          v90 = sub_1CF9E53A8();
          v91 = v369;
LABEL_48:
          (*(v91 + 8))(v88, v89);
          sub_1CF77167C(v90, v377, v378);

          v118 = v383;
LABEL_73:

          return;
        }

        LODWORD(v376) = v87;
        v377 = v86;
        v140 = v371;
        v141 = *(*(*(v371 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v142 = swift_dynamicCastClassUnconditional();
        v143 = swift_allocObject();
        v144 = v380;
        *(v143 + 16) = sub_1CF7969FC;
        *(v143 + 24) = v144;
        v378 = v143;
        *(v143 + 32) = v140;
        v374 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v375 = v142;
        v145 = *(v142 + 216);
        v381 = MEMORY[0x1E69E7CC0];
        v373 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

        v379 = v141;

        v146 = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v147 = sub_1CF9E73E8();

        (*(isa + 1))(v39, v37);
        qos_class_self();
        sub_1CF9E63B8();
        v149 = v357;
        v148 = v358;
        v150 = *(v357 + 48);
        if (v150(v22, 1, v358) == 1)
        {
          (*(v149 + 104))(v28, *MEMORY[0x1E69E7FA0], v148);
          if (v150(v22, 1, v148) != 1)
          {
            sub_1CEFCCC44(v22, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v149 + 32))(v28, v22, v148);
        }

        ObjectType = swift_getObjectType();
        v166 = v354;
        sub_1CF9E6428();
        v167 = swift_allocObject();
        v168 = v377;
        v169 = v378;
        *(v167 + 16) = v375;
        *(v167 + 24) = v168;
        *(v167 + 32) = v376;
        *(v167 + 40) = 0u;
        *(v167 + 56) = 0u;
        *(v167 + 72) = 0u;
        *(v167 + 88) = 0u;
        *(v167 + 104) = 0u;
        *(v167 + 120) = 0u;
        *(v167 + 136) = 0;
        *(v167 + 144) = 1;
        *(v167 + 152) = v147;
        *(v167 + 160) = sub_1CF796A00;
        *(v167 + 168) = v169;

        swift_unknownObjectRetain();

        goto LABEL_67;
      case 1:
        nullsub_1();
        v51 = *v50;
        v52 = *(v50 + 8);
        v53 = *(v50 + 24);
        v54 = *(v50 + 48);
        v55 = *(v50 + 56);

        sub_1CF480620(v54, v55);
        v53, v56, v57, v58, v59, v60, v61, v62;
        if (v372)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
          v88 = v374;
          v89 = v375;
          sub_1CF9E57D8();
          v90 = sub_1CF9E50D8();
          v91 = v376;
          goto LABEL_48;
        }

        LODWORD(v376) = v52;
        v377 = v51;
        v151 = v371;
        v152 = *(*(*(v371 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v153 = swift_dynamicCastClassUnconditional();
        v154 = swift_allocObject();
        v155 = v380;
        *(v154 + 16) = sub_1CF7969FC;
        *(v154 + 24) = v155;
        v378 = v154;
        *(v154 + 32) = v151;
        v374 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v375 = v153;
        v156 = *(v153 + 216);
        v381 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v379 = v152;

        v157 = v156;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v158 = sub_1CF9E73E8();

        (*(isa + 1))(v39, v37);
        qos_class_self();
        sub_1CF9E63B8();
        v160 = v357;
        v159 = v358;
        v161 = *(v357 + 48);
        if (v161(v25, 1, v358) == 1)
        {
          (*(v160 + 104))(v353, *MEMORY[0x1E69E7FA0], v159);
          if (v161(v25, 1, v159) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v160 + 32))(v353, v25, v159);
        }

        ObjectType = swift_getObjectType();
        v166 = v355;
        sub_1CF9E6428();
        v167 = swift_allocObject();
        v170 = v377;
        v171 = v378;
        *(v167 + 16) = v375;
        *(v167 + 24) = v170;
        *(v167 + 32) = v376;
        *(v167 + 40) = 0u;
        *(v167 + 56) = 0u;
        *(v167 + 72) = 0u;
        *(v167 + 88) = 0u;
        *(v167 + 104) = 0u;
        *(v167 + 120) = 0u;
        *(v167 + 136) = 0;
        *(v167 + 144) = 1;
        *(v167 + 152) = v158;
        *(v167 + 160) = sub_1CF796A04;
        *(v167 + 168) = v171;

        swift_unknownObjectRetain();

LABEL_67:
        sub_1CEFD5828(0, v166, sub_1CF72A328, v167, ObjectType);

        (*(v366 + 8))(v166, v367);
        v172 = v359;
        sub_1CF9E6478();
        v173 = v361;
        sub_1CEFD5B64(v361);
        v174 = v360;
        sub_1CEFD5BD8(v360);
        MEMORY[0x1D3869770](v172, v173, v174, ObjectType);
        v175 = *(v364 + 8);
        v176 = v174;
        v177 = v365;
        v175(v176, v365);
        v175(v173, v177);
        (*(v362 + 8))(v172, v363);
        sub_1CF9E7448();

        swift_unknownObjectRelease();
        v118 = v383;
        goto LABEL_73;
    }

    sub_1CEFCCC44(&v392, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v392 = a1;
  v93 = a1;
  if (swift_dynamicCast())
  {
    *(v405 + 9) = *&v413[9];
    v403 = v411;
    v404 = v412;
    v405[0] = *v413;
    v401 = aBlock;
    v402 = v410;
    if (v413[24] == 5)
    {
      v92 = v392;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v401, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v102 = a1;
  if (swift_dynamicCast())
  {
    if (v401 <= 2u)
    {
      v94 = v378;
      v95 = v377;
      if (v401 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v96 = v374;
      v97 = v375;
      sub_1CF9E57D8();
      v98 = sub_1CF9E50D8();
      (*(v376 + 8))(v96, v97);
      v99 = v98;
      v100 = v95;
      v101 = v94;
LABEL_33:
      sub_1CF77167C(v99, v100, v101);

      return;
    }

    v94 = v378;
    v95 = v377;
    if (v401 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v111 = v374;
    v112 = v375;
    sub_1CF9E57D8();
    v113 = sub_1CF9E50D8();
    (*(v376 + 8))(v111, v112);
    v114 = v113;
    v115 = v95;
    v116 = v94;
LABEL_72:
    sub_1CF77167C(v114, v115, v116);

    v118 = aBlock;
    goto LABEL_73;
  }

  *&v401 = a1;
  v103 = a1;
  if (swift_dynamicCast())
  {
    if ((v410 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v410);
      LODWORD(v392) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v162 = v368;
      v163 = v370;
      sub_1CF9E57D8();
      v164 = sub_1CF9E53A8();
      (*(v369 + 8))(v162, v163);
      sub_1CF77167C(v164, v377, v378);

      v118 = v401;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v401 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1CF9FA450;
    *(v104 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v104 + 40) = v105;
    v106 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v107 = FPLocv();

    v108 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v110 = v109;

    *(v104 + 72) = MEMORY[0x1E69E6158];
    *(v104 + 48) = v108;
    *(v104 + 56) = v110;
    sub_1CF4E04E8(v104);
    swift_setDeallocating();
    sub_1CEFCCC44(v104 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v98 = aBlock;
    goto LABEL_84;
  }

  *&v383 = a1;
  v117 = a1;
  if (swift_dynamicCast())
  {
    v398 = v414;
    v399 = v415;
    v394 = v411;
    v395 = v412;
    v396 = *v413;
    v397 = *&v413[16];
    v392 = aBlock;
    v393 = v410;
    v406 = v414;
    v407 = v415;
    v403 = v411;
    v404 = v412;
    v405[0] = *v413;
    v405[1] = *&v413[16];
    v400 = v416;
    v408 = v416;
    v401 = aBlock;
    v402 = v410;
    if (sub_1CF2B971C(&v401) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v392, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v178 = a1;
  if (swift_dynamicCast())
  {
    v114 = FPDomainUnavailableError();
    if (!v114)
    {
LABEL_120:

      __break(1u);
LABEL_121:
      MEMORY[0x1EEE9AC00](v278);
      *(&v349 - 2) = v37;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v349 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v113 = v114;
    v115 = v377;
    v116 = v378;
    goto LABEL_72;
  }

  v381 = a1;
  v179 = a1;
  if (swift_dynamicCast())
  {
    v398 = v414;
    v399 = v415;
    v394 = v411;
    v395 = v412;
    v396 = *v413;
    v397 = *&v413[16];
    v392 = aBlock;
    v393 = v410;
    v406 = v414;
    v407 = v415;
    v403 = v411;
    v404 = v412;
    v405[0] = *v413;
    v405[1] = *&v413[16];
    v400 = v416;
    v408 = v416;
    v401 = aBlock;
    v402 = v410;
    if (sub_1CF2B971C(&v401) == 10)
    {
      nullsub_1();
      v181 = *(v180 + 16);
      if (!v181)
      {
        LODWORD(v383) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v182 = v368;
        v183 = v370;
        sub_1CF9E57D8();
        v181 = sub_1CF9E53A8();
        (*(v369 + 8))(v182, v183);
      }

      v184 = v378;
      v185 = v377;
      v389 = v398;
      v390 = v399;
      v391 = v400;
      v385 = v394;
      v386 = v395;
      v387 = v396;
      v388 = v397;
      v383 = v392;
      v384 = v393;
      nullsub_1();
      v187 = *(v186 + 16);
      sub_1CF77167C(v181, v185, v184);
      sub_1CEFCCC44(&v392, &unk_1EC4BE320, &unk_1CFA08B50);

      v118 = v381;
      goto LABEL_73;
    }

    sub_1CEFCCC44(&v392, &unk_1EC4BE320, &unk_1CFA08B50);
    v189 = v381;
    goto LABEL_82;
  }

  *&v392 = a1;
  v188 = a1;
  if (swift_dynamicCast())
  {
    v403 = v411;
    v404 = v412;
    v405[0] = *v413;
    *(v405 + 9) = *&v413[9];
    v401 = aBlock;
    v402 = v410;
    sub_1CEFCCC44(&v401, &qword_1EC4BF270, &qword_1CFA01B70);
    v189 = v392;
LABEL_82:

LABEL_83:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v190 = v374;
    v191 = v375;
    sub_1CF9E57D8();
    v98 = sub_1CF9E50D8();
    (*(v376 + 8))(v190, v191);
LABEL_84:
    v99 = v98;
    v100 = v377;
    v101 = v378;
    goto LABEL_33;
  }

  *&aBlock = a1;
  v192 = a1;
  v193 = swift_dynamicCast();

  if (v193)
  {
    goto LABEL_83;
  }

  *&v401 = a1;
  v194 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, *(&aBlock + 1), v410, *(&v410 + 1), v411, v195, v196, v197);
    v189 = v401;
    goto LABEL_82;
  }

  *&v401 = a1;
  v198 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v410, SBYTE8(v410));
    v189 = v401;
    goto LABEL_82;
  }

  *&v401 = a1;
  v199 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    v189 = v401;
    goto LABEL_82;
  }

  v200 = sub_1CF9E57E8();
  v201 = [v200 userInfo];
  v202 = sub_1CF9E6638();

  v203 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v211 = v204;
  if (!*v202->tree)
  {
    v202, v204, v205, v206, v207, v208, v209, v210;
    v239 = v211;
LABEL_98:
    v239, v221, v222, v223, v224, v225, v226, v227;
    goto LABEL_99;
  }

  v212 = sub_1CEFE4328(v203, v204);
  v214 = v213;
  v211, v213, v215, v216, v217, v218, v219, v220;
  if ((v214 & 1) == 0)
  {
    v239 = v202;
    goto LABEL_98;
  }

  sub_1CEFD1104(*v202[1].tester + 32 * v212, &aBlock);
  v202, v228, v229, v230, v231, v232, v233, v234;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v235 = v401;
    v236 = v380;

    v237 = v200;
    v238 = v235;
    sub_1CF7725F0(v238, v372 & 1, v371, v237, sub_1CF7969FC, v236);

    return;
  }

LABEL_99:
  v240 = swift_allocObject();
  v241 = [v200 userInfo];
  v242 = sub_1CF9E6638();

  v243 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v251 = v244;
  if (!*v242->tree)
  {
    v242, v244, v245, v246, v247, v248, v249, v250;
    v286 = v251;
LABEL_115:
    v286, v260, v261, v262, v263, v264, v265, v266;
    goto LABEL_116;
  }

  v252 = sub_1CEFE4328(v243, v244);
  v37 = v253;
  v251, v253, v254, v255, v256, v257, v258, v259;
  if ((v37 & 1) == 0)
  {
    v286 = v242;
    goto LABEL_115;
  }

  sub_1CEFD1104(*v242[1].tester + 32 * v252, &aBlock);
  v242, v267, v268, v269, v270, v271, v272, v273;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();
    sub_1CF77167C(a1, v377, v378);

    return;
  }

  v240[2] = v401;
  v274 = dispatch_group_create();
  v275 = v240[2];
  if (v275 >> 62)
  {
    goto LABEL_118;
  }

  v276 = *((v275 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v276)
  {
    goto LABEL_124;
  }

  do
  {
    v277 = 0;
    while (1)
    {
      v37 = v274;
      v278 = objc_sync_enter(v37);
      if (v278)
      {
        goto LABEL_121;
      }

      swift_beginAccess();
      v279 = v240[2];
      if ((v279 & 0xC000000000000001) != 0)
      {
        v280 = MEMORY[0x1D3869C30](v277);
        goto LABEL_109;
      }

      if (v277 >= *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v280 = *(v279 + 8 * v277 + 32);
LABEL_109:
      v281 = v280;
      swift_endAccess();
      v282 = objc_sync_exit(v37);
      if (v282)
      {
        MEMORY[0x1EEE9AC00](v282);
        *(&v349 - 2) = v37;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v349 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v37);
      v283 = v37;
      swift_retain_n();
      v284 = v283;
      v285 = v281;
      sub_1CF7699E0(v285, v372 & 1, v371, v284, v240, v277);

      if (v276 == ++v277)
      {
        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_118:
    v287 = sub_1CF9E7818();
    if (v287 < 0)
    {
      __break(1u);
      goto LABEL_120;
    }

    v276 = v287;
  }

  while (v287);
LABEL_124:
  if (v372)
  {
    v288 = [v200 userInfo];
    v289 = sub_1CF9E6638();

    v290 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v292 = v291;
    swift_beginAccess();
    v293 = v240[2];
    *(&v410 + 1) = v376;
    *&aBlock = v293;
    sub_1CEFE9EB8(&aBlock, &v401);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v383 = v289;
    sub_1CF1D154C(&v401, v290, v292, isUniquelyReferenced_nonNull_native);
    v292, v295, v296, v297, v298, v299, v300, v301;
    v302 = [v200 domain];
    if (!v302)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v304 = v303;
      v302 = sub_1CF9E6888();
      v304, v305, v306, v307, v308, v309, v310, v311;
    }

    v312 = [v200 code];
    v313 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v314 = sub_1CF9E6618();

    v315 = [v313 initWithDomain:v302 code:v312 userInfo:v314];

    sub_1CF77167C(v315, v377, v378);
  }

  else
  {
    v316 = *(*(v371 + 16) + 64);
    v317 = swift_allocObject();
    v317[2] = v200;
    v317[3] = v240;
    v317[4] = sub_1CF7969FC;
    v317[5] = v380;

    v318 = v316;
    v379 = v200;

    v319 = fpfs_current_log();
    v378 = fpfs_adopt_log();
    v320 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v321;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v322 = sub_1CF9E7988();
    v324 = v323;
    MEMORY[0x1D3868CC0](v322);
    v324, v325, v326, v327, v328, v329, v330, v331;
    v332 = *(&aBlock + 1);
    sub_1CF9E6978();
    v332, v333, v334, v335, v336, v337, v338, v339;
    v340 = __fp_log_fork();

    *(v320 + 16) = v340;
    v341 = swift_allocObject();
    *(v341 + 16) = v319;
    *(v341 + 24) = v320;
    v376 = v320;
    *(v341 + 32) = v318;
    *(v341 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v341 + 48) = 48;
    *(v341 + 56) = 2;
    *(v341 + 64) = sub_1CF796ACC;
    *(v341 + 72) = v317;
    *&v411 = sub_1CF2B9F54;
    *(&v411 + 1) = v341;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v410 = sub_1CEFCA444;
    *(&v410 + 1) = &block_descriptor_239_0;
    v342 = _Block_copy(&aBlock);
    v375 = v318;
    v377 = v319;

    v343 = v349;
    sub_1CF9E63F8();
    *&v401 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v344 = v350;
    v345 = v352;
    sub_1CF9E77B8();
    v346 = v375;
    sub_1CF9E7308();
    _Block_release(v342);
    (*(v351 + 8))(v344, v345);
    (*(v366 + 8))(v343, v367);

    v347 = v378;
    v348 = fpfs_adopt_log();
  }
}