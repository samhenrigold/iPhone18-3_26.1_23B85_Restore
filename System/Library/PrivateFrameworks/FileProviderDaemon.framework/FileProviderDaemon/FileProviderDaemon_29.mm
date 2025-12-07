uint64_t sub_1CF359F70(uint64_t a1)
{
  v2 = sub_1CF3644D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF359FDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 256;
  v4 = a1[9];
  v5 = sub_1CF9E5CF8();
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v7 = a1[11];
  *(a2 + a1[10]) = 0;
  result = (v6)(a2 + v7, 1, 1, v5);
  v9 = a1[13];
  *(a2 + a1[12]) = 0;
  *(a2 + v9) = 0;
  return result;
}

uint64_t sub_1CF35A0B0()
{
  v1 = 0x74616C7563657073;
  if (*v0 != 1)
  {
    v1 = 0;
  }

  if (*v0 == 2)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return v1;
  }
}

id sub_1CF35A108(uint64_t a1)
{
  v1 = *(a1 + qword_1EDEBB7E8 + 8);

  v2 = sub_1CF9E6888();
  v1, v3, v4, v5, v6, v7, v8, v9;

  return v2;
}

uint64_t sub_1CF35A168()
{
  if (*(v0 + qword_1EDEBB788))
  {
    return 1;
  }

  else
  {
    return *(v0 + qword_1EDEBB7C0);
  }
}

uint64_t sub_1CF35A190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v7 + qword_1EDEBB788) = 0;
  *(v7 + qword_1EDEBB7C8) = 0;
  v15 = v7 + qword_1EDEBB7D8;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v7 + qword_1EDEBB7C0) = 0;
  *(v7 + qword_1EDEBB7E0) = 0;
  v16 = qword_1EDEBB7F0;
  *(v8 + v16) = sub_1CF4E24AC(MEMORY[0x1E69E7CC0]);
  *(v8 + qword_1EDEBB780) = a1;

  sub_1CF9E7948();
  v17 = *(*(*(a1 + 32) + 16) + 136);
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);

  0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0x616C756365707323, 0xEF74657365766974);
  v27 = (v8 + qword_1EDEBB7E8);
  *v27 = v18;
  v27[1] = v19;
  *(v8 + qword_1EDEBB7B8) = a2;
  *(v8 + qword_1EDEBB790) = a3;
  *(v8 + qword_1EDEBB798) = a4;
  *(v8 + qword_1EDEBB7A8) = a5;
  *(v8 + qword_1EDEBB7A0) = a6;
  v28 = [objc_opt_self() defaultStore];
  v29 = [v28 maxFileSizeToDownloadSpeculativlyWhenBGSTSizeReportIsOff];

  *(v8 + qword_1EDEBB7B0) = v29;
  *(v8 + qword_1EDEBB7D0) = a7;
  v30 = *(a1 + 32);

  v31 = *(v30 + 16);

  v32 = *(v31 + 136);
  swift_retain_n();

  v33 = sub_1CF363C8C(v32, 0xD00000000000001BLL, 0x80000001CFA43540, v8);

  return v33;
}

void sub_1CF35A3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF7F3788();
  sub_1CF360438(a1, a2, a3);
  if (!v4)
  {
    v8 = &v3[*(*v3 + 136)];
    swift_beginAccess();
    v9 = type metadata accessor for BackgroundDownloaderPacerState(0);
    if (!*&v8[*(v9 + 48)])
    {
      v10 = [objc_allocWithZone(FPDDailyTelemetryCounter) init];
      v11 = *(v9 + 48);
      v12 = *&v8[v11];
      *&v8[v11] = v10;

      v3[72] = 1;
    }

    if (!*&v8[*(v9 + 52)])
    {
      v13 = [objc_allocWithZone(type metadata accessor for SpeculativeDownloadsPreventReasonsTelem()) init];
      v14 = *(v9 + 52);
      v15 = *&v8[v14];
      *&v8[v14] = v13;

      v3[72] = 1;
    }

    sub_1CF35D01C(a1, a2, a3);
  }
}

void sub_1CF35A52C(int64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(*v3 + 136);
  swift_beginAccess();
  if ((*(v7 + 40) & 1) == 0)
  {
    v8 = *(v7 + 32);
    v9 = *(v3 + qword_1EDEBB790);
    if (__OFADD__(v8, v9))
    {
      __break(1u);
    }

    else
    {
      sub_1CF35C140(v8 + v9, a1, a2, a3);
    }
  }
}

void sub_1CF35A5DC(int64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v4 = v3;
  v41 = a1;
  v43 = sub_1CF9E6118();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  (*(v16 + 8))(v18, v15);
  v21 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = a3;
  v22 = v21;
  v23 = &v4[*(*v4 + 136)];
  swift_beginAccess();
  if (v23[40])
  {
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E7298();
    if (!os_log_type_enabled(v25, v26))
    {
      v14 = v11;
      goto LABEL_13;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "🔮 setting maximum downloads allowed", v27, 2u);
    v14 = v11;
    goto LABEL_11;
  }

  v28 = *(v23 + 4);
  v29 = *&v4[qword_1EDEBB790];
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v31 >= v22)
  {
    goto LABEL_14;
  }

  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = sub_1CF9E6108();
  v33 = sub_1CF9E7298();
  if (os_log_type_enabled(v25, v33))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1CEFC7000, v25, v33, "🔮 resetting maximum downloads allowed", v27, 2u);
LABEL_11:
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

LABEL_13:

  (*(v6 + 8))(v14, v43);
  *(v23 + 3) = 0;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v4[72] = 1;
LABEL_14:
  v34 = *(v23 + 3);
  v35 = *&v4[qword_1EDEBB7A0];
  if (v34 < v35)
  {
    if (!__OFSUB__(v35, v34))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  sub_1CF3625E4(0x20uLL);
  v36 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v37 = sub_1CF9E6108();
  v38 = sub_1CF9E7298();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1CEFC7000, v37, v38, "🔮 reached maximum downloads allowed", v39, 2u);
    MEMORY[0x1D386CDC0](v39, -1, -1);
  }

  (*(v6 + 8))(v8, v43);
  sub_1CF35A52C(v41, v42, v40);
}

void sub_1CF35AA68(uint64_t a1)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v83 - v8;
  if (a1 == 1)
  {
    v10 = &v1[*(*v1 + 136)];
    swift_beginAccess();
    v11 = *(v10 + 3);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    *(v10 + 3) = v13;
    v1[72] = 1;
    v14 = *&v10[*(type metadata accessor for BackgroundDownloaderPacerState(0) + 48)];
    if (v14)
    {
      [v14 addNow_];
    }

    v86 = 0x203A6C61746F743CLL;
    v87 = 0xE800000000000000;
    v85 = *(v10 + 3);
    v15 = sub_1CF9E7F98();
    v17 = v16;
    MEMORY[0x1D3868CC0](v15);
    v17, v18, v19, v20, v21, v22, v23, v24;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v26 = v86;
    v25 = v87;
    v27 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E7298();
    v25, v30, v31, v32, v33, v34, v35, v36;
    if (os_log_type_enabled(v28, v29))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v86 = v38;
      *v37 = 136315394;
      v39 = sub_1CF7F53C8(1);
      v84 = v3;
      v41 = v40;
      v42 = sub_1CEFD0DF0(v39, v40, &v86);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v50 = sub_1CEFD0DF0(v26, v25, &v86);
      v25, v51, v52, v53, v54, v55, v56, v57;
      *(v37 + 14) = v50;
      _os_log_impl(&dword_1CEFC7000, v28, v29, "⏰  finished new download for %s%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v38, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);

      (*(v4 + 8))(v9, v84);
      return;
    }

    v25, v76, v77, v78, v79, v80, v81, v82;
    v74 = *(v4 + 8);
    v75 = v9;
  }

  else
  {
    v58 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v59 = sub_1CF9E6108();
    v60 = sub_1CF9E7298();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v88[0] = v62;
      *v61 = 136315138;
      v63 = sub_1CF7F53C8(a1);
      v65 = v64;
      v66 = sub_1CEFD0DF0(v63, v64, v88);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v61 + 4) = v66;
      _os_log_impl(&dword_1CEFC7000, v59, v60, "⏰  finished new download for %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1D386CDC0](v62, -1, -1);
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    v74 = *(v4 + 8);
    v75 = v6;
  }

  v74(v75, v3);
}

uint64_t sub_1CF35AE5C()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CF9E5CC8();
  if ((*(v0 + qword_1EDEBB798) * -86400) >> 64 == (-86400 * *(v0 + qword_1EDEBB798)) >> 63)
  {
    sub_1CF9E5C38();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF35AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v16 = a2;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1CEFC7000, v12, v13, "🔮  refreshing evictedWithOldVersion set", v14, 2u);
    a2 = v16;
    MEMORY[0x1D386CDC0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_1CF196C74(*(v18 + qword_1EDEBB7A8), v17, a2, a3, a4);
}

void sub_1CF35B120(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1CF9E5CF8();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v63 - v14;
  v15 = sub_1CF9E64A8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = *&v3[qword_1EDEBB780];
  v19 = sub_1CF042F4C();
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1CF9E64D8();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_1CF3625E4(1uLL);
  sub_1CF35A5DC(a1, a2, a3);
  if (v4 || v21 < 1)
  {
    return;
  }

  v22 = a3;
  v23 = a1;
  v24 = v21;
  v64 = 0;
  v25 = v72;
  if ((sub_1CF033B88() & 0x20000) != 0)
  {
    v37 = v64;
    sub_1CF35AF60(v24, a1, a2, a3);
    if (v37)
    {
      return;
    }

    v26 = v38;
    sub_1CF35A5DC(a1, a2, v22);
    v24 = v39;
    v64 = 0;
  }

  else
  {
    v26 = 0;
  }

  if ((sub_1CF033B88() & 0x1000) == 0)
  {
    v63 = v26;
    goto LABEL_9;
  }

  if ((sub_1CF033B88() & 0x40000) == 0)
  {
    v34 = v5;
    v40 = v64;
    v41 = sub_1CF364B5C(v24, a1, a2, v22);
    if (v40)
    {
      return;
    }

    v42 = __OFADD__(v26, v41);
    v35 = v26 + v41;
    v63 = v35;
    v64 = 0;
    if (v42)
    {
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  v43 = &v5[*(*v5 + 136)];
  swift_beginAccess();
  v44 = v43[57];
  v63 = v26;
  if ((v44 & 1) == 0)
  {
    if (v43[56])
    {
      v52 = *(v43 + 6);
      if (v52 - 3 < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v52 > 2)
        {
          sub_1CF3625E4(0x40uLL);
          goto LABEL_9;
        }

        goto LABEL_26;
      }
    }

    sub_1CF478C28();
    v53 = *(v22 + 8);

    v54 = v53;
    v55 = v64;
    v56 = sub_1CF4CD0E0(0, 85, a1, a2, v54);

    if (v55)
    {
      return;
    }

    if (v56)
    {
      v64 = 0;
      v57 = fpfs_current_or_default_log();
      v58 = v65;
      sub_1CF9E6128();
      v59 = sub_1CF9E6108();
      v60 = sub_1CF9E7298();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1CEFC7000, v59, v60, "🔮 updateIndexableItems still running, pacing", v61, 2u);
        MEMORY[0x1D386CDC0](v61, -1, -1);
      }

      (*(v66 + 8))(v58, v67);
      goto LABEL_9;
    }

    v62 = sub_1CF364B5C(v24, a1, a2, v22);
    v42 = __OFADD__(v63, v62);
    v63 += v62;
    v64 = 0;
    if (!v42)
    {
LABEL_9:
      v28 = v70;
      v27 = v71;
      goto LABEL_10;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_26:
  v45 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v46 = sub_1CF9E6108();
  v47 = sub_1CF9E7298();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "🔮 unknown indexing barrier, pacing", v48, 2u);
    MEMORY[0x1D386CDC0](v48, -1, -1);
  }

  (*(v66 + 8))(v68, v67);
  v49 = *(v25 + qword_1EDEBBC78);
  v28 = v70;
  v27 = v71;
  if (v49)
  {
    v50 = *(v25 + qword_1EDEBBC78 + 8);

    v49(v51);
    sub_1CF045404(v49, v50);
  }

LABEL_10:
  sub_1CF058CE4();
  v29 = v69;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v31 = v30;
  (*(v28 + 8))(v29, v27);
  v32 = v31 * 1000000000.0;
  if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = &v5[*(*v5 + 136)];
  LOBYTE(v35) = 1;
  swift_beginAccess();
  *(v34 + 1) = v33;
  v34[16] = 0;
  if (v63 < 1)
  {
LABEL_23:
    *v34 = 0;
    v5[72] = v35;
LABEL_24:
    sub_1CF35D01C(v23, a2, v22);
    return;
  }

  *v34 = 1;
  v5[72] = 1;
  v36 = v64;
  sub_1CF35A52C(v23, a2, v22);
  if (!v36)
  {
    goto LABEL_24;
  }
}

uint64_t sub_1CF35B7F8()
{
  v1 = qword_1EDEBB788;
  if (*(v0 + qword_1EDEBB788))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v1))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  *(v0 + qword_1EDEBB7C8) = 0;
  result = swift_unknownObjectRelease();
  v3 = v0 + qword_1EDEBB7D8;
  *v3 = 0;
  *(v3 + 8) = 1;
  return result;
}

uint64_t sub_1CF35B8C0()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v7 = sub_1CF9E6108();
  v8 = sub_1CF9E7298();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1CEFC7000, v7, v8, "🔮  disabling scheduler", v9, 2u);
    MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = qword_1EDEBB7C0;
  if (*(v1 + qword_1EDEBB7C0) == 1)
  {
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    [qword_1EDEBBC10 removeWatcher_];
    *(v1 + v10) = 0;
  }

  return sub_1CF35B7F8();
}

double sub_1CF35BA74(void *a1)
{
  v2 = v1;
  sub_1CF3625E4(1uLL);
  if (sub_1CF04590C())
  {
    sub_1CF3625E4(2uLL);
    v4 = *(*v1 + 136);
    swift_beginAccess();
    *(v2 + v4) = 0;
    *(v2 + 72) = 1;
  }

  else
  {
    v6 = [a1 label];
    v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v9 = v8;

    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    v10 = [qword_1EDEBBC10 label];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      v9, v14, v15, v16, v17, v18, v19, v20;
      v13, v38, v39, v40, v41, v42, v43, v44;
    }

    else
    {
      v22 = sub_1CF9E8048();
      v9, v23, v24, v25, v26, v27, v28, v29;
      v13, v30, v31, v32, v33, v34, v35, v36;
      if ((v22 & 1) == 0)
      {
        v37 = a1;
        sub_1CF515660();
      }
    }

    sub_1CF92DC74("sharedSchedulerCanRun(_:)", 25, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF364B18, v1);
  }

  return result;
}

double sub_1CF35BCA0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF35BA74(v3);

  return result;
}

void sub_1CF35BCF4(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v32 = sub_1CF9E6118();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1CF042F4C();
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = sub_1CF9E64D8();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1CF35B7F8();
  if (sub_1CF04590C())
  {
    sub_1CF3625E4(2uLL);
    v17 = *(*v4 + 136);
    swift_beginAccess();
    v4[v17] = 0;
    v4[72] = 1;
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E7298();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "🔮  waiting for disk import to complete", v21, 2u);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    (*(v5 + 8))(v7, v32);
    return;
  }

  v22 = qword_1EDEBB7C0;
  if (v4[qword_1EDEBB7C0] == 1)
  {
    if (qword_1EDEAD4D8 == -1)
    {
LABEL_8:
      v23 = sub_1CEFCB1A0(sub_1CF089FF4, 0);
      if (v23 != 2 && (v23 & 1) != 0)
      {
        sub_1CF35B120(v29, v30, v31);
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E7298();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1CEFC7000, v25, v26, "🔮  waiting for background scheduler", v27, 2u);
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  (*(v5 + 8))(v10, v32);
  v4[v22] = 1;
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBC10 addWatcher_];
}

void sub_1CF35C140(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v5 = v4;
  v81 = a2;
  v82 = a3;
  v77 = *v4;
  v7 = sub_1CF9E6448();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E73D8();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1CF9E6118();
  v11 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = sub_1CF9E5CF8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v25 = v24;
  (*(v21 + 8))(v23, v20);
  v26 = v25 * 1000000000.0;
  if (COERCE__INT64(fabs(v25 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = a1 - v26;
  if (__OFSUB__(a1, v26))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v28 = v5 + qword_1EDEBB7D8;
  if ((*(v5 + qword_1EDEBB7D8 + 8) & 1) != 0 || *v28 > a1)
  {
    v29 = *(v5 + qword_1EDEBB7E0);
    v30 = fpfs_current_or_default_log();
    if (v29 < 1)
    {
      v81 = v27;
      sub_1CF9E6128();
      v36 = sub_1CF9E6108();
      v37 = sub_1CF9E7298();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v72 = v38;
        v73 = swift_slowAlloc();
        v85 = a1;
        v86 = v73;
        *v38 = 136446210;
        sub_1CF064F48();
        v39 = sub_1CF9E7F98();
        v41 = v40;
        v42 = sub_1CEFD0DF0(v39, v40, &v86);
        v41, v43, v44, v45, v46, v47, v48, v49;
        v50 = v72;
        *(v72 + 1) = v42;
        _os_log_impl(&dword_1CEFC7000, v36, v37, "🔮  pacing scheduler until %{public}s", v50, 0xCu);
        v51 = v73;
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x1D386CDC0](v51, -1, -1);
        MEMORY[0x1D386CDC0](v50, -1, -1);
      }

      (*(v11 + 8))(v13, v84);
      sub_1CF35B7F8();
      *v28 = a1;
      v28[8] = 0;
      sub_1CF9E6978();
      v52 = os_transaction_create();

      *(v5 + qword_1EDEBB7C8) = v52;
      swift_unknownObjectRelease();
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v53 = sub_1CF042F4C();
      v86 = MEMORY[0x1E69E7CC0];
      sub_1CF364624(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      v54 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
      sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
      v55 = v74;
      v56 = v76;
      sub_1CF9E77B8();
      v57 = sub_1CF9E73E8();

      (*(v75 + 8))(v55, v56);
      v58 = qword_1EDEBB788;
      *(v5 + qword_1EDEBB788) = v57;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v60 = swift_allocObject();
      swift_weakInit();
      v61 = swift_allocObject();
      v62 = v77;
      v61[2] = v77[31];
      v63 = v82;
      v61[3] = v62[32];
      v61[4] = v63;
      v61[5] = v62[33];
      v64 = v83;
      v61[6] = v62[34];
      v61[7] = v64;
      v61[8] = v60;

      v65 = v78;
      sub_1CF042F9C();
      sub_1CEFD5828(0, v65, sub_1CF364ABC, v61, ObjectType);
      swift_unknownObjectRelease();

      (*(v79 + 8))(v65, v80);

      if (*(v5 + v58))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v66 = dispatch_time(0x8000000000000000, 0);
        v67 = dispatch_time(v66, v81);
        sub_1CF4FBB4C(v67);
        swift_unknownObjectRelease();
        if (*(v5 + v58))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7428();
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1CF9E6128();
      v31 = sub_1CF9E6108();
      v32 = sub_1CF9E7298();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v83;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1CEFC7000, v31, v32, "🔮  pacing scheduler timer bypassed", v35, 2u);
        MEMORY[0x1D386CDC0](v35, -1, -1);
      }

      (*(v11 + 8))(v16, v84);
      sub_1CF35BCF4(v81, v82, v34);
    }
  }

  else
  {
    v68 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E7298();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1CEFC7000, v69, v70, "🔮  pacer already registered", v71, 2u);
      MEMORY[0x1D386CDC0](v71, -1, -1);
    }

    (*(v11 + 8))(v19, v84);
  }
}

double sub_1CF35C9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1CF35B7F8();
    MEMORY[0x1EEE9AC00](v13);
    *(&v14 - 4) = a4;
    *(&v14 - 3) = a7;
    *(&v14 - 2) = v12;

    sub_1CF59896C("timerRefresh(nextRefreshDate:with:)", 0x23uLL, 2, sub_1CF364AD0, (&v14 - 6), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  }

  return result;
}

void sub_1CF35CCBC(char a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = sub_1CF9E64A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1CF042F4C();
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1CF9E64D8();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (a1)
    {
      sub_1CF35BCF4(a2, a3, v14);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF35CE20(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  v14 = v13 * 1000000000.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v4 + *(*v4 + 136);
  swift_beginAccess();
  if (*(v15 + 16))
  {
    goto LABEL_11;
  }

  v16 = v14;
  v17 = *(v15 + 8);
  if (v17 >= v14)
  {
    goto LABEL_11;
  }

  v18 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    goto LABEL_15;
  }

  v19 = *(v4 + qword_1EDEBB7B8);
  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (!v20)
  {
    if (v21 >= 1)
    {
      if (!__OFADD__(v17, v19))
      {
        sub_1CF35C140(v17 + v19, a1, a2, a3);
        return;
      }

      goto LABEL_17;
    }

LABEL_11:
    sub_1CF35BCF4(a1, a2, a3);
    return;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1CF35D01C(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v56 = a2;
  v57 = a3;
  v55 = a1;
  v7 = sub_1CF9E6118();
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1CF042F4C();
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = sub_1CF9E64D8();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v23 = [objc_allocWithZone(FPLoggerScope) init];
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = v23;
  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();
  v60 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    v30 = [v60 enter];
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&dword_1CEFC7000, v26, v27, "%{public}@ 🔮  reevaluating speculative scheduler state", v28, 0xCu);
    sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v31 = v29;
    v5 = v4;
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);
  }

  v32 = *(v59 + 8);
  v32(v16, v7);
  v33 = *(*v6 + 136);
  swift_beginAccess();
  if ((*(v6 + v33) & 1) == 0)
  {
    sub_1CF35B8C0();
    v41 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v42 = v60;
    v43 = sub_1CF9E6108();
    v44 = sub_1CF9E7298();

    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_16;
    }

    v59 = v7;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    v47 = [v42 leave];
    *(v45 + 4) = v47;
    *v46 = v47;
    _os_log_impl(&dword_1CEFC7000, v43, v44, "%{public}@", v45, 0xCu);
    goto LABEL_14;
  }

  sub_1CF35CE20(v55, v56, v57);
  if (!v5)
  {
    v48 = fpfs_current_or_default_log();
    v49 = v54;
    sub_1CF9E6128();
    v50 = v60;
    v43 = sub_1CF9E6108();
    v51 = sub_1CF9E7298();

    if (!os_log_type_enabled(v43, v51))
    {
      v13 = v49;
      goto LABEL_16;
    }

    v59 = v7;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    v52 = [v50 leave];
    *(v45 + 4) = v52;
    *v46 = v52;
    _os_log_impl(&dword_1CEFC7000, v43, v51, "%{public}@", v45, 0xCu);
    v13 = v49;
LABEL_14:
    sub_1CEFCCC44(v46, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v46, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);
    v7 = v59;
LABEL_16:

    v32(v13, v7);
    return;
  }

  v34 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v35 = v60;
  v36 = sub_1CF9E6108();
  v37 = sub_1CF9E7298();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    v40 = [v35 leave];
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&dword_1CEFC7000, v36, v37, "%{public}@", v38, 0xCu);
    sub_1CEFCCC44(v39, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v39, -1, -1);
    MEMORY[0x1D386CDC0](v38, -1, -1);
  }

  v32(v58, v7);
}

void sub_1CF35D6D8(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1CF042F4C();
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = sub_1CF9E64D8();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = *(v5 + qword_1EDEBB7E0);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *(v5 + qword_1EDEBB7E0) = v17;
  if (!*(v5 + qword_1EDEBB788) || (sub_1CF35BCF4(a1, a2, a3), !v4))
  {
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = v5;
  }
}

uint64_t sub_1CF35D8A8(uint64_t a1)
{
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1CF042F4C();
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = *(a1 + qword_1EDEBB7E0);
    if (v9 > 0)
    {
      *(a1 + qword_1EDEBB7E0) = v9 - 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF35DA34(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1CF042F4C();
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1CF9E64D8();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = *(*v4 + 136);
    swift_beginAccess();
    if ((v4[v14] & 1) == 0)
    {
      v4[v14] = 1;
      v4[72] = 1;
      sub_1CF35D01C(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF35DBD0(char *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a3;
  v92 = a4;
  v90 = a2;
  v98 = a1;
  v5 = *v4;
  v6 = *(*v4 + 248);
  v7 = *(*v4 + 264);
  v8 = type metadata accessor for SnapshotItem(0, v6, v7, a4);
  v84 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v78 - v9;
  v88 = sub_1CF9E75D8();
  v85 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v80 = &v78 - v10;
  v11 = *(v5 + 256);
  v89 = v6;
  v12.i64[0] = v6;
  v87 = v11;
  v12.i64[1] = v11;
  v93 = v4;
  v13.i64[0] = v7;
  v86 = *(v5 + 272);
  v13.i64[1] = v86;
  v82 = v13;
  v83 = v12;
  v97 = v13;
  v96 = v12;
  v14 = type metadata accessor for PersistenceTrigger(0, &v96);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v78 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v78 - v28;
  v95 = v15;
  v30 = *(v15 + 16);
  v30(&v78 - v28, v98, v14, v27);
  v98 = v29;
  v31 = v14;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    v41 = v20;
    v42 = v88;
    v83.i64[0] = v8;
    if (EnumCaseMultiPayload == 5)
    {
      v78 = v41;
      (v30)(v41, v98, v14);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v54 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v56 = swift_getAssociatedConformanceWitness();
      v96.i64[0] = AssociatedTypeWitness;
      v96.i64[1] = v54;
      v33 = v98;
      v97.i64[0] = AssociatedConformanceWitness;
      v97.i64[1] = v56;
      v57 = type metadata accessor for ReconciliationID(255, &v96);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v59 = *(*(v57 - 8) + 8);
      v60 = v78;
      v59(&v78[*(TupleTypeMetadata2 + 48)], v57);
      v59(v60, v57);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_13;
    }

    (v30)(v23, v98, v14);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v44 = *(TupleTypeMetadata3 + 48);
    v45 = *&v23[*(TupleTypeMetadata3 + 64)];
    v46 = v84;
    v47 = *(v84 + 48);
    v48 = v83.i64[0];
    if (v47(&v23[v44], 1, v83.i64[0]) == 1)
    {
      v49 = *(v85 + 8);
      v49(&v23[v44], v42);
      v49(v23, v42);
LABEL_13:
      v50 = v95;
      v33 = v98;
LABEL_45:
      (*(v50 + 8))(v33, v31);
      return;
    }

    v89 = v45;
    v61 = v46;
    v62 = v80;
    (*(v85 + 32))(v80, v23, v42);
    v63 = *(v61 + 32);
    v64 = v79;
    v63(v79, &v23[v44], v48);
    v65 = v48;
    if (v47(v62, 1, v48) == 1 || (v66 = swift_getWitnessTable(), sub_1CF06D940(v65, v66, &v96), v96.u8[0] != 1) || (sub_1CF937C7C(v65, v66) & 1) != 0 || (v89 & 0x10) == 0)
    {
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v65, WitnessTable, &v96);
      v69 = v65;
      v33 = v98;
      if (v96.i8[0])
      {
        goto LABEL_27;
      }

      if (v47(v62, 1, v69) == 1 || (v89 & 0x10) == 0)
      {
        if ((sub_1CF937C7C(v69, WitnessTable) & 1) == 0 || (v89 & 0x820) == 0)
        {
          goto LABEL_27;
        }

        v74 = v90;
        v75 = v91;
        v76 = v92;
        v77 = v94;
      }

      else
      {
        v74 = v90;
        v75 = v91;
        v76 = v92;
        v77 = v94;
      }

      sub_1CF35DA34(v74, v75, v76);
      if (!v77)
      {
LABEL_27:
        v50 = v95;
        v70 = v85;
        (*(v84 + 8))(v64, v83.i64[0]);
        (*(v70 + 8))(v80, v42);
        goto LABEL_45;
      }
    }

    else
    {
      v67 = v94;
      sub_1CF35DA34(v90, v91, v92);
      v33 = v98;
      if (!v67)
      {
        goto LABEL_27;
      }
    }

    (*(v84 + 8))(v64, v83.i64[0]);
    (*(v85 + 8))(v62, v42);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 44)
  {
    sub_1CF0335E0();
    goto LABEL_13;
  }

  v33 = v98;
  if (EnumCaseMultiPayload == 22)
  {
    (v30)(v17, v98, v14);
    if ((*v17 & 0x8000000000000000) != 0)
    {
      v96 = vextq_s8(v83, v83, 8uLL);
      v97 = vextq_s8(v82, v82, 8uLL);
      type metadata accessor for DiskImport.DiskImportFinished(0, &v96);
      v71 = swift_dynamicCastClass();

      if (!v71)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v96 = v83;
      v97 = v82;
      type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop(0, &v96);
      v51 = swift_dynamicCastClass();
      v52 = v94;
      if (!v51)
      {
        v96 = v83;
        v97 = v82;
        type metadata accessor for Maintenance.UpdateIndexableItems(0, &v96);
        if (swift_dynamicCastClass())
        {
          sub_1CF35DA34(v90, v91, v92);
          if (v52)
          {

            goto LABEL_48;
          }
        }

        goto LABEL_44;
      }
    }

LABEL_18:
    (*(v95 + 8))(v33, v31);
    sub_1CF35DA34(v90, v91, v92);
    return;
  }

  if (EnumCaseMultiPayload != 7)
  {
    goto LABEL_44;
  }

  v34 = v81;
  (v30)(v81, v98, v14);
  type metadata accessor for SnapshotItem(255, v87, v86, v35);
  v36 = sub_1CF9E75D8();
  v37 = swift_getTupleTypeMetadata3();
  v38 = *(v37 + 48);
  if ((*&v34[*(v37 + 64)] & 0x40200000000082ALL) == 0 || (v39 = v94, sub_1CF35DA34(v90, v91, v92), !v39))
  {
    v72 = *(*(v36 - 8) + 8);
    v72(&v34[v38], v36);
    v72(v34, v36);
LABEL_44:
    v50 = v95;
    goto LABEL_45;
  }

  v40 = *(*(v36 - 8) + 8);
  v40(&v34[v38], v36);
  v40(v34, v36);
LABEL_48:
  (*(v95 + 8))(v33, v31);
}

uint64_t sub_1CF35E624(char *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v209 = a4;
  v208 = a3;
  v207 = a2;
  v228 = a1;
  v5 = *v4;
  v6 = *(*v4 + 248);
  v7 = *(*v4 + 264);
  v8 = type metadata accessor for SnapshotItem(0, v6, v7, a4);
  v211 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v199 = &v186 - v9;
  v212 = v10;
  v219 = sub_1CF9E75D8();
  v210 = *(v219 - 1);
  MEMORY[0x1EEE9AC00](v219);
  v204 = &v186 - v11;
  v206 = sub_1CF9E5CF8();
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v187 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v188 = &v186 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v186 - v16;
  v203 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v203);
  v202 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v189 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v190 = &v186 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v186 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v197 = &v186 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v201 = &v186 - v27;
  v28 = *(v5 + 256);
  v222 = v4;
  v29 = *(v5 + 272);
  v213 = type metadata accessor for SnapshotItem(255, v28, v29, v30);
  v217 = sub_1CF9E75D8();
  v214 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v191 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v192 = &v186 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v196 = &v186 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v186 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v216 = &v186 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v215 = &v186 - v41;
  v220 = v7;
  v221 = v6;
  v42.i64[0] = v6;
  v218 = v28;
  v42.i64[1] = v28;
  v43.i64[0] = v7;
  v43.i64[1] = v29;
  v194 = v43;
  v227 = v43;
  v195 = v42;
  v226 = v42;
  v44 = type metadata accessor for PersistenceTrigger(0, &v226);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v186 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v186 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v186 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v186 - v55;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v186 - v59;
  v223 = v45;
  v61 = *(v45 + 16);
  v61(&v186 - v59, v228, v44, v58);
  v228 = v60;
  v225 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    v79 = v219;
    if (EnumCaseMultiPayload == 5)
    {
      v219 = v50;
      (v61)(v50, v228, v225);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v89 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v91 = swift_getAssociatedConformanceWitness();
      v226.i64[0] = AssociatedTypeWitness;
      v226.i64[1] = v89;
      v227.i64[0] = AssociatedConformanceWitness;
      v227.i64[1] = v91;
      v92 = type metadata accessor for ReconciliationID(255, &v226);
      v93 = *(swift_getTupleTypeMetadata2() + 48);
      v94 = v224;
      sub_1CF35DA34(v207, v208, v209);
      if (v94)
      {
        v95 = *(*(v92 - 8) + 8);
        v96 = v219;
        v95(v219 + v93, v92);
        v95(v96, v92);
        goto LABEL_17;
      }

      v111 = *(*(v92 - 8) + 8);
      v112 = v219;
      v111(v219 + v93, v92);
      v111(v112, v92);
LABEL_39:
      v63 = v225;
      goto LABEL_40;
    }

    v80 = v228;
    if (EnumCaseMultiPayload != 6)
    {
      v63 = v225;
      goto LABEL_57;
    }

    v63 = v225;
    (v61)(v53, v228, v225);
    v81 = v79;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v83 = *(TupleTypeMetadata3 + 48);
    v84 = *&v53[*(TupleTypeMetadata3 + 64)];
    v85 = v211;
    v86 = *(v211 + 48);
    if (v86(&v53[v83], 1, v212) == 1)
    {
      v87 = *(v210 + 8);
      v87(&v53[v83], v81);
      v87(v53, v81);
      goto LABEL_57;
    }

    v221 = v84;
    v98 = v85;
    v99 = v204;
    (*(v210 + 32))(v204, v53, v81);
    v100 = v98;
    v101 = v212;
    v102 = &v53[v83];
    v103 = v199;
    (*(v100 + 32))(v199, v102, v212);
    v104 = v99;
    v105 = v103;
    if (v86(v104, 1, v101) == 1 || (v106 = swift_getWitnessTable(), sub_1CF06D940(v101, v106, &v226), v226.u8[0] != 1) || (sub_1CF937C7C(v101, v106) & 1) != 0 || (v221 & 0x10) == 0)
    {
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v101, WitnessTable, &v226);
      if (!v226.i8[0])
      {
        v129 = v189;
        sub_1CF06EAD4(&v105[*(v101 + 48) + *(v203 + 120)], v189);
        v130 = (*(v205 + 48))(v129, 1, v206) == 1;
        v131 = v105;
        v132 = v211;
        if (v130)
        {
          (*(v211 + 8))(v131, v101);
          sub_1CEFCCC44(v129, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        }

        else
        {
          sub_1CEFCCC44(v129, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v160 = v86(v204, 1, v101);
          if (v160 == 1 || (v221 & 0x10) == 0)
          {
            v168 = sub_1CF937C7C(v101, WitnessTable);
            v169 = v224;
            if (v168)
            {
              v170 = v204;
              if ((v221 & 0x20) != 0)
              {
                sub_1CF35DA34(v207, v208, v209);
                if (v169)
                {
                  (*(v132 + 8))(v199, v101);
                  (*(v210 + 8))(v170, v81);
                  goto LABEL_64;
                }
              }

              v128 = v223;
              v133 = v210;
            }

            else
            {
              v128 = v223;
              v133 = v210;
              v170 = v204;
            }

            (*(v211 + 8))(v199, v212);
            v134 = v170;
LABEL_46:
            (*(v133 + 8))(v134, v81);
            return (*(v128 + 8))(v80, v63);
          }

          v161 = v224;
          sub_1CF35DA34(v207, v208, v209);
          if (v161)
          {
            (*(v132 + 8))(v199, v101);
            goto LABEL_63;
          }

          (*(v132 + 8))(v199, v101);
        }

LABEL_45:
        v128 = v223;
        v133 = v210;
        v134 = v204;
        goto LABEL_46;
      }
    }

    else
    {
      v107 = v224;
      sub_1CF35DA34(v207, v208, v209);
      if (v107)
      {
        (*(v211 + 8))(v103, v101);
LABEL_63:
        (*(v210 + 8))(v204, v81);
        goto LABEL_64;
      }
    }

    (*(v211 + 8))(v103, v101);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 44)
  {
    sub_1CF0335E0();
    goto LABEL_39;
  }

  v63 = v225;
  if (EnumCaseMultiPayload == 22)
  {
    v80 = v228;
    (v61)(v47, v228, v225);
    if ((*v47 & 0x8000000000000000) != 0)
    {
      v226 = vextq_s8(v195, v195, 8uLL);
      v227 = vextq_s8(v194, v194, 8uLL);
      type metadata accessor for DiskImport.DiskImportFinished(0, &v226);
      v109 = swift_dynamicCastClass();
      v110 = v224;
      if (v109)
      {
        sub_1CF35DA34(v207, v208, v209);
        if (v110)
        {

LABEL_64:
          v97 = v223;
          return (*(v97 + 8))(v80, v63);
        }
      }
    }

LABEL_57:
    v128 = v223;
    return (*(v128 + 8))(v80, v63);
  }

  if (EnumCaseMultiPayload != 7)
  {
    goto LABEL_40;
  }

  (v61)(v56, v228, v225);
  v64 = v217;
  v65 = swift_getTupleTypeMetadata3();
  v66 = *(v65 + 48);
  v67 = *&v56[*(v65 + 64)];
  v69 = v214;
  v68 = v215;
  v70 = *(v214 + 32);
  v70(v215, v56, v64);
  v71 = &v56[v66];
  v72 = v216;
  v70(v216, v71, v64);
  if ((v67 & 0x40200000000002ALL) == 0)
  {
    v113 = *(v69 + 8);
    v113(v72, v64);
    v113(v68, v64);
LABEL_40:
    v128 = v223;
    v80 = v228;
    return (*(v128 + 8))(v80, v63);
  }

  v73 = *(v69 + 16);
  v74 = v200;
  v73(v200, v68, v64);
  v75 = v213;
  v76 = *(v213 - 8);
  v221 = *(v76 + 48);
  if (v221(v74, 1, v213) == 1)
  {
    (*(v69 + 8))(v74, v64);
    v77 = v205;
    v78 = v201;
    (*(v205 + 56))(v201, 1, 1, v206);
LABEL_34:
    sub_1CEFCCC44(v78, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v120 = v196;
    v121 = v216;
    v122 = v217;
    v73(v196, v216, v217);
    v123 = v213;
    if (v221(v120, 1, v213) == 1)
    {
      v124 = *(v214 + 8);
      v124(v121, v122);
      v124(v215, v122);
      v124(v120, v122);
      v78 = v197;
      (*(v77 + 56))(v197, 1, 1, v206);
LABEL_38:
      sub_1CEFCCC44(v78, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      goto LABEL_39;
    }

    v125 = v202;
    sub_1CF3649E8(&v120[*(v123 + 48)], v202, type metadata accessor for ItemMetadata);
    v220 = *(v76 + 8);
    v220(v120, v123);
    v78 = v197;
    sub_1CF06EAD4(v125 + *(v203 + 120), v197);
    sub_1CF364A50(v125, type metadata accessor for ItemMetadata);
    v118 = *(v77 + 48);
    v119 = v206;
    if (v118(v78, 1, v206) == 1)
    {
      v126 = *(v214 + 8);
      v127 = v217;
      v126(v216, v217);
      v126(v215, v127);
      goto LABEL_38;
    }

    goto LABEL_48;
  }

  v114 = &v74[*(v75 + 48)];
  v115 = v74;
  v116 = v202;
  sub_1CF3649E8(v114, v202, type metadata accessor for ItemMetadata);
  v117 = *(v76 + 8);
  v117(v115, v75);
  v78 = v201;
  sub_1CF06EAD4(v116 + *(v203 + 120), v201);
  sub_1CF364A50(v116, type metadata accessor for ItemMetadata);
  v77 = v205;
  v118 = *(v205 + 48);
  v119 = v206;
  if (v118(v78, 1, v206) == 1)
  {
    goto LABEL_34;
  }

  v220 = v117;
LABEL_48:
  v219 = v118;
  sub_1CEFCCC44(v78, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CF35AE5C();
  v135 = v192;
  v136 = v217;
  v73(v192, v215, v217);
  v137 = v213;
  v138 = v221(v135, 1, v213);
  v218 = v76;
  if (v138 == 1)
  {
    (*(v214 + 8))(v135, v136);
    v139 = v205;
    v140 = v193;
    (*(v205 + 56))(v193, 1, 1, v119);
LABEL_51:
    sub_1CEFCCC44(v140, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_52:
    v146 = v191;
    v147 = v216;
    v148 = v217;
    v73(v191, v216, v217);
    v149 = v213;
    if (v221(v146, 1, v213) == 1)
    {
      (*(v139 + 8))(v198, v119);
      v150 = v119;
      v151 = *(v214 + 8);
      v151(v147, v148);
      v151(v215, v148);
      v151(v146, v148);
      v152 = v190;
      (*(v139 + 56))(v190, 1, 1, v150);
      v63 = v225;
      v80 = v228;
LABEL_56:
      sub_1CEFCCC44(v152, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      goto LABEL_57;
    }

    v153 = v202;
    sub_1CF3649E8(&v146[*(v149 + 48)], v202, type metadata accessor for ItemMetadata);
    v220(v146, v149);
    v152 = v190;
    sub_1CF06EAD4(v153 + *(v203 + 120), v190);
    v154 = v205;
    sub_1CF364A50(v153, type metadata accessor for ItemMetadata);
    v155 = (v219)(v152, 1, v119);
    v63 = v225;
    v80 = v228;
    v156 = v198;
    if (v155 == 1)
    {
      (*(v154 + 8))(v198, v119);
      v157 = *(v214 + 8);
      v158 = v217;
      v157(v216, v217);
      v157(v215, v158);
      goto LABEL_56;
    }

    v163 = v187;
    (*(v154 + 32))(v187, v152, v119);
    sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v164 = sub_1CF9E67E8();
    v165 = v224;
    v166 = v217;
    if (v164)
    {
      v167 = *(v154 + 8);
      v167(v163, v119);
      v167(v156, v119);
LABEL_83:
      v185 = *(v214 + 8);
      v185(v216, v166);
      v185(v215, v166);
      goto LABEL_57;
    }

    sub_1CF35DA34(v207, v208, v209);
    if (!v165)
    {
      v183 = *(v205 + 8);
      v184 = v206;
      v183(v163, v206);
      v183(v156, v184);
      goto LABEL_83;
    }

    v176 = *(v205 + 8);
    v177 = v206;
    v176(v163, v206);
    v176(v156, v177);
    v178 = *(v214 + 8);
    v178(v216, v166);
    v178(v215, v166);
    goto LABEL_64;
  }

  v141 = &v135[*(v137 + 48)];
  v142 = v73;
  v143 = v135;
  v144 = v202;
  sub_1CF3649E8(v141, v202, type metadata accessor for ItemMetadata);
  v145 = v143;
  v73 = v142;
  v220(v145, v137);
  v140 = v193;
  sub_1CF06EAD4(v144 + *(v203 + 120), v193);
  sub_1CF364A50(v144, type metadata accessor for ItemMetadata);
  v139 = v205;
  if ((v219)(v140, 1, v119) == 1)
  {
    goto LABEL_51;
  }

  v162 = v188;
  (*(v139 + 32))(v188, v140, v119);
  sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1CF9E67E8())
  {
    (*(v139 + 8))(v162, v119);
    goto LABEL_52;
  }

  v171 = v224;
  sub_1CF35DA34(v207, v208, v209);
  if (!v171)
  {
    v179 = *(v205 + 8);
    v180 = v206;
    v179(v188, v206);
    v179(v198, v180);
    v181 = *(v214 + 8);
    v182 = v217;
    v181(v216, v217);
    v181(v215, v182);
    goto LABEL_39;
  }

  v172 = *(v205 + 8);
  v173 = v206;
  v172(v188, v206);
  v172(v198, v173);
  v174 = *(v214 + 8);
  v175 = v217;
  v174(v216, v217);
  v174(v215, v175);
LABEL_17:
  v63 = v225;
  v97 = v223;
  v80 = v228;
  return (*(v97 + 8))(v80, v63);
}

void sub_1CF35FFA8(char *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1CF033B88() & 0x40000) != 0)
  {
    sub_1CF35DBD0(a1, a2, a3, a4);
  }

  else
  {
    sub_1CF35E624(a1, a2, a3, a4);
  }
}

uint64_t sub_1CF360044()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  if (*v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v2, v3);
  v3, v4, v5, v6, v7, v8, v9, v10;
  if ((v1[16] & 1) == 0)
  {
    sub_1CF064F48();
    v11 = sub_1CF9E7F98();
    v13 = v12;
    MEMORY[0x1D3868CC0](v11);
    v13, v14, v15, v16, v17, v18, v19, v20;
    MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
    0xE600000000000000, v21, v22, v23, v24, v25, v26, v27;
  }

  if ((*(v0 + qword_1EDEBB7D8 + 8) & 1) == 0)
  {
    sub_1CF064F48();
    v28 = sub_1CF9E7F98();
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x1D3868CC0](0x3A7478656E20, 0xE600000000000000);
    0xE600000000000000, v38, v39, v40, v41, v42, v43, v44;
  }

  if ((v1[40] & 1) == 0)
  {
    sub_1CF9E7948();
    0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
    sub_1CF064F48();
    v52 = sub_1CF9E7F98();
    v54 = v53;
    MEMORY[0x1D3868CC0](v52);
    v54, v55, v56, v57, v58, v59, v60, v61;
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA433E0);
    0x80000001CFA433E0, v62, v63, v64, v65, v66, v67, v68;
  }

  sub_1CF9E7948();
  0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
  v76 = sub_1CF9E7F98();
  v78 = v77;
  MEMORY[0x1D3868CC0](v76);
  v78, v79, v80, v81, v82, v83, v84, v85;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA433A0);
  0x80000001CFA433A0, v86, v87, v88, v89, v90, v91, v92;
  sub_1CF9E7948();
  0xE000000000000000, v93, v94, v95, v96, v97, v98, v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9E0, &unk_1CFA03F70);
  v100 = sub_1CF9E6948();
  v102 = v101;
  MEMORY[0x1D3868CC0](v100);
  v102, v103, v104, v105, v106, v107, v108, v109;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA433C0);
  0x80000001CFA433C0, v110, v111, v112, v113, v114, v115, v116;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A79747269643CLL;
}

void sub_1CF360398(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + qword_1EDEBB7F0);
  if (*v5->tree)
  {

    v8 = sub_1CEFE4328(a2, a3);
    if (v9)
    {
      v16 = *(*v5[1].tester + 8 * v8);
    }

    else
    {
      v16 = 0;
    }

    v17 = v9 ^ 1;
    v5, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  *a4 = v16;
  *(a4 + 8) = v17 & 1;
}

void sub_1CF360438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v61 = a1;
  v68 = *v3;
  v8 = v68[33];
  v66 = v68[31];
  v67 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v65 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v59 - v10;
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v59 - v16;
  v18 = objc_sync_enter(v3);
  if (v18)
  {
LABEL_28:
    MEMORY[0x1EEE9AC00](v18);
    *(&v59 - 2) = v5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, (&v59 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v19 = sub_1CF360AB0();
  v20 = *(v3 + qword_1EDEBB7F0);
  *(v3 + qword_1EDEBB7F0) = v19;
  v20, v21, v22, v23, v24, v25, v26, v27;
  if (v4)
  {

    v56 = objc_sync_exit(v3);
    MEMORY[0x1EEE9AC00](v56);
    v57 = &v59 - 4;
    *(&v59 - 2) = v3;
    v58 = sub_1CF1C5290;
    goto LABEL_31;
  }

  v62 = a2;
  v63 = a3;
  v71 = 0;
  v28 = objc_sync_exit(v3);
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v28);
    v57 = &v59 - 4;
    *(&v59 - 2) = v3;
    v58 = sub_1CF1C5468;
LABEL_31:
    fp_preconditionFailure(_:file:line:)(v58, v57, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v29 = *(v3 + qword_1EDEBB7D0);
  v30 = &v5[*(*v5 + 136)];
  swift_beginAccess();
  v31 = type metadata accessor for BackgroundDownloaderPacerState(0);
  v32 = *(v31 + 40);
  v33 = *&v30[v32];
  if (!v33)
  {
    v34 = 0;
    goto LABEL_9;
  }

  if ((sub_1CF362EB4(v33, v29) & 1) == 0)
  {
    v32 = *(v31 + 40);
    v34 = *&v30[v32];
LABEL_9:
    *&v30[v32] = v29;

    v34, v35, v36, v37, v38, v39, v40, v41;
    v5[72] = 1;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v43 = v42;
    v60 = *(v12 + 8);
    v18 = v60(v14, v11);
    v44 = v43 * 1000000000.0;
    if (COERCE__INT64(fabs(v43 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        sub_1CF9E5C88();
        (*(v12 + 56))(v17, 0, 1, v11);
        swift_beginAccess();
        sub_1CEFE4804(v17, &v30[*(v31 + 44)]);
        swift_endAccess();
        v5[72] = 1;
        v45 = v68[32];
        v46 = v68[34];
        v70[0] = v66;
        v70[1] = v45;
        v70[2] = v67;
        v70[3] = v46;
        type metadata accessor for Maintenance.UpdateIndexableItems(0, v70);
        v47 = v69;
        sub_1CF046AB4();
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v49 = v48;
        v50 = v60;
        v18 = v60(v14, v11);
        v51 = v49 * 1000000000.0;
        if (COERCE__INT64(fabs(v49 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v51 > -9.22337204e18)
          {
            if (v51 < 9.22337204e18)
            {
              sub_1CF559420();
              (*(v64 + 8))(v47, v65);
              v52 = sub_1CF052548(0x1000000);

              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v54 = v53;
              v18 = v50(v14, v11);
              v55 = v54 * 1000000000.0;
              if (COERCE__INT64(fabs(v54 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v55 > -9.22337204e18)
                {
                  if (v55 < 9.22337204e18)
                  {
                    sub_1CF5215C0(v52, v55, v61, v62, v63);

                    return;
                  }

                  goto LABEL_27;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }
}

unint64_t sub_1CF360AB0()
{
  v1 = v0;
  v2 = 0;
  v432 = sub_1CF9E5EE8();
  v403 = *(v432 - 8);
  MEMORY[0x1EEE9AC00](v432);
  v411 = &v402 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v419 = &v402 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v410 = &v402 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v409 = &v402 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v402 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v408 = &v402 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v402 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v418 = &v402 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v417 = &v402 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v427 = &v402 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v416 = &v402 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v402 - v27;
  v29 = sub_1CF9E5FF8();
  v433 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v423 = &v402 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v429 = &v402 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v406 = &v402 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v428 = &v402 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v422 = &v402 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v431 = (&v402 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v421 = &v402 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v426 = &v402 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v420 = &v402 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v425 = &v402 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v424 = &v402 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v402 - v52;
  v435 = sub_1CF4E24AC(MEMORY[0x1E69E7CC0]);
  v54 = qword_1EDEBB7D0;
  v55 = *(v0 + qword_1EDEBB7D0);
  v56 = *(v55 + 16);
  v430 = v17;
  v405 = v1;
  v404 = qword_1EDEBB7D0;
  if (v56)
  {
    v57 = sub_1CF7D52B0(1);
    if ((v58 & 1) != 0 && *(*(v55 + 56) + 8 * v57) >= 1)
    {
      v414 = *(*(v55 + 56) + 8 * v57);
      v407 = v12;
      v59 = (v433 + 48);
      v60 = MEMORY[0x1E69E7CC0];
      v61 = &aComAdobePdf[8];
      v62 = (v433 + 32);
      v63 = 49;
      v415 = v53;
      do
      {

        sub_1CF9E6008();
        if ((*v59)(v28, 1, v29) == 1)
        {
          sub_1CEFCCC44(v28, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v64 = *v62;
          (*v62)(v53, v28, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_1CF1F706C(0, *v60->tree + 1, 1, v60);
          }

          v66 = *v60->tree;
          v65 = *v60->tester;
          if (v66 >= v65 >> 1)
          {
            v60 = sub_1CF1F706C((v65 > 1), v66 + 1, 1, v60);
          }

          *v60->tree = v66 + 1;
          v67 = v60 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v66;
          v53 = v415;
          v64(v67, v415, v29);
        }

        v61 += 16;
        --v63;
      }

      while (v63);
      swift_arrayDestroy();
      v75 = *v60->tree;
      v76 = v424;
      if (v75)
      {
        v2 = 0;
        v77 = v414;
        v78 = 86400 * v414;
        v79 = (v414 * 86400) >> 64;
        v414 = *(v433 + 16);
        v80 = v79 == (86400 * v77) >> 63;
        v81 = v60 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
        v413 = *(v433 + 72);
        v82 = 0x7FFFFFFFFFFFFFFFLL;
        if (v80)
        {
          v82 = v78;
        }

        v412 = v82;
        v83 = (v403 + 8);
        v415 = v433 + 16;
        v84 = (v433 + 8);
        v85 = v408;
        do
        {
          v414(v76, v81, v29);
          v434 = v412;
          v101 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*v101->tree && (v109 = sub_1CF7BF978(v85), (v102 & 1) != 0))
          {
            v86 = *(*v101[1].tester + 8 * v109);
            v110 = *v83;

            v110(v408, v432);
            v85 = v408;
            v101, v111, v112, v113, v114, v115, v116, v117;
          }

          else
          {
            v101, v102, v103, v104, v105, v106, v107, v108;
            (*v83)(v85, v432);
            v86 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v86, &v435, &v434);
          v86, v87, v88, v89, v90, v91, v92, v93;
          v76 = v424;
          (*v84)(v424, v29);
          v81 += v413;
          --v75;
        }

        while (v75);
        v60, v94, v95, v96, v97, v98, v99, v100;
      }

      else
      {
        v60, v68, v69, v70, v71, v72, v73, v74;
        v2 = 0;
      }

      v17 = v430;
      v1 = v405;
      v54 = v404;
      v12 = v407;
    }
  }

  v118 = *(v1 + v54);
  if (*(v118 + 16))
  {
    v119 = sub_1CF7D52B0(2);
    if ((v120 & 1) != 0 && *(*(v118 + 56) + 8 * v119) >= 1)
    {
      v424 = *(*(v118 + 56) + 8 * v119);
      v407 = v12;
      v121 = (v433 + 48);
      v122 = MEMORY[0x1E69E7CC0];
      v123 = &aPublicJpeg[8];
      v124 = (v433 + 32);
      v125 = 19;
      v126 = v416;
      do
      {

        sub_1CF9E6008();
        if ((*v121)(v126, 1, v29) == 1)
        {
          sub_1CEFCCC44(v126, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v127 = v126;
          v128 = *v124;
          (*v124)(v425, v127, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_1CF1F706C(0, *v122->tree + 1, 1, v122);
          }

          v130 = *v122->tree;
          v129 = *v122->tester;
          if (v130 >= v129 >> 1)
          {
            v122 = sub_1CF1F706C((v129 > 1), v130 + 1, 1, v122);
          }

          *v122->tree = v130 + 1;
          v128(v122 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v130, v425, v29);
          v126 = v416;
        }

        v123 += 16;
        --v125;
      }

      while (v125);
      swift_arrayDestroy();
      v138 = *v122->tree;
      if (v138)
      {
        v139 = v424;
        v140 = 86400 * v424;
        v141 = (v424 * 86400) >> 64;
        v424 = *(v433 + 16);
        v80 = v141 == (86400 * v139) >> 63;
        v142 = v122 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
        v416 = *(v433 + 72);
        v143 = 0x7FFFFFFFFFFFFFFFLL;
        if (v80)
        {
          v143 = v140;
        }

        v415 = v143;
        v144 = (v403 + 8);
        v425 = v433 + 16;
        v145 = (v433 + 8);
        v146 = v407;
        v147 = v420;
        do
        {
          (v424)(v147, v142, v29);
          v434 = v415;
          v156 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*v156->tree && (v164 = sub_1CF7BF978(v146), (v157 & 1) != 0))
          {
            v148 = *(*v156[1].tester + 8 * v164);
            v165 = *v144;

            v165(v407, v432);
            v146 = v407;
            v156, v166, v167, v168, v169, v170, v171, v172;
          }

          else
          {
            v156, v157, v158, v159, v160, v161, v162, v163;
            (*v144)(v146, v432);
            v148 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v148, &v435, &v434);
          v148, v149, v150, v151, v152, v153, v154, v155;
          v147 = v420;
          (*v145)(v420, v29);
          v142 += v416;
          --v138;
        }

        while (v138);
      }

      v122, v131, v132, v133, v134, v135, v136, v137;
      v17 = v430;
      v1 = v405;
      v54 = v404;
    }
  }

  v173 = *(v1 + v54);
  if (*(v173 + 16))
  {
    v174 = sub_1CF7D52B0(4);
    if ((v175 & 1) != 0 && *(*(v173 + 56) + 8 * v174) >= 1)
    {
      v425 = *(*(v173 + 56) + 8 * v174);
      v176 = (v433 + 48);
      v177 = MEMORY[0x1E69E7CC0];
      v178 = &aPublicMpeg4[8];
      v179 = (v433 + 32);
      v180 = 8;
      do
      {

        v181 = v427;
        sub_1CF9E6008();
        if ((*v176)(v181, 1, v29) == 1)
        {
          sub_1CEFCCC44(v181, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v182 = *v179;
          (*v179)(v426, v181, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v177 = sub_1CF1F706C(0, *v177->tree + 1, 1, v177);
          }

          v184 = *v177->tree;
          v183 = *v177->tester;
          if (v184 >= v183 >> 1)
          {
            v177 = sub_1CF1F706C((v183 > 1), v184 + 1, 1, v177);
          }

          *v177->tree = v184 + 1;
          v182(v177 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v184, v426, v29);
          v17 = v430;
        }

        v178 += 16;
        --v180;
      }

      while (v180);
      swift_arrayDestroy();
      v192 = *v177->tree;
      if (v192)
      {
        v426 = *(v433 + 16);
        v193 = v177 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
        v194 = *(v433 + 72);
        v195 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v425 * 86400) >> 64 == (86400 * v425) >> 63)
        {
          v195 = 86400 * v425;
        }

        v424 = v195;
        v425 = v194;
        v196 = (v403 + 8);
        v427 = v433 + 16;
        v197 = (v433 + 8);
        v198 = v409;
        v199 = v421;
        do
        {
          (v426)(v199, v193, v29);
          v434 = v424;
          v215 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*v215->tree && (v223 = sub_1CF7BF978(v198), (v216 & 1) != 0))
          {
            v200 = *(*v215[1].tester + 8 * v223);
            v224 = *v196;

            v224(v409, v432);
            v198 = v409;
            v215, v225, v226, v227, v228, v229, v230, v231;
          }

          else
          {
            v215, v216, v217, v218, v219, v220, v221, v222;
            (*v196)(v198, v432);
            v200 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v200, &v435, &v434);
          v200, v201, v202, v203, v204, v205, v206, v207;
          v199 = v421;
          (*v197)(v421, v29);
          v193 += v425;
          --v192;
        }

        while (v192);
        v177, v208, v209, v210, v211, v212, v213, v214;
        v17 = v430;
      }

      else
      {
        v177, v185, v186, v187, v188, v189, v190, v191;
      }

      v1 = v405;
      v54 = v404;
    }
  }

  v232 = *(v1 + v54);
  if (*(v232 + 16))
  {
    v233 = sub_1CF7D52B0(8);
    if ((v234 & 1) != 0 && *(*(v232 + 56) + 8 * v233) >= 1)
    {
      v427 = *(*(v232 + 56) + 8 * v233);
      v235 = (v433 + 48);
      v236 = MEMORY[0x1E69E7CC0];
      v237 = &aPublicMp3[8];
      v238 = (v433 + 32);
      v239 = 17;
      v240 = v417;
      do
      {

        sub_1CF9E6008();
        if ((*v235)(v240, 1, v29) == 1)
        {
          sub_1CEFCCC44(v240, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v241 = *v238;
          (*v238)(v431, v240, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v236 = sub_1CF1F706C(0, *v236->tree + 1, 1, v236);
          }

          v243 = *v236->tree;
          v242 = *v236->tester;
          if (v243 >= v242 >> 1)
          {
            v236 = sub_1CF1F706C((v242 > 1), v243 + 1, 1, v236);
          }

          *v236->tree = v243 + 1;
          v241((v236 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v243), v431, v29);
          v240 = v417;
        }

        v237 += 16;
        --v239;
      }

      while (v239);
      swift_arrayDestroy();
      v251 = *v236->tree;
      if (v251)
      {
        v252 = v427;
        v253 = 86400 * v427;
        v254 = (v427 * 86400) >> 64;
        v427 = *(v433 + 16);
        v80 = v254 == (86400 * v252) >> 63;
        v255 = v236 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
        v256 = *(v433 + 72);
        v257 = 0x7FFFFFFFFFFFFFFFLL;
        if (v80)
        {
          v257 = v253;
        }

        v425 = v257;
        v426 = v256;
        v258 = (v403 + 8);
        v431 = (v433 + 16);
        v259 = (v433 + 8);
        v260 = v410;
        v261 = v422;
        do
        {
          (v427)(v261, v255, v29);
          v434 = v425;
          v270 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*v270->tree && (v278 = sub_1CF7BF978(v260), (v271 & 1) != 0))
          {
            v262 = *(*v270[1].tester + 8 * v278);
            v279 = *v258;

            v279(v410, v432);
            v260 = v410;
            v270, v280, v281, v282, v283, v284, v285, v286;
          }

          else
          {
            v270, v271, v272, v273, v274, v275, v276, v277;
            (*v258)(v260, v432);
            v262 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v262, &v435, &v434);
          v262, v263, v264, v265, v266, v267, v268, v269;
          v261 = v422;
          (*v259)(v422, v29);
          v255 += v426;
          --v251;
        }

        while (v251);
      }

      v236, v244, v245, v246, v247, v248, v249, v250;
      v17 = v430;
      v1 = v405;
      v54 = v404;
    }
  }

  v287 = *(v1 + v54);
  if (*(v287 + 16))
  {
    v288 = sub_1CF7D52B0(16);
    if ((v289 & 1) != 0 && *(*(v287 + 56) + 8 * v288) >= 1)
    {
      v427 = *(*(v287 + 56) + 8 * v288);
      v290 = (v433 + 48);
      v431 = MEMORY[0x1E69E7CC0];
      v291 = &off_1F4BEDE70;
      v292 = (v433 + 32);
      v293 = 6;
      v294 = v406;
      v295 = v418;
      do
      {

        sub_1CF9E6008();
        if ((*v290)(v295, 1, v29) == 1)
        {
          sub_1CEFCCC44(v295, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v296 = *v292;
          (*v292)(v428, v295, v29);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v297 = v431;
          }

          else
          {
            v297 = sub_1CF1F706C(0, *v431->tree + 1, 1, v431);
          }

          v299 = *v297->tree;
          v298 = *v297->tester;
          if (v299 >= v298 >> 1)
          {
            v297 = sub_1CF1F706C((v298 > 1), v299 + 1, 1, v297);
          }

          *v297->tree = v299 + 1;
          v300 = (*(v433 + 80) + 32) & ~*(v433 + 80);
          v431 = v297;
          v296(v297 + v300 + *(v433 + 72) * v299, v428, v29);
          v295 = v418;
        }

        v291 += 2;
        --v293;
      }

      while (v293);
      swift_arrayDestroy();
      v308 = v431;
      v309 = *v431->tree;
      if (v309)
      {
        v310 = v433 + 16;
        v311 = *(v433 + 16);
        v312 = v431 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
        v313 = *(v433 + 72);
        v314 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v427 * 86400) >> 64 == (86400 * v427) >> 63)
        {
          v314 = 86400 * v427;
        }

        v428 = v314;
        v426 = v433 + 8;
        v427 = v403 + 8;
        v424 = v313;
        do
        {
          v311(v294, v312, v29);
          v434 = v428;
          v323 = sub_1CF9E5F88();
          v324 = v419;
          sub_1CF9E5EC8();
          if (*v323->tree && (v332 = sub_1CF7BF978(v324), (v325 & 1) != 0))
          {
            v333 = v324;
            v315 = *(*v323[1].tester + 8 * v332);
            v425 = v2;
            v334 = v29;
            v335 = v311;
            v336 = v310;
            v337 = *v427;

            v338 = v333;
            v294 = v406;
            v337(v338, v432);
            v310 = v336;
            v311 = v335;
            v29 = v334;
            v313 = v424;
            v2 = v425;
            v323, v339, v340, v341, v342, v343, v344, v345;
          }

          else
          {
            v323, v325, v326, v327, v328, v329, v330, v331;
            (*v427)(v324, v432);
            v315 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v315, &v435, &v434);
          v315, v316, v317, v318, v319, v320, v321, v322;
          (*v426)(v294, v29);
          v312 += v313;
          --v309;
        }

        while (v309);
        v308 = v431;
      }

      v308, v301, v302, v303, v304, v305, v306, v307;
      v17 = v430;
      v1 = v405;
      v54 = v404;
    }
  }

  v346 = *(v1 + v54);
  if (*(v346 + 16))
  {
    v347 = sub_1CF7D52B0(32);
    if ((v348 & 1) != 0 && *(*(v346 + 56) + 8 * v347) >= 1)
    {
      v431 = *(*(v346 + 56) + 8 * v347);
      v349 = (v433 + 48);
      v350 = MEMORY[0x1E69E7CC0];
      v351 = &off_1F4BEDEF0;
      v352 = (v433 + 32);
      v353 = 25;
      do
      {

        sub_1CF9E6008();
        if ((*v349)(v17, 1, v29) == 1)
        {
          sub_1CEFCCC44(v17, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v354 = *v352;
          (*v352)(v429, v17, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v350 = sub_1CF1F706C(0, *v350->tree + 1, 1, v350);
          }

          v356 = *v350->tree;
          v355 = *v350->tester;
          if (v356 >= v355 >> 1)
          {
            v350 = sub_1CF1F706C((v355 > 1), v356 + 1, 1, v350);
          }

          *v350->tree = v356 + 1;
          v354(v350 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v356, v429, v29);
          v17 = v430;
        }

        v351 += 2;
        --v353;
      }

      while (v353);
      swift_arrayDestroy();
      v364 = *v350->tree;
      if (v364)
      {
        v365 = v431;
        v366 = 86400 * v431;
        v367 = (v431 * 86400) >> 64;
        v368 = v433 + 16;
        v431 = *(v433 + 16);
        v80 = v367 == (86400 * v365) >> 63;
        v369 = v350 + ((*(v433 + 80) + 32) & ~*(v433 + 80));
        v370 = *(v433 + 72);
        v371 = 0x7FFFFFFFFFFFFFFFLL;
        if (v80)
        {
          v371 = v366;
        }

        v429 = v371;
        v430 = v370;
        v372 = (v403 + 8);
        v433 += 16;
        v373 = (v368 - 8);
        v374 = v411;
        v375 = v423;
        do
        {
          (v431)(v375, v369, v29);
          v434 = v429;
          v384 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*v384->tree && (v392 = sub_1CF7BF978(v374), (v385 & 1) != 0))
          {
            v376 = *(*v384[1].tester + 8 * v392);
            v393 = *v372;

            v393(v411, v432);
            v374 = v411;
            v384, v394, v395, v396, v397, v398, v399, v400;
          }

          else
          {
            v384, v385, v386, v387, v388, v389, v390, v391;
            (*v372)(v374, v432);
            v376 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v376, &v435, &v434);
          v376, v377, v378, v379, v380, v381, v382, v383;
          v375 = v423;
          (*v373)(v423, v29);
          v369 = &v430[v369];
          --v364;
        }

        while (v364);
      }

      v350, v357, v358, v359, v360, v361, v362, v363;
    }
  }

  swift_beginAccess();
  return v435;
}

double sub_1CF36225C(uint64_t a1)
{
  v2 = sub_1CF6F3480(&unk_1F4BEE078, a1);
  swift_arrayDestroy();
  if ((v2 & 1) == 0)
  {

    sub_1CF92DC74("didUpdateConfiguration(_:)", 26, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF3649CC, v1);
  }

  return result;
}

void sub_1CF362354(void *a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF364798();
  v10 = *(a2 + qword_1EDEBB7D0);
  *(a2 + qword_1EDEBB7D0) = v9;
  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = a1[3];
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1CF360438(v20, v18, v19);
  if (v2)
  {
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = v2;
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E72A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1CEFC7000, v23, v24, "Cannot load indexing types: %@", v25, 0xCu);
      sub_1CEFCCC44(v26, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1CF362578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1CF9E6F98();

  sub_1CF36225C(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1CF3625E4(unint64_t a1)
{
  v3 = v1 + *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v3 + *(type metadata accessor for BackgroundDownloaderPacerState(0) + 52));
  if (v4)
  {
    v5 = v4;
    sub_1CF7BEE14(a1);
  }
}

void sub_1CF362660(uint64_t a1)
{
  v1 = sub_1CF9E57E8();
  v2 = [v1 userInfo];
  v3 = sub_1CF9E6638();

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v5;
  if (!*v3->tree)
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
    v12, v37, v38, v39, v40, v41, v42, v43;
    goto LABEL_7;
  }

  v13 = sub_1CEFE4328(v4, v5);
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21;
  if ((v15 & 1) == 0)
  {
    v3, v22, v23, v24, v25, v26, v27, v28;
    goto LABEL_7;
  }

  sub_1CEFD1104(*v3[1].tester + 32 * v13, v45);
  v3, v29, v30, v31, v32, v33, v34, v35;
  sub_1CEFD57E0(0, &qword_1EC4BF9D8, 0x1E695DF00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v36 = 16;
    goto LABEL_8;
  }

  v36 = 8;
LABEL_8:
  sub_1CF3625E4(v36);
}

void sub_1CF3627B0()
{

  *(v0 + qword_1EDEBB7E8 + 8), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v0 + qword_1EDEBB7D0), v8, v9, v10, v11, v12, v13, v14;
  v22 = *(v0 + qword_1EDEBB7F0);

  v22, v15, v16, v17, v18, v19, v20, v21;
}

void *sub_1CF362834()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;
  sub_1CF364A50(v0 + *(*v0 + 136), type metadata accessor for BackgroundDownloaderPacerState);

  *(v0 + qword_1EDEBB7E8 + 8), v8, v9, v10, v11, v12, v13, v14;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v0 + qword_1EDEBB7D0), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + qword_1EDEBB7F0), v22, v23, v24, v25, v26, v27, v28;
  return v0;
}

uint64_t sub_1CF3628F0()
{
  sub_1CF362834();

  return swift_deallocClassInstance();
}

void sub_1CF362998(uint64_t a1)
{
  sub_1CF24F8BC(319, &unk_1EDEA8310, &type metadata for NSecTimestamp);
  if (v1 <= 0x3F)
  {
    sub_1CF24F8BC(319, &unk_1EDEA6168, &type metadata for DatabaseIndexAnchor);
    if (v2 <= 0x3F)
    {
      sub_1CF362BC4(319, &qword_1EDEAFE00, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1CF362AF8(319);
        if (v4 <= 0x3F)
        {
          sub_1CF362B5C(319);
          if (v5 <= 0x3F)
          {
            sub_1CF362BC4(319, &qword_1EDEA48C8, type metadata accessor for SpeculativeDownloadsPreventReasonsTelem);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1CF362AF8(uint64_t a1)
{
  if (!qword_1EDEA3858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF970, qword_1CFA03BE0);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA3858);
    }
  }
}

void sub_1CF362B5C(uint64_t a1)
{
  if (!qword_1EDEA3548)
  {
    sub_1CEFD57E0(255, &qword_1EDEA3550, off_1E83BC5C8);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA3548);
    }
  }
}

void sub_1CF362BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CF9E75D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CF362C18()
{
  result = qword_1EDEACD38;
  if (!qword_1EDEACD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACD38);
  }

  return result;
}

unint64_t sub_1CF362C70()
{
  result = qword_1EC4BF980;
  if (!qword_1EC4BF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF980);
  }

  return result;
}

unint64_t sub_1CF362D0C()
{
  result = qword_1EDEA5B88;
  if (!qword_1EDEA5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B88);
  }

  return result;
}

unint64_t sub_1CF362D64()
{
  result = qword_1EC4BF9A0;
  if (!qword_1EC4BF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9A0);
  }

  return result;
}

unint64_t sub_1CF362DB8(uint64_t a1)
{
  *(a1 + 8) = sub_1CF362DE8();
  result = sub_1CF362E3C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF362DE8()
{
  result = qword_1EC4BF9B0;
  if (!qword_1EC4BF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9B0);
  }

  return result;
}

unint64_t sub_1CF362E3C()
{
  result = qword_1EC4BF9B8;
  if (!qword_1EC4BF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9B8);
  }

  return result;
}

uint64_t sub_1CF362EB4(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1CF7D52B0(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF362FBC(uint64_t a1, uint64_t a2)
{
  v76[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (v8)
          {
            v10 = __clz(__rbit64(v8));
            v8 &= v8 - 1;
            goto LABEL_13;
          }

          v11 = v4;
          do
          {
            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            if (v4 >= v9)
            {
              return 1;
            }

            v12 = *(v5 + 8 * v4);
            ++v11;
          }

          while (!v12);
          v10 = __clz(__rbit64(v12));
          v8 = (v12 - 1) & v12;
LABEL_13:
          v13 = v10 | (v4 << 6);
          v14 = (*(v3 + 48) + 16 * v13);
          v15 = *v14;
          v16 = v14[1];
          v17 = *(*(v3 + 56) + 8 * v13);
          v18 = v17 & 0x3FFFFFFFFFFFFFFFLL;

          v19 = sub_1CEFE4328(v15, v16);
          v21 = v20;
          v16, v20, v22, v23, v24, v25, v26, v27;
          if ((v21 & 1) == 0)
          {
            goto LABEL_87;
          }

          v28 = *(*(v2 + 56) + 8 * v19);
          v29 = v28 >> 62;
          if ((v28 >> 62) > 1)
          {
            if (v29 == 2)
            {
              if (v17 >> 62 != 2)
              {
                goto LABEL_87;
              }

LABEL_39:
              v43 = v28 & 0x3FFFFFFFFFFFFFFFLL;
              v44 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v45 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v70 = *(v43 + 32);
              v73 = *(v43 + 16);
              v65 = *(v18 + 32);
              v68 = *(v18 + 16);

              result = 0;
              if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v73, v68), vceqq_s64(v70, v65)))))
              {
                v3 = a1;
                if (v44 == v45)
                {
                  continue;
                }
              }

              return result;
            }

            if (v17 >> 62 == 3)
            {
              goto LABEL_39;
            }

LABEL_87:

            return 0;
          }

          break;
        }

        if (!v29)
        {
          if (v17 >> 62)
          {
            goto LABEL_87;
          }

          v30 = *(v28 + 16);
          v31 = v2;
          v32 = *(v17 + 16);

          v33 = v32;
          v2 = v31;
          LOBYTE(v30) = sub_1CF362FBC(v30, v33);

          v3 = a1;
          if ((v30 & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        break;
      }

      if (v17 >> 62 != 1)
      {
        goto LABEL_87;
      }

      v72 = v2;
      v34 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v36 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *(v18 + 24);
      v38 = v35 >> 62;
      v39 = v37 >> 62;
      if (v35 >> 62 == 3)
      {
        if (v34)
        {
          v40 = 0;
        }

        else
        {
          v40 = v35 == 0xC000000000000000;
        }

        v41 = v40 && v37 >> 62 == 3;
        if (!v41 || (!v36 ? (v42 = v37 == 0xC000000000000000) : (v42 = 0), !v42))
        {
LABEL_51:
          v47 = 0;
          if (v39 > 1)
          {
            goto LABEL_52;
          }

LABEL_49:
          if (!v39)
          {
            v51 = BYTE6(v37);
            goto LABEL_58;
          }

          LODWORD(v51) = HIDWORD(v36) - v36;
          if (!__OFSUB__(HIDWORD(v36), v36))
          {
            v51 = v51;
            goto LABEL_58;
          }

LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
        }

LABEL_64:

        v2 = v72;
        v3 = a1;
        continue;
      }

      break;
    }

    if (v38 > 1)
    {
      if (v38 != 2)
      {
        goto LABEL_51;
      }

      v49 = *(v34 + 16);
      v48 = *(v34 + 24);
      v50 = __OFSUB__(v48, v49);
      v47 = v48 - v49;
      if (!v50)
      {
        if (v39 > 1)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      goto LABEL_94;
    }

    if (v38)
    {
      LODWORD(v47) = HIDWORD(v34) - v34;
      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_93;
      }

      v47 = v47;
      if (v39 <= 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v47 = BYTE6(v35);
      if (v39 <= 1)
      {
        goto LABEL_49;
      }
    }

LABEL_52:
    if (v39 != 2)
    {
      if (!v47)
      {
        goto LABEL_64;
      }

      goto LABEL_87;
    }

    v53 = *(v36 + 16);
    v52 = *(v36 + 24);
    v50 = __OFSUB__(v52, v53);
    v51 = v52 - v53;
    if (v50)
    {
      goto LABEL_91;
    }

LABEL_58:
    if (v47 != v51)
    {
      goto LABEL_87;
    }

    if (v47 < 1)
    {
      goto LABEL_64;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v71 = *(v18 + 16);
        v69 = *(v34 + 16);
        v66 = *(v34 + 24);

        v54 = sub_1CF9E5498();
        if (v54)
        {
          v55 = v54;
          v56 = sub_1CF9E54C8();
          v57 = v69;
          if (__OFSUB__(v69, v56))
          {
            goto LABEL_97;
          }

          v64 = v69 - v56 + v55;
        }

        else
        {
          v64 = 0;
          v57 = v69;
        }

        if (__OFSUB__(v66, v57))
        {
          goto LABEL_96;
        }

        sub_1CF9E54B8();
        v63 = v64;
        goto LABEL_83;
      }

      memset(v76, 0, 14);

LABEL_77:
      sub_1CF363A5C(v76, v36, v37, &v75);

      v62 = v75;
    }

    else
    {
      if (!v38)
      {
        v76[0] = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOWORD(v76[1]) = v35;
        BYTE2(v76[1]) = BYTE2(v35);
        BYTE3(v76[1]) = BYTE3(v35);
        BYTE4(v76[1]) = BYTE4(v35);
        BYTE5(v76[1]) = BYTE5(v35);

        goto LABEL_77;
      }

      v71 = *(v18 + 16);
      v58 = v34;
      if (v34 >> 32 < v34)
      {
        goto LABEL_95;
      }

      v59 = sub_1CF9E5498();
      if (v59)
      {
        v67 = v59;
        v60 = sub_1CF9E54C8();
        if (__OFSUB__(v58, v60))
        {
          goto LABEL_98;
        }

        v61 = v58 - v60 + v67;
      }

      else
      {
        v61 = 0;
      }

      sub_1CF9E54B8();
      v63 = v61;
LABEL_83:
      sub_1CF363A5C(v63, v71, v37, v76);

      v62 = v76[0];
    }

    v2 = v72;
    v3 = a1;
    if (v62)
    {
      continue;
    }

    return 0;
  }
}

BOOL sub_1CF363560(uint64_t a1, uint64_t a2)
{
  v64[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v62 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v62 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_1CEFE42D4(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_1CEFE4328(v15, v16);
      v23 = v22;
      v16, v22, v24, v25, v26, v27, v28, v29;
      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v30 = (*(v2 + 56) + 16 * v21);
      v32 = *v30;
      v31 = v30[1];
      v33 = v31 >> 62;
      v34 = v18 >> 62;
      if (v31 >> 62 == 3)
      {
        if (v32)
        {
          v35 = 0;
        }

        else
        {
          v35 = v31 == 0xC000000000000000;
        }

        v36 = 0;
        v37 = v35 && v18 >> 62 == 3;
        if (v37 && !v19 && v18 == 0xC000000000000000)
        {
          v38 = 0;
          v39 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v34 <= 1)
        {
LABEL_37:
          if (!v34)
          {
            v43 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v43) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v43 = v43;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v33 > 1)
      {
        if (v33 == 2)
        {
          v45 = *(v32 + 16);
          v44 = *(v32 + 24);
          v42 = __OFSUB__(v44, v45);
          v36 = v44 - v45;
          if (!v42)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v36 = 0;
        if (v34 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v33)
      {
        LODWORD(v36) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_80;
        }

        v36 = v36;
        if (v34 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v36 = BYTE6(v31);
        if (v34 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v34 == 2)
      {
        break;
      }

      if (v36)
      {
        goto LABEL_74;
      }

LABEL_48:
      v38 = v19;
      v39 = v18;
LABEL_49:
      sub_1CEFE4714(v38, v39);
      v3 = a1;
      v8 = v62;
    }

    v41 = *(v19 + 16);
    v40 = *(v19 + 24);
    v42 = __OFSUB__(v40, v41);
    v43 = v40 - v41;
    if (v42)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v36 != v43)
    {
      break;
    }

    if (v36 < 1)
    {
      goto LABEL_48;
    }

    if (v33 > 1)
    {
      if (v33 != 2)
      {
        memset(v64, 0, 14);
        sub_1CEFE42D4(v32, v31);
        goto LABEL_64;
      }

      v57 = *(v32 + 24);
      v59 = *(v32 + 16);
      sub_1CEFE42D4(v32, v31);
      v46 = sub_1CF9E5498();
      if (v46)
      {
        v47 = v46;
        v48 = sub_1CF9E54C8();
        v49 = v59;
        if (__OFSUB__(v59, v48))
        {
          goto LABEL_84;
        }

        v56 = v59 - v48 + v47;
      }

      else
      {
        v56 = 0;
        v49 = v59;
      }

      if (__OFSUB__(v57, v49))
      {
        goto LABEL_83;
      }

      sub_1CF9E54B8();
      v54 = v56;
LABEL_70:
      sub_1CF363A5C(v54, v19, v18, v64);
      sub_1CEFE4714(v32, v31);
      sub_1CEFE4714(v19, v18);
      v53 = v64[0];
      goto LABEL_71;
    }

    if (v33)
    {
      if (v32 >> 32 < v32)
      {
        goto LABEL_82;
      }

      sub_1CEFE42D4(v32, v31);
      v50 = sub_1CF9E5498();
      if (v50)
      {
        v58 = v50;
        v51 = sub_1CF9E54C8();
        if (__OFSUB__(v32, v51))
        {
          goto LABEL_85;
        }

        v52 = v32 - v51 + v58;
      }

      else
      {
        v52 = 0;
      }

      sub_1CF9E54B8();
      v54 = v52;
      goto LABEL_70;
    }

    v64[0] = v32;
    LOWORD(v64[1]) = v31;
    BYTE2(v64[1]) = BYTE2(v31);
    BYTE3(v64[1]) = BYTE3(v31);
    BYTE4(v64[1]) = BYTE4(v31);
    BYTE5(v64[1]) = BYTE5(v31);
    sub_1CEFE42D4(v32, v31);
LABEL_64:
    sub_1CF363A5C(v64, v19, v18, &v63);
    sub_1CEFE4714(v32, v31);
    sub_1CEFE4714(v19, v18);
    v53 = v63;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v62;
    if ((v53 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_1CEFE4714(v19, v18);
  return 0;
}

uint64_t sub_1CF363A5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1CF9E5498();
    if (v10)
    {
      v11 = sub_1CF9E54C8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1CF9E54B8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1CF9E5498();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1CF9E54C8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1CF9E54B8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CF363C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 40) = type metadata accessor for DocumentWharf(0);
  *(a4 + 48) = &off_1F4C2E638;
  *(a4 + 16) = a1;
  *(a4 + 72) = 0;
  v8 = a4 + *(*a4 + 136);
  *v8 = 1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  *(v8 + 48) = 0;
  *(v8 + 56) = 256;
  v9 = type metadata accessor for BackgroundDownloaderPacerState(0);
  v10 = v9[9];
  v11 = sub_1CF9E5CF8();
  v12 = *(*(v11 - 8) + 56);
  v12(v8 + v10, 1, 1, v11);
  *(v8 + v9[10]) = 0;
  v12(v8 + v9[11], 1, 1, v11);
  *(v8 + v9[12]) = 0;
  *(v8 + v9[13]) = 0;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_1CF363DC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4CE0, &qword_1CFA0FA70);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52[-v19];
  if (*a1 != *a2)
  {
    return 0;
  }

  v21 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return v21;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v21 = a2[40];
  if (a1[40])
  {
    if (!a2[40])
    {
      return v21;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (a1[57])
  {
    if ((a2[57] & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v23 = v18;
    v24 = type metadata accessor for BackgroundDownloaderPacerState(0);
    v55 = v23;
    v56 = v24;
    v58 = *(v24 + 36);
    v25 = *(v23 + 48);
    sub_1CF06EAD4(&v58[a1], v20);
    v26 = &v58[a2];
    v58 = v25;
    sub_1CF06EAD4(v26, &v25[v20]);
    v57 = *(v5 + 48);
    if (v57(v20, 1, v4) == 1)
    {
      if (v57(&v58[v20], 1, v4) == 1)
      {
        sub_1CEFCCC44(v20, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_37:
        v30 = v56;
        v31 = *(v56 + 40);
        v32 = *&a1[v31];
        v33 = *&a2[v31];
        if (v32)
        {
          if (!v33 || (sub_1CF362EB4(v32, v33) & 1) == 0)
          {
            return 0;
          }
        }

        else if (v33)
        {
          return 0;
        }

        v34 = *(v30 + 44);
        v35 = *(v55 + 48);
        sub_1CF06EAD4(&a1[v34], v16);
        sub_1CF06EAD4(&a2[v34], &v16[v35]);
        v36 = v57;
        if (v57(v16, 1, v4) == 1)
        {
          if (v36(&v16[v35], 1, v4) == 1)
          {
            sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_59:
            v39 = v56;
            v40 = *(v56 + 48);
            v41 = *&a1[v40];
            v42 = *&a2[v40];
            if (v41)
            {
              if (!v42)
              {
                return 0;
              }

              sub_1CEFD57E0(0, &qword_1EDEA3550, off_1E83BC5C8);
              v43 = v42;
              v44 = v41;
              v45 = sub_1CF9E7568();

              if ((v45 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v42)
            {
              return 0;
            }

            v46 = *(v39 + 52);
            v47 = *&a1[v46];
            v48 = *&a2[v46];
            if (v47)
            {
              if (v48)
              {
                type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
                v49 = v48;
                v50 = v47;
                v51 = sub_1CF9E7568();

                if (v51)
                {
                  return 1;
                }
              }
            }

            else if (!v48)
            {
              return 1;
            }

            return 0;
          }
        }

        else
        {
          sub_1CF06EAD4(v16, v10);
          if (v36(&v16[v35], 1, v4) != 1)
          {
            (*(v5 + 32))(v7, &v16[v35], v4);
            sub_1CF364624(&qword_1EDEAB3B0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
            v37 = sub_1CF9E6868();
            v38 = *(v5 + 8);
            v38(v7, v4);
            v38(v10, v4);
            sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            if ((v37 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_59;
          }

          (*(v5 + 8))(v10, v4);
        }

        v29 = v16;
LABEL_32:
        sub_1CEFCCC44(v29, &qword_1EC4C4CE0, &qword_1CFA0FA70);
        return 0;
      }
    }

    else
    {
      sub_1CF06EAD4(v20, v13);
      v54 = v5 + 48;
      if (v57(&v58[v20], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v58[v20], v4);
        sub_1CF364624(&qword_1EDEAB3B0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v53 = sub_1CF9E6868();
        v58 = *(v5 + 8);
        (v58)(v7, v4);
        (v58)(v13, v4);
        sub_1CEFCCC44(v20, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((v53 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_37;
      }

      (*(v5 + 8))(v13, v4);
    }

    v29 = v20;
    goto LABEL_32;
  }

  if (a2[57])
  {
    return 0;
  }

  v27 = *(a1 + 6);
  v28 = *(a2 + 6);
  if (a1[56])
  {
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v21 = 0;
        if ((a2[56] & 1) != 0 && v28 == 2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v21 = 0;
        if ((a2[56] & 1) != 0 && v28 >= 3)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v21 = 0;
      if (v27)
      {
        if ((a2[56] & 1) != 0 && v28 == 1)
        {
          goto LABEL_19;
        }
      }

      else if ((a2[56] & 1) != 0 && !v28)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v21 = 0;
    if ((a2[56] & 1) == 0 && v27 == v28)
    {
      goto LABEL_19;
    }
  }

  return v21;
}

unint64_t sub_1CF3644D4()
{
  result = qword_1EDEA4F58[0];
  if (!qword_1EDEA4F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA4F58);
  }

  return result;
}

unint64_t sub_1CF364528()
{
  result = qword_1EDEA6178;
  if (!qword_1EDEA6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6178);
  }

  return result;
}

unint64_t sub_1CF36457C()
{
  result = qword_1EDEA5B80;
  if (!qword_1EDEA5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B80);
  }

  return result;
}

uint64_t sub_1CF3645D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CEFD57E0(255, &qword_1EDEA3550, off_1E83BC5C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF364624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CF36466C()
{
  result = qword_1EDEA6188;
  if (!qword_1EDEA6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6188);
  }

  return result;
}

uint64_t sub_1CF3646C0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF970, qword_1CFA03BE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF364744()
{
  result = qword_1EDEA5B90[0];
  if (!qword_1EDEA5B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5B90);
  }

  return result;
}

unint64_t sub_1CF364798()
{
  v0 = sub_1CF4E0C98(MEMORY[0x1E69E7CC0]);
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  v3 = [v2 speculativeSetDownloadTextAge];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v3, 1, isUniquelyReferenced_nonNull_native);
  v5 = [v1 defaultStore];
  v6 = [v5 speculativeSetDownloadImageAge];

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v6, 2, v7);
  v8 = [v1 defaultStore];
  v9 = [v8 speculativeSetDownloadMovieAge];

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v9, 4, v10);
  v11 = [v1 defaultStore];
  v12 = [v11 speculativeSetDownloadAudioAge];

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v12, 8, v13);
  v14 = [v1 defaultStore];
  v15 = [v14 speculativeSetDownloadCompressedAge];

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v15, 16, v16);
  v17 = [v1 defaultStore];
  v18 = [v17 speculativeSetDownloadOtherAge];

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v18, 32, v19);
  return v0;
}

uint64_t sub_1CF3649E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF364A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CF364AD0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF35BCF4(v3, v1, v2);
}

void sub_1CF364B18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF35B120(v3, v1, v2);
}

uint64_t sub_1CF364B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v49 = a1;
  v50 = a2;
  v7 = sub_1CF9E6118();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v48 = v4;
  sub_1CF35AE5C();
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v51 = v11;
  (*(v11 + 16))(v13, v16, v10);
  v45 = v9;
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v5;
    v21 = v20;
    v41 = swift_slowAlloc();
    v52 = v41;
    *v21 = 136446210;
    sub_1CF364624(&unk_1EDEAECD0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v22 = sub_1CF9E7F98();
    v42 = a3;
    v24 = v23;
    v25 = *(v51 + 8);
    v25(v13, v10);
    v26 = sub_1CEFD0DF0(v22, v24, &v52);
    v27 = v24;
    a3 = v42;
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v21 + 4) = v26;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "🔮  refreshing speculative set with threshold %{public}s", v21, 0xCu);
    v35 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D386CDC0](v35, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);

    v36 = v25;
  }

  else
  {

    v36 = *(v51 + 8);
    v36(v13, v10);
  }

  (*(v46 + 8))(v45, v47);
  sub_1CF3716C0(v16, *(v48 + qword_1EDEBB7A8), v49, v50, a3, v44);
  v38 = v37;
  v36(v16, v10);
  return v38;
}

uint64_t sub_1CF364F00(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1CF033B88();
  v16 = type metadata accessor for SnapshotItem(0, *(v3 + 256), *(v3 + 272), v15);
  if ((v14 & 0x40000) != 0)
  {
    v20 = *(v16 + 48);
    v21 = (a1 + *(v16 + 44));
    v22 = v21[1];
    v37 = *v21;
    v38 = v22;
    v23 = a1 + v20;
    v24 = type metadata accessor for ItemMetadata(0);
    v25 = *(v23 + *(v24 + 104));
    v26 = *(v24 + 120);

    v19 = sub_1CF06E4F0(&v37, v25, v23 + v26);
    v38, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    v17 = *(v16 + 48);
    v18 = type metadata accessor for ItemMetadata(0);
    sub_1CF06EAD4(a1 + *(v18 + 120) + v17, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1CEFCCC44(v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v19 = 0;
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
      sub_1CF35AE5C();
      sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v34 = sub_1CF9E67E8();
      v35 = *(v8 + 8);
      v35(v10, v7);
      v35(v13, v7);
      v19 = v34 ^ 1;
    }
  }

  return v19 & 1;
}

uint64_t getEnumTagSinglePayload for BackgroundDownloaderPacerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundDownloaderPacerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CF365338()
{
  result = qword_1EC4BF9E8;
  if (!qword_1EC4BF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9E8);
  }

  return result;
}

unint64_t sub_1CF365390()
{
  result = qword_1EDEA4F40;
  if (!qword_1EDEA4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4F40);
  }

  return result;
}

unint64_t sub_1CF3653E8()
{
  result = qword_1EDEA4F48;
  if (!qword_1EDEA4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4F48);
  }

  return result;
}

uint64_t sub_1CF36543C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0xEC00000068736572;
  v11 = a1 == 0x666552736465656ELL && a2 == 0xEC00000068736572;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEF65746144687365;
    if (a1 == 0x726665527473616CLL && a2 == 0xEF65746144687365 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x80000001CFA43560;
      if (a1 == 0xD000000000000012 && 0x80000001CFA43560 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0x80000001CFA43580;
        if (a1 == 0xD00000000000001ALL && 0x80000001CFA43580 == a2 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v16 = 0x80000001CFA435A0;
          if (a1 == 0xD000000000000013 && 0x80000001CFA435A0 == a2 || (sub_1CF9E8048() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v17 = 0x80000001CFA435C0;
            if (a1 == 0xD000000000000011 && 0x80000001CFA435C0 == a2 || (sub_1CF9E8048() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else
            {
              v18 = 0x80000001CFA43340;
              if (a1 == 0xD000000000000011 && 0x80000001CFA43340 == a2 || (sub_1CF9E8048() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 6;
              }

              else
              {
                v19 = 0x80000001CFA435E0;
                if (a1 == 0xD00000000000001FLL && 0x80000001CFA435E0 == a2 || (sub_1CF9E8048() & 1) != 0)
                {
                  a2, v19, a3, a4, a5, a6, a7, a8;
                  return 7;
                }

                else
                {
                  v20 = 0xEE007364616F6C6ELL;
                  if (a1 == 0x776F44796C696164 && a2 == 0xEE007364616F6C6ELL || (sub_1CF9E8048() & 1) != 0)
                  {
                    a2, v20, a3, a4, a5, a6, a7, a8;
                    return 8;
                  }

                  else if (a1 == 0xD00000000000001BLL && 0x80000001CFA43600 == a2)
                  {
                    a2, 0x80000001CFA43600, a3, a4, a5, a6, a7, a8;
                    return 9;
                  }

                  else
                  {
                    v21 = sub_1CF9E8048();
                    a2, v22, v23, v24, v25, v26, v27, v28;
                    if (v21)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CF36577C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CF3657C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF36586C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1CF9E5A58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1CF3658E0(uint64_t a1@<X0>, uint64_t a2@<X1>, dev_t a3@<W2>, int a4@<W3>, unint64_t *a5@<X8>)
{
  v219 = a3;
  v220 = a4;
  v211 = a1;
  v212 = a5;
  v239 = *MEMORY[0x1E69E9840];
  v214 = sub_1CF9E6118();
  v6 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v215 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1CF9E53C8();
  v8 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v206 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v218 = &v199 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v222 = &v199 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v229 = &v199 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v213 = &v199 - v20;
  v29 = MEMORY[0x1EEE9AC00](v21);
  v30 = *(a2 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v216 = &v199 - v32;
  v221 = v11;
  if (v30)
  {
    v207 = v8;
    v208 = v6;
    *&v238.st_dev = MEMORY[0x1E69E7CC0];
    sub_1CF000F0C(0, v30, 0);
    v31 = *&v238.st_dev;
    v34 = *(v11 + 16);
    v33 = v11 + 16;
    v226 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v227 = v34;
    a2 += v226;
    v35 = *(v33 + 56);
    v224 = (v33 - 8);
    v225 = v35;
    v228 = v33;
    v223 = (v33 + 16);
    v36 = v213;
    do
    {
      v37 = v229;
      (v227)(v229, a2, v10);
      v38 = sub_1CF9E5928();
      v39 = [v38 fp_realpathURL];

      sub_1CF9E59D8();
      (*v224)(v37, v10);
      *&v238.st_dev = v31;
      v40 = v10;
      v42 = *v31->tree;
      v41 = *v31->tester;
      if (v42 >= v41 >> 1)
      {
        sub_1CF000F0C((v41 > 1), v42 + 1, 1);
        v36 = v213;
        v31 = *&v238.st_dev;
      }

      *v31->tree = v42 + 1;
      v43 = v225;
      (*v223)(v31 + v226 + v42 * v225, v36, v40);
      a2 += v43;
      --v30;
      v10 = v40;
    }

    while (v30);
    v11 = v221;
    v8 = v207;
    v6 = v208;
  }

  st_dev = v219;
  v224 = *v31->tree;
  if (!v224)
  {
    v31, v22, v23, v24, v25, v26, v27, v28;
    sub_1CF9E58C8();
    st_dev = 0;
    v128 = 0;
    v129 = 1;
    v130 = MEMORY[0x1E69E7CC0];
    v49 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v131 = v212;
    *v212 = v130;
    v131[1] = v49;
    *(v131 + 4) = st_dev;
    v131[3] = v128;
    *(v131 + 32) = v129;
    return;
  }

  v46 = *(v11 + 16);
  v45 = v11 + 16;
  v225 = v31 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
  v226 = v31;
  v227 = v46;
  v47 = v46(v29);
  v48 = 0;
  v207 = v8 + 1;
  v228 = v45;
  v229 = (v45 - 8);
  v223 = v6 + 1;
  v49 = MEMORY[0x1E69E7CC0];
  v204 = *MEMORY[0x1E696AA08];
  v47.n128_u64[0] = 136315394;
  v205 = v47;
  v203 = xmmword_1CF9FA450;
  do
  {
    if (v48 >= *(v226 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v50 = st_dev;
    (v227)(v222, &v225[*(v221 + 72) * v48], v10);
    sub_1CF9E5A18();
    v52 = v51;
    fpfs_openflags_0(0x100100u);
    sub_1CF9E6978();
    v52, v53, v54, v55, v56, v57, v58, v59;
    v60 = openat_s();

    if ((v60 & 0x80000000) != 0)
    {
      v226, v61, v62, v63, v64, v65, v66, v67;
      v132 = MEMORY[0x1D38683F0]();
      memset(&v238, 0, 40);
      LOBYTE(v238.st_atimespec.tv_nsec) = 19;
      sub_1CF19BBE4(v132, &v238.st_dev);
      sub_1CF1969CC(&v238);
      swift_willThrow();
      v133 = *v229;
      (*v229)(v222, v10);
      v133(v216, v10);
      v49, v134, v135, v136, v137, v138, v139, v140;
      return;
    }

    memset(&v238, 0, sizeof(v238));
    if (fstat(v60, &v238) < 0)
    {
      v226, v68, v69, v70, v71, v72, v73, v74;
      v141 = MEMORY[0x1D38683F0]();
      v234 = 3;
      v235 = 0u;
      v236 = 0u;
      v237 = 19;
      sub_1CF19BBE4(v141, &v234);
      v142 = &v234;
      goto LABEL_39;
    }

    st_dev = v238.st_dev;
    st_ino = v238.st_ino;
    if (v50 && v50 != v238.st_dev)
    {
      v49, v68, v69, v70, v71, v72, v73, v74;
      v226, v143, v144, v145, v146, v147, v148, v149;
      v238.st_dev = 18;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v151 = v209;
      v150 = v210;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*v207)(v151, v150);
      swift_willThrow();
      v152 = *v229;
      (*v229)(v222, v10);
      v152(v216, v10);
      goto LABEL_40;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1CF1F6AB4(0, *v49->tree + 1, 1, v49, v76, v77, v78, v79);
    }

    v81 = *v49->tree;
    v80 = *v49->tester;
    if (v81 >= v80 >> 1)
    {
      v49 = sub_1CF1F6AB4((v80 > 1), v81 + 1, 1, v49, v76, v77, v78, v79);
    }

    *v49->tree = v81 + 1;
    *(&v49[1].super.isa + v81) = st_ino;
    if (v220)
    {
      if ((fpfs_fset_syncroot() & 0x80000000) != 0)
      {
        v226, v82, v83, v84, v85, v86, v87, v88;
        v181 = MEMORY[0x1D38683F0]();
        v238.st_dev = 2;
        LOBYTE(v238.st_atimespec.tv_nsec) = 6;
        sub_1CF19BBE4(v181, &v238.st_dev);
        v142 = &v238;
LABEL_39:
        sub_1CF1969CC(v142);
        swift_willThrow();
        v182 = *v229;
        (*v229)(v222, v10);
        v182(v216, v10);
        v49, v183, v184, v185, v186, v187, v188, v189;
LABEL_40:
        close(v60);
        return;
      }

      if ((MEMORY[0x1D3868410](v60, 64, 3) & 0x80000000) != 0)
      {
        v89 = MEMORY[0x1D38683F0]();
        v238.st_dev = 3;
        LOBYTE(v238.st_atimespec.tv_nsec) = 9;
        v219 = st_dev;
        if (!v89 || (v90 = sub_1CF9E6138(), (v90 & 0x100000000) != 0))
        {
          sub_1CEFDB034();
          v98 = swift_allocError();
          v99 = *(&v238.st_rdev + 1);
          v100 = *&v238.st_uid;
          *v101 = *&v238.st_dev;
          v101[1] = v100;
          *(v101 + 25) = v99;
        }

        else
        {
          LODWORD(v234) = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
          inited = swift_initStackObject();
          *(inited + 16) = v203;
          *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          *(inited + 40) = v92;
          *(inited + 72) = &type metadata for VFSFileError;
          v93 = swift_allocObject();
          *(inited + 48) = v93;
          sub_1CF19A730(&v238.st_dev, v93 + 16);
          sub_1CF4E04E8(inited);
          swift_setDeallocating();
          sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
          sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v95 = v209;
          v94 = v210;
          sub_1CF9E57D8();
          v96 = sub_1CF9E53A8();
          v97 = v95;
          v98 = v96;
          (*v207)(v97, v94);
          sub_1CF1969CC(&v238);
        }

        swift_willThrow();
        v217 = 0;
        v102 = fpfs_current_or_default_log();
        v103 = v215;
        sub_1CF9E6128();
        (v227)(v218, v222, v10);
        v104 = v98;
        v105 = sub_1CF9E6108();
        v106 = sub_1CF9E72A8();

        LODWORD(v213) = v106;
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v199 = v107;
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          *&v238.st_dev = v202;
          *v107 = v205.n128_u32[0];
          v200 = v105;
          v108 = sub_1CF9E5928();
          v109 = [v108 fp_shortDescription];
          v208 = v98;
          v110 = v109;

          v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v113 = v112;

          (*v229)(v218, v10);
          v114 = sub_1CEFD0DF0(v111, v113, &v238.st_dev);
          v115 = v113;
          st_dev = v219;
          v115, v116, v117, v118, v119, v120, v121, v122;
          v123 = v199;
          *(v199 + 1) = v114;
          *(v123 + 6) = 2112;
          swift_getErrorValue();
          v124 = Error.prettyDescription.getter(v232, v233);
          *(v123 + 14) = v124;
          v125 = v200;
          v126 = v201;
          *v201 = v124;
          _os_log_impl(&dword_1CEFC7000, v125, v213, "Could not set protection class on %s: %@", v123, 0x16u);
          sub_1CEFCCC44(v126, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v126, -1, -1);
          v127 = v202;
          __swift_destroy_boxed_opaque_existential_1(v202);
          MEMORY[0x1D386CDC0](v127, -1, -1);
          MEMORY[0x1D386CDC0](v123, -1, -1);

          (*v223)(v215, v214);
        }

        else
        {

          (*v229)(v218, v10);
          (*v223)(v103, v214);
          st_dev = v219;
        }
      }
    }

    ++v48;
    close(v60);
    a2 = *v229;
    (*v229)(v222, v10);
  }

  while (v224 != v48);
  if (qword_1EDEAEE10 == -1)
  {
    goto LABEL_35;
  }

LABEL_45:
  swift_once();
LABEL_35:
  *&v238.st_dev = xmmword_1EDEBBE48;
  v234 = 47;
  *&v235 = 0xE100000000000000;
  v230 = 58;
  v231 = 0xE100000000000000;
  sub_1CEFE4E68();
  sub_1CF9E7668();
  v154 = v153;
  v155 = v206;
  v156 = v216;
  sub_1CF9E5958();
  v154, v157, v158, v159, v160, v161, v162, v163;
  memset(&v238, 0, sizeof(v238));
  sub_1CF9E5A18();
  v165 = v164;
  v166 = sub_1CF9E6978();
  v165, v167, v168, v169, v170, v171, v172, v173;
  LODWORD(v165) = lstat((v166 + 32), &v238);

  if ((v165 & 0x80000000) != 0)
  {
    (a2)(v156, v10);
    (*(v221 + 32))(v211, v155, v10);
    v128 = 0;
    v129 = 1;
    goto LABEL_42;
  }

  if (v238.st_dev == st_dev)
  {
    (a2)(v156, v10);
    (*(v221 + 32))(v211, v155, v10);
    v129 = 0;
    v128 = v238.st_ino;
LABEL_42:
    v130 = v226;
    goto LABEL_30;
  }

  v226, v174, v175, v176, v177, v178, v179, v180;
  v49, v190, v191, v192, v193, v194, v195, v196;
  LODWORD(v234) = 18;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  v198 = v209;
  v197 = v210;
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*v207)(v198, v197);
  swift_willThrow();
  (a2)(v155, v10);
  (a2)(v156, v10);
}

BOOL static VFSLookupScope.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(a2 + 32);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return *(result + 16) == *(a2 + 16);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return *(result + 16) == *(a2 + 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF366848()
{
  v1 = MEMORY[0x1D3868FE0](*(v0 + 32), MEMORY[0x1E69E76D8]);
  v3 = v2;
  MEMORY[0x1D3868CC0](v1);
  v3, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v11 = sub_1CF9E7F98();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  return 35;
}

uint64_t sub_1CF3668F0(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void sub_1CF366900(uint64_t a1)
{
  sub_1CF9E5A18();
  v2 = v1;
  fpfs_openflags_0(0x200000u);
  sub_1CF9E6978();
  v3 = openat_s();

  if ((v3 & 0x80000000) != 0)
  {
    v12 = MEMORY[0x1D38683F0](v4);
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v22 = 19;
    sub_1CF19BBE4(v12, v20);
    sub_1CF1969CC(v20);
    swift_willThrow();
    v2, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v2, v5, v6, v7, v8, v9, v10, v11;
    sub_1CF3669F4(v3);
    close(v3);
  }
}

void sub_1CF3669F4(uint64_t a1)
{
  v3 = a1;
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(v1 + 14);
  os_unfair_lock_opaque = v1[21]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 14);
  if (os_unfair_lock_opaque == 1)
  {
    sub_1CF9E6978();
    v5 = fpfs_fsetxattr();

    if (v5 < 0)
    {
      v7 = MEMORY[0x1D38683F0](v6);
      v8 = sub_1CF9E6888();
      v9 = [v8 fp_obfuscatedExtendedAttributeName];

      v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v12 = v11;

      v15[0] = v10;
      v15[1] = v12;
      v16 = 2;
      v13 = sub_1CF19BBE4(v7, v15);
      sub_1CF1969CC(v15);
      swift_willThrow();
      v14 = v13;
      LODWORD(v15[0]) = sub_1CF9E52E8();
      sub_1CF196978();
      LOBYTE(v10) = sub_1CF9E5658();

      if (v10)
      {
      }
    }
  }

  else if (!os_unfair_lock_opaque)
  {
    sub_1CF19AD04(0xD000000000000025, 0x80000001CFA43790, v3);
    if (v2)
    {
    }
  }
}

void sub_1CF366BEC(uint64_t a1, char a2)
{
  v4 = v2;
  v92 = *MEMORY[0x1E69E9840];
  v81 = sub_1CF9E5248();
  v7 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1CF9E5A58();
  v10 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 48))
  {
    v84 = v4;
    v82 = a1;
    sub_1CF9E5A18();
    v15 = v14;
    fpfs_openflags_0(0x200000u);
    sub_1CF9E6978();
    v16 = openat_s();

    if ((v16 & 0x80000000) != 0)
    {
      v31 = MEMORY[0x1D38683F0](v17);
      memset(&v91, 0, 40);
      LOBYTE(v91.st_atimespec.tv_nsec) = 19;
      v29 = sub_1CF19BBE4(v31, &v91.st_dev);
      sub_1CF1969CC(&v91);
      swift_willThrow();
      v15, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
      v15, v18, v19, v20, v21, v22, v23, v24;
      memset(&v91, 0, sizeof(v91));
      if ((fstat(v16, &v91) & 0x80000000) == 0)
      {
        st_mode = v91.st_mode;
        st_ino = v91.st_ino;
        v27 = sub_1CF9E61C8() & st_mode;
        v28 = sub_1CF9E61C8();
        v4 = v84;
        if (v27 != v28)
        {
          close(v16);
          v43 = [objc_opt_self() fp_maximumBounceLevel];
          if ((v43 & 0x8000000000000000) == 0)
          {
            v44 = 0;
            v80 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
            v78 = (v7 + 8);
            v79 = (v10 + 8);
            do
            {
              if (v44 != 1)
              {
                v45 = v43;
                if (qword_1EC4BCCD0 != -1)
                {
                  swift_once();
                }

                *&v91.st_dev = qword_1EC4EBC98;
                v91.st_ino = unk_1EC4EBCA0;
                v87 = 47;
                *&v88 = 0xE100000000000000;
                v85 = 58;
                v86 = 0xE100000000000000;
                sub_1CEFE4E68();
                v46 = sub_1CF9E7668();
                v48 = v47;
                if (v44)
                {
                  *&v91.st_dev = v46;
                  v91.st_ino = v47;
                  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
                  v87 = v44;
                  v49 = sub_1CF9E7F98();
                  v51 = v50;
                  MEMORY[0x1D3868CC0](v49);
                  v51, v52, v53, v54, v55, v56, v57, v58;
                  v48 = v91.st_ino;
                }

                sub_1CF9E5968();
                v48, v59, v60, v61, v62, v63, v64, v65;
                v66 = [objc_opt_self() defaultManager];
                v67 = sub_1CF9E5928();
                v68 = sub_1CF9E5928();
                *&v91.st_dev = 0;
                v69 = [v66 moveItemAtURL:v67 toURL:v68 error:&v91];

                if (v69)
                {
                  v70 = *v79;
                  v71 = *&v91.st_dev;
                  v70(v13, v83);
                }

                else
                {
                  v72 = *&v91.st_dev;
                  v29 = sub_1CF9E57F8();

                  swift_willThrow();
                  v73 = v29;
                  sub_1CF9E5128();
                  sub_1CF36B3D4(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
                  v74 = v81;
                  LOBYTE(v72) = sub_1CF9E5658();

                  (*v78)(v9, v74);
                  (*v79)(v13, v83);
                  if ((v72 & 1) == 0)
                  {
                    goto LABEL_18;
                  }
                }

                v4 = v84;
                v43 = v45;
              }

              if (v43 == v44)
              {
                goto LABEL_21;
              }
            }

            while (!__OFADD__(v44++, 1));
            __break(1u);
          }

          __break(1u);
        }

        if ((fpfs_fset_acl() & 0x80000000) != 0)
        {
          v76 = MEMORY[0x1D38683F0]();
          v91.st_dev = 16;
          LOBYTE(v91.st_atimespec.tv_nsec) = 4;
          v29 = sub_1CF19BBE4(v76, &v91.st_dev);
          sub_1CF1969CC(&v91);
          swift_willThrow();
          close(v16);
        }

        else
        {
          sub_1CF3669F4(v16);
          if (!v3)
          {
            *(v4 + 40) = st_ino;
            *(v4 + 48) = 0;
            close(v16);
            return;
          }

          close(v16);
          v29 = v3;
        }

        goto LABEL_19;
      }

      v40 = MEMORY[0x1D38683F0]();
      v87 = 3;
      v88 = 0u;
      v89 = 0u;
      v90 = 19;
      v29 = sub_1CF19BBE4(v40, &v87);
      sub_1CF1969CC(&v87);
      swift_willThrow();
      close(v16);
    }

LABEL_18:
    v4 = v84;
  }

  else
  {
    v30 = *(v4 + 40);
    memset(&v91, 0, sizeof(v91));
    MEMORY[0x1EEE9AC00](v11);
    sub_1CEFE1894(sub_1CF36B21C);
    v29 = v3;
    if (!v3)
    {
      if (*(v4 + 16) != v91.st_dev)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSLookupScope.swift", 126, 2, 186);
      }

      if (a2)
      {
        os_unfair_lock_lock((v4 + 56));
        v39 = *(v4 + 84);
        os_unfair_lock_unlock((v4 + 56));
        if (v39 != 2)
        {
          sub_1CF366900(a1);
        }
      }

      if (v30 != v91.st_ino)
      {
        *(v4 + 40) = v91.st_ino;
        *(v4 + 48) = 0;
      }

      return;
    }
  }

LABEL_19:
  v41 = v29;
  v91.st_dev = sub_1CF9E5328();
  sub_1CF196978();
  v42 = sub_1CF9E5658();

  if (v42)
  {

LABEL_21:
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
  }
}

void sub_1CF3673DC(stat *a2@<X1>, _DWORD *a3@<X8>)
{
  sub_1CF9E5A18();
  v6 = v5;
  v7 = sub_1CF9E6978();
  v6, v8, v9, v10, v11, v12, v13, v14;
  LODWORD(v6) = lstat((v7 + 32), a2);

  *a3 = v6;
}

uint64_t sub_1CF367450(char a1)
{
  v3 = v1;
  v84 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6118();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5CF8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  v70 = xmmword_1EDEBBE48;
  *&v69.st_dev = 47;
  v69.st_ino = 0xE100000000000000;
  v66[0] = 58;
  v66[1] = 0xE100000000000000;
  sub_1CEFE4E68();
  sub_1CF9E7668();
  v14 = v13;
  sub_1CF9E5968();
  v14, v15, v16, v17, v18, v19, v20, v21;
  sub_1CF366BEC(v12, a1 & 1);
  if (!v2)
  {
    LOBYTE(v1) = 0;
    if (v3[1].tree[0] == 1 && (a1 & 1) != 0)
    {
      if (v3[1].tree[1])
      {
        LOBYTE(v1) = 0;
        goto LABEL_8;
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      LODWORD(v70) = 2;
      WORD4(v70) = 448;
      sub_1CF36B41C(&v70);
      sub_1CF9E5CE8();
      *(&v71 + 1) = sub_1CF1ADD60(v9);
      *&v72 = v23;
      sub_1CF9E5CE8();
      *(&v72 + 1) = sub_1CF1ADD60(v9);
      *&v73 = v24;
      MEMORY[0x1EEE9AC00](*(&v72 + 1));
      sub_1CEFE1894(sub_1CF36B42C);
      sub_1CF9E5A18();
      v1 = v25;
      fpfs_openflags_0(0x200000u);
      sub_1CF9E6978();
      v26 = openat_s();

      if ((v26 & 0x80000000) != 0)
      {
        v42 = MEMORY[0x1D38683F0](v27);
        memset(&v69, 0, 40);
        LOBYTE(v69.st_atimespec.tv_nsec) = 19;
        sub_1CF19BBE4(v42, &v69.st_dev);
        sub_1CF1969CC(&v69);
        swift_willThrow();
        v1, v43, v44, v45, v46, v47, v48, v49;
        goto LABEL_8;
      }

      v1, v28, v29, v30, v31, v32, v33, v34;
      LOBYTE(v1) = 16;
      if ((fpfs_fset_acl() & 0x80000000) != 0)
      {
        v50 = MEMORY[0x1D38683F0]();
        v69.st_dev = 16;
        LOBYTE(v69.st_atimespec.tv_nsec) = 4;
      }

      else
      {
        memset(&v69, 0, sizeof(v69));
        if (fstat(v26, &v69) < 0)
        {
          v51 = MEMORY[0x1D38683F0]();
          v66[0] = 3;
          *&v66[1] = 0u;
          v67 = 0u;
          v68 = 19;
          sub_1CF19BBE4(v51, v66);
          v52 = v66;
LABEL_24:
          sub_1CF1969CC(v52);
          swift_willThrow();
          close(v26);
          goto LABEL_8;
        }

        *v3[1]._anon_8 = v69.st_ino;
        v3[1].tree[0] = 0;
        v35 = fpfs_current_or_default_log();
        v36 = v61;
        sub_1CF9E6128();

        v37 = sub_1CF9E6108();
        v38 = sub_1CF9E7298();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = v39;
          *v39 = 134217984;
          v41 = *v3[1]._anon_8;
          if (v3[1].tree[0])
          {
            v41 = 0;
          }

          *(v39 + 4) = v41;

          _os_log_impl(&dword_1CEFC7000, v37, v38, "🗑  created .Trash with fileID %llu", v40, 0xCu);
          MEMORY[0x1D386CDC0](v40, -1, -1);
        }

        else
        {
        }

        (*(v62 + 8))(v36, v63);
        *(v66 + 6) = 0;
        v66[0] = 0;
        sub_1CF9E6978();
        v53 = fpfs_fsetxattr();

        if ((v53 & 0x80000000) == 0)
        {
          sub_1CF3669F4(v26);
          close(v26);
          LOBYTE(v1) = 1;
          goto LABEL_8;
        }

        v1 = MEMORY[0x1D38683F0](v54);
        v55 = sub_1CF9E6888();
        v56 = [v55 fp_obfuscatedExtendedAttributeName];

        v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v59 = v58;

        *&v69.st_dev = v57;
        v69.st_ino = v59;
        LOBYTE(v69.st_atimespec.tv_nsec) = 2;
        v50 = v1;
      }

      sub_1CF19BBE4(v50, &v69.st_dev);
      v52 = &v69;
      goto LABEL_24;
    }
  }

LABEL_8:
  (*(v64 + 8))(v12, v65);
  return v1 & 1;
}

uint64_t sub_1CF367AE8@<X0>(_DWORD *a3@<X8>)
{
  sub_1CF9E5A18();
  v5 = v4;
  v16[4] = sub_1CF36581C;
  v16[5] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1CF9B8AD8;
  v16[3] = &block_descriptor_50_0;
  v6 = _Block_copy(v16);

  sub_1CF9E6978();
  v5, v7, v8, v9, v10, v11, v12, v13;
  dataless_fault_at = fpfs_create_dataless_fault_at();

  _Block_release(v6);
  *a3 = dataless_fault_at;
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF367C18(uint64_t a1)
{
  v3 = sub_1CF9E5868();
  v76 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v59 - v7;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  v16 = *(v1 + 32);
  if (*(v15 + 16) != *(v16 + 16))
  {
    goto LABEL_3;
  }

  v17 = sub_1CF6C01BC(a1, *(v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs));
  if (v18)
  {
    goto LABEL_3;
  }

  v20 = v17;
  if (v17)
  {
    v71 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
    result = swift_allocObject();
    *(result + 16) = xmmword_1CF9FA440;
    *(result + 32) = *(v1 + 24);
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v72 = xmmword_1CF9FA440;
      *&v74 = v8;
      v70 = v5;
      if (v20 < *(v16 + 16))
      {
        *(result + 40) = *(v16 + 8 * v20 + 32);
        LODWORD(v62) = *(v1 + 16);
        v68 = *(v1 + 40);
        v67 = *(v1 + 48);
        v61 = result;
        os_unfair_lock_lock((v1 + 56));
        v22 = *(v1 + 72);
        v66 = *(v1 + 64);
        v23 = *(v1 + 80);
        v65 = *(v1 + 88);
        v64 = *(v1 + 89);
        LODWORD(v63) = *(v1 + 90);
        v73 = v22;

        os_unfair_lock_unlock((v1 + 56));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v24 = v9;
        v25 = *(v9 + 72);
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = v72;
        *&v72 = v27;
        v28 = v27 + v26;
        v69 = v24;
        v29 = *(v24 + 16);
        v30 = v74;
        result = v29(v27 + v26, v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v74);
        if (v20 < *(v15 + 16))
        {
          v29(v28 + v25, v15 + v26 + v25 * v20, v30);
          v29(v11, v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v30);
          LODWORD(v59) = *(v1 + 50);
          type metadata accessor for VFSLookupScope(0);
          v19 = swift_allocObject();
          *(v19 + 40) = 0;
          *(v19 + 48) = 1;
          v60 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
          *(v19 + 96) = v60;
          *(v19 + 16) = v62;
          v31 = v61;
          *(v19 + 32) = v61;
          v32 = *(v31 + 16);
          if (v32)
          {
            v32 = *(v31 + 32);
          }

          v33 = v70;
          v34 = v71;
          *(v19 + 24) = v32;
          *(v19 + 40) = v68;
          *(v19 + 48) = v67;
          *(v19 + 56) = 0;
          v35 = v73;
          *(v19 + 64) = v66;
          *(v19 + 72) = v35;
          *(v19 + 80) = v23;
          *(v19 + 88) = v65;
          *(v19 + 89) = v64;
          *(v19 + 90) = v63;
          v36 = *(v72 + 16);

          if (v36)
          {
            v37 = v74;
            v29(v19 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v28, v74);
            v38 = v37;
            v39 = v69;
          }

          else
          {
            v39 = v69;
            v38 = v74;
            (*(v69 + 56))(v75, 1, 1, v74);
            (*(v76 + 104))(v33, *MEMORY[0x1E6968F70], v34);
            sub_1CF9E5A38();
          }

          *(v19 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v72;
          (*(v39 + 32))(v19 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v11, v38);
          *(v19 + 49) = 0;
          *(v19 + 50) = v59;
          swift_beginAccess();
          v49 = *(v1 + 96);
          swift_beginAccess();
          *(v19 + 96) = v49;

          v57 = &v77;
LABEL_23:
          *(v57 - 32), v50, v51, v52, v53, v54, v55, v56;
          return v19;
        }

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v15 + 16) == 1)
  {
LABEL_3:

    return v1;
  }

  v70 = v5;
  v71 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
  result = swift_allocObject();
  v74 = xmmword_1CF9FA450;
  *(result + 16) = xmmword_1CF9FA450;
  if (!*(v16 + 16))
  {
    goto LABEL_28;
  }

  v73 = *(v16 + 32);
  v63 = result;
  *(result + 32) = v73;
  v64 = *(v1 + 16);
  *&v72 = *(v1 + 40);
  LODWORD(v69) = *(v1 + 48);
  os_unfair_lock_lock((v1 + 56));
  v40 = *(v1 + 72);
  v68 = *(v1 + 64);
  v41 = *(v1 + 80);
  v67 = *(v1 + 88);
  LODWORD(v66) = *(v1 + 89);
  v65 = *(v1 + 90);

  os_unfair_lock_unlock((v1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v42 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  result = swift_allocObject();
  *(result + 16) = v74;
  if (*(v15 + 16))
  {
    v43 = result;
    v44 = *(v9 + 16);
    v44(result + v42, v15 + v42, v8);
    v59 = v44;
    v44(v14, v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v8);
    LODWORD(v61) = *(v1 + 50);
    type metadata accessor for VFSLookupScope(0);
    v19 = swift_allocObject();
    *(v19 + 40) = 0;
    *(v19 + 48) = 1;
    v62 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
    *(v19 + 96) = v62;
    v60 = (v19 + 96);
    *(v19 + 16) = v64;
    v45 = v63;
    v46 = v73;
    if (!*(v63 + 16))
    {
      v46 = 0;
    }

    *(v19 + 24) = v46;
    *(v19 + 32) = v45;
    *(v19 + 40) = v72;
    *(v19 + 48) = v69;
    *(v19 + 56) = 0;
    *(v19 + 64) = v68;
    *(v19 + 72) = v40;
    *(v19 + 80) = v41;
    *(v19 + 88) = v67;
    *(v19 + 89) = v66;
    *(v19 + 90) = v65;
    v47 = v9;
    v48 = *(v43 + 16);
    *&v74 = v40;

    if (v48)
    {
      v59(v19 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v43 + v42, v8);
    }

    else
    {
      (*(v47 + 56))(v75, 1, 1, v8);
      (*(v76 + 104))(v70, *MEMORY[0x1E6968F70], v71);
      sub_1CF9E5A38();
    }

    *(v19 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v43;
    (*(v47 + 32))(v19 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v14, v8);
    *(v19 + 49) = 0;
    *(v19 + 50) = v61;
    swift_beginAccess();
    v58 = *(v1 + 96);
    swift_beginAccess();
    *(v19 + 96) = v58;

    v57 = &v78;
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1CF368510(void *a1)
{
  v2 = v1;
  v230 = a1;
  v286 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v235 = v222 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE008, &unk_1CFA04210);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v248 = v222 - v6;
  v237 = type metadata accessor for VFSDetachedRootBookmark(0);
  v7 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v236 = v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v270);
  v225 = (v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v231 = (v222 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v222 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v244 = (v222 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v264 = (v222 - v18);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v249);
  v228 = v222 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v227 = (v222 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v247 = v222 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v246 = (v222 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v229 = v222 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v253 = v222 - v29;
  v256 = type metadata accessor for VFSItem(0);
  v30 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v224 = v222 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v243 = (v222 - v33);
  v241 = sub_1CF9E53C8();
  v34 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v240 = v222 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E5A58();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v226 = v222 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v273 = v222 - v40;
  v41 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v42 = *(v2 + 96);
  *(v2 + 96) = v41;
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  v51 = *(v50 + 16);
  if (v51)
  {
    v53 = *(v37 + 16);
    v52 = v37 + 16;
    v265 = v53;
    v54 = v50 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
    v258 = &v283;
    v260 = *(v52 + 56);
    v261 = (v52 - 8);
    v254 = (v30 + 56);
    v245 = (v30 + 48);
    v232 = (v52 + 40);
    v233 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
    v234 = (v7 + 56);
    v55 = *MEMORY[0x1E696AA08];
    v238 = (v34 + 8);
    v239 = v55;
    v252 = xmmword_1CF9FD920;
    v242 = xmmword_1CF9FD940;
    v223 = xmmword_1CF9FD930;
    v259 = v2;
    v263 = v14;
    v255 = v36;
    v257 = v52;
    do
    {
      v271 = v54;
      v272 = v51;
      v265(v273);
      sub_1CF9E5A18();
      v57 = v56;
      fpfs_openflags_0(0x100000u);
      sub_1CF9E6978();
      v57, v58, v59, v60, v61, v62, v63, v64;
      v65 = openat_s();

      if (v65 < 0)
      {
        v95 = MEMORY[0x1D38683F0](v66);
        memset(v281, 0, 40);
        v281[40] = 19;
        if (!v95 || (v96 = sub_1CF9E6138(), (v96 & 0x100000000) != 0))
        {
          sub_1CEFDB034();
          v107 = swift_allocError();
          v112 = *&v281[25];
          v113 = *&v281[16];
          *v114 = *v281;
          v114[1] = v113;
          *(v114 + 25) = v112;
        }

        else
        {
          LODWORD(v276) = v96;
          v278[0] = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v278[1] = v97;
          v280 = &type metadata for VFSFileError;
          v279 = swift_allocObject();
          sub_1CF19A730(v281, v279 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
          v98 = sub_1CF9E7BE8();

          sub_1CEFCCBDC(v278, &aBlock, &unk_1EC4BE300, &unk_1CF9FC5D0);
          v99 = aBlock;
          v100 = sub_1CEFE4328(aBlock, *(&aBlock + 1));
          if (v101)
          {
            goto LABEL_62;
          }

          v98[(v100 >> 6) + 8] |= 1 << v100;
          *(v98[6] + 16 * v100) = v99;
          sub_1CEFE9EB8(v258, (v98[7] + 32 * v100));
          v102 = v98[2];
          v103 = __OFADD__(v102, 1);
          v104 = v102 + 1;
          if (v103)
          {
            goto LABEL_63;
          }

          v98[2] = v104;

          sub_1CEFCCC44(v278, &unk_1EC4BE300, &unk_1CF9FC5D0);
          sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v106 = v240;
          v105 = v241;
          sub_1CF9E57D8();
          v107 = sub_1CF9E53A8();
          (*v238)(v106, v105);
          sub_1CF1969CC(v281);
        }

        swift_willThrow();

        (*v261)(v273, v36);
        v250 = 0;
        goto LABEL_30;
      }

      v67 = type metadata accessor for VFSFileTree(0);
      os_unfair_lock_lock((v2 + 56));
      v69 = *(v2 + 64);
      v68 = *(v2 + 72);
      v269 = *(v2 + 88);
      v70 = *(v2 + 89);
      v71 = *(v2 + 90);

      v72 = *(v2 + 80);
      os_unfair_lock_unlock((v2 + 56));
      v268 = v222;
      MEMORY[0x1EEE9AC00](v73);
      v251 = v67;
      v222[-10] = v67;
      LODWORD(v222[-9]) = v65;
      v222[-7] = 0;
      v222[-6] = 0;
      v222[-8] = v2;
      LOBYTE(v222[-5]) = 2;
      v219 = v252;
      LOBYTE(v220) = -1;
      v221 = 0;
      v284 = v69;
      v285 = v68;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v283 = sub_1CEFDB088;
      *(&v283 + 1) = &block_descriptor_16;
      v74 = _Block_copy(&aBlock);
      v267 = v68;

      v266 = v74;
      *v281 = v74;
      *&v281[8] = v72;
      v281[16] = v269;
      v281[17] = v70;
      v281[18] = v71;
      v262 = sub_1CEFDB034();
      v75 = swift_allocError();
      *v76 = 6;
      *(v76 + 8) = 0u;
      *(v76 + 24) = 0u;
      *(v76 + 40) = 19;
      v77 = v264;
      *v264 = v75;
      swift_storeEnumTagMultiPayload();
      v78 = swift_allocObject();
      v78[2] = v77;
      v78[3] = sub_1CEFDB808;
      v78[4] = &v222[-12];
      v79 = swift_allocObject();
      *(v79 + 16) = sub_1CEFDB37C;
      *(v79 + 24) = v78;
      v284 = sub_1CEFDB240;
      v285 = v79;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v283 = sub_1CEFDB270;
      *(&v283 + 1) = &block_descriptor_31_0;
      v80 = _Block_copy(&aBlock);

      v269 = v65;
      v81 = fpfs_fgetfileattrs_detailed();
      _Block_release(v80);
      LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

      if (v80)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      v82 = v263;
      if (v81)
      {
        swift_getErrorValue();
        v83 = v274;
        v84 = swift_allocError();
        *v85 = 6;
        *(v85 + 8) = 0u;
        *(v85 + 24) = 0u;
        *(v85 + 40) = 19;
        v86 = v81;
        v87 = v83;
        v82 = v263;
        v88 = sub_1CF199074(v84, v87);

        v89 = v244;
        *v244 = v88;
        swift_storeEnumTagMultiPayload();
        v90 = v89;
        v77 = v264;
        sub_1CF1DBC74(v90, v264);
      }

      sub_1CEFCCBDC(v77, v82, &qword_1EC4BE000, &unk_1CFA006A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v91 = v77;
        *&aBlock = *v82;
        v92 = aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v91, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v266);
        LODWORD(aBlock) = sub_1CF9E52A8();
        sub_1CF196978();
        LOBYTE(v91) = sub_1CF9E5658();

        v2 = v259;
        if ((v91 & 1) == 0)
        {
          v36 = v255;
          (*v261)(v273, v255);
          v111 = v253;
          (*v254)(v253, 1, 1, v256);
          v115 = v269;
          goto LABEL_28;
        }

        v93 = v246;
        *v246 = v242;
        *(v93 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v94 = v247;
      }

      else
      {

        v93 = v246;
        sub_1CEFE55D0(v82, v246, &unk_1EC4BE2F0, qword_1CFA04220);
        sub_1CEFCCC44(v77, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v266);
        v94 = v247;
      }

      sub_1CEFE55D0(v93, v94, &unk_1EC4BE2F0, qword_1CFA04220);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v109 = v248;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1CEFCCC44(v94, &unk_1EC4BE2F0, qword_1CFA04220);
        v110 = 1;
        v111 = v253;
      }

      else
      {
        v111 = v253;
        sub_1CEFE4CC8(v94, v253, type metadata accessor for VFSItem);
        v110 = 0;
      }

      v2 = v259;
      v115 = v269;
      v116 = *v254;
      v117 = v256;
      (*v254)(v111, v110, 1, v256);
      v118 = *v245;
      if ((*v245)(v111, 1, v117) != 1)
      {
        v119 = v111;
        v120 = v243;
        sub_1CEFE4CC8(v119, v243, type metadata accessor for VFSItem);
        v121 = *(v117 + 28);
        v122 = v120;
        if (*(v120 + v121 + *(type metadata accessor for ItemMetadata(0) + 72)) == 1 && (*(v120 + 8) != 2 || *v120 > 1uLL))
        {
          v124 = v235;
          v125 = v255;
          (v265)(v235, v2 + v233, v255);
          (*v232)(v124, 0, 1, v125);
          v126 = v250;
          sub_1CF36C8E0(v115, v124, v109);
          if (v126)
          {

            (*v234)(v109, 1, 1, v237);
            sub_1CEFCCC44(v109, &qword_1EC4BE008, &unk_1CFA04210);
            v127 = *v122;
            v128 = v122;
            v129 = v122[4];
            v130 = *(v128 + 40);
            v131 = *(v128 + 8);
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v281 = *(v2 + 96);
            *(v2 + 96) = 0x8000000000000000;
            sub_1CF1D1DC8(0, 2, v129, v130, v127, v131, isUniquelyReferenced_nonNull_native);
            *(v2 + 96) = *v281;
            swift_endAccess();
            sub_1CEFE516C(v128, type metadata accessor for VFSItem);
            (*v261)(v273, v125);
            v250 = 0;
            v36 = v125;
LABEL_59:
            v123 = v272;
            close(v269);
            goto LABEL_31;
          }

          v250 = 0;
          (*v234)(v109, 0, 1, v237);
          sub_1CEFE4CC8(v109, v236, type metadata accessor for VFSDetachedRootBookmark);
          sub_1CF9E5A18();
          v134 = v133;
          fpfs_openflags_0(0x208000u);
          sub_1CF9E6978();
          v135 = openat_s();

          if (v135 < 0)
          {
            v170 = MEMORY[0x1D38683F0](v136);
            v284 = 0;
            aBlock = 0u;
            v283 = 0u;
            LOBYTE(v285) = 19;
            v166 = sub_1CF19BBE4(v170, &aBlock);
            sub_1CF1969CC(&aBlock);
            swift_willThrow();
            v134, v171, v172, v173, v174, v175, v176, v177;
            v250 = 0;
            goto LABEL_46;
          }

          v134, v137, v138, v139, v140, v141, v142, v143;
          os_unfair_lock_lock((v2 + 56));
          v145 = *(v2 + 64);
          v144 = *(v2 + 72);
          LODWORD(v268) = *(v2 + 88);
          v146 = v135;
          v147 = *(v2 + 89);
          LODWORD(v267) = *(v2 + 90);

          v148 = *(v2 + 80);
          os_unfair_lock_unlock((v2 + 56));
          v222[1] = v222;
          MEMORY[0x1EEE9AC00](v149);
          v222[-10] = v251;
          LODWORD(v222[-9]) = v146;
          v222[-7] = 0;
          v222[-6] = 0;
          v222[-8] = v2;
          LOBYTE(v222[-5]) = 2;
          v219 = v252;
          LOBYTE(v220) = -1;
          v221 = 0;
          v284 = v145;
          v285 = v144;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v283 = sub_1CEFDB088;
          *(&v283 + 1) = &block_descriptor_35;
          v150 = _Block_copy(&aBlock);
          v266 = v144;

          v251 = v150;
          *v281 = v150;
          *&v281[8] = v148;
          v281[16] = v268;
          v281[17] = v147;
          v281[18] = v267;
          v151 = swift_allocError();
          *v152 = 6;
          *(v152 + 8) = 0u;
          *(v152 + 24) = 0u;
          *(v152 + 40) = 19;
          v153 = v231;
          *v231 = v151;
          swift_storeEnumTagMultiPayload();
          v154 = swift_allocObject();
          v154[2] = v153;
          v154[3] = sub_1CF2B9F90;
          v154[4] = &v222[-12];
          v155 = swift_allocObject();
          *(v155 + 16) = sub_1CF1DBD3C;
          *(v155 + 24) = v154;
          v284 = sub_1CF1DBD5C;
          v285 = v155;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v283 = sub_1CEFDB270;
          *(&v283 + 1) = &block_descriptor_46;
          v156 = _Block_copy(&aBlock);

          LODWORD(v268) = v146;
          v157 = fpfs_fgetfileattrs_detailed();
          _Block_release(v156);
          LOBYTE(v156) = swift_isEscapingClosureAtFileLocation();

          if (v156)
          {
            goto LABEL_64;
          }

          v267 = v154;
          if (v157)
          {
            swift_getErrorValue();
            v158 = v275;
            v159 = swift_allocError();
            *v160 = 6;
            *(v160 + 8) = 0u;
            *(v160 + 24) = 0u;
            *(v160 + 40) = 19;
            v161 = v157;
            v162 = sub_1CF199074(v159, v158);

            v163 = v159;
            v153 = v231;

            v164 = v244;
            *v244 = v162;
            swift_storeEnumTagMultiPayload();
            sub_1CF1DBC74(v164, v153);
          }

          v165 = v225;
          sub_1CEFCCBDC(v153, v225, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            *&aBlock = *v165;
            v166 = aBlock;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(v153, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v251);

            v167 = v166;
            LODWORD(aBlock) = sub_1CF9E52A8();
            sub_1CF196978();
            v168 = sub_1CF9E5658();

            v2 = v259;
            if (v168)
            {

              v169 = v227;
              *v227 = v242;
              *(v169 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              goto LABEL_44;
            }

            close(v268);
LABEL_46:
            LODWORD(aBlock) = sub_1CF9E5328();
            sub_1CF196978();
            v178 = sub_1CF9E5658();

            if (v178)
            {
              v169 = v227;
              *v227 = v223;
              *(v169 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              goto LABEL_48;
            }

            v184 = v2;
            v181 = v229;
            v116(v229, 1, 1, v256);
            v183 = v243;
LABEL_56:
            v36 = v255;
            sub_1CEFCCC44(v181, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v197 = *v183;
            v198 = (v236 + *(v237 + 20));
            v199 = v183;
            v189 = *v198;
            v190 = v198[1];
            v200 = *(v199 + 8);
            swift_beginAccess();

            v201 = swift_isUniquelyReferenced_nonNull_native();
            *v281 = *(v184 + 96);
            *(v184 + 96) = 0x8000000000000000;
            v202 = v200;
            v2 = v184;
            sub_1CF1D1DC8(0, 2, v189, v190, v197, v202, v201);
            *(v184 + 96) = *v281;
            swift_endAccess();
            v195 = v230;
            if (v230)
            {
              goto LABEL_57;
            }

LABEL_54:
            sub_1CEFE516C(v243, type metadata accessor for VFSItem);
            (*v261)(v273, v36);
            v196 = v236;
          }

          else
          {

            v169 = v227;
            sub_1CEFE55D0(v165, v227, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v153, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v251);

            v2 = v259;
LABEL_44:
            close(v268);
LABEL_48:
            v179 = v228;
            sub_1CEFE55D0(v169, v228, &unk_1EC4BE2F0, qword_1CFA04220);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1CEFCCC44(v179, &unk_1EC4BE2F0, qword_1CFA04220);
              v180 = 1;
              v181 = v229;
            }

            else
            {
              v181 = v229;
              sub_1CEFE4CC8(v179, v229, type metadata accessor for VFSItem);
              v180 = 0;
            }

            v182 = v256;
            v183 = v243;
            v116(v181, v180, 1, v256);
            if (v118(v181, 1, v182) == 1)
            {
              v184 = v2;
              goto LABEL_56;
            }

            v185 = v224;
            sub_1CEFE4CC8(v181, v224, type metadata accessor for VFSItem);
            v268 = *v183;
            v186 = *v185;
            v187 = (v236 + *(v237 + 20));
            v188 = v183;
            v189 = *v187;
            v190 = v187[1];
            v191 = *(v185 + 8);
            v192 = *(v188 + 8);
            swift_beginAccess();

            v193 = swift_isUniquelyReferenced_nonNull_native();
            *v281 = *(v259 + 96);
            *(v259 + 96) = 0x8000000000000000;
            v194 = v192;
            v2 = v259;
            sub_1CF1D1DC8(v186, v191, v189, v190, v268, v194, v193);
            *(v2 + 96) = *v281;
            swift_endAccess();
            sub_1CEFE516C(v185, type metadata accessor for VFSItem);
            v36 = v255;
            v195 = v230;
            if (!v230)
            {
              goto LABEL_54;
            }

LABEL_57:
            v268 = type metadata accessor for InternalPathsManager(0);
            *&aBlock = v189;
            *(&aBlock + 1) = v190;
            *v281 = 47;
            *&v281[8] = 0xE100000000000000;
            v276 = 58;
            v277 = 0xE100000000000000;
            v203 = sub_1CEFE4E68();
            v204 = v195;
            v220 = v203;
            v221 = v203;
            *(&v219 + 1) = v203;
            *&v219 = MEMORY[0x1E69E6158];
            sub_1CF9E7668();
            v206 = v205;
            v207 = v226;
            v208 = v2;
            v209 = v236;
            sub_1CF9E5958();
            v206, v210, v211, v212, v213, v214, v215, v216;
            v217 = v273;
            sub_1CF796CC0(v273, v207, v204);

            v218 = *v261;
            (*v261)(v207, v36);
            sub_1CEFE516C(v243, type metadata accessor for VFSItem);
            v218(v217, v36);
            v196 = v209;
            v2 = v208;
          }

          sub_1CEFE516C(v196, type metadata accessor for VFSDetachedRootBookmark);
          goto LABEL_59;
        }

        sub_1CEFE516C(v120, type metadata accessor for VFSItem);
        v36 = v255;
        (*v261)(v273, v255);
        goto LABEL_29;
      }

      v36 = v255;
      (*v261)(v273, v255);
LABEL_28:
      sub_1CEFCCC44(v111, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_29:
      close(v115);
LABEL_30:
      v123 = v272;
LABEL_31:
      v54 = v271 + v260;
      v51 = v123 - 1;
    }

    while (v51);
  }
}

void (**sub_1CF36A09C(uint64_t (*a1)(char *, uint64_t, char *), int a2))(char *, uint64_t)
{
  v3 = v2;
  v95 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9F8, &qword_1CFA041E0);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v91 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA00, &qword_1CFA041E8);
  MEMORY[0x1EEE9AC00](v91);
  v103 = &v91 - v8;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v91 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA08, &qword_1CFA041F0);
  v97 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v20 = &v91 - v19;
  v21 = *(a1 + 2);
  v22 = MEMORY[0x1E69E7CC0];
  v98 = &v91 - v19;
  v100 = v3;
  v92 = v10;
  v96 = a1;
  if (v21)
  {
    v112[0] = MEMORY[0x1E69E7CC0];
    v23 = v18;
    sub_1CF000F0C(0, v21, 0);
    v22 = v112[0];
    v25 = *(v10 + 16);
    v24 = v10 + 16;
    v108 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v109 = v25;
    v26 = a1 + v108;
    v27 = *(v24 + 56);
    v106 = (v24 - 8);
    v107 = v27;
    v110 = v24;
    v28 = (v24 + 16);
    do
    {
      v29 = v111;
      v109(v111, v26, v9);
      v30 = sub_1CF9E5928();
      v31 = [v30 fp_realpathURL];

      sub_1CF9E59D8();
      (*v106)(v29, v9);
      v112[0] = v22;
      v32 = v9;
      v34 = *v22->tree;
      v33 = *v22->tester;
      if (v34 >= v33 >> 1)
      {
        sub_1CF000F0C((v33 > 1), v34 + 1, 1);
        v22 = v112[0];
      }

      *v22->tree = v34 + 1;
      v35 = v107;
      (*v28)(v22 + v108 + v34 * v107, v23, v32);
      v26 = v35 + v26;
      --v21;
      v9 = v32;
    }

    while (v21);
    v3 = v100;
    v20 = v98;
  }

  v112[0] = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  v36 = v112[0];
  v116 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA10, &qword_1CFA041F8);
  sub_1CEFCCCEC(&qword_1EC4BFA18, &qword_1EC4BFA10, &qword_1CFA041F8, MEMORY[0x1E69E6310]);
  sub_1CF9E6788();
  v22, v37, v38, v39, v40, v41, v42, v43;
  v36, v44, v45, v46, v47, v48, v49, v50;
  sub_1CEFCCCEC(&qword_1EC4BFA20, &qword_1EC4BFA08, &qword_1CFA041F0, MEMORY[0x1E69E6F00]);
  v51 = v105;
  sub_1CF9E70B8();
  sub_1CF9E70D8();
  if (v112[0] == v116)
  {
    (*(v97 + 8))(v20, v51);
  }

  v107 = v116;
  v108 = v112[0];
  v111 = v9;
  LODWORD(v110) = *(v3 + 16);
  os_unfair_lock_lock((v3 + 56));
  v53 = *(v3 + 64);
  v52 = *(v3 + 72);
  v54 = *(v3 + 88);
  v55 = *(v3 + 89);
  v56 = *(v3 + 90);

  v57 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 56));
  LODWORD(v109) = *(v3 + 50);
  type metadata accessor for VFSLookupScope(0);
  v58 = swift_allocObject();
  *(v58 + 40) = 0;
  *(v58 + 48) = 1;
  *(v58 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v58 + 64) = v53;
  *(v58 + 56) = 0;
  *(v58 + 72) = v52;
  *(v58 + 80) = v57;
  *(v58 + 88) = v54;
  *(v58 + 89) = v55;
  *(v58 + 90) = v56;

  v59 = v94;
  v60 = v99;
  sub_1CF3658E0(v94, v96, v110, v95 & 1, v112);
  if (v60)
  {

    sub_1CF2B9AAC(v58 + 64);
    (*(v97 + 8))(v98, v105);
    *(v58 + 96), v61, v62, v63, v64, v65, v66, v67;
    return swift_deallocPartialClassInstance();
  }

  v99 = 0;
  v70 = v112[0];
  v69 = v112[1];
  v71 = v113;
  v110 = v114;
  LODWORD(v106) = v115;
  v72 = v92;
  v73 = v59;
  v74 = v111;
  v96 = *(v92 + 32);
  result = v96(v93, v73, v111);
  *(v58 + 16) = v71;
  *(v58 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v70;
  if (!*(v70 + 16))
  {
    goto LABEL_27;
  }

  result = (*(v72 + 16))(v58 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v70 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v74);
  *(v58 + 32) = v69;
  if (*(v69 + 16))
  {
    v75 = *(v69 + 32);

    *(v58 + 24) = v75;
    v96((v58 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v93, v74);
    *(v58 + 40) = v110;
    *(v58 + 48) = v106;
    *(v58 + 49) = 0;
    v106 = v58;
    *(v58 + 50) = v109;
    v116 = MEMORY[0x1E69E7CD0];
    v76 = v103;
    v77 = v105;
    (*(v97 + 16))(v103, v98, v105);
    v78 = *(v91 + 36);
    sub_1CF9E70B8();
    sub_1CF9E70D8();
    LODWORD(v110) = 0;
    v79 = v104;
    if (*(v76 + v78) == v112[0])
    {
LABEL_14:
      sub_1CEFCCC44(v76, &qword_1EC4BFA00, &qword_1CFA041E8);
      (*(v97 + 8))(v98, v77);
      return v106;
    }

    LODWORD(v110) = 0;
    v80 = (v92 + 8);
    while (1)
    {
      while (1)
      {
        v81 = sub_1CF9E7168();
        v82 = v101;
        sub_1CEFCCBDC(v83, v101, &qword_1EC4BF9F8, &qword_1CFA041E0);
        v81(v112, 0);
        v77 = v105;
        sub_1CF9E70E8();
        sub_1CEFE55D0(v82, v79, &qword_1EC4BF9F8, &qword_1CFA041E0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v85 = *v79;
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA28, &unk_1CFA04200);
        v86 = *(result + 12);
        if (EnumCaseMultiPayload == 1)
        {
          break;
        }

        if (v85)
        {
          goto LABEL_22;
        }

LABEL_24:
        v89 = &v104[v86];
        v79 = v104;
        (*v80)(v89, v111);
        v76 = v103;
        sub_1CF9E70D8();
        v90 = *(v76 + v78);
        LODWORD(v110) = 256;
        if (v90 == v112[0])
        {
          goto LABEL_14;
        }
      }

      if (!v85)
      {
        goto LABEL_24;
      }

      v87 = *(v100 + 32);
      if (v85 < *(v87 + 16))
      {
        if (v85 < 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          break;
        }

        sub_1CF6E96D8(v112, *(v87 + 8 * v85 + 32));
      }

LABEL_22:
      v88 = &v104[v86];
      v79 = v104;
      (*v80)(v88, v111);
      v76 = v103;
      sub_1CF9E70D8();
      if (*(v76 + v78) == v112[0])
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1CF36AABC(uint64_t a1)
{
  v1 = sub_1CF9E5928();
  v2 = sub_1CF9E5928();
  v3 = [v1 fp:v2 relationshipToItemAtURL:?];

  return v3 == 1;
}

void sub_1CF36AB24(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v56 = a2;
  v57 = a5;
  v58 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v55 - v10;
  sub_1CF9E5A18();
  v13 = v12;
  v14 = sub_1CF9E6888();
  v13, v15, v16, v17, v18, v19, v20, v21;
  sub_1CEFCCBDC(a3, v11, &unk_1EC4BEDE0, qword_1CF9FA390);
  v22 = sub_1CF9E5D98();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v11, 1, v22) != 1)
  {
    v24 = sub_1CF9E5D38();
    (*(v23 + 8))(v11, v22);
  }

  v25 = *(a4 + 50);
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1CF9E7948();
  v60, v26, v27, v28, v29, v30, v31, v32;
  v59 = 0x54656C6946534656;
  v60 = 0xEF20746120656572;
  v33 = sub_1CF9E5928();
  v34 = [v33 fp_shortDescription];

  v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v37 = v36;

  MEMORY[0x1D3868CC0](v35, v37);
  v37, v38, v39, v40, v41, v42, v43, v44;
  v45 = v60;
  v46 = sub_1CF9E6888();
  v45, v47, v48, v49, v50, v51, v52, v53;
  v54 = [a1 subscribeToEventsAtPath:v14 fd:0xFFFFFFFFLL sinceEventID:v56 streamUUID:v24 ignoreOwnEvents:v25 delegate:v57 purpose:v46];

  *v58 = v54;
}

void sub_1CF36AD8C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v6 = a3;
  v9 = HIDWORD(a3);
  v10 = sub_1CF9E6118();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v4 + 56));
  v13 = *(v4 + 84);

  os_unfair_lock_unlock((v4 + 56));
  os_unfair_lock_lock((v4 + 56));

  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = v6;
  *(v4 + 84) = v9;
  *(v4 + 88) = a4 & 1;
  *(v4 + 89) = BYTE1(a4) & 1;
  *(v4 + 90) = BYTE2(a4) & 1;

  os_unfair_lock_unlock((v4 + 56));
  if (v13 == v9 || (*(v4 + 48) & 1) != 0)
  {
  }

  else
  {
    sub_1CF9E5A18();
    v15 = v14;
    fpfs_openflags_0(0x200000u);
    sub_1CF9E6978();
    v16 = openat_s();

    if ((v16 & 0x80000000) != 0)
    {
      v25 = MEMORY[0x1D38683F0](v17);
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      v45 = 19;
      v26 = sub_1CF19BBE4(v25, v43);
      sub_1CF1969CC(v43);
      swift_willThrow();
      v15, v27, v28, v29, v30, v31, v32, v33;
      v34 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v35 = v26;
      v36 = sub_1CF9E6108();
      v37 = sub_1CF9E72A8();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 67109378;
        *(v38 + 4) = v9;

        *(v38 + 8) = 2112;
        swift_getErrorValue();
        v40 = Error.prettyDescription.getter(v46, v47);
        *(v38 + 10) = v40;
        *v39 = v40;
        _os_log_impl(&dword_1CEFC7000, v36, v37, "Updating trash syncing state %u failed %@", v38, 0x12u);
        sub_1CEFCCC44(v39, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v39, -1, -1);
        MEMORY[0x1D386CDC0](v38, -1, -1);
      }

      else
      {
      }

      (*(v42 + 8))(v12, v10);
    }

    else
    {
      v15, v18, v19, v20, v21, v22, v23, v24;
      sub_1CF3669F4(v16);

      close(v16);
    }
  }
}

uint64_t VFSLookupScope.deinit(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  sub_1CF2B9AAC(v8 + 64);
  *(v8 + 96), v9, v10, v11, v12, v13, v14, v15;
  v16 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v17 = sub_1CF9E5A58();
  v18 = *(*(v17 - 8) + 8);
  v18(v8 + v16, v17);
  *(v8 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs), v19, v20, v21, v22, v23, v24, v25;
  v18(v8 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v17);
  return v8;
}

uint64_t sub_1CF36B240(uint64_t a1)
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF36B3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF36B468(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1CEFF1E08(*a1);
  v5 = v4;
  v6 = sub_1CEFF1E08(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1CF9E8048();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_1CF36B4F0()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CEFF1E08(v1);
  v3 = v2;
  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF9E8228();
}

void sub_1CF36B554(uint64_t a1)
{
  sub_1CEFF1E08(*v1);
  v3 = v2;
  sub_1CF9E69C8();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1CF36B5A8(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  sub_1CEFF1E08(v2);
  v4 = v3;
  sub_1CF9E69C8();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CF9E8228();
}

unint64_t sub_1CF36B608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF36C88C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1CF36B638@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CEFF1E08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1CF36B67C@<D0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
    case 13:
    case 14:
    case 19:
      v7 = [a1 BOOLAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E6370];
      *a4 = v7;
      return result;
    case 3:
    case 4:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v19 = [a1 dataAtIndex_];
      v20 = sub_1CF9E5B88();
      v22 = v21;

      sub_1CF4C2898(v20, v22);
      v24 = v23;
      sub_1CEFE4714(v20, v22);
      if (!v4)
      {
        if (!v24)
        {
          goto LABEL_28;
        }

        swift_getErrorValue();
        *(a4 + 24) = v47;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
        (*(*(v47 - 8) + 16))(boxed_opaque_existential_0);
      }

      return result;
    case 9:
    case 10:
    case 12:
    case 15:
    case 16:
    case 17:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v10 = [a1 stringAtIndex_];
      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v12;

      v14 = MEMORY[0x1E69E6158];
      goto LABEL_5;
    case 18:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v45 = [a1 stringAtIndex_];
      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v46;

      v14 = &type metadata for Filename;
LABEL_5:
      *(a4 + 24) = v14;
      *a4 = v11;
      *(a4 + 8) = v13;
      return result;
    case 20:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v40 = sub_1CF1E059C(a3);
      if (v4)
      {
        return result;
      }

      v36 = &unk_1CF9FEE90;
      v34 = v40;
      v35 = &unk_1EC4C4BE0;
      break;
    case 21:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v42 = sub_1CEFE7794(a3);
      if (!v4)
      {
        *(a4 + 24) = &type metadata for UserInfo;
        *a4 = v42;
        *(a4 + 8) = v43;
      }

      return result;
    case 22:
    case 23:
      type metadata accessor for NSFileProviderContentPolicy(0);
      *(a4 + 24) = v16;
      v17 = [a1 longAtIndex_];
      goto LABEL_19;
    case 24:
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_28;
      }

      v33 = sub_1CF1E040C(a3);
      if (v4)
      {
        return result;
      }

      v34 = v33;
      v35 = &unk_1EC4BF630;
      v36 = &unk_1CF9FEEC0;
      break;
    case 25:
      if ([a1 isNullAtIndex_])
      {
LABEL_28:
        result = 0.0;
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        if ([a1 isNullAtIndex_])
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        v27 = MEMORY[0x1E69E6158];
        if (swift_dynamicCastMetatype())
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
        }

        v28 = [a1 stringAtIndex_];
        v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v30;

        *(a4 + 24) = v27;
        *a4 = v29;
        *(a4 + 8) = v31;
      }

      return result;
    default:
      type metadata accessor for NSFileProviderItemCapabilities(0);
      *(a4 + 24) = v38;
      v17 = [a1 unsignedLongAtIndex_];
LABEL_19:
      *a4 = v17;
      return result;
  }

  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  *a4 = v34;
  return result;
}

double sub_1CF36BA6C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  LOBYTE(v70[0]) = 0;
  type metadata accessor for NSFileProviderItemCapabilities(0);
  v8 = v7;
  sub_1CF0230AC(a1, v7);
  sub_1CF0230B4(v70, v8, a1, v8, a2);
  if (!v3)
  {
    v10 = v78;
    LOBYTE(v70[0]) = 1;
    v11 = MEMORY[0x1E69E6370];
    sub_1CF0230AC(a1, MEMORY[0x1E69E6370]);
    sub_1CF0230B4(v70, v11, a1, v11, a2);
    LODWORD(v11) = v77;
    LOBYTE(v70[0]) = 2;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v80 = v11;
    v12 = v76;
    LOBYTE(v70[0]) = 3;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    sub_1CF0230AC(a1, v13);
    sub_1CF0230B4(v70, v13, a1, v13, a2);
    v79 = v12;
    v14 = v75;
    LOBYTE(v70[0]) = 4;
    sub_1CF0230B4(v70, v13, a1, v13, a2);
    v15 = v74;
    LOBYTE(v70[0]) = 6;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    LOBYTE(v12) = v73;
    LOBYTE(v70[0]) = 7;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v52 = v12;
    v53 = v15;
    LOBYTE(v15) = v72;
    LOBYTE(v70[0]) = 8;
    sub_1CF0230B4(v70, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v50 = v71;
    v51 = v15;
    LOBYTE(v69[0]) = 9;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF0230AC(a1, v16);
    sub_1CF0230B4(v69, v16, a1, v16, a2);
    v17 = v70[1];
    v48 = v70[0];
    v49 = v16;
    LOBYTE(v67[0]) = 10;
    sub_1CF0230B4(v67, v16, a1, v16, a2);
    v46 = v14;
    v47 = v17;
    v18 = v69[0];
    v45 = v69[1];
    LOBYTE(v67[0]) = 11;
    sub_1CF0230B4(v67, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v44 = v68;
    LOBYTE(v64[0]) = 12;
    sub_1CF0230B4(v64, v16, a1, v16, a2);
    v42 = v67[0];
    v43 = v67[1];
    LOBYTE(v64[0]) = 13;
    sub_1CF0230B4(v64, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    LOBYTE(v16) = v66;
    LOBYTE(v64[0]) = 14;
    sub_1CF0230B4(v64, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v41 = v65;
    LOBYTE(v63[0]) = 15;
    sub_1CF0230B4(v63, v49, a1, v49, a2);
    v39 = v64[0];
    v40 = v64[1];
    LOBYTE(v62[0]) = 16;
    sub_1CF0230B4(v62, v49, a1, v49, a2);
    v19 = v63[0];
    v38 = v63[1];
    LOBYTE(v61[0]) = 17;
    sub_1CF0230B4(v61, v49, a1, v49, a2);
    v36 = v62[0];
    v37 = v62[1];
    LOBYTE(v59[0]) = 18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
    sub_1CF0230AC(a1, v20);
    sub_1CF0230B4(v59, v20, a1, v20, a2);
    v34 = v61[0];
    v35 = v61[1];
    LOBYTE(v59[0]) = 19;
    sub_1CF0230B4(v59, MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], a2);
    v33 = v60;
    LOBYTE(v59[0]) = 20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE558, &unk_1CF9FEEE0);
    sub_1CF0230AC(a1, v21);
    sub_1CF0230B4(v59, v21, a1, v21, a2);
    v32 = v59[2];
    LOBYTE(v55) = 21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE568, &qword_1CF9FDDD8);
    sub_1CF0230AC(a1, v22);
    sub_1CF0230B4(&v55, v22, a1, v22, a2);
    v30 = v59[0];
    v31 = v59[1];
    LOBYTE(v55) = 22;
    type metadata accessor for NSFileProviderContentPolicy(0);
    v24 = v23;
    sub_1CF0230AC(a1, v23);
    sub_1CF0230B4(&v55, v24, a1, v24, a2);
    v29 = v58;
    LOBYTE(v55) = 23;
    sub_1CF0230B4(&v55, v24, a1, v24, a2);
    v28 = v57;
    LOBYTE(v55) = 24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE570, &unk_1CF9FEED0);
    sub_1CF0230AC(a1, v25);
    sub_1CF0230B4(&v55, v25, a1, v25, a2);
    v26 = v56;
    v54 = 25;
    sub_1CF0230B4(&v54, v49, a1, v49, a2);
    *a3 = v10;
    v27 = v79;
    *(a3 + 8) = v80;
    *(a3 + 9) = v27;
    *(a3 + 16) = v46;
    *(a3 + 24) = v53;
    *(a3 + 32) = v52;
    *(a3 + 33) = v51;
    *(a3 + 34) = v50;
    *(a3 + 40) = v48;
    *(a3 + 48) = v47;
    *(a3 + 56) = v18;
    *(a3 + 64) = v45;
    *(a3 + 72) = v44;
    *(a3 + 80) = v42;
    *(a3 + 88) = v43;
    *(a3 + 96) = 0;
    *(a3 + 104) = v16;
    *(a3 + 105) = v41;
    *(a3 + 112) = v39;
    *(a3 + 120) = v40;
    *(a3 + 128) = v19;
    *(a3 + 136) = v38;
    *(a3 + 144) = v36;
    *(a3 + 152) = v37;
    *(a3 + 160) = v34;
    *(a3 + 168) = v35;
    *(a3 + 176) = v33;
    *(a3 + 184) = v32;
    *(a3 + 192) = v30;
    *(a3 + 200) = v31;
    *(a3 + 208) = v29;
    *(a3 + 216) = v28;
    *(a3 + 224) = v26;
    result = *&v55;
    *(a3 + 232) = v55;
  }

  return result;
}

unint64_t sub_1CF36C4D4(uint64_t a1)
{
  result = sub_1CF36C4FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF36C4FC()
{
  result = qword_1EC4BFA38;
  if (!qword_1EC4BFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA38);
  }

  return result;
}

unint64_t sub_1CF36C554()
{
  result = qword_1EC4BFA40;
  if (!qword_1EC4BFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA40);
  }

  return result;
}

uint64_t _s9SQLFieldsOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9SQLFieldsOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF36C760(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE180, &unk_1CF9FCAB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF36C7B4()
{
  result = qword_1EDEAC5A0;
  if (!qword_1EDEAC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5A0);
  }

  return result;
}

unint64_t sub_1CF36C808(uint64_t a1)
{
  *(a1 + 8) = sub_1CF36C838();
  result = sub_1CEFF1D18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF36C838()
{
  result = qword_1EC4BFA58;
  if (!qword_1EC4BFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA58);
  }

  return result;
}

unint64_t sub_1CF36C88C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E8098();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF36C8E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v30 = sub_1CF9E5A98();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E53C8();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = swift_slowAlloc();
  v17 = fgetxattr(a1, "com.apple.fileprovider.detached#B", v16, 0x800uLL, 0, 0);
  v18 = v17;
  if ((v17 & 0x8000000000000000) != 0)
  {
    if (MEMORY[0x1D38683F0]() != 93 || (v19 = fgetxattr(a1, "com.apple.fileprovider.detached", v16, 0x800uLL, 0, 0), v19 < 0) && (v19 = fgetxattr(a1, "com.apple.fileprovider.detached#PN", v16, 0x800uLL, 0, 0), v19 < 0))
    {
      if (MEMORY[0x1D38683F0]() != 93)
      {
        MEMORY[0x1D38683F0]();
        v26 = sub_1CF9E6138();
        if ((v26 & 0x100000000) != 0)
        {
          v27 = 22;
        }

        else
        {
          v27 = v26;
        }

        v34 = v27;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF198A44();
        sub_1CF9E57D8();
        goto LABEL_16;
      }

      v18 = 0;
    }

    else
    {
      v18 = v19;
      fsetxattr(a1, "com.apple.fileprovider.detached#B", v16, v19, 0, 0);
      fremovexattr(a1, "com.apple.fileprovider.detached", 0);
      fremovexattr(a1, "com.apple.fileprovider.detached#PN", 0);
      if (v18 >= 0x801)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v17 >= 0x801)
  {
LABEL_3:
    v35 = 34;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    v15 = v12;
LABEL_16:
    sub_1CF9E53A8();
    (*(v31 + 8))(v15, v10);
    swift_willThrow();
    v25 = v33;
    return sub_1CEFCCC44(v25, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v20.n128_f64[0] = (*(v7 + 104))(v9, *MEMORY[0x1E6969010], v30);
  v21 = sub_1CF51FB88(v16, v18, v9, v20);
  v23 = v22;
  v24 = v33;
  sub_1CF33F8C8(v33, v6);
  sub_1CF36D288(v21, v23, v6, v32);
  v25 = v24;
  return sub_1CEFCCC44(v25, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF36CCE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA68, &qword_1CFA044D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v20 = v1[3];
  v21 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF36DA08();

  sub_1CF9E82A8();
  v23 = v7;
  v24 = v8;
  v25 = 0;
  sub_1CF1E60E8();
  v10 = v22;
  sub_1CF9E7F08();
  v24, v11, v12, v13, v14, v15, v16, v17;
  if (!v10)
  {
    v23 = v21;
    v24 = v20;
    v25 = 1;
    sub_1CEFE42D4(v21, v20);
    sub_1CF190A74();
    sub_1CF9E7F08();
    sub_1CEFE4714(v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1CF36CEA0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA78, &qword_1CFA044E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF36DA08();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = 0;
    sub_1CF1E613C();
    sub_1CF9E7D88();
    v10 = v20;
    v9 = v21;
    v22 = 1;
    sub_1CF190888();
    sub_1CF9E7D88();
    (*(v6 + 8))(v8, v5);
    v11 = v20;
    v12 = v21;
    *a2 = v10;
    a2[1] = v9;
    a2[2] = v11;
    a2[3] = v12;

    sub_1CEFE42D4(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v9, v13, v14, v15, v16, v17, v18, v19;
    sub_1CEFE4714(v11, v12);
  }
}

uint64_t sub_1CF36D0BC()
{
  if (*v0)
  {
    return 0x6F42746E65726170;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1CF36D0FC(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x6F42746E65726170 && a2 == 0xEE006B72616D6B6FLL)
  {
    0xEE006B72616D6B6FLL, 0xEE006B72616D6B6FLL, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF36D1E0(uint64_t a1)
{
  v2 = sub_1CF36DA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF36D21C(uint64_t a1)
{
  v2 = sub_1CF36DA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF36D288(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a4;
  v8 = sub_1CF9E6118();
  v83 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5688();
  swift_allocObject();
  v14 = sub_1CF9E5678();
  sub_1CF36D820();
  sub_1CF9E5668();
  if (v4)
  {
    sub_1CEFCCC44(a3, &unk_1EC4BE310, qword_1CF9FCBE0);

    sub_1CEFE4714(a1, a2);
    return;
  }

  v77 = v14;
  v15 = v87;
  v80 = v88;
  v81 = v10;
  v16 = v89;
  LOBYTE(v87) = 0;
  v75 = v8;
  v76 = v90;
  v79 = a3;
  sub_1CF9E5948();
  v17 = v11;
  v78 = 0;
  v26 = v16;
  v27 = v84;
  v28 = v17;
  (*(v82 + 32))(v84, v13, v17);
  v29 = v87;
  v30 = type metadata accessor for VFSDetachedRootBookmark(0);
  *(v27 + v30[7]) = v29;
  v31 = (v27 + v30[5]);
  v32 = v80;
  *v31 = v15;
  v31[1] = v32;

  if (v29 != 1)
  {
    sub_1CEFCCC44(v79, &unk_1EC4BE310, qword_1CF9FCBE0);

    sub_1CEFE4714(a1, a2);
    v36 = v26;
    v46 = v76;
    sub_1CEFE42D4(v26, v76);
    v37 = v26;
    v38 = v46;
    goto LABEL_13;
  }

  v33 = v78;
  v34 = sub_1CF9E5858();
  v36 = v26;
  if (!v33)
  {
    v37 = v34;
    v38 = v35;
    sub_1CEFCCC44(v79, &unk_1EC4BE310, qword_1CF9FCBE0);

    sub_1CEFE4714(a1, a2);
    v46 = v76;
LABEL_13:
    v80, v39, v40, v41, v42, v43, v44, v45;
    sub_1CEFE4714(v36, v46);
    v49 = (v84 + v30[6]);
    *v49 = v37;
    v49[1] = v38;
    return;
  }

  v74 = v28;
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFE42D4(a1, a2);
  v19 = v33;
  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E72A8();

  if (!os_log_type_enabled(v20, v21))
  {
    sub_1CEFE4714(a1, a2);
    v47 = v79;
    v48 = v75;
    v24 = v83;
    goto LABEL_22;
  }

  v73 = v21;
  v22 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  *v22 = 134218242;
  v23 = a2 >> 62;
  v24 = v83;
  if ((a2 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v25 = 0;
      goto LABEL_21;
    }

    v51 = *(a1 + 16);
    v50 = *(a1 + 24);
    v52 = __OFSUB__(v50, v51);
    v25 = v50 - v51;
    if (!v52)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    LODWORD(v25) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v25 = v25;
    goto LABEL_21;
  }

  if (v23)
  {
    goto LABEL_18;
  }

  v25 = BYTE6(a2);
LABEL_21:
  *(v22 + 4) = v25;
  sub_1CEFE4714(a1, a2);
  *(v22 + 12) = 2112;
  swift_getErrorValue();
  v53 = Error.prettyDescription.getter(v85, v86);
  *(v22 + 14) = v53;
  v54 = v72;
  *v72 = v53;
  _os_log_impl(&dword_1CEFC7000, v20, v73, "VFSDetachedRootBookmark (size: %ld) could not be decoded: %@", v22, 0x16u);
  sub_1CEFCCC44(v54, &qword_1EC4BE350, &unk_1CF9FC3B0);
  MEMORY[0x1D386CDC0](v54, -1, -1);
  MEMORY[0x1D386CDC0](v22, -1, -1);
  v47 = v79;
  v48 = v75;
LABEL_22:

  (*(v24 + 8))(v81, v48);
  swift_willThrow();
  v80, v55, v56, v57, v58, v59, v60, v61;

  sub_1CEFE4714(v36, v76);
  sub_1CEFE4714(a1, a2);
  sub_1CEFCCC44(v47, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (!v78)
  {
    v62 = v84;
    (*(v82 + 8))(v84, v74);
    v63 = type metadata accessor for VFSDetachedRootBookmark(0);
    *(v62 + *(v63 + 20) + 8), v64, v65, v66, v67, v68, v69, v70;
  }
}

unint64_t sub_1CF36D820()
{
  result = qword_1EC4BFA60;
  if (!qword_1EC4BFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA60);
  }

  return result;
}

uint64_t type metadata accessor for VFSDetachedRootBookmark(uint64_t a1)
{
  result = qword_1EDEAC750;
  if (!qword_1EDEAC750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF36D8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CF36D908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF36D980(uint64_t a1)
{
  result = sub_1CF9E5A58();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CF36DA08()
{
  result = qword_1EC4BFA70;
  if (!qword_1EC4BFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA70);
  }

  return result;
}

unint64_t sub_1CF36DA70()
{
  result = qword_1EC4BFA80;
  if (!qword_1EC4BFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA80);
  }

  return result;
}

unint64_t sub_1CF36DAC8()
{
  result = qword_1EC4BFA88;
  if (!qword_1EC4BFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA88);
  }

  return result;
}

unint64_t sub_1CF36DB20()
{
  result = qword_1EC4BFA90;
  if (!qword_1EC4BFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFA90);
  }

  return result;
}

uint64_t sub_1CF36DB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1CF36DCC8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF36DCC8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1CF36DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1CF0262EC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CF36DF24()
{
  v0 = sub_1CF9E7388();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E74C8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1CF3708D4();
  sub_1CF9E63F8();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1CF370AD0(&unk_1EDEA3518, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DC0, &qword_1CFA046D0);
  sub_1CF370920();
  sub_1CF9E77B8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1CF9E74D8();
  qword_1EC4BFA98 = result;
  return result;
}

uint64_t sub_1CF36E168(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 504) = a2;
  *(v4 + 512) = v3;
  *(v4 + 564) = a3;
  *(v4 + 496) = a1;
  v5 = sub_1CF9E6118();
  *(v4 + 520) = v5;
  *(v4 + 528) = *(v5 - 8);
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  type metadata accessor for FPFeedbackUIManager();
  sub_1CF370AD0(&qword_1EC4BFAA0, v6, type metadata accessor for FPFeedbackUIManager, &unk_1CFA046A8);
  v8 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF36E2CC, v8, v7);
}

uint64_t sub_1CF36E2CC(uint64_t a1)
{
  if (!fpfs_is_internal_build() || (v2 = objc_allocWithZone(MEMORY[0x1E695E000]), v3 = sub_1CF9E6888(), v4 = [v2 initWithSuiteName_], v3, !v4))
  {
LABEL_10:
    v17 = *(*(v1 + 512) + 32);
    v18 = [v17 pathComponents];
    v19 = MEMORY[0x1E69E6158];
    v20 = sub_1CF9E6D48();

    v21 = *v20->tree;
    v20, v22, v23, v24, v25, v26, v27, v28;
    if (v21 >= 2)
    {
      v29 = [v17 stringByDeletingLastPathComponent];
      if (!v29)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v30;
        v29 = sub_1CF9E6888();
        v31, v32, v33, v34, v35, v36, v37, v38;
      }

      v17 = v29;
    }

    v39 = [v17 fp_isiCloudDriveIdentifier];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    if (v39)
    {
      v40 = *(v1 + 496);
      v41 = *(v1 + 504);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 56) = v19;
      v43 = sub_1CEFD51C4();
      *(inited + 32) = v40;
      *(inited + 64) = v43;
      *(inited + 40) = v41;

      v44 = sub_1CF36EB18(inited);
    }

    else
    {
      v47 = *(v1 + 504);
      v46 = *(v1 + 512);
      v48 = *(v1 + 496);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_1CF9FA440;
      *(v49 + 56) = v19;
      v50 = sub_1CEFD51C4();
      *(v49 + 32) = v48;
      *(v49 + 64) = v50;
      *(v49 + 40) = v47;
      v51 = *(v46 + 16);
      v52 = *(v46 + 24);
      *(v49 + 96) = v19;
      *(v49 + 104) = v50;
      *(v49 + 72) = v51;
      *(v49 + 80) = v52;

      v44 = sub_1CF36ED2C(v49);
    }

    v105 = v45;
    v106 = v44;
    v107 = (v1 + 560);
    v53 = *(v1 + 564);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C47D0, &unk_1CFA16C90);
    swift_arrayDestroy();
    v54 = MEMORY[0x1E69E7CC0];
    v55 = sub_1CF36EF40(MEMORY[0x1E69E7CC0]);
    v57 = v56;
    v104 = sub_1CF36F154(v54);
    v59 = v58;
    if (v53 == 1)
    {
      v60 = sub_1CF36F368(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v60 = sub_1CF36F57C(MEMORY[0x1E69E7CC0]);
    }

    v62 = v60;
    v63 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAB0, &unk_1CFA046E0);
    v64 = swift_initStackObject();
    v65 = MEMORY[0x1E695EE58];
    *(v64 + 16) = xmmword_1CFA02F60;
    v66 = *v65;
    *(v64 + 32) = *v65;
    *(v64 + 40) = v55;
    *(v64 + 48) = v57;
    v67 = *MEMORY[0x1E695EE60];
    *(v64 + 64) = v19;
    *(v64 + 72) = v67;
    *(v64 + 80) = v106;
    *(v64 + 88) = v105;
    v68 = v19;
    v69 = *MEMORY[0x1E695EE78];
    *(v64 + 104) = v68;
    *(v64 + 112) = v69;
    *(v64 + 120) = v104;
    *(v64 + 128) = v59;
    v70 = *MEMORY[0x1E695EE70];
    *(v64 + 144) = v68;
    *(v64 + 152) = v70;
    *(v64 + 160) = v62;
    *(v64 + 168) = v63;
    v71 = *MEMORY[0x1E695EE80];
    *(v64 + 184) = v68;
    *(v64 + 192) = v71;
    *(v64 + 224) = sub_1CF9E5A58();
    __swift_allocate_boxed_opaque_existential_0((v64 + 200));
    v72 = v71;
    v73 = v66;
    v74 = v67;
    v75 = v69;
    v76 = v70;
    sub_1CF9E58C8();
    v77 = sub_1CF4E0858(v64);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAB8, &unk_1CFA07BB0);
    swift_arrayDestroy();
    *v107 = 0;
    v78 = [objc_opt_self() defaultStore];
    v79 = [v78 spsFeedbackRequestPromptTimeoutInSeconds];

    v80 = *MEMORY[0x1E695E480];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAC0, qword_1CFA046F0);
    sub_1CF370A18();
    v81 = sub_1CF9E6618();
    v77, v82, v83, v84, v85, v86, v87, v88;
    v89 = CFUserNotificationCreate(v80, v79, 2uLL, v107, v81);

    if (*v107)
    {
      v90 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v91 = sub_1CF9E6108();
      v92 = sub_1CF9E72A8();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 67109120;
        swift_beginAccess();
        *(v93 + 4) = *v107;
        _os_log_impl(&dword_1CEFC7000, v91, v92, "FeedbackUIManager: Error from CFUserNotificationCreate: %d", v93, 8u);
        MEMORY[0x1D386CDC0](v93, -1, -1);
      }

      v94 = *(v1 + 536);
    }

    else
    {
      *(v1 + 488) = 0;
      CFUserNotificationReceiveResponse(v89, 0.0, (v1 + 488));
      v99 = *(v1 + 488);
      switch(v99)
      {
        case 0:

          v16 = 0;
          goto LABEL_25;
        case 1:
          v100 = *(v1 + 564);

          if (v100)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_25;
        case 3:

          v16 = 3;
          goto LABEL_25;
      }

      v101 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v91 = sub_1CF9E6108();
      v102 = sub_1CF9E72A8();
      if (os_log_type_enabled(v91, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_1CEFC7000, v91, v102, "FeedbackUIManager: unknown response from approval request", v103, 2u);
        MEMORY[0x1D386CDC0](v103, -1, -1);
      }

      v94 = *(v1 + 544);
    }

    v95 = *(v1 + 528);
    v96 = *(v1 + 520);

    (*(v95 + 8))(v94, v96);
    v16 = 4;
    goto LABEL_25;
  }

  v5 = sub_1CF9E6888();
  v6 = [v4 objectForKey_];

  if (!v6)
  {

    *(v1 + 432) = 0u;
    *(v1 + 448) = 0u;
    sub_1CEFCCC44(v1 + 432, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    goto LABEL_10;
  }

  sub_1CF9E7728();
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v1 + 432, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  v7 = sub_1CF9E6888();
  v8 = [v4 integerForKey_];

  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7298();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "Won't show prompt and will force answer to %ld", v12, 0xCu);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  v13 = *(v1 + 552);
  v14 = *(v1 + 528);
  v15 = *(v1 + 520);

  (*(v14 + 8))(v13, v15);
  if (v8 >= 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = v8;
  }

LABEL_25:

  v97 = *(v1 + 8);

  return v97(v16);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF36EB18(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v29 = sub_1CF9E6888();
    v30 = FPLocv();

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v31;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_1CF9E8278();
    v15 = *v3;
    v16 = *result->tree;
    v17 = __OFADD__(*v3, v16);
    v18 = *v3 + v16;
    if (v17)
    {
      break;
    }

    v19 = v2[4];
    if (v19 >= v18)
    {
      goto LABEL_18;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v20 = v2[5];
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    v2[4] = v18;
    if ((v18 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v21 = result;
    v22 = swift_slowAlloc();
    v23 = v22;
    v2[5] = v22;
    if (v20)
    {
      if (v22 != v20 || v22 >= &v20[8 * v15])
      {
        memmove(v22, v20, 8 * v15);
      }

      sub_1CF9E7B18();
      result = v21;
LABEL_18:
      v23 = v2[5];
      if (!v23)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v21;
    if (!v23)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v25 = *result->tree;
    if (v25)
    {
      v26 = result + 1;
      v27 = *v3;
      while (1)
      {
        isa = v26->super.isa;
        v26 = (v26 + 8);
        *&v23[8 * v27] = isa;
        v27 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v27;
        if (!--v25)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF36ED2C(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v29 = sub_1CF9E6888();
    v30 = FPLocv();

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v31;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_1CF9E8278();
    v15 = *v3;
    v16 = *result->tree;
    v17 = __OFADD__(*v3, v16);
    v18 = *v3 + v16;
    if (v17)
    {
      break;
    }

    v19 = v2[4];
    if (v19 >= v18)
    {
      goto LABEL_18;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v20 = v2[5];
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    v2[4] = v18;
    if ((v18 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v21 = result;
    v22 = swift_slowAlloc();
    v23 = v22;
    v2[5] = v22;
    if (v20)
    {
      if (v22 != v20 || v22 >= &v20[8 * v15])
      {
        memmove(v22, v20, 8 * v15);
      }

      sub_1CF9E7B18();
      result = v21;
LABEL_18:
      v23 = v2[5];
      if (!v23)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v21;
    if (!v23)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v25 = *result->tree;
    if (v25)
    {
      v26 = result + 1;
      v27 = *v3;
      while (1)
      {
        isa = v26->super.isa;
        v26 = (v26 + 8);
        *&v23[8 * v27] = isa;
        v27 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v27;
        if (!--v25)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF36EF40(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v29 = sub_1CF9E6888();
    v30 = FPLocv();

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v31;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_1CF9E8278();
    v15 = *v3;
    v16 = *result->tree;
    v17 = __OFADD__(*v3, v16);
    v18 = *v3 + v16;
    if (v17)
    {
      break;
    }

    v19 = v2[4];
    if (v19 >= v18)
    {
      goto LABEL_18;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v20 = v2[5];
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    v2[4] = v18;
    if ((v18 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v21 = result;
    v22 = swift_slowAlloc();
    v23 = v22;
    v2[5] = v22;
    if (v20)
    {
      if (v22 != v20 || v22 >= &v20[8 * v15])
      {
        memmove(v22, v20, 8 * v15);
      }

      sub_1CF9E7B18();
      result = v21;
LABEL_18:
      v23 = v2[5];
      if (!v23)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v21;
    if (!v23)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v25 = *result->tree;
    if (v25)
    {
      v26 = result + 1;
      v27 = *v3;
      while (1)
      {
        isa = v26->super.isa;
        v26 = (v26 + 8);
        *&v23[8 * v27] = isa;
        v27 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v27;
        if (!--v25)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}