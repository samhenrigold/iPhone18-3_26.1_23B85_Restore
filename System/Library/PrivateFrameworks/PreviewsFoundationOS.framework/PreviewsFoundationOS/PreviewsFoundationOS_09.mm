uint64_t sub_25F271864(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CrashReport(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[1];
  v13 = a2[3];
  v63 = a2[2];
  v64 = v13;
  v14 = a2[1];
  v61 = *a2;
  v62 = v14;
  v15 = a2[3];
  v51[0] = v63;
  v51[1] = v15;
  v65 = *(a2 + 8);
  v52 = *(a2 + 8);
  v49 = v61;
  v50 = v12;
  sub_25F271E48(a3);
  v17 = v16;
  sub_25F278740(a4, v11, type metadata accessor for CrashReport);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_25F1D932C(v11, v20 + v18);
  v21 = v20 + v19;
  v22 = v64;
  *(v21 + 32) = v63;
  *(v21 + 48) = v22;
  *(v21 + 64) = v65;
  v23 = v62;
  *v21 = v61;
  *(v21 + 16) = v23;
  *(v20 + ((v19 + 79) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *&v55 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v55 + 1) = 132;
  v56 = 2;
  v57 = xmmword_25F3112D0;
  v58 = "resolveObfuscatedImagePaths(using:)";
  v59 = 35;
  v60 = 2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25F2788B4;
  *(v24 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A38, &qword_25F311470);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A40, &unk_25F311478);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v17;
  *(v25 + 104) = v26;
  *(v25 + 112) = sub_25F27896C;
  *(v25 + 120) = v24;
  *(v25 + 128) = 0u;
  *(v25 + 144) = 0u;
  sub_25F2787A8(&v61, &v49);

  v27 = sub_25F1C07A0(&v55);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = sub_25F278974;
  v28[5] = v27;
  v29 = *(v17 + 88);
  v34[4] = sub_25F278984;
  v34[5] = v28;
  swift_retain_n();
  os_unfair_lock_lock(v29 + 25);
  sub_25F208BF4(&v29[4], &v46);
  os_unfair_lock_unlock(v29 + 25);
  *(v45 + 10) = *(v48 + 10);
  v44[0] = v46;
  v44[1] = v47;
  v45[0] = v48[0];
  if (BYTE9(v48[1]) == 255)
  {
  }

  else
  {
    v49 = v46;
    v50 = v47;
    v51[0] = v48[0];
    *(v51 + 10) = *(v48 + 10);

    sub_25F1B7174(v44, v42, &qword_27FD54C28, &unk_25F30CD20);
    sub_25F2CC468(&v49, 0, 0, v27);

    sub_25F1AF698(v44, &qword_27FD54C28, &unk_25F30CD20);
  }

  v42[0] = v46;
  v42[1] = v47;
  v43[0] = v48[0];
  *(v43 + 10) = *(v48 + 10);
  sub_25F1AF698(v42, &qword_27FD54C28, &unk_25F30CD20);

  v30 = swift_allocObject();
  v34[1] = v34;
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = sub_25F27899C;
  v30[5] = v27;
  v31 = *(v17 + 88);
  v32 = MEMORY[0x28223BE20](v30);
  v34[-2] = sub_25F2789EC;
  v34[-1] = v32;
  swift_retain_n();
  os_unfair_lock_lock(v31 + 25);
  sub_25F209764(&v31[4], &v39);
  os_unfair_lock_unlock(v31 + 25);
  *(v38 + 10) = *(v41 + 10);
  v37[0] = v39;
  v37[1] = v40;
  v38[0] = v41[0];
  if (BYTE9(v41[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v41[1]) > 1u)
    {
      v53[0] = v39;
      v53[1] = v40;
      v54[0] = v41[0];
      *(v54 + 9) = *(v41 + 9);

      sub_25F2737AC(v53, sub_25F1C1170);
    }

    else
    {
      sub_25F1B7174(v37, v35, &qword_27FD54C28, &unk_25F30CD20);
    }

    sub_25F1AF698(v37, &qword_27FD54C28, &unk_25F30CD20);
  }

  v35[0] = v39;
  v35[1] = v40;
  v36[0] = v41[0];
  *(v36 + 10) = *(v41 + 10);
  sub_25F1AF698(v35, &qword_27FD54C28, &unk_25F30CD20);

  return v27;
}

void sub_25F271E48(unint64_t a1)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (!v7)
  {
    *&v44 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
    *(&v44 + 1) = 132;
    LOBYTE(v45[0]) = 2;
    *(v45 + 8) = xmmword_25F311310;
    *(&v45[1] + 1) = "resolvePath(with:)";
    *&v45[2] = 18;
    BYTE8(v45[2]) = 2;
    v66[0] = v6;
    v67[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A50, &qword_25F311488);
    swift_allocObject();
    sub_25F1C04D8(&v44);

    sub_25F1C0E30(v66);

    return;
  }

  if (v32 >> 62)
  {
    v8 = sub_25F30631C();
  }

  else
  {
    v8 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    *&v66[0] = MEMORY[0x277D84F90];
    sub_25F3060DC();
    if (v8 < 0)
    {
      __break(1u);

      os_unfair_lock_unlock(v2 + 25);
      __break(1u);

      os_unfair_lock_unlock(v41 + 1);
      __break(1u);
      return;
    }

    v31 = v6;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A58, &qword_25F311498);
    v11 = 0;
    v29 = v32 & 0xC000000000000001;
    v30 = v10;
    v28 = xmmword_25F3112E0;
    do
    {
      if (v29)
      {
        v12 = MEMORY[0x25F8D81E0](v11, v32);
      }

      else
      {
        v12 = *(v32 + 8 * v11 + 32);
      }

      v13 = v31;
      ++v11;
      v14 = sub_25F30546C();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = v12;
      v15[3] = v13;
      v15[4] = v7;
      *&v60 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
      *(&v60 + 1) = 132;
      v61 = 2;
      v62 = v28;
      v63 = "resolvePath(with:)";
      v64 = 18;
      v65 = 2;
      v16 = MEMORY[0x28223BE20](v15);
      *(&v28 - 6) = v5;
      *(&v28 - 5) = &unk_25F3114A0;
      *(&v28 - 4) = v16;
      *(&v28 - 3) = nullsub_2;
      *(&v28 - 2) = 0;

      sub_25F26D544(&v60, sub_25F278B28, (&v28 - 4));

      sub_25F1AF698(v5, &qword_27FD52B40, &qword_25F307EA0);
      sub_25F3060AC();
      sub_25F3060EC();
      sub_25F3060FC();
      sub_25F3060BC();
    }

    while (v8 != v11);
    v9 = *&v66[0];
  }

  *&v54 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v54 + 1) = 132;
  v55 = 2;
  v56 = xmmword_25F3112F0;
  v57 = "resolvePath(with:)";
  v58 = 18;
  v59 = 2;
  v17 = sub_25F2055A0(&v54, 0, v9);

  *&v48 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v48 + 1) = 132;
  v49 = 2;
  v50 = xmmword_25F311300;
  v51 = "resolvePath(with:)";
  v52 = 18;
  v53 = 2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_25F273530;
  *(v18 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A60, &qword_25F3114A8);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A68, &qword_25F3114B0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v17;
  *(v19 + 104) = v20;
  *(v19 + 112) = sub_25F278B38;
  *(v19 + 120) = v18;
  *(v19 + 128) = 0u;
  *(v19 + 144) = 0u;

  v21 = sub_25F1C04D8(&v48);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = sub_25F278B40;
  v22[5] = v21;
  v23 = *(v17 + 88);
  v24 = MEMORY[0x28223BE20](v22);
  *(&v28 - 2) = sub_25F278B50;
  *(&v28 - 1) = v24;
  swift_retain_n();
  os_unfair_lock_lock(v23 + 25);
  sub_25F278BB4(&v23[4], &v44);
  os_unfair_lock_unlock(v23 + 25);
  *(v43 + 10) = *(&v45[1] + 10);
  v42[0] = v44;
  v42[1] = v45[0];
  v43[0] = v45[1];
  v32 = &v28;
  if (BYTE9(v45[2]) == 255)
  {
  }

  else
  {
    v66[0] = v44;
    v66[1] = v45[0];
    *v67 = v45[1];
    *&v67[10] = *(&v45[1] + 10);

    sub_25F1B7174(v42, v40, &qword_27FD56A70, &qword_25F3114B8);
    sub_25F2CBECC(v66, 0, 0, v21);

    sub_25F1AF698(v42, &qword_27FD56A70, &qword_25F3114B8);
  }

  v40[0] = v44;
  v40[1] = v45[0];
  v41[0] = v45[1];
  *(v41 + 10) = *(&v45[1] + 10);
  sub_25F1AF698(v40, &qword_27FD56A70, &qword_25F3114B8);

  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = sub_25F278BD0;
  v25[5] = v21;
  v26 = *(v17 + 88);
  v27 = MEMORY[0x28223BE20](v25);
  *(&v28 - 2) = sub_25F278C20;
  *(&v28 - 1) = v27;
  swift_retain_n();
  os_unfair_lock_lock(v26 + 25);
  sub_25F2791B0(&v26[4], &v37);
  os_unfair_lock_unlock(v26 + 25);
  *(v36 + 10) = *(v39 + 10);
  v35[0] = v37;
  v35[1] = v38;
  v36[0] = v39[0];
  if (BYTE9(v39[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v39[1]) > 1u)
    {
      v46[0] = v37;
      v46[1] = v38;
      v47[0] = v39[0];
      *(v47 + 9) = *(v39 + 9);

      sub_25F2737AC(v46, sub_25F1C0E30);
    }

    else
    {
      sub_25F1B7174(v35, v33, &qword_27FD56A70, &qword_25F3114B8);
    }

    sub_25F1AF698(v35, &qword_27FD56A70, &qword_25F3114B8);
  }

  v33[0] = v37;
  v33[1] = v38;
  v34[0] = v39[0];
  *(v34 + 10) = *(v39 + 10);
  sub_25F1AF698(v33, &qword_27FD56A70, &qword_25F3114B8);
}

double sub_25F272678@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v35 = v13;
  if (qword_27FD52918 != -1)
  {
    swift_once();
  }

  v15 = sub_25F30479C();
  __swift_project_value_buffer(v15, qword_27FD571A8);
  sub_25F278740(a2, v12, type metadata accessor for CrashReport);
  sub_25F2787A8(a3, v36);

  v16 = sub_25F30477C();
  v17 = sub_25F3059FC();
  sub_25F278804(a3);

  if (os_log_type_enabled(v16, v17))
  {
    v34 = a4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36[0] = v19;
    *v18 = 136446722;
    v20 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
    v22 = v21;
    sub_25F1AF760(v12);
    v23 = sub_25F1C53AC(v20, v22, v36);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = *(a3 + 48);
    if (v24)
    {
      v25 = *(a3 + 40);
      v26 = v24;
    }

    else
    {
      v26 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = sub_25F1C53AC(v25, v26, v36);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v27 = v35;
    if (v14)
    {
      v29 = v35;
    }

    else
    {
      v29 = 7104878;
    }

    if (v14)
    {
      v30 = v14;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v31 = sub_25F1C53AC(v29, v30, v36);

    *(v18 + 24) = v31;
    _os_log_impl(&dword_25F1A2000, v16, v17, "[%{public}s] Resolved %s to %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v19, -1, -1);
    MEMORY[0x25F8D9510](v18, -1, -1);

    a4 = v34;
  }

  else
  {

    sub_25F1AF760(v12);
    v27 = v35;
  }

  *a5 = a4;
  a5[1] = v27;
  a5[2] = v14;

  return result;
}

uint64_t sub_25F272958@<X0>(uint64_t *a1@<X8>)
{
  result = CSArchitectureGetArchitectureForName();
  *a1 = result;
  return result;
}

void *sub_25F272988(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return CSArchitectureGetArchitectureForName();
  }

  type metadata accessor for _CSArchitecture(0);
  result = sub_25F305F6C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_25F272A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return CSSymbolicatorCreateWithPathAndArchitecture();
  }

  type metadata accessor for _CSTypeRef(0);
  result = sub_25F305F6C();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_25F272AF4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v75 = a4;
  v11 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v88[9] = *(a1 + 57);
  v14 = a1[3];
  v87 = a1[2];
  *v88 = v14;
  v15 = a1[1];
  v85 = *a1;
  v86 = v15;
  v17 = *(&v85 + 1);
  v16 = v85;
  v89 = a2;
  v18 = *a2;
  if (*(v18 + 16))
  {
    v19 = *(&v85 + 1);
    v20 = v85;
    v21 = sub_25F219518(v85, *(&v85 + 1));
    v16 = v20;
    v17 = v19;
    v6 = v5;
    if (v22)
    {
      v23 = (*(v18 + 56) + 80 * v21);
      v81 = *v23;
      v25 = v23[2];
      v24 = v23[3];
      v26 = *(v23 + 57);
      v82 = v23[1];
      v83 = v25;
      *(v84 + 9) = v26;
      v84[0] = v24;
      v27 = v23[3];
      *(a5 + 32) = v23[2];
      *(a5 + 48) = v27;
      *(a5 + 57) = *(v23 + 57);
      v28 = v23[1];
      *a5 = *v23;
      *(a5 + 16) = v28;
      return sub_25F1DF984(&v81, v76);
    }
  }

  v30 = *a3;
  if (!*(*a3 + 16) || (v74 = v16, v31 = sub_25F2192AC(v16), (v32 & 1) == 0))
  {
    v53 = a1[3];
    *(a5 + 32) = a1[2];
    *(a5 + 48) = v53;
    *(a5 + 57) = *(a1 + 57);
    v54 = a1[1];
    *a5 = *a1;
    *(a5 + 16) = v54;
    return sub_25F1DF984(&v85, &v81);
  }

  v33 = v6;
  v34 = *(*(v30 + 56) + 8 * v31);
  v35 = qword_27FD52918;

  if (v35 != -1)
  {
    swift_once();
  }

  v72 = v17;
  v36 = sub_25F30479C();
  __swift_project_value_buffer(v36, qword_27FD571A8);
  sub_25F278740(v75, v13, type metadata accessor for CrashReport);
  sub_25F1DF984(&v85, &v81);

  v37 = sub_25F30477C();
  v38 = sub_25F3059FC();
  sub_25F1DF9E0(&v85);

  v39 = os_log_type_enabled(v37, v38);
  v75 = v34;
  v73 = v33;
  if (v39)
  {
    LODWORD(v70) = v38;
    v71 = v37;
    v40 = 0xE90000000000003ELL;
    v41 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v81 = v69;
    *v41 = 136446722;
    v42 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
    v44 = v43;
    sub_25F1AF760(v13);
    v45 = sub_25F1C53AC(v42, v44, &v81);
    v46 = 0x6E776F6E6B6E753CLL;

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    if (*(&v86 + 1))
    {
      v47 = v86;
    }

    else
    {
      v47 = 0x6E776F6E6B6E753CLL;
    }

    if (*(&v86 + 1))
    {
      v48 = *(&v86 + 1);
    }

    else
    {
      v48 = 0xE90000000000003ELL;
    }

    v49 = sub_25F1C53AC(v47, v48, &v81);

    *(v41 + 14) = v49;
    *(v41 + 22) = 2080;
    v34 = v75;
    if (*(v75 + 80))
    {
      v46 = *(v75 + 72);
      v40 = *(v75 + 80);
    }

    v50 = sub_25F1C53AC(v46, v40, &v81);

    *(v41 + 24) = v50;
    v51 = v71;
    _os_log_impl(&dword_25F1A2000, v71, v70, "[%{public}s] Attempting to symbolicate %s in %s", v41, 0x20u);
    v52 = v69;
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v52, -1, -1);
    MEMORY[0x25F8D9510](v41, -1, -1);
  }

  else
  {

    sub_25F1AF760(v13);
  }

  v83 = v87;
  v84[0] = *v88;
  *(v84 + 9) = *&v88[9];
  v81 = v85;
  v82 = v86;
  v56 = sub_25F273048(v34);
  v58 = v57;
  v59 = v55;
  v61 = v60;
  v62 = *&v88[8];
  v63 = v88[24];
  v70 = *v88;
  v71 = *&v88[16];
  v78 = v85;
  v79 = v86;
  v80 = v87;
  if (v57 >= 2)
  {
    v69 = v55;
    sub_25F1DF984(&v85, &v81);

    v62 = v58;
LABEL_25:
    v64 = v71;
    if ((v61 & 1) == 0)
    {
      v64 = v69;
    }

    v63 &= v61;
    goto LABEL_28;
  }

  sub_25F1DF984(&v85, &v81);
  sub_25F27888C(v56, v58);
  if (v58 != 1)
  {
    v69 = v59;
    sub_25F27888C(v56, v58);
    v56 = v70;
    goto LABEL_25;
  }

  v56 = v70;
  v64 = v71;
LABEL_28:
  v65 = v63 & 1;
  v77 = v65;
  v81 = v78;
  v82 = v79;
  v83 = v80;
  *&v84[0] = v56;
  *(&v84[0] + 1) = v62;
  *&v84[1] = v64;
  BYTE8(v84[1]) = v65;
  sub_25F1DF984(&v81, v76);
  v66 = v89;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = *v66;
  *v66 = 0x8000000000000000;
  sub_25F21149C(&v81, v74, v72, isUniquelyReferenced_nonNull_native);
  *v66 = v76[0];

  v68 = v79;
  *a5 = v78;
  *(a5 + 16) = v68;
  *(a5 + 32) = v80;
  *(a5 + 48) = v56;
  *(a5 + 56) = v62;
  *(a5 + 64) = v64;
  *(a5 + 72) = v65;
  return result;
}

uint64_t sub_25F273048(uint64_t a1)
{
  v2 = *(v1 + 8);
  CSSymbolicatorGetSymbolOwner();
  if (CSIsNull())
  {
    return 0;
  }

  result = CSSymbolOwnerGetBaseAddress();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__CFADD__(result, v2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!(result + v2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  CSSymbolOwnerGetSymbolWithAddress();
  if (CSIsNull())
  {
    return 0;
  }

  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_25F2788A0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F273734;
  aBlock[3] = &block_descriptor_123;
  v7 = _Block_copy(aBlock);

  CSSymbolOwnerForEachStackFrameAtAddress();
  _Block_release(v7);
  swift_beginAccess();
  v8 = *(v4 + 16);
  swift_beginAccess();

  return v8;
}

uint64_t sub_25F273274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_25F273294, a2, 0);
}

uint64_t sub_25F273294()
{
  v1 = sub_25F23DA24();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_25F273348;

  return MEMORY[0x282200460](v0 + 16, v1, &type metadata for BuiltProductPathResolver.Cache);
}

uint64_t sub_25F273348()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_25F273474, v1, 0);
}

uint64_t sub_25F273474()
{
  v1 = sub_25F23E418(v0[6], v0[7], v0[2], v0[3]);
  v3 = v2;

  v0[10] = v1;
  v0[11] = v3;

  return MEMORY[0x2822009F8](sub_25F27350C, 0, 0);
}

uint64_t sub_25F273530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_25F2DE23C(*a1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_25F273590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = CSIsNull();
  if (result)
  {
    return result;
  }

  if (CSSourceInfoGetPath())
  {
    v10 = sub_25F304F8C();
    v11 = v9;
    if (v10 == 0xD000000000000014 && 0x800000025F319BB0 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_25F30659C() ^ 1;
    }

    swift_beginAccess();
    v13 = *(a5 + 24);
    if (v13)
    {
      if (*(a5 + 16) == 0xD000000000000014 && v13 == 0x800000025F319BB0)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if ((sub_25F30659C() & v12 & 1) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    swift_beginAccess();
    *(a5 + 16) = v10;
    *(a5 + 24) = v11;
    goto LABEL_14;
  }

LABEL_15:
  LineNumber = CSSourceInfoGetLineNumber();
  result = swift_beginAccess();
  if ((*(a6 + 24) & 1) != 0 || *(a6 + 16) <= 0 && LineNumber)
  {
    result = swift_beginAccess();
    *(a6 + 16) = LineNumber;
    *(a6 + 24) = 0;
  }

  return result;
}

uint64_t sub_25F273734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

void sub_25F2737AC(_OWORD *a1, void (*a2)(_OWORD *))
{
  v5 = *(v2 + 104);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  *(v5 + 16) = 1;
  os_unfair_lock_unlock((v5 + 24));
  if (v6 >= 2)
  {
    v7 = a1[1];
    v11[0] = *a1;
    v11[1] = v7;
    *v12 = a1[2];
    *&v12[9] = *(a1 + 41);
    v13 = 2;
    a2(v11);
    v8 = a1[1];
    v9[0] = *a1;
    v9[1] = v8;
    v10[0] = a1[2];
    *(v10 + 9) = *(a1 + 41);
    (*(*v6 + 192))(v9);
  }
}

uint64_t sub_25F273888(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v60 = a2;
  v61 = a5;
  v59 = a4;
  v63 = a3;
  v6 = sub_25F30490C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F30494C();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v10);
  v12 = (&v52 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569F8, &unk_25F311420);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v52 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v62 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v65 = &v52 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22);
  v64 = &v52 - v25;
  sub_25F1B7174(a1, v12, qword_27FD53BB8, &qword_25F311350);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25F1D932C(v12, v15);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *v15 = *v12;
LABEL_5:
    v27 = v65;
    swift_storeEnumTagMultiPayload();
    v28 = 0;
    goto LABEL_7;
  }

  v28 = 1;
  v27 = v65;
LABEL_7:
  (*(v17 + 56))(v15, v28, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v32 = v15;
    v33 = v64;
    sub_25F23F614(v32, v64, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1B7174(v33, v24, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1B7174(v24, v27, &qword_27FD53BB0, &unk_25F309BA0);
    v34 = v62;
    sub_25F1B7174(v24, v62, &qword_27FD53BB0, &unk_25F309BA0);
    v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v36 = swift_allocObject();
    v37 = v59;
    v38 = v61;
    *(v36 + 16) = v59;
    *(v36 + 24) = v38;
    sub_25F23F614(v24, v36 + v35, &qword_27FD53BB0, &unk_25F309BA0);
    v39 = v60;
    aBlock = v60;
    v68 = v63;
    swift_retain_n();
    if (ExecutionLane.isCurrentLane.getter())
    {
      v40 = v27;
    }

    else
    {
      if (v39)
      {
        if (v39 == 1)
        {
          sub_25F1F54F4();
          v41 = sub_25F305AAC();
          v71 = sub_25F278524;
          v72 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v69 = sub_25F1D8C38;
          v70 = &block_descriptor_70;
          v42 = _Block_copy(&aBlock);

          v43 = v53;
          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v44 = v54;
          v45 = v58;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v43, v44, v42);
          _Block_release(v42);

          (*(v57 + 8))(v44, v45);
          v46 = v43;
          v34 = v62;
          (*(v55 + 8))(v46, v56);
        }

        else
        {
          v71 = sub_25F278524;
          v72 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v69 = sub_25F1D8C38;
          v70 = &block_descriptor_67;
          v59 = _Block_copy(&aBlock);

          sub_25F2033CC(v39);
          v47 = v53;
          sub_25F30492C();
          v66 = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v48 = v54;
          v49 = v58;
          sub_25F305E5C();
          v50 = v59;
          MEMORY[0x25F8D7C70](0, v47, v48, v59);
          _Block_release(v50);
          sub_25F2033DC(v39);
          (*(v57 + 8))(v48, v49);
          (*(v55 + 8))(v47, v56);
        }

        v27 = v65;
        goto LABEL_18;
      }

      v40 = v34;
    }

    v37(v40);

LABEL_18:
    sub_25F1AF698(v34, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1AF698(v27, &qword_27FD53BB0, &unk_25F309BA0);
    v31 = v64;
    v29 = &qword_27FD53BB0;
    v30 = &unk_25F309BA0;
    return sub_25F1AF698(v31, v29, v30);
  }

  v29 = &qword_27FD569F8;
  v30 = &unk_25F311420;
  v31 = v15;
  return sub_25F1AF698(v31, v29, v30);
}

void sub_25F2740C4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v10 = *a1;
  v11 = sub_25F30490C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v36 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v19 != 1)
    {
      return;
    }

    v32 = v16;
    v33 = v15;
    v34 = v12;
    v35 = v11;
    v20 = v10;
  }

  else
  {
    v32 = v16;
    v33 = v15;
    v34 = v12;
    v35 = v11;
  }

  v44 = v19 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = v10;
  *(v21 + 40) = v44;
  aBlock = a2;
  v39 = a3;
  sub_25F1A7AB4(v10, v19);
  sub_25F1A7AB4(v10, v19);

  sub_25F1A7AB4(v10, v19);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1A7AE0(v10, v19);
    aBlock = v10;
    LOBYTE(v39) = v19 & 1;
    a4(&aBlock);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v31 = sub_25F305AAC();
        v42 = sub_25F27866C;
        v43 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_25F1D8C38;
        v41 = &block_descriptor_102;
        v30 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v22 = v35;
        v23 = v36;
        sub_25F305E5C();
        v25 = v30;
        v24 = v31;
        MEMORY[0x25F8D7C70](0, v18, v23, v30);
        _Block_release(v25);

        (*(v34 + 8))(v23, v22);
        (*(v32 + 8))(v18, v33);
      }

      else
      {
        v42 = sub_25F27866C;
        v43 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_25F1D8C38;
        v41 = &block_descriptor_99;
        v30 = _Block_copy(&aBlock);

        v31 = a3;
        sub_25F2033CC(a2);
        sub_25F30492C();
        v37 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v26 = v35;
        v27 = v36;
        sub_25F305E5C();
        v28 = v30;
        MEMORY[0x25F8D7C70](0, v18, v27, v30);
        _Block_release(v28);
        sub_25F2033DC(a2);
        (*(v34 + 8))(v27, v26);
        (*(v32 + 8))(v18, v33);
      }
    }

    else
    {
      aBlock = v10;
      LOBYTE(v39) = v19 & 1;
      a4(&aBlock);
    }

    sub_25F1A7AE0(v10, v19);
  }

  sub_25F1A7AE0(v10, v19);
  sub_25F1A7AE0(v10, v19);
}

void sub_25F274658(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v40 = a3;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = sub_25F30490C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v38 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F30494C();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v20 != 1)
    {
      return;
    }

    v39 = v19;
    v34 = v17;
    v35 = v16;
    v36 = v13;
    v37 = v12;
    v21 = v9;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v39 = v19;
    v34 = v17;
    v35 = v16;
    v36 = v13;
    v37 = v12;
  }

  v48 = v20 & 1;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  *(v22 + 32) = v9;
  *(v22 + 40) = v10;
  *(v22 + 48) = v11;
  *(v22 + 56) = v48;
  aBlock = a2;
  v43 = v40;
  sub_25F208938(v9, v10, v11, v20);
  sub_25F208938(v9, v10, v11, v20);

  sub_25F208938(v9, v10, v11, v20);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F208960(v9, v10, v11, v20);
    aBlock = v9;
    v43 = v10;
    v44 = v11;
    LOBYTE(v45) = v20 & 1;
    a4(&aBlock);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v40 = sub_25F305AAC();
        v46 = sub_25F2788A8;
        v47 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v43 = 1107296256;
        v44 = sub_25F1D8C38;
        v45 = &block_descriptor_145;
        v33 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        v32 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v23 = v38;
        v24 = v37;
        sub_25F305E5C();
        v25 = v40;
        v26 = v33;
        MEMORY[0x25F8D7C70](0, v39, v23, v33);
        _Block_release(v26);

        (*(v36 + 8))(v23, v24);
        (*(v34 + 8))(v39, v35);
      }

      else
      {
        v46 = sub_25F2788A8;
        v47 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v43 = 1107296256;
        v44 = sub_25F1D8C38;
        v45 = &block_descriptor_142;
        v33 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v41 = MEMORY[0x277D84F90];
        v32 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v27 = v37;
        v28 = v38;
        sub_25F305E5C();
        v29 = v28;
        v30 = v33;
        MEMORY[0x25F8D7C70](0, v39, v29, v33);
        _Block_release(v30);
        sub_25F2033DC(a2);
        (*(v36 + 8))(v38, v27);
        (*(v34 + 8))(v39, v35);
      }
    }

    else
    {
      aBlock = v9;
      v43 = v10;
      v44 = v11;
      LOBYTE(v45) = v20 & 1;
      a4(&aBlock);
    }

    sub_25F208960(v9, v10, v11, v20);
  }

  sub_25F208960(v9, v10, v11, v20);
  sub_25F208960(v9, v10, v11, v20);
}

void sub_25F274C48(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v10 = *a1;
  v11 = sub_25F30490C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v36 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v19 != 1)
    {
      return;
    }

    v32 = v16;
    v33 = v15;
    v34 = v12;
    v35 = v11;
    v20 = v10;
  }

  else
  {
    v32 = v16;
    v33 = v15;
    v34 = v12;
    v35 = v11;
  }

  v44 = v19 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = v10;
  *(v21 + 40) = v44;
  aBlock = a2;
  v39 = a3;
  sub_25F1A7AB4(v10, v19);
  sub_25F1A7AB4(v10, v19);

  sub_25F1A7AB4(v10, v19);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1A7AE0(v10, v19);
    aBlock = v10;
    LOBYTE(v39) = v19 & 1;
    a4(&aBlock);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v31 = sub_25F305AAC();
        v42 = sub_25F27866C;
        v43 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_25F1D8C38;
        v41 = &block_descriptor_216;
        v30 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v22 = v35;
        v23 = v36;
        sub_25F305E5C();
        v25 = v30;
        v24 = v31;
        MEMORY[0x25F8D7C70](0, v18, v23, v30);
        _Block_release(v25);

        (*(v34 + 8))(v23, v22);
        (*(v32 + 8))(v18, v33);
      }

      else
      {
        v42 = sub_25F27866C;
        v43 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_25F1D8C38;
        v41 = &block_descriptor_213;
        v30 = _Block_copy(&aBlock);

        v31 = a3;
        sub_25F2033CC(a2);
        sub_25F30492C();
        v37 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v26 = v35;
        v27 = v36;
        sub_25F305E5C();
        v28 = v30;
        MEMORY[0x25F8D7C70](0, v18, v27, v30);
        _Block_release(v28);
        sub_25F2033DC(a2);
        (*(v34 + 8))(v27, v26);
        (*(v32 + 8))(v18, v33);
      }
    }

    else
    {
      aBlock = v10;
      LOBYTE(v39) = v19 & 1;
      a4(&aBlock);
    }

    sub_25F1A7AE0(v10, v19);
  }

  sub_25F1A7AE0(v10, v19);
  sub_25F1A7AE0(v10, v19);
}

void sub_25F2751DC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v38 = a3;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = sub_25F30490C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F30494C();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v20 != 1)
    {
      return;
    }

    v36 = v11;
    v37 = v19;
    v33 = v14;
    v34 = v17;
    v35 = v16;
    v21 = v9;
    v10 = 0;
  }

  else
  {
    v36 = v11;
    v37 = v19;
    v33 = v14;
    v34 = v17;
    v35 = v16;
  }

  v46 = v20 & 1;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  *(v22 + 32) = v9;
  *(v22 + 40) = v10;
  *(v22 + 48) = v46;
  aBlock = a2;
  v41 = v38;
  sub_25F208B84(v9, v10, v20);
  sub_25F208B84(v9, v10, v20);

  sub_25F208B84(v9, v10, v20);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F208B9C(v9, v10, v20);
    aBlock = v9;
    v41 = v10;
    LOBYTE(v42) = v20 & 1;
    a4(&aBlock);
  }

  else
  {
    v32 = v12;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v38 = sub_25F305AAC();
        v44 = sub_25F278A68;
        v45 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v41 = 1107296256;
        v42 = sub_25F1D8C38;
        v43 = &block_descriptor_180;
        v23 = _Block_copy(&aBlock);

        v24 = v37;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        v31 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v25 = v33;
        v26 = v36;
        sub_25F305E5C();
        v27 = v38;
        MEMORY[0x25F8D7C70](0, v24, v25, v23);
        _Block_release(v23);

        (*(v32 + 8))(v25, v26);
        (*(v34 + 8))(v24, v35);
      }

      else
      {
        v44 = sub_25F278A68;
        v45 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v41 = 1107296256;
        v42 = sub_25F1D8C38;
        v43 = &block_descriptor_177;
        v28 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v39 = MEMORY[0x277D84F90];
        v31 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v29 = v33;
        v30 = v36;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v37, v29, v28);
        _Block_release(v28);
        sub_25F2033DC(a2);
        (*(v32 + 8))(v29, v30);
        (*(v34 + 8))(v37, v35);
      }
    }

    else
    {
      aBlock = v9;
      v41 = v10;
      LOBYTE(v42) = v20 & 1;
      a4(&aBlock);
    }

    sub_25F208B9C(v9, v10, v20);
  }

  sub_25F208B9C(v9, v10, v20);
  sub_25F208B9C(v9, v10, v20);
}

uint64_t sub_25F2757A0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v30 = a5;
  v26 = sub_25F30490C();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25F30494C();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - v14);
  sub_25F1B7174(a1, &v26 - v14, qword_27FD53BB8, &qword_25F311350);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_25F1AF698(v15, qword_27FD53BB8, &qword_25F311350);
  }

  v17 = v15[1];
  v35 = *v15;
  v36 = v17;
  v37[0] = v15[2];
  *(v37 + 9) = *(v15 + 41);
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = a4;
  *(v18 + 24) = v19;
  v20 = v15[1];
  *(v18 + 32) = *v15;
  *(v18 + 48) = v20;
  *(v18 + 64) = v15[2];
  *(v18 + 73) = *(v15 + 41);
  *&aBlock = a2;
  *(&aBlock + 1) = a3;
  swift_retain_n();
  if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
  {
    aBlock = v35;
    v33 = v36;
    v34[0] = v37[0];
    *(v34 + 9) = *(v37 + 9);
    a4(&aBlock);
  }

  else
  {
    if (a2 != 1)
    {
      *&v34[0] = sub_25F2784F0;
      *(&v34[0] + 1) = v18;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v33 = sub_25F1D8C38;
      *(&v33 + 1) = &block_descriptor_55;
      v24 = _Block_copy(&aBlock);

      sub_25F2033CC(a2);
      sub_25F30492C();
      v31 = MEMORY[0x277D84F90];
      sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
      v25 = v26;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v12, v10, v24);
      _Block_release(v24);
      sub_25F2033DC(a2);
      (*(v29 + 8))(v10, v25);
      (*(v27 + 8))(v12, v28);
    }

    sub_25F1F54F4();
    v21 = sub_25F305AAC();
    *&v34[0] = sub_25F2784F0;
    *(&v34[0] + 1) = v18;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v33 = sub_25F1D8C38;
    *(&v33 + 1) = &block_descriptor_58;
    v22 = _Block_copy(&aBlock);

    sub_25F30492C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
    v23 = v26;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v12, v10, v22);
    _Block_release(v22);

    (*(v29 + 8))(v10, v23);
    (*(v27 + 8))(v12, v28);
  }
}

uint64_t sub_25F275DD4(__int128 *a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a8;
  v36 = sub_25F30490C();
  v15 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F30494C();
  result = MEMORY[0x28223BE20](v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57) >= 2u)
  {
    v32 = v20;
    v33 = v15;
    v34 = result;
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v24 = a1[1];
    *(v23 + 32) = *a1;
    *(v23 + 48) = v24;
    *(v23 + 64) = a1[2];
    *(v23 + 73) = *(a1 + 41);
    *&aBlock = a2;
    *(&aBlock + 1) = a3;
    v31[1] = a3;
    swift_retain_n();
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || (v31[0] = a5, !a2))
    {
      v28 = a1[1];
      aBlock = *a1;
      v39 = v28;
      v40[0] = a1[2];
      *(v40 + 9) = *(a1 + 41);
      a4(&aBlock);
    }

    else
    {
      if (a2 != 1)
      {
        *&v40[0] = a7;
        *(&v40[0] + 1) = v23;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v39 = sub_25F1D8C38;
        *(&v39 + 1) = v35;
        v29 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v37 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v30 = v36;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v22, v17, v29);
        _Block_release(v29);
        sub_25F2033DC(a2);
        (*(v33 + 8))(v17, v30);
        (*(v32 + 8))(v22, v34);
      }

      sub_25F1F54F4();
      v25 = sub_25F305AAC();
      *&v40[0] = a7;
      *(&v40[0] + 1) = v23;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_25F1D8C38;
      *(&v39 + 1) = a9;
      v26 = _Block_copy(&aBlock);

      sub_25F30492C();
      *&aBlock = MEMORY[0x277D84F90];
      sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
      v27 = v36;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v22, v17, v26);
      _Block_release(v26);

      (*(v33 + 8))(v17, v27);
      (*(v32 + 8))(v22, v34);
    }
  }

  return result;
}

double sub_25F27635C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD569F0, &unk_25F311410);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD569F0, &unk_25F311410);
    sub_25F1AF698(v22, &qword_27FD569F0, &unk_25F311410);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F0370(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F0370((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

uint64_t sub_25F276560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F00, &qword_25F308550);
  MEMORY[0x28223BE20](v8);
  v10 = (v19 - v9);
  sub_25F1B7174(a1, v19 - v9, &qword_27FD52F00, &qword_25F308550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25F23F614(v10, a4, qword_27FD53BB8, &qword_25F311350);
    v11 = 0;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD52F00, &qword_25F308550);
    v12 = *v10;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_25F2F0994(0, v12[2] + 1, 1, v12);
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_25F2F0994((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_25F2784FC;
    v16[5] = v13;
    *a1 = v12;
    swift_storeEnumTagMultiPayload();
    v11 = 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  return (*(*(v17 - 8) + 56))(a4, v11, 1, v17);
}

double sub_25F27677C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A18, &qword_25F311448);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A18, &qword_25F311448);
    sub_25F1AF698(v22, &qword_27FD56A18, &qword_25F311448);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F09A8(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F09A8((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

double sub_25F276980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A30, &qword_25F311468);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A30, &qword_25F311468);
    sub_25F1AF698(v22, &qword_27FD56A30, &qword_25F311468);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F09BC(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F09BC((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

double sub_25F276B84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A78, &unk_25F3114C0);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A78, &unk_25F3114C0);
    sub_25F1AF698(v22, &qword_27FD56A78, &unk_25F3114C0);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F0EDC(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F0EDC((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

double sub_25F276D88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A48, &qword_25F314C80);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A48, &qword_25F314C80);
    sub_25F1AF698(v22, &qword_27FD56A48, &qword_25F314C80);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F0EF0(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F0EF0((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F278A1C;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

uint64_t sub_25F276F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21[-v13];
  sub_25F1B7174(a2, &v21[-v13], &qword_27FD52B40, &qword_25F307EA0);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a5;
  v15[8] = a6;

  v16 = sub_25F1B1524(0, 0, v14, &unk_25F3114D8, v15);
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = sub_25F278D70;
  v18[5] = v16;
  v19 = *(v17 + 88);
  v22 = sub_25F27917C;
  v23 = v18;
  swift_retain_n();
  os_unfair_lock_lock(v19 + 25);
  sub_25F209764(&v19[4], &v28);
  os_unfair_lock_unlock(v19 + 25);
  *&v27[10] = *(v30 + 10);
  v26[0] = v28;
  v26[1] = v29;
  *v27 = v30[0];
  if (BYTE9(v30[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v30[1]) > 1u)
    {

      sub_25F30555C();
    }

    else
    {
      sub_25F1B7174(v26, v24, &qword_27FD54C28, &unk_25F30CD20);
    }

    sub_25F1AF698(v26, &qword_27FD54C28, &unk_25F30CD20);
  }

  v24[0] = v28;
  v24[1] = v29;
  v25[0] = v30[0];
  *(v25 + 10) = *(v30 + 10);
  sub_25F1AF698(v24, &qword_27FD54C28, &unk_25F30CD20);
}

uint64_t sub_25F27725C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = a7;
  v8[42] = a8;
  v8[40] = a6;
  v10 = sub_25F30543C();
  v8[43] = v10;
  v8[44] = *(v10 - 8);
  v8[45] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[46] = v11;
  *v11 = v8;
  v11[1] = sub_25F2773B8;

  return v13(v8 + 36);
}

uint64_t sub_25F2773B8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_25F2775D0;
  }

  else
  {
    v2 = sub_25F2774CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F2774CC()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[36];
  v3 = v0[37];

  sub_25F1D75B4(v4, v3, 0);

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  sub_25F205208(0, 0, sub_25F278E24, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F2775D0()
{
  v1 = *(v0 + 376);
  *(v0 + 304) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 376);
    v5 = *(v0 + 16);
    v4 = *(v0 + 32);
    *(v0 + 104) = v4;
    v6 = *(v0 + 48);
    *(v0 + 136) = *(v0 + 64);
    *(v0 + 120) = v6;
    *(v0 + 152) = *(v0 + 80);
    *(v0 + 88) = v5;
    *(v0 + 224) = v5;
    *(v0 + 240) = v4;
    *(v0 + 256) = v6;
    *(v0 + 265) = *(v0 + 57);
    sub_25F2FB66C((v0 + 224));

    sub_25F278DD0(v0 + 88);
  }

  else
  {
    v7 = *(v0 + 376);
    *(v0 + 312) = v7;
    v8 = v7;
    v9 = swift_dynamicCast();
    v10 = *(v0 + 376);
    if (v9)
    {
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
      *(v0 + 160) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
      *(v0 + 168) = 118;
      *(v0 + 176) = 2;
      *(v0 + 184) = xmmword_25F311320;
      *(v0 + 200) = "init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)";
      *(v0 + 208) = 82;
      *(v0 + 216) = 2;
      sub_25F2FB66C((v0 + 160));
    }

    else
    {
      v11 = v10;
      sub_25F1D75B4(v10, 0, 1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25F27779C(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A00, &qword_25F311430);
  v13 = swift_allocObject();
  v13[13] = sub_25F278594;
  v13[14] = v12;
  v13[15] = a2;
  v13[16] = a3;
  v13[17] = 0;
  v13[18] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A08, &qword_25F311438);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v6;
  v13[19] = v14;

  sub_25F2033CC(a2);

  v15 = sub_25F1C0138(a1);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_25F2785A8;
  v16[5] = v15;
  v17 = *(v6 + 88);
  swift_retain_n();
  os_unfair_lock_lock(v17 + 25);
  sub_25F2785D0(&v17[4], &v31);
  os_unfair_lock_unlock(v17 + 25);
  *&v30[10] = *(v33 + 10);
  v29[0] = v31;
  v29[1] = v32;
  *v30 = v33[0];
  if (BYTE9(v33[1]) == 255)
  {
  }

  else
  {
    v36[0] = v31;
    v36[1] = v32;
    v37[0] = v33[0];
    *(v37 + 10) = *(v33 + 10);

    sub_25F1B7174(v29, v27, &qword_27FD56A10, &qword_25F311440);
    sub_25F2CB790(v36, 0, 0, v15);

    sub_25F1AF698(v29, &qword_27FD56A10, &qword_25F311440);
  }

  v27[0] = v31;
  v27[1] = v32;
  v28[0] = v33[0];
  *(v28 + 10) = *(v33 + 10);
  sub_25F1AF698(v27, &qword_27FD56A10, &qword_25F311440);

  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = sub_25F2785EC;
  v18[5] = v15;
  MEMORY[0x28223BE20](v18);
  swift_retain_n();
  os_unfair_lock_lock(v17 + 25);
  sub_25F279198(&v17[4], &v24);
  os_unfair_lock_unlock(v17 + 25);
  *(v23 + 10) = *(v26 + 10);
  v22[0] = v24;
  v22[1] = v25;
  v23[0] = v26[0];
  if (BYTE9(v26[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v26[1]) > 1u)
    {
      v34[0] = v24;
      v34[1] = v25;
      v35[0] = v26[0];
      *(v35 + 9) = *(v26 + 9);

      sub_25F277D14(v34);
    }

    else
    {
      sub_25F1B7174(v22, v20, &qword_27FD56A10, &qword_25F311440);
    }

    sub_25F1AF698(v22, &qword_27FD56A10, &qword_25F311440);
  }

  v20[0] = v24;
  v20[1] = v25;
  v21[0] = v26[0];
  *(v21 + 10) = *(v26 + 10);
  sub_25F1AF698(v20, &qword_27FD56A10, &qword_25F311440);

  return v15;
}

uint64_t sub_25F277BCC(void *a1, char a2, uint64_t (*a3)(__int128 *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - v7);
  if (a2)
  {
    *&v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
    *(&v12 + 1) = 125;
    v13 = 2;
    v14 = xmmword_25F311330;
    v15 = "then(callsite:on:transform:)";
    v16 = 28;
    v17 = 2;
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    v9 = a1;
    v10 = sub_25F26D324(&v12, v8);
    sub_25F1AF698(v8, &qword_27FD53BB0, &unk_25F309BA0);
  }

  else
  {
    *&v12 = a1;

    v10 = a3(&v12);
    sub_25F1C5980(a1, 0);
  }

  return v10;
}

void sub_25F277D14(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v3);
  v5 = (&v16 - v4);
  v6 = *(v1 + 152);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  v8 = v7 >> 62;
  if (!(v7 >> 62))
  {
    *(v6 + 16) = 0x8000000000000008;
    os_unfair_lock_unlock((v6 + 24));
    v13 = a1[1];
    v16 = *a1;
    v17 = v13;
    v18[0] = a1[2];
    *(v18 + 9) = *(a1 + 41);
    v14 = *(*v7 + 192);

    v14(&v16);
    v11 = v7;
    v12 = 0;
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    v7 &= 0x3FFFFFFFFFFFFFFFuLL;
    *(v6 + 16) = 0x8000000000000008;
    os_unfair_lock_unlock((v6 + 24));
    v9 = a1[1];
    v16 = *a1;
    v17 = v9;
    v18[0] = a1[2];
    *(v18 + 9) = *(a1 + 41);
    v10 = *(*v7 + 192);

    v10(&v16);
    v11 = v7;
    v12 = 1;
LABEL_5:
    sub_25F278658(v11, v12);
    v15 = a1[1];
    *v5 = *a1;
    v5[1] = v15;
    v5[2] = a1[2];
    *(v5 + 41) = *(a1 + 41);
    swift_storeEnumTagMultiPayload();
    sub_25F1C0AC8(v5);
    sub_25F278658(v7, v8);
    sub_25F1AF698(v5, qword_27FD53BB8, &qword_25F311350);
    return;
  }

  *(v6 + 16) = 0x8000000000000008;

  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_25F277F48(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return sub_25F2C4A14(v4, a2);
}

uint64_t sub_25F277F84(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return (*(*a2 + 192))(v4);
}

void sub_25F27801C(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, void **, __n128)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4;
    v7 = 0;
  }

  else
  {
    v10 = *a1;

    (a2)(v9, &v10);
    sub_25F1C5980(v4, 0);
    v4 = v9[0];
    v7 = v9[1];
  }

  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 16) = v5;
}

uint64_t sub_25F2780DC(__int128 *a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 10) = *(a1 + 42);
  return sub_25F275DD4(v7, a2, a3, a4, a5, &unk_287165010, sub_25F279100, &block_descriptor_165, &block_descriptor_168);
}

void sub_25F278148(_OWORD *a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v5 = a1[1];
  v6[0] = *a1;
  v6[1] = v5;
  v7[0] = a1[2];
  *(v7 + 10) = *(a1 + 42);
  sub_25F2751DC(v6, a2, a3, a4, a5);
}

void sub_25F278184(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, void *, __n128)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v4;
    v7 = 0uLL;
  }

  else
  {
    v9 = *(a1 + 8);
    v12[0] = *a1;
    v12[1] = v9;

    (a2)(&v10, v12);
    sub_25F1D93BC(v4, v9, 0);
    v4 = v10;
    v7 = v11;
  }

  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 24) = v5;
}

uint64_t sub_25F278270()
{
  v1 = *(type metadata accessor for CrashReport(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_25F26F944(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_25F278368(_OWORD *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return sub_25F2C4A14(v4, v1);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F2783D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F278418(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F278524()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_25F2CCCC8(v2, v3, v4);
}

void sub_25F2785EC(__int128 *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F277D14(v2);
}

uint64_t sub_25F278658(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_25F278684()
{
  v1 = *(type metadata accessor for CrashReport(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F271000(v0 + v2, v3);
}

uint64_t sub_25F278740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F278858@<X0>(uint64_t *a2@<X8>)
{
  result = CSSymbolicatorCreateWithPathAndArchitecture();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25F27888C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_25F2788B4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for CrashReport(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + ((v7 + 79) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F272678(a1, v2 + v6, v2 + v7, v8, a2);
}

void sub_25F27899C(_OWORD *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F2737AC(v2, sub_25F1C1170);
}

uint64_t sub_25F278A1C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  return v2(v5);
}

uint64_t sub_25F278A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F273274(a1, v4, v5, v6);
}

uint64_t sub_25F278B68(_OWORD *a1, uint64_t (*a2)(_OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  v11[0] = a1[2];
  *(v11 + 10) = *(a1 + 42);
  return a2(v10, v4, v5, v6, v7);
}

void sub_25F278BD0(_OWORD *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F2737AC(v2, sub_25F1C0E30);
}

uint64_t objectdestroy_95Tm()
{

  sub_25F1C5980(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_25F278C94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1AFDB0;

  return sub_25F27725C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25F278D78(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[4];
  v12 = v5[5];
  v13 = a1[1];
  v15[0] = *a1;
  v15[1] = v13;
  v16[0] = a1[2];
  *(v16 + 10) = *(a1 + 42);
  return sub_25F275DD4(v15, v9, v10, v11, v12, a2, a3, a4, a5);
}

uint64_t sub_25F278E24()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = type metadata accessor for CrashReport(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(v0 + 16);
  if (v3 >= 2)
  {
  }

  v4 = sub_25F30467C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = *(v1 + 32);
  v6 = sub_25F30462C();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  if (*(v0 + v2 + *(v1 + 40) + 40) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25F279024(uint64_t *a1)
{
  v3 = *(type metadata accessor for CrashReport(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25F2707A4(a1, v4, v5, v6);
}

uint64_t SimpleTimeoutTimer.init(timeInterval:qos:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_25F1F54F4();
  v6 = sub_25F305ADC();
  type metadata accessor for DelayedInvocation();
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54F78, &qword_25F30D7A0);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54F80, &qword_25F30D7A8);
  v9 = swift_allocObject();
  *(v9 + 44) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = nullsub_2;
  *(v9 + 40) = 1;
  *(v8 + 24) = v9;
  v10 = sub_25F30491C();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *(v7 + 16) = v8;
  *a2 = v7;
  *(a2 + 8) = a3;
  return result;
}

uint64_t SimpleTimeoutTimer.init<A>(scheduler:timeoutInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  type metadata accessor for DelayedInvocation();
  v10 = sub_25F22DC28(a1, nullsub_2, 0, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v10;
  *(a4 + 8) = a5;
  return result;
}

uint64_t SimpleTimeoutTimer.operationStarted(timeoutCallback:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(**(*v2 + 16) + 88);

  v7(a1, a2);
  v8 = *(v5 + 16);
  v10 = v6;
  return (*(*v8 + 104))(&v10);
}

uint64_t sub_25F2794B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(**(*v2 + 16) + 88);

  v7(a1, a2);
  v8 = *(v5 + 16);
  v10 = v6;
  return (*(*v8 + 104))(&v10);
}

uint64_t CrashReportError.IndexOutOfRangeError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.IndexOutOfRangeError(0) + 20);

  return sub_25F1DF920(v3, a1);
}

uint64_t type metadata accessor for CrashReportError.IndexOutOfRangeError(uint64_t a1)
{
  result = qword_27FD56AA8;
  if (!qword_27FD56AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.IndexOutOfRangeError.additionalInfo.getter()
{
  sub_25F305FAC();
  v1 = v0 + *(type metadata accessor for CrashReportError.IndexOutOfRangeError(0) + 20);
  v2 = *(v1 + *(type metadata accessor for CrashReport(0) + 20));

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F319D60);
  return v2;
}

id sub_25F279724()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD00000000000001FLL, 0x800000025F319E30, 0);
  qword_27FD56AA0 = result;
  return result;
}

uint64_t static CrashReportError.IndexOutOfRangeError.asiRegularExpression.getter()
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FD56AA0;
  v1 = qword_27FD56AA0;
  return v0;
}

void static CrashReportError.IndexOutOfRangeError.asiRegularExpression.setter(uint64_t a1)
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56AA0;
  qword_27FD56AA0 = a1;
}

uint64_t (*static CrashReportError.IndexOutOfRangeError.asiRegularExpression.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_25F279960@<X0>(void *a1@<X8>)
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56AA0;
  *a1 = qword_27FD56AA0;

  return v2;
}

void sub_25F2799EC(id *a1)
{
  v1 = *a1;
  v2 = qword_27FD52850;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27FD56AA0;
  qword_27FD56AA0 = v1;
}

uint64_t CrashReportError.IndexOutOfRangeError.init(report:asi:match:)@<X0>(uint64_t a1@<X0>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for CrashReportError.IndexOutOfRangeError(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  *v10 = 0;
  v10[8] = 1;
  sub_25F279BAC(a1, &v10[*(v7 + 20)], type metadata accessor for CrashReport);
  sub_25F279BAC(v10, a4, type metadata accessor for CrashReportError.IndexOutOfRangeError);
  return (*(v8 + 56))(a4, 0, 1, v7);
}

uint64_t sub_25F279BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F279C30(uint64_t a1)
{
  sub_25F305FAC();

  v3 = v1 + *(a1 + 20);
  v5 = *(v3 + *(type metadata accessor for CrashReport(0) + 20));

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F319D60);
  return v5;
}

uint64_t Array.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  if (sub_25F30588C())
  {
    v4 = 1;
  }

  else
  {
    swift_getWitnessTable();
    sub_25F30596C();
    v4 = 0;
  }

  return (*(*(*(a1 + 16) - 8) + 56))(a2, v4, 1);
}

uint64_t Array.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  v8 = a2;
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F30539C();

  sub_25F30533C();
  return v8;
}

uint64_t Array.inserting(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  v9 = v5;
  (*(v6 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F30539C();

  sub_25F30534C();
  return v9;
}

uint64_t Array.interleaving(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v27 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_25F305C1C();
  v10 = *(v35 - 8);
  v11 = MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - v13);
  v39 = sub_25F3052DC();
  v38[1] = a2;
  v15 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8D72E0](v38, v15, WitnessTable);
  v37 = v38[0];
  sub_25F3062EC();
  sub_25F3062BC();
  v17 = sub_25F3062DC();
  v32 = (v10 + 32);
  v33 = v17;
  v31 = TupleTypeMetadata2 - 8;
  v29 = (v5 + 32);
  v18 = (v5 + 16);
  v19 = (v5 + 8);
  while (1)
  {
    v21 = v34;
    sub_25F3062CC();
    (*v32)(v14, v21, v35);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v22 = *v14;
    v23 = TupleTypeMetadata2;
    (*v29)(v36, v14 + *(TupleTypeMetadata2 + 48), a3);
    v24 = *v18;
    v25 = v30;
    if (v22 >= 1)
    {
      v24(v30, v28, a3);
      sub_25F30533C();
    }

    v20 = v36;
    v24(v25, v36, a3);
    sub_25F30533C();
    (*v19)(v20, a3);
    TupleTypeMetadata2 = v23;
  }

  return v39;
}

uint64_t Array.invert<A>()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v29 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v28 = &v19 - v7;
  v8 = sub_25F305C1C();
  v30 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v32 = sub_25F3052DC();
  sub_25F30531C();
  v27 = sub_25F30539C();
  sub_25F30529C();
  if (!sub_25F30531C())
  {
    return v32;
  }

  v14 = 0;
  v25 = (v30 + 32);
  v26 = (v30 + 16);
  v23 = (v4 + 32);
  v24 = (v4 + 48);
  v21 = (v4 + 8);
  v22 = (v4 + 16);
  while (1)
  {
    v15 = sub_25F3052FC();
    sub_25F30528C();
    if (v15)
    {
      (*(v30 + 16))(v13, a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v14, v8);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    result = sub_25F30601C();
    if (v20 != 8)
    {
      break;
    }

    v31 = result;
    (*v26)(v13, &v31, v8);
    swift_unknownObjectRelease();
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_11:
      __break(1u);
      return v32;
    }

LABEL_5:
    (*v25)(v11, v13, v8);
    if ((*v24)(v11, 1, a2) == 1)
    {

      (*(v30 + 8))(v11, v8);
      return 0;
    }

    v17 = v28;
    (*v23)(v28, v11, a2);
    (*v22)(v29, v17, a2);
    sub_25F30533C();
    (*v21)(v17, a2);
    ++v14;
    if (v16 == sub_25F30531C())
    {
      return v32;
    }
  }

  __break(1u);
  return result;
}

unint64_t Array<A>.disambiguate<A>(keyPaths:basePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_25F30539C();
  swift_getTupleTypeMetadata2();
  v15 = sub_25F3052DC();
  v16 = sub_25F1CCBBC(v15, a4, v14, a6);

  v20 = v16;
  v19 = sub_25F3052DC();
  v17 = sub_25F3052DC();
  sub_25F27A7FC(a3, a1, a2, v17, &v20, &v19, a3, a4, a5, a6, a7);

  return v20;
}

uint64_t sub_25F27A7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v110 = a7;
  v114 = a5;
  v121 = a4;
  v113 = a3;
  v108 = sub_25F305C1C();
  v15 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v112 = &v98 - v16;
  v17 = sub_25F30539C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = sub_25F305C1C();
  v102 = *(v126 - 8);
  v19 = MEMORY[0x28223BE20](v126);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v125 = &v98 - v23;
  v118 = *(a9 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v120 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v132 = &v98 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v136 = &v98 - v29;
  v117 = *(a8 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v107 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v106 = &v98 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v129 = &v98 - v35;
  v100 = v36;
  MEMORY[0x28223BE20](v34);
  v135 = &v98 - v37;
  v109 = a2;
  *&v144[0] = a2;
  v115 = sub_25F3067CC();
  v38 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v105 = v38;
  v104 = WitnessTable;
  sub_25F30583C();
  if (!v142)
  {
    goto LABEL_18;
  }

  v101 = v15;
  v133 = v142;
  v123 = v21;
  v124 = TupleTypeMetadata2;
  v127 = a10;
  swift_getTupleTypeMetadata2();
  v40 = sub_25F3052DC();
  v140 = a9;
  v137 = v17;
  v138 = a11;
  v141 = sub_25F1CCBBC(v40, a9, v17, a11);

  v134 = a1;
  v41 = sub_25F30531C();
  v139 = a8;
  v103 = a6;
  if (v41)
  {
    v42 = 0;
    v130 = 0;
    v131 = 0;
    v43 = 0;
    v44 = 0;
    v122 = (v117 + 16);
    v119 = (v117 + 32);
    v111 = (v118 + 16);
    v116 = (v118 + 8);
    v45 = v134;
    while (1)
    {
      v47 = sub_25F3052FC();
      sub_25F30528C();
      if (v47)
      {
        (*(v117 + 16))(v135, v45 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v42, a8);
        v48 = v140;
        v49 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v65 = sub_25F30601C();
        v48 = v140;
        if (v100 != 8)
        {
          goto LABEL_50;
        }

        *&v144[0] = v65;
        (*v122)(v135, v144, a8);
        swift_unknownObjectRelease();
        v49 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          *&v144[0] = a1;

          swift_getWitnessTable();
          return sub_25F30532C();
        }
      }

      v128 = v49;
      v51 = v135;
      v50 = v136;
      swift_getAtKeyPath();
      v52 = swift_allocObject();
      v52[2] = a8;
      v52[3] = v48;
      v53 = v127;
      v54 = v138;
      v52[4] = v127;
      v52[5] = v54;
      sub_25F1AC3AC(v130, v43);
      (*v119)(v129, v51, a8);
      v55 = swift_allocObject();
      v55[2] = a8;
      v55[3] = v48;
      v56 = v138;
      v55[4] = v53;
      v55[5] = v56;
      v55[6] = sub_25F27BB80;
      v55[7] = v52;
      v57 = v52;
      v58 = v55;
      sub_25F1AC3AC(v131, v44);
      v59 = v141;
      swift_isUniquelyReferenced_nonNull_native();
      *&v144[0] = v59;
      v60 = v50;
      a1 = v138;
      sub_25F281E0C(v60, v48, v138);
      if (__OFADD__(*(v59 + 16), (v61 & 1) == 0))
      {
        goto LABEL_49;
      }

      v62 = v61;
      sub_25F30624C();
      v63 = sub_25F30622C();
      v141 = *&v144[0];
      if (v63)
      {
        break;
      }

      a8 = v139;
      v45 = v134;
      if ((v62 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_4:
      sub_25F30533C();
      (*v116)(v136, v140);
      v46 = sub_25F30531C();
      ++v42;
      v131 = sub_25F27BB8C;
      v130 = sub_25F27BB80;
      v43 = v57;
      v44 = v58;
      if (v128 == v46)
      {
        goto LABEL_20;
      }
    }

    sub_25F281E0C(v136, v48, a1);
    a8 = v139;
    v45 = v134;
    if ((v62 & 1) != (v64 & 1))
    {
      goto LABEL_51;
    }

    if (v62)
    {
      goto LABEL_4;
    }

LABEL_13:
    *&v144[0] = (*(v58 + 48))();
    (*v111)(v132, v136, v140);
    sub_25F30623C();
    goto LABEL_4;
  }

  v130 = 0;
  v131 = 0;
  v57 = 0;
  v58 = 0;
LABEL_20:
  v99 = v58;
  v100 = v57;
  v67 = 0;
  v68 = v141 + 64;
  v69 = 1 << *(v141 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v141 + 64);
  v72 = (v69 + 63) >> 6;
  v73 = v124;
  v122 = (v124 - 8);
  v129 = (v118 + 16);
  v135 = (v118 + 32);
  v128 = v102 + 4;
  v119 = (v118 + 8);
  v116 = (v117 + 48);
  v111 = (v117 + 32);
  v102 = (v117 + 16);
  v117 += 8;
  ++v101;
  v74 = v140;
  v75 = v133;
  while (v71)
  {
    v76 = v67;
LABEL_34:
    v78 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v79 = v78 | (v76 << 6);
    v74 = v140;
    v80 = v141;
    v81 = v118;
    v82 = v132;
    (*(v118 + 16))(v132, *(v141 + 48) + *(v118 + 72) * v79, v140);
    v83 = *(*(v80 + 56) + 8 * v79);
    v84 = *(v73 + 48);
    v85 = *(v81 + 32);
    v86 = v123;
    v85(v123, v82, v74);
    *&v86[v84] = v83;
    v87 = *(v73 - 8);
    (*(v87 + 56))(v86, 0, 1, v73);

    v136 = v76;
    v75 = v133;
LABEL_35:
    v88 = v125;
    (*v128)(v125, v86, v126);
    if ((*(v87 + 48))(v88, 1, v73) == 1)
    {

      sub_25F1AC3AC(v130, v100);
      return sub_25F1AC3AC(v131, v99);
    }

    v89 = *&v88[*(v73 + 48)];
    v90 = v120;
    (*v135)(v120, v88, v74);
    v145 = v121;

    v91 = sub_25F30531C();
    if (v91 != sub_25F30531C())
    {
      *&v144[0] = v75;
      if (!v113 || (*&v142 = v113, , v92 = sub_25F304DCC(), , (v92 & 1) == 0))
      {
        (*v129)(v132, v90, v74);
        sub_25F30539C();
        sub_25F30533C();
      }
    }

    if (v91 != 1)
    {
      if (v91 >= 2)
      {
        *&v142 = v109;

        sub_25F3058AC();
        v142 = v144[0];
        v143 = v144[1];
        sub_25F305E1C();
        swift_getWitnessTable();
        v96 = sub_25F3053CC();
        sub_25F27A7FC(v89, v96, 0, v145, v114, v103, v110, v139, v74, v127, v138);
      }

      goto LABEL_24;
    }

    *&v144[0] = v89;
    swift_getWitnessTable();
    v93 = v112;
    sub_25F30583C();
    v94 = v93;
    v95 = v139;
    if ((*v116)(v93, 1, v139) != 1)
    {
      v97 = v106;
      (*v111)(v106, v94, v95);

      (*v102)(v107, v97, v95);
      *&v144[0] = v145;
      sub_25F30539C();
      sub_25F304B4C();
      sub_25F304B9C();
      (*v117)(v97, v95);
LABEL_24:
      (*v119)(v90, v74);
      goto LABEL_25;
    }

    (*v119)(v90, v74);
    (*v101)(v93, v108);

LABEL_25:
    v67 = v136;
    v73 = v124;
  }

  if (v72 <= v67 + 1)
  {
    v77 = v67 + 1;
  }

  else
  {
    v77 = v72;
  }

  while (1)
  {
    v76 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v76 >= v72)
    {
      v136 = v77 - 1;
      v87 = *(v73 - 8);
      v86 = v123;
      (*(v87 + 56))(v123, 1, 1, v73);
      v71 = 0;
      goto LABEL_35;
    }

    v71 = *(v68 + 8 * v76);
    ++v67;
    if (v71)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t Array.transformElements(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F3052DC();
  swift_getWitnessTable();
  sub_25F3051BC();

  *v3 = v5;
  return result;
}

uint64_t sub_25F27B840(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v7 + 16);
  v13(&v15 - v11);
  a2(v12);
  (v13)(v10, v12, a5);
  sub_25F30539C();
  sub_25F30533C();
  return (*(v7 + 8))(v12, a5);
}

uint64_t Array.transformElement<A>(id:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = *(a4 + 16);
  v6[3] = a5;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  return Array.transformElements(_:)(sub_25F27BB70, v6, a4);
}

uint64_t sub_25F27B9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  sub_25F305FDC();
  swift_getAssociatedConformanceWitness();
  v11 = sub_25F304DCC();
  result = (*(v8 + 8))(v10, AssociatedTypeWitness);
  if (v11)
  {
    return v14(a1);
  }

  return result;
}

uint64_t sub_25F27BB8C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result;
  return result;
}

uint64_t EventStreamObservable.wrappedValue.getter()
{
  v10 = *(v0 + 24);
  *&v4 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStreamObservable.swift";
  *(&v4 + 1) = 133;
  v5 = 2;
  v6 = xmmword_25F311600;
  v7 = "wrappedValue";
  v8 = 12;
  v9 = 2;
  v1 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  return SynchronousAccessProviding<>.peek(callsite:)(&v4, v1, WitnessTable);
}

uint64_t EventStreamObservable.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_25F27C234(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*EventStreamObservable.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  EventStreamObservable.wrappedValue.getter();
  return sub_25F27BE24;
}

void sub_25F27BE24(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_25F27C234(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_25F27C234(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EventStreamObservable.__allocating_init(wrappedValue:emitsInitialValue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = swift_allocObject();
  v8 = sub_25F27C39C(a1, v4, v6, v7);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v8;
}

uint64_t EventStreamObservable.init(wrappedValue:emitsInitialValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_25F27C39C(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t EventStreamObservable.projectedValue.getter@<X0>(void *a1@<X8>)
{
  sub_25F2BC048(sub_25F27C418, v1, a1);
}

uint64_t sub_25F27C05C(_OWORD *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(*a4 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v15 - v8;
  if (*(v10 + 32) == 1)
  {
    EventStreamObservable.wrappedValue.getter();
    a2(v9);
    (*(v7 + 8))(v9, v6);
  }

  EventStream.Sink.eventStream.getter(&v17);
  v16[2] = v17;
  v11 = a1[1];
  v15[0] = *a1;
  v15[1] = v11;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  type metadata accessor for EventStream(0, v6, v12, v13);
  sub_25F2BBFFC(v15);
}

uint64_t EventStreamObservable.deinit()
{

  return v0;
}

uint64_t EventStreamObservable.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_25F27C234(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v12 - v5;
  v7 = v1[3];
  v12[0] = v3;
  v12[1] = v7;
  KeyPath = swift_getKeyPath();
  v9 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, a1, v9, WitnessTable);

  (*(v4 + 8))(v6, v3);
  return EventStream.Sink.send(_:)(a1);
}

uint64_t sub_25F27C39C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + 80);
  type metadata accessor for EventStream.Sink(0, v7, a3, a4);
  *(v4 + 16) = EventStream.Sink.__allocating_init()();
  *(v4 + 32) = a2;
  *(v4 + 24) = sub_25F203E0C(a1, v7);
  return v4;
}

uint64_t ChunkStack.init(size:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a2 = a1;
  type metadata accessor for FixedStack(0, a3, a4, a5);
  result = sub_25F3052DC();
  a2[1] = result;
  return result;
}

void ChunkStack.push(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + 8);
  v16[0] = *(v4 + 8);
  v7 = *(a2 + 16);
  v8 = type metadata accessor for FixedStack(255, v7, a3, a4);
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F304C5C();
  if (v24)
  {
    v25 = v24;
    if (FixedStack.push(_:)(a1, v8, v9, v10))
    {
      v11 = sub_25F30531C();
      v12 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
        __break(1u);
      }

      else
      {

        sub_25F3052CC();
        v13 = *v6;
        sub_25F24933C(v12, *v6, v8);

        *(v13 + 8 * v12 + 32) = v25;

        nullsub_2();
      }

      return;
    }
  }

  FixedStack.init(capacity:)(&v24, v7, v9, v10);
  if ((FixedStack.push(_:)(a1, v8, v14, v15) & 1) == 0)
  {
    v16[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ChunkStack.swift";
    v16[1] = 122;
    v17 = 2;
    *v18 = *v23;
    *&v18[3] = *&v23[3];
    v19 = xmmword_25F3116B0;
    v20 = "push(_:)";
    v21 = 8;
    v22 = 2;
    sub_25F213F98(v16);
  }

  v16[0] = v24;

  sub_25F30533C();
}

uint64_t ChunkStack.pop()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v4 = *(a1 + 16);
  v5 = sub_25F305C1C();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v28 = v2;
  v8 = (v2 + 8);
  v30 = *(v2 + 8);
  v11 = type metadata accessor for FixedStack(255, v4, v9, v10);
  v12 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  sub_25F304C5C();
  if (!v29)
  {
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }

  v25 = a2;
  v31 = v29;
  FixedStack.pop()(v11, v14, v15, v16, v7);
  v17 = *(v4 - 8);
  if ((*(v17 + 48))(v7, 1, v4) == 1)
  {
    (*(v26 + 8))(v7, v5);
    v18 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](&v30, v12, WitnessTable, v18);

    ChunkStack.pop()(v27, v25);
  }

  else
  {
    v20 = v25;
    (*(v17 + 32))(v25, v7, v4);
    result = sub_25F30531C();
    v21 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v22 = v31;

      sub_25F3052CC();
      v23 = *v8;
      sub_25F24933C(v21, *v8, v11);

      *(v23 + 8 * v21 + 32) = v22;

      nullsub_2();
      return (*(v17 + 56))(v20, 0, 1, v4);
    }
  }

  return result;
}

Swift::Int __swiftcall ChunkStack.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ChunkStack.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for FixedStack(255, *(a1 + 16), a3, a4);
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F304C5C();
  if (!v10)
  {
    return 0;
  }

  result = sub_25F30531C();
  v7 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7 * v5;
  if ((v7 * v5) >> 64 != (v7 * v5) >> 63)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = FixedStack.endIndex.getter();

  result = v8 + v9;
  if (!__OFADD__(v8, v9))
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t ChunkStack.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *v5;
  if (*v5)
  {
    if (result != 0x8000000000000000 || v7 != -1)
    {
      v8 = result % v7;
      type metadata accessor for FixedStack(0, *(a2 + 16), a3, a4);
      sub_25F3053DC();
      FixedStack.subscript.getter(v8, a5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ChunkStack.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ChunkStack.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ChunkStack.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F27CB9C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = ChunkStack.endIndex.getter(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

void (*sub_25F27CBC4(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F27CC4C(v6, *a2, a3);
  return sub_25F1CC82C;
}

void (*sub_25F27CC4C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  *(v8 + 16) = v10;
  v11 = *(v10 - 8);
  *(v8 + 24) = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v9[4] = v13;
  v16 = v3[1];
  *v9 = *v3;
  v9[1] = v16;
  ChunkStack.subscript.getter(a2, a3, v14, v15, v13);
  return sub_25F1CC970;
}

uint64_t sub_25F27CD48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

void sub_25F27CDB4(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t sub_25F27CDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F27CE18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t static ChunkStack<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ChunkStack(0, a3, a3, a4);
  swift_getWitnessTable();
  v4 = sub_25F30582C();
  if (v4 == sub_25F30582C())
  {
    swift_getWitnessTable();
    v5 = sub_25F30663C();
    v6 = MEMORY[0x28223BE20](v5);
    MEMORY[0x28223BE20](v6);
    sub_25F30600C();
    swift_getWitnessTable();
    v7 = sub_25F30510C();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ChunkStack<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = v3[1];
  MEMORY[0x25F8D88E0](*v3);
  v23[3] = v10;
  v23[4] = v9;
  v23[5] = 0;

  if (!ChunkStack.endIndex.getter(a2, v11, v12, v13))
  {
  }

  v16 = 0;
  v17 = (v6 + 8);
  while (1)
  {
    v23[1] = v10;
    v23[2] = v9;
    result = ChunkStack.subscript.getter(v16, a2, v14, v15, v8);
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    sub_25F304BDC();
    (*v17)(v8, v5);
    ++v16;
    if (v19 == ChunkStack.endIndex.getter(a2, v20, v21, v22))
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ChunkStack<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v8 = *v2;
  v9 = v5;
  sub_25F30671C();
  ChunkStack<A>.hash(into:)(v7, a1, a2);
  return sub_25F30676C();
}

uint64_t sub_25F27D2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25F30671C();
  ChunkStack<A>.hash(into:)(v6, a2, v4);
  return sub_25F30676C();
}

uint64_t sub_25F27D354(uint64_t a1)
{
  v3 = *(v1 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25F27D51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AsyncThrowingCache.__allocating_init(clearOnFailure:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  AsyncThrowingCache.init(clearOnFailure:)(v1);
  return v2;
}

uint64_t *AsyncThrowingCache.init(clearOnFailure:)(char a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v5 = sub_25F30557C();
  swift_getTupleTypeMetadata2();
  v6 = sub_25F3052DC();
  v7 = sub_25F1CCBBC(v6, v4, v5, *(v3 + 96));

  v1[15] = v7;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_25F27D6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = *v4;
  v5[19] = *v4;
  v7 = *(v6 + 80);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F27D7D8, v4, 0);
}

uint64_t sub_25F27D7D8()
{
  v1 = v0[19];
  swift_beginAccess();
  v2 = *(v1 + 88);

  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30557C();
  v4 = *(v1 + 96);
  sub_25F304B8C();

  v5 = v0[11];
  v0[24] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_25F27DAEC;
    v7 = v0[14];
    v8 = MEMORY[0x277D84950];
    v9 = v5;
    v10 = v2;
    v11 = v3;
  }

  else
  {
    v12 = v0[23];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[17];
    v22 = v0[16];
    v23 = v0[15];
    v24 = v0[22];
    v16 = sub_25F30546C();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v25 = v3;
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = v2;
    v17[6] = v4;
    v17[7] = v22;
    v17[8] = v15;

    v18 = sub_25F1B2738(0, 0, v12, &unk_25F3119C0, v17, v2);
    v0[27] = v18;
    v19 = *(v13 + 16);
    v0[28] = v19;
    v0[29] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v24, v23, v14);
    v0[12] = v18;
    swift_beginAccess();
    v0[30] = sub_25F304B4C();

    sub_25F304B9C();
    swift_endAccess();
    v20 = swift_task_alloc();
    v0[31] = v20;
    *v20 = v0;
    v20[1] = sub_25F27DC8C;
    v7 = v0[14];
    v8 = MEMORY[0x277D84950];
    v9 = v18;
    v10 = v2;
    v11 = v25;
  }

  return MEMORY[0x282200430](v7, v9, v10, v11, v8);
}

uint64_t sub_25F27DAEC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_25F27DE2C;
  }

  else
  {
    v4 = sub_25F27DC18;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F27DC18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F27DC8C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_25F27DEA0;
  }

  else
  {
    v4 = sub_25F27DDB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F27DDB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F27DE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F27DEA0(uint64_t a1)
{
  if (*(*(v1 + 144) + 112) == 1)
  {
    (*(v1 + 224))(*(v1 + 176), *(v1 + 120), *(v1 + 160));
    *(v1 + 104) = 0;
    swift_beginAccess();
    sub_25F304B9C();
    swift_endAccess();
  }

  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_25F27DF98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_25F1AFDB0;

  return v8(a1);
}

uint64_t sub_25F27E090(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v9 - v5;
  if (v7)
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30557C();
    sub_25F304B8C();

    if (v9[1])
    {
      sub_25F30555C();
    }
  }

  (*(v4 + 16))(v6, a1, v3);
  v9[4] = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30557C();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t AsyncThrowingCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncThrowingCache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F27E340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1B51E0;

  return sub_25F27DF98(a1, v4, v5, v6);
}

uint64_t dispatch thunk of AsyncThrowingCache.value(for:makeValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25F1AFDB0;

  return v12(a1, a2, a3, a4);
}

uint64_t AssociatedObjectCache.__allocating_init(logAspect:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AssociatedObjectCache.init(logAspect:)(a1, v3, v4, v5);
  return v2;
}

char *AssociatedObjectCache.init(logAspect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Ref(255, *(*v4 + 80), a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  swift_getTupleTypeMetadata2();
  v8 = sub_25F3052DC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25F1CCBBC(v8, v6, TupleTypeMetadata3, WitnessTable);

  *(v4 + 2) = v10;
  v11 = qword_27FD56C40;
  v12 = sub_25F30479C();
  (*(*(v12 - 8) + 32))(&v4[v11], a1, v12);
  return v4;
}

void AssociatedObjectCache.retainedAssociatedObject(to:createAssociatedObject:)(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v67 = a3;
  v68 = a2;
  v74 = a4;
  v7 = *v4;
  v8 = *(v7 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  v77 = v8;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = sub_25F305C1C();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  v19 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  v22 = *(v7 + 80);
  Ref.init(_:)(a1, v80);
  v23 = v80[0];
  swift_beginAccess();
  v26 = v5[2];
  v79 = v23;
  v27 = *(v26 + 16);
  v76 = v19;
  v70 = v23;
  v73 = v22;
  if (v27)
  {
    v28 = type metadata accessor for Ref(0, v22, v24, v25);
    v29 = a1;
    v30 = v28;
    v31 = v29;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    WitnessTable = swift_getWitnessTable();
    v33 = sub_25F281E0C(&v79, v30, WitnessTable);
    if (v34)
    {
      v35 = *(v26 + 56);
      v36 = v76;
      (*(v76 + 16))(v18, v35 + *(v76 + 72) * v33, TupleTypeMetadata3);
      v37 = *(v36 + 56);
      v38 = v18;
      v39 = 0;
    }

    else
    {
      v36 = v76;
      v37 = *(v76 + 56);
      v38 = v18;
      v39 = 1;
    }

    v69 = v37;
    v37(v38, v39, 1, TupleTypeMetadata3);
    a1 = v31;
  }

  else
  {
    v69 = *(v19 + 56);
    v69(v18, 1, 1, TupleTypeMetadata3);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = v19;
  }

  v41 = v71;
  v40 = v72;
  (*(v71 + 4))(v15, v18, v72);
  if ((*(v36 + 48))(v15, 1, TupleTypeMetadata3) == 1)
  {
    v42 = *(TupleTypeMetadata3 + 48);
    v43 = *(TupleTypeMetadata3 + 64);
    v68(a1);
    *&v21[v42] = 0;
    *&v21[v43] = 0;
    swift_unknownObjectRelease();
    (*(v41 + 1))(v15, v40);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v36 + 32))(v21, v15, TupleTypeMetadata3);
  }

  v44 = v75;
  v72 = *&v21[*(TupleTypeMetadata3 + 48)];
  v45 = *&v21[*(TupleTypeMetadata3 + 64)];
  swift_endAccess();
  v46 = *(v77 - 8);
  v47 = v74;
  (*(v46 + 32))(v74, v21);
  v75 = v45;
  if (v45)
  {
    swift_unknownObjectRetain();
    v48 = v75;
    v49 = sub_25F30477C();
    v50 = sub_25F3059FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v80[0] = v68;
      *v51 = 136446466;
      v79 = v77;
      swift_getMetatypeMetadata();
      v52 = sub_25F304E7C();
      v53 = a1;
      v55 = sub_25F1C53AC(v52, v54, v80);
      v71 = v48;
      v56 = v55;

      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      v57 = static Logging.describe<A>(ref:)(a1, v73);
      v59 = sub_25F1C53AC(v57, v58, v80);
      v48 = v71;

      *(v51 + 14) = v59;
      a1 = v53;
      v47 = v74;
      _os_log_impl(&dword_25F1A2000, v49, v50, "%{public}s: Retain requested for previous purged, canceling purging: %{public}s", v51, 0x16u);
      v60 = v68;
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v60, -1, -1);
      MEMORY[0x25F8D9510](v51, -1, -1);
    }

    [v48 invalidate];
  }

  v61 = v73;
  Ref.init(_:)(a1, &v79);
  v62 = v79;
  v63 = *(TupleTypeMetadata3 + 48);
  v64 = *(TupleTypeMetadata3 + 64);
  (*(v46 + 16))(v44, v47, v77);
  if (__OFADD__(v72, 1))
  {
    __break(1u);
  }

  else
  {
    *&v44[v63] = v72 + 1;
    *&v44[v64] = 0;
    v69(v44, 0, 1, TupleTypeMetadata3);
    v78 = v62;
    swift_beginAccess();
    type metadata accessor for Ref(255, v61, v65, v66);
    swift_unknownObjectRetain();
    swift_getWitnessTable();
    sub_25F304B4C();
    sub_25F304B9C();
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

uint64_t AssociatedObjectCache.retainedAssociatedObject(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = sub_25F305C1C();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = swift_getTupleTypeMetadata3();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  v71 = v5;
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v58 - v16;
  v17 = *(v4 + 80);
  Ref.init(_:)(a1, v76);
  v18 = v76[0];
  swift_beginAccess();
  v69 = v2;
  v74 = v18;
  v66 = v17;
  v21 = type metadata accessor for Ref(0, v17, v19, v20);
  v68 = a1;
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  sub_25F304B8C();
  swift_unknownObjectRelease();
  swift_endAccess();
  v23 = *(TupleTypeMetadata3 - 8);
  if ((*(v23 + 48))(v11, 1, TupleTypeMetadata3) == 1)
  {
    (*(v64 + 8))(v11, v65);
    v24 = 1;
    v26 = v70;
    v25 = v71;
    v27 = v73;
    return (*(v27 + 56))(v26, v24, 1, v25);
  }

  v59 = v23;
  v62 = WitnessTable;
  v63 = v21;
  v28 = *&v11[*(TupleTypeMetadata3 + 48)];
  v65 = TupleTypeMetadata3;
  v29 = *&v11[*(TupleTypeMetadata3 + 64)];
  v30 = *(v12 + 48);
  v31 = *(v12 + 64);
  v32 = v12;
  v33 = v73 + 32;
  v34 = *(v73 + 32);
  v25 = v71;
  v34(v15, v11, v71);
  *&v15[v30] = v28;
  *&v15[v31] = v29;
  v64 = *&v15[*(v32 + 48)];
  v35 = *&v15[*(v32 + 64)];
  v60 = v34;
  v61 = v33;
  v34(v72, v15, v25);
  v37 = v67;
  v36 = v68;
  v38 = v66;
  if (v35)
  {
    swift_unknownObjectRetain();
    v39 = v35;
    v40 = sub_25F30477C();
    v41 = sub_25F3059FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v58 = v39;
      v43 = v42;
      v44 = swift_slowAlloc();
      v75[0] = v44;
      *v43 = 136446466;
      v76[0] = v25;
      swift_getMetatypeMetadata();
      v45 = sub_25F304E7C();
      v47 = sub_25F1C53AC(v45, v46, v75);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      v48 = static Logging.describe<A>(ref:)(v68, v38);
      v50 = sub_25F1C53AC(v48, v49, v75);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_25F1A2000, v40, v41, "%{public}s: Retain requested for previous purged, canceling purging: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v44, -1, -1);
      v51 = v43;
      v36 = v68;
      v39 = v58;
      MEMORY[0x25F8D9510](v51, -1, -1);
    }

    [v39 invalidate];
  }

  v69 = v35;
  Ref.init(_:)(v36, v76);
  v52 = v76[0];
  v53 = v65;
  v54 = *(v65 + 48);
  v55 = *(v65 + 64);
  v56 = v72;
  v27 = v73;
  result = (*(v73 + 16))(v37, v72, v25);
  if (!__OFADD__(v64, 1))
  {
    *&v37[v54] = v64 + 1;
    *&v37[v55] = 0;
    (*(v59 + 56))(v37, 0, 1, v53);
    v74 = v52;
    swift_beginAccess();
    sub_25F304B4C();
    swift_unknownObjectRetain();
    sub_25F304B9C();
    swift_endAccess();

    v26 = v70;
    v60(v70, v56, v25);
    v24 = 0;
    return (*(v27 + 56))(v26, v24, 1, v25);
  }

  __break(1u);
  return result;
}

uint64_t AssociatedObjectCache.withAssociatedObject(to:during:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v19[1] = a3;
  v20 = a2;
  v7 = *(*v5 + 88);
  v21 = type metadata accessor for AssociatedObjectCache.DecrementResult(0, *(*v5 + 80), v7, a4);
  v19[0] = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v19 - v8;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = v19 - v16;
  AssociatedObjectCache.retainedAssociatedObject(to:)(a1, v14);
  if ((*(v15 + 48))(v14, 1, v7) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v15 + 32))(v17, v14, v7);
  v20(v17);
  AssociatedObjectCache.decrementReferenceCount(to:after:)(a1, 0, 0, 0, v9);
  (*(v19[0] + 8))(v9, v21);
  return (*(v15 + 8))(v17, v7);
}

const char *AssociatedObjectCache.decrementReferenceCount(to:after:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v167 = a4;
  v172 = a3;
  v170 = a2;
  v8 = *v5;
  v9 = *v5;
  v178 = a5;
  v179 = v9;
  v166 = sub_25F30479C();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v163 = v10;
  v164 = v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 88);
  v161 = sub_25F305C1C();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = v157 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v176 = sub_25F305C1C();
  v175 = *(v176 - 8);
  v13 = MEMORY[0x28223BE20](v176);
  v15 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v157 - v16;
  v174 = swift_getTupleTypeMetadata3();
  v18 = MEMORY[0x28223BE20](v174);
  v20 = v157 - v19;
  v183 = *(v11 - 8);
  v21 = *(v183 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v168 = v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v169 = v157 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v162 = v157 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v158 = v157 - v28;
  MEMORY[0x28223BE20](v27);
  v177 = v157 - v29;
  v30 = qword_27FD56C40;
  swift_unknownObjectRetain();
  v173 = v30;
  v31 = sub_25F30477C();
  v32 = sub_25F3059FC();
  swift_unknownObjectRelease();
  v33 = os_log_type_enabled(v31, v32);
  v184 = v11;
  v182 = a1;
  v180 = v6;
  v171 = v15;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v34 = 136446466;
    v193 = v11;
    swift_getMetatypeMetadata();
    v36 = sub_25F304E7C();
    v38 = sub_25F1C53AC(v36, v37, &aBlock);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v39 = *(v179 + 80);
    v40 = static Logging.describe<A>(ref:)(v182, v39);
    v42 = sub_25F1C53AC(v40, v41, &aBlock);
    v43 = v39;

    *(v34 + 14) = v42;
    a1 = v182;
    _os_log_impl(&dword_25F1A2000, v31, v32, "%{public}s: Release requested for: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v35, -1, -1);
    MEMORY[0x25F8D9510](v34, -1, -1);
  }

  else
  {

    v43 = *(v179 + 80);
  }

  Ref.init(_:)(a1, &v193);
  v44 = v193;
  swift_beginAccess();
  v192 = v44;
  v47 = type metadata accessor for Ref(0, v43, v45, v46);
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  v49 = TupleTypeMetadata3;
  sub_25F304B8C();
  swift_unknownObjectRelease();
  swift_endAccess();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v17, 1, v49) == 1)
  {
    (*(v175 + 8))(v17, v176);
    aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AssociatedObjectCache.swift";
    v186 = 133;
    LOBYTE(v187) = 2;
    *(&v187 + 1) = v192;
    HIDWORD(v187) = *(&v192 + 3);
    v188 = xmmword_25F311AB0;
    v189 = "decrementReferenceCount(to:after:)";
    v190 = 34;
    v191 = 2;
    sub_25F213F98(&aBlock);
    return (*(v183 + 56))(v178, 2, 2, v184);
  }

  v157[0] = v21;
  v175 = v50;
  v176 = WitnessTable;
  v179 = v43;
  v52 = *&v17[*(v49 + 48)];
  v53 = *&v17[*(v49 + 64)];
  v54 = v174;
  v55 = *(v174 + 48);
  v56 = *(v174 + 64);
  v57 = *(v183 + 32);
  v157[1] = v183 + 32;
  v58 = v17;
  v59 = v184;
  v57(v20, v58, v184);
  *&v20[v55] = v52;
  *&v20[v56] = v53;
  v60 = *&v20[*(v54 + 48)];

  v61 = v177;
  v174 = v57;
  v57(v177, v20, v59);
  if (!v60)
  {
    aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AssociatedObjectCache.swift";
    v186 = 133;
    LOBYTE(v187) = 2;
    v188 = xmmword_25F311AA0;
    v189 = "decrementReferenceCount(to:after:)";
    v190 = 34;
    v191 = 2;
    sub_25F213F98(&aBlock);
    v84 = v183;
    v83 = v184;
    (*(v183 + 8))(v61, v184);
    return (*(v84 + 56))(v178, 2, 2, v83);
  }

  if (v60 != 1)
  {
    v161 = v47;
    v86 = v183;
    v85 = v184;
    v87 = v183 + 16;
    v88 = *(v183 + 16);
    v89 = v168;
    v88(v168, v61, v184);
    v90 = sub_25F30477C();
    v91 = sub_25F3059FC();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v60 - 1;
    v94 = __OFSUB__(v60, 1);
    v174 = v87;
    v172 = v88;
    v173 = v93;
    if (v92)
    {
      v95 = swift_slowAlloc();
      result = swift_slowAlloc();
      v170 = result;
      aBlock = result;
      *v95 = 134218242;
      if (v94)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      *(v95 + 4) = v93;
      *(v95 + 12) = 2082;
      v96 = v184;
      sub_25F30657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_25F3081E0;
      *(v97 + 56) = MEMORY[0x277D837D0];
      *(v97 + 64) = sub_25F1F7190();
      *(v97 + 32) = 0x63656A624F796E41;
      *(v97 + 40) = 0xE900000000000074;
      v98 = sub_25F304DBC();
      v99 = MEMORY[0x277D83C10];
      *(v97 + 96) = MEMORY[0x277D83B88];
      *(v97 + 104) = v99;
      *(v97 + 72) = v98;
      v100 = sub_25F304E3C();
      v102 = v101;
      swift_unknownObjectRelease();
      v103 = v89;
      v104 = *(v86 + 8);
      v104(v103, v96);
      v105 = sub_25F1C53AC(v100, v102, &aBlock);

      *(v95 + 14) = v105;
      _os_log_impl(&dword_25F1A2000, v90, v91, "Decrementing ref count to %ld for %{public}s", v95, 0x16u);
      v106 = v170;
      __swift_destroy_boxed_opaque_existential_1(v170);
      MEMORY[0x25F8D9510](v106, -1, -1);
      v107 = v95;
      v85 = v96;
      MEMORY[0x25F8D9510](v107, -1, -1);

      v94 = 0;
      v61 = v177;
    }

    else
    {

      v108 = v89;
      v104 = *(v86 + 8);
      v104(v108, v85);
    }

    Ref.init(_:)(v182, &v193);
    v109 = v193;
    v110 = TupleTypeMetadata3;
    v111 = *(TupleTypeMetadata3 + 48);
    v112 = *(TupleTypeMetadata3 + 64);
    v113 = v171;
    result = v172(v171, v61, v85);
    if (!v94)
    {
      *&v113[v111] = v173;
      *&v113[v112] = 0;
      (*(v175 + 56))(v113, 0, 1, v110);
      v192 = v109;
      swift_beginAccess();
      sub_25F304B4C();
      swift_unknownObjectRetain();
      sub_25F304B9C();
      swift_endAccess();
      v114 = v183;
      v104(v61, v85);
      return (*(v114 + 56))(v178, 2, 2, v85);
    }

    __break(1u);
    goto LABEL_28;
  }

  v62 = v183;
  v63 = v180;
  if (v172)
  {
    v161 = v47;
    v64 = v170;
    v65 = v170;
    v66 = *(v183 + 16);
    v67 = v162;
    v168 = (v183 + 16);
    v160 = v66;
    (v66)(v162, v61, v184);
    v68 = sub_25F30477C();
    v69 = v62;
    v70 = sub_25F3059FC();
    if (os_log_type_enabled(v68, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock = v72;
      *v71 = 134218242;
      *(v71 + 4) = v64;
      *(v71 + 12) = 2082;
      v73 = v184;
      sub_25F30657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_25F3081E0;
      *(v74 + 56) = MEMORY[0x277D837D0];
      *(v74 + 64) = sub_25F1F7190();
      *(v74 + 32) = 0x63656A624F796E41;
      *(v74 + 40) = 0xE900000000000074;
      v75 = sub_25F304DBC();
      v76 = MEMORY[0x277D83C10];
      *(v74 + 96) = MEMORY[0x277D83B88];
      *(v74 + 104) = v76;
      *(v74 + 72) = v75;
      v77 = sub_25F304E3C();
      v79 = v78;
      swift_unknownObjectRelease();
      v80 = *(v69 + 8);
      v159 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v80(v67, v73);
      v81 = v77;
      v63 = v180;
      v82 = sub_25F1C53AC(v81, v79, &aBlock);
      v61 = v177;

      *(v71 + 14) = v82;
      _os_log_impl(&dword_25F1A2000, v68, v70, "Ref count is 1, but delaying purging for %f seconds: %{public}s", v71, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x25F8D9510](v72, -1, -1);
      MEMORY[0x25F8D9510](v71, -1, -1);
    }

    else
    {

      v128 = *(v69 + 8);
      v159 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v128(v67, v184);
    }

    v129 = v69;
    v130 = v157[0];
    v162 = objc_opt_self();
    v158 = swift_allocObject();
    swift_weakInit();
    v131 = v165;
    v132 = v164;
    v133 = v166;
    (*(v165 + 16))(v164, v63 + v173, v166);
    v134 = v184;
    (v160)(v169, v61, v184);
    v135 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v136 = (v163 + v135 + *(v129 + 80)) & ~*(v129 + 80);
    v137 = (v130 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF8;
    v139 = swift_allocObject();
    *(v139 + 16) = v179;
    *(v139 + 24) = v134;
    (*(v131 + 32))(v139 + v135, v132, v133);
    v140 = v134;
    (v174)(v139 + v136, v169, v134);
    *(v139 + v137) = v158;
    v141 = v182;
    *(v139 + v138) = v182;
    v142 = (v139 + ((v138 + 15) & 0xFFFFFFFFFFFFFFF8));
    v143 = v172;
    v144 = v167;
    *v142 = v172;
    v142[1] = v144;
    *(&v188 + 1) = sub_25F282008;
    v189 = v139;
    aBlock = MEMORY[0x277D85DD0];
    v186 = 1107296256;
    v187 = sub_25F1E315C;
    *&v188 = &block_descriptor_8;
    v145 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    sub_25F2312F8(v170, v143, v144);

    v146 = [v162 scheduledTimerWithTimeInterval:0 repeats:v145 block:*&v65];
    _Block_release(v145);
    Ref.init(_:)(v141, &v193);
    v147 = v193;
    v148 = TupleTypeMetadata3;
    v149 = *(TupleTypeMetadata3 + 48);
    v150 = *(TupleTypeMetadata3 + 64);
    v151 = v171;
    v152 = v177;
    (v160)(v171, v177, v140);
    *&v151[v149] = 0;
    *&v151[v150] = v146;
    (*(v175 + 56))(v151, 0, 1, v148);
    v192 = v147;
    swift_beginAccess();
    sub_25F304B4C();
    swift_unknownObjectRetain();
    v153 = v146;
    sub_25F304B9C();
    swift_endAccess();

    v154 = v183;
    (*(v183 + 8))(v152, v140);
    return (*(v154 + 56))(v178, 1, 2, v140);
  }

  else
  {
    v115 = v158;
    v116 = v184;
    (*(v183 + 16))(v158, v61, v184);
    v117 = sub_25F30477C();
    v118 = sub_25F3059FC();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      aBlock = v120;
      *v119 = 136446210;
      sub_25F30657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_25F3081E0;
      *(v121 + 56) = MEMORY[0x277D837D0];
      *(v121 + 64) = sub_25F1F7190();
      *(v121 + 32) = 0x63656A624F796E41;
      *(v121 + 40) = 0xE900000000000074;
      v122 = sub_25F304DBC();
      v123 = MEMORY[0x277D83C10];
      *(v121 + 96) = MEMORY[0x277D83B88];
      *(v121 + 104) = v123;
      *(v121 + 72) = v122;
      v124 = sub_25F304E3C();
      v126 = v125;
      swift_unknownObjectRelease();
      (*(v62 + 8))(v115, v116);
      v127 = sub_25F1C53AC(v124, v126, &aBlock);

      *(v119 + 4) = v127;
      _os_log_impl(&dword_25F1A2000, v117, v118, "Ref count is 1, invalidating: %{public}s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x25F8D9510](v120, -1, -1);
      MEMORY[0x25F8D9510](v119, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v115, v116);
    }

    v155 = v159;
    AssociatedObjectCache.purgeAssociatedObject(to:)(v182, v159);
    v160[1](v155, v161);
    v156 = v178;
    (v174)(v178, v177, v116);
    return (*(v62 + 56))(v156, 0, 2, v116);
  }
}

uint64_t AssociatedObjectCache.purgeAssociatedObject(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v37 = sub_25F305C1C();
  v39 = *(v37 - 8);
  v7 = MEMORY[0x28223BE20](v37);
  v41 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v38 = v5;
  v11 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = *(v4 + 80);
  Ref.init(_:)(a1, &v44);
  v15 = v44;
  swift_beginAccess();
  v43 = v15;
  type metadata accessor for Ref(0, v14, v16, v17);
  v40 = a1;
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  sub_25F304B8C();
  swift_unknownObjectRelease();
  swift_endAccess();
  v18 = *(TupleTypeMetadata3 - 8);
  v19 = *(v18 + 48);
  v36 = v18 + 48;
  if (v19(v10, 1, TupleTypeMetadata3) == 1)
  {
    v20 = v37;
    (*(v39 + 8))(v10, v37);
    v21 = v38;
  }

  else
  {
    v33 = *&v10[*(TupleTypeMetadata3 + 64)];
    v34 = v19;
    v22 = *(v11 + 64);
    v23 = v38;
    v24 = v11;
    v25 = *(v38 - 8);
    (*(v25 + 32))(v13, v10, v38);
    *&v13[v22] = v33;
    v26 = *&v13[*(v24 + 64)];
    (*(v25 + 8))(v13, v23);
    [v26 invalidate];

    v21 = v23;
    v19 = v34;
    v20 = v37;
  }

  Ref.init(_:)(v40, &v44);
  swift_beginAccess();
  sub_25F304B4C();
  swift_unknownObjectRetain();
  v27 = v41;
  sub_25F304A8C();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v19(v27, 1, TupleTypeMetadata3) == 1)
  {
    (*(v39 + 8))(v27, v20);
    v28 = *(v21 - 8);
    v29 = 1;
    v30 = v42;
  }

  else
  {

    v28 = *(v21 - 8);
    v30 = v42;
    (*(v28 + 32))(v42, v27, v21);
    v29 = 0;
  }

  return (*(v28 + 56))(v30, v29, 1, v21);
}

id sub_25F2810B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a4;
  v14 = sub_25F305C1C();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v18 = *(a9 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isValid];
  if (result)
  {
    (*(v18 + 16))(v20, a3, a9);
    v22 = sub_25F30477C();
    v23 = sub_25F3059FC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = a5;
      v25 = v24;
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v25 = 136446210;
      sub_25F30657C();
      v39 = a6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v26 = swift_allocObject();
      v38 = a7;
      v27 = v26;
      *(v26 + 16) = xmmword_25F3081E0;
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = sub_25F1F7190();
      v27[4] = 0x63656A624F796E41;
      v27[5] = 0xE900000000000074;
      v28 = sub_25F304DBC();
      v29 = MEMORY[0x277D83C10];
      v27[12] = MEMORY[0x277D83B88];
      v27[13] = v29;
      v27[9] = v28;
      v30 = sub_25F304E3C();
      v32 = v31;
      swift_unknownObjectRelease();
      (*(v18 + 8))(v20, a9);
      v33 = sub_25F1C53AC(v30, v32, v43);

      *(v25 + 4) = v33;
      a6 = v39;
      _os_log_impl(&dword_25F1A2000, v22, v23, "Purging pending associated object %{public}s", v25, 0xCu);
      v34 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x25F8D9510](v34, -1, -1);
      v35 = v25;
      a5 = v37;
      MEMORY[0x25F8D9510](v35, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v20, a9);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      AssociatedObjectCache.purgeAssociatedObject(to:)(a5, v17);
    }

    else
    {
      (*(v18 + 56))(v17, 1, 1, a9);
    }

    (*(v41 + 8))(v17, v42);
    return a6(a5);
  }

  return result;
}

Swift::Void __swiftcall AssociatedObjectCache.purgeAllAssociatedObjects()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(TupleTypeMetadata3 - 8);
  v5 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v61 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = v50 - v8;
  MEMORY[0x28223BE20](v7);
  v69 = v50 - v9;
  v50[1] = type metadata accessor for Ref(255, *(v1 + 80), v10, v11);
  v70 = TupleTypeMetadata3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_25F305C1C();
  v13 = *(v65 - 8);
  v14 = MEMORY[0x28223BE20](v65);
  v16 = (v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v64 = v50 - v17;
  swift_beginAccess();
  v51 = v0;
  v18 = v0[2];
  v19 = *(v18 + 64);
  v53 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v52 = (v20 + 63) >> 6;
  v66 = TupleTypeMetadata2 - 8;
  v67 = TupleTypeMetadata2;
  v68 = (v4 + 16);
  v54 = v4 + 32;
  v62 = v2;
  v63 = (v13 + 32);
  v58 = v2 - 8;
  v55 = v4;
  v57 = (v4 + 8);
  v56 = v18;

  v23 = 0;
  v59 = v16;
  if (v22)
  {
    while (1)
    {
      v24 = v23;
      v25 = v67;
LABEL_12:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v24 << 6);
      v30 = *(*(v56 + 48) + 8 * v29);
      v31 = v55;
      v33 = v69;
      v32 = v70;
      (*(v55 + 16))(v69, *(v56 + 56) + *(v55 + 72) * v29, v70);
      v34 = *(v25 + 48);
      *v16 = v30;
      (*(v31 + 32))(v16 + v34, v33, v32);
      v35 = *(v25 - 8);
      (*(v35 + 56))(v16, 0, 1, v25);
      swift_unknownObjectRetain();
      v27 = v24;
LABEL_13:
      v36 = v64;
      (*v63)(v64, v16, v65);
      if ((*(v35 + 48))(v36, 1, v25) == 1)
      {
        break;
      }

      swift_unknownObjectRelease();
      v37 = &v36[*(v25 + 48)];
      v73 = v27;
      v38 = v70;
      v39 = *&v37[*(v70 + 48)];
      v71 = *&v37[*(v70 + 64)];
      v72 = v39;
      v40 = v62;
      v41 = *(v62 - 8);
      v42 = *(v41 + 32);
      v43 = v60;
      v42(v60);
      v44 = *(v38 + 48);
      v45 = *(v38 + 64);
      v46 = v69;
      (v42)(v69, v43, v40);
      v16 = v59;
      v47 = v71;
      *&v46[v44] = v72;
      *&v46[v45] = v47;
      v48 = v61;
      (*v68)(v61, v46, v38);
      v49 = *&v48[*(v38 + 64)];
      [v49 invalidate];

      (*v57)(v46, v38);
      (*(v41 + 8))(v48, v40);
      v23 = v73;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    swift_beginAccess();
    swift_getWitnessTable();
    sub_25F304B4C();
    sub_25F304B3C();
    swift_endAccess();
  }

  else
  {
LABEL_5:
    if (v52 <= v23 + 1)
    {
      v26 = v23 + 1;
    }

    else
    {
      v26 = v52;
    }

    v27 = v26 - 1;
    v25 = v67;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v52)
      {
        v35 = *(v67 - 8);
        (*(v35 + 56))(v16, 1, 1, v67);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v53 + 8 * v24);
      ++v23;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t AssociatedObjectCache.deinit()
{

  v1 = qword_27FD56C40;
  v2 = sub_25F30479C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AssociatedObjectCache.__deallocating_deinit()
{
  AssociatedObjectCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AssociatedObjectCache.DecrementResult.Discriminant.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

uint64_t sub_25F281C80(uint64_t a1)
{
  sub_25F30671C();
  AssociatedObjectCache.DecrementResult.Discriminant.hash(into:)(v3, *v1);
  return sub_25F30676C();
}

uint64_t AssociatedObjectCache.DecrementResult.discriminant.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  result = (*(*(*(a1 + 24) - 8) + 48))(v4, 2);
  if (result)
  {
    if (result != 1)
    {
      return 2;
    }
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 0;
  }

  return result;
}

uint64_t sub_25F281DDC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_25F281E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F304BCC();

  return sub_25F281E68(a1, v6, a2, a3);
}

unint64_t sub_25F281E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_25F304DCC();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

id sub_25F282008(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_25F30479C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25F2810B4(a1, v1 + v6, v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v4);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F282158(uint64_t a1)
{
  result = sub_25F30479C();
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

uint64_t sub_25F28223C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_25F282298(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_25F28246C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_25F2826DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS21AssociatedObjectCacheC10PurgeDelayOyxq__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F282730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F282780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_25F2827D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t CommandLineTool.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommandLineTool.init(description:commands:usageExamples:printer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return sub_25F1A42F8(a5, (a6 + 4));
}

Swift::Void __swiftcall CommandLineTool.run()()
{
  v1 = sub_25F305F0C();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);

    v3 = v0[7];
    v4 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    sub_25F30619C();
    (*(v4 + 24))(0, 0xE000000000000000, 1, v3, v4);

    exit(1);
  }

  sub_25F282A8C(v1, v1 + 32, 1, (2 * v2) | 1);
}

uint64_t sub_25F282A8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (((a4 >> 1) - a3) <= 0)
  {
    v19 = v4[7];
    v20 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v19);
    v21 = CommandLineTool.usage.getter();
    AnyCommandLinePrinter.print(_:_:)(v21, v22, MEMORY[0x277D84F90], v19, v20);

    sub_25F283E08();
    swift_allocError();
    return swift_willThrow();
  }

  if ((a4 >> 1) <= a3)
  {
    goto LABEL_41;
  }

  v36 = a4 >> 1;
  v37 = a2;
  v10 = (a2 + 16 * a3);
  v11 = *v10;
  v38 = a3 + 1;
  v40 = v4;
  v6 = v4[2];
  v12 = *(v6 + 16);
  v41 = v10[1];

  swift_unknownObjectRetain();
  v13 = (v6 + 40);
  v7 = -1;
  while (v7 - v12 != -1)
  {
    ++v7;
    v5 = v41;
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v4 = *(v13 - 1);
    v8 = *v13;
    if ((*(*v13 + 8))(v4, *v13) == v11 && v14 == v41)
    {

      v5 = a4;
      if (a4)
      {
LABEL_20:
        sub_25F3065CC();
        v6 = a1;
        swift_unknownObjectRetain_n();
        v25 = swift_dynamicCastClass();
        v7 = v38;
        if (!v25)
        {
          swift_unknownObjectRelease();
          v25 = MEMORY[0x277D84F90];
        }

        v26 = *(v25 + 16);

        if (!__OFSUB__(v36, v38))
        {
          if (v26 == v36 - v38)
          {
            v18 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v18)
            {
              v18 = MEMORY[0x277D84F90];
              goto LABEL_26;
            }

            goto LABEL_27;
          }

LABEL_43:
          swift_unknownObjectRelease();
LABEL_14:
          sub_25F283F04(v6, v37, v7, v5);
          v18 = v17;
LABEL_26:
          swift_unknownObjectRelease();
LABEL_27:
          (*(v8 + 40))(v18, v40 + 4, v4, v8);

          return swift_unknownObjectRelease();
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_13:
      v6 = a1;
      swift_unknownObjectRetain();
      v7 = v38;
      goto LABEL_14;
    }

    v13 += 2;
    v16 = sub_25F30659C();

    if (v16)
    {
      v5 = a4;
      if (a4)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  if (v11 == 26669 && v41 == 0xE200000000000000)
  {

    v24 = v40;
  }

  else
  {
    v24 = v40;
    if ((sub_25F30659C() & 1) == 0 && (v11 != 0x706C65682D2DLL || v41 != 0xE600000000000000) && (sub_25F30659C() & 1) == 0 && (v11 != 0x706C65682DLL || v41 != 0xE500000000000000) && (sub_25F30659C() & 1) == 0)
    {
      v31 = v40[7];
      v32 = v40[8];
      __swift_project_boxed_opaque_existential_1(v40 + 4, v31);
      v33 = CommandLineTool.usage.getter();
      AnyCommandLinePrinter.print(_:_:)(v33, v34, MEMORY[0x277D84F90], v31, v32);

      sub_25F283DB4();
      swift_allocError();
      *v35 = v11;
      v35[1] = v41;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  v27 = v24[7];
  v28 = v24[8];
  __swift_project_boxed_opaque_existential_1(v24 + 4, v27);
  v29 = CommandLineTool.usage.getter();
  AnyCommandLinePrinter.print(_:_:)(v29, v30, MEMORY[0x277D84F90], v27, v28);

  return swift_unknownObjectRelease();
}

uint64_t CommandLineTool.run<A>(arguments:)(uint64_t a1, uint64_t a2)
{
  v61 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v63 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v60 = swift_getAssociatedTypeWitness();
  v14 = *(v60 - 8);
  v15 = MEMORY[0x28223BE20](v60);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  if (sub_25F3057BC() < 1)
  {
    v35 = v64[7];
    v36 = v64[8];
    __swift_project_boxed_opaque_existential_1(v64 + 4, v35);
    v37 = CommandLineTool.usage.getter();
    AnyCommandLinePrinter.print(_:_:)(v37, v38, MEMORY[0x277D84F90], v35, v36);

    sub_25F283E08();
    swift_allocError();
    return swift_willThrow();
  }

  v55 = v9;
  v56 = AssociatedTypeWitness;
  v57 = v2;
  sub_25F3057AC();
  v19 = sub_25F3058FC();
  v62 = v13;
  v21 = *v20;
  v66 = v20[1];

  v19(v65, 0);
  v22 = *(v14 + 8);
  v23 = v60;
  v22(v18, v60);
  (*(v61 + 16))(v63, a1, a2);
  v24 = v59;
  sub_25F3057AC();
  sub_25F3057CC();
  v22(v24, v23);
  v61 = a2;
  v59 = v7;
  sub_25F30587C();
  result = (v22)(v18, v23);
  v26 = v64[2];
  v27 = (v26 + 40);
  v28 = -*(v26 + 16);
  v29 = -1;
  while (1)
  {
    if (v28 + v29 == -1)
    {
      v39 = v64;
      v40 = v66;
      if (v21 == 26669 && v66 == 0xE200000000000000)
      {

        v41 = v56;
        v42 = v55;
      }

      else
      {
        v44 = sub_25F30659C();
        v41 = v56;
        v42 = v55;
        if ((v44 & 1) == 0 && (v21 != 0x706C65682D2DLL || v40 != 0xE600000000000000) && (sub_25F30659C() & 1) == 0 && (v21 != 0x706C65682DLL || v40 != 0xE500000000000000) && (sub_25F30659C() & 1) == 0)
        {
          v49 = v39[7];
          v50 = v39[8];
          __swift_project_boxed_opaque_existential_1(v39 + 4, v49);
          v51 = CommandLineTool.usage.getter();
          AnyCommandLinePrinter.print(_:_:)(v51, v52, MEMORY[0x277D84F90], v49, v50);

          sub_25F283DB4();
          swift_allocError();
          v53 = v66;
          *v54 = v21;
          v54[1] = v53;
          swift_willThrow();
          return (*(v42 + 8))(v62, v41);
        }
      }

      v45 = v39[7];
      v46 = v39[8];
      __swift_project_boxed_opaque_existential_1(v39 + 4, v45);
      v47 = CommandLineTool.usage.getter();
      AnyCommandLinePrinter.print(_:_:)(v47, v48, MEMORY[0x277D84F90], v45, v46);
      v43 = v62;
      goto LABEL_26;
    }

    ++v29;
    v30 = v66;
    if (v29 >= *(v26 + 16))
    {
      break;
    }

    v31 = *v27;
    if ((*(*v27 + 8))(*(v27 - 1), *v27) == v21 && v32 == v30)
    {

LABEL_16:
      v42 = v55;
      v41 = v56;
      v43 = v62;
      (*(v55 + 16))(v58, v62, v56);
      swift_getAssociatedConformanceWitness();
      sub_25F3053CC();
      (*(v31 + 40))();

LABEL_26:

      return (*(v42 + 8))(v43, v41);
    }

    v27 += 2;
    v34 = sub_25F30659C();

    if (v34)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CommandLineTool.printUsage()()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  v3 = CommandLineTool.usage.getter();
  AnyCommandLinePrinter.print(_:_:)(v3, v4, MEMORY[0x277D84F90], v1, v2);
}

void *CommandLineTool.usage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  v40 = v0;
  v3 = v0[3];
  v4 = v3[2];
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    v44 = inited;
    goto LABEL_13;
  }

  v6 = v3[5];
  *(v2 + 32) = v3[4];
  *(v2 + 40) = v6;
  v44 = v2;

  if (v4 == 1)
  {
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  sub_25F1BF514(v7, (v3 + 4), 1, (2 * v4) | 1);

  v2 = v44;
  v8 = *(v44 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

LABEL_14:
  *&v41 = v5;
  sub_25F1BD008(0, v8, 0);
  v9 = v5;
  v23 = (v2 + 40);
  do
  {
    v25 = *(v23 - 1);
    v24 = *v23;
    v26 = objc_allocWithZone(MEMORY[0x277CCAC38]);

    v27 = [v26 init];
    v28 = [v27 processName];

    v29 = sub_25F304E0C();
    v31 = v30;

    v43._countAndFlagsBits = v29;
    v43._object = v31;

    MEMORY[0x25F8D7130](32, 0xE100000000000000);

    MEMORY[0x25F8D7130](v25, v24);

    v32 = v31;
    *&v41 = v9;
    v34 = *(v9 + 16);
    v33 = *(v9 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_25F1BD008((v33 > 1), v34 + 1, 1);
      v9 = v41;
    }

    *(v9 + 16) = v34 + 1;
    v35 = v9 + 16 * v34;
    *(v35 + 32) = v29;
    *(v35 + 40) = v32;
    v23 += 2;
    --v8;
  }

  while (v8);
LABEL_5:
  v43._countAndFlagsBits = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  sub_25F304CAC();

  v10._countAndFlagsBits = 0x20202020202020;
  v10._object = 0xE700000000000000;
  v11 = String.prefixingEachLine(with:startingOnLine:)(v10, 1uLL);

  v12 = v40[2];
  v13 = *(v12 + 16);
  if (v13)
  {
    v42 = MEMORY[0x277D84F90];
    v39 = v12;
    result = sub_25F1BD008(0, v13, 0);
    v15 = v39;
    v16 = 0;
    v17 = v42;
    while (v16 < *(v15 + 16))
    {
      v41 = *(v39 + 32 + 16 * v16);
      result = sub_25F283A40(&v41, &v43);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
      v42 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_25F1BD008((v20 > 1), v21 + 1, 1);
        v15 = v39;
        v17 = v42;
      }

      ++v16;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = countAndFlagsBits;
      *(v22 + 40) = object;
      if (v13 == v16)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
LABEL_20:
    v43._countAndFlagsBits = v17;
    v36 = sub_25F304CAC();
    v38 = v37;

    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    sub_25F305FAC();

    v43._countAndFlagsBits = 0x203A6567617355;
    v43._object = 0xE700000000000000;
    MEMORY[0x25F8D7130](v11._countAndFlagsBits, v11._object);

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](*v40, v40[1]);
    MEMORY[0x25F8D7130](0x4E414D4D4F430A0ALL, 0xEC0000000A0A5344);
    MEMORY[0x25F8D7130](v36, v38);

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    return v43._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_25F283A40@<X0>(void *a1@<X0>, Swift::String *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*(v4 + 32))(*a1, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v24 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v6, 0);
    v7 = v5 + 80;
    do
    {

      v22 = CommandLineOptionDescription.shortUsage.getter();
      v23 = v8;
      MEMORY[0x25F8D7130](2570, 0xE200000000000000);
      v9._countAndFlagsBits = 538976288;
      v9._object = 0xE400000000000000;
      countAndFlagsBits = String.prefixingEachLine(with:startingOnLine:)(v9, 0)._countAndFlagsBits;
      MEMORY[0x25F8D7130](countAndFlagsBits);

      v12 = *(v24 + 16);
      v11 = *(v24 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25F1BD008((v11 > 1), v12 + 1, 1);
      }

      v7 += 56;
      *(v24 + 16) = v12 + 1;
      v13 = v24 + 16 * v12;
      *(v13 + 32) = v22;
      *(v13 + 40) = v23;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  sub_25F304CAC();

  (*(v4 + 8))(v3, v4);
  MEMORY[0x25F8D7130](32, 0xE100000000000000);
  v14 = (*(v4 + 16))(v3, v4);
  MEMORY[0x25F8D7130](v14);

  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  (*(v4 + 24))(v3, v4);
  v15._countAndFlagsBits = 538976288;
  v15._object = 0xE400000000000000;
  v16 = String.prefixingEachLine(with:startingOnLine:)(v15, 0);

  MEMORY[0x25F8D7130](v16._countAndFlagsBits, v16._object);

  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  v17._countAndFlagsBits = 538976288;
  v17._object = 0xE400000000000000;
  v18 = String.prefixingEachLine(with:startingOnLine:)(v17, 0);

  MEMORY[0x25F8D7130](v18._countAndFlagsBits, v18._object);

  v19._countAndFlagsBits = 538976288;
  v19._object = 0xE400000000000000;
  v20 = String.prefixingEachLine(with:startingOnLine:)(v19, 0);

  *a2 = v20;
  return result;
}

unint64_t sub_25F283DB4()
{
  result = qword_27FD56E48;
  if (!qword_27FD56E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56E48);
  }

  return result;
}

unint64_t sub_25F283E08()
{
  result = qword_27FD56E50;
  if (!qword_27FD56E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56E50);
  }

  return result;
}

unint64_t sub_25F283E78()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  return 0xD000000000000011;
}

void sub_25F283F04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t RandomAccessCollection<>.remapTransferredPathsForDestination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v40 = a1;
  v41 = a5;
  v7 = a3;
  v43 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v31 - v9;
  v10 = sub_25F305C1C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v13);
  v14 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedTypeWitness();
  v32 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v31 - v15;
  sub_25F3057DC();
  sub_25F3050DC();
  v17 = v31;
  v18 = v42;
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v19 = v44;
  v38 = *(v44 + 48);
  v39 = v44 + 48;
  if (v38(v12, 1, v14) != 1)
  {
    v20 = *(v19 + 32);
    v34 = v41 + 16;
    v35 = v20;
    v44 = v19 + 32;
    v33 = (v19 + 8);
    v36 = v12;
    v37 = v16;
    do
    {
      v35(v17, v12, v14);
      v21 = v17;
      v22 = sub_25F304D8C();
      v23 = v14;
      v24 = v6;
      v25 = v7;
      v26 = v41;
      v27 = *(v41 + 16);
      v28 = swift_getAssociatedTypeWitness();
      v29 = v26;
      v7 = v25;
      v27(v40, v28, v29);
      v6 = v24;
      v14 = v23;
      v22(v45, 0);
      v17 = v21;
      v12 = v36;
      v16 = v37;
      v18 = v42;
      (*v33)(v17, v14);
      sub_25F305CDC();
    }

    while (v38(v12, 1, v14) != 1);
  }

  return (*(v32 + 8))(v16, v18);
}

uint64_t RandomAccessCollection<>.remappedTransferredPathsForDestination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  swift_getAssociatedTypeWitness();
  v16 = sub_25F3053CC();
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  RandomAccessCollection<>.remapTransferredPathsForDestination(_:)(a1, v11, WitnessTable, v13, a5);
  return v16;
}

uint64_t Sequence<>.pathsForTransferrableArtifactsOnHost.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F305FEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  MEMORY[0x25F8D7310](a1, a2);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  swift_getWitnessTable();
  sub_25F284848();
  sub_25F30639C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_25F2847D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v4(AssociatedTypeWitness, v3);
  *a1 = result;
  return result;
}

unint64_t sub_25F284848()
{
  result = qword_27FD56E58[0];
  if (!qword_27FD56E58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD56E58);
  }

  return result;
}

uint64_t sub_25F2848D4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v5, v9);
    a1(v12);
    (*(v10 + 8))(v12, v9);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a5, v5, *(a2 + 16));
    sub_25F30678C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_25F284B18(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *a3;
  v14 = *(a3 + 8);
  type metadata accessor for MapFuture(0, *(v9 + 80), a6, a4);
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v16 = v13;
  *(&v16 + 1) = v14;

  sub_25F2033CC(v11);
  sub_25F2033CC(v13);
  swift_allocObject();

  return sub_25F2854D4(v18, v6, &v17, &v16, a4, a5);
}

uint64_t sub_25F284CD4@<X0>(uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v7 = sub_25F30678C();
  return sub_25F284D70(sub_25F2868D4, v7, x8_0);
}

uint64_t sub_25F284D70@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t Future.mapFailure(dsoHandle:file:line:column:function:on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v19 = *a10;
  v14 = swift_allocObject();
  v15 = *(v13 + 80);
  v14[2] = v15;
  v14[3] = a11;
  v14[4] = a12;
  v18[0] = 0;
  v18[1] = 0;

  v16 = sub_25F284B18(&v20, v18, &v19, sub_25F28654C, v14, v15);

  sub_25F2033DC(v18[0]);
  return v16;
}

uint64_t sub_25F285060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v9 = sub_25F30678C();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v13[-v10], a1, v9);
  v14 = a2;
  v15 = a3;
  return sub_25F2848D4(sub_25F2868A0, v9, a5);
}

uint64_t sub_25F2851F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *v15;
  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v21 = *a10;
  v17 = swift_allocObject();
  v17[2] = *(v16 + 80);
  v17[3] = a13;
  v17[4] = a11;
  v17[5] = a12;
  v20[0] = 0;
  v20[1] = 0;

  v18 = sub_25F284B18(&v22, &v21, v20, a15, v17, a13);

  sub_25F2033DC(v20[0]);
  return v18;
}

uint64_t sub_25F2852CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v10 = sub_25F30678C();
  return a6(a2, a3, v10, a5);
}

uint64_t Future.ignoringValue(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *v9;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v11 = swift_allocObject();
  *(v11 + 16) = *(v10 + 80);
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  v12 = sub_25F284B18(&v16, v15, v14, sub_25F28658C, v11, MEMORY[0x277D84F78] + 8);

  sub_25F2033DC(v14[0]);
  sub_25F2033DC(v15[0]);
  return v12;
}

uint64_t sub_25F28543C@<X0>(uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  return sub_25F2B722C(nullsub_2, v4, x8_0);
}

uint64_t sub_25F2854D4(_OWORD *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = a1[1];
  v20[0] = *a1;
  v20[1] = v10;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v17 = *a4;
  v18 = *a3;
  v19 = a2;
  v11 = type metadata accessor for MapFuture.Activity(0, *(v9 + 200), *(v9 + 208), a4);
  v6[13] = sub_25F203E0C(&v19, v11);
  v6[14] = a5;
  v6[15] = a6;
  *(v6 + 8) = v18;
  *(v6 + 9) = v17;

  v15 = sub_25F2E95EC(v20, v12, v13, v14);
  swift_retain_n();
  Future.observeCompletion(_:)(sub_25F286780, v15);

  Future.observeCancelation(_:)(sub_25F286744, v15);

  return v15;
}

uint64_t sub_25F28560C(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = *v1;
  v4 = sub_25F30490C();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25F30494C();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = sub_25F30678C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v58 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v69 = v2[13];
  *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/MapFuture.swift";
  *(&aBlock + 1) = 121;
  LOBYTE(v64) = 2;
  v65 = xmmword_25F311E40;
  v66 = "receiveUnderlyingCompletion(_:)";
  v67 = 31;
  v68 = 2;
  v61 = v7;
  v16 = *(v3 + 208);
  v62 = v16;
  type metadata accessor for MapFuture.Activity(255, v7, v16, v17);
  v18 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&aBlock, sub_25F286784, v60, v18, MEMORY[0x277D839B0], WitnessTable);

  if (v70 == 1)
  {
    v21 = v57;
    Result.analyze<A>(success:failure:)(sub_25F2867DC, v2, sub_25F2867E8, v2, v8);
    v22 = *(&aBlock + 1);
    v50 = aBlock;
    v23 = *(v9 + 16);
    v23(v15, v21, v8);
    v23(v58, v15, v8);
    v23(v59, v15, v8);
    v24 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v7;
    *(v25 + 3) = v16;
    *(v25 + 4) = v2;
    v26 = v15;
    v27 = v22;
    v28 = v50;
    (*(v9 + 32))(&v25[v24], v26, v8);
    *&aBlock = v28;
    *(&aBlock + 1) = v27;
    swift_retain_n();
    v31 = v8;
    if (ExecutionLane.isCurrentLane.getter())
    {
      v32 = v2;
      v33 = v58;
      sub_25F2860BC(v32, v58, v29, v30);
      sub_25F2033DC(v28);

      v34 = *(v9 + 8);
      v34(v59, v8);
      return (v34)(v33, v8);
    }

    else
    {
      if (v28)
      {
        v57 = v9;
        if (v28 == 1)
        {
          sub_25F1F54F4();
          v49 = sub_25F305AAC();
          *(&v65 + 1) = sub_25F2867F4;
          v66 = v25;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v64 = sub_25F1D8C38;
          *&v65 = &block_descriptor_15;
          v48 = _Block_copy(&aBlock);

          v35 = v51;
          sub_25F30492C();
          *&aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v36 = v52;
          v37 = v56;
          sub_25F305E5C();
          v38 = v48;
          v39 = v49;
          MEMORY[0x25F8D7C70](0, v35, v36, v48);
          _Block_release(v38);

          (*(v55 + 8))(v36, v37);
          (*(v53 + 8))(v35, v54);
        }

        else
        {
          *(&v65 + 1) = sub_25F2867F4;
          v66 = v25;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v64 = sub_25F1D8C38;
          *&v65 = &block_descriptor_9;
          v49 = _Block_copy(&aBlock);

          sub_25F2033CC(v28);
          v43 = v51;
          sub_25F30492C();
          v69 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v44 = v52;
          v45 = v56;
          sub_25F305E5C();
          v46 = v49;
          MEMORY[0x25F8D7C70](0, v43, v44, v49);
          _Block_release(v46);
          sub_25F2033DC(v28);
          (*(v55 + 8))(v44, v45);
          (*(v53 + 8))(v43, v54);
        }

        v9 = v57;
        v42 = v58;
        v41 = v59;
      }

      else
      {
        v40 = v59;
        sub_25F2860BC(v2, v59, v29, v30);

        v41 = v40;
        v42 = v58;
      }

      v47 = *(v9 + 8);
      v47(v41, v31);
      sub_25F2033DC(v28);
      return (v47)(v42, v31);
    }
  }

  return result;
}

uint64_t sub_25F285E2C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *(*v4 + 208);
  v9 = type metadata accessor for FutureTermination(0, v8, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-v11];
  v13 = a1[1];
  v31 = *a1;
  v32 = v13;
  v33[0] = a1[2];
  *(v33 + 9) = *(a1 + 41);
  v29 = v5[13];
  *&v27 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/MapFuture.swift";
  *(&v27 + 1) = 121;
  v28[0] = 2;
  *&v28[8] = xmmword_25F311E50;
  *&v28[24] = "cancel(callsite:)";
  *&v28[32] = 17;
  v28[40] = 2;
  v14 = *(v7 + 200);
  v25 = v14;
  v26 = v8;
  type metadata accessor for MapFuture.Activity(255, v14, v8, v15);
  v16 = sub_25F30476C();
  type metadata accessor for Future(255, v14, v17, v18);
  v19 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v27, sub_25F286728, v24, v16, v19, WitnessTable);

  v22 = v30;
  if (v30)
  {
    v23 = v32;
    *v12 = v31;
    v12[1] = v23;
    v12[2] = v33[0];
    *(v12 + 41) = *(v33 + 9);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v12);
    (*(v10 + 8))(v12, v9);
    v27 = v31;
    *v28 = v32;
    *&v28[16] = v33[0];
    *&v28[25] = *(v33 + 9);
    (*(*v22 + 192))(&v27);
  }

  return result;
}

unint64_t sub_25F2860BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v5 = *a1;
  v6 = *(*a1 + 208);
  v7 = type metadata accessor for FutureTermination(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v11 = sub_25F30678C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v28 = a1[13];
  *&v22 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/MapFuture.swift";
  *(&v22 + 1) = 121;
  v23 = 2;
  v24 = xmmword_25F311E60;
  v25 = "receiveUnderlyingCompletion(_:)";
  v26 = 31;
  v27 = 2;
  type metadata accessor for MapFuture.Activity(255, *(v5 + 200), v6, v15);
  v16 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v22, v16, WitnessTable);
  v18 = v29;
  result = sub_25F1AC51C(v29);
  if (v18 != 1)
  {
    (a1[14])(v21);
    static FutureTermination.completed(_:)(v14, v6, v10);
    sub_25F2EA104(v10);
    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

void sub_25F286348()
{

  sub_25F2033DC(*(v0 + 128));
  v1 = *(v0 + 144);

  sub_25F2033DC(v1);
}

uint64_t sub_25F286388()
{
  v0 = Future.deinit();

  sub_25F2033DC(*(v0 + 128));
  sub_25F2033DC(*(v0 + 144));
  return v0;
}

uint64_t sub_25F2863D0()
{
  v0 = sub_25F286388();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_25F286400(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a9;
  v12 = a9[1];
  *&v17 = a1;
  *(&v17 + 1) = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v16[0] = v13;
  v16[1] = v12;
  v15[0] = v13;
  v15[1] = v12;
  return sub_25F284B18(&v17, v16, v15, a10, a11, a12);
}

uint64_t sub_25F286460(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v18 = *a9;
  v14 = swift_allocObject();
  v14[2] = *(v13 + 80);
  v14[3] = a12;
  v14[4] = a10;
  v14[5] = a11;
  v17[0] = 0;
  v17[1] = 0;

  v15 = sub_25F284B18(&v19, &v18, v17, sub_25F2869A0, v14, a12);

  sub_25F2033DC(v17[0]);
  return v15;
}

uint64_t sub_25F28660C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS9MapFuture33_07154E19DA1EE4718DB1BBAB4DC353C1LLC8ActivityOyxq__G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F286660(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2866B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t *sub_25F286728@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result < 2)
  {
    v2 = 0;
  }

  *result = 1;
  *a2 = v2;
  return result;
}

uint64_t sub_25F286744(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_25F285E2C(v6, a2, a3, a4);
}

unint64_t sub_25F286784@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  result = *a1;
  if (result >= 2)
  {
    result = sub_25F1AC51C(result);
    *a1 = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

id sub_25F2867DC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

id sub_25F2867E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

unint64_t sub_25F2867F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v3 = *(sub_25F30678C() - 8);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_25F2860BC(v4, v5, v1, v2);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F2868A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25F286960(void *a1)
{
  result = (*(v1 + 32))(*(v1 + 48));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

double static EventStream.merge(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  sub_25F2BC048(sub_25F286B70, v6, a3);

  return result;
}

double sub_25F286A60@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  v14[7] = a4;
  v14[2] = a5;
  v14[3] = a2;
  v14[4] = a3;
  type metadata accessor for EventStream(255, a5, a3, a4);
  v8 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25F1C1AC4(sub_25F289504, v14, v8, &type metadata for CancellationToken, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  return CancellationToken.init(callsite:didCancel:)(v15, sub_25F289528, v12, a6);
}

uint64_t sub_25F286C14(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *v2;
      v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
      v8 = 133;
      v9 = 2;
      v10 = xmmword_25F311F50;
      v11 = "merge(_:)";
      v12 = 9;
      v13 = 2;
      v5 = *(v4 + 152);
      MEMORY[0x28223BE20](result);

      os_unfair_lock_lock(v5 + 19);
      sub_25F1D3F70(&v5[4], &v6);
      os_unfair_lock_unlock(v5 + 19);
      if ((v6 & 1) == 0)
      {
        v3();
      }

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_25F286D90(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a1[1];
  v21[0] = *a1;
  v21[1] = v15;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  (*(a9 + 16))(&v23, a7, a9);
  v22[2] = v23;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a2;
  v16[8] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream(0, AssociatedTypeWitness, v18, v19);

  sub_25F2BBFFC(v21);
}

uint64_t sub_25F286F00(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  if ((*(v15 + 48))(v14, 1, a7) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v15 + 32))(v17, v14, a7);
  v20(v17);
  return (*(v15 + 8))(v17, a7);
}

uint64_t sub_25F287100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v20 = a8;
  v21 = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  (*(v13 + 32))(&v17[v16], &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v18 = &v17[(v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_25F2BC048(v21, v17, v20);
}

uint64_t sub_25F28725C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a1[1];
  v21[0] = *a1;
  v21[1] = v15;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  (*(a9 + 16))(&v23, a7, a9);
  v22[2] = v23;
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a5;
  v16[8] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream(0, AssociatedTypeWitness, v18, v19);

  sub_25F2BBFFC(v21);
}

uint64_t objectdestroy_2Tm_2()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F287464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, void, void))
{
  v5 = (*(*(*(v4 + 16) - 8) + 80) + 40) & ~*(*(*(v4 + 16) - 8) + 80);
  v6 = (v4 + ((*(*(*(v4 + 16) - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a4(a1, a2, a3, v4 + v5, *v6, v6[1]);
}

uint64_t sub_25F2874FC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a2(v12);
  return (*(v9 + 8))(v12, a7);
}

uint64_t EventStreamProtocol.merged<A>(with:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for EventStream(255, AssociatedTypeWitness, v11, v12);
  sub_25F3064EC();
  swift_allocObject();
  v14 = sub_25F30527C();
  (*(a4 + 16))(a2, a4);
  (*(a5 + 16))(a3, a5);
  sub_25F1F7314(v14, v13);
  static EventStream.merge(_:)(v15, AssociatedTypeWitness, x8_0);
}

uint64_t EventStreamProtocol.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v13);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v12, a3);
  v17 = (v16 + v15);
  *v17 = a1;
  v17[1] = a2;
  swift_getAssociatedTypeWitness();
  sub_25F2BC048(sub_25F289168, v16, a5);
}

uint64_t sub_25F28788C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  (*(a8 + 16))(&v22, a7, a8);
  v21[2] = v22;
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a2;
  v15[7] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream(0, AssociatedTypeWitness, v17, v18);

  sub_25F2BBFFC(v20);
}

uint64_t EventStreamProtocol.replacingNil<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], v11, a3);
  EventStreamProtocol.map<A>(_:)(sub_25F2891D4, v13, a2, a3, a4, a5);
}

uint64_t sub_25F287B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = *(a3 - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, a3) != 1)
  {
    return (*(v12 + 32))(a4, v11, a3);
  }

  (*(v12 + 16))(a4, a2, a3);
  result = (v13)(v11, 1, a3);
  if (result != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t EventStreamProtocol<>.switchToLatest()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11, a1);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  (*(v8 + 32))(&v13[v12], v10, a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return sub_25F2BC048(sub_25F289214, v13, a4);
}

double sub_25F287E60@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v14 = a1[1];
  v30[0] = *a1;
  v30[1] = v14;
  v31[0] = a1[2];
  *(v31 + 9) = *(a1 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD56F60, &qword_25F311FB0);
  v15 = swift_allocObject();
  *(v15 + 44) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  *(v15 + 40) = 0;
  (*(a5 + 16))(v28, a4, a5);
  v27[2] = v28[0];
  v16 = a1[1];
  v26[0] = *a1;
  v26[1] = v16;
  v27[0] = a1[2];
  *(v27 + 9) = *(a1 + 41);
  v17 = swift_allocObject();
  v18 = a1[1];
  *(v17 + 40) = *a1;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 56) = v18;
  *(v17 + 72) = a1[2];
  *(v17 + 81) = *(a1 + 41);
  *(v17 + 104) = a2;
  *(v17 + 112) = a3;
  *(v17 + 120) = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream(0, AssociatedTypeWitness, v20, v21);

  sub_25F2BBFFC(v26);

  v22 = v29;
  v25 = v28[1];
  v23 = swift_allocObject();
  *(v23 + 16) = v15;
  *(v23 + 24) = v25;
  *(v23 + 40) = v22;
  return CancellationToken.init(callsite:didCancel:)(v30, sub_25F289378, v23, a7);
}

uint64_t sub_25F288064(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, os_unfair_lock_s *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 16);
  swift_getAssociatedTypeWitness();
  v10(&v21);
  v11 = a2[1];
  v23 = *a2;
  *v24 = v11;
  *&v24[16] = a2[2];
  *&v24[25] = *(a2 + 41);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for EventStream(0, AssociatedTypeWitness, v13, v14);
  sub_25F2BBFFC(&v23);

  os_unfair_lock_lock(a5 + 11);
  sub_25F289384(&a5[4], &v23);
  os_unfair_lock_unlock(a5 + 11);
  v16 = v23;
  if (v23)
  {
    v17 = *(&v23 + 1);
    v18 = *v24;
    *&v23 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
    *(&v23 + 1) = 133;
    v24[0] = 2;
    *&v24[8] = xmmword_25F311F60;
    *&v24[24] = "switchToLatest()";
    *&v24[32] = 16;
    v24[40] = 2;
    v19 = *(v18 + 152);
    MEMORY[0x28223BE20](v15);
    os_unfair_lock_lock(v19 + 19);
    sub_25F1D3F70(&v19[4], &v22);
    os_unfair_lock_unlock(v19 + 19);
    if ((v22 & 1) == 0)
    {
      v16();
    }

    return sub_25F1DF100(v16, v17, v18);
  }

  else
  {
  }
}

uint64_t sub_25F2882B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (*(result + 24))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = *result;
    v7 = *(result + 8);
    v8 = *(result + 16);
    v12 = result;
    sub_25F2893A4(*result, v7, v8);

    result = sub_25F1DF100(v6, v7, v8);
    *v12 = a2;
    v12[1] = a3;
    v12[2] = a4;
  }

  *a5 = v6;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

void sub_25F288370(os_unfair_lock_s *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a1 + 11);
  sub_25F288478(&a1[4]);
  os_unfair_lock_unlock(a1 + 11);
  v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  v10 = 133;
  v11 = 2;
  v12 = xmmword_25F311F70;
  v13 = "switchToLatest()";
  v14 = 16;
  v15 = 2;
  v7 = *(a4 + 152);
  os_unfair_lock_lock(v7 + 19);
  sub_25F1D3F70(&v7[4], v8);
  os_unfair_lock_unlock(v7 + 19);
  if ((v8[0] & 1) == 0)
  {
    a2();
  }
}

void sub_25F288478(uint64_t a1)
{
  v3 = *a1;
  if (!*a1)
  {
LABEL_6:
    *(a1 + 24) = 1;
    return;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  v9 = 133;
  v12 = "switchToLatest()";
  v13 = 16;
  v10 = 2;
  v11 = xmmword_25F311F80;
  v14 = 2;
  v6 = *(v5 + 152);
  MEMORY[0x28223BE20](a1);

  os_unfair_lock_lock(v6 + 19);
  sub_25F1D3F70(&v6[4], &v7);
  if (!v1)
  {
    os_unfair_lock_unlock(v6 + 19);
    if ((v7 & 1) == 0)
    {
      v3();
    }

    sub_25F1DF100(v3, v4, v5);
    goto LABEL_6;
  }

  os_unfair_lock_unlock(v6 + 19);
  __break(1u);
}

uint64_t EventStreamProtocol<>.filterDuplicateEvents()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11, a1);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  (*(v8 + 32))(&v13[v12], v10, a1);
  swift_getAssociatedTypeWitness();
  return sub_25F2BC048(sub_25F2892AC, v13, a4);
}

uint64_t sub_25F288734@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *&v28 = a6;
  v27 = a2;
  v29 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for FilterDuplicateEventsState(0, AssociatedTypeWitness, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v18 = a1[1];
  v34 = *a1;
  v35 = v18;
  v36[0] = a1[2];
  *(v36 + 9) = *(a1 + 41);
  (*(*(AssociatedTypeWitness - 8) + 56))(&v26 - v16, 1, 1, AssociatedTypeWitness);
  v19 = sub_25F203E0C(v17, v14);
  (*(v15 + 8))(v17, v14);
  (*(a5 + 16))(v32, a4, a5);
  v31[2] = v32[0];
  v30[0] = v34;
  v30[1] = v35;
  v31[0] = v36[0];
  *(v31 + 9) = *(v36 + 9);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = v28;
  v20[5] = v19;
  v20[6] = v27;
  v20[7] = a3;
  type metadata accessor for EventStream(0, AssociatedTypeWitness, v21, v22);

  sub_25F2BBFFC(v30);

  v23 = v33;
  v28 = v32[1];
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 32) = v23;
  CancellationToken.init(callsite:didCancel:)(&v34, sub_25F289334, v24, v29);
}

uint64_t sub_25F288A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a2;
  *&v16 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  *(&v16 + 1) = 133;
  v17 = 2;
  v18 = xmmword_25F311F90;
  v19 = "filterDuplicateEvents()";
  v20 = 23;
  v21 = 2;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for FilterDuplicateEventsState(255, AssociatedTypeWitness, v10, v11);
  v12 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  result = SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v16, sub_25F289340, v15, v12, MEMORY[0x277D839B0], WitnessTable);
  if (v23 == 1)
  {
    return a3(a1);
  }

  return result;
}

uint64_t sub_25F288B38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v51 = a6;
  v40 = a5;
  v53 = a2;
  v54 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v37 - v8;
  v9 = sub_25F305C1C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v37 - v12;
  v45 = *(v9 - 8);
  v14 = v45;
  v15 = MEMORY[0x28223BE20](v11);
  v44 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v50 = v14;
  v22 = *(v14 + 16);
  v22(&v37 - v20, v54, v9);
  v48 = v7[2];
  v49 = v7 + 2;
  v48(v19, v53, AssociatedTypeWitness);
  v46 = v7[7];
  v47 = v7 + 7;
  v46(v19, 0, 1, AssociatedTypeWitness);
  v43 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v22(v13, v21, v9);
  v52 = v23;
  v22(&v13[v23], v19, v9);
  v41 = v7;
  v24 = v7[6];
  if (v24(v13, 1, AssociatedTypeWitness) != 1)
  {
    v38 = v21;
    v22(v44, v13, v9);
    v28 = v24(&v13[v52], 1, AssociatedTypeWitness);
    v29 = v41;
    v30 = (v41 + 1);
    v26 = v13;
    if (v28 != 1)
    {
      v31 = &v13[v52];
      v32 = v39;
      (v41[4])(v39, v31, AssociatedTypeWitness);
      v33 = v44;
      LODWORD(v52) = sub_25F304DCC();
      v34 = v29[1];
      v34(v32, AssociatedTypeWitness);
      v25 = *(v45 + 8);
      v25(v19, v9);
      v25(v38, v9);
      v34(v33, AssociatedTypeWitness);
      v25(v26, v9);
      v27 = v52 ^ 1;
      goto LABEL_8;
    }

    v25 = *(v45 + 8);
    v25(v19, v9);
    v25(v38, v9);
    (*v30)(v44, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v25 = *(v45 + 8);
  v25(v19, v9);
  v25(v21, v9);
  v26 = v13;
  if (v24(&v13[v52], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    (*(v42 + 8))(v26, v43);
    v27 = 1;
    goto LABEL_8;
  }

  v25(v13, v9);
  v27 = 0;
LABEL_8:
  v35 = v54;
  v25(v54, v9);
  v48(v35, v53, AssociatedTypeWitness);
  result = (v46)(v35, 0, 1, AssociatedTypeWitness);
  *v51 = v27 & 1;
  return result;
}

void sub_25F289088(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream+Operators.swift";
  v7 = 133;
  v8 = 2;
  v9 = xmmword_25F311FA0;
  v10 = "filterDuplicateEvents()";
  v11 = 23;
  v12 = 2;
  v4 = *(a3 + 152);
  os_unfair_lock_lock(v4 + 19);
  sub_25F1D3DD4(&v4[4], &v5);
  os_unfair_lock_unlock(v4 + 19);
  if ((v5 & 1) == 0)
  {
    a1();
  }
}

uint64_t sub_25F289168(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 32) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_25F28788C(a1, a2, a3, v3 + v4, *v5, v5[1], *(v3 + 16), *(v3 + 24));
}

uint64_t objectdestroy_14Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F2893A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

uint64_t sub_25F289428(uint64_t a1)
{
  v3 = *(v1 + 48);
  result = (*(v1 + 32))();
  if (result)
  {
    return v3(a1);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS17CancellationTokenVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F289548(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F2895A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25F28960C(uint64_t a1)
{
  result = sub_25F305C1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double Timeout.effectiveSeconds.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    if (qword_27FD52858 != -1)
    {
      v2 = *v0;
      swift_once();
      result = v2;
    }

    if (byte_27FD56FF0)
    {
      if (qword_27FD52860 != -1)
      {
        v3 = result;
        swift_once();
        result = v3;
      }

      if (byte_27FD56FF1)
      {
        return result * 20.0;
      }
    }

    else
    {
      return *&qword_27FD56FE8;
    }
  }

  return result;
}

Swift::Double __swiftcall effectiveTimeout(_:)(Swift::Double result)
{
  if (qword_27FD52858 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if ((byte_27FD56FF0 & 1) == 0)
  {
    return *&qword_27FD56FE8;
  }

  if (qword_27FD52860 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (byte_27FD56FF1)
  {
    return result * 20.0;
  }

  return result;
}

double static Timeout.minutes(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2 * 60.0;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_25F28983C()
{
  result = sub_25F289868();
  qword_27FD56FE8 = result;
  byte_27FD56FF0 = v1 & 1;
  return result;
}

uint64_t sub_25F289868()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_25F304A6C();
  if (!*(v2 + 16) || (v3 = sub_25F219234(0x4F454D49545F5655, 0xEA00000000005455), (v4 & 1) == 0))
  {

    return 0;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  v15 = 0;

  LOBYTE(v6) = sub_25F2039A8(v6, v7, &v15);
  swift_bridgeObjectRelease_n();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v8 = v15;
  v9 = v15;
  if (qword_27FD52910 != -1)
  {
    swift_once();
  }

  v10 = sub_25F30479C();
  __swift_project_value_buffer(v10, qword_27FD57190);
  v11 = sub_25F30477C();
  v12 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v8;
    _os_log_impl(&dword_25F1A2000, v11, v12, "Using explicit timeout %f", v13, 0xCu);
    MEMORY[0x25F8D9510](v13, -1, -1);
  }

  return v9;
}

uint64_t sub_25F289A5C()
{
  result = sub_25F289B28();
  byte_27FD56FF1 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for Timeout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Timeout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25F289B28()
{
  if (qword_281561A58 != -1)
  {
    swift_once();
  }

  v0 = byte_27FD54198;
  if (byte_27FD54198)
  {
    goto LABEL_7;
  }

  if (qword_281561A60 != -1)
  {
    swift_once();
  }

  if (byte_27FD54199 == 1)
  {
LABEL_7:
    if (qword_27FD52910 != -1)
    {
      swift_once();
    }

    v1 = sub_25F30479C();
    __swift_project_value_buffer(v1, qword_27FD57190);
    v2 = sub_25F30477C();
    v3 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25F1A2000, v2, v3, "Using CI timeout", v4, 2u);
      MEMORY[0x25F8D9510](v4, -1, -1);
    }

    if (v0)
    {
      return 1;
    }

    if (qword_281561A60 != -1)
    {
      swift_once();
    }
  }

  return byte_27FD54199;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.MissingEnvironmentObjectError(0) + 28);

  return sub_25F1DF920(v3, a1);
}

uint64_t type metadata accessor for CrashReportError.MissingEnvironmentObjectError(uint64_t a1)
{
  result = qword_27FD57000;
  if (!qword_27FD57000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.highValueTitle.getter()
{
  sub_25F305FAC();

  MEMORY[0x25F8D7130](*(v0 + 32), *(v0 + 40));
  MEMORY[0x25F8D7130](10322146, 0xA300000000000000);
  return 0x1000000000000029;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.additionalInfo.getter()
{
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v0[2], v0[3]);
  MEMORY[0x25F8D7130](0xD00000000000002DLL, 0x800000025F31A2F0);
  v2 = v0[4];
  v1 = v0[5];
  MEMORY[0x25F8D7130](v2, v1);
  MEMORY[0x25F8D7130](0xD00000000000002ALL, 0x800000025F31A320);
  MEMORY[0x25F8D7130](v2, v1);
  MEMORY[0x25F8D7130](0xD000000000000023, 0x800000025F31A350);
  return 0;
}

id sub_25F289EE8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000048, 0x800000025F31A420, 0);
  qword_27FD56FF8 = result;
  return result;
}

uint64_t static CrashReportError.MissingEnvironmentObjectError.asiRegularExpression.getter()
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FD56FF8;
  v1 = qword_27FD56FF8;
  return v0;
}

void static CrashReportError.MissingEnvironmentObjectError.asiRegularExpression.setter(uint64_t a1)
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56FF8;
  qword_27FD56FF8 = a1;
}

uint64_t (*static CrashReportError.MissingEnvironmentObjectError.asiRegularExpression.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_25F28A124@<X0>(void *a1@<X8>)
{
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56FF8;
  *a1 = qword_27FD56FF8;

  return v2;
}

void sub_25F28A1B0(id *a1)
{
  v1 = *a1;
  v2 = qword_27FD52868;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27FD56FF8;
  qword_27FD56FF8 = v1;
}

uint64_t CrashReportError.MissingEnvironmentObjectError.init(report:asi:match:)@<X0>(uint64_t a1@<X0>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for CrashReportError.MissingEnvironmentObjectError(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  v11[8] = 1;
  v12 = (a1 + *(type metadata accessor for CrashReport(0) + 20));
  v13 = v12[1];
  *(v11 + 2) = *v12;
  *(v11 + 3) = v13;

  v14 = sub_25F304DDC();

  v15 = sub_25F304DDC();
  v16 = [a4 rangeWithName_];
  v18 = v17;

  v19 = [v14 substringWithRange_];
  v20 = sub_25F304E0C();
  v22 = v21;

  v27[0] = v20;
  v27[1] = v22;
  v23 = sub_25F3050BC();
  v25 = v24;

  *(v11 + 4) = v23;
  *(v11 + 5) = v25;
  sub_25F28A44C(a1, &v11[*(v8 + 28)], type metadata accessor for CrashReport);
  sub_25F28A44C(v11, a5, type metadata accessor for CrashReportError.MissingEnvironmentObjectError);
  return (*(v9 + 56))(a5, 0, 1, v8);
}

uint64_t sub_25F28A44C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F28A4B4()
{
  sub_25F305FAC();

  MEMORY[0x25F8D7130](*(v0 + 32), *(v0 + 40));
  MEMORY[0x25F8D7130](10322146, 0xA300000000000000);
  return 0x1000000000000029;
}

uint64_t ConcurrentInvalidatable.observeInvalidation(_:)@<X0>(void (*a1)(void, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  (*(a4 + 16))(a3, a4);

  sub_25F28A760(a1, a2, a5);
}

uint64_t sub_25F28A638@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(_BYTE *)@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v25 = *(a1 + 64);
  v8 = *(a1 + 16);
  *v22 = *a1;
  *&v22[16] = v8;
  v9 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v9;
  v10 = *v22;
  v11 = HIBYTE(v25);
  if ((v25 & 0x100) != 0)
  {
    *a5 = *v22;
    result = sub_25F1B7174(v22, v20, a3, a4);
  }

  else
  {
    v14 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v14;
    v21 = *(a1 + 64);
    v15 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v15;
    v18 = *&v22[8];
    sub_25F1B7174(v22, v19, a3, a4);
    sub_25F1AF698(v20, a3, a4);
    *v19 = v10;
    *&v19[8] = v18;
    result = a2(v19);
    v17 = *&v19[16];
    v26 = 0;
    *a1 = *v19;
    *(a1 + 16) = v17;
    *(a1 + 65) = 0;
  }

  *(a5 + 8) = v11 & 1;
  return result;
}

uint64_t sub_25F28A760@<X0>(void (*a1)(void, __n128)@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v15 = a1;
  v16 = a2;
  v6 = *(*(v3 + 32) + 152);
  os_unfair_lock_lock(v6 + 21);
  sub_25F28D32C(&v6[4], &v13);
  os_unfair_lock_unlock(v6 + 21);
  v7 = v13;
  if (v14 == 1)
  {

    (a1)(&v13);
    sub_25F1A4678(v7, 1);
    result = sub_25F1A4678(v7, 1);
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v12;
    *(v10 + 24) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v11 = swift_allocObject();
    LOBYTE(v13) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    result = swift_allocObject();
    *(result + 76) = 0;
    *(result + 73) = v13;
    *(v11 + 152) = result;
    *(v11 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    *(v11 + 24) = 130;
    *(v11 + 32) = 2;
    *(v11 + 40) = xmmword_25F312120;
    *(v11 + 56) = "makeCancelationToken(for:)";
    *(v11 + 64) = 26;
    *(v11 + 72) = 2;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
    *(v11 + 96) = xmmword_25F3077E0;
    *(v11 + 112) = 2;
    *(v11 + 120) = 0xD000000000000011;
    *(v11 + 128) = 0x800000025F319920;
    *(v11 + 136) = 0x64656C65636E6163;
    *(v11 + 144) = 0xE800000000000000;
    v9 = sub_25F28D358;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  return result;
}

double sub_25F28A980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*(v2 + 32) + 152);
  os_unfair_lock_lock(v6 + 21);
  sub_25F28D190(&v6[4], &v18);
  os_unfair_lock_unlock(v6 + 21);
  v7 = v18;
  if (v19 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(a1 + 8);
      ObjectType = swift_getObjectType();

      Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/InvalidationHandle.swift", 45, 2, 106, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v17 = *(a1 + 16);
    v18 = v7;
    v17(&v18);
    sub_25F1A4678(v7, 1);
    sub_25F1A4678(v7, 1);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = *(v3 + 48);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v14 = swift_allocObject();
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    v15 = swift_allocObject();
    *(v15 + 76) = 0;
    *(v15 + 73) = v20;
    *(v14 + 152) = v15;
    *(v14 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
    *(v14 + 24) = 130;
    *(v14 + 32) = 2;
    *(v14 + 40) = xmmword_25F312130;
    *(v14 + 56) = "makeCancelationToken(for:)";
    *(v14 + 64) = 26;
    *(v14 + 72) = 2;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
    *&result = 1;
    *(v14 + 96) = xmmword_25F3077E0;
    *(v14 + 112) = 2;
    *(v14 + 120) = 0xD000000000000011;
    *(v14 + 128) = 0x800000025F319920;
    *(v14 + 136) = 0x64656C65636E6163;
    *(v14 + 144) = 0xE800000000000000;
    *a2 = Strong;
    *(a2 + 8) = v11;
    *(a2 + 16) = sub_25F28D1BC;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return result;
}

uint64_t sub_25F28AC24@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v4 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 + 1;
  os_unfair_lock_unlock(v4 + 6);
  sub_25F1E6D24(a1, v7);
  result = sub_25F1E4B54(v7, v5);
  *a2 = v5;
  return result;
}

void sub_25F28ACD4()
{
  v1 = *(*(v0 + 32) + 152);

  os_unfair_lock_lock(v1 + 21);
  sub_25F28D2CC(&v1[4]);
  os_unfair_lock_unlock(v1 + 21);

  v2 = v26;
  if (v26)
  {
    v3 = v27;
    v21 = v28;
    v4 = v29;
    v5 = *(v27 + 16);

    if (v5)
    {
      v6 = 0;
      v7 = v27 + 32;
      while (v6 < *(v3 + 16))
      {
        v8 = *(v7 + 8 * v6);
        v24 = v8;
        if (!*(v2 + 2))
        {
          goto LABEL_22;
        }

        v9 = sub_25F21FC78(v8);
        if ((v10 & 1) == 0)
        {
          goto LABEL_23;
        }

        sub_25F1E6D24(*(v2 + 7) + 32 * v9, v25);
        v26 = v24;
        sub_25F1E6CBC(v25, &v27);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = v28;
          ObjectType = swift_getObjectType();
          Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/InvalidationHandle.swift", 45, 2, 106, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        ++v6;
        v24 = v4;
        (v29)(&v24);
        sub_25F1AF698(&v26, &qword_27FD57018, &qword_25F312218);
        if (v5 == v6)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v20 = *(v21 + 16);
      if (!v20)
      {
LABEL_18:

        return;
      }

      v14 = 0;
      v15 = (v21 + 64);
      while (v14 < *(v21 + 16))
      {
        v16 = *(v15 - 4);
        v22 = *(v15 - 3);
        v23 = *(v15 - 2);
        v17 = *v15;
        v26 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
        v27 = 130;
        LOBYTE(v28) = 2;
        v29 = xmmword_25F312140;
        v30 = "_invalidate(callsite:trace:)";
        v31 = 28;
        v32 = 2;
        v18 = *(v17 + 152);
        MEMORY[0x28223BE20](v13);
        swift_unknownObjectRetain();

        os_unfair_lock_lock(v18 + 19);
        sub_25F1D3F70(&v18[4], &v24);
        os_unfair_lock_unlock(v18 + 19);
        if ((v24 & 1) == 0)
        {
          if (v16)
          {
            v19 = swift_getObjectType();
            Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/CancelationToken.swift", 43, 2, 57, v19, v22);
          }

          v23();
        }

        ++v14;

        v13 = swift_unknownObjectRelease();
        v15 += 5;
        if (v20 == v14)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_25F28B118()
{
  v1 = *(*(v0 + 32) + 152);

  os_unfair_lock_lock(v1 + 21);
  sub_25F28D270(&v1[4]);
  os_unfair_lock_unlock(v1 + 21);

  v2 = v19;
  if (v19)
  {
    v3 = v20;
    v17 = v21;
    v4 = v22;
    v5 = *(v20 + 16);

    if (v5)
    {
      v6 = 0;
      while (v6 < *(v3 + 16))
      {
        if (!*(v2 + 2))
        {
          goto LABEL_18;
        }

        v7 = sub_25F21FC78(*(v3 + 32 + 8 * v6));
        if ((v8 & 1) == 0)
        {
          goto LABEL_19;
        }

        v9 = *(*(v2 + 7) + 16 * v7);
        ++v6;

        v19 = v4;
        v9(&v19);

        if (v5 == v6)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:

      v16 = *(v17 + 16);
      if (!v16)
      {
LABEL_14:

        return;
      }

      v11 = 0;
      v12 = (v17 + 48);
      while (v11 < *(v17 + 16))
      {
        v13 = *(v12 - 2);
        v14 = *v12;
        v19 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidationHandle.swift";
        v20 = 130;
        LOBYTE(v21) = 2;
        v22 = xmmword_25F312140;
        v23 = "_invalidate(callsite:trace:)";
        v24 = 28;
        v25 = 2;
        v15 = *(v14 + 152);
        MEMORY[0x28223BE20](v10);

        os_unfair_lock_lock(v15 + 19);
        sub_25F1D3DD4(&v15[4], v18);
        os_unfair_lock_unlock(v15 + 19);
        if ((v18[0] & 1) == 0)
        {
          v13();
        }

        ++v11;

        v12 += 3;
        if (v16 == v11)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_25F28B420@<X0>(uint64_t a1@<X3>, void *a2@<X4>, _OWORD *a3@<X5>, void *a4@<X8>)
{
  *&v17[7] = *a3;
  v6 = a2[3];
  v7 = a2[4];
  *&v17[23] = a3[1];
  *&v17[39] = a3[2];
  *&v17[48] = *(a3 + 41);
  *&v18 = a2[2];
  *(&v18 + 1) = v6;
  memmove(v19, (v7 + 16), 0x39uLL);
  *(v20 + 9) = *v17;
  *(&v20[1] + 9) = *&v17[16];
  *(&v20[2] + 9) = *&v17[32];
  *(&v20[3] + 9) = *&v17[48];
  sub_25F1DF180(&v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54D58, &qword_25F30D4B0);
  inited = swift_initStackObject();
  inited[1] = xmmword_25F3077D0;
  v9 = v19[0];
  inited[2] = v18;
  v11 = v19[2];
  v10 = v20[0];
  v12 = v19[1];
  inited[3] = v9;
  inited[4] = v12;
  v13 = *(&v20[3] + 9);
  v15 = v20[2];
  v14 = v20[3];
  inited[7] = v20[1];
  inited[8] = v15;
  inited[9] = v14;
  *(inited + 153) = v13;
  inited[5] = v11;
  inited[6] = v10;

  result = sub_25F1BA3D4(inited);
  *a4 = a1;
  return result;
}

void sub_25F28B540(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v4 = *a2;
  v5 = *v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 48);
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v9[2] = v10;
    v9[3] = v4;
    Actor.verifyIsolated(_:file:line:)(sub_25F28D360, v9, "PreviewsFoundationOS/InvalidatableProtocols.swift", 49, 2, 43, v8, v6);
    swift_unknownObjectRelease();
  }

  sub_25F28ACD4();
}

uint64_t IsolatedInvalidatable.invalidate(callsite:trace:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  v7 = *a2;
  v8 = *(a4 + 16);
  v9 = v8(a3, a4);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 48);

    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v14[2] = v15;
    v14[3] = v7;
    Actor.verifyIsolated(_:file:line:)(sub_25F28BAC8, v14, "PreviewsFoundationOS/InvalidatableProtocols.swift", 49, 2, 43, v12, v10);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v8(a3, a4);
  sub_25F28ACD4();
}

uint64_t ConcurrentInvalidatable.invalidate(callsite:trace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  sub_25F28B118();
}

uint64_t AnyInvalidatable.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v11 = *a9;
  v14[0] = a1;
  v14[1] = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v13 = v11;
  return (*(a11 + 8))(v14, &v13, a10, a11);
}

void *IsolatedInvalidatable.onInvalidation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = IsolatedInvalidatable.observeInvalidation(_:)(a1, a2, a3, a4, &v8);
  if (v9)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v4, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConcurrentInvalidatable.onInvalidation(_:)(void (*a1)(void, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ConcurrentInvalidatable.observeInvalidation(_:)(a1, a2, a3, a4, &v8);
  if (v8)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v4, a3, a4);
  }

  return result;
}

unint64_t sub_25F28B9E8()
{
  sub_25F305FAC();

  v0 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v0);

  MEMORY[0x25F8D7130](0x3A6563617274202CLL, 0xE900000000000020);
  v1 = InvalidationTrace.description.getter();
  MEMORY[0x25F8D7130](v1);

  return 0xD000000000000017;
}

uint64_t IsolatedInvalidatable.observeInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v11 = *(v8 + 48);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v12 = a1;
  v13 = a2;

  sub_25F28A980(v10, a5);

  return sub_25F1E6CF4(v10);
}

uint64_t IsolatedInvalidatable.invalidationTrace(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  swift_getObjectType();
  v8 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F28BC2C, v8, v7);
}

uint64_t sub_25F28BC2C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_25F28BD3C;
  v6 = *(v0 + 16);

  return MEMORY[0x2822007B8](v6, v2, v3, 0xD000000000000016, 0x800000025F31A4B0, sub_25F28BFFC, v4, &type metadata for InvalidationTrace);
}

uint64_t sub_25F28BD3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F28BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  ObjectType = swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/InvalidatableProtocols.swift", 49, 2, 69, ObjectType, a3);
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v13, v10);
  IsolatedInvalidatable.onInvalidation(_:)(sub_25F28D114, v16, a5, a6);
}

uint64_t IsolatedInvalidatable.invalidation(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_25F28C0D4;

  return IsolatedInvalidatable.invalidationTrace(on:)((v4 + 2), a1, a2, a3, a4);
}